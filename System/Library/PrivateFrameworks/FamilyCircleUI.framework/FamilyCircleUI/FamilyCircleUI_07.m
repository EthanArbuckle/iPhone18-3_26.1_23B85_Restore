uint64_t sub_21BC2FA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FamilyMemberAccountDetails();
  v5 = v4 - 8;
  v60 = *(v4 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = v7;
  v62 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A18, &qword_21BE38D80);
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A20, &qword_21BE38D88);
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v12);
  v63 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A28, &qword_21BE38D90);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v53 - v20;
  v22 = *(a1 + *(v5 + 36));
  v69 = sub_21BC30030(v22);
  v70 = v23;

  MEMORY[0x21CF03CA0](10, 0xE100000000000000);

  sub_21BB41FA4();
  v24 = sub_21BE27DBC();
  v26 = v25;
  v66 = v27;
  v29 = v28;
  if (sub_21BC2D8C0())
  {
    v30 = 1;
  }

  else
  {
    v59 = v29;
    if ([v22 isMe])
    {
      String.rebrand.getter(0xD000000000000020, 0x800000021BE58970);
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v55 = ObjCClassFromMetadata;
      v56 = objc_opt_self();
      v32 = [v56 bundleForClass_];
      v33 = sub_21BE2599C();
      v57 = v34;
      v58 = v33;

      String.rebrand.getter(0xD000000000000027, 0x800000021BE589A0);
      v35 = [v56 bundleForClass_];
      v36 = sub_21BE2599C();
      v55 = v37;
      v56 = v36;

      v54 = 0x800000021BE58910;
      KeyPath = swift_getKeyPath();
      v39 = v62;
      sub_21BC3559C(a1, v62);
      v40 = (*(v60 + 80) + 16) & ~*(v60 + 80);
      v41 = swift_allocObject();
      sub_21BC35600(v39, v41 + v40);
      v42 = v65;
      v43 = &v11[*(v65 + 36)];
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A38, &qword_21BE38DD0) + 28);
      sub_21BE26FDC();
      *v43 = KeyPath;
      v45 = v57;
      *v11 = v58;
      *(v11 + 1) = v45;
      v46 = v55;
      *(v11 + 2) = v56;
      *(v11 + 3) = v46;
      v47 = v54;
      *(v11 + 4) = 0xD000000000000022;
      *(v11 + 5) = v47;
      v11[48] = 0;
      v48 = v63;
      sub_21BBB7D84(v11, v63, &qword_27CDB7A18, &qword_21BE38D80);
      v49 = 0;
    }

    else
    {
      v49 = 1;
      v42 = v65;
      v48 = v63;
    }

    (*(v64 + 56))(v48, v49, 1, v42);
    sub_21BBB7D84(v48, v21, &qword_27CDB7A20, &qword_21BE38D88);
    v30 = 0;
    v29 = v59;
  }

  (*(v67 + 56))(v21, v30, 1, v68);
  sub_21BBA3854(v21, v19, &qword_27CDB7A28, &qword_21BE38D90);
  *a2 = v24;
  *(a2 + 8) = v26;
  v50 = v66 & 1;
  *(a2 + 16) = v66 & 1;
  *(a2 + 24) = v29;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A30, &qword_21BE38D98);
  sub_21BBA3854(v19, a2 + *(v51 + 48), &qword_27CDB7A28, &qword_21BE38D90);
  sub_21BBA4A38(v24, v26, v50);

  sub_21BB3A4CC(v21, &qword_27CDB7A28, &qword_21BE38D90);
  sub_21BB3A4CC(v19, &qword_27CDB7A28, &qword_21BE38D90);
  sub_21BBC7C7C(v24, v26, v50);
}

uint64_t sub_21BC30030(void *a1)
{
  v2 = sub_21BE2917C();
  v4 = v3;
  if ([a1 isMe])
  {

    v5 = sub_21BC2D8C0();
    v6 = (v5 & 1) == 0;
    if (v5)
    {
      v7 = 0xD000000000000022;
    }

    else
    {
      v7 = 0xD000000000000027;
    }

    if (v6)
    {
      v8 = "COUNT_APPLE_ID_FOOTER";
    }

    else
    {
      v8 = "NT_SAME_APPLE_ID_FOOTER";
    }

    String.rebrand.getter(v7, v8 | 0x8000000000000000);

    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = sub_21BE2599C();

    return v11;
  }

  else
  {
    v13 = sub_21BC2D8C0();
    v14 = (v13 & 1) == 0;
    if (v13)
    {
      v15 = 0xD000000000000025;
    }

    else
    {
      v15 = 0xD00000000000002ALL;
    }

    if (v14)
    {
      v16 = "_APPLE_ID_ACTION_FOOTER";
    }

    else
    {
      v16 = "COUNT_SAME_APPLE_ID_FOOTER";
    }

    String.rebrand.getter(v15, v16 | 0x8000000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21BE32770;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_21BBBEFE8();
    *(v17 + 32) = v2;
    *(v17 + 40) = v4;
    type metadata accessor for ConfirmChildAgeViewModel();
    v18 = swift_getObjCClassFromMetadata();
    v19 = objc_opt_self();

    v20 = [v19 bundleForClass_];
    sub_21BE2599C();

    v21 = sub_21BE289DC();

    return v21;
  }
}

uint64_t sub_21BC302BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21BE27B0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BC2DDA4(v7);
  v10 = a2;
  sub_21BE27AFC();
  (*(v4 + 8))(v7, v3);
  return sub_21BE26FCC();
}

uint64_t sub_21BC303BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21BE28D7C();
  v5[4] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21BC30454, v7, v6);
}

uint64_t sub_21BC30454()
{
  v1 = [*(v0 + 24) navigationController];
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_21BC30508;
  v3 = *(v0 + 16);

  return sub_21BC2DFAC(v1);
}

uint64_t sub_21BC30508()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_21BC30688;
  }

  else
  {

    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_21BC30624;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BC30624()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BC30688()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_21BC306F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v178 = a3;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB78E0, &qword_21BE38B28);
  v174 = *(v175 - 8);
  v5 = *(v174 + 64);
  MEMORY[0x28223BE20](v175);
  v165 = &v149 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB78E8, &qword_21BE38B30);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v177 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v180 = &v149 - v11;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB78F0, &qword_21BE38B38);
  v170 = *(v171 - 8);
  v12 = *(v170 + 64);
  MEMORY[0x28223BE20](v171);
  v164 = &v149 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB78F8, &qword_21BE38B40);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v176 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v184 = &v149 - v18;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7900, &qword_21BE38B48);
  v168 = *(v169 - 1);
  v19 = *(v168 + 64);
  MEMORY[0x28223BE20](v169);
  v163 = &v149 - v20;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7908, &qword_21BE38B50);
  v161 = *(v162 - 8);
  v21 = *(v161 + 64);
  v22 = MEMORY[0x28223BE20](v162);
  v160 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v159 = &v149 - v24;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7910, &qword_21BE38B58);
  v154 = *(v155 - 8);
  v25 = *(v154 + 64);
  MEMORY[0x28223BE20](v155);
  v151 = &v149 - v26;
  v27 = sub_21BE25FCC();
  v152 = *(v27 - 8);
  v28 = *(v152 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7918, &qword_21BE38B60);
  v156 = *(v157 - 8);
  v31 = *(v156 + 64);
  MEMORY[0x28223BE20](v157);
  v153 = &v149 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7920, &qword_21BE38B68);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v158 = &v149 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v166 = &v149 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7928, &qword_21BE38B70);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v183 = &v149 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v149 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7870, &qword_21BE38AA0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v149 - v47;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7930, &qword_21BE38B78);
  v172 = *(v173 - 8);
  v49 = *(v172 + 64);
  v50 = MEMORY[0x28223BE20](v173);
  v182 = &v149 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v53 = &v149 - v52;
  (*(v45 + 16))(v48, a1, v44);
  v185 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7878, &qword_21BE38AA8);
  v55 = sub_21BB3B038(&qword_27CDB7888, &qword_27CDB7878, &qword_21BE38AA8);
  v56 = sub_21BB41FA4();
  v187 = v54;
  v188 = MEMORY[0x277D837D0];
  v189 = v55;
  v190 = v56;
  v167 = v56;
  v57 = 1;
  swift_getOpaqueTypeConformance2();
  v181 = v53;
  v58 = a2;
  sub_21BE2861C();
  v59 = sub_21BC31BA8();
  v60 = 0x277CCA000;
  v179 = v43;
  if (v59)
  {
    v61 = [*(a2 + *(type metadata accessor for FamilyMemberAccountDetails() + 28)) shortName];
    if (v61)
    {
      v62 = v61;
      sub_21BE28A0C();

      v63 = v152;
      (*(v152 + 104))(v30, *MEMORY[0x277D07F08], v27);
      v64 = MEMORY[0x21CF01150](v30);
      (*(v63 + 8))(v30, v27);
      if ((v64 & 1) != 0 && (v65 = sub_21BC2D9E8(), (v65 & 1) == 0))
      {
        MEMORY[0x28223BE20](v65);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79C0, &qword_21BE38C00);
        v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D48, &qword_21BE36038);
        v73 = sub_21BB3B038(&qword_27CDB6D40, &qword_27CDB6D48, &qword_21BE36038);
        v187 = v72;
        v188 = v73;
        swift_getOpaqueTypeConformance2();
        v74 = v151;
        sub_21BE2860C();

        v68 = v154;
        v69 = v153;
        v75 = v155;
        (*(v154 + 32))(v153, v74, v155);
        v67 = v75;
        v66 = 0;
      }

      else
      {

        v66 = 1;
        v67 = v155;
        v68 = v154;
        v69 = v153;
      }

      (*(v68 + 56))(v69, v66, 1, v67);
      v71 = v166;
      sub_21BBB7D84(v69, v166, &qword_27CDB7918, &qword_21BE38B60);
      v70 = 0;
      v58 = a2;
      v60 = 0x277CCA000uLL;
    }

    else
    {
      v70 = 1;
      v71 = v166;
    }

    v150 = v58;
    (*(v156 + 56))(v71, v70, 1, v157);
    String.rebrand.getter(0xD00000000000001CLL, 0x800000021BE587D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_21BE32770;
    v77 = sub_21BE2917C();
    v79 = v78;
    *(v76 + 56) = MEMORY[0x277D837D0];
    *(v76 + 64) = sub_21BBBEFE8();
    *(v76 + 32) = v77;
    *(v76 + 40) = v79;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v81 = *(v60 + 2264);
    v82 = objc_opt_self();

    v83 = [v82 bundleForClass_];
    sub_21BE2599C();

    v84 = sub_21BE289DC();
    v86 = v85;

    v187 = v84;
    v188 = v86;
    v187 = sub_21BE27DBC();
    v188 = v87;
    LOBYTE(v189) = v88 & 1;
    v190 = v89;
    MEMORY[0x28223BE20](v187);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79A8, &qword_21BE38BF0);
    sub_21BB3B038(&qword_27CDB79B0, &qword_27CDB79A8, &qword_21BE38BF0);
    v90 = v159;
    sub_21BE2861C();
    v91 = v158;
    sub_21BBA3854(v71, v158, &qword_27CDB7920, &qword_21BE38B68);
    v92 = v161;
    v93 = *(v161 + 16);
    v94 = v160;
    v95 = v162;
    v93(v160, v90, v162);
    v96 = v163;
    sub_21BBA3854(v91, v163, &qword_27CDB7920, &qword_21BE38B68);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79B8, &qword_21BE38BF8);
    v93((v96 + *(v97 + 48)), v94, v95);
    v98 = *(v92 + 8);
    v99 = v90;
    v58 = v150;
    v98(v99, v95);
    sub_21BB3A4CC(v166, &qword_27CDB7920, &qword_21BE38B68);
    v98(v94, v95);
    v100 = v91;
    v60 = 0x277CCA000uLL;
    sub_21BB3A4CC(v100, &qword_27CDB7920, &qword_21BE38B68);
    v43 = v179;
    sub_21BBB7D84(v96, v179, &qword_27CDB7900, &qword_21BE38B48);
    v57 = 0;
  }

  v101 = 1;
  (*(v168 + 56))(v43, v57, 1, v169);
  v102 = sub_21BC3302C();
  v103 = v184;
  v104 = v171;
  v105 = v170;
  if (v102)
  {
    v106 = type metadata accessor for FamilyMemberAccountDetails();
    v169 = &v149;
    v187 = *(v58 + *(v106 + 28));
    MEMORY[0x28223BE20](v106);
    v108 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7980, &qword_21BE38BD8);
    sub_21BC3542C();
    sub_21BC354E4();
    v109 = v43;
    v110 = v164;
    sub_21BE2709C();
    v111 = v110;
    v43 = v109;
    (*(v105 + 32))(v103, v111, v104);
    v101 = 0;
  }

  v112 = 1;
  (*(v105 + 56))(v103, v101, 1, v104);
  v113 = sub_21BC2D8C0();
  v114 = v175;
  if (v113)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    v115 = swift_getObjCClassFromMetadata();
    v116 = *(v60 + 2264);
    v117 = [objc_opt_self() bundleForClass_];
    v118 = sub_21BE2599C();
    v120 = v119;

    v187 = v118;
    v188 = v120;
    v121 = sub_21BE27DBC();
    v123 = v122;
    LOBYTE(v120) = v124;
    v126 = v125;
    v127 = sub_21BE27B8C();
    sub_21BE26E0C();
    v198 = v120 & 1;
    v197 = 0;
    v187 = v121;
    v188 = v123;
    LOBYTE(v189) = v120 & 1;
    v190 = v126;
    v191 = v127;
    v192 = v128;
    v193 = v129;
    v194 = v130;
    v195 = v131;
    v196 = 0;
    sub_21BC33330(v186);
    MEMORY[0x28223BE20](v132);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7940, &qword_21BE47630);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7948, &qword_21BE38B90);
    sub_21BC35268();
    sub_21BC352EC();
    sub_21BC353D0();
    v133 = v165;
    sub_21BE285FC();
    v134 = sub_21BE2833C();
    KeyPath = swift_getKeyPath();
    v136 = (v133 + *(v114 + 36));
    *v136 = KeyPath;
    v136[1] = v134;
    sub_21BBB7D84(v133, v180, &qword_27CDB78E0, &qword_21BE38B28);
    v112 = 0;
  }

  v137 = v180;
  (*(v174 + 56))(v180, v112, 1, v114);
  v138 = v172;
  v139 = *(v172 + 16);
  v140 = v182;
  v141 = v173;
  v139(v182, v181, v173);
  v142 = v183;
  sub_21BBA3854(v43, v183, &qword_27CDB7928, &qword_21BE38B70);
  v143 = v176;
  sub_21BBA3854(v103, v176, &qword_27CDB78F8, &qword_21BE38B40);
  v144 = v177;
  sub_21BBA3854(v137, v177, &qword_27CDB78E8, &qword_21BE38B30);
  v145 = v178;
  v139(v178, v140, v141);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7938, &unk_21BE38B80);
  sub_21BBA3854(v142, &v145[v146[12]], &qword_27CDB7928, &qword_21BE38B70);
  sub_21BBA3854(v143, &v145[v146[16]], &qword_27CDB78F8, &qword_21BE38B40);
  sub_21BBA3854(v144, &v145[v146[20]], &qword_27CDB78E8, &qword_21BE38B30);
  sub_21BB3A4CC(v137, &qword_27CDB78E8, &qword_21BE38B30);
  sub_21BB3A4CC(v184, &qword_27CDB78F8, &qword_21BE38B40);
  sub_21BB3A4CC(v179, &qword_27CDB7928, &qword_21BE38B70);
  v147 = *(v138 + 8);
  v147(v181, v141);
  sub_21BB3A4CC(v144, &qword_27CDB78E8, &qword_21BE38B30);
  sub_21BB3A4CC(v143, &qword_27CDB78F8, &qword_21BE38B40);
  sub_21BB3A4CC(v183, &qword_27CDB7928, &qword_21BE38B70);
  return (v147)(v182, v141);
}

uint64_t sub_21BC31B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + *(type metadata accessor for FamilyMemberAccountDetails() + 28)) appleID];
  if (v3)
  {
    v4 = v3;
    sub_21BE28A0C();
  }

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

id sub_21BC31BA8()
{
  v1 = type metadata accessor for FamilyMemberAccountDetails();
  result = [*(v0 + *(v1 + 28)) isChildAccount];
  if (result)
  {
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v3 = result;
      v4 = [result hasLocalSecret];

      if (v4)
      {
        result = *(v0 + *(v1 + 24));
        if (result)
        {
          return [result isGuardian];
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21BC31C54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D48, &qword_21BE36038);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  v10[4] = &type metadata for ProximityTip;
  v10[5] = sub_21BC35548();
  v10[1] = a1;
  v10[2] = a2;

  sub_21BE26AAC();
  sub_21BB3B038(&qword_27CDB6D40, &qword_27CDB6D48, &qword_21BE36038);
  sub_21BE27E0C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21BC31DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21BE275DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79D0, &unk_21BE38C08);
  return sub_21BC31E3C(a1, a2 + *(v4 + 44));
}

uint64_t sub_21BC31E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820);
  v90 = *(v3 - 8);
  v91 = v3;
  v4 = *(v90 + 64);
  MEMORY[0x28223BE20](v3);
  v78 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79D8, &qword_21BE38C18);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v93 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v92 = &v77 - v10;
  v11 = type metadata accessor for FamilyMemberAccountDetails();
  v80 = *(v11 - 8);
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v11);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v84 = *(v13 - 8);
  v85 = v13;
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v13);
  v83 = &v77 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79E0, &qword_21BE3F220);
  v16 = *(*(v82 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v82);
  v89 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v77 - v20;
  MEMORY[0x28223BE20](v19);
  v88 = &v77 - v22;
  v23 = sub_21BE257FC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v11;
  v87 = a1;
  v28 = *(a1 + *(v11 + 28));
  v29 = sub_21BE2917C();
  v31 = v30;
  v96 = v29;
  v97 = v30;
  sub_21BE257DC();
  v32 = sub_21BB41FA4();
  v33 = MEMORY[0x277D837D0];
  v79 = v32;
  v34 = sub_21BE2948C();
  v36 = v35;
  (*(v24 + 8))(v27, v23);

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_21BE32770;
    *(v38 + 56) = v33;
    *(v38 + 64) = sub_21BBBEFE8();
    *(v38 + 32) = v29;
    *(v38 + 40) = v31;
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v40 = objc_opt_self();

    v41 = [v40 bundleForClass_];
    sub_21BE2599C();

    v42 = sub_21BE289DC();
    v44 = v43;
  }

  else
  {

    type metadata accessor for ConfirmChildAgeViewModel();
    v45 = swift_getObjCClassFromMetadata();
    v46 = [objc_opt_self() bundleForClass_];
    v42 = sub_21BE2599C();
    v44 = v47;
  }

  v96 = v42;
  v97 = v44;
  v48 = v87;
  v49 = v81;
  sub_21BC3559C(v87, v81);
  v50 = (*(v80 + 80) + 16) & ~*(v80 + 80);
  v51 = swift_allocObject();
  sub_21BC35600(v49, v51 + v50);
  v52 = v83;
  sub_21BE2845C();
  v53 = v86;
  v54 = *(v48 + *(v86 + 24));
  v55 = v92;
  v56 = v88;
  if (v54)
  {
    v57 = [v54 hasHSA2] ^ 1;
  }

  else
  {
    v57 = 0;
  }

  v58 = v91;
  KeyPath = swift_getKeyPath();
  v60 = swift_allocObject();
  *(v60 + 16) = v57;
  (*(v84 + 32))(v21, v52, v85);
  v61 = &v21[*(v82 + 36)];
  *v61 = KeyPath;
  v61[1] = sub_21BC0AE98;
  v61[2] = v60;
  sub_21BBB7D84(v21, v56, &qword_27CDB79E0, &qword_21BE3F220);
  v62 = v48 + *(v53 + 56);
  v63 = *v62;
  v64 = *(v62 + 8);
  LOBYTE(v96) = v63;
  v97 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  v65 = 1;
  if (v95 == 1)
  {
    v66 = v78;
    sub_21BE26EEC();
    *(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)) = 257;
    v67 = (v66 + *(v58 + 36));
    v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
    v69 = *MEMORY[0x277CDF438];
    v70 = sub_21BE26E7C();
    (*(*(v70 - 8) + 104))(v67 + v68, v69, v70);
    *v67 = swift_getKeyPath();
    sub_21BBB7D84(v66, v55, &qword_27CDB5E00, &unk_21BE33820);
    v65 = 0;
  }

  (*(v90 + 56))(v55, v65, 1, v58);
  v71 = v89;
  sub_21BBA3854(v56, v89, &qword_27CDB79E0, &qword_21BE3F220);
  v72 = v93;
  sub_21BBA3854(v55, v93, &qword_27CDB79D8, &qword_21BE38C18);
  v73 = v94;
  sub_21BBA3854(v71, v94, &qword_27CDB79E0, &qword_21BE3F220);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79E8, &qword_21BE38C58);
  v75 = v73 + *(v74 + 48);
  *v75 = 0;
  *(v75 + 8) = 1;
  sub_21BBA3854(v72, v73 + *(v74 + 64), &qword_27CDB79D8, &qword_21BE38C18);
  sub_21BB3A4CC(v55, &qword_27CDB79D8, &qword_21BE38C18);
  sub_21BB3A4CC(v56, &qword_27CDB79E0, &qword_21BE3F220);
  sub_21BB3A4CC(v72, &qword_27CDB79D8, &qword_21BE38C18);
  return sub_21BB3A4CC(v71, &qword_27CDB79E0, &qword_21BE3F220);
}

uint64_t sub_21BC3270C(uint64_t a1)
{
  v2 = sub_21BE27B0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21BE26A4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = (a1 + *(type metadata accessor for FamilyMemberAccountDetails() + 56));
  v13 = *v12;
  v14 = *(v12 + 1);
  v20[16] = v13;
  v21 = v14;
  v20[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  sub_21BE2614C();
  v15 = sub_21BE26A2C();
  v16 = sub_21BE28FFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21BB35000, v15, v16, "Fetching dependent's tokens for password reset.", v17, 2u);
    MEMORY[0x21CF05C50](v17, -1, -1);
  }

  (*(v8 + 8))(v11, v7);
  v18 = sub_21BC2DDA4(v6);
  MEMORY[0x28223BE20](v18);
  *&v20[-16] = a1;
  sub_21BE27AFC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21BC3298C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyMemberAccountDetails();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v23[1] = *(a2 + *(v7 + 20) + 8);
  v8 = [*(a2 + *(v7 + 28)) altDSID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_21BE28A0C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = *(a2 + *(v4 + 24));
  if (v13 && (v14 = [v13 altDSID]) != 0)
  {
    v15 = v14;
    v16 = sub_21BE28A0C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  sub_21BC3559C(a2, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_21BC35600(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  *(v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v21 = a1;
  sub_21BC0FFAC(v10, v12, v16, v18, sub_21BC35684, v20);
}

uint64_t sub_21BC32B78(void *a1, char a2, uint64_t a3, void *a4)
{
  v36 = a4;
  v7 = type metadata accessor for FamilyMemberAccountDetails();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  if (a2)
  {
    sub_21BE2614C();
    sub_21BC51D50(a1);
    (*(v10 + 8))(v14, v9);
    v17 = a3 + *(v7 + 56);
    v18 = *v17;
    v19 = *(v17 + 8);
    LOBYTE(v38) = v18;
    v39 = v19;
    LOBYTE(v37) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    return sub_21BE2840C();
  }

  else
  {
    v34 = a1;
    sub_21BE2614C();
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21BB35000, v21, v22, "Launching dependent's password reset RUI.", v23, 2u);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    (*(v10 + 8))(v16, v9);
    v24 = (a3 + *(v7 + 48));
    v26 = *v24;
    v25 = v24[1];
    v38 = v26;
    v39 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB79F0, &qword_21BE38CA0);
    sub_21BE283FC();
    v27 = v37;
    v28 = [v36 navigationController];
    sub_21BC3559C(a3, &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v30 = swift_allocObject();
    sub_21BC35600(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
    sub_21BC0D5DC(v28, v34, sub_21BC35730, v30);

    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    LOBYTE(v38) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0xD000000000000018;
    *(inited + 40) = 0x800000021BE588A0;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 80) = &protocol witness table for Bool;
    *(inited + 48) = 1;

    v32 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
    sub_21BCA55DC(&v38, v32);
  }
}

uint64_t sub_21BC32FBC(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for FamilyMemberAccountDetails() + 56));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  return sub_21BE2840C();
}

BOOL sub_21BC3302C()
{
  v1 = type metadata accessor for FamilyMemberAccountDetails();
  v2 = *(v0 + *(v1 + 24));
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  if (([v4 isOrganizer] & 1) != 0 || objc_msgSend(v4, sel_isGuardian))
  {
    v5 = *(v0 + *(v3 + 28));
    if ([v5 isMe] || objc_msgSend(v5, sel_isChildAccount))
    {

      return 1;
    }

    else
    {
      v11 = [v5 memberType];

      return v11 == 1;
    }
  }

  else
  {

    v7 = *(v0 + *(v3 + 28));
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v8 = v4;
    v9 = v7;
    v10 = sub_21BE2940C();

    return v10 & 1;
  }
}

double sub_21BC33150@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FamilyMemberAccountDetails();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21BE275DC();
  v20 = 1;
  sub_21BC340A0(a1, &v15);
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25[0] = v15;
  v25[1] = v16;
  v25[2] = v17;
  v26 = v18;
  sub_21BBA3854(&v21, &v14, &qword_27CDB79F8, &unk_21BE38CA8);
  sub_21BB3A4CC(v25, &qword_27CDB79F8, &unk_21BE38CA8);
  *(v19 + 7) = v21;
  *(&v19[1] + 7) = v22;
  *(&v19[2] + 7) = v23;
  *(&v19[3] + 7) = v24;
  v8 = v20;
  sub_21BC3559C(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_21BC35600(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = v19[1];
  *(a2 + 17) = v19[0];
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 33) = v11;
  *(a2 + 49) = v19[2];
  result = *(&v19[2] + 15);
  *(a2 + 64) = *(&v19[2] + 15);
  *(a2 + 80) = sub_21BC357A0;
  *(a2 + 88) = v10;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  return result;
}

void sub_21BC33330(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FamilyMemberAccountDetails() + 28));
  v4 = sub_21BE2917C();
  v6 = v5;
  v7 = [v3 isMe];
  v8 = "AGE_RANGE_SHARING_TITLE";
  if (v7)
  {
    v8 = "apple.com/HT207937";
    v9 = 0xD000000000000024;
  }

  else
  {
    v9 = 0xD000000000000021;
  }

  String.rebrand.getter(v9, v8 | 0x8000000000000000);
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21BE32770;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21BBBEFE8();
  *(v12 + 32) = v4;
  *(v12 + 40) = v6;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();

  v15 = [v14 bundleForClass_];
  v23 = v11;
  sub_21BE2599C();

  v16 = sub_21BE289DC();
  v18 = v17;

  v19 = [v14 bundleForClass_];
  v20 = sub_21BE2599C();
  v22 = v21;

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20;
  *(a1 + 24) = v22;
  *(a1 + 32) = 0xD000000000000022;
  *(a1 + 40) = 0x800000021BE58910;
  *(a1 + 48) = 0;
}

uint64_t sub_21BC33574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21BE275DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A00, &qword_21BE38D40);
  sub_21BC3360C(a1, (a2 + *(v4 + 44)));
  v5 = sub_21BE2832C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7948, &qword_21BE38B90);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v5;
  return result;
}

uint64_t sub_21BC3360C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for FamilyMemberAccountDetails();
  v4 = v3 - 8;
  v32 = *(v3 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55A0, &unk_21BE32460);
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v34 = &v31 - v12;
  v13 = *(a1 + *(v4 + 36));
  v14 = [v13 iTunesAccountUsername];
  if (v14)
  {
    v15 = v14;
    v16 = sub_21BE28A0C();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v35 = v16;
  v36 = v18;
  sub_21BC3559C(a1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v20 = swift_allocObject();
  sub_21BC35600(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_21BB41FA4();
  sub_21BE2845C();
  if ([v13 isMe])
  {
    LOBYTE(v35) = 1;
    v32 = 1;
    v21 = &unk_282D85900;
    v22 = &unk_282D858D0;
    v23 = 1536;
  }

  else
  {
    v32 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
  }

  v24 = v7[2];
  v25 = v34;
  v24(v11, v34, v6);
  v26 = v33;
  v24(v33, v11, v6);
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A08, &qword_21BE38D48) + 48)];
  v28 = v32;
  *v27 = 0;
  *(v27 + 1) = v28;
  *(v27 + 2) = v23;
  *(v27 + 3) = 0;
  *(v27 + 4) = v22;
  *(v27 + 5) = v21;
  v27[48] = 0;
  sub_21BC35934(0, v28, v23, 0, v22);
  v29 = v7[1];
  v29(v25, v6);
  sub_21BC35980(0, v28, v23, 0, v22);
  return (v29)(v11, v6);
}

id sub_21BC3395C(uint64_t a1)
{
  v2 = sub_21BE27B0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a1 + *(type metadata accessor for FamilyMemberAccountDetails() + 28)) isMe];
  if (result)
  {
    v8 = sub_21BC2DDA4(v6);
    MEMORY[0x28223BE20](v8);
    *(&v9 - 2) = a1;
    sub_21BE27AFC();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_21BC33A90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FamilyMemberAccountDetails();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  sub_21BE28D8C();
  v14 = sub_21BE28DAC();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  sub_21BC3559C(a2, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21BE28D7C();
  v15 = a1;
  v16 = sub_21BE28D6C();
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  sub_21BC35600(&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  *(v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  sub_21BC54908(0, 0, v13, a4, v18);
}

uint64_t sub_21BC33C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21BE28D7C();
  v5[4] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21BC33CFC, v7, v6);
}

uint64_t sub_21BC33CFC()
{
  v1 = [*(v0 + 24) navigationController];
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_21BC33DB0;
  v3 = *(v0 + 16);

  return sub_21BC2DFAC(v1);
}

uint64_t sub_21BC33DB0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_21BC363EC;
  }

  else
  {

    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    v6 = sub_21BC363F0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BC33ECC()
{
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v3 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = 0xD00000000000001ALL;
  *(inited + 56) = 0x800000021BE38910;

  v1 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v3, v1);
}

uint64_t sub_21BC3400C()
{
  sub_21BE28D7C();
  *(v0 + 16) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC03810, v2, v1);
}

uint64_t sub_21BC340A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v6 = sub_21BE27DBC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(a1 + *(type metadata accessor for FamilyMemberAccountDetails() + 40));
  swift_getKeyPath();
  sub_21BC35B30(&qword_27CDB78D0, type metadata accessor for AgeRangeSharingViewModel);
  sub_21BE25F1C();

  if (*(v13 + 56))
  {
    v14 = 0;
    v15 = 0x200000000;
  }

  else
  {
    v25 = *(v13 + 52);
    swift_getKeyPath();
    v26 = v10;
    sub_21BE25F1C();

    v24 = *(v13 + 80);
    swift_getKeyPath();
    sub_21BE25F1C();

    v16 = *(v13 + 81);
    swift_getKeyPath();
    sub_21BE25F1C();

    v17 = *(v13 + 82);
    v14 = sub_21BE2796C();
    v18 = 0x100000000;
    if (!v24)
    {
      v18 = 0;
    }

    v19 = v18 | v25;
    v20 = v16 == 0;
    v10 = v26;
    v21 = 0x10000000000;
    if (v20)
    {
      v21 = 0;
    }

    v22 = 0x1000000000000;
    if (!v17)
    {
      v22 = 0;
    }

    v15 = v19 | v21 | v22;
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 44) = v15;
  *(a2 + 52) = v14;
  sub_21BBA4A38(v6, v8, v10 & 1);

  sub_21BBC7C7C(v6, v8, v10 & 1);
}

uint64_t sub_21BC34374(uint64_t a1)
{
  v2 = type metadata accessor for FamilyMemberAccountDetails();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21BC3559C(a1, v5);
  sub_21BE28D7C();
  v11 = sub_21BE28D6C();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21BC35600(v5, v13 + v12);
  sub_21BBA932C(0, 0, v9, &unk_21BE38CC0, v13);
}

uint64_t sub_21BC3452C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21BE28D7C();
  v4[3] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21BC345C4, v6, v5);
}

uint64_t sub_21BC345C4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for FamilyMemberAccountDetails() + 40));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_21BC34664;

  return sub_21BCF8840();
}

uint64_t sub_21BC34664()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21BBAFEE4, v4, v3);
}

uint64_t sub_21BC34784@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
LABEL_6:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_21BE2599C();
    v17 = v16;

    *&v30 = v15;
    *(&v30 + 1) = v17;
    sub_21BB41FA4();
    v8 = sub_21BE27DBC();
    v10 = v18;
    v12 = v19 & 1;
    sub_21BBA4A38(v8, v18, v19 & 1);

    sub_21BE2784C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A40, &unk_21BE38DF0);
    sub_21BC0AD50();
    sub_21BC3623C();
    goto LABEL_7;
  }

  if (a1 != 3)
  {
    if (a1 != 2)
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      v25 = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() bundleForClass_];
      v27 = sub_21BE2599C();
      v29 = v28;

      *&v31 = v27;
      *(&v31 + 1) = v29;
      sub_21BB41FA4();
      sub_21BE27DBC();
      sub_21BE2784C();
      sub_21BC361AC(v27, v29, v32);
      sub_21BC361AC(v27, v29, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
      sub_21BC0AD50();
      sub_21BE2784C();
      sub_21BC361E8(v27, v29, v32, *(&v32 + 1), v33, SHIBYTE(v33));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A40, &unk_21BE38DF0);
      sub_21BC3623C();
      sub_21BE2784C();
      sub_21BC362C8(v27, v29, v32);
      sub_21BC36304(v27, v29, v32, *(&v32 + 1), v33, SHIBYTE(v33));
      result = sub_21BC362C8(v27, v29, v32);
      v21 = v31;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  v3 = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_21BE2599C();
  v7 = v6;

  *&v30 = v5;
  *(&v30 + 1) = v7;
  sub_21BB41FA4();
  v8 = sub_21BE27DBC();
  v10 = v9;
  v12 = v11 & 1;
  sub_21BBA4A38(v8, v9, v11 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C08, &unk_21BE3F270);
  sub_21BC0AD50();
  sub_21BE2784C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A40, &unk_21BE38DF0);
  sub_21BC3623C();
LABEL_7:
  sub_21BE2784C();
  sub_21BBC7C7C(v8, v10, v12);

  v21 = v30;
  v22 = v32;
  v23 = v33;
  v24 = v34;
LABEL_9:
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 32) = v23;
  *(a2 + 34) = v24;
  return result;
}

uint64_t sub_21BC34EA8@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 6);
  *(v1 + 5);
  *(v1 + 4);
  return sub_21BC34784(*v1, a1);
}

uint64_t sub_21BC34F18()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE2941C();
  return sub_21BE29B0C();
}

uint64_t sub_21BC34F80()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE2941C();
  return sub_21BE29B0C();
}

uint64_t sub_21BC34FC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
  return sub_21BE2940C() & 1;
}

unint64_t sub_21BC35018()
{
  result = qword_27CDB7868;
  if (!qword_27CDB7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7868);
  }

  return result;
}

uint64_t sub_21BC35074()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC3400C();
}

unint64_t sub_21BC3510C()
{
  result = qword_27CDB78C8;
  if (!qword_27CDB78C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5060, &qword_21BE31038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB78A0, &qword_21BE38AD0);
    sub_21BE271DC();
    sub_21BB3B038(&qword_27CDB78B8, &qword_27CDB78A0, &qword_21BE38AD0);
    sub_21BC35B30(&qword_27CDB78C0, MEMORY[0x277CDDAB8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB78C8);
  }

  return result;
}

unint64_t sub_21BC35268()
{
  result = qword_27CDB7950;
  if (!qword_27CDB7950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7940, &qword_21BE47630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7950);
  }

  return result;
}

unint64_t sub_21BC352EC()
{
  result = qword_27CDB7958;
  if (!qword_27CDB7958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7948, &qword_21BE38B90);
    sub_21BB3B038(&qword_27CDB7960, &qword_27CDB7968, &qword_21BE38B98);
    sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7958);
  }

  return result;
}

unint64_t sub_21BC353D0()
{
  result = qword_27CDB7978;
  if (!qword_27CDB7978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7978);
  }

  return result;
}

unint64_t sub_21BC3542C()
{
  result = qword_27CDB7988;
  if (!qword_27CDB7988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7980, &qword_21BE38BD8);
    sub_21BB3B038(&qword_27CDB7990, &qword_27CDB7998, &unk_21BE38BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7988);
  }

  return result;
}

unint64_t sub_21BC354E4()
{
  result = qword_27CDB79A0;
  if (!qword_27CDB79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB79A0);
  }

  return result;
}

unint64_t sub_21BC35548()
{
  result = qword_27CDB79C8;
  if (!qword_27CDB79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB79C8);
  }

  return result;
}

uint64_t sub_21BC3559C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyMemberAccountDetails();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC35600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyMemberAccountDetails();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC35684(void *a1, char a2)
{
  v5 = *(type metadata accessor for FamilyMemberAccountDetails() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21BC32B78(a1, a2 & 1, v2 + v6, v7);
}

uint64_t sub_21BC35730(uint64_t a1)
{
  v3 = *(type metadata accessor for FamilyMemberAccountDetails() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BC32FBC(a1, v4);
}

uint64_t sub_21BC357B8(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyMemberAccountDetails() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BC3452C(a1, v6, v7, v1 + v5);
}

uint64_t sub_21BC358C0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FamilyMemberAccountDetails() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21BC35934(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v5 = a4;
  }

  return result;
}

void sub_21BC35980(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5)
  {
  }
}

uint64_t sub_21BC35A10(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyMemberAccountDetails() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBB7EB8;

  return sub_21BC33C64(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21BC35B30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_17Tm()
{
  v1 = type metadata accessor for FamilyMemberAccountDetails();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21BE26FEC();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *&v4[v1[9] + 8];

  v8 = *&v4[v1[10]];

  v9 = *&v4[v1[11] + 8];

  v10 = &v4[v1[12]];

  v11 = *(v10 + 1);

  v12 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21BE27B0C();
    (*(*(v13 - 8) + 8))(&v4[v12], v13);
  }

  else
  {
    v14 = *&v4[v12];
  }

  v15 = *&v4[v1[14] + 8];

  return swift_deallocObject();
}

uint64_t sub_21BC35DA4(uint64_t a1)
{
  v3 = *(type metadata accessor for FamilyMemberAccountDetails() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BC302BC(a1, v4);
}

uint64_t objectdestroy_61Tm()
{
  v1 = type metadata accessor for FamilyMemberAccountDetails();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21BE26FEC();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *&v5[v1[9] + 8];

  v9 = *&v5[v1[10]];

  v10 = *&v5[v1[11] + 8];

  v11 = &v5[v1[12]];

  v12 = *(v11 + 1);

  v13 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21BE27B0C();
    (*(*(v14 - 8) + 8))(&v5[v13], v14);
  }

  else
  {
    v15 = *&v5[v13];
  }

  v16 = *&v5[v1[14] + 8];

  return swift_deallocObject();
}

uint64_t sub_21BC3608C(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyMemberAccountDetails() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBA6A64;

  return sub_21BC303BC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21BC361AC(uint64_t a1, uint64_t a2, char a3)
{
  sub_21BBA4A38(a1, a2, a3 & 1);
}

uint64_t sub_21BC361E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return sub_21BC361AC(a1, a2, a3);
  }

  else
  {
    sub_21BBA4A38(a1, a2, a3 & 1);
  }
}

unint64_t sub_21BC3623C()
{
  result = qword_27CDB7A48;
  if (!qword_27CDB7A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7A40, &unk_21BE38DF0);
    sub_21BC0AD50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7A48);
  }

  return result;
}

uint64_t sub_21BC362C8(uint64_t a1, uint64_t a2, char a3)
{
  sub_21BBC7C7C(a1, a2, a3 & 1);
}

uint64_t sub_21BC36304(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {

    return sub_21BC362C8(a1, a2, a3);
  }

  else
  {
    sub_21BBC7C7C(a1, a2, a3 & 1);
  }
}

unint64_t sub_21BC36358()
{
  result = qword_27CDB7A50;
  if (!qword_27CDB7A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7A58, &unk_21BE3F280);
    sub_21BC0AD50();
    sub_21BC3623C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7A50);
  }

  return result;
}

uint64_t sub_21BC363F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21BC39020(a3, v27 - v11);
  v13 = sub_21BE28DAC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21BBDE578(v12);
  }

  else
  {
    sub_21BE28D9C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21BE28D0C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21BE28A8C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60D8, &qword_21BE390D0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB60D8, &qword_21BE390D0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21BC366A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21BC39020(a3, v27 - v11);
  v13 = sub_21BE28DAC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21BBDE578(v12);
  }

  else
  {
    sub_21BE28D9C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21BE28D0C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21BE28A8C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

unint64_t sub_21BC36940@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BC38C00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21BC3696C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for ChecklistStateVars();
  sub_21BBEAC94();

  v8 = sub_21BE26E9C();
  v10 = v9;
  v11 = type metadata accessor for SharedPasswordsItemModel();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = [objc_opt_self() sharedMonitor];
  sub_21BE25F4C();
  result = sub_21BE283EC();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10 & 1;
  *(a4 + 40) = v16;
  *(a4 + 48) = v17;
  return result;
}

double sub_21BC36A78@<D0>(uint64_t a1@<X8>)
{
  sub_21BC3696C(*v1, *(v1 + 8), *(v1 + 16), v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t sub_21BC36B34()
{
  v1 = v0[19];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC36C58;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7A90, &qword_21BE390E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC36ED8;
  v0[13] = &block_descriptor_9;
  v0[14] = v3;
  [ObjCClassFromMetadata fetchSharingGroupsThatIncludeFamilyMembers_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC36C58()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 144);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t sub_21BC36DC0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB8C3C;

  return v9(a1, a2);
}

uint64_t sub_21BC36ED8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_21BC392B8();
    **(*(v4 + 64) + 40) = sub_21BE28C3C();

    return MEMORY[0x282200950](v4);
  }
}

id sub_21BC36FEC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SharedPasswordsItemProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BC37064(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for SharedPasswordsItemProvider();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t type metadata accessor for SharedPasswordsItemProvider()
{
  result = qword_27CDB7A60;
  if (!qword_27CDB7A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BC371CC(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BC37418();
}

uint64_t sub_21BC3727C(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BC37314, v4, v3);
}

uint64_t sub_21BC37314()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BBCB2AC();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BC37418()
{
  v1[3] = v0;
  v2 = sub_21BE26A4C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = sub_21BE28D7C();
  v1[10] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v1[11] = v7;
  v1[12] = v6;

  return MEMORY[0x2822009F8](sub_21BC37554, v7, v6);
}

uint64_t sub_21BC37554()
{
  v1 = v0[3];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  v4 = type metadata accessor for FamilySignpost();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v0[13] = sub_21BC84D18(v3, v2, "computeItems", 12, 2);
  v7 = *(v1 + qword_27CDD4200 + 24);
  v8 = *(v1 + qword_27CDD4200 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + qword_27CDD4200), v7);
  v9 = (*(v8 + 8))(v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = sub_21BE2905C();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v0[14] = v11;
  v12 = v0[8];
  v13 = v0[3];
  v14 = sub_21BE28DAC();
  v0[15] = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v0[16] = v16;
  v0[17] = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v16(v12, 1, 1, v14);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v13;
  v18 = v13;
  v19 = sub_21BC366A8(0, 0, v12, &unk_21BE39070, v17);
  v0[18] = v19;
  sub_21BBDE578(v12);
  v16(v12, 1, 1, v14);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v18;
  v21 = v18;
  v0[19] = sub_21BC366A8(0, 0, v12, &unk_21BE39080, v20);
  sub_21BBDE578(v12);
  v22 = *(MEMORY[0x277D857E0] + 4);
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_21BC377F4;
  v24 = MEMORY[0x277D839B0];

  return MEMORY[0x282200460](v0 + 24, v19, v24);
}

uint64_t sub_21BC377F4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21BC37914, v4, v3);
}

uint64_t sub_21BC37914()
{
  if (*(v0 + 192))
  {
    v2 = *(v0 + 128);
    v1 = *(v0 + 136);
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 24);
    sub_21BE28D8C();
    v2(v6, 0, 1, v3);
    v8 = v7;
    v9 = sub_21BE28D6C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    v10[5] = v4;
    v12 = sub_21BBA9958(0, 0, v6, &unk_21BE39090, v10);
    *(v0 + 176) = v12;
    v13 = *(MEMORY[0x277D857E0] + 4);
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58D0, &qword_21BE50610);
    *v14 = v0;
    v14[1] = sub_21BC37F4C;
    v16 = v0 + 16;
    v17 = v12;
  }

  else
  {
    v18 = *(MEMORY[0x277D857E0] + 4);
    v19 = swift_task_alloc();
    *(v0 + 168) = v19;
    *v19 = v0;
    v19[1] = sub_21BC37AD8;
    v17 = *(v0 + 152);
    v15 = MEMORY[0x277D839B0];
    v16 = v0 + 193;
  }

  return MEMORY[0x282200460](v16, v17, v15);
}

uint64_t sub_21BC37AD8()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21BC37BF8, v4, v3);
}

uint64_t sub_21BC37BF8()
{
  v38 = v0;
  v1 = *(v0 + 80);

  if (*(v0 + 193))
  {
    v2 = *(v0 + 48);
    sub_21BE261BC();
    v3 = sub_21BE26A2C();
    v4 = sub_21BE28FFC();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 32);
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v37 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_21BB3D81C(0x49657475706D6F63, 0xEE002928736D6574, &v37);
      _os_log_impl(&dword_21BB35000, v3, v4, "%s iCloud is disabled for passwords, but can be enabled", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x21CF05C50](v10, -1, -1);
      MEMORY[0x21CF05C50](v9, -1, -1);
    }

    (*(v7 + 8))(v6, v8);
    v11 = MEMORY[0x277D84F90];
    v12 = sub_21BBBD590(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_21BBBD590((v13 > 1), v14 + 1, 1, v12);
    }

    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 112);

    *(v12 + 2) = v14 + 1;
    v18 = &v12[24 * v14];
    v18[32] = 15;
    *(v18 + 5) = v11;
    *(v18 + 6) = v17;
  }

  else
  {
    v19 = *(v0 + 112);
    v20 = *(v0 + 56);

    sub_21BE261BC();
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FFC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 144);
    v25 = *(v0 + 152);
    v26 = *(v0 + 56);
    v27 = *(v0 + 32);
    v28 = *(v0 + 40);
    if (v23)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_21BB3D81C(0x49657475706D6F63, 0xEE002928736D6574, &v37);
      _os_log_impl(&dword_21BB35000, v21, v22, "%s iCloud is disabled for passwords and cannot be enabled", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x21CF05C50](v30, -1, -1);
      MEMORY[0x21CF05C50](v29, -1, -1);
    }

    (*(v28 + 8))(v26, v27);
    v12 = MEMORY[0x277D84F90];
  }

  v31 = *(v0 + 104);
  v33 = *(v0 + 56);
  v32 = *(v0 + 64);
  v34 = *(v0 + 48);
  sub_21BC852D8();

  v35 = *(v0 + 8);

  return v35(v12);
}

uint64_t sub_21BC37F4C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21BC3806C, v4, v3);
}

uint64_t sub_21BC3806C()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[10];

  v5 = v0[2];
  v6 = v0[13];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  sub_21BC852D8();

  v10 = v0[1];

  return v10(v5);
}

unint64_t sub_21BC38154()
{
  result = qword_27CDB7A70;
  if (!qword_27CDB7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7A70);
  }

  return result;
}

unint64_t sub_21BC381A8(uint64_t a1)
{
  *(a1 + 8) = sub_21BC381D8();
  result = sub_21BC3822C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21BC381D8()
{
  result = qword_27CDB7A78;
  if (!qword_27CDB7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7A78);
  }

  return result;
}

unint64_t sub_21BC3822C()
{
  result = qword_27CDB7A80;
  if (!qword_27CDB7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7A80);
  }

  return result;
}

unint64_t sub_21BC38284()
{
  result = qword_27CDB7A88;
  if (!qword_27CDB7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7A88);
  }

  return result;
}

uint64_t sub_21BC382D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_21BC382F8, 0, 0);
}

uint64_t sub_21BC382F8()
{
  *(v0 + 32) = qword_27CDD4208;
  sub_21BE28D7C();
  *(v0 + 40) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC38398, v2, v1);
}

uint64_t sub_21BC38398()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_21BC38400, 0, 0);
}

uint64_t sub_21BC38400()
{
  v1 = v0[2];
  v2 = (v0[3] + v0[4]);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  *v1 = (*(v4 + 8))(v3, v4) & 1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_21BC384A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_21BC384C0, 0, 0);
}

uint64_t sub_21BC384C0()
{
  *(v0 + 32) = qword_27CDD4208;
  sub_21BE28D7C();
  *(v0 + 40) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC38560, v2, v1);
}

uint64_t sub_21BC38560()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_21BC385C8, 0, 0);
}

uint64_t sub_21BC385C8()
{
  v1 = v0[2];
  v2 = (v0[3] + v0[4]);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  *v1 = (*(v4 + 16))(v3, v4) & 1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_21BC38668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_21BE26A4C();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  sub_21BE28D7C();
  v5[8] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();
  v5[9] = v10;
  v5[10] = v9;

  return MEMORY[0x2822009F8](sub_21BC38760, v10, v9);
}

uint64_t sub_21BC38760()
{
  v1 = (*(v0 + 24) + qword_27CDD4210);
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v2 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_21BC38884;

  return v8(v3, v2);
}

uint64_t sub_21BC38884(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = v4[9];
    v8 = v4[10];
    v9 = sub_21BC38A68;
  }

  else
  {
    v4[13] = a1;
    v7 = v4[9];
    v8 = v4[10];
    v9 = sub_21BC389AC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BC389AC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A48, &qword_21BE390A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21BE32770;
  *(v4 + 32) = 15;
  *(v4 + 40) = v1;
  *(v4 + 48) = v3;
  v5 = *(v0 + 56);
  **(v0 + 16) = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21BC38A68()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);

  sub_21BE261BC();
  v7 = v1;
  sub_21BE295EC();
  MEMORY[0x21CF03CA0](0x49657475706D6F63, 0xEE002928736D6574);
  MEMORY[0x21CF03CA0](0xD000000000000035, 0x800000021BE58BA0);
  sub_21BC51D50(v1);

  (*(v5 + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A48, &qword_21BE390A0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21BE32770;
  *(v8 + 32) = 15;
  *(v8 + 40) = MEMORY[0x277D84F90];
  *(v8 + 48) = v6;

  v9 = *(v0 + 56);
  **(v0 + 16) = v8;

  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_21BC38C00(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x736143656C707061;
      break;
    case 11:
      result = 0x49746361746E6F63;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21BC38DF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BC382D8(a1, v4, v5, v6);
}

uint64_t sub_21BC38EAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BC384A0(a1, v4, v5, v6);
}

uint64_t sub_21BC38F60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BC38668(a1, v4, v5, v7, v6);
}

uint64_t sub_21BC39020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC39090(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BBB41B4(a1, v5);
}

uint64_t sub_21BC39148(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBA6A64;

  return sub_21BBB41B4(a1, v5);
}

uint64_t sub_21BC39200(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB7EB8;

  return sub_21BBB44B0(a1, v5);
}

unint64_t sub_21BC392B8()
{
  result = qword_27CDB7A98;
  if (!qword_27CDB7A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB7A98);
  }

  return result;
}

uint64_t sub_21BC39404()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21BC39464(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21BBA70C8;
}

id ExpressParentalControlHook.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExpressParentalControlHook.init()()
{
  v0 = type metadata accessor for ParentalControlStore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore__presets;
  v5 = sub_21BE2679C();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  v7 = sub_21BE266DC();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_user;
  v9 = sub_21BE2688C();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  sub_21BE2670C();
  v10 = sub_21BC3F624(v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t sub_21BC397F4(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = sub_21BE2688C();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v5 = *(v4 + 64) + 15;
  v2[27] = swift_task_alloc();
  v6 = sub_21BE26A4C();
  v2[28] = v6;
  v7 = *(v6 - 8);
  v2[29] = v7;
  v8 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v9 = sub_21BE2679C();
  v2[35] = v9;
  v10 = *(v9 - 8);
  v2[36] = v10;
  v11 = *(v10 + 64) + 15;
  v2[37] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDB7AF8, &qword_21BE391D0) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC39A18, 0, 0);
}

uint64_t sub_21BC39A18()
{
  v71 = v0;
  v1 = *(v0 + 320);
  v2 = (*(v0 + 192) + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore);
  v3 = *__swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  v4 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  swift_beginAccess();
  sub_21BBA3854(v3 + v4, v1, &qword_27CDB7AC8, &qword_21BE3CC70);
  v5 = sub_21BE266DC();
  LODWORD(v3) = (*(*(v5 - 8) + 48))(v1, 1, v5);
  sub_21BB3A4CC(v1, &qword_27CDB7AC8, &qword_21BE3CC70);
  if (v3 != 1)
  {
LABEL_19:
    v37 = *(v0 + 312);
    v36 = *(v0 + 320);
    v39 = *(v0 + 296);
    v38 = *(v0 + 304);
    v41 = *(v0 + 264);
    v40 = *(v0 + 272);
    v43 = *(v0 + 248);
    v42 = *(v0 + 256);
    v44 = *(v0 + 240);
    v45 = *(v0 + 216);

    v46 = *(v0 + 8);

    return v46();
  }

  v6 = [*(v0 + 184) clientInfo];
  if (!v6 || (v7 = v6, v8 = sub_21BE2890C(), v7, !v8))
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
LABEL_15:
    sub_21BB3A4CC(v0 + 96, &qword_27CDB5940, &unk_21BE32B10);
LABEL_16:
    v27 = *(v0 + 240);
    sub_21BE2614C();
    v28 = sub_21BE26A2C();
    v29 = sub_21BE28FFC();
    v30 = os_log_type_enabled(v28, v29);
    v32 = *(v0 + 232);
    v31 = *(v0 + 240);
    v33 = *(v0 + 224);
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v70 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_21BB3D81C(0xD000000000000023, 0x800000021BE58E60, &v70);
      _os_log_impl(&dword_21BB35000, v28, v29, "%s presets not found in clientInfo", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x21CF05C50](v35, -1, -1);
      MEMORY[0x21CF05C50](v34, -1, -1);
    }

    (*(v32 + 8))(v31, v33);
    goto LABEL_19;
  }

  *(v0 + 152) = 0x73746573657270;
  *(v0 + 160) = 0xE700000000000000;

  sub_21BE2958C();
  if (!*(v8 + 16) || (v9 = sub_21BBB31E8(v0 + 16), (v10 & 1) == 0))
  {

    sub_21BBB7238(v0 + 16);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_14;
  }

  sub_21BB3DCD4(*(v8 + 56) + 32 * v9, v0 + 96);
  sub_21BBB7238(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_14:

    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_16;
  }

  v12 = *(v0 + 304);
  v11 = *(v0 + 312);
  v13 = *(v0 + 280);
  v14 = *(v0 + 288);
  sub_21BD51D84(*(v0 + 168), *(v0 + 176), v11);
  sub_21BBA3854(v11, v12, qword_27CDB7AF8, &qword_21BE391D0);
  v15 = (*(v14 + 48))(v12, 1, v13);
  v16 = *(v0 + 304);
  if (v15 == 1)
  {
    v17 = *(v0 + 248);

    sub_21BB3A4CC(v16, qword_27CDB7AF8, &qword_21BE391D0);
    sub_21BE2614C();
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FFC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 312);
    v22 = *(v0 + 248);
    v23 = *(v0 + 224);
    v24 = *(v0 + 232);
    if (v20)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v70 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_21BB3D81C(0xD000000000000023, 0x800000021BE58E60, &v70);
      _os_log_impl(&dword_21BB35000, v18, v19, "%s unable to parse presets string", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x21CF05C50](v26, -1, -1);
      MEMORY[0x21CF05C50](v25, -1, -1);
    }

    (*(v24 + 8))(v22, v23);
    sub_21BB3A4CC(v21, qword_27CDB7AF8, &qword_21BE391D0);
    goto LABEL_19;
  }

  v48 = *(v0 + 272);
  (*(*(v0 + 288) + 32))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
  sub_21BE2614C();
  v49 = sub_21BE26A2C();
  v50 = sub_21BE28FFC();
  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 272);
  v53 = *(v0 + 224);
  v54 = *(v0 + 232);
  if (v51)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v70 = v56;
    *v55 = 136315138;
    *(v55 + 4) = sub_21BB3D81C(0xD000000000000023, 0x800000021BE58E60, &v70);
    _os_log_impl(&dword_21BB35000, v49, v50, "%s will load presets settings from store", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    MEMORY[0x21CF05C50](v56, -1, -1);
    MEMORY[0x21CF05C50](v55, -1, -1);
  }

  v57 = *(v54 + 8);
  v57(v52, v53);
  *(v0 + 328) = v57;
  sub_21BB3A35C(v2, v0 + 56);
  v58 = __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
  v59 = sub_21BD55FDC(v8);
  v61 = v60;

  v63 = *(v0 + 208);
  v62 = *(v0 + 216);
  v64 = *(v0 + 200);
  if (v61)
  {
    v65 = MEMORY[0x277D4BD78];
  }

  else
  {
    *v62 = v59;
    v65 = MEMORY[0x277D4BD80];
  }

  (*(v63 + 104))(v62, *v65, v64);
  v66 = *v58;
  v67 = swift_task_alloc();
  *(v0 + 336) = v67;
  *v67 = v0;
  v67[1] = sub_21BC3A168;
  v68 = *(v0 + 296);
  v69 = *(v0 + 216);

  return sub_21BC8F0B8(v69, v68);
}

uint64_t sub_21BC3A168()
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  v8 = *v1;
  *(*v1 + 344) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_21BC3A554;
  }

  else
  {
    v6 = sub_21BC3A2D8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21BC3A2D8()
{
  v33 = v0;
  v1 = v0[33];
  v3 = v0[23];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_21BC3ED54(v3);
  sub_21BE2614C();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[41];
  v8 = v0[39];
  v9 = v0[36];
  v10 = v0[37];
  v31 = v0[35];
  v11 = v0[33];
  v13 = v0[28];
  v12 = v0[29];
  if (v6)
  {
    v30 = v0[39];
    v14 = swift_slowAlloc();
    v29 = v10;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_21BB3D81C(0xD000000000000023, 0x800000021BE58E60, &v32);
    _os_log_impl(&dword_21BB35000, v4, v5, "%s loaded presets settings from store", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x21CF05C50](v15, -1, -1);
    MEMORY[0x21CF05C50](v14, -1, -1);

    v7(v11, v13);
    (*(v9 + 8))(v29, v31);
    v16 = v30;
  }

  else
  {

    v7(v11, v13);
    (*(v9 + 8))(v10, v31);
    v16 = v8;
  }

  sub_21BB3A4CC(v16, qword_27CDB7AF8, &qword_21BE391D0);
  v18 = v0[39];
  v17 = v0[40];
  v20 = v0[37];
  v19 = v0[38];
  v22 = v0[33];
  v21 = v0[34];
  v24 = v0[31];
  v23 = v0[32];
  v25 = v0[30];
  v26 = v0[27];

  v27 = v0[1];

  return v27();
}

uint64_t sub_21BC3A554()
{
  v39 = v0;
  v1 = v0[43];
  v2 = v0[32];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_21BE2614C();
  v3 = v1;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FDC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[43];
  v8 = v0[39];
  v10 = v0[36];
  v9 = v0[37];
  v11 = v0[35];
  v12 = v0[32];
  v36 = v12;
  v37 = v0[41];
  v14 = v0[28];
  v13 = v0[29];
  if (v6)
  {
    v35 = v0[35];
    v15 = swift_slowAlloc();
    v34 = v9;
    v16 = swift_slowAlloc();
    v33 = v8;
    v17 = swift_slowAlloc();
    v38 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_21BB3D81C(0xD000000000000023, 0x800000021BE58E60, &v38);
    *(v15 + 12) = 2112;
    v18 = v7;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&dword_21BB35000, v4, v5, "%s error loading prests into STExpressSettingsController: %@", v15, 0x16u);
    sub_21BB3A4CC(v16, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x21CF05C50](v17, -1, -1);
    MEMORY[0x21CF05C50](v15, -1, -1);

    v37(v36, v14);
    (*(v10 + 8))(v34, v35);
    v20 = v33;
  }

  else
  {

    v37(v36, v14);
    (*(v10 + 8))(v9, v11);
    v20 = v8;
  }

  sub_21BB3A4CC(v20, qword_27CDB7AF8, &qword_21BE391D0);
  v22 = v0[39];
  v21 = v0[40];
  v24 = v0[37];
  v23 = v0[38];
  v26 = v0[33];
  v25 = v0[34];
  v28 = v0[31];
  v27 = v0[32];
  v29 = v0[30];
  v30 = v0[27];

  v31 = v0[1];

  return v31();
}

id sub_21BC3A840(void *a1)
{
  result = [a1 name];
  if (result)
  {
    v2 = result;
    sub_21BE28A0C();

    LOBYTE(v2) = sub_21BE28B6C();

    return (v2 & 1);
  }

  return result;
}

uint64_t sub_21BC3A9B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_21BE26A4C();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21BC3AAC0, 0, 0);
}

id sub_21BC3AAC0()
{
  v1 = v0[9];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "ExpressParentalControlHook.processObjectModel: invoked", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v5 = v0[9];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[2];

  v9 = *(v7 + 8);
  v9(v5, v6);
  result = [v8 clientInfo];
  if (result)
  {
    v11 = result;
    v12 = sub_21BE2890C();

    LOBYTE(v11) = sub_21BD56CF4(v12);

    if (v11)
    {
      v13 = v0[8];
      sub_21BE2614C();
      v14 = sub_21BE26A2C();
      v15 = sub_21BE28FFC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_21BB35000, v14, v15, "ExpressParentalControlHook.processObjectModel: performing setup", v16, 2u);
        MEMORY[0x21CF05C50](v16, -1, -1);
      }

      v17 = v0[8];
      v18 = v0[5];
      v19 = v0[6];
      v21 = v0[3];
      v20 = v0[4];
      v22 = v0[2];

      v9(v17, v18);
      v23 = sub_21BE28DAC();
      (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
      sub_21BE28D7C();
      v24 = v21;
      v25 = v22;
      v26 = sub_21BE28D6C();
      v27 = swift_allocObject();
      v28 = MEMORY[0x277D85700];
      v27[2] = v26;
      v27[3] = v28;
      v27[4] = v24;
      v27[5] = v25;
      sub_21BBA932C(0, 0, v20, &unk_21BE39108, v27);
    }

    else
    {
      v29 = v0[7];
      sub_21BE2614C();
      v30 = sub_21BE26A2C();
      v31 = sub_21BE28FFC();
      v32 = os_log_type_enabled(v30, v31);
      v34 = v0[6];
      v33 = v0[7];
      v35 = v0[5];
      if (v32)
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_21BB35000, v30, v31, "ExpressParentalControlHook.processObjectModel: no key found", v36, 2u);
        MEMORY[0x21CF05C50](v36, -1, -1);
      }

      v9(v33, v35);
    }

    v38 = v0[8];
    v37 = v0[9];
    v39 = v0[7];
    v40 = v0[4];

    v41 = v0[1];

    return v41(1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21BC3AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_21BE28D7C();
  v5[3] = sub_21BE28D6C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_21BBAFDA8;

  return sub_21BC397F4(a5);
}

uint64_t sub_21BC3B094(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_21BC3B158;

  return sub_21BC3A9B0(v6);
}

uint64_t sub_21BC3B158(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = sub_21BE25A7C();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v13 = *(v10 + 8);

  return v13();
}

void sub_21BC3B308(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v56 = a5;
  v54 = a3;
  v8 = sub_21BE26A4C();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v53 - v17;
  v19 = [a1 name];
  if (!v19)
  {
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = sub_21BE28A0C();
  v23 = v22;

  v24 = sub_21BD56E5C(v21, v23);

  if (v24 == 8)
  {
    sub_21BE2614C();
    v25 = a1;
    v26 = sub_21BE26A2C();
    v27 = sub_21BE28FDC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v61 = v29;
      *v28 = 136315138;
      v30 = [v25 name];
      if (v30)
      {
        v31 = v30;
        v32 = sub_21BE28A0C();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v59 = v32;
      v60 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
      v50 = sub_21BE28A5C();
      v52 = sub_21BB3D81C(v50, v51, &v61);

      *(v28 + 4) = v52;
      _os_log_impl(&dword_21BB35000, v26, v27, "ExpressParentalControlHook.processElement: Unrecognized element: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x21CF05C50](v29, -1, -1);
      MEMORY[0x21CF05C50](v28, -1, -1);
    }

    (*(v57 + 8))(v12, v58);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = [Strong presentationContextForHook_];
    swift_unknownObjectRelease();
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (v37)
    {
      v38 = v37;
LABEL_10:
      v39 = sub_21BE28DAC();
      (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
      sub_21BE28D7C();
      v40 = v5;
      v41 = v54;

      v42 = v38;
      v43 = v56;

      v44 = sub_21BE28D6C();
      v45 = swift_allocObject();
      v46 = MEMORY[0x277D85700];
      *(v45 + 16) = v44;
      *(v45 + 24) = v46;
      *(v45 + 32) = v40;
      *(v45 + 40) = v41;
      *(v45 + 48) = v24;
      *(v45 + 56) = a2;
      *(v45 + 64) = v42;
      *(v45 + 72) = v55;
      *(v45 + 80) = v43;
      sub_21BBA932C(0, 0, v18, &unk_21BE39120, v45);

      return;
    }

    v38 = [v36 navigationController];

    if (v38)
    {
      goto LABEL_10;
    }
  }

  sub_21BE2614C();
  v47 = sub_21BE26A2C();
  v48 = sub_21BE28FDC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_21BB35000, v47, v48, "ExpressParentalControlHook.processElement: No presenting viewcontroller.", v49, 2u);
    MEMORY[0x21CF05C50](v49, -1, -1);
  }

  (*(v57 + 8))(v14, v58);
}

uint64_t sub_21BC3B7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = v16;
  *(v8 + 56) = v17;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 112) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v10 = sub_21BE26A4C();
  *(v8 + 64) = v10;
  v11 = *(v10 - 8);
  *(v8 + 72) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = sub_21BE28D7C();
  *(v8 + 96) = sub_21BE28D6C();
  v13 = swift_task_alloc();
  *(v8 + 104) = v13;
  *v13 = v8;
  v13[1] = sub_21BC3B920;

  return sub_21BC397F4(a5);
}

uint64_t sub_21BC3B920()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v7 = *v0;

  v5 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC3BA5C, v5, v4);
}

uint64_t sub_21BC3BA5C()
{
  v29 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    if (v5 > 3)
    {
      v16 = 0xEE0065636E617473;
      v17 = 0x69446E6565726373;
      v18 = 0xE400000000000000;
      v19 = 1702257011;
      if (v5 != 6)
      {
        v19 = 0x6874695765766173;
        v18 = 0xEF776569566E6950;
      }

      if (v5 != 4)
      {
        v17 = 0x65646F6373736170;
        v16 = 0xE800000000000000;
      }

      if (v5 <= 5)
      {
        v11 = v17;
      }

      else
      {
        v11 = v19;
      }

      if (v5 <= 5)
      {
        v12 = v16;
      }

      else
      {
        v12 = v18;
      }
    }

    else
    {
      v8 = 0xD000000000000013;
      v9 = 0x800000021BE545B0;
      if (v5 != 2)
      {
        v8 = 0xD000000000000011;
        v9 = 0x800000021BE545D0;
      }

      v10 = 0x800000021BE54570;
      if (v5)
      {
        v10 = 0x800000021BE54590;
      }

      if (v5 <= 1)
      {
        v11 = 0xD000000000000013;
      }

      else
      {
        v11 = v8;
      }

      if (v5 <= 1)
      {
        v12 = v10;
      }

      else
      {
        v12 = v9;
      }
    }

    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = *(v0 + 64);
    v23 = sub_21BB3D81C(v11, v12, &v28);

    *(v6 + 4) = v23;
    _os_log_impl(&dword_21BB35000, v3, v4, "ExpressParentalControlHook.processElement: Invoking action for actionType: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x21CF05C50](v7, -1, -1);
    MEMORY[0x21CF05C50](v6, -1, -1);

    (*(v21 + 8))(v20, v22);
  }

  else
  {
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);

    (*(v14 + 8))(v13, v15);
  }

  v24 = *(v0 + 80);
  v25 = *(v0 + 16);
  sub_21BC3BE1C(*(v0 + 112), *(v0 + 32), *(v0 + 24), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_21BC3BE1C(unsigned __int8 a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v7 = v6;
  v81 = a5;
  v82 = a6;
  v78 = a4;
  v76 = a2;
  swift_getObjectType();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v74 - v12;
  v14 = sub_21BE26A4C();
  v79 = *(v14 - 8);
  v80 = v14;
  v15 = *(v79 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v19);
  v75 = &v74 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AE8, &qword_21BE39198);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v74 - v23;
  v25 = sub_21BE2672C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v77 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v58 = v82;

      sub_21BC400FC(v78, v7, v81, v58);
    }

    else
    {
      if (a1 == 6)
      {
        v40 = sub_21BE28DAC();
        (*(*(v40 - 8) + 56))(v13, 1, 1, v40);
        sub_21BE28D7C();
        v41 = v82;

        v42 = v78;
        v43 = v6;
        v44 = sub_21BE28D6C();
        v45 = swift_allocObject();
        v46 = MEMORY[0x277D85700];
        v45[2] = v44;
        v45[3] = v46;
        v45[4] = v43;
        v45[5] = v42;
        v45[6] = v81;
        v45[7] = v41;
        sub_21BBA932C(0, 0, v13, &unk_21BE391A8, v45);
      }

      v59 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v60 = v82;

      v61 = v78;
      sub_21BC4067C(v61, v7, v59, v61, v81, v60);
    }
  }

  sub_21BD528AC(a1, v24);
  if ((*(v26 + 48))(v24, 1, v25) != 1)
  {
    v47 = v25;
    v48 = v26;
    v49 = *(v26 + 32);
    v50 = v77;
    v74 = v47;
    v49(v77, v24);
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    v52 = __swift_project_boxed_opaque_existential_1Tm(&v6[OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore], *&v6[OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore + 24]);
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = swift_allocObject();
    *(v54 + 16) = v51;
    *(v54 + 24) = v53;
    *(v54 + 32) = a1;
    v55 = v76;
    *(v54 + 40) = a3;
    *(v54 + 48) = v55;
    v56 = *v52;

    v57 = a3;

    v62 = sub_21BC8FF18(v50, sub_21BC40ECC, v54);

    swift_beginAccess();
    v63 = *(v51 + 16);
    *(v51 + 16) = v62;
    v64 = v62;

    v65 = v75;
    sub_21BE2614C();
    v66 = v64;
    v67 = sub_21BE26A2C();
    v68 = sub_21BE28FFC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v83 = v71;
      *v69 = 136315394;
      *(v69 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, &v83);
      *(v69 + 12) = 2112;
      *(v69 + 14) = v66;
      *v70 = v62;
      v72 = v66;
      _os_log_impl(&dword_21BB35000, v67, v68, "ExpressParentalControlHook.%s presenting view controller %@", v69, 0x16u);
      sub_21BB3A4CC(v70, &qword_27CDB7AF0, &qword_21BE37410);
      v73 = v70;
      v50 = v77;
      MEMORY[0x21CF05C50](v73, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x21CF05C50](v71, -1, -1);
      MEMORY[0x21CF05C50](v69, -1, -1);
    }

    (*(v79 + 8))(v65, v80);
    [v78 presentViewController:v66 animated:1 completion:0];
    v81(1, 0);

    (*(v48 + 8))(v50, v74);
  }

  sub_21BB3A4CC(v24, &qword_27CDB7AE8, &qword_21BE39198);
  sub_21BE2614C();
  v29 = sub_21BE26A2C();
  v30 = sub_21BE28FDC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v84[0] = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, v84);
    *(v31 + 12) = 2080;
    v33 = 0xEE0065636E617473;
    v34 = 0x69446E6565726373;
    if (a1 == 3)
    {
      v34 = 0xD000000000000011;
      v33 = 0x800000021BE545D0;
    }

    if (a1 == 2)
    {
      v34 = 0xD000000000000013;
      v33 = 0x800000021BE545B0;
    }

    v35 = 0x800000021BE54570;
    if (a1)
    {
      v35 = 0x800000021BE54590;
    }

    if (a1 <= 1u)
    {
      v36 = 0xD000000000000013;
    }

    else
    {
      v36 = v34;
    }

    if (a1 <= 1u)
    {
      v37 = v35;
    }

    else
    {
      v37 = v33;
    }

    v38 = sub_21BB3D81C(v36, v37, v84);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_21BB35000, v29, v30, "ExpressParentalControlHook.%s could not convert %s to STPaneType", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v32, -1, -1);
    MEMORY[0x21CF05C50](v31, -1, -1);
  }

  (*(v79 + 8))(v18, v80);
  return (v81)(0, 0);
}

void sub_21BC3C894(char a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_21BE26A4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v33 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = sub_21BE28DAC();
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE28D7C();

    v24 = a4;

    v25 = a2;
    v26 = sub_21BE28D6C();
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    *(v27 + 16) = v26;
    *(v27 + 24) = v28;
    *(v27 + 32) = v23;
    *(v27 + 40) = v24;
    *(v27 + 48) = a5;
    *(v27 + 56) = a6;
    *(v27 + 64) = a1 & 1;
    *(v27 + 72) = a2;

    sub_21BBA932C(0, 0, v19, &unk_21BE391C8, v27);
  }

  else
  {
    sub_21BE2614C();
    v29 = sub_21BE26A2C();
    v30 = sub_21BE28FDC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, &v33);
      _os_log_impl(&dword_21BB35000, v29, v30, "ExpressParentalControlHook.%s self is unexpectedly nil", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x21CF05C50](v32, -1, -1);
      MEMORY[0x21CF05C50](v31, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_21BC3CBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = v16;
  *(v8 + 184) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  v9 = sub_21BE26A4C();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  sub_21BE28D7C();
  *(v8 + 128) = sub_21BE28D6C();
  v13 = sub_21BE28D0C();
  *(v8 + 136) = v13;
  *(v8 + 144) = v12;

  return MEMORY[0x2822009F8](sub_21BC3CCF4, v13, v12);
}

uint64_t sub_21BC3CCF4()
{
  v31 = v0;
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[15];
    sub_21BE2614C();
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FCC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21BB35000, v5, v6, "Saving parental controls", v7, 2u);
      MEMORY[0x21CF05C50](v7, -1, -1);
    }

    v8 = v0[15];
    v9 = v0[10];
    v10 = v0[11];

    v11 = *(v10 + 8);
    v0[20] = v11;
    v11(v8, v9);
    v12 = *__swift_project_boxed_opaque_existential_1Tm((v3 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore), *(v3 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore + 24));
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_21BC3CFD0;

    return sub_21BC8F59C();
  }

  else
  {
    v15 = v0[16];
    v16 = v0[12];

    sub_21BE2614C();
    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FDC();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[10];
    if (v19)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, &v30);
      _os_log_impl(&dword_21BB35000, v17, v18, "ExpressParentalControlHook.%s self is unexpectedly nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x21CF05C50](v24, -1, -1);
      MEMORY[0x21CF05C50](v23, -1, -1);
    }

    (*(v21 + 8))(v20, v22);
    v26 = v0[14];
    v25 = v0[15];
    v28 = v0[12];
    v27 = v0[13];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_21BC3CFD0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_21BC3D260;
  }

  else
  {
    v7 = sub_21BC3D10C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BC3D10C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FBC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  v7 = *(v0 + 112);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  if (v5)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21BB35000, v3, v4, "Saved parental controls", v10, 2u);
    MEMORY[0x21CF05C50](v10, -1, -1);
  }

  v6(v7, v8);
  v11 = *(v0 + 152);
  v12 = *(v0 + 64);
  (*(v0 + 56))(*(v0 + 184), *(v0 + 72));

  v14 = *(v0 + 112);
  v13 = *(v0 + 120);
  v16 = *(v0 + 96);
  v15 = *(v0 + 104);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_21BC3D260()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);

  sub_21BE2614C();
  v4 = v1;
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FDC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21BB35000, v5, v6, "Failed to save parental controls: %@", v8, 0xCu);
    sub_21BB3A4CC(v9, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v12 = *(v0 + 176);
  v13 = *(v0 + 160);
  v14 = *(v0 + 104);
  v15 = *(v0 + 80);
  v16 = *(v0 + 88);
  v17 = *(v0 + 48);

  v13(v14, v15);
  sub_21BC3FE10(v17);

  v18 = *(v0 + 152);
  v19 = *(v0 + 64);
  (*(v0 + 56))(*(v0 + 184), *(v0 + 72));

  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_21BC3D43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_21BE26A4C();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  sub_21BE28D7C();
  v7[10] = sub_21BE28D6C();
  v12 = sub_21BE28D0C();
  v7[11] = v12;
  v7[12] = v11;

  return MEMORY[0x2822009F8](sub_21BC3D540, v12, v11);
}

uint64_t sub_21BC3D540()
{
  v1 = *__swift_project_boxed_opaque_existential_1Tm((*(v0 + 16) + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore), *(*(v0 + 16) + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore + 24));
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_21BC3D5E8;

  return sub_21BC8F59C();
}

uint64_t sub_21BC3D5E8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 96);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_21BC3D850;
  }

  else
  {
    v7 = sub_21BC3D724;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BC3D724()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FBC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21BB35000, v3, v4, "Saved parental controls", v9, 2u);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  (*(v8 + 8))(v6, v7);
  v11 = *(v0 + 64);
  v10 = *(v0 + 72);
  v12 = *(v0 + 40);
  (*(v0 + 32))(1, 0);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_21BC3D850()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);

  sub_21BE2614C();
  v4 = v1;
  v5 = sub_21BE26A2C();
  v6 = sub_21BE28FDC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 112);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21BB35000, v5, v6, "Failed to save parental controls: %@", v8, 0xCu);
    sub_21BB3A4CC(v9, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v12 = *(v0 + 112);
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);
  v15 = *(v0 + 48);
  v16 = *(v0 + 24);

  (*(v14 + 8))(v13, v15);
  sub_21BC3FE10(v16);

  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  v19 = *(v0 + 40);
  (*(v0 + 32))(1, 0);

  v20 = *(v0 + 8);

  return v20();
}

void sub_21BC3DA08(uint64_t a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5)
{
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v43 = v10;
    sub_21BC3E0EC(a3, a4, a5);
    swift_beginAccess();
    v22 = *(a1 + 16);
    if (v22)
    {
      v23 = v22;
      sub_21BE2614C();
      v24 = v23;
      v25 = sub_21BE26A2C();
      v26 = sub_21BE28FFC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42 = v9;
        v29 = v28;
        v30 = swift_slowAlloc();
        v44[0] = v30;
        *v27 = 136315394;
        *(v27 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, v44);
        *(v27 + 12) = 2112;
        *(v27 + 14) = v24;
        *v29 = v22;
        v31 = v24;
        _os_log_impl(&dword_21BB35000, v25, v26, "ExpressParentalControlHook.%s dismissing presented view controller %@", v27, 0x16u);
        sub_21BB3A4CC(v29, &qword_27CDB7AF0, &qword_21BE37410);
        MEMORY[0x21CF05C50](v29, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        MEMORY[0x21CF05C50](v30, -1, -1);
        MEMORY[0x21CF05C50](v27, -1, -1);

        (*(v43 + 8))(v19, v42);
      }

      else
      {

        (*(v43 + 8))(v19, v9);
      }

      [v24 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      sub_21BE2614C();
      v36 = sub_21BE26A2C();
      v37 = sub_21BE28FDC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v44[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, v44);
        _os_log_impl(&dword_21BB35000, v36, v37, "ExpressParentalControlHook.%s stViewController is unexpectedly nil", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        MEMORY[0x21CF05C50](v39, -1, -1);
        MEMORY[0x21CF05C50](v38, -1, -1);
      }

      (*(v43 + 8))(v17, v9);
    }
  }

  else
  {
    sub_21BE2614C();
    v32 = sub_21BE26A2C();
    v33 = sub_21BE28FDC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v45 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_21BB3D81C(0xD000000000000051, 0x800000021BE58D60, &v45);
      _os_log_impl(&dword_21BB35000, v32, v33, "ExpressParentalControlHook.%s dismiss called after self is deallocated.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x21CF05C50](v35, -1, -1);
      MEMORY[0x21CF05C50](v34, -1, -1);
    }

    (*(v10 + 8))(v14, v9);
  }

  swift_beginAccess();
  v40 = *(a1 + 16);
  *(a1 + 16) = 0;
}

void sub_21BC3DEF4(uint64_t a1, void (*a2)(uint64_t, void))
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21BE2614C();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE58DC0, &v15);
    _os_log_impl(&dword_21BB35000, v9, v10, "ExpressParentalControlHook.%s showPinView completed.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  a2(1, 0);
  swift_beginAccess();
  v13 = *(a1 + 16);
  if (v13)
  {
    swift_beginAccess();
    *(a1 + 16) = 0;
  }
}

uint64_t sub_21BC3E0EC(unsigned __int8 a1, void *a2, uint64_t a3)
{
  v104 = a2;
  v5 = sub_21BE266DC();
  v101 = *(v5 - 8);
  v102 = v5;
  v6 = *(v101 + 64);
  MEMORY[0x28223BE20](v5);
  v98 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v99 = v97 - v10;
  v11 = sub_21BE26A4C();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v103 = (v97 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v105 = v97 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = v97 - v21;
  sub_21BE2614C();
  v23 = sub_21BE26A2C();
  v24 = sub_21BE28FFC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = a1;
    v27 = v12;
    v28 = v11;
    v29 = swift_slowAlloc();
    *&v108[0] = v29;
    *v25 = 136315138;
    *(v25 + 4) = sub_21BB3D81C(0xD00000000000002DLL, 0x800000021BE58D30, v108);
    _os_log_impl(&dword_21BB35000, v23, v24, "ExpressParentalControlHook.%s invoking script function actionType:", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    v30 = v29;
    v11 = v28;
    v12 = v27;
    a1 = v26;
    MEMORY[0x21CF05C50](v30, -1, -1);
    MEMORY[0x21CF05C50](v25, -1, -1);
  }

  v31 = *(v12 + 8);
  (v31)(v22, v11);
  v109[0] = 25705;
  v109[1] = 0xE200000000000000;
  sub_21BE2958C();
  if (*(a3 + 16) && (v32 = sub_21BBB31E8(v108), (v33 & 1) != 0))
  {
    sub_21BB3DCD4(*(a3 + 56) + 32 * v32, v109);
    sub_21BBB7238(v108);
    v34 = swift_dynamicCast();
    if (v34)
    {
      v35 = v106;
    }

    else
    {
      v35 = 0;
    }

    if (v34)
    {
      v36 = v107;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    sub_21BBB7238(v108);
    v35 = 0;
    v36 = 0;
  }

  v106 = 0xD000000000000010;
  v107 = 0x800000021BE58CE0;
  sub_21BE2958C();
  if (!*(a3 + 16) || (v37 = sub_21BBB31E8(v108), (v38 & 1) == 0))
  {
    sub_21BBB7238(v108);
    v41 = 0;
    v40 = 0;
LABEL_26:
    sub_21BE2614C();

    v49 = sub_21BE26A2C();
    v50 = sub_21BE28FFC();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v105 = v16;
      v52 = v40;
      v53 = v51;
      v54 = swift_slowAlloc();
      v102 = v12;
      v55 = v54;
      v109[0] = v54;
      *v53 = 136315650;
      *(v53 + 4) = sub_21BB3D81C(0xD00000000000002DLL, 0x800000021BE58D30, v109);
      v104 = v11;
      *(v53 + 12) = 2080;
      *&v108[0] = v35;
      *(&v108[0] + 1) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
      v103 = v31;
      v56 = sub_21BE28A5C();
      v58 = sub_21BB3D81C(v56, v57, v109);

      *(v53 + 14) = v58;
      *(v53 + 22) = 2080;
      *&v108[0] = v52;
      *(&v108[0] + 1) = v41;
      v59 = sub_21BE28A5C();
      v61 = sub_21BB3D81C(v59, v60, v109);

      *(v53 + 24) = v61;
      _os_log_impl(&dword_21BB35000, v49, v50, "ExpressParentalControlHook.%s no name or id found. id: %s, functionName: %s", v53, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v55, -1, -1);
      MEMORY[0x21CF05C50](v53, -1, -1);

      return v103(v105, v104);
    }

    v63 = v16;
    return (v31)(v63, v11);
  }

  sub_21BB3DCD4(*(a3 + 56) + 32 * v37, v109);
  sub_21BBB7238(v108);
  v39 = swift_dynamicCast();
  if (v39)
  {
    v40 = v106;
  }

  else
  {
    v40 = 0;
  }

  if (v39)
  {
    v41 = v107;
  }

  else
  {
    v41 = 0;
  }

  if (!v36 || !v41)
  {
    goto LABEL_26;
  }

  if (a1 > 4u)
  {

    v64 = v103;
    sub_21BE2614C();
    v65 = sub_21BE26A2C();
    v66 = sub_21BE28FFC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = a1;
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v108[0] = v69;
      *v68 = 136315394;
      *(v68 + 4) = sub_21BB3D81C(0xD00000000000002DLL, 0x800000021BE58D30, v108);
      *(v68 + 12) = 2080;
      v70 = v31;
      if (v67 == 5)
      {
        v71 = 0xE800000000000000;
        v72 = 0x65646F6373736170;
      }

      else if (v67 == 6)
      {
        v71 = 0xE400000000000000;
        v72 = 1702257011;
      }

      else
      {
        v71 = 0xEF776569566E6950;
        v72 = 0x6874695765766173;
      }

      v96 = sub_21BB3D81C(v72, v71, v108);

      *(v68 + 14) = v96;
      _os_log_impl(&dword_21BB35000, v65, v66, "ExpressParentalControlHook.%s skipping script invocation for actionType: %s", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v69, -1, -1);
      MEMORY[0x21CF05C50](v68, -1, -1);

      return v70(v64, v11);
    }

    v63 = v64;
    return (v31)(v63, v11);
  }

  v103 = v31;
  v42 = *__swift_project_boxed_opaque_existential_1Tm((v100 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore), *(v100 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore + 24));
  v43 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
  swift_beginAccess();
  v44 = v99;
  sub_21BBA3854(v42 + v43, v99, &qword_27CDB7AC8, &qword_21BE3CC70);
  v46 = v101;
  v45 = v102;
  v47 = (*(v101 + 48))(v44, 1, v102);
  v97[0] = v35;
  if (v47 == 1)
  {
    v48 = sub_21BBB5D24(MEMORY[0x277D84F90]);
  }

  else
  {
    v73 = v44;
    v74 = v98;
    (*(v46 + 32))(v98, v73, v45);
    v75 = sub_21BD56220(v74);
    (*(v46 + 8))(v74, v45);
    v48 = v75;
  }

  v76 = v105;
  sub_21BE2614C();

  v77 = sub_21BE26A2C();
  v78 = sub_21BE28FFC();
  v101 = v48;

  LODWORD(v100) = v78;
  v79 = os_log_type_enabled(v77, v78);
  v97[1] = v40;
  if (v79)
  {
    v102 = v12;
    v80 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    *&v108[0] = v99;
    *v80 = 136315906;
    *(v80 + 4) = sub_21BB3D81C(0xD00000000000002DLL, 0x800000021BE58D30, v108);
    *(v80 + 12) = 2080;
    *(v80 + 14) = sub_21BB3D81C(v40, v41, v108);
    *(v80 + 22) = 2080;
    v81 = sub_21BE2891C();
    v83 = sub_21BB3D81C(v81, v82, v108);

    v84 = 0xEE0065636E617473;
    *(v80 + 24) = v83;
    *(v80 + 32) = 2080;
    v85 = 0x69446E6565726373;
    if (a1 == 3)
    {
      v85 = 0xD000000000000011;
      v84 = 0x800000021BE545D0;
    }

    if (a1 == 2)
    {
      v85 = 0xD000000000000013;
      v84 = 0x800000021BE545B0;
    }

    v86 = 0x800000021BE54570;
    if (a1)
    {
      v86 = 0x800000021BE54590;
    }

    if (a1 <= 1u)
    {
      v87 = 0xD000000000000013;
    }

    else
    {
      v87 = v85;
    }

    if (a1 <= 1u)
    {
      v88 = v86;
    }

    else
    {
      v88 = v84;
    }

    v89 = v97[0];
    v90 = sub_21BB3D81C(v87, v88, v108);

    *(v80 + 34) = v90;
    _os_log_impl(&dword_21BB35000, v77, v100, "ExpressParentalControlHook.%s invoking script %s dict: %s actionType: %s", v80, 0x2Au);
    v91 = v99;
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v91, -1, -1);
    MEMORY[0x21CF05C50](v80, -1, -1);

    v103(v105, v11);
  }

  else
  {

    v103(v76, v11);
    v89 = v97[0];
  }

  v92 = sub_21BE289CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AD0, &qword_21BE39190);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_21BE33260;
  *(v93 + 56) = MEMORY[0x277D837D0];
  *(v93 + 32) = v89;
  *(v93 + 40) = v36;
  *(v93 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB7AD8, &qword_21BE4BBF0);
  *(v93 + 64) = v101;
  v94 = sub_21BE28C1C();

  v95 = [v104 invokeScriptFunction:v92 withArguments:v94];

  if (v95)
  {
    sub_21BE294BC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v108, 0, sizeof(v108));
  }

  return sub_21BB3A4CC(v108, &qword_27CDB5940, &unk_21BE32B10);
}

id sub_21BC3ED54(void *a1)
{
  v2 = sub_21BE26A4C();
  v60 = *(v2 - 8);
  v3 = *(v60 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v57 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v57 - v10;
  v12 = sub_21BE266DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AC8, &qword_21BE3CC70);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v57 - v19;
  v61 = 0xD000000000000010;
  v62 = 0x800000021BE58CE0;
  sub_21BE2958C();
  v59 = a1;
  result = [a1 clientInfo];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v22 = result;
  v23 = sub_21BE2890C();

  if (*(v23 + 16) && (v24 = sub_21BBB31E8(v63), (v25 & 1) != 0))
  {
    sub_21BB3DCD4(*(v23 + 56) + 32 * v24, v64);
    sub_21BBB7238(v63);

    if (swift_dynamicCast())
    {
      v27 = v61;
      v26 = v62;
      v28 = *__swift_project_boxed_opaque_existential_1Tm((&v58->isa + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore), *(&v58[3].isa + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore));
      v29 = OBJC_IVAR____TtC14FamilyCircleUI20ParentalControlStore_currentSettings;
      swift_beginAccess();
      sub_21BBA3854(v28 + v29, v20, &qword_27CDB7AC8, &qword_21BE3CC70);
      if ((*(v13 + 48))(v20, 1, v12) == 1)
      {
        v30 = sub_21BBB5D24(MEMORY[0x277D84F90]);
      }

      else
      {
        (*(v13 + 32))(v16, v20, v12);
        v30 = sub_21BD56220(v16);
        (*(v13 + 8))(v16, v12);
      }

      sub_21BE2614C();

      v45 = sub_21BE26A2C();
      v46 = sub_21BE28FFC();

      v58 = v45;
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v63[0] = v57;
        *v47 = 136315650;
        *(v47 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE58D00, v63);
        *(v47 + 12) = 2080;
        *(v47 + 14) = sub_21BB3D81C(v27, v26, v63);
        *(v47 + 22) = 2080;
        v48 = sub_21BE2891C();
        v50 = sub_21BB3D81C(v48, v49, v63);

        *(v47 + 24) = v50;
        v51 = v58;
        _os_log_impl(&dword_21BB35000, v58, v46, "%s running on load complete function: %s dict: %s", v47, 0x20u);
        v52 = v57;
        swift_arrayDestroy();
        MEMORY[0x21CF05C50](v52, -1, -1);
        MEMORY[0x21CF05C50](v47, -1, -1);
      }

      else
      {
      }

      (*(v60 + 8))(v11, v2);
      v53 = sub_21BE289CC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AD0, &qword_21BE39190);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_21BE32770;
      *(v54 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB7AD8, &qword_21BE4BBF0);
      *(v54 + 32) = v30;
      v55 = sub_21BE28C1C();

      v56 = [v59 invokeScriptFunction:v53 withArguments:v55];

      if (v56)
      {
        sub_21BE294BC();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v63, 0, 32);
      }

      return sub_21BB3A4CC(v63, &qword_27CDB5940, &unk_21BE32B10);
    }
  }

  else
  {

    sub_21BBB7238(v63);
  }

  sub_21BE2614C();
  v31 = sub_21BE26A2C();
  v32 = sub_21BE28FFC();
  v33 = os_log_type_enabled(v31, v32);
  v34 = v60;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v63[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE58D00, v63);
    _os_log_impl(&dword_21BB35000, v31, v32, "ExpressParentalControlHook.%s function name found", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    MEMORY[0x21CF05C50](v36, -1, -1);
    MEMORY[0x21CF05C50](v35, -1, -1);
  }

  v37 = *(v34 + 8);
  v37(v9, v2);
  sub_21BE2614C();
  v38 = sub_21BE26A2C();
  v39 = sub_21BE28FFC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v64[0] = v41;
    *v40 = 136315394;
    *(v40 + 4) = sub_21BB3D81C(0xD000000000000027, 0x800000021BE58D00, v64);
    *(v40 + 12) = 2080;
    v63[0] = 0uLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AB0, &qword_21BE39110);
    v42 = sub_21BE28A5C();
    v44 = sub_21BB3D81C(v42, v43, v64);

    *(v40 + 14) = v44;
    _os_log_impl(&dword_21BB35000, v38, v39, "%s  functionName: %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v41, -1, -1);
    MEMORY[0x21CF05C50](v40, -1, -1);
  }

  return (v37)(v6, v2);
}

id ExpressParentalControlHook.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpressParentalControlHook();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21BC3F624(uint64_t a1)
{
  v2 = type metadata accessor for ParentalControlStore();
  v15[3] = v2;
  v15[4] = &off_282D8DAE0;
  v15[0] = a1;
  v3 = type metadata accessor for ExpressParentalControlHook();
  v4 = objc_allocWithZone(v3);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v15, v2);
  v6 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v14[3] = v2;
  v14[4] = &off_282D8DAE0;
  v14[0] = v10;
  swift_unknownObjectWeakInit();
  sub_21BB3A35C(v14, v4 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return v11;
}

uint64_t sub_21BC3F77C(void *a1)
{
  v1 = [a1 clientInfo];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = sub_21BE2890C();

  sub_21BE2958C();
  if (!*(v3 + 16) || (v4 = sub_21BBB31E8(&v8), (v5 & 1) == 0))
  {

    sub_21BBB7238(&v8);
LABEL_8:
    v9 = 0u;
    v10 = 0u;
    goto LABEL_9;
  }

  sub_21BB3DCD4(*(v3 + 56) + 32 * v4, &v9);
  sub_21BBB7238(&v8);

  if (!*(&v10 + 1))
  {
LABEL_9:
    sub_21BB3A4CC(&v9, &qword_27CDB5940, &unk_21BE32B10);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v6 = 0;
    return v6 & 1;
  }

  v6 = sub_21BE28B6C();

  return v6 & 1;
}

uint64_t sub_21BC3F8E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC3AE50(a1, v4, v5, v7, v6);
}

uint64_t sub_21BC3F9A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 64);
  v14 = *(v1 + 56);
  v10 = *(v1 + 72);
  v9 = *(v1 + 80);
  v11 = *(v1 + 48);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_21BBA6A64;

  return sub_21BC3B7F0(a1, v4, v5, v6, v7, v11, v14, v8);
}

uint64_t dispatch thunk of ExpressParentalControlHook.shouldMatch(_:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x90))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x98))();
}

uint64_t dispatch thunk of ExpressParentalControlHook.processObjectModel(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21BBB8C3C;

  return v8(a1);
}

uint64_t sub_21BC3FD3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21BBB7EB8;

  return sub_21BC3D43C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_21BC3FE10(void *a1)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_21BE2599C();

  v5 = [v3 bundleForClass_];
  sub_21BE2599C();

  v6 = sub_21BE289CC();

  v7 = sub_21BE289CC();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:{1, 0x800000021BE58E20}];

  v9 = [v3 bundleForClass_];
  sub_21BE2599C();

  v10 = sub_21BE289CC();

  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BBB1C7C;
  aBlock[3] = &block_descriptor_10;
  v11 = _Block_copy(aBlock);

  v12 = [objc_opt_self() actionWithTitle:v10 style:0 handler:{v11, 0xE200000000000000}];
  _Block_release(v11);

  [v8 addAction_];
  [a1 presentViewController:v8 animated:1 completion:0];
}

void sub_21BC400FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v7 = sub_21BE26A4C();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v30[1] = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v30[0] = v30 - v11;
  v12 = sub_21BE2672C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v30[3] = a3;
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = __swift_project_boxed_opaque_existential_1Tm((a2 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore), *(a2 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore + 24));
  (*(v13 + 104))(v16, *MEMORY[0x277D4BD20], v12);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = sub_21BC40EDC;
  v20[4] = v17;
  v21 = *v19;
  v30[2] = a4;

  v22 = sub_21BC8FF18(v16, sub_21BC40F04, v20);

  (*(v13 + 8))(v16, v12);
  swift_beginAccess();
  v23 = *(v18 + 16);
  *(v18 + 16) = v22;
  v24 = v22;

  v25 = v30[0];
  sub_21BE2614C();
  v26 = sub_21BE26A2C();
  v27 = sub_21BE28FFC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE58DC0, &v34);
    _os_log_impl(&dword_21BB35000, v26, v27, "ExpressParentalControlHook.%s pushing pin view controller", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    MEMORY[0x21CF05C50](v29, -1, -1);
    MEMORY[0x21CF05C50](v28, -1, -1);
  }

  (*(v31 + 8))(v25, v32);
  [v33 pushViewController:v24 animated:1];
}

void sub_21BC4067C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v50 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v44 = &v42 - v13;
  v14 = sub_21BE26A4C();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = *(v51 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v48 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v46 = &v42 - v19;
  MEMORY[0x28223BE20](v18);
  v43 = &v42 - v20;
  v21 = sub_21BE2672C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_allocObject();
  v26[2] = a3;
  v26[3] = a4;
  v45 = a5;
  v26[4] = a5;
  v26[5] = a6;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = __swift_project_boxed_opaque_existential_1Tm((a2 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore), *(a2 + OBJC_IVAR____TtC14FamilyCircleUI26ExpressParentalControlHook_parentalControlStore + 24));
  v29 = *MEMORY[0x277D4BD20];
  v30 = *(v22 + 104);
  v49 = v21;
  v30(v25, v29, v21);
  v31 = swift_allocObject();
  v31[2] = v27;
  v31[3] = sub_21BC40F10;
  v31[4] = v26;
  v32 = *v28;
  v47 = a3;

  v33 = a4;

  v53 = v26;

  v34 = sub_21BC8FF18(v25, sub_21BC41158, v31);

  (*(v22 + 8))(v25, v49);
  swift_beginAccess();
  v35 = *(v27 + 16);
  *(v27 + 16) = v34;
  v36 = v34;

  v37 = v43;
  sub_21BE2614C();
  v38 = sub_21BE26A2C();
  v39 = sub_21BE28FFC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v55 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_21BB3D81C(0xD000000000000031, 0x800000021BE58DC0, &v55);
    _os_log_impl(&dword_21BB35000, v38, v39, "ExpressParentalControlHook.%s pushing pin view controller", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x21CF05C50](v41, -1, -1);
    MEMORY[0x21CF05C50](v40, -1, -1);
  }

  (*(v51 + 8))(v37, v52);
  [v50 pushViewController:v36 animated:1];
}

uint64_t sub_21BC40EDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21BC40F5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_21BBB7EB8;

  return sub_21BC3CBC8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_44Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_21BC410A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBB7EB8;

  return sub_21BC3B094(v2, v3, v4);
}

unint64_t sub_21BC41164(void *a1)
{
  v2 = a1[2];
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(*(*(a1[5] + 8) + 8) + 8);
    swift_getAssociatedTypeWitness();
    v6 = a1[3];
    v3 = sub_21BE29B7C();
    if (v7 <= 0x3F)
    {
      v3 = sub_21BC41568();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_21BC41244(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_21BC41388(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t sub_21BC41568()
{
  result = qword_27CDB7B80;
  if (!qword_27CDB7B80)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CDB7B80);
  }

  return result;
}

uint64_t sub_21BC415B8(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BC41604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v37 = *(a1 - 8);
  v38 = *(v37 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v36 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v4 + 16);
  v7 = *(v4 + 40);
  v8 = sub_21BE268BC();
  v41 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v34 = v32 - v10;
  WitnessTable = swift_getWitnessTable();
  v11 = *(a1 + 48);
  v51 = v8;
  v53 = WitnessTable;
  v54 = v11;
  v12.i64[0] = v6;
  v33 = v12;
  v45 = *(a1 + 24);
  v52 = v45;
  v40 = v45.i64[1];
  v13 = sub_21BE285DC();
  v43 = *(v13 - 8);
  v14 = *(v43 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v35 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v39 = v32 - v17;
  *&v18 = vdupq_laneq_s64(v45, 1).u64[0];
  *(&v18 + 1) = v7;
  v46 = vzip1q_s64(v33, v45);
  v47 = v18;
  v19 = *(a1 + 56);
  v48 = v11;
  v49 = v19;
  v33.i64[0] = swift_getKeyPath();
  v32[0] = v2;
  sub_21BE28EEC();
  v20 = *(v2 + *(a1 + 68));
  v21 = *(*(*(v7 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_21BE2973C();
  v32[1] = sub_21BE2969C();
  v22 = v37;
  v23 = v36;
  (*(v37 + 16))(v36, v32[0], a1);
  v24 = v22;
  v25 = (*(v22 + 80) + 64) & ~*(v22 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v6;
  *(v26 + 24) = v45;
  *(v26 + 40) = v7;
  *(v26 + 48) = v11;
  *(v26 + 56) = v19;
  (*(v24 + 32))(v26 + v25, v23, a1);
  v27 = swift_allocObject();
  *(v27 + 16) = v6;
  *(v27 + 24) = v45;
  *(v27 + 40) = v7;
  *(v27 + 48) = v11;
  *(v27 + 56) = v19;
  *(v27 + 64) = sub_21BC41CC4;
  *(v27 + 72) = v26;
  v28 = v35;
  sub_21BE285BC();

  v50 = v19;
  swift_getWitnessTable();
  v29 = v39;
  sub_21BD37338(v28);
  v30 = *(v43 + 8);
  v30(v28, v13);
  sub_21BD37338(v29);
  return (v30)(v29, v13);
}

uint64_t sub_21BC41AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v29 - v18;
  v29[0] = v20;
  v29[1] = v21;
  v29[2] = v22;
  v29[3] = v23;
  v29[4] = v24;
  v29[5] = a9;
  v25 = a3 + *(type metadata accessor for EnumeratedForEach() + 72);
  v26 = *(v25 + 8);
  (*v25)(a1, a2);
  sub_21BD37338(v17);
  v27 = *(v13 + 8);
  v27(v17, a6);
  sub_21BD37338(v19);
  return (v27)(v19, a6);
}

uint64_t sub_21BC41C1C(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *a1;
  v10 = *(*(*(a7 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v9, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_21BC41CC4(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for EnumeratedForEach() - 8);
  return sub_21BC41AA8(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21BC41D94(char *a1)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  return sub_21BC41C1C(a1, *(v1 + 64), *(v1 + 72), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

uint64_t type metadata accessor for ParentalControlView()
{
  result = qword_27CDB7B88;
  if (!qword_27CDB7B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC41E3C()
{
  type metadata accessor for ParentalControlDataItem(319);
  if (v0 <= 0x3F)
  {
    sub_21BC41F08();
    if (v1 <= 0x3F)
    {
      sub_21BC41F9C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AgeBasedPresetFlow();
        if (v3 <= 0x3F)
        {
          sub_21BC41FE8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21BC41F08()
{
  if (!qword_27CDB7B98)
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BC42484(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore);
    v0 = sub_21BE2728C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB7B98);
    }
  }
}

unint64_t sub_21BC41F9C()
{
  result = qword_27CDB7BA0;
  if (!qword_27CDB7BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB7BA0);
  }

  return result;
}

void sub_21BC41FE8()
{
  if (!qword_27CDB7BA8)
  {
    type metadata accessor for FamilyPictureStore(255);
    sub_21BC42484(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore);
    v0 = sub_21BE270DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB7BA8);
    }
  }
}

uint64_t sub_21BC42098()
{
  v1 = *(v0 + *(type metadata accessor for ParentalControlView() + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = [v12 profilePictureForFamilyMember:*(v0 + *(type metadata accessor for ParentalControlDataItem(0) + 24)) pictureDiameter:36.0];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21BE25BFC();
    v6 = v5;

    v7 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v8 = sub_21BE25BCC();
    v9 = [v7 initWithData_];

    sub_21BBBEF94(v4, v6);
    if (v9)
    {
      return v9;
    }
  }

  else
  {
  }

  v10 = sub_21BE289CC();
  v9 = [objc_opt_self() systemImageNamed_];

  if (v9)
  {
    return v9;
  }

  result = sub_21BE2978C();
  __break(1u);
  return result;
}

uint64_t sub_21BC42268@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ParentalControlDataItem(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BC1E044(v1, v6);
  v7 = sub_21BC42098();
  return sub_21BC86024(v6, v7, a1);
}

uint64_t sub_21BC422F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_21BE289CC();
  [v0 setLocalizedDateFormatFromTemplate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AD0, &qword_21BE39190);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D837D0];
  *(v2 + 16) = xmmword_21BE33260;
  *(v2 + 56) = v3;
  *(v2 + 32) = 1702125892;
  *(v2 + 40) = 0xE400000000000000;
  v4 = sub_21BE25CAC();
  v5 = [v0 stringFromDate_];

  v6 = sub_21BE28A0C();
  v8 = v7;

  *(v2 + 88) = v3;
  *(v2 + 64) = v6;
  *(v2 + 72) = v8;
  sub_21BE29AAC();

  v9 = sub_21BE25CAC();
  v10 = [v0 stringFromDate_];

  v11 = sub_21BE28A0C();
  return v11;
}

uint64_t sub_21BC42484(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_21BC424CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = *v0;
  v6 = type metadata accessor for CircleStateControllerHostView(0);
  sub_21BBF0D04(v0 + *(v6 + 20), v4);
  v7 = *(v0 + *(v6 + 24));
  v8 = type metadata accessor for CircleStateControllerHostView.Coordinator(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v11[3] = 0;
  v12 = (v11 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_onComplete);
  *v12 = &unk_21BE39510;
  v12[1] = 0;
  v11[4] = v5;
  v13 = objc_allocWithZone(FACircleStateController);

  v14 = v5;
  v11[2] = [v13 init];
  sub_21BC438F8(v4, v11 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_url);
  *(v11 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_additionalParameters) = v7;
  return v11;
}

void *sub_21BC42608()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_21BE26EEC();
  sub_21BC43C84();
  v4 = sub_21BE2852C();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C10, &qword_21BE39528));
  v6 = MEMORY[0x277D85000];
  *&v5[*((*MEMORY[0x277D85000] & *v5) + qword_27CDD42E8 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = sub_21BE2774C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C08, &qword_21BE39518);
  sub_21BE27B1C();
  *(v7 + *((*v6 & *v7) + qword_27CDD42E8 + 16) + 8) = &off_282D8BAA8;
  swift_unknownObjectWeakAssign();

  sub_21BE27B1C();
  v8 = *(v4 + 16);

  [v8 setPresenter_];

  sub_21BE27B1C();
  v9 = (v1 + *(type metadata accessor for CircleStateControllerHostView(0) + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = (v4 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_onComplete);
  v13 = *(v4 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_onComplete + 8);
  *v12 = v11;
  v12[1] = v10;

  return v7;
}

uint64_t sub_21BC42860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C08, &qword_21BE39518);
  sub_21BE27B1C();
  v5 = (v3 + *(a3 + 28));
  v7 = *v5;
  v6 = v5[1];
  v8 = (v11 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_onComplete);
  v9 = *(v11 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_onComplete + 8);
  *v8 = v7;
  v8[1] = v6;
}

void *sub_21BC428EC@<X0>(void *a1@<X8>)
{
  result = sub_21BC424CC();
  *a1 = result;
  return result;
}

uint64_t sub_21BC42914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BC43C40(&qword_27CDB7C00);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21BC42994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BC43C40(&qword_27CDB7C00);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21BC42A14()
{
  sub_21BC43C40(&qword_27CDB7C00);
  sub_21BE27ABC();
  __break(1u);
}

uint64_t sub_21BC42A58()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);

    sub_21BE28DDC();
  }

  v2 = *(v0 + 24);

  sub_21BC12FE4(v0 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_url);
  v3 = *(v0 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_additionalParameters);

  v4 = *(v0 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_onComplete + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_21BC42B60()
{
  sub_21BBF088C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21BC42C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = sub_21BE26A4C();
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v10 = *(v9 + 64) + 15;
  v7[27] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8) + 64) + 15;
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  sub_21BE28D7C();
  v7[31] = sub_21BE28D6C();
  v13 = sub_21BE28D0C();
  v7[32] = v13;
  v7[33] = v12;

  return MEMORY[0x2822009F8](sub_21BC42D6C, v13, v12);
}

uint64_t sub_21BC42D6C()
{
  v54 = v0;
  v1 = v0[22];
  v2 = [objc_allocWithZone(FACircleContext) initWithEventType_];
  v0[34] = v2;
  v3 = *(v1 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_additionalParameters);
  if (v3)
  {
    sub_21BCA31D4(v3);
    v4 = sub_21BE288EC();

    [v2 setAdditionalParameters_];
  }

  v52 = v3;
  v5 = v0[30];
  sub_21BBF0D04(v0[23], v5);
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  v50 = *(v7 + 48);
  v8 = v50(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = v0[30];
    v9 = sub_21BE25B2C();
    (*(v7 + 8))(v10, v6);
  }

  v49 = v7;
  v11 = v0[29];
  v12 = v0[27];
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[21];
  [v2 setUrlForContext_];

  sub_21BE2614C();
  sub_21BBF0D04(v13, v11);

  v16 = v15;
  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FCC();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[29];
  if (v19)
  {
    v48 = v2;
    v21 = v0[28];
    v22 = v0[21];
    v23 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v53 = v47;
    *v23 = 136315906;
    v24 = sub_21BE28A0C();
    v26 = sub_21BB3D81C(v24, v25, &v53);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    sub_21BBF0D04(v20, v21);
    v27 = v50(v21, 1, v6);
    v28 = v0[28];
    if (v27 == 1)
    {
      sub_21BC12FE4(v0[28]);
      v29 = 0xE100000000000000;
      v30 = 45;
    }

    else
    {
      v30 = sub_21BE25AFC();
      v29 = v34;
      (*(v49 + 8))(v28, v6);
    }

    v35 = v0[26];
    v51 = v0[27];
    v36 = v0[25];
    sub_21BC12FE4(v0[29]);
    v37 = sub_21BB3D81C(v30, v29, &v53);

    *(v23 + 14) = v37;
    *(v23 + 22) = 2080;
    v0[19] = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7BC8, &qword_21BE39430);
    v38 = sub_21BE28A5C();
    v40 = sub_21BB3D81C(v38, v39, &v53);

    *(v23 + 24) = v40;
    *(v23 + 32) = 2080;
    v0[20] = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7BD0, &qword_21BE39438);
    v41 = sub_21BE28A5C();
    v43 = sub_21BB3D81C(v41, v42, &v53);

    *(v23 + 34) = v43;
    _os_log_impl(&dword_21BB35000, v17, v18, "will load context with eventType: %s, url: %s, additionalParameters: %s %s", v23, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v47, -1, -1);
    MEMORY[0x21CF05C50](v23, -1, -1);

    (*(v35 + 8))(v51, v36);
    v2 = v48;
  }

  else
  {
    v32 = v0[26];
    v31 = v0[27];
    v33 = v0[25];

    sub_21BC12FE4(v20);
    (*(v32 + 8))(v31, v33);
  }

  v44 = v0[24];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC432AC;
  v45 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5950, &qword_21BE32B20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BC2D85C;
  v0[13] = &block_descriptor_11;
  v0[14] = v45;
  [v44 performWithContext:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BC432AC()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC433B4, v2, v1);
}

uint64_t sub_21BC433B4()
{
  v1 = v0[22];
  v2 = v0[18];
  v0[35] = v2;
  v3 = (v1 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_onComplete);
  v4 = *v3;
  v0[36] = v3[1];

  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[37] = v6;
  *v6 = v0;
  v6[1] = sub_21BC434D4;
  v7 = v0[24];

  return v9(v2, v7);
}

uint64_t sub_21BC434D4()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v3 = *(*v0 + 288);
  v7 = *v0;

  v4 = *(v1 + 264);
  v5 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_21BC43618, v5, v4);
}

uint64_t sub_21BC43618()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 216);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21BC436C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v26 - v11;
  if (a1)
  {
    if (!v1[3])
    {
      sub_21BE28D8C();
      v13 = sub_21BE28DAC();
      (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
      v14 = v1[4];
      v15 = v1[2];
      sub_21BBF0D04(v1 + OBJC_IVAR____TtCV14FamilyCircleUI29CircleStateControllerHostView11Coordinator_url, v7);
      sub_21BE28D7C();
      v16 = v14;
      v17 = v15;

      v18 = v1;
      v19 = sub_21BE28D6C();
      v20 = (*(v4 + 80) + 48) & ~*(v4 + 80);
      v21 = (v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v22 = swift_allocObject();
      v23 = MEMORY[0x277D85700];
      v22[2] = v19;
      v22[3] = v23;
      v22[4] = v16;
      v22[5] = v18;
      sub_21BC438F8(v7, v22 + v20);
      *(v22 + v21) = v17;
      v24 = sub_21BBA932C(0, 0, v12, &unk_21BE39420, v22);
      v25 = v18[3];
      v18[3] = v24;
    }
  }

  return result;
}

uint64_t sub_21BC438F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC43968(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21BBA6A64;

  return sub_21BC42C24(a1, v7, v8, v9, v10, v1 + v6, v11);
}

void sub_21BC43AF4()
{
  type metadata accessor for FACircleEventType(319);
  if (v0 <= 0x3F)
  {
    sub_21BBF088C();
    if (v1 <= 0x3F)
    {
      sub_21BC43BA8();
      if (v2 <= 0x3F)
      {
        sub_21BC41568();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21BC43BA8()
{
  if (!qword_27CDB7BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7BF0, &qword_21BE39440);
    v0 = sub_21BE2946C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB7BE8);
    }
  }
}

uint64_t sub_21BC43C40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CircleStateControllerHostView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BC43C84()
{
  result = qword_27CDBC4E0;
  if (!qword_27CDBC4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7020, &qword_21BE39520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC4E0);
  }

  return result;
}

uint64_t sub_21BC43D3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC43DA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC43E1C()
{
  sub_21BC46FB4();
  v1 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v1 removeObserver_];

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 40);

  v4 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__showAppleCardRow;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C78, &unk_21BE397A0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__hasPendingCardInvite, v5);
  v6(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__showShareAppleCardFlow, v5);
  v6(v0 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__showAppleCardDetails, v5);
  v7 = OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel__transactionLimitForMember;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C80, &qword_21BE3B3A0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return v0;
}

uint64_t sub_21BC43FA4()
{
  sub_21BC43E1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MemberDetailsAppleCardViewModel()
{
  result = qword_27CDB7C48;
  if (!qword_27CDB7C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BC44050()
{
  v1[152] = v0;
  v2 = sub_21BE26A4C();
  v1[153] = v2;
  v3 = *(v2 - 8);
  v1[154] = v3;
  v4 = *(v3 + 64) + 15;
  v1[155] = swift_task_alloc();
  v1[156] = swift_task_alloc();
  v1[157] = swift_task_alloc();
  v1[158] = swift_task_alloc();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  sub_21BE28D7C();
  v1[163] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v1[164] = v6;
  v1[165] = v5;

  return MEMORY[0x2822009F8](sub_21BC4419C, v6, v5);
}

uint64_t sub_21BC4419C()
{
  v1 = *(v0[152] + 32);
  v0[166] = v1;
  v0[10] = v0;
  v0[15] = v0 + 1422;
  v0[11] = sub_21BC442C4;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
  v0[167] = v3;
  v0[65] = v3;
  v0[58] = MEMORY[0x277D85DD0];
  v0[59] = 1107296256;
  v0[60] = sub_21BBDC4C4;
  v0[61] = &block_descriptor_12;
  v0[62] = v2;
  [v1 hasAppleCardWithCompletion_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_21BC442C4()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC443CC, v2, v1);
}

uint64_t sub_21BC443CC()
{
  if (*(v0 + 1422) == 1)
  {
    v1 = *(v0 + 1328);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1208;
    *(v0 + 216) = sub_21BC4472C;
    v2 = swift_continuation_init();
    *(v0 + 648) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C60, &qword_21BE39660);
    *(v0 + 624) = v2;
    *(v0 + 592) = MEMORY[0x277D85DD0];
    *(v0 + 600) = 1107296256;
    *(v0 + 608) = sub_21BE17340;
    *(v0 + 616) = &block_descriptor_38;
    [v1 appleCardAccountStateWithCompletion_];

    return MEMORY[0x282200938](v0 + 208);
  }

  else
  {
    v3 = *(v0 + 1304);
    v4 = *(v0 + 1240);

    sub_21BE2614C();
    v5 = sub_21BE26A2C();
    v6 = sub_21BE28FFC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21BB35000, v5, v6, "MemberDetailsAppleCardViewModel, orgainzer does not have Apple Card", v7, 2u);
      MEMORY[0x21CF05C50](v7, -1, -1);
    }

    v8 = *(v0 + 1240);
    v9 = *(v0 + 1232);
    v10 = *(v0 + 1224);
    v11 = *(v0 + 1216);

    (*(v9 + 8))(v8, v10);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1176) = 0;
    *(v0 + 1184) = 0xE000000000000000;

    sub_21BE26CBC();
    v25 = *(v11 + 40);
    v12 = *(v11 + 16);
    v13 = *(v11 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v13;
    sub_21BE26CAC();

    v15 = *(v0 + 1296);
    v16 = *(v0 + 1288);
    v17 = *(v0 + 1280);
    v18 = *(v0 + 1272);
    v19 = *(v0 + 1264);
    v20 = *(v0 + 1256);
    v23 = *(v0 + 1248);
    v24 = *(v0 + 1240);
    sub_21BE20A9C(v12, v14, *(v0 + 1160), *(v0 + 1168));

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_21BC4472C()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC44834, v2, v1);
}

uint64_t sub_21BC44834()
{
  v1 = v0[162];
  v2 = v0[151];
  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_21BB35000, v3, v4, "MemberDetailsAppleCardViewModel, current user account state %ld", v5, 0xCu);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v6 = v0[162];
  v7 = v0[154];
  v8 = v0[153];

  v9 = *(v7 + 8);
  v0[168] = v9;
  v0[169] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v8);
  if (v2 == 1)
  {
    v10 = *(v0[152] + 24);
    if (v10)
    {
      v11 = [v10 altDSID];
      if (v11)
      {
        v12 = v11;
        sub_21BE28A0C();
      }
    }

    v32 = v0[166];
    v33 = sub_21BE289CC();
    v0[170] = v33;

    v0[42] = v0;
    v0[47] = v0 + 149;
    v0[43] = sub_21BC44CA8;
    v34 = swift_continuation_init();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C68, &qword_21BE39668);
    v0[171] = v35;
    v0[105] = v35;
    v0[102] = v34;
    v0[98] = MEMORY[0x277D85DD0];
    v0[99] = 1107296256;
    v0[100] = sub_21BE17340;
    v0[101] = &block_descriptor_41;
    [v32 appleCardAccessLevelForAltDSID:v33 completion:v0 + 98];

    return MEMORY[0x282200938](v0 + 42);
  }

  else
  {
    v13 = v0[163];
    v14 = v0[156];

    sub_21BE2614C();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "MemberDetailsAppleCardViewModel, account state is not active. Don't show apple card row", v17, 2u);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    v18 = v0[156];
    v19 = v0[153];
    v20 = v0[152];

    v9(v18, v19);
    swift_getKeyPath();
    swift_getKeyPath();
    v0[141] = 0;
    v0[142] = 0xE000000000000000;

    sub_21BE26CBC();
    v38 = *(v20 + 40);
    v21 = *(v20 + 16);
    v22 = *(v20 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v22;
    sub_21BE26CAC();

    v24 = v0[162];
    v25 = v0[161];
    v26 = v0[160];
    v27 = v0[159];
    v28 = v0[158];
    v29 = v0[157];
    v36 = v0[156];
    v37 = v0[155];
    sub_21BE20A9C(v21, v23, v0[139], v0[140]);

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_21BC44CA8()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC44DB0, v2, v1);
}

uint64_t sub_21BC44DB0()
{
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1192);

  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_21BB35000, v3, v4, "MemberDetailsAppleCardViewModel, current user access level %lu", v5, 0xCu);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v6 = *(v0 + 1352);
  v7 = *(v0 + 1344);
  v8 = *(v0 + 1288);
  v9 = *(v0 + 1224);

  v7(v8, v9);
  if (v2 == 1)
  {
    v10 = *(v0 + 1216);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1421) = 1;

    sub_21BE26CBC();
    v11 = *(v10 + 16);
    *(v0 + 1376) = v11;
    v12 = [v11 altDSID];
    if (v12)
    {
      v13 = v12;
      sub_21BE28A0C();
    }

    v27 = *(v0 + 1336);
    v28 = *(v0 + 1328);
    v29 = sub_21BE289CC();
    *(v0 + 1384) = v29;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1416;
    *(v0 + 24) = sub_21BC451B0;
    v30 = swift_continuation_init();
    *(v0 + 904) = v27;
    *(v0 + 880) = v30;
    *(v0 + 848) = MEMORY[0x277D85DD0];
    *(v0 + 856) = 1107296256;
    *(v0 + 864) = sub_21BBDC4C4;
    *(v0 + 872) = &block_descriptor_50;
    [v28 appleCardIsSharedWithWithAltDSID:v29 completion:v0 + 848];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v14 = *(v0 + 1304);
    v15 = *(v0 + 1216);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1016) = 0;
    *(v0 + 1024) = 0xE000000000000000;

    sub_21BE26CBC();
    v33 = *(v15 + 40);
    v16 = *(v15 + 16);
    v17 = *(v15 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v17;
    sub_21BE26CAC();

    v19 = *(v0 + 1296);
    v20 = *(v0 + 1288);
    v21 = *(v0 + 1280);
    v22 = *(v0 + 1272);
    v23 = *(v0 + 1264);
    v24 = *(v0 + 1256);
    v31 = *(v0 + 1248);
    v32 = *(v0 + 1240);
    sub_21BE20A9C(v16, v18, *(v0 + 984), *(v0 + 992));

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_21BC451B0()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC452B8, v2, v1);
}

uint64_t sub_21BC452B8()
{
  v37 = v0;
  v1 = *(v0 + 1416);

  if (v1 == 1)
  {
    v2 = *(v0 + 1280);
    v3 = *(v0 + 1216);
    sub_21BE2614C();

    v4 = sub_21BE26A2C();
    v5 = sub_21BE28FFC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 1376);
      v34 = *(v0 + 1344);
      v35 = *(v0 + 1352);
      v7 = *(v0 + 1280);
      v8 = *(v0 + 1224);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = v10;
      *v9 = 136315138;
      v11 = sub_21BE2917C();
      v13 = sub_21BB3D81C(v11, v12, &v36);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21BB35000, v4, v5, "MemberDetailsAppleCardViewModel, card shared with member %s, show details flow", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x21CF05C50](v10, -1, -1);
      MEMORY[0x21CF05C50](v9, -1, -1);

      v34(v7, v8);
    }

    else
    {
      v16 = *(v0 + 1352);
      v17 = *(v0 + 1344);
      v18 = *(v0 + 1280);
      v19 = *(v0 + 1224);

      v17(v18, v19);
    }

    v20 = *(v0 + 1376);
    v21 = *(v0 + 1216);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 1417) = 1;

    sub_21BE26CBC();
    v22 = [v20 altDSID];
    if (v22)
    {
      v23 = v22;
      sub_21BE28A0C();
    }

    v24 = v0 + 272;
    v29 = *(v0 + 1368);
    v30 = *(v0 + 1328);
    v31 = sub_21BE289CC();
    *(v0 + 1392) = v31;

    *(v0 + 272) = v0;
    *(v0 + 312) = v0 + 1200;
    *(v0 + 280) = sub_21BC456C4;
    v32 = swift_continuation_init();
    *(v0 + 712) = v29;
    *(v0 + 688) = v32;
    *(v0 + 656) = MEMORY[0x277D85DD0];
    *(v0 + 664) = 1107296256;
    *(v0 + 672) = sub_21BE17340;
    *(v0 + 680) = &block_descriptor_74;
    [v30 appleCardAccessLevelForAltDSID:v31 completion:{v0 + 656, v34, v35, v36}];
  }

  else
  {
    v14 = [*(v0 + 1376) altDSID];
    if (v14)
    {
      v15 = v14;
      sub_21BE28A0C();
    }

    v24 = v0 + 400;
    v25 = *(v0 + 1336);
    v26 = *(v0 + 1328);
    v27 = sub_21BE289CC();
    *(v0 + 1408) = v27;

    *(v0 + 400) = v0;
    *(v0 + 440) = v0 + 1420;
    *(v0 + 408) = sub_21BC463B8;
    v28 = swift_continuation_init();
    *(v0 + 776) = v25;
    *(v0 + 752) = v28;
    *(v0 + 720) = MEMORY[0x277D85DD0];
    *(v0 + 728) = 1107296256;
    *(v0 + 736) = sub_21BBDC4C4;
    *(v0 + 744) = &block_descriptor_53;
    [v26 hasSentPendingAppleCardInvitationToUserWithAltDSID:v27 completion:{v0 + 720, v34, v35, v36}];
  }

  return MEMORY[0x282200938](v24);
}

uint64_t sub_21BC456C4()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC457CC, v2, v1);
}

uint64_t sub_21BC457CC()
{
  v49 = v0;
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1216);
  v3 = *(v0 + 1200);

  sub_21BE2614C();

  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1376);
    v44 = *(v0 + 1344);
    v46 = *(v0 + 1352);
    v7 = *(v0 + 1272);
    v8 = *(v0 + 1224);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v48 = v10;
    *v9 = 136315394;
    v11 = sub_21BE2917C();
    v13 = sub_21BB3D81C(v11, v12, &v48);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v3;
    _os_log_impl(&dword_21BB35000, v4, v5, "MemberDetailsAppleCardViewModel, member access level %s : %lu", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);

    v44(v7, v8);
    if (v3 != 1)
    {
LABEL_3:
      v14 = *(v0 + 1376);
      v15 = *(v0 + 1216);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 1144) = 0;
      *(v0 + 1152) = 0xE000000000000000;

      sub_21BE26CBC();
      v16 = [v14 altDSID];
      if (v16)
      {
        v17 = v16;
        sub_21BE28A0C();
      }

      v41 = *(v0 + 1328);
      v42 = sub_21BE289CC();
      *(v0 + 1400) = v42;

      *(v0 + 144) = v0;
      *(v0 + 184) = v0 + 912;
      *(v0 + 152) = sub_21BC45CF4;
      v43 = swift_continuation_init();
      *(v0 + 584) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C70, &unk_21BE39790);
      *(v0 + 560) = v43;
      *(v0 + 528) = MEMORY[0x277D85DD0];
      *(v0 + 536) = 1107296256;
      *(v0 + 544) = sub_21BC69644;
      *(v0 + 552) = &block_descriptor_77;
      [v41 appleCardTransactionLimitForAltDSID:v42 completion:v0 + 528];

      return MEMORY[0x282200938](v0 + 144);
    }
  }

  else
  {
    v18 = *(v0 + 1352);
    v19 = *(v0 + 1344);
    v20 = *(v0 + 1272);
    v21 = *(v0 + 1224);

    v19(v20, v21);
    if (v3 != 1)
    {
      goto LABEL_3;
    }
  }

  v22 = *(v0 + 1304);
  v23 = *(v0 + 1216);

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  v26 = sub_21BE2599C();
  v28 = v27;

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 936) = v26;
  *(v0 + 944) = v28;

  sub_21BE26CBC();
  v29 = *(v0 + 1216);
  v30 = *(v29 + 40);
  v31 = *(v29 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
  swift_getKeyPath();
  swift_getKeyPath();
  v32 = v31;
  sub_21BE26CAC();

  v33 = *(v0 + 1296);
  v34 = *(v0 + 1288);
  v35 = *(v0 + 1280);
  v36 = *(v0 + 1272);
  v37 = *(v0 + 1264);
  v38 = *(v0 + 1256);
  v45 = *(v0 + 1248);
  v47 = *(v0 + 1240);
  sub_21BE20A9C(*(v0 + 1376), v32, *(v0 + 968), *(v0 + 976));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_21BC45CF4()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC45DFC, v2, v1);
}

uint64_t sub_21BC45DFC()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1304);

  v3 = *(v0 + 912);
  v4 = *(v0 + 920);
  v5 = *(v0 + 928);

  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = *(v0 + 1216);
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = sub_21BE2599C();
    v12 = v11;

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 952) = v10;
    *(v0 + 960) = v12;

    sub_21BE26CBC();

    v13 = (v0 + 1096);

    v51 = *(v7 + 40);
    v14 = *(v7 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v14;
    sub_21BE26CAC();
    v16 = 1104;
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277D37E50]);
    v18 = v3;

    v19 = sub_21BE289CC();

    v20 = [v17 initWithAmount:v18 currency:v19 exponent:0];

    if (v20)
    {
      v21 = [v20 formattedStringValue];
      v22 = *(v0 + 1216);
      if (v21)
      {
        v23 = v21;
        v24 = sub_21BE28A0C();
        v26 = v25;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_21BE32770;
        *(v27 + 56) = MEMORY[0x277D837D0];
        *(v27 + 64) = sub_21BBBEFE8();
        *(v27 + 32) = v24;
        *(v27 + 40) = v26;
        type metadata accessor for ConfirmChildAgeViewModel();
        v28 = swift_getObjCClassFromMetadata();
        v29 = objc_opt_self();

        v13 = (v0 + 968);
        v30 = [v29 bundleForClass_];
        sub_21BE2599C();

        v31 = sub_21BE289DC();
        v33 = v32;

        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 1000) = v31;
        *(v0 + 1008) = v33;

        sub_21BE26CBC();

        v34 = *(v0 + 1216);
        v52 = *(v34 + 40);
        v35 = *(v34 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
        swift_getKeyPath();
        swift_getKeyPath();
        v15 = v35;
        sub_21BE26CAC();
        v16 = 976;
      }

      else
      {
        v13 = (v0 + 1032);

        v54 = *(v22 + 40);
        v38 = *(v22 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
        swift_getKeyPath();
        swift_getKeyPath();
        v15 = v38;
        sub_21BE26CAC();
        v16 = 1040;
      }
    }

    else
    {
      v13 = (v0 + 1080);
      v36 = *(v0 + 1216);

      v53 = *(v36 + 40);
      v37 = *(v36 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
      swift_getKeyPath();
      swift_getKeyPath();
      v15 = v37;
      sub_21BE26CAC();
      v16 = 1088;
    }
  }

  v39 = *v13;
  v40 = *(v0 + v16);
  v41 = *(v0 + 1296);
  v42 = *(v0 + 1288);
  v43 = *(v0 + 1280);
  v44 = *(v0 + 1272);
  v45 = *(v0 + 1264);
  v46 = *(v0 + 1256);
  v49 = *(v0 + 1248);
  v50 = *(v0 + 1240);
  sub_21BE20A9C(*(v0 + 1376), v15, v39, v40);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_21BC463B8()
{
  v1 = *(*v0 + 1320);
  v2 = *(*v0 + 1312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC464C0, v2, v1);
}

uint64_t sub_21BC464C0()
{
  v57 = v0;
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1216);

  v5 = *(v0 + 1420);

  sub_21BE2614C();

  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FFC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1376);
    v50 = *(v0 + 1344);
    v53 = *(v0 + 1352);
    v9 = *(v0 + 1264);
    v10 = *(v0 + 1224);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v56 = v12;
    *v11 = 136315394;
    v13 = sub_21BE2917C();
    v15 = sub_21BB3D81C(v13, v14, &v56);

    *(v11 + 4) = v15;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v5;
    _os_log_impl(&dword_21BB35000, v6, v7, "MemberDetailsAppleCardViewModel, %s hasPendingInviteForMember %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x21CF05C50](v12, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);

    v50(v9, v10);
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = (v0 + 1418);
    goto LABEL_8;
  }

  v29 = *(v0 + 1352);
  v30 = *(v0 + 1344);
  v31 = *(v0 + 1264);
  v32 = *(v0 + 1224);

  v30(v31, v32);
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = (v0 + 1419);
  v17 = *(v0 + 1256);
  v18 = *(v0 + 1216);
  sub_21BE2614C();

  v19 = sub_21BE26A2C();
  v20 = sub_21BE28FFC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 1376);
    v51 = *(v0 + 1344);
    v54 = *(v0 + 1352);
    v22 = *(v0 + 1256);
    v23 = *(v0 + 1224);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v56 = v25;
    *v24 = 136315138;
    v26 = sub_21BE2917C();
    v28 = sub_21BB3D81C(v26, v27, &v56);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_21BB35000, v19, v20, "MemberDetailsAppleCardViewModel, card not shared with member %s, show share flow", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x21CF05C50](v25, -1, -1);
    MEMORY[0x21CF05C50](v24, -1, -1);

    v51(v22, v23);
  }

  else
  {
    v33 = *(v0 + 1352);
    v34 = *(v0 + 1344);
    v35 = *(v0 + 1256);
    v36 = *(v0 + 1224);

    v34(v35, v36);
  }

LABEL_8:
  v37 = *(v0 + 1216);
  swift_getKeyPath();
  swift_getKeyPath();
  *v16 = 1;

  sub_21BE26CBC();
  v38 = *(v0 + 1216);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 1048) = 0;
  *(v0 + 1056) = 0xE000000000000000;

  sub_21BE26CBC();
  v39 = *(v38 + 40);
  v40 = *(v38 + OBJC_IVAR____TtC14FamilyCircleUI31MemberDetailsAppleCardViewModel_familyCircle);
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v40;
  sub_21BE26CAC();

  v42 = *(v0 + 1296);
  v43 = *(v0 + 1288);
  v44 = *(v0 + 1280);
  v45 = *(v0 + 1272);
  v46 = *(v0 + 1264);
  v47 = *(v0 + 1256);
  v52 = *(v0 + 1248);
  v55 = *(v0 + 1240);
  sub_21BE20A9C(*(v0 + 1376), v41, *(v0 + 1064), *(v0 + 1072));

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_21BC4694C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21BB35000, v11, v12, "MemberDetailsAppleCardViewModel, got notification to update service account", v13, 2u);
    MEMORY[0x21CF05C50](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = sub_21BE28DAC();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_21BE28D7C();

  v15 = sub_21BE28D6C();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v1;
  sub_21BBA932C(0, 0, v5, &unk_21BE39608, v16);
}

uint64_t sub_21BC46B84()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BC44050();
}

void sub_21BC46C6C()
{
  sub_21BC46D8C(319, &qword_280BD6A70);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_21BC46D8C(319, &qword_27CDB7C58);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21BC46D8C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21BE26CCC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_21BC46DD8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MemberDetailsAppleCardViewModel();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t sub_21BC46E18()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21BBA6A64;

  return sub_21BC46B84();
}

uint64_t sub_21BC46F44(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

unint64_t sub_21BC46FB4()
{
  result = qword_280BD6908;
  if (!qword_280BD6908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD6908);
  }

  return result;
}

void sub_21BC47030(void *a1)
{
  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21BE397B0;
  v6 = [v2 topAnchor];
  v7 = [a1 topAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v5 + 32) = v8;
  v9 = [v2 leftAnchor];
  v10 = [a1 leftAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v5 + 40) = v11;
  v12 = [v2 rightAnchor];
  v13 = [a1 rightAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v5 + 48) = v14;
  v15 = [v2 bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v5 + 56) = v17;
  sub_21BC47284();
  v18 = sub_21BE28C1C();

  [v4 activateConstraints_];
}

unint64_t sub_21BC47284()
{
  result = qword_27CDBBAE0;
  if (!qword_27CDBBAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDBBAE0);
  }

  return result;
}

uint64_t sub_21BC472D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21BC4732C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21BC473A8@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21BE26CAC();

    *a2 = (v4 & 1) == 0;
  }

  else
  {
    type metadata accessor for FamilyNetworkMonitor();
    sub_21BC49030();
    result = sub_21BE2726C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BC4746C(uint64_t a1, uint64_t a2)
{
  sub_21BE28D7C();

  v4 = sub_21BE28D6C();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = a1;
  v5[5] = a2;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  sub_21BE2857C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v14, v9);

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_21BE2599C();

  return v12;
}

uint64_t sub_21BC47664(uint64_t a1, uint64_t a2)
{
  sub_21BE28D7C();

  v4 = sub_21BE28D6C();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  v5[2] = v4;
  v5[3] = v6;
  v5[4] = a1;
  v5[5] = a2;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  sub_21BE2857C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v12, v9);
  v10 = v12;

  if (v10 == 1)
  {
    if (qword_27CDB4FA8 != -1)
    {
      swift_once();
    }
  }

  else if (sub_21BE2866C())
  {
    return sub_21BE2833C();
  }

  else
  {
    return sub_21BE2832C();
  }
}

uint64_t sub_21BC477E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BE282FC();
  sub_21BE2866C();
  sub_21BE2866C();
  sub_21BE2869C();
  sub_21BE26F2C();
  *&v13[3] = *&v13[27];
  *&v13[11] = *&v13[35];
  *&v13[19] = v14;
  *v7 = v2;
  *&v7[8] = 256;
  *&v7[10] = *v13;
  *&v7[26] = *&v13[8];
  *&v7[42] = *&v13[16];
  *&v7[56] = *(&v14 + 1);
  v3 = *v7;
  v4 = *&v7[16];
  v5 = *&v7[48];
  *(a1 + 32) = *&v7[32];
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 64) = 1551;
  *(a1 + 72) = 0;
  *(a1 + 80) = &unk_282D85AF0;
  *(a1 + 88) = &unk_282D85B20;
  *(a1 + 96) = 0;
  sub_21BBA3854(v7, &v8, &qword_27CDB76F8, &qword_21BE387A0);
  v8 = v2;
  v9 = 256;
  v10 = *v13;
  v11 = *&v13[8];
  *v12 = *&v13[16];
  *&v12[14] = *&v13[23];
  return sub_21BB3A4CC(&v8, &qword_27CDB76F8, &qword_21BE387A0);
}

uint64_t sub_21BC4794C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C88, &qword_21BE39860);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C90, &qword_21BE39868);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  if (sub_21BE2866C())
  {
    v14 = sub_21BE2771C();
  }

  else
  {
    v14 = sub_21BE2770C();
  }

  *v9 = v14;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C98, &qword_21BE39870);
  sub_21BC47B58(a1, a2, &v9[*(v15 + 44)]);
  sub_21BE2869C();
  sub_21BE2725C();
  sub_21BBB7D84(v9, v13, &qword_27CDB7C88, &qword_21BE39860);
  v16 = &v13[*(v10 + 36)];
  v17 = v24[5];
  *(v16 + 4) = v24[4];
  *(v16 + 5) = v17;
  *(v16 + 6) = v24[6];
  v18 = v24[1];
  *v16 = v24[0];
  *(v16 + 1) = v18;
  v19 = v24[3];
  *(v16 + 2) = v24[2];
  *(v16 + 3) = v19;
  v20 = sub_21BE271CC();
  v21 = sub_21BE27B7C();
  sub_21BBB7D84(v13, a3, &qword_27CDB7C90, &qword_21BE39868);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CA0, &qword_21BE39878);
  v23 = a3 + *(result + 36);
  *v23 = v20;
  *(v23 + 8) = v21;
  return result;
}

uint64_t sub_21BC47B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v154 = a3;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CE8, &unk_21BE363C0);
  v5 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v157 = &v126 - v6;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F80, &qword_21BE363B0);
  v7 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v142 = &v126 - v8;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CA8, &qword_21BE39880);
  v9 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v151 = &v126 - v10;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CB0, &qword_21BE39888);
  v11 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v149 = &v126 - v12;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CB8, &qword_21BE39890);
  v13 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v150 = &v126 - v14;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CC0, &qword_21BE39898);
  v15 = *(*(v147 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v147);
  v153 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v145 = &v126 - v19;
  MEMORY[0x28223BE20](v18);
  v152 = &v126 - v20;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CC8, &unk_21BE398A0);
  v21 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v136 = &v126 - v22;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CD0, &qword_21BE3E530);
  v23 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v137 = &v126 - v24;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CD8, &qword_21BE398B0);
  v25 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v133 = &v126 - v26;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CE0, &qword_21BE398B8);
  v27 = *(*(v132 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v132);
  v144 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v131 = &v126 - v31;
  MEMORY[0x28223BE20](v30);
  v160 = &v126 - v32;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CE8, &qword_21BE398C0);
  v140 = *(v143 - 8);
  v33 = *(v140 + 64);
  v34 = MEMORY[0x28223BE20](v143);
  v156 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v126 - v36;
  v38 = sub_21BE275DC();
  v165 = 1;
  v158 = a1;
  v159 = a2;
  sub_21BC4892C(&v178);
  v172 = v184;
  v173 = v185;
  v174 = v186;
  v168 = v180;
  v169 = v181;
  v170 = v182;
  v171 = v183;
  v166 = v178;
  v167 = v179;
  v176[6] = v184;
  v176[7] = v185;
  v176[8] = v186;
  v176[2] = v180;
  v176[3] = v181;
  v176[4] = v182;
  v176[5] = v183;
  v175 = v187[0];
  v177 = v187[0];
  v176[0] = v178;
  v176[1] = v179;
  sub_21BBA3854(&v166, &v162, &qword_27CDB7CF0, &qword_21BE398C8);
  sub_21BB3A4CC(v176, &qword_27CDB7CF0, &qword_21BE398C8);
  *&v164[55] = v169;
  *&v164[39] = v168;
  *&v164[103] = v172;
  *&v164[119] = v173;
  *&v164[135] = v174;
  v164[151] = v175;
  *&v164[71] = v170;
  *&v164[87] = v171;
  *&v164[7] = v166;
  *&v164[23] = v167;
  *(&v163[6] + 1) = *&v164[96];
  *(&v163[7] + 1) = *&v164[112];
  *(&v163[8] + 1) = *&v164[128];
  *(&v163[2] + 1) = *&v164[32];
  *(&v163[3] + 1) = *&v164[48];
  *(&v163[4] + 1) = *&v164[64];
  *(&v163[5] + 1) = *&v164[80];
  *(v163 + 1) = *v164;
  v162 = v38;
  LOBYTE(v163[0]) = v165;
  *(&v163[9] + 1) = *&v164[144];
  *(&v163[1] + 1) = *&v164[16];
  sub_21BE2867C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7CF8, &qword_21BE398D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D00, &unk_21BE398D8);
  sub_21BB3B038(&qword_27CDB7D08, &qword_27CDB7CF8, &qword_21BE398D0);
  sub_21BC48C0C();
  v155 = v37;
  sub_21BE281EC();
  v185 = v163[6];
  v186 = v163[7];
  v187[0] = v163[8];
  *(v187 + 9) = *(&v163[8] + 9);
  v182 = v163[3];
  v183 = v163[4];
  v184 = v163[5];
  v178 = v162;
  v179 = v163[0];
  v180 = v163[1];
  v181 = v163[2];
  sub_21BB3A4CC(&v178, &qword_27CDB7CF8, &qword_21BE398D0);
  *&v162 = sub_21BC48E64();
  *(&v162 + 1) = v39;
  v129 = sub_21BB41FA4();
  v40 = sub_21BE27DBC();
  v42 = v41;
  v44 = v43;
  if (sub_21BE2866C())
  {
    sub_21BE27C7C();
  }

  else
  {
    sub_21BE27C0C();
  }

  v45 = sub_21BE27D9C();
  v47 = v46;
  v49 = v48;

  sub_21BBC7C7C(v40, v42, v44 & 1);

  v50 = sub_21BE27D8C();
  v127 = v51;
  v128 = v50;
  v53 = v52;
  v55 = v54;
  sub_21BBC7C7C(v45, v47, v49 & 1);

  LOBYTE(v45) = sub_21BE27B8C();
  v56 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v45)
  {
    v56 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v53 & 1;
  v165 = v53 & 1;
  v161 = 0;
  v66 = v136;
  v67 = &v136[*(v130 + 36)];
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660);
  v68 = *(v130 + 28);
  v69 = sub_21BE27D7C();
  v70 = *(*(v69 - 8) + 56);
  v70(v67 + v68, 1, 1, v69);
  *v67 = swift_getKeyPath();
  v71 = v127;
  *v66 = v128;
  *(v66 + 8) = v71;
  *(v66 + 16) = v65;
  *(v66 + 24) = v55;
  *(v66 + 32) = v56;
  *(v66 + 40) = v58;
  *(v66 + 48) = v60;
  *(v66 + 56) = v62;
  *(v66 + 64) = v64;
  *(v66 + 72) = 0;
  v72 = sub_21BE2832C();
  KeyPath = swift_getKeyPath();
  v74 = v137;
  sub_21BBB7D84(v66, v137, &qword_27CDB7CC8, &unk_21BE398A0);
  v75 = (v74 + *(v134 + 36));
  *v75 = KeyPath;
  v75[1] = v72;
  LOBYTE(KeyPath) = (sub_21BE2866C() & 1) == 0;
  v76 = swift_getKeyPath();
  v77 = v74;
  v78 = v133;
  sub_21BBB7D84(v77, v133, &qword_27CDB7CD0, &qword_21BE3E530);
  v79 = v78 + *(v135 + 36);
  *v79 = v76;
  *(v79 + 8) = KeyPath;
  v80 = v131;
  sub_21BBB7D84(v78, v131, &qword_27CDB7CD8, &qword_21BE398B0);
  *(v80 + *(v132 + 36)) = 256;
  sub_21BBB7D84(v80, v160, &qword_27CDB7CE0, &qword_21BE398B8);
  *&v162 = sub_21BC4746C(v158, v159);
  *(&v162 + 1) = v81;
  v82 = sub_21BE27DBC();
  v84 = v83;
  LOBYTE(v78) = v85;
  v87 = v86;
  v88 = v157;
  v89 = (v157 + *(v138 + 36));
  v70(v89 + *(v130 + 28), 1, 1, v69);
  *v89 = swift_getKeyPath();
  *v88 = v82;
  *(v88 + 8) = v84;
  *(v88 + 16) = v78 & 1;
  *(v88 + 24) = v87;
  if (sub_21BE2866C())
  {
    v90 = sub_21BE27C8C();
  }

  else
  {
    v90 = sub_21BE27BFC();
  }

  v91 = v90;
  v92 = v151;
  v93 = swift_getKeyPath();
  v94 = v142;
  sub_21BBB7D84(v157, v142, &qword_27CDB5CE8, &unk_21BE363C0);
  v95 = (v94 + *(v139 + 36));
  *v95 = v93;
  v95[1] = v91;
  v96 = sub_21BC47664(v158, v159);
  v97 = swift_getKeyPath();
  sub_21BBB7D84(v94, v92, &qword_27CDB6F80, &qword_21BE363B0);
  v98 = (v92 + *(v141 + 36));
  *v98 = v97;
  v98[1] = v96;
  LOBYTE(v97) = sub_21BE27B9C();
  v99 = sub_21BE27BBC();
  sub_21BE27BBC();
  if (sub_21BE27BBC() != v97)
  {
    v99 = sub_21BE27BBC();
  }

  sub_21BE26E0C();
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = v149;
  sub_21BBB7D84(v92, v149, &qword_27CDB7CA8, &qword_21BE39880);
  v109 = v108 + *(v148 + 36);
  *v109 = v99;
  *(v109 + 8) = v101;
  *(v109 + 16) = v103;
  *(v109 + 24) = v105;
  *(v109 + 32) = v107;
  *(v109 + 40) = 0;
  v110 = v150;
  sub_21BBB7D84(v108, v150, &qword_27CDB7CB0, &qword_21BE39888);
  *(v110 + *(v146 + 36)) = 256;
  LOBYTE(v108) = (sub_21BE2866C() & 1) == 0;
  v111 = swift_getKeyPath();
  v112 = v110;
  v113 = v145;
  sub_21BBB7D84(v112, v145, &qword_27CDB7CB8, &qword_21BE39890);
  v114 = v113 + *(v147 + 36);
  *v114 = v111;
  *(v114 + 8) = v108;
  v115 = v152;
  sub_21BBB7D84(v113, v152, &qword_27CDB7CC0, &qword_21BE39898);
  v116 = v140;
  v117 = *(v140 + 16);
  v118 = v156;
  v119 = v143;
  v117(v156, v155, v143);
  v120 = v144;
  sub_21BBA3854(v160, v144, &qword_27CDB7CE0, &qword_21BE398B8);
  v121 = v153;
  sub_21BBA3854(v115, v153, &qword_27CDB7CC0, &qword_21BE39898);
  v122 = v154;
  v117(v154, v118, v119);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7D18, &unk_21BE399A8);
  sub_21BBA3854(v120, &v122[*(v123 + 48)], &qword_27CDB7CE0, &qword_21BE398B8);
  sub_21BBA3854(v121, &v122[*(v123 + 64)], &qword_27CDB7CC0, &qword_21BE39898);
  sub_21BB3A4CC(v115, &qword_27CDB7CC0, &qword_21BE39898);
  sub_21BB3A4CC(v160, &qword_27CDB7CE0, &qword_21BE398B8);
  v124 = *(v116 + 8);
  v124(v155, v119);
  sub_21BB3A4CC(v121, &qword_27CDB7CC0, &qword_21BE39898);
  sub_21BB3A4CC(v120, &qword_27CDB7CE0, &qword_21BE398B8);
  return (v124)(v156, v119);
}

uint64_t sub_21BC4892C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21BE2869C();
  v4 = v3;
  sub_21BC477E4(&v26);
  v19 = v30;
  v20 = v31;
  v21 = v32;
  v15 = v26;
  v16 = v27;
  v17 = v28;
  v18 = v29;
  v22[0] = v26;
  v22[1] = v27;
  v22[2] = v28;
  v22[3] = v29;
  v22[4] = v30;
  v22[5] = v31;
  v23 = v32;
  sub_21BBA3854(&v15, v24, &qword_27CDB7D20, &qword_21BE39A00);
  sub_21BB3A4CC(v22, &qword_27CDB7D20, &qword_21BE39A00);
  v31 = v19;
  v32 = v20;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v24[1] = v15;
  v24[2] = v16;
  v33 = v21;
  v14 = 1;
  *&v24[0] = v2;
  *(&v24[0] + 1) = v4;
  v25 = v21;
  v24[5] = v19;
  v24[6] = v20;
  v24[3] = v17;
  v24[4] = v18;
  *&v13[55] = v17;
  *&v13[39] = v16;
  *&v13[23] = v15;
  *&v13[7] = v24[0];
  v13[119] = v21;
  *&v13[103] = v20;
  *&v13[87] = v19;
  *&v13[71] = v18;
  v12[120] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v5 = *v13;
  v6 = *&v13[16];
  v7 = *&v13[32];
  *(a1 + 57) = *&v13[48];
  *(a1 + 41) = v7;
  *(a1 + 25) = v6;
  *(a1 + 9) = v5;
  v8 = *&v13[64];
  v9 = *&v13[80];
  v10 = *&v13[96];
  *(a1 + 121) = *&v13[112];
  *(a1 + 105) = v10;
  *(a1 + 89) = v9;
  *(a1 + 73) = v8;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1;
  *&v26 = v2;
  *(&v26 + 1) = v4;
  sub_21BBA3854(v24, v12, &qword_27CDB7D28, &qword_21BE39A08);
  return sub_21BB3A4CC(&v26, &qword_27CDB7D28, &qword_21BE39A08);
}

uint64_t sub_21BC48AF0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[9];
  v27[8] = a1[8];
  v28[0] = v4;
  *(v28 + 9) = *(a1 + 153);
  v5 = a1[5];
  v27[4] = a1[4];
  v27[5] = v5;
  v6 = a1[7];
  v27[6] = a1[6];
  v27[7] = v6;
  v7 = a1[1];
  v27[0] = *a1;
  v27[1] = v7;
  v8 = a1[3];
  v27[2] = a1[2];
  v27[3] = v8;
  v9 = sub_21BE27B9C();
  sub_21BE26E0C();
  v10 = a1[8];
  v11 = a1[9];
  v12 = a1[6];
  v36 = a1[7];
  v37 = v10;
  v38[0] = v11;
  *(v38 + 9) = *(a1 + 153);
  v13 = a1[5];
  v33 = a1[4];
  v34 = v13;
  v35 = v12;
  v14 = a1[1];
  v29 = *a1;
  v30 = v14;
  v15 = a1[3];
  v31 = a1[2];
  v32 = v15;
  v16 = v38[0];
  *(a2 + 128) = v37;
  *(a2 + 144) = v16;
  *(a2 + 160) = v38[1];
  v17 = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = v17;
  v18 = v36;
  *(a2 + 96) = v35;
  *(a2 + 112) = v18;
  v19 = v30;
  *a2 = v29;
  *(a2 + 16) = v19;
  v20 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v20;
  *(a2 + 176) = v9;
  *(a2 + 184) = v21;
  *(a2 + 192) = v22;
  *(a2 + 200) = v23;
  *(a2 + 208) = v24;
  *(a2 + 216) = 0;
  return sub_21BBA3854(v27, v26, &qword_27CDB7CF8, &qword_21BE398D0);
}

unint64_t sub_21BC48C0C()
{
  result = qword_27CDB7D10;
  if (!qword_27CDB7D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7D00, &unk_21BE398D8);
    sub_21BB3B038(&qword_27CDB7D08, &qword_27CDB7CF8, &qword_21BE398D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7D10);
  }

  return result;
}

uint64_t sub_21BC48CC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BC48D44(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BC48DB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21BE2740C();
  *a1 = result;
  return result;
}

uint64_t sub_21BC48E0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE2735C();
  *a1 = result;
  return result;
}

uint64_t sub_21BC48E38(uint64_t *a1)
{
  v1 = *a1;

  return sub_21BE2736C();
}

uint64_t sub_21BC48E64()
{
  v0 = sub_21BE25FCC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D07F38], v0);
  MEMORY[0x21CF01150](v4);
  (*(v1 + 8))(v4, v0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21BE2599C();

  return v7;
}

uint64_t sub_21BC49024@<X0>(BOOL *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  return sub_21BC473A8(v1[4], a1);
}

unint64_t sub_21BC49030()
{
  result = qword_27CDBC320;
  if (!qword_27CDBC320)
  {
    type metadata accessor for FamilyNetworkMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDBC320);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

unint64_t sub_21BC490C8()
{
  result = qword_27CDB7D30;
  if (!qword_27CDB7D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7CA0, &qword_21BE39878);
    sub_21BC49154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7D30);
  }

  return result;
}

unint64_t sub_21BC49154()
{
  result = qword_27CDB7D38;
  if (!qword_27CDB7D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7C90, &qword_21BE39868);
    sub_21BB3B038(&qword_27CDB7D40, &qword_27CDB7C88, &qword_21BE39860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7D38);
  }

  return result;
}

uint64_t sub_21BC49210()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_21BE28D7C();
  v1[5] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[6] = v4;
  v1[7] = v3;

  return MEMORY[0x2822009F8](sub_21BC492E0, v4, v3);
}

void sub_21BC492E0()
{
  v1 = *(v0[3] + 40);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FD0] + 4);
    v7 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_21BBE7748;
    v6 = v0[4];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC493F4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  sub_21BE28D7C();
  v2[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[6] = v5;
  v2[7] = v4;

  return MEMORY[0x2822009F8](sub_21BC494C4, v5, v4);
}

void sub_21BC494C4()
{
  v1 = *(v0[3] + 40);
  v0[8] = v1;
  if (v1)
  {
    v2 = v0[4];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FD0] + 4);
    v8 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_21BC495D8;
    v6 = v0[4];
    v7 = v0[2];

    v8(v7, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC495D8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 80) = v0;

  sub_21BB3A4CC(v5, &qword_27CDB5790, &qword_21BE32800);

  v7 = *(v2 + 56);
  v8 = *(v2 + 48);
  if (v0)
  {
    v9 = sub_21BBDDD54;
  }

  else
  {
    v9 = sub_21BBDDCE8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_21BC49764(void *__src)
{
  memcpy(v6, __src, sizeof(v6));
  v2 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138 + 16)) = 0;
  *(v1 + *((*v2 & *v1) + qword_27CDD4138 + 24)) = 0;
  *(v1 + *((*v2 & *v1) + qword_27CDD4138 + 32)) = 0;
  *(v1 + *((*v2 & *v1) + qword_27CDD4138 + 40)) = 0;
  v3 = *((*v2 & *v1) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v1 + v3) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v4 = *((*v2 & *v1) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v1 + v4) = qword_280BD79E0;

  return sub_21BE2774C();
}

uint64_t sub_21BC499C8(uint64_t a1)
{
  v3 = type metadata accessor for MultipleInviteViewForInvitee();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + qword_27CDD4138 + 16)) = 0;
  *(v1 + *((*v7 & *v1) + qword_27CDD4138 + 24)) = 0;
  *(v1 + *((*v7 & *v1) + qword_27CDD4138 + 32)) = 0;
  *(v1 + *((*v7 & *v1) + qword_27CDD4138 + 40)) = 0;
  v8 = *((*v7 & *v1) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v1 + v8) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v9 = *((*v7 & *v1) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v1 + v9) = qword_280BD79E0;
  sub_21BC50054(a1, v6);

  v10 = sub_21BE2774C();
  sub_21BC500B8(a1);
  return v10;
}

uint64_t sub_21BC49C88(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D85000];
  *(v2 + *((*MEMORY[0x277D85000] & *v2) + qword_27CDD4138 + 16)) = 0;
  *(v2 + *((*v3 & *v2) + qword_27CDD4138 + 24)) = 0;
  *(v2 + *((*v3 & *v2) + qword_27CDD4138 + 32)) = 0;
  *(v2 + *((*v3 & *v2) + qword_27CDD4138 + 40)) = 0;
  v4 = *((*v3 & *v2) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v2 + v4) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v5 = *((*v3 & *v2) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v2 + v5) = qword_280BD79E0;

  return sub_21BE2774C();
}

uint64_t sub_21BC49EE0()
{
  v1 = MEMORY[0x277D85000];
  *(v0 + *((*MEMORY[0x277D85000] & *v0) + qword_27CDD4138 + 16)) = 0;
  *(v0 + *((*v1 & *v0) + qword_27CDD4138 + 24)) = 0;
  *(v0 + *((*v1 & *v0) + qword_27CDD4138 + 32)) = 0;
  *(v0 + *((*v1 & *v0) + qword_27CDD4138 + 40)) = 0;
  v2 = *((*v1 & *v0) + qword_27CDD4138 + 48);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  *(v0 + v2) = [objc_allocWithZone(FASettingsSpecifierProvider) initWithAccountManager_];
  v3 = *((*v1 & *v0) + qword_27CDD4138 + 56);
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  *(v0 + v3) = qword_280BD79E0;

  return sub_21BE2774C();
}

uint64_t sub_21BC4A140()
{
  result = sub_21BE289CC();
  qword_280BD7EF8 = result;
  return result;
}

id static FamilySettingsFactory.FamilySettingsViewsHaveChanged.getter()
{
  if (qword_280BD7EF0 != -1)
  {
    swift_once();
  }

  v1 = qword_280BD7EF8;

  return v1;
}

uint64_t sub_21BC4A268()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 48);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 48);
    }

    sub_21BE2950C();
    sub_21BE26BDC();
    sub_21BC5000C(&qword_27CDB6E60, MEMORY[0x277CBCDA8]);
    result = sub_21BE28E7C();
    v2 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    v12 = *(v0 + 48);

    v7 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_21BC50480();
      v18 = *(v1 + 48);
      *(v1 + 48) = MEMORY[0x277D84FA0];

      v19 = [objc_opt_self() defaultCenter];
      [v19 removeObserver_];

      v20 = *(v1 + 24);

      v21 = *(v1 + 32);

      v22 = *(v1 + 40);

      v23 = *(v1 + 48);

      v24 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_invitationStatus;
      v25 = sub_21BE2626C();
      (*(*(v25 - 8) + 8))(v1 + v24, v25);

      v26 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_imageHint + 8);

      v27 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages + 8);
      v28 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages + 24);

      v29 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_rowCache);

      return v1;
    }

    while (1)
    {
      sub_21BE26BCC();

      v7 = v15;
      v8 = v16;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_21BE2953C())
      {
        sub_21BE26BDC();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v30)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21BC4A59C()
{
  sub_21BC4A268();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21BC4A5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_21BE28D7C();
  *(v4 + 56) = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC4A694, v6, v5);
}

uint64_t sub_21BC4A694()
{
  v8 = v0;
  v2 = v0[6];
  v1 = v0[7];

  sub_21BB422BC(&v7);
  v4 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_imageHint);
  v3 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_imageHint + 8);
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v4;
  v0[3] = v3;

  sub_21BC4A744(&v7, (v0 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v5 = v0[1];

  return v5();
}

void sub_21BC4A744(char *a1, uint64_t a2)
{
  v4 = *a1;
  sub_21BB422BC(&v12);
  v5 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus;
  v6 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus);
  if (v12 == 5)
  {
    if (v6 == 5)
    {
      goto LABEL_7;
    }

LABEL_6:
    v7 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView);
    *(v2 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView) = 0;

    *(v2 + v5) = 0;
    goto LABEL_7;
  }

  if (v6 == 5 || (sub_21BB42864(v12, v6) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v8 = [objc_opt_self() defaultCenter];
  if (qword_280BD7EF0 != -1)
  {
    swift_once();
  }

  v9 = qword_280BD7EF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7DF8, &unk_21BE39E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE33260;
  v12 = 0x7574617453776F72;
  v13 = 0xE900000000000073;
  sub_21BE2958C();
  *(inited + 96) = &type metadata for FamilyRowStatus;
  *(inited + 72) = v4;
  v12 = 0x6565757172616DLL;
  v13 = 0xE700000000000000;
  sub_21BE2958C();
  sub_21BB3DCD4(a2, inited + 144);
  sub_21BBB5D24(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5900, &qword_21BE32AB0);
  swift_arrayDestroy();
  v11 = sub_21BE288EC();

  [v8 postNotificationName:v9 object:0 userInfo:v11];
}

uint64_t sub_21BC4A978()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 200);
  v5 = *v1;

  v6 = *(v2 + 168);
  v7 = *(v2 + 96);
  if (v0)
  {

    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);
    v8 = *(v3 + 152);
    v9 = *(v3 + 160);
    v10 = sub_21BC4AC50;
  }

  else
  {
    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);

    v8 = *(v3 + 152);
    v9 = *(v3 + 160);
    v10 = sub_21BC4AB08;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BC4AB08()
{
  v1 = v0[18];

  v0[26] = v0[6];
  v2 = v0[15];
  v3 = v0[16];

  return MEMORY[0x2822009F8](sub_21BC4AB74, v2, v3);
}

uint64_t sub_21BC4AB74()
{
  v1 = v0[9];
  v2 = *(v1 + 56);
  *(v1 + 56) = v0[26];

  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  v3 = v0[13];
  v0[27] = qword_280BDCBF0;
  v0[28] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v0[29] = v5;
  v0[30] = v4;

  return MEMORY[0x2822009F8](sub_21BC4AD8C, v5, v4);
}

uint64_t sub_21BC4AC50()
{
  v1 = v0[18];

  v2 = v0[15];
  v3 = v0[16];

  return MEMORY[0x2822009F8](sub_21BC4ACB4, v2, v3);
}

uint64_t sub_21BC4ACB4()
{
  v1 = v0[9];
  v2 = *(v1 + 56);
  *(v1 + 56) = 0;

  if (qword_280BD83C0 != -1)
  {
    swift_once();
  }

  v3 = v0[13];
  v0[27] = qword_280BDCBF0;
  v0[28] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v0[29] = v5;
  v0[30] = v4;

  return MEMORY[0x2822009F8](sub_21BC4AD8C, v5, v4);
}

void sub_21BC4AD8C()
{
  v1 = *(*(v0 + 216) + 40);
  *(v0 + 248) = v1;
  if (v1)
  {
    v2 = *(v0 + 192);
    (*(v0 + 184))(*(v0 + 88), 1, 1, *(v0 + 176));
    v3 = *(MEMORY[0x277D07FD0] + 4);
    v6 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    *(v0 + 256) = v4;
    *v4 = v0;
    v4[1] = sub_21BC4AE74;
    v5 = *(v0 + 88);

    v6(v0 + 56, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC4AE74()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 256);
  v5 = *v1;

  v6 = *(v2 + 248);
  v7 = *(v2 + 88);
  if (v0)
  {

    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);
    v8 = *(v3 + 232);
    v9 = *(v3 + 240);
    v10 = sub_21BC4B138;
  }

  else
  {
    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);

    v8 = *(v3 + 232);
    v9 = *(v3 + 240);
    v10 = sub_21BC4B004;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BC4B004()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 120);
  v3 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_21BC4B070, v2, v3);
}

uint64_t sub_21BC4B070()
{
  if (qword_280BD86B0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v0[33] = qword_280BD86B8;
  v0[34] = sub_21BE28D6C();
  v3 = sub_21BE28D0C();
  v0[35] = v3;
  v0[36] = v2;

  return MEMORY[0x2822009F8](sub_21BC4B19C, v3, v2);
}

uint64_t sub_21BC4B138()
{
  v1 = v0[28];

  v2 = v0[15];
  v3 = v0[16];

  return MEMORY[0x2822009F8](sub_21BC504D8, v2, v3);
}

void sub_21BC4B19C()
{
  v1 = *(*(v0 + 264) + 40);
  *(v0 + 296) = v1;
  if (v1)
  {
    v2 = *(v0 + 192);
    (*(v0 + 184))(*(v0 + 80), 1, 1, *(v0 + 176));
    v3 = *(MEMORY[0x277D07FD0] + 4);
    v6 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    *(v0 + 304) = v4;
    *v4 = v0;
    v4[1] = sub_21BC4B284;
    v5 = *(v0 + 80);

    v6(v0 + 16, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC4B284()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 304);
  v5 = *v1;

  v6 = v2[37];
  v7 = v2[10];
  if (v0)
  {

    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);
    v8 = v3[35];
    v9 = v3[36];
    v10 = sub_21BC4B584;
  }

  else
  {

    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);
    v11 = v3[3];
    v12 = v3[5];

    v8 = v3[35];
    v9 = v3[36];
    v10 = sub_21BC4B428;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BC4B428()
{
  v1 = v0[34];

  v2 = v0[15];
  v3 = v0[16];

  return MEMORY[0x2822009F8](sub_21BC4B48C, v2, v3);
}

uint64_t sub_21BC4B48C()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v7 = *(v6 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount);
  *(v6 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_activeAccount) = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_21BC4B584()
{
  v1 = v0[34];

  v2 = v0[15];
  v3 = v0[16];

  return MEMORY[0x2822009F8](sub_21BC504DC, v2, v3);
}

uint64_t sub_21BC4B5E8()
{
  v25 = v0;
  v1 = v0[11];
  v2 = v0[9];

  sub_21BE260FC();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21BB3D81C(0xD000000000000018, 0x800000021BE581A0, &v24);
    _os_log_impl(&dword_21BB35000, v3, v4, "%s account change", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v11 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = v0[10];
    v15 = v0[6];
    v16 = sub_21BE28DAC();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);

    v17 = sub_21BE28D6C();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v13;
    sub_21BBA932C(0, 0, v15, &unk_21BE39DC0, v18);
  }

  v20 = v0[9];
  v21 = v0[6];

  v22 = v0[1];

  return v22();
}

uint64_t sub_21BC4B848()
{
  v80 = v0;
  v1 = v0[41];
  v2 = v0[39];

  sub_21BE260FC();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[37];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v79 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21BB3D81C(0xD000000000000018, 0x800000021BE581A0, &v79);
    _os_log_impl(&dword_21BB35000, v3, v4, "%s family circle change", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v11 = v0[24];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = v0[36];
    v14 = v0[28];
    v15 = v0[29];
    v16 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_invitationStatus;
    v17 = Strong;
    swift_beginAccess();
    (*(v15 + 16))(v13, v17 + v16, v14);

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v0[35];
  v20 = v0[28];
  v21 = v0[24];
  v22 = *(v0[29] + 56);
  v22(v0[36], v18, 1, v20);
  v22(v19, 1, 1, v20);
  swift_beginAccess();
  v23 = swift_weakLoadStrong();
  if (v23)
  {
    v24 = *(v23 + 24);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v25 = v0[23];
    if (v25)
    {
      v27 = v0[34];
      v26 = v0[35];
      v28 = v0[28];
      v29 = v0[24];
      sub_21BE2909C();
      sub_21BB3A4CC(v26, &qword_27CDB7DF0, &qword_21BE39D50);
      v22(v27, 0, 1, v28);
      sub_21BC5031C(v27, v26);
      swift_beginAccess();
      v30 = swift_weakLoadStrong();
      if (v30)
      {
        v31 = *(v30 + 56);
        *(v30 + 56) = v25;
        v32 = v25;
      }

      v33 = v0[33];
      v34 = v0[28];
      v35 = v0[29];
      sub_21BBA3854(v0[35], v33, &qword_27CDB7DF0, &qword_21BE39D50);
      v36 = (*(v35 + 48))(v33, 1, v34);
      v37 = v0[33];
      if (v36 == 1)
      {

        sub_21BB3A4CC(v37, &qword_27CDB7DF0, &qword_21BE39D50);
      }

      else
      {
        v38 = v0[24];
        (*(v0[29] + 32))(v0[31], v0[33], v0[28]);
        swift_beginAccess();
        v39 = swift_weakLoadStrong();

        if (v39)
        {
          v40 = v0[31];
          v41 = v0[28];
          v42 = v0[29];
          v43 = OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_invitationStatus;
          swift_beginAccess();
          (*(v42 + 24))(v39 + v43, v40, v41);
          swift_endAccess();
        }

        (*(v0[29] + 8))(v0[31], v0[28]);
      }
    }
  }

  v44 = v0[35];
  v45 = v0[28];
  v46 = v0[29];
  v47 = v0[27];
  v48 = *(v0[26] + 48);
  sub_21BBA3854(v0[36], v47, &qword_27CDB7DF0, &qword_21BE39D50);
  sub_21BBA3854(v44, v47 + v48, &qword_27CDB7DF0, &qword_21BE39D50);
  v49 = *(v46 + 48);
  if (v49(v47, 1, v45) == 1)
  {
    if (v49(v47 + v48, 1, v0[28]) == 1)
    {
      sub_21BB3A4CC(v0[27], &qword_27CDB7DF0, &qword_21BE39D50);
      goto LABEL_24;
    }
  }

  else
  {
    v50 = v0[28];
    sub_21BBA3854(v0[27], v0[32], &qword_27CDB7DF0, &qword_21BE39D50);
    v51 = v49(v47 + v48, 1, v50);
    v52 = v0[32];
    if (v51 != 1)
    {
      v63 = v0[29];
      v62 = v0[30];
      v65 = v0[27];
      v64 = v0[28];
      (*(v63 + 32))(v62, v47 + v48, v64);
      sub_21BC5000C(&qword_280BD89D0, MEMORY[0x277D07FC0]);
      v66 = sub_21BE2899C();
      v67 = *(v63 + 8);
      v67(v62, v64);
      v67(v52, v64);
      sub_21BB3A4CC(v65, &qword_27CDB7DF0, &qword_21BE39D50);
      if (v66)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    (*(v0[29] + 8))(v0[32], v0[28]);
  }

  sub_21BB3A4CC(v0[27], &qword_27CDB7DE8, &qword_21BE39D48);
LABEL_21:
  v53 = v0[24];
  swift_beginAccess();
  v54 = swift_weakLoadStrong();
  if (v54)
  {
    v55 = v54;
    v56 = v0[40];
    v57 = v0[25];
    v58 = sub_21BE28DAC();
    (*(*(v58 - 8) + 56))(v57, 1, 1, v58);

    v59 = sub_21BE28D6C();
    v60 = swift_allocObject();
    v61 = MEMORY[0x277D85700];
    v60[2] = v59;
    v60[3] = v61;
    v60[4] = v55;
    sub_21BBA932C(0, 0, v57, &unk_21BE39DA0, v60);
  }

LABEL_24:
  v68 = v0[39];
  v69 = v0[36];
  v71 = v0[33];
  v70 = v0[34];
  v73 = v0[31];
  v72 = v0[32];
  v76 = v0[30];
  v77 = v0[27];
  v78 = v0[25];
  sub_21BB3A4CC(v0[35], &qword_27CDB7DF0, &qword_21BE39D50);
  sub_21BB3A4CC(v69, &qword_27CDB7DF0, &qword_21BE39D50);

  v74 = v0[1];

  return v74();
}

uint64_t sub_21BC4C004(uint64_t a1, uint64_t a2)
{
  v2[9] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = sub_21BE25D6C();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = sub_21BE26A4C();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = sub_21BE28D7C();
  v2[19] = sub_21BE28D6C();
  v11 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC4C19C, v11, v10);
}

uint64_t sub_21BC4C19C()
{
  v57 = v0;
  v1 = v0[19];
  v2 = v0[9];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v0[17];
    sub_21BE260FC();
    v6 = sub_21BE26A2C();
    v7 = sub_21BE28FFC();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[17];
    v10 = v0[14];
    v11 = v0[15];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v56 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_21BB3D81C(0xD000000000000018, 0x800000021BE581A0, &v56);
      _os_log_impl(&dword_21BB35000, v6, v7, "%s family marque change", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x21CF05C50](v13, -1, -1);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    v14 = *(v11 + 8);
    v14(v9, v10);
    v15 = *(v4 + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v17 = v0[2];
    v16 = v0[3];
    v19 = v0[4];
    v18 = v0[5];
    v20 = (v4 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages);
    v21 = *(v4 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages + 16);
    v22 = *(v4 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages + 24);
    v23 = v17 == *(v4 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages) && v16 == *(v4 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_marqueeImages + 8);
    if (v23 || (v24 = v0[2], v25 = v0[3], (sub_21BE2995C())) && (v19 == v21 && v18 == v22 || (sub_21BE2995C()))
    {
      v26 = v0[16];

      sub_21BE260FC();
      v27 = sub_21BE26A2C();
      v28 = sub_21BE28FCC();
      v29 = os_log_type_enabled(v27, v28);
      v31 = v0[15];
      v30 = v0[16];
      v32 = v0[14];
      if (v29)
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_21BB35000, v27, v28, "No real marque changes detected", v33, 2u);
        MEMORY[0x21CF05C50](v33, -1, -1);
      }

      else
      {
      }

      v14(v30, v32);
    }

    else
    {
      v34 = v0[12];
      v35 = v0[13];
      v53 = v0[11];
      v54 = v0[10];
      v55 = v0[18];
      v36 = v20[1];
      v37 = v20[3];
      *v20 = v17;
      v20[1] = v16;
      v20[2] = v19;
      v20[3] = v18;

      sub_21BE25D5C();
      v38 = sub_21BE25D2C();
      v40 = v39;
      (*(v34 + 8))(v35, v53);
      v41 = (v4 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_imageHint);
      v42 = *(v4 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_imageHint + 8);
      *v41 = v38;
      v41[1] = v40;

      v43 = sub_21BE28DAC();
      (*(*(v43 - 8) + 56))(v54, 1, 1, v43);

      v44 = sub_21BE28D6C();
      v45 = swift_allocObject();
      v46 = MEMORY[0x277D85700];
      v45[2] = v44;
      v45[3] = v46;
      v45[4] = v4;
      sub_21BBA932C(0, 0, v54, &unk_21BE39D30, v45);
    }
  }

  v48 = v0[16];
  v47 = v0[17];
  v49 = v0[13];
  v50 = v0[10];

  v51 = v0[1];

  return v51();
}