uint64_t sub_1DC3ADB50()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DC3ADB94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  sub_1DC51586C();

  return sub_1DC51585C();
}

uint64_t sub_1DC3ADBF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DC3ADC60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1B0, &qword_1DC527198);
  v0 = sub_1DC510F7C();
  OUTLINED_FUNCTION_0(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DC522F00;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E69D0988], v0);
  v8(v7 + v4, *MEMORY[0x1E69D0970], v0);
  result = (v8)(v7 + 2 * v4, *MEMORY[0x1E69D0960], v0);
  qword_1ECC8F418 = v6;
  return result;
}

uint64_t sub_1DC3ADD88@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v179 = a1;
  v174 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v3 = OUTLINED_FUNCTION_10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v158 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v159 = (&v157 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14(&v157 - v13);
  v173 = sub_1DC5157EC();
  v14 = OUTLINED_FUNCTION_0(v173);
  v160 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v18);
  v169 = sub_1DC510FDC();
  v19 = OUTLINED_FUNCTION_0(v169);
  v164 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v23);
  v181 = sub_1DC51179C();
  v24 = OUTLINED_FUNCTION_0(v181);
  v163 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v28);
  v171 = sub_1DC51164C();
  v29 = OUTLINED_FUNCTION_0(v171);
  v167 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_1();
  v170 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_14(&v157 - v38);
  v39 = sub_1DC510F7C();
  v40 = OUTLINED_FUNCTION_0(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v46 = &v157 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1DC510FAC();
  v47 = OUTLINED_FUNCTION_0(v193);
  v191 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_1();
  v192 = v51;
  v52 = sub_1DC51122C();
  v53 = OUTLINED_FUNCTION_0(v52);
  v194 = v54;
  v195 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_15();
  v166 = v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v157 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v157 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v157 - v71;
  v73 = type metadata accessor for NLRouterNLParseResponse(0);
  v74 = OUTLINED_FUNCTION_35(v73);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v77);
  v177 = sub_1DC516F5C();
  v78 = OUTLINED_FUNCTION_0(v177);
  v176 = v79;
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v83 = &v157 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v85 = sub_1DC2BE518();
  v86 = OUTLINED_FUNCTION_130();
  v175 = v83;
  v178 = v84;
  sub_1DC2A2ED0("HeuristicRules.NLXOverridesExceptionsRule", 41, 2, v85, v86 & 1, v83);

  v87 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v179 + *(v87 + 32), v66, &qword_1ECC7C158, &unk_1DC5234A0);
  v88 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v66, 1, v88) == 1)
  {
    sub_1DC28EB30(v66, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v73);
LABEL_4:
    sub_1DC28EB30(v72, &qword_1ECC7C160, qword_1DC5233B0);
LABEL_5:
    OUTLINED_FUNCTION_8_14();
    sub_1DC517B9C();
    OUTLINED_FUNCTION_11_20();
    v89 = sub_1DC2BE518();
    sub_1DC516F0C();

    goto LABEL_6;
  }

  sub_1DC28F358(v66, v72, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC3A5DA0(v66, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v72, 1, v73) == 1)
  {
    goto LABEL_4;
  }

  v157 = v87;
  v94 = v172;
  sub_1DC2E53A4(v72, v172);
  v95 = 0;
  v96 = *v94;
  v186 = (v191 + 1);
  v187 = v60;
  v191 = *(v96 + 16);
  v189 = v194 + 16;
  v190 = (v194 + 8);
  v185 = (v42 + 8);
  v188 = v96;
  do
  {
    if (v95 == v191)
    {
      OUTLINED_FUNCTION_0_42();
      goto LABEL_5;
    }

    if (v95 >= *(v96 + 16))
    {
      __break(1u);
      goto LABEL_56;
    }

    v97 = *(v194 + 72);
    v184 = v96 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
    v183 = v97;
    v182 = *(v194 + 16);
    v182(v60, v184 + v97 * v95, v195);
    if (qword_1ECC7FCA0 != -1)
    {
      OUTLINED_FUNCTION_3_23();
      swift_once();
    }

    ++v95;
    v98 = qword_1ECC8F418;
    v99 = v192;
    sub_1DC51120C();
    sub_1DC510F8C();
    (*v186)(v99, v193);
    v100 = 0;
    v94 = *(v98 + 16);
    do
    {
      v101 = v100;
      if (v94 == v100)
      {
        break;
      }

      v100 = (v100 + 1);
      v102 = v98 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v101;
      sub_1DC3AF49C(&qword_1ECC7BE30, MEMORY[0x1E69D0990]);
    }

    while ((sub_1DC5176CC() & 1) == 0);
    v66 = *v190;
    v60 = v187;
    (*v190)(v187, v195);
    (*v185)(v46, v39);
    v96 = v188;
  }

  while (v94 == v101);
  v103 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v104 = sub_1DC345D18();
  v106 = v105;
  v107 = sub_1DC312FB4(0);
  v109 = v104 == v107 && v106 == v108;
  if (v109)
  {

    OUTLINED_FUNCTION_11_20();
    goto LABEL_27;
  }

  v110 = sub_1DC51825C();

  OUTLINED_FUNCTION_11_20();
  if (v110)
  {
LABEL_27:
    OUTLINED_FUNCTION_0_42();
    OUTLINED_FUNCTION_8_14();
    goto LABEL_7;
  }

  v111 = v165;
  sub_1DC3EAD64(v165);
  v112 = type metadata accessor for QDContextState(0);
  if (__swift_getEnumTagSinglePayload(v111, 1, v112) == 1)
  {
    sub_1DC28EB30(v111, &qword_1ECC7BEB8, &unk_1DC527150);
    goto LABEL_27;
  }

  v113 = *v111;
  sub_1DC3A5DA0(v111, type metadata accessor for QDContextState);
  LOBYTE(v197) = v113;
  LOBYTE(v196[0]) = 3;
  sub_1DC3A56C4();
  result = sub_1DC5176CC();
  if ((result & 1) == 0)
  {
    goto LABEL_27;
  }

  v165 = v103;
  v114 = 0;
  v115 = v188;
  v185 = *(v188 + 16);
  v60 = (v167 + 16);
  v194 = v163 + 8;
  v191 = (v164 + 8);
  v116 = v171;
  v117 = v170;
  v118 = v166;
  while (2)
  {
    if (v114 == v185)
    {
      OUTLINED_FUNCTION_0_42();
      OUTLINED_FUNCTION_8_14();
LABEL_51:
      OUTLINED_FUNCTION_11_20();
      goto LABEL_7;
    }

    if (v114 >= *(v115 + 16))
    {
      __break(1u);
      return result;
    }

    v182(v118, v184 + v114 * v183, v195);
    v119 = sub_1DC5111AC();
    v120 = *(v119 + 16);
    if (!v120)
    {

LABEL_47:
      v114 = (v114 + 1);
      result = (v66)(v118, v195);
      continue;
    }

    break;
  }

  v186 = v114;
  v121 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v187 = v119;
  v122 = v119 + v121;
  v123 = *(v167 + 72);
  v124 = *(v167 + 16);
  v192 = v123;
  v193 = v124;
  while (2)
  {
    v124(v117, v122, v116);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      v137 = OUTLINED_FUNCTION_13_18();
      v138(v137);
      goto LABEL_44;
    }

    v125 = v60;
    v126 = v180;
    sub_1DC51154C();
    v127 = sub_1DC51177C();
    v128 = *v194;
    (*v194)(v126, v181);
    if ((v127 & 1) == 0)
    {
      goto LABEL_41;
    }

    type metadata accessor for NLRouterBypassUtils();
    v129 = v180;
    sub_1DC51154C();
    v130 = v168;
    sub_1DC51178C();
    v131 = v129;
    v116 = v171;
    v128(v131, v181);
    v132 = sub_1DC307E5C();
    v133 = v130;
    v117 = v170;
    (*v191)(v133, v169);
    if (!v132)
    {
LABEL_41:
      v139 = OUTLINED_FUNCTION_13_18();
      v140(v139);
      v60 = v125;
      v123 = v192;
      v124 = v193;
      goto LABEL_44;
    }

    sub_1DC51478C();

    v134 = OUTLINED_FUNCTION_13_18();
    v135(v134);
    v196[0] = v197;
    v196[1] = v198;
    v60 = v125;
    if (!*(&v198 + 1))
    {
      sub_1DC28EB30(v196, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v124 = v193;
      goto LABEL_43;
    }

    sub_1DC514ACC();
    v136 = swift_dynamicCast();
    v124 = v193;
    if ((v136 & 1) == 0)
    {
LABEL_43:
      v123 = v192;
LABEL_44:
      v122 += v123;
      if (!--v120)
      {

        v118 = v166;
        v115 = v188;
        v114 = v186;
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  (v66)(v166, v195);
  sub_1DC345D18();
  v141 = sub_1DC312F68();
  if (v141 == 4)
  {
    OUTLINED_FUNCTION_0_42();
    v94 = v162;
    v66 = v173;
    __swift_storeEnumTagSinglePayload(v162, 1, 1, v173);
    v60 = v174;
    goto LABEL_54;
  }

  v94 = v162;
  sub_1DC312E7C(v141, v162);
  v66 = v173;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v94, 1, v173);
  v60 = v174;
  if (EnumTagSinglePayload != 1)
  {
LABEL_56:
    v143 = v160;
    v144 = *(v160 + 32);
    v145 = v161;
    v144(v161, v94, v66);
    v146 = *(v157 + 20);
    v147 = v159;
    sub_1DC28F358(v179 + v146, v159, &qword_1ECC7BFD0, &unk_1DC522550);
    type metadata accessor for NLRouterTurnContext(0);
    OUTLINED_FUNCTION_11_6(v147);
    if (v109)
    {
      sub_1DC28EB30(v147, &qword_1ECC7BFD0, &unk_1DC522550);
    }

    else
    {
      v148 = *v147;

      OUTLINED_FUNCTION_46();
      sub_1DC3A5DA0(v147, v149);
      v150 = sub_1DC3AEE9C(v148);

      if (v150)
      {
        goto LABEL_64;
      }
    }

    v151 = v158;
    sub_1DC28F358(v179 + v146, v158, &qword_1ECC7BFD0, &unk_1DC522550);
    OUTLINED_FUNCTION_11_6(v151);
    if (v109)
    {
      sub_1DC28EB30(v151, &qword_1ECC7BFD0, &unk_1DC522550);
    }

    else
    {
      v152 = *(v151 + 8);

      OUTLINED_FUNCTION_46();
      sub_1DC3A5DA0(v151, v153);
      v154 = sub_1DC3AEE9C(v152);

      if (v154)
      {
LABEL_64:
        sub_1DC517B9C();
        v155 = sub_1DC2BE518();
        sub_1DC516F0C();

        (*(v143 + 8))(v145, v66);
        OUTLINED_FUNCTION_0_42();
        goto LABEL_51;
      }
    }

    sub_1DC517B9C();
    OUTLINED_FUNCTION_11_20();
    v156 = sub_1DC2BE518();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_0_42();
    v144(v60, v145, v66);
    v90 = 0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_42();
LABEL_54:
  OUTLINED_FUNCTION_11_20();
  sub_1DC28EB30(v94, &qword_1ECC7CA40, &unk_1DC5233A0);
LABEL_6:
  v90 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v60, v90, 1, v66);
  v91 = sub_1DC2BE518();
  v92 = v175;
  sub_1DC2B8848();

  return (*(v176 + 8))(v92, v177);
}

BOOL sub_1DC3AEE9C(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    v5 = *(sub_1DC510F1C() - 8);
    ++v2;
  }

  while (!sub_1DC3AEF44(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4));
  return v3 != v4;
}

BOOL sub_1DC3AEF44(uint64_t a1)
{
  v2 = sub_1DC5149BC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v49 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v46 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  OUTLINED_FUNCTION_35(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v15 = OUTLINED_FUNCTION_10(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v47 = v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v45 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v48 = &v45 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C890, &qword_1DC5234B0);
  OUTLINED_FUNCTION_10(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v45 - v28;
  type metadata accessor for NLRouterBypassUtils();
  v30 = sub_1DC510F1C();
  OUTLINED_FUNCTION_35(v30);
  (*(v31 + 16))(v29, a1, v30);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  sub_1DC307F68(v29);
  sub_1DC28EB30(v29, &qword_1ECC7C890, &qword_1DC5234B0);
  sub_1DC51478C();

  if (!v50[3])
  {
    v34 = &qword_1ECC7D3F0;
    v35 = &qword_1DC5238B0;
    v36 = v50;
    goto LABEL_7;
  }

  sub_1DC51497C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1DC51475C();

  if (v50[0] && (v32 = sub_1DC51477C(), , v32))
  {
    v33 = v48;
    sub_1DC5149AC();
  }

  else
  {
    v33 = v48;
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v2);
  }

  v38 = v49;
  (*(v49 + 104))(v22, *MEMORY[0x1E69D1D40], v2);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v2);
  v39 = *(v8 + 48);
  sub_1DC28F358(v33, v13, &qword_1ECC7C200, &qword_1DC523020);
  sub_1DC28F358(v22, &v13[v39], &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_11_6(v13);
  if (v41)
  {

    OUTLINED_FUNCTION_80(v22);
    OUTLINED_FUNCTION_80(v33);
    OUTLINED_FUNCTION_11_6(&v13[v39]);
    if (!v41)
    {
      goto LABEL_19;
    }

    v34 = &qword_1ECC7C200;
    v35 = &qword_1DC523020;
    v36 = v13;
LABEL_7:
    sub_1DC28EB30(v36, v34, v35);
    return 0;
  }

  v40 = v47;
  sub_1DC28F358(v13, v47, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_11_6(&v13[v39]);
  if (v41)
  {

    OUTLINED_FUNCTION_80(v22);
    OUTLINED_FUNCTION_80(v33);
    (*(v38 + 8))(v40, v2);
LABEL_19:
    sub_1DC28EB30(v13, &qword_1ECC7C238, &qword_1DC527190);
    return 1;
  }

  v42 = v46;
  (*(v38 + 32))(v46, &v13[v39], v2);
  sub_1DC3AF49C(&qword_1ECC7C208, MEMORY[0x1E69D1D48]);
  v43 = sub_1DC5176CC();

  v44 = *(v38 + 8);
  v44(v42, v2);
  sub_1DC28EB30(v22, &qword_1ECC7C200, &qword_1DC523020);
  sub_1DC28EB30(v33, &qword_1ECC7C200, &qword_1DC523020);
  v44(v40, v2);
  sub_1DC28EB30(v13, &qword_1ECC7C200, &qword_1DC523020);
  return (v43 & 1) == 0;
}

uint64_t sub_1DC3AF49C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DC3AF4E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        return 0;
      }

      goto LABEL_5;
    case 2:
      if (a6 == 2)
      {
        goto LABEL_5;
      }

      return 0;
    case 3:
      if (a6 == 3)
      {
        goto LABEL_5;
      }

      return 0;
    default:
      if (a6)
      {
        return 0;
      }

LABEL_5:
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      else
      {
        return sub_1DC51825C();
      }
  }
}

uint64_t sub_1DC3AF584@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1DC3AF594()
{
  type metadata accessor for ServiceStore();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for ServiceStoreServiceKeyingFields(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1B8, &qword_1DC5271A0);
  OUTLINED_FUNCTION_0_43();
  sub_1DC2B3338(v1, v2);
  *(v0 + 112) = sub_1DC51764C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1C0, qword_1DC5271A8);
  result = sub_1DC51764C();
  *(v0 + 120) = result;
  qword_1ECC8F6E8 = v0;
  return result;
}

uint64_t sub_1DC3AF678()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t sub_1DC3AF6B0(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DC2977A8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_1DC3AF700(void *a1)
{
  OUTLINED_FUNCTION_12_0();
  v4 = (*(v3 + 120))(v7);
  sub_1DC3B0D3C(a1);
  swift_unknownObjectRelease();
  v4(v7, 0);
  v5 = (*(*v1 + 144))(v7);
  sub_1DC298864(a1);

  return v5(v7, 0);
}

uint64_t sub_1DC3AF7E0()
{
  OUTLINED_FUNCTION_37_4();
  v2 = v0[22];
  v1 = v0[23];

  swift_unknownObjectRelease();
  v3 = v0[26];
  sub_1DC2989EC(v0[21]);
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v8 = v0[14];
  v7 = v0[15];

  OUTLINED_FUNCTION_2_2();

  return v9();
}

uint64_t sub_1DC3AF88C()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[16];
  v6 = v0[17];

  swift_unknownObjectRelease();

  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_63_0();
  v9(v8);
  v10 = v0[28];
  sub_1DC2989EC(v0[21]);
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[19];
  v15 = v0[14];
  v14 = v0[15];

  OUTLINED_FUNCTION_2_2();

  return v16();
}

uint64_t sub_1DC3AF95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1DC2DB2AC();
  v12 = sub_1DC517AAC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1DC28EB30(v11, &unk_1ECC7D050, &qword_1DC523AC0);
  }

  else
  {
    sub_1DC517A9C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DC517A7C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DC51779C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1DC28EB30(a3, &unk_1ECC7D050, &qword_1DC523AC0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DC28EB30(a3, &unk_1ECC7D050, &qword_1DC523AC0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1DC3AFBE4()
{
  OUTLINED_FUNCTION_1_0();
  v1[7] = v0;
  v1[6] = v2;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = sub_1DC514FBC();
  v1[8] = v6;
  OUTLINED_FUNCTION_52(v6);
  v1[9] = v7;
  v9 = *(v8 + 64);
  v1[10] = OUTLINED_FUNCTION_118();
  v10 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_118();

  return MEMORY[0x1EEE6DFA0](sub_1DC3AFCBC, v0, 0);
}

uint64_t sub_1DC3AFCBC()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[11];
  v4 = (*(v0[4] + 16))(v0[5]);
  (*(*v1 + 128))(v4);
  v5 = OUTLINED_FUNCTION_63_0();
  v7 = sub_1DC3AF6B0(v5, v6);
  v0[12] = v7;

  if (v7)
  {
    v8 = *(MEMORY[0x1E69D3548] + 4);

    v9 = swift_task_alloc();
    v0[13] = v9;
    *v9 = v0;
    v9[1] = sub_1DC3AFE88;
    v10.n128_u64[0] = v0[6];

    return MEMORY[0x1EEE40F70](v0 + 15, &unk_1DC5271E0, v7, &type metadata for ServiceSetupResponse, v10);
  }

  else
  {
    v11 = v0[11];
    sub_1DC3B0E88();
    OUTLINED_FUNCTION_23_19();
    OUTLINED_FUNCTION_33_1();
    *v12 = 0xD00000000000002CLL;
    v12[1] = 0x80000001DC5447A0;
    OUTLINED_FUNCTION_18_17(v12, 3, v17);
    sub_1DC2989EC(v11);
    v14 = v0[10];
    v13 = v0[11];

    OUTLINED_FUNCTION_2_2();

    return v15();
  }
}

uint64_t sub_1DC3AFE88()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_38();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  v3[14] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = sub_1DC3B03D8;
  }

  else
  {
    v11 = v3[12];
    v12 = v3[7];

    v10 = sub_1DC3AFF9C;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1DC3AFF9C()
{
  v64 = v0;
  if (*(v0 + 120))
  {
    sub_1DC517B9C();
    v1 = OUTLINED_FUNCTION_21_2();
    v2 = sub_1DC296DBC();
    if (OUTLINED_FUNCTION_36_15(v2))
    {
      v3 = *(v0 + 24);
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v62 = v5;
      *v4 = 136315394;
      v6 = sub_1DC5183EC();
      v8 = sub_1DC291244(v6, v7, &v62);

      *(v4 + 4) = v8;
      *(v4 + 12) = 2080;
      *(v0 + 122) = 1;
      v9 = sub_1DC51777C();
      v11 = sub_1DC291244(v9, v10, &v62);

      *(v4 + 14) = v11;
      OUTLINED_FUNCTION_27_11();
      _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E1298840](v5, -1, -1);
      OUTLINED_FUNCTION_31();
    }

    v62 = 0;
    v63 = 0xE000000000000000;
    v61 = *(v0 + 24);
    sub_1DC517F4C();

    v62 = 0xD00000000000002ELL;
    v63 = 0x80000001DC544810;
    *(v0 + 121) = 1;
    v17 = sub_1DC51777C();
    MEMORY[0x1E1296160](v17);

    v18 = v62;
    v19 = v63;
    sub_1DC3B0E88();
    v20 = OUTLINED_FUNCTION_33_1();
    *v21 = v18;
    *(v21 + 8) = v19;
    *(v21 + 16) = 1;
    *(v21 + 24) = v61;
    swift_willThrow();
    goto LABEL_6;
  }

  v22 = *(v0 + 112);
  v23 = *(v0 + 56);
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);
  v26 = *(v0 + 24);
  OUTLINED_FUNCTION_12_0();
  v28 = (*(v27 + 160))();
  v20 = v22;
  if (v22)
  {
LABEL_6:
    v30 = *(v0 + 80);
    v31 = *(v0 + 64);
    *(v0 + 16) = v20;
    v32 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
    if (swift_dynamicCast())
    {

      sub_1DC517B9C();
      v33 = OUTLINED_FUNCTION_21_2();
      v34 = sub_1DC296DBC();
      if (OUTLINED_FUNCTION_36_15(v34))
      {
        v35 = *(v0 + 24);
        swift_slowAlloc();
        v36 = OUTLINED_FUNCTION_111();
        v62 = v36;
        v37 = OUTLINED_FUNCTION_27_14(4.8149e-34);
        v39 = sub_1DC291244(v37, v38, &v62);

        *(v31 + 4) = v39;
        OUTLINED_FUNCTION_27_11();
        _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        OUTLINED_FUNCTION_67();
        OUTLINED_FUNCTION_31();
      }

      v46 = *(v0 + 88);
      v45 = *(v0 + 96);
      v48 = *(v0 + 72);
      v47 = *(v0 + 80);
      v49 = *(v0 + 64);
      sub_1DC3B0E88();
      OUTLINED_FUNCTION_23_19();
      OUTLINED_FUNCTION_33_1();
      *v50 = 0xD00000000000003BLL;
      v50[1] = 0x80000001DC5447D0;
      OUTLINED_FUNCTION_18_17(v50, 2, v61);

      sub_1DC2989EC(v46);
      (*(v48 + 8))(v47, v49);
    }

    else
    {
      v51 = *(v0 + 96);
      sub_1DC2989EC(*(v0 + 88));
    }

    v53 = *(v0 + 80);
    v52 = *(v0 + 88);

    OUTLINED_FUNCTION_2_2();

    return v54();
  }

  v56 = v28;
  v57 = v29;
  v58 = *(v0 + 96);
  v59 = *(v0 + 80);
  sub_1DC2989EC(*(v0 + 88));

  v60 = *(v0 + 8);

  return v60(v56, v57);
}

uint64_t sub_1DC3B03D8()
{
  v31 = v0;
  v1 = *(v0 + 96);

  v2 = *(v0 + 112);
  *(v0 + 16) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  if (swift_dynamicCast())
  {

    sub_1DC517B9C();
    v6 = OUTLINED_FUNCTION_21_2();
    v7 = sub_1DC296DBC();
    if (OUTLINED_FUNCTION_36_15(v7))
    {
      v8 = *(v0 + 24);
      swift_slowAlloc();
      v9 = OUTLINED_FUNCTION_111();
      v30 = v9;
      v10 = OUTLINED_FUNCTION_27_14(4.8149e-34);
      v12 = sub_1DC291244(v10, v11, &v30);

      *(v3 + 4) = v12;
      OUTLINED_FUNCTION_27_11();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_31();
    }

    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = *(v0 + 64);
    sub_1DC3B0E88();
    OUTLINED_FUNCTION_23_19();
    OUTLINED_FUNCTION_33_1();
    *v23 = 0xD00000000000003BLL;
    v23[1] = 0x80000001DC5447D0;
    OUTLINED_FUNCTION_18_17(v23, 2, v29);

    sub_1DC2989EC(v19);
    (*(v21 + 8))(v20, v22);
  }

  else
  {
    v24 = *(v0 + 96);
    sub_1DC2989EC(*(v0 + 88));
  }

  v26 = *(v0 + 80);
  v25 = *(v0 + 88);

  OUTLINED_FUNCTION_2_2();

  return v27();
}

uint64_t sub_1DC3B05C8(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E69E86A8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  *v6 = v2;
  v6[1] = sub_1DC29F120;
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, &type metadata for ServiceSetupResponse, v7, v8);
}

uint64_t sub_1DC3B069C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DC3B06CC()
{
  sub_1DC3B069C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DC3B0720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = a1 == a3 && a2 == a4;
      if (v4 || (sub_1DC51825C() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DC3B0768()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DC2B8808();
}

uint64_t sub_1DC3B0784(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC3B07A4(char a1)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0]((a1 & 1u) + 1);
  return sub_1DC51833C();
}

uint64_t sub_1DC3B0824(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](a2 & 1);
  return sub_1DC51833C();
}

uint64_t sub_1DC3B0868(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0]((a2 & 1u) + 1);
  return sub_1DC51833C();
}

uint64_t sub_1DC3B08B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3B0784(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC3B08DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC3B079C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DC3B0908(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DC3B0938@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3B0908(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1DC3B0964(void *a1, void *a2)
{
  v4 = sub_1DC510C8C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD30, &qword_1DC524D20);
  OUTLINED_FUNCTION_35(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37 - v23;
  v25 = *a1 == *a2 && a1[1] == a2[1];
  if (v25 || (v26 = sub_1DC51825C(), result = 0, (v26 & 1) != 0))
  {
    v38 = v7;
    v28 = *(type metadata accessor for ServiceStoreServiceKeyingFields(0) + 20);
    v29 = *(v19 + 48);
    sub_1DC2DB2AC();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_14_2(v24);
    if (v25)
    {
      OUTLINED_FUNCTION_14_2(&v24[v29]);
      if (v25)
      {
        sub_1DC28EB30(v24, &qword_1ECC7CD00, &unk_1DC5259F0);
        return 1;
      }
    }

    else
    {
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_14_2(&v24[v29]);
      if (!v30)
      {
        v31 = v38;
        (*(v38 + 32))(v12, &v24[v29], v4);
        OUTLINED_FUNCTION_7_18();
        sub_1DC2B3338(v32, v33);
        v34 = sub_1DC5176CC();
        v35 = *(v31 + 8);
        v36 = OUTLINED_FUNCTION_43();
        v35(v36);
        (v35)(v18, v4);
        sub_1DC28EB30(v24, &qword_1ECC7CD00, &unk_1DC5259F0);
        return (v34 & 1) != 0;
      }

      (*(v38 + 8))(v18, v4);
    }

    sub_1DC28EB30(v24, &unk_1ECC7CD30, &qword_1DC524D20);
    return 0;
  }

  return result;
}

uint64_t sub_1DC3B0C54()
{
  sub_1DC5182FC();
  sub_1DC298098();
  return sub_1DC51833C();
}

uint64_t ServiceSetupConfiguration.locale.getter()
{
  v0 = sub_1DC510C8C();
  OUTLINED_FUNCTION_35(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_43();

  return v4(v3);
}

uint64_t sub_1DC3B0D3C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1DC2977A8(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v8 = *(*v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1F0, &qword_1DC527710);
  sub_1DC517FFC();
  v9 = *(v15 + 48);
  v10 = type metadata accessor for ServiceStoreServiceKeyingFields(0);
  sub_1DC2989EC(v9 + *(*(v10 - 8) + 72) * v6);
  v11 = (*(v15 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1B8, &qword_1DC5271A0);
  sub_1DC2B3338(&unk_1ECC7BD90, type metadata accessor for ServiceStoreServiceKeyingFields);
  sub_1DC51800C();
  *v2 = v15;
  return v12;
}

unint64_t sub_1DC3B0E88()
{
  result = qword_1ECC7D1C8;
  if (!qword_1ECC7D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D1C8);
  }

  return result;
}

uint64_t sub_1DC3B0EDC()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DC29F200;

  return sub_1DC3B05C8(v3, v0);
}

unsigned __int8 *sub_1DC3B0F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1DC51799C();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DC3B1A10();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DC517F8C();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_1DC3B1500()
{
  result = qword_1ECC7D1D8;
  if (!qword_1ECC7D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D1D8);
  }

  return result;
}

unint64_t sub_1DC3B1558()
{
  result = qword_1ECC7D1E0;
  if (!qword_1ECC7D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D1E0);
  }

  return result;
}

uint64_t sub_1DC3B15F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_41_0(*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 > 3)
  {
    return OUTLINED_FUNCTION_41_0(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_41_0(-1);
  }
}

uint64_t sub_1DC3B162C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DC3B16B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_41_0(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_41_0(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_41_0(v4);
}

uint64_t sub_1DC3B1704(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *_s13CDMFoundation12ServiceStateOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1DC3B1880()
{
  sub_1DC3B18DC();
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_17_12();
  }
}

void sub_1DC3B18DC()
{
  if (!qword_1ECC7BE50)
  {
    sub_1DC510C8C();
    v0 = sub_1DC517D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BE50);
    }
  }
}

void sub_1DC3B195C()
{
  sub_1DC510C8C();
  if (v0 <= 0x3F)
  {
    sub_1DC3B19C0();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_17_12();
    }
  }
}

void sub_1DC3B19C0()
{
  if (!qword_1ECC7B900)
  {
    v0 = sub_1DC517D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7B900);
    }
  }
}

uint64_t sub_1DC3B1A10()
{
  v0 = sub_1DC3B1A7C();
  v4 = sub_1DC3B1AB0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1DC3B1AB0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DC51780C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1DC517DBC();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1DC291E08(v9, 0);
  v12 = sub_1DC3B1C10(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1DC51780C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1DC517F8C();
LABEL_4:

  return sub_1DC51780C();
}

unint64_t sub_1DC3B1C10(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1DC375D08(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DC51791C();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1DC517F8C();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1DC375D08(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1DC5178FC();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1DC3B1E30()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F9A0);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000016;
  *(v4 + 24) = 0x80000001DC544940;
  strcpy((v4 + 32), "DOCFileEntity");
  *(v4 + 46) = -4864;
  *v3 = v4;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v3);
}

uint64_t sub_1DC3B1F10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = OUTLINED_FUNCTION_10(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v86 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1F8, &qword_1DC527718);
  v13 = OUTLINED_FUNCTION_10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v83 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D200, &qword_1DC527720);
  v19 = OUTLINED_FUNCTION_10(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D208, &qword_1DC5293D0);
  v25 = OUTLINED_FUNCTION_10(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v83 - v32;
  v34 = sub_1DC5172FC();
  v35 = OUTLINED_FUNCTION_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v41 = &v83 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  sub_1DC5171CC();
  if (qword_1ECC88A80 != -1)
  {
    OUTLINED_FUNCTION_0_44();
  }

  __swift_project_value_buffer(v34, qword_1ECC8F9A0);
  v43 = sub_1DC5172DC();
  (*(v37 + 8))(v41, v34);
  if (v43)
  {
    v44 = v42;
    sub_1DC5171FC();
    v45 = sub_1DC51734C();
    OUTLINED_FUNCTION_4_24(v33);
    if (v46)
    {
      sub_1DC2AAF50(v33, &qword_1ECC7D208, &qword_1DC5293D0);
      v83 = 0xE000000000000000;
      v84 = 0;
    }

    else
    {
      v58 = sub_1DC51730C();
      v83 = v59;
      v84 = v58;
      OUTLINED_FUNCTION_7_1(v45);
      (*(v60 + 8))(v33, v45);
    }

    v61 = v85;
    sub_1DC5171FC();
    OUTLINED_FUNCTION_4_24(v30);
    if (v46)
    {
      sub_1DC2AAF50(v30, &qword_1ECC7D208, &qword_1DC5293D0);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D210, &qword_1DC527728);
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v62);
    }

    else
    {
      sub_1DC51733C();
      OUTLINED_FUNCTION_7_1(v45);
      (*(v63 + 8))(v30, v45);
    }

    sub_1DC3B2578(v17, v23);
    sub_1DC2AAF50(v17, &qword_1ECC7D1F8, &qword_1DC527718);
    v64 = sub_1DC51088C();
    if (__swift_getEnumTagSinglePayload(v23, 1, v64) == 1)
    {
      sub_1DC2AAF50(v23, &qword_1ECC7D200, &qword_1DC527720);
      v52 = 0;
      v53 = 0xE000000000000000;
    }

    else
    {
      v52 = sub_1DC51087C();
      v53 = v65;
      OUTLINED_FUNCTION_7_1(v64);
      (*(v66 + 8))(v23, v64);
    }

    v67 = v86;
    v68 = sub_1DC5171EC();
    v69 = OUTLINED_FUNCTION_6_19(0x7263u);
    sub_1DC30F668(v69, v70 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000, v68, v61);

    v71 = sub_1DC5172AC();
    OUTLINED_FUNCTION_4_24(v61);
    if (v46)
    {
      sub_1DC2AAF50(v61, &qword_1ECC7BFF8, &qword_1DC522580);
    }

    else
    {
      sub_1DC382AC0();
      v56 = v72;
      v57 = v73;
      OUTLINED_FUNCTION_7_1(v71);
      (*(v74 + 8))(v61, v71);
      if (v57)
      {
LABEL_19:
        v75 = sub_1DC5171EC();
        sub_1DC30F668(0xD000000000000014, 0x80000001DC5448A0, v75, v67);

        OUTLINED_FUNCTION_4_24(v67);
        if (v46)
        {
          sub_1DC2AAF50(v67, &qword_1ECC7BFF8, &qword_1DC522580);
        }

        else
        {
          sub_1DC382AC0();
          v54 = v76;
          v55 = v77;
          OUTLINED_FUNCTION_7_1(v71);
          (*(v78 + 8))(v67, v71);
          if (v55)
          {
            v79 = sub_1DC51721C();
            OUTLINED_FUNCTION_0_2(v79);
            result = (*(v80 + 8))(v44);
LABEL_25:
            v51 = v83;
            v50 = v84;
            goto LABEL_26;
          }
        }

        v81 = sub_1DC51721C();
        OUTLINED_FUNCTION_0_2(v81);
        (*(v82 + 8))(v44);

        v54 = 0;
        v55 = 0xE000000000000000;
        goto LABEL_25;
      }
    }

    v56 = 0;
    v57 = 0xE000000000000000;
    goto LABEL_19;
  }

  v47 = sub_1DC51721C();
  OUTLINED_FUNCTION_0_2(v47);
  result = (*(v48 + 8))(v42);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
LABEL_26:
  *a2 = v50;
  a2[1] = v51;
  a2[2] = v52;
  a2[3] = v53;
  a2[4] = v54;
  a2[5] = v55;
  a2[6] = v56;
  a2[7] = v57;
  return result;
}

uint64_t sub_1DC3B2578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC51732C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1F8, &qword_1DC527718);
  v13 = OUTLINED_FUNCTION_10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D210, &qword_1DC527728);
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v36 - v28;
  sub_1DC3B2A88(a1, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1DC2AAF50(v17, &qword_1ECC7D1F8, &qword_1DC527718);
    v30 = sub_1DC51088C();
    v31 = a2;
    v32 = 1;
    return __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  }

  (*(v21 + 32))(v29, v17, v18);
  (*(v21 + 16))(v26, v29, v18);
  if ((*(v21 + 88))(v26, v18) == *MEMORY[0x1E69DB378])
  {
    (*(v21 + 96))(v26, v18);
    (*(v7 + 32))(v11, v26, v4);
    sub_1DC51731C();
    sub_1DC51086C();
    (*(v7 + 8))(v11, v4);
    (*(v21 + 8))(v29, v18);
    v30 = sub_1DC51088C();
    v31 = a2;
    v32 = 0;
    return __swift_storeEnumTagSinglePayload(v31, v32, 1, v30);
  }

  v34 = *(v21 + 8);
  v34(v29, v18);
  v35 = sub_1DC51088C();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v35);
  return (v34)(v26, v18);
}

uint64_t sub_1DC3B28A8()
{
  v1 = v0;
  sub_1DC517F4C();
  v2 = OUTLINED_FUNCTION_6_19(0x7243u);
  MEMORY[0x1E1296160](v2, v3 | 0xEE00203A00000000);
  MEMORY[0x1E1296160](v1[6], v1[7]);
  MEMORY[0x1E1296160](0xD000000000000019, 0x80000001DC5448C0);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  MEMORY[0x1E1296160](0xD000000000000020, 0x80000001DC5448E0);
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0xD000000000000023, 0x80000001DC544910);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  return 0;
}

uint64_t sub_1DC3B29A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC88A80 != -1)
  {
    OUTLINED_FUNCTION_0_44();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F9A0);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC3B2A34@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC3B1F10(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1DC3B2A88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1F8, &qword_1DC527718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC3B2B18@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  sub_1DC2A32B0();
  v10 = sub_1DC517E1C();
  v12 = v11;

  *a5 = v10;
  a5[1] = v12;
  a5[2] = a1;
  v13 = type metadata accessor for RVSRequest(0);
  result = sub_1DC3B3C24(a2, a5 + v13[6], &qword_1ECC7D390, &qword_1DC527790);
  *(a5 + v13[7]) = a3;
  *(a5 + v13[8]) = a4;
  return result;
}

uint64_t sub_1DC3B2C10(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001DC5449C0 == a2)
  {

    v4 = 0;
  }

  else
  {
    sub_1DC51825C();
    OUTLINED_FUNCTION_168();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC3B2CE0()
{
  sub_1DC3B2E80();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC3B2D18()
{
  sub_1DC3B2E80();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1DC3B2D50(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D218, &qword_1DC527798);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC3B2E80();
  sub_1DC51835C();
  sub_1DC51818C();
  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_1DC3B2E80()
{
  result = qword_1ECC88A90;
  if (!qword_1ECC88A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC88A90);
  }

  return result;
}

void sub_1DC3B2ED4()
{
  OUTLINED_FUNCTION_35_14();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D220, &qword_1DC5277A0);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24_12();
  sub_1DC3B2E80();
  OUTLINED_FUNCTION_13_19();
  if (!v0)
  {
    sub_1DC5180CC();
    v7 = OUTLINED_FUNCTION_15_12();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_37_9();
}

void sub_1DC3B2FE8(void *a1@<X8>)
{
  sub_1DC3B2ED4();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1DC3B3014(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1DC3B2D50(a1);
}

uint64_t sub_1DC3B3030(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001DC5449E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    sub_1DC51825C();
    OUTLINED_FUNCTION_168();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DC3B3100()
{
  sub_1DC3B329C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC3B3138()
{
  sub_1DC3B329C();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void sub_1DC3B3170()
{
  OUTLINED_FUNCTION_35_14();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D228, &unk_1DC5277A8);
  OUTLINED_FUNCTION_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_19();
  sub_1DC3B329C();
  OUTLINED_FUNCTION_6_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
  sub_1DC3B3438(&qword_1ECC7B9F8);
  OUTLINED_FUNCTION_19_17();
  v4 = OUTLINED_FUNCTION_30_15();
  v5(v4, v0);
  OUTLINED_FUNCTION_37_9();
}

unint64_t sub_1DC3B329C()
{
  result = qword_1ECC88A98;
  if (!qword_1ECC88A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC88A98);
  }

  return result;
}

void sub_1DC3B32F0()
{
  OUTLINED_FUNCTION_35_14();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D230, &qword_1DC5277B8);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24_12();
  sub_1DC3B329C();
  OUTLINED_FUNCTION_13_19();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
    sub_1DC3B3438(&qword_1ECC7B9E8);
    OUTLINED_FUNCTION_10_21();
    OUTLINED_FUNCTION_32_12();
    v7 = OUTLINED_FUNCTION_15_12();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_37_9();
}

uint64_t sub_1DC3B3438(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7C130, &unk_1DC5240F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DC3B34A4(void *a1@<X8>)
{
  sub_1DC3B32F0();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1DC3B3530()
{
  OUTLINED_FUNCTION_17_13(0x5463766Cu);
  v2 = v2 && v1 == 0xE800000000000000;
  if (v2)
  {

    v3 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_26_13();
    OUTLINED_FUNCTION_168();
    v3 = v0 ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1DC3B35E8()
{
  sub_1DC3B37C4();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC3B3620()
{
  sub_1DC3B37C4();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void sub_1DC3B3658()
{
  OUTLINED_FUNCTION_35_14();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D238, &qword_1DC5277C0);
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_19();
  sub_1DC3B37C4();
  v5 = OUTLINED_FUNCTION_6_20();
  (*(*v0 + 88))(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D240, &qword_1DC5277C8);
  sub_1DC3B3A64(&qword_1ECC7D248, sub_1DC3B3818);
  OUTLINED_FUNCTION_18_18();

  v6 = OUTLINED_FUNCTION_30_15();
  v7(v6, v1);
  OUTLINED_FUNCTION_37_9();
}

unint64_t sub_1DC3B37C4()
{
  result = qword_1ECC88AA0;
  if (!qword_1ECC88AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC88AA0);
  }

  return result;
}

unint64_t sub_1DC3B3818()
{
  result = qword_1ECC7D250;
  if (!qword_1ECC7D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D250);
  }

  return result;
}

uint64_t sub_1DC3B386C(uint64_t *a1)
{
  OUTLINED_FUNCTION_10_0();
  v2 = swift_allocObject();
  sub_1DC3B38B4(a1);
  return v2;
}

uint64_t sub_1DC3B38B4(uint64_t *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D258, &qword_1DC5277D0);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_36_16(MEMORY[0x1E69E7CC0]);
  sub_1DC3B37C4();
  OUTLINED_FUNCTION_27_15();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D240, &qword_1DC5277C8);
    sub_1DC3B3A64(&qword_1ECC7D260, sub_1DC3B3ACC);
    OUTLINED_FUNCTION_10_21();
    OUTLINED_FUNCTION_34_13();
    v9 = OUTLINED_FUNCTION_12_19();
    v10(v9);
    OUTLINED_FUNCTION_5_16();
    swift_beginAccess();
    v11 = *v3;
    *v3 = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_1DC3B3A64(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7D240, &qword_1DC5277C8);
    a2();
    result = OUTLINED_FUNCTION_33_16();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DC3B3ACC()
{
  result = qword_1ECC7D268;
  if (!qword_1ECC7D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D268);
  }

  return result;
}

uint64_t sub_1DC3B3B20@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DC3B3BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DC3B3C24(a1, a3, &qword_1ECC7CFB0, qword_1DC526050);
  v5 = type metadata accessor for DialogState(0);
  return sub_1DC3B3C24(a2, a3 + *(v5 + 20), &unk_1ECC7D3A0, &unk_1DC522560);
}

uint64_t sub_1DC3B3C24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return v4;
}

uint64_t sub_1DC3B3C6C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1DC3B3CA4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_16();
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1DC3B3D24()
{
  OUTLINED_FUNCTION_17_13(0x54737672u);
  v2 = v2 && v1 == 0xE800000000000000;
  if (v2)
  {

    v3 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_26_13();
    OUTLINED_FUNCTION_168();
    v3 = v0 ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1DC3B3DB4()
{
  sub_1DC3B3F80();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC3B3DEC()
{
  sub_1DC3B3F80();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void sub_1DC3B3E24()
{
  OUTLINED_FUNCTION_35_14();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D270, &qword_1DC5277D8);
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_19();
  sub_1DC3B3F80();
  v5 = OUTLINED_FUNCTION_6_20();
  (*(*v0 + 88))(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D278, &qword_1DC5277E0);
  OUTLINED_FUNCTION_4_25();
  sub_1DC3B3FD4(v6, v7);
  OUTLINED_FUNCTION_18_18();

  v8 = OUTLINED_FUNCTION_30_15();
  v9(v8, v1);
  OUTLINED_FUNCTION_37_9();
}

unint64_t sub_1DC3B3F80()
{
  result = qword_1ECC88AA8;
  if (!qword_1ECC88AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC88AA8);
  }

  return result;
}

uint64_t sub_1DC3B3FD4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7D278, &qword_1DC5277E0);
    a2();
    result = OUTLINED_FUNCTION_33_16();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DC3B403C()
{
  result = qword_1ECC7D288;
  if (!qword_1ECC7D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D288);
  }

  return result;
}

uint64_t sub_1DC3B4090(uint64_t *a1)
{
  OUTLINED_FUNCTION_10_0();
  v2 = swift_allocObject();
  sub_1DC3B40D8(a1);
  return v2;
}

uint64_t sub_1DC3B40D8(uint64_t *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D290, &qword_1DC5277E8);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_36_16(MEMORY[0x1E69E7CC0]);
  sub_1DC3B3F80();
  OUTLINED_FUNCTION_27_15();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D278, &qword_1DC5277E0);
    OUTLINED_FUNCTION_3_24();
    sub_1DC3B3FD4(v9, v10);
    OUTLINED_FUNCTION_10_21();
    OUTLINED_FUNCTION_34_13();
    v11 = OUTLINED_FUNCTION_12_19();
    v12(v11);
    OUTLINED_FUNCTION_5_16();
    swift_beginAccess();
    v13 = *v3;
    *v3 = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_1DC3B4278()
{
  result = qword_1ECC7D2A0;
  if (!qword_1ECC7D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D2A0);
  }

  return result;
}

uint64_t sub_1DC3B42CC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DC3B434C()
{
  OUTLINED_FUNCTION_17_13(0x54737474u);
  v2 = v2 && v1 == 0xE800000000000000;
  if (v2)
  {

    v3 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_26_13();
    OUTLINED_FUNCTION_168();
    v3 = v0 ^ 1;
  }

  return v3 & 1;
}

uint64_t sub_1DC3B43DC()
{
  sub_1DC3B4574();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1DC3B4414()
{
  sub_1DC3B4574();
  v0 = OUTLINED_FUNCTION_5_27();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void sub_1DC3B444C()
{
  OUTLINED_FUNCTION_35_14();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2A8, &qword_1DC5277F0);
  OUTLINED_FUNCTION_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_19();
  sub_1DC3B4574();
  OUTLINED_FUNCTION_6_20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D278, &qword_1DC5277E0);
  OUTLINED_FUNCTION_4_25();
  sub_1DC3B3FD4(v4, v5);
  OUTLINED_FUNCTION_19_17();
  v6 = OUTLINED_FUNCTION_30_15();
  v7(v6, v0);
  OUTLINED_FUNCTION_37_9();
}

unint64_t sub_1DC3B4574()
{
  result = qword_1ECC88AB0[0];
  if (!qword_1ECC88AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC88AB0);
  }

  return result;
}

void sub_1DC3B45C8()
{
  OUTLINED_FUNCTION_35_14();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2B0, &qword_1DC5277F8);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_24_12();
  sub_1DC3B4574();
  OUTLINED_FUNCTION_13_19();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D278, &qword_1DC5277E0);
    OUTLINED_FUNCTION_3_24();
    sub_1DC3B3FD4(v7, v8);
    OUTLINED_FUNCTION_10_21();
    OUTLINED_FUNCTION_32_12();
    v9 = OUTLINED_FUNCTION_15_12();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  OUTLINED_FUNCTION_37_9();
}

void sub_1DC3B470C(void *a1@<X8>)
{
  sub_1DC3B45C8();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1DC3B477C()
{
  v0 = OUTLINED_FUNCTION_22_12();
  sub_1DC3B488C(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    v5 = OUTLINED_FUNCTION_22_12();
    sub_1DC3B488C(v5, v6, 255, v7);
    if (v8 <= 0x3F)
    {
      v9 = OUTLINED_FUNCTION_22_12();
      sub_1DC3B488C(v9, v10, v11, v12);
      if (v13 <= 0x3F)
      {
        sub_1DC3B48E0();
        if (v14 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DC3B488C(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a4(a3);
    v5 = sub_1DC517D8C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DC3B48E0()
{
  if (!qword_1ECC7BD70)
  {
    v0 = sub_1DC517D8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BD70);
    }
  }
}

uint64_t sub_1DC3B4930(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_1DC3B49CC()
{
  v0 = OUTLINED_FUNCTION_22_12();
  sub_1DC3B488C(v0, v1, 255, v2);
  if (v3 <= 0x3F)
  {
    v4 = OUTLINED_FUNCTION_22_12();
    sub_1DC3B488C(v4, v5, 255, v6);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *_s13CDMFoundation10LVCHistoryC10CodingKeysOwst_0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DC3B4B90()
{
  result = qword_1ECC89140[0];
  if (!qword_1ECC89140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89140);
  }

  return result;
}

unint64_t sub_1DC3B4BE8()
{
  result = qword_1ECC89350[0];
  if (!qword_1ECC89350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89350);
  }

  return result;
}

unint64_t sub_1DC3B4C40()
{
  result = qword_1ECC89560[0];
  if (!qword_1ECC89560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89560);
  }

  return result;
}

unint64_t sub_1DC3B4C98()
{
  result = qword_1ECC89770[0];
  if (!qword_1ECC89770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89770);
  }

  return result;
}

unint64_t sub_1DC3B4CF0()
{
  result = qword_1ECC89980[0];
  if (!qword_1ECC89980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89980);
  }

  return result;
}

unint64_t sub_1DC3B4D48()
{
  result = qword_1ECC89A90;
  if (!qword_1ECC89A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC89A90);
  }

  return result;
}

unint64_t sub_1DC3B4DA0()
{
  result = qword_1ECC89A98[0];
  if (!qword_1ECC89A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89A98);
  }

  return result;
}

unint64_t sub_1DC3B4DF8()
{
  result = qword_1ECC89B20;
  if (!qword_1ECC89B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC89B20);
  }

  return result;
}

unint64_t sub_1DC3B4E50()
{
  result = qword_1ECC89B28[0];
  if (!qword_1ECC89B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89B28);
  }

  return result;
}

unint64_t sub_1DC3B4EA8()
{
  result = qword_1ECC89BB0;
  if (!qword_1ECC89BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC89BB0);
  }

  return result;
}

unint64_t sub_1DC3B4F00()
{
  result = qword_1ECC89BB8[0];
  if (!qword_1ECC89BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89BB8);
  }

  return result;
}

unint64_t sub_1DC3B4F58()
{
  result = qword_1ECC89C40;
  if (!qword_1ECC89C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC89C40);
  }

  return result;
}

unint64_t sub_1DC3B4FB0()
{
  result = qword_1ECC89C48[0];
  if (!qword_1ECC89C48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89C48);
  }

  return result;
}

unint64_t sub_1DC3B5008()
{
  result = qword_1ECC89CD0;
  if (!qword_1ECC89CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC89CD0);
  }

  return result;
}

unint64_t sub_1DC3B5060()
{
  result = qword_1ECC89CD8[0];
  if (!qword_1ECC89CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC89CD8);
  }

  return result;
}

uint64_t sub_1DC3B5114(char a1)
{
  v4[3] = &type metadata for IntelligenceFlowFeatureFlags;
  v4[4] = sub_1DC3B516C();
  LOBYTE(v4[0]) = a1;
  v2 = sub_1DC510D0C();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

unint64_t sub_1DC3B516C()
{
  result = qword_1ECC7BBC8;
  if (!qword_1ECC7BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BBC8);
  }

  return result;
}

unint64_t sub_1DC3B51C4()
{
  result = qword_1ECC7D2B8;
  if (!qword_1ECC7D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D2B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC3B5324()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F9B8);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F9B8);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000011;
  v2[3] = 0x80000001DC544A50;
  v2[4] = 0xD000000000000010;
  v2[5] = 0x80000001DC528070;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1DC3B5400@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC89E60 != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F9B8);
  OUTLINED_FUNCTION_2_5();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC3B549C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_1DC51122C();
  v84 = OUTLINED_FUNCTION_0(v3);
  v85 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_1();
  v83 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = v78 - v11;
  v92 = sub_1DC5157EC();
  v12 = OUTLINED_FUNCTION_0(v92);
  v87 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v80 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v81 = v78 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v86 = v78 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v78 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = v78 - v27;
  v29 = type metadata accessor for NLRouterNLParseResponse(0);
  v30 = OUTLINED_FUNCTION_35(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v88 = (v34 - v33);
  v35 = sub_1DC516F5C();
  v36 = OUTLINED_FUNCTION_0(v35);
  v89 = v37;
  v90 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v43 = sub_1DC2BE518();
  v44 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.AlarmRule", 24, 2, v43, v44 & 1, v42);

  v45 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v45 + 32), v24, &qword_1ECC7C158, &unk_1DC5234A0);
  v46 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v46) == 1)
  {
    sub_1DC28EB30(v24, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
LABEL_4:
    sub_1DC28EB30(v28, &qword_1ECC7C160, qword_1DC5233B0);
    v47 = v91;
    v48 = v92;
    v49 = 1;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
    v65 = sub_1DC2BE518();
    sub_1DC2B8848();

    return (*(v89 + 8))(v42, v90);
  }

  sub_1DC28F358(v24, v28, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v24, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    goto LABEL_4;
  }

  sub_1DC2E53A4(v28, v88);
  v50 = type metadata accessor for HeuristicRoutingRequest(0);
  v52 = v86;
  v51 = v87;
  v53 = *(v87 + 16);
  v79 = *(v50 + 20);
  v54 = v92;
  v53(v86, a1 + v79, v92);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v55 = sub_1DC3431F0();
  v57 = v56;
  if (v55 == sub_1DC312FB4(0) && v57 == v58)
  {

    goto LABEL_15;
  }

  v60 = sub_1DC51825C();

  if (v60)
  {
LABEL_15:
    v63 = sub_1DC5157DC();
    sub_1DC2E5408(v88, type metadata accessor for NLRouterNLParseResponse);
    if (v63)
    {
      (*(v51 + 8))(v52, v54);
      v49 = 1;
      v64 = v91;
    }

    else
    {
      v64 = v91;
      (*(v51 + 32))(v91, v52, v54);
      v49 = 0;
    }

    v47 = v64;
    v48 = v54;
    goto LABEL_19;
  }

  sub_1DC3431F0();
  v61 = sub_1DC312F68();
  if (v61 == 4)
  {
    v62 = v82;
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v54);
LABEL_14:
    sub_1DC28EB30(v62, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_15;
  }

  v62 = v82;
  sub_1DC312E7C(v61, v82);
  if (__swift_getEnumTagSinglePayload(v62, 1, v54) == 1)
  {
    goto LABEL_14;
  }

  v67 = *(v51 + 32);
  v78[1] = v51 + 32;
  v78[2] = a1;
  v78[0] = v67;
  result = v67(v81, v62, v54);
  v68 = 0;
  v69 = *v88;
  v82 = *(*v88 + 16);
  v78[3] = v85 + 16;
  while (1)
  {
    if (v82 == v68)
    {
      v51 = v87;
      v54 = v92;
      (*(v87 + 8))(v81, v92);
      v52 = v86;
      goto LABEL_15;
    }

    if (v68 >= *(v69 + 16))
    {
      break;
    }

    v71 = v84;
    v70 = v85;
    v72 = v83;
    (*(v85 + 16))(v83, v69 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v68++, v84);
    v73 = sub_1DC5111AC();
    v74 = sub_1DC3B5C54(v73);

    result = (*(v70 + 8))(v72, v71);
    if (v74)
    {
      v75 = v80;
      v76 = v81;
      v52 = v86;
      sub_1DC32DE40();
      v51 = v87;
      v77 = *(v87 + 8);
      v54 = v92;
      v77(v76, v92);
      v77(v52, v54);
      (v78[0])(v52, v75, v54);
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC3B5C54(uint64_t a1)
{
  v51 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v51);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v50 = v8 - v7;
  v55 = sub_1DC51179C();
  v9 = OUTLINED_FUNCTION_0(v55);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1DC51164C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = v4;
    v30 = *(v20 + 16);
    v29 = v20 + 16;
    v28 = v30;
    v31 = a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v53 = v30;
    v54 = (v11 + 8);
    v48 = (v27 + 8);
    v49 = v24 - v23;
    v32 = *(v29 + 56);
    v52 = v32;
    do
    {
      v28(v25, v31, v17);
      if (sub_1DC5114CC())
      {
        sub_1DC51154C();
        v33 = sub_1DC51177C();
        v34 = *v54;
        (*v54)(v16, v55);
        if ((v33 & 1) != 0 && (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), sub_1DC51178C(), v34(v16, v55), v35 = sub_1DC307E5C(), v25 = v49, (*v48)(v50, v51), v35))
        {

          sub_1DC51478C();

          sub_1DC28F358(v59, v57, &qword_1ECC7D3F0, &qword_1DC5238B0);
          if (v58)
          {
            sub_1DC28F358(v57, v56, &qword_1ECC7D3F0, &qword_1DC5238B0);
            sub_1DC5148DC();
            OUTLINED_FUNCTION_2_28();
            v28 = v53;
            if (swift_dynamicCast())
            {

              sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
              v44 = sub_1DC34328C();

              sub_1DC28EB30(v59, &qword_1ECC7D3F0, &qword_1DC5238B0);
              v46 = OUTLINED_FUNCTION_3_25();
              v47(v46);
              __swift_destroy_boxed_opaque_existential_1Tm(v56);
              sub_1DC28EB30(v57, &qword_1ECC7D3F0, &qword_1DC5238B0);
              return v44 & 1;
            }

            sub_1DC28EB30(v59, &qword_1ECC7D3F0, &qword_1DC5238B0);
            v36 = OUTLINED_FUNCTION_3_25();
            v37(v36);
            sub_1DC51492C();
            OUTLINED_FUNCTION_2_28();
            if (OUTLINED_FUNCTION_5_28() || (sub_1DC5148FC(), OUTLINED_FUNCTION_2_28(), OUTLINED_FUNCTION_5_28()) || (sub_1DC5149EC(), OUTLINED_FUNCTION_2_28(), OUTLINED_FUNCTION_5_28()) || (sub_1DC51498C(), OUTLINED_FUNCTION_2_28(), OUTLINED_FUNCTION_5_28()))
            {

              __swift_destroy_boxed_opaque_existential_1Tm(v56);
              sub_1DC28EB30(v57, &qword_1ECC7D3F0, &qword_1DC5238B0);
              v44 = 1;
              return v44 & 1;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v56);
          }

          else
          {

            sub_1DC28EB30(v59, &qword_1ECC7D3F0, &qword_1DC5238B0);
            v42 = OUTLINED_FUNCTION_3_25();
            v43(v42);
            v28 = v53;
          }

          sub_1DC28EB30(v57, &qword_1ECC7D3F0, &qword_1DC5238B0);
        }

        else
        {
          v40 = OUTLINED_FUNCTION_3_25();
          v41(v40);
          v28 = v53;
        }

        v32 = v52;
      }

      else
      {
        v38 = OUTLINED_FUNCTION_3_25();
        v39(v38);
      }

      v31 += v32;
      --v26;
    }

    while (v26);
  }

  v44 = 0;
  return v44 & 1;
}

uint64_t sub_1DC3B614C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v144 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v136 = &v132 - v7;
  OUTLINED_FUNCTION_12();
  v8 = sub_1DC5167EC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v134 = v10;
  v135 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v133 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OUTLINED_FUNCTION_12();
  v139 = type metadata accessor for NLRouterTurnContext(v14);
  v15 = OUTLINED_FUNCTION_35(v139);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v140 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v137 = v21;
  v22 = OUTLINED_FUNCTION_12();
  v23 = type metadata accessor for TurnSummary.ExecutionSource(v22);
  v24 = OUTLINED_FUNCTION_35(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v141 = v27 - v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  v142 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC0, &unk_1DC522540);
  v32 = OUTLINED_FUNCTION_10(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v132 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  v38 = OUTLINED_FUNCTION_10(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_8();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_62();
  v143 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v47 = OUTLINED_FUNCTION_10(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_8();
  v138 = v50 - v51;
  v53 = MEMORY[0x1EEE9AC00](v52);
  v55 = &v132 - v54;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_62();
  v57 = v56;
  OUTLINED_FUNCTION_12();
  v58 = sub_1DC516F5C();
  v59 = OUTLINED_FUNCTION_0(v58);
  v146 = v60;
  v147 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v64 = &v132 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v65 = sub_1DC2BE518();
  v66 = OUTLINED_FUNCTION_130();
  v145 = v64;
  sub_1DC2A2ED0("HeuristicRules.UndoRule", 23, 2, v65, v66 & 1, v64);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC346908() & 1) == 0)
  {
    sub_1DC517B9C();
    v88 = sub_1DC2BE518();
    sub_1DC516F0C();

    v87 = sub_1DC5157EC();
    v85 = a2;
LABEL_17:
    v86 = 1;
    goto LABEL_18;
  }

  v132 = a2;
  v67 = type metadata accessor for HeuristicRoutingRequest(0);
  v68 = v144;
  v69 = v144 + *(v67 + 20);
  sub_1DC32BBE0(v67, v70, v71, v72, v73, v74, v75, v76, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143);
  if ((v77 & 1) == 0)
  {
    v87 = sub_1DC5157EC();
    v85 = v132;
    goto LABEL_17;
  }

  v78 = type metadata accessor for NLRouterBypassUtils();
  if ((OUTLINED_FUNCTION_130() & 1) == 0)
  {
    v89 = type metadata accessor for NLRouterServiceRequest(0);
    sub_1DC28F358(v68 + *(v89 + 20), v57, &qword_1ECC7BFD0, &unk_1DC522550);
    v90 = *(v68 + *(v89 + 24));
    v91 = v90[2];
    if (v91)
    {
      sub_1DC2D8C78(v90[6 * v91 + 2], v36);
      v92 = type metadata accessor for TurnSummary(0);
      if (__swift_getEnumTagSinglePayload(v36, 1, v92) != 1)
      {
        v94 = v143;
        sub_1DC28F358(&v36[*(v92 + 28)], v143, &qword_1ECC7BFC8, &unk_1DC524050);
        v95 = v36;
        v93 = v94;
        sub_1DC3B6BFC(v95, type metadata accessor for TurnSummary);
LABEL_14:
        sub_1DC28F358(v93, v43, &qword_1ECC7BFC8, &unk_1DC524050);
        if (__swift_getEnumTagSinglePayload(v43, 1, v23) == 1)
        {
          sub_1DC28EB30(v93, &qword_1ECC7BFC8, &unk_1DC524050);
          sub_1DC28EB30(v57, &qword_1ECC7BFD0, &unk_1DC522550);
          v96 = v43;
          v97 = &qword_1ECC7BFC8;
          v98 = &unk_1DC524050;
LABEL_16:
          sub_1DC28EB30(v96, v97, v98);
          v99 = v132;
          v87 = sub_1DC5157EC();
          v85 = v99;
          goto LABEL_17;
        }

        v144 = v78;
        v103 = v142;
        sub_1DC3B6B9C(v43, v142, type metadata accessor for TurnSummary.ExecutionSource);
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
        v105 = v141;
        __swift_storeEnumTagSinglePayload(v141, 2, 4, v104);
        static TurnSummary.ExecutionSource.== infix(_:_:)();
        v107 = v106;
        OUTLINED_FUNCTION_0_46();
        sub_1DC3B6BFC(v105, v108);
        if (v107)
        {
          OUTLINED_FUNCTION_0_46();
          sub_1DC3B6BFC(v103, v109);
          sub_1DC28EB30(v93, &qword_1ECC7BFC8, &unk_1DC524050);
          sub_1DC28EB30(v57, &qword_1ECC7BFD0, &unk_1DC522550);
          v80 = MEMORY[0x1E69D02F8];
          goto LABEL_6;
        }

        v143 = v104;
        sub_1DC28F358(v57, v55, &qword_1ECC7BFD0, &unk_1DC522550);
        v110 = v139;
        if (__swift_getEnumTagSinglePayload(v55, 1, v139) == 1)
        {
          sub_1DC28EB30(v55, &qword_1ECC7BFD0, &unk_1DC522550);
          v111 = v140;
        }

        else
        {
          OUTLINED_FUNCTION_3_26();
          v112 = v137;
          sub_1DC3B6B9C(v55, v137, v113);
          v114 = *(*v112 + 16);
          OUTLINED_FUNCTION_1_30();
          sub_1DC3B6BFC(v112, v115);
          v111 = v140;
          if (v114)
          {
            goto LABEL_34;
          }
        }

        v116 = v138;
        sub_1DC28F358(v57, v138, &qword_1ECC7BFD0, &unk_1DC522550);
        if (__swift_getEnumTagSinglePayload(v116, 1, v110) == 1)
        {
          v117 = &qword_1ECC7BFD0;
          v118 = &unk_1DC522550;
        }

        else
        {
          OUTLINED_FUNCTION_3_26();
          sub_1DC3B6B9C(v116, v111, v119);
          v116 = v136;
          sub_1DC28F358(v111 + *(v110 + 28), v136, &qword_1ECC7BFE0, &unk_1DC5253A0);
          v120 = v135;
          if (__swift_getEnumTagSinglePayload(v116, 1, v135) != 1)
          {
            v127 = v133;
            v128 = v134;
            (*(v134 + 32))(v133, v116, v120);
            v129 = sub_1DC5167BC();
            (*(v128 + 8))(v127, v120);
            OUTLINED_FUNCTION_1_30();
            sub_1DC3B6BFC(v140, v130);
            if (v129)
            {
              goto LABEL_34;
            }

            goto LABEL_29;
          }

          OUTLINED_FUNCTION_1_30();
          sub_1DC3B6BFC(v111, v121);
          v117 = &qword_1ECC7BFE0;
          v118 = &unk_1DC5253A0;
        }

        sub_1DC28EB30(v116, v117, v118);
LABEL_29:
        if (!sub_1DC307DE8(v90) || (__swift_storeEnumTagSinglePayload(v105, 1, 4, v143), static TurnSummary.ExecutionSource.== infix(_:_:)(), v123 = v122, OUTLINED_FUNCTION_0_46(), sub_1DC3B6BFC(v105, v124), (v123 & 1) == 0))
        {
          OUTLINED_FUNCTION_0_46();
          sub_1DC3B6BFC(v103, v126);
          sub_1DC28EB30(v93, &qword_1ECC7BFC8, &unk_1DC524050);
          v97 = &qword_1ECC7BFD0;
          v98 = &unk_1DC522550;
          v96 = v57;
          goto LABEL_16;
        }

        sub_1DC517B9C();
        v125 = sub_1DC2BE518();
        sub_1DC516F0C();

LABEL_34:
        OUTLINED_FUNCTION_0_46();
        sub_1DC3B6BFC(v103, v131);
        sub_1DC28EB30(v93, &qword_1ECC7BFC8, &unk_1DC524050);
        sub_1DC28EB30(v57, &qword_1ECC7BFD0, &unk_1DC522550);
        goto LABEL_5;
      }

      sub_1DC28EB30(v36, &qword_1ECC7BFC0, &unk_1DC522540);
    }

    v93 = v143;
    __swift_storeEnumTagSinglePayload(v143, 1, 1, v23);
    goto LABEL_14;
  }

  sub_1DC517B9C();
  v79 = sub_1DC2BE518();
  sub_1DC516F0C();

LABEL_5:
  v80 = MEMORY[0x1E69D02D8];
LABEL_6:
  v81 = *v80;
  v82 = sub_1DC5157EC();
  OUTLINED_FUNCTION_35(v82);
  v84 = v132;
  (*(v83 + 104))(v132, v81, v82);
  v85 = v84;
  v86 = 0;
  v87 = v82;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v85, v86, 1, v87);
  v100 = sub_1DC2BE518();
  v101 = v145;
  sub_1DC2B8848();

  return (*(v146 + 8))(v101, v147);
}

uint64_t sub_1DC3B6B9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_35(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DC3B6BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DC3B6C68(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1DC3B6CB0(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  result = swift_allocObject();
  if (a1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v3;
  return result;
}

uint64_t sub_1DC3B6CEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v90 = a1;
  v91 = sub_1DC516F7C();
  v7 = OUTLINED_FUNCTION_0(v91);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  v86 = v12 - v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v83 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2C0, &qword_1DC5280F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_8();
  v85 = v19 - v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v83 - v22;
  v24 = type metadata accessor for TurnInputContainer.TurnInputWrapper();
  v25 = OUTLINED_FUNCTION_0(v24);
  v87 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8();
  v31 = (v29 - v30);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v83 - v33);
  OUTLINED_FUNCTION_12_0();
  v36 = *(v35 + 96);
  v88 = v35 + 96;
  v89 = v36;
  v37 = v36();
  sub_1DC3B73B4(v37, v23);

  v39 = __swift_getEnumTagSinglePayload(v23, 1, v24) == 1;
  v92 = a2;
  if (v39)
  {
    sub_1DC3B765C(v23);
LABEL_4:
    v38 = v91;
    goto LABEL_13;
  }

  sub_1DC3B7F84(v23, v34);
  v39 = *v34 == a2 && v34[1] == a3;
  if (!v39 && (sub_1DC51825C() & 1) == 0)
  {
    sub_1DC3B856C(v34);
    goto LABEL_4;
  }

  v40 = sub_1DC28D414();
  v38 = v91;
  (*(v9 + 16))(v16, v40, v91);

  v41 = sub_1DC516F6C();
  v42 = sub_1DC517BAC();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_63();
    v84 = v9;
    v44 = v43;
    v45 = OUTLINED_FUNCTION_82();
    v93[0] = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_1DC291244(v92, a3, v93);
    _os_log_impl(&dword_1DC287000, v41, v42, "Replacing current TurnInput for requestId: %s with a new one", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v38 = v91;
    OUTLINED_FUNCTION_66();
    v9 = v84;
    OUTLINED_FUNCTION_66();
  }

  (*(v9 + 8))(v16, v38);
  v46 = (*(*v4 + 112))(v93);
  v47 = v85;
  sub_1DC3B7494(v85);
  sub_1DC3B765C(v47);
  v46(v93, 0);
  sub_1DC3B856C(v34);
LABEL_13:
  v48 = *(v24 + 20);
  v49 = sub_1DC51119C();
  OUTLINED_FUNCTION_35(v49);
  (*(v50 + 16))(&v31[v48], v90);
  v51 = v92;
  *v31 = v92;
  *(v31 + 1) = a3;
  v52 = *(*v4 + 112);

  v53 = v52(v93);
  v55 = v54;
  sub_1DC3B7EF8();
  v56 = *(*v55 + 16);
  sub_1DC3B7F44(v56);
  v57 = *v55;
  *(v57 + 16) = v56 + 1;
  sub_1DC3B7F84(v31, v57 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v56);
  v58 = v53(v93, 0);
  v59 = v89;
  v60 = *((v89)(v58) + 16);

  v62 = v4[3];
  if (v62 >= v60)
  {
    goto LABEL_24;
  }

  v63 = (v59)(v61);
  v64 = sub_1DC3B76C4(v62, v63);
  v66 = v65;
  v68 = v67;
  v70 = v69;
  if ((v69 & 1) == 0)
  {
    goto LABEL_15;
  }

  v73 = v9;
  sub_1DC51827C();
  swift_unknownObjectRetain_n();
  v74 = swift_dynamicCastClass();
  if (!v74)
  {
    swift_unknownObjectRelease();
    v74 = MEMORY[0x1E69E7CC0];
  }

  v75 = *(v74 + 16);

  if (__OFSUB__(v70 >> 1, v68))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v75 != (v70 >> 1) - v68)
  {
LABEL_29:
    swift_unknownObjectRelease();
    v9 = v73;
    v51 = v92;
LABEL_15:
    sub_1DC3B848C(v64, v66, v68, v70);
    v72 = v71;
LABEL_22:
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v72 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v9 = v73;
  v51 = v92;
  if (!v72)
  {
    v72 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

LABEL_23:
  (*(*v4 + 104))(v72);
LABEL_24:
  v76 = sub_1DC28D414();
  v77 = v86;
  (*(v9 + 16))(v86, v76, v38);

  v78 = sub_1DC516F6C();
  v79 = sub_1DC517B9C();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = OUTLINED_FUNCTION_63();
    v81 = OUTLINED_FUNCTION_82();
    v93[0] = v81;
    *v80 = 136315138;
    *(v80 + 4) = sub_1DC291244(v51, a3, v93);
    _os_log_impl(&dword_1DC287000, v78, v79, "Added new turnInput for requestId: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  return (*(v9 + 8))(v77, v38);
}

uint64_t sub_1DC3B73B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for TurnInputContainer.TurnInputWrapper();
    sub_1DC3B85C8(a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a2);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for TurnInputContainer.TurnInputWrapper();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_1DC3B7494@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2C0, &qword_1DC5280F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TurnInputContainer.TurnInputWrapper();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    sub_1DC3B87D8(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1DC3B765C(v6);
      sub_1DC3B86D4(*(*v1 + 16) - 1, a1);
    }

    else
    {
      sub_1DC3B7F84(v6, v10);
      sub_1DC3B7F84(v10, a1);
    }

    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v7);
  }
}

uint64_t type metadata accessor for TurnInputContainer.TurnInputWrapper()
{
  result = qword_1ECC825E0;
  if (!qword_1ECC825E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DC3B765C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2C0, &qword_1DC5280F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

int64_t sub_1DC3B76C4(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1DC2DAEF4(v3, -result, 0);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_1DC3B862C(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC3B775C()
{
  v26 = type metadata accessor for TurnInputContainer.TurnInputWrapper();
  v0 = OUTLINED_FUNCTION_0(v26);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = sub_1DC51119C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_12_0();
  v18 = (*(v17 + 96))();
  v19 = *(v18 + 16);
  if (v19)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1DC3B82A4(0, v19, 0);
    v20 = v27;
    v21 = v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v25 = *(v2 + 72);
    do
    {
      sub_1DC3B85C8(v21, v7);
      (*(v11 + 16))(v16, v7 + *(v26 + 20), v8);
      sub_1DC3B856C(v7);
      v23 = *(v27 + 16);
      v22 = *(v27 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1DC3B82A4(v22 > 1, v23 + 1, 1);
      }

      *(v27 + 16) = v23 + 1;
      (*(v11 + 32))(v27 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, v16, v8);
      v21 += v25;
      --v19;
    }

    while (v19);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v20;
}

size_t sub_1DC3B79B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TurnInputContainer.TurnInputWrapper();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_1();
  v9 = (v8 - v7);
  v10 = sub_1DC516F7C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v62 = (v16 - v17);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v58 - v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  v23 = sub_1DC28D414();
  v24 = *(v13 + 16);
  v63 = v23;
  v64 = v24;
  v65 = v13 + 16;
  (v24)(v22);

  v25 = sub_1DC516F6C();
  v26 = sub_1DC517B9C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_63();
    v59 = v13;
    v28 = v27;
    v29 = OUTLINED_FUNCTION_82();
    v61 = v10;
    v30 = v29;
    v66 = v29;
    *v28 = 136315138;
    *(v28 + 4) = OUTLINED_FUNCTION_7_20();
    _os_log_impl(&dword_1DC287000, v25, v26, "Attempting turnInput rollback to requestId: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v10 = v61;
    OUTLINED_FUNCTION_66();
    v13 = v59;
    OUTLINED_FUNCTION_66();
  }

  v31 = *(v13 + 8);
  v31(v22, v10);
  OUTLINED_FUNCTION_12_0();
  v33 = (*(v32 + 96))();
  if (*(v33 + 16))
  {
    while (1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DC3B88CC(v33);
        v33 = result;
      }

      v35 = *(v33 + 16);
      if (!v35)
      {
        __break(1u);
        return result;
      }

      v36 = v35 - 1;
      v37 = v33 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v36;
      *(v33 + 16) = v36;
      sub_1DC3B7F84(v37, v9);
      v38 = *v9 == a1 && v9[1] == a2;
      if (v38 || (sub_1DC51825C() & 1) != 0)
      {
        break;
      }

      sub_1DC3B856C(v9);
      if (!*(v33 + 16))
      {
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_12_0();
    (*(v48 + 104))(v33);
    v64(v60, v63, v10);

    v49 = sub_1DC516F6C();
    v50 = sub_1DC517B9C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_63();
      v61 = v10;
      v52 = v51;
      v53 = OUTLINED_FUNCTION_82();
      v66 = v53;
      *v52 = 136315138;
      *(v52 + 4) = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_13_20(&dword_1DC287000, v54, v55, "Successfully rolled back turnInputContainer to requestId: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      v56 = OUTLINED_FUNCTION_11_21();
      v57 = v61;
    }

    else
    {

      v56 = OUTLINED_FUNCTION_11_21();
      v57 = v10;
    }

    v31(v56, v57);
    sub_1DC3B856C(v9);
    return 1;
  }

  else
  {
LABEL_13:

    v64(v62, v63, v10);

    v39 = sub_1DC516F6C();
    v40 = sub_1DC517BAC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = v10;
      v42 = OUTLINED_FUNCTION_63();
      v43 = OUTLINED_FUNCTION_82();
      v66 = v43;
      *v42 = 136315138;
      *(v42 + 4) = OUTLINED_FUNCTION_7_20();
      OUTLINED_FUNCTION_13_20(&dword_1DC287000, v44, v45, "Could not rollback since requestId: %s was not found in TurnInputs array");
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      v46 = OUTLINED_FUNCTION_11_21();
      v47 = v41;
    }

    else
    {

      v46 = OUTLINED_FUNCTION_11_21();
      v47 = v10;
    }

    v31(v46, v47);
    return 0;
  }
}

uint64_t sub_1DC3B7EAC()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_12_0();
  return (*(v2 + 144))() & 1;
}

size_t sub_1DC3B7EF8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1DC3B7FE8(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

size_t sub_1DC3B7F44(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1DC3B7FE8(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DC3B7F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TurnInputContainer.TurnInputWrapper();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_1DC3B7FE8(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_1DC3B80E8(v8, v7);
  v10 = *(type metadata accessor for TurnInputContainer.TurnInputWrapper() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC3B81E4(a4 + v11, v8, v9 + v11, type metadata accessor for TurnInputContainer.TurnInputWrapper);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1DC3B80E8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2C8, &qword_1DC528178);
  v4 = *(type metadata accessor for TurnInputContainer.TurnInputWrapper() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC3B81E4(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_35(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_1DC3B82A4(size_t a1, int64_t a2, char a3)
{
  result = sub_1DC3B82C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DC3B82C4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2D0, &unk_1DC528180);
  v10 = *(sub_1DC51119C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC51119C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC3B81E4(a4 + v16, v8, v13 + v16, MEMORY[0x1E69D09C8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1DC3B848C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_1DC3B80E8((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      v6 = *(type metadata accessor for TurnInputContainer.TurnInputWrapper() - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_1DC3B856C(uint64_t a1)
{
  v2 = type metadata accessor for TurnInputContainer.TurnInputWrapper();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC3B85C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TurnInputContainer.TurnInputWrapper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DC3B862C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(type metadata accessor for TurnInputContainer.TurnInputWrapper() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

size_t sub_1DC3B86D4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DC3B88CC(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = *(type metadata accessor for TurnInputContainer.TurnInputWrapper() - 8);
    v9 = *(v8 + 72);
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v9 * a1;
    sub_1DC3B7F84(v10, a2);
    result = sub_1DC3B81E4(v10 + v9, v7 - 1 - a1, v10, type metadata accessor for TurnInputContainer.TurnInputWrapper);
    *(v5 + 16) = v7 - 1;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1DC3B87D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DC3B88CC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v5 - 1;
    v7 = type metadata accessor for TurnInputContainer.TurnInputWrapper();
    sub_1DC3B7F84(v3 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v6, a1);
    *(v3 + 16) = v6;
    *v1 = v3;

    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC3B8908()
{
  result = sub_1DC51119C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DC3B8984()
{
  v1 = sub_1DC5106BC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1DC5106AC();
  type metadata accessor for BloomFilter();
  OUTLINED_FUNCTION_1_31();
  v4 = sub_1DC510A0C();
  v6 = v5;
  v7 = sub_1DC3B8A20();
  OUTLINED_FUNCTION_0_47(v7);
  sub_1DC2AD740(v4, v6);

  if (!v0)
  {
    return v9;
  }

  return result;
}

unint64_t sub_1DC3B8A20()
{
  result = qword_1ECC7D2D8;
  if (!qword_1ECC7D2D8)
  {
    type metadata accessor for BloomFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D2D8);
  }

  return result;
}

uint64_t sub_1DC3B8B28()
{
  v1 = sub_1DC5106BC();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1DC5106AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2E0, &unk_1DC528190);
  OUTLINED_FUNCTION_1_31();
  v4 = sub_1DC510A0C();
  v6 = v5;
  v7 = sub_1DC3B8BD0();
  OUTLINED_FUNCTION_0_47(v7);
  sub_1DC2AD740(v4, v6);

  if (!v0)
  {
    return v9;
  }

  return result;
}

unint64_t sub_1DC3B8BD0()
{
  result = qword_1ECC7D2E8;
  if (!qword_1ECC7D2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7D2E0, &unk_1DC528190);
    sub_1DC3B8A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D2E8);
  }

  return result;
}

id BloomFilterObjectiveCHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BloomFilterObjectiveCHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloomFilterObjectiveCHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BloomFilterObjectiveCHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloomFilterObjectiveCHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC3B8EB4@<X0>(size_t a1@<X0>, uint64_t a2@<X8>)
{
  v209 = a1;
  v173 = sub_1DC516F7C();
  v3 = OUTLINED_FUNCTION_0(v173);
  v205 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14(v144 - v8);
  v164 = sub_1DC51125C();
  v9 = OUTLINED_FUNCTION_0(v164);
  v204 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v13);
  v166 = sub_1DC51703C();
  v14 = OUTLINED_FUNCTION_0(v166);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14(v144 - v20);
  v21 = sub_1DC511B5C();
  v22 = OUTLINED_FUNCTION_0(v21);
  v202 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v144 - v30;
  v211 = sub_1DC51702C();
  v32 = OUTLINED_FUNCTION_0(v211);
  v167 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  v201 = v36;
  v176 = sub_1DC5170AC();
  v37 = OUTLINED_FUNCTION_0(v176);
  v203 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v41);
  v185 = sub_1DC51147C();
  v42 = OUTLINED_FUNCTION_0(v185);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  v208 = v144 - v48;
  v207 = sub_1DC51708C();
  v49 = OUTLINED_FUNCTION_0(v207);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_2_1();
  v206 = v54;
  v55 = sub_1DC516F9C();
  v56 = OUTLINED_FUNCTION_0(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_2_1();
  v196[0] = v61;
  v62 = a2;
  result = sub_1DC51127C();
  v195 = *(v209 + 16);
  if (v195)
  {
    v64 = v58;
    v65 = 0;
    v66 = *(v64 + 16);
    v64 += 16;
    v193 = v66;
    v192 = v209 + ((*(v64 + 64) + 32) & ~*(v64 + 64));
    v191 = v64 + 72;
    v190 = *MEMORY[0x1E69D27F0];
    v182 = *MEMORY[0x1E69D27F8];
    v171 = *MEMORY[0x1E69D27E8];
    v163 = (v205 + 2);
    v162 = (v205 + 1);
    v161 = v16 + 32;
    v160 = v16 + 16;
    v159 = v16 + 88;
    v158 = *MEMORY[0x1E69D2900];
    v154 = *MEMORY[0x1E69D2918];
    v152 = *MEMORY[0x1E69D28F8];
    v149 = *MEMORY[0x1E69D28E8];
    v147 = *MEMORY[0x1E69D2910];
    v145 = *MEMORY[0x1E69D0A08];
    v157 = v204 + 104;
    v156 = (v16 + 8);
    v170 = v203 + 32;
    v205 = (v51 + 8);
    v144[2] = *MEMORY[0x1E69D0A00];
    v169 = v203 + 8;
    v180 = v51 + 32;
    v146 = *MEMORY[0x1E69D09E8];
    v179 = v44 + 16;
    v178 = v44 + 8;
    v148 = *MEMORY[0x1E69D09F0];
    v151 = *MEMORY[0x1E69D0A10];
    v153 = *MEMORY[0x1E69D09F8];
    v155 = v64 - 8;
    v188 = v64 + 80;
    v198 = (v167 + 8);
    v199 = v167 + 16;
    v197 = (v202 + 16);
    v196[2] = v202 + 8;
    v196[1] = v202 + 32;
    v194 = v64;
    v189 = *(v64 + 56);
    v168 = a2;
    v187 = v55;
    v210 = v28;
    v200 = v21;
    do
    {
      v67 = v196[0];
      v193(v196[0], v192 + v189 * v65, v55);
      OUTLINED_FUNCTION_37(&v216);
      v68 = OUTLINED_FUNCTION_48_0();
      v69(v68);
      OUTLINED_FUNCTION_9_22(&v215 + 4);
      if (v84)
      {
        OUTLINED_FUNCTION_37(&v214);
        v70 = OUTLINED_FUNCTION_48_0();
        v71(v70);
        OUTLINED_FUNCTION_37(v212);
        v72 = v65;
        v74 = v206;
        v73 = v207;
        v75(v206, v67, v207);
        v76 = v208;
        sub_1DC51146C();
        sub_1DC51704C();
        sub_1DC51142C();
        sub_1DC51705C();
        sub_1DC51143C();
        sub_1DC51707C();
        sub_1DC51145C();
        sub_1DC51706C();
        sub_1DC51144C();
        OUTLINED_FUNCTION_37(&v211);
        v77 = OUTLINED_FUNCTION_4_26();
        v78 = v185;
        v79(v77, v76, v185);
        sub_1DC51124C();
        OUTLINED_FUNCTION_37(&v210);
        v80(v76, v78);
        v81 = *v205;
        v82 = v74;
        v65 = v72;
        v83 = v73;
        v55 = v187;
      }

      else
      {
        OUTLINED_FUNCTION_9_22(v213);
        v85 = v186;
        if (v84)
        {
          v177 = v65;
          OUTLINED_FUNCTION_37(&v214);
          v86 = OUTLINED_FUNCTION_48_0();
          v87(v86);
          OUTLINED_FUNCTION_37(&v202);
          v88 = v175;
          v89 = v176;
          v90(v175, v67, v176);
          v91 = sub_1DC51709C();
          v92 = *(v91 + 16);
          if (v92)
          {
            v93 = (*(v167 + 80) + 32) & ~*(v167 + 80);
            v174 = v91;
            v94 = v91 + v93;
            v95 = *(v167 + 72);
            v203 = *(v167 + 16);
            v204 = v95;
            v96 = MEMORY[0x1E69E7CC0];
            do
            {
              v209 = v96;
              v97 = v201;
              (v203)(v201, v94, v211);
              sub_1DC511B4C();
              sub_1DC51701C();
              sub_1DC511B3C();
              sub_1DC51146C();
              sub_1DC511B2C();
              v98 = v206;
              OUTLINED_FUNCTION_13_21();
              sub_1DC51704C();
              v99 = *v205;
              v100 = v207;
              (*v205)(v98, v207);
              OUTLINED_FUNCTION_14_11();
              OUTLINED_FUNCTION_6_21();
              sub_1DC51142C();
              v101 = OUTLINED_FUNCTION_8_15();
              (v88)(v101);
              OUTLINED_FUNCTION_13_21();
              sub_1DC51705C();
              v99(v98, v100);
              OUTLINED_FUNCTION_14_11();
              OUTLINED_FUNCTION_6_21();
              sub_1DC51143C();
              v102 = OUTLINED_FUNCTION_8_15();
              (v88)(v102);
              OUTLINED_FUNCTION_13_21();
              sub_1DC51706C();
              v99(v98, v100);
              OUTLINED_FUNCTION_14_11();
              OUTLINED_FUNCTION_6_21();
              sub_1DC51144C();
              v103 = OUTLINED_FUNCTION_8_15();
              (v88)(v103);
              OUTLINED_FUNCTION_13_21();
              (*v198)(v97, v211);
              sub_1DC51707C();
              v104 = v98;
              v96 = v209;
              v99(v104, v100);
              v105 = v200;
              OUTLINED_FUNCTION_14_11();
              OUTLINED_FUNCTION_6_21();
              sub_1DC51145C();
              v106 = OUTLINED_FUNCTION_8_15();
              (v88)(v106);
              (*v197)(v210, v31, v105);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v96 = sub_1DC3B9DF0(0, *(v96 + 16) + 1, 1, v96);
              }

              v88 = *(v96 + 16);
              v107 = *(v96 + 24);
              if (v88 >= v107 >> 1)
              {
                v96 = sub_1DC3B9DF0(v107 > 1, v88 + 1, 1, v96);
              }

              v108 = v202;
              (*(v202 + 8))(v31, v105);
              *(v96 + 16) = v88 + 1;
              (*(v108 + 32))(v96 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v88, v210, v105);
              v94 += v204;
              --v92;
            }

            while (v92);

            v120 = v168;
            v89 = v176;
            v88 = v175;
            v55 = v187;
          }

          else
          {

            v120 = v62;
          }

          v62 = v120;
          sub_1DC51100C();
          OUTLINED_FUNCTION_37(&v201);
          result = v128(v88, v89);
          v65 = v177;
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_9_22(&v203 + 4);
        if (v109)
        {
          OUTLINED_FUNCTION_37(&v214);
          v110 = OUTLINED_FUNCTION_48_0();
          v111(v110);
          OUTLINED_FUNCTION_37(&v194);
          v112 = v166;
          v113(v85, v67, v166);
          OUTLINED_FUNCTION_37(&v193);
          v114 = OUTLINED_FUNCTION_4_26();
          v115(v114, v85, v112);
          OUTLINED_FUNCTION_37(&v192);
          v116(v67, v112);
          OUTLINED_FUNCTION_9_22(&v191 + 4);
          if (v84)
          {
            v117 = OUTLINED_FUNCTION_0_48();
            v119 = &v187;
          }

          else
          {
            OUTLINED_FUNCTION_9_22(&v187 + 4);
            if (v129)
            {
              v117 = OUTLINED_FUNCTION_0_48();
              v119 = &v186;
            }

            else
            {
              OUTLINED_FUNCTION_9_22(&v186 + 4);
              if (v130)
              {
                v117 = OUTLINED_FUNCTION_0_48();
                v119 = &v183;
              }

              else
              {
                OUTLINED_FUNCTION_9_22(v184);
                if (v131)
                {
                  v117 = OUTLINED_FUNCTION_0_48();
                  v119 = &v181;
                }

                else
                {
                  OUTLINED_FUNCTION_9_22(&v182);
                  if (!v132)
                  {
                    sub_1DC28D414();
                    OUTLINED_FUNCTION_37(v196);
                    v133 = OUTLINED_FUNCTION_4_26();
                    v134(v133);
                    v135 = sub_1DC516F6C();
                    v136 = sub_1DC517BAC();
                    if (os_log_type_enabled(v135, v136))
                    {
                      v138 = swift_slowAlloc();
                      *v138 = 0;
                      _os_log_impl(&dword_1DC287000, v135, v136, "DataSource of entity not in NLXTypes enum", v138, 2u);
                      OUTLINED_FUNCTION_11_22();
                    }

                    OUTLINED_FUNCTION_37(&v195);
                    v139(v150, v173);
                    v140 = OUTLINED_FUNCTION_0_48();
                    v141(v140, v145, v164);
                    sub_1DC51123C();
                    v142 = *v156;
                    v143 = v166;
                    (*v156)(v85, v166);
                    result = (v142)(v165, v143);
                    goto LABEL_27;
                  }

                  v117 = OUTLINED_FUNCTION_0_48();
                  v119 = &v180;
                }
              }
            }
          }

          v118(v117, *(v119 - 64), v164);
          sub_1DC51123C();
          OUTLINED_FUNCTION_37(&v189);
          v82 = v85;
          v83 = v112;
        }

        else
        {
          sub_1DC28D414();
          OUTLINED_FUNCTION_37(v196);
          v121 = OUTLINED_FUNCTION_4_26();
          v122(v121);
          v123 = sub_1DC516F6C();
          v124 = sub_1DC517BAC();
          if (os_log_type_enabled(v123, v124))
          {
            v126 = swift_slowAlloc();
            *v126 = 0;
            _os_log_impl(&dword_1DC287000, v123, v124, "Unknown element type in RRMetadata", v126, 2u);
            OUTLINED_FUNCTION_11_22();
          }

          OUTLINED_FUNCTION_37(&v195);
          v127(v172, v173);
          OUTLINED_FUNCTION_37(&v188);
          v82 = v196[0];
          v83 = v55;
        }
      }

      result = (v81)(v82, v83);
LABEL_27:
      ++v65;
    }

    while (v65 != v195);
  }

  return result;
}

size_t sub_1DC3B9DF0(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_1DC3B9EEC(v8, v7);
  v10 = *(sub_1DC511B5C() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC3B9FE8(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1DC3B9EEC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D2F0, &qword_1DC5281E8);
  v4 = *(sub_1DC511B5C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC3B9FE8(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC511B5C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC511B5C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC3BA0BC(char a1)
{
  if (a1)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x6961467075746573;
  }
}

uint64_t sub_1DC3BA108(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (v2)
  {
    v4 = 0x80000001DC544C80;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0x80000001DC544C80;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC3BA1AC(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  else
  {
    v3 = 0x6961467075746573;
  }

  if (v2)
  {
    v4 = 0xEC0000006572756CLL;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x6E776F6E6B6E75;
  }

  else
  {
    v5 = 0x6961467075746573;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEC0000006572756CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC3BA27C()
{
  sub_1DC51769C();
}

uint64_t sub_1DC3BA2F0()
{
  sub_1DC51769C();
}

uint64_t sub_1DC3BA368()
{
  sub_1DC5182FC();
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC3BA3EC()
{
  sub_1DC5182FC();
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC3BA474@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DC3BA4D8();
  *a2 = result;
  return result;
}

uint64_t sub_1DC3BA4AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC3BA0BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DC3BA4D8()
{
  v0 = sub_1DC51808C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC3BA528(char a1)
{
  if (a1)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1DC3BA588@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DC3BA4D8();
  *a2 = result;
  return result;
}

uint64_t sub_1DC3BA5C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC3BA528(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1DC3BA5EC(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{

  v8 = sub_1DC3BA4D8();
  if (v8 == 2)
  {
    v9 = sub_1DC517B9C();
    v10 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v17 = sub_1DC39905C();
    if (os_log_type_enabled(v17, v9))
    {
      OUTLINED_FUNCTION_63();
      v11 = OUTLINED_FUNCTION_41_3();
      v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1DC291244(a1, a2, &v18);
      OUTLINED_FUNCTION_8_16(&dword_1DC287000, v17, v9, "WARN: Failed to convert %s to AutoBugCapture.ErrorType");
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
LABEL_7:
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_42();

      return;
    }
  }

  else
  {
    v12 = v8;

    v13 = sub_1DC3BA4D8();
    if (v13 == 2)
    {
      v14 = sub_1DC517B9C();
      v15 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v17 = sub_1DC39905C();
      if (os_log_type_enabled(v17, v14))
      {
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_41_3();
        OUTLINED_FUNCTION_9_23();
        *v15 = 136315138;
        *(v15 + 4) = sub_1DC291244(a3, a4, &v18);
        OUTLINED_FUNCTION_8_16(&dword_1DC287000, v17, v14, "WARN: Failed to convert %s to AutoBugCapture.ErrorSubType");
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v13;
      v17 = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
      sub_1DC3BA8AC(v12, v16, 0, 0, v17, 15.0);
    }
  }
}

void sub_1DC3BA8AC(char a1, char a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  v7 = sub_1DC51737C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_1DC517BEC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = sub_1DC517BCC();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v44 = sub_1DC5173CC();
  v27 = OUTLINED_FUNCTION_0(v44);
  v42 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if (sub_1DC417A58())
  {
    sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
    sub_1DC51738C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DC293C2C(&qword_1EDAC7FA8, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD20, &qword_1DC525300);
    v38 = v15;
    sub_1DC2C4B5C(&qword_1EDAC7FB0, &unk_1ECC7CD20, &qword_1DC525300);
    sub_1DC517E9C();
    (*(v19 + 104))(v24, *MEMORY[0x1E69E8090], v16);
    v34 = sub_1DC517C1C();
    v35 = swift_allocObject();
    *(v35 + 16) = a5;
    *(v35 + 24) = a1 & 1;
    *(v35 + 25) = a2 & 1;
    *(v35 + 32) = a3;
    *(v35 + 40) = a4;
    *(v35 + 48) = a6;
    aBlock[4] = sub_1DC3BAFD0;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DC2AECB0;
    aBlock[3] = &block_descriptor_10;
    v36 = _Block_copy(aBlock);

    v37 = a5;
    sub_1DC51739C();
    sub_1DC293C2C(&qword_1EDAC7FE0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
    sub_1DC2C4B5C(&qword_1EDAC7FC0, &unk_1ECC7CD40, &unk_1DC523860);
    sub_1DC517E9C();
    MEMORY[0x1E12964B0](0, v33, v38, v36);
    _Block_release(v36);

    (*(v10 + 8))(v38, v7);
    (*(v42 + 8))(v33, v44);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v46 = sub_1DC39905C();
    sub_1DC516F0C();
  }
}

void sub_1DC3BAE10()
{
  v0 = sub_1DC517B9C();
  v1 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v6 = sub_1DC39905C();
  if (os_log_type_enabled(v6, v0))
  {
    OUTLINED_FUNCTION_63();
    v2 = OUTLINED_FUNCTION_41_3();
    v7 = v2;
    *v1 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D310, &qword_1DC528368);
    v3 = sub_1DC51777C();
    v5 = sub_1DC291244(v3, v4, &v7);

    *(v1 + 4) = v5;
    OUTLINED_FUNCTION_8_16(&dword_1DC287000, v6, v0, "Received response from diagnostic Reporter snapshot for %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_42();
  }

  else
  {
  }
}

id sub_1DC3BAF44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutoBugCapture();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1DC3BAF9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutoBugCapture();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DC3BAFD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_1DC517B9C();
  v7 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v8 = sub_1DC39905C();
  sub_1DC516F0C();

  v9 = sub_1DC5176FC();
  v10 = sub_1DC5176FC();

  v11 = sub_1DC5176FC();

  v12 = sub_1DC5176FC();

  v13 = [objc_opt_self() processInfo];
  v14 = [v13 processName];

  v15 = sub_1DC51772C();
  v17 = v16;

  v61 = sub_1DC3BB6C4(v9, v10, v11, v12, v15, v17, 0, v1);
  if (v61 && (aBlock[0] = 0, v18 = v61, v11 = aBlock, sub_1DC51761C(), v18, (v19 = aBlock[0]) != 0))
  {
    aBlock[4] = sub_1DC3BAE10;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DC389FF0;
    aBlock[3] = &block_descriptor_16;
    v20 = _Block_copy(aBlock);
    v21 = sub_1DC3BB768(v6, v19, 0, 0, v20, v1);

    _Block_release(v20);
    if (v21)
    {
      v22 = sub_1DC517B9C();
      v23 = sub_1DC39905C();
      if (os_log_type_enabled(v23, v22))
      {
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_41_3();
        OUTLINED_FUNCTION_9_23();
        OUTLINED_FUNCTION_5_29(4.8149e-34, v24, v25, v26, v27, v28, v29, v30, v31, v61);
        v32 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D308, "ʖ");
        v33 = sub_1DC51777C();
        v35 = sub_1DC291244(v33, v34, aBlock);

        *(v7 + 4) = v35;
        v36 = "Took snapshot for signature: %s";
LABEL_13:
        OUTLINED_FUNCTION_8_16(&dword_1DC287000, v23, v22, v36);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_42();

        goto LABEL_14;
      }
    }

    else
    {
      v22 = sub_1DC517BAC();
      v23 = sub_1DC39905C();
      if (os_log_type_enabled(v23, v22))
      {
        OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_41_3();
        OUTLINED_FUNCTION_9_23();
        OUTLINED_FUNCTION_5_29(4.8149e-34, v50, v51, v52, v53, v54, v55, v56, v57, v61);
        v32 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D308, "ʖ");
        v58 = sub_1DC51777C();
        v60 = sub_1DC291244(v58, v59, aBlock);

        *(v7 + 4) = v60;
        v36 = "Couldn't take snapshot for signature: %s";
        goto LABEL_13;
      }
    }
  }

  else
  {
    v37 = sub_1DC517BAC();
    v23 = sub_1DC39905C();
    if (os_log_type_enabled(v23, v37))
    {
      OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_41_3();
      OUTLINED_FUNCTION_9_23();
      v46 = OUTLINED_FUNCTION_5_29(4.8149e-34, v38, v39, v40, v41, v42, v43, v44, v45, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D308, "ʖ");
      v47 = sub_1DC51777C();
      v49 = sub_1DC291244(v47, v48, aBlock);

      *(v7 + 4) = v49;
      OUTLINED_FUNCTION_8_16(&dword_1DC287000, v23, v37, "Couldn't parse signature: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_42();

LABEL_14:
      return;
    }
  }
}

unint64_t sub_1DC3BB524()
{
  result = qword_1ECC7D2F8;
  if (!qword_1ECC7D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D2F8);
  }

  return result;
}

unint64_t sub_1DC3BB57C()
{
  result = qword_1ECC7D300;
  if (!qword_1ECC7D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D300);
  }

  return result;
}

_BYTE *sub_1DC3BB5E8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

id sub_1DC3BB6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_1DC5176FC();

  v15 = [a8 signatureWithDomain:a1 type:a2 subType:a3 subtypeContext:a4 detectedProcess:v14 triggerThresholdValues:a7];

  return v15;
}

id sub_1DC3BB768(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = sub_1DC51760C();
  v12 = [a6 snapshotWithSignature:v11 duration:a3 event:a4 payload:a5 reply:a1];

  return v12;
}

id sub_1DC3BB814()
{
  type metadata accessor for AssistantNLRequestHandler(0);
  v0 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  result = sub_1DC333108(0xD00000000000001ELL, 0x80000001DC545050, 8);
  qword_1EDAC9538 = result;
  return result;
}

uint64_t sub_1DC3BB8AC(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_referenceResolutionProxy;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_1DC28F9B0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1DC3BBA8C()
{
  v1 = (v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_selectedRcId);
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return OUTLINED_FUNCTION_31_0();
}

uint64_t sub_1DC3BBADC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_selectedRcId);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1DC3BBB88()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_didUpdateTurnContainer;
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DC3BBBC8(char a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_didUpdateTurnContainer;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC3BBC54()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_pullingEntitiesOnSiriPrompt;
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DC3BBC94(char a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_pullingEntitiesOnSiriPrompt;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC3BBD90(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1DC3BBE28()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_deviceSupportsPersona;
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DC3BBE68(char a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_deviceSupportsPersona;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC3BBEF4()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMultilingualResponseVariantSelectorEnabled;
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DC3BBF34(char a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMultilingualResponseVariantSelectorEnabled;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC3BBFC0()
{
  if (OUTLINED_FUNCTION_284(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_rootRequestId))
  {
    v1 = *v0;
  }

  else
  {
    OUTLINED_FUNCTION_229_0(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  }

  return OUTLINED_FUNCTION_43();
}

void sub_1DC3BC010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v159 = v25;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D330, &unk_1DC5283B0);
  OUTLINED_FUNCTION_10(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v34);
  v35 = sub_1DC516F7C();
  v36 = OUTLINED_FUNCTION_0(v35);
  v162 = v37;
  v163 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15();
  v167 = v40;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v42);
  v43 = sub_1DC515E1C();
  v44 = OUTLINED_FUNCTION_2_29(v43, &a17);
  v169 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v48);
  v157 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CED8, &qword_1DC525810) - 8);
  v49 = *(*v157 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  v53 = OUTLINED_FUNCTION_10(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_23_1();
  v168 = v57;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_56_1();
  v60 = sub_1DC5168FC();
  v61 = OUTLINED_FUNCTION_0(v60);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_7_21();
  OUTLINED_FUNCTION_38_1();
  v166 = *(v66 + 344);
  v166(v171);
  v67 = v173;
  OUTLINED_FUNCTION_121_1(v171, v172);
  v68 = *(v67 + 8);
  v69 = OUTLINED_FUNCTION_176();
  v70(v69);
  __swift_destroy_boxed_opaque_existential_1Tm(v171);
  v71 = sub_1DC2A0AE0();
  v72 = OUTLINED_FUNCTION_162_3(v63);
  v161 = v73;
  (v73)(v72, v71, v60);
  v74 = swift_allocObject();
  v74[2] = v20;
  v74[3] = v29;
  v164 = v29;
  v74[4] = v27;
  v170 = v20;

  v165 = v27;

  sub_1DC5168CC();

  v160 = *(v63 + 8);
  v160(v22, v60);
  (*(v169 + 104))(v21, *MEMORY[0x1E69D0530]);
  v75 = OUTLINED_FUNCTION_23_20();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v158);
  v78 = v157[14];
  sub_1DC28F414(v159, v156, &unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_201_0();
  sub_1DC28F414(v79, v80, v81, v82);
  OUTLINED_FUNCTION_30_8(v156);
  if (!v92)
  {
    OUTLINED_FUNCTION_159_0(&a11);
    sub_1DC28F414(v88, v89, v90, v91);
    OUTLINED_FUNCTION_30_8(v156 + v78);
    if (!v92)
    {
      (*(v169 + 32))(v155, v156 + v78);
      sub_1DC3D8E40(&qword_1ECC7BB40, MEMORY[0x1E69D0568]);
      OUTLINED_FUNCTION_63_0();
      v154 = sub_1DC5176CC();
      v95 = *(v169 + 8);
      v96 = OUTLINED_FUNCTION_65_1();
      v95(v96);
      v97 = OUTLINED_FUNCTION_174();
      sub_1DC28EB30(v97, v98, &qword_1DC525380);
      v83 = v158;
      v95(&unk_1ECC7D340);
      v99 = OUTLINED_FUNCTION_146_1();
      v86 = sub_1DC28EB30(v99, v100, &qword_1DC525380);
      v87 = v162;
      v84 = v163;
      v85 = v168;
      if ((v154 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    sub_1DC28EB30(v21, &unk_1ECC7D340, &qword_1DC525380);
    v93 = OUTLINED_FUNCTION_318(v169);
    v83 = v158;
    v94(v93);
    v84 = v163;
    v85 = v168;
LABEL_9:
    sub_1DC28EB30(v156, &qword_1ECC7CED8, &qword_1DC525810);
    v87 = v162;
    goto LABEL_16;
  }

  sub_1DC28EB30(v21, &unk_1ECC7D340, &qword_1DC525380);
  v83 = v158;
  OUTLINED_FUNCTION_39(v156 + v78, 1, v158);
  v84 = v163;
  v85 = v168;
  if (!v92)
  {
    goto LABEL_9;
  }

  v86 = sub_1DC28EB30(v156, &unk_1ECC7D340, &qword_1DC525380);
  v87 = v162;
LABEL_11:
  (v166)(v171, v86);
  v101 = v173;
  __swift_project_boxed_opaque_existential_1(v171, v172);
  v102 = *(v101 + 48);
  v103 = OUTLINED_FUNCTION_23_2();
  if (v104(v103, v101))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v171);
    sub_1DC28D414();
    OUTLINED_FUNCTION_4_2();
    v105();
    v106 = sub_1DC516F6C();
    v107 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v107))
    {
      v108 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v108);
      OUTLINED_FUNCTION_27_16();
      _os_log_impl(v109, v110, v111, v112, v113, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    v114 = *(v87 + 8);
    v115 = OUTLINED_FUNCTION_60();
    v117 = v116(v115);
    goto LABEL_23;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v171);
  v85 = v168;
LABEL_16:
  sub_1DC28D414();
  OUTLINED_FUNCTION_4_2();
  v118 = OUTLINED_FUNCTION_233_0();
  v119(v118);
  v120 = OUTLINED_FUNCTION_16();
  sub_1DC28F414(v120, v121, v122, v123);
  v124 = sub_1DC516F6C();
  v125 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_197_0(v125))
  {
    OUTLINED_FUNCTION_63();
    v126 = OUTLINED_FUNCTION_117();
    v171[0] = v126;
    *v85 = 136315138;
    OUTLINED_FUNCTION_193_0(&a10);
    sub_1DC28F414(v127, v128, v129, v130);
    v131 = OUTLINED_FUNCTION_34_11();
    v132 = v83;
    OUTLINED_FUNCTION_39(v131, v133, v83);
    if (v92)
    {
      sub_1DC28EB30(v85, &unk_1ECC7D340, &qword_1DC525380);
      v139 = 0xED00006465696669;
      v137 = 0x6365707320746F6ELL;
    }

    else
    {
      v137 = sub_1DC515E0C();
      v139 = v138;
      v140 = *(v169 + 8);
      v141 = OUTLINED_FUNCTION_149();
      v142(v141);
    }

    sub_1DC28EB30(v168, &unk_1ECC7D340, &qword_1DC525380);
    sub_1DC291244(v137, v139, v171);
    OUTLINED_FUNCTION_10_19();

    *(v85 + 4) = v132;
    _os_log_impl(&dword_1DC287000, v124, v125, "requestType:%s, calling fetchAndParseSalientEntities.", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_58();

    (*(v87 + 8))(v167, v84);
  }

  else
  {

    sub_1DC28EB30(v85, &unk_1ECC7D340, &qword_1DC525380);
    v134 = *(v87 + 8);
    v135 = OUTLINED_FUNCTION_73();
    v136(v135);
  }

  sub_1DC51713C();
  OUTLINED_FUNCTION_83(&a12);
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v143, v144, v145, v146);
  sub_1DC2C8CC4();
  v117 = sub_1DC28EB30(v124, &unk_1ECC7D330, &unk_1DC5283B0);
LABEL_23:
  (v166)(v171, v117);
  v147 = v173;
  __swift_project_boxed_opaque_existential_1(v171, v172);
  v148 = *(v147 + 56);
  v149 = OUTLINED_FUNCTION_23_2();
  v150(v149, v147);
  __swift_destroy_boxed_opaque_existential_1Tm(v171);
  v151 = OUTLINED_FUNCTION_78_6();
  v161(v151);
  v152 = swift_allocObject();
  v152[2] = v170;
  v152[3] = v164;
  v152[4] = v165;

  OUTLINED_FUNCTION_170_1();
  sub_1DC5168CC();

  v153 = OUTLINED_FUNCTION_30();
  (v160)(v153);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3BCA44()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_228_0();
  v3 = sub_1DC51373C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v12 = v5;
  v13 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = OUTLINED_FUNCTION_9_24();
  type metadata accessor for AssistantNLRequestHandler(v8);
  v9 = sub_1DC3BCBAC();
  (*(*v0 + 832))(v9, v2);

  sub_1DC2C5FC4(v0 + 16, v14);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_1DC515D6C();
  sub_1DC515B5C();
  v10 = OUTLINED_FUNCTION_104_1();
  v11(v10);

  (*(v12 + 8))(v1, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3BCBAC()
{
  OUTLINED_FUNCTION_38_2();
  v1 = sub_1DC516F7C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v7 = sub_1DC5159CC();
  v8 = [v7 recognition];

  if (v8)
  {
    AFSpeechRecognition.toNLXAsrHypotheses()();
    v10 = v9;

    return v10;
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v12(v0);
    v13 = sub_1DC516F6C();
    sub_1DC517BAC();
    OUTLINED_FUNCTION_116();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v15);
      OUTLINED_FUNCTION_51_8(&dword_1DC287000, v16, v17, "Recognition is nil");
      OUTLINED_FUNCTION_58();
    }

    v18 = *(v4 + 8);
    v19 = OUTLINED_FUNCTION_36();
    v20(v19);
    return MEMORY[0x1E69E7CC0];
  }
}

void sub_1DC3BCCF4()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v4 = v3;
  v5 = sub_1DC51373C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_7_21();
  v11 = sub_1DC516F7C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  sub_1DC515C0C();
  OUTLINED_FUNCTION_183();
  v18 = (*(v17 + 1040))();

  if (v18)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_90();
    v19 = OUTLINED_FUNCTION_233_0();
    v20(v19);
    v21 = v4;
    v22 = sub_1DC516F6C();
    v23 = sub_1DC517B9C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_140();
      v46[0] = OUTLINED_FUNCTION_143();
      *v24 = 136315394;
      v25 = sub_1DC515D6C();
      OUTLINED_FUNCTION_376(v25, v26);
      OUTLINED_FUNCTION_374();
      *(v24 + 4) = v8;
      *(v24 + 12) = 2080;
      v27 = sub_1DC515B5C();
      OUTLINED_FUNCTION_376(v27, v28);
      OUTLINED_FUNCTION_374();
      *(v24 + 14) = v8;
      _os_log_impl(&dword_1DC287000, v22, v23, "textBasedResultCandidateMessage is a machine utterance. requestId: %s, rcId: %s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_54_12();
    }

    v29 = *(v14 + 8);
    v30 = OUTLINED_FUNCTION_73();
    v31(v30);
    sub_1DC3C0090();
  }

  else
  {
    type metadata accessor for AssistantNLRequestHandler(0);
    sub_1DC515C0C();
    sub_1DC3BD06C();
    OUTLINED_FUNCTION_149_0();

    v32 = *(*v2 + 832);
    v33 = OUTLINED_FUNCTION_187();
    v34(v33);

    sub_1DC2C5FC4(v2 + 16, v46);
    v35 = v47;
    v36 = v48;
    __swift_project_boxed_opaque_existential_1(v46, v47);
    v45 = v5;
    v37 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
    v38 = sub_1DC515D6C();
    v39 = v1;
    v40 = v2;
    v42 = v41;
    v43 = sub_1DC515B5C();
    (*(v36 + 56))(v40 + v37, v38, v42, v43, v44, v39, v35, v36);

    (*(v8 + 8))(v39, v45);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3BD06C()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1DC510B6C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_21();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D350, &unk_1DC52EF90);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31_3();
  v12 = sub_1DC510F3C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v37 = sub_1DC51141C();
  v18 = OUTLINED_FUNCTION_0(v37);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC51140C();

  sub_1DC5113FC();
  sub_1DC5113BC();
  sub_1DC51100C();
  sub_1DC510B5C();
  sub_1DC5138EC();
  v23 = *(v5 + 8);
  v24 = OUTLINED_FUNCTION_149();
  v25(v24);
  v26 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_39(v26, v27, v12);
  if (v28)
  {
    sub_1DC510F2C();
    v29 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_39(v29, v30, v12);
    if (!v28)
    {
      sub_1DC28EB30(v1, &unk_1ECC7D350, &unk_1DC52EF90);
    }
  }

  else
  {
    v31 = *(v15 + 32);
    v15 += 32;
    v32 = OUTLINED_FUNCTION_60();
    v33(v32);
  }

  sub_1DC5113CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC48, &unk_1DC5283C0);
  v34 = *(v20 + 72);
  v35 = *(v20 + 80);
  OUTLINED_FUNCTION_337();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1DC522F20;
  (*(v20 + 32))(v36 + v15, v0, v37);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3BD314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = sub_1DC51110C();
  v28 = OUTLINED_FUNCTION_10(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_24();
  v136 = sub_1DC5137CC();
  v31 = OUTLINED_FUNCTION_0(v136);
  v139 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  v133 = v35;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  v137 = v37;
  OUTLINED_FUNCTION_12();
  v138 = sub_1DC51122C();
  v38 = OUTLINED_FUNCTION_0(v138);
  v135 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  v134 = v42;
  OUTLINED_FUNCTION_12();
  v43 = sub_1DC51139C();
  v44 = OUTLINED_FUNCTION_10(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v47);
  v48 = sub_1DC51136C();
  v49 = OUTLINED_FUNCTION_10(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v52);
  v53 = sub_1DC515F7C();
  v54 = OUTLINED_FUNCTION_0(v53);
  v144 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_2_1();
  v143 = v58;
  OUTLINED_FUNCTION_12();
  v59 = sub_1DC515F6C();
  v60 = OUTLINED_FUNCTION_0(v59);
  v147 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_107_0();
  v65 = sub_1DC516F7C();
  v66 = OUTLINED_FUNCTION_0(v65);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_56_1();
  v72 = sub_1DC51164C();
  v73 = OUTLINED_FUNCTION_0(v72);
  v140 = v74;
  v141 = v73;
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_2_1();
  v146 = v77;
  sub_1DC51163C();
  sub_1DC28D414();
  OUTLINED_FUNCTION_4_2();
  v142 = v65;
  v131 = v78;
  (v78)(v22);
  v79 = v26;
  v80 = sub_1DC516F6C();
  v81 = sub_1DC517BAC();

  v145 = v79;
  if (os_log_type_enabled(v80, v81))
  {
    OUTLINED_FUNCTION_63();
    v148 = OUTLINED_FUNCTION_73_5();
    *v21 = 136315138;
    sub_1DC515C8C();
    OUTLINED_FUNCTION_107_3();
    sub_1DC3D8E40(v82, v83);
    v84 = sub_1DC51823C();
    v85 = v53;
    v87 = v86;
    (*(v147 + 8))(v20, v59);
    v88 = OUTLINED_FUNCTION_98_5();
    sub_1DC291244(v88, v87, v89);
    OUTLINED_FUNCTION_155_0();
    v53 = v85;

    *(v21 + 4) = v84;
    OUTLINED_FUNCTION_236_0(&dword_1DC287000, v80, v81, "🫨 Generating parse for gesture input: %s with comparable probability: 1.0");
    __swift_destroy_boxed_opaque_existential_1Tm(v148);
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_66();
  }

  v90 = *(v68 + 8);
  v90(v22, v142);
  v91 = sub_1DC515C8C();
  MEMORY[0x1E1294800](v91);
  v92 = *(v147 + 8);
  v93 = OUTLINED_FUNCTION_314();
  v92(v93);
  v94 = *(v144 + 88);
  v95 = OUTLINED_FUNCTION_229();
  v97 = v96(v95);
  if (v97 == *MEMORY[0x1E69D0650])
  {
    sub_1DC51135C();
    v98 = v146;
    sub_1DC5115DC();
LABEL_7:
    sub_1DC51121C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D150, qword_1DC526DD8);
    v99 = *(v140 + 72);
    v100 = *(v140 + 80);
    OUTLINED_FUNCTION_33_17();
    *(swift_allocObject() + 16) = xmmword_1DC522F20;
    OUTLINED_FUNCTION_19_1();
    v102(v101 + v59, v98, v141);
    sub_1DC51100C();
    sub_1DC5111DC();
    sub_1DC5137BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D370, &unk_1DC5283D0);
    v103 = *(v135 + 72);
    v104 = *(v135 + 80);
    OUTLINED_FUNCTION_33_17();
    *(swift_allocObject() + 16) = xmmword_1DC522F20;
    OUTLINED_FUNCTION_44_8();
    v106(v105 + v59, v134, v138);
    sub_1DC51378C();
    sub_1DC51370C();
    sub_1DC5137AC();
    type metadata accessor for CDMNluResponse();
    OUTLINED_FUNCTION_32_5();
    v107 = OUTLINED_FUNCTION_238_0();
    v108(v107);
    v109 = CDMNluResponse.__allocating_init(swiftProto:)(v133);
    OUTLINED_FUNCTION_38_1();
    (*(v110 + 936))(v145, v109);

    (*(v139 + 8))(v137, v136);
    v111 = *(v135 + 8);
    v112 = OUTLINED_FUNCTION_74_0();
    v113(v112);
    (*(v140 + 8))(v146, v141);
    goto LABEL_12;
  }

  if (v97 == *MEMORY[0x1E69D0658])
  {
    sub_1DC51138C();
    v98 = v146;
    sub_1DC5115FC();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_184(&a17);
  OUTLINED_FUNCTION_262();
  v131();
  v114 = v145;
  v115 = sub_1DC516F6C();
  sub_1DC517BAC();

  if (OUTLINED_FUNCTION_301())
  {
    OUTLINED_FUNCTION_63();
    v149 = OUTLINED_FUNCTION_73_5();
    *v21 = 136315138;
    OUTLINED_FUNCTION_106(&a12);
    sub_1DC515C8C();
    OUTLINED_FUNCTION_107_3();
    sub_1DC3D8E40(v116, v117);
    v118 = sub_1DC51823C();
    v119 = v53;
    v121 = v120;
    v122 = OUTLINED_FUNCTION_78_6();
    v92(v122);
    v123 = OUTLINED_FUNCTION_98_5();
    sub_1DC291244(v123, v121, v124);
    OUTLINED_FUNCTION_155_0();
    v53 = v119;

    *(v21 + 4) = v118;
    OUTLINED_FUNCTION_85_6();
    _os_log_impl(v125, v126, v127, v128, v129, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_40_0();

    v130 = v132;
  }

  else
  {

    v130 = OUTLINED_FUNCTION_184_1();
  }

  v90(v130, v142);
  (*(v140 + 8))(v146, v141);
  (*(v144 + 8))(v143, v53);
LABEL_12:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3BDC3C()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_1DC515F6C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_79();
  v6 = sub_1DC51373C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_21();
  sub_1DC515C8C();
  OUTLINED_FUNCTION_183();
  v13 = *(v12 + 840);
  v14 = OUTLINED_FUNCTION_77_1();
  v15(v14);
  v16 = *(v3 + 8);
  v17 = OUTLINED_FUNCTION_35_0();
  v18(v17);
  OUTLINED_FUNCTION_183();
  v20 = *(v19 + 696);
  v21 = OUTLINED_FUNCTION_314();
  v22(v21);
  v23 = *(v9 + 8);
  v24 = OUTLINED_FUNCTION_47_0();
  v25(v24);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3BDDD8()
{
  OUTLINED_FUNCTION_33();
  v4 = v0;
  v75 = v5;
  v7 = v6;
  v8 = sub_1DC51617C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v14 = sub_1DC51373C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v76 = v16;
  v77 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v78 = sub_1DC516F7C();
  v19 = OUTLINED_FUNCTION_0(v78);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7_21();
  sub_1DC515B3C();
  OUTLINED_FUNCTION_183();
  v25 = (*(v24 + 1040))();

  if (v25)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v26(v2);
    v27 = v7;
    v28 = sub_1DC516F6C();
    v29 = sub_1DC517B9C();

    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_140();
      v81[0] = OUTLINED_FUNCTION_54_13();
      *v11 = 136315394;
      v30 = sub_1DC515D6C();
      OUTLINED_FUNCTION_376(v30, v31);
      OUTLINED_FUNCTION_374();
      *(v11 + 4) = v3;
      OUTLINED_FUNCTION_220_1();
      v32 = sub_1DC515A5C();
      OUTLINED_FUNCTION_376(v32, v33);
      OUTLINED_FUNCTION_374();
      *(v11 + 14) = v3;
      _os_log_impl(&dword_1DC287000, v28, v29, "textBasedTRPCandidateMessage is a machine utterance. requestId: %s trpCandidateId: %s", v11, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_146_3();
      OUTLINED_FUNCTION_58();
    }

    (*(v21 + 8))(v2, v78);
    sub_1DC3C060C();
  }

  else
  {
    v34 = *(v4 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState), *(v4 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState + 24));
    OUTLINED_FUNCTION_159();
    sub_1DC51626C();
    OUTLINED_FUNCTION_183();
    v36 = *(v35 + 856);
    v37 = OUTLINED_FUNCTION_336();
    v38(v37);
    __swift_destroy_boxed_opaque_existential_1Tm(v81);
    OUTLINED_FUNCTION_32_5();
    v39(v3, v75, v8);
    v40 = *(v11 + 88);
    v41 = OUTLINED_FUNCTION_51();
    v43 = v42(v41);
    v44 = *MEMORY[0x1E69D06D0];
    v45 = *(v11 + 8);
    v46 = OUTLINED_FUNCTION_51();
    v47(v46);
    if (v43 == v44)
    {
      v48 = sub_1DC5136DC();
      sub_1DC51117C();
      v49 = OUTLINED_FUNCTION_57_4();
      v48(v49);
    }

    sub_1DC515A5C();
    v51 = v50;
    v52 = sub_1DC515B2C();
    v54 = v53;
    OUTLINED_FUNCTION_183();
    v56 = *(v55 + 552);

    v57 = v56(v81);
    v59 = v58;
    v60 = *v58;
    swift_isUniquelyReferenced_nonNull_native();
    v79 = *v59;
    v61 = OUTLINED_FUNCTION_75();
    sub_1DC358334(v61, v62, v52, v54);
    *v59 = v79;
    v63 = OUTLINED_FUNCTION_57_4();
    v57(v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DC522F20;
    *(inited + 32) = v52;
    *(inited + 40) = v54;

    sub_1DC33347C(inited);
    OUTLINED_FUNCTION_183();
    v66 = (*(v65 + 576))(v81);
    v68 = v67;
    v69 = *v67;
    swift_isUniquelyReferenced_nonNull_native();
    v80 = *v68;
    v70 = OUTLINED_FUNCTION_153_0();
    sub_1DC3D7184(v70, v71, v51);
    *v68 = v80;

    v72 = OUTLINED_FUNCTION_57_4();
    v66(v72);
    OUTLINED_FUNCTION_183();
    if ((*(v73 + 584))())
    {
      OUTLINED_FUNCTION_358();
      v74 = v1;
      sub_1DC3BF144();
    }

    else
    {
      sub_1DC515A5C();
      v74 = v1;
      sub_1DC3BFAC0();
    }

    (*(v76 + 8))(v74, v77);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3BE3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) == 1)
  {
    sub_1DC28EB30(a1, &qword_1ECC7D388, &unk_1DC5283E8);
    sub_1DC3D6B14(a2, a3, v11);

    return sub_1DC28EB30(v11, &qword_1ECC7D388, &unk_1DC5283E8);
  }

  else
  {
    sub_1DC3D80AC(a1, v15);
    v18 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_1DC3D6EE0(v15, a2, a3);

    *v4 = v20;
  }

  return result;
}

uint64_t sub_1DC3BE548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1DC28F9B0(a1, v9);
    v6 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1DC3D6D94(v9, a2, a3);

    *v3 = v8;
  }

  else
  {
    sub_1DC28EB30(a1, &qword_1ECC7D410, &qword_1DC528430);
    sub_1DC3D6A18(a2, a3, v9);

    return sub_1DC28EB30(v9, &qword_1ECC7D410, &qword_1DC528430);
  }

  return result;
}

uint64_t sub_1DC3BE61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D4D0, &qword_1DC5285A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for AssistantNLRequestHandler.NluResponseType(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) == 1)
  {
    sub_1DC28EB30(a1, &qword_1ECC7D4D0, &qword_1DC5285A0);
    sub_1DC3D6C60(a2, a3, v11);

    return sub_1DC28EB30(v11, &qword_1ECC7D4D0, &qword_1DC5285A0);
  }

  else
  {
    sub_1DC3D8D78(a1, v15);
    v18 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_1DC3D72C0(v15, a2, a3);

    *v4 = v20;
  }

  return result;
}

void sub_1DC3BE7A8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_228_0();
  v2 = sub_1DC51373C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v15 = v4;
  v16 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = OUTLINED_FUNCTION_9_24();
  type metadata accessor for AssistantNLRequestHandler(v7);
  sub_1DC515C0C();
  sub_1DC3BD06C();
  OUTLINED_FUNCTION_334();

  v8 = *(*v0 + 832);
  v9 = OUTLINED_FUNCTION_16();
  v10(v9);

  v11 = sub_1DC5136DC();
  sub_1DC51117C();
  v12 = OUTLINED_FUNCTION_57_4();
  v11(v12);
  sub_1DC2C5FC4(v0 + 16, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1DC515D6C();
  sub_1DC515B5C();
  v13 = OUTLINED_FUNCTION_104_1();
  v14(v13);

  (*(v15 + 8))(v1, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3BE954()
{
  v1 = sub_1DC515B5C();
  (*(*v0 + 448))(v1);
  OUTLINED_FUNCTION_183();
  v3 = *(v2 + 816);

  return v3();
}

void sub_1DC3BE9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_38_2();
  v24 = sub_1DC516F7C();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_79();
  v30 = sub_1DC5162DC();
  v31 = OUTLINED_FUNCTION_2_29(v30, &a9);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v34);
  v35 = sub_1DC51373C();
  v36 = OUTLINED_FUNCTION_2_29(v35, &v109);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_7_21();
  v39 = *(sub_1DC515A3C() + 16);

  if (v39)
  {
    v96 = v20;
    v109 = MEMORY[0x1E69E7CD0];
    v40 = sub_1DC515A3C();
    v41 = 0;
    v94 = *(v40 + 16);
    v42 = OUTLINED_FUNCTION_307(v40) + 32;
    v43 = &qword_1DC5283E0;
    v44 = &selRef_tcuId;
    while (v94 != v41)
    {
      OUTLINED_FUNCTION_178_1();
      if (v41 >= *(v45 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_377(v42, &v105);
      v103 = v105;
      sub_1DC28F9B0(&v106, v104);
      v46 = OUTLINED_FUNCTION_311();
      OUTLINED_FUNCTION_377(v46, v47);
      v48 = sub_1DC3D7F84(v101, v44);
      if (!v49)
      {
        goto LABEL_20;
      }

      v97 = v41;
      sub_1DC2E5B58(v100, v48, v49);

      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      v50 = OUTLINED_FUNCTION_311();
      OUTLINED_FUNCTION_377(v50, v51);
      v52 = v44;
      v53 = sub_1DC3D7F84(v101, v44);
      if (!v54)
      {
        goto LABEL_21;
      }

      v55 = v53;
      v56 = v43;
      v57 = v54;
      v21 = sub_1DC515A5C();
      OUTLINED_FUNCTION_12_0();
      v59 = (*(v58 + 552))(v100);
      v61 = v60;
      v62 = *v60;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_43_5(*v61);
      v63 = OUTLINED_FUNCTION_77_1();
      sub_1DC358334(v63, v64, v55, v57);
      *v61 = v99;

      v59(v100, 0);
      sub_1DC28EB30(&v103, &qword_1ECC7D380, v56);
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      v42 += 48;
      v41 = v97 + 1;
      v43 = v56;
      v44 = v52;
    }

    OUTLINED_FUNCTION_308();

    sub_1DC515A5C();
    (*(*v96 + 576))(&v105);
    OUTLINED_FUNCTION_194();
    v66 = *v65;
    swift_isUniquelyReferenced_nonNull_native();
    v103 = *v21;
    OUTLINED_FUNCTION_112_1();
    sub_1DC3D7184(v67, v68, v69);
    *v21 = v103;

    (v43)(&v105, 0);
    v70 = sub_1DC515A3C();
    v71 = *(v70 + 16);
    if (v71)
    {
      v98 = *(*v96 + 848);
      v72 = v70 + 32;
      v95 = *(*v96 + 584);
      OUTLINED_FUNCTION_62_7(v107);
      do
      {
        OUTLINED_FUNCTION_377(v72, &v105);
        v103 = v105;
        sub_1DC28F9B0(&v106, v104);
        sub_1DC515A5C();
        sub_1DC515A6C();
        OUTLINED_FUNCTION_213(&v108);
        v73 = OUTLINED_FUNCTION_63_0();
        v98(v73);

        OUTLINED_FUNCTION_37(&a11);
        v75 = v74();
        if (v95(v75))
        {
          v76 = OUTLINED_FUNCTION_311();
          sub_1DC28F414(v76, v77, &qword_1ECC7D380, &qword_1DC5283E0);
          sub_1DC3D7F84(v101, &selRef_tcuId);
          sub_1DC3BF144();
        }

        else
        {
          sub_1DC515A5C();
          v78 = OUTLINED_FUNCTION_311();
          sub_1DC28F414(v78, v79, &qword_1ECC7D380, &qword_1DC5283E0);
          sub_1DC3D7F84(v101, &selRef_tcuId);
          OUTLINED_FUNCTION_63_0();
          sub_1DC3BFAC0();
        }

        OUTLINED_FUNCTION_37(v107);
        v80(&v103);
        __swift_destroy_boxed_opaque_existential_1Tm(v102);
        sub_1DC28EB30(&v103, &qword_1ECC7D380, &qword_1DC5283E0);
        v72 += 48;
        --v71;
      }

      while (v71);
    }
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_32_5();
    v81 = OUTLINED_FUNCTION_261();
    v82(v81);
    v83 = sub_1DC516F6C();
    v84 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v84))
    {
      v85 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v85);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v86, v87, v88, v89, v90, 2u);
      OUTLINED_FUNCTION_31();
    }

    v91 = *(v27 + 8);
    v92 = OUTLINED_FUNCTION_35_0();
    v93(v92);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3BF144()
{
  OUTLINED_FUNCTION_33();
  v3 = v1;
  v109 = v5;
  v110 = v4;
  v111 = v6;
  OUTLINED_FUNCTION_155();
  v7 = sub_1DC5162DC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v108 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v102 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  v104 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v100 - v16;
  v18 = sub_1DC516F7C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_15();
  v100 = v24;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  v112 = v26;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23_1();
  v101 = v28;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_38_3();
  sub_1DC28D414();
  OUTLINED_FUNCTION_4_2();
  v105 = v30;
  v106 = v31;
  v107 = v32;
  (v31)(v2);
  v33 = v0;
  v34 = sub_1DC516F6C();
  v35 = sub_1DC517B9C();

  v36 = os_log_type_enabled(v34, v35);
  v113 = v1;
  v114 = v7;
  v115 = v21;
  v116 = v33;
  v103 = v17;
  if (v36)
  {
    v37 = OUTLINED_FUNCTION_140();
    v117 = OUTLINED_FUNCTION_143();
    *v37 = 136315394;
    *(v37 + 4) = sub_1DC291244(0xD00000000000003BLL, 0x80000001DC5450C0, &v117);
    *(v37 + 12) = 2080;
    sub_1DC515A6C();
    OUTLINED_FUNCTION_0_49();
    sub_1DC3D8E40(v38, v39);
    sub_1DC51823C();
    OUTLINED_FUNCTION_193();
    v40 = v17;
    v41 = v108;
    (*(v108 + 8))(v40, v7);
    v42 = OUTLINED_FUNCTION_74();
    v45 = sub_1DC291244(v42, v43, v44);
    v3 = v113;

    *(v37 + 14) = v45;
    _os_log_impl(&dword_1DC287000, v34, v35, "#assume-persona: %s received message for userId:%s", v37, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_14_5();

    v46 = v115;
  }

  else
  {
    v41 = v108;

    v46 = v21;
  }

  v47 = *(v46 + 8);
  v48 = v2;
  v49 = v18;
  v47(v48, v18);
  v50 = v41;
  if (*(v3 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_userIdDict) && (sub_1DC515A6C(), v51 = OUTLINED_FUNCTION_36(), v53 = sub_1DC3BF940(v51, v52), v54 = *(v41 + 8), v55 = OUTLINED_FUNCTION_357(), v54(v55), v53) && (v56 = sub_1DC3D7F84(v53, &selRef_personaIdentifier), v57))
  {
    v58 = v56;
    v59 = v57;
    sub_1DC5162CC();
    v60 = sub_1DC5162BC();
    v62 = v61;
    v63 = OUTLINED_FUNCTION_357();
    v54(v63);
    if (v58 == v60 && v59 == v62)
    {
    }

    else
    {
      OUTLINED_FUNCTION_147_0();
      v65 = sub_1DC51825C();

      v66 = v109;
      if ((v65 & 1) == 0)
      {
        v92 = v113;
        v93 = *(v113 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_cmdPersonaManager + 32);
        v94 = OUTLINED_FUNCTION_121_1((v113 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_cmdPersonaManager), *(v113 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_cmdPersonaManager + 24));
        MEMORY[0x1EEE9AC00](v94);
        v95 = v116;
        *(&v100 - 6) = v92;
        *(&v100 - 5) = v95;
        v96 = v111;
        *(&v100 - 4) = v110;
        *(&v100 - 3) = v96;
        *(&v100 - 2) = v66;
        v97 = *(v93 + 8);
        v98 = OUTLINED_FUNCTION_147_0();
        v99(v98);

        goto LABEL_18;
      }
    }

    v106(v101, v105, v49);
    v83 = sub_1DC516F6C();
    v84 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v84))
    {
      v85 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v85);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v86, v87, v88, v89, v90, 2u);
      OUTLINED_FUNCTION_31();
    }

    v91 = OUTLINED_FUNCTION_42_2();
    (v47)(v91);
    sub_1DC515A5C();
  }

  else
  {
    v106(v112, v105, v18);
    v67 = v116;
    v68 = sub_1DC516F6C();
    v69 = sub_1DC517BAC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = OUTLINED_FUNCTION_63();
      v108 = v18;
      v116 = v47;
      v71 = v70;
      v72 = OUTLINED_FUNCTION_82();
      v117 = v72;
      *v71 = 136315138;
      sub_1DC515A6C();
      OUTLINED_FUNCTION_0_49();
      sub_1DC3D8E40(v73, v74);
      sub_1DC51823C();
      OUTLINED_FUNCTION_193();
      v75 = *(v50 + 8);
      v76 = OUTLINED_FUNCTION_265();
      v77(v76);
      v78 = OUTLINED_FUNCTION_74();
      v81 = sub_1DC291244(v78, v79, v80);

      *(v71 + 4) = v81;
      _os_log_impl(&dword_1DC287000, v68, v69, "#assume-persona: couldn't find personaId for %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      OUTLINED_FUNCTION_146_3();
      OUTLINED_FUNCTION_102();

      v116(v112, v108);
    }

    else
    {

      v82 = OUTLINED_FUNCTION_184_1();
      v47(v82, v18);
    }

    sub_1DC515A5C();
  }

  sub_1DC3BFAC0();

LABEL_18:
  OUTLINED_FUNCTION_34();
}

void *sub_1DC3BF940(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DC3D67C4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1DC3BF988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DC2AEB04(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
    sub_1DC28F414(v9 + *(*(v10 - 8) + 72) * v8, a4, &qword_1ECC7D320, &qword_1DC5283A0);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

double sub_1DC3BFA68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DC2AEB04(a1, a2), (v7 & 1) != 0))
  {
    sub_1DC2C5FC4(*(a3 + 56) + 40 * v6, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void sub_1DC3BFAC0()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v22 = v7;
  v9 = v8;
  v11 = v10;
  v12 = sub_1DC5168FC();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  sub_1DC2C5FC4(v2 + 16, v23);
  v18 = v24;
  v19 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v19 + 56))(v2 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId, *(v2 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId), *(v2 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8), v11, v9, v4, v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  sub_1DC2A0AE0();
  OUTLINED_FUNCTION_19_1();
  v20(v1);
  v21 = swift_allocObject();
  v21[2] = v2;
  v21[3] = v11;
  v21[4] = v9;
  v21[5] = v22;
  v21[6] = v6;

  sub_1DC5168CC();

  (*(v15 + 8))(v1, v12);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3BFC7C()
{
  OUTLINED_FUNCTION_33();
  v4 = v1;
  OUTLINED_FUNCTION_38_2();
  v5 = sub_1DC516F7C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_313(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D388, &unk_1DC5283E8);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_24_0();
  v17 = sub_1DC5162DC();
  v18 = OUTLINED_FUNCTION_0(v17);
  v61 = v19;
  v62 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_55_2();
  v23 = sub_1DC5152BC();
  if (!v24)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v40(v2);
    v41 = sub_1DC516F6C();
    v42 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v42))
    {
      v43 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v43);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
      OUTLINED_FUNCTION_31();
    }

    v49 = *(v8 + 8);
    v50 = OUTLINED_FUNCTION_212();
    goto LABEL_9;
  }

  v25 = v23;
  v26 = v24;
  OUTLINED_FUNCTION_223_1();
  v28 = (*(v27 + 392))();
  v29 = OUTLINED_FUNCTION_149();
  sub_1DC3BF988(v29, v30, v28, v31);

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  if (!__swift_getEnumTagSinglePayload(v3, 1, v32))
  {
    (*(v61 + 16))(v0, v3 + *(v32 + 64), v62);
    sub_1DC28EB30(v3, &qword_1ECC7D388, &unk_1DC5283E8);
    OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_112_1();
    v52();
    OUTLINED_FUNCTION_343();
    v54 = *(v53 + 824);
    v55 = OUTLINED_FUNCTION_149();
    v56(v55);

    v57 = *(v61 + 8);
    v50 = OUTLINED_FUNCTION_265();
LABEL_9:
    v51(v50);
    goto LABEL_12;
  }

  sub_1DC28EB30(v3, &qword_1ECC7D388, &unk_1DC5283E8);
  sub_1DC28D414();
  v33 = v8;
  OUTLINED_FUNCTION_44_8();
  v34();

  v35 = sub_1DC516F6C();
  v36 = sub_1DC517BAC();

  if (os_log_type_enabled(v35, v36))
  {
    OUTLINED_FUNCTION_63();
    v37 = OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_332(v37);
    *v4 = 136315138;
    v39 = sub_1DC291244(v38, v26, &v63);

    *(v4 + 4) = v39;
    _os_log_impl(&dword_1DC287000, v35, v36, "handleTRPFinalizedMessage: Unable to find mapped userId for final tcuId=%s. Not updating TurnInputContainer.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_58();
  }

  else
  {
  }

  v58 = *(v33 + 8);
  v59 = OUTLINED_FUNCTION_265();
  v60(v59);
LABEL_12:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C0090()
{
  OUTLINED_FUNCTION_33();
  v5 = v0;
  v80 = sub_1DC5162DC();
  v6 = OUTLINED_FUNCTION_0(v80);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();
  v11 = sub_1DC5161DC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v78 = v13;
  v79 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_79();
  v16 = sub_1DC516F7C();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_142_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_94_1();
  sub_1DC3D5514();
  if (v25)
  {
    v26 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils + 32);
    OUTLINED_FUNCTION_121_1((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils), *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils + 24));
    v27 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
    v28 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8);
    OUTLINED_FUNCTION_340(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale);
    v29 = sub_1DC516A5C();
    sub_1DC28D414();
    OUTLINED_FUNCTION_56_3();
    if (v29)
    {
      v31 = OUTLINED_FUNCTION_233_0();
      v32(v31);
      v33 = sub_1DC516F6C();
      v34 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_25_0(v34))
      {
        v35 = OUTLINED_FUNCTION_35_8();
        *v35 = 0;
        _os_log_impl(&dword_1DC287000, v33, v34, "shouldDisableServerFallback return true for machineUtterance", v35, 2u);
        OUTLINED_FUNCTION_54_12();
      }

      v36 = *(v19 + 8);
      v37 = OUTLINED_FUNCTION_73();
      v39 = v38(v37);
      v40 = *(v5 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_instrumentationUtil);
      (*(*v5 + 656))(v39);
      OUTLINED_FUNCTION_349();
      sub_1DC515B5C();
      OUTLINED_FUNCTION_137();
      (*(v78 + 104))(v2, *MEMORY[0x1E69D0778], v79);
      v41 = *(*v40 + 144);
      v42 = OUTLINED_FUNCTION_46_6();
      v43(v42);

      (*(v78 + 8))(v2, v79);
    }

    else
    {
      v30(v4);
      v59 = sub_1DC516F6C();
      sub_1DC517B9C();
      OUTLINED_FUNCTION_116();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_52_1(v61);
        OUTLINED_FUNCTION_51_8(&dword_1DC287000, v62, v63, "Falling back to execute-NL-on-server path");
        OUTLINED_FUNCTION_58();
      }

      v64 = *(v19 + 8);
      v65 = OUTLINED_FUNCTION_265();
      v66(v65);
      sub_1DC3D1B58();
    }
  }

  else
  {
    sub_1DC28D414();
    v44 = OUTLINED_FUNCTION_276();
    v46 = v45;
    v47(v44);
    v48 = sub_1DC516F6C();
    v49 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_25_0(v49))
    {
      v50 = OUTLINED_FUNCTION_35_8();
      *v50 = 0;
      _os_log_impl(&dword_1DC287000, v48, v49, "Generating immediate NL message; Pommes will handle this machine utterance", v50, 2u);
      OUTLINED_FUNCTION_114_1();
    }

    v51 = OUTLINED_FUNCTION_210_1();
    v52 = v46;
    v54 = v53;
    (v53)(v51, v52);
    sub_1DC515B5C();
    OUTLINED_FUNCTION_194();
    sub_1DC515C5C();
    OUTLINED_FUNCTION_183();
    v56 = *(v55 + 792);
    v57 = OUTLINED_FUNCTION_42_2();
    v58(v57);
    OUTLINED_FUNCTION_283();

    (*(v8 + 8))(v3, v80);
    if (v1)
    {
      OUTLINED_FUNCTION_20_14((v5 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher));
      OUTLINED_FUNCTION_112_1();
      sub_1DC515D8C();
    }

    else
    {
      v67 = OUTLINED_FUNCTION_310();
      v68(v67);
      v69 = sub_1DC516F6C();
      v70 = sub_1DC517BAC();
      if (OUTLINED_FUNCTION_14_7(v70))
      {
        v71 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v71);
        OUTLINED_FUNCTION_27_16();
        _os_log_impl(v72, v73, v74, v75, v76, 2u);
        OUTLINED_FUNCTION_40_0();
      }

      v77 = OUTLINED_FUNCTION_258();
      v54(v77);
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3C060C()
{
  OUTLINED_FUNCTION_33();
  v4 = v0;
  v88 = sub_1DC5162DC();
  v5 = OUTLINED_FUNCTION_0(v88);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();
  v10 = sub_1DC5161DC();
  v11 = OUTLINED_FUNCTION_0(v10);
  v84 = v12;
  v86 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_7_21();
  v15 = sub_1DC516F7C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v83 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_142_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_94_1();
  sub_1DC3D5514();
  if (v25)
  {
    v26 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils + 32);
    OUTLINED_FUNCTION_121_1((v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils), *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils + 24));
    v27 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
    v28 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8);
    OUTLINED_FUNCTION_340(OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale);
    v29 = sub_1DC516A5C();
    sub_1DC28D414();
    OUTLINED_FUNCTION_56_3();
    if (v29)
    {
      v31 = OUTLINED_FUNCTION_233_0();
      v32(v31);
      v33 = sub_1DC516F6C();
      v34 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_25_0(v34))
      {
        v35 = OUTLINED_FUNCTION_35_8();
        *v35 = 0;
        _os_log_impl(&dword_1DC287000, v33, v34, "shouldDisableServerFallback return true for machineUtterance", v35, 2u);
        OUTLINED_FUNCTION_67();
      }

      v36 = *(v18 + 8);
      v37 = OUTLINED_FUNCTION_73();
      v39 = v38(v37);
      v40 = *(v4 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_instrumentationUtil);
      (*(*v4 + 656))(v39);
      OUTLINED_FUNCTION_349();
      sub_1DC515A5C();
      OUTLINED_FUNCTION_137();
      (*(v84 + 104))(v1, *MEMORY[0x1E69D0778], v86);
      v41 = *(*v40 + 144);
      v42 = OUTLINED_FUNCTION_46_6();
      v43(v42);

      v44 = *(v84 + 8);
      v45 = OUTLINED_FUNCTION_41();
      v46(v45);
    }

    else
    {
      v30(v3);
      v65 = sub_1DC516F6C();
      sub_1DC517B9C();
      OUTLINED_FUNCTION_116();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_52_1(v67);
        OUTLINED_FUNCTION_51_8(&dword_1DC287000, v68, v69, "Falling back to execute-NL-on-server path");
        OUTLINED_FUNCTION_58();
      }

      v70 = *(v18 + 8);
      v71 = OUTLINED_FUNCTION_265();
      v72(v71);
      sub_1DC3D1DC8();
    }
  }

  else
  {
    v87 = v7;
    sub_1DC28D414();
    v47 = OUTLINED_FUNCTION_276();
    v85 = v48;
    v50 = v49;
    v82 = v51;
    (v51)(v47);
    v52 = sub_1DC516F6C();
    v53 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_25_0(v53))
    {
      v54 = OUTLINED_FUNCTION_35_8();
      *v54 = 0;
      _os_log_impl(&dword_1DC287000, v52, v53, "Generating immediate NL message; Pommes will handle this machine utterance", v54, 2u);
      OUTLINED_FUNCTION_114_1();
    }

    v55 = *(v18 + 8);
    v56 = OUTLINED_FUNCTION_30();
    v81 = v50;
    v55(v56);
    v57 = sub_1DC515A5C();
    v59 = v58;
    v60 = sub_1DC515B2C();
    v62 = v61;
    sub_1DC515A6C();
    OUTLINED_FUNCTION_183();
    v64 = (*(v63 + 800))(v57, v59, v60, v62, v2);

    (*(v87 + 8))(v2, v88);
    if (v64)
    {
      OUTLINED_FUNCTION_20_14((v4 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher));
      OUTLINED_FUNCTION_112_1();
      sub_1DC515D8C();
    }

    else
    {
      v82(v83, v85, v81);
      v73 = sub_1DC516F6C();
      v74 = sub_1DC517BAC();
      if (OUTLINED_FUNCTION_14_7(v74))
      {
        v75 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v75);
        OUTLINED_FUNCTION_27_16();
        _os_log_impl(v76, v77, v78, v79, v80, 2u);
        OUTLINED_FUNCTION_40_0();
      }

      (v55)(v83, v81);
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3C0B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v24;
  a20 = v25;
  v207 = v20;
  v208 = v26;
  v221 = v27;
  v226 = v28;
  v29 = sub_1DC516F7C();
  v30 = OUTLINED_FUNCTION_2_29(v29, &a10);
  v206[2] = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
  OUTLINED_FUNCTION_10(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25();
  v213 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_25();
  v212 = v45;
  OUTLINED_FUNCTION_12();
  v229 = sub_1DC511E5C();
  v46 = OUTLINED_FUNCTION_0(v229);
  v225 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_271(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_25();
  v211 = v55;
  OUTLINED_FUNCTION_12();
  v56 = sub_1DC51107C();
  v57 = OUTLINED_FUNCTION_2_29(v56, &a13);
  v206[5] = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFB0, qword_1DC526050);
  OUTLINED_FUNCTION_10(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_25();
  v227 = v66;
  v67 = OUTLINED_FUNCTION_12();
  v210 = type metadata accessor for DialogState(v67);
  v68 = OUTLINED_FUNCTION_35(v210);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_2_1();
  v216 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3B0, &qword_1DC528400);
  OUTLINED_FUNCTION_10(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3B8, &qword_1DC528408);
  v78 = OUTLINED_FUNCTION_10(v77);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_62();
  v228 = v83;
  OUTLINED_FUNCTION_12();
  v84 = sub_1DC51122C();
  v85 = OUTLINED_FUNCTION_0(v84);
  v222 = v86;
  v223 = v85;
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_7_21();
  v89 = sub_1DC51164C();
  v90 = *(v89 - 8);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v92 = sub_1DC511EEC();
  v93 = OUTLINED_FUNCTION_0(v92);
  v95 = v94;
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101_0();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_138_1();
  sub_1DC511EDC();
  OUTLINED_FUNCTION_370("com.apple.search");
  sub_1DC51163C();
  v219 = v95;
  v99 = v95;
  v100 = v206[7];
  v101 = *(v99 + 16);
  v215 = v20;
  v220 = v92;
  v102 = v92;
  v103 = v20;
  v101(v21, v20, v102);
  sub_1DC51162C();
  sub_1DC51121C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D150, qword_1DC526DD8);
  v104 = *(v90 + 72);
  v105 = v23;
  v106 = *(v90 + 80);
  OUTLINED_FUNCTION_33_17();
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_1DC522F20;
  v217 = v90;
  v218 = v89;
  v108 = *(v90 + 16);
  v214 = v22;
  v108(v107 + v21, v22, v89);
  sub_1DC51100C();
  sub_1DC5111DC();
  v109 = *(v20 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputManager);
  OUTLINED_FUNCTION_12_0();
  v111 = v208;
  v112 = (*(v110 + 104))();
  v113 = OUTLINED_FUNCTION_110(v112);
  (*(v114 + 136))(v113);
  OUTLINED_FUNCTION_149_0();

  sub_1DC3C1830(v21, v100);

  v115 = sub_1DC51119C();
  v116 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v116, v117, v115);
  if (v118)
  {
    sub_1DC28EB30(v100, &qword_1ECC7D3B0, &qword_1DC528400);
    v120 = 1;
  }

  else
  {
    v21 = v228;
    sub_1DC51112C();
    OUTLINED_FUNCTION_7_1(v115);
    (*(v119 + 8))(v100, v115);
    v120 = 0;
  }

  v121 = sub_1DC5112EC();
  OUTLINED_FUNCTION_214_0();
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v121);
  OUTLINED_FUNCTION_193_0(&a15);
  sub_1DC28F414(v125, v126, v127, v128);
  v129 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v129, v130, v121);
  if (v118)
  {
    sub_1DC28EB30(v120, &qword_1ECC7D3B8, &qword_1DC528408);
    sub_1DC5119DC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v134);
  }

  else
  {
    OUTLINED_FUNCTION_58_4(&a11);
    sub_1DC51129C();
    OUTLINED_FUNCTION_7_1(v121);
    v136 = *(v135 + 8);
    v137 = OUTLINED_FUNCTION_48_0();
    v138(v137);
    v139 = sub_1DC51104C();
    OUTLINED_FUNCTION_62_0(&a12);
    v140(v21, v206[6]);
    OUTLINED_FUNCTION_22_13();
    sub_1DC3C18F8(v139, v141, v227);
  }

  v142 = v224;
  v143 = OUTLINED_FUNCTION_43();
  sub_1DC28F414(v143, v144, v145, v146);
  v147 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v147, v148, v121);
  if (v118)
  {
    sub_1DC28EB30(v209, &qword_1ECC7D3B8, &qword_1DC528408);
  }

  else
  {
    sub_1DC5112BC();
    OUTLINED_FUNCTION_7_1(v121);
    v150 = *(v149 + 8);
    v151 = OUTLINED_FUNCTION_48_0();
    v152(v151);
  }

  sub_1DC51190C();
  OUTLINED_FUNCTION_292();
  OUTLINED_FUNCTION_214_0();
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
  sub_1DC3B3BC0(v227, v211, v216);
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v229);
  OUTLINED_FUNCTION_144_2();
  (*(v160 + 1000))(v212);
  sub_1DC28EB30(v212, &qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_16_11();
  sub_1DC3D8B40(v216, v213);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v210);
  OUTLINED_FUNCTION_144_2();
  v165 = (*(v164 + 1008))(v213);
  v167 = v166;
  v168 = sub_1DC28EB30(v213, &qword_1ECC7D390, &qword_1DC527790);
  v169 = *(v103 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled);
  MEMORY[0x1EEE9AC00](v168);
  v170 = v226;
  v206[-8] = v103;
  v206[-7] = v170;
  v206[-6] = v221;
  v206[-5] = v105;
  v206[-4] = v111;
  v206[-3] = v142;
  v206[-2] = v165;
  v206[-1] = v167;
  if (v171 == 1)
  {
    v172 = objc_allocWithZone(sub_1DC515A8C());
    OUTLINED_FUNCTION_43_12();
    v173 = sub_1DC515A7C();

    if (!v173)
    {
      sub_1DC28D414();
      OUTLINED_FUNCTION_58_4(&a9);
      v175 = *(v174 + 16);
      OUTLINED_FUNCTION_211_0();
      OUTLINED_FUNCTION_355();
      v176();

      v177 = sub_1DC516F6C();
      sub_1DC517BAC();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v178 = OUTLINED_FUNCTION_111();
        v230 = v178;
        *(v167 + 4) = OUTLINED_FUNCTION_366(4.8149e-34);
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v179, v180, v181, v182, v183, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v178);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();

        (*(v167 + 8))(v206[0], v206);
LABEL_18:
        OUTLINED_FUNCTION_1_32();
LABEL_20:
        sub_1DC3D8824();
        sub_1DC28EB30(v228, &qword_1ECC7D3B8, &qword_1DC528408);
        v202 = OUTLINED_FUNCTION_133_1();
        v203(v202);
        v204 = OUTLINED_FUNCTION_227_0();
        v205(v204);
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v184 = objc_allocWithZone(sub_1DC5156AC());
    OUTLINED_FUNCTION_43_12();
    v185 = sub_1DC5155EC();

    if (!v185)
    {
      sub_1DC28D414();
      OUTLINED_FUNCTION_58_4(&a9);
      v191 = *(v190 + 16);
      OUTLINED_FUNCTION_211_0();
      OUTLINED_FUNCTION_355();
      v192();

      v177 = sub_1DC516F6C();
      sub_1DC517BAC();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v193 = OUTLINED_FUNCTION_111();
        v230 = v193;
        *(v167 + 4) = OUTLINED_FUNCTION_366(4.8149e-34);
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v194, v195, v196, v197, v198, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v193);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();

        (*(v167 + 8))(v206[1], v206);
        goto LABEL_18;
      }

LABEL_19:

      v199 = *(v167 + 8);
      v200 = OUTLINED_FUNCTION_55();
      v201(v200);
      OUTLINED_FUNCTION_1_32();
      goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_1_32();
  sub_1DC3D8824();
  sub_1DC28EB30(v228, &qword_1ECC7D3B8, &qword_1DC528408);
  v186 = OUTLINED_FUNCTION_133_1();
  v187(v186);
  v188 = OUTLINED_FUNCTION_227_0();
  v189(v188);
LABEL_21:
  (*(v225 + 8))(v142, v229);
  (*(v222 + 8))(v105, v223);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3C1830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1DC51119C();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_1DC51119C();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_1DC3C18F8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    OUTLINED_FUNCTION_7_1(v6);
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v9, 1, v7);
}

void sub_1DC3C19A0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_186_0(v5, v6, v7, v8, v9, v10, v11, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_11_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_40_3();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  OUTLINED_FUNCTION_10(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_24_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_28_13();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_95();
  v33 = *MEMORY[0x1E69D0450];
  v34 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35(v34);
  (*(v35 + 104))(v3, v33, v34);
  v36 = OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_378(v36, v37, v38, v34);
  sub_1DC51573C();
  v39 = *(v0 + 56);
  v40 = *(v0 + 64);

  OUTLINED_FUNCTION_63_0();
  sub_1DC5156EC();
  v41 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v42 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35(v42);
  (*(v43 + 16))(v1, v0 + v41, v42);
  v44 = OUTLINED_FUNCTION_32_9();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v42);
  sub_1DC51576C();
  v47 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  v48 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8);

  OUTLINED_FUNCTION_63_0();
  sub_1DC51575C();

  sub_1DC5156CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D370, &unk_1DC5283D0);
  OUTLINED_FUNCTION_155();
  v49 = sub_1DC51122C();
  OUTLINED_FUNCTION_0(v49);
  v51 = *(v50 + 72);
  v52 = OUTLINED_FUNCTION_254();
  v53 = OUTLINED_FUNCTION_272(v52, xmmword_1DC522F20);
  v54(v53);
  sub_1DC5156DC();
  v55 = *MEMORY[0x1E69D0AA0];
  v56 = sub_1DC51170C();
  OUTLINED_FUNCTION_35(v56);
  (*(v57 + 104))(v4, v55, v56);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_372(v58, v59, v60);
  sub_1DC51570C();
  v61 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35(v61);
  (*(v62 + 16))(v2, v74, v61);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v61);
  sub_1DC51574C();
  v66 = sub_1DC511E5C();
  OUTLINED_FUNCTION_35(v66);
  v68 = *(v67 + 16);
  v69 = OUTLINED_FUNCTION_310();
  v70(v69);
  v71 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v71, v72, v73, v66);
  sub_1DC51571C();
  OUTLINED_FUNCTION_208_0();

  sub_1DC51572C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C1D74()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_186_0(v5, v6, v7, v8, v9, v10, v11, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_11_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_40_3();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  OUTLINED_FUNCTION_10(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_24_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_28_13();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEE8, &qword_1DC528550);
  OUTLINED_FUNCTION_10(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_95();
  v33 = *MEMORY[0x1E69D0450];
  v34 = sub_1DC515DBC();
  OUTLINED_FUNCTION_35(v34);
  (*(v35 + 104))(v3, v33, v34);
  v36 = OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_378(v36, v37, v38, v34);
  sub_1DC51566C();
  v39 = *(v0 + 56);
  v40 = *(v0 + 64);

  OUTLINED_FUNCTION_63_0();
  sub_1DC51561C();
  v41 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v42 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35(v42);
  (*(v43 + 16))(v1, v0 + v41, v42);
  v44 = OUTLINED_FUNCTION_32_9();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v42);
  sub_1DC51569C();
  v47 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  v48 = *(v0 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId + 8);

  OUTLINED_FUNCTION_63_0();
  sub_1DC51568C();

  sub_1DC5155FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D370, &unk_1DC5283D0);
  OUTLINED_FUNCTION_155();
  v49 = sub_1DC51122C();
  OUTLINED_FUNCTION_0(v49);
  v51 = *(v50 + 72);
  v52 = OUTLINED_FUNCTION_254();
  v53 = OUTLINED_FUNCTION_272(v52, xmmword_1DC522F20);
  v54(v53);
  sub_1DC51560C();
  v55 = *MEMORY[0x1E69D0AA0];
  v56 = sub_1DC51170C();
  OUTLINED_FUNCTION_35(v56);
  (*(v57 + 104))(v4, v55, v56);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_372(v58, v59, v60);
  sub_1DC51563C();
  v61 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35(v61);
  (*(v62 + 16))(v2, v74, v61);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v61);
  sub_1DC51567C();
  v66 = sub_1DC511E5C();
  OUTLINED_FUNCTION_35(v66);
  v68 = *(v67 + 16);
  v69 = OUTLINED_FUNCTION_310();
  v70(v69);
  v71 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v71, v72, v73, v66);
  sub_1DC51564C();
  OUTLINED_FUNCTION_208_0();

  sub_1DC51565C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C2148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v222 = v20;
  v242 = v25;
  v243 = v26;
  v229 = v27;
  v230 = v28;
  v234 = v29;
  v30 = sub_1DC516F7C();
  v31 = OUTLINED_FUNCTION_2_29(v30, &v247);
  v217 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
  OUTLINED_FUNCTION_10(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25();
  v228 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v46);
  v246 = sub_1DC511E5C();
  v47 = OUTLINED_FUNCTION_0(v246);
  v240 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_1();
  v239 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
  OUTLINED_FUNCTION_10(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14(v56);
  v57 = sub_1DC51107C();
  v58 = OUTLINED_FUNCTION_2_29(v57, &a9);
  v219 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_20_0(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFB0, qword_1DC526050);
  OUTLINED_FUNCTION_10(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_25();
  v68 = OUTLINED_FUNCTION_14(v67);
  v226 = type metadata accessor for DialogState(v68);
  v69 = OUTLINED_FUNCTION_35(v226);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_2_1();
  v245 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3B0, &qword_1DC528400);
  OUTLINED_FUNCTION_10(v73);
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20_0(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3B8, &qword_1DC528408);
  v79 = OUTLINED_FUNCTION_10(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_62();
  v244 = v84;
  OUTLINED_FUNCTION_12();
  v85 = sub_1DC51122C();
  v86 = OUTLINED_FUNCTION_0(v85);
  v237 = v87;
  v238 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v90 = sub_1DC51164C();
  v91 = *(v90 - 8);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_9_24();
  v93 = sub_1DC511EEC();
  v94 = OUTLINED_FUNCTION_0(v93);
  v96 = v95;
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_8();
  v101 = v99 - v100;
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_138_1();
  sub_1DC511EDC();
  OUTLINED_FUNCTION_370("com.apple.search");
  sub_1DC51163C();
  v235 = v96;
  v103 = v96;
  v104 = v221;
  v105 = *(v103 + 16);
  v232 = v20;
  v236 = v93;
  v105(v101, v20, v93);
  sub_1DC51162C();
  sub_1DC51121C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D150, qword_1DC526DD8);
  v106 = *(v91 + 72);
  v107 = *(v91 + 80);
  OUTLINED_FUNCTION_33_17();
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1DC522F20;
  v233 = v91;
  v109 = *(v91 + 16);
  v231 = v21;
  v223 = v90;
  v109(v108 + v90 - 8, v21, v90);
  sub_1DC51100C();
  v241 = v22;
  sub_1DC5111DC();
  v110 = v222;
  v111 = *(v222 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputManager);
  OUTLINED_FUNCTION_12_0();
  v113 = (*(v112 + 104))(v243);
  v114 = OUTLINED_FUNCTION_110(v113);
  v116 = (*(v115 + 136))(v114);

  sub_1DC3C1830(v116, v104);

  v117 = sub_1DC51119C();
  v118 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v118, v119, v117);
  if (v120)
  {
    sub_1DC28EB30(v104, &qword_1ECC7D3B0, &qword_1DC528400);
    v122 = 1;
  }

  else
  {
    sub_1DC51112C();
    OUTLINED_FUNCTION_7_1(v117);
    (*(v121 + 8))(v104, v117);
    v122 = 0;
  }

  v123 = sub_1DC5112EC();
  OUTLINED_FUNCTION_214_0();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v123);
  OUTLINED_FUNCTION_193_0(&a11);
  sub_1DC28F414(v127, v128, v129, v130);
  OUTLINED_FUNCTION_30_8(v122);
  v131 = v239;
  if (v120)
  {
    sub_1DC28EB30(v122, &qword_1ECC7D3B8, &qword_1DC528408);
    sub_1DC5119DC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
  }

  else
  {
    OUTLINED_FUNCTION_76_1(&v248);
    sub_1DC51129C();
    OUTLINED_FUNCTION_7_1(v123);
    v137 = *(v136 + 8);
    v138 = OUTLINED_FUNCTION_74();
    v139(v138);
    v140 = sub_1DC51104C();
    OUTLINED_FUNCTION_62_0(&v249);
    v141(v93, v220);
    OUTLINED_FUNCTION_22_13();
    sub_1DC3C18F8(v140, v142, v225);
  }

  sub_1DC28F414(v244, v224, &qword_1ECC7D3B8, &qword_1DC528408);
  OUTLINED_FUNCTION_30_8(v224);
  if (v120)
  {
    sub_1DC28EB30(v224, &qword_1ECC7D3B8, &qword_1DC528408);
  }

  else
  {
    sub_1DC5112BC();
    OUTLINED_FUNCTION_7_1(v123);
    v144 = *(v143 + 8);
    v145 = OUTLINED_FUNCTION_212();
    v146(v145);
  }

  sub_1DC51190C();
  OUTLINED_FUNCTION_214_0();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
  v151 = OUTLINED_FUNCTION_16();
  sub_1DC3B3BC0(v151, v152, v153);
  v154 = v227;
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v155, v156, v157, v246);
  OUTLINED_FUNCTION_189_0();
  (*(v158 + 1000))(v227);
  sub_1DC28EB30(v227, &qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_16_11();
  sub_1DC3D8B40(v245, v228);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v159, v160, v161, v226);
  OUTLINED_FUNCTION_189_0();
  (*(v162 + 1008))(v228);
  OUTLINED_FUNCTION_193();
  v163 = sub_1DC28EB30(v228, &qword_1ECC7D390, &qword_1DC527790);
  MEMORY[0x1EEE9AC00](v163);
  v164 = v241;
  v216[-4] = v241;
  v216[-3] = v131;
  v216[-2] = v110;
  v216[-1] = v154;
  v165 = sub_1DC51616C();
  v166 = objc_allocWithZone(v165);
  OUTLINED_FUNCTION_348();
  v167 = sub_1DC5160FC();

  v168 = MEMORY[0x1E69E7CC8];
  v248 = MEMORY[0x1E69E7CC8];
  if (v167)
  {
    v169 = v167;
    OUTLINED_FUNCTION_1_31();
    swift_isUniquelyReferenced_nonNull_native();
    v247 = v168;
    sub_1DC3D7048(v165, v229, v230);
    v248 = v247;
  }

  else
  {
    v171 = MEMORY[0x1E69E7CC8];
    v170 = sub_1DC2AEB04(v229, v230);
    if (v172)
    {
      OUTLINED_FUNCTION_334();
      swift_isUniquelyReferenced_nonNull_native();
      v247 = v171;
      v173 = v171[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3C0, &qword_1DC528410);
      v164 = v241;
      sub_1DC517FFC();
      v174 = v247;
      v175 = *(v247[6] + 16 * v216 + 8);

      v176 = *(v174[7] + 8 * v216);
      sub_1DC51800C();

      v248 = v174;
    }
  }

  v177 = *(v110 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled);
  MEMORY[0x1EEE9AC00](v170);
  v179 = v242;
  v178 = v243;
  v216[-6] = v110;
  v216[-5] = v179;
  v216[-4] = v234;
  v216[-3] = v178;
  v216[-2] = &v248;
  v216[-1] = v168;
  if (v180 == 1)
  {
    v181 = objc_allocWithZone(sub_1DC5155BC());
    OUTLINED_FUNCTION_43_12();
    if (!sub_1DC51552C())
    {
      sub_1DC28D414();
      v182 = v217;
      OUTLINED_FUNCTION_32_5();
      v183 = OUTLINED_FUNCTION_211_0();
      v184 = v218;
      v185(v183);

      v186 = sub_1DC516F6C();
      sub_1DC517BAC();
      OUTLINED_FUNCTION_354();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v187 = v182;
        v188 = OUTLINED_FUNCTION_73_5();
        v247 = v188;
        *(v168 + 4) = OUTLINED_FUNCTION_367(4.8149e-34);
        OUTLINED_FUNCTION_27_16();
        _os_log_impl(v189, v190, v191, v192, v193, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v188);
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_40_0();

        (*(v187 + 8))(v216[0], v184);
LABEL_23:
        OUTLINED_FUNCTION_1_32();
        sub_1DC3D8824();
        sub_1DC28EB30(v244, &qword_1ECC7D3B8, &qword_1DC528408);
        v212 = OUTLINED_FUNCTION_260();
        v213(v212);
        v214 = OUTLINED_FUNCTION_133_1();
        v215(v214);
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v194 = objc_allocWithZone(sub_1DC51539C());
    OUTLINED_FUNCTION_43_12();
    if (!sub_1DC51530C())
    {
      sub_1DC28D414();
      v182 = v217;
      OUTLINED_FUNCTION_32_5();
      v199 = OUTLINED_FUNCTION_211_0();
      v200 = v218;
      v201(v199);

      v186 = sub_1DC516F6C();
      sub_1DC517BAC();
      OUTLINED_FUNCTION_354();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v202 = v182;
        v203 = OUTLINED_FUNCTION_73_5();
        v247 = v203;
        *(v168 + 4) = OUTLINED_FUNCTION_367(4.8149e-34);
        OUTLINED_FUNCTION_27_16();
        _os_log_impl(v204, v205, v206, v207, v208, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v203);
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_40_0();

        (*(v202 + 8))(v216[1], v200);
        goto LABEL_23;
      }

LABEL_22:

      v209 = *(v182 + 8);
      v210 = OUTLINED_FUNCTION_159();
      v211(v210);
      goto LABEL_23;
    }
  }

  OUTLINED_FUNCTION_1_32();
  sub_1DC3D8824();
  sub_1DC28EB30(v244, &qword_1ECC7D3B8, &qword_1DC528408);
  v195 = OUTLINED_FUNCTION_260();
  v196(v195);
  v197 = OUTLINED_FUNCTION_133_1();
  v198(v197);
LABEL_24:

  (*(v240 + 8))(v131, v246);
  (*(v237 + 8))(v164, v238);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3C2F2C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_10(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D418, &qword_1DC528438);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_28_13();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D4B0, &unk_1DC528580);
  OUTLINED_FUNCTION_10(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_95();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  OUTLINED_FUNCTION_10(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_24_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D370, &unk_1DC5283D0);
  v20 = sub_1DC51122C();
  OUTLINED_FUNCTION_0(v20);
  v22 = v21;
  v24 = *(v23 + 72);
  v25 = *(v21 + 80);
  OUTLINED_FUNCTION_337();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1DC522F20;
  (*(v22 + 16))(v26 + v0, v3, v20);
  sub_1DC51610C();
  v27 = *MEMORY[0x1E69D0AA0];
  v28 = sub_1DC51170C();
  OUTLINED_FUNCTION_35(v28);
  (*(v29 + 104))(v1, v27, v28);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v28);
  sub_1DC51612C();
  sub_1DC511EEC();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_378(v33, v34, v35, v36);
  sub_1DC51611C();
  sub_1DC5161DC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  sub_1DC51613C();
  v41 = sub_1DC511E5C();
  OUTLINED_FUNCTION_35(v41);
  v43 = *(v42 + 16);
  v44 = OUTLINED_FUNCTION_310();
  v45(v44);
  v46 = OUTLINED_FUNCTION_23_20();
  OUTLINED_FUNCTION_293(v46, v47, v48, v41);
  sub_1DC51614C();
  OUTLINED_FUNCTION_208_0();

  sub_1DC51615C();
  OUTLINED_FUNCTION_34();
}