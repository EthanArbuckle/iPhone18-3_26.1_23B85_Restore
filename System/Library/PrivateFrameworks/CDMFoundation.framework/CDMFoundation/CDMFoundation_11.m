uint64_t sub_1DC38155C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a2 + 40);
  sub_1DC5182FC();

  sub_1DC51769C();
  v12 = sub_1DC51833C();
  v13 = ~(-1 << *(a2 + 32));
  do
  {
    v14 = v12 & v13;
    if (((*(v6 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v15 = (*(a2 + 48) + 16 * v14);
    if (*v15 == v10 && v15[1] == v9)
    {
      break;
    }

    v17 = sub_1DC51825C();
    v12 = v14 + 1;
  }

  while ((v17 & 1) == 0);

  return 0;
}

uint64_t sub_1DC381694()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC526290;
  v1 = sub_1DC3EAB30();
  v3 = *v1;
  v2 = v1[1];
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;

  v4 = sub_1DC3EAB3C();
  v6 = *v4;
  v5 = v4[1];
  *(v0 + 48) = v6;
  *(v0 + 56) = v5;

  v7 = sub_1DC3EAB84();
  v9 = *v7;
  v8 = v7[1];
  *(v0 + 64) = v9;
  *(v0 + 72) = v8;

  v10 = sub_1DC3EAAD0();
  v12 = *v10;
  v11 = v10[1];
  *(v0 + 80) = v12;
  *(v0 + 88) = v11;

  v13 = sub_1DC3EAAE8();
  v15 = *v13;
  v14 = *(v13 + 1);
  *(v0 + 96) = v15;
  *(v0 + 104) = v14;

  v16 = sub_1DC3EAADC();
  v18 = *v16;
  v17 = v16[1];
  *(v0 + 112) = v18;
  *(v0 + 120) = v17;

  v19 = sub_1DC3EAB48();
  v21 = *v19;
  v20 = v19[1];
  *(v0 + 128) = v21;
  *(v0 + 136) = v20;

  v22 = sub_1DC3EAB54();
  v24 = *v22;
  v23 = v22[1];
  *(v0 + 144) = v24;
  *(v0 + 152) = v23;

  v25 = sub_1DC3EAB60();
  v27 = *v25;
  v26 = v25[1];
  *(v0 + 160) = v27;
  *(v0 + 168) = v26;

  v28 = sub_1DC3EAB0C();
  v30 = *v28;
  v29 = v28[1];
  *(v0 + 176) = v30;
  *(v0 + 184) = v29;

  v31 = sub_1DC3EAB18();
  v33 = *v31;
  v32 = v31[1];
  *(v0 + 192) = v33;
  *(v0 + 200) = v32;

  v34 = sub_1DC3EAAB8();
  v36 = *v34;
  v35 = v34[1];
  *(v0 + 208) = v36;
  *(v0 + 216) = v35;

  v37 = sub_1DC3EAAC4();
  v39 = *v37;
  v38 = v37[1];
  *(v0 + 224) = v39;
  *(v0 + 232) = v38;

  v40 = sub_1DC3EAAA0();
  v42 = *v40;
  v41 = v40[1];
  *(v0 + 240) = v42;
  *(v0 + 248) = v41;

  v43 = sub_1DC3EAA94();
  v45 = *v43;
  v44 = v43[1];
  *(v0 + 256) = v45;
  *(v0 + 264) = v44;

  v46 = sub_1DC3EAB90();
  v48 = *v46;
  v47 = v46[1];
  *(v0 + 272) = v48;
  *(v0 + 280) = v47;

  v49 = sub_1DC3EAB9C();
  v51 = *v49;
  v50 = v49[1];
  *(v0 + 288) = v51;
  *(v0 + 296) = v50;

  v52 = sub_1DC3EAAF4();
  v54 = *v52;
  v53 = v52[1];
  *(v0 + 304) = v54;
  *(v0 + 312) = v53;

  v55 = sub_1DC3EAB00();
  v57 = *v55;
  v56 = v55[1];
  *(v0 + 320) = v57;
  *(v0 + 328) = v56;
  qword_1ECC8F8D0 = v0;
}

uint64_t sub_1DC381824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v198 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14(&v167 - v7);
  v201 = sub_1DC5157EC();
  v8 = OUTLINED_FUNCTION_0(v201);
  v179 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v178 = &v167 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14(&v167 - v14);
  v191 = sub_1DC510FDC();
  v15 = OUTLINED_FUNCTION_0(v191);
  v182 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v19);
  v200 = sub_1DC51179C();
  v20 = OUTLINED_FUNCTION_0(v200);
  v188 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v199 = v24;
  v192 = sub_1DC51164C();
  v25 = OUTLINED_FUNCTION_0(v192);
  v184 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v29);
  v186 = sub_1DC51122C();
  v30 = OUTLINED_FUNCTION_0(v186);
  v187 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  v185 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v38);
  v194 = &v167 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  OUTLINED_FUNCTION_10(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v43);
  v193 = &v167 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v167 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v167 - v55;
  v57 = type metadata accessor for NLRouterNLParseResponse(0);
  v58 = OUTLINED_FUNCTION_35(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v61);
  v62 = sub_1DC516F5C();
  v63 = OUTLINED_FUNCTION_0(v62);
  v196 = v64;
  v197 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v68 = &v167 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v70 = sub_1DC2BE518();
  v71 = OUTLINED_FUNCTION_130();
  v195 = v68;
  v72 = v68;
  v73 = v69;
  sub_1DC2A2ED0("HeuristicRules.PlannerDeleteRule", 32, 2, v70, v71 & 1, v72);

  v74 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v74 + 32), v50, &qword_1ECC7C158, &unk_1DC5234A0);
  v75 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v50, 1, v75) == 1)
  {
    sub_1DC28EB30(v50, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v57);
LABEL_4:
    sub_1DC28EB30(v56, &qword_1ECC7C160, qword_1DC5233B0);
    v76 = v198;
    v77 = 1;
    v78 = v201;
    goto LABEL_17;
  }

  sub_1DC28F358(v50, v56, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC33F1E0(v50, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v56, 1, v57) == 1)
  {
    goto LABEL_4;
  }

  v79 = v189;
  sub_1DC2E53A4(v56, v189);
  v80 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v81 = sub_1DC3437AC();
  v83 = v82;
  if (v81 == sub_1DC312FB4(0) && v83 == v84)
  {

    goto LABEL_13;
  }

  v86 = sub_1DC51825C();

  if (v86)
  {
LABEL_13:
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v79, v93);
LABEL_14:
    v94 = v198;
    a1 = v201;
    goto LABEL_15;
  }

  v87 = v194;
  sub_1DC3EAD64(v194);
  v88 = type metadata accessor for QDContextState(0);
  if (__swift_getEnumTagSinglePayload(v87, 1, v88) == 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v79, v89);
    v90 = &qword_1ECC7BEB8;
    v91 = &unk_1DC527150;
    v92 = v87;
LABEL_20:
    sub_1DC28EB30(v92, v90, v91);
    goto LABEL_14;
  }

  v98 = v193;
  sub_1DC28F358(&v87[*(v88 + 24)], v193, &qword_1ECC7BEC0, &unk_1DC5221E0);
  sub_1DC33F1E0(v87, type metadata accessor for QDContextState);
  v99 = sub_1DC51724C();
  if (__swift_getEnumTagSinglePayload(v98, 1, v99) == 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v79, v100);
    v90 = &qword_1ECC7BEC0;
    v91 = &unk_1DC5221E0;
    v92 = v98;
    goto LABEL_20;
  }

  v170 = v80;
  v101 = sub_1DC51723C();
  v103 = v102;
  v104 = (*(*(v99 - 8) + 8))(v98, v99);
  if (qword_1ECC877A0 != -1)
  {
    goto LABEL_56;
  }

LABEL_22:
  v169 = v101;
  *&v203 = v101;
  *(&v203 + 1) = v103;
  MEMORY[0x1EEE9AC00](v104);
  *(&v167 - 2) = &v203;
  sub_1DC2CF098(sub_1DC2CF174, (&v167 - 4), v105);
  OUTLINED_FUNCTION_10_16();
  if ((v106 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v79, v132);

    goto LABEL_14;
  }

  v168 = v103;
  v167 = a1;
  v107 = 0;
  v108 = *v79;
  v175 = *(*v79 + 16);
  v173 = v187 + 16;
  v193 = v184 + 16;
  v194 = (v184 + 8);
  ++v188;
  ++v182;
  v174 = (v187 + 8);
  v94 = v198;
  a1 = v201;
  v79 = v192;
  v171 = v73;
  v172 = v108;
  v103 = v183;
  while (1)
  {
    if (v107 == v175)
    {
      goto LABEL_52;
    }

    if (v107 >= *(v108 + 16))
    {
      __break(1u);
LABEL_56:
      v104 = OUTLINED_FUNCTION_2_20();
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_11_17(&v206);
    (*(v111 + 16))(v101, v110 + v109 + *(v111 + 72) * v107, v80);
    v112 = *(sub_1DC5111AC() + 16);
    if (v112)
    {
      break;
    }

LABEL_41:
    ++v107;
    (*v174)(v101, v80);
    v108 = v172;
  }

  v176 = v107;
  OUTLINED_FUNCTION_11_17(&v205);
  v177 = v113;
  v115 = v113 + v114;
  v117 = *(v116 + 72);
  v118 = *(v116 + 16);
  while (1)
  {
    v118(v103, v115, v79);
    v101 = v103;
    if ((sub_1DC5114CC() & 1) == 0)
    {
      v128 = OUTLINED_FUNCTION_5_25();
      v129(v128);
      goto LABEL_37;
    }

    v80 = v199;
    sub_1DC51154C();
    v101 = v80;
    v119 = sub_1DC51177C();
    v120 = *v188;
    (*v188)(v80, v200);
    if ((v119 & 1) == 0)
    {
      goto LABEL_35;
    }

    v121 = type metadata accessor for NLRouterBypassUtils();
    v122 = v199;
    sub_1DC51154C();
    v80 = v190;
    sub_1DC51178C();
    v123 = v122;
    v79 = v192;
    v120(v123, v200);
    v101 = v121;
    v124 = sub_1DC307E5C();
    (*v182)(v80, v191);
    if (!v124)
    {
LABEL_35:
      v130 = OUTLINED_FUNCTION_5_25();
      v131(v130);
LABEL_36:
      a1 = v201;
      goto LABEL_37;
    }

    sub_1DC51478C();

    v125 = OUTLINED_FUNCTION_5_25();
    v126(v125);
    v202[0] = v203;
    v202[1] = v204;
    if (!*(&v204 + 1))
    {
      sub_1DC28EB30(v202, &qword_1ECC7D3F0, &qword_1DC5238B0);
      goto LABEL_36;
    }

    sub_1DC51491C();
    v127 = swift_dynamicCast();
    a1 = v201;
    if (v127)
    {
      break;
    }

LABEL_37:
    v115 += v117;
    if (!--v112)
    {

      v94 = v198;
      v73 = v171;
      OUTLINED_FUNCTION_10_16();
      v107 = v176;
      goto LABEL_41;
    }
  }

  (*v174)(v185, v186);
  sub_1DC3437AC();
  v133 = sub_1DC312F68();
  if (v133 == 4)
  {
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_9_18(v134, v135);
    OUTLINED_FUNCTION_12_16();
    v136 = v181;
    __swift_storeEnumTagSinglePayload(v181, 1, 1, a1);
    v94 = v198;
    goto LABEL_47;
  }

  v136 = v181;
  sub_1DC312E7C(v133, v181);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v136, 1, a1);
  v94 = v198;
  if (EnumTagSinglePayload != 1)
  {
    v140 = v179;
    v141 = *(v179 + 32);
    v142 = v180;
    v141(v180, v136, a1);
    v143 = type metadata accessor for HeuristicRoutingRequest(0);
    v144 = *(v143 + 36);
    v145 = v167 + *(v143 + 20);
    sub_1DC32FD38();
    if (v146)
    {
      v147 = v94;
      v148 = sub_1DC517B9C();
      v149 = sub_1DC2BE518();
      v150 = v178;
      (*(v140 + 16))(v178, v142, a1);
      if (os_log_type_enabled(v149, v148))
      {
        v151 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        *&v203 = v200;
        *v151 = 136315394;
        v152 = sub_1DC291244(v169, v168, &v203);

        *(v151 + 4) = v152;
        *(v151 + 12) = 2080;
        v154 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v153);
        v156 = v155;
        (*(v140 + 8))(v150, v201);
        v157 = sub_1DC291244(v154, v156, &v203);
        v158 = v198;

        *(v151 + 14) = v157;
        _os_log_impl(&dword_1DC287000, v149, v148, "In App: %s, matched a delete without an entity request, rerouting to: %s", v151, 0x16u);
        v159 = v200;
        swift_arrayDestroy();
        MEMORY[0x1E1298840](v159, -1, -1);
        v160 = v151;
        a1 = v201;
        MEMORY[0x1E1298840](v160, -1, -1);

        OUTLINED_FUNCTION_0_17();
        OUTLINED_FUNCTION_9_18(v161, v162);
      }

      else
      {

        OUTLINED_FUNCTION_12_16();
        (*(v140 + 8))(v150, a1);
        OUTLINED_FUNCTION_0_17();
        OUTLINED_FUNCTION_9_18(v165, v166);
        v158 = v147;
      }

      v141(v158, v142, a1);
      v76 = v158;
      v77 = 0;
      goto LABEL_16;
    }

    (*(v140 + 8))(v142, a1);
LABEL_52:
    OUTLINED_FUNCTION_12_16();
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_9_18(v163, v164);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_9_18(v138, v139);
  OUTLINED_FUNCTION_12_16();
LABEL_47:
  sub_1DC28EB30(v136, &qword_1ECC7CA40, &unk_1DC5233A0);
LABEL_15:
  v76 = v94;
  v77 = 1;
LABEL_16:
  v78 = a1;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v76, v77, 1, v78);
  v95 = sub_1DC2BE518();
  v96 = v195;
  sub_1DC2B8848();

  return (*(v196 + 8))(v96, v197);
}

void sub_1DC382748()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1DC5172AC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v56 - v12);
  v14 = sub_1DC51718C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v23 = OUTLINED_FUNCTION_20(v5);
  v58 = v25;
  v59 = v24;
  v25(v23, v1, v2);
  v26 = *(v5 + 88);
  v27 = OUTLINED_FUNCTION_74();
  if (v28(v27) == *MEMORY[0x1E69DAE18])
  {
    v29 = *(v5 + 96);
    v30 = OUTLINED_FUNCTION_74();
    v31(v30);
    v32 = *v13;
    v33 = swift_projectBox();
    (*(v17 + 16))(v22, v33, v14);

    v34 = sub_1DC51717C();
    v35 = *(v34 + 16);
    if (v35)
    {
      v56[1] = v22;
      v56[2] = v17;
      v36 = *(v5 + 80);
      v56[0] = v34;
      v37 = v34 + ((v36 + 32) & ~v36);
      v38 = *(v5 + 72);
      v56[3] = v14;
      v57 = v38;
      v39 = (v5 + 8);
      v40 = MEMORY[0x1E69E7CC0];
      do
      {
        v58(v10, v37, v2);
        sub_1DC382AC0();
        v42 = v41;
        v44 = v43;
        v45 = *v39;
        v46 = OUTLINED_FUNCTION_30();
        v47(v46);
        if (v44)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_1DC2ACCD4(0, *(v40 + 2) + 1, 1, v40);
          }

          v49 = *(v40 + 2);
          v48 = *(v40 + 3);
          if (v49 >= v48 >> 1)
          {
            v40 = sub_1DC2ACCD4((v48 > 1), v49 + 1, 1, v40);
          }

          *(v40 + 2) = v49 + 1;
          v50 = &v40[16 * v49];
          *(v50 + 4) = v42;
          *(v50 + 5) = v44;
        }

        v37 += v57;
        --v35;
      }

      while (v35);
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    if (*(v40 + 2))
    {
      v60 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
      sub_1DC2DFC38();
      sub_1DC5176AC();
    }

    v54 = OUTLINED_FUNCTION_15_9();
    v55(v54);
  }

  else
  {
    v51 = *(v5 + 8);
    v52 = OUTLINED_FUNCTION_74();
    v53(v52);
  }

  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_34();
}

void sub_1DC382AC0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v153 = sub_1DC5107AC();
  v2 = OUTLINED_FUNCTION_35(v153);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v151 = v6 - v5;
  OUTLINED_FUNCTION_12();
  v152 = sub_1DC5107BC();
  v7 = OUTLINED_FUNCTION_0(v152);
  v150 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v149 = v12 - v11;
  OUTLINED_FUNCTION_12();
  v157 = sub_1DC510CCC();
  v13 = OUTLINED_FUNCTION_0(v157);
  v155 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v154 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFE8, "¯");
  OUTLINED_FUNCTION_10(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  v156 = &v146 - v23;
  OUTLINED_FUNCTION_12();
  v24 = sub_1DC51078C();
  v25 = OUTLINED_FUNCTION_0(v24);
  v159 = v26;
  v160 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v158 = v30 - v29;
  OUTLINED_FUNCTION_12();
  v31 = sub_1DC51727C();
  v32 = OUTLINED_FUNCTION_0(v31);
  v147 = v33;
  v148 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v146 = v37 - v36;
  OUTLINED_FUNCTION_12();
  v38 = sub_1DC510AFC();
  v39 = OUTLINED_FUNCTION_0(v38);
  v161 = v40;
  v162 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_8();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v146 - v47;
  v49 = sub_1DC5172AC();
  v50 = OUTLINED_FUNCTION_0(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_1();
  v57 = (v56 - v55);
  v58 = sub_1DC51728C();
  v59 = OUTLINED_FUNCTION_0(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_8();
  v66 = (v64 - v65);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v146 - v68;
  (*(v52 + 16))(v57, v1, v49);
  if ((*(v52 + 88))(v57, v49) != *MEMORY[0x1E69DAE70])
  {
    (*(v52 + 8))(v57, v49);
    goto LABEL_16;
  }

  (*(v52 + 96))(v57, v49);
  v70 = *v57;
  v71 = swift_projectBox();
  v72 = v61[2];
  v72(v69, v71, v58);

  v72(v66, v69, v58);
  v73 = v61[11];
  v74 = OUTLINED_FUNCTION_152();
  v76 = v75(v74);
  if (v76 == *MEMORY[0x1E69DADC0])
  {
    v77 = OUTLINED_FUNCTION_7_13();
    v78(v77);
    v79 = *v66;
    v163 = 0;
    v164 = 0xE000000000000000;
    if (v79)
    {
      v80 = 1702195828;
    }

    else
    {
      v80 = 0x65736C6166;
    }

    if (v79)
    {
      v81 = 0xE400000000000000;
    }

    else
    {
      v81 = 0xE500000000000000;
    }

    MEMORY[0x1E1296160](v80, v81);

    goto LABEL_10;
  }

  v85 = v76;
  if (v76 == *MEMORY[0x1E69DADB0] || v76 == *MEMORY[0x1E69DADE0] || v76 == *MEMORY[0x1E69DADF8])
  {
    v86 = v61[1];
    v87 = OUTLINED_FUNCTION_30();
    v88(v87);
    goto LABEL_16;
  }

  if (v76 == *MEMORY[0x1E69DADF0])
  {
    v89 = v61[1];
    v90 = OUTLINED_FUNCTION_30();
    v91(v90);
    v92 = v61[12];
    v93 = OUTLINED_FUNCTION_74();
    v94(v93);
    v96 = *v66;
    v95 = v66[1];
    goto LABEL_16;
  }

  if (v76 == *MEMORY[0x1E69DADC8])
  {
    v97 = OUTLINED_FUNCTION_7_13();
    v98(v97);
    v100 = v161;
    v99 = v162;
    (*(v161 + 32))(v48, v66, v162);
    if (_MergedGlobals_11 != -1)
    {
      OUTLINED_FUNCTION_10_17();
    }

    v101 = qword_1EDAC9498;
    v102 = sub_1DC510A7C();
    v103 = [v101 stringFromDate_];

    sub_1DC51772C();
    OUTLINED_FUNCTION_22_10();

    (*(v100 + 8))(v48, v99);
    goto LABEL_10;
  }

  v104 = v162;
  if (v76 == *MEMORY[0x1E69DAD80])
  {
    v105 = OUTLINED_FUNCTION_7_13();
    v106(v105);
    v108 = v158;
    v107 = v159;
    v109 = v160;
    (*(v159 + 32))(v158, v66, v160);
    v110 = v154;
    sub_1DC3835B8();
    v111 = v156;
    sub_1DC510C9C();
    (*(v155 + 8))(v110, v157);
    if (__swift_getEnumTagSinglePayload(v111, 1, v104) == 1)
    {
      (*(v107 + 8))(v108, v109);
      v112 = v61[1];
      v113 = OUTLINED_FUNCTION_30();
      v114(v113);
      sub_1DC28EB30(v111, &qword_1ECC7CFE8, "¯");
      goto LABEL_16;
    }

    v118 = v161;
    v119 = *(v161 + 32);
    v120 = OUTLINED_FUNCTION_75();
    v121(v120);
    if (_MergedGlobals_11 != -1)
    {
      OUTLINED_FUNCTION_10_17();
    }

    v122 = qword_1EDAC9498;
    v123 = sub_1DC510A7C();
    v124 = [v122 stringFromDate_];

    sub_1DC51772C();
    OUTLINED_FUNCTION_22_10();

    (*(v118 + 8))(v45, v104);
    (*(v159 + 8))(v158, v160);
    goto LABEL_10;
  }

  if (v76 == *MEMORY[0x1E69DADB8])
  {
    goto LABEL_27;
  }

  if (v76 == *MEMORY[0x1E69DAD98])
  {
    v125 = OUTLINED_FUNCTION_7_13();
    v126(v125);
    (*(v150 + 32))(v149, v66, v152);
    sub_1DC51079C();
    sub_1DC383FB0(&qword_1ECC7CFF0, MEMORY[0x1E6968678]);
    sub_1DC51798C();
    OUTLINED_FUNCTION_22_10();
    v127 = OUTLINED_FUNCTION_15_9();
    v128(v127);
LABEL_10:
    v82 = v61[1];
    v83 = OUTLINED_FUNCTION_30();
    v84(v83);
    goto LABEL_16;
  }

  if (v76 == *MEMORY[0x1E69DAD60] || v76 == *MEMORY[0x1E69DAD78] || v76 == *MEMORY[0x1E69DAD70] || v76 == *MEMORY[0x1E69DAE10])
  {
LABEL_27:
    v115 = v61[1];
    v116 = OUTLINED_FUNCTION_30();
    v115(v116);
    v117 = OUTLINED_FUNCTION_74();
LABEL_28:
    v115(v117);
    goto LABEL_16;
  }

  if (v76 == *MEMORY[0x1E69DADE8])
  {
    v129 = v61;
    v130 = v61[12];
    v131 = OUTLINED_FUNCTION_152();
    v132(v131);
    v134 = v146;
    v133 = v147;
    v135 = v148;
    (*(v147 + 32))(v146, v66, v148);
    v136 = sub_1DC51726C();
    v137 = [v136 displayName];

    sub_1DC51772C();
    OUTLINED_FUNCTION_22_10();

    (*(v133 + 8))(v134, v135);
    v138 = v129[1];
    v139 = OUTLINED_FUNCTION_75();
    v140(v139);
    goto LABEL_16;
  }

  if (v76 == *MEMORY[0x1E69DADD0] || v76 == *MEMORY[0x1E69DADA8] || v76 == *MEMORY[0x1E69DAD90] || v76 == *MEMORY[0x1E69DAD58])
  {
    v115 = v61[1];
    v141 = OUTLINED_FUNCTION_75();
    v115(v141);
    v117 = OUTLINED_FUNCTION_152();
    goto LABEL_28;
  }

  v142 = *MEMORY[0x1E69DADD8];
  v143 = v61[1];
  v144 = OUTLINED_FUNCTION_75();
  v143(v144);
  if (v85 != v142)
  {
    v145 = OUTLINED_FUNCTION_152();
    v143(v145);
  }

LABEL_16:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3835B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D008, &qword_1DC5263A8);
  OUTLINED_FUNCTION_10(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = sub_1DC510CFC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  sub_1DC510CAC();
  sub_1DC510CDC();
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v14, v5, v6);
    return sub_1DC510CBC();
  }

  return result;
}

uint64_t sub_1DC3836E8()
{
  result = sub_1DC383708();
  qword_1EDAC9498 = result;
  return result;
}

uint64_t sub_1DC383708()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D008, &qword_1DC5263A8);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24_1();
  v5 = sub_1DC510CFC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1DC383DD8(0xD000000000000016, 0x80000001DC5427C0, v14);
  sub_1DC510CDC();
  result = __swift_getEnumTagSinglePayload(v0, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v13, v0, v5);
    v16 = sub_1DC510CEC();
    (*(v8 + 8))(v13, v5);
    [v14 setTimeZone_];

    return v14;
  }

  return result;
}

uint64_t sub_1DC38389C()
{
  v1 = sub_1DC5172AC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_1();
  v7 = sub_1DC5171AC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = OUTLINED_FUNCTION_20(v4);
  v17(v16, v0, v1);
  if ((*(v4 + 88))(v0, v1) == *MEMORY[0x1E69DAE20])
  {
    (*(v4 + 96))(v0, v1);
    v18 = *v0;
    v19 = swift_projectBox();
    (*(v10 + 16))(v15, v19, v7);

    v20 = sub_1DC51719C();
    (*(v10 + 8))(v15, v7);
  }

  else
  {
    (*(v4 + 8))(v0, v1);
    return 0;
  }

  return v20;
}

uint64_t sub_1DC383ACC(uint64_t *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v30 - v9;
  v11 = sub_1DC5172AC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = *(a2 + 8);
  v21 = *(a2 + 16);
  v22 = sub_1DC5171EC();
  sub_1DC30F668(v20, v21, v22, v10);

  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1DC28EB30(v10, &qword_1ECC7BFF8, &qword_1DC522580);
    v23 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_25_8();
    result = sub_1DC358334(0, 0xE000000000000000, v20, v21);
    *a1 = v31;
  }

  else
  {
    v30[1] = v2;
    (*(v14 + 32))(v19, v10, v11);
    sub_1DC382AC0();
    if (v26 || (sub_1DC382748(), v26))
    {
      v27 = v25;
      v28 = v26;
      v29 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_25_8();
      sub_1DC358334(v27, v28, v20, v21);
      *a1 = v31;
      return (*(v14 + 8))(v19, v11);
    }

    else
    {
      sub_1DC383F5C();
      swift_allocError();
      swift_willThrow();
      return (*(v14 + 8))(v19, v11);
    }
  }

  return result;
}

uint64_t sub_1DC383D1C(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v6 = 0;
  v7 = *(a4 + 16);
  for (i = (a4 + 40); ; i += 2)
  {
    if (v7 == v6)
    {
      return v13;
    }

    v9 = *(i - 1);
    v10 = *i;
    v12[0] = v6;
    v12[1] = v9;
    v12[2] = v10;

    a2(&v13, v12);
    if (v4)
    {
      break;
    }

    ++v6;
  }
}

void sub_1DC383DD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();

  [a3 setDateFormat_];
}

unint64_t sub_1DC383E5C()
{
  result = qword_1ECC7CFF8;
  if (!qword_1ECC7CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CFF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversionError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DC383F5C()
{
  result = qword_1ECC7D000;
  if (!qword_1ECC7D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D000);
  }

  return result;
}

uint64_t sub_1DC383FB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NLBridge.NLBridgeError.hashValue.getter()
{
  v1 = *v0;
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](v1);
  return sub_1DC51833C();
}

uint64_t sub_1DC3841E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  OUTLINED_FUNCTION_54_11();
  return sub_1DC28FB9C(v2 + v4, a2);
}

uint64_t sub_1DC384250(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_47_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v6));
  a3(a1, v3 + v6);
  return swift_endAccess();
}

uint64_t sub_1DC384348(char a1)
{
  v3 = qword_1ECC8F2E8;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC3843D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  OUTLINED_FUNCTION_54_11();
  return sub_1DC28F414(v4 + v8, a4, a2, a3);
}

uint64_t sub_1DC384434(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return v4;
}

void sub_1DC3844CC(uint64_t a1)
{
  v3 = qword_1ECC8F2B8;
  OUTLINED_FUNCTION_35_1();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t NLBridge.__allocating_init(_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  sub_1DC28FB9C(a3, v17);
  sub_1DC28FB9C(a6, v16);
  v15[3] = type metadata accessor for CDMProxy();
  v15[4] = &off_1F57F8558;
  v15[0] = sub_1DC34C254();
  v13 = (*(v6 + class metadata base offset for NLBridge + 384))(a1, a2, v17, a4, a5, v16, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v13;
}

void sub_1DC38472C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DC3847B0();
}

void sub_1DC3847B0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v93 = v3;
  v94 = v2;
  v86 = v4;
  v92 = v5;
  v6 = sub_1DC516A0C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_1DC516F7C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v24 = sub_1DC516F5C();
  v25 = OUTLINED_FUNCTION_0(v24);
  v90 = v26;
  v91 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v31 = (v30 - v29);
  v89 = v30 - v29;
  v32 = sub_1DC510B6C();
  OUTLINED_FUNCTION_64_4(v32);
  v33 = v0 + qword_1ECC8F2E0;
  *v33 = 0u;
  *(v33 + 16) = 0u;
  *(v33 + 32) = 0;
  v34 = qword_1ECC8F2C0;
  type metadata accessor for TurnInputManager();
  *(v0 + v34) = sub_1DC2A214C(5);
  v35 = (v0 + qword_1ECC8F2A0);
  v36 = type metadata accessor for SiriReferenceResolutionProxy();
  v37 = (*(v36 + 240))();
  v35[3] = v36;
  v35[4] = &off_1F57F6960;
  *v35 = v37;
  *(v1 + qword_1ECC8F2B0) = 2;
  v38 = qword_1ECC8F2E8;
  *(v1 + v38) = sub_1DC516ADC() & 1;
  v39 = sub_1DC5162DC();
  OUTLINED_FUNCTION_64_4(v39);
  *(v1 + qword_1ECC8F2B8) = 0;
  v40 = (v1 + qword_1ECC8F2D0);
  *v40 = 0;
  v40[1] = 0;
  v41 = qword_1ECC8F2F8;
  type metadata accessor for LVCHistory();
  v42 = sub_1DC2A2334();
  *(v1 + v41) = sub_1DC2A22A8(v42);
  v43 = qword_1ECC8F2F0;
  type metadata accessor for RVSHistory();
  v44 = sub_1DC2A2334();
  *(v1 + v43) = sub_1DC2A2388(v44);
  v88 = sub_1DC378240();
  static SignpostLogger.begin(_:enableTelemetry:)(*v88, v88[1], *(v88 + 16), 1, &unk_1F57F9698, &off_1F57F95E8, v31);
  sub_1DC28FB9C(v93, v1 + qword_1ECC8F2A8);
  sub_1DC28FB9C(v92, &v96);
  sub_1DC28FB9C(v94, &v95);
  swift_unknownObjectRetain();
  v87 = v86;
  v45 = sub_1DC28D414();
  (*(v18 + 16))(v23, v45, v15);
  sub_1DC51692C();
  v46 = *(v9 + 104);
  v85 = *MEMORY[0x1E69D2B08];
  (v46)(v14, *MEMORY[0x1E69D2B08], v6);
  sub_1DC515A2C();
  type metadata accessor for NLRequestProcessor();

  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v47 = *(v9 + 8);
  v48 = OUTLINED_FUNCTION_56();
  v47(v48);
  sub_1DC5152EC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  v49 = OUTLINED_FUNCTION_7_14();
  v46(v49);
  sub_1DC51540C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v50 = OUTLINED_FUNCTION_56();
  v47(v50);
  v51 = OUTLINED_FUNCTION_7_14();
  v46(v51);
  sub_1DC515BFC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v52 = OUTLINED_FUNCTION_56();
  v47(v52);
  v53 = OUTLINED_FUNCTION_7_14();
  v46(v53);
  sub_1DC5159BC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v54 = OUTLINED_FUNCTION_56();
  v47(v54);
  v55 = OUTLINED_FUNCTION_7_14();
  v46(v55);
  sub_1DC515D1C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v56 = OUTLINED_FUNCTION_56();
  v47(v56);
  v57 = *MEMORY[0x1E69D2B20];
  v58 = OUTLINED_FUNCTION_7_14();
  v46(v58);
  sub_1DC515A1C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v59 = OUTLINED_FUNCTION_56();
  v47(v59);
  v60 = OUTLINED_FUNCTION_7_14();
  v46(v60);
  sub_1DC5159DC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v61 = OUTLINED_FUNCTION_56();
  v47(v61);
  v62 = OUTLINED_FUNCTION_7_14();
  v46(v62);
  sub_1DC515CCC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v63 = OUTLINED_FUNCTION_56();
  v47(v63);
  v64 = OUTLINED_FUNCTION_7_14();
  v46(v64);
  sub_1DC515C1C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v65 = OUTLINED_FUNCTION_56();
  v47(v65);
  v66 = OUTLINED_FUNCTION_7_14();
  v46(v66);
  sub_1DC515C9C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v67 = OUTLINED_FUNCTION_56();
  v47(v67);
  v68 = OUTLINED_FUNCTION_7_14();
  v46(v68);
  sub_1DC515CDC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v69 = OUTLINED_FUNCTION_56();
  v47(v69);
  v70 = OUTLINED_FUNCTION_7_14();
  v46(v70);
  sub_1DC515C7C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v71 = OUTLINED_FUNCTION_56();
  v47(v71);
  v72 = OUTLINED_FUNCTION_7_14();
  v46(v72);
  sub_1DC5153AC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v73 = OUTLINED_FUNCTION_56();
  v47(v73);
  v84 = *MEMORY[0x1E69D2B18];
  v46(v14);
  sub_1DC5152DC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v74 = OUTLINED_FUNCTION_56();
  v47(v74);
  sub_1DC5161AC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC5161FC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC5153FC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC51529C();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC515D3C();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC515D0C();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC515BEC();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  sub_1DC51520C();
  OUTLINED_FUNCTION_9_5();
  sub_1DC516A6C();
  (v46)(v14, *MEMORY[0x1E69D2B10], v6);
  sub_1DC515ACC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v75 = OUTLINED_FUNCTION_56();
  v47(v75);
  (v46)(v14, v84, v6);
  sub_1DC5151DC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v76 = OUTLINED_FUNCTION_56();
  v47(v76);
  v77 = OUTLINED_FUNCTION_7_14();
  v46(v77);
  sub_1DC515A4C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v78 = OUTLINED_FUNCTION_56();
  v47(v78);
  v79 = OUTLINED_FUNCTION_7_14();
  v46(v79);
  sub_1DC5152CC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v80 = OUTLINED_FUNCTION_56();
  v47(v80);
  (v46)(v14, v85, v6);
  sub_1DC515AFC();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v81 = OUTLINED_FUNCTION_56();
  v47(v81);
  v82 = OUTLINED_FUNCTION_7_14();
  v46(v82);
  sub_1DC515B4C();
  OUTLINED_FUNCTION_3_20();
  sub_1DC51691C();
  v83 = OUTLINED_FUNCTION_56();
  v47(v83);
  static SignpostLogger.end(_:_:)(v89, *v88, v88[1], *(v88 + 16), &unk_1F57F9698, &off_1F57F95E8);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v94);
  __swift_destroy_boxed_opaque_existential_1Tm(v92);
  (*(v90 + 8))(v89, v91);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC385820()
{
  sub_1DC28EB30(v0 + qword_1ECC8F2C8, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28EB30(v0 + qword_1ECC8F2E0, &qword_1ECC7C928, &qword_1DC523AB8);
  v1 = *(v0 + qword_1ECC8F2C0);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1ECC8F2A8));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1ECC8F2A0));
  sub_1DC28EB30(v0 + qword_1ECC8F2D8, &qword_1ECC7D010, &qword_1DC5263B0);

  v2 = *(v0 + qword_1ECC8F2D0 + 8);

  v3 = *(v0 + qword_1ECC8F2F8);

  v4 = *(v0 + qword_1ECC8F2F0);
}

uint64_t NLBridge.deinit()
{
  v1 = v0;
  v2 = qword_1ECC8F2A8;
  swift_beginAccess();
  sub_1DC28FB9C(v1 + v2, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v4 + 72))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v5 = sub_1DC51694C();
  sub_1DC28EB30(v5 + qword_1ECC8F2C8, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28EB30(v5 + qword_1ECC8F2E0, &qword_1ECC7C928, &qword_1DC523AB8);
  v6 = *(v5 + qword_1ECC8F2C0);

  __swift_destroy_boxed_opaque_existential_1Tm((v5 + qword_1ECC8F2A8));
  __swift_destroy_boxed_opaque_existential_1Tm((v5 + qword_1ECC8F2A0));
  sub_1DC28EB30(v5 + qword_1ECC8F2D8, &qword_1ECC7D010, &qword_1DC5263B0);

  v7 = *(v5 + qword_1ECC8F2D0 + 8);

  v8 = *(v5 + qword_1ECC8F2F8);

  v9 = *(v5 + qword_1ECC8F2F0);

  return v5;
}

uint64_t NLBridge.__deallocating_deinit()
{
  v0 = NLBridge.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1DC385AE0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  v12 = sub_1DC516F7C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_6();
  sub_1DC28D414();
  v18 = OUTLINED_FUNCTION_20(v15);
  v19(v18);
  v20 = v2;
  v21 = sub_1DC516F6C();
  v22 = sub_1DC517B9C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_63();
    v39 = v11;
    v24 = v23;
    v25 = OUTLINED_FUNCTION_249();
    *v24 = 138412290;
    *(v24 + 4) = v20;
    *v25 = v20;
    v26 = v20;
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v27, v28, "NLBridge received message: %@");
    sub_1DC28EB30(v25, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v11 = v39;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  (*(v15 + 8))(v0, v12);
  sub_1DC5151EC();
  v29 = sub_1DC5162DC();
  if (__swift_getEnumTagSinglePayload(v9, 1, v29) == 1)
  {
    OUTLINED_FUNCTION_183();
    (*(v30 + class metadata base offset for NLBridge + 264))();
    if (__swift_getEnumTagSinglePayload(v9, 1, v29) != 1)
    {
      sub_1DC28EB30(v9, &qword_1ECC7D010, &qword_1DC5263B0);
    }
  }

  else
  {
    (*(*(v29 - 8) + 32))(v11, v9, v29);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v29);
  }

  v34 = OUTLINED_FUNCTION_59_5(*v0 + class metadata base offset for NLBridge);
  v35(v34);
  v36 = *(*v0 + class metadata base offset for NLBridge + 296);
  v37 = v20;
  v36(v20);
  OUTLINED_FUNCTION_34();
}

void sub_1DC385E3C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC51623C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v38 = v5;
  v39 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_58_8();
  v11 = sub_1DC510C8C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v36 = v13;
  v37 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = sub_1DC516F7C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_6();
  sub_1DC28D414();
  v25 = OUTLINED_FUNCTION_20(v22);
  v26(v25);
  v27 = v2;
  v28 = sub_1DC516F6C();
  v29 = sub_1DC517B9C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_63();
    v31 = OUTLINED_FUNCTION_249();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_1DC287000, v28, v29, "NLBridge received message: %@", v30, 0xCu);
    sub_1DC28EB30(v31, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  (*(v22 + 8))(v0, v19);
  OUTLINED_FUNCTION_183();
  (*(v33 + class metadata base offset for NLBridge + 168))(v40);
  v34 = v41;
  v35 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  sub_1DC51618C();
  sub_1DC510B7C();
  sub_1DC51619C();
  (*(v35 + 8))(v18, v10, 0, 0, v34, v35);
  (*(v38 + 8))(v10, v39);
  (*(v36 + 8))(v18, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  OUTLINED_FUNCTION_34();
}

void sub_1DC386154()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC51623C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_58_8();
  v12 = sub_1DC516F7C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_6();
  sub_1DC28D414();
  v18 = OUTLINED_FUNCTION_20(v15);
  v19(v18);
  v20 = v2;
  v21 = sub_1DC516F6C();
  v22 = sub_1DC517B9C();

  if (os_log_type_enabled(v21, v22))
  {
    v32 = v3;
    v23 = OUTLINED_FUNCTION_63();
    v31 = v6;
    v24 = OUTLINED_FUNCTION_249();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v26, v27, "NLBridge received message: %@");
    sub_1DC28EB30(v24, &qword_1ECC7DFE0, &qword_1DC5227F0);
    v6 = v31;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v3 = v32;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v28 = (*(v15 + 8))(v0, v12);
  (*(*v0 + class metadata base offset for NLBridge + 168))(v33, v28);
  v29 = v34;
  v30 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  sub_1DC5161EC();
  (*(v30 + 16))(v11, v29, v30);
  (*(v6 + 8))(v11, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3863DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v190 = v20;
  v24 = v23;
  v187 = sub_1DC510B6C();
  v25 = OUTLINED_FUNCTION_0(v187);
  v174 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  v173 = v30 - v29;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8);
  OUTLINED_FUNCTION_35(v175);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  v177 = &v167[-v34];
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v35 = OUTLINED_FUNCTION_35(v169);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23_1();
  v189 = v40;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_62();
  v176 = v42;
  v43 = sub_1DC516F7C();
  v44 = OUTLINED_FUNCTION_0(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_15();
  v178 = v49;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v167[-v54];
  OUTLINED_FUNCTION_58_8();
  v56 = sub_1DC5162DC();
  v57 = OUTLINED_FUNCTION_0(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  v62 = MEMORY[0x1EEE9AC00](v57);
  v64 = &v167[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v62);
  v66 = &v167[-v65];
  sub_1DC515BDC();
  v191 = v24;
  v67 = sub_1DC515BCC();
  v69 = v68;
  v70 = sub_1DC28D414();
  v192 = v46;
  v193 = v43;
  v71 = *(v46 + 16);
  v184 = v70;
  v185 = v71;
  v186 = v46 + 16;
  v71(v55);
  v72 = *(v59 + 16);
  v181 = v66;
  v72(v64, v66, v56);

  v183 = v55;
  v73 = sub_1DC516F6C();
  v74 = sub_1DC517B9C();

  v75 = os_log_type_enabled(v73, v74);
  v182 = v56;
  v188 = v59;
  v179 = v69;
  v171 = v67;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v194[0] = swift_slowAlloc();
    *v76 = 136315394;
    v77 = OUTLINED_FUNCTION_56();
    *(v76 + 4) = sub_1DC291244(v77, v78, v79);
    *(v76 + 12) = 2080;
    sub_1DC2917D0(&unk_1ECC7BB00, MEMORY[0x1E69D08C8]);
    v80 = sub_1DC51823C();
    v81 = v56;
    v83 = v82;
    v180 = *(v59 + 8);
    v180(v64, v81);
    v84 = sub_1DC291244(v80, v83, v194);

    *(v76 + 14) = v84;
    _os_log_impl(&dword_1DC287000, v73, v74, "Received InitiateMUXStateRollbackMessage, rollbackRequestId: %s, userId: %s", v76, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  else
  {

    v180 = *(v59 + 8);
    v180(v64, v56);
  }

  v85 = v183;
  v183 = *(v192 + 8);
  v86 = v183(v85, v193);
  v87 = v176;
  v168 = *(*v190 + class metadata base offset for NLBridge + 96);
  (v168)(v86);
  v88 = v189;
  sub_1DC515D7C();
  OUTLINED_FUNCTION_61();
  v89 = v187;
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v187);
  v93 = *(v175 + 48);
  v94 = v177;
  OUTLINED_FUNCTION_49_9(v87, v177);
  OUTLINED_FUNCTION_49_9(v88, &v94[v93]);
  OUTLINED_FUNCTION_2_0(v94);
  v95 = v178;
  if (v103)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v96, v97, v98);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v99, v100, v101);
    OUTLINED_FUNCTION_2_0(&v94[v93]);
    if (v103)
    {
      sub_1DC28EB30(v94, &unk_1ECC7CA30, &qword_1DC522A00);
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v102 = v172;
  sub_1DC28F414(v94, v172, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_2_0(&v94[v93]);
  if (v103)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v104, v105, v106);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v107, v108, v109);
    (*(v174 + 8))(v102, v89);
LABEL_12:
    sub_1DC28EB30(v94, &qword_1ECC7CE20, &unk_1DC523AC8);
    v88 = &off_1DC522000;
    goto LABEL_13;
  }

  v128 = v87;
  v129 = v94;
  v130 = v174;
  v131 = v129 + v93;
  v132 = v173;
  (*(v174 + 32))(v173, v131, v89);
  OUTLINED_FUNCTION_0_33();
  sub_1DC2917D0(v133, v134);
  LODWORD(v175) = sub_1DC5176CC();
  v135 = *(v130 + 8);
  v135(v132, v89);
  sub_1DC28EB30(v189, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28EB30(v128, &unk_1ECC7CA30, &qword_1DC522A00);
  v136 = OUTLINED_FUNCTION_229();
  (v135)(v136);
  sub_1DC28EB30(v129, &unk_1ECC7CA30, &qword_1DC522A00);
  v88 = &off_1DC522000;
  if (v175)
  {
LABEL_18:
    v137 = sub_1DC51690C();
    v138 = v181;
    v139 = v179;
    v140 = v171;
    if (!v137)
    {
      goto LABEL_29;
    }

    v141 = sub_1DC5169DC();
    v143 = v142;

    if (v141 == v140 && v143 == v139)
    {
    }

    else
    {
      v145 = sub_1DC51825C();

      if ((v145 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    OUTLINED_FUNCTION_25_9();
    v146();
    v147 = sub_1DC516F6C();
    sub_1DC517BAC();
    v148 = OUTLINED_FUNCTION_24_8();
    if (os_log_type_enabled(v148, v149))
    {
      OUTLINED_FUNCTION_17_4();
      v150 = swift_slowAlloc();
      *v150 = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v151, v152, v153, v154, v150, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v183(v170, v193);
LABEL_29:
    OUTLINED_FUNCTION_43_11();
    v156 = (*(v155 + class metadata base offset for NLBridge + 144))();
    (*(*v156 + 104))(v138);

    OUTLINED_FUNCTION_147();
    if ((*(v157 + 144))(v140, v139))
    {
      OUTLINED_FUNCTION_53_10(&a10);
      OUTLINED_FUNCTION_25_9();
      v158();

      v159 = sub_1DC516F6C();
      v160 = sub_1DC517B9C();

      if (os_log_type_enabled(v159, v160))
      {
        v161 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_19_3();
        v162 = swift_slowAlloc();
        v194[0] = v162;
        v163 = OUTLINED_FUNCTION_63_6(4.8149e-34);

        *(v161 + 4) = v163;
        v164 = "Successfully rolled back TurnInputContainer to requestId: %s";
LABEL_34:
        _os_log_impl(&dword_1DC287000, v159, v160, v164, v161, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v162);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
LABEL_36:

        v183(v88, v193);
        v127 = v138;
        goto LABEL_37;
      }
    }

    else
    {
      OUTLINED_FUNCTION_53_10(&a11);
      OUTLINED_FUNCTION_25_9();
      v165();

      v159 = sub_1DC516F6C();
      v160 = sub_1DC517BAC();

      if (os_log_type_enabled(v159, v160))
      {
        v161 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_19_3();
        v162 = swift_slowAlloc();
        v194[0] = v162;
        v166 = OUTLINED_FUNCTION_63_6(4.8149e-34);

        *(v161 + 4) = v166;
        v164 = "Could not rollback TurnInputContainer to requestId: %s";
        goto LABEL_34;
      }
    }

    goto LABEL_36;
  }

LABEL_13:

  OUTLINED_FUNCTION_25_9();
  v110();
  v111 = v191;

  v112 = sub_1DC516F6C();
  v113 = sub_1DC517BAC();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v194[0] = swift_slowAlloc();
    *v114 = *(v88 + 73);
    v115 = v173;
    sub_1DC515D7C();
    OUTLINED_FUNCTION_0_33();
    sub_1DC2917D0(v116, v117);
    v118 = v95;
    v119 = v187;
    v120 = sub_1DC51823C();
    v122 = v121;
    (*(v174 + 8))(v115, v119);
    v123 = sub_1DC291244(v120, v122, v194);

    *(v114 + 4) = v123;
    *(v114 + 12) = 2080;
    OUTLINED_FUNCTION_57_5(&a13);
    v168();
    v124 = sub_1DC51777C();
    v126 = sub_1DC291244(v124, v125, v194);

    *(v114 + 14) = v126;
    _os_log_impl(&dword_1DC287000, v112, v113, "SessionId of initiateMUXStateRollbackMessage: %s not equal to currentSessionId: %s . Ignoring the message", v114, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();

    v183(v118, v193);
  }

  else
  {

    v183(v95, v193);
  }

  v127 = v181;
LABEL_37:
  v180(v127, v182);
  OUTLINED_FUNCTION_34();
}

void sub_1DC387100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v119 = sub_1DC51623C();
  v27 = OUTLINED_FUNCTION_0(v119);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v31);
  v118 = sub_1DC510C8C();
  v32 = OUTLINED_FUNCTION_0(v118);
  v116 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v127 = v37 - v36;
  v38 = sub_1DC510B6C();
  v128 = OUTLINED_FUNCTION_0(v38);
  v129 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_15();
  v126 = v42;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_62();
  v124 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D010, &qword_1DC5263B0);
  OUTLINED_FUNCTION_10(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v52);
  v53 = OUTLINED_FUNCTION_65_3();
  v54 = OUTLINED_FUNCTION_0(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v60);
  v120 = OUTLINED_FUNCTION_40_2();
  v121 = *(v56 + 16);
  v121(v20);
  v61 = v26;
  v62 = sub_1DC516F6C();
  v63 = sub_1DC517B9C();

  if (os_log_type_enabled(v62, v63))
  {
    v122 = v53;
    v64 = OUTLINED_FUNCTION_63();
    v65 = OUTLINED_FUNCTION_249();
    *v64 = 138412290;
    *(v64 + 4) = v61;
    *v65 = v61;
    v66 = v61;
    OUTLINED_FUNCTION_52_10(&dword_1DC287000, v62, v63, "NLBridge received message: %@");
    sub_1DC28EB30(v65, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v53 = v122;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v123 = *(v56 + 8);
  v123(v20, v53);
  sub_1DC515D7C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v128);
  OUTLINED_FUNCTION_183();
  (*(v70 + class metadata base offset for NLBridge + 104))(v21);
  sub_1DC515CBC();
  sub_1DC5162DC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  OUTLINED_FUNCTION_183();
  v76 = OUTLINED_FUNCTION_59_5(v75 + class metadata base offset for NLBridge);
  v77(v76);
  sub_1DC516A9C();
  v78 = v53;
  OUTLINED_FUNCTION_68_3();
  sub_1DC515D7C();
  sub_1DC51628C();
  v79 = *(v129 + 8);
  v79(v124, v128);
  OUTLINED_FUNCTION_147();
  (*(v80 + class metadata base offset for NLBridge + 128))(v130);
  __swift_destroy_boxed_opaque_existential_1Tm(v132);
  sub_1DC515D2C();
  OUTLINED_FUNCTION_147();
  v81 = &unk_1ECC8F000;
  (*(v82 + class metadata base offset for NLBridge + 224))(v83 & 1);
  if (sub_1DC515D2C())
  {
    v125 = v79;
    v84 = OUTLINED_FUNCTION_53_10(&a13);
    (v121)(v84, v120, v78);
    v85 = sub_1DC516F6C();
    v86 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v86))
    {
      OUTLINED_FUNCTION_17_4();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_37_6(&dword_1DC287000, v87, v88, "UoD for dictation is supported");
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v123(v79, v78);
    OUTLINED_FUNCTION_147();
    (*(v89 + class metadata base offset for NLBridge + 168))(v132);
    v90 = v132[3];
    v91 = v132[4];
    OUTLINED_FUNCTION_68_3();
    sub_1DC515D7C();
    sub_1DC515CAC();
    sub_1DC510B7C();
    OUTLINED_FUNCTION_147();
    (*(v92 + class metadata base offset for NLBridge + 120))(v130);
    v93 = v131;
    if (v131)
    {
      v94 = __swift_project_boxed_opaque_existential_1(v130, v131);
      v95 = *(v93 - 8);
      v96 = *(v95 + 64);
      MEMORY[0x1EEE9AC00](v94);
      OUTLINED_FUNCTION_6_6();
      v97 = OUTLINED_FUNCTION_20(v95);
      v98(v97);
      sub_1DC28EB30(v130, &qword_1ECC7C928, &qword_1DC523AB8);
      sub_1DC51625C();
      v99 = *(v95 + 8);
      v81 = (v95 + 8);
      v99(v24, v93);
      OUTLINED_FUNCTION_57_5(&a18);
      v101 = v117;
      v102 = v119;
      (*(v100 + 32))(v117, v114, v119);
    }

    else
    {
      sub_1DC28EB30(v130, &qword_1ECC7C928, &qword_1DC523AB8);
      v111 = *MEMORY[0x1E69D0890];
      OUTLINED_FUNCTION_57_5(&a18);
      v101 = v117;
      v102 = v119;
      (*(v112 + 104))();
    }

    (*(v91 + 24))(v126, v127, v101, 0, 0, v90, v91);
    v81[1](v101, v102);
    (*(v116 + 8))(v127, v118);
    v125(v126, v128);
    __swift_destroy_boxed_opaque_existential_1Tm(v132);
    OUTLINED_FUNCTION_183();
    (*(v113 + class metadata base offset for NLBridge + 472))();
  }

  else
  {
    (v121)(v115, v120, v78);
    v103 = sub_1DC516F6C();
    sub_1DC517B9C();
    v104 = OUTLINED_FUNCTION_24_8();
    if (os_log_type_enabled(v104, v105))
    {
      OUTLINED_FUNCTION_17_4();
      v106 = swift_slowAlloc();
      *v106 = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v107, v108, v109, v110, v106, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v123(v115, v78);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC387A78()
{
  OUTLINED_FUNCTION_33();
  v112 = v0;
  v3 = v2;
  v4 = sub_1DC510B6C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v110 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v109 = v10 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8);
  OUTLINED_FUNCTION_35(v111);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v100[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v17 = OUTLINED_FUNCTION_10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v102 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_1();
  v103 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v100[-v25];
  OUTLINED_FUNCTION_58_8();
  v27 = sub_1DC516F7C();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  v108 = v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  v35 = OUTLINED_FUNCTION_40_2();
  v36 = v30;
  v37 = *(v30 + 16);
  v105 = v35;
  v106 = v30 + 16;
  v104 = v37;
  v37(v0);
  v38 = v3;
  v39 = sub_1DC516F6C();
  v40 = sub_1DC517B9C();

  v41 = os_log_type_enabled(v39, v40);
  v113 = v38;
  if (v41)
  {
    v42 = OUTLINED_FUNCTION_63();
    v107 = v27;
    v43 = v4;
    v44 = v42;
    v45 = OUTLINED_FUNCTION_249();
    *v44 = 138412290;
    *(v44 + 4) = v113;
    *v45 = v113;
    v46 = v113;
    OUTLINED_FUNCTION_52_10(&dword_1DC287000, v39, v40, "NLBridge received message: %@");
    sub_1DC28EB30(v45, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
    v4 = v43;
    v27 = v107;
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v47 = v36 + 8;
  v107 = *(v36 + 8);
  v48 = v107(v0, v27);
  (*(*v112 + class metadata base offset for NLBridge + 96))(v48);
  sub_1DC515D7C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v4);
  v52 = *(v111 + 48);
  OUTLINED_FUNCTION_49_9(v26, v15);
  OUTLINED_FUNCTION_49_9(v1, &v15[v52]);
  OUTLINED_FUNCTION_2_0(v15);
  if (!v60)
  {
    v59 = v103;
    sub_1DC28F414(v15, v103, &unk_1ECC7CA30, &qword_1DC522A00);
    OUTLINED_FUNCTION_2_0(&v15[v52]);
    if (!v60)
    {
      v111 = v47;
      v82 = OUTLINED_FUNCTION_33_11();
      v83(v82);
      OUTLINED_FUNCTION_0_33();
      sub_1DC2917D0(v84, v85);
      v101 = sub_1DC5176CC();
      v86 = v27;
      v87 = *(v47 + 8);
      v87(v52, v4);
      OUTLINED_FUNCTION_50_10(v1);
      OUTLINED_FUNCTION_50_10(v26);
      v87(v59, v4);
      v47 = v111;
      v27 = v86;
      OUTLINED_FUNCTION_50_10(v15);
      if (v101)
      {
        goto LABEL_16;
      }

LABEL_12:
      v67 = v108;
      v104(v108, v105, v27);
      v68 = v113;
      v69 = sub_1DC516F6C();
      v70 = sub_1DC517BAC();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = OUTLINED_FUNCTION_63();
        OUTLINED_FUNCTION_19_3();
        v72 = swift_slowAlloc();
        v111 = v47;
        v73 = v72;
        *&v114 = v72;
        OUTLINED_FUNCTION_48_7(4.8149e-34);
        OUTLINED_FUNCTION_0_33();
        sub_1DC2917D0(v74, v75);
        sub_1DC51823C();
        v76 = OUTLINED_FUNCTION_34_9();
        v77(v76);
        v78 = OUTLINED_FUNCTION_43();
        v81 = sub_1DC291244(v78, v79, v80);

        *(v71 + 4) = v81;
        OUTLINED_FUNCTION_52_10(&dword_1DC287000, v69, v70, "SessionId: %s is not the current session, ignoring");
        __swift_destroy_boxed_opaque_existential_1Tm(v73);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();

        v107(v68, v1);
      }

      else
      {

        v107(v67, v27);
      }

      goto LABEL_20;
    }

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v61, v62, v63);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v64, v65, v66);
    (*(v110 + 8))(v59, v4);
LABEL_11:
    sub_1DC28EB30(v15, &qword_1ECC7CE20, &unk_1DC523AC8);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v53, v54, v55);
  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v56, v57, v58);
  OUTLINED_FUNCTION_2_0(&v15[v52]);
  if (!v60)
  {
    goto LABEL_11;
  }

  sub_1DC28EB30(v15, &unk_1ECC7CA30, &qword_1DC522A00);
LABEL_16:
  OUTLINED_FUNCTION_43_11();
  v89 = (*(v88 + class metadata base offset for NLBridge + 216))();
  if (v89 != 2 && (v89 & 1) != 0)
  {
    OUTLINED_FUNCTION_43_11();
    (*(v90 + class metadata base offset for NLBridge + 168))(&v114);
    v91 = *(&v115 + 1);
    v92 = v116;
    __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
    v93 = v109;
    sub_1DC515D7C();
    (*(v92 + 32))(v93, v91, v92);
    (*(v110 + 8))(v93, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(&v114);
  }

  v94 = v102;
  v95 = OUTLINED_FUNCTION_27();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v4);
  OUTLINED_FUNCTION_43_11();
  (*(v98 + class metadata base offset for NLBridge + 104))(v94);
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  OUTLINED_FUNCTION_43_11();
  (*(v99 + class metadata base offset for NLBridge + 128))(&v114);
LABEL_20:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC388284()
{
  v1 = sub_1DC516F7C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_6();
  sub_1DC28D414();
  v7 = OUTLINED_FUNCTION_20(v4);
  v8(v7);
  v9 = sub_1DC516F6C();
  v10 = sub_1DC517B9C();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_17_4();
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1DC287000, v9, v10, "NLBridge received TypingStartedMessage. Calling SRR collectSalientEntities", v11, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  (*(v4 + 8))(v0, v1);
  OUTLINED_FUNCTION_183();
  (*(v12 + class metadata base offset for NLBridge + 192))(v16);
  v13 = v17;
  v14 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v14 + 40))(v13, v14);
  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

unint64_t sub_1DC388468()
{
  result = qword_1ECC7D028;
  if (!qword_1ECC7D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D028);
  }

  return result;
}

unint64_t sub_1DC3884C0()
{
  result = qword_1ECC7D030;
  if (!qword_1ECC7D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D030);
  }

  return result;
}

uint64_t type metadata accessor for NLBridge()
{
  result = qword_1ECC7EAD0;
  if (!qword_1ECC7EAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DC388560()
{
  sub_1DC3886D8(319, &unk_1ECC7BE80, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1DC3886D8(319, &qword_1ECC7BAF8, MEMORY[0x1E69D08C8]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_1DC3886D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DC517D8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLBridge.NLBridgeError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DC388F9C()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F8D8);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F8D8);
  swift_allocObject();
  OUTLINED_FUNCTION_3_21();
  v2[2] = v4;
  v2[3] = v3;
  v2[4] = 0x69746E4573736150;
  v2[5] = 0xEA00000000007974;
  *v1 = v2;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v1);
}

uint64_t sub_1DC38906C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - v7;
  v9 = sub_1DC5172FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC87AB0 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  __swift_project_value_buffer(v9, qword_1ECC8F8D8);
  v14 = sub_1DC5172DC();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    v17 = sub_1DC51721C();
    OUTLINED_FUNCTION_0_2(v17);
    (*(v18 + 8))(a1);
    return 0;
  }

  v15 = sub_1DC5171EC();
  sub_1DC30F668(0xD000000000000014, 0x80000001DC5428B0, v15, v8);

  v16 = sub_1DC5172AC();
  if (__swift_getEnumTagSinglePayload(v8, 1, v16) == 1)
  {
    sub_1DC30F72C(v8);
LABEL_8:

    v19 = 0;
    goto LABEL_9;
  }

  sub_1DC382AC0();
  v19 = v20;
  v22 = v21;
  OUTLINED_FUNCTION_7_1(v16);
  (*(v23 + 8))(v8, v16);
  if (!v22)
  {
    goto LABEL_8;
  }

LABEL_9:
  v24 = sub_1DC5171EC();
  sub_1DC30F668(0x6570795473736170, 0xE800000000000000, v24, v6);

  if (__swift_getEnumTagSinglePayload(v6, 1, v16) == 1)
  {
    sub_1DC30F72C(v6);
LABEL_13:
    v30 = sub_1DC51721C();
    OUTLINED_FUNCTION_0_2(v30);
    (*(v31 + 8))(a1);

    return v19;
  }

  sub_1DC38389C();
  v26 = v25;
  OUTLINED_FUNCTION_7_1(v16);
  (*(v27 + 8))(v6, v16);
  if (!v26)
  {
    goto LABEL_13;
  }

  v28 = sub_1DC51721C();
  OUTLINED_FUNCTION_0_2(v28);
  (*(v29 + 8))(a1);
  return v19;
}

uint64_t sub_1DC389404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DC517F4C();

  OUTLINED_FUNCTION_3_21();
  v10 = v8 | 4;
  MEMORY[0x1E1296160](a1, a2);
  MEMORY[0x1E1296160](0xD000000000000012, 0x80000001DC540270);
  MEMORY[0x1E1296160](a3, a4);
  return v10;
}

uint64_t sub_1DC3894BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC87AB0 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F8D8);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC389550@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC38906C(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_1DC389598()
{
  v0 = type metadata accessor for NLRouterAutoBugCaptureImpl();
  result = swift_allocObject();
  qword_1ECC8F558 = v0;
  unk_1ECC8F560 = &off_1F57FA268;
  qword_1ECC8F540 = result;
  return result;
}

uint64_t *sub_1DC3895E0()
{
  if (qword_1ECC815B0 != -1)
  {
    OUTLINED_FUNCTION_0_35();
  }

  return &qword_1ECC8F540;
}

uint64_t sub_1DC38962C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DC51735C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v32 = a1;

    sub_1DC38A09C();
    v14 = *(v32 + 16);
    if (v14)
    {
      v29 = *(a4 + 8);
      v30 = a4 + 8;
      v27 = (v9 + 16);
      v28 = 0x80000001DC542950;
      v26 = v8;
      v23 = v32;
      v15 = (v32 + 40);
      v25 = xmmword_1DC522F20;
      v24 = v13;
      do
      {
        v16 = *(v15 - 1);
        v17 = *v15;
        v32 = 0;
        v33 = 0xE000000000000000;

        sub_1DC517F4C();

        v32 = 0xD000000000000011;
        v33 = v28;
        MEMORY[0x1E1296160](v16, v17);

        v18 = v33;
        v31 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
        v19 = swift_allocObject();
        OUTLINED_FUNCTION_1_24(v19, v25);
        v32 = v20;
        v33 = 0xE800000000000000;
        (*v27)(v24, a2, v26);
        v21 = sub_1DC51777C();
        MEMORY[0x1E1296160](v21);

        v22 = v33;
        v19[2].n128_u64[0] = v32;
        v19[2].n128_u64[1] = v22;
        v29(0, v31, v18, v19, a3, a4);

        v15 += 2;
        --v14;
      }

      while (v14);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1DC3898E0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_1_24(v4, xmmword_1DC522F20);
  v8 = v5;
  v6 = sub_1DC517B1C();
  MEMORY[0x1E1296160](v6);

  v4[2].n128_u64[0] = v8;
  v4[2].n128_u64[1] = 0xE800000000000000;
  (*(a2 + 8))(1, 0xD000000000000020, 0x80000001DC542970, v4, a1, a2);
}

void sub_1DC3899E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  sub_1DC517B9C();
  sub_1DC297814();
  v6 = sub_1DC296DBC();
  sub_1DC516F0C();

  OUTLINED_FUNCTION_4_20();
  v7 = sub_1DC5176FC();
  v8 = (a1 & 1) == 0;
  if (a1)
  {
    v9 = 0xD000000000000017;
  }

  else
  {
    v9 = 0xD00000000000001CLL;
  }

  if (v8)
  {
    v10 = "nlrouterservice_timeout";
  }

  else
  {
    v10 = "NLROUTER_REQUEST_PROCESSOR";
  }

  v11 = [objc_opt_self() processInfo];
  v12 = [v11 processName];

  v13 = sub_1DC51772C();
  v15 = v14;

  v16 = v5;
  aBlock = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C130, &unk_1DC5240F0);
  sub_1DC2DFC38();
  v17 = sub_1DC5176AC();
  v19 = sub_1DC38A480(v7, 0xD00000000000001ALL, 0x80000001DC5428F0, v9, v10 | 0x8000000000000000, a2, a3, v13, v15, v17, v18, v5);

  if (v19)
  {
    v20 = sub_1DC517B9C();
    v21 = sub_1DC296DBC();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_1DC287000, v21, v20, "AutoBugCapture can be imported %@", v22, 0xCu);
      sub_1DC3040B4(v23);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    v25 = v19;
    sub_1DC51761C();

    v27 = sub_1DC517B9C();
    v28 = sub_1DC296DBC();
    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock = v30;
      *v29 = 136315138;
      v31 = [v25 description];
      v32 = sub_1DC51772C();
      v34 = v33;

      v35 = sub_1DC291244(v32, v34, &aBlock);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_1DC287000, v28, v27, "Failed to cast signature %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    else
    {
    }
  }

  else
  {
    sub_1DC517B9C();
    v26 = sub_1DC296DBC();
    sub_1DC516F0C();
  }
}

void sub_1DC389E84(uint64_t a1)
{
  v2 = sub_1DC517B9C();
  sub_1DC297814();
  log = sub_1DC296DBC();
  if (os_log_type_enabled(log, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    if (!a1)
    {
      sub_1DC51764C();
    }

    v5 = sub_1DC51763C();
    v7 = v6;

    v8 = sub_1DC291244(v5, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_1DC287000, log, v2, "AutoBugCapture did reply %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }
}

uint64_t sub_1DC389FF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1DC51762C();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

void sub_1DC38A09C()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v21 = 0;
      MEMORY[0x1E1298860](&v21, 8);
      v5 = (v21 * v2) >> 64;
      if (v2 > v21 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v21 * v2)
        {
          do
          {
            v21 = 0;
            MEMORY[0x1E1298860](&v21, 8);
          }

          while (v6 > v21 * v2);
          v5 = (v21 * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 2);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        v9 = &v1[16 * v4 + 32];
        v11 = *v9;
        v10 = *(v9 + 1);
        v12 = &v1[16 * v7 + 32];
        v14 = *v12;
        v13 = *(v12 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1DC30D6D8(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_22;
        }

        v15 = &v1[16 * v4 + 32];
        v16 = *(v15 + 1);
        *v15 = v14;
        *(v15 + 1) = v13;

        if (v7 >= *(v1 + 2))
        {
          goto LABEL_23;
        }

        v17 = &v1[16 * v7 + 32];
        v18 = *(v17 + 1);
        *v17 = v11;
        *(v17 + 1) = v10;

        *v20 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

unint64_t sub_1DC38A224()
{
  result = qword_1ECC7D038;
  if (!qword_1ECC7D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D038);
  }

  return result;
}

unint64_t sub_1DC38A27C()
{
  result = qword_1ECC7D040;
  if (!qword_1ECC7D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D040);
  }

  return result;
}

_BYTE *sub_1DC38A2DC(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1DC38A384(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1DC38A480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v12 = sub_1DC5176FC();

  v13 = sub_1DC5176FC();

  v14 = sub_1DC5176FC();
  v15 = sub_1DC5176FC();

  v16 = sub_1DC5176FC();

  v17 = [a12 signatureWithDomain:a1 type:v12 subType:v13 subtypeContext:v14 detectedProcess:v15 triggerThresholdValues:v16];

  return v17;
}

id sub_1DC38A5A8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_1DC51760C();

  v12 = sub_1DC51760C();

  v13 = sub_1DC51760C();

  v14 = [a7 snapshotWithSignature:v11 delay:a3 events:v12 payload:v13 actions:a6 reply:a1];

  return v14;
}

uint64_t sub_1DC38A6B8@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1DC510B2C();
  v4 = [v2 derivedIdentifierForComponentName:42 fromSourceIdentifier:v3];

  if (v4)
  {
    sub_1DC510B4C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1DC510B6C();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

uint64_t sub_1DC38A76C()
{
  v0 = [objc_opt_self() sharedStream];
  type metadata accessor for NLRouterClientInstrumentationUtilHelper();
  v1 = swift_allocObject();
  type metadata accessor for NLRouterClientInstrumentationUtil();
  result = swift_allocObject();
  *(result + 16) = v0;
  *(result + 24) = v1;
  qword_1ECC8F3E8 = result;
  return result;
}

id sub_1DC38A7DC()
{
  v0 = [objc_opt_self() sharedStream];

  return v0;
}

uint64_t sub_1DC38A81C()
{
  type metadata accessor for NLRouterClientInstrumentationUtilHelper();

  return swift_allocObject();
}

uint64_t sub_1DC38A870(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_69();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1DC38A8AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38A8C0()
{
  OUTLINED_FUNCTION_1_0();
  [*(*(v0 + 24) + 16) emitMessage_];
  OUTLINED_FUNCTION_39_5();

  return v1();
}

uint64_t sub_1DC38A924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38A940()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 16);
  *(v0 + 64) = mach_absolute_time();
  if (v1)
  {
    v2 = *(v0 + 16);
    OUTLINED_FUNCTION_28_11(*(v0 + 56));
    v4 = *(v3 + 128);
    v23 = v3 + 128;
    v6 = v5;
    OUTLINED_FUNCTION_42_10(v6, v7, v8, v9, v10, v11, v12, v13, v21, v23);
    v22 = (v14 + *v14);
    v15 = *(v4 + 4);
    v16 = swift_task_alloc();
    *(v0 + 72) = v16;
    *v16 = v0;
    OUTLINED_FUNCTION_50_11(v16);
    v17 = OUTLINED_FUNCTION_25_10();

    return v22(v17);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v19 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v20();
  }
}

uint64_t sub_1DC38AAF0()
{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 16);
    OUTLINED_FUNCTION_28_11(*(v3 + 56));
    v14 = *(v13 + 136);
    v20 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v3 + 88) = v16;
    *v16 = v7;
    v16[1] = sub_1DC38ACDC;
    v17 = *(v3 + 56);
    v18 = *(v3 + 24);

    return v20(v12, v18);
  }
}

uint64_t sub_1DC38ACDC()
{
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 16);
    OUTLINED_FUNCTION_28_11(*(v3 + 56));
    v14 = *(v13 + 144);
    v23 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v3 + 104) = v16;
    *v16 = v7;
    v16[1] = sub_1DC38AECC;
    v18 = *(v3 + 56);
    v17 = *(v3 + 64);
    v19 = *(v3 + 40);
    v20 = *(v3 + 48);
    v21 = *(v3 + 32);

    return v23(v12, v21, v19, v17, v20);
  }
}

uint64_t sub_1DC38AECC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38AFC4()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38B020()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38B07C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38B0D8()
{
  OUTLINED_FUNCTION_41_5();
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_12_0();
  v7 = (*(v2 + 280) + **(v2 + 280));
  v3 = *(*(v2 + 280) + 4);
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_1DC38B1F8;
  v5 = OUTLINED_FUNCTION_25_10();

  return v7(v5);
}

uint64_t sub_1DC38B1F8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 24);
  *v3 = *v1;
  *(v2 + 32) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_2_2();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1DC38B314()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 32))
  {
    OUTLINED_FUNCTION_28_11(*(v0 + 16));
    v2 = *(v1 + 112);
    v10 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_1DC38B4BC;
    v5 = *(v0 + 16);
    v6 = OUTLINED_FUNCTION_25_10();

    return v10(v6);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v8 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v9();
  }
}

uint64_t sub_1DC38B4BC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38B5B4()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_39_5();

  return v1();
}

uint64_t sub_1DC38B60C()
{
  OUTLINED_FUNCTION_1_0();

  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38B668()
{
  OUTLINED_FUNCTION_41_5();
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_12_0();
  v8 = (*(v3 + 288) + **(v3 + 288));
  v4 = *(*(v3 + 288) + 4);
  v5 = swift_task_alloc();
  v1[4] = v5;
  *v5 = v1;
  v5[1] = sub_1DC38B788;
  v6 = OUTLINED_FUNCTION_25_10();

  return v8(v6);
}

uint64_t sub_1DC38B788()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 32);
  *v3 = *v1;
  *(v2 + 40) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_2_2();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1DC38B8A4()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_28_11(*(v0 + 24));
    v2 = *(v1 + 104);
    v13 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_58_9(v4);
    *v5 = v6;
    v5[1] = sub_1DC38BA48;
    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    v9 = OUTLINED_FUNCTION_25_10();

    return v13(v9);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v11 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v12();
  }
}

uint64_t sub_1DC38BA48()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38BB40()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_39_5();

  return v1();
}

uint64_t sub_1DC38BB98()
{
  OUTLINED_FUNCTION_1_0();

  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38BBF4()
{
  OUTLINED_FUNCTION_1_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D048, &unk_1DC526760);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_118();
  v10 = type metadata accessor for NLRouterServiceResponse(0);
  v1[9] = v10;
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  v1[10] = OUTLINED_FUNCTION_118();
  v13 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DC38BCA4()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 72);
  sub_1DC28F3B8(*(v0 + 24), *(v0 + 64), &qword_1ECC7D048, &unk_1DC526760);
  v2 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v2, v3, v1);
  if (v4)
  {
    v5 = *(v0 + 32);
    sub_1DC28EB30(*(v0 + 64), &qword_1ECC7D048, &unk_1DC526760);
    if (v5)
    {
      v6 = *(v0 + 32);
      OUTLINED_FUNCTION_28_11(*(v0 + 56));
      v7 += 38;
      v8 = *v7;
      v34 = v7;
      v9 = v6;
      OUTLINED_FUNCTION_45_1(v9, v10, v11, v12, v13, v14, v15, v16, v32, v34);
      v33 = (v17 + *v17);
      v18 = *(v8 + 4);
      v19 = swift_task_alloc();
      *(v0 + 128) = v19;
      *v19 = v0;
      OUTLINED_FUNCTION_50_11(v19);
      v20 = OUTLINED_FUNCTION_33_12(*(v0 + 16));

      return v33(v20, v6);
    }

    else
    {
      sub_1DC517B9C();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v30 = sub_1DC296DBC();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      OUTLINED_FUNCTION_92_2();

      OUTLINED_FUNCTION_39_5();

      return v31();
    }
  }

  else
  {
    v22 = *(v0 + 56);
    OUTLINED_FUNCTION_44_9(*(v0 + 64), *(v0 + 80));
    OUTLINED_FUNCTION_38_1();
    v35 = (*(v23 + 296) + **(v23 + 296));
    v24 = *(*(v23 + 296) + 4);
    v25 = swift_task_alloc();
    *(v0 + 88) = v25;
    *v25 = v0;
    v25[1] = sub_1DC38BFC8;
    v26 = *(v0 + 80);
    v27 = *(v0 + 48);
    v28 = *(v0 + 56);
    v29 = OUTLINED_FUNCTION_33_12(*(v0 + 16));

    return v35(v29);
  }
}

uint64_t sub_1DC38BFC8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  *(v2 + 96) = v6;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38C0C8()
{
  OUTLINED_FUNCTION_37_4();
  if (*(v0 + 96))
  {
    OUTLINED_FUNCTION_28_11(*(v0 + 56));
    v2 = *(v1 + 104);
    v13 = v2 + *v2;
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_50_11(v4);
    v5 = *(v0 + 40);
    v6 = OUTLINED_FUNCTION_16_9();

    return v7(v6);
  }

  else
  {
    v9 = *(v0 + 80);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v10 = sub_1DC296DBC();
    OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_1_25();
    sub_1DC39837C(v9, v11);
    OUTLINED_FUNCTION_92_2();

    OUTLINED_FUNCTION_39_5();

    return v12();
  }
}

uint64_t sub_1DC38C288()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38C380()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_1_25();
  sub_1DC39837C(v1, v2);
  OUTLINED_FUNCTION_92_2();

  OUTLINED_FUNCTION_39_5();

  return v3();
}

uint64_t sub_1DC38C3F4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 128);
  *v3 = *v1;
  v2[17] = v6;
  v2[18] = v7;
  v2[19] = v8;
  v2[20] = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38C4F8()
{
  OUTLINED_FUNCTION_37_4();
  if (*(v0 + 136))
  {
    OUTLINED_FUNCTION_28_11(*(v0 + 56));
    v2 = *(v1 + 104);
    v12 = v2 + *v2;
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_50_11(v4);
    v5 = *(v0 + 40);
    v6 = OUTLINED_FUNCTION_16_9();

    return v7(v6);
  }

  else
  {
    v9 = *(v0 + 32);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v10 = sub_1DC296DBC();
    OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_92_2();

    OUTLINED_FUNCTION_39_5();

    return v11();
  }
}

uint64_t sub_1DC38C6B4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38C7AC()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[7];
  v5 = v0[4];
  OUTLINED_FUNCTION_12_0();
  (*(v6 + 312))(v3);

  OUTLINED_FUNCTION_92_2();

  OUTLINED_FUNCTION_39_5();

  return v7();
}

uint64_t sub_1DC38C86C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1_25();
  sub_1DC39837C(v2, v3);
  v4 = *(v0 + 104);
  OUTLINED_FUNCTION_116_1();

  OUTLINED_FUNCTION_2_2();

  return v5();
}

uint64_t sub_1DC38C8D8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_1_25();
  sub_1DC39837C(v1, v2);
  v3 = *(v0 + 120);
  OUTLINED_FUNCTION_116_1();

  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC38C950()
{
  OUTLINED_FUNCTION_1_0();

  v1 = *(v0 + 160);
  OUTLINED_FUNCTION_116_1();

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38C9B8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 152);
  v2 = *(v0 + 32);

  v3 = *(v0 + 176);
  OUTLINED_FUNCTION_116_1();

  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC38CA38(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for NLRouterPromptSignals();
  v5 = OUTLINED_FUNCTION_52(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  sub_1DC517A8C();
  v16 = sub_1DC517AAC();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  v17 = OUTLINED_FUNCTION_60();
  sub_1DC38CED0(v17, v18);
  v19 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v2;
  sub_1DC398320(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for NLRouterPromptSignals);
  *(v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v21 = a2;

  sub_1DC315A04(0, 0, v15, &unk_1DC526778, v20);
}

uint64_t sub_1DC38CBE4()
{
  OUTLINED_FUNCTION_37_4();
  v1 = v0;
  v3 = *(*v2 + 168);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_33_0(v5);
  *v6 = v7;
  v6[1] = sub_1DC38CD08;
  v8 = OUTLINED_FUNCTION_25_10();

  return v10(v8, v1);
}

uint64_t sub_1DC38CD08()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_2_2();

    return v12();
  }
}

uint64_t sub_1DC38CE1C()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 24);
  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v2 = sub_1DC296DBC();
  OUTLINED_FUNCTION_62_1();
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC38CED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterPromptSignals();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC38CF34()
{
  OUTLINED_FUNCTION_41_5();
  v1 = type metadata accessor for NLRouterPromptSignals();
  OUTLINED_FUNCTION_52(v1);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_33_0(v6);
  *v7 = v8;
  v7[1] = sub_1DC29F200;

  return sub_1DC38CBE4();
}

void sub_1DC38D02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_1DC510B6C();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  OUTLINED_FUNCTION_10(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &a9 - v39;
  sub_1DC517A8C();
  v41 = sub_1DC517AAC();
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
  (*(v32 + 16))(&a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v29);
  v42 = (*(v32 + 80) + 56) & ~*(v32 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v20;
  *(v43 + 40) = v28;
  *(v43 + 48) = v26;
  v44 = *(v32 + 32);
  OUTLINED_FUNCTION_75_4();
  v45();
  v46 = v26;

  sub_1DC315A04(0, 0, v40, &unk_1DC526788, v43);

  OUTLINED_FUNCTION_34();
}

void sub_1DC38D1E0()
{
  OUTLINED_FUNCTION_37_4();
  v1 = *(*v0 + 176);
  v8 = v1 + *v1;
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_33_0(v3);
  *v4 = v5;
  v4[1] = sub_1DC38D314;
  OUTLINED_FUNCTION_118_1();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1DC38D314()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_2_2();

    return v12();
  }
}

uint64_t sub_1DC38D428()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 24);
  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v2 = sub_1DC296DBC();
  OUTLINED_FUNCTION_62_1();
  sub_1DC516F0C();

  OUTLINED_FUNCTION_2_2();

  return v3();
}

void sub_1DC38D4E4()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  v1 = sub_1DC510B6C();
  OUTLINED_FUNCTION_10(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 40);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_33_0(v7);
  *v8 = v9;
  v8[1] = sub_1DC29F120;
  OUTLINED_FUNCTION_89_2();

  sub_1DC38D1E0();
}

uint64_t sub_1DC38D5C0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

void sub_1DC38D5D8()
{
  OUTLINED_FUNCTION_37_4();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  mach_absolute_time();
  OUTLINED_FUNCTION_23_15();
  v5 = *(v4 + 368);
  v6 = OUTLINED_FUNCTION_60();
  v8 = v7(v6);
  v0[5] = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_106_3();
    v10 = *(v9 + 104);
    v20 = v10 + *v10;
    v11 = v10[1];
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_58_9(v12);
    *v13 = v14;
    OUTLINED_FUNCTION_76_4(v13);
    OUTLINED_FUNCTION_118_1();

    __asm { BRAA            X2, X16 }
  }

  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v17 = sub_1DC296DBC();
  OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C();

  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_118_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DC38D7AC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38D8A4(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 64) = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38D8C0()
{
  OUTLINED_FUNCTION_36_11();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 64);
  mach_absolute_time();
  OUTLINED_FUNCTION_38_1();
  v6 = *(v5 + 376);
  OUTLINED_FUNCTION_75_4();
  v8 = v7();
  *(v0 + 40) = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_106_3();
    v10 = *(v9 + 104);
    v19 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_58_9(v12);
    *v13 = v14;
    v15 = OUTLINED_FUNCTION_76_4(v13);

    return v19(v15);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v17 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v18();
  }
}

uint64_t sub_1DC38DAB4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38DBAC()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();
  v2 = *(v0 + 56);

  return v1();
}

uint64_t sub_1DC38DC08()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38DC64()
{
  OUTLINED_FUNCTION_1_0();

  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38DCC8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38DDC8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC38DE28()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC38DE88()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38DEE4()
{
  OUTLINED_FUNCTION_1_0();

  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38DF48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38DF64()
{
  OUTLINED_FUNCTION_37_4();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 88);
    OUTLINED_FUNCTION_59_6();
    v4 = *(v3 + 336);
    v6 = v5;
    v17 = (v4 + *v4);
    v7 = v4[1];
    v8 = swift_task_alloc();
    v9 = OUTLINED_FUNCTION_58_9(v8);
    *v9 = v10;
    v9[1] = sub_1DC38E124;
    v11 = *(v0 + 40);
    v12 = *(v0 + 24);
    v13 = OUTLINED_FUNCTION_25_10();

    return v17(v13);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v15 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v16();
  }
}

uint64_t sub_1DC38E124()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  *(v2 + 56) = v6;
  *(v2 + 64) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38E224()
{
  OUTLINED_FUNCTION_37_4();
  if (*(v0 + 56))
  {
    OUTLINED_FUNCTION_28_11(*(v0 + 40));
    v2 = *(v1 + 104);
    v13 = v2 + *v2;
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_1DC38E3C8;
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = OUTLINED_FUNCTION_16_9();

    return v8(v7);
  }

  else
  {
    v10 = *(v0 + 16);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v11 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_113_3();

    OUTLINED_FUNCTION_39_5();

    return v12();
  }
}

uint64_t sub_1DC38E3C8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38E4C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 104) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38E4E0()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 56);
    OUTLINED_FUNCTION_59_6();
    v2 += 43;
    v3 = *v2;
    v29 = v2;
    v5 = v4;
    OUTLINED_FUNCTION_42_10(v5, v6, v7, v8, v9, v10, v11, v12, v27, v29);
    v28 = (v13 + *v13);
    v14 = *(v3 + 4);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_77_4(v15);
    *v16 = v17;
    v16[1] = sub_1DC38E698;
    v18 = *(v0 + 48);
    v19 = *(v0 + 56);
    v20 = *(v0 + 40);
    v21 = *(v0 + 104);
    v22 = *(v0 + 24);
    v23 = OUTLINED_FUNCTION_25_10();

    return v28(v23);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v25 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v26();
  }
}

uint64_t sub_1DC38E698()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 72) = v6;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38E798()
{
  OUTLINED_FUNCTION_37_4();
  if (*(v0 + 72))
  {
    OUTLINED_FUNCTION_28_11(*(v0 + 56));
    v2 = *(v1 + 104);
    v12 = v2 + *v2;
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_50_11(v4);
    v5 = *(v0 + 32);
    v6 = OUTLINED_FUNCTION_16_9();

    return v7(v6);
  }

  else
  {
    v9 = *(v0 + 16);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v10 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v11();
  }
}

uint64_t sub_1DC38E944()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38EA3C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_39_5();

  return v2();
}

uint64_t sub_1DC38EA9C()
{
  OUTLINED_FUNCTION_1_0();

  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38EB00(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38EB18()
{
  OUTLINED_FUNCTION_41_5();
  if (v0[2])
  {
    v1 = v0[4];
    OUTLINED_FUNCTION_59_6();
    v2 += 48;
    v3 = *v2;
    v24 = v2;
    v5 = v4;
    OUTLINED_FUNCTION_42_10(v5, v6, v7, v8, v9, v10, v11, v12, v22, v24);
    v23 = (v13 + *v13);
    v14 = *(v3 + 4);
    v15 = swift_task_alloc();
    v0[5] = v15;
    *v15 = v0;
    v15[1] = sub_1DC38ECC8;
    v16 = v0[3];
    v17 = v0[4];
    v18 = OUTLINED_FUNCTION_25_10();

    return v23(v18);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v20 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v21();
  }
}

uint64_t sub_1DC38ECC8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 40);
  *v3 = *v1;
  *(v2 + 48) = v6;
  *(v2 + 56) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC38EDC8()
{
  OUTLINED_FUNCTION_37_4();
  if (*(v0 + 48))
  {
    OUTLINED_FUNCTION_28_11(*(v0 + 32));
    v2 = *(v1 + 112);
    v13 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_77_4(v4);
    *v5 = v6;
    v5[1] = sub_1DC38EF74;
    v7 = *(v0 + 32);
    v8 = OUTLINED_FUNCTION_25_10();

    return v13(v8);
  }

  else
  {
    v10 = *(v0 + 16);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v11 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v12();
  }
}

uint64_t sub_1DC38EF74()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38F06C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_39_5();

  return v2();
}

uint64_t sub_1DC38F0CC()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38F128()
{
  OUTLINED_FUNCTION_1_0();

  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38F18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 128) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38F1AC()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 56);
    OUTLINED_FUNCTION_59_6();
    v2 += 32;
    v3 = *v2;
    v30 = v2;
    v5 = v4;
    OUTLINED_FUNCTION_45_1(v5, v6, v7, v8, v9, v10, v11, v12, v28, v30);
    v29 = (v13 + *v13);
    v14 = *(v3 + 4);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_77_4(v15);
    *v16 = v17;
    v16[1] = sub_1DC38F364;
    v18 = *(v0 + 48);
    v19 = *(v0 + 56);
    v20 = *(v0 + 128);
    v21 = *(v0 + 32);
    v22 = *(v0 + 40);
    v23 = *(v0 + 24);
    v24 = OUTLINED_FUNCTION_33_12(*(v0 + 16));

    return v29(v24);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v26 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v27();
  }
}

uint64_t sub_1DC38F364()
{
  OUTLINED_FUNCTION_37_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_18();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v10 = v9;
  *(v5 + 72) = v3;
  *(v5 + 80) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_28_11(*(v5 + 56));
    v23 = *(v15 + 352) + **(v15 + 352);
    v16 = *(*(v15 + 352) + 4);
    v17 = swift_task_alloc();
    *(v5 + 88) = v17;
    *v17 = v9;
    v17[1] = sub_1DC38F560;
    v18 = *(v5 + 56);
    v19 = *(v5 + 24);
    OUTLINED_FUNCTION_33_12(*(v5 + 16));
    OUTLINED_FUNCTION_118_1();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_118_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DC38F560()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  *(v2 + 96) = v6;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DC38F660()
{
  OUTLINED_FUNCTION_37_4();
  if (*(v0 + 96))
  {
    OUTLINED_FUNCTION_28_11(*(v0 + 56));
    v2 = *(v1 + 104);
    v13 = v2 + *v2;
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_50_11(v4);
    v5 = *(v0 + 32);
    OUTLINED_FUNCTION_25_10();
    OUTLINED_FUNCTION_118_1();

    __asm { BRAA            X2, X16 }
  }

  v8 = *(v0 + 72);
  v9 = *(v0 + 16);
  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v10 = sub_1DC296DBC();
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_113_3();

  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_118_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DC38F814()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38F90C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);

  OUTLINED_FUNCTION_39_5();

  return v3();
}

uint64_t sub_1DC38F974()
{
  OUTLINED_FUNCTION_1_0();

  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC38F9D0()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 72);

  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC38FA34()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);

  v3 = *(v0 + 120);
  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC38FAA0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 112) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC38FAC0()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 48);
    OUTLINED_FUNCTION_59_6();
    v2 += 45;
    v3 = *v2;
    v26 = v2;
    v5 = v4;
    OUTLINED_FUNCTION_45_1(v5, v6, v7, v8, v9, v10, v11, v12, v24, v26);
    v25 = (v13 + *v13);
    v14 = *(v3 + 4);
    v15 = swift_task_alloc();
    *(v0 + 56) = v15;
    *v15 = v0;
    v15[1] = sub_1DC38FC78;
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v18 = *(v0 + 112);
    v19 = *(v0 + 24);
    v20 = OUTLINED_FUNCTION_33_12(*(v0 + 16));

    return v25(v20);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v22 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v23();
  }
}

uint64_t sub_1DC38FC78()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  v2[8] = v6;
  v2[9] = v7;
  v2[10] = v8;
  v2[11] = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC38FD7C()
{
  OUTLINED_FUNCTION_37_4();
  if (*(v0 + 64))
  {
    OUTLINED_FUNCTION_28_11(*(v0 + 48));
    v2 = *(v1 + 104);
    v12 = v2 + *v2;
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_94_2(v4);
    v5 = *(v0 + 32);
    v6 = OUTLINED_FUNCTION_16_9();

    return v7(v6);
  }

  else
  {
    v9 = *(v0 + 16);
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v10 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_39_5();

    return v11();
  }
}

uint64_t sub_1DC38FF28()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC390020()
{
  OUTLINED_FUNCTION_37_4();
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 112);
  v6 = *(v0 + 16);
  sub_1DC517B7C();
  v7 = *(*v4 + 312);
  v8 = OUTLINED_FUNCTION_62_2();
  v9(v8);

  OUTLINED_FUNCTION_39_5();

  return v10();
}

uint64_t sub_1DC390100()
{
  OUTLINED_FUNCTION_1_0();

  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC39015C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);

  v3 = *(v0 + 104);
  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC3901CC()
{
  OUTLINED_FUNCTION_1_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = sub_1DC510B6C();
  v1[8] = v7;
  OUTLINED_FUNCTION_52(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_118();
  v11 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DC390278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_93_0();
  v15 = v14[2];
  if (v15)
  {
    v16 = objc_allocWithZone(MEMORY[0x1E69CF018]);
    v17 = v15;
    v18 = [v16 init];
    v19 = v18;
    v14[11] = v18;
    if (v18)
    {
      v21 = v14[9];
      v20 = v14[10];
      v22 = v14[8];
      v24 = v14[5];
      v23 = v14[6];
      v25 = v14[4];
      v26 = v18;
      sub_1DC3982A0(v25, v24, v26);

      sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
      v27 = *(v21 + 16);
      v28 = OUTLINED_FUNCTION_13_15();
      v29(v28);
      v30 = v26;
      v31 = OUTLINED_FUNCTION_39_8();
      OUTLINED_FUNCTION_72_5(v31, sel_setLinkId_);
    }

    v32 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) init];
    v14[12] = v32;
    if (v32)
    {
      v33 = v14[7];
      OUTLINED_FUNCTION_71_6([v32 setEventMetadata_], sel_setNlRouterSubComponentTriggeredHeuristicRuleTier1_);
      OUTLINED_FUNCTION_12_0();
      v35 = *(v34 + 104);
      v58 = v34 + 104;
      v59 = v35 + *v35;
      v36 = v35[1];
      v37 = swift_task_alloc();
      v14[13] = v37;
      *v37 = v14;
      OUTLINED_FUNCTION_50_11(v37);
      v38 = v14[3];
      OUTLINED_FUNCTION_74_5();

      return v41(v39, v40, v41, v42, v43, v44, v45, v46, a9, v58, v59, a12, a13, a14);
    }

    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v48 = sub_1DC296DBC();
    sub_1DC516F0C();
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v17 = sub_1DC296DBC();
    sub_1DC516F0C();
  }

  v49 = v14[10];

  OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_74_5();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1DC390584()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC39067C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);

  v3 = *(v0 + 80);

  OUTLINED_FUNCTION_39_5();

  return v4();
}

uint64_t sub_1DC3906E8()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);

  OUTLINED_FUNCTION_2_2();
  v5 = *(v0 + 112);

  return v4();
}

uint64_t sub_1DC390764()
{
  OUTLINED_FUNCTION_1_0();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 168) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  v8 = OUTLINED_FUNCTION_84_3(v6, v7);
  *(v1 + 64) = v8;
  OUTLINED_FUNCTION_52(v8);
  *(v1 + 72) = v9;
  v11 = *(v10 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_118();
  v12 = type metadata accessor for NLRouterServiceResponse(0);
  *(v1 + 88) = v12;
  OUTLINED_FUNCTION_10(v12);
  v14 = *(v13 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_124();
  *(v1 + 104) = swift_task_alloc();
  v15 = sub_1DC517D8C();
  *(v1 + 112) = v15;
  OUTLINED_FUNCTION_52(v15);
  *(v1 + 120) = v16;
  v18 = *(v17 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_124();
  *(v1 + 136) = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1DC39089C()
{
  OUTLINED_FUNCTION_100_0();
  v1 = *(v0 + 16);
  if (!v1)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v20 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    goto LABEL_10;
  }

  v2 = *(v0 + 136);
  v3 = *(v0 + 48);
  v4 = *(*(v0 + 120) + 16);
  v4(v2, *(v0 + 40), *(v0 + 112));
  OUTLINED_FUNCTION_39(v2, 1, v3);
  if (v5)
  {
LABEL_9:
    (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
    goto LABEL_10;
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v0 + 48);
  v4(*(v0 + 128), *(v0 + 136), *(v0 + 112));
  v9 = v1;
  OUTLINED_FUNCTION_62_2();
  if (!swift_dynamicCast())
  {
    v21 = *(v0 + 128);
    v22 = *(v0 + 48);

    OUTLINED_FUNCTION_7_1(v22);
    v24 = *(v23 + 8);
    v25 = OUTLINED_FUNCTION_56_0();
    v26(v25);
    goto LABEL_9;
  }

  v10 = *(v0 + 168);
  OUTLINED_FUNCTION_44_9(*(v0 + 104), *(v0 + 96));
  v11 = *(v0 + 96);
  if (v10 != 3 || (v12 = (v11 + *(*(v0 + 88) + 24)), v12[1] < 4))
  {
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    v17 = *(v0 + 48);

    OUTLINED_FUNCTION_1_25();
    sub_1DC39837C(v11, v18);
    OUTLINED_FUNCTION_7_1(v17);
    (*(v19 + 8))(v14, v17);
    (*(v16 + 8))(v13, v15);
LABEL_10:
    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    v31 = *(v0 + 80);

    OUTLINED_FUNCTION_34_10();

    return v32(0);
  }

  v34 = *(v0 + 80);
  v35 = *(v0 + 56);
  v36 = *v12;
  sub_1DC510B5C();
  OUTLINED_FUNCTION_12_0();
  v38 = *(v37 + 392);
  OUTLINED_FUNCTION_75_4();
  *(v0 + 144) = v39();
  OUTLINED_FUNCTION_12_0();
  v41 = *(v40 + 248);
  v60 = v40 + 248;
  v42 = v9;
  OUTLINED_FUNCTION_45_1(v42, v43, v44, v45, v46, v47, v48, v49, v58, v60);
  v59 = (v50 + *v50);
  v51 = *(v41 + 4);
  v52 = swift_task_alloc();
  *(v0 + 152) = v52;
  *v52 = v0;
  v52[1] = sub_1DC390C50;
  v53 = *(v0 + 80);
  v54 = *(v0 + 56);
  v55 = *(v0 + 24);
  v56 = *(v0 + 32);
  v57 = OUTLINED_FUNCTION_33_12(*(v0 + 16));

  return v59(v57);
}

uint64_t sub_1DC390C50()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 152);
  v6 = *(v4 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v9 + 160) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC390D60()
{
  OUTLINED_FUNCTION_100_0();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);

  v10 = *(v7 + 8);
  v11 = OUTLINED_FUNCTION_54_2();
  v12(v11);
  OUTLINED_FUNCTION_1_25();
  sub_1DC39837C(v5, v13);
  OUTLINED_FUNCTION_7_1(v9);
  (*(v14 + 8))(v1, v9);
  v15 = *(v4 + 8);
  v16 = OUTLINED_FUNCTION_56_0();
  v17(v16);
  v18 = *(v0 + 136);
  v19 = *(v0 + 144);
  v20 = *(v0 + 128);
  v22 = *(v0 + 96);
  v21 = *(v0 + 104);
  v23 = *(v0 + 80);

  OUTLINED_FUNCTION_34_10();

  return v24(v19);
}

uint64_t sub_1DC390E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_107_1();
  OUTLINED_FUNCTION_93_0();
  v15 = *(v14 + 136);
  v16 = *(v14 + 144);
  v18 = *(v14 + 120);
  v17 = *(v14 + 128);
  v36 = *(v14 + 112);
  v37 = *(v14 + 104);
  v19 = *(v14 + 96);
  v21 = *(v14 + 72);
  v20 = *(v14 + 80);
  v22 = *(v14 + 64);
  v23 = *(v14 + 48);

  (*(v21 + 8))(v20, v22);
  OUTLINED_FUNCTION_1_25();
  sub_1DC39837C(v19, v24);
  OUTLINED_FUNCTION_7_1(v23);
  (*(v25 + 8))(v17, v23);
  (*(v18 + 8))(v15, v36);

  OUTLINED_FUNCTION_2_2();
  v26 = *(v14 + 160);
  OUTLINED_FUNCTION_74_5();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, a13, a14);
}

uint64_t sub_1DC390FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v11 = [objc_allocWithZone(MEMORY[0x1E69CF5E8]) init];
  if (v11)
  {
    v12 = objc_allocWithZone(MEMORY[0x1E69CF5F8]);
    v13 = v11;
    v14 = OUTLINED_FUNCTION_111_1();
    [v13 setTarget_];

    v15 = [v13 target];
    if (v15)
    {
      v16 = v15;
      [v15 setComponent_];
    }

    v17 = [v13 target];
    if (v17)
    {
      v18 = v17;
      v19 = [*(v10 + 16) requestId];
      [v18 setUuid_];
    }

    v20 = objc_allocWithZone(MEMORY[0x1E69CF5F8]);
    v21 = v13;
    v22 = OUTLINED_FUNCTION_111_1();
    [v21 setSource_];

    v23 = [v21 source];
    if (v23)
    {
      v24 = v23;
      [v23 setComponent_];
    }

    v25 = [v21 source];
    if (v25)
    {
      v26 = v25;
      v27 = [*(v10 + 16) nlRouterId];
      [v26 setUuid_];
    }
  }

  OUTLINED_FUNCTION_34_10();
  OUTLINED_FUNCTION_64_5();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

uint64_t sub_1DC3911C8()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  v1 = [objc_allocWithZone(MEMORY[0x1E69CEFB0]) init];
  v2 = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_91_1(v1, sel_setExists_);
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69CEF98]) init];
  [v3 setStartedOrChanged_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) init];
  if (v4)
  {
    OUTLINED_FUNCTION_71_6([v4 setEventMetadata_], sel_setNlRouterHandleContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    OUTLINED_FUNCTION_208();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_49_10();
  }

  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_89_2();

  return v7(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DC391318()
{
  OUTLINED_FUNCTION_1_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_118();
  v8 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DC3913A0()
{
  v45 = v0;
  v1 = [objc_allocWithZone(MEMORY[0x1E69CEFA0]) init];
  if (v1)
  {
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[3];
    v41 = v0[4];
    v5 = (v4 + *(type metadata accessor for NLRouterServiceResponse(0) + 24));
    v6 = v5[1];
    v43 = *v5;
    v44 = v6;
    v7 = *(*v2 + 424);
    v8 = v1;
    sub_1DC3982F8(v43, v6);
    v9 = v7(&v43);
    sub_1DC39830C(v43, v44);
    [v8 setRoutingDecisionSource_];

    v10 = sub_1DC5157EC();
    OUTLINED_FUNCTION_35(v10);
    v12 = *(v11 + 16);
    v12(v3, v4, v10);
    v13 = OUTLINED_FUNCTION_32_9();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v10);
    OUTLINED_FUNCTION_38_1();
    v42 = v1;
    v17 = *(v16 + 408);
    v18 = v8;
    v19 = v17(v3);
    sub_1DC28EB30(v3, &qword_1ECC7CA40, &unk_1DC5233A0);
    [v18 setRoutingDecisionType_];

    v12(v3, v4, v10);
    v20 = OUTLINED_FUNCTION_32_9();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v10);
    OUTLINED_FUNCTION_38_1();
    v24 = *(v23 + 416);
    v25 = v18;
    v26 = v24(v3);
    sub_1DC28EB30(v3, &qword_1ECC7CA40, &unk_1DC5233A0);
    [v25 setRewrittenUtteranceCount_];

    OUTLINED_FUNCTION_38_1();
    v28 = *(v27 + 432);
    v29 = v25;
    v30 = v28(v4);
    [v29 setGenAIMetadata_];

    OUTLINED_FUNCTION_38_1();
    v32 = *(v31 + 448);
    v33 = v29;
    v1 = v42;
    v34 = v32(v41);
    [v33 setOverrideMetadata_];
  }

  v35 = [objc_allocWithZone(MEMORY[0x1E69CEF98]) init];
  [v35 setEnded_];
  v36 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) init];
  if (v36)
  {
    OUTLINED_FUNCTION_71_6([v36 setEventMetadata_], sel_setNlRouterHandleContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    OUTLINED_FUNCTION_208();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_49_10();
  }

  v37 = v0[6];

  v38 = OUTLINED_FUNCTION_11_18();

  return v39(v38);
}

uint64_t sub_1DC3917C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC3917D4()
{
  OUTLINED_FUNCTION_36_11();
  v1 = [objc_allocWithZone(MEMORY[0x1E69CEFA8]) init];
  v2 = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_91_1([v1 setErrorCode_], sel_setErrorDomain_);
  }

  v3 = *(v0 + 72);
  *(v0 + 56) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    if (v8 == type metadata accessor for NLRouterOverrideService())
    {
      if (v2)
      {
        v10 = 3;
        goto LABEL_14;
      }
    }

    else
    {
      v9 = v8 == type metadata accessor for NLRouterService(0);
      if (v2)
      {
        v10 = (2 * v9);
LABEL_14:
        [v2 setErrorDomain_];
      }
    }

    v16 = OUTLINED_FUNCTION_62_2();
    if (v7 == 1)
    {
      sub_1DC31CF24(v16, v17, 1u);
      if (!v2)
      {
        goto LABEL_25;
      }

      v15 = 3;
    }

    else
    {
      sub_1DC31CF24(v16, v17, v7);
      if (!v2)
      {
        goto LABEL_25;
      }

      v15 = 1;
    }

    v18 = &selRef_setErrorCode_;
    goto LABEL_24;
  }

  v11 = *(v0 + 72);
  *(v0 + 16) = v11;
  v12 = v11;
  if (OUTLINED_FUNCTION_109_2())
  {
    sub_1DC31CF14(*(v0 + 56));
  }

  else
  {
    v13 = *(v0 + 72);
    *(v0 + 16) = v13;
    v14 = v13;
    if ((OUTLINED_FUNCTION_109_2() & 1) == 0)
    {
      if (!v2)
      {
        goto LABEL_25;
      }

      v15 = 0;
      goto LABEL_23;
    }
  }

  if (!v2)
  {
    goto LABEL_25;
  }

  v15 = 2;
LABEL_23:
  [v2 setErrorCode_];
  v18 = &selRef_setErrorDomain_;
LABEL_24:
  [v2 *v18];
LABEL_25:
  v19 = [objc_allocWithZone(MEMORY[0x1E69CEF98]) init];
  [v19 setFailed_];
  v20 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) init];
  if (v20)
  {
    OUTLINED_FUNCTION_115_2([v20 setEventMetadata_], sel_setNlRouterHandleContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v21 = sub_1DC296DBC();
    sub_1DC516F0C();

    v2 = v21;
  }

  v22 = *(v0 + 8);
  OUTLINED_FUNCTION_19_0();

  return v23();
}

void sub_1DC391AA8(_DWORD *a1, uint64_t a2, void *a3, int a4, int a5)
{
  sub_1DC517B9C();
  v10 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v11 = sub_1DC296DBC();
  sub_1DC516F0C();

  v30 = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v12 = sub_1DC397BE0(v30, a4, a5, a1, a2, a3);
  if (v12 || (v12 = sub_1DC397E28(v30, a1, a2, a3)) != 0)
  {
    v13 = v12;
    v14 = sub_1DC517B9C();
    v15 = sub_1DC296DBC();
    if (os_log_type_enabled(v15, v14))
    {
      OUTLINED_FUNCTION_63();
      v16 = OUTLINED_FUNCTION_85();
      *a1 = 138412290;
      *(a1 + 1) = v13;
      *v16 = v13;
      v17 = v13;
      _os_log_impl(&dword_1DC287000, v15, v14, "AutoBugCapture can be imported %@", a1, 0xCu);
      sub_1DC28EB30(v16, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_58();
    }

    v18 = v13;
    sub_1DC51761C();

    v19 = sub_1DC517B9C();
    v20 = sub_1DC296DBC();
    if (OUTLINED_FUNCTION_117_4(v20))
    {
      v21 = OUTLINED_FUNCTION_63();
      v22 = OUTLINED_FUNCTION_82();
      aBlock = v22;
      *v21 = 136315138;
      v23 = [v18 description];
      v24 = sub_1DC51772C();
      v26 = v25;

      v27 = sub_1DC291244(v24, v26, &aBlock);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_1DC287000, v10, v19, "Failed to cast signature %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_66();

      return;
    }

    v28 = v30;
  }

  else
  {
    sub_1DC517B9C();
    v29 = sub_1DC296DBC();
    sub_1DC516F0C();

    v28 = v29;
  }
}

void sub_1DC391E8C(uint64_t a1)
{
  v2 = sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  log = sub_1DC296DBC();
  if (os_log_type_enabled(log, v2))
  {
    v3 = OUTLINED_FUNCTION_63();
    v4 = OUTLINED_FUNCTION_82();
    v10 = v4;
    *v3 = 136315138;
    if (!a1)
    {
      sub_1DC51764C();
    }

    v5 = sub_1DC51763C();
    v7 = v6;

    v8 = sub_1DC291244(v5, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_1DC287000, log, v2, "AutoBugCapture did reply %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }
}

uint64_t sub_1DC391FF8()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 56) = v1;
  v4 = OUTLINED_FUNCTION_84_3(v2, v3);
  *(v0 + 32) = v4;
  OUTLINED_FUNCTION_52(v4);
  *(v0 + 40) = v5;
  v7 = *(v6 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_118();
  v8 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DC392098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v13 = *(v10 + 56);
  v14 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CF008]));
  v15 = v14;
  if ((v13 & 1) != 0 && v14)
  {
    OUTLINED_FUNCTION_91_1(v14, sel_setErrorCode_);
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69CEFF8]) (v12 + 2936)];
  [v16 setFailed_];
  if (v16)
  {
    OUTLINED_FUNCTION_96_2();
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v17 = OUTLINED_FUNCTION_9_19();
    v18(v17);
    v19 = v16;
    v20 = OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_72_5(v20, sel_setTraceId_);
  }

  v21 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) (v12 + 2936)];
  if (v21)
  {
    OUTLINED_FUNCTION_71_6([v21 setEventMetadata_], sel_setNlRouterSubComponentSetupContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    OUTLINED_FUNCTION_208();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_49_10();
  }

  v22 = *(v10 + 48);

  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_64_5();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_1DC392244()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 72) = v3;
  v6 = OUTLINED_FUNCTION_84_3(v4, v5);
  *(v0 + 48) = v6;
  OUTLINED_FUNCTION_52(v6);
  *(v0 + 56) = v7;
  v9 = *(v8 + 64);
  *(v0 + 64) = OUTLINED_FUNCTION_118();
  v10 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC3922E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v12 = *(v10 + 40);
  v13 = *(v10 + 72);
  v14 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CEFF0]));
  [v14 setNlRouterSubComponent_];
  if (v12 != 1 && v14 != 0)
  {
    v16 = *(v10 + 40);
    if (v16)
    {
      v17 = *(v10 + 32);
      v18 = v14;
      OUTLINED_FUNCTION_62_2();
      v16 = sub_1DC5176FC();
    }

    else
    {
      v19 = v14;
    }

    [v14 setAssetVersion_];
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69CEFD0]) (v11 + 2936)];
  [v20 setStartedOrChanged_];
  if (v20)
  {
    v22 = *(v10 + 56);
    v21 = *(v10 + 64);
    v23 = *(v10 + 48);
    v24 = *(v10 + 24);
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v25 = OUTLINED_FUNCTION_9_19();
    v26(v25);
    v27 = v20;
    v28 = OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_72_5(v28, sel_setTraceId_);
  }

  v29 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) (v11 + 2936)];
  if (v29)
  {
    OUTLINED_FUNCTION_71_6([v29 setEventMetadata_], sel_setNlRouterSubComponentHandleContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    OUTLINED_FUNCTION_208();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_49_10();
  }

  v30 = *(v10 + 64);

  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_64_5();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

uint64_t sub_1DC3924E8()
{
  OUTLINED_FUNCTION_1_0();
  v4 = OUTLINED_FUNCTION_63_7(v1, v2, v3);
  v0[5] = v4;
  OUTLINED_FUNCTION_52(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = OUTLINED_FUNCTION_118();
  v8 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DC392584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v12 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CEFD8]));
  v13 = v12;
  if (v12)
  {
    OUTLINED_FUNCTION_91_1(v12, sel_setExists_);
  }

  [v13 setNlRouterSubComponentHandleEndedData_];
  v14 = [objc_allocWithZone(MEMORY[0x1E69CEFD0]) (v11 + 2936)];
  [v14 setEnded_];
  if (v14)
  {
    v16 = v10[6];
    v15 = v10[7];
    v17 = v10[5];
    v18 = v10[3];
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v19 = OUTLINED_FUNCTION_9_19();
    v20(v19);
    v21 = v14;
    v22 = OUTLINED_FUNCTION_39_8();
    OUTLINED_FUNCTION_72_5(v22, sel_setTraceId_);
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) (v11 + 2936)];
  if (v23)
  {
    OUTLINED_FUNCTION_71_6([v23 setEventMetadata_], sel_setNlRouterSubComponentHandleContext_);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    sub_1DC296DBC();
    OUTLINED_FUNCTION_208();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_49_10();
  }

  v24 = v10[7];

  OUTLINED_FUNCTION_11_18();
  OUTLINED_FUNCTION_64_5();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_1DC392744()
{
  OUTLINED_FUNCTION_1_0();
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  *(v1 + 232) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  v6 = sub_1DC510B6C();
  *(v1 + 112) = v6;
  OUTLINED_FUNCTION_52(v6);
  *(v1 + 120) = v7;
  v9 = *(v8 + 64);
  *(v1 + 128) = OUTLINED_FUNCTION_118();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D070, &qword_1DC526870);
  OUTLINED_FUNCTION_10(v10);
  v12 = *(v11 + 64);
  *(v1 + 136) = OUTLINED_FUNCTION_118();
  v13 = sub_1DC51650C();
  *(v1 + 144) = v13;
  OUTLINED_FUNCTION_52(v13);
  *(v1 + 152) = v14;
  v16 = *(v15 + 64);
  *(v1 + 160) = OUTLINED_FUNCTION_118();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D078, &qword_1DC526878);
  OUTLINED_FUNCTION_10(v17);
  v19 = *(v18 + 64);
  *(v1 + 168) = OUTLINED_FUNCTION_118();
  v20 = sub_1DC5164EC();
  *(v1 + 176) = v20;
  OUTLINED_FUNCTION_52(v20);
  *(v1 + 184) = v21;
  v23 = *(v22 + 64);
  *(v1 + 192) = OUTLINED_FUNCTION_118();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D080, qword_1DC526880);
  OUTLINED_FUNCTION_10(v24);
  v26 = *(v25 + 64);
  *(v1 + 200) = OUTLINED_FUNCTION_118();
  v27 = sub_1DC516EBC();
  *(v1 + 208) = v27;
  OUTLINED_FUNCTION_52(v27);
  *(v1 + 216) = v28;
  v30 = *(v29 + 64);
  *(v1 + 224) = OUTLINED_FUNCTION_118();
  v31 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v31, v32, v33);
}

uint64_t sub_1DC392958()
{
  v1 = *(v0 + 232);
  v2 = [objc_allocWithZone(MEMORY[0x1E69CEFE8]) init];
  v3 = 0;
  v4 = v1 - 1;
  v5 = 0;
  switch(v4)
  {
    case 0:
      goto LABEL_16;
    case 1:
      v11 = *(v0 + 96);
      *(v0 + 24) = v11;
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
      if (swift_dynamicCast())
      {
        sub_1DC31CF14(*(v0 + 32));
LABEL_14:
        if (v2)
        {
          [v2 setErrorCode_];
        }
      }

      else
      {
LABEL_16:
        v13 = *(v0 + 96);
        v14 = *(v0 + 104);
        OUTLINED_FUNCTION_12_0();
        v16 = (*(v15 + 400))();
        v3 = 0;
        if ((v16 & 0x100000000) != 0)
        {
LABEL_28:
          v5 = 0;
          goto LABEL_20;
        }

        v5 = 0;
        if (!v2)
        {
          goto LABEL_20;
        }

        [v2 setErrorCode_];
      }

      goto LABEL_19;
    case 2:
      goto LABEL_20;
    case 3:
      v8 = *(v0 + 96);
      *(v0 + 40) = v8;
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      v10 = *(v0 + 48);
      if (!v10)
      {
        goto LABEL_14;
      }

      if (v10 == 1)
      {
LABEL_4:
        if (v2)
        {
          [v2 setErrorCode_];
        }

        goto LABEL_19;
      }

      if (v10 == 2)
      {
        if (v2)
        {
          [v2 setErrorCode_];
        }

        goto LABEL_19;
      }

      v37 = *(v0 + 200);
      v36 = *(v0 + 208);
      *(v0 + 56) = v10;
      v38 = v10;
      if (swift_dynamicCast())
      {
        v40 = *(v0 + 216);
        v39 = *(v0 + 224);
        v42 = *(v0 + 200);
        v41 = *(v0 + 208);
        v43 = OUTLINED_FUNCTION_32_9();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v41);
        v46 = *(v40 + 32);
        v47 = OUTLINED_FUNCTION_13_15();
        v48(v47);
        if (!v2)
        {
LABEL_34:
          v52 = *(v0 + 216);
          v51 = *(v0 + 224);
          v53 = *(v0 + 208);
LABEL_41:
          sub_1DC31CF14(v10);
          (*(v52 + 8))(v51, v53);
          goto LABEL_19;
        }

        v49 = *(v0 + 224);
        v50 = v2;
        result = sub_1DC516EAC();
        if (result < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (result <= 0x7FFFFFFF)
        {
          [v50 setErrorCode_];

          goto LABEL_34;
        }

        __break(1u);
        goto LABEL_51;
      }

      v54 = *(v0 + 200);
      v56 = *(v0 + 168);
      v55 = *(v0 + 176);
      __swift_storeEnumTagSinglePayload(v54, 1, 1, *(v0 + 208));
      sub_1DC28EB30(v54, &unk_1ECC7D080, qword_1DC526880);
      *(v0 + 64) = v10;
      v57 = v10;
      if (OUTLINED_FUNCTION_108())
      {
        v59 = *(v0 + 184);
        v58 = *(v0 + 192);
        v61 = *(v0 + 168);
        v60 = *(v0 + 176);
        v62 = OUTLINED_FUNCTION_32_9();
        __swift_storeEnumTagSinglePayload(v62, v63, v64, v60);
        v65 = *(v59 + 32);
        v66 = OUTLINED_FUNCTION_13_15();
        v67(v66);
        if (v2)
        {
          v68 = *(v0 + 192);
          v69 = v2;
          result = sub_1DC5164DC();
          if (result < 0xFFFFFFFF80000000)
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          if (result > 0x7FFFFFFF)
          {
LABEL_52:
            __break(1u);
            return result;
          }

          [v69 setErrorCode_];
        }

        v52 = *(v0 + 184);
        v51 = *(v0 + 192);
        v53 = *(v0 + 176);
        goto LABEL_41;
      }

      v70 = *(v0 + 168);
      v72 = *(v0 + 136);
      v71 = *(v0 + 144);
      __swift_storeEnumTagSinglePayload(v70, 1, 1, *(v0 + 176));
      sub_1DC28EB30(v70, &qword_1ECC7D078, &qword_1DC526878);
      *(v0 + 72) = v10;
      v73 = v10;
      if (OUTLINED_FUNCTION_108())
      {
        v75 = *(v0 + 152);
        v74 = *(v0 + 160);
        v77 = *(v0 + 136);
        v76 = *(v0 + 144);
        v78 = OUTLINED_FUNCTION_32_9();
        __swift_storeEnumTagSinglePayload(v78, v79, v80, v76);
        v81 = *(v75 + 32);
        v82 = OUTLINED_FUNCTION_13_15();
        v83(v82);
        if (v2)
        {
          [v2 setErrorCode_];
        }

        v85 = *(v0 + 152);
        v84 = *(v0 + 160);
        v86 = *(v0 + 144);
        sub_1DC517F4C();

        v87 = sub_1DC5164FC();
        MEMORY[0x1E1296160](v87);

        sub_1DC31CF14(v10);
        v3 = 0x636E657265666E49;
        v5 = 0xEF3A726F72724565;
        v88 = *(v85 + 8);
        v89 = OUTLINED_FUNCTION_54_2();
        v90(v89);
        goto LABEL_20;
      }

      v91 = *(v0 + 136);
      __swift_storeEnumTagSinglePayload(v91, 1, 1, *(v0 + 144));
      sub_1DC28EB30(v91, &qword_1ECC7D070, &qword_1DC526870);
      if (v2)
      {
        v92 = v2;
        [v92 setErrorCode_];
        sub_1DC31CF14(v10);
      }

      else
      {
        sub_1DC31CF14(v10);
      }

LABEL_19:
      v3 = 0;
      v5 = 0;
LABEL_20:
      v95 = v5;
      v17 = [objc_allocWithZone(MEMORY[0x1E69CEFD0]) init];
      [v17 setFailed_];
      if (v17)
      {
        v19 = *(v0 + 120);
        v18 = *(v0 + 128);
        v20 = *(v0 + 112);
        v21 = *(v0 + 88);
        sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
        (*(v19 + 16))(v18, v21, v20);
        v22 = v17;
        v23 = sub_1DC299428(v18);
        [v22 setTraceId_];
      }

      v24 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) init];
      v94 = v2;
      if (v24)
      {
        v25 = v24;
        [v24 setEventMetadata_];
        [v25 setNlRouterSubComponentHandleContext_];
        v93 = v3;
      }

      else
      {

        sub_1DC517B9C();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v26 = sub_1DC296DBC();
        sub_1DC516F0C();

        v25 = 0;
        v93 = 0;
        v95 = 0;
        v17 = v26;
      }

      v27 = *(v0 + 224);
      v29 = *(v0 + 192);
      v28 = *(v0 + 200);
      v30 = *(v0 + 160);
      v31 = *(v0 + 168);
      v32 = *(v0 + 128);
      v33 = *(v0 + 136);

      v34 = *(v0 + 8);

      return v34(v25, v93, v95);
    case 4:
    case 5:
      v6 = *(v0 + 96);
      *(v0 + 16) = v6;
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_19;
      }

      if (*(v0 + 236))
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    default:
      goto LABEL_28;
  }
}

id sub_1DC3930A4(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_40();
  v11 = type metadata accessor for QDContextState(v10);
  v12 = OUTLINED_FUNCTION_35(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v15 = [objc_allocWithZone(MEMORY[0x1E69CEFC8]) init];
  if (!v15)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v18 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();
LABEL_16:

    return 0;
  }

  v16 = v15;
  sub_1DC28F3B8(a1, v3, &qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_39(v3, 1, v11);
  if (v17)
  {
    sub_1DC28EB30(v3, &qword_1ECC7BEB8, &unk_1DC527150);
  }

  else
  {
    sub_1DC398320(v3, v2, type metadata accessor for QDContextState);
    v19 = sel_setIsAppFocused_;
    switch(*v2)
    {
      case 1:
        v20 = v16;
        v21 = 1;
        goto LABEL_11;
      case 2:
        [v16 setIsAppFocused_];
        v19 = sel_setIsMediaRichAppFocused_;
        goto LABEL_9;
      case 3:
LABEL_9:
        v22 = v16;
        v23 = 1;
        break;
      default:
        v20 = v16;
        v21 = 0;
LABEL_11:
        [v20 setIsAppFocused_];
        v19 = sel_setIsMediaRichAppFocused_;
        v22 = v16;
        v23 = 0;
        break;
    }

    [v22 v19];
    [v16 setIsMediaFocused_];
    sub_1DC39837C(v2, type metadata accessor for QDContextState);
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) init];
  if (!v24)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v18 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    goto LABEL_16;
  }

  v25 = v24;
  OUTLINED_FUNCTION_115_2([v24 setEventMetadata_], sel_setNlRouterPromptGenerationSignalsCaptured_);

  return v25;
}

void sub_1DC393388()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DC510B6C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CEFB8]));
  if (!v12)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v19 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    OUTLINED_FUNCTION_113_3();
LABEL_6:

    goto LABEL_7;
  }

  v13 = v12;
  sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
  v14 = OUTLINED_FUNCTION_79_5();
  v15(v14);
  v16 = sub_1DC299428(v11);
  [v13 setTraceId_];

  [v13 setNlRouterInvalidDecisionReason_];
  v17 = [objc_allocWithZone(MEMORY[0x1E69CEF80]) (v0 + 2936)];
  if (!v17)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v19 = sub_1DC296DBC();
    OUTLINED_FUNCTION_62_1();
    sub_1DC516F0C();

    goto LABEL_6;
  }

  v18 = v17;
  [v17 setEventMetadata_];
  [v18 setNLRouterInvalidDecisionEmitted_];

LABEL_7:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3935A4()
{
  OUTLINED_FUNCTION_1_0();
  v3 = OUTLINED_FUNCTION_84_3(v1, v2);
  v0[4] = v3;
  OUTLINED_FUNCTION_52(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_118();
  v7 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC393640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v11 = [objc_allocWithZone(MEMORY[0x1E69CF5E8]) init];
  if (v11)
  {
    v12 = objc_allocWithZone(MEMORY[0x1E69CF5F8]);
    v13 = v11;
    v14 = OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_115_2(v14, sel_setSource_);

    v15 = [v13 source];
    if (v15)
    {
      v16 = v15;
      [v15 setComponent_];
    }

    v17 = [v13 source];
    if (v17)
    {
      v18 = v17;
      v19 = [*(v10 + 16) nlRouterId];
      [v18 setUuid_];
    }

    v20 = objc_allocWithZone(MEMORY[0x1E69CF5F8]);
    v21 = v13;
    v22 = OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_115_2(v22, sel_setTarget_);

    v23 = [v21 target];
    if (v23)
    {
      v24 = v23;
      [v23 setComponent_];
    }

    v25 = [v21 target];
    if (v25)
    {
      v26 = v25;
      OUTLINED_FUNCTION_96_2();
      sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
      v27 = OUTLINED_FUNCTION_9_19();
      v28(v27);
      v29 = sub_1DC299428(v21);
      [v26 setUuid_];
    }
  }

  v30 = *(v10 + 48);

  OUTLINED_FUNCTION_34_10();
  OUTLINED_FUNCTION_64_5();

  return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

void sub_1DC393854()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DC510B6C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = OUTLINED_FUNCTION_83_3(objc_allocWithZone(MEMORY[0x1E69CEF78]));
  if (v12)
  {
    sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
    v13 = OUTLINED_FUNCTION_79_5();
    v14(v13);
    v15 = v12;
    v16 = sub_1DC299428(v11);
    OUTLINED_FUNCTION_72_5(v16, sel_setLinkId_);

    v17 = qword_1ECC87CC0;
    v18 = v15;
    if (v17 != -1)
    {
      OUTLINED_FUNCTION_26_10();
      swift_once();
    }

    [v18 setTriggeredHeuristic_];
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E69CEFE0]) (v0 + 2936)];
  [v19 setHeuristicsHandleEndedData_];

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3939EC(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  if (!swift_dynamicCast())
  {
    return 501;
  }

  switch(v6)
  {
    case 1:
      sub_1DC31CF24(v4, v5, 1u);
      v2 = 104;
      break;
    case 2:
      sub_1DC31CF24(v4, v5, 2u);
      v2 = 102;
      break;
    case 3:
      sub_1DC31CF24(v4, v5, 3u);
      v2 = 103;
      break;
    default:
      sub_1DC31CF24(v4, v5, 0);
      v2 = 101;
      break;
  }

  return v2;
}

void sub_1DC393ABC()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = sub_1DC515EDC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v80 = v6;
  v81 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v78 = v10 - v9;
  OUTLINED_FUNCTION_12();
  v79 = sub_1DC515F3C();
  v11 = OUTLINED_FUNCTION_0(v79);
  v77 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v76 = v16 - v15;
  OUTLINED_FUNCTION_12();
  v17 = sub_1DC5157EC();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v82 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v83 = &v76 - v26;
  OUTLINED_FUNCTION_12();
  v27 = sub_1DC5157CC();
  v28 = OUTLINED_FUNCTION_0(v27);
  v85 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v33 = OUTLINED_FUNCTION_10(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_8();
  v38 = v36 - v37;
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v76 - v41;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_68_4();
  v84 = v3;
  sub_1DC28F3B8(v3, v0, &qword_1ECC7CA40, &unk_1DC5233A0);
  v43 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v43, v44, v17);
  if (!v45)
  {
    sub_1DC28F3B8(v0, v42, &qword_1ECC7CA40, &unk_1DC5233A0);
    v46 = v20[11];
    v47 = OUTLINED_FUNCTION_60();
    v48 = v46(v47);
    if (v48 == *MEMORY[0x1E69D02E8])
    {
      v49 = v20[12];
      v50 = OUTLINED_FUNCTION_60();
      v51(v50);
      v52 = v85;
      (*(v85 + 32))(v1, v42, v27);
      sub_1DC5157AC();
      v54 = v53;
      v55 = *(v52 + 8);
      v56 = OUTLINED_FUNCTION_74();
      v57(v56);
      if (v54)
      {
      }
    }

    else
    {
      v58 = v48;
      if (v48 == *MEMORY[0x1E69D02C8])
      {
        v59 = v20[1];
        v60 = OUTLINED_FUNCTION_60();
        v61(v60);
      }

      else if (v48 == *MEMORY[0x1E69D02E0])
      {
        v62 = v46;
        sub_1DC28F3B8(v84, v38, &qword_1ECC7CA40, &unk_1DC5233A0);
        OUTLINED_FUNCTION_39(v38, 1, v17);
        if (v45)
        {
          sub_1DC28EB30(v38, &qword_1ECC7CA40, &unk_1DC5233A0);
          v63 = v20[1];
        }

        else
        {
          v64 = v20;
          v65 = v20[4];
          v66 = v83;
          v65(v83, v38, v17);
          v67 = v82;
          (v64[2])(v82, v66, v17);
          if (v62(v67, v17) == v58)
          {
            (v64[12])(v67, v17);
            v69 = v76;
            v68 = v77;
            v70 = v79;
            (*(v77 + 32))(v76, v67, v79);
            v71 = v78;
            sub_1DC515EFC();
            sub_1DC3322BC();
            (*(v80 + 8))(v71, v81);
            (*(v68 + 8))(v69, v70);
            v63 = v64[1];
            v63(v66, v17);
          }

          else
          {
            v63 = v64[1];
            v63(v66, v17);
            v63(v67, v17);
          }
        }

        v72 = OUTLINED_FUNCTION_60();
        (v63)(v72);
      }

      else if (v48 != *MEMORY[0x1E69D02D8] && v48 != *MEMORY[0x1E69D02F8] && v48 != *MEMORY[0x1E69D02F0])
      {
        v73 = v20[1];
        v74 = OUTLINED_FUNCTION_60();
        v75(v74);
      }
    }
  }

  sub_1DC28EB30(v0, &qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_34();
}

unint64_t sub_1DC394098(uint64_t a1)
{
  v3 = sub_1DC5157CC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v9 = OUTLINED_FUNCTION_54_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_10(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_68_4();
  sub_1DC28F3B8(a1, v1, &qword_1ECC7CA40, &unk_1DC5233A0);
  v19 = sub_1DC5157EC();
  v20 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v20, v21, v19);
  if (!v22)
  {
    sub_1DC28F3B8(v1, v17, &qword_1ECC7CA40, &unk_1DC5233A0);
    v25 = *(v19 - 8);
    v26 = v25[11];
    v27 = OUTLINED_FUNCTION_55();
    v29 = v28(v27);
    if (v29 == *MEMORY[0x1E69D02E8])
    {
      v30 = v25[12];
      v31 = OUTLINED_FUNCTION_55();
      v32(v31);
      v33 = *(v6 + 32);
      v34 = OUTLINED_FUNCTION_74();
      v35(v34);
      sub_1DC5157AC();
      v37 = v36;
      v38 = *(v6 + 8);
      v39 = OUTLINED_FUNCTION_56_0();
      v40(v39);
      if (v37)
      {

        v23 = 1;
        goto LABEL_4;
      }
    }

    else
    {
      if (v29 == *MEMORY[0x1E69D02C8])
      {
        v41 = v25[12];
        v25 += 12;
        v42 = OUTLINED_FUNCTION_55();
        v43(v42);
        v23 = *(*v17 + 16);

        if (!HIDWORD(v23))
        {
          goto LABEL_4;
        }

        __break(1u);
      }

      v44 = v25[1];
      v45 = OUTLINED_FUNCTION_55();
      v46(v45);
    }
  }

  v23 = 0;
LABEL_4:
  sub_1DC28EB30(v1, &qword_1ECC7CA40, &unk_1DC5233A0);
  return v23;
}

uint64_t sub_1DC39430C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 3)
  {
    return 3;
  }

  else
  {
    return dword_1DC5269F0[v1];
  }
}

void sub_1DC394330()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = sub_1DC5161CC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v172 = v6;
  v173 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v171 = v10 - v9;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC515EBC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v169 = v13;
  v170 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v168 = v17 - v16;
  OUTLINED_FUNCTION_12();
  v167 = sub_1DC515ECC();
  v18 = OUTLINED_FUNCTION_0(v167);
  v165 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_8();
  v160[1] = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v160[0] = v160 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  v27 = OUTLINED_FUNCTION_10(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  v166 = v30 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v161 = v160 - v33;
  OUTLINED_FUNCTION_12();
  v34 = sub_1DC515E7C();
  v35 = OUTLINED_FUNCTION_0(v34);
  v163 = v36;
  v164 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  v162 = v40 - v39;
  OUTLINED_FUNCTION_12();
  v41 = sub_1DC515EDC();
  v42 = OUTLINED_FUNCTION_0(v41);
  v174 = v43;
  v175 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_68_4();
  v47 = sub_1DC5157EC();
  v48 = OUTLINED_FUNCTION_0(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v53 = sub_1DC515F3C();
  v54 = OUTLINED_FUNCTION_0(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_8();
  v61 = v59 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = v160 - v63;
  (*(v50 + 16))(v1, v3, v47);
  v65 = *(v50 + 88);
  v66 = OUTLINED_FUNCTION_55();
  if (v67(v66) == *MEMORY[0x1E69D02E0])
  {
    v68 = *(v50 + 96);
    v69 = OUTLINED_FUNCTION_55();
    v70(v69);
    (*(v56 + 32))(v64, v1, v53);
    v71 = v53;
    v72 = [objc_allocWithZone(MEMORY[0x1E69CEF90]) init];
    if (v72)
    {
      sub_1DC515EFC();
      v73 = v174;
      v74 = *(v174 + 88);
      v75 = OUTLINED_FUNCTION_43();
      v77 = v76(v75);
      if (v77 == *MEMORY[0x1E69D0608])
      {
        v78 = *(v73 + 96);
        v79 = OUTLINED_FUNCTION_43();
        v80(v79);
        v81 = v169[4];
        v82 = OUTLINED_FUNCTION_31_0();
        v83(v82);
        v84 = OUTLINED_FUNCTION_98_3();
        [v84 v85];
        v86 = v166;
        sub_1DC515E8C();
        v87 = v167;
        OUTLINED_FUNCTION_39(v86, 1, v167);
        v88 = v171;
        v89 = v165;
        if (v90)
        {
          sub_1DC28EB30(v86, &qword_1ECC7D090, &qword_1DC524180);
          v91 = 1;
          v92 = v172;
        }

        else
        {
          v110 = *(v165 + 16);
          v111 = OUTLINED_FUNCTION_63_0();
          v112(v111);
          v113 = *(v89 + 88);
          v114 = OUTLINED_FUNCTION_85_0();
          v116 = v115(v114);
          v117 = *(v89 + 8);
          v92 = v172;
          if (v116 == *MEMORY[0x1E69D05E8])
          {
            v91 = 2;
          }

          else
          {
            v139 = OUTLINED_FUNCTION_85_0();
            v117(v139);
            v91 = 0;
          }

          (v117)(v166, v87);
        }

        [v72 setCorrectionOutcome_];
        (v169[1])(v168, v170);
        v108 = v56;
      }

      else if (v77 == *MEMORY[0x1E69D0600])
      {
        v100 = *(v73 + 96);
        v101 = OUTLINED_FUNCTION_43();
        v102(v101);
        v103 = *(v163 + 32);
        v104 = OUTLINED_FUNCTION_31_0();
        v105(v104);
        [v72 setIsExplicit_];
        v106 = v161;
        sub_1DC515E3C();
        v107 = v167;
        OUTLINED_FUNCTION_39(v106, 1, v167);
        v88 = v171;
        v108 = v56;
        if (v90)
        {
          sub_1DC28EB30(v106, &qword_1ECC7D090, &qword_1DC524180);
          v109 = 1;
          v92 = v172;
        }

        else
        {
          v130 = v165;
          v131 = *(v165 + 16);
          v132 = OUTLINED_FUNCTION_63_0();
          v133(v132);
          v134 = *(v130 + 88);
          v135 = OUTLINED_FUNCTION_85_0();
          v137 = v136(v135);
          v138 = *(v130 + 8);
          v92 = v172;
          if (v137 == *MEMORY[0x1E69D05E8])
          {
            v109 = 2;
          }

          else
          {
            v142 = OUTLINED_FUNCTION_85_0();
            v138(v142);
            v109 = 0;
          }

          (v138)(v161, v107);
        }

        [v72 setCorrectionOutcome_];
        (*(v163 + 8))(v162, v164);
      }

      else
      {
        v169 = v72;
        v118 = v64;
        v119 = sub_1DC517B9C();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v120 = sub_1DC296DBC();
        v108 = v56;
        v121 = *(v56 + 16);
        v170 = v118;
        v121(v61, v118, v71);
        if (os_log_type_enabled(v120, v119))
        {
          v122 = OUTLINED_FUNCTION_63();
          v123 = OUTLINED_FUNCTION_82();
          v176 = v123;
          *v122 = 136315138;
          sub_1DC515EFC();
          LODWORD(v168) = v119;
          v124 = v175;
          v125 = sub_1DC51777C();
          v126 = v71;
          v128 = v127;
          (*(v56 + 8))(v61, v126);
          v129 = sub_1DC291244(v125, v128, &v176);

          *(v122 + 4) = v129;
          _os_log_impl(&dword_1DC287000, v120, v168, "Unable to log GenAI query type: %s", v122, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v123);
          v108 = v56;
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_66();
        }

        else
        {

          (*(v56 + 8))(v61, v71);
          v124 = v175;
        }

        v72 = v169;
        v140 = OUTLINED_FUNCTION_98_3();
        [v140 v141];
        (*(v174 + 8))(v0, v124);
        v88 = v171;
        v92 = v172;
      }

      sub_1DC515E2C();
      v143 = v173;
      v144 = (*(v92 + 88))(v88, v173);
      if (v144 == *MEMORY[0x1E69D0720])
      {
        [v72 setGenAIAppIntent_];
LABEL_33:
        v148 = *(v108 + 8);
        v149 = OUTLINED_FUNCTION_78_6();
        v150(v149);
        goto LABEL_34;
      }

      if (v144 == *MEMORY[0x1E69D0730])
      {
        [v72 setGenAIAppIntent_];
        goto LABEL_33;
      }

      if (v144 == *MEMORY[0x1E69D0718])
      {
        v145 = OUTLINED_FUNCTION_98_3();
        [v145 v146];
        goto LABEL_33;
      }

      v151 = (v108 + 8);
      if (v144 == *MEMORY[0x1E69D0728])
      {
        [v72 setGenAIAppIntent_];
        v152 = *v151;
        v153 = OUTLINED_FUNCTION_78_6();
        v154(v153);
      }

      else
      {
        v155 = OUTLINED_FUNCTION_98_3();
        [v155 v156];
        v157 = *v151;
        v158 = OUTLINED_FUNCTION_78_6();
        v159(v158);
        (*(v92 + 8))(v88, v143);
      }
    }

    else
    {
      sub_1DC517B9C();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v96 = sub_1DC296DBC();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      v97 = *(v56 + 8);
      v98 = OUTLINED_FUNCTION_78_6();
      v99(v98);
    }
  }

  else
  {
    v93 = *(v50 + 8);
    v94 = OUTLINED_FUNCTION_55();
    v95(v94);
  }

LABEL_34:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC394DC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == 1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

void *sub_1DC394DDC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_54_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40();
  v9 = sub_1DC510B6C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  sub_1DC28F3B8(a1, v1, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_39(v1, 1, v9);
  if (v21)
  {
    sub_1DC28EB30(v1, &unk_1ECC7CA30, &qword_1DC522A00);
    return 0;
  }

  (*(v12 + 32))(v20, v1, v9);
  v22 = [objc_allocWithZone(MEMORY[0x1E69CEFC0]) init];
  if (!v22)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v28 = sub_1DC296DBC();
    sub_1DC516F0C();

    (*(v12 + 8))(v20, v9);
    return 0;
  }

  v23 = v22;
  sub_1DC298C74(0, &qword_1ECC7B9C8, 0x1E69CF640);
  v24 = *(v12 + 16);
  v25 = OUTLINED_FUNCTION_56_0();
  v26(v25);
  v27 = sub_1DC299428(v17);
  [v23 setOverrideId_];

  (*(v12 + 8))(v20, v9);
  return v23;
}

uint64_t sub_1DC395058()
{
  OUTLINED_FUNCTION_1_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[4] = v5;
  v6 = sub_1DC516F5C();
  v1[9] = v6;
  OUTLINED_FUNCTION_52(v6);
  v1[10] = v7;
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_118();
  v10 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DC395104()
{
  OUTLINED_FUNCTION_93_0();
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  *(v0 + 96) = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v15 = *(v0 + 48);
  v3 = sub_1DC399080();
  *(v0 + 104) = v3;
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = sub_1DC296DBC();
  sub_1DC2A2ED0(v4, v5, v6, v7, 1, v1);

  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *(v8 + 16) = v15;
  v14 = (*v2 + 504);
  v16 = *v14 + **v14;
  v9 = (*v14)[1];
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_1DC3952F8;
  v11 = *(v0 + 64);
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  OUTLINED_FUNCTION_70_6();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1DC3952F8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (!v0)
  {
    v9 = *(v3 + 112);
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC3953F8()
{
  OUTLINED_FUNCTION_100_0();
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];
  v6 = v0[3];
  v16 = v0[2];
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = sub_1DC296DBC();
  sub_1DC2B8848();

  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_63_0();
  v13(v12);

  v14 = v0[1];

  return v14(v16, v6);
}

uint64_t sub_1DC3954D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_9();
  OUTLINED_FUNCTION_36_11();
  v12 = v10[13];
  v11 = v10[14];
  v13 = v10[11];
  v14 = v10[12];
  v15 = v10[9];
  v16 = v10[10];

  v17 = *v12;
  v18 = v12[1];
  v19 = *(v12 + 16);
  v20 = sub_1DC296DBC();
  sub_1DC2B8848();

  v21 = *(v16 + 8);
  v22 = OUTLINED_FUNCTION_63_0();
  v23(v22);

  OUTLINED_FUNCTION_2_2();
  v24 = v10[16];
  OUTLINED_FUNCTION_64_5();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_1DC395588(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DC39864C;

  return v6();
}

uint64_t sub_1DC395674()
{
  OUTLINED_FUNCTION_1_0();
  v1[5] = v2;
  v1[6] = v0;
  v6 = OUTLINED_FUNCTION_63_7(v3, v4, v5);
  v1[7] = v6;
  OUTLINED_FUNCTION_52(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_118();
  v10 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DC395714()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[9];
  v2 = v0[6];
  sub_1DC510B5C();
  OUTLINED_FUNCTION_12_0();
  v12 = *(v3 + 504) + **(v3 + 504);
  v4 = *(*(v3 + 504) + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = type metadata accessor for NLRouterServiceResponse(0);
  *v5 = v0;
  v5[1] = sub_1DC395864;
  v7 = v0[9];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  OUTLINED_FUNCTION_38_9(v6);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1DC395864()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = v5[10];
  v7 = v5[9];
  v8 = v5[8];
  v9 = v5[7];
  v10 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v11 = v10;
  *(v3 + 88) = v0;

  v12 = OUTLINED_FUNCTION_66_8();
  v13(v12);
  if (v0)
  {
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_89_2();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  else
  {
    v18 = *(v3 + 72);

    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_89_2();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1DC3959D8()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_2_2();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_1DC395A34()
{
  OUTLINED_FUNCTION_1_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v8 = OUTLINED_FUNCTION_63_7(v5, v6, v7);
  v1[9] = v8;
  OUTLINED_FUNCTION_52(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_118();
  v12 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DC395AD8()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[11];
  v2 = v0[8];
  sub_1DC510B5C();
  OUTLINED_FUNCTION_12_0();
  v14 = *(v3 + 504) + **(v3 + 504);
  v4 = *(*(v3 + 504) + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = type metadata accessor for NLRouterServiceResponse(0);
  *v5 = v0;
  v5[1] = sub_1DC395C24;
  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[3];
  v13 = v0[4];
  OUTLINED_FUNCTION_38_9(v6);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1DC395C24()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[10];
  v9 = v5[9];
  v10 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v11 = v10;
  *(v3 + 104) = v0;

  v12 = OUTLINED_FUNCTION_66_8();
  v13(v12);
  if (v0)
  {
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_89_2();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  else
  {
    v18 = *(v3 + 88);

    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_89_2();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1DC395D98()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_2_2();
  v3 = *(v0 + 104);

  return v2();
}

uint64_t sub_1DC395DF4()
{
  OUTLINED_FUNCTION_1_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v8 = OUTLINED_FUNCTION_63_7(v5, v6, v7);
  v1[9] = v8;
  OUTLINED_FUNCTION_52(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_118();
  v12 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DC395E98()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[11];
  v2 = v0[8];
  sub_1DC510B5C();
  OUTLINED_FUNCTION_12_0();
  v14 = *(v3 + 504) + **(v3 + 504);
  v4 = *(*(v3 + 504) + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D098, &unk_1DC5268D0);
  *v5 = v0;
  v5[1] = sub_1DC395FF0;
  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[3];
  v13 = v0[4];
  OUTLINED_FUNCTION_38_9(v6);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1DC395FF0()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[10];
  v9 = v5[9];
  v10 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v11 = v10;
  *(v3 + 104) = v0;

  v12 = OUTLINED_FUNCTION_66_8();
  v13(v12);
  if (v0)
  {
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_89_2();

    return MEMORY[0x1EEE6DFA0](v14, v15, v16);
  }

  else
  {
    v18 = *(v3 + 88);

    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_89_2();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1DC396164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return OUTLINED_FUNCTION_0_36();
}

void sub_1DC396180()
{
  OUTLINED_FUNCTION_37_4();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = *(v0 + 48);
  v8 = (*v1 + 504);
  v9 = *v8 + **v8;
  v3 = (*v8)[1];
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A0, &unk_1DC524070);
  *v4 = v0;
  v4[1] = sub_1DC39630C;
  v5 = *(v0 + 64);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  OUTLINED_FUNCTION_70_6();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1DC39630C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC396424()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  v2 = v0[9];

  sub_1DC517BAC();
  v3 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v4 = sub_1DC296DBC();
  v5 = OUTLINED_FUNCTION_117_4(v4);
  v6 = v0[11];
  if (v5)
  {
    OUTLINED_FUNCTION_63();
    v7 = OUTLINED_FUNCTION_85();
    *v1 = 138412290;
    v8 = v6;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_55_0(&dword_1DC287000, v10, v11, "Error encountered during SELF cache search handle %@");
    sub_1DC28EB30(v7, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_58();
  }

  else
  {
  }

  v12 = v0[1];
  OUTLINED_FUNCTION_89_2();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1DC396548(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DC396634;

  return v6();
}

uint64_t sub_1DC396634()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  v7 = v6;
  OUTLINED_FUNCTION_10_18();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v12 = v11;

  if (!v0)
  {
    v13 = *(v7 + 16);
    *v13 = v5;
    v13[1] = v3;
  }

  v14 = *(v11 + 8);
  OUTLINED_FUNCTION_89_2();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1DC396730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_36();
}

void sub_1DC39674C()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 32);
  v9 = (*v1 + 504);
  v10 = *v9 + **v9;
  v3 = (*v9)[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_77_4(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_94_2(v5);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  OUTLINED_FUNCTION_70_6();

  __asm { BRAA            X0, X16 }
}

uint64_t sub_1DC3968C0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC3969E0()
{
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_37_4();
  v2 = *(v0 + 56);

  sub_1DC517BAC();
  v3 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v4 = sub_1DC296DBC();
  v5 = OUTLINED_FUNCTION_117_4(v4);
  v6 = *(v0 + 72);
  if (v5)
  {
    OUTLINED_FUNCTION_63();
    v7 = OUTLINED_FUNCTION_85();
    *v1 = 138412290;
    v8 = v6;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_55_0(&dword_1DC287000, v10, v11, "Error encountered during SELF cache insert handle %@");
    sub_1DC28EB30(v7, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_58();
  }

  else
  {
  }

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_89_2();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1DC396AF8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DC29F120;

  return v6();
}

uint64_t sub_1DC396BE0()
{
  OUTLINED_FUNCTION_1_0();
  *(v1 + 72) = v20;
  *(v1 + 80) = v0;
  *(v1 + 56) = v2;
  *(v1 + 64) = v19;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 212) = v7;
  *(v1 + 208) = v8;
  *(v1 + 16) = v9;
  v10 = sub_1DC517D8C();
  *(v1 + 88) = v10;
  OUTLINED_FUNCTION_52(v10);
  *(v1 + 96) = v11;
  v13 = *(v12 + 64);
  *(v1 + 104) = OUTLINED_FUNCTION_118();
  v14 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1DC396CA8()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 80);
  mach_absolute_time();
  OUTLINED_FUNCTION_23_15();
  v3 = *(v2 + 216);
  v13 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_1DC396DD4;
  v6 = *(v0 + 80);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = *(v0 + 208);
  v10 = *(v0 + 32);
  v11 = OUTLINED_FUNCTION_33_12(*(v0 + 24));

  return v13(v11);
}

uint64_t sub_1DC396DD4()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else if (*(v3 + 212) == 1)
  {
    OUTLINED_FUNCTION_28_11(*(v3 + 80));
    v13 = *(v12 + 224);
    v25 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v3 + 128) = v15;
    *v15 = v7;
    v15[1] = sub_1DC39703C;
    v16 = *(v3 + 80);
    v17 = *(v3 + 48);
    v18 = OUTLINED_FUNCTION_33_12(*(v3 + 24));

    return v25(v18);
  }

  else
  {
    OUTLINED_FUNCTION_24_9();
    v20 = *(v19 + 4);
    v21 = swift_task_alloc();
    *(v3 + 144) = v21;
    *v21 = v7;
    v22 = OUTLINED_FUNCTION_30_12(v21);

    return v23(v22);
  }
}

uint64_t sub_1DC39703C()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_24_9();
    v13 = *(v12 + 4);
    v14 = swift_task_alloc();
    *(v3 + 144) = v14;
    *v14 = v7;
    v15 = OUTLINED_FUNCTION_30_12(v14);

    return v16(v15);
  }
}

uint64_t sub_1DC3971A0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC397298()
{
  OUTLINED_FUNCTION_36_11();
  v1 = *(v0 + 104);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 16);
  mach_absolute_time();
  v5 = *(v3 - 8);
  *(v0 + 160) = v5;
  v6 = *(v5 + 16);
  OUTLINED_FUNCTION_75_4();
  v7();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  OUTLINED_FUNCTION_12_0();
  v9 = *(v8 + 232);
  v19 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_1DC39744C;
  v12 = *(v0 + 104);
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);
  v15 = *(v0 + 48);
  v16 = *(v0 + 208);
  v17 = OUTLINED_FUNCTION_33_12(*(v0 + 24));

  return v19(v17);
}

uint64_t sub_1DC39744C()
{
  OUTLINED_FUNCTION_41_5();
  v2 = *v1;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = v2[21];
  v6 = *v1;
  *v4 = *v1;
  *(v3 + 176) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_1DC3975D8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_7_2();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DC3976D0()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 184);
  swift_willThrow();
  v2 = *(v0 + 184);
  v3 = *(v0 + 104);

  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC39773C()
{
  OUTLINED_FUNCTION_37_4();
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_23_15();
  v3 = *(v2 + 240);
  v11 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_95_1(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_21(v6);

  return v9(v8);
}

uint64_t sub_1DC397830()
{
  OUTLINED_FUNCTION_37_4();
  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_23_15();
  v3 = *(v2 + 240);
  v11 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_95_1(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_21(v6);

  return v9(v8);
}

uint64_t sub_1DC397924()
{
  OUTLINED_FUNCTION_37_4();
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_23_15();
  v3 = *(v2 + 240);
  v11 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_95_1(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_21(v6);

  return v9(v8);
}

uint64_t sub_1DC397A18()
{
  OUTLINED_FUNCTION_37_4();
  (*(v0[20] + 8))(v0[2], v0[9]);
  v1 = v0[22];
  OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_23_15();
  v3 = *(v2 + 240);
  v11 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_95_1(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_2_21(v6);

  return v9(v8);
}

uint64_t sub_1DC397B28()
{
  OUTLINED_FUNCTION_1_0();

  v1 = *(v0 + 200);
  v2 = *(v0 + 104);

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC397B8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DC397BB4()
{
  sub_1DC397B8C();
  v0 = OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1DC397BE0(void *a1, int a2, int a3, id a4, uint64_t a5, void *a6)
{
  v8 = [a4 nlRouterSubComponentHandleContext];
  if (v8 && (v9 = v8, v10 = [v8 failed], v9, v10))
  {
    v11 = sub_1DC389620();
    v12 = *v11;
    v13 = *(v11 + 1);

    v14 = sub_1DC5176FC();

    OUTLINED_FUNCTION_78_6();
    v15 = sub_1DC5176FC();

    [v10 errorCode];
    sub_1DC3985F8();
    sub_1DC517E7C();
    v16 = sub_1DC5176FC();

    if (a6)
    {
      a6 = sub_1DC5176FC();
    }

    v17 = [objc_opt_self() processInfo];
    v18 = [v17 processName];

    v19 = sub_1DC51772C();
    v21 = v20;

    v22 = OUTLINED_FUNCTION_55();
    v24 = sub_1DC3980EC(v22, v23, v16, a6, v19, v21, 0, 0xE000000000000000, a1);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v25 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    return 0;
  }

  return v24;
}

id sub_1DC397E28(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 nlRouterHandleContext];
  if (v7 && (v8 = v7, v9 = [v7 failed], v8, v9))
  {
    [v9 errorCode];
    v11 = sub_1DC5176FC();
    [v9 errorDomain];
    sub_1DC517B6C();
    v12 = sub_1DC5176FC();

    v13 = sub_1DC5176FC();

    if (a4)
    {
      v14 = a4;
    }

    else
    {
      a3 = 0;
      v14 = 0xE000000000000000;
    }

    v15 = objc_opt_self();

    v16 = [v15 processInfo];
    v17 = [v16 processName];

    v18 = sub_1DC51772C();
    v20 = v19;

    v10 = sub_1DC3981B8(v11, v12, v13, a3, v14, v18, v20, 0, 0xE000000000000000, a1);
  }

  else
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v9 = sub_1DC296DBC();
    sub_1DC516F0C();
    v10 = 0;
  }

  return v10;
}

id sub_1DC3980EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v13 = sub_1DC5176FC();

  v14 = sub_1DC5176FC();

  v15 = [a9 signatureWithDomain:a1 type:a2 subType:a3 subtypeContext:a4 detectedProcess:v13 triggerThresholdValues:v14];

  return v15;
}

id sub_1DC3981B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = sub_1DC5176FC();

  v14 = sub_1DC5176FC();

  v15 = sub_1DC5176FC();

  v16 = [a10 signatureWithDomain:a1 type:a2 subType:a3 subtypeContext:v13 detectedProcess:v14 triggerThresholdValues:v15];

  return v16;
}

void sub_1DC3982A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  [a3 setTriggeredHeuristicRule_];
}

uint64_t sub_1DC3982F8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1DC39830C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1DC398320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_35(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_43();
  v8(v7);
  return a2;
}

uint64_t sub_1DC39837C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DC3983D4()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_80_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_19_2(v1);

  return v4(v3);
}

uint64_t sub_1DC398464()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_80_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_19_2(v1);

  return v4(v3);
}

uint64_t sub_1DC3984F4()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_80_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_19_2(v1);

  return v4(v3);
}

uint64_t sub_1DC3985A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DC3985F8()
{
  result = qword_1ECC7B908;
  if (!qword_1ECC7B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7B908);
  }

  return result;
}

id OUTLINED_FUNCTION_91_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_92_2()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_109_2()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_111_1()
{

  return [v0 (v1 + 2936)];
}

uint64_t OUTLINED_FUNCTION_113_3()
{

  return sub_1DC516F0C();
}

uint64_t OUTLINED_FUNCTION_116_1()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
}

uint64_t sub_1DC39875C()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F8F0);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000014;
  v4[3] = 0x80000001DC53F090;
  v4[4] = 0xD000000000000011;
  v4[5] = 0x80000001DC526A30;
  *v3 = v4;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v3);
}

uint64_t sub_1DC398830@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - v12;
  v14 = sub_1DC5172FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC87CC8 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  __swift_project_value_buffer(v14, qword_1ECC8F8F0);
  v19 = sub_1DC5172DC();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v20 = sub_1DC5171EC();
    sub_1DC30F668(0x7265646E6573, 0xE600000000000000, v20, v13);

    v21 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v13);
    if (v22)
    {
      sub_1DC30F72C(v13);
    }

    else
    {
      sub_1DC382AC0();
      v31 = v30;
      v33 = v32;
      OUTLINED_FUNCTION_7_1(v21);
      (*(v34 + 8))(v13, v21);
      if (v33)
      {
LABEL_10:
        v35 = sub_1DC5171EC();
        sub_1DC30F668(0x7463656A627573, 0xE700000000000000, v35, v11);

        OUTLINED_FUNCTION_3_3(v11);
        if (v22)
        {
          sub_1DC30F72C(v11);
        }

        else
        {
          sub_1DC382AC0();
          v26 = v36;
          v27 = v37;
          OUTLINED_FUNCTION_7_1(v21);
          (*(v38 + 8))(v11, v21);
          if (v27)
          {
LABEL_15:
            v39 = sub_1DC5171EC();
            sub_1DC30F668(0x6563655265746164, 0xEC00000064657669, v39, v8);

            OUTLINED_FUNCTION_3_3(v8);
            if (v22)
            {
              sub_1DC30F72C(v8);
            }

            else
            {
              sub_1DC382AC0();
              v28 = v40;
              v29 = v41;
              OUTLINED_FUNCTION_7_1(v21);
              (*(v42 + 8))(v8, v21);
              if (v29)
              {
                v43 = sub_1DC51721C();
                OUTLINED_FUNCTION_0_2(v43);
                result = (*(v44 + 8))(a1);
                goto LABEL_21;
              }
            }

            v45 = sub_1DC51721C();
            OUTLINED_FUNCTION_0_2(v45);
            (*(v46 + 8))(a1);

            v28 = 0;
            v29 = 0xE000000000000000;
            goto LABEL_21;
          }
        }

        v26 = 0;
        v27 = 0xE000000000000000;
        goto LABEL_15;
      }
    }

    v31 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_10;
  }

  v23 = sub_1DC51721C();
  OUTLINED_FUNCTION_0_2(v23);
  result = (*(v24 + 8))(a1);
  v31 = 0;
  v33 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
LABEL_21:
  *a2 = v31;
  a2[1] = v33;
  a2[2] = v26;
  a2[3] = v27;
  a2[4] = v28;
  a2[5] = v29;
  return result;
}

uint64_t sub_1DC398C7C()
{
  v1 = v0;
  sub_1DC517F4C();

  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0x656A627553207C20, 0xEC000000203A7463);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0xD000000000000011, 0x80000001DC543B10);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  return 0x203A7265646E6553;
}

uint64_t sub_1DC398D44@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC87CC8 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F8F0);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC398DD8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC398830(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_1DC398ECC()
{
  sub_1DC297814();
  result = sub_1DC517D7C();
  qword_1EDAC94E8 = result;
  return result;
}

uint64_t sub_1DC398F34()
{
  sub_1DC297814();
  result = sub_1DC517D7C();
  qword_1EDAC94F8 = result;
  return result;
}

uint64_t sub_1DC398FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1DC297814();
  result = sub_1DC517D7C();
  *a4 = result;
  return result;
}

uint64_t sub_1DC3990D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90);
  __swift_allocate_value_buffer(v0, qword_1ECC8F908);
  __swift_project_value_buffer(v0, qword_1ECC8F908);
  return sub_1DC51641C();
}

uint64_t sub_1DC3992E4()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_built;
  OUTLINED_FUNCTION_9_10();
  return *(v0 + v1);
}

uint64_t sub_1DC399318(char a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_built;
  result = OUTLINED_FUNCTION_35_1();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SSUInferenceServiceStateBuilder.__allocating_init(locale:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_121();
  SSUInferenceServiceStateBuilder.init(locale:)(v3);
  return v0;
}

uint64_t SSUInferenceServiceStateBuilder.init(locale:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_appIntentMetadataFiles) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_appBundles) = v3;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_kvAppItems) = v3;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_kvBundleEntityDatasets) = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_built) = 0;
  v4 = OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_locale;
  v5 = sub_1DC510C8C();
  OUTLINED_FUNCTION_35(v5);
  (*(v6 + 32))(v1 + v4, a1);
  return v1;
}

void sub_1DC3994AC()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v0;
  v86 = v4;
  v87 = v5;
  v85 = v6;
  v89[4] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A8, &qword_1DC526A98);
  OUTLINED_FUNCTION_0(v7);
  v81 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v78 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0B0, &qword_1DC526AA0);
  OUTLINED_FUNCTION_0(v14);
  v82 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v78 - v19;
  v21 = sub_1DC5109BC();
  v22 = OUTLINED_FUNCTION_0(v21);
  v83 = v23;
  v84 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0B8, &qword_1DC526AA8) - 8) + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v78 - v28;
  OUTLINED_FUNCTION_12_0();
  if (((*(v30 + 224))() & 1) == 0)
  {
    if (qword_1ECC87CD0 != -1)
    {
      OUTLINED_FUNCTION_1_26();
      swift_once();
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90);
    __swift_project_value_buffer(v32, qword_1ECC8F908);
    sub_1DC51642C();
    if (v1)
    {

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0C0, &qword_1DC526AB0);
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v33);
LABEL_8:
      sub_1DC28EB30(v29, &qword_1ECC7D0B8, &qword_1DC526AA8);
      sub_1DC399C5C();
      OUTLINED_FUNCTION_33_1();
      *v35 = 1;
      goto LABEL_9;
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0C0, &qword_1DC526AB0);
    if (__swift_getEnumTagSinglePayload(v29, 1, v34) == 1)
    {
      goto LABEL_8;
    }

    v79 = v13;
    sub_1DC28EB30(v29, &qword_1ECC7D0B8, &qword_1DC526AA8);
    v37 = [objc_opt_self() defaultManager];
    HIBYTE(v88) = 0;
    sub_1DC51094C();
    v38 = sub_1DC5176FC();

    v80 = v37;
    v39 = [v37 fileExistsAtPath:v38 isDirectory:&v88 + 7];

    if (!v39 || HIBYTE(v88) != 1)
    {
      sub_1DC399C5C();
      OUTLINED_FUNCTION_33_1();
      *v63 = 2;
      swift_willThrow();
LABEL_27:

      goto LABEL_10;
    }

    v41 = sub_1DC5108FC() == 0xD000000000000013 && 0x80000001DC543D00 == v40;
    v78 = 0x80000001DC543D00;
    if (v41)
    {
    }

    else
    {
      v42 = OUTLINED_FUNCTION_36_12();

      if ((v42 & 1) == 0)
      {
        v43 = sub_1DC517BBC();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v44 = sub_1DC2C0F8C();
        if (os_log_type_enabled(v44, v43))
        {
          OUTLINED_FUNCTION_11();
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v89[0] = v46;
          *v45 = 136315138;
          *(v45 + 4) = OUTLINED_FUNCTION_35_12();
          _os_log_impl(&dword_1DC287000, v44, v43, "Input directory named not %s; will not discover lproj folders with localization data.", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          OUTLINED_FUNCTION_8_0();
          MEMORY[0x1E1298840](v47);
          OUTLINED_FUNCTION_8_0();
          MEMORY[0x1E1298840](v48);
        }

        v49 = v87;
        v50 = v79;
        v51 = *(v7 + 48);
        *v79 = v86;
        *(v50 + 1) = v49;
        (*(v83 + 16))(&v50[v51], v85, v84);
        v52 = *(*v3 + 144);

        v53 = v52(v89);
        v55 = v54;
        sub_1DC39DC08(&qword_1ECC7D140, &qword_1DC526DB0, &qword_1ECC7D0A8, &qword_1DC526A98);
        v56 = *(*v55 + 16);
        sub_1DC39DC84(v56, &qword_1ECC7D140, &qword_1DC526DB0, &qword_1ECC7D0A8, &qword_1DC526A98);
        *(*v55 + 16) = v56 + 1;
        OUTLINED_FUNCTION_7_15();
        v59 = v57 + v58 * v56;
        v60 = v50;
        v61 = &qword_1ECC7D0A8;
        v62 = &qword_1DC526A98;
LABEL_26:
        sub_1DC2E5B08(v60, v59, v61, v62);
        v77 = OUTLINED_FUNCTION_21_0();
        v53(v77);
        goto LABEL_27;
      }
    }

    v64 = sub_1DC517BBC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v65 = sub_1DC2C0F8C();
    if (os_log_type_enabled(v65, v64))
    {
      OUTLINED_FUNCTION_11();
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v89[0] = v67;
      *v66 = 136315138;
      *(v66 + 4) = OUTLINED_FUNCTION_35_12();
      _os_log_impl(&dword_1DC287000, v65, v64, "Input directory named %s, treating parent directory as bundle to find lproj folders.", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840](v68);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840](v69);
    }

    v70 = v87;

    sub_1DC51092C();
    v71 = *(v14 + 48);
    *v20 = v86;
    *(v20 + 1) = v70;
    (*(v83 + 32))(&v20[v71], v2, v84);
    v53 = (*(*v3 + 168))(v89);
    v73 = v72;
    sub_1DC39DC08(&qword_1ECC7D138, &unk_1DC526DA0, &qword_1ECC7D0B0, &qword_1DC526AA0);
    v74 = *(*v73 + 16);
    sub_1DC39DC84(v74, &qword_1ECC7D138, &unk_1DC526DA0, &qword_1ECC7D0B0, &qword_1DC526AA0);
    *(*v73 + 16) = v74 + 1;
    OUTLINED_FUNCTION_7_15();
    v59 = v75 + v76 * v74;
    v60 = v20;
    v61 = &qword_1ECC7D0B0;
    v62 = &qword_1DC526AA0;
    goto LABEL_26;
  }

  sub_1DC399C5C();
  OUTLINED_FUNCTION_33_1();
  *v31 = 0;
LABEL_9:
  swift_willThrow();
LABEL_10:
  v36 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}

unint64_t sub_1DC399C5C()
{
  result = qword_1ECC7D0C8;
  if (!qword_1ECC7D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D0C8);
  }

  return result;
}

void sub_1DC399CB0()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v48[4] = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0B0, &qword_1DC526AA0);
  OUTLINED_FUNCTION_0(v9);
  v46 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0B8, &qword_1DC526AA8) - 8) + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  OUTLINED_FUNCTION_12_0();
  if ((*(v20 + 224))())
  {
    sub_1DC399C5C();
    OUTLINED_FUNCTION_33_1();
    *v21 = 0;
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (qword_1ECC87CD0 != -1)
  {
    OUTLINED_FUNCTION_1_26();
    swift_once();
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90);
  __swift_project_value_buffer(v22, qword_1ECC8F908);
  sub_1DC51642C();
  if (v1)
  {

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0C0, &qword_1DC526AB0);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v23);
LABEL_8:
    sub_1DC28EB30(v19, &qword_1ECC7D0B8, &qword_1DC526AA8);
    sub_1DC399C5C();
    OUTLINED_FUNCTION_33_1();
    *v25 = 1;
    goto LABEL_9;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0C0, &qword_1DC526AB0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v24) == 1)
  {
    goto LABEL_8;
  }

  sub_1DC28EB30(v19, &qword_1ECC7D0B8, &qword_1DC526AA8);
  v27 = v8;
  v28 = [objc_opt_self() defaultManager];
  v47 = 0;
  v44 = v27;
  sub_1DC51094C();
  v29 = sub_1DC5176FC();

  v45 = v28;
  v30 = [v28 fileExistsAtPath:v29 isDirectory:&v47];

  if (v30 && (v47 & 1) != 0)
  {
    v31 = *(v9 + 48);
    *v15 = v6;
    *(v15 + 1) = v4;
    v32 = sub_1DC5109BC();
    OUTLINED_FUNCTION_35(v32);
    (*(v33 + 16))(&v15[v31], v44);
    v34 = *(*v2 + 168);

    v35 = v34(v48);
    v37 = v36;
    sub_1DC39DC08(&qword_1ECC7D138, &unk_1DC526DA0, &qword_1ECC7D0B0, &qword_1DC526AA0);
    v38 = *(*v37 + 16);
    sub_1DC39DC84(v38, &qword_1ECC7D138, &unk_1DC526DA0, &qword_1ECC7D0B0, &qword_1DC526AA0);
    *(*v37 + 16) = v38 + 1;
    OUTLINED_FUNCTION_7_15();
    sub_1DC2E5B08(v15, v39 + v40 * v38, &qword_1ECC7D0B0, &qword_1DC526AA0);
    v41 = OUTLINED_FUNCTION_21_0();
    v35(v41);
  }

  else
  {
    sub_1DC399C5C();
    OUTLINED_FUNCTION_33_1();
    *v42 = 3;
    swift_willThrow();
  }

LABEL_10:
  v26 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC39A104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[4] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12_0();
  if (((*(v6 + 224))() & 1) == 0)
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E69ABCF8]) init];
    v10 = sub_1DC5176FC();
    v37[0] = 0;
    v11 = [v9 setItemType:3 itemId:v10 error:v37];

    if (v11)
    {
      v12 = v37[0];

      v37[0] = 0;
      v13 = sub_1DC39E644(100, a2, a3, v37, v9);
      v14 = v37[0];
      if (!v13)
      {
        v26 = v14;
        sub_1DC51085C();

LABEL_14:
        swift_willThrow();

        goto LABEL_15;
      }

      v15 = 0;
      v16 = *(a1 + 16);
      v17 = (a1 + 40);
      while (v16 != v15)
      {
        v19 = *(v17 - 1);
        v18 = *v17;
        v37[0] = 0;

        v20 = OUTLINED_FUNCTION_16();
        v23 = sub_1DC39E6B4(v20, v21, v18, v22, v9);
        if (!v23)
        {
          goto LABEL_13;
        }

        v24 = v23;
        ++v15;
        v25 = v37[0];

        v17 += 2;
      }

      v37[0] = 0;
      v27 = [v9 buildItemWithError_];
      v28 = v37[0];
      if (v27)
      {
        OUTLINED_FUNCTION_12_0();
        v30 = *(v29 + 192);
        v31 = v28;
        v32 = v30(v37);
        v34 = v33;
        MEMORY[0x1E12962A0]();
        sub_1DC301904(*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1DC517A5C();
        v32(v37, 0);

        goto LABEL_15;
      }
    }

LABEL_13:
    v35 = v37[0];
    sub_1DC51085C();

    goto LABEL_14;
  }

  sub_1DC399C5C();
  v7 = OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_18_16(v7, v8);
LABEL_15:
  v36 = *MEMORY[0x1E69E9840];
}

void sub_1DC39A3CC()
{
  OUTLINED_FUNCTION_28_1();
  v64 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v67[4] = *MEMORY[0x1E69E9840];
  v11 = sub_1DC510B6C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_12_0();
  if (((*(v20 + 224))() & 1) == 0)
  {
    v61 = v8;
    v23 = (*(*v0 + 200))();
    v24 = OUTLINED_FUNCTION_16();
    sub_1DC2E4CBC(v24, v25, v23);
    OUTLINED_FUNCTION_121();

    v59 = v6;
    v60 = v4;
    if (v0)
    {
    }

    else
    {
      v62 = (*(MEMORY[0] + 216))(v67);
      v26 = v10;
      v28 = v27;
      v29 = *v27;
      swift_isUniquelyReferenced_nonNull_native();
      v66 = *v28;
      sub_1DC39E304(MEMORY[0x1E69E7CC0], v6, v4);
      *v28 = v66;
      v10 = v26;
      v30 = OUTLINED_FUNCTION_21_0();
      v62(v30);
    }

    v31 = [objc_allocWithZone(MEMORY[0x1E69ABCF8]) init];
    sub_1DC510B5C();
    sub_1DC510B1C();
    v63 = *(v14 + 8);
    v63(v19, v11);
    v32 = sub_1DC5176FC();

    v67[0] = 0;
    v33 = [v31 setItemType:18 itemId:v32 error:v67];

    if (v33)
    {
      v58 = v10;
      v34 = v67[0];

      v35 = *(v64 + 16);
      v36 = (v64 + 40);
      if (v35)
      {
        while (1)
        {
          v37 = *(v36 - 1);
          v38 = *v36;
          v67[0] = 0;

          v39 = sub_1DC39E6B4(801, v37, v38, v67, v31);
          if (!v39)
          {
            break;
          }

          v40 = v39;
          v41 = v67[0];

          v36 += 2;
          if (!--v35)
          {
            goto LABEL_10;
          }
        }

        v55 = v67[0];
        sub_1DC51085C();

        goto LABEL_20;
      }

LABEL_10:
      sub_1DC510B5C();
      v42 = sub_1DC510B1C();
      v44 = v43;
      v63(v19, v11);
      v67[0] = 0;
      v45 = sub_1DC39E6B4(800, v42, v44, v67, v31);
      v46 = v67[0];
      if (v45)
      {

        v67[0] = 0;
        v47 = sub_1DC39E644(803, v58, v61, v67, v31);
        v46 = v67[0];
        if (v47)
        {

          v67[0] = 0;
          v48 = sub_1DC39E644(802, v58, v61, v67, v31);
          v46 = v67[0];
          if (v48)
          {

            v49 = (*(*v2 + 216))(v67);
            v51 = sub_1DC39A934(&v66, v59, v60);
            if (*v50)
            {
              v52 = v50;
              v65 = 0;
              if ([v31 buildItemWithError_])
              {
                MEMORY[0x1E12962A0](v65);
                sub_1DC301904(*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10));
                sub_1DC517A5C();
                (v51)(&v66, 0);
                v53 = 0;
              }

              else
              {
                v57 = v65;
                sub_1DC51085C();

                swift_willThrow();
                (v51)(&v66, 1);
                v53 = 1;
              }

              v49(v67, v53);
            }

            else
            {
              (v51)(&v66, 0);
              v49(v67, 0);
            }

            goto LABEL_21;
          }
        }
      }

      v54 = v46;
    }

    else
    {
      v54 = v67[0];
    }

    sub_1DC51085C();

LABEL_20:
    swift_willThrow();
LABEL_21:

    goto LABEL_22;
  }

  sub_1DC399C5C();
  v21 = OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_18_16(v21, v22);
LABEL_22:
  v56 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}