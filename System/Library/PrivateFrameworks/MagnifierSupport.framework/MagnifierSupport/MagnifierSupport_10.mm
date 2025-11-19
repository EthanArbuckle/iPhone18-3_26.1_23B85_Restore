uint64_t sub_257C8F16C(void *a1, Swift::Int32 a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a1 faceName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_257ECF500();
    v7 = v6;

    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 == 0xE000000000000000;
    }

    if (!v8 && (sub_257ED0640() & 1) == 0)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v19 = [objc_opt_self() bundleForClass_];
      v20 = sub_257ECF4C0();
      v21 = sub_257ECF4C0();
      v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

      sub_257ECF500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_257ED9BD0;
      v24 = MEMORY[0x277D837D0];
      *(v23 + 56) = MEMORY[0x277D837D0];
      v25 = sub_257BFB13C();
      *(v23 + 64) = v25;
      *(v23 + 32) = v5;
      *(v23 + 40) = v7;
      v26 = generateTextToDisplay(depth:longUnitStyle:)(a2, 0);
      *(v23 + 96) = v24;
      *(v23 + 104) = v25;
      *(v23 + 72) = v26;
      goto LABEL_10;
    }
  }

  type metadata accessor for MAGUtilities();
  v9 = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_257ECF4C0();
  v12 = sub_257ECF4C0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_257ED6D30;
  v15 = generateTextToDisplay(depth:longUnitStyle:)(a2, 0);
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_257BFB13C();
  *(v14 + 32) = v15;
LABEL_10:
  v16 = sub_257ECF540();

  return v16;
}

uint64_t sub_257C8F480(void *a1, Swift::Int32 a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = [a1 faceName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_257ECF500();
    v11 = v10;

    if (v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 == 0xE000000000000000;
    }

    if (!v12 && (sub_257ED0640() & 1) == 0)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = [objc_opt_self() bundleForClass_];
      v26 = sub_257ECF4C0();
      v27 = sub_257ECF4C0();
      v28 = [v25 localizedStringForKey:v26 value:0 table:v27];

      sub_257ECF500();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_257EDBBA0;
      v30 = MEMORY[0x277D837D0];
      *(v29 + 56) = MEMORY[0x277D837D0];
      v31 = sub_257BFB13C();
      *(v29 + 64) = v31;
      *(v29 + 32) = v9;
      *(v29 + 40) = v11;
      v32 = generateTextToDisplay(depth:longUnitStyle:)(a2, 0);
      *(v29 + 96) = v30;
      *(v29 + 104) = v31;
      *(v29 + 72) = v32;
      *(v29 + 136) = v30;
      *(v29 + 144) = v31;
      *(v29 + 112) = a3;
      *(v29 + 120) = a4;

      goto LABEL_10;
    }
  }

  type metadata accessor for MAGUtilities();
  v13 = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_257ECF4C0();
  v16 = sub_257ECF4C0();
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257ED9BD0;
  v19 = generateTextToDisplay(depth:longUnitStyle:)(a2, 0);
  v20 = MEMORY[0x277D837D0];
  *(v18 + 56) = MEMORY[0x277D837D0];
  v21 = sub_257BFB13C();
  *(v18 + 32) = v19;
  *(v18 + 96) = v20;
  *(v18 + 104) = v21;
  *(v18 + 64) = v21;
  *(v18 + 72) = a3;
  *(v18 + 80) = a4;

LABEL_10:
  v22 = sub_257ECF540();

  return v22;
}

uint64_t sub_257C8F7CC(uint64_t a1, uint64_t a2, float a3)
{
  v153 = sub_257ECC7D0();
  v142 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v152 = v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v145 = sub_257C96638(a1);
  v150 = v8;
  v143 = type metadata accessor for DetectedDoor(0);
  v144 = a1;
  v9 = (a1 + v143[11]);
  if (*v9)
  {
    v10 = *(v9 + 15);
  }

  else
  {
    v10 = 0.0;
  }

  v11 = *(a2 + 16);
  v149 = *v9;
  if (v11 < 2)
  {
    v147 = 0xE000000000000000;
    v148 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
    v12 = swift_allocObject();
    v151 = xmmword_257ED6D30;
    *(v12 + 16) = xmmword_257ED6D30;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    v15 = sub_257ECF4C0();
    v16 = sub_257ECF4C0();
    v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

    sub_257ECF500();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D83B88];
    *(v18 + 16) = v151;
    v20 = MEMORY[0x277D83C10];
    *(v18 + 56) = v19;
    *(v18 + 64) = v20;
    *(v18 + 32) = v11;
    v21 = sub_257ECF540();
    v23 = v22;

    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_257BFB13C();
    *(v12 + 32) = v21;
    *(v12 + 40) = v23;
    v24 = sub_257ECF540();
    v147 = v25;
    v148 = v24;
  }

  v26 = *(v3 + *(type metadata accessor for MAGOutputEvent(0) + 32));
  v27 = (v26 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedAttributes);
  swift_beginAccess();
  v28 = v27[1];
  v29 = v27[2];
  v164 = *v27;
  *&v165 = v28;
  *(&v165 + 1) = v29;
  v30 = qword_2815447E0;

  if (v30 != -1)
  {
LABEL_55:
    v31 = swift_once();
  }

  v146 = v26;
  v32 = qword_2815447E8;
  MEMORY[0x28223BE20](v31);
  v139 = &v164;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90);
  *&v151 = v32;
  v26 = 0;
  sub_257ECFD50();

  v33 = sub_257C592D0(4u, v159);

  if (v33 && v149 && v10 >= a3 && v9[56] == 1)
  {
    type metadata accessor for MAGUtilities();
    v34 = swift_getObjCClassFromMetadata();
    v35 = objc_opt_self();
    v36 = [v35 bundleForClass_];
    v139 = 0xE000000000000000;
    v37 = sub_257ECC900();
    v39 = v38;

    if (v150)
    {
      goto LABEL_15;
    }
  }

  else
  {
    type metadata accessor for MAGUtilities();
    v34 = swift_getObjCClassFromMetadata();
    v35 = objc_opt_self();
    v40 = [v35 bundleForClass_];
    v139 = 0xE000000000000000;
    v37 = sub_257ECC900();
    v39 = v41;

    if (v150)
    {
LABEL_15:

      v42 = [v35 bundleForClass_];
      v139 = 0xE000000000000000;
      sub_257ECC900();
      v43 = v146;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_257ED6D30;
      v45 = MEMORY[0x277D837D0];
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = sub_257BFB13C();
      v46 = v150;
      *(v44 + 32) = v145;
      *(v44 + 40) = v46;
      v37 = sub_257ECF4D0();
      v39 = v47;

      goto LABEL_17;
    }
  }

  v45 = MEMORY[0x277D837D0];
  v43 = v146;
LABEL_17:
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
  v49 = swift_allocObject();
  v145 = xmmword_257ED9BD0;
  *(v49 + 16) = xmmword_257ED9BD0;
  *(v49 + 56) = v45;
  v50 = sub_257BFB13C();
  v51 = v147;
  *(v49 + 32) = v148;
  *(v49 + 40) = v51;
  *(v49 + 96) = v45;
  *(v49 + 104) = v50;
  *(v49 + 64) = v50;
  *(v49 + 72) = v37;
  *(v49 + 80) = v39;
  v52 = sub_257ECF540();
  v147 = v53;
  v148 = v52;
  v54 = v43 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
  v55 = swift_beginAccess();
  v56 = *(v54 + 8);
  v57 = *(v54 + 16);
  v164 = *v54;
  *&v165 = v56;
  BYTE8(v165) = v57;
  MEMORY[0x28223BE20](v55);
  v139 = &v164;

  sub_257ECFD50();

  if (v159 == 1 && v149)
  {
    v164 = v149;
    v167 = *(v9 + 40);
    v168 = *(v9 + 56);
    v169 = *(v9 + 72);
    v170 = *(v9 + 88);
    v165 = *(v9 + 8);
    v166 = *(v9 + 24);
    sub_257D7634C();
    v60 = v59;
    v61 = v58;
    if ((v59 || v58 != 0xE000000000000000) && (sub_257ED0640() & 1) == 0)
    {
      type metadata accessor for MAGUtilities();
      v62 = swift_getObjCClassFromMetadata();
      v63 = [objc_opt_self() bundleForClass_];
      v64 = sub_257ECF4C0();
      v65 = sub_257ECF4C0();
      v66 = [v63 localizedStringForKey:v64 value:0 table:v65];
      v149 = v50;
      v67 = v48;
      v68 = v66;

      v43 = v146;
      sub_257ECF500();

      v48 = v67;
      v50 = v149;
      v69 = swift_allocObject();
      *(v69 + 16) = v145;
      *(v69 + 56) = v45;
      *(v69 + 64) = v50;
      v70 = v147;
      *(v69 + 32) = v148;
      *(v69 + 40) = v70;
      *(v69 + 96) = v45;
      *(v69 + 104) = v50;
      *(v69 + 72) = v60;
      *(v69 + 80) = v61;
      v71 = sub_257ECF540();
      v147 = v72;
      v148 = v71;
    }
  }

  v73 = v43 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
  v74 = swift_beginAccess();
  v75 = *(v73 + 8);
  v76 = *(v73 + 16);
  *&v159 = *v73;
  *(&v159 + 1) = v75;
  LOBYTE(v160) = v76;
  MEMORY[0x28223BE20](v74);
  v139 = &v159;

  sub_257ECFD50();

  if (LOBYTE(v157[0]) != 1)
  {
    return v148;
  }

  v77 = *(v144 + v143[12]);
  v78 = sub_257C96B18(v77);
  if (v79)
  {
    if (v78 || v79 != 0xE000000000000000)
    {
      *&v151 = v78;
      v80 = v79;
      if ((sub_257ED0640() & 1) == 0)
      {
        type metadata accessor for MAGUtilities();
        v81 = swift_getObjCClassFromMetadata();
        v82 = [objc_opt_self() bundleForClass_];
        v83 = sub_257ECF4C0();
        v84 = sub_257ECF4C0();
        v85 = v48;
        v86 = [v82 localizedStringForKey:v83 value:0 table:v84];

        sub_257ECF500();
        v48 = v85;
        v87 = swift_allocObject();
        *(v87 + 16) = v145;
        *(v87 + 56) = MEMORY[0x277D837D0];
        *(v87 + 64) = v50;
        v88 = v147;
        *(v87 + 32) = v148;
        *(v87 + 40) = v88;
        *(v87 + 96) = MEMORY[0x277D837D0];
        *(v87 + 104) = v50;
        *(v87 + 72) = v151;
        *(v87 + 80) = v80;
        v89 = sub_257ECF540();
        v147 = v90;
        v148 = v89;
      }
    }
  }

  v91 = sub_257C966D8(v77);
  if (!v91)
  {
    return v148;
  }

  v92 = v91;
  v149 = v50;
  v144 = v48;
  v93 = *(v91 + 16);
  if (!v93)
  {
    v95 = 0;
    v97 = 0xE000000000000000;
    goto LABEL_50;
  }

  v94 = 0;
  v95 = 0;
  v150 = (v142 + 8);
  *&v151 = v93;
  v96 = v91 + 32;
  v140[1] = "coration.type.sign";
  v141 = v93 - 1;
  v97 = 0xE000000000000000;
  v142 = v91 + 32;
  do
  {
    v143 = v95;
    v146 = v97;
    v9 = (v96 + 72 * v94);
    v98 = v94;
    while (1)
    {
      if (v98 >= *(v92 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      v157[0] = *v9;
      v99 = *(v9 + 1);
      v100 = *(v9 + 2);
      v101 = *(v9 + 3);
      v158 = *(v9 + 8);
      v157[2] = v100;
      v157[3] = v101;
      v157[1] = v99;
      v102 = memmove(&v159, v9, 0x48uLL);
      v155[2] = v161;
      v155[3] = v162;
      v103 = v159;
      v156 = v163;
      v155[0] = v159;
      v155[1] = v160;
      if (v159)
      {
        break;
      }

      sub_257C241DC(v157, v154);
      sub_257C24238(&v159);
LABEL_37:
      ++v98;
      v9 += 72;
      if (v93 == v98)
      {
        v97 = v146;
        v95 = v143;
        goto LABEL_50;
      }
    }

    v104 = v92;
    MEMORY[0x28223BE20](v102);
    v139 = v155;
    sub_257C241DC(v157, v154);

    v105 = sub_257C82C5C(sub_257C2428C, &v140[-4], v103);

    v106 = sub_257E5B998(v105);

    v107 = [v106 string];

    v108 = sub_257ECF500();
    v110 = v109;

    *&v155[0] = v108;
    *(&v155[0] + 1) = v110;
    v111 = v152;
    sub_257ECC7A0();
    sub_257BDAB08();
    v112 = sub_257ED0110();
    v114 = v113;
    (*v150)(v111, v153);

    if (sub_257ECF5E0() <= 0)
    {
      sub_257C24238(&v159);

      v92 = v104;
      v93 = v151;
      goto LABEL_37;
    }

    v115 = v146;
    v116 = v143;
    if (v98 && sub_257ECF5E0())
    {
      v117 = swift_allocObject();
      *(v117 + 16) = v145;
      v118 = MEMORY[0x277D837D0];
      v119 = v149;
      *(v117 + 56) = MEMORY[0x277D837D0];
      *(v117 + 64) = v119;
      *(v117 + 32) = v116;
      *(v117 + 40) = v115;
      *(v117 + 96) = v118;
      *(v117 + 104) = v119;
      *(v117 + 72) = v112;
      *(v117 + 80) = v114;

      v95 = sub_257ECF540();
      v97 = v120;
      sub_257C24238(&v159);
    }

    else
    {
      v121 = swift_allocObject();
      *(v121 + 16) = v145;
      type metadata accessor for MAGUtilities();
      v122 = swift_getObjCClassFromMetadata();
      v123 = [objc_opt_self() bundleForClass_];
      v140[0] = v123;
      v124 = sub_257ECF4C0();
      v143 = sub_257ECF4C0();
      v125 = [v123 localizedStringForKey:v124 value:0 table:v143];

      v126 = sub_257ECF500();
      v143 = v127;

      v128 = MEMORY[0x277D837D0];
      v129 = v149;
      *(v121 + 56) = MEMORY[0x277D837D0];
      *(v121 + 64) = v129;
      v130 = v143;
      *(v121 + 32) = v126;
      *(v121 + 40) = v130;
      *(v121 + 96) = v128;
      *(v121 + 104) = v129;
      *(v121 + 72) = v112;
      *(v121 + 80) = v114;
      v95 = sub_257ECF540();
      v97 = v131;
      sub_257C24238(&v159);
    }

    v94 = v98 + 1;
    v96 = v142;
    v92 = v104;
    v93 = v151;
  }

  while (v141 != v98);
LABEL_50:

  if (sub_257ECF5E0() >= 1)
  {
    v132 = swift_allocObject();
    *(v132 + 16) = v145;
    v133 = MEMORY[0x277D837D0];
    v135 = v148;
    v134 = v149;
    *(v132 + 56) = MEMORY[0x277D837D0];
    *(v132 + 64) = v134;
    v136 = v147;
    *(v132 + 32) = v135;
    *(v132 + 40) = v136;
    *(v132 + 96) = v133;
    *(v132 + 104) = v134;
    *(v132 + 72) = v95;
    *(v132 + 80) = v97;

    v137 = sub_257ECF540();

    return v137;
  }

  return v148;
}

uint64_t sub_257C907B4(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 48);
  v7 = *(a1 + 16);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v21[0] = *a1;
  v22 = v7;
  v23 = v6;
  v24 = v5;
  v25 = v8;
  v26 = v9;
  v10 = v3;
  sub_257C97430(v21, a2, 0, &v27, a3);
  if (!v28)
  {

    return 0;
  }

  v11 = v30;
  v12 = v31;
  v13 = v32;
  v14 = v29;
  v21[0] = v27;
  v21[1] = v28;

  MEMORY[0x259C72150](8236, 0xE200000000000000);
  v20 = v21[0];
  if (v13)
  {
    type metadata accessor for MAGOutputEvent(0);
    swift_beginAccess();
    v15 = qword_2815447E0;

    if (v15 != -1)
    {
      v16 = swift_once();
    }

    MEMORY[0x28223BE20](v16);
    sub_257ECFD50();

    if (v19 == 1)
    {
      MEMORY[0x259C72150](8236, 0xE200000000000000);
      MEMORY[0x259C72150](v12, v13);
    }
  }

  MEMORY[0x259C72150](v14, v11);

  return v20;
}

uint64_t sub_257C90A14(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  sub_257C97B70(a1, a2, 0, v12, a3);
  if (!v12[1])
  {
    return 0;
  }

  v3 = v12[3];
  v4 = v12[4];
  v5 = v12[5];
  v6 = v12[2];
  v11 = v12[0];

  MEMORY[0x259C72150](8236, 0xE200000000000000);
  if (v5)
  {
    type metadata accessor for MAGOutputEvent(0);
    swift_beginAccess();
    v7 = qword_2815447E0;

    if (v7 != -1)
    {
      v8 = swift_once();
    }

    MEMORY[0x28223BE20](v8);
    sub_257ECFD50();

    if (v10 == 1)
    {
      MEMORY[0x259C72150](8236, 0xE200000000000000);
      MEMORY[0x259C72150](v4, v5);
    }
  }

  MEMORY[0x259C72150](v6, v3);

  return v11;
}

uint64_t sub_257C90C08(uint64_t a1, __n128 a2)
{
  v14 = a2;
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = sub_257C63CD8(*(a1 + 16), 0);
  v6 = sub_257C67308(&v15, v5 + 32, v3, a1);

  sub_257C02520();
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  v15 = v5;
  v7 = sub_257C9AA00(&v15);
  v8 = v15;
  MEMORY[0x28223BE20](v7);
  v12[2] = v2;
  v13 = v14;
  v9 = sub_257C8321C(sub_257C9F1B0, v12, v8);

  v15 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
  sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90);
  v10 = sub_257ECF420();

  return v10;
}

uint64_t sub_257C90DC8(uint64_t a1, int a2)
{
  v61 = a2;
  v60 = sub_257ECC7D0();
  v3 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DetectedTextBlock();
  v55 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E58);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = (&v49 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E60);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v49 - v15;
  v17 = 0;
  v56 = a1;
  v18 = *(a1 + 16);
  v63 = (v8 + 48);
  v64 = (v8 + 56);
  v58 = (v3 + 8);
  v52 = 0;
  v53 = 0xE000000000000000;
  v51 = xmmword_257ED9BD0;
  v57 = v18;
  while (1)
  {
    if (v17 == v18)
    {
      v19 = 1;
      v17 = v18;
      goto LABEL_8;
    }

    if (v17 >= v18)
    {
      break;
    }

    if (__OFADD__(v17, 1))
    {
      goto LABEL_21;
    }

    v20 = v54;
    v21 = v56 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v17;
    v22 = *(v7 + 48);
    *v54 = v17;
    sub_257C9A79C(v21, v20 + v22, type metadata accessor for DetectedTextBlock);
    sub_257C0DD14(v20, v13, &qword_27F8F6E58);
    v19 = 0;
    ++v17;
LABEL_8:
    (*v64)(v13, v19, 1, v7);
    sub_257C0DD14(v13, v16, &qword_27F8F6E60);
    if ((*v63)(v16, 1, v7) == 1)
    {
      return v52;
    }

    v23 = sub_257C9CF58(&v16[*(v7 + 48)], v6, type metadata accessor for DetectedTextBlock);
    if (*&v6[*(v62 + 20)])
    {
      MEMORY[0x28223BE20](v23);
      *(&v49 - 2) = v6;
      v25 = sub_257C82C5C(sub_257C31C98, (&v49 - 4), v24);
      if (v61)
      {
        v26 = sub_257E5B998(v25);
      }

      else
      {
        v26 = sub_257E5B9A4(v25);
      }

      v27 = v26;

      v28 = [v27 string];

      v29 = sub_257ECF500();
      v31 = v30;

      v65 = v29;
      v66 = v31;
      v32 = v59;
      sub_257ECC7A0();
      sub_257BDAB08();
      v33 = sub_257ED0110();
      v35 = v34;
      (*v58)(v32, v60);

      if (sub_257ECF5E0() >= 1)
      {
        v37 = v52;
        v36 = v53;
        if (sub_257ECF5E0() < 1)
        {
          sub_257C9A804(v6, type metadata accessor for DetectedTextBlock);

          v52 = v33;
          v53 = v35;
        }

        else
        {
          type metadata accessor for MAGUtilities();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v52 = v37;
          v53 = v36;
          v39 = [objc_opt_self() bundleForClass_];
          v40 = sub_257ECF4C0();
          v49 = v40;
          v50 = sub_257ECF4C0();
          v41 = [v39 localizedStringForKey:v40 value:0 table:v50];

          v42 = sub_257ECF500();
          v49 = v43;
          v50 = v42;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
          v44 = swift_allocObject();
          *(v44 + 16) = v51;
          v45 = MEMORY[0x277D837D0];
          *(v44 + 56) = MEMORY[0x277D837D0];
          v46 = sub_257BFB13C();
          v47 = v53;
          *(v44 + 32) = v52;
          *(v44 + 40) = v47;
          *(v44 + 96) = v45;
          *(v44 + 104) = v46;
          *(v44 + 64) = v46;
          *(v44 + 72) = v33;
          *(v44 + 80) = v35;
          v52 = sub_257ECF540();
          v53 = v48;

          result = sub_257C9A804(v6, type metadata accessor for DetectedTextBlock);
        }

        v18 = v57;
      }

      else
      {
        sub_257C9A804(v6, type metadata accessor for DetectedTextBlock);

        v18 = v57;
      }
    }

    else
    {
      result = sub_257C9A804(v6, type metadata accessor for DetectedTextBlock);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t MAGOutputEvent.brailleContent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v2 - 8);
  v156 = &v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MAGOutputEvent.EventType(0);
  v5 = MEMORY[0x28223BE20](v4);
  v157 = (&v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v155 = (&v153 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v154 = (&v153 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v153 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v153 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v153 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v153 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v153 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v153 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v153 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v153 - v32;
  v158 = type metadata accessor for MAGOutputEvent(0);
  v34 = v158[5];
  v159 = v1;
  sub_257C9A79C(v1 + v34, v33, type metadata accessor for MAGOutputEvent.EventType);
  v160 = v33;
  v35 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_257C9A79C(v160, v31, type metadata accessor for MAGOutputEvent.EventType);
      v69 = *v31;
      v70 = *(v31 + 2);
      v71 = v158;
      v72 = v159;
      v73 = *(v159 + v158[7]);
      v35 = sub_257C8F16C(v69, v70);
      if ((v73 & 1) == 0)
      {

        goto LABEL_79;
      }

      v74 = *(v72 + v71[6]);
      v75 = [objc_opt_self() sharedInstance];
      v76 = v75;
      if (v74 == 2)
      {
        v77 = [v75 liveRecognitionActivity];

        if (v77)
        {
          v78 = [v77 peopleFeedbacksBraille];

          if (!v78)
          {
            goto LABEL_77;
          }

          goto LABEL_79;
        }

LABEL_65:

        goto LABEL_78;
      }

      v135 = [v75 liveRecognitionPeopleFeedbacks];

      if (!v135)
      {
        goto LABEL_65;
      }

      sub_257BD2C2C(0, &qword_281543DC0);
      sub_257C9CE74();
      v136 = sub_257ECFA70();

      v137 = sub_257ECFAC0();
      v138 = sub_257C409E8(v137, v136);

      if ((v138 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_79;
    case 2u:
      sub_257C9A79C(v160, v28, type metadata accessor for MAGOutputEvent.EventType);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38);
      v52 = *&v28[*(v51 + 48)];
      v53 = *&v28[*(v51 + 64)];
      v54 = v156;
      sub_257C9CF58(v28, v156, type metadata accessor for DetectedDoor);
      if (!*(v52 + 16))
      {
        goto LABEL_49;
      }

      v55 = v158;
      v56 = v159;
      v57 = *(v159 + v158[7]);
      v35 = sub_257C8F7CC(v54, v52, v53);

      if ((v57 & 1) == 0)
      {
        sub_257C9A804(v54, type metadata accessor for DetectedDoor);
        goto LABEL_79;
      }

      v58 = *(v56 + v55[6]);
      v59 = [objc_opt_self() sharedInstance];
      v60 = v59;
      if (v58 == 2)
      {
        v61 = [v59 liveRecognitionActivity];

        if (v61)
        {
          v62 = [v61 doorsFeedbacksBraille];

          sub_257C9A804(v54, type metadata accessor for DetectedDoor);
          if (!v62)
          {
            goto LABEL_77;
          }

          goto LABEL_79;
        }

LABEL_49:
        sub_257C9A804(v54, type metadata accessor for DetectedDoor);
        goto LABEL_77;
      }

      v149 = [v59 liveRecognitionDoorsFeedbacks];

      if (!v149)
      {
        goto LABEL_49;
      }

      sub_257BD2C2C(0, &qword_281543DC0);
      sub_257C9CE74();
      v150 = sub_257ECFA70();

      v151 = sub_257ECFAC0();
      v152 = sub_257C409E8(v151, v150);

      sub_257C9A804(v54, type metadata accessor for DetectedDoor);
      if ((v152 & 1) == 0)
      {
LABEL_77:

LABEL_78:
        v35 = 0;
      }

LABEL_79:
      sub_257C9A804(v160, type metadata accessor for MAGOutputEvent.EventType);
      return v35;
    case 3u:
      sub_257C9A79C(v160, v25, type metadata accessor for MAGOutputEvent.EventType);
      v94 = *v25;
      v93 = *(v25 + 1);
      v95 = *(v25 + 4);
      v96 = v158;
      v97 = v159;
      if ((*(v159 + v158[7]) & 1) == 0)
      {
        if (v93)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
          v127 = swift_allocObject();
          *(v127 + 16) = xmmword_257ED9BD0;
          v128 = MEMORY[0x277D837D0];
          *(v127 + 56) = MEMORY[0x277D837D0];
          v129 = sub_257BFB13C();
          *(v127 + 64) = v129;
          *(v127 + 32) = v94;
          *(v127 + 40) = v93;
          v130 = generateTextToDisplay(depth:longUnitStyle:)(v95, 0);
          *(v127 + 96) = v128;
          *(v127 + 104) = v129;
          *(v127 + 72) = v130;
          v38 = sub_257ECF540();
LABEL_48:
          v35 = v38;
        }

        else
        {
          v35 = 0;
        }

        goto LABEL_79;
      }

      if (v93)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_257ED9BD0;
        v99 = MEMORY[0x277D837D0];
        *(v98 + 56) = MEMORY[0x277D837D0];
        v100 = sub_257BFB13C();
        *(v98 + 64) = v100;
        *(v98 + 32) = v94;
        *(v98 + 40) = v93;
        v101 = generateTextToDisplay(depth:longUnitStyle:)(v95, 0);
        *(v98 + 96) = v99;
        *(v98 + 104) = v100;
        *(v98 + 72) = v101;
        v35 = sub_257ECF540();
      }

      else
      {
        v35 = 0;
      }

      v144 = *(v97 + v96[6]);
      v46 = [objc_opt_self() sharedInstance];
      v47 = v46;
      if (v144 != 2)
      {
LABEL_73:
        v143 = [v46 liveRecognitionFurnitureFeedbacks];
        goto LABEL_74;
      }

LABEL_68:
      v91 = [v46 liveRecognitionActivity];

      if (!v91)
      {
        goto LABEL_77;
      }

      v104 = [v91 furnitureFeedbacksBraille];
      goto LABEL_70;
    case 4u:
      sub_257C9A79C(v160, v22, type metadata accessor for MAGOutputEvent.EventType);
      v80 = *(v22 + 4);
      v79 = *(v22 + 5);
      v81 = *(v22 + 2);
      v166[3] = *(v22 + 3);
      v166[4] = v80;
      v82 = *v22;
      v166[1] = *(v22 + 1);
      v166[2] = v81;
      v166[0] = v82;
      v83 = *(v22 + 12);
      v84 = v158;
      v85 = v159;
      if ((*(v159 + v158[7]) & 1) == 0)
      {
        v125 = *(v22 + 3);
        v163 = *(v22 + 2);
        v164 = v125;
        v165 = *(v22 + 4);
        v126 = *v22;
        v162 = *(v22 + 1);
        v161 = v126;
        v35 = sub_257C907B4(&v161, v83, v79);

        sub_257BE4084(v166, &qword_27F8F9C90);
        goto LABEL_79;
      }

      v86 = *(v22 + 3);
      v163 = *(v22 + 2);
      v164 = v86;
      v165 = *(v22 + 4);
      v87 = *v22;
      v162 = *(v22 + 1);
      v161 = v87;
      v35 = sub_257C907B4(&v161, v83, v79);

      v88 = *(v85 + v84[6]);
      v89 = [objc_opt_self() sharedInstance];
      v90 = v89;
      if (v88 == 2)
      {
        v91 = [v89 liveRecognitionActivity];

        if (v91)
        {
          v92 = [v91 furnitureFeedbacksBraille];
          sub_257BE4084(v166, &qword_27F8F9C90);
          goto LABEL_71;
        }

        sub_257BE4084(v166, &qword_27F8F9C90);
        goto LABEL_77;
      }

      v139 = [v89 liveRecognitionFurnitureFeedbacks];

      if (v139)
      {
        sub_257BD2C2C(0, &qword_281543DC0);
        sub_257C9CE74();
        v140 = sub_257ECFA70();

        v141 = sub_257ECFAC0();
        v142 = sub_257C409E8(v141, v140);
        sub_257BE4084(v166, &qword_27F8F9C90);
        goto LABEL_76;
      }

      sub_257BE4084(v166, &qword_27F8F9C90);
      goto LABEL_78;
    case 5u:
      sub_257C9A79C(v160, v19, type metadata accessor for MAGOutputEvent.EventType);
      v39 = v19->i64[0];
      v40 = v19[1];
      v41 = v19[2].i64[0];
      v42 = v158;
      v43 = v159;
      v44 = *(v159 + v158[7]);
      v35 = sub_257C90A14(v39, v41, v40);

      if ((v44 & 1) == 0)
      {
        goto LABEL_79;
      }

      v45 = *(v43 + v42[6]);
      v46 = [objc_opt_self() sharedInstance];
      v47 = v46;
      if (v45 == 2)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    case 6u:
      sub_257C9A79C(v160, v16, type metadata accessor for MAGOutputEvent.EventType);
      v63 = v16->n128_u64[0];
      v64 = v16[1];
      v65 = v158;
      v66 = v159;
      v67 = *(v159 + v158[7]);
      v35 = sub_257C90C08(v63, v64);

      if ((v67 & 1) == 0)
      {
        goto LABEL_79;
      }

      v68 = *(v66 + v65[6]);
      v46 = [objc_opt_self() sharedInstance];
      v47 = v46;
      if (v68 == 2)
      {
        goto LABEL_68;
      }

      goto LABEL_73;
    case 7u:
      sub_257C9A79C(v160, v13, type metadata accessor for MAGOutputEvent.EventType);
      v35 = *v13;
      if ((*(v159 + v158[7]) & 1) == 0)
      {
        goto LABEL_79;
      }

      v102 = *(v159 + v158[6]);
      v103 = [objc_opt_self() sharedInstance];
      v47 = v103;
      if (v102 != 2)
      {
        v143 = [v103 liveRecognitionSceneFeedbacks];
        goto LABEL_74;
      }

      v91 = [v103 liveRecognitionActivity];

      if (!v91)
      {
        goto LABEL_77;
      }

      v104 = [v91 sceneFeedbacksBraille];
      goto LABEL_70;
    case 8u:
      v105 = v154;
      sub_257C9A79C(v160, v154, type metadata accessor for MAGOutputEvent.EventType);
      v106 = v158;
      v107 = v159;
      v108 = *(v159 + v158[7]);
      v35 = sub_257C90DC8(*v105, 1);

      if ((v108 & 1) == 0)
      {
        goto LABEL_79;
      }

      v109 = *(v107 + v106[6]);
      v110 = [objc_opt_self() sharedInstance];
      v47 = v110;
      if (v109 != 2)
      {
        v143 = [v110 liveRecognitionPointAndSpeakFeedbacks];
LABEL_74:
        v145 = v143;

        if (v145)
        {
          sub_257BD2C2C(0, &qword_281543DC0);
          sub_257C9CE74();
          v146 = sub_257ECFA70();

          v141 = sub_257ECFAC0();
          v142 = sub_257C409E8(v141, v146);
LABEL_76:

          if (v142)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_77;
      }

      v91 = [v110 liveRecognitionActivity];

      if (!v91)
      {
        goto LABEL_77;
      }

      v104 = [v91 pointAndSpeakFeedbacksBraille];
LABEL_70:
      v92 = v104;
LABEL_71:

      if (!v92)
      {
        goto LABEL_77;
      }

      goto LABEL_79;
    case 9u:
      v111 = v155;
      v112 = sub_257C9A79C(v160, v155, type metadata accessor for MAGOutputEvent.EventType);
      v113 = *v111;
      v114 = v159;
      if (!*(v159 + v158[6]))
      {
        goto LABEL_81;
      }

      if (*(v159 + v158[6]) != 1)
      {
        v131 = [objc_opt_self() sharedInstance];
        v132 = [v131 liveRecognitionActivity];

        if (!v132)
        {
          goto LABEL_77;
        }

        v133 = [v132 textFeedbacksBraille];
        if (v133)
        {
          MEMORY[0x28223BE20](v133);
          *(&v153 - 2) = v114;
          v134 = sub_257C833D4(sub_257C9F324, (&v153 - 4), v113);

          *&v166[0] = v134;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
          sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90);
          v35 = sub_257ECF420();

          goto LABEL_79;
        }

        goto LABEL_78;
      }

      if (*(v159 + v158[7]) & 1) == 0 || (v115 = [objc_opt_self() sharedInstance], v116 = objc_msgSend(v115, sel_liveRecognitionTextFeedbacks), v115, v116) && (sub_257BD2C2C(0, &qword_281543DC0), sub_257C9CE74(), v117 = sub_257ECFA70(), v116, v118 = sub_257ECFAC0(), v119 = sub_257C409E8(v118, v117), v118, v112 = , (v119))
      {
LABEL_81:
        MEMORY[0x28223BE20](v112);
        *(&v153 - 2) = v114;
        v148 = sub_257C833D4(sub_257C9F324, (&v153 - 4), v113);

        *&v166[0] = v148;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
        sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90);
        v35 = sub_257ECF420();

        goto LABEL_79;
      }

      goto LABEL_77;
    case 0xAu:
    case 0xBu:
    case 0xCu:
      v36 = v157;
      sub_257C9A79C(v160, v157, type metadata accessor for MAGOutputEvent.EventType);
      v35 = *v36;
      goto LABEL_79;
    case 0xDu:
      v48 = v157;
      sub_257C9A79C(v160, v157, type metadata accessor for MAGOutputEvent.EventType);
      v49 = *v48;
      v50 = [v49 string];
      v35 = sub_257ECF500();

      goto LABEL_79;
    case 0xFu:
      v37 = v157;
      sub_257C9A79C(v160, v157, type metadata accessor for MAGOutputEvent.EventType);
      LOBYTE(v166[0]) = *v37;
      v38 = MAGOutputAnnouncement.displayContent.getter();
      goto LABEL_48;
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x16u:
    case 0x17u:
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v121 = [objc_opt_self() bundleForClass_];
      v122 = sub_257ECF4C0();
      v123 = sub_257ECF4C0();
      v124 = [v121 localizedStringForKey:v122 value:0 table:v123];

      v35 = sub_257ECF500();
      goto LABEL_79;
    default:
      goto LABEL_79;
  }
}

uint64_t MAGOutputEvent.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BD0;
  type metadata accessor for MAGOutputEvent(0);
  *(v0 + 32) = MAGOutputEvent.EventType.description.getter();
  *(v0 + 40) = v1;
  v13 = 0;
  v14 = 0xE000000000000000;
  MEMORY[0x259C72150](0x79726F6765746143, 0xE90000000000003DLL);
  MAGOutputEvent.category.getter(&v12);
  sub_257ED0400();
  v2 = v14;
  *(v0 + 48) = v13;
  *(v0 + 56) = v2;
  MAGOutputEvent.soundEffect.getter(&v13);
  v3 = v13;
  if (v13 != 20)
  {
    v13 = 0x3D646E756F53;
    v14 = 0xE600000000000000;
    v12 = v3;
    v4 = MAGSoundEffect.rawValue.getter();
    MEMORY[0x259C72150](v4);

    v5 = v13;
    v6 = v14;
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    if (v8 >= v7 >> 1)
    {
      v0 = sub_257BFCB3C((v7 > 1), v8 + 1, 1, v0);
    }

    *(v0 + 16) = v8 + 1;
    v9 = v0 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
  }

  v13 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
  sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90);
  v10 = sub_257ECF420();

  return v10;
}

unint64_t MAGOutputEvent.EventType.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257C9A79C(v1, v4, type metadata accessor for MAGOutputEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x616F432072657355;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 5:
      sub_257C9A804(v4, type metadata accessor for MAGOutputEvent.EventType);
      return 0xD000000000000017;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38);

      sub_257C9A804(v4, type metadata accessor for DetectedDoor);
      return 0x74654420726F6F44;
    case 3:
    case 4:
      sub_257C9A804(v4, type metadata accessor for MAGOutputEvent.EventType);
      return 0xD000000000000011;
    case 6:
      sub_257C9A804(v4, type metadata accessor for MAGOutputEvent.EventType);
      return 0xD000000000000026;
    case 7:
      sub_257C9A804(v4, type metadata accessor for MAGOutputEvent.EventType);
      return 0x6143206567616D49;
    case 8:
      sub_257C9A804(v4, type metadata accessor for MAGOutputEvent.EventType);
      return 0x6E6120746E696F50;
    case 9:
      sub_257C9A804(v4, type metadata accessor for MAGOutputEvent.EventType);
      return 0x6465746365746544;
    case 10:
      sub_257C9A804(v4, type metadata accessor for MAGOutputEvent.EventType);
      return 4280662;
    case 11:
      sub_257C9A804(v4, type metadata accessor for MAGOutputEvent.EventType);
      return 0x4768746957415156;
    case 13:
      sub_257C9A804(v4, type metadata accessor for MAGOutputEvent.EventType);
      return 0x706154206B636142;
    case 14:
      return result;
    case 15:
      return 0x65636E756F6E6E41;
    case 16:
      sub_257C9A804(v4, type metadata accessor for MAGOutputEvent.EventType);
      return 0x6570532074736554;
    case 17:
      v7 = 9;
      goto LABEL_28;
    case 18:
      return 0xD000000000000010;
    case 19:
      return 0xD000000000000011;
    case 20:
    case 23:
      v7 = 5;
      goto LABEL_28;
    case 21:
      return 0xD000000000000017;
    case 22:
    case 32:
      return 0xD000000000000016;
    case 24:
      v7 = 11;
      goto LABEL_28;
    case 25:
      return 0xD000000000000010;
    case 26:
      return 0x61635320706F6F4CLL;
    case 27:
      return 0xD000000000000010;
    case 28:
      return 0xD000000000000010;
    case 29:
      return 0xD000000000000028;
    case 30:
      return 0xD00000000000002BLL;
    case 31:
      return 0xD000000000000018;
    case 33:
      return 0xD000000000000013;
    case 34:
      v7 = 10;
LABEL_28:
      result = v7 | 0xD000000000000010;
      break;
    default:
      sub_257C9A804(v4, type metadata accessor for MAGOutputEvent.EventType);
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t MAGOutputEvent.debugDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BD0;
  type metadata accessor for MAGOutputEvent(0);
  *(v0 + 32) = MAGOutputEvent.EventType.description.getter();
  *(v0 + 40) = v1;
  v16 = 0;
  v17 = 0xE000000000000000;
  MEMORY[0x259C72150](0x79726F6765746143, 0xE90000000000003DLL);
  MAGOutputEvent.category.getter(&v15);
  sub_257ED0400();
  v2 = v17;
  *(v0 + 48) = v16;
  *(v0 + 56) = v2;
  MAGOutputEvent.soundEffect.getter(&v16);
  v3 = v16;
  if (v16 != 20)
  {
    v16 = 0x3D646E756F53;
    v17 = 0xE600000000000000;
    LOBYTE(v15) = v3;
    v4 = MAGSoundEffect.rawValue.getter();
    MEMORY[0x259C72150](v4);

    v5 = v16;
    v6 = v17;
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    if (v8 >= v7 >> 1)
    {
      v0 = sub_257BFCB3C((v7 > 1), v8 + 1, 1, v0);
    }

    *(v0 + 16) = v8 + 1;
    v9 = v0 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_257ED02D0();

  v16 = 0x757074754F47414DLL;
  v17 = 0xEF3C746E65764574;
  v10 = sub_257ECCCA0();
  MEMORY[0x259C72150](v10);

  MEMORY[0x259C72150](539828286, 0xE400000000000000);
  v15 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
  sub_257BD2D4C(&qword_27F8F6D70, &qword_27F8F9D90);
  v11 = sub_257ECF420();
  v13 = v12;

  MEMORY[0x259C72150](v11, v13);

  return v16;
}

id MAGOutputEvent.itemIDs.getter()
{
  v1 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v38[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v38[-v12];
  v14 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for MAGOutputEvent(0);
  sub_257C9A79C(v0 + *(v17 + 20), v16, type metadata accessor for MAGOutputEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v24 = *v16;

      if (!v24)
      {
        return 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59E8);
      v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_257ED6D30;
      result = [v24 identifier];
      if (result)
      {
        v27 = result;
        sub_257ECCCD0();

        (*(v5 + 32))(v26 + v25, v8, v4);
        v28 = sub_257C5714C(v26);
        swift_setDeallocating();
        (*(v5 + 8))(v26 + v25, v4);
        swift_deallocClassInstance();

        return v28;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 5)
      {
LABEL_8:
        sub_257C9A804(v16, type metadata accessor for MAGOutputEvent.EventType);
        return 0;
      }

      v35 = *v16;

      v36 = sub_257C834FC(v35);

      v37 = sub_257C5714C(v36);

      return v37;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38);

          sub_257C9CF58(v16, v3, type metadata accessor for DetectedDoor);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59E8);
          v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_257ED6D30;
          (*(v5 + 16))(v20 + v19, v3, v4);
          v21 = sub_257C5714C(v20);
          swift_setDeallocating();
          (*(v5 + 8))(v20 + v19, v4);
          swift_deallocClassInstance();
          sub_257C9A804(v3, type metadata accessor for DetectedDoor);
          return v21;
        }

        goto LABEL_8;
      }

      v23 = *v16;

      if (!v23)
      {
        return 0;
      }
    }

    else
    {
      v23 = *v16;
      if (!*v16)
      {
        return 0;
      }
    }

    v29 = [v23 uuid];
    if (!v29)
    {

      return 0;
    }

    v30 = v29;
    sub_257ECCCD0();

    (*(v5 + 32))(v13, v11, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59E8);
    v31 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_257ED6D30;
    (*(v5 + 16))(v32 + v31, v13, v4);
    v33 = sub_257C5714C(v32);
    swift_setDeallocating();
    v34 = *(v5 + 8);
    v34(v32 + v31, v4);
    swift_deallocClassInstance();

    v34(v13, v4);
    return v33;
  }

  return result;
}

uint64_t MAGOutputEvent.hash(into:)(__int128 *a1)
{
  sub_257ECCCF0();
  sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  v3 = type metadata accessor for MAGOutputEvent(0);
  MAGOutputEvent.EventType.hash(into:)(a1);
  MEMORY[0x259C732E0](*(v1 + *(v3 + 24)));
  MEMORY[0x259C732E0](*(v1 + *(v3 + 28)));
  return MEMORY[0x259C732E0](1);
}

uint64_t MAGOutputEvent.hashValue.getter()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  v1 = type metadata accessor for MAGOutputEvent(0);
  MAGOutputEvent.EventType.hash(into:)(v3);
  MEMORY[0x259C732E0](*(v0 + *(v1 + 24)));
  MEMORY[0x259C732E0](*(v0 + *(v1 + 28)));
  MEMORY[0x259C732E0](1);
  return sub_257ED0800();
}

uint64_t sub_257C93C1C(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  MAGOutputEvent.EventType.hash(into:)(v4);
  MEMORY[0x259C732E0](*(v1 + *(a1 + 24)));
  MEMORY[0x259C732E0](*(v1 + *(a1 + 28)));
  MEMORY[0x259C732E0](1);
  return sub_257ED0800();
}

uint64_t sub_257C93CF0(__int128 *a1, uint64_t a2)
{
  sub_257ECCCF0();
  sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  MAGOutputEvent.EventType.hash(into:)(a1);
  MEMORY[0x259C732E0](*(v2 + *(a2 + 24)));
  MEMORY[0x259C732E0](*(v2 + *(a2 + 28)));
  return MEMORY[0x259C732E0](1);
}

uint64_t sub_257C93DAC(uint64_t a1, uint64_t a2)
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  MAGOutputEvent.EventType.hash(into:)(v5);
  MEMORY[0x259C732E0](*(v2 + *(a2 + 24)));
  MEMORY[0x259C732E0](*(v2 + *(a2 + 28)));
  MEMORY[0x259C732E0](1);
  return sub_257ED0800();
}

void sub_257C93E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = MEMORY[0x28223BE20](v4);
  v69 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v70 = &v56 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v12 = 0;
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v18 = (v9 + 8);
  v67 = a2 + 56;
  v19 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
  v60 = a1;
  v59 = &v56 - v10;
  v58 = a1 + 56;
  v57 = v17;
  v64 = (v9 + 8);
  v65 = a2;
  if (!v16)
  {
LABEL_8:
    v21 = v12;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v17)
      {
        return;
      }

      v23 = *(v13 + 8 * v22);
      ++v21;
      if (v23)
      {
        v61 = (v23 - 1) & v23;
        v62 = v22;
        v20 = __clz(__rbit64(v23)) | (v22 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_7:
  v61 = (v16 - 1) & v16;
  v62 = v12;
  v20 = __clz(__rbit64(v16)) | (v12 << 6);
LABEL_13:
  v24 = *(a1 + 48) + 96 * v20;
  v25 = *v24;
  v26 = *(v24 + 80);
  v27 = *(v24 + 88);
  sub_257ED07B0();
  v28 = v25;

  v29 = v19[273];
  v68 = v28;
  v30 = [v28 v29];
  if (!v30)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v31 = v30;
  sub_257ECCCD0();

  sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  v32 = *v18;
  (*v18)(v11, v4);
  sub_257C9C120(v72, v26);
  sub_257ED07E0();
  v33 = sub_257ED0800();
  v34 = -1 << *(a2 + 32);
  v35 = v33 & ~v34;
  if ((*(v67 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
  {
    v63 = ~v34;
    v66 = v26;
    do
    {
      v36 = *(a2 + 48) + 96 * v35;
      v37 = *(v36 + 80);
      v38 = *(v36 + 88);
      v39 = *v36;

      v40 = [v39 v19[273]];
      if (!v40)
      {
        goto LABEL_32;
      }

      v41 = v40;
      v71 = v39;
      v42 = v70;
      sub_257ECCCD0();

      v43 = sub_257ECCCA0();
      v45 = v44;
      v32(v42, v4);
      v46 = [v68 v19[273]];
      if (!v46)
      {
        goto LABEL_33;
      }

      v47 = v46;
      v48 = v4;
      v49 = v69;
      sub_257ECCCD0();

      v50 = sub_257ECCCA0();
      v52 = v51;
      v53 = v49;
      v4 = v48;
      v32(v53, v48);
      if (v43 == v50 && v45 == v52)
      {
      }

      else
      {
        v54 = sub_257ED0640();

        if ((v54 & 1) == 0)
        {

          a2 = v65;
          goto LABEL_17;
        }
      }

      v55 = sub_257C943E4(v37, v66);

      a2 = v65;
      if ((v55 & 1) != 0 && v38 == v27)
      {

        a1 = v60;
        v11 = v59;
        v12 = v62;
        v13 = v58;
        v17 = v57;
        v18 = v64;
        v19 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
        v16 = v61;
        if (v61)
        {
          goto LABEL_7;
        }

        goto LABEL_8;
      }

LABEL_17:
      v35 = (v35 + 1) & v63;
      v19 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
    }

    while (((*(v67 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0);
  }
}

uint64_t sub_257C943E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      v26 = sub_257ECF3F0();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_257C9E5B4(&qword_27F8F57B8, MEMORY[0x277CC95F0]);
        v31 = sub_257ECF450();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_257C94794(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = MEMORY[0x28223BE20](v4);
  v61 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v62 = &v49 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v12 = 0;
    v13 = *(a1 + 56);
    v51 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v13;
    v50 = (v14 + 63) >> 6;
    v17 = (v9 + 8);
    v58 = a2 + 56;
    v18 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
    v53 = a1;
    v60 = v4;
    v52 = &v49 - v10;
    v57 = a2;
    if (!v16)
    {
LABEL_8:
      v20 = v12;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v50)
        {
          return;
        }

        v22 = *(v51 + 8 * v21);
        ++v20;
        if (v22)
        {
          v54 = (v22 - 1) & v22;
          v55 = v21;
          v19 = __clz(__rbit64(v22)) | (v21 << 6);
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_7:
    v54 = (v16 - 1) & v16;
    v55 = v12;
    v19 = __clz(__rbit64(v16)) | (v12 << 6);
LABEL_13:
    v23 = *(*(a1 + 48) + 80 * v19);
    sub_257ED07B0();
    v24 = v23;
    v25 = v18[273];
    v63 = v24;
    v26 = [v24 v25];
    if (!v26)
    {
LABEL_32:
      __break(1u);
      return;
    }

    v27 = v26;
    sub_257ECCCD0();

    sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
    sub_257ECF400();
    v59 = *v17;
    v59(v11, v4);
    v28 = sub_257ED0800();
    v29 = -1 << *(a2 + 32);
    v30 = v28 & ~v29;
    if ((*(v58 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
    {
      v56 = ~v29;
      do
      {
        v31 = *(*(a2 + 48) + 80 * v30);
        v32 = v18[273];
        v64 = v31;
        v33 = [v31 v32];
        if (!v33)
        {
          goto LABEL_30;
        }

        v34 = v33;
        v35 = v62;
        sub_257ECCCD0();

        v36 = sub_257ECCCA0();
        v38 = v37;
        v40 = v59;
        v39 = v60;
        v59(v35, v60);
        v41 = [v63 v18[273]];
        if (!v41)
        {
          goto LABEL_31;
        }

        v42 = v41;
        v43 = v61;
        sub_257ECCCD0();

        v44 = sub_257ECCCA0();
        v46 = v45;
        v40(v43, v39);
        v47 = v64;
        if (v36 == v44 && v38 == v46)
        {

          a2 = v57;
LABEL_24:

          a1 = v53;
          v16 = v54;
          v4 = v60;
          v11 = v52;
          v12 = v55;
          v18 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
          if (v54)
          {
            goto LABEL_7;
          }

          goto LABEL_8;
        }

        v48 = sub_257ED0640();

        a2 = v57;
        if (v48)
        {
          goto LABEL_24;
        }

        v30 = (v30 + 1) & v56;
        v18 = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
      }

      while (((*(v58 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0);
    }
  }
}

uint64_t sub_257C94C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = MEMORY[0x28223BE20](v4);
  v65 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v66 = &v56 - v9;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v10 = 0;
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v16 = a2 + 56;
  v17 = (v8 + 8);
  v63 = a2 + 56;
  v64 = result;
  v58 = a1 + 56;
  v59 = a1;
  v57 = v15;
  v62 = a2;
  if (v14)
  {
LABEL_7:
    v60 = (v14 - 1) & v14;
    v61 = v10;
    v18 = __clz(__rbit64(v14)) | (v10 << 6);
LABEL_13:
    v22 = (*(a1 + 48) + 96 * v18);
    v23 = v22[1];
    v76 = *v22;
    v77 = v23;
    v25 = v22[3];
    v24 = v22[4];
    v26 = v22[2];
    *&v80[12] = *(v22 + 76);
    v79 = v25;
    *v80 = v24;
    v78 = v26;
    v71[2] = v22[2];
    v71[3] = v22[3];
    v72[0] = v22[4];
    *(v72 + 12) = *(v22 + 76);
    v71[0] = *v22;
    v71[1] = v22[1];
    sub_257ED07B0();
    sub_257C58DDC(&v76, v74);
    FurnitureDetectionResult.hash(into:)(v70);
    v27 = sub_257ED0800();
    v28 = -1 << *(a2 + 32);
    v29 = v27 & ~v28;
    if ((*(v16 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
    {
      v69 = ~v28;
      do
      {
        v30 = (*(a2 + 48) + 96 * v29);
        v31 = v30[1];
        v74[0] = *v30;
        v74[1] = v31;
        v33 = v30[3];
        v32 = v30[4];
        v34 = v30[2];
        *(v75 + 12) = *(v30 + 76);
        v74[3] = v33;
        v75[0] = v32;
        v74[2] = v34;
        memmove(v71, v30, 0x5CuLL);
        v72[4] = v78;
        v72[5] = v79;
        v73[0] = *v80;
        *(v73 + 12) = *&v80[12];
        v72[2] = v76;
        v72[3] = v77;
        v35 = *&v74[0];
        if ((HIDWORD(v74[0]) & 0x80000000) != 0)
        {
          if ((HIDWORD(v76) & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          v36 = *(v74 + 2);
          v37 = *(&v76 + 2);
          v53 = v76;
          sub_257C58DDC(v74, v70);
          sub_257C58DDC(&v76, v70);
          sub_257C58DDC(v74, v70);
          sub_257C93E84(v35, v53);
          v55 = v54;
          sub_257C58E38(v74);
          sub_257BE4084(v71, &qword_27F8F6670);
          if ((v55 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if ((*(&v76 + 1) & 0x8000000000000000) != 0)
          {
LABEL_16:
            sub_257C58DDC(&v76, v70);
            sub_257C58DDC(v74, v70);
            sub_257BE4084(v71, &qword_27F8F6670);
            goto LABEL_17;
          }

          v36 = *(&v75[1] + 2);
          v37 = *&v80[24];
          v67 = *&v80[16];
          v68 = *&v75[1];
          v38 = v76;
          sub_257C58DDC(v74, v70);
          sub_257C58DDC(&v76, v70);
          sub_257C58DDC(v74, v70);
          sub_257C58DDC(&v76, v70);
          sub_257C58DDC(v74, v70);
          result = [v35 identifier];
          if (!result)
          {
            goto LABEL_39;
          }

          v39 = result;
          v40 = v66;
          sub_257ECCCD0();

          v41 = sub_257ECCCA0();
          v43 = v42;
          v44 = *v17;
          v45 = v64;
          (*v17)(v40, v64);
          result = [v38 identifier];
          if (!result)
          {
            goto LABEL_38;
          }

          v46 = result;
          v47 = v65;
          sub_257ECCCD0();

          v48 = sub_257ECCCA0();
          v50 = v49;
          v44(v47, v45);
          if (v41 == v48 && v43 == v50)
          {

            a2 = v62;
          }

          else
          {
            v51 = sub_257ED0640();

            a2 = v62;
            if ((v51 & 1) == 0)
            {
              sub_257BE4084(v71, &qword_27F8F6670);
              sub_257C58E38(v74);
              sub_257C58E38(&v76);
              sub_257C58E38(v74);
              v16 = v63;
              goto LABEL_17;
            }
          }

          v52 = sub_257C943E4(v68, v67);
          sub_257BE4084(v71, &qword_27F8F6670);
          sub_257C58E38(v74);
          sub_257C58E38(&v76);
          sub_257C58E38(v74);
          v16 = v63;
          if ((v52 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if (v36 == v37)
        {
          result = sub_257C58E38(&v76);
          v11 = v58;
          a1 = v59;
          v14 = v60;
          v10 = v61;
          v15 = v57;
          if (!v60)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

LABEL_17:
        v29 = (v29 + 1) & v69;
      }

      while (((*(v16 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
    }

    sub_257C58E38(&v76);
    return 0;
  }

  else
  {
LABEL_8:
    v19 = v10;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v15)
      {
        return 1;
      }

      v21 = *(v11 + 8 * v20);
      ++v19;
      if (v21)
      {
        v60 = (v21 - 1) & v21;
        v61 = v20;
        v18 = __clz(__rbit64(v21)) | (v20 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  return result;
}

uint64_t sub_257C951D8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v8;
  v25 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      sub_257ECF500();
      sub_257ED07B0();
      v27 = v13;
      sub_257ECF5D0();
      v14 = sub_257ED0800();

      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = sub_257ECF500();
        v20 = v19;
        if (v18 == sub_257ECF500() && v20 == v21)
        {

          goto LABEL_24;
        }

        v23 = sub_257ED0640();

        if (v23)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v24;
      result = v25;
      v7 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void MAGOutputEvent.EventType.hash(into:)(__int128 *a1)
{
  v51 = a1;
  v2 = type metadata accessor for DetectedTextBlock();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECCCF0();
  *&v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetectedDoor(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  v16 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257C9A79C(v1, v18, type metadata accessor for MAGOutputEvent.EventType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v37 = *v18;
      MEMORY[0x259C732E0](1);
      sub_257ED07D0();
      if (v37)
      {
        v38 = v37;
        sub_257ECFF60();
      }

      else
      {
        v38 = 0;
      }

      sub_257ED07E0();
      sub_257ECF5D0();

      return;
    case 2u:
      v32 = *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38) + 48)];
      sub_257C9CF58(v18, v15, type metadata accessor for DetectedDoor);
      MEMORY[0x259C732E0](2);
      sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      sub_257ECF400();
      MEMORY[0x259C732E0](*(v32 + 16));
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = v32 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v35 = *(v10 + 72);
        do
        {
          sub_257C9A79C(v34, v13, type metadata accessor for DetectedDoor);
          sub_257ECF400();
          sub_257C9A804(v13, type metadata accessor for DetectedDoor);
          v34 += v35;
          --v33;
        }

        while (v33);
      }

      sub_257ED07E0();
      sub_257C9A804(v15, type metadata accessor for DetectedDoor);
      return;
    case 3u:
      v36 = *(v18 + 1);
      MEMORY[0x259C732E0](3);
      sub_257ED07D0();
      if (v36)
      {
        sub_257ECF5D0();
      }

      sub_257ED07E0();
      return;
    case 4u:
      v25 = *v18;
      v49 = *(v18 + 5);
      v26 = *(v18 + 12);
      v27 = v51;
      MEMORY[0x259C732E0](4);
      if (v25)
      {
        sub_257ED07D0();
        v28 = [v25 identifier];
        if (!v28)
        {
          __break(1u);
          return;
        }

        v29 = v28;
        sub_257ECCCD0();

        sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
        sub_257ECF400();
        (*(v50 + 8))(v8, v6);
      }

      else
      {
        sub_257ED07D0();
      }

      sub_257C9CB6C();
      sub_257ED07D0();
      if (v26)
      {
        sub_257C9C120(v27, v26);
      }

      return;
    case 5u:
      v39 = *v18;
      v50 = *(v18 + 1);
      v40 = *(v18 + 4);
      v41 = v51;
      MEMORY[0x259C732E0](5);
      sub_257C9C73C(v41, v39);

      sub_257C9CB6C();
      if (v40)
      {
        sub_257ED07D0();
        sub_257C9C120(v41, v40);
        goto LABEL_39;
      }

      sub_257ED07D0();
      return;
    case 6u:
      v43 = *v18;
      v50 = *(v18 + 1);
      v44 = v51;
      MEMORY[0x259C732E0](6);
      sub_257C9C34C(v44, v43);

      sub_257C9CB6C();
      return;
    case 7u:
      v22 = 7;
      goto LABEL_38;
    case 8u:
      v45 = *v18;
      MEMORY[0x259C732E0](8);
      MEMORY[0x259C732E0](*(v45 + 16));
      v46 = *(v45 + 16);
      if (v46)
      {
        v47 = v45 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v48 = *(v3 + 72);
        do
        {
          sub_257C9A79C(v47, v5, type metadata accessor for DetectedTextBlock);
          sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
          sub_257ECF400();
          sub_257C9A804(v5, type metadata accessor for DetectedTextBlock);
          v47 += v48;
          --v46;
        }

        while (v46);
      }

      goto LABEL_39;
    case 9u:
      v30 = *v18;
      v31 = v51;
      MEMORY[0x259C732E0](9);
      sub_257C9C990(v31, v30);

      return;
    case 0xAu:
      v22 = 10;
      goto LABEL_38;
    case 0xBu:
      v22 = 11;
      goto LABEL_38;
    case 0xCu:
      v22 = 12;
      goto LABEL_38;
    case 0xDu:
      v42 = *v18;
      MEMORY[0x259C732E0](14);
      sub_257ECFF60();

      return;
    case 0xEu:
      v23 = *v18;
      v24 = 28;
      goto LABEL_22;
    case 0xFu:
      v23 = *v18;
      v24 = 29;
LABEL_22:
      MEMORY[0x259C732E0](v24);
      v21 = v23;
      goto LABEL_52;
    case 0x10u:
      v22 = 32;
LABEL_38:
      MEMORY[0x259C732E0](v22);
      sub_257ECF5D0();
LABEL_39:

      return;
    case 0x11u:
      v21 = 13;
      goto LABEL_52;
    case 0x12u:
      v21 = 15;
      goto LABEL_52;
    case 0x13u:
      v21 = 16;
      goto LABEL_52;
    case 0x14u:
      v21 = 17;
      goto LABEL_52;
    case 0x15u:
      v21 = 18;
      goto LABEL_52;
    case 0x16u:
      v21 = 19;
      goto LABEL_52;
    case 0x17u:
      v21 = 20;
      goto LABEL_52;
    case 0x18u:
      v21 = 21;
      goto LABEL_52;
    case 0x19u:
      v21 = 22;
      goto LABEL_52;
    case 0x1Au:
      v21 = 23;
      goto LABEL_52;
    case 0x1Bu:
      v21 = 24;
      goto LABEL_52;
    case 0x1Cu:
      v21 = 25;
      goto LABEL_52;
    case 0x1Du:
      v21 = 26;
      goto LABEL_52;
    case 0x1Eu:
      v21 = 27;
      goto LABEL_52;
    case 0x1Fu:
      v21 = 30;
      goto LABEL_52;
    case 0x20u:
      v21 = 31;
      goto LABEL_52;
    case 0x21u:
      v21 = 33;
      goto LABEL_52;
    case 0x22u:
      v21 = 34;
LABEL_52:
      MEMORY[0x259C732E0](v21);
      return;
    default:
      v19 = *v18;
      MEMORY[0x259C732E0](0);
      sub_257ED07D0();
      if (v19)
      {
        v20 = v19;
        sub_257ECFF60();
      }

      else
      {
        v20 = 0;
      }

      sub_257ED07E0();

      return;
  }
}

uint64_t MAGOutputEvent.EventType.hashValue.getter()
{
  sub_257ED07B0();
  MAGOutputEvent.EventType.hash(into:)(v1);
  return sub_257ED0800();
}

uint64_t sub_257C95D5C()
{
  sub_257ED07B0();
  MAGOutputEvent.EventType.hash(into:)(v1);
  return sub_257ED0800();
}

uint64_t sub_257C95DA0()
{
  sub_257ED07B0();
  MAGOutputEvent.EventType.hash(into:)(v1);
  return sub_257ED0800();
}

uint64_t sub_257C95DE4()
{
  v1 = *v0;
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88)
  {
    v2 = 1684107369;
  }

  else
  {
    v2 = 0x656E6F687069;
  }

  if (byte_27F8F8D88)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  if (v1 <= 5)
  {
    if (v1 <= 2)
    {
      if (!v1)
      {
        sub_257ED02D0();

        v6 = 0x7665642E65766F6DLL;
LABEL_31:
        MEMORY[0x259C72150](v2, v3);

        return v6;
      }

      sub_257ED02D0();

      if (v1 == 1)
      {
        v4 = 0xD000000000000015;
      }

      else
      {
        v4 = 0xD000000000000012;
      }

LABEL_30:
      v6 = v4;
      goto LABEL_31;
    }

    if (v1 == 3)
    {
      sub_257ED02D0();

      v4 = 0xD000000000000017;
      goto LABEL_30;
    }

    if (v1 != 4)
    {
      sub_257ED02D0();

      v4 = 0xD000000000000016;
      goto LABEL_30;
    }

LABEL_24:
    sub_257ED02D0();

    v4 = 0xD000000000000011;
    goto LABEL_30;
  }

  if (v1 <= 8)
  {
    if (v1 != 6)
    {
      if (v1 != 7)
      {

        return 0x6E69662E65766F6DLL;
      }

      sub_257ED02D0();

      v4 = 0xD000000000000014;
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v1 == 9)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t MAGOutputEvent.UserCoachingInstruction.speechContent.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_257C95DE4();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();

  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_257ECF500();
  v7 = sub_257ECD1A0();
  v8 = MEMORY[0x277D70398];
  a1[3] = v7;
  a1[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_257ECD1B0();
}

uint64_t sub_257C9628C(uint64_t a1)
{
  v9 = type metadata accessor for DetectedTextBlock();
  v10 = sub_257C9E5B4(&unk_27F8FBBD0, type metadata accessor for DetectedTextBlock);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  sub_257C9A79C(a1, boxed_opaque_existential_1, type metadata accessor for DetectedTextBlock);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v4 + 16))(v3, v4);
  v7[3] = sub_257ECD1C0();
  v7[4] = MEMORY[0x277D703A0];
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_257ECD1D0();
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(v7);
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(v6);
  __swift_destroy_boxed_opaque_existential_0(v8);
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(v7);
  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_257C96424@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_257ECD1A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v13 = (*(v12 + 88))(v11, v12);
  if (_s16MagnifierSupport14MAGSpeechUtilsO25shouldIncludeTextInLocale_7enabledSbSS_SbtFZ_0(v9, v10, v13 & 1))
  {

    sub_257ECD1B0();
    sub_257ECCFA0();
    (*(v6 + 8))(v8, v5);
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v20);
    sub_257ECD130();
    sub_257C024BC(v17, v16);
    sub_257ECD180();
    sub_257BE4084(v16, &qword_27F8F6E68);
    __swift_destroy_boxed_opaque_existential_0(v17);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_257ECD180();
    sub_257BE4084(v18, &qword_27F8F6E68);
  }

  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t sub_257C96638(uint64_t a1)
{
  v2 = type metadata accessor for DetectedDoor(0);
  result = 0;
  v4 = a1 + *(v2 + 40);
  if ((*(v4 + 4) & 1) == 0)
  {
    v5 = *v4 * 1000.0;
    if (COERCE_INT(fabs(v5)) > 2139095039)
    {
      __break(1u);
    }

    else if (v5 > -2147500000.0)
    {
      if (v5 < 2147500000.0)
      {
        return generateTextToDisplay(depth:longUnitStyle:)(v5, 1)._countAndFlagsBits;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_257C966D8(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = 0;
      v3 = result + 32;
      v4 = MEMORY[0x277D84F90];
      do
      {
        v5 = v3 + 72 * v2;
        v6 = v2;
        while (1)
        {
          if (v6 >= v1)
          {
            __break(1u);
LABEL_20:
            __break(1u);

            __break(1u);
            return result;
          }

          v21 = *v5;
          v7 = *(v5 + 16);
          v8 = *(v5 + 32);
          v9 = *(v5 + 48);
          v25 = *(v5 + 64);
          v23 = v8;
          v24 = v9;
          v22 = v7;
          v2 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_20;
          }

          if ((BYTE1(v24) & 1) == 0 && *(&v22 + 1) * *&v23 > 0.0009)
          {
            break;
          }

          ++v6;
          v5 += 72;
          if (v2 == v1)
          {
            goto LABEL_17;
          }
        }

        sub_257C241DC(&v21, v20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v4;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_257BF2624(0, *(v4 + 16) + 1, 1);
          v4 = v26;
        }

        v11 = *(v4 + 16);
        v12 = *(v4 + 24);
        v13 = v11 + 1;
        if (v11 >= v12 >> 1)
        {
          v18 = v11 + 1;
          v19 = v11;
          sub_257BF2624((v12 > 1), v11 + 1, 1);
          v11 = v19;
          v13 = v18;
          v4 = v26;
        }

        *(v4 + 16) = v13;
        v14 = v4 + 72 * v11;
        *(v14 + 32) = v21;
        v15 = v22;
        v16 = v23;
        v17 = v24;
        *(v14 + 96) = v25;
        *(v14 + 64) = v16;
        *(v14 + 80) = v17;
        *(v14 + 48) = v15;
      }

      while (v2 != v1);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

LABEL_17:
    *&v21 = v4;
    sub_257ECC3F0();
    sub_257C9A864(&v21);

    return v21;
  }

  return result;
}

uint64_t sub_257C968A0(uint64_t a1, int a2)
{
  v4 = sub_257ECC7D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v28[3] = a2;
    v8 = *(a1 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v29 = MEMORY[0x277D84F90];
      sub_257BF2604(0, v8, 0);
      v9 = v29;
      v10 = (a1 + 32);
      do
      {
        v12 = *v10;
        v10 += 9;
        v11 = v12;
        if (v12 && v11[2])
        {
          v14 = v11[4];
          v13 = v11[5];
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        v29 = v9;
        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_257BF2604((v15 > 1), v16 + 1, 1);
          v9 = v29;
        }

        *(v9 + 16) = v16 + 1;
        v17 = v9 + 16 * v16;
        *(v17 + 32) = v14;
        *(v17 + 40) = v13;
        --v8;
      }

      while (v8);
    }

    v18 = sub_257E5B84C(v9);
    v20 = v19;

    if (v20)
    {
      v29 = v18;
      v30 = v20;
      sub_257ECC7A0();
      sub_257BDAB08();
      v21 = MEMORY[0x277D837D0];
      sub_257ED0110();
      (*(v5 + 8))(v7, v4);
      v22 = sub_257ECF5E0();

      if (v22 > 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_257ED9BD0;
        *(v23 + 56) = v21;
        v24 = sub_257BFB13C();
        *(v23 + 64) = v24;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v25 = sub_257DE86E0();
        *(v23 + 96) = v21;
        *(v23 + 104) = v24;
        *(v23 + 72) = v25;
        *(v23 + 80) = v26;
        return sub_257ECF540();
      }
    }
  }

  return 0;
}

uint64_t sub_257C96B18(uint64_t a1)
{
  v2 = sub_257ECC7D0();
  v103 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v102 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = MEMORY[0x277D84F90];
      do
      {
        v8 = a1 + 32 + 72 * v6;
        v9 = v6;
        while (1)
        {
          if (v9 >= v5)
          {
            __break(1u);
LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

          v105 = *v8;
          v10 = *(v8 + 16);
          v11 = *(v8 + 32);
          v12 = *(v8 + 48);
          v109 = *(v8 + 64);
          v107 = v11;
          v108 = v12;
          v106 = v10;
          v6 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_76;
          }

          if (BYTE1(v108) == 1 && BYTE2(v108) == 3)
          {
            break;
          }

          ++v9;
          v8 += 72;
          if (v6 == v5)
          {
            goto LABEL_18;
          }
        }

        sub_257C241DC(&v105, v104);
        result = swift_isUniquelyReferenced_nonNull_native();
        v110 = v7;
        if ((result & 1) == 0)
        {
          result = sub_257BF2624(0, *(v7 + 16) + 1, 1);
          v7 = v110;
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_257BF2624((v13 > 1), v14 + 1, 1);
          v7 = v110;
        }

        *(v7 + 16) = v14 + 1;
        v15 = v7 + 72 * v14;
        *(v15 + 32) = v105;
        v16 = v106;
        v17 = v107;
        v18 = v108;
        *(v15 + 96) = v109;
        *(v15 + 64) = v17;
        *(v15 + 80) = v18;
        *(v15 + 48) = v16;
      }

      while (v6 != v5);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_18:
  v19 = sub_257C968A0(v7, 3);
  v21 = v20;

  if (a1)
  {
    v22 = *(a1 + 16);
    if (v22)
    {
      v23 = 0;
      v24 = MEMORY[0x277D84F90];
LABEL_21:
      v25 = a1 + 32 + 72 * v23;
      v26 = v23;
      while (v26 < v22)
      {
        v105 = *v25;
        v27 = *(v25 + 16);
        v28 = *(v25 + 32);
        v29 = *(v25 + 48);
        v109 = *(v25 + 64);
        v107 = v28;
        v108 = v29;
        v106 = v27;
        v23 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_78;
        }

        if (BYTE1(v108) == 1 && BYTE2(v108) == 1)
        {
          sub_257C241DC(&v105, v104);
          result = swift_isUniquelyReferenced_nonNull_native();
          v110 = v24;
          v100 = v21;
          if ((result & 1) == 0)
          {
            result = sub_257BF2624(0, *(v24 + 16) + 1, 1);
            v24 = v110;
          }

          v31 = *(v24 + 16);
          v30 = *(v24 + 24);
          if (v31 >= v30 >> 1)
          {
            result = sub_257BF2624((v30 > 1), v31 + 1, 1);
            v24 = v110;
          }

          *(v24 + 16) = v31 + 1;
          v32 = v24 + 72 * v31;
          *(v32 + 32) = v105;
          v33 = v106;
          v34 = v107;
          v35 = v108;
          *(v32 + 96) = v109;
          *(v32 + 64) = v34;
          *(v32 + 80) = v35;
          *(v32 + 48) = v33;
          v21 = v100;
          if (v23 != v22)
          {
            goto LABEL_21;
          }

          goto LABEL_35;
        }

        ++v26;
        v25 += 72;
        if (v23 == v22)
        {
          goto LABEL_35;
        }
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    v24 = 0;
  }

LABEL_35:
  v36 = sub_257C968A0(v24, 1);
  v38 = v37;

  v101 = v2;
  if (a1)
  {
    v39 = *(a1 + 16);
    if (v39)
    {
      v40 = 0;
      v41 = MEMORY[0x277D84F90];
LABEL_38:
      v42 = a1 + 32 + 72 * v40;
      v43 = v40;
      while (v43 < v39)
      {
        v105 = *v42;
        v44 = *(v42 + 16);
        v45 = *(v42 + 32);
        v46 = *(v42 + 48);
        v109 = *(v42 + 64);
        v107 = v45;
        v108 = v46;
        v106 = v44;
        v40 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_80;
        }

        if (BYTE1(v108) == 1 && BYTE2(v108) == 2)
        {
          v99 = v38;
          v47 = v36;
          sub_257C241DC(&v105, v104);
          result = swift_isUniquelyReferenced_nonNull_native();
          v110 = v41;
          v48 = v21;
          if ((result & 1) == 0)
          {
            result = sub_257BF2624(0, *(v41 + 16) + 1, 1);
            v41 = v110;
          }

          v50 = *(v41 + 16);
          v49 = *(v41 + 24);
          if (v50 >= v49 >> 1)
          {
            result = sub_257BF2624((v49 > 1), v50 + 1, 1);
            v41 = v110;
          }

          *(v41 + 16) = v50 + 1;
          v51 = v41 + 72 * v50;
          *(v51 + 32) = v105;
          v52 = v106;
          v53 = v107;
          v54 = v108;
          *(v51 + 96) = v109;
          *(v51 + 64) = v53;
          *(v51 + 80) = v54;
          *(v51 + 48) = v52;
          v21 = v48;
          v36 = v47;
          v38 = v99;
          if (v40 != v39)
          {
            goto LABEL_38;
          }

          goto LABEL_52;
        }

        ++v43;
        v42 += 72;
        if (v40 == v39)
        {
          goto LABEL_52;
        }
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v41 = MEMORY[0x277D84F90];
  }

  else
  {
    v41 = 0;
  }

LABEL_52:
  v55 = sub_257C968A0(v41, 2);
  v57 = v56;

  if (a1)
  {
    v58 = v38;
    v59 = v36;
    v60 = v21;
    v61 = *(a1 + 16);
    if (v61)
    {
      v62 = 0;
      v63 = a1 + 32;
      v64 = MEMORY[0x277D84F90];
LABEL_55:
      v65 = (v63 + 72 * v62);
      v66 = v62;
      while (v66 < v61)
      {
        v105 = *v65;
        v67 = v65[1];
        v68 = v65[2];
        v69 = v65[3];
        v109 = *(v65 + 8);
        v107 = v68;
        v108 = v69;
        v106 = v67;
        v62 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_82;
        }

        if (BYTE1(v108) == 1 && !BYTE2(v108))
        {
          sub_257C241DC(&v105, v104);
          result = swift_isUniquelyReferenced_nonNull_native();
          v110 = v64;
          v98 = v19;
          if ((result & 1) == 0)
          {
            result = sub_257BF2624(0, *(v64 + 16) + 1, 1);
            v64 = v110;
          }

          v71 = *(v64 + 16);
          v70 = *(v64 + 24);
          v72 = v71 + 1;
          if (v71 >= v70 >> 1)
          {
            v99 = v71 + 1;
            result = sub_257BF2624((v70 > 1), v71 + 1, 1);
            v72 = v99;
            v64 = v110;
          }

          *(v64 + 16) = v72;
          v73 = v64 + 72 * v71;
          *(v73 + 32) = v105;
          v74 = v106;
          v75 = v107;
          v76 = v108;
          *(v73 + 96) = v109;
          *(v73 + 64) = v75;
          *(v73 + 80) = v76;
          *(v73 + 48) = v74;
          v19 = v98;
          if (v62 != v61)
          {
            goto LABEL_55;
          }

          goto LABEL_69;
        }

        ++v66;
        v65 = (v65 + 72);
        if (v62 == v61)
        {
          goto LABEL_69;
        }
      }

LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      return result;
    }

    v64 = MEMORY[0x277D84F90];
LABEL_69:
    v21 = v60;
    v36 = v59;
    v38 = v58;
  }

  else
  {
    v64 = 0;
  }

  v77 = sub_257C968A0(v64, 0);
  v79 = v78;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBE50;
  *(inited + 32) = v19;
  *(inited + 40) = v21;
  *(inited + 48) = v77;
  *(inited + 56) = v79;
  *(inited + 64) = v36;
  *(inited + 72) = v38;
  *(inited + 80) = v55;
  *(inited + 88) = v57;
  v81 = sub_257E5B84C(inited);
  v83 = v82;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  swift_arrayDestroy();
  if (v83)
  {
    *&v105 = v81;
    *(&v105 + 1) = v83;
    v84 = v102;
    sub_257ECC7A0();
    sub_257BDAB08();
    v85 = MEMORY[0x277D837D0];
    sub_257ED0110();
    (*(v103 + 8))(v84, v101);
    v86 = sub_257ECF5E0();

    if (v86 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_257ED9BD0;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v89 = [objc_opt_self() bundleForClass_];
      v90 = sub_257ECF4C0();
      v91 = sub_257ECF4C0();
      v92 = [v89 localizedStringForKey:v90 value:0 table:v91];

      v93 = sub_257ECF500();
      v95 = v94;

      *(v87 + 56) = v85;
      v96 = sub_257BFB13C();
      *(v87 + 32) = v93;
      *(v87 + 40) = v95;
      *(v87 + 96) = v85;
      *(v87 + 104) = v96;
      *(v87 + 64) = v96;
      *(v87 + 72) = v81;
      *(v87 + 80) = v83;
      return sub_257ECF540();
    }
  }

  return 0;
}

void sub_257C97430(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>, float32x4_t a5@<Q0>)
{
  v66 = a2;
  v72 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v71 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v63 - v9;
  v11 = *a1;
  v12 = *(a1 + 32);
  v70 = *(a1 + 16);
  v69 = v12;
  v13 = *(a1 + 64);
  v68 = *(a1 + 48);
  v67 = v13;
  v14 = [v11 type];
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v14;
  v16 = sub_257ECF500();
  v18 = v17;
  if (v16 == sub_257ECF500() && v18 == v19)
  {
  }

  else
  {
    v21 = sub_257ED0640();

    if ((v21 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  *(&v75 + 1) = &type metadata for MFFeatureFlags;
  *&v76 = sub_257C73100();
  LOBYTE(v73) = 1;
  v22 = sub_257ECCF60();
  __swift_destroy_boxed_opaque_existential_0(&v73);
  if ((v22 & 1) == 0)
  {
    v62 = 0;
    v35 = 0;
    countAndFlagsBits = 0;
    object = 0;
    v59 = 0;
    v61 = 0;
LABEL_20:
    *a4 = v62;
    a4[1] = v35;
    a4[2] = countAndFlagsBits;
    a4[3] = object;
    a4[4] = v59;
    a4[5] = v61;
    return;
  }

LABEL_10:
  v65 = a3;
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_257ED02D0();

  v73 = 0xD000000000000019;
  v74 = 0x8000000257EFC6E0;
  v23 = [v11 type];
  if (v23)
  {
    v24 = v23;
    v25 = sub_257ECF500();
    v27 = v26;

    MEMORY[0x259C72150](v25, v27);

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v64 = objc_opt_self();
    v29 = [v64 bundleForClass_];
    v30 = sub_257ECF4C0();

    v31 = sub_257ECF4C0();
    v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

    sub_257ECF500();
    v33 = sub_257ECF540();
    v35 = v34;

    v73 = v11;
    v75 = v70;
    v76 = v69;
    v77 = v68;
    v78 = v67;
    sub_257E4FDE8(v72);
    v36 = objc_opt_self();
    v37 = [v36 meters];
    sub_257BD2C2C(0, &qword_27F8F58F0);
    sub_257ECC740();
    v38 = [v36 millimeters];
    sub_257ECC770();

    sub_257ECC750();
    v40 = round(v39);
    (*(v71 + 8))(v10, v8);
    if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v40 > -2147483650.0)
    {
      if (v40 < 2147483650.0)
      {
        v72.i64[0] = v33;
        v41 = generateTextToDisplay(depth:longUnitStyle:)(v40, v65 & 1);
        countAndFlagsBits = v41._countAndFlagsBits;
        object = v41._object;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED9BD0;
        v45 = *MEMORY[0x277D36D38];
        *(inited + 32) = *MEMORY[0x277D36D38];
        v46 = *MEMORY[0x277D36D68];
        *(inited + 40) = *MEMORY[0x277D36D68];
        v47 = v45;
        v48 = v46;
        v49 = [v11 type];
        v73 = v49;
        MEMORY[0x28223BE20](v49);
        *(&v63 - 2) = &v73;
        v50 = sub_257DF8E30(sub_257C5883C, (&v63 - 4), inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F65D0);
        swift_arrayDestroy();

        v51 = v66;
        if ((v50 & 1) != 0 && v66)
        {
          v52 = [v64 bundleForClass_];
          v53 = sub_257ECF4C0();
          v54 = sub_257ECF4C0();
          v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

          sub_257ECF500();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_257ED6D30;
          v57 = *(v51 + 16);
          v58 = MEMORY[0x277D83C10];
          *(v56 + 56) = MEMORY[0x277D83B88];
          *(v56 + 64) = v58;
          *(v56 + 32) = v57;
          v59 = sub_257ECF540();
          v61 = v60;
        }

        else
        {
          v59 = 0;
          v61 = 0;
        }

        v62 = v72.i64[0];
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257C97B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>, float32x4_t a5@<Q0>)
{
  v169 = a5;
  v9 = sub_257ECDA30();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v164 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v163 = &v155 - v14;
  MEMORY[0x28223BE20](v13);
  v162 = &v155 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v155 - v18;
  v168 = a1;
  v20 = sub_257C82D88(a1, v169);
  v21 = *(v20 + 16);
  if (!v21)
  {

    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_50;
  }

  v22 = *(v20 + 32);
  v23 = v21 - 1;
  v159 = v9;
  v156 = a2;
  v157 = 0;
  v166 = v20;
  if (v23)
  {
    v31 = vdup_laneq_s32(v169, 2);
    v32 = (v20 + 48);
    do
    {
      v33 = *v32++;
      v34 = vsub_f32(*v33.i8, *v169.f32);
      v35 = vmul_f32(v34, v34);
      v36 = vsub_f32(*v22.i8, *v169.f32);
      v37 = vmul_f32(v36, v36);
      v38 = vsub_f32(vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v22, v22, 8uLL)), v31);
      v39 = vsqrt_f32(vadd_f32(vmul_f32(v38, v38), vadd_f32(vzip1_s32(v35, v37), vzip2_s32(v35, v37))));
      v22 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vdup_lane_s32(v39, 1), v39), 0)), v33, v22);
      --v23;
    }

    while (v23);
  }

  v25 = objc_opt_self();
  v26 = [v25 meters];
  sub_257BD2C2C(0, &qword_27F8F58F0);
  sub_257ECC740();
  v40 = [v25 millimeters];
  sub_257ECC770();

  sub_257ECC750();
  v42 = round(v41);
  (*(v17 + 8))(v19, v16);
  if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v42 <= -2147483650.0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v42 >= 2147483650.0)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    result = sub_257ED06C0();
    __break(1u);
    return result;
  }

  v160 = v10;
  v165 = a4;
  v43 = generateTextToDisplay(depth:longUnitStyle:)(v42, a3 & 1);
  countAndFlagsBits = v43._countAndFlagsBits;
  object = v43._object;
  v44 = v168;
  v45 = v168 + 56;
  v46 = 1 << *(v168 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v168 + 56);
  v49 = (v46 + 63) >> 6;

  v50 = 0;
  v51 = 0;
  v52 = MEMORY[0x277D84F98];
  v169.i64[0] = v45;
  while (v48)
  {
LABEL_19:
    v54 = (*(v44 + 48) + 80 * (__clz(__rbit64(v48)) | (v51 << 6)));
    v171[0] = *v54;
    v55 = v54[4];
    v57 = v54[1];
    v56 = v54[2];
    v171[3] = v54[3];
    v171[4] = v55;
    v171[1] = v57;
    v171[2] = v56;
    v58 = *&v171[0];
    sub_257C588B0(v171, v170);
    v59 = [v58 type];
    if (!v59)
    {
      goto LABEL_59;
    }

    v26 = v59;
    sub_257BBD88C(v50);
    v60 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v170[0] = v60;
    v25 = sub_257C09E74(v26);
    v63 = v60[2];
    v64 = (v62 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      __break(1u);
      goto LABEL_56;
    }

    v66 = v62;
    if (v60[3] >= v65)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v52 = v60;
        if (v62)
        {
          goto LABEL_13;
        }

LABEL_27:
        sub_257EC7E60(v25, v26, MEMORY[0x277D84FA0], v52);
        v69 = v26;
        goto LABEL_13;
      }

      sub_257C07E70();
      v52 = *&v170[0];
      if ((v66 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_257EC2F60(v65, isUniquelyReferenced_nonNull_native);
      type metadata accessor for OU3DObjectType(0);
      v52 = *&v170[0];
      v67 = sub_257C09E74(v26);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_60;
      }

      v25 = v67;
      v44 = v168;
      if ((v66 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_13:
    v48 &= v48 - 1;
    sub_257C588B0(v171, v170);
    sub_257C4BBBC(v170, v171);

    sub_257C5890C(v171);
    v50 = sub_257C9A3C8;
    v45 = v169.i64[0];
  }

  while (1)
  {
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v53 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v53);
    ++v51;
    if (v48)
    {
      v51 = v53;
      goto LABEL_19;
    }
  }

  sub_257C44114(v70);
  v72 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E78);
  v73 = v52;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBE50;
  v75 = *MEMORY[0x277D36D30];
  *(inited + 32) = *MEMORY[0x277D36D30];
  v76 = *MEMORY[0x277D36D78];
  v77 = *MEMORY[0x277D36D58];
  *(inited + 40) = *MEMORY[0x277D36D78];
  *(inited + 48) = v77;
  v78 = *MEMORY[0x277D36D28];
  *(inited + 56) = *MEMORY[0x277D36D28];
  v79 = v75;
  v80 = v76;
  v81 = v77;
  v82 = v78;
  v83 = sub_257C55DD0(inited);
  swift_setDeallocating();
  type metadata accessor for OU3DObjectType(0);
  swift_arrayDestroy();
  sub_257C9A3D8(v83, v72);
  v85 = v84;

  if (v85)
  {

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v87 = [objc_opt_self() bundleForClass_];
    v88 = sub_257ECF4C0();
    v89 = sub_257ECF4C0();
    v90 = [v87 localizedStringForKey:v88 value:0 table:v89];

    sub_257ECF500();
    v25 = sub_257ECF540();
    v26 = v91;

    goto LABEL_32;
  }

  v158 = v73;
  v92 = swift_initStackObject();
  v169 = xmmword_257ED9BD0;
  *(v92 + 16) = xmmword_257ED9BD0;
  v93 = *MEMORY[0x277D36D88];
  *(v92 + 32) = *MEMORY[0x277D36D88];
  v94 = *MEMORY[0x277D36D38];
  *(v92 + 40) = *MEMORY[0x277D36D38];
  v95 = v93;
  v96 = v94;
  v97 = sub_257C55DD0(v92);
  swift_setDeallocating();
  swift_arrayDestroy();
  v98 = sub_257C951D8(v72, v97);

  if (v98)
  {
    v99 = v96;

    v100 = v158;
    v101 = v160;
    if (v158[2])
    {
      v102 = sub_257C09E74(v95);
      if ((v103 & 1) != 0 && *(*(v100[7] + 8 * v102) + 16) == 1)
      {
        if (v100[2])
        {
          v104 = sub_257C09E74(v99);
          if (v105)
          {
            v168 = *(v100[7] + 8 * v104);
            type metadata accessor for MAGUtilities();
            v106 = swift_getObjCClassFromMetadata();
            v107 = objc_opt_self();

            v108 = [v107 bundleForClass_];
            v109 = sub_257ECF4C0();
            v110 = sub_257ECF4C0();
            v111 = [v108 localizedStringForKey:v109 value:0 table:v110];

            v166 = sub_257ECF500();
            v164 = v112;

            v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
            v114 = swift_allocObject();
            v114[1] = v169;
            v163 = v107;
            v169.i64[0] = v106;
            v115 = [v107 bundleForClass_];
            v116 = sub_257ECF4C0();
            v117 = sub_257ECF4C0();
            v118 = [v115 localizedStringForKey:v116 value:0 table:v117];

            sub_257ECF500();
            v157 = v113;
            v119 = swift_allocObject();
            v155 = xmmword_257ED6D30;
            *(v119 + 16) = xmmword_257ED6D30;
            v120 = *(v168 + 16);

            v121 = MEMORY[0x277D83C10];
            *(v119 + 56) = MEMORY[0x277D83B88];
            *(v119 + 64) = v121;
            *(v119 + 32) = v120;
            v122 = sub_257ECF540();
            v124 = v123;

            v125 = MEMORY[0x277D837D0];
            v114[3].i64[1] = MEMORY[0x277D837D0];
            v126 = sub_257BFB13C();
            v114[2].i64[0] = v122;
            v114[2].i64[1] = v124;
            v114[6].i64[0] = v125;
            v114[6].i64[1] = v126;
            v127 = countAndFlagsBits;
            v114[4].i64[0] = v126;
            v114[4].i64[1] = v127;
            v114[5].i64[0] = object;

            v25 = sub_257ECF540();
            v26 = v128;

            v129 = v156;
            if (v156)
            {
              v130 = [v163 bundleForClass_];
              v131 = sub_257ECF4C0();
              v132 = sub_257ECF4C0();
              v133 = [v130 localizedStringForKey:v131 value:0 table:v132];

              sub_257ECF500();
              v134 = swift_allocObject();
              *(v134 + 16) = v155;
              v135 = *(v129 + 16);
              *(v134 + 56) = MEMORY[0x277D83B88];
              *(v134 + 64) = v121;
              *(v134 + 32) = v135;
              v29 = sub_257ECF540();
              v30 = v136;

              result = sub_257BBD88C(v50);
              goto LABEL_33;
            }

LABEL_52:
            v151 = v162;
            sub_257ECD4A0();
            v152 = sub_257ECDA20();
            v153 = sub_257ECFBE0();
            if (os_log_type_enabled(v152, v153))
            {
              v154 = swift_slowAlloc();
              *v154 = 0;
              _os_log_impl(&dword_257BAC000, v152, v153, "Error: expected occupancy information for a table and chairs group", v154, 2u);
              MEMORY[0x259C74820](v154, -1, -1);
            }

            (*(v160 + 8))(v151, v159);
LABEL_32:

            result = sub_257BBD88C(v50);
            v29 = 0;
            v30 = 0;
LABEL_33:
            a4 = v165;
            v27 = countAndFlagsBits;
            v28 = object;
            goto LABEL_50;
          }
        }
      }
    }

    v147 = v163;
    sub_257ECD4A0();
    v148 = sub_257ECDA20();
    v149 = sub_257ECFBE0();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_257BAC000, v148, v149, "Error: expected exactly one table and at least one chair.", v150, 2u);
      MEMORY[0x259C74820](v150, -1, -1);
    }

    (*(v101 + 8))(v147, v159);
  }

  else
  {

    v137 = v164;
    sub_257ECD4A0();

    v138 = sub_257ECDA20();
    v139 = sub_257ECFBE0();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *&v170[0] = v141;
      *v140 = 136315138;
      v142 = sub_257C82FF8(v72);

      v143 = MEMORY[0x259C72340](v142, MEMORY[0x277D837D0]);
      v145 = v144;

      v146 = sub_257BF1FC8(v143, v145, v170);

      *(v140 + 4) = v146;
      _os_log_impl(&dword_257BAC000, v138, v139, "Error: group of %s not yet supported.", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v141);
      MEMORY[0x259C74820](v141, -1, -1);
      MEMORY[0x259C74820](v140, -1, -1);
    }

    else
    {
    }

    (*(v160 + 8))(v137, v159);
  }

  result = sub_257BBD88C(v50);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  a4 = v165;
LABEL_50:
  *a4 = v25;
  a4[1] = v26;
  a4[2] = v27;
  a4[3] = v28;
  a4[4] = v29;
  a4[5] = v30;
  return result;
}

uint64_t sub_257C98A6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, float32x4_t a3@<Q0>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 32);
  v9 = *(a1 + 48);
  v8 = *(a1 + 64);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  if (v5 < 0)
  {
    v24 = *(a1 + 48);
    v25 = *(a1 + 64);
    v22 = *(a1 + 16);
    v23 = *(a1 + 32);
    v18 = sub_257C3F96C(*a1);
    v19 = sub_257C56FFC(v18);

    v33 = v4;
    v34 = v5;
    v35 = v22;
    v36 = v23;
    v37 = v24;
    v38 = v25;
    v39 = v10;
    v40 = v11;
    v20 = sub_257D81B70();
    v14 = sub_257C90A14(v19, v20, a3);
    v16 = v21;
  }

  else
  {
    *&v27 = *a1;
    v28 = v7;
    v29 = v6;
    v30 = v9;
    v31 = v8;
    v33 = v4;
    v34 = v5;
    v35 = v7;
    v36 = v6;
    v37 = v9;
    v38 = v8;
    v39 = v10;
    v40 = v11;
    v12 = v4;
    v13 = sub_257D81B70();
    v14 = sub_257C907B4(&v27, v13, a3);
    v16 = v15;

    v32[2] = v29;
    v32[3] = v30;
    v32[4] = v31;
    v32[0] = v27;
    v32[1] = v28;
    result = sub_257BE4084(v32, &qword_27F8F9C90);
  }

  *a2 = v14;
  a2[1] = v16;
  return result;
}

uint64_t sub_257C98BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v12 = a7[1];
  v13 = a7[3];
  v14 = a7[5];
  if (v12)
  {
    v15 = *a7;

    if (v15 == a1 && v12 == a2)
    {
    }

    else
    {
      v17 = sub_257ED0640();

      if ((v17 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_257ECD180();
    sub_257BE4084(&v41, &qword_27F8F6E68);
    if (!a6)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

LABEL_7:
  v44[3] = sub_257ECD1A0();
  v44[4] = MEMORY[0x277D70398];
  __swift_allocate_boxed_opaque_existential_1(v44);

  sub_257ECD1B0();
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(v44);
  sub_257ECD130();
  sub_257C024BC(&v38, v36);
  sub_257ECD180();
  sub_257BE4084(v36, &qword_27F8F6E68);
  __swift_destroy_boxed_opaque_existential_0(&v38);
  __swift_destroy_boxed_opaque_existential_0(&v41);
  if (!a6)
  {
LABEL_20:
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_257ECD180();
    sub_257BE4084(&v38, &qword_27F8F6E68);
    v25 = a3;
    v24 = a4;
    if (!v12)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

LABEL_11:
  v18 = *(v7 + *(type metadata accessor for MAGOutputEvent(0) + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
  swift_beginAccess();
  v19 = *(v18 + 8);
  v20 = *(v18 + 16);
  *&v41 = *v18;
  *(&v41 + 1) = v19;
  LOBYTE(v42) = v20;
  v21 = qword_2815447E0;

  if (v21 != -1)
  {
    v22 = swift_once();
  }

  MEMORY[0x28223BE20](v22);
  sub_257ECFD50();

  if (v38 != 1)
  {

    goto LABEL_20;
  }

  if (v12)
  {
    v23 = a7[4];

    if (v14)
    {
      if (v23 == a5 && v14 == a6)
      {

LABEL_23:

        v43 = 0;
        v41 = 0u;
        v42 = 0u;
        sub_257ECD180();
        sub_257BE4084(&v41, &qword_27F8F6E68);
        goto LABEL_25;
      }

      v26 = sub_257ED0640();

      if (v26)
      {
        goto LABEL_23;
      }
    }
  }

  *(&v39 + 1) = sub_257ECD1A0();
  v40 = MEMORY[0x277D70398];
  __swift_allocate_boxed_opaque_existential_1(&v38);
  sub_257ECD1B0();
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(&v38);
  sub_257ECD130();
  sub_257C024BC(v36, v35);
  sub_257ECD180();
  sub_257BE4084(v35, &qword_27F8F6E68);
  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(&v41);
LABEL_25:
  sub_257ECD130();
  sub_257C024BC(v36, v35);
  sub_257ECD180();
  sub_257BE4084(v35, &qword_27F8F6E68);
  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(&v38);
  v25 = a3;
  v24 = a4;
  if (!v12)
  {
    goto LABEL_31;
  }

LABEL_26:
  v27 = a7[2];

  if (v27 != v25 || v13 != v24)
  {
    v28 = sub_257ED0640();

    if (v28)
    {
      goto LABEL_30;
    }

LABEL_31:
    *(&v39 + 1) = sub_257ECD1A0();
    v40 = MEMORY[0x277D70398];
    __swift_allocate_boxed_opaque_existential_1(&v38);

    sub_257ECD1B0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(&v38);
    sub_257ECD130();
    sub_257C024BC(v35, v34);
    sub_257ECD180();
    sub_257BE4084(v34, &qword_27F8F6E68);
    __swift_destroy_boxed_opaque_existential_0(v35);
    __swift_destroy_boxed_opaque_existential_0(v36);
    goto LABEL_32;
  }

LABEL_30:
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_257ECD180();
  sub_257BE4084(v36, &qword_27F8F6E68);
LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_257EDBBA0;
  sub_257C024BC(v44, v29 + 32);
  sub_257C024BC(&v41, v29 + 72);
  sub_257C024BC(&v38, v29 + 112);
  MEMORY[0x259C6FC60](v29);

  __swift_destroy_boxed_opaque_existential_0(&v38);
  __swift_destroy_boxed_opaque_existential_0(&v41);
  return __swift_destroy_boxed_opaque_existential_0(v44);
}

uint64_t sub_257C991C0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v3 = a2;
  v4 = a1;
  v5 = a1[2];
  if (v5 != 1)
  {
    v80 = 0;
    memset(v79, 0, sizeof(v79));
    sub_257ECD180();
    v19 = sub_257BE4084(v79, &qword_27F8F6E68);
    goto LABEL_38;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[9];
  v55 = a1[8];
  v59 = a1;
  v11 = a2[2];
  v66 = v9;
  v67 = v6;
  v65 = v8;
  *&v63 = 0;
  if (v11 != 1)
  {
    v18 = a2;
    v60 = 0;
    v53 = 0;
    v57 = 0;
    v58 = 0;
LABEL_10:

    v12 = 0;
    LODWORD(v64) = 1;
    v3 = v18;
    goto LABEL_11;
  }

  v54 = v10;
  v56 = 1;
  v13 = a2[4];
  v12 = a2[5];
  v15 = a2[6];
  v14 = a2[7];
  v16 = a2[8];
  v17 = a2[9];
  v18 = a2;

  v57 = v15;
  v58 = v14;
  v60 = v17;
  v53 = v16;
  if (!v12)
  {
    v9 = v66;
    v5 = v56;
    v10 = v54;
    goto LABEL_10;
  }

  sub_257C9F2C0(v13, v12);

  if (v13 == v7 && v12 == v67)
  {

    v5 = v56;
    v9 = v66;
    v3 = v18;
    goto LABEL_14;
  }

  v20 = sub_257ED0640();

  v5 = v56;
  v9 = v66;
  v3 = v18;
  if (v20)
  {
LABEL_14:
    v56 = v12;
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    sub_257ECD180();
    sub_257BE4084(&v81, &qword_27F8F6E68);
    LODWORD(v64) = 0;
    v10 = v54;
    v4 = v59;
    if (!v54)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  LODWORD(v64) = 0;
  v10 = v54;
LABEL_11:
  v4 = v59;
  v56 = v12;
  *(&v77 + 1) = sub_257ECD1A0();
  v78 = MEMORY[0x277D70398];
  __swift_allocate_boxed_opaque_existential_1(&v76);

  sub_257ECD1B0();
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(&v76);
  sub_257ECD130();
  sub_257C024BC(&v76, &v72);
  sub_257ECD180();
  sub_257BE4084(&v72, &qword_27F8F6E68);
  __swift_destroy_boxed_opaque_existential_0(&v76);
  __swift_destroy_boxed_opaque_existential_0(&v81);
  if (!v10)
  {
LABEL_24:
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    sub_257ECD180();
    sub_257BE4084(&v81, &qword_27F8F6E68);
    if (v64)
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

LABEL_15:
  v59 = v3;
  v21 = *(v62 + *(type metadata accessor for MAGOutputEvent(0) + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
  swift_beginAccess();
  v22 = *(v21 + 8);
  v23 = *(v21 + 16);
  *&v81 = *v21;
  *(&v81 + 1) = v22;
  LOBYTE(v82) = v23;
  v24 = qword_2815447E0;

  if (v24 != -1)
  {
    v25 = swift_once();
  }

  MEMORY[0x28223BE20](v25);
  v52 = &v81;
  sub_257ECFD50();

  if (v76 != 1)
  {

    v9 = v66;
    v3 = v59;
    goto LABEL_24;
  }

  v9 = v66;
  v3 = v59;
  if ((v64 & 1) == 0)
  {

    if (v60)
    {
      if (v53 == v55 && v60 == v10)
      {

LABEL_28:

        v78 = 0;
        v76 = 0u;
        v77 = 0u;
        sub_257ECD180();
        sub_257BE4084(&v76, &qword_27F8F6E68);
        goto LABEL_30;
      }

      v26 = sub_257ED0640();

      if (v26)
      {
        goto LABEL_28;
      }
    }
  }

  *(&v82 + 1) = sub_257ECD1A0();
  v83 = MEMORY[0x277D70398];
  __swift_allocate_boxed_opaque_existential_1(&v81);
  sub_257ECD1B0();
  sub_257ECD130();
  __swift_destroy_boxed_opaque_existential_0(&v81);
  sub_257ECD130();
  sub_257C024BC(&v72, v69);
  sub_257ECD180();
  sub_257BE4084(v69, &qword_27F8F6E68);
  __swift_destroy_boxed_opaque_existential_0(&v72);
  __swift_destroy_boxed_opaque_existential_0(&v76);
LABEL_30:
  sub_257ECD130();
  sub_257C024BC(&v72, v69);
  sub_257ECD180();
  sub_257BE4084(v69, &qword_27F8F6E68);
  __swift_destroy_boxed_opaque_existential_0(&v72);
  __swift_destroy_boxed_opaque_existential_0(&v81);
  if (v64)
  {
    goto LABEL_36;
  }

LABEL_31:

  if (v57 != v65 || v58 != v9)
  {
    v27 = sub_257ED0640();

    if (v27)
    {
      goto LABEL_35;
    }

LABEL_36:

    *(&v73 + 1) = sub_257ECD1A0();
    v74 = MEMORY[0x277D70398];
    __swift_allocate_boxed_opaque_existential_1(&v72);
    sub_257ECD1B0();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(&v72);
    sub_257ECD130();
    sub_257C024BC(v69, v68);
    sub_257ECD180();
    sub_257BE4084(v68, &qword_27F8F6E68);
    __swift_destroy_boxed_opaque_existential_0(v69);
    __swift_destroy_boxed_opaque_existential_0(&v81);
    goto LABEL_37;
  }

LABEL_35:

  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  sub_257ECD180();
  sub_257BE4084(&v81, &qword_27F8F6E68);
LABEL_37:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_257EDBBA0;
  sub_257C024BC(v79, v28 + 32);
  sub_257C024BC(&v76, v28 + 72);
  sub_257C024BC(&v72, v28 + 112);
  MEMORY[0x259C6FC60](v69, v28);

  sub_257C024BC(v69, v68);
  sub_257ECD180();
  sub_257BE4084(v68, &qword_27F8F6E68);
  __swift_destroy_boxed_opaque_existential_0(v69);
  __swift_destroy_boxed_opaque_existential_0(&v72);
  __swift_destroy_boxed_opaque_existential_0(&v76);
  v19 = __swift_destroy_boxed_opaque_existential_0(v79);
LABEL_38:
  MEMORY[0x28223BE20](v19);
  v52 = v62;
  if (sub_257C9A1A0(v3, sub_257C9F2A0, &v51, v4))
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    sub_257ECD180();
    sub_257BE4084(&v76, &qword_27F8F6E68);
    goto LABEL_57;
  }

  if (v5)
  {
    v29 = v5;
    v67 = sub_257ECD1A0();
    v30 = (v4 + 72);
    v31 = MEMORY[0x277D84F90];
    v63 = xmmword_257EDBBA0;
    while (1)
    {
      v66 = v31;
      v32 = *(v30 - 3);
      v33 = *v30;
      v65 = *(v30 - 1);
      *(&v77 + 1) = v67;
      v78 = MEMORY[0x277D70398];
      __swift_allocate_boxed_opaque_existential_1(&v76);

      swift_bridgeObjectRetain_n();

      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v76);
      if (!v33)
      {
        goto LABEL_48;
      }

      v64 = v32;
      v34 = *(v62 + *(type metadata accessor for MAGOutputEvent(0) + 32)) + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
      swift_beginAccess();
      v35 = *(v34 + 8);
      v36 = *(v34 + 16);
      *&v76 = *v34;
      *(&v76 + 1) = v35;
      LOBYTE(v77) = v36;
      v37 = qword_2815447E0;

      if (v37 != -1)
      {
        v38 = swift_once();
      }

      MEMORY[0x28223BE20](v38);
      v52 = &v76;
      sub_257ECFD50();

      if (v72 != 1)
      {
        break;
      }

      *(&v77 + 1) = v67;
      v78 = MEMORY[0x277D70398];
      __swift_allocate_boxed_opaque_existential_1(&v76);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(&v76);
      sub_257ECD130();
      sub_257C024BC(v69, v68);
      sub_257ECD180();
      sub_257BE4084(v68, &qword_27F8F6E68);
      __swift_destroy_boxed_opaque_existential_0(v69);
      __swift_destroy_boxed_opaque_existential_0(&v72);

LABEL_49:
      v70 = v67;
      v71 = MEMORY[0x277D70398];
      __swift_allocate_boxed_opaque_existential_1(v69);
      sub_257ECD1B0();
      sub_257ECD130();
      __swift_destroy_boxed_opaque_existential_0(v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00);
      v39 = swift_allocObject();
      *(v39 + 16) = v63;
      sub_257C024BC(v79, v39 + 32);
      sub_257C024BC(&v76, v39 + 72);
      sub_257C024BC(&v72, v39 + 112);
      MEMORY[0x259C6FC60](v69, v39);

      v31 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_257BFDA78(0, v31[2] + 1, 1, v31);
        v75 = v31;
      }

      v42 = v31[2];
      v41 = v31[3];
      if (v42 >= v41 >> 1)
      {
        v31 = sub_257BFDA78((v41 > 1), v42 + 1, 1, v31);
        v75 = v31;
      }

      v30 += 6;
      __swift_destroy_boxed_opaque_existential_0(&v72);
      __swift_destroy_boxed_opaque_existential_0(&v76);
      __swift_destroy_boxed_opaque_existential_0(v79);
      v43 = v70;
      v44 = v71;
      v45 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
      MEMORY[0x28223BE20](v45);
      v47 = &v53 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v48 + 16))(v47);
      sub_257C9D038(v42, v47, &v75, v43, v44);
      __swift_destroy_boxed_opaque_existential_0(v69);
      if (!--v29)
      {
        goto LABEL_56;
      }
    }

LABEL_48:
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    sub_257ECD180();
    sub_257BE4084(&v72, &qword_27F8F6E68);

    goto LABEL_49;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_56:
  MEMORY[0x259C6FC40](&v76, v31);

  sub_257ECD130();
  sub_257C024BC(&v72, v69);
  sub_257ECD180();
  sub_257BE4084(v69, &qword_27F8F6E68);
  __swift_destroy_boxed_opaque_existential_0(&v72);
  __swift_destroy_boxed_opaque_existential_0(&v76);
LABEL_57:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A00);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_257ED9BD0;
  sub_257C024BC(&v81, v49 + 32);
  sub_257C024BC(v79, v49 + 72);
  MEMORY[0x259C6FC60](v49);

  __swift_destroy_boxed_opaque_existential_0(v79);
  return __swift_destroy_boxed_opaque_existential_0(&v81);
}

uint64_t sub_257C99FA0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v13 = a1[4];
  v4 = a1[5];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_257ED0640() & 1) == 0 || (v2 != v6 || v3 != v5) && (sub_257ED0640() & 1) == 0)
  {
    v11 = 0;
    return v11 & 1;
  }

  type metadata accessor for MAGOutputEvent(0);
  swift_beginAccess();
  v9 = qword_2815447E0;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  MEMORY[0x28223BE20](v10);
  sub_257ECFD50();

  if (v14 != 1)
  {
    goto LABEL_14;
  }

  v11 = (v4 | v8) == 0;
  if (v4 && v8)
  {
    if (v13 != v7 || v4 != v8)
    {
      v11 = sub_257ED0640();
      return v11 & 1;
    }

LABEL_14:
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_257C9A1A0(uint64_t result, uint64_t (*a2)(void *, void *), uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v27 = *(a4 + 16);
  v5 = *(result + 16);
  v25 = a4 + 32;
  v6 = (result + 72);
  while (1)
  {
    if (v4 == v27)
    {
      if (!v5)
      {
        return 1;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v35 = 0;
      v11 = 0;
      v12 = v27;
      goto LABEL_8;
    }

    if (v4 >= v27)
    {
      break;
    }

    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_22;
    }

    v13 = (v25 + 48 * v4);
    v8 = v13[4];
    v7 = v13[5];
    v10 = v13[2];
    v9 = v13[3];
    v11 = *v13;
    v35 = v13[1];

    if (!v5)
    {
      if (v35)
      {
LABEL_17:
        v23 = v11;
        v24 = v35;
        goto LABEL_18;
      }

      return 1;
    }

LABEL_8:
    v29 = v12;
    v30 = v5;
    v14 = v7;
    v15 = *v6;
    v31 = *(v6 - 1);
    v16 = v6;
    v19 = v6 - 3;
    v18 = *(v6 - 3);
    v17 = v19[1];
    v20 = *(v16 - 5);
    v21 = *(v16 - 4);
    v28 = v16;

    if (!v35)
    {
      if (v21)
      {
        v23 = v20;
        v24 = v21;
LABEL_18:
        sub_257C9CF08(v23, v24);
        return 0;
      }

      return 1;
    }

    if (!v21)
    {
      goto LABEL_17;
    }

    v33[5] = v15;
    v34[0] = v11;
    v34[1] = v35;
    v34[2] = v10;
    v34[3] = v9;
    v34[4] = v8;
    v34[5] = v14;
    v33[0] = v20;
    v33[1] = v21;
    v33[2] = v18;
    v33[3] = v17;
    v33[4] = v31;
    v22 = a2(v34, v33);

    result = 0;
    if (!v32)
    {
      v4 = v29;
      v5 = v30 - 1;
      v6 = v28 + 6;
      if (v22)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_257C9A3D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    v24 = v4;
    v25 = v2;
    v23 = v8;
    if (v7)
    {
      while (1)
      {
        v11 = v10;
LABEL_10:
        if (!*(a1 + 16))
        {
          break;
        }

        v12 = *(*(v2 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));
        sub_257ECF500();
        sub_257ED07B0();
        v26 = v12;
        sub_257ECF5D0();
        v13 = sub_257ED0800();

        v14 = -1 << *(a1 + 32);
        v15 = v13 & ~v14;
        if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
LABEL_24:

          return;
        }

        v7 &= v7 - 1;
        v16 = ~v14;
        while (1)
        {
          v17 = sub_257ECF500();
          v19 = v18;
          if (v17 == sub_257ECF500() && v19 == v20)
          {

            goto LABEL_22;
          }

          v22 = sub_257ED0640();

          if (v22)
          {
            break;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

LABEL_22:
        v10 = v11;
        v4 = v24;
        v2 = v25;
        v8 = v23;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

LABEL_26:
    }

    else
    {
LABEL_7:
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v8)
        {
          goto LABEL_26;
        }

        v7 = *(v4 + 8 * v11);
        ++v10;
        if (v7)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }
}

__n128 sub_257C9A628@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 32);
  v9 = *(a1 + 48);
  v8 = *(a1 + 64);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  if (v5 < 0)
  {
    v22 = *(a1 + 48);
    v24 = *(a1 + 64);
    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v16 = sub_257C3F96C(*a1);
    v17 = sub_257C56FFC(v16);

    v32 = v4;
    v33 = v5;
    v34 = v20;
    v35 = v21;
    v36 = v22;
    v37 = v24;
    v38 = v10;
    v39 = v11;
    v18 = sub_257D81B70();
    sub_257C97B70(v17, v18, 1, &v27, a3);
    v23 = v27;
    v26 = v28;
    v15 = *(&v29 + 1);
    v14 = v29;
  }

  else
  {
    *&v27 = *a1;
    v28 = v7;
    v29 = v6;
    v30 = v9;
    v31 = v8;
    v32 = v4;
    v33 = v5;
    v34 = v7;
    v35 = v6;
    v36 = v9;
    v37 = v8;
    v38 = v10;
    v39 = v11;
    v12 = v4;
    v13 = sub_257D81B70();
    sub_257C97430(&v27, v13, 1, v40, a3);
    v23 = v40[0];
    v26 = v40[1];
    v14 = v41;
    v15 = v42;
  }

  result = v26;
  *a2 = v23;
  *(a2 + 16) = v26;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_257C9A79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C9A804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257C9A864(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C66FBC(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  result = sub_257ED05F0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 104;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (1.0 - *(v12 + 2) >= 1.0 - *(v12 - 7))
          {
            break;
          }

          v13 = v12 - 72;
          v24 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v28 = *(v12 + 8);
          v26 = v15;
          v27 = v16;
          v25 = v14;
          *(v12 + 8) = *(v12 - 1);
          v17 = *(v12 - 24);
          *(v12 + 2) = *(v12 - 40);
          *(v12 + 3) = v17;
          v18 = *(v12 - 56);
          *v12 = *(v12 - 72);
          *(v12 + 1) = v18;
          *v13 = v24;
          v19 = v28;
          v20 = v27;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v20;
          *(v13 + 8) = v19;
          *(v13 + 1) = v21;
          v12 = v13;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 72;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_257ECF850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_257C9AC54(&v24, v23, v29, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_257C9AA00(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C66FD0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_257C9AA6C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_257C9AA6C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_257ED05F0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_257ECF850();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_257C9B278(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_257C9AB64(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_257C9AB64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 96 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      result = v8 - 8;
      if (*(v8 + 12) >= 0)
      {
        v9 = 88;
      }

      else
      {
        v9 = 8;
      }

      v10 = *(v8 + v9);
      if (*(v8 - 84) >= 0)
      {
        v11 = (v8 - 8);
      }

      else
      {
        v11 = (v8 - 88);
      }

      if (v10 >= *v11)
      {
LABEL_4:
        ++a3;
        v5 += 96;
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

      v12 = (v8 - 96);
      v19 = *(v8 + 32);
      v20 = *(v8 + 48);
      *v21 = *(v8 + 64);
      *&v21[12] = *(v8 + 76);
      v17 = *v8;
      v18 = *(v8 + 16);
      v13 = *(v8 - 48);
      *(v8 + 32) = *(v8 - 64);
      *(v8 + 48) = v13;
      v14 = *(v8 - 16);
      *(v8 + 64) = *(v8 - 32);
      *(v8 + 80) = v14;
      v15 = *(v8 - 80);
      *v8 = *(v8 - 96);
      *(v8 + 16) = v15;
      v12[2] = v19;
      v12[3] = v20;
      v12[4] = *v21;
      *(v12 + 76) = *&v21[12];
      v8 -= 96;
      *v12 = v17;
      v12[1] = v18;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_257C9AC54(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v87 = *v87;
    if (!v87)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_257C66E20(v7);
      v7 = result;
    }

    v78 = v7 + 16;
    v79 = *(v7 + 2);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = &v7[16 * v79];
        v81 = *v80;
        v82 = &v78[2 * v79];
        v83 = v82[1];
        sub_257C9B924((*a3 + 72 * *v80), (*a3 + 72 * *v82), (*a3 + 72 * v83), v87);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_112;
        }

        if (v79 - 2 >= *v78)
        {
          goto LABEL_113;
        }

        *v80 = v81;
        *(v80 + 1) = v83;
        v84 = *v78 - v79;
        if (*v78 < v79)
        {
          goto LABEL_114;
        }

        v79 = *v78 - 1;
        result = memmove(v82, v82 + 2, 16 * v84);
        *v78 = v79;
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 72 * v6 + 16);
      v10 = 72 * v8;
      v11 = *a3 + 72 * v8;
      v12 = 1.0 - v9;
      v13 = 1.0 - *(v11 + 16);
      v14 = v8 + 2;
      v15 = (v11 + 160);
      while (v5 != v14)
      {
        v16 = *v15;
        v15 += 9;
        v17 = 1.0 - v16 >= 1.0 - v9;
        ++v14;
        v9 = v16;
        if ((((v12 < v13) ^ v17) & 1) == 0)
        {
          v6 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_117;
      }

      if (v8 < v6)
      {
        v18 = 72 * v6 - 72;
        v19 = v6;
        v85 = v8;
        do
        {
          if (v8 != --v19)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v20 = v21 + v18;
            v93 = *(v21 + v10 + 32);
            v95 = *(v21 + v10 + 48);
            v97 = *(v21 + v10 + 64);
            v89 = *(v21 + v10);
            v91 = *(v21 + v10 + 16);
            result = memmove((v21 + v10), (v21 + v18), 0x48uLL);
            *(v20 + 32) = v93;
            *(v20 + 48) = v95;
            *(v20 + 64) = v97;
            *v20 = v89;
            *(v20 + 16) = v91;
          }

          ++v8;
          v18 -= 72;
          v10 += 72;
        }

        while (v8 < v19);
        v5 = a3[1];
        v8 = v85;
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_116;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_118;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_257BFCB00(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v32 = *(v7 + 2);
    v31 = *(v7 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      result = sub_257BFCB00((v31 > 1), v32 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v33;
    v34 = &v7[16 * v32];
    *(v34 + 4) = v8;
    *(v34 + 5) = v6;
    v35 = *v87;
    if (!*v87)
    {
      goto LABEL_125;
    }

    if (v32)
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
          v37 = *(v7 + 4);
          v38 = *(v7 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_103;
          }

          v53 = &v7[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v7[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_110;
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

        v63 = &v7[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_105;
        }

        v66 = &v7[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_108;
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
LABEL_99:
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

        v75 = *&v7[16 * v74 + 32];
        v76 = *&v7[16 * v36 + 40];
        sub_257C9B924((*a3 + 72 * v75), (*a3 + 72 * *&v7[16 * v36 + 32]), (*a3 + 72 * v76), v35);
        if (v4)
        {
        }

        if (v76 < v75)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_257C66E20(v7);
        }

        if (v74 >= *(v7 + 2))
        {
          goto LABEL_100;
        }

        v77 = &v7[16 * v74];
        *(v77 + 4) = v75;
        *(v77 + 5) = v76;
        result = sub_257C66D94(v36);
        v33 = *(v7 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v7[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_101;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_102;
      }

      v48 = &v7[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_104;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v7[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_111;
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
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 72 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (1.0 - *(v26 + 16) >= 1.0 - *(v26 - 56))
    {
LABEL_29:
      ++v6;
      v23 += 72;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = v26 - 72;
    v94 = *(v26 + 32);
    v96 = *(v26 + 48);
    v98 = *(v26 + 64);
    v90 = *v26;
    v92 = *(v26 + 16);
    v28 = *(v26 - 24);
    *(v26 + 32) = *(v26 - 40);
    *(v26 + 48) = v28;
    *(v26 + 64) = *(v26 - 8);
    v29 = *(v26 - 56);
    *v26 = *(v26 - 72);
    *(v26 + 16) = v29;
    *(v27 + 64) = v98;
    *(v27 + 32) = v94;
    *(v27 + 48) = v96;
    v26 -= 72;
    *v27 = v90;
    *(v27 + 16) = v92;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_257C9B278(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v92;
    if (!*v92)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_257C66E20(v7);
      v7 = result;
    }

    v86 = *(v7 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = *&v7[16 * v86];
        v88 = *&v7[16 * v86 + 24];
        sub_257C9BBC4((*a3 + 96 * v87), (*a3 + 96 * *&v7[16 * v86 + 16]), (*a3 + 96 * v88), v8);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_257C66E20(v7);
        }

        if (v86 - 2 >= *(v7 + 2))
        {
          goto LABEL_131;
        }

        v89 = &v7[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        result = sub_257C66D94(v86 - 1);
        v86 = *(v7 + 2);
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = 8;
  while (1)
  {
    v9 = v6++;
    if (v6 < v5)
    {
      v10 = *a3 + 96 * v6;
      v11 = 96 * v9;
      v12 = *a3 + 96 * v9;
      v13 = (v12 + 8);
      if (*(v10 + 12) >= 0)
      {
        v14 = 88;
      }

      else
      {
        v14 = 8;
      }

      v15 = *(v10 + v14);
      if (*(v12 + 12) >= 0)
      {
        v13 = (v12 + 88);
      }

      v16 = *v13;
      v17 = v9 + 2;
      v18 = (v12 + 204);
      while (v5 != v17)
      {
        if (*v18 >= 0)
        {
          v19 = 22;
        }

        else
        {
          v19 = 2;
        }

        v20 = *&v18[v19 - 3];
        if (*(v18 - 24) >= 0)
        {
          v21 = (v18 - 5);
        }

        else
        {
          v21 = (v18 - 25);
        }

        ++v17;
        v18 += 24;
        if (v15 < v16 == v20 >= *v21)
        {
          v6 = v17 - 1;
          if (v15 >= v16)
          {
            goto LABEL_31;
          }

          goto LABEL_22;
        }
      }

      v6 = v5;
      if (v15 >= v16)
      {
        goto LABEL_31;
      }

LABEL_22:
      if (v6 < v9)
      {
        goto LABEL_134;
      }

      if (v9 < v6)
      {
        v22 = 96 * v6 - 96;
        v23 = v6;
        v90 = v9;
        do
        {
          if (v9 != --v23)
          {
            v25 = *a3;
            if (!*a3)
            {
              goto LABEL_140;
            }

            v24 = (v25 + v22);
            v98 = *(v25 + v11 + 32);
            v100 = *(v25 + v11 + 48);
            *v102 = *(v25 + v11 + 64);
            *&v102[12] = *(v25 + v11 + 76);
            v94 = *(v25 + v11);
            v96 = *(v25 + v11 + 16);
            result = memmove((v25 + v11), (v25 + v22), 0x60uLL);
            v24[2] = v98;
            v24[3] = v100;
            v24[4] = *v102;
            *(v24 + 76) = *&v102[12];
            *v24 = v94;
            v24[1] = v96;
          }

          ++v9;
          v22 -= 96;
          v11 += 96;
        }

        while (v9 < v23);
        v5 = a3[1];
        v9 = v90;
      }
    }

LABEL_31:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v9))
      {
        goto LABEL_133;
      }

      if (v6 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 < v5)
        {
          v5 = v9 + a4;
        }

        if (v5 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_257BFCB00(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v40 = *(v7 + 2);
    v39 = *(v7 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_257BFCB00((v39 > 1), v40 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v41;
    v42 = &v7[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v6;
    v43 = *v92;
    if (!*v92)
    {
      goto LABEL_142;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v7 + 4);
          v46 = *(v7 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_74:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v7[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v7[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v71 = &v7[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_88:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v7[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_95:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v83 = *&v7[16 * v82 + 32];
        v84 = *&v7[16 * v44 + 40];
        sub_257C9BBC4((*a3 + 96 * v83), (*a3 + 96 * *&v7[16 * v44 + 32]), (*a3 + 96 * v84), v43);
        if (v4)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_257C66E20(v7);
        }

        if (v82 >= *(v7 + 2))
        {
          goto LABEL_118;
        }

        v85 = &v7[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        result = sub_257C66D94(v44);
        v41 = *(v7 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v7[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v7[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v7[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v26 = *a3;
  v27 = *a3 + 96 * v6;
  v28 = v9 - v6;
LABEL_41:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    if (*(v30 + 12) >= 0)
    {
      v31 = 88;
    }

    else
    {
      v31 = 8;
    }

    v32 = *(v30 + v31);
    if (*(v30 - 84) >= 0)
    {
      v33 = (v30 - 8);
    }

    else
    {
      v33 = (v30 - 88);
    }

    if (v32 >= *v33)
    {
LABEL_40:
      ++v6;
      v27 += 96;
      --v28;
      if (v6 != v5)
      {
        goto LABEL_41;
      }

      v6 = v5;
      goto LABEL_54;
    }

    if (!v26)
    {
      break;
    }

    v34 = (v30 - 96);
    v99 = *(v30 + 32);
    v101 = *(v30 + 48);
    *v103 = *(v30 + 64);
    *&v103[12] = *(v30 + 76);
    v95 = *v30;
    v97 = *(v30 + 16);
    v35 = *(v30 - 48);
    *(v30 + 32) = *(v30 - 64);
    *(v30 + 48) = v35;
    v36 = *(v30 - 16);
    *(v30 + 64) = *(v30 - 32);
    *(v30 + 80) = v36;
    v37 = *(v30 - 80);
    *v30 = *(v30 - 96);
    *(v30 + 16) = v37;
    v34[2] = v99;
    v34[3] = v101;
    v34[4] = *v103;
    *(v34 + 76) = *&v103[12];
    v30 -= 96;
    *v34 = v95;
    v34[1] = v97;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_257C9B924(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 72;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 72;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[9 * v11] <= a4)
    {
      memmove(a4, __src, 72 * v11);
    }

    v12 = &v4[9 * v11];
    if (v10 >= 72 && v6 > v7)
    {
LABEL_21:
      v5 -= 9;
      do
      {
        v15 = v5 + 9;
        if (1.0 - *(v12 - 7) < 1.0 - *(v6 - 7))
        {
          v17 = v6 - 9;
          if (v15 != v6)
          {
            memmove(v5, v6 - 9, 0x48uLL);
          }

          if (v12 <= v4 || (v6 -= 9, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_32;
          }

          goto LABEL_21;
        }

        v16 = (v12 - 9);
        if (v15 != v12)
        {
          memmove(v5, v12 - 9, 0x48uLL);
        }

        v5 -= 9;
        v12 -= 9;
      }

      while (v16 > v4);
      v12 = v16;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[9 * v9] <= a4)
    {
      memmove(a4, __dst, 72 * v9);
    }

    v12 = &v4[9 * v9];
    if (v8 >= 72 && v6 < v5)
    {
      while (1.0 - v6[2] < 1.0 - v4[2])
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 9;
        if (!v14)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 9;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 9;
      if (v14)
      {
        goto LABEL_13;
      }

LABEL_12:
      memmove(v7, v13, 0x48uLL);
      goto LABEL_13;
    }

LABEL_15:
    v6 = v7;
  }

LABEL_32:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[9 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

uint64_t sub_257C9BBC4(int *__dst, int *__src, int *a3, int *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 >= v11)
  {
    v19 = 24 * v11;
    if (a4 != __src || &__src[v19] <= a4)
    {
      memmove(a4, __src, 96 * v11);
    }

    v13 = &v4[v19];
    if (v10 >= 96 && v6 > v7)
    {
LABEL_27:
      v5 -= 24;
      do
      {
        v20 = v5 + 24;
        v21 = 0x3FFFFFFFFFFFFFFELL;
        if (*(v13 - 21) < 0)
        {
          v21 = 0x3FFFFFFFFFFFFFEALL;
        }

        v22 = *&v13[v21];
        if (*(v6 - 21) >= 0)
        {
          v23 = (v6 - 2);
        }

        else
        {
          v23 = (v6 - 22);
        }

        if (v22 < *v23)
        {
          v25 = v6 - 24;
          if (v20 != v6)
          {
            memmove(v5, v6 - 24, 0x60uLL);
          }

          if (v13 <= v4 || (v6 -= 24, v25 <= v7))
          {
            v6 = v25;
            goto LABEL_43;
          }

          goto LABEL_27;
        }

        v24 = (v13 - 24);
        if (v20 != v13)
        {
          memmove(v5, v13 - 24, 0x60uLL);
        }

        v5 -= 24;
        v13 -= 24;
      }

      while (v24 > v4);
      v13 = v24;
    }
  }

  else
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 >= 96 && v6 < v5)
    {
      while (1)
      {
        v14 = v6[3] >= 0 ? 88 : 8;
        v15 = *(v6 + v14);
        v16 = (v4[3] >= 0 ? v4 + 22 : v4 + 2);
        if (v15 >= *v16)
        {
          break;
        }

        v17 = v6;
        v18 = v7 == v6;
        v6 += 24;
        if (!v18)
        {
          goto LABEL_18;
        }

LABEL_19:
        v7 += 24;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_21;
        }
      }

      v17 = v4;
      v18 = v7 == v4;
      v4 += 24;
      if (v18)
      {
        goto LABEL_19;
      }

LABEL_18:
      memmove(v7, v17, 0x60uLL);
      goto LABEL_19;
    }

LABEL_21:
    v6 = v7;
  }

LABEL_43:
  v26 = 24 * ((v13 - v4) / 96);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26 * 4);
  }

  return 1;
}

void sub_257C9BE54(__int128 *a1, uint64_t a2)
{
  v28 = sub_257ECCCF0();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  *&v31[13] = a1[2];
  *&v31[15] = v7;
  v31[17] = *(a1 + 8);
  v9 = *a1;
  v8 = a1[1];
  v26 = a1;
  *&v31[9] = v9;
  *&v31[11] = v8;
  v29 = sub_257ED0800();
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v27 = (v4 + 8);
  v30 = a2;

  v15 = 0;
  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      v18 = *(v30 + 48) + 96 * (__clz(__rbit64(v13)) | (v17 << 6));
      v19 = *v18;
      v20 = *(v18 + 80);
      sub_257ED07B0();
      v21 = v19;

      v22 = [v21 identifier];
      if (!v22)
      {
        break;
      }

      v23 = v22;
      v13 &= v13 - 1;
      sub_257ECCCD0();

      sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      v24 = v28;
      sub_257ECF400();
      (*v27)(v6, v24);
      sub_257C9C120(v31, v20);
      sub_257ED07E0();
      v25 = sub_257ED0800();

      v15 ^= v25;
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        MEMORY[0x259C732E0](v15);
        return;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257C9C120(__int128 *a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = sub_257ED0800();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
    v21 = sub_257ECF3F0();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x259C732E0](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_257C9C34C(__int128 *a1, uint64_t a2)
{
  v33 = sub_257ECCCF0();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  *&v47[13] = a1[2];
  *&v47[15] = v6;
  v47[17] = *(a1 + 8);
  v8 = *a1;
  v7 = a1[1];
  v30 = a1;
  *&v47[9] = v8;
  *&v47[11] = v7;
  v34 = sub_257ED0800();
  v9 = a2 + 56;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v31 = (v4 + 8);
  v37 = a2;

  v45 = 0;
  v15 = 0;
  while (v12)
  {
LABEL_11:
    v18 = *(v37 + 48) + 96 * (__clz(__rbit64(v12)) | (v15 << 6));
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 24);
    v22 = *(v18 + 40);
    v44 = *(v18 + 32);
    v43 = v22;
    v23 = *(v18 + 56);
    v42 = *(v18 + 48);
    v41 = v23;
    v24 = *(v18 + 72);
    v40 = *(v18 + 64);
    v39 = v24;
    v46 = *(v18 + 80);
    v38 = *(v18 + 88);
    sub_257ED07B0();
    if (v19 < 0)
    {
      MEMORY[0x259C732E0](1);

      sub_257C9BE54(v47, v20);
    }

    else
    {
      v35 = v21;
      v36 = v19;
      MEMORY[0x259C732E0](0);
      v25 = v20;
      v26 = v20;

      result = [v26 identifier];
      if (!result)
      {
        goto LABEL_16;
      }

      v27 = result;
      v28 = v32;
      sub_257ECCCD0();

      sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      v29 = v33;
      sub_257ECF400();
      (*v31)(v28, v29);
      sub_257C9C120(v47, v46);
      v20 = v25;
      v19 = v36;
    }

    v12 &= v12 - 1;
    sub_257ED07E0();
    v16 = sub_257ED0800();
    result = sub_257C9F174(v20, v19);
    v45 ^= v16;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return MEMORY[0x259C732E0](v45);
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_257C9C73C(__int128 *a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v29 = a1[2];
  v30 = v8;
  v31 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v25[0] = a1;
  v27 = v10;
  v28 = v9;
  v25[1] = sub_257ED0800();
  v26 = a2;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v16 = (v5 + 8);

  v17 = 0;
  v18 = 0;
  if (v14)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      v20 = *(*(v26 + 48) + 80 * (__clz(__rbit64(v14)) | (v19 << 6)));
      sub_257ED07B0();
      v21 = v20;
      v22 = [v21 identifier];
      if (!v22)
      {
        break;
      }

      v23 = v22;
      v14 &= v14 - 1;
      sub_257ECCCD0();

      sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      sub_257ECF400();
      (*v16)(v7, v4);
      v24 = sub_257ED0800();

      v17 ^= v24;
      v18 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        MEMORY[0x259C732E0](v17);
        return;
      }

      v14 = *(v11 + 8 * v19);
      ++v18;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_257C9C990(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DetectedTextBlock();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a2 + 16);
  result = MEMORY[0x259C732E0](v6);
  v17 = v6;
  if (v6)
  {
    v8 = 0;
    v16 = a2 + 32;
    do
    {
      v9 = *(v16 + 8 * v8);
      result = MEMORY[0x259C732E0](*(v9 + 16));
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = v15;
        v12 = v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80));

        v13 = *(v11 + 72);
        do
        {
          sub_257C9A79C(v12, v5, type metadata accessor for DetectedTextBlock);
          sub_257ECCCF0();
          sub_257C9E5B4(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
          sub_257ECF400();
          sub_257C9A804(v5, type metadata accessor for DetectedTextBlock);
          v12 += v13;
          --v10;
        }

        while (v10);
      }

      ++v8;
    }

    while (v8 != v17);
  }

  return result;
}

uint64_t sub_257C9CB6C()
{
  sub_257ED07E0();
  sub_257ED07E0();
  return sub_257ED07E0();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_257C9CE00@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_257C9CE74()
{
  result = qword_27F8F6D58;
  if (!qword_27F8F6D58)
  {
    sub_257BD2C2C(255, &qword_281543DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D58);
  }

  return result;
}

uint64_t sub_257C9CF08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_257C9CF58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C9CFC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_257C90DC8(*a1, 1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_257C9CFF8@<X0>(uint64_t (*a1)(void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(**(v2 + 16), *(*(v2 + 16) + 8), *(*(v2 + 16) + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_257C9D038(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_257BE40E4(&v12, v10 + 40 * a1 + 32);
}

uint64_t _s16MagnifierSupport14MAGOutputEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_257ECCCC0() & 1) != 0 && (v4 = type metadata accessor for MAGOutputEvent(0), (_s16MagnifierSupport14MAGOutputEventV0D4TypeO2eeoiySbAE_AEtFZ_0(a1 + v4[5], a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    v5 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _s16MagnifierSupport14MAGOutputEventV0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v169.i64[0] = a2;
  v168.i64[0] = a1;
  v2 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v2 - 8);
  v155 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MAGOutputEvent.EventType(0);
  v5 = MEMORY[0x28223BE20](v4);
  *&v166 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v167.i64[0] = &v155 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v164 = &v155 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v163 = (&v155 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v162 = (&v155 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v161 = (&v155 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v160 = (&v155 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v158 = (&v155 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v157 = (&v155 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v156 = (&v155 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v155 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v155 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  *&v165 = &v155 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v155 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v159 = &v155 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v155 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v155 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E50);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v46 = &v155 - v45;
  v47 = &v155 + *(v44 + 56) - v45;
  sub_257C9A79C(v168.i64[0], &v155 - v45, type metadata accessor for MAGOutputEvent.EventType);
  v48 = v169.i64[0];
  v169.i64[0] = v47;
  sub_257C9A79C(v48, v47, type metadata accessor for MAGOutputEvent.EventType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_257C9A79C(v46, v40, type metadata accessor for MAGOutputEvent.EventType);
      v104 = *v40;
      v105 = *(v40 + 2);
      v107 = *(v40 + 2);
      v106 = *(v40 + 3);
      v108 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_108;
      }

      v109 = *v108;
      v110 = *(v108 + 8);
      v111 = *(v108 + 16);
      v112 = *(v108 + 24);
      if (v104)
      {
        if (!v109)
        {

          goto LABEL_117;
        }

        v168.i64[0] = v112;
        v169.i64[0] = v46;
        v167.i64[0] = v111;
        sub_257BD2C2C(0, &qword_27F8F5938);
        v113 = v104;
        v114 = v109;
        v115 = sub_257ECFF50();

        v111 = v167.i64[0];
        if ((v115 & 1) == 0)
        {

          v46 = v169.i64[0];
          goto LABEL_118;
        }
      }

      else
      {
        v168.i64[0] = v112;
        v169.i64[0] = v46;
        if (v109)
        {

          v46 = v169.i64[0];
          goto LABEL_118;
        }
      }

      if (v105 != v110)
      {

        sub_257C9A804(v169.i64[0], type metadata accessor for MAGOutputEvent.EventType);
        goto LABEL_109;
      }

      v148 = v169.i64[0];
      if (v107 == v111 && v106 == v168.i64[0])
      {

LABEL_159:
        v147 = v148;
        goto LABEL_121;
      }

      v154 = sub_257ED0640();

      if (v154)
      {
        goto LABEL_159;
      }

      sub_257C9A804(v148, type metadata accessor for MAGOutputEvent.EventType);
      goto LABEL_109;
    case 2u:
      v79 = v159;
      sub_257C9A79C(v46, v159, type metadata accessor for MAGOutputEvent.EventType);
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F38);
      v81 = *(v80 + 48);
      v82 = *(v79 + v81);
      v83 = *(v80 + 64);
      v84 = *(v79 + v83);
      v85 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        sub_257C9A804(v79, type metadata accessor for DetectedDoor);
        goto LABEL_108;
      }

      v86 = *(v85 + v81);
      v87 = *(v85 + v83);
      v88 = v85;
      v89 = v155;
      sub_257C9CF58(v88, v155, type metadata accessor for DetectedDoor);
      v90 = _s16MagnifierSupport12DetectedDoorV2eeoiySbAC_ACtFZ_0(v79, v89);
      sub_257C9A804(v79, type metadata accessor for DetectedDoor);
      if ((v90 & 1) == 0)
      {
        sub_257C9A804(v89, type metadata accessor for DetectedDoor);
        goto LABEL_116;
      }

      v91 = sub_257D55520(v82, v86);

      sub_257C9A804(v89, type metadata accessor for DetectedDoor);
      if ((v91 & 1) == 0)
      {
        goto LABEL_118;
      }

      v92 = v84 == v87;
      goto LABEL_140;
    case 3u:
      sub_257C9A79C(v46, v35, type metadata accessor for MAGOutputEvent.EventType);
      v94 = *v35;
      v93 = *(v35 + 1);
      v50 = *(v35 + 4);
      v95 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_107;
      }

      v96 = *(v95 + 8);
      v97 = *(v95 + 16);
      if (!v93)
      {
        if (!v96)
        {
          goto LABEL_139;
        }

        goto LABEL_117;
      }

      if (!v96)
      {
        goto LABEL_117;
      }

      if (v94 == *v95 && v93 == v96)
      {

        goto LABEL_139;
      }

      v149 = sub_257ED0640();

      if ((v149 & 1) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_139;
    case 4u:
      v59 = v165;
      sub_257C9A79C(v46, v165, type metadata accessor for MAGOutputEvent.EventType);
      v60 = *(v59 + 48);
      v194[2] = *(v59 + 32);
      v194[3] = v60;
      v61 = *(v59 + 64);
      v168 = *(v59 + 80);
      v194[4] = v61;
      v62 = *(v59 + 16);
      v194[0] = *v59;
      v194[1] = v62;
      v63 = *(v59 + 96);
      v64 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        sub_257BE4084(v194, &qword_27F8F9C90);
        goto LABEL_108;
      }

      v65 = *(v64 + 48);
      v191 = *(v64 + 32);
      v192 = v65;
      v66 = *(v64 + 80);
      v193 = *(v64 + 64);
      v67 = *(v64 + 16);
      v189 = *v64;
      v190 = v67;
      v68 = *(v64 + 96);
      v69 = *&v194[0];
      v70 = *(v59 + 24);
      v71 = *(v59 + 56);
      v186 = *(v59 + 40);
      v187 = v71;
      v188 = *(v59 + 72);
      v184 = *(v59 + 8);
      v185 = v70;
      if (*&v194[0])
      {
        *(v183 + 8) = *(v59 + 8);
        *(&v183[1] + 8) = *(v59 + 24);
        *(&v183[2] + 8) = *(v59 + 40);
        *(&v183[3] + 8) = *(v59 + 56);
        v72 = *(v59 + 72);
        *&v183[0] = *&v194[0];
        *(&v183[4] + 1) = v72;
        v182[2] = v183[2];
        v182[3] = v183[3];
        v182[4] = v183[4];
        v182[0] = v183[0];
        v182[1] = v183[1];
        if (v189)
        {
          v169 = v66;
          v171 = v189;
          v172 = v190;
          v173 = v191;
          v174 = v65;
          v175 = v193;
          sub_257BE401C(v194, v170, &qword_27F8F9C90);
          sub_257BE401C(&v189, v170, &qword_27F8F9C90);
          sub_257BE401C(v183, v170, &qword_27F8F9C90);
          v73 = _s16MagnifierSupport14DetectedObjectV2eeoiySbAC_ACtFZ_0(v182, &v171);

          v178 = v185;
          v179 = v186;
          v180 = v187;
          v176 = v69;
          v181 = v188;
          v177 = v184;
          sub_257BE4084(&v176, &qword_27F8F9C90);
          if ((v73 & 1) == 0)
          {
LABEL_155:
            sub_257BE4084(v194, &qword_27F8F9C90);
            sub_257BE4084(&v189, &qword_27F8F9C90);

LABEL_117:

LABEL_118:
            sub_257C9A804(v46, type metadata accessor for MAGOutputEvent.EventType);
LABEL_109:
            v130 = 0;
            return v130 & 1;
          }

          goto LABEL_149;
        }

        v165 = v189;
        v166 = v190;
        v167 = v191;
        v168 = v65;
        v169 = v193;
        sub_257BE401C(v183, &v176, &qword_27F8F9C90);

LABEL_135:
        *(&v183[1] + 8) = v185;
        *(&v183[2] + 8) = v186;
        *(&v183[3] + 8) = v187;
        *&v183[0] = v69;
        *(&v183[4] + 1) = v188;
        *(v183 + 8) = v184;
        v183[5] = v165;
        v183[6] = v166;
        v183[7] = v167;
        v183[8] = v168;
        v183[9] = v169;
        sub_257BE4084(v183, &qword_27F8F6660);
        goto LABEL_118;
      }

      if (v189)
      {
        v165 = v189;
        v166 = v190;
        v167 = v191;
        v168 = v65;
        v169 = v193;

        goto LABEL_135;
      }

      v169 = v66;
      *(&v183[1] + 8) = *(v59 + 24);
      *(&v183[2] + 8) = *(v59 + 40);
      *(&v183[3] + 8) = *(v59 + 56);
      v151 = *(v59 + 72);
      *&v183[0] = 0;
      *(&v183[4] + 1) = v151;
      *(v183 + 8) = *(v59 + 8);
      sub_257BE401C(v194, v182, &qword_27F8F9C90);
      sub_257BE401C(&v189, v182, &qword_27F8F9C90);
      sub_257BE4084(v183, &qword_27F8F9C90);
LABEL_149:
      v152 = vmovn_s32(vceqq_f32(v168, v169));
      if ((v152.i8[0] & 1) == 0 || (v152.i8[2] & 1) == 0 || (v152.i8[4] & 1) == 0)
      {
        goto LABEL_155;
      }

      if (v63)
      {
        if (!v68)
        {
          sub_257BE4084(&v189, &qword_27F8F9C90);
          sub_257BE4084(v194, &qword_27F8F9C90);
          goto LABEL_117;
        }

        v139 = sub_257C943E4(v153, v68);

        swift_bridgeObjectRelease_n();
        sub_257BE4084(&v189, &qword_27F8F9C90);
        sub_257BE4084(v194, &qword_27F8F9C90);
LABEL_81:

        if ((v139 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      else
      {
        sub_257BE4084(&v189, &qword_27F8F9C90);
        sub_257BE4084(v194, &qword_27F8F9C90);
        if (v68)
        {
          goto LABEL_117;
        }
      }

LABEL_120:
      v147 = v46;
LABEL_121:
      sub_257C9A804(v147, type metadata accessor for MAGOutputEvent.EventType);
      v130 = 1;
      return v130 & 1;
    case 5u:
      sub_257C9A79C(v46, v30, type metadata accessor for MAGOutputEvent.EventType);
      v116 = v30->i64[0];
      v168 = v30[1];
      v117 = v30[2].i64[0];
      v118 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 5)
      {

LABEL_107:

        goto LABEL_108;
      }

      v119 = v118->i64[0];
      v167 = v118[1];
      v120 = v118[2].i64[0];
      sub_257C94794(v116, v119);
      v122 = v121;

      if ((v122 & 1) == 0 || (v123 = vmovn_s32(vceqq_f32(v168, v167)), (v123.i8[0] & 1) == 0) || (v123.i8[2] & 1) == 0 || (v123.i8[4] & 1) == 0)
      {
LABEL_116:

        goto LABEL_117;
      }

      if (v117)
      {
        if (!v120)
        {
          goto LABEL_117;
        }

        v125 = sub_257C943E4(v124, v120);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        if ((v125 & 1) == 0)
        {
          goto LABEL_118;
        }
      }

      else if (v120)
      {
        goto LABEL_117;
      }

      goto LABEL_120;
    case 6u:
      sub_257C9A79C(v46, v27, type metadata accessor for MAGOutputEvent.EventType);
      v131 = v27->i64[0];
      v168 = v27[1];
      v132 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_107;
      }

      v133 = v132->i64[0];
      v169 = v132[1];
      v134 = sub_257C94C00(v131, v133);

      if (v134)
      {
        v135 = vmovn_s32(vceqq_f32(v168, v169));
        if (v135.i8[0] & 1) != 0 && (v135.i16[1] & v135.i16[2])
        {
          goto LABEL_120;
        }
      }

      goto LABEL_118;
    case 7u:
      v98 = v156;
      sub_257C9A79C(v46, v156, type metadata accessor for MAGOutputEvent.EventType);
      v100 = *v98;
      v99 = v98[1];
      v101 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_107;
      }

      v102 = *v101;
      v103 = v101[1];
      if (v100 == v102 && v99 == v103)
      {
        goto LABEL_79;
      }

      v146 = sub_257ED0640();

      if (v146)
      {
        goto LABEL_120;
      }

      goto LABEL_118;
    case 8u:
      v140 = v157;
      sub_257C9A79C(v46, v157, type metadata accessor for MAGOutputEvent.EventType);
      v141 = *v140;
      v142 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_107;
      }

      v78 = sub_257D556C8(v141, *v142);
      goto LABEL_85;
    case 9u:
      v75 = v158;
      sub_257C9A79C(v46, v158, type metadata accessor for MAGOutputEvent.EventType);
      v76 = *v75;
      v77 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_107;
      }

      v78 = sub_257D55A3C(v76, *v77);
LABEL_85:
      v130 = v78;

      goto LABEL_143;
    case 0xAu:
      v136 = v160;
      sub_257C9A79C(v46, v160, type metadata accessor for MAGOutputEvent.EventType);
      v54 = *v136;
      v53 = v136[1];
      v55 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_77;
      }

      goto LABEL_107;
    case 0xBu:
      v58 = v161;
      sub_257C9A79C(v46, v161, type metadata accessor for MAGOutputEvent.EventType);
      v54 = *v58;
      v53 = v58[1];
      v55 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_107;
      }

      goto LABEL_77;
    case 0xCu:
      v74 = v162;
      sub_257C9A79C(v46, v162, type metadata accessor for MAGOutputEvent.EventType);
      v54 = *v74;
      v53 = v74[1];
      v55 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_107;
      }

      goto LABEL_77;
    case 0xDu:
      v126 = v163;
      sub_257C9A79C(v46, v163, type metadata accessor for MAGOutputEvent.EventType);
      v127 = *v126;
      v128 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v129 = *v128;
        sub_257BD2C2C(0, &qword_281543DA0);
        v130 = sub_257ECFF50();

        goto LABEL_143;
      }

      goto LABEL_108;
    case 0xEu:
      v56 = v164;
      sub_257C9A79C(v46, v164, type metadata accessor for MAGOutputEvent.EventType);
      v57 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_108;
      }

      goto LABEL_34;
    case 0xFu:
      v56 = v167.i64[0];
      sub_257C9A79C(v46, v167.i64[0], type metadata accessor for MAGOutputEvent.EventType);
      v57 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_108;
      }

LABEL_34:
      v92 = *v56 == *v57;
      goto LABEL_140;
    case 0x10u:
      v52 = v166;
      sub_257C9A79C(v46, v166, type metadata accessor for MAGOutputEvent.EventType);
      v54 = *v52;
      v53 = v52[1];
      v55 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_107;
      }

LABEL_77:
      v137 = *v55;
      v138 = v55[1];
      if (v54 == v137 && v53 == v138)
      {
LABEL_79:

        goto LABEL_120;
      }

      v139 = sub_257ED0640();

      goto LABEL_81;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x16u:
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x18u:
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x19u:
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x1Au:
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x1Bu:
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x1Cu:
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x1Du:
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x1Eu:
      if (swift_getEnumCaseMultiPayload() == 30)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x1Fu:
      if (swift_getEnumCaseMultiPayload() == 31)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x20u:
      if (swift_getEnumCaseMultiPayload() == 32)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x21u:
      if (swift_getEnumCaseMultiPayload() == 33)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    case 0x22u:
      if (swift_getEnumCaseMultiPayload() == 34)
      {
        goto LABEL_120;
      }

      goto LABEL_108;
    default:
      sub_257C9A79C(v46, v42, type metadata accessor for MAGOutputEvent.EventType);
      v49 = *v42;
      v50 = *(v42 + 2);
      v51 = v169.i64[0];
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_108:
        sub_257BE4084(v46, &qword_27F8F6E50);
        goto LABEL_109;
      }

      v143 = *v51;
      v97 = *(v51 + 8);
      if (v49)
      {
        if (v143)
        {
          sub_257BD2C2C(0, &qword_27F8F5938);
          v144 = v49;
          v145 = sub_257ECFF50();

          if ((v145 & 1) == 0)
          {
            goto LABEL_118;
          }

          goto LABEL_139;
        }

        v143 = v49;
      }

      else if (!v143)
      {
LABEL_139:
        v92 = v50 == v97;
LABEL_140:
        v130 = v92;
LABEL_143:
        sub_257C9A804(v46, type metadata accessor for MAGOutputEvent.EventType);
        return v130 & 1;
      }

      goto LABEL_118;
  }
}

uint64_t sub_257C9E5B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_257C9E600()
{
  result = qword_27F8F6D78;
  if (!qword_27F8F6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D78);
  }

  return result;
}

unint64_t sub_257C9E658()
{
  result = qword_27F8F6D80;
  if (!qword_27F8F6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D80);
  }

  return result;
}

unint64_t sub_257C9E6B0()
{
  result = qword_27F8F6D88;
  if (!qword_27F8F6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6D88);
  }

  return result;
}

unint64_t sub_257C9E7E0()
{
  result = qword_27F8F6DA0;
  if (!qword_27F8F6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6DA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MAGOutputEventCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MAGOutputEventCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_257C9E9CC()
{
  sub_257ECCCF0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MAGOutputEvent.EventType(319);
    if (v1 <= 0x3F)
    {
      sub_257C9EF5C(319, &qword_27F8F6DB8, type metadata accessor for MFEnvironment.UserControls, type metadata accessor for IgnoreEquatable);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_257C9EB00()
{
  sub_257C9EDD4(319, &qword_27F8F6DD0, &qword_27F8F6DD8);
  if (v0 <= 0x3F)
  {
    sub_257C9ECD4();
    if (v1 <= 0x3F)
    {
      sub_257C9ED50();
      if (v2 <= 0x3F)
      {
        sub_257C9EDD4(319, &qword_27F8F6DF8, &unk_27F8F4D70);
        if (v3 <= 0x3F)
        {
          sub_257C9EE38(319, &qword_27F8F6E00, &qword_27F8F9C90);
          if (v4 <= 0x3F)
          {
            sub_257C9EE38(319, &qword_27F8F6E18, &qword_27F8F6E20);
            if (v5 <= 0x3F)
            {
              sub_257C9EED4();
              if (v6 <= 0x3F)
              {
                sub_257C9EF5C(319, &qword_27F8F6E38, type metadata accessor for DetectedTextBlock, MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  sub_257C9EFC0();
                  if (v8 <= 0x3F)
                  {
                    sub_257BD2C2C(319, &qword_27F8F6E48);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_257C9ECD4()
{
  if (!qword_27F8F6DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6DD8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F8F6DE0);
    }
  }
}

void sub_257C9ED50()
{
  if (!qword_27F8F6DE8)
  {
    type metadata accessor for DetectedDoor(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6DF0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F8F6DE8);
    }
  }
}

void sub_257C9EDD4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_257C9EE38(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6E08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6E10);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_257C9EED4()
{
  if (!qword_27F8F6E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6E30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6E08);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F8F6E28);
    }
  }
}

void sub_257C9EF5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_257C9EFC0()
{
  if (!qword_27F8F6E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F6970);
    v0 = sub_257ECF870();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F6E40);
    }
  }
}

uint64_t getEnumTagSinglePayload for ColorFilter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ColorFilter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_257C9F174(void *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {

    v2 = vars8;
  }
}

unint64_t sub_257C9F1D4()
{
  result = qword_27F8F6E70;
  if (!qword_27F8F6E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6E70);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_257C9F2C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_257C9F3E4()
{
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECF190();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView);
  if (v10)
  {
    v17 = result;
    sub_257BD52CC();
    v11 = v10;
    v12 = sub_257ECFD30();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    aBlock[4] = sub_257C9F688;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_16;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v9, v4, v14);
    _Block_release(v14);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v9, v17);
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257C9F6C8(uint64_t a1, char a2)
{
  sub_257E7D908(a2);
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__recordButton);
  if (v3)
  {
    v3[OBJC_IVAR____TtC16MagnifierSupport12RecordButton_isRecording] = 0;
    v6 = v3;
    sub_257E71464();
    v4 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__tapToRadarButton);
    if (v4)
    {
      v5 = v4;
      [v5 setEnabled_];
    }
  }
}

uint64_t ClarityUIRootView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_257C9F914();
  sub_257ECE250();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E88) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E90) + 28);
  v5 = *MEMORY[0x277CDF3C0];
  v6 = sub_257ECDF90();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  v7 = sub_257ECED70();
  v8 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E98);
  v10 = (a1 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

uint64_t sub_257C9F8B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MAGCaptureService();
  sub_257C9FCF8();
  v4 = a1;
  result = sub_257ECE150();
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_257C9F914()
{
  result = qword_27F8F6E80;
  if (!qword_27F8F6E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6E80);
  }

  return result;
}

uint64_t sub_257C9F968@<X0>(uint64_t a1@<X8>)
{
  sub_257C9F914();
  sub_257ECE250();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E88) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E90) + 28);
  v5 = *MEMORY[0x277CDF3C0];
  v6 = sub_257ECDF90();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  v7 = sub_257ECED70();
  v8 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E98);
  v10 = (a1 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

uint64_t sub_257C9FAC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_257C9FB10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_257C9FB5C()
{
  result = qword_27F8F6EA0;
  if (!qword_27F8F6EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6E98);
    sub_257C9FC14();
    sub_257BD2D4C(&qword_27F8F6EC8, &qword_27F8F6ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6EA0);
  }

  return result;
}

unint64_t sub_257C9FC14()
{
  result = qword_27F8F6EA8;
  if (!qword_27F8F6EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F6E88);
    sub_257BD2D4C(&qword_27F8F6EB0, &qword_27F8F6EB8);
    sub_257BD2D4C(&qword_27F8F6EC0, &qword_27F8F6E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6EA8);
  }

  return result;
}

unint64_t sub_257C9FCF8()
{
  result = qword_27F8F6ED8;
  if (!qword_27F8F6ED8)
  {
    type metadata accessor for MAGCaptureService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6ED8);
  }

  return result;
}

void sub_257C9FD54()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v6 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control;
  v7 = v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_control];
  v8 = &qword_27F8F6000;
  if (v7 <= 0xB)
  {
    switch(v7)
    {
      case 5u:
        if (qword_281544FE0 == -1)
        {
          goto LABEL_22;
        }

        break;
      case 6u:
        if (qword_281544FE0 == -1)
        {
          goto LABEL_22;
        }

        break;
      case 0xAu:
        if (qword_281544FE0 == -1)
        {
          goto LABEL_22;
        }

        break;
      default:
        goto LABEL_35;
    }

    goto LABEL_54;
  }

  if (v7 == 12)
  {
    if (qword_281544FE0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

  if (v7 == 13)
  {
    if (qword_281544FE0 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

  if (v7 != 14)
  {
    goto LABEL_35;
  }

  if (qword_281544FE0 != -1)
  {
LABEL_54:
    swift_once();
  }

LABEL_22:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v9 = LOBYTE(aBlock[0]);
  v10 = sub_257CA150C();
  LOBYTE(aBlock[0]) = v0[v6];
  sub_257D14A40();
  v11 = sub_257ECF4C0();

  [v10 setAccessibilityLabel_];

  v12 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isExpanded;
  swift_beginAccess();
  v13 = v1[v12] & (v5 ^ 1);
  if (v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
  {
    if (!v9)
    {
      if (v1[v12] & (v5 ^ 1))
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_27:
    if (v13)
    {
      goto LABEL_33;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((aBlock[0] & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v9)
  {
    goto LABEL_27;
  }

  if (v13 & 1 | ((aBlock[0] & 1) == 0))
  {
LABEL_33:
    v8 = &qword_27F8F6000;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = sub_257ECF4C0();
    v18 = sub_257ECF4C0();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    sub_257ECF500();
    v14 = sub_257ECF4C0();

    goto LABEL_34;
  }

LABEL_32:
  v14 = 0;
  v8 = &qword_27F8F6000;
LABEL_34:
  [v1 setAccessibilityHint_];

LABEL_35:
  v20 = OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed;
  v21 = v1[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed];
  v22 = *MEMORY[0x277D76580];
  v23 = [v1 accessibilityTraits];
  if (v21)
  {
    v24 = v23 | v22;
  }

  else
  {
    v24 = v23 & ~v22;
  }

  [v1 setAccessibilityTraits_];
  v25 = v8[492];
  swift_beginAccess();
  v26 = v1[v25];
  v27 = *MEMORY[0x277D76598];
  v28 = [v1 accessibilityTraits];
  if (v26)
  {
    v29 = v28 | v27;
  }

  else
  {
    v29 = v28 & ~v27;
  }

  [v1 setAccessibilityTraits_];
  v30 = v1[v6] - 7 < 0xFFFFFFFE;
  v31 = *MEMORY[0x277D76548];
  v32 = [v1 accessibilityTraits];
  if ((v5 & v30) != 0)
  {
    v33 = v32 & ~v31;
  }

  else
  {
    v33 = v32 | v31;
  }

  [v1 setAccessibilityTraits_];
  if (v1[v6] - 5 <= 1)
  {
    if (v5 & 1) != 0 || (v1[v20])
    {
      goto LABEL_50;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (aBlock[0])
    {
LABEL_50:
      sub_257BD2C2C(0, &qword_281543E70);
      v34 = sub_257ECF7F0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_257ED9BF0;
      type metadata accessor for MAGUtilities();
      v36 = swift_getObjCClassFromMetadata();
      v37 = [objc_opt_self() bundleForClass_];
      v38 = sub_257ECF4C0();
      v39 = sub_257ECF4C0();
      v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

      sub_257ECF500();
      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v42 = objc_allocWithZone(MEMORY[0x277D75088]);
      sub_257ECC3F0();
      v43 = sub_257ECF4C0();

      aBlock[4] = sub_257CA5EF0;
      aBlock[5] = v41;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D96328;
      aBlock[3] = &block_descriptor_17;
      v44 = _Block_copy(aBlock);
      v45 = [v42 initWithName:v43 actionHandler:v44];

      _Block_release(v44);

      *(v35 + 32) = v45;
      sub_257BD2C2C(0, &qword_281543E70);
      v34 = sub_257ECF7F0();
    }

    [v1 setAccessibilityCustomActions_];
  }
}

uint64_t sub_257CA0708(char a1)
{
  v3 = sub_257ECF120();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_257ECF190();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v9 = sub_257ECFD30();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_257CA6494;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_62;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v8, v5, v11);
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

void sub_257CA09D4(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  sub_257CA0A8C();
  sub_257CA0C98();
  if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing) != v3)
  {
    if (*(a1 + OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing))
    {
      v4 = sub_257D15408();
    }

    else
    {
      v4 = sub_257D14B7C();
    }

    v5 = v4;
    v6 = sub_257CA150C();
    [v6 setImage:v5 forState:0];

    sub_257C9FD54();
  }
}

void sub_257CA0A8C()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v8 == 1)
  {
    if (v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
    {
      goto LABEL_7;
    }

    v4 = v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing];
    v5 = objc_opt_self();
    if (v4 == 1)
    {
      v6 = [v5 blackColor];
LABEL_13:
      v3 = v6;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isDimmed])
  {
    v7 = v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing];
    v5 = objc_opt_self();
    if (v7 == 1)
    {
      v6 = [v5 systemYellowColor];
      goto LABEL_13;
    }

LABEL_12:
    v6 = [v5 whiteColor];
    goto LABEL_13;
  }

LABEL_7:
  v1 = [objc_opt_self() whiteColor];
  v2 = [v0 traitCollection];
  v3 = sub_257C1C83C(v1, v2);

LABEL_14:
  [v0 setTintColor_];
}

void sub_257CA0C98()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v3 == 1)
  {
    if (v0[OBJC_IVAR____TtC16MagnifierSupport12ToggleButton_isGlowing] == 1)
    {
      v1 = [objc_opt_self() systemYellowColor];
    }

    else
    {
      if (qword_281544A78 != -1)
      {
        swift_once();
      }

      v1 = qword_281548308;
    }

    v2 = v1;
    [v0 setBackgroundColor_];
  }

  else
  {
    if (qword_281544A78 != -1)
    {
      swift_once();
    }

    [v0 setBackgroundColor_];
  }
}