uint64_t sub_24EF9FBA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void GameCenterReengagementLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t GameCenterReengagementLayout.Metrics.shelfTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 32);

  return sub_24E612C80(a1, v1 + 32);
}

uint64_t GameCenterReengagementLayout.Metrics.badgeGlyphSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 72);

  return sub_24E612C80(a1, v1 + 72);
}

uint64_t GameCenterReengagementLayout.Metrics.badgeTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 112);

  return sub_24E612C80(a1, v1 + 112);
}

uint64_t GameCenterReengagementLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 152);

  return sub_24E612C80(a1, v1 + 152);
}

uint64_t GameCenterReengagementLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 192);

  return sub_24E612C80(a1, v1 + 192);
}

uint64_t GameCenterReengagementLayout.Metrics.heroContentTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 232);

  return sub_24E612C80(a1, v1 + 232);
}

uint64_t GameCenterReengagementLayout.Metrics.separatorTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 272);

  return sub_24E612C80(a1, v1 + 272);
}

uint64_t GameCenterReengagementLayout.Metrics.footerTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 312);

  return sub_24E612C80(a1, v1 + 312);
}

uint64_t GameCenterReengagementLayout.Metrics.footerBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 352);

  return sub_24E612C80(a1, v1 + 352);
}

uint64_t GameCenterReengagementLayout.Metrics.maxColumnWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 392);

  return sub_24E612C80(a1, v1 + 392);
}

uint64_t GameCenterReengagementLayout.Metrics.columnSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 432);

  return sub_24E612C80(a1, v1 + 432);
}

uint64_t GameCenterReengagementLayout.Metrics.maxHeight.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 472);

  return sub_24E612C80(a1, v1 + 472);
}

uint64_t GameCenterReengagementLayout.Metrics.init(layoutMargins:shelfTopSpace:badgeGlyphSpace:badgeTopSpace:titleTopSpace:subtitleTopSpace:heroContentTopSpace:separatorTopSpace:footerTopSpace:footerBottomSpace:maxColumnWidth:columnSpace:maxHeight:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_24E612C80(a1, (a9 + 4));
  sub_24E612C80(a2, (a9 + 9));
  sub_24E612C80(a3, (a9 + 14));
  sub_24E612C80(a4, (a9 + 19));
  sub_24E612C80(a5, (a9 + 24));
  sub_24E612C80(a6, (a9 + 29));
  sub_24E612C80(a7, (a9 + 34));
  sub_24E612C80(a8, (a9 + 39));
  sub_24E612C80(a14, (a9 + 44));
  sub_24E612C80(a15, (a9 + 49));
  sub_24E612C80(a16, (a9 + 54));

  return sub_24E612C80(a17, (a9 + 59));
}

uint64_t GameCenterReengagementLayout.init(metrics:badgeGlyph:badgeLabel:titleLabel:subtitleLabel:heroContent:separator:footer:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  memcpy(a9, __src, 0x200uLL);
  v17 = *(a2 + 16);
  *(a9 + 512) = *a2;
  *(a9 + 528) = v17;
  *(a9 + 544) = *(a2 + 32);
  sub_24E612C80(a3, a9 + 552);
  sub_24E612C80(a4, a9 + 592);
  sub_24E612C80(a5, a9 + 632);
  sub_24E612C80(a6, a9 + 672);
  v18 = *(a7 + 16);
  *(a9 + 712) = *a7;
  *(a9 + 728) = v18;
  *(a9 + 744) = *(a7 + 32);

  return sub_24E612C80(a8, a9 + 752);
}

double GameCenterReengagementLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    sub_24F92C1C8();
    sub_24EFA06F8(1, v8);
    __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_24F922288();
    a2 = v6;
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_24EFA06F8(v5, v8);
    __swift_project_boxed_opaque_existential_1(v8, v9);
    __swift_project_boxed_opaque_existential_1(v2 + 49, v2[52]);
    sub_24F922388();
    sub_24F922288();
    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_project_boxed_opaque_existential_1(v2 + 59, v2[62]);
    sub_24F922388();
  }

  return a2;
}

uint64_t sub_24EFA06F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v101 = a1;
  v104 = a2;
  v103 = sub_24F922748();
  v2 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v102 = &v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v106 = &v97 - v5;
  MEMORY[0x28223BE20](v6);
  v98 = &v97 - v7;
  v8 = sub_24F922708();
  v137 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_24F922718();
  v11 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_24F9226C8();
  v138 = *(v112 - 8);
  v14 = v138;
  MEMORY[0x28223BE20](v112);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213A88);
  v125 = *(v2 + 72);
  v110 = v2;
  v17 = (*(v110 + 80) + 32) & ~*(v110 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_24F93FC20;
  v109 = v17;
  v100 = v18;
  v107 = v18 + v17;
  v19 = sub_24F922908();
  swift_allocObject();
  v20 = sub_24F9228F8();
  *(&v144 + 1) = v19;
  v145 = MEMORY[0x277D228B0];
  *&v143 = v20;
  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  v111 = *MEMORY[0x277D227D0];
  v135 = *(v14 + 104);
  v126 = v14 + 104;
  v135(v16);
  v21 = *MEMORY[0x277D227E8];
  v133 = *(v11 + 104);
  v134 = v11 + 104;
  v105 = v21;
  v22 = v118;
  v133(v13);
  v139 = MEMORY[0x277D84F90];
  v127 = sub_24EED36B4();
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330F0);
  v131 = sub_24EED370C();
  v120 = v8;
  sub_24F92C6A8();
  v23 = v113;
  v119 = v10;
  sub_24F922738();
  v24 = *(v137 + 8);
  v137 += 8;
  v130 = v24;
  v24(v10, v8);
  v129 = *(v11 + 8);
  v136 = v11 + 8;
  v25 = v13;
  v129(v13, v22);
  v128 = *(v138 + 8);
  v138 += 8;
  v128(v16, v112);
  sub_24E601704(&v140, &qword_27F22F780);
  __swift_destroy_boxed_opaque_existential_1(&v143);
  v26 = v23[72];
  v27 = v23[73];
  v28 = __swift_project_boxed_opaque_existential_1(v23 + 69, v26);
  *(&v144 + 1) = v26;
  v145 = *(v27 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v143);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_1, v28, v26);
  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  v108 = *MEMORY[0x277D227C8];
  v30 = v16;
  v135(v16);
  v114 = *MEMORY[0x277D227F0];
  v133(v13);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E8);
  v123 = *(v137 + 64);
  v122 = *(v137 + 72);
  v117 = (v122 + 32) & ~v122;
  v31 = swift_allocObject();
  v121 = xmmword_24F93DE60;
  *(v31 + 16) = xmmword_24F93DE60;
  sub_24F9226F8();
  v139 = v31;
  v32 = v119;
  v33 = v120;
  sub_24F92C6A8();
  v34 = v125;
  v35 = v30;
  sub_24F922738();
  v130(v32, v33);
  v129(v13, v22);
  v116 = v30;
  v36 = v112;
  v128(v30, v112);
  sub_24E601704(&v140, &qword_27F22F780);
  __swift_destroy_boxed_opaque_existential_1(&v143);
  v99 = 2 * v34;
  v37 = v23[77];
  v38 = v23[78];
  v39 = __swift_project_boxed_opaque_existential_1(v23 + 74, v37);
  *(&v144 + 1) = v37;
  v145 = *(v38 + 8);
  v40 = __swift_allocate_boxed_opaque_existential_1(&v143);
  (*(*(v37 - 8) + 16))(v40, v39, v37);
  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  (v135)(v35, v108, v36);
  v41 = v118;
  (v133)(v13, v114, v118);
  v42 = swift_allocObject();
  *(v42 + 16) = v121;
  sub_24F9226F8();
  v139 = v42;
  v43 = v32;
  sub_24F92C6A8();
  v44 = v99;
  v45 = v113;
  v46 = v116;
  v115 = v13;
  sub_24F922738();
  v130(v43, v33);
  v47 = v41;
  v129(v25, v41);
  v48 = v46;
  v49 = v112;
  v128(v46, v112);
  sub_24E601704(&v140, &qword_27F22F780);
  __swift_destroy_boxed_opaque_existential_1(&v143);
  v99 = v44 + v125;
  v50 = v45[82];
  v51 = v45[83];
  v52 = __swift_project_boxed_opaque_existential_1(v45 + 79, v50);
  *(&v144 + 1) = v50;
  v145 = *(v51 + 8);
  v53 = __swift_allocate_boxed_opaque_existential_1(&v143);
  v54 = v52;
  v55 = v47;
  (*(*(v50 - 8) + 16))(v53, v54, v50);
  v142 = 0;
  v140 = 0u;
  v141 = 0u;
  (v135)(v48, v108, v49);
  v56 = v115;
  (v133)(v115, v114, v55);
  v57 = swift_allocObject();
  *(v57 + 16) = v121;
  sub_24F9226F8();
  v139 = v57;
  v58 = v119;
  v59 = v120;
  sub_24F92C6A8();
  sub_24F922738();
  v130(v58, v59);
  v129(v56, v55);
  v60 = v49;
  v128(v48, v49);
  sub_24E601704(&v140, &qword_27F22F780);
  __swift_destroy_boxed_opaque_existential_1(&v143);
  if (v101 == 1)
  {
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
    v61 = v116;
    (v135)(v116, v111, v49);
    v62 = v115;
    (v133)(v115, v105, v55);
    v63 = swift_allocObject();
    *(v63 + 16) = v121;
    sub_24F9226F8();
    *&v140 = v63;
    v64 = v119;
    v65 = v120;
    sub_24F92C6A8();
    v66 = v113;
    v67 = v98;
    sub_24F922738();
    v130(v64, v65);
    v129(v62, v55);
    v128(v61, v49);
    sub_24E601704(&v143, &qword_27F22F780);
    v68 = v100;
    v70 = *(v100 + 2);
    v69 = *(v100 + 3);
    if (v70 >= v69 >> 1)
    {
      v68 = sub_24E6179B0(v69 > 1, v70 + 1, 1, v100);
    }

    v71 = v103;
    v72 = v110;
    *(v68 + 2) = v70 + 1;
    (*(v72 + 32))(&v68[v109 + v70 * v125], v67, v71);
    v73 = v135;
  }

  else
  {
    v71 = v103;
    v68 = v100;
    v73 = v135;
    v66 = v113;
  }

  sub_24E94275C((v66 + 89), &v140);
  v74 = v111;
  if (*(&v141 + 1))
  {
    sub_24E612C80(&v140, &v143);
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    v75 = v116;
    v73(v116, v74, v60);
    v76 = v115;
    v77 = v68;
    v78 = v118;
    (v133)(v115, v105, v118);
    v79 = swift_allocObject();
    *(v79 + 16) = v121;
    sub_24F9226F8();
    v139 = v79;
    v80 = v119;
    v81 = v120;
    sub_24F92C6A8();
    sub_24F922738();
    v130(v80, v81);
    v129(v76, v78);
    v128(v75, v60);
    sub_24E601704(&v140, &qword_27F22F780);
    v83 = *(v77 + 2);
    v82 = *(v77 + 3);
    if (v83 >= v82 >> 1)
    {
      v77 = sub_24E6179B0(v82 > 1, v83 + 1, 1, v77);
    }

    __swift_destroy_boxed_opaque_existential_1(&v143);
    *(v77 + 2) = v83 + 1;
    (*(v110 + 32))(&v77[v109 + v83 * v125], v106, v71);
    v74 = v111;
    v73 = v135;
  }

  else
  {
    sub_24E601704(&v140, &qword_27F229780);
    v77 = v68;
  }

  sub_24E615E00((v66 + 44), &v143);
  v84 = v116;
  v73(v116, v74, v60);
  v85 = v115;
  v86 = v118;
  (v133)(v115, v114, v118);
  v87 = swift_allocObject();
  *(v87 + 16) = v121;
  sub_24F9226F8();
  *&v140 = v87;
  v88 = v119;
  v89 = v120;
  sub_24F92C6A8();
  v90 = v102;
  sub_24F922738();
  v130(v88, v89);
  v129(v85, v86);
  v128(v84, v60);
  sub_24E601704(&v143, &qword_27F22F780);
  v92 = *(v77 + 2);
  v91 = *(v77 + 3);
  if (v92 >= v91 >> 1)
  {
    v77 = sub_24E6179B0(v91 > 1, v92 + 1, 1, v77);
  }

  *(v77 + 2) = v92 + 1;
  (*(v110 + 32))(&v77[v109 + v92 * v125], v90, v71);
  v93 = sub_24F922758();
  v94 = MEMORY[0x277D22808];
  v95 = v104;
  v104[3] = v93;
  v95[4] = v94;
  v95[5] = MEMORY[0x277D22810];
  __swift_allocate_boxed_opaque_existential_1(v95);
  return sub_24F922728();
}

uint64_t GameCenterReengagementLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, char *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v14 = sub_24F92CDB8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F9221D8();
  v73 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v70 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v65 - v21;
  sub_24F922128();
  v23 = [a1 traitCollection];
  v24 = [v23 horizontalSizeClass];

  v72 = v14;
  v71 = v15;
  if (v24 == 1)
  {
    sub_24F92C1C8();
    sub_24EFA06F8(1, v76);
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24F922AC8();
    v25 = v73;
    (*(v73 + 8))(a2, v18);
    (*(v25 + 32))(a2, v22, v18);
  }

  else
  {
    sub_24EFA06F8(v24, v76);
    __swift_project_boxed_opaque_existential_1(v7 + 49, v7[52]);
    v69 = a2;
    sub_24E8ED7D8();
    sub_24F9223A8();
    v68 = v18;
    v26 = *(v15 + 8);
    v26(v17, v14);
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24F922288();
    v28 = v27;
    v78.origin.x = a3;
    v78.origin.y = a4;
    v78.size.width = a5;
    v78.size.height = a6;
    v65[1] = (CGRectGetHeight(v78) - v28) * 0.5;
    v79.origin.x = a3;
    v79.origin.y = a4;
    v79.size.width = a5;
    v79.size.height = a6;
    CGRectGetMidX(v79);
    v67 = a4;
    v66 = a3;
    __swift_project_boxed_opaque_existential_1(v7 + 54, v7[57]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v26(v17, v14);
    __swift_project_boxed_opaque_existential_1(v7 + 49, v7[52]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v26(v17, v14);
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24F922AC8();
    v80.origin.x = a3;
    v80.origin.y = a4;
    v80.size.width = a5;
    v80.size.height = a6;
    MidX = CGRectGetMidX(v80);
    __swift_project_boxed_opaque_existential_1(v7 + 54, v7[57]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v31 = v30;
    v26(v17, v14);
    v32 = MidX + v31 * 0.5;
    __swift_project_boxed_opaque_existential_1(v7 + 49, v7[52]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v34 = v33;
    v26(v17, v14);
    __swift_project_boxed_opaque_existential_1(v7 + 84, v7[87]);
    sub_24F922298();
    __swift_project_boxed_opaque_existential_1(v7 + 84, v7[87]);
    v81.origin.y = 0.0;
    v81.origin.x = v32;
    v81.size.width = v34;
    v81.size.height = 380.0;
    CGRectGetMidX(v81);
    v82.origin.x = v66;
    v82.origin.y = v67;
    v82.size.width = a5;
    v82.size.height = a6;
    CGRectGetHeight(v82);
    sub_24F922228();
    sub_24F9221A8();
    sub_24F9221A8();
    v83.origin.y = 0.0;
    v83.origin.x = v32;
    v83.size.width = v34;
    v83.size.height = 380.0;
    CGRectGetMaxX(v83);
    v84.origin.y = 0.0;
    v84.origin.x = v32;
    v84.size.width = v34;
    v84.size.height = 380.0;
    CGRectGetMaxY(v84);
    v35 = v70;
    sub_24F922128();
    v36 = v73;
    v37 = *(v73 + 8);
    v38 = v68;
    v37(v22, v68);
    v39 = v69;
    v37(v69, v38);
    (*(v36 + 32))(v39, v35, v38);
  }

  __swift_destroy_boxed_opaque_existential_1(v76);
  sub_24E94275C((v7 + 64), &v74);
  if (!v75)
  {
    return sub_24E601704(&v74, &qword_27F229780);
  }

  sub_24E612C80(&v74, v76);
  v40 = [a1 traitCollection];
  v41 = sub_24F92BF88();

  __swift_project_boxed_opaque_existential_1(v76, v77);
  __swift_project_boxed_opaque_existential_1(v7 + 69, v7[72]);
  sub_24F922218();
  v43 = v42;
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24F922218();
    v45 = v43 - v44;
    __swift_project_boxed_opaque_existential_1(v7 + 9, v7[12]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v47 = v46;
    (*(v71 + 8))(v17, v72);
    v48 = v45 - v47;
    __swift_project_boxed_opaque_existential_1(v7 + 69, v7[72]);
    sub_24F922218();
    MidY = CGRectGetMidY(v85);
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24F922218();
    v50 = MidY + CGRectGetHeight(v86) * -0.5;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v7 + 69, v7[72]);
    sub_24F922218();
    v52 = CGRectGetMidY(v87);
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24F922218();
    v53 = v52 + CGRectGetHeight(v88) * -0.5;
    v54 = sub_24F922208();
    *v55 = v43;
    v55[1] = v53;
    v54(&v74, 0);
    __swift_project_boxed_opaque_existential_1(v7 + 69, v7[72]);
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24F922218();
    v57 = v56;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    sub_24F922218();
    v59 = v57 + v58;
    __swift_project_boxed_opaque_existential_1(v7 + 9, v7[12]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v61 = v60;
    (*(v71 + 8))(v17, v72);
    v48 = v59 + v61;
    __swift_project_boxed_opaque_existential_1(v7 + 69, v7[72]);
    sub_24F922218();
    v50 = v62;
  }

  v63 = sub_24F922208();
  *v64 = v48;
  v64[1] = v50;
  v63(&v74, 0);
  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t sub_24EFA2348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 792))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EFA2390(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 792) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 792) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EFA24B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 512))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EFA24F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 512) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 512) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

JSValue __swiftcall SponsoredSearchAdvert.makeValue(in:)(JSContext in)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v37 = v1[8];
  v38 = v1[6];
  v32 = v1[9];
  v34 = v1[7];
  v35 = v1[11];
  v36 = v1[10];
  v9 = objc_opt_self();
  result.super.isa = [v9 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_24;
  }

  isa = result.super.isa;
  v39 = v4;
  v40 = v3;

  v12 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_24F92C328();
  v39 = v5;
  v40 = v6;

  v13 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_24F92C328();
  v39 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8);
  v14 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_24F92C328();
  v39 = v7;

  v15 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_24F92C328();
  if (v38)
  {
    v39 = v38;

    v16 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v17 = sub_24F92CDE8();
    sub_24EFA2AA8(&v39);
  }

  else
  {
    v18 = in.super.isa;
    v17 = 0;
  }

  v19 = [v9 valueWithObject:v17 inContext:{in.super.isa, v32}];
  swift_unknownObjectRelease();

  if (!v19)
  {
    goto LABEL_28;
  }

  sub_24F92C328();
  v20 = v37;
  if (v37)
  {
    v39 = v34;
    v40 = v37;
    v21 = in.super.isa;

    v20 = sub_24F92CDE8();
    sub_24EB715C4(&v39);
  }

  else
  {
    v22 = in.super.isa;
  }

  v23 = [v9 valueWithObject:v20 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v23)
  {
    goto LABEL_29;
  }

  sub_24F92C328();
  v24 = v36;
  if (v36)
  {
    v39 = v33;
    v40 = v36;
    v25 = in.super.isa;

    v24 = sub_24F92CDE8();
    sub_24EB715C4(&v39);
  }

  else
  {
    v26 = in.super.isa;
  }

  v27 = [v9 valueWithObject:v24 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v27)
  {
    goto LABEL_30;
  }

  sub_24F92C328();
  v28 = v35;
  if (v35)
  {
    v39 = v35;
    v29 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v28 = sub_24F92CDE8();
    sub_24EFA2AA8(&v39);
  }

  else
  {
    v30 = in.super.isa;
  }

  v31 = [v9 valueWithObject:v28 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v31)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24EFA2AA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void SponsoredSearchAdvert.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F92C318();
  v5 = sub_24F92C2F8();
  v7 = v6;

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = sub_24F92C318();
  v9 = sub_24F92C2F8();
  v11 = v10;

  if (!v11)
  {

LABEL_11:
    sub_24F92C318();
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A828();
    swift_willThrow();

    return;
  }

  v33 = v9;
  v12 = sub_24F92C318();
  v13 = [v12 toDictionary];

  if (!v13)
  {

    goto LABEL_11;
  }

  v14 = sub_24F92AE38();

  v15 = sub_24F92C318();
  v16 = [v15 toDictionary];

  if (!v16)
  {

    goto LABEL_11;
  }

  v32 = v14;
  v31 = sub_24F92AE38();

  v17 = sub_24F92C318();
  v18 = [v17 toArray];

  if (v18)
  {
    v19 = sub_24F92B5A8();

    v30 = sub_24E9E2340(v19);
  }

  else
  {
    v30 = 0;
  }

  v20 = sub_24F92C318();
  v34 = sub_24F92C2F8();
  v29 = v21;

  v22 = sub_24F92C318();
  v23 = sub_24F92C2F8();
  v28 = v24;

  v25 = sub_24F92C318();
  v26 = [v25 toArray];

  if (v26)
  {
    v27 = sub_24F92B5A8();

    v26 = sub_24E9E2340(v27);
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v33;
  a2[3] = v11;
  a2[4] = v32;
  a2[5] = v31;
  a2[6] = v30;
  a2[7] = v34;
  a2[8] = v29;
  a2[9] = v23;
  a2[10] = v28;
  a2[11] = v26;
}

__n128 SponsoredSearchAdvert.init(instanceId:adamId:assetInformation:adData:cppIds:serverCppId:selectedCppId:appBinaryTraits:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11)
{
  result = a10;
  v12 = *a3;
  v13 = a3[1];
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v12;
  *(a9 + 24) = v13;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  return result;
}

uint64_t SponsoredSearchAdvert.instanceId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SponsoredSearchAdvert.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t SponsoredSearchAdvert.serverCppId.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SponsoredSearchAdvert.selectedCppId.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_24EFA30AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v9 = sub_24F924848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
  }

  else
  {

    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E74C370(a1, a2, 0);
    (*(v10 + 8))(v12, v9);
    a1 = v15[0];
    a2 = v15[1];
  }

  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  LOBYTE(v15[0]) = 1;
  static GameOverlayDashboardVisibilityNotifier.notify(id:isPresented:scene:)(a1, a2, a5 & 1, v15);
}

uint64_t sub_24EFA3240@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v7 = *(type metadata accessor for OverlayControlsView() + 20);
  *(a1 + v7) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235700) + 36));
  *v9 = sub_24EFA33E8;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235708) + 36));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = sub_24EFA3434;
  v11[3] = v10;
  sub_24E9CC614(v4, v3, v5);

  sub_24E9CC614(v4, v3, v5);
}

uint64_t objectdestroyTm_45()
{
  sub_24E74C370(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_24EFA34E0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EFA3564()
{
  result = qword_27F235720;
  if (!qword_27F235720)
  {
    type metadata accessor for OverlayControlsView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235720);
  }

  return result;
}

uint64_t sub_24EFA35C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234B00);
  result = swift_allocObject();
  *(result + 16) = sub_24EFA3610;
  *(result + 24) = 0;
  qword_27F39D1A0 = result;
  return result;
}

void sub_24EFA3610(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
    goto LABEL_14;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
LABEL_6:

LABEL_15:
    v21 = 2.0;
    goto LABEL_16;
  }

  v11 = sub_24F92B0D8();
  v13 = v12;
  if (v11 == sub_24F92B0D8() && v13 == v14)
  {
    goto LABEL_14;
  }

  v16 = sub_24F92CE08();

  if (v16)
  {
    goto LABEL_6;
  }

  v17 = sub_24F92B0D8();
  v19 = v18;
  if (v17 == sub_24F92B0D8() && v19 == v20)
  {
LABEL_14:

    goto LABEL_15;
  }

  v22 = sub_24F92CE08();

  if (v22)
  {
    goto LABEL_6;
  }

  v23 = sub_24F92B0D8();
  v25 = v24;
  if (v23 == sub_24F92B0D8() && v25 == v26)
  {
    goto LABEL_20;
  }

  v27 = sub_24F92CE08();

  if (v27)
  {

    v21 = 3.0;
    goto LABEL_16;
  }

  v28 = sub_24F92B0D8();
  v30 = v29;
  if (v28 == sub_24F92B0D8() && v30 == v31)
  {
LABEL_20:

    v21 = 3.0;
  }

  else
  {
    v32 = sub_24F92CE08();

    v21 = 1.0;
    if (v32)
    {
      v21 = 3.0;
    }
  }

LABEL_16:
  *a2 = v21;
}

uint64_t FlowcaseItemLayout.init(metrics:artworkView:captionView:titleText:subtitleText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v11 = sub_24F91F7C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FlowcaseItemLayout(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24EFA3C28(a1, v17 + *(v18 + 40));
  sub_24E615E00(a2, v17);
  sub_24F91F758();
  v19 = sub_24F91F768();
  (*(v12 + 8))(v14, v11);
  if (v19)
  {
    sub_24E615E00(a3, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235730);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221210);
    if (swift_dynamicCast())
    {
      sub_24E612C80(v27, v32);
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      sub_24F9224C8();
      v20 = v30;
      v21 = v31;
      v22 = __swift_project_boxed_opaque_existential_1(v29, v30);
      v17[8] = v20;
      v17[9] = *(v21 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17 + 5);
      (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v22, v20);
      __swift_destroy_boxed_opaque_existential_1(v29);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      v28 = 0;
      memset(v27, 0, sizeof(v27));
      sub_24E90ED10(v27);
      sub_24E615E00(a3, (v17 + 5));
    }

    __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    sub_24F9224C8();
    __swift_project_boxed_opaque_existential_1(a5, a5[3]);
    sub_24F9224C8();
    __swift_destroy_boxed_opaque_existential_1(a3);
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_24EFA3CAC(a1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_24EFA3CAC(a1);
    sub_24E612C80(a3, (v17 + 5));
    sub_24E615E00(a4, (v17 + 10));
    sub_24E615E00(a5, (v17 + 15));
  }

  sub_24EFA4314(v17, v26, type metadata accessor for FlowcaseItemLayout);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return __swift_destroy_boxed_opaque_existential_1(a4);
}

uint64_t sub_24EFA3C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EFA3CAC(uint64_t a1)
{
  v2 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 FlowcaseItemLayout.Metrics.init(captionSpace:titleSpace:subtitleSpace:textArtworkMargin:artworkAspectRatio:bottomSpace:textLayoutMargins:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  v17 = a8 + v16[10];
  sub_24E612C80(a1, a8);
  sub_24E612C80(a2, a8 + 40);
  sub_24E612C80(a3, a8 + 80);
  sub_24E612C80(a4, a8 + 120);
  v18 = v16[8];
  v19 = sub_24F922348();
  (*(*(v19 - 8) + 32))(a8 + v18, a5, v19);
  sub_24E612C80(a6, a8 + v16[9]);
  result = *a7;
  v21 = *(a7 + 16);
  *v17 = *a7;
  *(v17 + 16) = v21;
  *(v17 + 32) = *(a7 + 32);
  return result;
}

uint64_t FlowcaseItemLayout.Metrics.captionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t FlowcaseItemLayout.Metrics.titleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t FlowcaseItemLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 80);

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t FlowcaseItemLayout.Metrics.textArtworkMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t FlowcaseItemLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 32);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FlowcaseItemLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 32);
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FlowcaseItemLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 36);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_24E612C80(a1, v1 + v3);
}

__n128 FlowcaseItemLayout.Metrics.textLayoutMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 40);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 FlowcaseItemLayout.Metrics.textLayoutMargins.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FlowcaseItemLayout.Metrics(0) + 40);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_24EFA4314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FlowcaseItemLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FlowcaseItemLayout(0) + 32);

  return sub_24EFA3C28(v3, a1);
}

uint64_t FlowcaseItemLayout.metrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FlowcaseItemLayout(0) + 32);

  return sub_24EFA4434(a1, v3);
}

uint64_t sub_24EFA4434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FlowcaseItemLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v110 = a1;
  v7 = sub_24F9227B8();
  v82 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v83 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_24F9227C8();
  v85 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = v80 - v11;
  v12 = sub_24F9225A8();
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x28223BE20](v12);
  v90 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_24F9227F8();
  *&v112 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_24F922838();
  *&v111 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v86 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F922868();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v106 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_24F922888();
  v109 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v108 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F92CDB8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E615E00((v3 + 5), v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221210);
  v24 = swift_dynamicCast();
  v95 = a2;
  v84 = v7;
  if (v24)
  {
    sub_24E612C80(&v119, &v113);
    __swift_project_boxed_opaque_existential_1(&v113, *(&v114 + 1));
    sub_24F922478();
    __swift_destroy_boxed_opaque_existential_1(&v113);
  }

  else
  {
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    sub_24E90ED10(&v119);
  }

  if (qword_27F210CF8 != -1)
  {
    swift_once();
  }

  *&v113 = qword_27F39D1A0;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(v110, v23);
  v26 = v25;
  v27 = v25;
  (*(v21 + 8))(v23, v20);

  result = __swift_project_boxed_opaque_existential_1(v3 + 15, v3[18]);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v26;
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v3 + 15, v3[18]);
  v30 = sub_24F9221E8();
  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  sub_24F922478();
  if (v30)
  {
    v104 = a3;
    __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
    result = sub_24F9224B8();
    if (result == 1)
    {
      __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
      result = sub_24F922478();
    }

    v31 = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
      result = sub_24F922468();
      v32 = v31 - result;
      if (!__OFSUB__(v31, result))
      {
        __swift_project_boxed_opaque_existential_1(v4 + 15, v4[18]);
        if (v32 >= 1)
        {
          sub_24F922478();
          __swift_project_boxed_opaque_existential_1(v4 + 15, v4[18]);
        }

        sub_24F922248();
        __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
        sub_24F922278();
        goto LABEL_18;
      }

LABEL_26:
      __break(1u);
      return result;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(v3 + 15, v3[18]);
  sub_24F922248();
  v33 = v3[13];
  v34 = v4[14];
  v35 = __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  v127[3] = v33;
  v127[4] = *(v34 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v127);
  (*(*(v33 - 8) + 16))(boxed_opaque_existential_1, v35, v33);
LABEL_18:
  (*(v17 + 104))(v106, *MEMORY[0x277D22868], v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235740);
  v37 = *(sub_24F922848() - 8);
  v81 = *(v37 + 72);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v80[0] = 2 * v81;
  v39 = swift_allocObject();
  v80[1] = v39;
  *(v39 + 16) = xmmword_24F9479A0;
  v96 = v39 + v38;
  v40 = v4 + *(type metadata accessor for FlowcaseItemLayout(0) + 32);
  v103 = *MEMORY[0x277D22848];
  v41 = v111;
  v42 = *(v111 + 104);
  v101 = v111 + 104;
  v102 = v42;
  v43 = v86;
  v42(v86);
  *&v113 = MEMORY[0x277D84F90];
  v98 = sub_24EFA5B10(&qword_27F22B210, MEMORY[0x277D22838]);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235750);
  v99 = sub_24E8EF568();
  v45 = v87;
  v44 = v88;
  sub_24F92C6A8();
  v104 = *&v40;
  sub_24F922818();
  v97 = *(v112 + 8);
  *&v112 = v112 + 8;
  v97(v45, v44);
  v46 = v41 + 8;
  v47 = *(v41 + 8);
  v48 = v107;
  v47(v43, v107);
  *&v111 = v46;
  v102(v43, v103, v48);
  *&v113 = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  sub_24F922818();
  v97(v45, v44);
  v47(v43, v48);
  v49 = v4[18];
  v50 = v4[19];
  v81 = v4;
  v51 = __swift_project_boxed_opaque_existential_1(v4 + 15, v49);
  *(&v114 + 1) = v49;
  *&v115 = *(v50 + 8);
  v52 = __swift_allocate_boxed_opaque_existential_1(&v113);
  (*(*(v49 - 8) + 16))(v52, v51, v49);
  v102(v43, v103, v48);
  v123[0] = MEMORY[0x277D84F90];
  sub_24F92C6A8();
  v53 = v104;
  sub_24F922818();
  v97(v45, v44);
  v47(v43, v48);
  __swift_destroy_boxed_opaque_existential_1(&v113);
  *(&v114 + 1) = sub_24F922418();
  *&v115 = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(&v113);
  sub_24F922408();
  v54 = v108;
  sub_24F922878();
  v55 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  v56 = (*&v53 + *(v55 + 40));
  v57 = (v109 + 16);
  v58 = v105;
  if (v56[2])
  {
    v124 = v105;
    v125 = MEMORY[0x277D22878];
    v126 = MEMORY[0x277D22880];
    v59 = __swift_allocate_boxed_opaque_existential_1(v123);
    (*v57)(v59, v54, v58);
  }

  else
  {
    *(&v120 + 1) = v105;
    v121 = MEMORY[0x277D22878];
    v122 = MEMORY[0x277D22880];
    v60 = *v56;
    v111 = v56[1];
    v112 = v60;
    v61 = __swift_allocate_boxed_opaque_existential_1(&v119);
    (*v57)(v61, v54, v58);
    v124 = &type metadata for InsetLayout;
    v125 = sub_24EFA5A20();
    v126 = sub_24EFA5A74();
    sub_24E8EA128(&v119, &v113);
    v117 = v111;
    v116 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235770);
    v62 = swift_allocObject();
    v63 = v116;
    v62[3] = v115;
    v62[4] = v63;
    v62[5] = v117;
    v64 = v114;
    v62[1] = v113;
    v62[2] = v64;
    v123[0] = v62;
  }

  v66 = v84;
  v65 = v85;
  v68 = v82;
  v67 = v83;
  sub_24E615E00(v81, &v113);
  v69 = *(v55 + 32);
  v70 = sub_24F922348();
  v71 = *(v70 - 8);
  v72 = v104;
  v73 = *&v104 + v69;
  v74 = v89;
  (*(v71 + 16))(v89, v73, v70);
  (*(v71 + 56))(v74, 0, 1, v70);
  v75 = v90;
  sub_24F922598();
  sub_24E8F997C(v123, &v113);
  v76 = v92;
  *(&v120 + 1) = v92;
  v121 = MEMORY[0x277D22740];
  v122 = MEMORY[0x277D22748];
  v77 = __swift_allocate_boxed_opaque_existential_1(&v119);
  v78 = v91;
  (*(v91 + 16))(v77, v75, v76);
  (*(v68 + 104))(v67, *MEMORY[0x277D22820], v66);
  sub_24E615E00(*&v72 + 120, &v118);
  v79 = v93;
  sub_24F9227A8();
  sub_24F922798();
  (*(v65 + 8))(v79, v94);
  (*(v78 + 8))(v75, v76);
  (*(v109 + 8))(v108, v105);
  __swift_destroy_boxed_opaque_existential_1(v123);
  return __swift_destroy_boxed_opaque_existential_1(v127);
}

uint64_t sub_24EFA546C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24EFA5B10(&qword_27F2357B8, type metadata accessor for FlowcaseItemLayout);
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

double _s12GameStoreKit18FlowcaseItemLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9225E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922618();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F92CDB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210CF8 != -1)
  {
    swift_once();
  }

  v31[0] = qword_27F39D1A0;

  sub_24F9220E8();
  Conditional<>.value(in:rounded:)(a2, v14);
  (*(v12 + 8))(v14, v11);

  v15 = type metadata accessor for FlowcaseItemLayout.Metrics(0);
  v16 = a1 + *(v15 + 40);
  if (*(v16 + 32))
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *v16 + *(v16 + 16);
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D22788], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85048];
  *(v18 + 16) = xmmword_24F945E30;
  v32 = v19;
  v33 = MEMORY[0x277D225F8];
  *v31 = v17;
  v20 = sub_24F9229A8();
  v21 = MEMORY[0x277D228E0];
  *(v18 + 56) = v20;
  *(v18 + 64) = v21;
  __swift_allocate_boxed_opaque_existential_1((v18 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1, v31);
  *(v18 + 96) = v20;
  *(v18 + 104) = v21;
  __swift_allocate_boxed_opaque_existential_1((v18 + 72));
  sub_24F9229B8();
  sub_24E615E00(a1, v31);
  v22 = sub_24F922898();
  v23 = MEMORY[0x277D22888];
  *(v18 + 136) = v22;
  *(v18 + 144) = v23;
  __swift_allocate_boxed_opaque_existential_1((v18 + 112));
  sub_24F9228A8();
  sub_24E615E00(a1 + 40, v31);
  *(v18 + 176) = v20;
  *(v18 + 184) = v21;
  __swift_allocate_boxed_opaque_existential_1((v18 + 152));
  sub_24F9229B8();
  sub_24E615E00(a1 + 40, v31);
  *(v18 + 216) = v22;
  *(v18 + 224) = v23;
  __swift_allocate_boxed_opaque_existential_1((v18 + 192));
  sub_24F9228A8();
  sub_24E615E00(a1 + 80, v31);
  *(v18 + 256) = v20;
  *(v18 + 264) = v21;
  __swift_allocate_boxed_opaque_existential_1((v18 + 232));
  sub_24F9229B8();
  sub_24E615E00(a1 + 80, v31);
  *(v18 + 296) = v22;
  *(v18 + 304) = v23;
  __swift_allocate_boxed_opaque_existential_1((v18 + 272));
  sub_24F9228A8();
  sub_24E615E00(a1 + 120, v31);
  *(v18 + 336) = v20;
  *(v18 + 344) = v21;
  __swift_allocate_boxed_opaque_existential_1((v18 + 312));
  sub_24F9229B8();
  sub_24F922308();
  v32 = MEMORY[0x277D85048];
  v33 = MEMORY[0x277D225F8];
  v31[0] = v24;
  *(v18 + 376) = v20;
  *(v18 + 384) = v21;
  __swift_allocate_boxed_opaque_existential_1((v18 + 352));
  sub_24F9229B8();
  sub_24E615E00(a1 + *(v15 + 36), v31);
  *(v18 + 416) = v20;
  *(v18 + 424) = v21;
  __swift_allocate_boxed_opaque_existential_1((v18 + 392));
  sub_24F9229B8();
  sub_24F9225F8();
  sub_24F9225D8();
  v26 = v25;
  (*(v29 + 8))(v10, v30);
  return v26;
}

unint64_t sub_24EFA5A20()
{
  result = qword_27F235760;
  if (!qword_27F235760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235760);
  }

  return result;
}

unint64_t sub_24EFA5A74()
{
  result = qword_27F235768;
  if (!qword_27F235768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235768);
  }

  return result;
}

uint64_t sub_24EFA5B10(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EFA5BB0()
{
  result = sub_24E8EFB54(319, &qword_27F237A20);
  if (v1 <= 0x3F)
  {
    result = sub_24E8EFB54(319, &qword_27F2297C0);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FlowcaseItemLayout.Metrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 24);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_5(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_24EFA5E1C()
{
  sub_24E8EFB54(319, &qword_27F237A40);
  if (v0 <= 0x3F)
  {
    sub_24F922348();
    if (v1 <= 0x3F)
    {
      sub_24EFA5ED0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EFA5ED0()
{
  if (!qword_27F2357B0)
  {
    type metadata accessor for UIEdgeInsets(255);
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2357B0);
    }
  }
}

uint64_t sub_24EFA5F4C(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_24ECDE964(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_24EFB163C(v5, type metadata accessor for GameCenterGameplayHistory, sub_24EFB19C0, sub_24EFB1760);
  *a1 = v2;
  return result;
}

uint64_t sub_24EFA6000(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E861E6C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24EFB163C(v6, type metadata accessor for GameCenterGameplayHistoryRecord, sub_24EFB226C, sub_24EFB1954);
  return sub_24F92C958();
}

GameStoreKit::GameCenter::GameCategoryFilter_optional __swiftcall GameCenter.GameCategoryFilter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t static GameCenter.withLocalPlayer(on:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_24EFB3314(v8, a2, a3, v3, v6, v7);
}

uint64_t static GameCenter.fetchGameInfo(for:on:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  v8 = __swift_project_boxed_opaque_existential_1(a3, v6);

  return sub_24EFB36F4(a1, a2, v8, v3, v6, v7);
}

uint64_t GameCenter.GameCategoryFilter.rawValue.getter()
{
  v1 = 0x656461637261;
  if (*v0 != 1)
  {
    v1 = 0x64616372616E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_24EFA624C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656461637261;
  if (v2 != 1)
  {
    v4 = 0x64616372616E6F6ELL;
    v3 = 0xE900000000000065;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7105633;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656461637261;
  if (*a2 != 1)
  {
    v8 = 0x64616372616E6F6ELL;
    v7 = 0xE900000000000065;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7105633;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EFA6348()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EFA63E4()
{
  sub_24F92B218();
}

uint64_t sub_24EFA646C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EFA6510(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656461637261;
  if (v2 != 1)
  {
    v5 = 0x64616372616E6F6ELL;
    v4 = 0xE900000000000065;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7105633;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24EFA6568()
{
  v7 = sub_24F92BEE8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24E69A5C4(0, &qword_27F222300);
  sub_24F927DB8();
  v8 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24F92BF38();
  qword_27F2357C0 = result;
  return result;
}

uint64_t sub_24EFA67C8()
{
  v7 = sub_24F92BEE8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24E69A5C4(0, &qword_27F222300);
  sub_24F927DB8();
  v8 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24F92BF38();
  qword_27F2357C8 = result;
  return result;
}

void sub_24EFA6A28()
{
  sub_24E69A5C4(0, &unk_27F2229D0);
  v0 = static GKLocalPlayer.currentAcknowledgedPlayer.getter();
  sub_24F92A9C8();
}

void sub_24EFA6AE8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = sub_24F922028();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v29 - v14;
  if (a1)
  {
    v29[1] = a4;
    v30 = a5;
    v32 = a2;
    sub_24F929778();
    v16 = a1;
    sub_24F929768();
    sub_24F921FF8();
    sub_24F92C058();
    v17 = sub_24F929768();
    sub_24F921FE8();

    v18 = [objc_opt_self() proxyForPlayer_];
    v29[0] = [v18 gameServicePrivate];

    v31 = v16;
    v19 = [v16 internal];
    v20 = [v19 playerID];

    if (!v20)
    {
      sub_24F92B0D8();
      v20 = sub_24F92B098();
    }

    sub_24E69A5C4(0, &qword_27F22BD50);
    v21 = sub_24F92C3E8();
    v22 = sub_24F92C3E8();
    sub_24E615E00(v30, v34);
    (*(v10 + 16))(v12, v15, v9);
    v23 = (*(v10 + 80) + 56) & ~*(v10 + 80);
    v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    sub_24E612C80(v34, v25 + 16);
    (*(v10 + 32))(v25 + v23, v12, v9);
    *(v25 + v24) = v32;
    aBlock[4] = sub_24EFB56E0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EFA5F38;
    aBlock[3] = &block_descriptor_107_0;
    v26 = _Block_copy(aBlock);

    [v29[0] getGamesPlayedSummaries:v20 limit:v21 withinSecs:v22 handler:v26];
    _Block_release(v26);

    swift_unknownObjectRelease();
    (*(v10 + 8))(v15, v9);
  }

  else
  {
    sub_24EEAE088();
    v27 = swift_allocError();
    *v28 = 7;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    *(v28 + 32) = 4;
    sub_24F92A9A8();
  }
}

void sub_24EFA6EE8(uint64_t a1, void *a2)
{
  sub_24F92C048();
  sub_24F929778();
  v3 = sub_24F929768();
  sub_24F921FE8();

  if (a2)
  {
    sub_24EEAE088();
    v4 = swift_allocError();
    *v5 = a2;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 3;
    v6 = a2;
    sub_24F92A9A8();
  }

  else
  {
    sub_24F92A9C8();
  }
}

id sub_24EFA6FF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  if (*a1 >> 62)
  {
    result = sub_24F92C738();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_24F93DE60;
    *(v9 + 32) = a2;
    *(v9 + 40) = a3;
    sub_24EEAE088();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    swift_willThrow();
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x253052270](0, v7);
    goto LABEL_6;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v7 + 32);
LABEL_6:
    *a4 = result;
    return result;
  }

  __break(1u);
  return result;
}

void sub_24EFA7110(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24F92C048();
  sub_24F929778();
  v8 = sub_24F929768();
  sub_24F921FE8();

  if (!a2)
  {
    if (a1 >> 62)
    {
      if (sub_24F92C738() >= 1)
      {
        goto LABEL_8;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_8:
      sub_24F92A9C8();
      return;
    }

    sub_24EEAE088();
    v13 = swift_allocError();
    *v14 = a5;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;

    sub_24F92A9A8();
    v12 = v13;
    goto LABEL_3;
  }

  sub_24EEAE088();
  v9 = swift_allocError();
  *v10 = a2;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 3;
  v11 = a2;
  sub_24F92A9A8();
  v12 = v9;
LABEL_3:
}

uint64_t sub_24EFA72BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = a6;
  *(v6 + 296) = a4;
  v7 = sub_24F91F6B8();
  *(v6 + 136) = v7;
  *(v6 + 144) = *(v7 - 8);
  *(v6 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  *(v6 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = swift_task_alloc();
  v8 = sub_24F920018();
  *(v6 + 208) = v8;
  *(v6 + 216) = *(v8 - 8);
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  v9 = sub_24F91FE78();
  *(v6 + 240) = v9;
  *(v6 + 248) = *(v9 - 8);
  *(v6 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235870);
  *(v6 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EFA751C, 0, 0);
}

uint64_t sub_24EFA751C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  (*(v2 + 104))(v4, **(&unk_27968E388 + *(v0 + 296)), v1);
  (*(v2 + 32))(v3, v4, v1);
  (*(v2 + 56))(v3, 0, 1, v1);
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *v5 = v0;
  v5[1] = sub_24EFA7638;
  v6 = *(v0 + 264);

  return MEMORY[0x282163FF0](0, 0, v6);
}

uint64_t sub_24EFA7638(uint64_t a1)
{
  v4 = *v2;
  v4[35] = v1;

  v5 = v4[33];
  if (v1)
  {
    sub_24E601704(v5, &unk_27F235870);
    v6 = sub_24EFA7D38;
  }

  else
  {
    v4[36] = a1;
    sub_24E601704(v5, &unk_27F235870);
    v6 = sub_24EFA77A0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24EFA77A0()
{
  result = sub_24E6B7D50(*(v0 + 120), *(v0 + 288));
  v45 = v3;
  v46 = v4 >> 1;
  v5 = (v4 >> 1) - v2;
  if (__OFSUB__(v4 >> 1, v2))
  {
    goto LABEL_17;
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v2;
    v51 = MEMORY[0x277D84F90];
    result = sub_24F92C978();
    if (v5 < 0)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v8 = *(v0 + 216);
    v42 = (v8 + 8);
    v40 = (*(v0 + 144) + 8);
    v41 = (v8 + 32);
    v9 = v46;
    if (v7 > v46)
    {
      v9 = v7;
    }

    v43 = *(v0 + 216);
    v44 = v9;
    v10 = &qword_27F235830;
    while (v44 != v7)
    {
      v25 = *(v0 + 224);
      v24 = *(v0 + 232);
      v27 = *(v0 + 200);
      v26 = *(v0 + 208);
      v28 = v10;
      v29 = *(v0 + 184);
      v30 = *(v0 + 192);
      v47 = *(v0 + 176);
      v48 = *(v0 + 168);
      v49 = *(v0 + 160);
      v50 = v7;
      v31 = *(v43 + 16);
      v31(v24, v45 + *(v43 + 72) * v7, v26);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
      v31(v25, v24, v26);
      v32 = sub_24F928AD8();
      v33 = *(*(v32 - 8) + 56);
      v33(v27, 1, 1, v32);
      v34 = v30;
      v10 = v28;
      v33(v34, 1, 1, v32);
      v33(v29, 1, 1, v32);
      v33(v47, 1, 1, v32);
      v33(v48, 1, 1, v32);
      v35 = sub_24F929608();
      (*(*(v35 - 8) + 56))(v49, 1, 1, v35);
      type metadata accessor for GameCenterActivityFeedCard();
      v36 = swift_allocObject();
      sub_24E60169C(v0 + 16, v0 + 56, v28);
      v37 = *(v0 + 232);
      v38 = *(v0 + 208);
      if (*(v0 + 80))
      {
        sub_24E601704(v0 + 16, v28);
        (*v42)(v37, v38);
        v52 = *(v0 + 56);
        v53 = *(v0 + 72);
        v54 = *(v0 + 88);
      }

      else
      {
        v11 = *(v0 + 152);
        v12 = *(v0 + 136);
        sub_24F91F6A8();
        v13 = sub_24F91F668();
        v15 = v14;
        (*v40)(v11, v12);
        *(v0 + 96) = v13;
        *(v0 + 104) = v15;
        sub_24F92C7F8();
        sub_24E601704(v0 + 16, v10);
        (*v42)(v37, v38);
        sub_24E601704(v0 + 56, v10);
      }

      v16 = *(v0 + 224);
      v18 = *(v0 + 200);
      v17 = *(v0 + 208);
      v20 = *(v0 + 184);
      v19 = *(v0 + 192);
      v22 = *(v0 + 168);
      v21 = *(v0 + 176);
      v23 = *(v0 + 160);
      *(v36 + 16) = v52;
      *(v36 + 32) = v53;
      *(v36 + 48) = v54;
      (*v41)(v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_data, v16, v17);
      sub_24E6009C8(v18, v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_27F223CE8);
      sub_24E6009C8(v19, v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_27F223CE8);
      sub_24E6009C8(v20, v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_27F223CE8);
      sub_24E6009C8(v21, v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_27F223CE8);
      sub_24E6009C8(v22, v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_27F223CE8);
      sub_24E6009C8(v23, v36 + OBJC_IVAR____TtC12GameStoreKit26GameCenterActivityFeedCard_impressionMetrics, &qword_27F213E68);
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      result = sub_24F92C958();
      ++v7;
      if (v46 == v50 + 1)
      {
        v6 = v51;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  *(v0 + 112) = v6;
  sub_24F92A9C8();
  swift_unknownObjectRelease();

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_24EFA7D38()
{
  v1 = *(v0 + 280);
  sub_24F92A9A8();

  v2 = *(v0 + 8);

  return v2();
}

void sub_24EFA7E70(void *a1)
{
  sub_24EEAE088();
  v2 = swift_allocError();
  *v3 = a1;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 3;
  v4 = a1;
  sub_24F92A9A8();
}

uint64_t static GameCenter.fetchGameRecord(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2357D8);
  v6 = sub_24F92A9E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  sub_24EFB3C9C(v7);

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v15 = sub_24F929638();
  v16 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v14);

  sub_24F929628();
  sub_24E69A5C4(0, &qword_27F21C808);
  sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v14);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v6;
  v10 = sub_24E69A5C4(0, &qword_27F222300);
  swift_retain_n();
  v11 = a1;
  v12 = sub_24F92BEF8();
  v15 = v10;
  v16 = MEMORY[0x277D225C0];
  v14[0] = v12;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v6;
}

void sub_24EFA8100(void *a1, uint64_t a2)
{
  v2 = [objc_opt_self() gameRecordForPlayer:a2 game:*a1];
  sub_24F92A9C8();
}

uint64_t sub_24EFA8174()
{
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v1 = sub_24F92CFE8();
  v4[3] = MEMORY[0x277D837D0];
  v4[0] = v1;
  v4[1] = v2;
  sub_24F928438();
  sub_24E601704(v4, &qword_27F2129B0);
  sub_24F92A5A8();

  return sub_24F92A9A8();
}

void sub_24EFA8330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24F93DE60;
    *(v7 + 32) = a4;
    *(v7 + 40) = a5;

    sub_24EFB3C9C(v7);

    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    *(v8 + 24) = a5;
    v14 = sub_24F929638();
    v15 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(v13);

    sub_24F929628();
    sub_24E69A5C4(0, &qword_27F21C808);
    sub_24F92A938();

    __swift_destroy_boxed_opaque_existential_1(v13);
    v9 = sub_24E69A5C4(0, &qword_27F222300);
    swift_retain_n();
    v10 = sub_24F92BEF8();
    v14 = v9;
    v15 = MEMORY[0x277D225C0];
    v13[0] = v10;
    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_24EEAE088();
    v11 = swift_allocError();
    *v12 = 7;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 4;
    sub_24F92A9A8();
  }
}

uint64_t sub_24EFA8568()
{
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v1 = sub_24F92CFE8();
  v4[3] = MEMORY[0x277D837D0];
  v4[0] = v1;
  v4[1] = v2;
  sub_24F928438();
  sub_24E601704(v4, &qword_27F2129B0);
  sub_24F92A5A8();

  return sub_24F92A9A8();
}

void sub_24EFA8724(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a5;
  v11 = sub_24F922028();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  if (a1)
  {
    sub_24F929778();
    v43 = a2;
    v42 = a1;
    sub_24F929768();
    sub_24F921FF8();
    sub_24F92C058();
    v41 = a6;
    v17 = v16;
    v18 = sub_24F929768();
    v40 = v16;
    sub_24F921FE8();

    v44 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24F93DE60;
    *(v19 + 32) = a3;
    *(v19 + 40) = a4;
    v37 = a4;

    v39 = sub_24F92B588();

    v20 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v20, v17, v11);
    sub_24E615E00(v45, v47);
    v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = v12;
    v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = a3;
    v26 = v20;
    v27 = swift_allocObject();
    (*(v12 + 32))(v27 + v21, v26, v11);
    v28 = (v27 + v22);
    v29 = v37;
    *v28 = v45;
    v28[1] = v29;
    v30 = v42;
    *(v27 + v23) = v43;
    *(v27 + v24) = v30;
    sub_24E612C80(v47, v27 + v25);
    *(v27 + ((v25 + 47) & 0xFFFFFFFFFFFFFFF8)) = v41;
    aBlock[4] = sub_24EFB5A3C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EFA72A8;
    aBlock[3] = &block_descriptor_116;
    v31 = _Block_copy(aBlock);
    v32 = v30;

    v33 = v39;
    [v44 loadGamesWithBundleIDs:v39 withCompletionHandler:v31];
    _Block_release(v31);

    (*(v38 + 8))(v40, v11);
  }

  else
  {
    sub_24EEAE088();
    v34 = swift_allocError();
    *v35 = 7;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = 4;
    sub_24F92A9A8();
  }
}

uint64_t sub_24EFA8B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v31 = a6;
  v32 = a7;
  v29 = a1;
  v30 = a5;
  v28 = a4;
  v10 = sub_24F922028();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210D08 != -1)
  {
    swift_once();
  }

  v27[1] = qword_27F2357C8;
  (*(v11 + 16))(v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  sub_24E615E00(a8, v33);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v14, v13, v10);
  v20 = v28;
  *(v19 + v15) = v29;
  v21 = (v19 + v16);
  v23 = v30;
  v22 = v31;
  *v21 = v20;
  v21[1] = v23;
  *(v19 + v17) = v22;
  v24 = v32;
  *(v19 + v18) = v32;
  sub_24E612C80(v33, v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));

  v25 = v24;
  sub_24F92BF58();
}

void sub_24EFA8D20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v48 = a7;
  v50 = a3;
  v51 = a4;
  v49 = sub_24F922028();
  v11 = *(v49 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v49);
  sub_24F92C048();
  sub_24F929778();
  v13 = sub_24F929768();
  sub_24F921FE8();

  if (a2 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_3;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v47 = a5;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x253052270](0, a2);
      goto LABEL_6;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(a2 + 32);
LABEL_6:
      v15 = v14;
      sub_24F92C058();
      v16 = sub_24F929768();
      sub_24F921FE8();

      v17 = objc_opt_self();
      v43 = a6;
      v18 = [v17 proxyForPlayer_];
      v46 = [v18 gameStatServicePrivate];

      v45 = [v15 gameDescriptor];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24F93DE60;
      v20 = [a6 internal];
      *(v19 + 56) = sub_24E69A5C4(0, &qword_27F235850);
      *(v19 + 32) = v20;
      v44 = sub_24F92B588();

      sub_24E615E00(v48, v58);
      v21 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = v49;
      (*(v11 + 16))(v21, a1, v49);
      v23 = (*(v11 + 80) + 56) & ~*(v11 + 80);
      v24 = (v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
      v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      sub_24E612C80(v58, v27 + 16);
      (*(v11 + 32))(v27 + v23, v21, v22);
      *(v27 + v24) = v47;
      v28 = v43;
      *(v27 + v25) = v43;
      v29 = (v27 + v26);
      v30 = v51;
      *v29 = v50;
      v29[1] = v30;
      *(v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8)) = v15;
      v56 = sub_24EFB5DE8;
      v57 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v53 = 1107296256;
      v54 = sub_24EFAA074;
      v55 = &block_descriptor_125;
      v31 = _Block_copy(&aBlock);

      v32 = v28;
      v33 = v15;

      v34 = v45;
      v35 = v44;
      [v46 getAchievementsForGameDescriptor:v45 players:v44 handler:v31];
      _Block_release(v31);

      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (qword_27F210590 != -1)
  {
LABEL_12:
    swift_once();
  }

  v36 = sub_24F92AAE8();
  __swift_project_value_buffer(v36, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v55 = MEMORY[0x277D837D0];
  v38 = v50;
  v37 = v51;
  aBlock = v50;
  v53 = v51;

  sub_24F928458();
  sub_24E601704(&aBlock, &qword_27F2129B0);
  sub_24F92A5A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_24F93DE60;
  *(v39 + 32) = v38;
  *(v39 + 40) = v37;
  sub_24EEAE088();
  v40 = swift_allocError();
  *v41 = v39;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;

  sub_24F92A9A8();
}

uint64_t sub_24EFA933C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  v44 = a8;
  v41 = a6;
  v42 = a7;
  v35 = a2;
  v36 = a1;
  v38 = a5;
  v39 = a9;
  v11 = sub_24F922028();
  v34 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3[4];
  v40 = a3[3];
  v43 = v15;
  v37 = __swift_project_boxed_opaque_existential_1(a3, v40);
  (*(v12 + 16))(v14, a4, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v12 + 32))(v22 + v16, v14, v34);
  v23 = v35;
  *(v22 + v17) = v35;
  v24 = v39;
  *(v22 + v18) = v38;
  *(v22 + v19) = v36;
  v26 = v41;
  v25 = v42;
  *(v22 + v20) = v41;
  v27 = (v22 + v21);
  v28 = v44;
  *v27 = v25;
  v27[1] = v28;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v29 = v23;

  v30 = v26;

  v31 = v24;
  sub_24F928C78();
}

void sub_24EFA9548(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v92 = a8;
  v94 = a7;
  v93 = a6;
  v97 = a5;
  v96 = a4;
  v95 = a3;
  v9 = sub_24F91FEF8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C048();
  sub_24F929778();
  v17 = sub_24F929768();
  sub_24F921FE8();

  if (a2)
  {
    if (qword_27F210590 == -1)
    {
LABEL_3:
      v18 = sub_24F92AAE8();
      __swift_project_value_buffer(v18, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      swift_getErrorValue();
      v19 = sub_24F92CFE8();
      *(&v107 + 1) = MEMORY[0x277D837D0];
      *&v106 = v19;
      *(&v106 + 1) = v20;
      sub_24F928458();
      sub_24E601704(&v106, &qword_27F2129B0);
      sub_24F92A5A8();

      sub_24EEAE088();
      v21 = swift_allocError();
      *v22 = a2;
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = 3;
      v23 = a2;
      sub_24F92A9A8();
      v24 = v21;
LABEL_23:

      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_3;
  }

  v89 = v10;
  v25 = v94;
  v90 = v12;
  v86 = v9;
  v91 = v16;
  v87 = v14;
  v88 = v13;
  v26 = [v97 internal];
  v27 = [v26 playerID];

  v28 = sub_24F92B0D8();
  v30 = v29;

  v31 = v96;
  if (!*(v96 + 16))
  {

    v35 = v25;
    goto LABEL_20;
  }

  v32 = sub_24E76D644(v28, v30);
  v34 = v33;

  v35 = v25;
  if ((v34 & 1) == 0)
  {
LABEL_20:
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v48 = sub_24F92AAE8();
    v96 = __swift_project_value_buffer(v48, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v49 = [objc_opt_self() local];
    v50 = [v49 internal];

    v51 = [v50 &selRef_startFetchingMetadataForURL_completionHandler_ + 4];
    v52 = sub_24F92B0D8();
    v54 = v53;

    *(&v107 + 1) = MEMORY[0x277D837D0];
    *&v106 = v52;
    *(&v106 + 1) = v54;
    sub_24F928458();
    sub_24E601704(&v106, &qword_27F2129B0);
    sub_24F92A5A8();

    v55 = [v97 internal];
    v56 = [v55 &selRef_startFetchingMetadataForURL_completionHandler_ + 4];

    v57 = sub_24F92B0D8();
    v59 = v58;

    sub_24EEAE088();
    v60 = swift_allocError();
    *v61 = v57;
    *(v61 + 8) = v59;
    *(v61 + 16) = v93;
    *(v61 + 24) = v35;
    *(v61 + 32) = 2;

    sub_24F92A9A8();
    v24 = v60;
    goto LABEL_23;
  }

  v36 = *(*(v31 + 56) + 8 * v32);
  v37 = MEMORY[0x277D84F90];
  if (v36 >> 62)
  {
    v38 = sub_24F92C738();
    *&v106 = v37;
    a2 = sub_24F92C738();
  }

  else
  {
    v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *&v106 = MEMORY[0x277D84F90];
    a2 = v38;
  }

  v39 = v91;
  v40 = v90;
  v41 = v89;

  v42 = MEMORY[0x277D84F90];
  v97 = v38;
  if (a2)
  {
    v43 = 0;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x253052270](v43, v36);
      }

      else
      {
        if (v43 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v44 = *(v36 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = (v43 + 1);
      if (__OFADD__(v43, 1))
      {
        break;
      }

      [v44 percentComplete];
      if (v47 == 100.0)
      {
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      else
      {
      }

      ++v43;
      if (v46 == a2)
      {
        v62 = v106;
        v39 = v91;
        v38 = v97;
        v40 = v90;
        v42 = MEMORY[0x277D84F90];
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v62 = MEMORY[0x277D84F90];
LABEL_26:
  v63 = v92;
  if (v62 < 0 || (v62 & 0x4000000000000000) != 0)
  {
    v94 = sub_24F92C738();

    if (v38)
    {
      goto LABEL_29;
    }

LABEL_43:

    goto LABEL_44;
  }

  v94 = *(v62 + 16);

  if (!v38)
  {
    goto LABEL_43;
  }

LABEL_29:
  *&v106 = v42;
  sub_24F458CC0(0, v38 & ~(v38 >> 63), 0);
  if (v38 < 0)
  {
    __break(1u);
    return;
  }

  v64 = 0;
  v42 = v106;
  v96 = v36 & 0xC000000000000001;
  v65 = v41;
  v66 = v86;
  v67 = v36;
  do
  {
    if (v96)
    {
      v68 = MEMORY[0x253052270](v64, v36);
    }

    else
    {
      v68 = *(v36 + 8 * v64 + 32);
    }

    v69 = v68;
    v70 = [objc_allocWithZone(MEMORY[0x277D0BFB0]) initWithInternalRepresentation_];
    sub_24F92BD78();

    *&v106 = v42;
    v71 = v40;
    v73 = *(v42 + 16);
    v72 = *(v42 + 24);
    if (v73 >= v72 >> 1)
    {
      sub_24F458CC0(v72 > 1, v73 + 1, 1);
      v42 = v106;
    }

    v64 = v64 + 1;
    *(v42 + 16) = v73 + 1;
    (*(v65 + 32))(v42 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v73, v71, v66);
    v40 = v71;
    v36 = v67;
  }

  while (v97 != v64);

  v39 = v91;
  v63 = v92;
  v38 = v97;
LABEL_44:
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v74 = [v63 bundleIdentifier];
  v75 = sub_24F92B0D8();
  v77 = v76;

  type metadata accessor for AchievementSummary();
  v78 = swift_allocObject();
  *(v78 + 80) = 0u;
  *(v78 + 96) = 0u;
  sub_24E60169C(&v106, &v100, &qword_27F235830);
  v79 = v88;
  v80 = v87;
  if (*(&v101 + 1))
  {
    v103 = v100;
    v104 = v101;
    v105 = v102;
  }

  else
  {
    sub_24F91F6A8();
    v81 = sub_24F91F668();
    v83 = v82;
    (*(v80 + 8))(v39, v79);
    v98 = v81;
    v99 = v83;
    sub_24F92C7F8();
    sub_24E601704(&v100, &qword_27F235830);
  }

  sub_24E601704(&v106, &qword_27F235830);
  v84 = v104;
  *(v78 + 112) = v103;
  *(v78 + 128) = v84;
  *(v78 + 144) = v105;
  *(v78 + 16) = v75;
  *(v78 + 24) = v77;
  *(v78 + 32) = v94;
  *(v78 + 40) = v38;
  *(v78 + 48) = 0;
  *(v78 + 56) = 0xE000000000000000;
  *(v78 + 64) = v42;
  *(v78 + 72) = 0;
  *&v106 = v78;
  sub_24F92A9C8();
}

void sub_24EFAA074(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219028);
  v5 = sub_24F92AE38();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_24EFAA130(unint64_t *a1, int a2, uint64_t a3)
{
  v54 = a3;
  LODWORD(v61) = a2;
  v53 = sub_24F922028();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v50 = v7;
  v8 = sub_24F929768();
  sub_24F921FE8();

  v65 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v51 = v5;
    if (i)
    {
      v5 = 0;
      v59 = v6 & 0xFFFFFFFFFFFFFF8;
      v60 = v6 & 0xC000000000000001;
      v57 = v6;
      v10 = v6 + 32;
      v58 = *MEMORY[0x277D0BF88];
      v6 = 40;
      while (1)
      {
        if (v60)
        {
          v11 = MEMORY[0x253052270](v5, v57);
        }

        else
        {
          if (v5 >= *(v59 + 16))
          {
            goto LABEL_48;
          }

          v11 = *(v10 + 8 * v5);
        }

        v12 = v11;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (!v61)
        {
          break;
        }

        if (v61 == 1)
        {
          if ([v11 isArcade])
          {
            break;
          }
        }

        else if (([v11 isArcade] & 1) == 0)
        {
          break;
        }

LABEL_6:
        if (v5 == i)
        {
          v6 = v65;
          if ((v65 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_52;
        }
      }

      v14 = [v12 compatiblePlatforms];
      v15 = sub_24F92BAA8();

      v62[0] = sub_24F92B0D8();
      v62[1] = v16;
      sub_24F92C7F8();
      if (*(v15 + 16) && (v17 = sub_24F92C7B8(), v18 = -1 << *(v15 + 32), v19 = v17 & ~v18, ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (1)
        {
          sub_24E65864C(*(v15 + 48) + 40 * v19, v62);
          v21 = MEMORY[0x253052150](v62, v63);
          sub_24E6585F8(v62);
          if (v21)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        sub_24E6585F8(v63);
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      else
      {
LABEL_5:

        sub_24E6585F8(v63);
      }

      goto LABEL_6;
    }

    v6 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_27:

    v22 = *(v6 + 16);
    v23 = "er";
    if (!v22)
    {
      goto LABEL_53;
    }

LABEL_29:
    v24 = 0;
    v60 = v6 & 0xC000000000000001;
    v55 = MEMORY[0x277D84F90];
    v56 = *(v23 + 64);
    v58 = v22;
    v59 = v6;
LABEL_30:
    v25 = v24;
    while (1)
    {
      if (v60)
      {
        v26 = MEMORY[0x253052270](v25, v6);
      }

      else
      {
        if (v25 >= *(v6 + 16))
        {
          goto LABEL_50;
        }

        v26 = *(v6 + 8 * v25 + 32);
      }

      v27 = v26;
      v24 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = [v26 adamID];
      if (v28)
      {
        v37 = v28;
        v38 = [v28 stringValue];
        v39 = sub_24F92B0D8();
        v41 = v40;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_24E615CF4(0, *(v55 + 2) + 1, 1, v55);
        }

        v5 = *(v55 + 2);
        v42 = *(v55 + 3);
        if (v5 >= v42 >> 1)
        {
          v55 = sub_24E615CF4((v42 > 1), v5 + 1, 1, v55);
        }

        v43 = v55;
        *(v55 + 2) = v5 + 1;
        v44 = &v43[16 * v5];
        *(v44 + 4) = v39;
        *(v44 + 5) = v41;
        if (v24 != v22)
        {
          goto LABEL_30;
        }

        goto LABEL_54;
      }

      v61 = v25 + 1;
      if (qword_27F210590 != -1)
      {
        swift_once();
      }

      v29 = sub_24F92AAE8();
      __swift_project_value_buffer(v29, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      v30 = *(sub_24F928468() - 8);
      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v56;
      v5 = v32 + v31;
      sub_24F9283A8();
      v33 = [v27 bundleID];
      v34 = sub_24F92B0D8();
      v36 = v35;

      v64 = MEMORY[0x277D837D0];
      v63[0] = v34;
      v63[1] = v36;
      sub_24F928438();
      sub_24E601704(v63, &qword_27F2129B0);
      sub_24F92A5A8();

      ++v25;
      v22 = v58;
      v6 = v59;
      if (v61 == v58)
      {
        goto LABEL_54;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

LABEL_52:
  v22 = sub_24F92C738();
  v23 = "_IdealSizeModifier" + 16;
  if (v22)
  {
    goto LABEL_29;
  }

LABEL_53:
  v55 = MEMORY[0x277D84F90];
LABEL_54:

  sub_24F92C048();
  v45 = sub_24F929768();
  v46 = v51;
  sub_24F921FE8();

  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v47 = sub_24F92AAE8();
  __swift_project_value_buffer(v47, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v48 = v55;
  v63[0] = v55;

  sub_24F928438();
  sub_24E601704(v63, &qword_27F2129B0);
  sub_24F92A588();

  v63[0] = v48;
  sub_24F92A9C8();
  (*(v52 + 8))(v46, v53);
}

uint64_t sub_24EFAA9B4()
{
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v1 = sub_24F92CFE8();
  v4[3] = MEMORY[0x277D837D0];
  v4[0] = v1;
  v4[1] = v2;
  sub_24F928438();
  sub_24E601704(v4, &qword_27F2129B0);
  sub_24F92A5A8();

  return sub_24F92A9A8();
}

uint64_t sub_24EFAAB70()
{
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();

  return sub_24F92A9C8();
}

void sub_24EFAACD8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922028();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &aBlock[-1] - v11;
  if (a1)
  {
    sub_24F929778();
    v24 = a2;
    v13 = a1;
    sub_24F929768();
    sub_24F921FF8();
    sub_24F92C058();
    v14 = sub_24F929768();
    sub_24F921FE8();

    v15 = [objc_opt_self() proxyForPlayer_];
    v16 = [v15 gameStatServicePrivate];

    sub_24E615E00(a3, v26);
    (*(v7 + 16))(v9, v12, v6);
    v17 = (*(v7 + 80) + 56) & ~*(v7 + 80);
    v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    sub_24E612C80(v26, v19 + 16);
    (*(v7 + 32))(v19 + v17, v9, v6);
    *(v19 + v18) = v24;
    *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v13;
    aBlock[4] = sub_24EFB4EE0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EFACC00;
    aBlock[3] = &block_descriptor_76_2;
    v20 = _Block_copy(aBlock);
    v21 = v13;

    [v16 getReengagementAchievement_];
    _Block_release(v20);

    swift_unknownObjectRelease();
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    sub_24EEAE088();
    v22 = swift_allocError();
    *v23 = 7;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = 4;
    sub_24F92A9A8();
  }
}

uint64_t sub_24EFAB030(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v37 = a7;
  v34 = a2;
  v35 = a6;
  v31 = a3;
  v32 = a1;
  v9 = sub_24F922028();
  v30 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4[4];
  v36 = a4[3];
  v38 = v13;
  v33 = __swift_project_boxed_opaque_existential_1(a4, v36);
  (*(v10 + 16))(v12, a5, v9);
  sub_24E615E00(a4, v39);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + v14, v12, v30);
  v22 = v31;
  v21 = v32;
  *(v20 + v15) = v31;
  *(v20 + v16) = v35;
  *(v20 + v17) = v21;
  v23 = v34;
  *(v20 + v18) = v34;
  v24 = v37;
  *(v20 + v19) = v37;
  sub_24E612C80(v39, v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v22;
  v26 = v23;
  v27 = v24;

  v28 = v21;
  sub_24F928C78();
}

void sub_24EFAB238(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v67 = a7;
  v68 = a6;
  v65 = a5;
  v66 = a4;
  v70 = a3;
  v69 = sub_24F92AAE8();
  v64 = *(v69 - 1);
  MEMORY[0x28223BE20](v69);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F922028();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_24F92C048();
  sub_24F929778();
  v14 = sub_24F929768();
  sub_24F921FE8();

  if (a2)
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v69, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    swift_getErrorValue();
    v15 = sub_24F92CFE8();
    v74 = MEMORY[0x277D837D0];
    aBlock = v15;
    v72 = v16;
    sub_24F928438();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    sub_24F92A5A8();

    sub_24EEAE088();
    v17 = swift_allocError();
    *v18 = a2;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 3;
    v19 = a2;
    sub_24F92A9A8();
    v20 = v17;
  }

  else
  {
    v61 = v13;
    v21 = v65;
    v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = v67;
    v63 = v11;
    v23 = v64;
    v24 = v68;
    v25 = v66;
    if (v66 && v65)
    {
      v69 = v66;
      v26 = v21;
      v64 = v26;
      sub_24F92C058();
      v27 = sub_24F929768();
      sub_24F921FE8();

      v28 = [objc_opt_self() proxyForPlayer_];
      v66 = [v28 gameStatServicePrivate];

      v65 = [v26 gameDescriptor];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_24F93DE60;
      v30 = [v24 internal];
      *(v29 + 56) = sub_24E69A5C4(0, &qword_27F235850);
      *(v29 + 32) = v30;
      v60 = sub_24F92B588();

      sub_24E615E00(v22, v77);
      v31 = v12;
      v32 = v62;
      v33 = a1;
      v34 = v63;
      (*(v12 + 16))(v62, v33, v63);
      v35 = (*(v12 + 80) + 56) & ~*(v12 + 80);
      v36 = (v61 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
      v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      sub_24E612C80(v77, v39 + 16);
      (*(v31 + 32))(v39 + v35, v32, v34);
      *(v39 + v36) = v70;
      v40 = v24;
      *(v39 + v37) = v24;
      v41 = v64;
      *(v39 + v38) = v64;
      v42 = v69;
      *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v69;
      v75 = sub_24EFB5280;
      v76 = v39;
      aBlock = MEMORY[0x277D85DD0];
      v72 = 1107296256;
      v73 = sub_24EFAA074;
      v74 = &block_descriptor_85_0;
      v43 = _Block_copy(&aBlock);
      v44 = v42;
      v45 = v41;

      v46 = v40;

      v47 = v65;
      v48 = v60;
      [v66 getAchievementsForGameDescriptor:v65 players:v60 handler:v43];
      _Block_release(v43);

      swift_unknownObjectRelease();
      return;
    }

    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v49 = v69;
    v50 = __swift_project_value_buffer(v69, qword_27F39C410);
    v23[2](v10, v50, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    if (v21)
    {
      v51 = sub_24E69A5C4(0, &qword_27F235840);
      v52 = v21;
    }

    else
    {
      v52 = 0;
      v51 = 0;
      v72 = 0;
      v73 = 0;
    }

    aBlock = v52;
    v74 = v51;
    v53 = v21;
    sub_24F928458();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    sub_24F9283A8();
    if (v25)
    {
      v54 = sub_24E69A5C4(0, &qword_27F235838);
      v55 = v25;
    }

    else
    {
      v55 = 0;
      v54 = 0;
      v72 = 0;
      v73 = 0;
    }

    aBlock = v55;
    v74 = v54;
    v56 = v25;
    sub_24F928458();
    sub_24E601704(&aBlock, &qword_27F2129B0);
    sub_24F92A5A8();

    (v23[1])(v10, v49);
    sub_24EEAE088();
    v57 = swift_allocError();
    *v58 = 0u;
    *(v58 + 16) = 0u;
    *(v58 + 32) = 4;
    sub_24F92A9A8();
    v20 = v57;
  }
}

uint64_t sub_24EFABB30(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v41 = a8;
  v38 = a6;
  v39 = a7;
  v36 = a5;
  v33 = a2;
  v34 = a1;
  v10 = sub_24F922028();
  v32 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[4];
  v37 = a3[3];
  v40 = v14;
  v35 = __swift_project_boxed_opaque_existential_1(a3, v37);
  (*(v11 + 16))(v13, a4, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  (*(v11 + 32))(v21 + v15, v13, v32);
  v22 = v33;
  v23 = v34;
  *(v21 + v16) = v33;
  *(v21 + v17) = v36;
  *(v21 + v18) = v23;
  v25 = v38;
  v24 = v39;
  *(v21 + v19) = v38;
  *(v21 + v20) = v24;
  v26 = v41;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
  v27 = v22;

  v28 = v25;
  v29 = v24;
  v30 = v26;
  sub_24F928C78();
}

void sub_24EFABD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v111 = a7;
  v113 = a6;
  v116 = a5;
  v112 = a4;
  v115 = a3;
  v118 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235860);
  MEMORY[0x28223BE20](v8);
  v10 = (&v107 - v9);
  v11 = sub_24F91F6B8();
  v110 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F91FEF8();
  v119 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v107 - v18;
  sub_24F92C048();
  sub_24F929778();
  v20 = sub_24F929768();
  sub_24F921FE8();

  v118 = a2;
  if (a2)
  {
    if (qword_27F210590 != -1)
    {
LABEL_48:
      swift_once();
    }

    v21 = sub_24F92AAE8();
    __swift_project_value_buffer(v21, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v22 = v118;
    swift_getErrorValue();
    v23 = sub_24F92CFE8();
    *(&v129 + 1) = MEMORY[0x277D837D0];
    *&v128 = v23;
    *(&v128 + 1) = v24;
    sub_24F928458();
    sub_24E601704(&v128, &qword_27F2129B0);
    sub_24F92A5A8();

    sub_24EEAE088();
    v25 = swift_allocError();
    *v26 = v22;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    *(v26 + 32) = 3;
    v27 = v22;
    sub_24F92A9A8();
    v28 = v25;
    goto LABEL_23;
  }

  v108 = v10;
  v118 = v13;
  v114 = v11;
  v109 = v16;
  v117 = v14;
  v107 = v8;
  v29 = [v116 internal];
  v30 = [v29 playerID];

  v31 = sub_24F92B0D8();
  v33 = v32;

  v34 = v112;
  v35 = v113;
  if (!*(v112 + 16))
  {

    goto LABEL_20;
  }

  v36 = sub_24E76D644(v31, v33);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_20:
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v54 = sub_24F92AAE8();
    __swift_project_value_buffer(v54, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v55 = [objc_opt_self() local];
    v56 = [v55 internal];

    v57 = [v56 playerID];
    v58 = sub_24F92B0D8();
    v60 = v59;

    *(&v129 + 1) = MEMORY[0x277D837D0];
    *&v128 = v58;
    *(&v128 + 1) = v60;
    sub_24F928458();
    sub_24E601704(&v128, &qword_27F2129B0);
    sub_24F92A5A8();

    v61 = [v116 &selRef_loadAchievementsForGameWithProfileFetchOptions_players_includeUnreported_includeHidden_profileFetchOptions_withCompletionHandler_];
    v62 = [v61 playerID];

    v63 = sub_24F92B0D8();
    v65 = v64;

    v66 = [v113 bundleIdentifier];
    v67 = sub_24F92B0D8();
    v69 = v68;

    sub_24EEAE088();
    v70 = swift_allocError();
    *v71 = v63;
    *(v71 + 8) = v65;
    *(v71 + 16) = v67;
    *(v71 + 24) = v69;
    *(v71 + 32) = 2;
    sub_24F92A9A8();
    v28 = v70;
LABEL_23:

    return;
  }

  v39 = *(*(v34 + 56) + 8 * v36);
  v40 = MEMORY[0x277D84F90];
  if (v39 >> 62)
  {
    v41 = sub_24F92C738();
    *&v128 = v40;
    v42 = sub_24F92C738();
  }

  else
  {
    v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *&v128 = MEMORY[0x277D84F90];
    v42 = v41;
  }

  v43 = v111;
  v44 = v114;
  v45 = v118;

  v46 = MEMORY[0x277D84F90];
  v116 = v41;
  if (v42)
  {
    v47 = 0;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x253052270](v47, v39);
      }

      else
      {
        if (v47 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v50 = *(v39 + 8 * v47 + 32);
      }

      v51 = v50;
      v52 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      [v50 percentComplete];
      if (v53 == 100.0)
      {
        sub_24F92C948();
        sub_24F92C988();
        v44 = v114;
        sub_24F92C998();
        sub_24F92C958();
      }

      else
      {
      }

      ++v47;
      v48 = v52 == v42;
      v49 = v117;
      v45 = v118;
    }

    while (!v48);
    v46 = v128;
    v72 = v113;
    v43 = v111;
    v41 = v116;
    if ((v128 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v49 = v117;
    v72 = v35;
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_27:
      if ((v46 & 0x4000000000000000) == 0)
      {
        v117 = *(v46 + 16);
        goto LABEL_29;
      }
    }
  }

  v117 = sub_24F92C738();
LABEL_29:
  v73 = MEMORY[0x277D84F90];

  if (v41)
  {
    *&v128 = v73;
    sub_24F458CC0(0, v41 & ~(v41 >> 63), 0);
    if (v41 < 0)
    {
      __break(1u);
      return;
    }

    v74 = 0;
    v75 = v128;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x253052270](v74, v39);
      }

      else
      {
        v76 = *(v39 + 8 * v74 + 32);
      }

      v77 = v76;
      v78 = [objc_allocWithZone(MEMORY[0x277D0BFB0]) initWithInternalRepresentation_];
      sub_24F92BD78();

      *&v128 = v75;
      v80 = *(v75 + 16);
      v79 = *(v75 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_24F458CC0(v79 > 1, v80 + 1, 1);
        v75 = v128;
      }

      v74 = v74 + 1;
      *(v75 + 16) = v80 + 1;
      (*(v119 + 32))(v75 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v80, v19, v49);
    }

    while (v116 != v74);

    v72 = v113;
    v43 = v111;
    v44 = v114;
    v45 = v118;
  }

  else
  {

    v75 = MEMORY[0x277D84F90];
  }

  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v81 = [v72 bundleIdentifier];
  v82 = sub_24F92B0D8();
  v84 = v83;

  type metadata accessor for AchievementSummary();
  v85 = swift_allocObject();
  *(v85 + 80) = 0u;
  *(v85 + 96) = 0u;
  sub_24E60169C(&v128, &v122, &qword_27F235830);
  if (*(&v123 + 1))
  {
    v125 = v122;
    v126 = v123;
    v127 = v124;
  }

  else
  {
    sub_24F91F6A8();
    v86 = v43;
    v87 = sub_24F91F668();
    v88 = v45;
    v90 = v89;
    (*(v110 + 8))(v88, v44);
    v120 = v87;
    v121 = v90;
    v43 = v86;
    sub_24F92C7F8();
    sub_24E601704(&v122, &qword_27F235830);
  }

  sub_24E601704(&v128, &qword_27F235830);
  v91 = v126;
  *(v85 + 112) = v125;
  *(v85 + 128) = v91;
  *(v85 + 144) = v127;
  *(v85 + 16) = v82;
  *(v85 + 24) = v84;
  v92 = v116;
  *(v85 + 32) = v117;
  *(v85 + 40) = v92;
  *(v85 + 48) = 0;
  *(v85 + 56) = 0xE000000000000000;
  *(v85 + 64) = v75;
  *(v85 + 72) = 0;
  v93 = [objc_allocWithZone(MEMORY[0x277D0BFB0]) initWithInternalRepresentation_];
  sub_24F92BD78();

  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v118 = sub_24F92AAE8();
  v117 = __swift_project_value_buffer(v118, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F9479A0;
  sub_24F9283A8();
  v94 = v113;
  v95 = [v113 adamID];
  *(&v129 + 1) = sub_24E69A5C4(0, &qword_27F22BD50);
  *&v128 = v95;
  sub_24F928458();
  sub_24E601704(&v128, &qword_27F2129B0);
  *(&v129 + 1) = v49;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v128);
  v97 = v119;
  v116 = *(v119 + 16);
  v98 = v109;
  (v116)(boxed_opaque_existential_1, v109, v49);
  sub_24F928458();
  sub_24E601704(&v128, &qword_27F2129B0);
  sub_24F92A588();

  v99 = [v94 adamID];
  v100 = [v99 stringValue];

  v101 = sub_24F92B0D8();
  v103 = v102;

  v104 = *(v107 + 48);
  v105 = *(v107 + 64);
  v106 = v108;
  *v108 = v101;
  *(v106 + 8) = v103;
  (v116)(v106 + v104, v98, v49);
  *(v106 + v105) = v85;
  sub_24F92A9C8();
  sub_24E601704(v106, &unk_27F235860);
  (*(v97 + 8))(v98, v49);
}

void sub_24EFACC00(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t static GameCenter.sendFriendInvitationViaPush(_:bag:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  *(v2 + 48) = swift_task_alloc();
  v5 = *(a1 + 16);
  *(v2 + 56) = *a1;
  *(v2 + 72) = v5;
  *(v2 + 145) = *(a1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 88) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357F0);
  *v6 = v2;
  v6[1] = sub_24EFACE14;

  return MEMORY[0x2822007B8](v2 + 16, 0, 0, 0xD000000000000023, 0x800000024FA65FB0, sub_24EFB3874, 0, v7);
}

uint64_t sub_24EFACE14()
{

  return MEMORY[0x2822009F8](sub_24EFACF10, 0, 0);
}

uint64_t sub_24EFACF10()
{
  v1 = *(v0 + 16);
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = *(v0 + 145);
    v3 = v1;
    v4 = swift_task_alloc();
    v5 = v4;
    *(v0 + 104) = v4;
    *(v4 + 16) = v3;
    if (v2)
    {
      v6 = *(v0 + 72);
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 40) = v6;
      v7 = swift_task_alloc();
      *(v0 + 128) = v7;
      *v7 = v0;
      v7[1] = sub_24EFAD320;
      v8 = MEMORY[0x277D84F78];
      v9 = sub_24EFB3FFC;
    }

    else
    {
      *(v4 + 24) = *(v0 + 56);
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      v7 = swift_task_alloc();
      *(v0 + 112) = v7;
      *v7 = v0;
      v7[1] = sub_24EFAD1FC;
      v8 = MEMORY[0x277D84F78];
      v9 = sub_24EFB6710;
    }

    return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000044, 0x800000024FA66020, v9, v5, v8 + 8);
  }

  else
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v10 = sub_24F92AAE8();
    __swift_project_value_buffer(v10, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_24EFAD1FC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_24EFAD5D8;
  }

  else
  {

    v3 = sub_24EFAD444;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EFAD320()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_24EFAD7F8;
  }

  else
  {

    v3 = sub_24EFAD658;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EFAD444()
{
  if (qword_27F210BB8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  sub_24F92A3B8();
  sub_24F92A408();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 144) != 1)
  {
    goto LABEL_6;
  }

  if (*(v0 + 145))
  {
    sub_24EFB42A4(*(v0 + 56), *(v0 + 64));
    if (!v4)
    {
LABEL_6:

      goto LABEL_9;
    }
  }

  else
  {
  }

  v5 = *(v0 + 96);
  sub_24E69A5C4(0, &unk_27F2229D0);
  sub_24F92BD88();

LABEL_9:

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24EFAD5D8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EFAD658()
{
  _s12GameStoreKit0A6CenterC20addContactToDenyList_3forySS_So13GKLocalPlayerCtFZ_0(*(v0 + 56), *(v0 + 64), *(v0 + 96));
  if (qword_27F210BB8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  sub_24F92A3B8();
  sub_24F92A408();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 144) != 1)
  {
    goto LABEL_6;
  }

  if (*(v0 + 145))
  {
    sub_24EFB42A4(*(v0 + 56), *(v0 + 64));
    if (!v4)
    {
LABEL_6:

      goto LABEL_9;
    }
  }

  else
  {
  }

  v5 = *(v0 + 96);
  sub_24E69A5C4(0, &unk_27F2229D0);
  sub_24F92BD88();

LABEL_9:

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24EFAD7F8()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24EFAD878(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A8);
  return sub_24F92B798();
}

void sub_24EFAD8CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = a2;
  v24 = a6;
  v22[1] = a3;
  v22[2] = a5;
  v25 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = sub_24F922028();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C058();
  sub_24F929778();
  v15 = sub_24F929768();
  sub_24F922018();
  sub_24F921FE8();

  (*(v12 + 8))(v14, v11);
  v16 = [objc_opt_self() proxyForPlayer_];
  v17 = [v16 friendServicePrivate];

  if (a4)
  {
    a4 = sub_24F92B098();
  }

  if (v24)
  {
    v18 = sub_24F92B098();
  }

  else
  {
    v18 = 0;
  }

  (*(v8 + 16))(v10, v25, v7);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  (*(v8 + 32))(v20 + v19, v10, v7);
  aBlock[4] = sub_24EFB62C8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9FABA0;
  aBlock[3] = &block_descriptor_146;
  v21 = _Block_copy(aBlock);

  [v17 sendFriendInvitationWithPlayerID:a4 contactAssociationID:v18 completion:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();
}

uint64_t sub_24EFADBF8(void *a1)
{
  v2 = sub_24F928418();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_24F922028();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C048();
  sub_24F929778();
  v7 = sub_24F929768();
  sub_24F922018();
  sub_24F921FE8();

  (*(v4 + 8))(v6, v3);
  if (a1)
  {
    v8 = a1;
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v9 = sub_24F92AAE8();
    __swift_project_value_buffer(v9, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    swift_getErrorValue();
    v10 = v14;
    v11 = v15;
    v16[3] = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v10, v11);
    sub_24F9283D8();
    sub_24E601704(v16, &qword_27F2129B0);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();

    v16[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
    return sub_24F92B788();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0);
    return sub_24F92B798();
  }
}

void sub_24EFADF74(uint64_t a1)
{
  sub_24F92C048();
  sub_24F929778();
  v2 = sub_24F929768();
  sub_24F921FE8();

  if (a1)
  {
    if (qword_27F210590 != -1)
    {
      swift_once();
    }

    v3 = sub_24F92AAE8();
    __swift_project_value_buffer(v3, qword_27F39C410);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v5[3] = &type metadata for GameCenter.GameCenterError;
    v4 = swift_allocObject();
    v5[0] = v4;
    *(v4 + 16) = 7;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 48) = 4;
    sub_24F928438();
    sub_24E601704(v5, &qword_27F2129B0);
    sub_24F92A5A8();
  }
}

id GameCenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GameCenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameCenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GKPlayer.avatarArtwork()()
{
  v1 = v0;
  v2 = sub_24F91F6B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = &v23 - v8;
  v10 = [v1 hasPhoto];
  result = 0;
  if (v10)
  {
    v12 = [objc_opt_self() sizeForPhotoSize_];
    v13 = [v1 photoURLForSize_];
    v14 = sub_24F92B0D8();
    v16 = v15;

    v17 = sub_24F929608();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    type metadata accessor for Artwork();
    v18 = swift_allocObject();
    *(v18 + 152) = 0u;
    *(v18 + 168) = 0u;
    *(v18 + 184) = 0;
    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v3 + 8))(v5, v2);
    v23 = v19;
    v24 = v21;
    sub_24F92C7F8();
    sub_24E60169C(v9, v18 + OBJC_IVAR____TtC12GameStoreKit7Artwork_impressionMetrics, &qword_27F213E68);
    *(v18 + 16) = v14;
    *(v18 + 24) = v16;
    *(v18 + 32) = v12;
    *(v18 + 40) = v12;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 72) = 25186;
    *(v18 + 80) = 0xE200000000000000;
    *(v18 + 64) = 0;
    *(v18 + 104) = MEMORY[0x277D84F90];
    v23 = 25186;
    v24 = 0xE200000000000000;
    v22 = Artwork.Crop.preferredContentMode.getter();
    sub_24E601704(v9, &qword_27F213E68);
    result = v18;
    *(v18 + 88) = v22;
    *(v18 + 96) = 3;
  }

  return result;
}

uint64_t sub_24EFAE514()
{
  v7 = sub_24F92BEE8();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24F92BE88();
  MEMORY[0x28223BE20](v3);
  v4 = sub_24F927DC8();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_24E69A5C4(0, &qword_27F222300);
  sub_24F927DA8();
  v8 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30);
  sub_24F92C6A8();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_24F92BF38();
  qword_27F2357D0 = result;
  return result;
}

uint64_t sub_24EFAE774(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_24F927D88();
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F927DC8();
  v12 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210D18 != -1)
  {
    swift_once();
  }

  v20[1] = qword_27F2357D0;
  v15 = swift_allocObject();
  swift_weakInit();
  sub_24E615E00(a5, v25);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  sub_24E612C80(v25, (v16 + 6));
  aBlock[4] = sub_24EFB55A0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_98;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_24F927DA8();
  v23 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v14, v11, v17);
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);
}

uint64_t sub_24EFAEAD4(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(result + 24);
    if (v10)
    {
      if (v10 == 1)
      {
        if (!a2)
        {
          goto LABEL_9;
        }
      }

      else if (a2)
      {
        sub_24E69A5C4(0, &unk_27F2229D0);
        sub_24EFB55B0(v10);
        v11 = a2;
        v12 = sub_24F92C408();
        sub_24EFB4814(v10);

        if (v12)
        {
          goto LABEL_9;
        }
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235880);
    *(v9 + 16) = sub_24F92A9E8();

    result = sub_24EFAED40(a2, a5);
LABEL_9:
    a3(result);
  }

  return result;
}

uint64_t sub_24EFAEBFC()
{
  v1 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92B218();
  MEMORY[0x253052A00](v1);
  sub_24F92D088();
  return sub_24F92D0B8();
}

uint64_t sub_24EFAEC78()
{
  v1 = *(v0 + 16);
  sub_24F92B218();
  MEMORY[0x253052A00](v1);
  return sub_24F92D088();
}

uint64_t sub_24EFAECC4()
{
  v1 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92B218();
  MEMORY[0x253052A00](v1);
  sub_24F92D088();
  return sub_24F92D0B8();
}

uint64_t sub_24EFAED40(void *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v5 = sub_24F922028();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v11 = sub_24F929768();
  sub_24F921FE8();

  if (a1)
  {
    v12 = *(v3 + 24);
    *(v3 + 24) = a1;
    v13 = a1;
    sub_24EFB4814(v12);
    v14 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = *(v3 + 16);

    v34 = sub_24EFB0FA8(v35);
    v30 = *(v6 + 16);
    v30(v14, v10, v5);
    v16 = *(v6 + 80);
    v31 = v3;
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    *(v17 + 24) = v15;
    v32 = v17;
    v33 = v6;
    v18 = *(v6 + 32);
    v18(v17 + ((v16 + 32) & ~v16), v14, v5);
    v35 = v10;
    v30(v14, v10, v5);
    v19 = v5;
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    v18(v20 + ((v16 + 24) & ~v16), v14, v5);
    v21 = qword_27F210D18;
    swift_retain_n();

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = qword_27F2357D0;
    v36[3] = sub_24E69A5C4(0, &qword_27F222300);
    v36[4] = MEMORY[0x277D225C0];
    v36[0] = v22;
    v23 = v22;
    sub_24F92A958();

    (*(v33 + 8))(v35, v19);
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    v25 = *(v3 + 24);
    *(v3 + 24) = 1;
    sub_24EFB4814(v25);

    v26 = MEMORY[0x277D84F90];
    v27 = sub_24E60F6A0(MEMORY[0x277D84F90]);
    v36[0] = v26;
    v36[1] = v27;
    sub_24F92A9C8();

    sub_24F92C048();
    v28 = sub_24F929768();
    sub_24F921FE8();

    return (*(v6 + 8))(v10, v5);
  }
}

void sub_24EFAF130(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85[2] = a4;
  v85[1] = a3;
  v5 = sub_24F91F648();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v85 - v13;
  v15 = *a1;
  v111 = MEMORY[0x277D84F98];
  v110 = MEMORY[0x277D84F90];
  if (v15 >> 62)
  {
    v59 = v15;
    v16 = sub_24F92C738();
    v15 = v59;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_40:
    v57 = MEMORY[0x277D84F98];
    v58 = MEMORY[0x277D84F98];
LABEL_41:
    v60 = *(v57 + 16);
    v106 = v57;
    if (v60)
    {
      v61 = sub_24EAE6B44(v60, 0);
      v62 = sub_24EAE8DF0(v108, (v61 + 4), v60, v57);

      sub_24E6586B4();
      if (v62 == v60)
      {
LABEL_45:
        v63 = v106;
        v107 = v61[2];
        v98 = v58;
        if (!v107)
        {
LABEL_62:

          sub_24EFA5F4C(&v110);
          v65 = v110;
          if (v110 >> 62)
          {
            goto LABEL_78;
          }

          v79 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v79)
          {
            goto LABEL_64;
          }

LABEL_79:
          v108[0] = v65;
          v108[1] = v98;

          sub_24F92A9C8();

          sub_24F92C048();
          sub_24F929778();
          v84 = sub_24F929768();
          sub_24F921FE8();

          return;
        }

        v64 = 0;
        v5 = 0;
        v65 = (v61 + 7);
        while (1)
        {
          if (v64 >= v61[2])
          {
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            v79 = sub_24F92C738();
            if (!v79)
            {
              goto LABEL_79;
            }

LABEL_64:
            v80 = 0;
            v104 = v65 & 0xFFFFFFFFFFFFFF8;
            v105 = v65 & 0xC000000000000001;
            *&v102 = "astPlayedDate was nil.";
            v101 = xmmword_24F93FC20;
            v99 = v79;
            v100 = 0xD00000000000001ELL;
            v103 = v65;
            while (1)
            {
              if (v105)
              {
                v81 = MEMORY[0x253052270](v80, v65);
                v82 = (v80 + 1);
                if (__OFADD__(v80, 1))
                {
                  goto LABEL_76;
                }
              }

              else
              {
                if (v80 >= *(v104 + 16))
                {
                  goto LABEL_77;
                }

                v81 = *(v65 + 8 * v80 + 32);

                v82 = (v80 + 1);
                if (__OFADD__(v80, 1))
                {
                  goto LABEL_76;
                }
              }

              if (qword_27F210590 != -1)
              {
                swift_once();
              }

              v83 = sub_24F92AAE8();
              v107 = __swift_project_value_buffer(v83, qword_27F39C410);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
              sub_24F928468();
              *(swift_allocObject() + 16) = v101;
              sub_24F9283A8();
              v109 = MEMORY[0x277D83B88];
              v108[0] = v82;
              sub_24F928438();
              sub_24E601704(v108, &qword_27F2129B0);
              sub_24F9283A8();
              v109 = type metadata accessor for GameCenterGameplayHistory();
              v108[0] = v81;

              sub_24F928458();
              sub_24E601704(v108, &qword_27F2129B0);
              sub_24F92A588();

              ++v80;
              v65 = v103;
              if (v82 == v99)
              {
                goto LABEL_79;
              }
            }
          }

          if (*(v63 + 16))
          {
            v67 = *(v65 - 24);
            v66 = *(v65 - 16);
            v68 = *(v65 - 8);
            v69 = *v65;

            v70 = sub_24E76E530(v67, v66, v68, v69);
            if (v71)
            {
              v72 = *(*(v63 + 56) + 8 * v70);
              if (!(v72 >> 62))
              {
                v73 = (v72 & 0xFFFFFFFFFFFFFF8);

                goto LABEL_54;
              }

              v77 = sub_24F92C738();
              if (v77)
              {
                v105 = v77;
                v73 = sub_24EAEACA0(v77, 0);
                swift_bridgeObjectRetain_n();
                sub_24EA11104((v73 + 4), v105, v72);
                v104 = v78;

                if (v104 != v105)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                v73 = MEMORY[0x277D84F90];
LABEL_54:
              }

              v108[0] = v73;
              sub_24EFA6000(v108);

              v74 = v108[0];
              type metadata accessor for GameCenterGameplayHistory();
              v75 = swift_allocObject();
              *(v75 + 16) = v67;
              *(v75 + 24) = v66;
              *(v75 + 32) = v68;
              *(v75 + 40) = v69;
              *(v75 + 48) = v74;

              MEMORY[0x253050F00](v76);
              if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_24F92B5E8();
              }

              sub_24F92B638();

              v63 = v106;
              goto LABEL_48;
            }
          }

LABEL_48:
          ++v64;
          v65 += 32;
          if (v107 == v64)
          {
            goto LABEL_62;
          }
        }
      }

      __break(1u);
    }

    v61 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_40;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v104 = v6 + 56;
    v105 = v15 & 0xC000000000000001;
    v103 = (v6 + 48);
    v100 = (v6 + 16);
    *&v101 = "GameCenterCache.cacheQueue";
    v99 = (v6 + 8);
    v88 = "astPlayedGame was nil.";
    v89 = "gamesRecentlyPlayedByFriends #";
    v98 = MEMORY[0x277D84F98];
    v102 = xmmword_24F93DE60;
    v87 = xmmword_24F941C80;
    v93 = v11;
    v107 = v15;
    v90 = v8;
    v106 = v16;
    v86 = v5;
    while (1)
    {
      if (v105)
      {
        v19 = MEMORY[0x253052270](v17);
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = [v20 lastPlayedDate];
      if (v21)
      {
        v22 = v21;
        sub_24F91F608();

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      (*v104)(v11, v23, 1, v5);
      sub_24E6009C8(v11, v14, &unk_27F22EC30);
      if ((*v103)(v14, 1, v5))
      {

        sub_24E601704(v14, &unk_27F22EC30);
        if (qword_27F210590 != -1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        (*v100)(v8, v14, v5);
        sub_24E601704(v14, &unk_27F22EC30);
        sub_24F91F5E8();
        v25 = v24;
        (*v99)(v8, v5);
        v26 = [v20 lastPlayedGame];

        if (v26)
        {
          v27 = [v26 adamID];
          sub_24E69A5C4(0, &qword_27F22BD50);
          v28 = sub_24F92C3E8();
          v29 = sub_24F92C408();

          if (v29)
          {
            if (qword_27F210590 != -1)
            {
              swift_once();
            }

            v30 = sub_24F92AAE8();
            __swift_project_value_buffer(v30, qword_27F39C410);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
            sub_24F928468();
            *(swift_allocObject() + 16) = v102;
            sub_24F9283A8();
            sub_24F92A5A8();

            v8 = v90;
            v11 = v93;
            goto LABEL_7;
          }

          v96 = sub_24EFB4AB4(v26);
          v95 = [v26 isArcadeGame];
          v31 = v27;
          v32 = [v31 stringValue];
          v94 = sub_24F92B0D8();
          v97 = v33;
          v92 = v31;

          type metadata accessor for GameCenterPlayer(0);
          v34 = v20;
          v35 = sub_24EEEDACC(v34);
          v91 = v34;

          v36 = v98;
          if (!v98[2] || (sub_24E76D644(*(v35 + 16), *(v35 + 24)), (v37 & 1) == 0))
          {
            v39 = *(v35 + 16);
            v38 = *(v35 + 24);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v108[0] = v36;
            sub_24E8218D8(v35, v39, v38, isUniquelyReferenced_nonNull_native);

            v98 = v108[0];
          }

          v41 = *(v35 + 16);
          v42 = *(v35 + 24);
          type metadata accessor for GameCenterGameplayHistoryRecord();
          v43 = swift_allocObject();
          v43[2] = v41;
          v43[3] = v42;
          v43[4] = v25;
          v44 = v111;
          v45 = v111[2];

          if (v45)
          {
            v46 = v94;
            v47 = v97;
            v48 = v96;
            v49 = v95;
            sub_24E76E530(v94, v97, v96, v95);
            if (v50)
            {
              v51 = sub_24F4D6554(v108, v46, v47, v48, v49);
              if (!*v52)
              {
                (v51)(v108, 0);

                v11 = v93;
                v8 = v90;
                v5 = v86;
                goto LABEL_7;
              }

              v53 = v52;
              v96 = v51;

              MEMORY[0x253050F00](v54);
              v8 = v90;
              v5 = v86;
              if (*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_24F92B5E8();
              }

              sub_24F92B638();
              v96(v108, 0);

              goto LABEL_34;
            }

            v44 = v111;
            v8 = v90;
            v5 = v86;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
          v55 = swift_allocObject();
          *(v55 + 16) = v87;
          *(v55 + 32) = v43;

          v56 = swift_isUniquelyReferenced_nonNull_native();
          v108[0] = v44;
          sub_24E821764(v55, v94, v97, v96, v95, v56);

          v111 = v108[0];
LABEL_34:
          v11 = v93;
          goto LABEL_7;
        }

        if (qword_27F210590 != -1)
        {
LABEL_36:
          swift_once();
        }
      }

      v18 = sub_24F92AAE8();
      __swift_project_value_buffer(v18, qword_27F39C410);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = v102;
      sub_24F9283A8();
      sub_24F92A5A8();

LABEL_7:
      ++v17;
      v15 = v107;
      if (v106 == v17)
      {
        v57 = v111;
        v58 = v98;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);

  __break(1u);
}

uint64_t sub_24EFB01A4(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 48);
  if (v3 >> 62)
  {
    result = sub_24F92C738();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x253052270](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v3 = *(v3 + 32);
  }

  v2 = *(v2 + 48);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_16:

    return 0;
  }

  result = sub_24F92C738();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v5 = MEMORY[0x253052270](0, v2);
    goto LABEL_11;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 32);

LABEL_11:
    v6 = *(v3 + 32);

    v7 = *(v5 + 32);

    return v7 < v6;
  }

  __break(1u);
  return result;
}

void sub_24EFB0300()
{
  sub_24F92A9A8();
  sub_24F92C048();
  sub_24F929778();
  v0 = sub_24F929768();
  sub_24F921FE8();
}

double sub_24EFB0390@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_24EFB3288(v4);
    v6 = sub_24F92C6B8();
    v7 = sub_24EFB2E80(v6, *(a1 + 36), 0, v5, a1);
    v9 = v8;
    v11 = v10;
    sub_24EFB300C(v7, v8, a1, a2);

    sub_24E6586A8(v7, v9, v11 & 1);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_24EFB0458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a3;
    v10[4] = a4;
    v10[5] = a5;
    v11 = sub_24E69A5C4(0, &qword_27F222300);
    swift_retain_n();

    v12 = sub_24F92BEF8();
    v13[3] = v11;
    v13[4] = MEMORY[0x277D225C0];
    v13[0] = v12;
    sub_24F92A958();

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return result;
}

uint64_t *sub_24EFB059C(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v5 = *result;
  v20 = result[1];
  v21 = MEMORY[0x277D84F90];
  if (*result >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = result)
  {
    v7 = MEMORY[0x277D84F90];
    if (i)
    {
      v8 = 0;
      v19 = a2;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x253052270](v8, v5);
          v10 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v9 = *(v5 + 8 * v8 + 32);

          v10 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        v11 = v9[2] == a2 && v9[3] == a3;
        if (!v11 && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_5;
        }

        v12 = v9[4];
        if (qword_27F210D10 != -1)
        {
          swift_once();
        }

        if (v12 == qword_27F39D1A8)
        {
          sub_24F92C948();
          sub_24F92C988();
          a2 = v19;
          sub_24F92C998();
          result = sub_24F92C958();
        }

        else
        {
LABEL_5:
        }

        ++v8;
      }

      while (v10 != i);
      v13 = v21;
      v7 = MEMORY[0x277D84F90];
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_25:
        if ((v13 & 0x4000000000000000) == 0)
        {
          if (!*(v13 + 16))
          {
            goto LABEL_53;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24F92C738();
    if (!result)
    {
LABEL_53:

      return sub_24F92A9C8();
    }

LABEL_27:
    if ((v13 & 0xC000000000000001) == 0)
    {
      break;
    }

    a3 = MEMORY[0x253052270](0, v13);
LABEL_30:

    a2 = *(a3 + 48);
    v21 = v7;
    if (a2 >> 62)
    {
      v5 = sub_24F92C738();
      if (!v5)
      {
LABEL_56:
        sub_24F92A9C8();
      }
    }

    else
    {
      v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_56;
      }
    }

    v14 = 0;
LABEL_33:
    v15 = v14;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x253052270](v15, a2);
      }

      else
      {
        if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v16 = *(a2 + 8 * v15 + 32);
      }

      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (*(v20 + 16))
      {
        sub_24E76D644(*(v16 + 16), *(v16 + 24));
        if (v17)
        {

          MEMORY[0x253050F00](v18);
          if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_24F92B5E8();
          }

          sub_24F92B638();
          if (v14 != v5)
          {
            goto LABEL_33;
          }

          goto LABEL_56;
        }
      }

      ++v15;
      if (v14 == v5)
      {
        goto LABEL_56;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    result = sub_24F92C738();
  }

  if (*(v13 + 16))
  {
    a3 = *(v13 + 32);

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_24EFB0960(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    *(v8 + 32) = a4;
    v9 = sub_24E69A5C4(0, &qword_27F222300);
    swift_retain_n();
    v10 = sub_24F92BEF8();
    v11[3] = v9;
    v11[4] = MEMORY[0x277D225C0];
    v11[0] = v10;
    sub_24F92A958();

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return result;
}

uint64_t sub_24EFB0A94(unint64_t *a1, char a2, unint64_t a3)
{
  v6 = *a1;
  v30 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_50:
    v25 = a3;
    v26 = sub_24F92C738();
    a3 = v25;
    v7 = v26;
    if (v26)
    {
      goto LABEL_3;
    }

LABEL_51:
    v10 = MEMORY[0x277D84F90];
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_51;
  }

LABEL_3:
  v29 = a3;
  v8 = 0;
  while ((v6 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x253052270](v8, v6);
    v4 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_17;
    }

LABEL_9:
    if (a2)
    {
      if (a2 == 1)
      {
        if ((*(v9 + 40) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (*(v9 + 40))
      {
LABEL_14:

        goto LABEL_5;
      }
    }

    sub_24F92C948();
    sub_24F92C988();
    sub_24F92C998();
    v3 = &v30;
    sub_24F92C958();
LABEL_5:
    ++v8;
    if (v4 == v7)
    {
      goto LABEL_18;
    }
  }

  if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_50;
  }

  v9 = *(v6 + 8 * v8 + 32);

  v4 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v10 = v30;
  a3 = v29;
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

LABEL_19:
  LODWORD(v7) = v10 < 0 || (v10 & 0x4000000000000000) != 0;
  if ((v7 & 1) == 0)
  {
    v11 = *(v10 + 16);
    if (v11 >= a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = *(v10 + 16);
    }

    if (a3)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v11 >= v13)
    {
      goto LABEL_30;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_53:
  v27 = a3;
  v3 = sub_24F92C738();
  result = sub_24F92C738();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (v3 >= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v3;
    }

    if (v3 < 0)
    {
      v28 = v27;
    }

    if (v27)
    {
      v13 = v28;
    }

    else
    {
      v13 = 0;
    }

    if (sub_24F92C738() < v13)
    {
      goto LABEL_63;
    }

LABEL_30:
    if ((v10 & 0xC000000000000001) != 0 && v13)
    {
      type metadata accessor for GameCenterGameplayHistory();

      v14 = 0;
      do
      {
        v15 = v14 + 1;
        sub_24F92C8C8();
        v14 = v15;
      }

      while (v13 != v15);
    }

    else
    {
    }

    if (v7)
    {
      v16 = sub_24F92CB18();
      v4 = v17;
      v3 = v18;
      v13 = v19;

      v10 = v16;
      if (v13)
      {
        goto LABEL_38;
      }

LABEL_45:
      swift_unknownObjectRetain();
LABEL_46:
      sub_24E6B8C58(v10, v4, v3, v13);
      v22 = v23;
LABEL_47:
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0;
      v4 = v10 + 32;
      v13 = (2 * v13) | 1;
      if ((v13 & 1) == 0)
      {
        goto LABEL_45;
      }

LABEL_38:
      sub_24F92CEF8();
      swift_unknownObjectRetain_n();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
        swift_unknownObjectRelease();
        v20 = MEMORY[0x277D84F90];
      }

      v21 = *(v20 + 16);

      if (__OFSUB__(v13 >> 1, v3))
      {
        goto LABEL_64;
      }

      if (v21 != (v13 >> 1) - v3)
      {
LABEL_65:
        swift_unknownObjectRelease();
        goto LABEL_46;
      }

      v22 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v22)
      {
        v22 = MEMORY[0x277D84F90];
        goto LABEL_47;
      }
    }

    v30 = v22;
    sub_24F92A9C8();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24EFB0DEC()
{
  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v1 = sub_24F92CFE8();
  v4[3] = MEMORY[0x277D837D0];
  v4[0] = v1;
  v4[1] = v2;
  sub_24F928438();
  sub_24E601704(v4, &qword_27F2129B0);
  sub_24F92A5A8();

  return sub_24F92A9A8();
}

uint64_t sub_24EFB0FA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235810);
  v11 = sub_24F92A9E8();
  v12 = v11;
  v13 = *(v1 + 24);
  if (v13 < 2)
  {
    sub_24EEAE088();
    v14 = swift_allocError();
    *v15 = 7;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 4;
    sub_24F92A9A8();

    return v12;
  }

  v29 = a1;
  v30 = v11;
  sub_24F929778();
  v16 = v13;
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v17 = sub_24F929768();
  sub_24F921FE8();

  v18 = [objc_opt_self() proxyForPlayer_];
  v19 = [v18 gameStatServicePrivate];

  result = sub_24F92B098();
  v21 = *(v2 + 32);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v21 < 9.22337204e18)
  {
    v22 = result;
    v28 = v21;
    sub_24E615E00(v29, v32);
    (*(v5 + 16))(v7, v10, v4);
    v23 = (*(v5 + 80) + 56) & ~*(v5 + 80);
    v24 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    sub_24E612C80(v32, v25 + 16);
    (*(v5 + 32))(v25 + v23, v7, v4);
    v26 = v30;
    *(v25 + v24) = v30;
    aBlock[4] = sub_24EFB47DC;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EFA60B8;
    aBlock[3] = &block_descriptor_97;
    v27 = _Block_copy(aBlock);

    v12 = v26;

    [v19 getGamesFriendsPlayed:0 type:v22 fetchOptions:1 withinSecs:v28 matchingBundleIDs:0 handler:v27];
    _Block_release(v27);
    swift_unknownObjectRelease();

    sub_24EFB4814(v13);
    (*(v5 + 8))(v10, v4);
    return v12;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_24EFB1374(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a5;
  v24 = a7;
  v21[2] = a6;
  v22 = a1;
  v10 = sub_24F922028();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[3];
  v21[1] = a3[4];
  v21[0] = __swift_project_boxed_opaque_existential_1(a3, v14);
  (*(v11 + 16))(v13, a4, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v15, v13, v10);
  *(v18 + v16) = a2;
  *(v18 + v17) = v23;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  v19 = a2;

  sub_24F928C78();
}

void sub_24EFB151C(uint64_t a1, void *a2)
{
  sub_24F92C048();
  sub_24F929778();
  v3 = sub_24F929768();
  sub_24F921FE8();

  if (a2)
  {
    v4 = a2;
    sub_24F92A9A8();
  }

  else
  {
    sub_24F92A9C8();
  }
}

uint64_t sub_24EFB15FC()
{

  sub_24EFB4814(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_24EFB163C(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_24F92CD78();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_24F92B618();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_24EFB1760(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v4 = a3;
  v5 = *a4;
  v6 = (*a4 + 8 * a3 - 8);
  v7 = result - a3;
LABEL_6:
  v8 = *(v5 + 8 * v4);
  v9 = v7;
  v20 = v6;
  while (1)
  {
    v10 = *v6;
    v11 = *(v8 + 48);
    if (v11 >> 62)
    {
      result = sub_24F92C738();
      if (!result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_5;
      }
    }

    if ((v11 & 0xC000000000000001) == 0)
    {
      break;
    }

    v12 = MEMORY[0x253052270](0, v11);
LABEL_12:
    v13 = *(v10 + 48);
    if (v13 >> 62)
    {
      result = sub_24F92C738();
      if (!result)
      {
LABEL_4:

LABEL_5:
        ++v4;
        v6 = v20 + 1;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_4;
      }
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x253052270](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v14 = *(v13 + 32);
    }

    v15 = *(v12 + 32);

    v16 = *(v14 + 32);

    if (v16 < v15)
    {
      if (!v5)
      {
        goto LABEL_30;
      }

      v17 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v17;
      --v6;
      if (!__CFADD__(v9++, 1))
      {
        continue;
      }
    }

    goto LABEL_5;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);

    goto LABEL_12;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_24EFB1954(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(*v9 + 32) >= *(v7 + 32))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24EFB19C0(uint64_t result, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v100 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_129:
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_172;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_166;
    }

    goto LABEL_131;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8;
  v11 = v8 + 1;
  if (v8 + 1 >= v7)
  {
    v25 = v8 + 1;
    goto LABEL_44;
  }

  v12 = *a3;
  v13 = *(*a3 + 8 * v11);
  v14 = v10;
  v105 = *(*a3 + 8 * v10);
  v106 = v13;

  v15 = v6;
  v16 = sub_24EFB01A4(&v106, &v105);
  if (v6)
  {
  }

  v17 = v16;

  v18 = (v10 + 2);
  if (v10 + 2 >= v7)
  {
    v5 = v10 + 2;
    if ((v17 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_31;
  }

  v19 = v12 + 8 * v10 + 16;
  do
  {
    v5 = v18;
    v20 = *(v19 - 8);
    v6 = *(*v19 + 48);
    if (v6 >> 62)
    {
      result = sub_24F92C738();
      if (!result)
      {
LABEL_8:
        if (v17)
        {
          goto LABEL_34;
        }

        goto LABEL_9;
      }
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_8;
      }
    }

    if ((v6 & 0xC000000000000001) != 0)
    {

      v6 = MEMORY[0x253052270](0, v6);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_156;
      }

      v6 = *(v6 + 32);
    }

    v21 = *(v20 + 48);
    if (v21 >> 62)
    {
      if (sub_24F92C738())
      {
LABEL_17:
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x253052270](0, v21);
        }

        else
        {
          if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_160;
          }

          v22 = *(v21 + 32);
        }

        v23 = *(v6 + 32);

        v24 = *(v22 + 32);

        if ((v17 & 1) == v24 >= v23)
        {
          v11 = v5 - 1;
          goto LABEL_42;
        }

        goto LABEL_9;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    if (v17)
    {
LABEL_34:
      v11 = v5 - 1;
      v10 = v14;
      v6 = v15;
      if (v5 >= v14)
      {
        goto LABEL_35;
      }

LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      result = sub_24E86164C(v9);
      v9 = result;
LABEL_131:
      v107 = v9;
      v93 = *(v9 + 2);
      if (v93 >= 2)
      {
        while (*a3)
        {
          v94 = *&v9[16 * v93];
          v95 = *&v9[16 * v93 + 24];
          sub_24EFB27DC((*a3 + 8 * v94), (*a3 + 8 * *&v9[16 * v93 + 16]), (*a3 + 8 * v95), v5);
          if (v6)
          {
          }

          if (v95 < v94)
          {
            goto LABEL_158;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_24E86164C(v9);
          }

          if (v93 - 2 >= *(v9 + 2))
          {
            goto LABEL_159;
          }

          v96 = &v9[16 * v93];
          *v96 = v94;
          *(v96 + 1) = v95;
          v107 = v9;
          result = sub_24E8615C0(v93 - 1);
          v9 = v107;
          v93 = *(v107 + 2);
          if (v93 <= 1)
          {
          }
        }

        goto LABEL_170;
      }
    }

LABEL_9:
    v18 = (v5 + 1);
    v19 += 8;
  }

  while (v7 != v5 + 1);
  v11 = v5;
  v5 = v7;
LABEL_42:
  v10 = v14;
  v6 = v15;
  if ((v17 & 1) == 0)
  {
LABEL_43:
    v25 = v5;
    goto LABEL_44;
  }

LABEL_31:
  if (v5 < v10)
  {
    goto LABEL_163;
  }

LABEL_35:
  v25 = v5;
  if (v10 <= v11)
  {
    v26 = 8 * v5 - 8;
    v27 = 8 * v10;
    v28 = v5;
    v29 = v10;
    do
    {
      if (v29 != --v28)
      {
        v31 = *a3;
        if (!*a3)
        {
          goto LABEL_169;
        }

        v30 = *(v31 + v27);
        *(v31 + v27) = *(v31 + v26);
        *(v31 + v26) = v30;
      }

      ++v29;
      v26 -= 8;
      v27 += 8;
    }

    while (v29 < v28);
  }

LABEL_44:
  v32 = a3[1];
  if (v25 >= v32)
  {
    goto LABEL_78;
  }

  if (__OFSUB__(v25, v10))
  {
    goto LABEL_162;
  }

  if (v25 - v10 >= a4)
  {
    goto LABEL_78;
  }

  v33 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_164;
  }

  if (v33 >= v32)
  {
    v33 = a3[1];
  }

  if (v33 < v10)
  {
    goto LABEL_165;
  }

  if (v25 == v33)
  {
    goto LABEL_78;
  }

  v97 = v10;
  v98 = v6;
  v6 = *a3;
  v34 = *a3 + 8 * v25 - 8;
  v5 = v10 - v25;
  v101 = v33;
  while (2)
  {
    v102 = v34;
    v103 = v25;
    v35 = *(v6 + 8 * v25);
    v36 = v5;
    v37 = v34;
LABEL_56:
    v38 = *v37;
    v39 = *(v35 + 48);
    if (v39 >> 62)
    {
      if (!sub_24F92C738())
      {
        goto LABEL_54;
      }
    }

    else if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

    if ((v39 & 0xC000000000000001) == 0)
    {
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v40 = *(v39 + 32);

        goto LABEL_61;
      }

      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    v40 = MEMORY[0x253052270](0, v39);
LABEL_61:
    v41 = *(v38 + 48);
    if (v41 >> 62)
    {
      if (sub_24F92C738())
      {
        goto LABEL_63;
      }

LABEL_53:

LABEL_54:
      v25 = v103 + 1;
      v34 = v102 + 8;
      --v5;
      if (v103 + 1 != v101)
      {
        continue;
      }

      v25 = v101;
      v10 = v97;
      v6 = v98;
LABEL_78:
      if (v25 < v10)
      {
        goto LABEL_161;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E615ED8(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v48 = *(v9 + 2);
      v47 = *(v9 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        result = sub_24E615ED8((v47 > 1), v48 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v49;
      v50 = &v9[16 * v48];
      *(v50 + 4) = v10;
      *(v50 + 5) = v25;
      v51 = *v100;
      if (!*v100)
      {
        goto LABEL_171;
      }

      v8 = v25;
      if (v48)
      {
        while (2)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            v57 = &v9[16 * v49 + 32];
            v58 = *(v57 - 64);
            v59 = *(v57 - 56);
            v63 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            if (v63)
            {
              goto LABEL_146;
            }

            v62 = *(v57 - 48);
            v61 = *(v57 - 40);
            v63 = __OFSUB__(v61, v62);
            v55 = v61 - v62;
            v56 = v63;
            if (v63)
            {
              goto LABEL_147;
            }

            v64 = &v9[16 * v49];
            v66 = *v64;
            v65 = *(v64 + 1);
            v63 = __OFSUB__(v65, v66);
            v67 = v65 - v66;
            if (v63)
            {
              goto LABEL_149;
            }

            v63 = __OFADD__(v55, v67);
            v68 = v55 + v67;
            if (v63)
            {
              goto LABEL_152;
            }

            if (v68 >= v60)
            {
              v86 = &v9[16 * v52 + 32];
              v88 = *v86;
              v87 = *(v86 + 1);
              v63 = __OFSUB__(v87, v88);
              v89 = v87 - v88;
              if (v63)
              {
                goto LABEL_157;
              }

              if (v55 < v89)
              {
                v52 = v49 - 2;
              }
            }

            else
            {
LABEL_98:
              if (v56)
              {
                goto LABEL_148;
              }

              v69 = &v9[16 * v49];
              v71 = *v69;
              v70 = *(v69 + 1);
              v72 = __OFSUB__(v70, v71);
              v73 = v70 - v71;
              v74 = v72;
              if (v72)
              {
                goto LABEL_151;
              }

              v75 = &v9[16 * v52 + 32];
              v77 = *v75;
              v76 = *(v75 + 1);
              v63 = __OFSUB__(v76, v77);
              v78 = v76 - v77;
              if (v63)
              {
                goto LABEL_154;
              }

              if (__OFADD__(v73, v78))
              {
                goto LABEL_155;
              }

              if (v73 + v78 < v55)
              {
                goto LABEL_112;
              }

              if (v55 < v78)
              {
                v52 = v49 - 2;
              }
            }
          }

          else
          {
            if (v49 == 3)
            {
              v53 = *(v9 + 4);
              v54 = *(v9 + 5);
              v63 = __OFSUB__(v54, v53);
              v55 = v54 - v53;
              v56 = v63;
              goto LABEL_98;
            }

            v79 = &v9[16 * v49];
            v81 = *v79;
            v80 = *(v79 + 1);
            v63 = __OFSUB__(v80, v81);
            v73 = v80 - v81;
            v74 = v63;
LABEL_112:
            if (v74)
            {
              goto LABEL_150;
            }

            v82 = &v9[16 * v52];
            v84 = *(v82 + 4);
            v83 = *(v82 + 5);
            v63 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v63)
            {
              goto LABEL_153;
            }

            if (v85 < v73)
            {
              break;
            }
          }

          v90 = v52 - 1;
          if (v52 - 1 >= v49)
          {
            goto LABEL_143;
          }

          if (!*a3)
          {
            goto LABEL_168;
          }

          v91 = *&v9[16 * v90 + 32];
          v5 = *&v9[16 * v52 + 40];
          sub_24EFB27DC((*a3 + 8 * v91), (*a3 + 8 * *&v9[16 * v52 + 32]), (*a3 + 8 * v5), v51);
          if (v6)
          {
          }

          if (v5 < v91)
          {
            goto LABEL_144;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_24E86164C(v9);
          }

          if (v90 >= *(v9 + 2))
          {
            goto LABEL_145;
          }

          v92 = &v9[16 * v90];
          *(v92 + 4) = v91;
          *(v92 + 5) = v5;
          v107 = v9;
          result = sub_24E8615C0(v52);
          v9 = v107;
          v49 = *(v107 + 2);
          if (v49 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_129;
      }

      goto LABEL_4;
    }

    break;
  }

  if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_53;
  }

LABEL_63:
  if ((v41 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x253052270](0, v41);
  }

  else
  {
    if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_142;
    }

    v42 = *(v41 + 32);
  }

  v43 = *(v40 + 32);

  v44 = *(v42 + 32);

  if (v44 >= v43)
  {
    goto LABEL_54;
  }

  if (v6)
  {
    v45 = *v37;
    v35 = v37[1];
    *v37 = v35;
    v37[1] = v45;
    --v37;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_54;
    }

    goto LABEL_56;
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
  return result;
}

uint64_t sub_24EFB226C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_24E86164C(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_24EFB2C7C((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24E86164C(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_24E8615C0(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 32);
      v13 = *(*(*a3 + 8 * v11) + 32);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 32);
        v17 = v15 >= v16;
        ++v14;
        v15 = v16;
        if ((((v13 < v12) ^ v17) & 1) == 0)
        {
          v9 = v14 - 1;
          if (v13 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v13 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_24E615ED8((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_24EFB2C7C((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24E86164C(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_24E8615C0(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(*v29 + 32) >= *(v27 + 32))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_24EFB27DC(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && __dst < v5)
    {
      v15 = __dst;
      do
      {
        v16 = *v4;
        v17 = *(*v15 + 48);
        if (v17 >> 62)
        {
          result = sub_24F92C738();
          if (!result)
          {
            goto LABEL_31;
          }
        }

        else
        {
          result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_31;
          }
        }

        if ((v17 & 0xC000000000000001) != 0)
        {

          v19 = MEMORY[0x253052270](0, v17);
        }

        else
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_76;
          }

          v19 = *(v17 + 32);
        }

        v20 = *(v16 + 48);
        if (v20 >> 62)
        {
          result = sub_24F92C738();
          if (!result)
          {
LABEL_30:

LABEL_31:
            v24 = v4;
            v25 = v6 == v4;
            v4 += 8;
            if (v25)
            {
              goto LABEL_33;
            }

LABEL_32:
            *v6 = *v24;
            goto LABEL_33;
          }
        }

        else
        {
          result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_30;
          }
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x253052270](0, v20);
        }

        else
        {
          if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          v21 = *(v20 + 32);
        }

        v22 = *(v19 + 32);

        v23 = *(v21 + 32);

        if (v23 >= v22)
        {
          goto LABEL_31;
        }

        v24 = v15;
        v25 = v6 == v15;
        v15 += 8;
        if (!v25)
        {
          goto LABEL_32;
        }

LABEL_33:
        v6 += 8;
      }

      while (v4 < v14 && v15 < v5);
    }

    v26 = v6;
LABEL_71:
    if (v26 != v4 || v26 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v26, v4, 8 * ((v14 - v4) / 8));
    }

    return 1;
  }

  v26 = __dst;
  if (a4 != __dst || &__dst[8 * v12] <= a4)
  {
    memmove(a4, __dst, 8 * v12);
  }

  v14 = &v4[8 * v12];
  if (v10 < 8 || v26 <= v6)
  {
    goto LABEL_71;
  }

LABEL_42:
  v37 = v26;
  v27 = v26 - 8;
  v5 -= 8;
  v28 = v14;
  v38 = v27;
  while (1)
  {
    v29 = *(v28 - 1);
    v28 -= 8;
    v30 = *v27;
    v31 = *(v29 + 48);
    if (v31 >> 62)
    {
      result = sub_24F92C738();
      if (!result)
      {
        goto LABEL_61;
      }
    }

    else
    {
      result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_61;
      }
    }

    if ((v31 & 0xC000000000000001) != 0)
    {

      v32 = MEMORY[0x253052270](0, v31);
      goto LABEL_49;
    }

    if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v32 = *(v31 + 32);

LABEL_49:
    v33 = *(v30 + 48);
    if (v33 >> 62)
    {
      result = sub_24F92C738();
      if (!result)
      {
LABEL_60:

        v27 = v38;
        goto LABEL_61;
      }
    }

    else
    {
      result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_60;
      }
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x253052270](0, v33);
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      v34 = *(v33 + 32);
    }

    v35 = *(v32 + 32);

    v36 = *(v34 + 32);

    v27 = v38;
    if (v36 < v35)
    {
      if (v5 + 8 != v37)
      {
        *v5 = *v38;
      }

      if (v14 <= v4 || (v26 = v38, v38 <= v6))
      {
        v26 = v38;
        goto LABEL_71;
      }

      goto LABEL_42;
    }

LABEL_61:
    if (v5 + 8 != v14)
    {
      *v5 = *v28;
    }

    v5 -= 8;
    v14 = v28;
    if (v28 <= v4)
    {
      v14 = v28;
      v26 = v37;
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_24EFB2C7C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v4 + 32) < *(*v6 + 32))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(*v17 + 32) < *(v21 + 32))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

unint64_t sub_24EFB2E80(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v16 = result;
      sub_24EFB4DA4(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    while ((a3 & 1) == 0)
    {
      if ((result & 0x8000000000000000) != 0 || (v7 = 1 << *(a5 + 32), result >= v7))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = result >> 6;
      v9 = *(a5 + 56 + 8 * (result >> 6));
      if (((v9 >> result) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_21;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 64 + 8 * v8);
        while (v12 < (v7 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      a3 = 0;
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EFB2FB8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24EFB300C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_24E65864C(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_24EFB3064(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2530520E0](a1, a2, v7);
      sub_24E69A5C4(0, &unk_27F2376E0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24E69A5C4(0, &unk_27F2376E0);
    if (sub_24F92C718() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_24F92C728();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_24F92C3F8();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_24F92C408();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unint64_t sub_24EFB3288(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2530542F0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2530542F0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EFB3314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a2;
  v28 = a3;
  v9 = sub_24F927D88();
  v26 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927DC8();
  v24 = *(v12 - 8);
  v25 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = a5;
  v31[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358C0);
  v16 = sub_24F92A9E8();
  if (qword_27F210D00 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_24EEAC5B4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_161;
  v17 = _Block_copy(aBlock);

  sub_24F927DA8();
  v29 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v14, v11, v17);
  _Block_release(v17);
  (*(v26 + 8))(v11, v9);
  (*(v24 + 8))(v14, v25);

  v18 = swift_allocObject();
  v20 = v27;
  v19 = v28;
  *(v18 + 16) = v27;
  *(v18 + 24) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  swift_retain_n();
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_24EFB36F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v15, v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232BF0);
  v17 = sub_24F92A9E8();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a4;
  v18[4] = a1;
  v18[5] = a2;

  sub_24EFB3314(v14, sub_24EEABF24, v18, a4, a5, a6);

  (*(v11 + 8))(v14, a5);
  return v17;
}

void sub_24EFB3874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_24E69A5C4(0, &qword_27F222300);
  v6 = sub_24F92BEF8();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  sub_24EEACD50(v6, sub_24EFB6304, v8);
}

uint64_t sub_24EFB39E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_24F92CE08();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t sub_24EFB3A6C(uint64_t a1, uint64_t a2)
{
  if (sub_24F92B0D8() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = sub_24F92CE08();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_24F92B0D8() == a1 && v8 == a2)
  {

LABEL_16:

    return 1;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
    goto LABEL_16;
  }

  if (sub_24F92B0D8() == a1 && v11 == a2)
  {

LABEL_24:

    return 2;
  }

  v13 = sub_24F92CE08();

  if (v13)
  {
    goto LABEL_24;
  }

  if (sub_24F92B0D8() == a1 && v14 == a2)
  {

LABEL_29:

    return 3;
  }

  v15 = sub_24F92CE08();

  if (v15)
  {
    goto LABEL_29;
  }

  if (sub_24F92B0D8() == a1 && v16 == a2)
  {

    return 4;
  }

  else
  {
    v17 = sub_24F92CE08();

    if (v17)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24EFB3C9C(uint64_t a1)
{
  v2 = sub_24F922028();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2358B0);
  v18 = sub_24F92A9E8();
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v9 = sub_24F929768();
  sub_24F921FE8();

  v17 = objc_opt_self();
  v10 = sub_24F92B588();
  (*(v3 + 16))(v5, v8, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v3 + 32))(v13 + v11, v5, v2);
  v14 = v18;
  *(v13 + v12) = v18;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_24EFB6460;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EFA72A8;
  aBlock[3] = &block_descriptor_155;
  v15 = _Block_copy(aBlock);

  [v17 loadGamesWithBundleIDs:v10 withCompletionHandler:v15];
  _Block_release(v15);

  (*(v3 + 8))(v8, v2);
  return v14;
}

uint64_t sub_24EFB3F58()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB3FAC()
{

  return swift_deallocObject();
}

uint64_t _s12GameStoreKit0A6CenterC20addContactToDenyList_3forySS_So13GKLocalPlayerCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = aBlock - v9;
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v11 = sub_24F929768();
  sub_24F921FE8();

  v12 = [objc_opt_self() proxyForPlayer_];
  v13 = [v12 utilityServicePrivate];

  v14 = sub_24F92B098();
  (*(v5 + 16))(v7, v10, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v7, v4);
  aBlock[4] = sub_24EFB617C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9FABA0;
  aBlock[3] = &block_descriptor_137;
  v17 = _Block_copy(aBlock);

  [v13 denyContact:v14 handler:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_24EFB42A4(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24F93DE60;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = sub_24F92B588();

  v7 = [v4 predicateForContactsWithIdentifiers_];

  v8 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  sub_24F7FB50C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0);
  v9 = sub_24F92B588();

  v21[0] = 0;
  v10 = [v8 unifiedContactsMatchingPredicate:v7 keysToFetch:v9 error:v21];

  v11 = v21[0];
  if (!v10)
  {
    v19 = v21[0];
    v20 = sub_24F91F278();

    swift_willThrow();
    return 0;
  }

  sub_24E69A5C4(0, &qword_27F223450);
  v12 = sub_24F92B5A8();
  v13 = v11;

  if (v12 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    return 0;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x253052270](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v14 = *(v12 + 32);
  }

  v15 = v14;

  v16 = [v15 givenName];
  v17 = sub_24F92B0D8();

  return v17;
}

unint64_t sub_24EFB4574()
{
  result = qword_27F235800;
  if (!qword_27F235800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F235800);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit0A6CenterC0aD5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

uint64_t sub_24EFB45FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24EFB4644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_24EFB468C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_24EFB46D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24EFB471C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit0A11CenterCacheC17LocalPlayerStatus33_6F87978BBF97AE4E957581A0DB1EBB5BLLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24EFB4814(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_24EFB483C()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EFB4908(unint64_t *a1)
{
  v3 = *(sub_24F922028() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_24EFAF130(a1, v4, v5, v6);
}

uint64_t sub_24EFB497C()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EFB4A40()
{
  sub_24F922028();

  sub_24EFB0300();
}

uint64_t sub_24EFB4AB4(void *a1)
{
  v2 = [a1 compatiblePlatforms];
  v3 = sub_24F92BAA8();

  v10 = sub_24F92B0D8();
  v11 = v4;
  sub_24F92C7F8();
  LOBYTE(v2) = sub_24F4D3620(v12, v3);

  sub_24E6585F8(v12);
  if (v2)
  {
    return 1;
  }

  v6 = [a1 compatiblePlatforms];
  v7 = sub_24F92BAA8();

  sub_24EFB0390(v7, v12);

  if (v13)
  {
    if (swift_dynamicCast())
    {
      return qword_24F9B8970[sub_24EFB3A6C(v10, v11)];
    }
  }

  else
  {
    sub_24E601704(v12, &qword_27F235830);
  }

  if (qword_27F210590 != -1)
  {
    swift_once();
  }

  v8 = sub_24F92AAE8();
  __swift_project_value_buffer(v8, qword_27F39C410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v9 = [a1 adamID];
  v13 = sub_24E69A5C4(0, &qword_27F22BD50);
  v12[0] = v9;
  sub_24F928458();
  sub_24E601704(v12, &qword_27F2129B0);
  sub_24F92A5A8();

  return 0;
}

uint64_t sub_24EFB4DA4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24EFB4DF0()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EFB4EE0(void *a1, void *a2, void *a3)
{
  v7 = *(sub_24F922028() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EFAB030(a1, a2, a3, (v3 + 16), v3 + v8, v10, v11);
}

uint64_t sub_24EFB4FA4()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

void sub_24EFB50A0()
{
  v1 = *(sub_24F922028() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);

  sub_24EFAB238(v0 + v2, v8, v9, v10, v11, v12, v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_24EFB5168()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EFB5280(uint64_t a1, void *a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v7);
  v11 = *(v2 + v8);
  v12 = *(v2 + v9);
  v13 = *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EFABB30(a1, a2, (v2 + 16), v2 + v6, v10, v11, v12, v13);
}

uint64_t sub_24EFB5354()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EFB5450()
{
  v1 = *(sub_24F922028() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);
  v13 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24EFABD2C(v0 + v2, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_24EFB5518()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EFB5550()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocObject();
}

id sub_24EFB55B0(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_24EFB55C0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_56Tm()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EFB5700(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_24F922028() - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  return sub_24EFB1374(a1, a2, (v4 + 16), v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

uint64_t objectdestroy_59Tm_1()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EFB589C(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_24F922028() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v4);
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v6, v7, v8);
}

uint64_t sub_24EFB5954()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_24EFB5A3C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24EFA8B0C(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v2 + ((((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_24EFB5B1C()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

void sub_24EFB5C0C()
{
  v1 = *(sub_24F922028() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);

  sub_24EFA8D20(v0 + v2, v7, v8, v9, v10, v11, v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_24EFB5CCC()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EFB5DE8(uint64_t a1, void *a2)
{
  v5 = *(sub_24F922028() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_24EFA933C(a1, a2, (v2 + 16), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_24EFB5EC0()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EFB5FC0()
{
  v1 = *(sub_24F922028() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v6);
  v12 = *(v0 + v7);
  v13 = *(v0 + v7 + 8);
  v14 = *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_24EFA9548(v0 + v2, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_24EFB608C()
{

  return swift_deallocObject();
}

uint64_t sub_24EFB60F4()
{
  v1 = sub_24F922028();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24EFB617C(uint64_t a1)
{
  sub_24F922028();

  sub_24EFADF74(a1);
}