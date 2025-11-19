uint64_t sub_2297B6080()
{
  v2 = *v1;
  v3 = *(*v1 + 1000);
  v8 = *v1;
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v4 = sub_2297B633C;
  }

  else
  {
    v5 = *(v2 + 992);
    v6 = *(v2 + 984);

    v4 = sub_2297B61A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2297B61A8()
{
  v1 = *(v0 + 976);
  v20 = *(v0 + 960);
  v21 = *(v0 + 968);
  v2 = *(v0 + 936);
  v3 = *(v0 + 928);
  v4 = *(v0 + 888);
  v16 = *(v0 + 848);
  v17 = *(v0 + 856);
  v14 = *(v0 + 832);
  v15 = *(v0 + 840);
  v12 = *(v0 + 904);
  v13 = *(v0 + 824);
  v5 = *(v0 + 816);
  v6 = *(v0 + 776);
  v18 = *(v0 + 752);
  v19 = *(v0 + 728);
  v7 = *(v0 + 704);
  v8 = *(v0 + 696);
  v22 = *(v0 + 688);
  v23 = *(v0 + 680);
  v9 = *(v0 + 648);
  v24 = *(v0 + 672);
  v25 = *(v0 + 640);

  sub_229590D18(v3, v2);
  sub_2295798D4(v5, v13);
  sub_2295798D4(v14, v15);
  sub_2295798D4(v16, v17);
  v20(v8, v9);
  v20(v7, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2297B633C()
{
  v1 = v0[124];
  v2 = v0[123];
  v3 = v0[122];
  v30 = v0[120];
  v31 = v0[121];
  v4 = v0[117];
  v5 = v0[116];
  v6 = v0[111];
  v27 = v0[106];
  v28 = v0[107];
  v24 = v0[104];
  v25 = v0[105];
  v22 = v0[113];
  v23 = v0[103];
  v7 = v0[102];
  v8 = v0[101];
  v9 = v0[97];
  v29 = v0[88];
  v26 = v0[87];
  v10 = v0[81];

  sub_229590D18(v5, v4);
  sub_2295798D4(v7, v23);
  sub_2295798D4(v24, v25);
  sub_2295798D4(v27, v28);
  v30(v26, v10);
  v30(v29, v10);
  v11 = v0[126];
  v12 = v0[94];
  v13 = v0[91];
  v14 = v0[88];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[85];
  v18 = v0[84];
  v19 = v0[80];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2297B64E4()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[97];
  swift_willThrow();

  v5 = v0[100];
  v6 = v0[94];
  v7 = v0[91];
  v8 = v0[88];
  v9 = v0[87];
  v10 = v0[86];
  v11 = v0[85];
  v12 = v0[84];
  v13 = v0[80];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2297B65DC()
{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 904);
  v4 = *(v0 + 888);
  v23 = *(v0 + 848);
  v24 = *(v0 + 856);
  v5 = *(v0 + 832);
  v6 = *(v0 + 824);
  v7 = *(v0 + 816);
  v8 = *(v0 + 776);
  v25 = *(v0 + 704);
  v21 = *(v0 + 840);
  v22 = *(v0 + 696);
  v9 = *(v0 + 648);

  sub_2295798D4(v7, v6);
  sub_2295798D4(v5, v21);
  sub_2295798D4(v23, v24);
  v2(v22, v9);
  v2(v25, v9);
  v10 = *(v0 + 920);
  v11 = *(v0 + 752);
  v12 = *(v0 + 728);
  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v15 = *(v0 + 688);
  v16 = *(v0 + 680);
  v17 = *(v0 + 672);
  v18 = *(v0 + 640);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2297B6744(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881208, qword_22A5837B0);
  return sub_22A4DD8FC();
}

void sub_2297B67A4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881200, &qword_22A5837A8);
    sub_22A4DD8EC();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881200, &qword_22A5837A8);
    sub_22A4DD8FC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2297B6854@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10, char a11, uint64_t a12, _OWORD *a13, unsigned __int8 a14, unsigned __int8 a15, void *a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, void *a20, char *a21, unint64_t a22, uint64_t a23, char *a24, unsigned __int8 a25)
{
  v169 = a3;
  v165 = a8;
  v166 = a9;
  v162 = a7;
  v163 = a5;
  v164 = a6;
  v160 = a4;
  v168 = a2;
  v161 = type metadata accessor for HomePassData(0);
  v26 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v167 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22A4DB7DC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v132 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v132 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v132 - v40;
  v42 = objc_opt_self();
  v159 = a1;
  v43 = [a1 uuid];
  sub_22A4DB79C();

  v44 = sub_22A4DB77C();
  (*(v29 + 8))(v41, v28);
  v45 = [v42 findHomeWithModelID_];

  v172 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D290, &qword_22A57BB20);
  v46 = v170;
  sub_22A4DBD4C();
  if (v46)
  {
    return swift_unknownObjectRelease();
  }

  v158 = "SError16";
  v170 = "mePassState.swift";
  v154 = v39;
  v155 = v36;
  v156 = v33;
  v153 = v29;
  v157 = v28;
  swift_unknownObjectRelease();
  v48 = v171[0];
  v49 = [v171[0] name];
  if (v49)
  {
    v50 = v49;
    v51 = sub_22A4DD5EC();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v54 = v169;
  v172 = v51;
  v173 = v53;
  sub_22A4DBD4C();

  v55 = v171[1];
  v152 = v171[0];
  v56 = [v48 hasOnboardedForWalletKey];
  if (v56)
  {
    v57 = v56;
    v151 = [v56 BOOLValue];
  }

  else
  {
    v151 = 0;
  }

  v58 = sub_22A4DB77C();
  v59 = [v48 findHomeMemberWithUUID_];

  v172 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881210, &unk_22A5837C8);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  v60 = v171[0];
  v61 = [v48 matCredGRK];
  if (!v61)
  {

    sub_22962F2A8();
    swift_allocError();
    *v98 = xmmword_22A583440;
    *(v98 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v142 = v60;
  v62 = v61;
  v144 = sub_22A4DB62C();
  v143 = v63;

  v64 = [v48 accessories];
  v146 = 0;
  v145 = v55;
  v147 = v48;
  if (!v64)
  {
    v148 = MEMORY[0x277D84F90];
    v67 = v167;
    goto LABEL_43;
  }

  v65 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881220, &qword_22A5837D8);
  v66 = sub_22A4DD83C();

  v67 = v167;
  v158 = v66;
  if (v66 >> 62)
  {
LABEL_40:
    v68 = v66 & 0xFFFFFFFFFFFFFF8;
    v69 = sub_22A4DE0EC();
    if (v69)
    {
      goto LABEL_13;
    }

LABEL_41:
    v148 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v68 = v66 & 0xFFFFFFFFFFFFFF8;
  v69 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v69)
  {
    goto LABEL_41;
  }

LABEL_13:
  v70 = v69;
  v71 = 0;
  v148 = MEMORY[0x277D84F90];
  v72 = v158;
  v170 = (v158 & 0xC000000000000001);
  v150 = v69;
  v149 = v68;
  do
  {
    v66 = v71;
    while (1)
    {
      if (v170)
      {
        MEMORY[0x22AAD13F0](v66, v72);
        v71 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v66 >= *(v68 + 16))
        {
          goto LABEL_39;
        }

        v73 = *(v72 + 8 * v66 + 32);
        swift_unknownObjectRetain();
        v71 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      v174 = &unk_283F59838;
      v74 = swift_dynamicCastObjCProtocolConditional();
      if (v74)
      {
        v75 = v74;
        v76 = [v74 preexistingMatCredGRK];
        if (v76)
        {
          break;
        }
      }

      swift_unknownObjectRelease();
LABEL_16:
      ++v66;
      if (v71 == v70)
      {
        goto LABEL_42;
      }
    }

    v77 = v76;
    v78 = sub_22A4DB62C();
    v80 = v79;

    v81 = [v75 preexistingMatCredRGI];
    if (!v81)
    {
      swift_unknownObjectRelease();
      sub_2295798D4(v78, v80);
      goto LABEL_26;
    }

    v82 = v81;
    v83 = sub_22A4DB62C();
    v85 = v84;

    v86 = [v75 preexistingMatCredRPK];
    if (!v86)
    {
      swift_unknownObjectRelease();
      sub_2295798D4(v83, v85);
      sub_2295798D4(v78, v80);
      v67 = v167;
LABEL_26:
      v68 = v149;
      v70 = v150;
      v72 = v158;
      goto LABEL_16;
    }

    v87 = v86;
    v88 = sub_22A4DB62C();
    v141 = v89;

    swift_unknownObjectRelease();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v149;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v148 = sub_22958BAC4(0, *(v148 + 2) + 1, 1, v148);
    }

    v91 = v80;
    v93 = *(v148 + 2);
    v92 = *(v148 + 3);
    if (v93 >= v92 >> 1)
    {
      v97 = sub_22958BAC4((v92 > 1), v93 + 1, 1, v148);
      v91 = v80;
      v148 = v97;
    }

    v94 = v148;
    *(v148 + 2) = v93 + 1;
    v95 = &v94[48 * v93];
    *(v95 + 4) = v83;
    *(v95 + 5) = v85;
    v96 = v141;
    *(v95 + 6) = v88;
    *(v95 + 7) = v96;
    *(v95 + 8) = v78;
    *(v95 + 9) = v91;
    v70 = v150;
    v67 = v167;
    v72 = v158;
  }

  while (v71 != v150);
LABEL_42:

  v54 = v169;
LABEL_43:
  LODWORD(v150) = a25;
  v158 = a24;
  v149 = a23;
  v169 = a20;
  v170 = a21;
  v140 = a19;
  v139 = a18;
  v138 = a17;
  v136 = a15;
  v135 = a14;
  v99 = MEMORY[0x277D84FA0];
  if (v54)
  {
    v99 = v54;
  }

  v137 = v99;
  LODWORD(v141) = a10;

  v100 = systemInfo();
  v134 = [v100 isMigrating];

  v133 = [objc_opt_self() isWalletVisible];
  v101 = a11 | v151;
  v102 = [v159 uuid];
  sub_22A4DB79C();

  v103 = *(v153 + 16);
  v104 = v157;
  v103(v155, a12, v157);
  v103(v156, v168, v104);
  v168 = productClass();
  v159 = [a16 integerValue];
  v105 = [v142 accessCode];
  if (v105)
  {
    v106 = [v105 accessCode];
    swift_unknownObjectRelease();
    v107 = a22;
    if (v106)
    {
      v108 = sub_22A4DD5EC();
      v110 = v109;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v108 = 0;
      v110 = 0;
    }

    v67 = v167;
  }

  else
  {
    v107 = a22;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v108 = 0;
    v110 = 0;
  }

  v111 = v153;
  v112 = v154;
  *v67 = v101 & 1;
  v113 = v161;
  v114 = v67;
  v115 = *(v111 + 32);
  v116 = v157;
  v115(v114 + *(v161 + 20), v112, v157);
  v115(v114 + v113[6], v155, v116);
  v115(v114 + v113[7], v156, v116);
  v117 = (v114 + v113[8]);
  v118 = a13[1];
  *v117 = *a13;
  v117[1] = v118;
  v117[2] = a13[2];
  v119 = (v114 + v113[9]);
  v120 = v145;
  *v119 = v152;
  v119[1] = v120;
  *(v114 + v113[10]) = v168;
  *(v114 + v113[11]) = v135 & 1;
  *(v114 + v113[12]) = v136 & 1;
  *(v114 + v113[13]) = v159;
  v121 = (v114 + v113[14]);
  *v121 = v108;
  v121[1] = v110;
  v122 = (v114 + v113[15]);
  v123 = v143;
  *v122 = v144;
  v122[1] = v123;
  *(v114 + v113[16]) = v148;
  *(v114 + v113[17]) = v138 & 1;
  *(v114 + v113[18]) = v139;
  *(v114 + v113[19]) = v140 & 1;
  v125 = v169;
  v124 = v170;
  *(v114 + v113[20]) = v169;
  v126 = (v114 + v113[21]);
  *v126 = v124;
  v126[1] = v107;
  v127 = (v114 + v113[22]);
  v128 = v158;
  *v127 = v149;
  v127[1] = v128;
  *(v114 + v113[23]) = v150 & 1;
  v129 = v166;
  *v166 = v137;
  *(v129 + 8) = v134;
  *(v129 + 9) = v160;
  *(v129 + 10) = v133;
  *(v129 + 11) = v163 & 1;
  *(v129 + 12) = v164 & 1;
  *(v129 + 13) = v162 & 1;
  v129[2] = v165;
  *(v129 + 24) = v141 & 1;
  v130 = type metadata accessor for HomePassState(0);
  sub_229656450(v114, v129 + *(v130 + 48));

  sub_2297B8610(a13, v171);
  v131 = v125;
  return sub_2295AEF1C(v124, v107);
}

uint64_t sub_2297B7550(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22956C148(a3, a4);
          return sub_2296753AC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s13HomeKitDaemon0A8PassDataV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = type metadata accessor for HomePassData(0);
  v6 = v5[5];
  if ((sub_22A4DB78C() & 1) == 0)
  {
    goto LABEL_26;
  }

  v7 = v5[6];
  if ((sub_22A4DB78C() & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = v5[7];
  if ((sub_22A4DB78C() & 1) == 0)
  {
    goto LABEL_26;
  }

  v9 = v5[8];
  v10 = *&a1[v9];
  v11 = *&a1[v9 + 8];
  v12 = *&a1[v9 + 16];
  v13 = *&a1[v9 + 24];
  v14 = *&a1[v9 + 40];
  v51 = *&a1[v9 + 32];
  v15 = &a2[v9];
  v17 = v15[2];
  v16 = v15[3];
  v18 = v15[4];
  v19 = v15[5];
  if ((sub_2297B7550(v10, v11, *v15, v15[1]) & 1) == 0 || (sub_2297B7550(v12, v13, v17, v16) & 1) == 0 || (sub_2297B7550(v51, v14, v18, v19) & 1) == 0)
  {
    goto LABEL_26;
  }

  v20 = v5[9];
  v21 = *&a1[v20];
  v22 = *&a1[v20 + 8];
  v23 = &a2[v20];
  if ((v21 != *v23 || v22 != *(v23 + 1)) && (sub_22A4DE60C() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (*&a1[v5[10]] != *&a2[v5[10]] || a1[v5[11]] != a2[v5[11]] || a1[v5[12]] != a2[v5[12]] || *&a1[v5[13]] != *&a2[v5[13]])
  {
    goto LABEL_26;
  }

  v24 = v5[14];
  v25 = &a1[v24];
  v26 = *&a1[v24 + 8];
  v27 = &a2[v24];
  v28 = *(v27 + 1);
  if (v26)
  {
    if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_22A4DE60C() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v28)
  {
    goto LABEL_26;
  }

  if ((sub_2297B7550(*&a1[v5[15]], *&a1[v5[15] + 8], *&a2[v5[15]], *&a2[v5[15] + 8]) & 1) == 0 || (sub_2296AF4F4(*&a1[v5[16]], *&a2[v5[16]]) & 1) == 0 || a1[v5[17]] != a2[v5[17]])
  {
    goto LABEL_26;
  }

  v30 = v5[18];
  v31 = a1[v30];
  v32 = a2[v30];
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v29 = 0;
    if (v32 == 2 || ((v32 ^ v31) & 1) != 0)
    {
      return v29 & 1;
    }
  }

  if (a1[v5[19]] != a2[v5[19]])
  {
    goto LABEL_26;
  }

  v33 = v5[20];
  v34 = *&a1[v33];
  v35 = *&a2[v33];
  if (v34)
  {
    if (!v35)
    {
      goto LABEL_26;
    }

    sub_229562F68(0, &qword_281401978, 0x277CFEC20);
    v36 = v35;
    v37 = v34;
    v38 = sub_22A4DDEDC();

    if ((v38 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v35)
  {
    goto LABEL_26;
  }

  v39 = v5[21];
  v41 = *&a1[v39];
  v40 = *&a1[v39 + 8];
  v42 = &a2[v39];
  v44 = *v42;
  v43 = v42[1];
  if (v40 >> 60 != 15)
  {
    if (v43 >> 60 != 15)
    {
      sub_2295AEF1C(v41, v40);
      sub_2295AEF1C(v44, v43);
      v45 = sub_2297B7550(v41, v40, v44, v43);
      sub_229590D18(v44, v43);
      sub_229590D18(v41, v40);
      if ((v45 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }

LABEL_43:
    sub_2295AEF1C(v41, v40);
    sub_2295AEF1C(v44, v43);
    sub_229590D18(v41, v40);
    sub_229590D18(v44, v43);
    goto LABEL_26;
  }

  if (v43 >> 60 != 15)
  {
    goto LABEL_43;
  }

  sub_2295AEF1C(v41, v40);
  sub_2295AEF1C(v44, v43);
  sub_229590D18(v41, v40);
LABEL_45:
  v46 = v5[22];
  v47 = &a1[v46];
  v48 = *&a1[v46 + 8];
  v49 = &a2[v46];
  v50 = *(v49 + 1);
  if (v48)
  {
    if (!v50 || (*v47 != *v49 || v48 != v50) && (sub_22A4DE60C() & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_52:
    v29 = a1[v5[23]] ^ a2[v5[23]] ^ 1;
    return v29 & 1;
  }

  if (!v50)
  {
    goto LABEL_52;
  }

LABEL_26:
  v29 = 0;
  return v29 & 1;
}

uint64_t _s13HomeKitDaemon0A9PassStateV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_2296CBB24(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 9);
  v6 = *(a2 + 9);
  if (v5 == 2)
  {
    if (v6 != 2)
    {
      return 0;
    }
  }

  else if (v6 == 2 || ((v6 ^ v5) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 10) != *(a2 + 10) || *(a1 + 11) != *(a2 + 11) || *(a1 + 12) != *(a2 + 12) || *(a1 + 13) != *(a2 + 13))
  {
    return 0;
  }

  v7 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

LABEL_19:
  v8 = *(type metadata accessor for HomePassState(0) + 48);

  return _s13HomeKitDaemon0A8PassDataV23__derived_struct_equalsySbAC_ACtFZ_0((a1 + v8), (a2 + v8));
}

void sub_2297B7C38()
{
  sub_2297B7CF8();
  if (v0 <= 0x3F)
  {
    sub_2297B7D5C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for HomePassData(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2297B7CF8()
{
  if (!qword_281401C68)
  {
    sub_22A4DB7DC();
    sub_2295EF000();
    v0 = sub_22A4DDBBC();
    if (!v1)
    {
      atomic_store(v0, &qword_281401C68);
    }
  }
}

void sub_2297B7D5C()
{
  if (!qword_281401818)
  {
    type metadata accessor for HMHomeWalletKeyAddOptions(255);
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281401818);
    }
  }
}

void sub_2297B7DDC()
{
  sub_22A4DB7DC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HMFProductClass(319);
    if (v1 <= 0x3F)
    {
      sub_2297B7FF8(319, &qword_281401CE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2297B7FF8(319, &qword_281401CC8, &type metadata for PreexistingKeys, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_2297B7F90();
          if (v4 <= 0x3F)
          {
            sub_2297B7FF8(319, &unk_2814038A0, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2297B7F90()
{
  if (!qword_281401970)
  {
    sub_229562F68(255, &qword_281401978, 0x277CFEC20);
    v0 = sub_22A4DDF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281401970);
    }
  }
}

void sub_2297B7FF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for UWBCapabilityChanged(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UWBCapabilityChanged(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_BYTE *sub_2297B81BC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExpressSettings(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ExpressSettings(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2297B8364(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2297B83B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_2297B8424()
{
  result = qword_281402308[0];
  if (!qword_281402308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281402308);
  }

  return result;
}

uint64_t sub_2297B8478@<X0>(void *a1@<X8>)
{
  v3 = *(sub_22A4DB7DC() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 19) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 10) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1 + v7;
  v12 = (v10 + 75) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = v1 + ((v10 + 57) & 0xFFFFFFFFFFFFFFF8);
  v15 = v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  return sub_2297B6854(*(v1 + 16), v1 + v5, *v11, *(v11 + 8), *(v11 + 9), *(v11 + 10), *(v11 + 11), *(v1 + v8), a1, *(v1 + v8 + 8), *(v1 + v8 + 9), v1 + v9, (v1 + v10), *(v1 + v10 + 48), *(v1 + v10 + 49), *v14, *(v14 + 8), *(v14 + 9), *(v14 + 10), *(v1 + v12), *(v1 + v13), *(v1 + v13 + 8), *v15, *(v15 + 8), *(v15 + 16));
}

uint64_t sub_2297B8688()
{
  v1[26] = v0;
  v2 = sub_22A4DD26C();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();
  v5 = sub_22A4DD29C();
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = *(v6 + 64) + 15;
  v1[32] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881228, &qword_22A5837F8);
  v1[33] = v8;
  v9 = *(v8 - 8);
  v1[34] = v9;
  v10 = *(v9 + 64) + 15;
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297B880C, 0, 0);
}

uint64_t sub_2297B880C()
{
  v1 = [*(v0 + 208) dataSource];
  *(v0 + 288) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 272);
    v3 = *(v0 + 280);
    v5 = *(v0 + 264);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = sub_2297B8A30;
    swift_continuation_init();
    *(v0 + 136) = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    sub_2297B9688();
    sub_22A4DD8DC();
    (*(v4 + 32))(boxed_opaque_existential_1, v3, v5);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2297B8D28;
    *(v0 + 104) = &block_descriptor_37;
    [v2 detectNearbyAccessoriesOnMismatchNetworkWithCompletionHandler_];
    (*(v4 + 8))(boxed_opaque_existential_1, v5);

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v7 = *(v0 + 280);
    v8 = *(v0 + 256);
    v9 = *(v0 + 232);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_2297B8A30()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297B8B10, 0, 0);
}

uint64_t sub_2297B8B10()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[29];
  v19 = v0[31];
  v20 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  v7 = v0[24];
  swift_unknownObjectRelease();
  v18 = [v6 workQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v0[22] = sub_2297B96D4;
  v0[23] = v8;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_22953E640;
  v0[21] = &block_descriptor_16_0;
  v9 = _Block_copy(v0 + 18);
  v10 = v6;
  v11 = v7;
  sub_22A4DD28C();
  v0[25] = MEMORY[0x277D84F90];
  sub_22974B658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v2, v3, v9);
  _Block_release(v9);

  (*(v4 + 8))(v3, v5);
  (*(v19 + 8))(v2, v20);
  v12 = v0[23];

  v13 = v0[35];
  v14 = v0[32];
  v15 = v0[29];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2297B8D28(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881228, &qword_22A5837F8);
  return sub_22A4DD8FC();
}

id sub_2297B8D88(void *a1, void *a2)
{
  result = [a1 _isNearbyDiscoveryActive];
  if (result)
  {
    v5 = [a2 accessoriesNotOnWiFi];
    if (!v5)
    {
      sub_22A4DB7DC();
      sub_22A4DD83C();
      v5 = sub_22A4DD81C();
    }

    [a1 setNearbyAccessoryUUIDsNotOnCurrentNetwork_];

    v6 = [a2 accessoriesNotOnWiFiAndNotConnectingToPrimaryResident];
    if (!v6)
    {
      sub_22A4DB7DC();
      sub_22A4DD83C();
      v6 = sub_22A4DD81C();
    }

    [a1 setNearbyAccessoryUUIDsNotConnectToPrimaryResident_];

    v7 = [a2 accessoriesReportingDiagnostic];
    if (!v7)
    {
      sub_22A4DB7DC();
      sub_22A4DD83C();
      v7 = sub_22A4DD81C();
    }

    [a1 setNearbyAccessoryUUIDsReportingDiagnostic_];

    return [a1 _updateSymptomsForAllRegisteredAccessories];
  }

  return result;
}

uint64_t sub_2297B9090(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2297B9138;

  return sub_2297B8688();
}

uint64_t sub_2297B9138()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;

  if (v3)
  {
    v6 = *(v1 + 24);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_2297B9280@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() driver];
  v3 = sub_2297B3744();

  if (v3)
  {
    type metadata accessor for AssertionHandle();
    v4 = swift_allocObject();
    sub_2297B9494(v3, 0xD000000000000014, 0x800000022A58C0A0, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D840, &qword_22A578DC8);
  v5 = sub_22A4DDF8C();

  result = swift_getObjectType();
  a1[3] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_2297B9494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 32) = &off_283CE25F0;
  swift_unknownObjectWeakAssign();
  v8 = type metadata accessor for AssertionHandle.Assertion(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  sub_22A4DB7CC();
  if (!a3)
  {
    a2 = sub_22A4DB76C();
    a3 = v12;
  }

  v13 = (v11 + OBJC_IVAR____TtCC13HomeKitDaemon15AssertionHandle9Assertion_reason);
  *v13 = a2;
  v13[1] = a3;
  *(a4 + 16) = v11;
  v14 = *(a1 + OBJC_IVAR___HMDDiscoveryController_assertions);

  os_unfair_lock_lock((v14 + 24));
  sub_2297B95C0((v14 + 16), &v17);
  os_unfair_lock_unlock((v14 + 24));
  v15 = v17;

  sub_229714B48(v11);
  if (v15 == 1)
  {
    sub_229714110();
  }

  return a4;
}

uint64_t sub_2297B95DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_2297B9090(v2, v3);
}

unint64_t sub_2297B9688()
{
  result = qword_281401808;
  if (!qword_281401808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401808);
  }

  return result;
}

uint64_t block_copy_helper_14_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2297B96F4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = *MEMORY[0x277D28900];
  v10[0] = sub_22A4DD5EC();
  v10[1] = v4;
  sub_22A4DE18C();
  if (*(v2 + 16) && (v5 = sub_2295402E8(v9), (v6 & 1) != 0))
  {
    sub_2295404B0(*(v2 + 56) + 32 * v5, v10);
    sub_22954045C(v9);

    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {

    sub_22954045C(v9);
  }

  return 0;
}

uint64_t sub_2297B97D8(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  v3 = *MEMORY[0x277D288E8];
  v10[0] = sub_22A4DD5EC();
  v10[1] = v4;
  sub_22A4DE18C();
  if (*(v2 + 16) && (v5 = sub_2295402E8(v9), (v6 & 1) != 0))
  {
    sub_2295404B0(*(v2 + 56) + 32 * v5, v10);
    sub_22954045C(v9);

    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {

    sub_22954045C(v9);
  }

  return 0;
}

uint64_t sub_2297B992C()
{
  swift_getObjectType();
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 91;
  v10[1] = 0xE100000000000000;
  v6 = sub_22A4DE8EC();
  MEMORY[0x22AAD08C0](v6);

  MEMORY[0x22AAD08C0](47, 0xE100000000000000);
  v7 = [v0 homeUUID];
  sub_22A4DB79C();

  sub_229586A3C();
  v8 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v8);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  return v10[0];
}

id sub_2297B9CB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CleanEnergyAutomationReducedEnergyLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2297B9D10(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v29 = MEMORY[0x277D84F90];
    sub_229583714(0, v4, 0);
    v6 = v29;
    v7 = -1 << *(v5 + 32);
    v25 = v5 + 64;
    v8 = sub_22A4DE04C();
    v9 = 0;
    v26 = *(v5 + 36);
    v23 = v5 + 72;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
    {
      v10 = v8 >> 6;
      if ((*(v25 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v26 != *(v5 + 36))
      {
        goto LABEL_24;
      }

      v24 = v9;
      v11 = v5;
      v12 = *(*(v5 + 56) + 8 * v8);
      v27[0] = *(*(v5 + 48) + 8 * v8);
      v27[1] = v12;
      v2 = v12;
      sub_2297C1A30(v27, &v28);
      if (v3)
      {
        goto LABEL_28;
      }

      v13 = v28;
      v29 = v6;
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_229583714((v14 > 1), v15 + 1, 1);
        v6 = v29;
      }

      *(v6 + 16) = v15 + 1;
      *(v6 + 8 * v15 + 32) = v13;
      v2 = (1 << *(v11 + 32));
      if (v8 >= v2)
      {
        goto LABEL_25;
      }

      v16 = *(v25 + 8 * v10);
      if ((v16 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      v5 = v11;
      if (v26 != *(v11 + 36))
      {
        goto LABEL_27;
      }

      v17 = v16 & (-2 << (v8 & 0x3F));
      if (v17)
      {
        v2 = (__clz(__rbit64(v17)) | v8 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v18 = v10 << 6;
        v19 = v10 + 1;
        v20 = (v23 + 8 * v10);
        while (v19 < (v2 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_22962F424(v8, v26, 0);
            v2 = (__clz(__rbit64(v21)) + v18);
            goto LABEL_4;
          }
        }

        sub_22962F424(v8, v26, 0);
      }

LABEL_4:
      v3 = 0;
      v9 = v24 + 1;
      v8 = v2;
      if (v24 + 1 == v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:

    __break(1u);
  }
}

uint64_t sub_2297B9F8C()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_backgroundTaskManager;
  v2 = v0 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateTimerIdentifier;
  v3 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateTimerIdentifier);
  v4 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateTimerIdentifier + 8);
  v5 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_backgroundTaskManager);

  v6 = sub_22A4DD5AC();

  [v5 cancelTaskWithIdentifier:v6 onObserver:v0];

  v7 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_homeUUID;
  v8 = sub_22A4DB7DC();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_messenger));
  v9 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_dateProvider);
  swift_unknownObjectRelease();

  v10 = *(v2 + 8);

  v11 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_detectorsByContributorType);

  v12 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports);

  v13 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger;
  v14 = sub_22A4DD07C();
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2297BA0F8()
{
  sub_2297B9F8C();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for DefaultUserActivityReportCoordinator()
{
  result = qword_27D8812E8;
  if (!qword_27D8812E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2297BA178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_229586D38;

  return sub_2297BB134(a5, a6);
}

uint64_t sub_2297BA380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_229569B30;

  return sub_2297BBC38(a5);
}

uint64_t sub_2297BA52C()
{
  v1[2] = v0;
  v2 = sub_22A4DD07C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297BA5EC, v0, 0);
}

uint64_t sub_2297BA5EC()
{
  v21 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  *(v4 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_isCoordinating) = 1;
  (*(v1 + 16))(v2, v4 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v3);

  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  if (v7)
  {
    v19 = v0[5];
    v11 = v0[2];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v20[0] = v13;
    v20[1] = 91;
    v20[2] = 0xE100000000000000;
    v14 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v14);

    MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
    MEMORY[0x22AAD08C0](0xD000000000000013, 0x800000022A596900);
    MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
    v15 = sub_2295A3E30(91, 0xE100000000000000, v20);

    *(v12 + 4) = v15;
    _os_log_impl(&dword_229538000, v5, v6, "%s Beginning coordination", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v9 + 8))(v19, v10);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v16 = v0[5];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2297BA994(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_229669DAC;

  return sub_2297BA52C();
}

uint64_t sub_2297BAA3C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2297BAA5C, v1, 0);
}

uint64_t sub_2297BAA5C()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v4 = sub_2296DC084(1);
    if (v5)
    {
      if (*(*(v3 + 56) + 8 * v4))
      {
        v6 = *(v0 + 48);
        sub_2297C0578(0, *(v0 + 40), 1);
      }
    }
  }

  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_2297BAB40;
  v8 = *(v0 + 48);

  return sub_2297C0BEC();
}

uint64_t sub_2297BAB40()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2297BAC50, v2, 0);
}

uint64_t sub_2297BADFC(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_22965E220;

  return sub_2297BAA3C(a1);
}

uint64_t sub_2297BB030(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_2297BB0AC, a2, 0);
}

uint64_t sub_2297BB0AC()
{
  v1 = v0[3];
  v2 = *(v0[2] + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_isCoordinating);

  v1[2](v1, v2);
  _Block_release(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2297BB134(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_22A4DD07C();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297BB204, v2, 0);
}

uint64_t sub_2297BB204()
{
  v82 = v0;
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger;
  v0[18] = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger;
  v6 = *(v3 + 16);
  v0[19] = v6;
  v0[20] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);

  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  v78 = v0;
  if (v9)
  {
    v13 = v0[13];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315138;
    v79 = v15;
    v80 = 91;
    v81 = 0xE100000000000000;
    v16 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v16);

    MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
    MEMORY[0x22AAD08C0](0xD000000000000017, 0x800000022A5968E0);
    MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, &v79);

    *(v14 + 4) = v17;
    _os_log_impl(&dword_229538000, v7, v8, "%s started", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    v18 = *(v12 + 8);
    v18(v10, v11);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v10, v11);
  }

  v0[21] = v18;
  v19 = v0[12];
  if (v19 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v21 = 0;
    v22 = v0[13];
    v23 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
    v75 = v19 & 0xFFFFFFFFFFFFFF8;
    v77 = v19 & 0xC000000000000001;
    v73 = v0[12] + 32;
    while (1)
    {
      if (v77)
      {
        v26 = MEMORY[0x22AAD13F0](v21, v0[12]);
      }

      else
      {
        if (v21 >= *(v75 + 16))
        {
          goto LABEL_27;
        }

        v26 = *(v73 + 8 * v21);
      }

      v27 = v26;
      v28 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v29 = [swift_getObjCClassFromObject() contributorType];
      swift_beginAccess();
      v30 = *(v22 + v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = *(v22 + v23);
      v19 = v80;
      v0 = v22;
      *(v22 + v23) = 0x8000000000000000;
      v32 = sub_2296DC084(v29);
      v34 = *(v19 + 16);
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        goto LABEL_25;
      }

      v38 = v33;
      if (*(v19 + 24) < v37)
      {
        sub_2298966F8(v37, isUniquelyReferenced_nonNull_native);
        v19 = v80;
        v32 = sub_2296DC084(v29);
        if ((v38 & 1) != (v39 & 1))
        {
LABEL_49:
          type metadata accessor for HMDHomeActivityStateContributorType(0);

          return sub_22A4DE67C();
        }

LABEL_19:
        if (v38)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v42 = v32;
      sub_229899CFC();
      v32 = v42;
      v19 = v80;
      if (v38)
      {
LABEL_7:
        v24 = *(v19 + 56);
        v25 = *(v24 + 8 * v32);
        *(v24 + 8 * v32) = 0;

        goto LABEL_8;
      }

LABEL_20:
      *(v19 + 8 * (v32 >> 6) + 64) |= 1 << v32;
      *(*(v19 + 48) + 8 * v32) = v29;
      *(*(v19 + 56) + 8 * v32) = 0;
      v40 = *(v19 + 16);
      v36 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      *(v19 + 16) = v41;
LABEL_8:
      v22 = v0;
      *(v0 + v23) = v19;
      v0 = v78;
      swift_endAccess();
      [v27 setStateChangeDelegate_];

      ++v21;
      if (v28 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:
  v43 = v0[13];
  v44 = v0[11];
  v45 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_detectorsByContributorType;
  swift_beginAccess();
  v46 = *(v43 + v45);
  *(v43 + v45) = MEMORY[0x277D84F98];

  if (v44 >> 62)
  {
    goto LABEL_56;
  }

  v47 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v47)
  {
LABEL_31:
    v48 = 0;
    v72 = v44 & 0xFFFFFFFFFFFFFF8;
    v74 = v44 & 0xC000000000000001;
    v71 = v0[11] + 32;
    while (1)
    {
      if (v74)
      {
        v52 = MEMORY[0x22AAD13F0](v48, v0[11]);
      }

      else
      {
        if (v48 >= *(v72 + 16))
        {
          goto LABEL_55;
        }

        v52 = *(v71 + 8 * v48);
      }

      v44 = v52;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        if (v0[11] < 0)
        {
          v68 = v0[11];
        }

        v47 = sub_22A4DE0EC();
        if (!v47)
        {
          goto LABEL_59;
        }

        goto LABEL_31;
      }

      v76 = v48 + 1;
      v53 = [swift_getObjCClassFromObject() contributorType];
      swift_beginAccess();
      v54 = v44;
      v55 = *(v43 + v45);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v80 = *(v43 + v45);
      v44 = v80;
      v57 = v43;
      *(v43 + v45) = 0x8000000000000000;
      v58 = sub_2296DC084(v53);
      v60 = *(v44 + 16);
      v61 = (v59 & 1) == 0;
      v36 = __OFADD__(v60, v61);
      v62 = v60 + v61;
      if (v36)
      {
        goto LABEL_53;
      }

      v43 = v59;
      if (*(v44 + 24) < v62)
      {
        break;
      }

      if (v56)
      {
        goto LABEL_44;
      }

      v66 = v58;
      sub_229899E58();
      v58 = v66;
      v44 = v80;
      if (v43)
      {
LABEL_32:
        v49 = *(v44 + 56);
        v50 = *(v49 + 8 * v58);
        *(v49 + 8 * v58) = v54;

        goto LABEL_33;
      }

LABEL_45:
      *(v44 + 8 * (v58 >> 6) + 64) |= 1 << v58;
      *(*(v44 + 48) + 8 * v58) = v53;
      *(*(v44 + 56) + 8 * v58) = v54;
      v64 = *(v44 + 16);
      v36 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v36)
      {
        goto LABEL_54;
      }

      *(v44 + 16) = v65;
LABEL_33:
      v0 = v78;
      v51 = v78[13];
      v43 = v57;
      *(v57 + v45) = v44;
      swift_endAccess();
      [v54 setStateChangeDelegate_];

      ++v48;
      if (v76 == v47)
      {
        goto LABEL_59;
      }
    }

    sub_229896984(v62, v56);
    v44 = v80;
    v58 = sub_2296DC084(v53);
    if ((v43 & 1) != (v63 & 1))
    {
      goto LABEL_49;
    }

LABEL_44:
    if (v43)
    {
      goto LABEL_32;
    }

    goto LABEL_45;
  }

LABEL_59:
  v69 = swift_task_alloc();
  v0[22] = v69;
  *v69 = v0;
  v69[1] = sub_2297BB8F4;
  v70 = v0[13];

  return sub_2297BBC38(1);
}

uint64_t sub_2297BB8F4()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2297BBA04, v2, 0);
}

uint64_t sub_2297BBA04()
{
  v20 = v0;
  v1 = *(v0 + 160);
  (*(v0 + 152))(*(v0 + 128), *(v0 + 104) + *(v0 + 144), *(v0 + 112));

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 168);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 112);
  if (v4)
  {
    v18 = *(v0 + 168);
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315138;
    v19[0] = v11;
    v19[1] = 91;
    v19[2] = 0xE100000000000000;
    v12 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v12);

    MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
    MEMORY[0x22AAD08C0](0xD000000000000017, 0x800000022A5968E0);
    MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
    v13 = sub_2295A3E30(91, 0xE100000000000000, v19);

    *(v10 + 4) = v13;
    _os_log_impl(&dword_229538000, v2, v3, "%s finished", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    v18(v6, v8);
  }

  else
  {

    v5(v6, v8);
  }

  v15 = *(v0 + 128);
  v14 = *(v0 + 136);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2297BBC38(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2297BBC58, v1, 0);
}

uint64_t sub_2297BBC58()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_isCoordinating;
  v0[7] = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_isCoordinating;
  *(v1 + v2) = 1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_2297BBD00;
  v4 = v0[6];

  return sub_2297BC064();
}

uint64_t sub_2297BBD00()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2297BBE10, v2, 0);
}

uint64_t sub_2297BBE10()
{
  v1 = *(v0 + 48);
  if (sub_2297BC470())
  {
    v2 = *(v0 + 48);
    v3 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (*(v4 + 16))
    {
      v5 = sub_2296DC084(1);
      if (v6)
      {
        if (*(*(v4 + 56) + 8 * v5))
        {
          v7 = *(v0 + 48);
          sub_2297C0578(0, *(v0 + 40), 1);
        }
      }
    }

    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_2297BBF38;
    v9 = *(v0 + 48);

    return sub_2297C0BEC();
  }

  else
  {
    *(*(v0 + 48) + *(v0 + 56)) = 0;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2297BBF38()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2297BC048, v2, 0);
}

uint64_t sub_2297BC084()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_detectorsByContributorType;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 48) = v3;
  v4 = *(v3 + 32);
  *(v0 + 88) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-(-1 << v4) < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);

  if (v7)
  {
    v9 = 0;
LABEL_8:
    *(v0 + 56) = v7;
    *(v0 + 64) = v9;
    v11 = *(*(v8 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    *(v0 + 72) = v11;
    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 80) = v13;
    *v13 = v0;
    v13[1] = sub_2297BC20C;
    v14 = *(v0 + 40);

    return sub_2297BEDD4(v12, 0);
  }

  else
  {
    v10 = 0;
    while (((63 - v6) >> 6) - 1 != v10)
    {
      v9 = v10 + 1;
      v7 = *(v8 + 8 * v10++ + 72);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_2297BC20C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2297BC31C, v2, 0);
}

void sub_2297BC31C()
{
  v1 = *(v0 + 64);
  v2 = (*(v0 + 56) - 1) & *(v0 + 56);
  if (v2)
  {
    v3 = *(v0 + 48);
LABEL_7:
    *(v0 + 56) = v2;
    *(v0 + 64) = v1;
    v5 = *(*(v3 + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v2)))));
    *(v0 + 72) = v5;
    v6 = v5;
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_2297BC20C;
    v8 = *(v0 + 40);

    sub_2297BEDD4(v6, 0);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 48);
      if (v4 >= (((1 << *(v0 + 88)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v9 = *(v0 + 8);

    v9();
  }
}

uint64_t sub_2297BC470()
{
  v1 = v0;
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (*(v8 + 16))
  {
    v9 = sub_2296DC084(1);
    if (v10)
    {
      if (*(*(v8 + 56) + 8 * v9))
      {
        return 1;
      }
    }
  }

  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v2);

  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCCC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315394;
    v18 = 91;
    v19 = 0xE100000000000000;
    v20 = v15;
    v16 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v16);

    MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
    MEMORY[0x22AAD08C0](0xD00000000000001ELL, 0x800000022A5968C0);
    MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
    v17 = sub_2295A3E30(v18, v19, &v20);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2048;
    *(v14 + 14) = 1;
    _os_log_impl(&dword_229538000, v12, v13, "%s Nothing to send because contributor type %lu value is unknown", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_2297BC704(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22A4DD07C();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297BC7C4, v1, 0);
}

uint64_t sub_2297BC7C4()
{
  v34 = v0;
  v1 = *(v0 + 48);
  v2 = [*(v0 + 40) contributorType];
  v3 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_detectorsByContributorType;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16) && (sub_2296DC084(v2), (v4 & 1) != 0))
  {
    v5 = *(v0 + 40);
    v6 = [v5 contributorType];
    v7 = [v5 reason];
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_2297BCB6C;
    v9 = *(v0 + 48);

    return sub_2297BCC7C(v5, v6, v7);
  }

  else
  {
    v11 = *(v0 + 40);
    (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 48) + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, *(v0 + 56));
    v12 = v11;

    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v20 = *(v0 + 40);
      v19 = *(v0 + 48);
      v32 = *(v0 + 56);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v21 = 136315650;
      v33[0] = v23;
      v33[1] = 91;
      v33[2] = 0xE100000000000000;
      v24 = sub_22A4DB76C();
      v31 = v16;
      MEMORY[0x22AAD08C0](v24);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0x6F70657228746573, 0xEC000000293A7472);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v25 = sub_2295A3E30(91, 0xE100000000000000, v33);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2048;
      v26 = [v20 contributorType];

      *(v21 + 14) = v26;
      *(v21 + 22) = 2112;
      *(v21 + 24) = v20;
      *v22 = v20;
      v27 = v20;
      _os_log_impl(&dword_229538000, v13, v14, "%s Asked to set user activity report for unknown contributor type %lu: %@", v21, 0x20u);
      sub_22953EAE4(v22, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AAD4E50](v23, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);

      (*(v17 + 8))(v31, v32);
    }

    else
    {
      v28 = *(v0 + 40);

      (*(v17 + 8))(v16, v18);
    }

    v29 = *(v0 + 72);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_2297BCB6C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2297BCC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_22A4DD07C();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = sub_22A4DB74C();
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297BCDA8, v3, 0);
}

uint64_t sub_2297BCDA8()
{
  v71 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
  swift_beginAccess();
  v66 = v2;
  v67 = v1;
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_2296DC084(*(v0 + 80)), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    if (v6)
    {
      v7 = *(v0 + 72);
      if (v7)
      {
        v9 = *(v0 + 144);
        v8 = *(v0 + 152);
        v10 = *(v0 + 128);
        v11 = *(v0 + 136);
        v12 = v6;
        v13 = v7;
        v14 = [v13 lastUpdateTimestamp];
        sub_22A4DB70C();

        v15 = [v12 lastUpdateTimestamp];
        sub_22A4DB70C();

        LOBYTE(v15) = sub_22A4DB6BC();
        v16 = *(v11 + 8);
        v16(v9, v10);
        v16(v8, v10);
        if ((v15 & 1) == 0)
        {

LABEL_23:
          v58 = *(v0 + 144);
          v57 = *(v0 + 152);
          v59 = *(v0 + 120);

          v60 = *(v0 + 8);

          return v60();
        }
      }

      else
      {
        v61 = v6;
      }
    }
  }

  else
  {
    v6 = 1;
  }

  *(v0 + 160) = v6;
  v18 = *(v0 + 112);
  v17 = *(v0 + 120);
  v19 = *(v0 + 96);
  v64 = *(v0 + 104);
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  swift_beginAccess();
  v62 = v21;
  v22 = *(v67 + v66);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = *(v67 + v66);
  *(v67 + v66) = 0x8000000000000000;
  sub_2295AC210(v21, v20, isUniquelyReferenced_nonNull_native);
  *(v67 + v66) = v69;
  swift_endAccess();
  (*(v18 + 16))(v17, v19 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v64);
  v24 = v62;

  sub_22954BCAC(v6);
  v25 = sub_22A4DD05C();
  v26 = sub_22A4DDCCC();

  sub_22954BC9C(v6);

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 80);
    v63 = *(v0 + 72);
    v29 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v29 = 136315906;
    v68 = v65;
    v69 = 91;
    v70 = 0xE100000000000000;
    v30 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v30);

    MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
    MEMORY[0x22AAD08C0](0xD000000000000015, 0x800000022A596880);
    MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
    v31 = sub_2295A3E30(91, 0xE100000000000000, &v68);

    *(v29 + 4) = v31;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v28;
    *(v29 + 22) = 2080;
    *(v0 + 64) = v6;
    sub_22954BCAC(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881380, &qword_22A583A48);
    v32 = sub_22A4DD64C();
    v34 = sub_2295A3E30(v32, v33, &v68);

    *(v29 + 24) = v34;
    *(v29 + 32) = 2080;
    if (v63)
    {
      v69 = 678716787;
      v70 = 0xE400000000000000;
      v35 = v24;
      v36 = [v35 description];
      v37 = sub_22A4DD5EC();
      v39 = v38;

      MEMORY[0x22AAD08C0](v37, v39);

      MEMORY[0x22AAD08C0](41, 0xE100000000000000);

      v40 = v69;
      v41 = v70;
    }

    else
    {
      v41 = 0xE500000000000000;
      v40 = 0x7465736E75;
    }

    v46 = *(v0 + 112);
    v45 = *(v0 + 120);
    v47 = *(v0 + 104);
    v48 = sub_2295A3E30(v40, v41, &v68);

    *(v29 + 34) = v48;
    _os_log_impl(&dword_229538000, v25, v26, "%s Updated value of contributor type %lu from %s to %s", v29, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v65, -1, -1);
    MEMORY[0x22AAD4E50](v29, -1, -1);

    (*(v46 + 8))(v45, v47);
  }

  else
  {
    v43 = *(v0 + 112);
    v42 = *(v0 + 120);
    v44 = *(v0 + 104);

    (*(v43 + 8))(v42, v44);
  }

  v49 = *(v0 + 96);
  if ((sub_2297BDAD0(*(v0 + 80), v6) & 1) == 0)
  {
    sub_22954BC9C(v6);
    goto LABEL_23;
  }

  v50 = *(v67 + v66);
  if (*(v50 + 16))
  {
    v51 = sub_2296DC084(1);
    if (v52)
    {
      if (*(*(v50 + 56) + 8 * v51))
      {
        v53 = *(v0 + 96);
        sub_2297C0578(*(v0 + 80), *(v0 + 88), 0);
      }
    }
  }

  v54 = swift_task_alloc();
  *(v0 + 168) = v54;
  *v54 = v0;
  v54[1] = sub_2297BD388;
  v55 = *(v0 + 96);

  return sub_2297C0BEC();
}

uint64_t sub_2297BD388()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2297BD498, v2, 0);
}

uint64_t sub_2297BD498()
{
  sub_22954BC9C(*(v0 + 160));
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 120);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2297BD514(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22A4DD07C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297BD5D8, v2, 0);
}

uint64_t sub_2297BD5D8()
{
  v25 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_detectorsByContributorType;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16) && (sub_2296DC084(v0[5]), (v3 & 1) != 0))
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_2297C2ED0;
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[5];

    return sub_2297BCC7C(0, v7, v5);
  }

  else
  {
    (*(v0[9] + 16))(v0[10], v0[7] + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v0[8]);

    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCEC();

    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[9];
    v12 = v0[10];
    v14 = v0[8];
    if (v11)
    {
      v23 = v0[10];
      v15 = v0[7];
      v22 = v0[5];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136315394;
      v24[0] = v17;
      v24[1] = 91;
      v24[2] = 0xE100000000000000;
      v18 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v18);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A596860);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v19 = sub_2295A3E30(91, 0xE100000000000000, v24);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2048;
      *(v16 + 14) = v22;
      _os_log_impl(&dword_229538000, v9, v10, "%s Asked to unset user activity report for unknown contributor type %lu", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);

      (*(v13 + 8))(v23, v14);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v20 = v0[10];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_2297BD8FC()
{
  result = sub_22A4DB7DC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22A4DD07C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2297BDA24()
{
  if (!*v0)
  {
    return 0x7465736E75;
  }

  v1 = [*v0 description];
  v2 = sub_22A4DD5EC();
  v4 = v3;

  MEMORY[0x22AAD08C0](v2, v4);

  MEMORY[0x22AAD08C0](41, 0xE100000000000000);
  return 678716787;
}

uint64_t sub_2297BDAD0(uint64_t a1, void *a2)
{
  v3 = v2;
  v94 = a2;
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v91 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v91 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v91 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v91 - v22;
  MEMORY[0x28223BE20](v21);
  v26 = &v91 - v24;
  if (*(v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_isCoordinating) == 1)
  {
    (*(v6 + 16))(&v91 - v24, v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v5);

    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCCC();

    v29 = v6;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v95 = v31;
      *v30 = 136315138;
      v98 = 91;
      v99 = 0xE100000000000000;
      v32 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v32);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v33 = sub_2295A3E30(v98, v99, &v95);

      *(v30 + 4) = v33;
      _os_log_impl(&dword_229538000, v27, v28, "%s NO: busy coordinating reports", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v30, -1, -1);
    }

    (*(v29 + 8))(v26, v5);
    return 0;
  }

  v93 = v6;
  if (a1 == 1)
  {
    return 1;
  }

  v35 = v25;
  v92 = a1;
  v36 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
  swift_beginAccess();
  v37 = *(v3 + v36);
  if (!*(v37 + 16) || (v38 = sub_2296DC084(1), (v39 & 1) == 0))
  {
    v51 = v93;
    (*(v93 + 16))(v10, v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v5);

    v52 = sub_22A4DD05C();
    v53 = sub_22A4DDCCC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 136315394;
      v95 = 91;
      v96 = 0xE100000000000000;
      v97 = v55;
      v56 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v56);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v57 = sub_2295A3E30(v95, v96, &v97);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2048;
      *(v54 + 14) = 1;
      _os_log_impl(&dword_229538000, v52, v53, "%s NO: unknown report value for contributor type %lu", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x22AAD4E50](v55, -1, -1);
      MEMORY[0x22AAD4E50](v54, -1, -1);
    }

    (*(v51 + 8))(v10, v5);
    return 0;
  }

  v40 = *(*(v37 + 56) + 8 * v38);
  if (v40)
  {
    v41 = v40;
    v42 = sub_2297BE85C(v41);
    if (v43)
    {
      v44 = v93;
      (*(v93 + 16))(v13, v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v5);

      v45 = sub_22A4DD05C();
      v46 = sub_22A4DDCCC();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 136315394;
        v94 = v41;
        v95 = 91;
        v96 = 0xE100000000000000;
        v97 = v48;
        v49 = sub_22A4DB76C();
        MEMORY[0x22AAD08C0](v49);

        MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
        MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
        MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
        v50 = sub_2295A3E30(v95, v96, &v97);

        *(v47 + 4) = v50;
        *(v47 + 12) = 2048;
        *(v47 + 14) = 1;
        _os_log_impl(&dword_229538000, v45, v46, "%s NO: unknown state for contributor type %lu", v47, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x22AAD4E50](v48, -1, -1);
        MEMORY[0x22AAD4E50](v47, -1, -1);
      }

      else
      {
      }

      (*(v44 + 8))(v13, v5);
      return 0;
    }

    v67 = v93;
    if (v94 != 1)
    {
      v80 = MEMORY[0x277D84F90];
      if (v42 == 3)
      {
        v80 = &unk_283CDBDD8;
      }

      if (v42 == 2)
      {
        v81 = &unk_283CDBDA8;
      }

      else
      {
        v81 = v80;
      }

      v82 = v81[2];
      v83 = 4;
      while (v82)
      {
        v84 = v81[v83++];
        --v82;
        if (v84 == v92)
        {

          return 1;
        }
      }

      (*(v67 + 16))(v35, v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v5);

      v85 = sub_22A4DD05C();
      v86 = sub_22A4DDCCC();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        *v87 = 136315650;
        v94 = v41;
        v95 = 91;
        v96 = 0xE100000000000000;
        v97 = v88;
        v89 = sub_22A4DB76C();
        MEMORY[0x22AAD08C0](v89);

        MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
        MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
        MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
        v90 = sub_2295A3E30(v95, v96, &v97);

        *(v87 + 4) = v90;
        *(v87 + 12) = 2048;
        *(v87 + 14) = v92;
        *(v87 + 22) = 2048;
        *(v87 + 24) = 1;
        _os_log_impl(&dword_229538000, v85, v86, "%s NO: contributor type %lu is not relevant to current state of contributor type %lu", v87, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v88);
        MEMORY[0x22AAD4E50](v88, -1, -1);
        MEMORY[0x22AAD4E50](v87, -1, -1);
      }

      else
      {
      }

      (*(v67 + 8))(v35, v5);
      return 0;
    }

    (*(v93 + 16))(v17, v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v5);

    v68 = sub_22A4DD05C();
    v69 = sub_22A4DDCCC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 136315394;
      v94 = v41;
      v95 = 91;
      v96 = 0xE100000000000000;
      v97 = v71;
      v72 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v72);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v73 = sub_2295A3E30(v95, v96, &v97);

      *(v70 + 4) = v73;
      *(v70 + 12) = 2048;
      *(v70 + 14) = v92;
      _os_log_impl(&dword_229538000, v68, v69, "%s YES: previous value for contributor type %lu was nil", v70, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x22AAD4E50](v71, -1, -1);
      MEMORY[0x22AAD4E50](v70, -1, -1);
    }

    else
    {
    }

    (*(v67 + 8))(v17, v5);
    return 1;
  }

  else
  {
    v58 = *(v93 + 16);
    v59 = v3 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger;
    if (v94 != 1)
    {
      v58(v20, v59, v5);

      v74 = sub_22A4DD05C();
      v75 = sub_22A4DDCCC();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v76 = 136315394;
        v95 = 91;
        v96 = 0xE100000000000000;
        v97 = v77;
        v78 = sub_22A4DB76C();
        MEMORY[0x22AAD08C0](v78);

        MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
        MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
        MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
        v79 = sub_2295A3E30(v95, v96, &v97);

        *(v76 + 4) = v79;
        *(v76 + 12) = 2048;
        *(v76 + 14) = 1;
        _os_log_impl(&dword_229538000, v74, v75, "%s NO: unset report value for contributor type %lu", v76, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v77);
        MEMORY[0x22AAD4E50](v77, -1, -1);
        MEMORY[0x22AAD4E50](v76, -1, -1);
      }

      (*(v93 + 8))(v20, v5);
      return 0;
    }

    v60 = v5;
    v58(v23, v59, v5);

    v61 = sub_22A4DD05C();
    v62 = sub_22A4DDCCC();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v63 = 136315394;
      v95 = 91;
      v96 = 0xE100000000000000;
      v97 = v64;
      v65 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v65);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001CLL, 0x800000022A5968A0);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v66 = sub_2295A3E30(v95, v96, &v97);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2048;
      *(v63 + 14) = v92;
      _os_log_impl(&dword_229538000, v61, v62, "%s YES: previous value for contributor type %lu was nil", v63, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x22AAD4E50](v64, -1, -1);
      MEMORY[0x22AAD4E50](v63, -1, -1);
    }

    (*(v93 + 8))(v23, v60);
    return 1;
  }
}

id sub_2297BE85C(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = a1;
    v15 = [v13 state];
    if (v15 < 2)
    {
      (*(v5 + 16))(v11, v2 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v4);
      v28 = v14;

      v29 = sub_22A4DD05C();
      v30 = sub_22A4DDCEC();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v40 = v32;
        *v31 = 136315650;
        v41 = 91;
        v42 = 0xE100000000000000;
        v43 = v32;
        v33 = sub_22A4DB76C();
        MEMORY[0x22AAD08C0](v33);

        MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
        MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A596840);
        MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
        v34 = sub_2295A3E30(v41, v42, &v43);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2048;
        *(v31 + 14) = 1;
        *(v31 + 22) = 2112;
        *(v31 + 24) = v28;
        v35 = v39;
        *v39 = v28;
        v36 = v28;
        _os_log_impl(&dword_229538000, v29, v30, "%s Found user activity report with invalid state for contributor type %lu: %@", v31, 0x20u);
        sub_22953EAE4(v35, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v35, -1, -1);
        v37 = v40;
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x22AAD4E50](v37, -1, -1);
        MEMORY[0x22AAD4E50](v31, -1, -1);

        (*(v5 + 8))(v11, v4);
        return 0;
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      if ((v15 - 2) <= 1)
      {
        v16 = [v13 state];

        return v16;
      }
    }
  }

  else
  {
    (*(v5 + 16))(v9, v2 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v4);
    v18 = a1;

    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v21 = 136315650;
      v41 = 91;
      v42 = 0xE100000000000000;
      v43 = v22;
      v23 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v23);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A596840);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v24 = sub_2295A3E30(v41, v42, &v43);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2048;
      *(v21 + 14) = 1;
      *(v21 + 22) = 2112;
      *(v21 + 24) = v18;
      v25 = v39;
      *v39 = v18;
      v26 = v18;
      _os_log_impl(&dword_229538000, v19, v20, "%s Found user activity report with incorrect contributor type, expected contributor type %lu: %@", v21, 0x20u);
      sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      v27 = v40;
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);

      (*(v5 + 8))(v9, v4);
      return 0;
    }

    (*(v5 + 8))(v9, v4);
  }

  return 0;
}

uint64_t sub_2297BEDD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22A4DD07C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297BEE98, v2, 0);
}

uint64_t sub_2297BEE98()
{
  v38 = v0;
  v1 = [*(v0 + 16) latestReport];
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = [v4 value];
      *(v0 + 72) = v6;
      v7 = swift_task_alloc();
      *(v0 + 80) = v7;
      *v7 = v0;
      v7[1] = sub_2297BF2D4;
      v8 = *(v0 + 32);

      return sub_2297BC704(v6);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v10 = *(v0 + 16);
      v11 = [swift_getObjCClassFromObject() contributorType];
      v12 = swift_task_alloc();
      *(v0 + 88) = v12;
      *v12 = v0;
      v12[1] = sub_2297BF468;
      v13 = *(v0 + 24);
      v14 = *(v0 + 32);

      return sub_2297BD514(v11, v13);
    }

    (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 32) + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, *(v0 + 40));
    v15 = v2;

    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    v18 = os_log_type_enabled(v16, v17);
    v20 = *(v0 + 48);
    v19 = *(v0 + 56);
    v21 = *(v0 + 40);
    if (v18)
    {
      v36 = *(v0 + 56);
      v22 = *(v0 + 32);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 136315394;
      v35 = v21;
      v37[0] = v24;
      v37[1] = 91;
      v37[2] = 0xE100000000000000;
      v25 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v25);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001ELL, 0x800000022A596750);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v26 = sub_2295A3E30(91, 0xE100000000000000, v37);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = v15;
      v28 = [v27 description];
      v29 = sub_22A4DD5EC();
      v31 = v30;

      v32 = sub_2295A3E30(v29, v31, v37);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_229538000, v16, v17, "%s Found unexpected user activity report value: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);

      (*(v20 + 8))(v36, v35);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }
  }

  v33 = *(v0 + 56);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2297BF2D4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2297BF3FC, v3, 0);
}

uint64_t sub_2297BF3FC()
{
  v1 = v0[8];

  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2297BF468()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2297BF578, v2, 0);
}

uint64_t sub_2297BF578()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2297BF5E0()
{
  v1 = v0;
  v78[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v68 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v65 - v7);
  v9 = sub_22A4DB74C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v65 - v18;
  v20 = [*(v0 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_dateProvider) now];
  sub_22A4DB70C();

  v21 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateInterval);
  sub_22A4DB6DC();
  v22 = v17;
  v23 = v10[1];
  v74 = v10 + 1;
  v23(v22, v9);
  v71 = v3;
  v24 = *(v3 + 16);
  v65 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger;
  v66 = v24;
  v75 = v2;
  v67 = v3 + 16;
  v24(v8, v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v2);
  v25 = v10[2];
  v72 = v19;
  v25(v14, v19, v9);

  v69 = v8;
  v26 = sub_22A4DD05C();
  v27 = sub_22A4DDCCC();

  v28 = os_log_type_enabled(v26, v27);
  v70 = v9;
  v73 = v23;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v78[0] = v30;
    *v29 = 136315394;
    v31 = v9;
    v76 = 91;
    v77 = 0xE100000000000000;
    v32 = sub_22A4DB76C();
    MEMORY[0x22AAD08C0](v32);

    MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
    MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A5967E0);
    MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
    v33 = sub_2295A3E30(v76, v77, v78);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    v34 = sub_22A4DB6AC();
    v35 = [v34 hmf_localTimeDescription];

    v36 = sub_22A4DD5EC();
    v38 = v37;

    v73(v14, v31);
    v39 = sub_2295A3E30(v36, v38, v78);

    *(v29 + 14) = v39;
    _os_log_impl(&dword_229538000, v26, v27, "%s Scheduling periodic update timer to fire at %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v30, -1, -1);
    MEMORY[0x22AAD4E50](v29, -1, -1);
  }

  else
  {

    v23(v14, v9);
  }

  v40 = *(v71 + 8);
  v40(v69, v75);
  v41 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_backgroundTaskManager);
  v42 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateTimerIdentifier);
  v43 = *(v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateTimerIdentifier + 8);
  v44 = sub_22A4DD5AC();
  v45 = v72;
  v46 = sub_22A4DB6AC();
  v76 = 0;
  v47 = [v41 scheduleTaskWithIdentifier:v44 fireDate:v46 onObserver:v1 selector:sel_handleBackgroundTaskManagerTimerFiredWithNotification_ error:&v76];

  if (v47)
  {
    v48 = v76;
    result = (v73)(v45, v70);
  }

  else
  {
    v50 = v76;
    v51 = sub_22A4DB3EC();

    swift_willThrow();
    v52 = v68;
    v66(v68, v1 + v65, v75);

    v53 = v51;
    v54 = sub_22A4DD05C();
    v55 = sub_22A4DDCEC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v78[0] = v69;
      *v56 = 136315394;
      v76 = 91;
      v77 = 0xE100000000000000;
      v58 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v58);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000001DLL, 0x800000022A5967E0);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v59 = sub_2295A3E30(v76, v77, v78);

      *(v56 + 4) = v59;
      *(v56 + 12) = 2112;
      v60 = v51;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 14) = v61;
      *v57 = v61;
      _os_log_impl(&dword_229538000, v54, v55, "%s Failed to schedule periodic update timer with error: %@", v56, 0x16u);
      sub_22953EAE4(v57, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v57, -1, -1);
      v62 = v69;
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x22AAD4E50](v62, -1, -1);
      MEMORY[0x22AAD4E50](v56, -1, -1);

      v40(v68, v75);
      v63 = v72;
    }

    else
    {

      v40(v52, v75);
      v63 = v45;
    }

    result = (v73)(v63, v70);
  }

  v64 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2297BFD58(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - v6;
  v8 = [a1 userInfo];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = sub_22A4DD49C();

  v19[1] = sub_22A4DD5EC();
  v19[2] = v11;
  sub_22A4DE18C();
  if (!*(v10 + 16) || (v12 = sub_2295402E8(v20), (v13 & 1) == 0))
  {

    sub_22954045C(v20);
LABEL_8:
    v21 = 0u;
    v22 = 0u;
    return sub_22953EAE4(&v21, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_2295404B0(*(v10 + 56) + 32 * v12, &v21);
  sub_22954045C(v20);

  if (!*(&v22 + 1))
  {
    return sub_22953EAE4(&v21, &unk_27D87DE60, &unk_22A57A960);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v15 = v20[0];
    v16 = v20[1];
    v17 = sub_22A4DD9DC();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v2;
    v18[5] = v15;
    v18[6] = v16;

    sub_22957F3C0(0, 0, v7, &unk_22A583A20, v18);
  }

  return result;
}

uint64_t sub_2297BFF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_229586D38;

  return sub_2297C0030(a5, a6);
}

uint64_t sub_2297C0030(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22A4DD07C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C00F4, v2, 0);
}

uint64_t sub_2297C00F4()
{
  v27 = v0;
  v1 = v0[7];
  if (*(v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateTimerIdentifier) == v0[5] && *(v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_periodicUpdateTimerIdentifier + 8) == v0[6])
  {
LABEL_7:
    (*(v0[9] + 16))(v0[10], v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v0[8]);

    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCCC();

    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];
    if (v5)
    {
      v25 = v0[10];
      v9 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136315138;
      v26[0] = v11;
      v26[1] = 91;
      v26[2] = 0xE100000000000000;
      v12 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v12);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD000000000000024, 0x800000022A596770);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v13 = sub_2295A3E30(91, 0xE100000000000000, v26);

      *(v10 + 4) = v13;
      _os_log_impl(&dword_229538000, v3, v4, "%s Sending periodic reports", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AAD4E50](v11, -1, -1);
      MEMORY[0x22AAD4E50](v10, -1, -1);

      (*(v7 + 8))(v25, v8);
    }

    else
    {

      (*(v7 + 8))(v6, v8);
    }

    v14 = v0[7];
    v15 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
    swift_beginAccess();
    v16 = *(v14 + v15);
    if (*(v16 + 16))
    {
      v17 = sub_2296DC084(1);
      if (v18)
      {
        if (*(*(v16 + 56) + 8 * v17))
        {
          v19 = v0[7];
          sub_2297C0578(0, 6, 1);
        }
      }
    }

    v20 = swift_task_alloc();
    v0[11] = v20;
    *v20 = v0;
    v20[1] = sub_2297C0418;
    v21 = v0[7];

    return sub_2297C0BEC();
  }

  if (sub_22A4DE60C())
  {
    v1 = v0[7];
    goto LABEL_7;
  }

  v23 = v0[10];

  v24 = v0[1];

  return v24();
}

uint64_t sub_2297C0418()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 80);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2297C0578(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v79 = a3;
  v78 = a2;
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DB74C();
  v74 = *(v11 - 8);
  v12 = *(v74 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v83 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a1;
  v75 = v13;
  if (a1 && (v15 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports, swift_beginAccess(), v16 = *(v3 + v15), *(v16 + 16)) && (v17 = sub_2296DC084(a1), (v18 & 1) != 0) && (v19 = *(*(v16 + 56) + 8 * v17)) != 0)
  {
    (*(v7 + 16))(v10, v4 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v6);
    v81 = v19;
    v20 = v19;

    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCDC();

    LODWORD(v82) = v22;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v85 = v77;
      *v23 = 136315650;
      v86 = 91;
      v87 = 0xE100000000000000;
      v73 = v21;
      v24 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v24);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD00000000000003DLL, 0x800000022A5967A0);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v25 = sub_2295A3E30(v86, v87, &v85);

      *(v23 + 4) = v25;
      *(v23 + 12) = 2112;
      *(v23 + 14) = v20;
      a1 = v80;
      v26 = v76;
      *v76 = v81;
      *(v23 + 22) = 2048;
      *(v23 + 24) = a1;
      v27 = v20;
      v28 = v73;
      _os_log_impl(&dword_229538000, v73, v82, "%s Updating lastUpdateTimestamp of other reports to match latest report %@ from contributorType %lu", v23, 0x20u);
      sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      v29 = v77;
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v10, v6);
    v72 = [v20 lastUpdateTimestamp];
    sub_22A4DB70C();
  }

  else
  {
    v20 = [*(v4 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_dateProvider) now];
    sub_22A4DB70C();
  }

  v30 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
  swift_beginAccess();
  v31 = *(v30 + v4);
  v32 = v31 + 8;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v31[8];
  v36 = (v33 + 63) >> 6;
  v37 = *(v30 + v4);

  v38 = 0;
  v76 = v31;
  v77 = v30;
  while (v35)
  {
LABEL_18:
    v43 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v44 = (v38 << 9) | (8 * v43);
    v45 = *(v31[6] + v44);
    v46 = *(v31[7] + v44);
    if (v45 != a1 && v46 != 0)
    {
      v48 = v46;
      v49 = sub_22A4DB6AC();
      v50 = v78;
      if ((v79 & 1) == 0)
      {
        v50 = [v48 reason];
      }

      v81 = v48;
      v51 = [v48 copyReportWithLastUpdateTimestamp:v49 reason:v50];

      swift_beginAccess();
      v82 = v51;
      v52 = *(v30 + v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = v4;
      v55 = isUniquelyReferenced_nonNull_native;
      v84 = *(v30 + v54);
      v56 = v84;
      v57 = v54;
      *(v30 + v54) = 0x8000000000000000;
      v58 = v45;
      v60 = sub_2296DC084(v45);
      v61 = v56[2];
      v62 = (v59 & 1) == 0;
      v63 = v61 + v62;
      if (__OFADD__(v61, v62))
      {
        goto LABEL_37;
      }

      v64 = v59;
      if (v56[3] >= v63)
      {
        if ((v55 & 1) == 0)
        {
          sub_229899CFC();
        }
      }

      else
      {
        sub_2298966F8(v63, v55);
        v65 = sub_2296DC084(v58);
        if ((v64 & 1) != (v66 & 1))
        {
          goto LABEL_39;
        }

        v60 = v65;
      }

      v4 = v57;
      v67 = v84;
      if (v64)
      {
        v39 = v84[7];
        v40 = *(v39 + 8 * v60);
        v41 = v82;
        *(v39 + 8 * v60) = v82;
      }

      else
      {
        v84[(v60 >> 6) + 8] |= 1 << v60;
        *(v67[6] + 8 * v60) = v58;
        v41 = v82;
        *(v67[7] + 8 * v60) = v82;
        v68 = v67[2];
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (v69)
        {
          goto LABEL_38;
        }

        v67[2] = v70;
      }

      v30 = v77;
      *(v77 + v57) = v67;
      swift_endAccess();

      a1 = v80;
      v31 = v76;
    }
  }

  while (1)
  {
    v42 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v42 >= v36)
    {
      (*(v74 + 8))(v83, v75);
    }

    v35 = v32[v42];
    ++v38;
    if (v35)
    {
      v38 = v42;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  type metadata accessor for HMDHomeActivityStateContributorType(0);
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}

uint64_t sub_2297C0BEC()
{
  v1[9] = v0;
  v2 = sub_22A4DD07C();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C0CC4, v0, 0);
}

uint64_t sub_2297C0CC4()
{
  v74 = v0;
  v1 = v0[9];
  v2 = sub_2297C163C();
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  if (v2)
  {
    v6 = v2;
    v7 = *(v4 + 16);
    v69 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger;
    v7(v0[14], v5 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v3);

    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCCC();

    v66 = v9;
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[14];
    v12 = v0[11];
    v67 = v0[10];
    if (v10)
    {
      v65 = v0[14];
      v13 = v0[9];
      v14 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v14 = 136315394;
      v71 = v64;
      v72 = 91;
      v73 = 0xE100000000000000;
      v15 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v15);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0x6F706552646E6573, 0xED00002928737472);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v16 = sub_2295A3E30(91, 0xE100000000000000, &v71);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2080;
      type metadata accessor for HMDHomeActivityStateContributorType(0);
      sub_2297C282C();
      v17 = sub_22A4DD4AC();
      v19 = sub_2295A3E30(v17, v18, &v71);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_229538000, v8, v66, "%s Sending report values: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v64, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);

      v20 = *(v12 + 8);
      v21 = v65;
    }

    else
    {

      v20 = *(v12 + 8);
      v21 = v11;
    }

    v38 = v67;
    v68 = v20;
    v20(v21, v38);
    v39 = v0[13];
    v40 = v0[9];
    v41 = v0[10];
    sub_2297B9D10(v6);
    v43 = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881360, &qword_22A5787E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v45;
    *(inited + 48) = v43;
    v46 = sub_22956AEBC(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87D508, &qword_22A5787E8);
    v7(v39, v5 + v69, v41);

    v47 = sub_22A4DD05C();
    v48 = sub_22A4DDCDC();

    v49 = os_log_type_enabled(v47, v48);
    v50 = v0[13];
    v52 = v0[10];
    v51 = v0[11];
    if (v49)
    {
      v70 = v0[13];
      v53 = v0[9];
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 136315394;
      v71 = v55;
      v72 = 91;
      v73 = 0xE100000000000000;
      v56 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v56);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0x6F706552646E6573, 0xED00002928737472);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v57 = sub_2295A3E30(v72, v73, &v71);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      v58 = sub_22A4DD4AC();
      v60 = sub_2295A3E30(v58, v59, &v71);

      *(v54 + 14) = v60;
      _os_log_impl(&dword_229538000, v47, v48, "%s Sending report payload: %s", v54, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v55, -1, -1);
      MEMORY[0x22AAD4E50](v54, -1, -1);

      v61 = v70;
    }

    else
    {

      v61 = v50;
    }

    v68(v61, v52);
    v62 = __swift_project_boxed_opaque_existential_0((v0[9] + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_messenger), *(v0[9] + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_messenger + 24));
    v0[15] = sub_2296F7FBC(v46);

    v63 = *v62;
    v0[16] = *v62;

    return MEMORY[0x2822009F8](sub_2297C1434, v63, 0);
  }

  else
  {
    (*(v4 + 16))(v0[12], v5 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v3);

    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCCC();

    v24 = os_log_type_enabled(v22, v23);
    v26 = v0[11];
    v25 = v0[12];
    v27 = v0[10];
    if (v24)
    {
      v28 = v0[9];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 136315138;
      v71 = v30;
      v72 = 91;
      v73 = 0xE100000000000000;
      v31 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v31);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0x6F706552646E6573, 0xED00002928737472);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v32 = sub_2295A3E30(91, 0xE100000000000000, &v71);

      *(v29 + 4) = v32;
      _os_log_impl(&dword_229538000, v22, v23, "%s No reports to send", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    (*(v26 + 8))(v25, v27);
    v34 = v0[13];
    v33 = v0[14];
    v35 = v0[12];

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_2297C1434()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[9];
  v4 = objc_allocWithZone(HMDRemoteHomeMessageDestination);
  v5 = @"HMDUserActivityReportUpdatedMessage";
  v6 = sub_22A4DB77C();
  v7 = sub_22A4DB77C();
  v8 = [v4 initWithTarget:v6 homeUUID:v7];

  v9 = objc_allocWithZone(HMDRemoteMessage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v10 = sub_22A4DD47C();
  v11 = [v9 initWithName:v5 destination:v8 payload:v10 type:0 timeout:1 secure:60.0];

  *(v2 + OBJC_IVAR____TtC13HomeKitDaemon34DefaultUserActivityReportMessenger_sendCount) = 0;
  sub_2295B0060(v11);

  return MEMORY[0x2822009F8](sub_2297C15C0, v3, 0);
}

uint64_t sub_2297C15C0()
{
  v1 = v0[9];
  sub_2297BF5E0();
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

void *sub_2297C163C()
{
  v1 = v0;
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_currentReports;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (!*(v8 + 16) || (v9 = sub_2296DC084(1), (v10 & 1) == 0))
  {
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v2);

    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCCC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 136315394;
      v41 = 91;
      v42 = 0xE100000000000000;
      v43 = v18;
      v19 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v19);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0x6F547365756C6176, 0xEE002928646E6553);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v20 = sub_2295A3E30(v41, v42, &v43);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 1;
      _os_log_impl(&dword_229538000, v15, v16, "%s Contributor type %lu value is unknown, not sending values", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x22AAD4E50](v18, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  if (v11)
  {
    v12 = v11;
    v13 = sub_2297BE85C(v12);
    if ((v14 & 1) == 0)
    {
      v36 = v13;
      v37 = *(v1 + v7);

      v39 = sub_2297C2884(v38, v1, v36);

      return v39;
    }

    return 0;
  }

  v22 = *(v1 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8820A0, &qword_22A586CA0);
  result = sub_22A4DE3DC();
  v23 = 0;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 64);
  v27 = (v24 + 63) >> 6;
  if (v26)
  {
    while (1)
    {
      v28 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v29 = v28 | (v23 << 6);
LABEL_20:
      v32 = *(*(v22 + 48) + 8 * v29);
      *(result + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v29;
      *(result[6] + 8 * v29) = v32;
      *(result[7] + 8 * v29) = 0;
      v33 = result[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      result[2] = v35;
      if (!v26)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    v30 = v23;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
        return result;
      }

      v31 = *(v22 + 64 + 8 * v23);
      ++v30;
      if (v31)
      {
        v26 = (v31 - 1) & v31;
        v29 = __clz(__rbit64(v31)) | (v23 << 6);
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2297C1A30@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v6;
  v7 = sub_22A4DDFDC();
  v8 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *(inited + 72) = v8;
  *(inited + 48) = v7;
  v9 = sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
  if (v4)
  {
    v10 = sub_22A4DD5EC();
    v12 = v11;
    v46 = v8;
    v45[0] = sub_22A4DDEAC();
    sub_229543C58(v45, v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v9;
    v14 = v44;
    v15 = __swift_mutable_project_boxed_opaque_existential_0(v43, v44);
    v16 = *(*(v14 - 8) + 64);
    MEMORY[0x28223BE20](v15);
    v18 = (v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    sub_2297FED80(*v18, v10, v12, isUniquelyReferenced_nonNull_native, &v47);

    __swift_destroy_boxed_opaque_existential_0(v43);
    v20 = v47;
    v21 = sub_22A4DD5EC();
    v23 = v22;
    v24 = [v4 serializedRemoteMessagePayload];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v25 = sub_22A4DD49C();

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    v45[0] = v25;
    sub_229543C58(v45, v43);
    LOBYTE(v24) = swift_isUniquelyReferenced_nonNull_native();
    v47 = v20;
    v26 = v44;
    v27 = __swift_mutable_project_boxed_opaque_existential_0(v43, v44);
    v28 = *(*(v26 - 8) + 64);
    MEMORY[0x28223BE20](v27);
    v30 = (v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    sub_2297FED6C(*v30, v21, v23, v24, &v47);
  }

  else
  {
    v32 = sub_22A4DD5EC();
    v34 = v33;
    v46 = v8;
    v45[0] = sub_22A4DDEAC();
    sub_229543C58(v45, v43);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v9;
    v36 = v44;
    v37 = __swift_mutable_project_boxed_opaque_existential_0(v43, v44);
    v38 = *(*(v36 - 8) + 64);
    MEMORY[0x28223BE20](v37);
    v40 = (v43 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40);
    sub_2297FED80(*v40, v32, v34, v35, &v47);
  }

  result = __swift_destroy_boxed_opaque_existential_0(v43);
  *a2 = v47;
  return result;
}

uint64_t sub_2297C1EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_229586D38;

  return sub_2297C1F50(a5, a6);
}

uint64_t sub_2297C1F50(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22A4DD07C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C2014, v2, 0);
}

uint64_t sub_2297C2014()
{
  v28 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_detectorsByContributorType;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_2296DC084(v0[5]), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v0[11] = v6;
    v7 = v6;
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_2297C2318;
    v9 = v0[6];
    v10 = v0[7];

    return sub_2297BEDD4(v7, v9);
  }

  else
  {
    (*(v0[9] + 16))(v0[10], v0[7] + OBJC_IVAR____TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator_logger, v0[8]);

    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();

    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];
    if (v14)
    {
      v26 = v0[10];
      v18 = v0[7];
      v25 = v0[5];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 136315394;
      v27[0] = v20;
      v27[1] = 91;
      v27[2] = 0xE100000000000000;
      v21 = sub_22A4DB76C();
      MEMORY[0x22AAD08C0](v21);

      MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
      MEMORY[0x22AAD08C0](0xD000000000000026, 0x800000022A596720);
      MEMORY[0x22AAD08C0](11552, 0xE200000000000000);
      v22 = sub_2295A3E30(91, 0xE100000000000000, v27);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2048;
      *(v19 + 14) = v25;
      _os_log_impl(&dword_229538000, v12, v13, "%s Unexpectedly asked to handle state change for detector of unknown type: %lu", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAD4E50](v20, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);

      (*(v16 + 8))(v26, v17);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }

    v23 = v0[10];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_2297C2318()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2297C2428, v2, 0);
}

uint64_t sub_2297C2428()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2297C25B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2297C2600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2297C2654(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2297C266C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_2297C269C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2297C1EA4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2297C2764(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2297BFF84(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_2297C282C()
{
  result = qword_27D881370;
  if (!qword_27D881370)
  {
    type metadata accessor for HMDHomeActivityStateContributorType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881370);
  }

  return result;
}

uint64_t sub_2297C2884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277D84F98];
  v35 = MEMORY[0x277D84F98];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = MEMORY[0x277D84F90];
  if (a3 == 3)
  {
    v9 = &unk_283CDBDD8;
  }

  if (a3 == 2)
  {
    v10 = &unk_283CDBDA8;
  }

  else
  {
    v10 = v9;
  }

  v12 = 0;
  while (v7)
  {
LABEL_18:
    v20 = (v12 << 9) | (8 * __clz(__rbit64(v7)));
    v21 = *(*(a1 + 48) + v20);
    v22 = *(*(a1 + 56) + v20);
    v23 = v22;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v22)
    {
      v24 = v23;
      v25 = [v24 contributorType];
      v26 = v10[2];
      v27 = 4;
      while (v26)
      {
        v28 = v10[v27++];
        --v26;
        if (v28 == v25)
        {
          goto LABEL_34;
        }
      }

      v22 = 0;
LABEL_34:
    }

    v33 = *(v3 + 16);
    if (*(v3 + 24) <= v33)
    {
      sub_2298966F8(v33 + 1, 1);
      v3 = v35;
    }

    v13 = *(v3 + 40);
    sub_22A4DE77C();
    MEMORY[0x22AAD1960](v21);
    result = sub_22A4DE7BC();
    v14 = v3 + 64;
    v15 = -1 << *(v3 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v3 + 64 + 8 * (v16 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v15) >> 6;
      while (++v17 != v30 || (v29 & 1) == 0)
      {
        v31 = v17 == v30;
        if (v17 == v30)
        {
          v17 = 0;
        }

        v29 |= v31;
        v32 = *(v14 + 8 * v17);
        if (v32 != -1)
        {
          v18 = __clz(__rbit64(~v32)) + (v17 << 6);
          goto LABEL_12;
        }
      }

      goto LABEL_39;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v3 + 64 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_12:
    v7 &= v7 - 1;
    *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    *(*(v3 + 48) + 8 * v18) = v21;
    *(*(v3 + 56) + 8 * v18) = v22;
    ++*(v3 + 16);
  }

  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v19 >= v8)
    {

      return v3;
    }

    v7 = *(v4 + 8 * v19);
    ++v12;
    if (v7)
    {
      v12 = v19;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2297C2B3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229569B30;

  return sub_2297BB030(v2, v3);
}

uint64_t sub_2297C2BE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_2297BADFC(v2, v3, v4);
}

uint64_t sub_2297C2C9C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_2297BA994(v2, v3);
}

uint64_t sub_2297C2D48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297BA380(a1, v4, v5, v7, v6);
}

uint64_t sub_2297C2E08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2297BA178(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2297C2ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v4 + 16);
  v25[0] = *v4;
  v25[1] = v15;
  v26 = *(v4 + 32);
  v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
  v24[4] = sub_2297C3B60(&qword_27D87EE20, &unk_27D87EC90, &unk_22A57CFD0);
  sub_229564F88(a3, v14, &unk_27D87D2A0, &unk_22A578BD0);
  v16 = 0;
  v17 = 0;
  if ((*(v7 + 48))(v14, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v14, v6);
    v16 = sub_2296B2730(v25);
    v17 = v18;
    (*(v7 + 8))(v10, v6);
  }

  v24[0] = v16;
  v24[1] = v17;
  v19 = v23;

  return sub_229890DC4(v24, v22, v19);
}

uint64_t sub_2297C30F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v21 = a1;
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
  v23[4] = sub_2297C3B60(&qword_27D87EE20, &unk_27D87EC90, &unk_22A57CFD0);
  sub_229564F88(a3, v15, &unk_27D881AA0, &qword_22A57BC20);
  v16 = 0;
  v17 = 0;
  if ((*(v5 + 48))(v15, 1, v4) != 1)
  {
    (*(v5 + 32))(v8, v15, v4);
    (*(v5 + 16))(v13, v8, v4);
    (*(v5 + 56))(v13, 0, 1, v4);
    v16 = sub_2297C337C(v13);
    v17 = v18;
    sub_22953EAE4(v13, &unk_27D881AA0, &qword_22A57BC20);
    (*(v5 + 8))(v8, v4);
  }

  v23[0] = v16;
  v23[1] = v17;
  v19 = v22;

  return sub_229890DC4(v23, v21, v19);
}

uint64_t sub_2297C337C(uint64_t a1)
{
  v2 = sub_22A4DB91C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_22A4DB74C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229564F88(a1, v10, &unk_27D881AA0, &qword_22A57BC20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22953EAE4(v10, &unk_27D881AA0, &qword_22A57BC20);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    sub_22A4DB90C();
    v18 = sub_22A4DB8EC();
    (*(v3 + 8))(v6, v2);
    [v17 setTimeZone_];

    v19 = sub_22A4DB6AC();
    v20 = [v17 stringFromDate_];

    v21 = sub_22A4DD5EC();
    (*(v12 + 8))(v15, v11);
    return v21;
  }
}

uint64_t sub_2297C3648()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D100, &unk_22A583B00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v31 - v8;
  if ([v0 lastKnownValue])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v10 = *(&v34 + 1);
    v11 = __swift_project_boxed_opaque_existential_0(&v33, *(&v34 + 1));
    v32 = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
    sub_229543C58(v31, &v36);
    __swift_destroy_boxed_opaque_existential_0(&v33);
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v33 = v36;
  v34 = v37;
  if (*(&v37 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    if (swift_dynamicCast())
    {
      v13 = 0;
      v14 = *v31;
      goto LABEL_9;
    }
  }

  else
  {
    sub_22953EAE4(&v33, &unk_27D87FC20, &unk_22A578810);
  }

  v13 = 1;
  v14 = 0.0;
LABEL_9:
  if ([v1 previousValue])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v15 = *(&v34 + 1);
    v16 = __swift_project_boxed_opaque_existential_0(&v33, *(&v34 + 1));
    v32 = v15;
    v17 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(*(v15 - 8) + 16))(v17, v16, v15);
    sub_229543C58(v31, &v36);
    __swift_destroy_boxed_opaque_existential_0(&v33);
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v33 = v36;
  v34 = v37;
  if (*(&v37 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    if (swift_dynamicCast())
    {
      v18 = 0;
      v19 = *v31;
      goto LABEL_17;
    }
  }

  else
  {
    sub_22953EAE4(&v33, &unk_27D87FC20, &unk_22A578810);
  }

  v18 = 1;
  v19 = 0.0;
LABEL_17:
  v20 = [v1 characteristicType];
  v21 = sub_22A4DD5EC();
  v23 = v22;

  *(&v34 + 1) = MEMORY[0x277D837D0];
  v35 = &off_283CDFC68;
  *&v33 = v21;
  *(&v33 + 1) = v23;
  sub_229890DC4(&v33, 0xD000000000000012, 0x800000022A596960);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880210, &unk_22A583B10);
  *(&v34 + 1) = v24;
  v25 = sub_2297C3B60(&qword_27D881390, &qword_27D880210, &unk_22A583B10);
  v35 = v25;
  *&v33 = v14;
  BYTE4(v33) = v13;
  sub_229890DC4(&v33, 0x776F6E4B7473616CLL, 0xEE0065756C61566ELL);
  v26 = [v1 lastKnownValueUpdateTime];
  if (v26)
  {
    v27 = v26;
    sub_22A4DB70C();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = sub_22A4DB74C();
  (*(*(v29 - 8) + 56))(v5, v28, 1, v29);
  sub_2296692F8(v5, v9);
  sub_2297C30F0(0xD000000000000018, 0x800000022A593760, v9);
  sub_22953EAE4(v9, &qword_27D87D100, &unk_22A583B00);
  *(&v34 + 1) = v24;
  v35 = v25;
  *&v33 = v19;
  BYTE4(v33) = v18;
  return sub_229890DC4(&v33, 0x73756F6976657270, 0xED000065756C6156);
}

uint64_t sub_2297C3B60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2297C3BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a3;
  v4 = sub_22A4DD18C();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD16C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22A4DD12C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = 0;
  }

  else
  {
    *v17 = 0;
    v17[8] = 1;
    (*(v14 + 104))(v17, *MEMORY[0x277CCE630], v13);
    sub_22A4DD17C();
    sub_22A4DD17C();
    v18 = sub_22A4DD14C();
    (*(v21 + 8))(v7, v4);
    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v17, v13);
  }

  return v18 & 1;
}

uint64_t sub_2297C3EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = a3;
  v24 = a4;
  v22[1] = a2;
  v23 = sub_22A4DD18C();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v23);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD16C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22A4DD12C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      *v18 = v24;
      v20 = MEMORY[0x277CCE628];
      goto LABEL_10;
    }

    if (a1 == 3)
    {
      *v18 = v24;
      v20 = MEMORY[0x277CCE620];
      goto LABEL_10;
    }
  }

  else
  {
    if (!a1)
    {
      *v18 = v24;
      v18[8] = 0;
      v20 = MEMORY[0x277CCE630];
      goto LABEL_10;
    }

    if (a1 == 1)
    {
      *v18 = v24;
      v20 = MEMORY[0x277CCE618];
LABEL_10:
      (*(v15 + 104))(v18, *v20, v14);
      sub_22A4DD17C();
      sub_22A4DD17C();
      v19 = sub_22A4DD14C();
      (*(v5 + 8))(v8, v23);
      (*(v10 + 8))(v13, v9);
      (*(v15 + 8))(v18, v14);
    }
  }

  return v19 & 1;
}

uint64_t sub_2297C41F4()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon31ShimAccessoryMatterCapabilities_impl;
  v2 = sub_22A4DD1AC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2297C4290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DD1AC();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_22A4DD13C();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C43C4, 0, 0);
}

uint64_t sub_2297C43C4()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v2 = MEMORY[0x277CCE640];
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = MEMORY[0x277CCE648];
LABEL_5:
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);
    (*(v6 + 104))(v4, *v2, v7);
    v8 = *(v6 + 16);
    v8(v3, v4, v7);
    v9 = type metadata accessor for ShimAccessoryMatterCapabilities();
    *(v0 + 96) = v9;
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    *(v0 + 104) = swift_allocObject();
    v8(v5, v3, v7);
    v12 = *(MEMORY[0x277CCE650] + 4);
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = sub_2297C4584;
    v14 = *(v0 + 72);
    v15 = *(v0 + 48);

    return MEMORY[0x2821211C8](v15, v14);
  }

  [*(v0 + 24) rejectWithError_];
  v17 = *(v0 + 80);
  v16 = *(v0 + 88);
  v18 = *(v0 + 72);
  v19 = *(v0 + 48);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2297C4584()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_2297C47A4;
  }

  else
  {
    v3 = sub_2297C4698;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2297C4698()
{
  v1 = v0[13];
  v3 = v0[5];
  v2 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = *(v0[8] + 8);
  v6(v0[10], v0[7]);
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC13HomeKitDaemon31ShimAccessoryMatterCapabilities_impl, v2, v4);
  [v5 fulfillWithValue_];

  v7 = v0[8] + 8;
  v6(v0[11], v0[7]);
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2297C47A4()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[3];
  v5 = *(v0[8] + 8);
  v5(v0[10], v0[7]);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 52);
  swift_deallocPartialClassInstance();
  v8 = sub_22A4DB3DC();
  v9 = sub_22A4DB3DC();

  [v4 rejectWithError_];
  v10 = v0[8] + 8;
  v5(v0[11], v0[7]);
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  v14 = v0[6];

  v15 = v0[1];

  return v15();
}

HMDMatterCapabilitiesFactory __swiftcall HMDMatterCapabilitiesFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t type metadata accessor for ShimAccessoryMatterCapabilities()
{
  result = qword_27D8813F8;
  if (!qword_27D8813F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2297C49D0()
{
  result = sub_22A4DD1AC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for HMDMatterCapabilitiesFactory()
{
  result = qword_27D881408;
  if (!qword_27D881408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D881408);
  }

  return result;
}

id sub_2297C4AE4(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v14 - v4;
  v14[0] = 0;
  v6 = [objc_opt_self() futureWithPromise_];
  v7 = v14[0];
  if (!v14[0])
  {
    __break(1u);
  }

  v8 = v6;
  v9 = sub_22A4DD9DC();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = v7;
  v11 = v7;
  sub_22957F3C0(0, 0, v5, &unk_22A583BA8, v10);

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_2297C4C68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_2297C4290(a1, v4, v5, v7, v6);
}

void sub_2297C4D28(char *a1, char *a2)
{
  v3 = v2;
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *a2;
  v13 = *(type metadata accessor for ThermostatSuggestedPreset.Current(0) + 24);
  v14 = *(type metadata accessor for ThermostatSuggestedPreset.MKF(0) + 20);
  sub_22A4DB69C();
  LOBYTE(a2) = a2[1];
  v16 = v15 / 60.0;
  v17 = type metadata accessor for ThermostatSuggestedPresetLogEvent();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_coreAnalyticsEventName];
  *v19 = 0xD000000000000039;
  v19[1] = 0x800000022A596A60;
  *&v18[OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_coreAnalyticsEventOptions] = 1;
  v18[OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_presetScenario] = v11;
  v18[OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_nextPresetScenario] = v12;
  *&v18[OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_durationInMinutes] = v16;
  v18[OBJC_IVAR____TtC13HomeKitDaemon33ThermostatSuggestedPresetLogEvent_changedReason] = a2;
  v38.receiver = v18;
  v38.super_class = v17;
  v20 = objc_msgSendSuper2(&v38, sel_init);
  v21 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v22 = v20;
  v23 = sub_22A4DD05C();
  v24 = sub_22A4DDCCC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v3;
    v37 = v26;
    v27 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_2295A3E30(0xD000000000000021, 0x800000022A596AE0, &v37);
    *(v25 + 12) = 2080;
    sub_22970D804();
    sub_22956540C();
    v28 = sub_22A4DD4AC();
    v35 = v6;
    v29 = v28;
    v31 = v30;

    v32 = sub_2295A3E30(v29, v31, &v37);

    *(v25 + 14) = v32;
    _os_log_impl(&dword_229538000, v23, v24, "%s Submitting log event %s", v25, 0x16u);
    swift_arrayDestroy();
    v33 = v27;
    v3 = v36;
    MEMORY[0x22AAD4E50](v33, -1, -1);
    MEMORY[0x22AAD4E50](v25, -1, -1);

    (*(v7 + 8))(v10, v35);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  [*(v3 + 16) submitLogEvent_];
}

uint64_t sub_2297C50A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_2297C51B8(uint64_t a1)
{
  v2 = sub_22A4DB74C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(v9);

  v10 = sub_22A4DB6AC();
  (*(v3 + 8))(v6, v2);

  return v10;
}

void sub_2297C52BC(void *a1)
{
  v1 = [a1 startOfDayByAddingDayCount_];
  sub_22A4DB70C();
}

void sub_2297C53AC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t), uint64_t a7, void (*a8)(uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v23 = a8;
  v12 = a5(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = sub_22A4DD5EC();
  v19 = v18;
  v20 = *&a1[OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup];
  swift_unknownObjectRetain_n();
  v21 = a1;
  a6(a3);
  v23(v17, v19, v16, v12, a7);
  swift_unknownObjectRelease();

  (*(v13 + 8))(v16, v12);
}

uint64_t sub_2297C6258()
{
  v1 = *(v0 + OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup);
  v2 = sub_22A4DBE6C();
  result = sub_22A4DBE8C();
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = v2 + v4;
  if (__OFADD__(v2, v4))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

id sub_2297C6480()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventCounterGroupBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2297C6528@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

id sub_2297C6574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB74C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a3, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  v12 = type metadata accessor for EventCounterGroupBridge();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup] = a2;
  v14 = &v13[OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock];
  *v14 = sub_2297C6D60;
  v14[1] = v11;
  v15 = objc_opt_self();

  v16 = [v15 sharedInstance];
  v19.receiver = v13;
  v19.super_class = v12;
  v17 = objc_msgSendSuper2(&v19, sel_initWithContext_serializedEventCounters_uptimeProvider_, a1, 0, v16);

  swift_unknownObjectRelease();

  (*(v7 + 8))(a3, v6);
  return v17;
}

id sub_2297C676C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = type metadata accessor for EventCounterGroupBridge();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___HMDEventCounterGroupBridge_bridgedGroup] = a2;
  v9 = &v8[OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock];
  *v9 = sub_2297C6DD4;
  v9[1] = v6;
  v10 = objc_opt_self();
  v11 = a3;

  v12 = [v10 sharedInstance];
  v15.receiver = v8;
  v15.super_class = v7;
  v13 = objc_msgSendSuper2(&v15, sel_initWithContext_serializedEventCounters_uptimeProvider_, a1, 0, v12);

  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_2297C6898(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v50[0] = *v18;
    v50[1] = v19;
    v50[2] = v20;

    v21 = v20;
    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = sub_229543DBC(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        sub_229897F24();
      }
    }

    else
    {
      v32 = v51;
      sub_22989385C(v30, v46 & 1);
      v33 = *v32;
      v34 = sub_229543DBC(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = v36[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v15;
    v6 = v43;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_22953EE84();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}

void sub_2297C6B34(void *a1, uint64_t a2)
{
  v3 = [a1 eventCounters];
  if (v3)
  {
    v4 = v3;
    sub_229678A8C();
    v5 = sub_22A4DD49C();

    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v11 = v10;
LABEL_10:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(v5 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = *(*(v5 + 56) + 8 * v13);

        v18 = v17;
        v19 = [v18 integerValue];
        v20 = sub_22A4DD5AC();
        (*(a2 + 16))(a2, v20, v19);

        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_2297C6CF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881420, qword_22A583C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2297C6D60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22A4DB74C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_2297C6DDC()
{
  type metadata accessor for HindsightDigestController(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD18, &unk_22A577A50);
  result = sub_22A4DD64C();
  qword_27D8AB990 = result;
  *algn_27D8AB998 = v1;
  return result;
}

uint64_t sub_2297C6E30()
{
  if (qword_27D87BA88 != -1)
  {
    swift_once();
  }

  v0 = qword_27D8AB990;

  return v0;
}

uint64_t sub_2297C6E98(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_22A4DB7DC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_22A4DD07C();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C6FCC, 0, 0);
}

uint64_t sub_2297C6FCC()
{
  v0[11] = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  if (qword_27D87BA88 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[2];
  v3 = *algn_27D8AB998;
  v0[12] = qword_27D8AB990;
  v0[13] = v3;

  sub_22A4DD06C();
  v4 = v2;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDD0C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_229538000, v5, v6, "Ensuring digests for home %@", v8, 0xCu);
    sub_2295A1C40(v9);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  v11 = v0[10];
  v12 = v0[6];
  v13 = v0[7];
  v14 = v0[5];
  v15 = v0[2];

  v16 = *(v13 + 8);
  v0[14] = v16;
  v0[15] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v11, v12);
  v17 = [v15 spiClientIdentifier];
  sub_22A4DB79C();

  v18 = *(MEMORY[0x277D17648] + 4);
  v19 = swift_task_alloc();
  v0[16] = v19;
  *v19 = v0;
  v19[1] = sub_2297C7210;
  v20 = v0[5];

  return MEMORY[0x282171C00](v20);
}

uint64_t sub_2297C7210()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2297C7518;
  }

  else
  {
    v6 = sub_2297C7380;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2297C7380()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 16);
  sub_22A4DD5EC();

  sub_22A4DD06C();
  v6 = v5;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_229538000, v7, v8, "Finished ensuring digests for home %@", v10, 0xCu);
    sub_2295A1C40(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v13 = *(v0 + 120);
  v14 = *(v0 + 80);
  v15 = *(v0 + 64);
  v16 = *(v0 + 40);
  (*(v0 + 112))(*(v0 + 72), *(v0 + 48));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2297C7518()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 16);
  sub_22A4DD5EC();

  sub_22A4DD06C();
  v7 = v6;
  v8 = v1;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCEC();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 136);
  if (v11)
  {
    v13 = *(v0 + 16);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v13;
    *v15 = v13;
    *(v14 + 12) = 2112;
    v16 = v13;
    v17 = v12;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    v15[1] = v18;
    _os_log_impl(&dword_229538000, v9, v10, "Failed to ensure digests for home %@: %@", v14, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v15, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 120);
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  v22 = *(v0 + 40);
  (*(v0 + 112))(*(v0 + 64), *(v0 + 48));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2297C7724(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_22A4DD07C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C7820, 0, 0);
}

id sub_2297C7820()
{
  v3 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (!Strong)
  {
    v50 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    if (qword_27D87BA88 != -1)
    {
      swift_once();
    }

    v51 = *(v0 + 48);

    sub_22A4DD06C();
    v52 = sub_22A4DD05C();
    v53 = sub_22A4DDCEC();
    v54 = os_log_type_enabled(v52, v53);
    v56 = *(v0 + 40);
    v55 = *(v0 + 48);
    v57 = *(v0 + 32);
    if (v54)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_229538000, v52, v53, "Home manager is gone", v58, 2u);
      MEMORY[0x22AAD4E50](v58, -1, -1);
    }

    (*(v56 + 8))(v55, v57);
    goto LABEL_64;
  }

  v5 = Strong;
  *(v0 + 16) = MEMORY[0x277D84F90];
  result = [Strong homes];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v8 = sub_22A4DD83C();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_51:

    v61 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    if (qword_27D87BA88 != -1)
    {
      swift_once();
    }

    v62 = *(v0 + 56);

    sub_22A4DD06C();
    v63 = sub_22A4DD05C();
    v64 = sub_22A4DDD0C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_229538000, v63, v64, "Skipping digest creation when there are no homes", v65, 2u);
      MEMORY[0x22AAD4E50](v65, -1, -1);
    }

    v66 = *(v0 + 56);
    v67 = *(v0 + 32);
    v68 = *(v0 + 40);

    (*(v68 + 8))(v66, v67);
    goto LABEL_64;
  }

  v9 = sub_22A4DE0EC();
  if (!v9)
  {
    goto LABEL_51;
  }

LABEL_5:
  v86 = v9;
  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v84 = v5;
    v10 = 0;
    v87 = v8 & 0xC000000000000001;
    v88 = *MEMORY[0x277D0F1A8];
    v89 = (*(v0 + 40) + 8);
    v1 = MEMORY[0x277D84F90];
    v85 = v8;
    v11 = v9;
    do
    {
      if (v87)
      {
        v18 = MEMORY[0x22AAD13F0](v10, v8);
      }

      else
      {
        v18 = *(v8 + 8 * v10 + 32);
      }

      v19 = v18;
      v20 = [objc_msgSend(v18 residentDeviceManager)];
      swift_unknownObjectRelease();
      sub_229562F68(0, &qword_281401B10, off_278666300);
      v21 = sub_22A4DD83C();

      if (v21 >> 62)
      {
        v22 = sub_22A4DE0EC();
        v8 = v85;
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_22A4DD5EC();
      if (v22)
      {
        v23 = v1;
        if (qword_27D87BA88 != -1)
        {
          swift_once();
        }

        v24 = *(v0 + 80);

        sub_22A4DD06C();
        v25 = v19;
        v26 = sub_22A4DD05C();
        v27 = sub_22A4DDCCC();

        if (os_log_type_enabled(v26, v27))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v12 = 138412290;
          *(v12 + 4) = v25;
          *v13 = v25;
          v14 = v25;
          _os_log_impl(&dword_229538000, v26, v27, "Skipping home that has residents: %@", v12, 0xCu);
          sub_2295A1C40(v13);
          v15 = v13;
          v11 = v86;
          MEMORY[0x22AAD4E50](v15, -1, -1);
          MEMORY[0x22AAD4E50](v12, -1, -1);
        }

        else
        {
          v14 = v26;
          v26 = v25;
        }

        v1 = v23;
        v16 = *(v0 + 80);
        v17 = *(v0 + 32);

        v2 = *v89;
        (*v89)(v16, v17);
        v8 = v85;
      }

      else
      {
        if (qword_27D87BA88 != -1)
        {
          swift_once();
        }

        v28 = *(v0 + 88);

        sub_22A4DD06C();
        v29 = v19;
        v30 = sub_22A4DD05C();
        v31 = sub_22A4DDCCC();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138412290;
          *(v32 + 4) = v29;
          *v33 = v29;
          v34 = v29;
          _os_log_impl(&dword_229538000, v30, v31, "Home has no residents: %@", v32, 0xCu);
          sub_2295A1C40(v33);
          MEMORY[0x22AAD4E50](v33, -1, -1);
          MEMORY[0x22AAD4E50](v32, -1, -1);
        }

        v35 = *(v0 + 88);
        v36 = *(v0 + 32);

        v2 = *v89;
        (*v89)(v35, v36);
        v37 = v29;
        MEMORY[0x22AAD09E0]();
        if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22A4DD85C();
          v8 = v85;
        }

        sub_22A4DD87C();

        v1 = *(v0 + 16);
        v11 = v86;
      }

      ++v10;
      *(v0 + 104) = v1;
    }

    while (v11 != v10);

    if (!(v1 >> 62))
    {
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

LABEL_58:

      sub_22A4DD5EC();
      if (qword_27D87BA88 == -1)
      {
LABEL_59:
        v69 = *(v0 + 64);

        sub_22A4DD06C();
        v70 = sub_22A4DD05C();
        v71 = sub_22A4DDD0C();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_229538000, v70, v71, "Skipping digest creation as all homes have a resident", v72, 2u);
          MEMORY[0x22AAD4E50](v72, -1, -1);
        }

        v73 = *(v0 + 64);
        v74 = *(v0 + 32);

        v2(v73, v74);
        goto LABEL_64;
      }

LABEL_68:
      swift_once();
      goto LABEL_59;
    }
  }

  if (!sub_22A4DE0EC())
  {
    goto LABEL_58;
  }

LABEL_30:
  sub_22A4DD5EC();
  if (qword_27D87BA88 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 72);

  sub_22A4DD06C();

  v40 = sub_22A4DD05C();
  v41 = sub_22A4DDCCC();
  v42 = v1 >> 62;
  if (os_log_type_enabled(v40, v41))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    if (v42)
    {
      v83 = v43;
      v44 = sub_22A4DE0EC();
      v43 = v83;
    }

    else
    {
      v44 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v43 + 4) = v44;
    v45 = v41;
    v46 = v43;
    _os_log_impl(&dword_229538000, v40, v45, "Creating digests for %ld home(s)", v43, 0xCu);
    MEMORY[0x22AAD4E50](v46, -1, -1);
  }

  *(v0 + 112) = v1;
  v2(*(v0 + 72), *(v0 + 32));

  if (v42)
  {
    v47 = sub_22A4DE0EC();
    *(v0 + 120) = v47;
    if (v47)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v47 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 120) = v47;
    if (v47)
    {
LABEL_38:
      if (v47 >= 1)
      {
        *(v0 + 128) = 0;
        v48 = *(v0 + 104);
        if ((*(v0 + 112) & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x22AAD13F0](0, v48);
        }

        else
        {
          v49 = *(v48 + 32);
        }

        v59 = v49;
        *(v0 + 136) = v49;
        v60 = swift_task_alloc();
        *(v0 + 144) = v60;
        *v60 = v0;
        v60[1] = sub_2297C833C;

        return sub_2297C6E98(v59);
      }

      __break(1u);
      goto LABEL_68;
    }
  }

  v75 = *(v0 + 104);

LABEL_64:
  v77 = *(v0 + 80);
  v76 = *(v0 + 88);
  v79 = *(v0 + 64);
  v78 = *(v0 + 72);
  v81 = *(v0 + 48);
  v80 = *(v0 + 56);

  v82 = *(v0 + 8);

  return v82();
}

uint64_t sub_2297C833C()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297C8438, 0, 0);
}

uint64_t sub_2297C8438()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 104);

    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 128) + 1;
    *(v0 + 128) = v12;
    if ((*(v0 + 112) & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v13 = *(*(v0 + 104) + 8 * v12 + 32);
    }

    v14 = v13;
    *(v0 + 136) = v13;
    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    *v15 = v0;
    v15[1] = sub_2297C833C;

    return sub_2297C6E98(v14);
  }
}

uint64_t sub_2297C85B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C8658, v2, 0);
}

uint64_t sub_2297C8658()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v2 + 112);
  v0[6] = v5;
  v6 = sub_22A4DD9DC();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v3;
  swift_retain_n();

  v8 = sub_22957F3C0(0, 0, v1, &unk_22A583C98, v7);
  v0[7] = v8;
  v9 = *(v2 + 112);
  *(v2 + 112) = v8;

  v10 = *(MEMORY[0x277D857E0] + 4);
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_2297C87D4;

  return MEMORY[0x282200460]();
}

uint64_t sub_2297C87D4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2297C8900, v3, 0);
}

uint64_t sub_2297C8900()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2297C8968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  if (a4)
  {
    v7 = *(MEMORY[0x277D857E0] + 4);
    v8 = swift_task_alloc();
    v6[4] = v8;
    *v8 = v6;
    v8[1] = sub_2297C8AD4;

    return MEMORY[0x282200460]();
  }

  else
  {
    v13 = (a5 + *a5);
    v9 = a5[1];
    v10 = swift_task_alloc();
    v6[5] = v10;
    *v10 = v6;
    v10[1] = sub_22977AF5C;
    v11 = v6[3];

    return v13();
  }
}

uint64_t sub_2297C8AD4()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2297C8BD0, 0, 0);
}

uint64_t sub_2297C8BD0()
{
  v5 = (v0[2] + *v0[2]);
  v1 = *(v0[2] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22977AF5C;
  v3 = v0[3];

  return v5();
}

uint64_t sub_2297C8CE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_2297C8968(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2297C8DA8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  v3 = sub_22A4DD07C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297C8E9C, v1, 0);
}

uint64_t sub_2297C8E9C()
{
  v48 = v0;
  v1 = v0[7];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong home];
    v0[14] = v4;
    if (v4)
    {
      v5 = v4;
      v6 = [v4 backingStore];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 context];
        v0[15] = v8;

        if (v8)
        {
          v9 = v0[7];
          v10 = v0[8];
          v11 = v0[6];
          v12 = sub_22A4DDBDC();
          v0[16] = v12;
          v13 = swift_allocObject();
          v0[17] = v13;
          v13[2] = v3;
          v13[3] = v11;
          v13[4] = v9;
          v13[5] = v12;
          v13[6] = v8;
          v13[7] = v10;
          v14 = v3;

          v15 = v12;
          v16 = v8;

          return MEMORY[0x2822009F8](sub_2297C9394, 0, 0);
        }
      }
    }

    v30 = v0[12];
    v31 = v0[7];
    v32 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DD06C();

    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCEC();

    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[12];
    v37 = v0[9];
    v38 = v0[10];
    if (v35)
    {
      v39 = v0[7];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47[0] = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_2295A3E30(*(v39 + 120), *(v39 + 128), v47);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A596D00, v47);
      _os_log_impl(&dword_229538000, v33, v34, "%s %s Missing context, failed to save", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v41, -1, -1);
      MEMORY[0x22AAD4E50](v40, -1, -1);
    }

    (*(v38 + 8))(v36, v37);
    type metadata accessor for HMError(0);
    v0[5] = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v42 = v0[4];
    swift_willThrow();
  }

  else
  {
    v17 = v0[11];
    v18 = v0[7];
    v19 = *MEMORY[0x277D0F1A8];
    sub_22A4DD5EC();
    sub_22A4DD06C();

    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[10];
    v23 = v0[11];
    v25 = v0[9];
    if (v22)
    {
      v26 = v0[7];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47[0] = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_2295A3E30(*(v26 + 120), *(v26 + 128), v47);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A596D00, v47);
      _os_log_impl(&dword_229538000, v20, v21, "%s %s User is nil", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    (*(v24 + 8))(v23, v25);
    type metadata accessor for HMError(0);
    v0[3] = 20;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_22958E108();
    sub_22A4DB3CC();
    v29 = v0[2];
    swift_willThrow();
  }

  v44 = v0[11];
  v43 = v0[12];

  v45 = v0[1];

  return v45();
}

uint64_t sub_2297C9394()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = swift_task_alloc();
  v0[18] = v3;
  v3[2] = v2;
  v3[3] = sub_2297C9E3C;
  v3[4] = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_2297C94A0;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000016, 0x800000022A58A7E0, sub_229586C80, v3, v6);
}

uint64_t sub_2297C94A0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_2297C9668;
    v5 = 0;
  }

  else
  {
    v6 = v2[17];
    v7 = v2[18];
    v8 = v2[7];

    v4 = sub_2297C95D0;
    v5 = v8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2297C95D0()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2297C9668()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[7];

  return MEMORY[0x2822009F8](sub_2297C96DC, v3, 0);
}

uint64_t sub_2297C96DC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);

  v4 = *(v0 + 160);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);

  v7 = *(v0 + 8);

  return v7();
}

void sub_2297C9768(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v63 = a5;
  v64 = a2;
  v65 = a4;
  v66 = a3;
  v7 = sub_22A4DD07C();
  v67 = *(v7 - 8);
  v8 = *(v67 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = sub_22A4DB7DC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_opt_self();
  v20 = [a1 uuid];
  sub_22A4DB79C();

  v21 = sub_22A4DB77C();
  (*(v15 + 8))(v18, v14);
  v22 = [v19 findUserWithModelID_];

  v68 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F2F8, qword_22A583D30);
  sub_22A4DBD4C();
  swift_unknownObjectRelease();
  if (!v5)
  {
    v23 = v64;
    v24 = v65;
    v61 = v13;
    v62 = v7;
    v25 = v69;
    v26 = [v69 adaptiveTemperatureAutomationsDisclosureStatus];
    if (!v26)
    {
      sub_229678A8C();
      v26 = sub_22A4DDEBC();
    }

    if ([v26 integerValue] >= v23)
    {
      v47 = *MEMORY[0x277D0F1A8];
      sub_22A4DD5EC();
      v48 = v11;
      sub_22A4DD06C();
      v49 = v66;

      v50 = sub_22A4DD05C();
      v51 = sub_22A4DDCCC();

      v52 = os_log_type_enabled(v50, v51);
      v53 = v62;
      if (v52)
      {
        v54 = swift_slowAlloc();
        v65 = v48;
        v55 = v54;
        v56 = swift_slowAlloc();
        v57 = v49;
        v58 = v56;
        v69 = v56;
        *v55 = 136315394;
        *(v55 + 4) = sub_2295A3E30(*(v57 + 120), *(v57 + 128), &v69);
        *(v55 + 12) = 2080;
        *(v55 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A596D00, &v69);
        _os_log_impl(&dword_229538000, v50, v51, "%s %s Not saving because value has not changed", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v58, -1, -1);
        MEMORY[0x22AAD4E50](v55, -1, -1);

        swift_unknownObjectRelease();
        (*(v67 + 8))(v65, v53);
      }

      else
      {

        swift_unknownObjectRelease();
        (*(v67 + 8))(v48, v53);
      }
    }

    else
    {
      v64 = v25;
      v27 = v25;
      v28 = v24;
      [v27 setAdaptiveTemperatureAutomationsDisclosureStatus_];
      v29 = *MEMORY[0x277D0F1A8];
      sub_22A4DD5EC();
      v30 = v61;
      sub_22A4DD06C();
      v31 = v66;

      v32 = v30;
      v33 = v26;
      v34 = v28;
      v35 = sub_22A4DD05C();
      v36 = sub_22A4DDCCC();

      v60 = v35;
      v37 = os_log_type_enabled(v35, v36);
      v38 = v67;
      if (v37)
      {
        v39 = swift_slowAlloc();
        v65 = v33;
        v40 = v39;
        v41 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v69 = v59;
        *v40 = 136315906;
        *(v40 + 4) = sub_2295A3E30(*(v31 + 120), *(v31 + 128), &v69);
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_2295A3E30(0xD00000000000003BLL, 0x800000022A596D00, &v69);
        *(v40 + 22) = 2112;
        *(v40 + 24) = v65;
        *(v40 + 32) = 2112;
        *(v40 + 34) = v34;
        *v41 = v65;
        v41[1] = v34;
        v42 = v65;
        v43 = v34;
        v44 = v60;
        _os_log_impl(&dword_229538000, v60, v36, "%s %s Saving from %@ to %@", v40, 0x2Au);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v41, -1, -1);
        v45 = v59;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v45, -1, -1);
        v46 = v40;
        v33 = v65;
        MEMORY[0x22AAD4E50](v46, -1, -1);

        (*(v38 + 8))(v61, v62);
      }

      else
      {

        (*(v38 + 8))(v32, v62);
      }

      sub_2297082C0();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2297C9DD8()
{
  MEMORY[0x22AAD4F90](v0 + 112);
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2297C9E60(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = [a1 logIdentifier];
  v5 = sub_22A4DD5EC();
  v7 = v6;

  MEMORY[0x22AAD08C0](v5, v7);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
  *(v2 + 120) = 91;
  *(v2 + 128) = 0xE100000000000000;
  return v2;
}

unint64_t sub_2297C9F24()
{
  result = qword_27D87ED18;
  if (!qword_27D87ED18)
  {
    type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87ED18);
  }

  return result;
}

uint64_t sub_2297C9F7C(uint64_t a1)
{
  v3 = [*v1 serviceType];
  v4 = sub_22A4DD5EC();
  v6 = v5;

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880A78, &qword_22A5822B0) + 36);
  v8 = (a1 + *(type metadata accessor for HomeIntelligenceProtoPETActivityLoggerHMDService(0) + 20) + v7);
  v9 = v8[1];

  *v8 = v4;
  v8[1] = v6;
  return result;
}

id sub_2297CA0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5)
{
  v5 = *a4;
  v6 = [objc_opt_self() *a5];

  return v6;
}

id sub_2297CA2DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetTimelineRefresherDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2297CA334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2297CA358, a4, 0);
}

uint64_t sub_2297CA358()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 120) = *(v0 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2297CA3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_2297CA3F4, a4, 0);
}

uint64_t sub_2297CA3F4()
{
  v1 = v0[2];
  sub_2297CA9F4(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2297CA4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v8[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297CA550, 0, 0);
}

uint64_t sub_2297CA550()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_22A4DD9DC();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v2;

  v0[8] = sub_22957F3C0(0, 0, v1, &unk_22A583E58, v6);
  v7 = *(MEMORY[0x277D857E0] + 4);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_2297CA6B8;

  return MEMORY[0x282200460]();
}

uint64_t sub_2297CA6B8()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2297CA7D0, 0, 0);
}

uint64_t sub_2297CA7D0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  (*(v0 + 40))();

  v3 = *(v0 + 8);

  return v3();
}

void sub_2297CA9F4(int64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    sub_2297CD744();
    sub_22A4DDBAC();
    v2 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_22953EE84();
      if ((a1 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_22A4DE09C();
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        sub_2297CD744();
        sub_22A4DDBAC();
        a1 = v35;
        v17 = v36;
        v18 = v37;
        v19 = v38;
        v20 = v39;
      }

      else
      {
        v21 = -1 << *(a1 + 32);
        v17 = a1 + 56;
        v18 = ~v21;
        v22 = -v21;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        else
        {
          v23 = -1;
        }

        v20 = v23 & *(a1 + 56);

        v19 = 0;
      }

      if (a1 < 0)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v24 = v19;
        v25 = v20;
        v26 = v19;
        if (!v20)
        {
          break;
        }

LABEL_29:
        v27 = (v25 - 1) & v25;
        v28 = *(*(a1 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
        if (!v28)
        {
LABEL_35:
          sub_22953EE84();
          return;
        }

        while (1)
        {
          sub_2297CAD80(v28);

          v19 = v26;
          v20 = v27;
          if ((a1 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_31:
          if (sub_22A4DE12C())
          {
            sub_229562F68(0, &qword_281401C30, off_278665FE8);
            swift_dynamicCast();
            v28 = v29;
            v26 = v19;
            v27 = v20;
            if (v29)
            {
              continue;
            }
          }

          goto LABEL_35;
        }
      }

      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_37;
        }

        if (v26 >= ((v18 + 64) >> 6))
        {
          goto LABEL_35;
        }

        v25 = *(v17 + 8 * v26);
        ++v24;
        if (v25)
        {
          goto LABEL_29;
        }
      }
    }

    while (1)
    {
      sub_2297CB6CC(v15);

      v6 = v13;
      v7 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v16 = sub_22A4DE12C();
      if (v16)
      {
        v29 = v16;
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        swift_dynamicCast();
        v15 = v35;
        v13 = v6;
        v14 = v7;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_2297CAD80(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD07C();
  v81 = *(v9 - 8);
  v82 = v9;
  v10 = *(v81 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v76 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v77 = &v76 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v76 - v19;
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (, sub_2296DC0F0(a1), v22 = v21, , (v22 & 1) != 0))
  {
    sub_229541CB0(ObjectType, &off_283CE58C8);
    v23 = a1;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCDC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_229538000, v24, v25, "Ignoring request to monitor reachability for %@ as it is already tracked", v26, 0xCu);
      sub_22953EAE4(v27, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    (*(v81 + 8))(v13, v82);
  }

  else
  {
    v78 = [a1 home];
    if (v78)
    {
      v29 = v5;
      sub_229541CB0(ObjectType, &off_283CE58C8);
      v30 = a1;
      v31 = sub_22A4DD05C();
      v32 = sub_22A4DDCCC();

      v33 = os_log_type_enabled(v31, v32);
      v79 = v30;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v84 = v76;
        *v34 = 136315138;
        v35 = [v30 uuid];
        sub_22A4DB79C();

        sub_229586A3C();
        v36 = sub_22A4DE5CC();
        v38 = v37;
        (*(v29 + 8))(v8, v4);
        v39 = sub_2295A3E30(v36, v38, &v84);
        v30 = v79;

        *(v34 + 4) = v39;
        _os_log_impl(&dword_229538000, v31, v32, "Starting monitoring of %s", v34, 0xCu);
        v40 = v76;
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x22AAD4E50](v40, -1, -1);
        MEMORY[0x22AAD4E50](v34, -1, -1);
      }

      v76 = *(v81 + 8);
      (v76)(v20, v82);
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsReachableNotification" object:v30];
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsNotReachableNotification" object:v30];
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsRemotelyReachableNotification" object:v30];
      [*(v2 + 136) addObserver:v2 selector:sel_handleAccessoryReachabilityChangedWithNotification_ name:@"HMDAccessoryIsNotRemotelyReachableNotification" object:v30];
      v41 = sub_2297CD6A4(v30);
      swift_beginAccess();
      v42 = *(v2 + 112);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = *(v2 + 112);
      *(v2 + 112) = 0x8000000000000000;
      sub_2295AC358(v41 & 1, v30, isUniquelyReferenced_nonNull_native);
      v44 = v83;
      *(v2 + 112) = v83;
      swift_endAccess();
      v45 = 1 << *(v44 + 32);
      v46 = -1;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      v47 = v46 & *(v44 + 64);
      v48 = (v45 + 63) >> 6;
      swift_retain_n();
      v49 = 0;
      while (v47)
      {
LABEL_18:
        v51 = __clz(__rbit64(v47));
        v47 &= v47 - 1;
        v52 = *(*(v44 + 48) + ((v49 << 9) | (8 * v51)));
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        v53 = v52;
        if ((sub_22A4DDEDC() & 1) != 0 || (v54 = [v53 home]) == 0)
        {

          v30 = v79;
        }

        else
        {
          v55 = v54;
          sub_229562F68(0, &qword_2814017B0, off_278666198);
          v56 = v78;
          v57 = sub_22A4DDEDC();

          v30 = v79;
          if (v57)
          {

            return;
          }
        }
      }

      while (1)
      {
        v50 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          __break(1u);
          return;
        }

        if (v50 >= v48)
        {
          break;
        }

        v47 = *(v44 + 64 + 8 * v50);
        ++v49;
        if (v47)
        {
          v49 = v50;
          goto LABEL_18;
        }
      }

      v58 = v77;
      sub_229541CB0(ObjectType, &off_283CE58C8);
      v59 = v30;
      v60 = v78;
      v61 = v78;
      v62 = sub_22A4DD05C();
      v63 = sub_22A4DDCCC();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = v30;
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v65 = 138412546;
        *(v65 + 4) = v61;
        *(v65 + 12) = 2112;
        *(v65 + 14) = v59;
        *v66 = v60;
        v66[1] = v64;
        v67 = v59;
        v68 = v61;
        _os_log_impl(&dword_229538000, v62, v63, "Monitoring resident changes in %@ due to monitoring %@", v65, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v66, -1, -1);
        MEMORY[0x22AAD4E50](v65, -1, -1);
      }

      (v76)(v58, v82);
      v69 = *(v2 + 136);
      [v69 addObserver:v2 selector:sel_handlePrimaryResidentDeviceManagerUpdatePrimaryResidentWithNotification_ name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:{objc_msgSend(v61, sel_residentDeviceManager)}];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_229541CB0(ObjectType, &off_283CE58C8);
      v70 = a1;
      v71 = sub_22A4DD05C();
      v72 = sub_22A4DDCEC();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412290;
        *(v73 + 4) = v70;
        *v74 = v70;
        v75 = v70;
        _os_log_impl(&dword_229538000, v71, v72, "Accessory %@ to start monitoring is missing a home", v73, 0xCu);
        sub_22953EAE4(v74, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v74, -1, -1);
        MEMORY[0x22AAD4E50](v73, -1, -1);
      }

      (*(v81 + 8))(v16, v82);
    }
  }
}

void sub_2297CB6CC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v72 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v79 = &v72 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - v16;
  swift_beginAccess();
  if (*(*(v1 + 112) + 16) && (, sub_2296DC0F0(a1), v19 = v18, , (v19 & 1) != 0))
  {
    sub_229541CB0(ObjectType, &off_283CE58C8);
    v20 = a1;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCDC();

    v23 = os_log_type_enabled(v21, v22);
    v76 = ObjectType;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v20;
      *v25 = v20;
      v26 = v20;
      _os_log_impl(&dword_229538000, v21, v22, "Stopping monitoring of %@", v24, 0xCu);
      sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
      v27 = v25;
      ObjectType = v76;
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    v74 = *(v6 + 8);
    v75 = v6 + 8;
    v74(v17, v5);
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsReachableNotification" object:v20];
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsNotReachableNotification" object:v20];
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsRemotelyReachableNotification" object:v20];
    [*(v2 + 136) removeObserver:v2 name:@"HMDAccessoryIsNotRemotelyReachableNotification" object:v20];
    swift_beginAccess();
    sub_2297FD62C(v20);
    swift_endAccess();
    v28 = [v20 home];
    if (v28)
    {
      v77 = v28;
      v73 = v5;
      v29 = *(v2 + 112);
      v32 = *(v29 + 64);
      v31 = v29 + 64;
      v30 = v32;
      v33 = 1 << *(*(v2 + 112) + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & v30;
      v36 = (v33 + 63) >> 6;
      v78 = *(v2 + 112);
      swift_bridgeObjectRetain_n();
      v37 = 0;
      while (v35)
      {
LABEL_19:
        v49 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v50 = *(*(v78 + 48) + ((v37 << 9) | (8 * v49)));
        v51 = [v50 home];
        if (v51)
        {
          v52 = v51;
          sub_229562F68(0, &qword_2814017B0, off_278666198);
          v53 = v77;
          v54 = sub_22A4DDEDC();

          if (v54)
          {

            return;
          }
        }

        else
        {
        }
      }

      v47 = v76;
      while (1)
      {
        v48 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
          return;
        }

        if (v48 >= v36)
        {
          break;
        }

        v35 = *(v31 + 8 * v48);
        ++v37;
        if (v35)
        {
          v37 = v48;
          goto LABEL_19;
        }
      }

      v55 = v79;
      sub_229541CB0(v47, &off_283CE58C8);
      v56 = v77;
      v57 = v77;
      v58 = sub_22A4DD05C();
      v59 = sub_22A4DDCCC();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        *(v60 + 4) = v57;
        *v61 = v56;
        v62 = v57;
        _os_log_impl(&dword_229538000, v58, v59, "No longer monitoring resident changes in %@", v60, 0xCu);
        sub_22953EAE4(v61, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v61, -1, -1);
        MEMORY[0x22AAD4E50](v60, -1, -1);
      }

      v74(v55, v73);
      v63 = *(v2 + 136);
      [v63 removeObserver:v2 name:@"HMDResidentDeviceManagerUpdatePrimaryResidentNotification" object:{objc_msgSend(v57, sel_residentDeviceManager)}];

      swift_unknownObjectRelease();
    }

    else
    {
      sub_229541CB0(ObjectType, &off_283CE58C8);
      v64 = v20;
      v65 = sub_22A4DD05C();
      v66 = sub_22A4DDCEC();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = v5;
        v69 = swift_slowAlloc();
        *v67 = 138412290;
        *(v67 + 4) = v64;
        *v69 = v20;
        v70 = v64;
        _os_log_impl(&dword_229538000, v65, v66, "Accessory %@ to stop monitoring is missing a home", v67, 0xCu);
        sub_22953EAE4(v69, &qword_27D87D7D0, &unk_22A578D90);
        v71 = v69;
        v5 = v68;
        MEMORY[0x22AAD4E50](v71, -1, -1);
        MEMORY[0x22AAD4E50](v67, -1, -1);
      }

      v74(v13, v5);
    }
  }

  else
  {
    v38 = v6;
    sub_229541CB0(ObjectType, &off_283CE58C8);
    v39 = a1;
    v40 = sub_22A4DD05C();
    v41 = sub_22A4DDCEC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v5;
      v44 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v44 = v39;
      v45 = v39;
      _os_log_impl(&dword_229538000, v40, v41, "Ignoring request to stop monitoring reachability for %@ as it was not being tracked", v42, 0xCu);
      sub_22953EAE4(v44, &qword_27D87D7D0, &unk_22A578D90);
      v46 = v44;
      v5 = v43;
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v42, -1, -1);
    }

    (*(v38 + 8))(v10, v5);
  }
}

uint64_t sub_2297CBEB4(void *a1)
{
  v2 = v1;
  v44 = a1;
  ObjectType = swift_getObjectType();
  v43 = sub_22A4DD07C();
  v45 = *(v43 - 8);
  v4 = *(v45 + 64);
  v5 = MEMORY[0x28223BE20](v43);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - v7;
  v8 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v9 = *(v1 + 112);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = *(v1 + 112);

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = *(*(v9 + 48) + ((v15 << 9) | (8 * v17)));
    if (sub_2297CC3CC(v18))
    {
      v19 = v18;
      MEMORY[0x22AAD09E0]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22A4DD85C();
      }

      sub_22A4DD87C();

      v8 = v47;
    }

    else
    {
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_24:
      v33 = sub_22A4DE0EC();
      v21 = v44;
      if (v33)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 64 + 8 * v15);
    ++v16;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  v13 = v8 >> 62;
  if (v8 >> 62)
  {
    goto LABEL_24;
  }

  v21 = v44;
  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    sub_229541CB0(ObjectType, &off_283CE58C8);

    v22 = v21;
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCCC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 134218242;
      v27 = v45;
      if (v13)
      {
        v28 = sub_22A4DE0EC();
      }

      else
      {
        v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = v43;
      *(v25 + 4) = v28;

      *(v25 + 12) = 2112;
      *(v25 + 14) = v22;
      *v26 = v22;
      v30 = v22;
      _os_log_impl(&dword_229538000, v23, v24, "Notifying delegate of changes to %ld accessories' reachability for home %@", v25, 0x16u);
      sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    else
    {

      v29 = v43;
      v27 = v45;
    }

    (*(v27 + 8))(v46, v29);
    if (!*(v2 + 120))
    {
    }

    v31 = off_283CE2C20[0];
    _s49WidgetAccessoryReachabilityMonitorDelegateAdaptorCMa();
    swift_unknownObjectRetain();
    v31();

    return swift_unknownObjectRelease();
  }

LABEL_25:

  v34 = v42;
  sub_229541CB0(ObjectType, &off_283CE58C8);
  v35 = v21;
  v36 = sub_22A4DD05C();
  v37 = sub_22A4DDCDC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v35;
    *v39 = v35;
    v40 = v35;
    _os_log_impl(&dword_229538000, v36, v37, "No updated accessory reachability for home %@", v38, 0xCu);
    sub_22953EAE4(v39, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v39, -1, -1);
    MEMORY[0x22AAD4E50](v38, -1, -1);
  }

  return (*(v45 + 8))(v34, v43);
}

uint64_t sub_2297CC3CC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  swift_beginAccess();
  v13 = *(v1 + 112);
  if (!*(v13 + 16))
  {
    goto LABEL_8;
  }

  v14 = sub_2296DC0F0(a1);
  if ((v15 & 1) == 0)
  {

LABEL_8:
    sub_229541CB0(ObjectType, &off_283CE58C8);
    v28 = a1;
    v29 = sub_22A4DD05C();
    v30 = sub_22A4DDCCC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_229538000, v29, v30, "Ignoring request to calculate reachability for %@ as it is not tracked", v31, 0xCu);
      sub_22953EAE4(v32, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    return 0;
  }

  v16 = *(*(v13 + 56) + v14);

  v17 = sub_2297CD6A4(a1);
  if (v16 == (v17 & 1))
  {
    return 0;
  }

  v18 = v17;
  sub_229541CB0(ObjectType, &off_283CE58C8);
  v19 = a1;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCDC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 67109378;
    *(v22 + 4) = v18 & 1;
    *(v22 + 8) = 2112;
    *(v22 + 10) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_229538000, v20, v21, "Widget reachability changed to %{BOOL}d for %@", v22, 0x12u);
    sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    MEMORY[0x22AAD4E50](v22, -1, -1);
  }

  (*(v6 + 8))(v12, v5);
  swift_beginAccess();
  v25 = *(v2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_2295AC358(v18 & 1, v19, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v35;
  swift_endAccess();
  return 1;
}

uint64_t sub_2297CC77C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v29 - v10;
  v12 = sub_22A4DB20C();
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
  v29[1] = sub_22A4DD5EC();
  v29[2] = v14;
  sub_22A4DE18C();
  if (!*(v13 + 16) || (v15 = sub_2295402E8(v30), (v16 & 1) == 0))
  {

    sub_22954045C(v30);
LABEL_9:
    v31 = 0u;
    v32 = 0u;
    return sub_22953EAE4(&v31, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_2295404B0(*(v13 + 56) + 32 * v15, &v31);
  sub_22954045C(v30);

  if (!*(&v32 + 1))
  {
    return sub_22953EAE4(&v31, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_229562F68(0, &qword_281401B10, off_278666300);
  result = swift_dynamicCast();
  if (result)
  {
    v18 = v30[0];
    v19 = [v30[0] home];
    if (v19)
    {
      v20 = v19;
      v21 = sub_22A4DD9DC();
      (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v1;
      v22[5] = v20;

      sub_22957F3C0(0, 0, v11, &unk_22A583E38, v22);
    }

    else
    {
      sub_229541CB0(ObjectType, &off_283CE58C8);
      v23 = v18;
      v24 = sub_22A4DD05C();
      v25 = sub_22A4DDCEC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        *(v26 + 4) = v23;
        *v27 = v23;
        v28 = v23;
        _os_log_impl(&dword_229538000, v24, v25, "Resident %@ is missing a home", v26, 0xCu);
        sub_22953EAE4(v27, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v27, -1, -1);
        MEMORY[0x22AAD4E50](v26, -1, -1);
      }

      else
      {
        v28 = v24;
        v24 = v23;
      }

      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_2297CCB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2297CCB74, a4, 0);
}

uint64_t sub_2297CCB74()
{
  v1 = *(v0 + 16);
  sub_2297CBEB4(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2297CCBEC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v70 = sub_22A4DB21C();
  v5 = *(v70 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v70);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v66 - v11;
  MEMORY[0x28223BE20](v10);
  v69 = &v66 - v13;
  v14 = sub_22A4DD07C();
  v15 = *(v14 - 8);
  v71 = v14;
  v72 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v66 - v24;
  sub_22A4DB1FC();
  if (v74[3])
  {
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    if (swift_dynamicCast())
    {
      v26 = v73;
      v27 = [v73 home];
      if (v27)
      {
        v28 = v27;
        v29 = sub_22A4DD9DC();
        (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
        v30 = swift_allocObject();
        v30[2] = 0;
        v30[3] = 0;
        v30[4] = v2;
        v30[5] = v28;

        sub_22957F3C0(0, 0, v25, &unk_22A583E28, v30);
      }

      else
      {
        v50 = v21;
        sub_229541CB0(ObjectType, &off_283CE58C8);
        v51 = v5;
        v52 = v69;
        v53 = v70;
        (*(v5 + 16))(v69, a1, v70);
        v54 = v26;
        v55 = sub_22A4DD05C();
        v56 = sub_22A4DDCEC();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v74[0] = v66;
          *v57 = 138412546;
          *(v57 + 4) = v54;
          *v58 = v54;
          *(v57 + 12) = 2080;
          v68 = v54;
          v59 = sub_22A4DB1EC();
          v60 = sub_22A4DD5EC();
          v67 = v50;
          v61 = v60;
          v63 = v62;

          (*(v51 + 8))(v52, v53);
          v64 = sub_2295A3E30(v61, v63, v74);

          *(v57 + 14) = v64;
          _os_log_impl(&dword_229538000, v55, v56, "Accessory %@ is missing a home for notification %s", v57, 0x16u);
          sub_22953EAE4(v58, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v58, -1, -1);
          v65 = v66;
          __swift_destroy_boxed_opaque_existential_0(v66);
          MEMORY[0x22AAD4E50](v65, -1, -1);
          MEMORY[0x22AAD4E50](v57, -1, -1);

          return (*(v72 + 8))(v67, v71);
        }

        else
        {

          (*(v51 + 8))(v52, v53);
          return (*(v72 + 8))(v50, v71);
        }
      }
    }
  }

  else
  {
    sub_22953EAE4(v74, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_229541CB0(ObjectType, &off_283CE58C8);
  v32 = *(v5 + 16);
  v33 = v70;
  v32(v12, a1, v70);
  v32(v9, a1, v33);
  v34 = sub_22A4DD05C();
  v35 = sub_22A4DDCEC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v69 = v19;
    v37 = v36;
    v68 = swift_slowAlloc();
    v73 = v68;
    *v37 = 136315394;
    LODWORD(v67) = v35;
    v38 = sub_22A4DB1EC();
    v39 = sub_22A4DD5EC();
    v41 = v40;

    v42 = *(v5 + 8);
    v42(v12, v33);
    v43 = sub_2295A3E30(v39, v41, &v73);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2080;
    sub_22A4DB1FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE60, &unk_22A57A960);
    v44 = sub_22A4DD64C();
    v46 = v45;
    v42(v9, v33);
    v47 = sub_2295A3E30(v44, v46, &v73);

    *(v37 + 14) = v47;
    _os_log_impl(&dword_229538000, v34, v67, "%s is missing an accessory as its object: %s", v37, 0x16u);
    v48 = v68;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v48, -1, -1);
    MEMORY[0x22AAD4E50](v37, -1, -1);

    return (*(v72 + 8))(v69, v71);
  }

  else
  {

    v49 = *(v5 + 8);
    v49(v9, v33);
    v49(v12, v33);
    return (*(v72 + 8))(v19, v71);
  }
}

uint64_t sub_2297CD338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2297CD950, a4, 0);
}

uint64_t sub_2297CD370(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_22A4DB21C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();

  a4(v9);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2297CD49C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2297CD524(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2297CD338(a1, v4, v5, v7, v6);
}

uint64_t sub_2297CD5E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_2297CCB54(a1, v4, v5, v7, v6);
}

id sub_2297CD6A4(void *a1)
{
  v2 = [a1 home];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = &selRef_isReachable;
  if (([a1 isDemoAccessory] & 1) == 0 && !objc_msgSend(v3, sel_isCurrentDevicePrimaryResident))
  {
    v4 = &selRef_isRemotelyReachable;
  }

  v5 = [a1 *v4];

  return v5;
}

unint64_t sub_2297CD744()
{
  result = qword_281401C28;
  if (!qword_281401C28)
  {
    sub_229562F68(255, &qword_281401C30, off_278665FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281401C28);
  }

  return result;
}

uint64_t sub_2297CD7AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229586D38;

  return sub_2297CA4AC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2297CD888(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2297CA3D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2297CDA58()
{
  v1 = *(v0 + OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_event + 24);
  v2 = *(v0 + OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_event + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCO13HomeKitDaemon6Metric15LogEventAdaptor_event), v1);
  v3 = (*(v2 + 8))(v1, v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v38 = v3;

  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v36 = v8;
  v37 = v4;
  while (v7)
  {
LABEL_11:
    v14 = __clz(__rbit64(v7)) | (v9 << 6);
    v15 = (*(v38 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_22957F1C4(*(v38 + 56) + 40 * v14, v41);
    v40[0] = v17;
    v40[1] = v16;
    v18 = v42;
    v19 = v43;
    __swift_project_boxed_opaque_existential_0(v41, v42);
    v20 = *(v19 + 8);
    swift_bridgeObjectRetain_n();
    v21 = v20(v18, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v10;
    v23 = sub_229543DBC(v17, v16);
    v25 = v10[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_23;
    }

    v29 = v24;
    if (v10[3] < v28)
    {
      sub_229893848(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_229543DBC(v17, v16);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v29)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v34 = v23;
    sub_229897F10();
    v23 = v34;
    v10 = v39;
    if (v29)
    {
LABEL_4:
      v11 = v10[7];
      v12 = *(v11 + 8 * v23);
      *(v11 + 8 * v23) = v21;

      goto LABEL_5;
    }

LABEL_17:
    v10[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v10[6] + 16 * v23);
    *v31 = v17;
    v31[1] = v16;
    *(v10[7] + 8 * v23) = v21;
    v32 = v10[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_24;
    }

    v10[2] = v33;
LABEL_5:
    v7 &= v7 - 1;
    sub_22953EAE4(v40, &unk_27D8814B0, &qword_22A583F08);
    v8 = v36;
    v4 = v37;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return v10;
    }

    v7 = *(v4 + 8 * v13);
    ++v9;
    if (v7)
    {
      v9 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}

id sub_2297CDE14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Metric.LogEventAdaptor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2297CDE98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814E0, &qword_22A583FB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A583E70;
  *(inited + 32) = 0x69466957736168;
  *(inited + 40) = 0xE700000000000000;
  v2 = *v0;
  v3 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 80) = &off_283CE59B8;
  *(inited + 48) = v2;
  *(inited + 88) = 0x7265687445736168;
  *(inited + 96) = 0xEB0000000074656ELL;
  v4 = v0[1];
  *(inited + 128) = v3;
  *(inited + 136) = &off_283CE59B8;
  *(inited + 104) = v4;
  strcpy((inited + 144), "primaryService");
  *(inited + 159) = -18;
  v5 = v0[2];
  v6 = MEMORY[0x277D83B88];
  *(inited + 184) = MEMORY[0x277D83B88];
  *(inited + 192) = &off_283CE59C8;
  *(inited + 160) = v5;
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x800000022A5970E0;
  v7 = v0[3];
  *(inited + 240) = v6;
  *(inited + 248) = &off_283CE59C8;
  *(inited + 216) = v7;
  *(inited + 256) = 0x4973614869666977;
  *(inited + 264) = 0xE900000000000050;
  LOBYTE(v7) = v0[4];
  *(inited + 296) = v3;
  *(inited + 304) = &off_283CE59B8;
  *(inited + 272) = v7;
  strcpy((inited + 312), "ethernetHasIP");
  *(inited + 326) = -4864;
  LOBYTE(v7) = v0[5];
  *(inited + 352) = v3;
  *(inited + 360) = &off_283CE59B8;
  *(inited + 328) = v7;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = 0x800000022A597100;
  LOBYTE(v7) = v0[6];
  *(inited + 408) = v3;
  *(inited + 416) = &off_283CE59B8;
  *(inited + 384) = v7;
  *(inited + 424) = 0xD000000000000016;
  *(inited + 432) = 0x800000022A597120;
  LOBYTE(v7) = v0[7];
  *(inited + 464) = v3;
  *(inited + 472) = &off_283CE59B8;
  *(inited + 440) = v7;
  *(inited + 480) = 0x616D697250736168;
  *(inited + 488) = 0xEA00000000007972;
  LOBYTE(v7) = v0[8];
  *(inited + 520) = v3;
  *(inited + 528) = &off_283CE59B8;
  *(inited + 496) = v7;
  strcpy((inited + 536), "numResidents");
  *(inited + 549) = 0;
  *(inited + 550) = -5120;
  *(inited + 576) = v6;
  *(inited + 584) = &off_283CE59C8;
  v8 = *(v0 + 3);
  *(inited + 552) = *(v0 + 2);
  *(inited + 592) = 0xD000000000000018;
  *(inited + 600) = 0x800000022A597140;
  *(inited + 632) = v6;
  *(inited + 640) = &off_283CE59C8;
  *(inited + 608) = v8;
  strcpy((inited + 648), "wifiRSSIStatus");
  *(inited + 663) = -18;
  v9 = v0[32];
  *(inited + 688) = v6;
  *(inited + 696) = &off_283CE59C8;
  *(inited + 664) = v9;
  *(inited + 704) = 0x4969466957736168;
  *(inited + 712) = 0xEB000000006F666ELL;
  LOBYTE(v6) = v0[33];
  *(inited + 744) = v3;
  *(inited + 752) = &off_283CE59B8;
  *(inited + 720) = v6;
  v10 = sub_22956B634(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE70, &qword_22A583FC0);
  swift_arrayDestroy();
  return v10;
}

uint64_t sub_2297CE18C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22A4DD5AC();
}

uint64_t sub_2297CE1E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814E0, &qword_22A583FB8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22A583E80;
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x800000022A596ED0;
  *(v2 + 72) = MEMORY[0x277D837D0];
  *(v2 + 80) = &off_283CE59A8;
  *(v2 + 48) = *v1;
  strcpy((v2 + 88), "numUniqueSSIDs");
  *(v2 + 103) = -18;
  v3 = MEMORY[0x277D83B88];
  *(v2 + 128) = MEMORY[0x277D83B88];
  *(v2 + 136) = &off_283CE59C8;
  v4 = *(v1 + 152);
  *(v2 + 104) = *(v1 + 144);
  *(v2 + 144) = 0x7571696E556D756ELL;
  *(v2 + 152) = 0xEF73444953534265;
  *(v2 + 184) = v3;
  *(v2 + 192) = &off_283CE59C8;
  *(v2 + 160) = v4;
  strcpy((v2 + 200), "numSharedSSIDs");
  *(v2 + 215) = -18;
  *(v2 + 240) = v3;
  *(v2 + 248) = &off_283CE59C8;
  v5 = *(v1 + 168);
  *(v2 + 216) = *(v1 + 160);
  *(v2 + 256) = 0x65726168536D756ELL;
  *(v2 + 264) = 0xEF73444953534264;
  *(v2 + 296) = v3;
  *(v2 + 304) = &off_283CE59C8;
  *(v2 + 272) = v5;
  *(v2 + 312) = 0xD000000000000023;
  *(v2 + 320) = 0x800000022A596EF0;
  *(v2 + 352) = v3;
  *(v2 + 360) = &off_283CE59C8;
  v6 = *(v1 + 184);
  *(v2 + 328) = *(v1 + 176);
  *(v2 + 368) = 0xD000000000000023;
  *(v2 + 376) = 0x800000022A596F20;
  *(v2 + 408) = v3;
  *(v2 + 416) = &off_283CE59C8;
  *(v2 + 384) = v6;
  *(v2 + 424) = 0xD000000000000022;
  *(v2 + 432) = 0x800000022A596F50;
  LOBYTE(v6) = *(v1 + 192);
  v7 = MEMORY[0x277D839B0];
  *(v2 + 464) = MEMORY[0x277D839B0];
  *(v2 + 472) = &off_283CE59B8;
  *(v2 + 440) = v6;
  *(v2 + 480) = 0xD00000000000001FLL;
  *(v2 + 488) = 0x800000022A596F80;
  LOBYTE(v6) = *(v1 + 193);
  *(v2 + 520) = v7;
  *(v2 + 528) = &off_283CE59B8;
  *(v2 + 496) = v6;
  *(v2 + 536) = 0xD00000000000001FLL;
  *(v2 + 544) = 0x800000022A596FA0;
  LOBYTE(v6) = *(v1 + 194);
  *(v2 + 576) = v7;
  *(v2 + 584) = &off_283CE59B8;
  *(v2 + 552) = v6;
  *(v2 + 592) = 0xD00000000000001CLL;
  *(v2 + 600) = 0x800000022A596FC0;
  LOBYTE(v6) = *(v1 + 195);
  *(v2 + 632) = v7;
  *(v2 + 640) = &off_283CE59B8;
  *(v2 + 608) = v6;
  *(v2 + 648) = 0xD000000000000020;
  *(v2 + 656) = 0x800000022A596FE0;
  LOBYTE(v6) = *(v1 + 196);
  *(v2 + 688) = v7;
  *(v2 + 696) = &off_283CE59B8;
  *(v2 + 664) = v6;
  *(v2 + 704) = 0xD00000000000001DLL;
  *(v2 + 712) = 0x800000022A597010;
  LOBYTE(v6) = *(v1 + 197);
  *(v2 + 744) = v7;
  *(v2 + 752) = &off_283CE59B8;
  *(v2 + 720) = v6;
  *(v2 + 760) = 0xD00000000000001BLL;
  *(v2 + 768) = 0x800000022A597030;
  *(v2 + 800) = v3;
  *(v2 + 808) = &off_283CE59C8;
  v8 = *(v1 + 208);
  *(v2 + 776) = *(v1 + 200);
  *(v2 + 816) = 0xD00000000000001ELL;
  *(v2 + 824) = 0x800000022A597050;
  *(v2 + 856) = v3;
  *(v2 + 864) = &off_283CE59C8;
  *(v2 + 832) = v8;
  *(v2 + 872) = 0xD00000000000001CLL;
  *(v2 + 880) = 0x800000022A597070;
  v9 = *(v1 + 216);
  *(v2 + 912) = v3;
  *(v2 + 920) = &off_283CE59C8;
  *(v2 + 888) = v9;
  *(v2 + 928) = 0xD000000000000014;
  *(v2 + 936) = 0x800000022A597090;
  LOBYTE(v3) = *(v1 + 224);
  *(v2 + 968) = v7;
  *(v2 + 976) = &off_283CE59B8;
  *(v2 + 944) = v3;
  *(v2 + 984) = 0xD000000000000024;
  *(v2 + 992) = 0x800000022A5970B0;
  v10 = *(v1 + 225);
  *(v2 + 1024) = v7;
  *(v2 + 1032) = &off_283CE59B8;
  *(v2 + 1000) = v10;
  sub_2295B2DF0(v1, &v99);
  v11 = sub_22956B634(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE70, &qword_22A583FC0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v12 = *(v1 + 40);
  *&v101[216] = *(v1 + 24);
  v102 = v12;
  v93 = v1;
  v103 = *(v1 + 56);
  v13 = sub_2297CDE98();
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v94 = v13;

  v19 = 0;
  while (v17)
  {
LABEL_11:
    v22 = __clz(__rbit64(v17)) | (v19 << 6);
    v23 = (*(v94 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    sub_22957F1C4(*(v94 + 56) + 40 * v22, v101);
    v99 = v24;
    v100 = v25;
    *&v98[0] = 0x6C6C6F72746E6F63;
    *(&v98[0] + 1) = 0xEB000000005F7265;

    MEMORY[0x22AAD08C0](v24, v25);
    v26 = v98[0];
    sub_22957F1C4(v101, v98);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v11;
    v28 = sub_229543DBC(v26, *(&v26 + 1));
    v30 = v11[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_68;
    }

    v34 = v29;
    if (v11[3] < v33)
    {
      sub_229896E80(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_229543DBC(v26, *(&v26 + 1));
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_74;
      }

LABEL_16:
      v11 = v106;
      if (v34)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v38 = v28;
    sub_22989A114();
    v28 = v38;
    v11 = v106;
    if (v34)
    {
LABEL_4:
      v20 = (v11[7] + 40 * v28);
      __swift_destroy_boxed_opaque_existential_0(v20);
      sub_229557188(v98, v20);

      goto LABEL_5;
    }

LABEL_17:
    v11[(v28 >> 6) + 8] |= 1 << v28;
    *(v11[6] + 16 * v28) = v26;
    sub_229557188(v98, v11[7] + 40 * v28);
    v36 = v11[2];
    v32 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v32)
    {
      goto LABEL_69;
    }

    v11[2] = v37;
LABEL_5:
    v17 &= v17 - 1;
    sub_22953EAE4(&v99, &unk_27D8814B0, &qword_22A583F08);
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_11;
    }
  }

  v39 = v93;
  v40 = *(v93 + 64);
  if (v40 != 2)
  {
    v107[0] = *(v93 + 72);
    *(v107 + 10) = *(v93 + 82);
    v106 = v40;
    v41 = sub_2297CDE98();
    v42 = v41 + 64;
    v43 = 1 << *(v41 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    v45 = v44 & *(v41 + 64);
    v46 = (v43 + 63) >> 6;
    v95 = v41;

    v47 = 0;
    while (v45)
    {
LABEL_32:
      v50 = __clz(__rbit64(v45)) | (v47 << 6);
      v51 = (*(v95 + 48) + 16 * v50);
      v52 = *v51;
      v53 = v51[1];
      sub_22957F1C4(*(v95 + 56) + 40 * v50, v101);
      v99 = v52;
      v100 = v53;
      *&v98[0] = 0x726F737365636361;
      *(&v98[0] + 1) = 0xEA00000000005F79;

      MEMORY[0x22AAD08C0](v52, v53);
      v54 = v98[0];
      sub_22957F1C4(v101, v98);
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v11;
      v56 = sub_229543DBC(v54, *(&v54 + 1));
      v58 = v11[2];
      v59 = (v57 & 1) == 0;
      v32 = __OFADD__(v58, v59);
      v60 = v58 + v59;
      if (v32)
      {
        goto LABEL_70;
      }

      v61 = v57;
      if (v11[3] >= v60)
      {
        if ((v55 & 1) == 0)
        {
          v65 = v56;
          sub_22989A114();
          v56 = v65;
        }
      }

      else
      {
        sub_229896E80(v60, v55);
        v56 = sub_229543DBC(v54, *(&v54 + 1));
        if ((v61 & 1) != (v62 & 1))
        {
          goto LABEL_74;
        }
      }

      v11 = v104;
      if (v61)
      {
        v48 = (v104[7] + 40 * v56);
        __swift_destroy_boxed_opaque_existential_0(v48);
        sub_229557188(v98, v48);
      }

      else
      {
        v104[(v56 >> 6) + 8] |= 1 << v56;
        *(v11[6] + 16 * v56) = v54;
        sub_229557188(v98, v11[7] + 40 * v56);
        v63 = v11[2];
        v32 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v32)
        {
          goto LABEL_72;
        }

        v11[2] = v64;
      }

      v45 &= v45 - 1;
      sub_22953EAE4(&v99, &unk_27D8814B0, &qword_22A583F08);
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_66;
      }

      if (v49 >= v46)
      {
        break;
      }

      v45 = *(v42 + 8 * v49);
      ++v47;
      if (v45)
      {
        v47 = v49;
        goto LABEL_32;
      }
    }

    v39 = v93;
  }

  v66 = *(v39 + 104);
  if (v66 == 2)
  {
    return v11;
  }

  v105[0] = *(v39 + 112);
  *(v105 + 10) = *(v39 + 122);
  v104 = v66;
  v67 = sub_2297CDE98();
  v68 = v67 + 64;
  v69 = 1 << *(v67 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v67 + 64);
  v72 = (v69 + 63) >> 6;
  v96 = v67;

  v73 = 0;
  while (2)
  {
    if (v71)
    {
LABEL_53:
      v76 = __clz(__rbit64(v71)) | (v73 << 6);
      v77 = (*(v96 + 48) + 16 * v76);
      v78 = *v77;
      v79 = v77[1];
      sub_22957F1C4(*(v96 + 56) + 40 * v76, v101);
      v99 = v78;
      v100 = v79;
      *&v98[0] = 0x5F7972616D697270;
      *(&v98[0] + 1) = 0xE800000000000000;

      MEMORY[0x22AAD08C0](v78, v79);
      v80 = v98[0];
      sub_22957F1C4(v101, v98);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v11;
      v82 = sub_229543DBC(v80, *(&v80 + 1));
      v84 = v11[2];
      v85 = (v83 & 1) == 0;
      v32 = __OFADD__(v84, v85);
      v86 = v84 + v85;
      if (v32)
      {
        goto LABEL_71;
      }

      v87 = v83;
      if (v11[3] >= v86)
      {
        if ((v81 & 1) == 0)
        {
          v91 = v82;
          sub_22989A114();
          v82 = v91;
          v11 = v97;
          if ((v87 & 1) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_46;
        }
      }

      else
      {
        sub_229896E80(v86, v81);
        v82 = sub_229543DBC(v80, *(&v80 + 1));
        if ((v87 & 1) != (v88 & 1))
        {
          goto LABEL_74;
        }
      }

      if ((v87 & 1) == 0)
      {
LABEL_59:
        v11[(v82 >> 6) + 8] |= 1 << v82;
        *(v11[6] + 16 * v82) = v80;
        sub_229557188(v98, v11[7] + 40 * v82);
        v89 = v11[2];
        v32 = __OFADD__(v89, 1);
        v90 = v89 + 1;
        if (v32)
        {
          goto LABEL_73;
        }

        v11[2] = v90;
        goto LABEL_47;
      }

LABEL_46:
      v74 = (v11[7] + 40 * v82);
      __swift_destroy_boxed_opaque_existential_0(v74);
      sub_229557188(v98, v74);

LABEL_47:
      v71 &= v71 - 1;
      sub_22953EAE4(&v99, &unk_27D8814B0, &qword_22A583F08);
      continue;
    }

    break;
  }

  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v75 >= v72)
    {

      return v11;
    }

    v71 = *(v68 + 8 * v75);
    ++v73;
    if (v71)
    {
      v73 = v75;
      goto LABEL_53;
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_22A4DE67C();
  __break(1u);
  return result;
}