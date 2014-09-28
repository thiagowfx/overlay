# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI="5"

inherit font

DESCRIPTION="A font specially designed for comfortably reading on any computer or device"
HOMEPAGE="http://www.huertatipografica.com/fonts/bitter-ht"
SRC_URI="http://www.fontsquirrel.com/fonts/download/${PN}"

LICENSE="OFL"
SLOT="0"
KEYWORDS="amd64 ~arm ~arm64 ~ppc ~ppc64 x86"
IUSE=""
RDEPEND="app-arch/unzip"

FONT_SUFFIX="otf"
S="${WORKDIR}"

src_unpack() {
	mv "${DISTDIR}/${A}" "${DISTDIR}/${A}.zip"
	unpack "${A}.zip"
}

src_install() {
	FONT_S="${WORKDIR}" font_src_install
}
