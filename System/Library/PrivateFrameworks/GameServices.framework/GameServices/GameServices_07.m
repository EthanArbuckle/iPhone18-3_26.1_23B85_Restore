char *sub_1D84D9F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_1D84E73B0(*(a1 + 16), 0);
  v4 = sub_1D84EB678(&v6, v3 + 4, v1, a1);

  sub_1D84F0B4C();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3;
  sub_1D84E76D0(&v6);
  return v6;
}

void GameActivityInstance.fallbackPartyURL(fallbackURL:supportsPartyCode:)()
{
  OUTLINED_FUNCTION_386();
  v159 = v3;
  v5 = v4;
  v163 = sub_1D8580B88();
  v6 = OUTLINED_FUNCTION_1(v163);
  v156 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21_1();
  v162 = v10;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_194_1();
  v154 = v12;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_194_1();
  v153 = v14;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_194_1();
  v155 = v16;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v141 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E50, &unk_1D859AA30);
  v21 = OUTLINED_FUNCTION_363(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_292();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_212_2();
  v160 = sub_1D8580C68();
  v25 = OUTLINED_FUNCTION_1(v160);
  v157 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_315();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_245_1();
  v158 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_128();
  v38 = sub_1D8580D78();
  v39 = OUTLINED_FUNCTION_1(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_19_0();
  v161 = v44;
  sub_1D84D93C8();
  OUTLINED_FUNCTION_501(v0, 1, v38);
  if (v53)
  {
    sub_1D8436E18(v0, &qword_1ECA39D88, &qword_1D859A988);
    v45 = OUTLINED_FUNCTION_258_1();
LABEL_4:
    v47 = 1;
    v48 = v38;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    goto LABEL_6;
  }

  v152 = v5;
  v49 = *(v41 + 32);
  v50 = OUTLINED_FUNCTION_368_0();
  v51(v50);
  sub_1D8580BB8();
  v52 = v160;
  OUTLINED_FUNCTION_501(v1, 1, v160);
  if (v53)
  {
    v2 = v1;
LABEL_13:
    (*(v41 + 8))(v161, v38);
    sub_1D8436E18(v2, &qword_1ECA39E50, &unk_1D859AA30);
    v59 = *(v41 + 16);
    v60 = v152;
    v61 = OUTLINED_FUNCTION_7_0();
    v62(v61);
    v45 = v60;
    v46 = 0;
    goto LABEL_4;
  }

  v147 = v38;
  v149 = v31;
  v150 = v41;
  v55 = v157;
  v54 = v158;
  v56 = *(v157 + 32);
  v57 = OUTLINED_FUNCTION_308_0();
  v56(v57);
  sub_1D8580BB8();
  OUTLINED_FUNCTION_501(v2, 1, v52);
  if (v58)
  {
    (*(v55 + 8))(v54, v52);
    v41 = v150;
    v38 = v147;
    goto LABEL_13;
  }

  v63 = OUTLINED_FUNCTION_418_0();
  v56(v63);
  sub_1D8580C18();
  v65 = v150;
  v66 = v156;
  if (!v64)
  {
    goto LABEL_20;
  }

  v67 = sub_1D8581288();
  v69 = v68;

  if (v67 != 0x7370747468 || v69 != 0xE500000000000000)
  {
    sub_1D8581AB8();
    OUTLINED_FUNCTION_442_0();
LABEL_20:
    v71 = *(v157 + 8);
    v72 = v160;
    v71(v149, v160);
    v71(v158, v72);
    v73 = v147;
    (*(v65 + 8))(v161, v147);
    OUTLINED_FUNCTION_123();
    v48 = v73;
    goto LABEL_5;
  }

  v74 = sub_1D8580B98();
  v75 = 0;
  v76 = MEMORY[0x1E69E7CC0];
  if (v74)
  {
    v76 = v74;
  }

  v164 = v76;
  v77 = v76;
  v78 = *(v76 + 16);
  v145 = (v66 + 8);
  v146 = v78;
  v159 = v66 + 16;
  while (1)
  {
    v79 = *(v77 + 16);
    v80 = v163;
    if (v146 == v75)
    {
      goto LABEL_88;
    }

    if (v75 >= v79)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v81 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v82 = *(v66 + 72);
    v83 = *(v66 + 16);
    v83(v19, v77 + v81 + v82 * v75, v163);
    sub_1D8580B58();
    OUTLINED_FUNCTION_354_0();
    v84 = sub_1D85779BC();
    v85 = *v84;
    v86 = v84[1];
    v151 = v84;
    v87 = v80 == v85 && v19 == v86;
    v148 = v75;
    v88 = v83;
    if (v87)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_495();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_442_0();
    if (v80)
    {
      goto LABEL_48;
    }

    sub_1D8580B58();
    OUTLINED_FUNCTION_354_0();
    v89 = sub_1D85779E4();
    if (v80 == *v89 && v19 == v89[1])
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_495();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_442_0();
    if (v80)
    {
      goto LABEL_48;
    }

    sub_1D8580B58();
    OUTLINED_FUNCTION_354_0();
    v91 = sub_1D85779D0();
    if (v80 == *v91 && v19 == v91[1])
    {
LABEL_47:
      v95 = v77;

      v80 = v163;
LABEL_49:
      v146 = v81;
      v67 = *v145;
      (*v145)(v19, v80);
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_495();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_442_0();
    if (v80)
    {
LABEL_48:
      v80 = v163;
      v95 = v77;
      goto LABEL_49;
    }

    sub_1D8580B58();
    OUTLINED_FUNCTION_354_0();
    v93 = sub_1D85779F8();
    if (v80 == *v93 && v19 == v93[1])
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_495();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_442_0();
    v67 = *v145;
    (*v145)(v19, v163);
    if (v80)
    {
      break;
    }

    v75 = v148 + 1;
  }

  v146 = v81;
  v80 = v163;
  v95 = v77;
LABEL_50:
  v79 = v148 + 1;
  v96 = *(v95 + 16);
  if (v96 - 1 == v148)
  {
    v97 = v148;
    goto LABEL_89;
  }

  v144 = (v66 + 40);
  v80 = v146 + v82 * v79;
  v66 = v155;
  while (2)
  {
    if (v79 >= v96)
    {
      __break(1u);
      goto LABEL_103;
    }

    v88(v66, v95 + v80, v163);
    v98 = sub_1D8580B58();
    v19 = v99;
    if (v98 == *v151 && v99 == v151[1])
    {
      goto LABEL_83;
    }

    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    if (v66)
    {
      goto LABEL_84;
    }

    sub_1D8580B58();
    OUTLINED_FUNCTION_343_1();
    v101 = sub_1D85779E4();
    OUTLINED_FUNCTION_487_0(v101);
    if (v53)
    {
      v103 = v19 == v102;
    }

    else
    {
      v103 = 0;
    }

    if (v103)
    {
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_151();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    if (v66)
    {
      goto LABEL_84;
    }

    sub_1D8580B58();
    OUTLINED_FUNCTION_343_1();
    v104 = sub_1D85779D0();
    OUTLINED_FUNCTION_487_0(v104);
    if (v53)
    {
      v106 = v19 == v105;
    }

    else
    {
      v106 = 0;
    }

    if (v106)
    {
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_151();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    if (v66)
    {
LABEL_84:
      (v67)(v66, v163);
      goto LABEL_85;
    }

    sub_1D8580B58();
    OUTLINED_FUNCTION_343_1();
    v107 = sub_1D85779F8();
    OUTLINED_FUNCTION_487_0(v107);
    if (v53)
    {
      v109 = v19 == v108;
    }

    else
    {
      v109 = 0;
    }

    if (v109)
    {
LABEL_83:

      goto LABEL_84;
    }

    OUTLINED_FUNCTION_151();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    (v67)(v66, v163);
    if ((v66 & 1) == 0)
    {
      if (v79 != v148)
      {
        if (v148 < 0)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
          return;
        }

        v143 = *(v95 + 16);
        if (v148 >= v143)
        {
          goto LABEL_106;
        }

        v142 = v148 * v82;
        v110 = v95 + v146 + v148 * v82;
        v111 = v95;
        v112 = v163;
        v88(v153, v110, v163);
        if (v79 >= v143)
        {
          goto LABEL_107;
        }

        v88(v154, v111 + v80, v112);
        v95 = v111;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_1D84EB980(v111);
        }

        v19 = v163;
        v143 = *v144;
        v143(v95 + v146 + v142, v154, v163);
        if (v79 >= *(v95 + 16))
        {
          goto LABEL_108;
        }

        v143(v95 + v80, v153, v19);
        v164 = v95;
      }

      ++v148;
    }

LABEL_85:
    ++v79;
    v96 = *(v95 + 16);
    v80 += v82;
    if (v79 != v96)
    {
      continue;
    }

    break;
  }

  v97 = v148;
  v80 = v163;
  if (v79 >= v148)
  {
    goto LABEL_89;
  }

  __break(1u);
LABEL_88:
  v97 = v79;
LABEL_89:
  sub_1D84EB7E8(v97, v79);
  v113 = v149;
  v114 = sub_1D8580B98();
  if (v114)
  {
    v19 = v114;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v67 = *(v19 + 2);
  v115 = v150;
  if (!v67)
  {

    v132 = v157;
    v133 = v147;
    goto LABEL_100;
  }

  v66 = v164;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_104:
    v136 = *(v66 + 16);
    OUTLINED_FUNCTION_197_1();
    v66 = sub_1D8439370(v137, v138, v139, v140);
  }

  OUTLINED_FUNCTION_490_0();
  v118 = v117 & ~v116;
  v155 = v19;
  v119 = &v19[v118];
  v121 = *(v120 + 72);
  v122 = *(v120 + 16);
  v123 = (v120 + 32);
  v124 = v162;
  do
  {
    v122(v124, v119, v80);
    v126 = *(v66 + 16);
    v125 = *(v66 + 24);
    if (v126 >= v125 >> 1)
    {
      OUTLINED_FUNCTION_337_0(v125);
      OUTLINED_FUNCTION_197_1();
      v66 = sub_1D8439370(v128, v129, v130, v131);
    }

    *(v66 + 16) = v126 + 1;
    v127 = v66 + v118 + v126 * v121;
    v124 = v162;
    v80 = v163;
    (*v123)(v127, v162, v163);
    v119 += v121;
    --v67;
  }

  while (v67);

  v164 = v66;
  v132 = v157;
  v113 = v149;
  v115 = v150;
  v133 = v147;
LABEL_100:
  sub_1D8580BA8();
  sub_1D8580BC8();
  v134 = *(v132 + 8);
  v134(v113, v160);
  v135 = OUTLINED_FUNCTION_495();
  (v134)(v135);
  (*(v115 + 8))(v161, v133);
LABEL_6:
  OUTLINED_FUNCTION_388();
}

uint64_t GameActivityInstance.runtimeStats.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameActivityInstance(0) + 60));
}

uint64_t GameActivityInstance.runtimeStats.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = *(type metadata accessor for GameActivityInstance(v2) + 60);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t GameActivityInstance.runtimeStats.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance(v0) + 60);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.participants.getter()
{
  OUTLINED_FUNCTION_529_0();
}

uint64_t GameActivityInstance.participantStates.getter()
{
  OUTLINED_FUNCTION_530_0();
}

uint64_t GameActivityInstance.creator.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = (v1 + *(type metadata accessor for GameActivityInstance(v2) + 72));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t GameActivityInstance.deepLinkReferral.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance(v0);
  v2 = OUTLINED_FUNCTION_417_0(*(v1 + 80));

  return sub_1D84EB994(v2, v3, v4);
}

uint64_t GameActivityInstance.deepLinkReferral.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for GameActivityInstance(0) + 80);
  result = sub_1D84EB9AC(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t GameActivityInstance.deepLinkReferral.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance(v0) + 80);
  return OUTLINED_FUNCTION_106();
}

void GameActivityInstance.consumptionState.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance(v0);
  OUTLINED_FUNCTION_493_0(*(v1 + 84));
}

uint64_t GameActivityInstance.consumptionState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for GameActivityInstance(0);
  *(v1 + *(result + 84)) = v2;
  return result;
}

uint64_t GameActivityInstance.consumptionState.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance(v0) + 84);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.init(id:definitionRef:participants:participantStates:creator:creationDate:partyCode:startDate:lastResumeDate:endDate:duration:state:initiatedByApple:runtimeStats:deepLinkReferral:properties:shortGroupID:consumptionState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, char a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  v25 = a10;
  v26 = *a3;
  v27 = a3[1];
  v50 = *a6;
  v49 = a6[1];
  v56 = *a16;
  v58 = a19[1];
  v59 = *a19;
  v57 = *(a19 + 16);
  v60 = *a23;
  v28 = type metadata accessor for GameActivityInstance(0);
  v29 = v28[10];
  v30 = sub_1D8580EA8();
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  v34 = v28[11];
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v30);
  v38 = v28[12];
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v30);
  OUTLINED_FUNCTION_268_1(v28[20]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v26;
  *(a9 + 24) = v27;
  v42 = a8;
  *(a9 + v28[16]) = a4;
  *(a9 + v28[17]) = a5;
  v43 = (a9 + v28[18]);
  *v43 = v50;
  v43[1] = v49;
  v44 = *(v30 - 8);
  (*(v44 + 16))(a9 + v28[9], a7, v30);
  if (!a10)
  {
    v42 = static PartyCodeGenerator.generate4_4String()();
    v25 = v45;
  }

  (*(v44 + 8))(a7, v30);
  *(a9 + 48) = v42;
  *(a9 + 56) = v25;
  OUTLINED_FUNCTION_491_0();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_491_0();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_491_0();
  sub_1D84EC2E4();
  v46 = (a9 + v28[13]);
  *v46 = a14;
  v46[1] = a15;
  *(a9 + 40) = v56;
  *(a9 + v28[19]) = a17 & 1;
  result = OUTLINED_FUNCTION_436_0(v28[15]);
  *v29 = v59;
  *(v29 + 8) = v58;
  *(v29 + 16) = v57;
  *(a9 + 32) = a20;
  v48 = (a9 + v28[14]);
  *v48 = a21;
  v48[1] = a22;
  *(a9 + v28[21]) = v60;
  return result;
}

void GameActivityInstance.init(definitionRef:gameBundleID:id:properties:partyCode:initiatedByApple:creatorPlayerID:deepLinkReferral:shortGroupID:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26, char *a27)
{
  OUTLINED_FUNCTION_285();
  v90 = v28;
  v88 = v29;
  v93 = v30;
  v83 = v31;
  v84 = v32;
  v34 = v33;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v38 = OUTLINED_FUNCTION_363(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_315();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_286_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_212_2();
  v43 = sub_1D8580EA8();
  v44 = OUTLINED_FUNCTION_1(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_227_0();

  v79 = v34[1];
  v80 = *v34;
  v86 = a24[1];
  v87 = *a24;
  v85 = *(a24 + 16);
  v89 = *a27;
  Ref<A>.init(internalID:)();
  sub_1D8580E98();
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v43);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v43);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v43);
  v58 = sub_1D8581BF8();
  v81 = v59;
  v82 = v58;
  v60 = type metadata accessor for GameActivityInstance(0);
  v61 = v60[10];
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v43);
  v65 = v60[11];
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v43);
  v78 = v60[12];
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v43);
  v72 = v36 + v60[20];
  *v72 = 0;
  *(v72 + 8) = 0;
  *(v72 + 16) = -1;
  *v36 = v83;
  *(v36 + 8) = v84;
  *(v36 + 16) = v80;
  *(v36 + 24) = v79;
  *(v36 + v60[16]) = MEMORY[0x1E69E7CD0];
  *(v36 + v60[17]) = MEMORY[0x1E69E7CC8];
  v73 = (v36 + v60[18]);
  *v73 = v91;
  v74 = v88;
  v73[1] = v92;
  (*(v46 + 16))(v36 + v60[9], v27, v43);
  if (!v88)
  {
    v93 = static PartyCodeGenerator.generate4_4String()();
    v74 = v75;
  }

  (*(v46 + 8))(v27, v43);
  *(v36 + 48) = v93;
  *(v36 + 56) = v74;
  OUTLINED_FUNCTION_416_0();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_416_0();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_416_0();
  sub_1D84EC2E4();
  v76 = (v36 + v60[13]);
  *v76 = v82;
  v76[1] = v81;
  *(v36 + 40) = 1;
  *(v36 + v60[19]) = a21 & 1;
  *(v36 + v60[15]) = MEMORY[0x1E69E7CC0];
  sub_1D84EB9AC(*v72, *(v72 + 8), *(v72 + 16));
  *v72 = v87;
  *(v72 + 8) = v86;
  *(v72 + 16) = v85;
  *(v36 + 32) = v90;
  v77 = (v36 + v60[14]);
  *v77 = a25;
  v77[1] = a26;
  *(v36 + v60[21]) = v89;
  OUTLINED_FUNCTION_284_0();
}

void GameActivityInstance.init(definitionID:definitionEnvironment:gameBundleID:id:properties:partyCode:initiatedByApple:creatorPlayerID:deepLinkReferral:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int *a24, uint64_t a25, uint64_t a26, char *a27)
{
  OUTLINED_FUNCTION_285();
  a19 = v28;
  a20 = v29;
  a10 = v30;
  v91 = v31;
  v87 = v32;
  v34 = v33;
  v36 = v35;
  v92 = a22;
  v38 = a26;
  v37 = a27;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v40 = OUTLINED_FUNCTION_363(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_5_0();
  v84 = sub_1D8580EA8();
  v45 = OUTLINED_FUNCTION_1(v84);
  v86 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_190_1(v49);
  v51 = *v38;
  v50 = *(v38 + 8);
  v52 = *(v38 + 16);
  v88 = *v37;
  sub_1D84EB9C4(v34, v95);
  v53 = sub_1D8542C48();
  sub_1D84477D8(*v53);
  Ref<A>.init(bundleID:)();
  OUTLINED_FUNCTION_402_0();
  Ref<A>.gameActivityDefinition(id:activityEnvironment:)();
  if (v27)
  {

    sub_1D84EB9AC(v51, v50, v52);

    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(v95);
  }

  else
  {
    v83 = v51;
    v89 = v50;
    v90 = v34;
    v54 = a24;
    v82 = a23;

    Ref<A>.init(internalID:)();
    sub_1D8580E98();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v84);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v84);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v84);
    sub_1D8581BF8();
    v64 = OUTLINED_FUNCTION_422_0();
    v65 = OUTLINED_FUNCTION_85_2(*(v64 + 40));
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v84);
    v68 = OUTLINED_FUNCTION_85_2(v54[11]);
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v84);
    v71 = OUTLINED_FUNCTION_85_2(v54[12]);
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v84);
    v74 = v36 + v54[20];
    *v74 = 0;
    *(v74 + 8) = 0;
    *(v74 + 16) = -1;
    *v36 = v87;
    *(v36 + 8) = v91;
    *(v36 + 16) = v93;
    *(v36 + 24) = v94;
    *(v36 + v54[16]) = MEMORY[0x1E69E7CD0];
    *(v36 + v54[17]) = MEMORY[0x1E69E7CC8];
    v75 = (v36 + v54[18]);
    *v75 = v93;
    v75[1] = v94;
    (*(v86 + 16))(v36 + v54[9], v85, v84);
    v76 = v92;
    if (v92)
    {
      v77 = a21;
    }

    else
    {
      v77 = static PartyCodeGenerator.generate4_4String()();
      v76 = v78;
    }

    __swift_destroy_boxed_opaque_existential_1(v90);
    v79 = *(v86 + 8);
    v80 = OUTLINED_FUNCTION_258();
    v81(v80);
    __swift_destroy_boxed_opaque_existential_1(v95);
    *(v36 + 48) = v77;
    *(v36 + 56) = v76;
    OUTLINED_FUNCTION_365_0(&a9);
    sub_1D84EC2E4();
    OUTLINED_FUNCTION_365_0(&v97);
    sub_1D84EC2E4();
    OUTLINED_FUNCTION_365_0(&v96);
    sub_1D84EC2E4();
    OUTLINED_FUNCTION_229_2((v36 + v54[13]));
    *(v36 + 40) = 1;
    *(v36 + v54[19]) = v82 & 1;
    *(v36 + v54[15]) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_526_0();
    *v74 = v83;
    *(v74 + 8) = v89;
    *(v74 + 16) = v52;
    *(v36 + 32) = a10;
    OUTLINED_FUNCTION_229_2((v36 + v54[14]));
    *(v36 + v54[21]) = v88;
  }

  OUTLINED_FUNCTION_342_1();
  OUTLINED_FUNCTION_284_0();
}

uint64_t static GameActivityInstance.generateShortGroupID()()
{
  v0 = *sub_1D8542C48();

  return sub_1D84477D8(v0);
}

void GameActivityInstance.init(definitionID:storeFront:language:gameBundleID:id:properties:partyCode:initiatedByApple:creatorPlayerID:deepLinkReferral:shortGroupID:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned __int8 *a33)
{
  OUTLINED_FUNCTION_285();
  a20 = v36;
  a21 = v37;
  OUTLINED_FUNCTION_330_1(v38, v39, v37, v40, v41, v42, v43, v44);
  v46 = v45;
  v47 = a33;
  v48 = a30;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v50 = OUTLINED_FUNCTION_363(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_66_0(v55);
  v115 = sub_1D8580EA8();
  v56 = OUTLINED_FUNCTION_1(v115);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_19_0();
  v60 = OUTLINED_FUNCTION_66_0(v59);
  v61 = type metadata accessor for DefaultGameActivityEnvironment(v60);
  v62 = OUTLINED_FUNCTION_4_0(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_283();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_200();
  v69 = sub_1D8580D78();
  v70 = OUTLINED_FUNCTION_1(v69);
  v72 = v71;
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_309();
  v122 = *v48;
  v123 = *(v48 + 8);
  v75 = *(v48 + 16);
  a10 = *v47;
  a11 = v75;
  OUTLINED_FUNCTION_441_0();
  v76 = OUTLINED_FUNCTION_258_1();
  if (__swift_getEnumTagSinglePayload(v76, v77, v69) == 1)
  {
    sub_1D8436E18(v34, &qword_1ECA39D88, &qword_1D859A988);
    OUTLINED_FUNCTION_276_0();
    OUTLINED_FUNCTION_57_0();
    sub_1D8581838();
    __break(1u);
  }

  else
  {
    v121 = a32;
    OUTLINED_FUNCTION_302_0(a29);
    v118 = a26;
    v78 = a24;

    v79 = *(v72 + 32);
    v80 = OUTLINED_FUNCTION_368();
    v81(v80);
    (*(v72 + 16))(&v35[*(v61 + 20)], v33, v69);
    OUTLINED_FUNCTION_165_1();
    *v35 = v82;
    *(v35 + 1) = v83;
    Ref<A>.init(bundleID:)();
    v124[5] = v124[7];
    v124[6] = v124[8];
    v124[3] = v61;
    OUTLINED_FUNCTION_15_1();
    v124[4] = sub_1D84C49BC(v84);
    __swift_allocate_boxed_opaque_existential_1(v124);
    OUTLINED_FUNCTION_16_2();
    sub_1D84EA648();
    Ref<A>.gameActivityDefinition(id:activityEnvironment:)();
    if (v119)
    {

      sub_1D84EB9AC(v122, v123, a11);

      OUTLINED_FUNCTION_6_2();
      sub_1D84EB2B8();
      (*(v72 + 8))(v33, v69);
      __swift_destroy_boxed_opaque_existential_1(v124);
    }

    else
    {
      v120 = v33;
      v116 = a31;
      v117 = v78;
      v85 = a28;

      __swift_destroy_boxed_opaque_existential_1(v124);
      OUTLINED_FUNCTION_264_1(v125);
      OUTLINED_FUNCTION_509_0();
      OUTLINED_FUNCTION_347_0();
      v86 = OUTLINED_FUNCTION_61_1(&a14);
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v115);
      v89 = OUTLINED_FUNCTION_61_1(&a15);
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v115);
      v92 = OUTLINED_FUNCTION_61_1(&a16);
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v115);
      sub_1D8581BF8();
      v95 = OUTLINED_FUNCTION_422_0();
      v96 = OUTLINED_FUNCTION_39_0(*(v95 + 40));
      __swift_storeEnumTagSinglePayload(v96, v97, v98, v115);
      v99 = OUTLINED_FUNCTION_39_0(v85[11]);
      __swift_storeEnumTagSinglePayload(v99, v100, v101, v115);
      v102 = OUTLINED_FUNCTION_39_0(v85[12]);
      __swift_storeEnumTagSinglePayload(v102, v103, v104, v115);
      v105 = v46 + v85[20];
      *v105 = 0;
      *(v105 + 8) = 0;
      *(v105 + 16) = -1;
      OUTLINED_FUNCTION_273_1(&a9);
      *(v46 + v106) = MEMORY[0x1E69E7CD0];
      v107 = OUTLINED_FUNCTION_207_2(v85[17]);
      v108(v107);
      v109 = v118;
      if (v118)
      {
        v110 = a25;
      }

      else
      {
        v110 = static PartyCodeGenerator.generate4_4String()();
        v109 = v111;
      }

      v112 = OUTLINED_FUNCTION_329_0();
      v113(v112);
      OUTLINED_FUNCTION_6_2();
      sub_1D84EB2B8();
      (*(v72 + 8))(v120, v69);
      *(v46 + 48) = v110;
      *(v46 + 56) = v109;
      OUTLINED_FUNCTION_246_1(&a17);
      OUTLINED_FUNCTION_281_0(&a14);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_246_1(&v126);
      OUTLINED_FUNCTION_281_0(&a15);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_246_1(&v125);
      OUTLINED_FUNCTION_214_2();
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_229_2((v46 + v85[13]));
      *(v46 + 40) = 1;
      OUTLINED_FUNCTION_383_0(v85[19]);
      OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
      *v105 = v122;
      *(v105 + 8) = v123;
      *(v105 + 16) = a11;
      *(v46 + 32) = v117;
      v114 = (v46 + v85[14]);
      *v114 = v116;
      v114[1] = v121;
      *(v46 + v85[21]) = a10;
    }

    OUTLINED_FUNCTION_342_1();
    OUTLINED_FUNCTION_284_0();
  }
}

void GameActivityInstance.init(definitionID:storeFront:language:gameBundleID:id:properties:partyCode:initiatedByApple:creatorPlayerID:deepLinkReferral:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int *a27, uint64_t a28, uint64_t a29, char *a30)
{
  OUTLINED_FUNCTION_285();
  a19 = v33;
  a20 = v34;
  OUTLINED_FUNCTION_330_1(v35, v36, v34, v37, v38, v39, v40, v41);
  v43 = v42;
  v45 = a29;
  v44 = a30;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v47 = OUTLINED_FUNCTION_363(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_66_0(v52);
  v120 = sub_1D8580EA8();
  v53 = OUTLINED_FUNCTION_1(v120);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_19_0();
  v57 = OUTLINED_FUNCTION_66_0(v56);
  v58 = type metadata accessor for DefaultGameActivityEnvironment(v57);
  v59 = OUTLINED_FUNCTION_4_0(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_283();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v62);
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_200();
  v66 = sub_1D8580D78();
  v67 = OUTLINED_FUNCTION_1(v66);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_309();
  v127 = *v45;
  v128 = *(v45 + 8);
  v129 = *(v45 + 16);
  v119 = *v44;
  v72 = sub_1D8542C48();
  v118 = sub_1D84477D8(*v72);
  v132 = v73;
  OUTLINED_FUNCTION_441_0();
  v74 = OUTLINED_FUNCTION_258_1();
  if (__swift_getEnumTagSinglePayload(v74, v75, v66) == 1)
  {
    sub_1D8436E18(v31, &qword_1ECA39D88, &qword_1D859A988);
    OUTLINED_FUNCTION_276_0();
    OUTLINED_FUNCTION_57_0();
    sub_1D8581838();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_302_0(a28);
    v76 = a23;
    v123 = a25;

    OUTLINED_FUNCTION_406_0();
    v77 = OUTLINED_FUNCTION_368();
    v78(v77);
    (*(v69 + 16))(&v32[*(v58 + 20)], v30, v66);
    OUTLINED_FUNCTION_165_1();
    *v32 = v79;
    *(v32 + 1) = v80;
    Ref<A>.init(bundleID:)();
    v130[5] = v130[7];
    v130[6] = v130[8];
    v130[3] = v58;
    OUTLINED_FUNCTION_15_1();
    v130[4] = sub_1D84C49BC(v81);
    __swift_allocate_boxed_opaque_existential_1(v130);
    OUTLINED_FUNCTION_16_2();
    sub_1D84EA648();
    Ref<A>.gameActivityDefinition(id:activityEnvironment:)();
    if (v124)
    {
      sub_1D84EB9AC(v127, v128, v129);

      OUTLINED_FUNCTION_6_2();
      sub_1D84EB2B8();
      v82 = *(v69 + 8);
      v83 = OUTLINED_FUNCTION_418_0();
      v84(v83);

      __swift_destroy_boxed_opaque_existential_1(v130);
    }

    else
    {
      v125 = v76;
      v85 = a27;
      v122 = a26;

      __swift_destroy_boxed_opaque_existential_1(v130);
      OUTLINED_FUNCTION_264_1(v131);
      OUTLINED_FUNCTION_509_0();
      OUTLINED_FUNCTION_347_0();
      v86 = OUTLINED_FUNCTION_61_1(&a13);
      v87 = v120;
      __swift_storeEnumTagSinglePayload(v86, v88, v89, v120);
      v90 = OUTLINED_FUNCTION_61_1(&a14);
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v120);
      v93 = OUTLINED_FUNCTION_61_1(&a15);
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v120);
      v126 = sub_1D8581BF8();
      v121 = v96;
      v97 = OUTLINED_FUNCTION_422_0();
      v98 = OUTLINED_FUNCTION_39_0(*(v97 + 40));
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v120);
      v101 = OUTLINED_FUNCTION_39_0(v85[11]);
      __swift_storeEnumTagSinglePayload(v101, v102, v103, v120);
      v104 = OUTLINED_FUNCTION_39_0(v85[12]);
      __swift_storeEnumTagSinglePayload(v104, v105, v106, v120);
      v107 = v43 + v85[20];
      *v107 = 0;
      *(v107 + 8) = 0;
      *(v107 + 16) = -1;
      OUTLINED_FUNCTION_273_1(&a18);
      *(v43 + v108) = MEMORY[0x1E69E7CD0];
      v109 = OUTLINED_FUNCTION_207_2(v85[17]);
      v110(v109);
      if (v123)
      {
        v87 = a24;
      }

      else
      {
        static PartyCodeGenerator.generate4_4String()();
        OUTLINED_FUNCTION_354_0();
      }

      v111 = OUTLINED_FUNCTION_329_0();
      v112(v111);
      OUTLINED_FUNCTION_6_2();
      sub_1D84EB2B8();
      v113 = *(v69 + 8);
      v114 = OUTLINED_FUNCTION_418_0();
      v115(v114);
      *(v43 + 48) = v87;
      *(v43 + 56) = v123;
      OUTLINED_FUNCTION_246_1(&a17);
      OUTLINED_FUNCTION_281_0(&a13);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_246_1(&a16);
      OUTLINED_FUNCTION_281_0(&a14);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_246_1(&v131);
      OUTLINED_FUNCTION_214_2();
      sub_1D84EC2E4();
      v116 = (v43 + v85[13]);
      *v116 = v126;
      v116[1] = v121;
      *(v43 + 40) = 1;
      *(v43 + v85[19]) = v122 & 1;
      *(v43 + v85[15]) = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_526_0();
      *v107 = v127;
      *(v107 + 8) = v128;
      *(v107 + 16) = v129;
      *(v43 + 32) = v125;
      v117 = (v43 + v85[14]);
      *v117 = v118;
      v117[1] = v132;
      *(v43 + v85[21]) = v119;
    }

    OUTLINED_FUNCTION_342_1();
    OUTLINED_FUNCTION_284_0();
  }
}

void GameActivityInstance.init(definitionID:gameBundleID:id:properties:partyCode:initiatedByApple:creatorPlayerID:deepLinkReferral:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26)
{
  OUTLINED_FUNCTION_285();
  a19 = v30;
  a20 = v31;
  v113 = v32;
  v114 = v33;
  v112 = v34;
  v106 = v35;
  v37 = v36;
  v38 = a25;
  v122 = a26;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v40 = OUTLINED_FUNCTION_363(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_66_0(v45);
  v103 = sub_1D8580EA8();
  v46 = OUTLINED_FUNCTION_1(v103);
  v104 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_19_0();
  v51 = OUTLINED_FUNCTION_66_0(v50);
  v52 = type metadata accessor for DefaultGameActivityEnvironment(v51);
  v53 = OUTLINED_FUNCTION_4_0(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_227_0();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_250_0();
  v60 = sub_1D8580D78();
  v61 = OUTLINED_FUNCTION_1(v60);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_228_1();
  v109 = *v38;
  v110 = *(v38 + 8);
  v111 = *(v38 + 16);
  v105 = *v122;
  OUTLINED_FUNCTION_412_0();
  sub_1D8580D68();
  if (__swift_getEnumTagSinglePayload(v28, 1, v60) == 1)
  {
    sub_1D8436E18(v28, &qword_1ECA39D88, &qword_1D859A988);
    OUTLINED_FUNCTION_276_0();
    OUTLINED_FUNCTION_57_0();
    sub_1D8581838();
    __break(1u);
  }

  else
  {
    v123 = a21;
    OUTLINED_FUNCTION_406_0();
    v66(v27, v28, v60);
    (*(v63 + 16))(&v29[*(v52 + 20)], v27, v60);
    OUTLINED_FUNCTION_165_1();
    *v29 = v67;
    *(v29 + 1) = v68;
    v120 = v52;
    OUTLINED_FUNCTION_15_1();
    v121 = sub_1D84C49BC(v69);
    __swift_allocate_boxed_opaque_existential_1(v118);
    OUTLINED_FUNCTION_16_2();
    sub_1D84EA648();
    v70 = sub_1D8542C48();
    v71 = sub_1D84477D8(*v70);
    v73 = v72;
    Ref<A>.init(bundleID:)();
    OUTLINED_FUNCTION_402_0();
    Ref<A>.gameActivityDefinition(id:activityEnvironment:)();
    if (v26)
    {

      sub_1D84EB9AC(v109, v110, v111);

      OUTLINED_FUNCTION_6_2();
      sub_1D84EB2B8();
      (*(v63 + 8))(v27, v60);
      __swift_destroy_boxed_opaque_existential_1(v118);
    }

    else
    {
      v107 = v71;
      v108 = v73;
      v101 = a22;

      Ref<A>.init(internalID:)();
      OUTLINED_FUNCTION_264_1(v117);
      sub_1D8580E98();
      v74 = OUTLINED_FUNCTION_61_1(&a15);
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v103);
      v77 = OUTLINED_FUNCTION_61_1(&a16);
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v103);
      v80 = OUTLINED_FUNCTION_61_1(&a17);
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v103);
      v83 = sub_1D8581BF8();
      OUTLINED_FUNCTION_483_0(v83);
      v84 = type metadata accessor for GameActivityInstance(0);
      v85 = OUTLINED_FUNCTION_85_2(v84[10]);
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v103);
      v88 = OUTLINED_FUNCTION_85_2(v84[11]);
      __swift_storeEnumTagSinglePayload(v88, v89, v90, v103);
      v91 = OUTLINED_FUNCTION_85_2(v84[12]);
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v103);
      v94 = v37 + v84[20];
      *v94 = 0;
      *(v94 + 8) = 0;
      *(v94 + 16) = -1;
      *v37 = v106;
      *(v37 + 8) = v112;
      *(v37 + 16) = v116;
      *(v37 + 24) = v117;
      *(v37 + v84[16]) = MEMORY[0x1E69E7CD0];
      *(v37 + v84[17]) = MEMORY[0x1E69E7CC8];
      OUTLINED_FUNCTION_229_2((v37 + v84[18]));
      (*(v104 + 16))(v37 + v84[9], v102, v103);
      v95 = v114;
      if (!v123)
      {
        v95 = static PartyCodeGenerator.generate4_4String()();
        v123 = v96;
      }

      v115 = v95;
      v97 = *(v104 + 8);
      v98 = OUTLINED_FUNCTION_368_0();
      v99(v98);
      OUTLINED_FUNCTION_6_2();
      sub_1D84EB2B8();
      (*(v63 + 8))(v27, v60);
      __swift_destroy_boxed_opaque_existential_1(v118);
      *(v37 + 48) = v115;
      *(v37 + 56) = v123;
      OUTLINED_FUNCTION_365_0(&v121);
      OUTLINED_FUNCTION_214_2();
      OUTLINED_FUNCTION_361();
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_365_0(&v120);
      OUTLINED_FUNCTION_361();
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_365_0(&v119);
      OUTLINED_FUNCTION_361();
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_229_2((v37 + v84[13]));
      *(v37 + 40) = 1;
      *(v37 + v84[19]) = v101 & 1;
      *(v37 + v84[15]) = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_526_0();
      *v94 = v109;
      *(v94 + 8) = v110;
      *(v94 + 16) = v111;
      *(v37 + 32) = v113;
      v100 = (v37 + v84[14]);
      *v100 = v107;
      v100[1] = v108;
      *(v37 + v84[21]) = v105;
    }

    OUTLINED_FUNCTION_342_1();
    OUTLINED_FUNCTION_284_0();
  }
}

void GameActivityInstance.init(definitionID:gameBundleID:id:properties:partyCode:initiatedByApple:creatorPlayerID:deepLinkReferral:shortGroupID:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_285();
  v26 = type metadata accessor for GameActivityInstance(0);
  v27 = (v26 - 8);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_227_0();

  sub_1D84EB9AC(*a25, *(a25 + 8), *(a25 + 16));
  v29 = v27[12];
  sub_1D8580EA8();
  OUTLINED_FUNCTION_91_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  v34 = v27[13];
  OUTLINED_FUNCTION_91_0();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  v39 = v27[14];
  OUTLINED_FUNCTION_91_0();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = v25 + v27[22];
  *v44 = 0;
  *(v44 + 8) = 0;
  *(v44 + 16) = -1;
  v45 = sub_1D84F3620();
  v46 = *v45;
  v47 = v45[1];
  v48 = *(v45 + 16);
  sub_1D8448448();
  OUTLINED_FUNCTION_446();
  *v49 = v46;
  *(v49 + 8) = v47;
  *(v49 + 16) = v48;
  swift_willThrow();
  v50 = OUTLINED_FUNCTION_194();
  sub_1D84EBA88(v50, v51, v48);
  OUTLINED_FUNCTION_231();
  sub_1D8436E18(v52, v53, v54);
  OUTLINED_FUNCTION_231();
  sub_1D8436E18(v55, v56, v57);
  OUTLINED_FUNCTION_231();
  sub_1D8436E18(v58, v59, v60);
  OUTLINED_FUNCTION_526_0();
  OUTLINED_FUNCTION_284_0();
}

void GameActivityInstance.modified(id:definitionRef:participants:participantStates:creator:creationDate:partyCode:startDate:lastResumeDate:endDate:duration:state:initiatedByApple:runtimeStats:deepLinkReferral:properties:shortGroupID:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, unsigned __int8 *a29, unsigned __int8 a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned __int8 *a36)
{
  OUTLINED_FUNCTION_386();
  a20 = v37;
  a21 = v38;
  v196 = v39;
  v185 = v40;
  v42 = v41;
  v198 = v43;
  v199 = v44;
  v46 = v45;
  v197 = v47;
  v195 = v48;
  v50 = v49;
  v51 = a36;
  v52 = a32;
  v53 = a29;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v55 = OUTLINED_FUNCTION_363(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_194_1();
  v207 = v59;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_194_1();
  v206 = v62;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_194_1();
  v65 = v64;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_194_1();
  v205 = v67;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v68);
  v70 = v178 - v69;
  v203 = sub_1D8580EA8();
  v71 = OUTLINED_FUNCTION_1(v203);
  v210 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_409_0(v75);
  v77 = *v46;
  v76 = v46[1];
  v78 = *v42;
  v79 = v42[1];
  v194 = v78;
  v80 = *v53;
  v81 = *v52;
  v201 = *(v52 + 8);
  v202 = v81;
  v200 = *(v52 + 16);
  LODWORD(v78) = *v51;
  v208 = v80;
  v209 = v78;
  if (v197)
  {
    v192 = v197;
  }

  else
  {
    v82 = v36[1];
    v195 = *v36;
    v192 = v82;
  }

  v84 = v198;
  v83 = v199;
  v85 = v65;
  if (v76)
  {
    v191 = v76;
    if (v198)
    {
      goto LABEL_6;
    }

LABEL_9:
    v190 = OUTLINED_FUNCTION_529_0();

    if (v83)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v77 = v36[2];
  v191 = v36[3];

  if (!v84)
  {
    goto LABEL_9;
  }

LABEL_6:
  v190 = v84;
  if (v83)
  {
LABEL_7:
    v189 = v83;
    goto LABEL_11;
  }

LABEL_10:
  v189 = OUTLINED_FUNCTION_530_0();

LABEL_11:
  v193 = v77;
  if (v79)
  {
    v188 = v79;
  }

  else
  {
    v86 = (v36 + *(type metadata accessor for GameActivityInstance(0) + 72));
    v87 = v86[1];
    v194 = *v86;
    OUTLINED_FUNCTION_483_0(v87);
  }

  v88 = a22;
  OUTLINED_FUNCTION_214_2();
  sub_1D847C204();
  v89 = OUTLINED_FUNCTION_307_1();
  v90 = v203;
  OUTLINED_FUNCTION_501(v89, v91, v203);
  if (v92)
  {
    v93 = type metadata accessor for GameActivityInstance(0);
    OUTLINED_FUNCTION_495_0(v93);
    v94(v204);
    v95 = OUTLINED_FUNCTION_307_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v95, v96, v90);

    if (EnumTagSinglePayload != 1)
    {
      sub_1D8436E18(v70, &qword_1ECA39300, &unk_1D8591030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_502_0();
    v98(v204, v70, v90);
  }

  v199 = v88;
  v99 = v193;
  if (!v88)
  {
    v100 = v36[7];
    v196 = v36[6];
    v199 = v100;
  }

  OUTLINED_FUNCTION_331_1();
  sub_1D847C204();
  v101 = v203;
  OUTLINED_FUNCTION_501(v85, 1, v203);
  if (v92)
  {
    v102 = *(type metadata accessor for GameActivityInstance(0) + 40);
    sub_1D847C204();
    OUTLINED_FUNCTION_311_0();
    v106 = __swift_getEnumTagSinglePayload(v103, v104, v105);

    if (v106 != 1)
    {
      sub_1D8436E18(v85, &qword_1ECA39300, &unk_1D8591030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_406_0();
    v107 = OUTLINED_FUNCTION_228();
    v108(v107);
    OUTLINED_FUNCTION_336_1();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v101);
  }

  v112 = v186;
  sub_1D847C204();
  OUTLINED_FUNCTION_311_0();
  OUTLINED_FUNCTION_501(v113, v114, v115);
  if (v92)
  {
    v116 = *(type metadata accessor for GameActivityInstance(0) + 44);
    v120 = v36;
    sub_1D847C204();
    OUTLINED_FUNCTION_311_0();
    OUTLINED_FUNCTION_501(v117, v118, v119);
    v125 = v187;
    if (!v92)
    {
      sub_1D8436E18(v112, &qword_1ECA39300, &unk_1D8591030);
    }
  }

  else
  {
    v120 = v36;
    OUTLINED_FUNCTION_406_0();
    v121(v206, v112, v101);
    OUTLINED_FUNCTION_336_1();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v101);
    v125 = v187;
  }

  v126 = a28;
  OUTLINED_FUNCTION_166();
  sub_1D847C204();
  v127 = OUTLINED_FUNCTION_258_1();
  OUTLINED_FUNCTION_501(v127, v128, v101);
  if (v92)
  {
    v129 = *(type metadata accessor for GameActivityInstance(0) + 48);
    sub_1D847C204();
    v130 = OUTLINED_FUNCTION_258_1();
    OUTLINED_FUNCTION_501(v130, v131, v101);
    if (!v92)
    {
      sub_1D8436E18(v125, &qword_1ECA39300, &unk_1D8591030);
    }

    if ((v126 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    v132 = v120;
    v133 = (v120 + *(type metadata accessor for GameActivityInstance(0) + 52));
    v134 = *v133;
    v197 = v133[1];
    v198 = v134;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_406_0();
  v135 = OUTLINED_FUNCTION_166();
  v136(v135);
  OUTLINED_FUNCTION_336_1();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v101);
  if (v126)
  {
    goto LABEL_33;
  }

LABEL_35:
  v197 = a27;
  v198 = a26;
  v132 = v120;
LABEL_36:
  v140 = a30;
  if (v208 == 5)
  {
    v208 = *(v132 + 40);
  }

  v141 = a31;
  if (a30 == 2)
  {
    v140 = *(v132 + *(type metadata accessor for GameActivityInstance(0) + 76));
  }

  v182 = v141;
  if (v141)
  {
    v186 = v141;
  }

  else
  {
    v186 = *(v132 + *(type metadata accessor for GameActivityInstance(0) + 60));
  }

  v142 = a33;
  v144 = v201;
  v143 = v202;
  v145 = v200;
  if (v200 == 255)
  {
    v146 = v132 + *(type metadata accessor for GameActivityInstance(0) + 80);
    v143 = *v146;
    v144 = *(v146 + 8);
    v145 = *(v146 + 16);
    v147 = OUTLINED_FUNCTION_368();
    sub_1D84EB994(v147, v148, v145);
  }

  v149 = a35;
  if (v142)
  {
    v181 = v142;
    if (a35)
    {
LABEL_47:
      v180 = a34;
      v179 = v149;
      goto LABEL_50;
    }
  }

  else
  {
    v181 = v132[4];

    if (v149)
    {
      goto LABEL_47;
    }
  }

  v150 = (v132 + *(type metadata accessor for GameActivityInstance(0) + 56));
  v151 = v150[1];
  v180 = *v150;
  v179 = v151;

LABEL_50:
  v178[1] = v142;
  v183 = v145;
  v184 = v144;
  v185 = v143;
  if (v209 == 4)
  {
    v209 = *(v132 + *(type metadata accessor for GameActivityInstance(0) + 84));
  }

  LODWORD(v187) = v140;
  v152 = type metadata accessor for GameActivityInstance(0);
  v153 = v152[10];
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v154, v155, v156, v101);
  v157 = v152[11];
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v158, v159, v160, v101);
  v161 = OUTLINED_FUNCTION_39_0(v152[12]);
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v101);
  OUTLINED_FUNCTION_268_1(v152[20]);
  v164 = v191;
  v165 = v192;
  *v50 = v195;
  *(v50 + 8) = v165;
  *(v50 + 16) = v99;
  *(v50 + 24) = v164;
  v166 = v189;
  *(v50 + v152[16]) = v190;
  *(v50 + v152[17]) = v166;
  OUTLINED_FUNCTION_229_2((v50 + v152[18]));
  v167 = v101;
  v168 = v210;
  (*(v210 + 16))(v50 + v152[9], v204, v167);

  sub_1D84EB994(v202, v201, v200);

  v169 = v196;
  v170 = v199;
  if (!v199)
  {
    v169 = static PartyCodeGenerator.generate4_4String()();
    v170 = v171;
  }

  v172 = *(v168 + 8);
  v173 = OUTLINED_FUNCTION_415_0();
  v174(v173);
  *(v50 + 48) = v169;
  *(v50 + 56) = v170;
  sub_1D84EC2E4();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_246_1(&v210);
  sub_1D84EC2E4();
  v175 = (v50 + v152[13]);
  v176 = v197;
  *v175 = v198;
  v175[1] = v176;
  *(v50 + 40) = v208;
  OUTLINED_FUNCTION_383_0(v152[19]);
  OUTLINED_FUNCTION_436_0(v152[15]);
  v177 = v184;
  *v144 = v185;
  v144[1] = v177;
  OUTLINED_FUNCTION_404_0(&a14);
  OUTLINED_FUNCTION_229_2((v50 + v152[14]));
  *(v50 + v152[21]) = v209;
  OUTLINED_FUNCTION_388();
}

void GameActivityInstance.modifiedActivity(participants:participantStates:partyCode:startDate:lastResumeDate:endDate:duration:state:initiatedByApple:runtimeStats:deepLinkReferral:properties:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, unsigned __int8 *a24, unsigned __int8 a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 *a29)
{
  OUTLINED_FUNCTION_386();
  a20 = v31;
  a21 = v32;
  v165 = v33;
  v154 = v34;
  v153 = v35;
  v152 = v36;
  v38 = v37;
  v164 = v39;
  v166 = v40;
  v42 = v41;
  v44 = v43;
  v45 = a29;
  v46 = a27;
  v47 = a24;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v49 = OUTLINED_FUNCTION_363(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_194_1();
  v176 = v53;
  OUTLINED_FUNCTION_142_0();
  v55 = MEMORY[0x1EEE9AC00](v54);
  v57 = &v147 - v56;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_194_1();
  v175 = v58;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_286_0();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_245_1();
  v174 = v61;
  OUTLINED_FUNCTION_5_0();
  v62 = sub_1D8580EA8();
  v63 = OUTLINED_FUNCTION_1(v62);
  v179 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_409_0(v67);
  v68 = *v47;
  v69 = *v46;
  v171 = *(v46 + 8);
  v172 = v69;
  v170 = *(v46 + 16);
  v70 = *v45;
  v177 = v68;
  v178 = v70;
  v71 = *v29;
  v72 = v29[1];
  v73 = v29[3];
  v161 = v29[2];
  v162 = v71;
  v168 = v73;
  v169 = v72;
  if (v42)
  {
    v160 = v42;
  }

  else
  {
    v160 = OUTLINED_FUNCTION_529_0();
  }

  v74 = v173;
  if (v166)
  {
    v159 = v166;
  }

  else
  {
    v159 = OUTLINED_FUNCTION_530_0();
  }

  v75 = type metadata accessor for GameActivityInstance(0);
  v76 = (v29 + v75[18]);
  v78 = *v76;
  v77 = v76[1];
  v156 = v78;
  v167 = v77;
  OUTLINED_FUNCTION_495_0(v75);
  v158 = v79;
  v157 = v80;
  (v80)(v74);
  v163 = v38;
  if (!v38)
  {
    v81 = v29[6];
    v163 = v29[7];
    v164 = v81;
  }

  sub_1D847C204();
  v82 = OUTLINED_FUNCTION_307_1();
  OUTLINED_FUNCTION_501(v82, v83, v62);
  if (v84)
  {
    v85 = v75[10];
    sub_1D847C204();
    v86 = OUTLINED_FUNCTION_307_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, v87, v62);

    if (EnumTagSinglePayload != 1)
    {
      sub_1D8436E18(v30, &qword_1ECA39300, &unk_1D8591030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_502_0();
    v89 = OUTLINED_FUNCTION_165_0();
    v90(v89);
    OUTLINED_FUNCTION_336_1();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v62);
  }

  sub_1D847C204();
  v94 = OUTLINED_FUNCTION_258_1();
  OUTLINED_FUNCTION_501(v94, v95, v62);
  v96 = v155;
  if (v84)
  {
    v97 = v75[11];
    sub_1D847C204();
    v98 = OUTLINED_FUNCTION_258_1();
    OUTLINED_FUNCTION_501(v98, v99, v62);
    if (!v84)
    {
      sub_1D8436E18(v57, &qword_1ECA39300, &unk_1D8591030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_502_0();
    v100 = OUTLINED_FUNCTION_166();
    v101(v100);
    OUTLINED_FUNCTION_336_1();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v62);
  }

  v105 = a22;
  v106 = a23;
  OUTLINED_FUNCTION_214_2();
  sub_1D847C204();
  OUTLINED_FUNCTION_501(v96, 1, v62);
  if (v84)
  {
    v107 = v75[12];
    sub_1D847C204();
    OUTLINED_FUNCTION_501(v96, 1, v62);
    if (!v84)
    {
      sub_1D8436E18(v96, &qword_1ECA39300, &unk_1D8591030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_502_0();
    OUTLINED_FUNCTION_269_1();
    v108();
    OUTLINED_FUNCTION_336_1();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v62);
  }

  if (v106)
  {
    v112 = (v29 + v75[13]);
    v105 = v112[1];
    v165 = *v112;
  }

  v113 = a25;
  if (v177 == 5)
  {
    v177 = *(v29 + 40);
  }

  v114 = a26;
  if (a25 == 2)
  {
    v113 = *(v29 + v75[19]);
  }

  v166 = v105;
  if (a26)
  {
    v154 = a26;
  }

  else
  {
    v154 = *(v29 + v75[15]);
  }

  v115 = a28;
  v117 = v171;
  v116 = v172;
  v118 = v170;
  if (v170 == 255)
  {
    v119 = v29 + v75[20];
    v116 = *v119;
    v117 = *(v119 + 8);
    v118 = *(v119 + 16);
    sub_1D84EB994(*v119, v117, *(v119 + 16));
  }

  v149 = v114;
  if (v115)
  {
    v150 = v115;
  }

  else
  {
    v150 = v29[4];
  }

  v151 = v118;
  v152 = v117;
  v153 = v116;
  LODWORD(v155) = v113;
  v120 = (v29 + v75[14]);
  v121 = v120[1];
  v122 = v178;
  if (v178 == 4)
  {
    v122 = *(v29 + v75[21]);
  }

  v178 = v122;
  v148 = *v120;
  v123 = v75[10];
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v62);
  v127 = OUTLINED_FUNCTION_39_0(v75[11]);
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v62);
  v130 = v75[12];
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v131, v132, v133, v62);
  OUTLINED_FUNCTION_268_1(v75[20]);
  v134 = v169;
  *v44 = v162;
  *(v44 + 8) = v134;
  v135 = v160;
  v136 = v168;
  *(v44 + 16) = v161;
  *(v44 + 24) = v136;
  *(v44 + v75[16]) = v135;
  *(v44 + v75[17]) = v159;
  v137 = (v44 + v75[18]);
  v138 = v167;
  *v137 = v156;
  v137[1] = v138;
  v139 = v173;
  v157(v44 + v75[9], v173, v62);

  sub_1D84EB994(v172, v171, v170);

  v141 = v163;
  v140 = v164;
  if (!v163)
  {
    v140 = static PartyCodeGenerator.generate4_4String()();
    v141 = v142;
  }

  (*(v179 + 8))(v139, v62);
  *(v44 + 48) = v140;
  *(v44 + 56) = v141;
  OUTLINED_FUNCTION_287_0();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_246_1(&v180);
  OUTLINED_FUNCTION_287_0();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_287_0();
  sub_1D84EC2E4();
  v143 = (v44 + v75[13]);
  v144 = v166;
  *v143 = v165;
  v143[1] = v144;
  *(v44 + 40) = v177;
  OUTLINED_FUNCTION_383_0(v75[19]);
  OUTLINED_FUNCTION_436_0(v75[15]);
  v145 = v152;
  *v116 = v153;
  v116[1] = v145;
  OUTLINED_FUNCTION_404_0(&a13);
  v146 = (v44 + v75[14]);
  *v146 = v148;
  v146[1] = v121;
  *(v44 + v75[21]) = v178;
  OUTLINED_FUNCTION_388();
}

void static GameActivityInstance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v3 = v2;
  OUTLINED_FUNCTION_85_1();
  v4 = sub_1D8580EA8();
  v5 = OUTLINED_FUNCTION_1(v4);
  v113 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_469_0(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v11 = OUTLINED_FUNCTION_363(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_315();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v107[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39308, &qword_1D85A7960);
  v19 = OUTLINED_FUNCTION_4_0(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_315();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_292();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v107[-v27];
  v29 = *v0 == *v3 && *(v0 + 8) == *(v3 + 8);
  if (v29 || (sub_1D8581AB8()) && (sub_1D844A4B0(*(v0 + 16), *(v0 + 24), *(v3 + 16), *(v3 + 24), &qword_1ECA39860, &qword_1D85962F0) & 1) != 0 && (sub_1D84BAB00(*(v0 + 32), *(v3 + 32)) & 1) != 0 && (sub_1D84C5C58(*(v0 + 40), *(v3 + 40)))
  {
    v30 = *(v0 + 56);
    v31 = *(v3 + 56);
    if (v30)
    {
      if (!v31)
      {
        goto LABEL_49;
      }

      v32 = *(v0 + 48) == *(v3 + 48) && v30 == v31;
      if (!v32 && (sub_1D8581AB8() & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (v31)
    {
      goto LABEL_49;
    }

    v111 = type metadata accessor for GameActivityInstance(0);
    v33 = v111[9];
    if ((_s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      goto LABEL_49;
    }

    v34 = *(v18 + 48);
    v109 = v111[10];
    v110 = v34;
    sub_1D847C204();
    sub_1D847C204();
    OUTLINED_FUNCTION_55_0(v28);
    if (v29)
    {
      OUTLINED_FUNCTION_55_0(&v110[v28]);
      if (v29)
      {
        sub_1D8436E18(v28, &qword_1ECA39300, &unk_1D8591030);
        goto LABEL_29;
      }
    }

    else
    {
      sub_1D847C204();
      OUTLINED_FUNCTION_55_0(&v110[v28]);
      if (!v35)
      {
        (*(v113 + 32))(v112, &v110[v28], v4);
        OUTLINED_FUNCTION_10_3();
        sub_1D84C49BC(v39);
        v108 = sub_1D8581208();
        v40 = *(v113 + 8);
        v109 = v113 + 8;
        v110 = v40;
        (v40)(v112, v4);
        v41 = OUTLINED_FUNCTION_146_1();
        (v110)(v41);
        sub_1D8436E18(v28, &qword_1ECA39300, &unk_1D8591030);
        if ((v108 & 1) == 0)
        {
          goto LABEL_49;
        }

LABEL_29:
        v42 = v111[11];
        v43 = *(v18 + 48);
        sub_1D847C204();
        v44 = v43;
        sub_1D847C204();
        OUTLINED_FUNCTION_55_0(v1);
        if (v29)
        {
          OUTLINED_FUNCTION_55_0(v1 + v43);
          if (v29)
          {
            sub_1D8436E18(v1, &qword_1ECA39300, &unk_1D8591030);
LABEL_39:
            v50 = v111;
            v51 = v111[12];
            v52 = *(v18 + 48);
            OUTLINED_FUNCTION_416_0();
            sub_1D847C204();
            OUTLINED_FUNCTION_416_0();
            sub_1D847C204();
            OUTLINED_FUNCTION_55_0(v24);
            if (v29)
            {
              OUTLINED_FUNCTION_55_0(v24 + v52);
              if (v29)
              {
                sub_1D8436E18(v24, &qword_1ECA39300, &unk_1D8591030);
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_199_0();
              sub_1D847C204();
              OUTLINED_FUNCTION_55_0(v24 + v52);
              if (!v53)
              {
                v56 = v113;
                v57 = v24 + v52;
                v58 = v112;
                (*(v113 + 32))(v112, v57, v4);
                OUTLINED_FUNCTION_10_3();
                sub_1D84C49BC(v59);
                OUTLINED_FUNCTION_165_0();
                v60 = sub_1D8581208();
                v61 = *(v56 + 8);
                v61(v58, v4);
                v62 = OUTLINED_FUNCTION_495();
                (v61)(v62);
                sub_1D8436E18(v24, &qword_1ECA39300, &unk_1D8591030);
                if ((v60 & 1) == 0)
                {
                  goto LABEL_49;
                }

LABEL_51:
                OUTLINED_FUNCTION_211_0(v50[13]);
                if ((sub_1D8581BD8() & 1) == 0)
                {
                  goto LABEL_49;
                }

                v63 = OUTLINED_FUNCTION_211_0(v50[14]);
                v67 = v63 == v66 && v64 == v65;
                if (!v67 && (sub_1D8581AB8() & 1) == 0)
                {
                  goto LABEL_49;
                }

                if ((sub_1D84C7948(*(v0 + v50[15]), *(v3 + v50[15])) & 1) == 0)
                {
                  goto LABEL_49;
                }

                if ((sub_1D84DE89C(*(v0 + v50[16]), *(v3 + v50[16])) & 1) == 0)
                {
                  goto LABEL_49;
                }

                if ((sub_1D84D4364(*(v0 + v50[17]), *(v3 + v50[17])) & 1) == 0)
                {
                  goto LABEL_49;
                }

                v68 = OUTLINED_FUNCTION_211_0(v50[18]);
                if ((sub_1D844A4B0(v68, v69, v70, v71, &qword_1ECA389B8, &qword_1D8590B30) & 1) == 0 || *(v0 + v111[19]) != *(v3 + v111[19]))
                {
                  goto LABEL_49;
                }

                v72 = v111[20];
                v74 = *(v0 + v72);
                v73 = *(v0 + v72 + 8);
                v75 = *(v0 + v72 + 16);
                v76 = (v3 + v72);
                v78 = *v76;
                v77 = v76[1];
                v79 = *(v76 + 16);
                if (v75 == 255)
                {
                  v89 = OUTLINED_FUNCTION_146_1();
                  sub_1D84EB994(v89, v90, 255);
                  if (v79 == 255)
                  {
                    v103 = OUTLINED_FUNCTION_199_0();
                    sub_1D84EB994(v103, v104, 255);
                    v105 = OUTLINED_FUNCTION_146_1();
                    sub_1D84EB9AC(v105, v106, 255);
                    goto LABEL_71;
                  }

                  v91 = OUTLINED_FUNCTION_199_0();
                  sub_1D84EB994(v91, v92, v79);
                }

                else
                {
                  v116[0] = v74;
                  v116[1] = v73;
                  v117 = v75;
                  if (v79 != 255)
                  {
                    v114[0] = v78;
                    v114[1] = v77;
                    v115 = v79 & 1;
                    v80 = OUTLINED_FUNCTION_146_1();
                    sub_1D84EB994(v80, v81, v75);
                    v82 = OUTLINED_FUNCTION_199_0();
                    sub_1D84EB994(v82, v83, v79);
                    v84 = OUTLINED_FUNCTION_146_1();
                    sub_1D84EB994(v84, v85, v75);
                    v86 = static GameActivityStaticStat.== infix(_:_:)(v116, v114);
                    OUTLINED_FUNCTION_199_0();
                    sub_1D84C5620();
                    OUTLINED_FUNCTION_146_1();
                    sub_1D84C5620();
                    v87 = OUTLINED_FUNCTION_146_1();
                    sub_1D84EB9AC(v87, v88, v75);
                    if ((v86 & 1) == 0)
                    {
                      goto LABEL_49;
                    }

LABEL_71:
                    sub_1D84C5754(*(v0 + v111[21]), *(v3 + v111[21]));
                    goto LABEL_49;
                  }

                  v93 = OUTLINED_FUNCTION_146_1();
                  sub_1D84EB994(v93, v94, v75);
                  v95 = OUTLINED_FUNCTION_199_0();
                  sub_1D84EB994(v95, v96, 255);
                  v97 = OUTLINED_FUNCTION_146_1();
                  sub_1D84EB994(v97, v98, v75);
                  OUTLINED_FUNCTION_146_1();
                  sub_1D84C5620();
                }

                v99 = OUTLINED_FUNCTION_146_1();
                sub_1D84EB9AC(v99, v100, v75);
                v101 = OUTLINED_FUNCTION_199_0();
                sub_1D84EB9AC(v101, v102, v79);
                goto LABEL_49;
              }

              v54 = OUTLINED_FUNCTION_212_0();
              v55(v54, v4);
            }

            v38 = v24;
LABEL_48:
            sub_1D8436E18(v38, &qword_1ECA39308, &qword_1D85A7960);
            goto LABEL_49;
          }
        }

        else
        {
          OUTLINED_FUNCTION_174_1();
          sub_1D847C204();
          OUTLINED_FUNCTION_55_0(v1 + v43);
          if (!v45)
          {
            v47 = v113;
            (*(v113 + 32))(v112, v1 + v44, v4);
            OUTLINED_FUNCTION_10_3();
            sub_1D84C49BC(v48);
            OUTLINED_FUNCTION_331_1();
            LODWORD(v110) = sub_1D8581208();
            v49 = *(v47 + 8);
            v49(v112, v4);
            v49(v17, v4);
            sub_1D8436E18(v1, &qword_1ECA39300, &unk_1D8591030);
            if ((v110 & 1) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_39;
          }

          OUTLINED_FUNCTION_375_0();
          v46(v17, v4);
        }

        v38 = v1;
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_375_0();
      v36 = OUTLINED_FUNCTION_146_1();
      v37(v36);
    }

    v38 = v28;
    goto LABEL_48;
  }

LABEL_49:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D84DE89C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  v8 = 0;
  v9 = (v5 + 63) >> 6;
  result = &qword_1EE0E0090;
  v21 = v9;
  v22 = v3;
  if (v7)
  {
    while (2)
    {
      v11 = __clz(__rbit64(v7));
      v23 = (v7 - 1) & v7;
LABEL_13:
      v14 = (*(v3 + 48) + 16 * (v11 | (v8 << 6)));
      v26 = *v14;
      v27 = v14[1];
      v15 = *(a2 + 40);
      sub_1D848211C(&qword_1EE0E0090);

      v16 = sub_1D85811D8();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        v24 = *v19;
        v25 = v19[1];
        sub_1D848211C(&unk_1ECA3A0D8);

        v20 = sub_1D8581208();

        v16 = v18 + 1;
      }

      while ((v20 & 1) == 0);

      v9 = v21;
      v3 = v22;
      result = &qword_1EE0E0090;
      v7 = v23;
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  v12 = v8;
  while (1)
  {
    v8 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v8 >= v9)
    {
      return 1;
    }

    v13 = *(v4 + 8 * v8);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v23 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D84DEAE0()
{
  OUTLINED_FUNCTION_395_0();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_7() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v7 = v4 == OUTLINED_FUNCTION_237() && v0 == v6;
    if (v7 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_401_0();
      v9 = v3 && v0 == v8;
      if (v9 || (OUTLINED_FUNCTION_7() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_474_0();
        v10 = v3 && v0 == 0xE500000000000000;
        if (v10 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_421_0();
          v11 = v3 && v0 == 0xE900000000000065;
          if (v11 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = v4 == 0x6E6F697461657263 && v0 == 0xEC00000065746144;
            if (v12 || (OUTLINED_FUNCTION_7() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = v4 == 0x7461447472617473 && v0 == 0xE900000000000065;
              if (v13 || (OUTLINED_FUNCTION_7() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v15 = v4 == OUTLINED_FUNCTION_431_0() && v0 == v14;
                if (v15 || (OUTLINED_FUNCTION_7() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v16 = v4 == 0x65746144646E65 && v0 == 0xE700000000000000;
                  if (v16 || (OUTLINED_FUNCTION_7() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v17 = v4 == 0x6E6F697461727564 && v0 == 0xE800000000000000;
                    if (v17 || (OUTLINED_FUNCTION_7() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v19 = v4 == OUTLINED_FUNCTION_444_0() && v0 == v18;
                      if (v19 || (OUTLINED_FUNCTION_7() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v20 = v4 == 0x53656D69746E7572 && v0 == 0xEC00000073746174;
                        if (v20 || (OUTLINED_FUNCTION_7() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v21 = v4 == 0x7069636974726170 && v0 == 0xEC00000073746E61;
                          if (v21 || (OUTLINED_FUNCTION_7() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v22 = v4 == 0xD000000000000011 && 0x80000001D85867E0 == v0;
                            if (v22 || (OUTLINED_FUNCTION_7() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_403_0();
                              v23 = v3 && v0 == 0xE700000000000000;
                              if (v23 || (OUTLINED_FUNCTION_7() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_209_0();
                                v25 = v3 && v24 == v0;
                                if (v25 || (OUTLINED_FUNCTION_70_0() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_209_0();
                                  v27 = v3 && v26 == v0;
                                  if (v27 || (OUTLINED_FUNCTION_70_0() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_209_0();
                                    if (v3 && v28 == v0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_70_0();
                                      OUTLINED_FUNCTION_369();
                                      if (v4)
                                      {
                                        return 17;
                                      }

                                      else
                                      {
                                        return 18;
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
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D84DEED0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0x696E69666564;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
    case 2:
      v3 = 0x7265706F7270;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
    case 3:
      return OUTLINED_FUNCTION_321_1();
    case 4:
      return 0x646F437974726170;
    case 5:
      v4 = 1634038371;
      goto LABEL_17;
    case 6:
      return 0x7461447472617473;
    case 7:
      return OUTLINED_FUNCTION_431_0();
    case 8:
      return 0x65746144646E65;
    case 9:
      v4 = 1634891108;
LABEL_17:
      result = v4 | 0x6E6F697400000000;
      break;
    case 10:
      result = OUTLINED_FUNCTION_444_0();
      break;
    case 11:
      result = 0x53656D69746E7572;
      break;
    case 12:
      result = 0x7069636974726170;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x726F7461657263;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84DF0BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84DEAE0();
  *a1 = result;
  return result;
}

uint64_t sub_1D84DF0EC()
{
  sub_1D84EBAC8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84DF124()
{
  sub_1D84EBAC8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameActivityInstance.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E60, &qword_1D859AA40);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_200();
  v12 = *(v5 + 24);
  v13 = *(v5 + 32);
  v14 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v14, v15);
  sub_1D84EBAC8();
  OUTLINED_FUNCTION_377_0();
  v16 = *v3;
  v17 = v3[1];
  OUTLINED_FUNCTION_117_1();
  sub_1D8581A08();
  if (!v1)
  {
    v33 = v3[2];
    v37 = v3[3];

    v18 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v20);
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();

    v34 = v3[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    OUTLINED_FUNCTION_108_2(&unk_1ECA39AB0);
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
    LOBYTE(v34) = *(v3 + 40);
    sub_1D84E8D64();
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
    v21 = v3[6];
    v22 = v3[7];
    OUTLINED_FUNCTION_482_0();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581998();
    v23 = type metadata accessor for GameActivityInstance(0);
    v24 = v23[9];
    OUTLINED_FUNCTION_488_0();
    sub_1D8580EA8();
    OUTLINED_FUNCTION_10_3();
    sub_1D84C49BC(v25);
    OUTLINED_FUNCTION_82_1();
    sub_1D8581A58();
    v26 = v23[10];
    OUTLINED_FUNCTION_82_1();
    sub_1D85819E8();
    v27 = v23[11];
    OUTLINED_FUNCTION_82_1();
    sub_1D85819E8();
    v28 = v23[12];
    OUTLINED_FUNCTION_82_1();
    sub_1D85819E8();
    v35 = *(v3 + v23[13]);
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
    OUTLINED_FUNCTION_256_1(v23[14]);
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A08();
    *&v35 = *(v3 + v23[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E68, &qword_1D859AA48);
    sub_1D84EBB1C();
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
    *&v35 = *(v3 + v23[16]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E80, &qword_1D859AA50);
    sub_1D84EBBD4();
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
    *&v35 = *(v3 + v23[17]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E90, &qword_1D859AA58);
    sub_1D84EBC84();
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
    v36 = *(v3 + v23[18]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    OUTLINED_FUNCTION_4();
    sub_1D848211C(v29);
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();

    v30 = *(v3 + v23[19]);
    OUTLINED_FUNCTION_481_0(15);
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A18();
    *&v36 = OUTLINED_FUNCTION_256_1(v23[20]);
    *(&v36 + 1) = v32;
    v38 = *(v31 + 16);
    sub_1D84EB994(v36, v32, v38);
    sub_1D84D7BAC();
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_117_1();
    sub_1D85819E8();
    sub_1D84EB9AC(v36, *(&v36 + 1), v38);
    LOBYTE(v36) = *(v3 + v23[21]);
    sub_1D843C310();
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_284_0();
}

void GameActivityInstance.hash(into:)()
{
  OUTLINED_FUNCTION_386();
  v2 = v1;
  OUTLINED_FUNCTION_85_1();
  v3 = sub_1D8580EA8();
  v4 = OUTLINED_FUNCTION_1(v3);
  v74 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_235_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v9 = OUTLINED_FUNCTION_363(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21_1();
  v73 = v12;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_286_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - v15;
  v17 = *v1;
  v18 = v1[1];
  sub_1D85812B8();
  v19 = v1[3];
  v75 = v1[2];
  v76 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39860, &qword_1D85962F0);
  OUTLINED_FUNCTION_5();
  sub_1D848211C(v20);
  OUTLINED_FUNCTION_393();
  sub_1D85811E8();
  sub_1D84BACE8(v0, v1[4]);
  v21 = *(v1 + 40);
  sub_1D84C8B98();
  if (v1[7])
  {
    v22 = v1[6];
    OUTLINED_FUNCTION_414();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  v23 = type metadata accessor for GameActivityInstance(0);
  v24 = v23[9];
  OUTLINED_FUNCTION_10_3();
  sub_1D84C49BC(v25);
  OUTLINED_FUNCTION_344_1();
  sub_1D85811E8();
  v26 = v23[10];
  sub_1D847C204();
  OUTLINED_FUNCTION_501(v16, 1, v3);
  if (v27)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    v28 = v74;
    OUTLINED_FUNCTION_492_0();
    v29 = OUTLINED_FUNCTION_241_0();
    v30(v29);
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_350_0();
    v31 = *(v28 + 8);
    v32 = OUTLINED_FUNCTION_233();
    v33(v32);
  }

  v34 = v23[11];
  sub_1D847C204();
  v35 = OUTLINED_FUNCTION_307_1();
  OUTLINED_FUNCTION_501(v35, v36, v3);
  if (v27)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    v37 = v74;
    OUTLINED_FUNCTION_492_0();
    v38 = OUTLINED_FUNCTION_165_0();
    v39(v38);
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_350_0();
    v40 = *(v37 + 8);
    v41 = OUTLINED_FUNCTION_233();
    v42(v41);
  }

  v43 = v23[12];
  sub_1D847C204();
  v44 = OUTLINED_FUNCTION_508_0();
  OUTLINED_FUNCTION_501(v44, v45, v3);
  if (v27)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    v46 = v74;
    OUTLINED_FUNCTION_492_0();
    v47 = OUTLINED_FUNCTION_495();
    v48(v47);
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_350_0();
    v49 = *(v46 + 8);
    v50 = OUTLINED_FUNCTION_233();
    v51(v50);
  }

  v52 = (v2 + v23[13]);
  v53 = *v52;
  v54 = v52[1];
  sub_1D8581BE8();
  v55 = (v2 + v23[14]);
  v56 = *v55;
  v57 = v55[1];
  sub_1D85812B8();
  sub_1D84E8514(v0, *(v2 + v23[15]));
  sub_1D84E8A08(v0, *(v2 + v23[16]));
  sub_1D84E8808(v0, *(v2 + v23[17]));
  v58 = (v2 + v23[18]);
  v60 = *v58;
  v59 = v58[1];
  v75 = v60;
  v76 = v59;
  v61 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v61, v62);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_314_1();
  sub_1D848211C(v63);
  OUTLINED_FUNCTION_393();
  sub_1D85811E8();
  v64 = *(v2 + v23[19]);
  sub_1D8581B78();
  v65 = (v2 + v23[20]);
  v66 = *(v65 + 16);
  if (v66 == 255)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    v67 = *v65;
    v68 = v65[1];
    OUTLINED_FUNCTION_414();
    if (v66)
    {
      OUTLINED_FUNCTION_447();
    }

    else
    {
      OUTLINED_FUNCTION_429();
    }

    v75 = v67;
    v76 = v68;
    v69 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v69, v70);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_314_1();
    sub_1D848211C(v71);
    OUTLINED_FUNCTION_393();
    sub_1D85811E8();
  }

  v72 = *(v2 + v23[21]);
  sub_1D84C8974();
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D84DFB54(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_379();
  a1(v3);
  return sub_1D8581B98();
}

void GameActivityInstance.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v6 = OUTLINED_FUNCTION_363(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_315();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_392_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_212_2();
  v11 = sub_1D8580EA8();
  v12 = OUTLINED_FUNCTION_1(v11);
  v62 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_235_2();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39EB0, &qword_1D859AA60);
  OUTLINED_FUNCTION_1(v63);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_199();
  v19 = type metadata accessor for GameActivityInstance(0);
  v20 = OUTLINED_FUNCTION_4_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v25 = v24 - v23;
  v67 = *(v26 + 40);
  OUTLINED_FUNCTION_91_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v66 = v19[11];
  OUTLINED_FUNCTION_91_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v65 = v19[12];
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v11);
  v68 = v19;
  v38 = v25 + v19[20];
  *v38 = 0;
  *(v38 + 8) = 0;
  v64 = v38;
  *(v38 + 16) = -1;
  v39 = v4[4];
  OUTLINED_FUNCTION_260(v4, v4[3]);
  sub_1D84EBAC8();
  OUTLINED_FUNCTION_419_0();
  sub_1D8581BA8();
  if (v0)
  {
    OUTLINED_FUNCTION_126_1();
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_314_1();
    sub_1D8436E18(v40, v41, v42);
    OUTLINED_FUNCTION_314_1();
    sub_1D8436E18(v43, v44, v45);
    OUTLINED_FUNCTION_314_1();
    sub_1D8436E18(v46, v47, v48);
    if (v63)
    {
      OUTLINED_FUNCTION_527_0(v68[14]);
    }

    if (v2)
    {
      v49 = *(v25 + v68[15]);

      v50 = *(v25 + v68[16]);
    }

    sub_1D84EB9AC(*v64, *(v64 + 8), *(v64 + 16));
  }

  else
  {
    LOBYTE(v69) = 0;
    *v25 = sub_1D8581908();
    *(v25 + 8) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39860, &qword_1D85962F0);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v52);
    OUTLINED_FUNCTION_155_0();
    sub_1D8581958();
    *(v25 + 16) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    OUTLINED_FUNCTION_104_2(&unk_1ECA39AD8);
    OUTLINED_FUNCTION_155_0();
    sub_1D8581958();
    *(v25 + 32) = v69;
    sub_1D84E8EB4();
    OUTLINED_FUNCTION_253_1();
    sub_1D8581958();
    *(v25 + 40) = 0;
    OUTLINED_FUNCTION_482_0();
    *(v25 + 48) = sub_1D8581898();
    *(v25 + 56) = v53;
    OUTLINED_FUNCTION_488_0();
    OUTLINED_FUNCTION_10_3();
    sub_1D84C49BC(v54);
    OUTLINED_FUNCTION_170_0();
    sub_1D8581958();
    (*(v62 + 32))(v25 + v68[9], v1, v11);
    OUTLINED_FUNCTION_481_0(6);
    OUTLINED_FUNCTION_170_0();
    sub_1D85818E8();
    sub_1D84EC2E4();
    OUTLINED_FUNCTION_481_0(7);
    OUTLINED_FUNCTION_170_0();
    sub_1D85818E8();
    sub_1D84EC2E4();
    OUTLINED_FUNCTION_481_0(8);
    OUTLINED_FUNCTION_170_0();
    sub_1D85818E8();
    sub_1D84EC2E4();
    OUTLINED_FUNCTION_253_1();
    sub_1D8581958();
    *v68[13] = v69;
    LOBYTE(v69) = 10;
    v55 = sub_1D8581908();
    OUTLINED_FUNCTION_472_0(v55, v56, v68[14]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E68, &qword_1D859AA48);
    sub_1D84EBD90();
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_351_0();
    *v68[15] = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E80, &qword_1D859AA50);
    sub_1D84EBE48();
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_351_0();
    *v68[16] = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E90, &qword_1D859AA58);
    sub_1D84EBEF8();
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_351_0();
    *v68[17] = v69;
    v57 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v57, v58);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_314_1();
    sub_1D848211C(v59);
    OUTLINED_FUNCTION_155_0();
    sub_1D8581958();
    *v68[18] = v69;
    LOBYTE(v69) = 15;
    *v68[19] = sub_1D8581918() & 1;
    sub_1D84E8BE8();
    OUTLINED_FUNCTION_253_1();
    sub_1D85818E8();
    sub_1D84EB9AC(*v64, *(v64 + 8), *(v64 + 16));
    *v64 = v69;
    *(v64 + 16) = v70;
    sub_1D8440A64();
    OUTLINED_FUNCTION_253_1();
    sub_1D8581958();
    v60 = OUTLINED_FUNCTION_150_1();
    v61(v60);
    *v68[21] = 15;
    OUTLINED_FUNCTION_9_1();
    sub_1D84EA648();
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_244_1();
    sub_1D84EB2B8();
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84E06BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D8581B58();
  a4(v6);
  return sub_1D8581B98();
}

uint64_t sub_1D84E0700@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultGameActivityEnvironment.language.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84E073C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x80000001D8586840 == a2;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_429_0() && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_209_0();
      v9 = v3 && v8 == a2;
      if (v9 || (OUTLINED_FUNCTION_70_0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0x5564696C61766E69 && a2 == 0xEA00000000004C52;
        if (v10 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_209_0();
          v12 = v3 && v11 == a2;
          if (v12 || (OUTLINED_FUNCTION_70_0() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7461636572706564 && a2 == 0xEA00000000006465)
          {

            return 5;
          }

          else
          {
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_369();
            if (a1)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

void sub_1D84E08C4()
{
  OUTLINED_FUNCTION_429_0();
  switch(v0)
  {
    case 2:
    case 4:
      OUTLINED_FUNCTION_186_1();
      break;
    default:
      return;
  }
}

uint64_t sub_1D84E098C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D84E073C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D84E09B4()
{
  sub_1D84EC004();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E09EC()
{
  sub_1D84EC004();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84E0A24()
{
  sub_1D84EC058();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E0A5C()
{
  sub_1D84EC058();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84E0A94()
{
  sub_1D84EC1FC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E0ACC()
{
  sub_1D84EC1FC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84E0B04()
{
  sub_1D84EC1A8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E0B3C()
{
  sub_1D84EC1A8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84E0B74()
{
  sub_1D84EC154();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E0BAC()
{
  sub_1D84EC154();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84E0BE4()
{
  sub_1D84EC100();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E0C1C()
{
  sub_1D84EC100();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84E0C54()
{
  sub_1D84EC0AC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E0C8C()
{
  sub_1D84EC0AC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameActivityInstance.URLParseError.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39EE0, &qword_1D859AA68);
  v7 = OUTLINED_FUNCTION_1(v6);
  v69 = v8;
  v70 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_196();
  v68 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39EE8, &qword_1D859AA70);
  v14 = OUTLINED_FUNCTION_1(v13);
  v66 = v15;
  v67 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_469_0(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39EF0, &qword_1D859AA78);
  v21 = OUTLINED_FUNCTION_1(v20);
  v63 = v22;
  v64 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_196();
  v62 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39EF8, &qword_1D859AA80);
  v28 = OUTLINED_FUNCTION_1(v27);
  v60 = v29;
  v61 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_196();
  v59 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F00, &qword_1D859AA88);
  v35 = OUTLINED_FUNCTION_1(v34);
  v57 = v36;
  v58 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_199();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F08, &qword_1D859AA90);
  v41 = OUTLINED_FUNCTION_1(v40);
  v55 = v42;
  v56 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_110();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F10, &qword_1D859AA98);
  OUTLINED_FUNCTION_1(v71);
  v47 = v46;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_129();
  v51 = *v0;
  v52 = v5[4];
  OUTLINED_FUNCTION_260(v5, v5[3]);
  sub_1D84EC004();
  OUTLINED_FUNCTION_494();
  sub_1D8581BB8();
  switch(v51)
  {
    case 1:
      sub_1D84EC1A8();
      v51 = v71;
      OUTLINED_FUNCTION_243_1();
      sub_1D8581988();
      (*(v57 + 8))(v3, v58);
      goto LABEL_9;
    case 2:
      sub_1D84EC154();
      v1 = v59;
      OUTLINED_FUNCTION_136_1();
      v54 = v60;
      v53 = v61;
      goto LABEL_8;
    case 3:
      sub_1D84EC100();
      v1 = v62;
      OUTLINED_FUNCTION_136_1();
      v54 = v63;
      v53 = v64;
      goto LABEL_8;
    case 4:
      sub_1D84EC0AC();
      v1 = v65;
      OUTLINED_FUNCTION_136_1();
      v54 = v66;
      v53 = v67;
      goto LABEL_8;
    case 5:
      sub_1D84EC058();
      v1 = v68;
      OUTLINED_FUNCTION_136_1();
      v54 = v69;
      v53 = v70;
      goto LABEL_8;
    default:
      sub_1D84EC1FC();
      OUTLINED_FUNCTION_136_1();
      v54 = v55;
      v53 = v56;
LABEL_8:
      (*(v54 + 8))(v1, v53);
LABEL_9:
      (*(v47 + 8))(v2, v51);
      OUTLINED_FUNCTION_284_0();
      return;
  }
}

uint64_t GameActivityInstance.URLParseError.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_379();
  v2 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v2);
  return sub_1D8581B98();
}

void GameActivityInstance.URLParseError.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v74 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F18, &qword_1D859AAA0);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_469_0(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F20, &qword_1D859AAA8);
  v72 = OUTLINED_FUNCTION_1(v10);
  v73 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_196();
  v76 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F28, &qword_1D859AAB0);
  OUTLINED_FUNCTION_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_409_0(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F30, &qword_1D859AAB8);
  OUTLINED_FUNCTION_1(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_196();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F38, &qword_1D859AAC0);
  OUTLINED_FUNCTION_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_200();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F40, &qword_1D859AAC8);
  OUTLINED_FUNCTION_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_199();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F48, &qword_1D859AAD0);
  OUTLINED_FUNCTION_1(v33);
  v75 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_129();
  v38 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D84EC004();
  OUTLINED_FUNCTION_494();
  sub_1D8581BA8();
  if (!v0)
  {
    v70 = v3;
    v71 = v1;
    v39 = sub_1D8581968();
    sub_1D8440880(v39, 0);
    v41 = v40;
    v43 = v33;
    if (v44 == v42 >> 1)
    {
      v45 = v75;
    }

    else
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v50 == v51)
      {
        __break(1u);
        return;
      }

      v52 = *(v49 + v47);
      sub_1D84408DC(v47 + 1, v46, v41, v49, v47, v48);
      v54 = v53;
      v56 = v55;
      swift_unknownObjectRelease();
      if (v54 == v56 >> 1)
      {
        switch(v52)
        {
          case 1:
            sub_1D84EC1A8();
            OUTLINED_FUNCTION_208_1();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 2:
            sub_1D84EC154();
            OUTLINED_FUNCTION_208_1();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 3:
            sub_1D84EC100();
            OUTLINED_FUNCTION_208_1();
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 4:
            sub_1D84EC0AC();
            sub_1D8581878();
            swift_unknownObjectRelease();
            (*(v73 + 8))(v76, v72);
            goto LABEL_20;
          case 5:
            sub_1D84EC058();
            OUTLINED_FUNCTION_208_1();
            swift_unknownObjectRelease();
LABEL_18:
            v57 = OUTLINED_FUNCTION_212_0();
            break;
          default:
            sub_1D84EC1FC();
            OUTLINED_FUNCTION_208_1();
            swift_unknownObjectRelease();
            v57 = OUTLINED_FUNCTION_212_0();
            v59 = v29;
            break;
        }

        v58(v57, v59);
LABEL_20:
        v67 = *(v75 + 8);
        v68 = OUTLINED_FUNCTION_150();
        v69(v68);
        *v74 = v52;
        v66 = v70;
        goto LABEL_12;
      }

      v45 = v75;
      v43 = v33;
    }

    v60 = sub_1D85817C8();
    OUTLINED_FUNCTION_446();
    v62 = v61;
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0) + 48);
    *v62 = &type metadata for GameActivityInstance.URLParseError;
    sub_1D8581888();
    OUTLINED_FUNCTION_186();
    v64 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_206_0(v60);
    (*(v65 + 104))(v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v45 + 8))(v71, v43);
    v3 = v70;
  }

  v66 = v3;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v66);
  OUTLINED_FUNCTION_284_0();
}

uint64_t GameActivityInstance.URLParseResult.activityInstance.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = *(type metadata accessor for GameActivityInstance.URLParseResult(v0) + 20);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_400(v2);
  return sub_1D84EA648();
}

uint64_t GameActivityInstance.URLParseResult.storeFront.getter()
{
  v0 = type metadata accessor for GameActivityInstance.URLParseResult(0);
  OUTLINED_FUNCTION_188_1(*(v0 + 24));
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.URLParseResult.init(gameBundleID:activityInstance:storeFront:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for GameActivityInstance.URLParseResult(0);
  v9 = *(v8 + 20);
  OUTLINED_FUNCTION_240_1();
  result = sub_1D84EB32C();
  v11 = (a5 + *(v8 + 24));
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t sub_1D84E19CC()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == OUTLINED_FUNCTION_333_1() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_184_0();
    v7 = v1 == v6 && v5 == v0;
    if (v7 || (OUTLINED_FUNCTION_70_0() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == OUTLINED_FUNCTION_299_0() && v0 == v8)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_369();
      if (v1)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1D84E1A90(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_333_1();
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x6F724665726F7473;
}

uint64_t sub_1D84E1AF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84E19CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D84E1B20()
{
  sub_1D84EC270();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E1B58()
{
  sub_1D84EC270();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t GameActivityInstance.URLParseResult.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F50, &qword_1D859AAD8);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_110();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v13, v14);
  sub_1D84EC270();
  OUTLINED_FUNCTION_377_0();
  v15 = *v3;
  v16 = v3[1];
  sub_1D8581A08();
  if (!v2)
  {
    v17 = type metadata accessor for GameActivityInstance.URLParseResult(0);
    v18 = *(v17 + 20);
    OUTLINED_FUNCTION_378_0();
    type metadata accessor for GameActivityInstance(0);
    OUTLINED_FUNCTION_14_1();
    sub_1D84C49BC(v19);
    OUTLINED_FUNCTION_361();
    sub_1D8581A58();
    v20 = (v3 + *(v17 + 24));
    v21 = *v20;
    v22 = v20[1];
    sub_1D8581998();
  }

  v23 = *(v7 + 8);
  v24 = OUTLINED_FUNCTION_291();
  return v25(v24);
}

void GameActivityInstance.URLParseResult.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  v5 = type metadata accessor for GameActivityInstance(0);
  v6 = OUTLINED_FUNCTION_4_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_309();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F58, &qword_1D859AAE0);
  v10 = OUTLINED_FUNCTION_1(v9);
  v31 = v11;
  v32 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_250_0();
  v15 = type metadata accessor for GameActivityInstance.URLParseResult(0);
  v16 = OUTLINED_FUNCTION_4_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_227_0();
  v20 = v4[3];
  v19 = v4[4];
  v21 = OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_260(v21, v22);
  sub_1D84EC270();
  sub_1D8581BA8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    v33 = v4;
    v23 = v2;
    *v2 = sub_1D8581908();
    v2[1] = v24;
    OUTLINED_FUNCTION_378_0();
    OUTLINED_FUNCTION_14_1();
    sub_1D84C49BC(v25);
    sub_1D8581958();
    v26 = *(v15 + 20);
    OUTLINED_FUNCTION_240_1();
    sub_1D84EB32C();
    v27 = sub_1D8581898();
    v29 = v28;
    (*(v31 + 8))(v1, v32);
    v30 = (v23 + *(v15 + 24));
    *v30 = v27;
    v30[1] = v29;
    sub_1D84EA648();
    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_1D84EB2B8();
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t GameActivityInstance.ParsedLink.gameBundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.ParsedLink.gameBundleID.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.adamID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.ParsedLink.adamID.setter()
{
  OUTLINED_FUNCTION_129_0();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1D84E2174()
{
  v0 = OUTLINED_FUNCTION_393_0();
  type metadata accessor for GameActivityInstance(v0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t GameActivityInstance.ParsedLink.activityInstance.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance.ParsedLink(v0);
  OUTLINED_FUNCTION_400(*(v1 + 24));
  return sub_1D847C204();
}

uint64_t GameActivityInstance.ParsedLink.activityInstance.setter()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance.ParsedLink(v0) + 24);
  return OUTLINED_FUNCTION_528();
}

uint64_t GameActivityInstance.ParsedLink.activityInstance.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance.ParsedLink(v0) + 24);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.ParsedLink.gameActivityDefinitionID.getter()
{
  v0 = type metadata accessor for GameActivityInstance.ParsedLink(0);
  OUTLINED_FUNCTION_188_1(*(v0 + 28));
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.ParsedLink.gameActivityDefinitionID.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  v4 = type metadata accessor for GameActivityInstance.ParsedLink(v3);
  result = OUTLINED_FUNCTION_235_1(*(v4 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.gameActivityDefinitionID.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance.ParsedLink(v0) + 28);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.ParsedLink.partyCode.getter()
{
  v0 = type metadata accessor for GameActivityInstance.ParsedLink(0);
  OUTLINED_FUNCTION_188_1(*(v0 + 32));
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.ParsedLink.partyCode.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  v4 = type metadata accessor for GameActivityInstance.ParsedLink(v3);
  result = OUTLINED_FUNCTION_235_1(*(v4 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.partyCode.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance.ParsedLink(v0) + 32);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.ParsedLink.shortGroupID.getter()
{
  v0 = type metadata accessor for GameActivityInstance.ParsedLink(0);
  OUTLINED_FUNCTION_188_1(*(v0 + 36));
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.ParsedLink.shortGroupID.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  v4 = type metadata accessor for GameActivityInstance.ParsedLink(v3);
  result = OUTLINED_FUNCTION_235_1(*(v4 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.shortGroupID.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance.ParsedLink(v0) + 36);
  return OUTLINED_FUNCTION_106();
}

void sub_1D84E2498(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

uint64_t GameActivityInstance.ParsedLink.deepLinkStat.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance.ParsedLink(v0);
  v2 = OUTLINED_FUNCTION_417_0(*(v1 + 40));

  return sub_1D84EB994(v2, v3, v4);
}

uint64_t GameActivityInstance.ParsedLink.deepLinkStat.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for GameActivityInstance.ParsedLink(0) + 40);
  result = sub_1D84EB9AC(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.deepLinkStat.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance.ParsedLink(v0) + 40);
  return OUTLINED_FUNCTION_106();
}

uint64_t sub_1D84E258C(uint64_t (*a1)(void))
{
  v1 = a1(0);
  OUTLINED_FUNCTION_188_1(*(v1 + 44));
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.ParsedLink.inviterPlayerID.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  v4 = type metadata accessor for GameActivityInstance.ParsedLink(v3);
  result = OUTLINED_FUNCTION_235_1(*(v4 + 44));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.inviterPlayerID.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance.ParsedLink(v0) + 44);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.ParsedLink.storeFront.getter()
{
  v0 = type metadata accessor for GameActivityInstance.ParsedLink(0);
  OUTLINED_FUNCTION_188_1(*(v0 + 48));
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.ParsedLink.storeFront.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  v4 = type metadata accessor for GameActivityInstance.ParsedLink(v3);
  result = OUTLINED_FUNCTION_235_1(*(v4 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.storeFront.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance.ParsedLink(v0) + 48);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.ParsedLink.properties.getter()
{
  v1 = *(v0 + *(type metadata accessor for GameActivityInstance.ParsedLink(0) + 52));
}

uint64_t GameActivityInstance.ParsedLink.properties.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = *(type metadata accessor for GameActivityInstance.ParsedLink(v2) + 52);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.properties.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance.ParsedLink(v0) + 52);
  return OUTLINED_FUNCTION_106();
}

void GameActivityInstance.ParsedLink.parsingError.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance.ParsedLink(v0);
  OUTLINED_FUNCTION_493_0(*(v1 + 56));
}

uint64_t GameActivityInstance.ParsedLink.parsingError.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for GameActivityInstance.ParsedLink(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.parsingError.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  v1 = *(type metadata accessor for GameActivityInstance.ParsedLink(v0) + 56);
  return OUTLINED_FUNCTION_106();
}

void GameActivityInstance.ParsedLink.init()()
{
  v1 = OUTLINED_FUNCTION_393_0();
  v2 = type metadata accessor for GameActivityInstance.ParsedLink(v1);
  *v0 = 0u;
  v0[1] = 0u;
  v3 = v2[6];
  type metadata accessor for GameActivityInstance(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_357_0(v2[7]);
  OUTLINED_FUNCTION_357_0(v2[8]);
  OUTLINED_FUNCTION_357_0(v2[9]);
  OUTLINED_FUNCTION_357_0(v2[10]);
  *(v8 + 16) = -1;
  OUTLINED_FUNCTION_357_0(v2[11]);
  OUTLINED_FUNCTION_357_0(v2[12]);
  *(v0 + v2[13]) = MEMORY[0x1E69E7CC8];
  *(v0 + v2[14]) = 6;
}

uint64_t sub_1D84E28E4()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x646E7542656D6167 && v2 == 0xEC0000004449656CLL;
  if (v3 || (OUTLINED_FUNCTION_7() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x44496D616461 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_7() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_385_0();
      v7 = v3 && v6 == v0;
      if (v7 || (OUTLINED_FUNCTION_70_0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = v1 == 0xD000000000000018 && 0x80000001D85868C0 == v0;
        if (v8 || (OUTLINED_FUNCTION_7() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_421_0();
          v10 = v3 && v0 == v9;
          if (v10 || (OUTLINED_FUNCTION_7() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v11 = v1 == OUTLINED_FUNCTION_444_0() && v0 == 0xEC00000044497075;
            if (v11 || (OUTLINED_FUNCTION_7() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = v1 == OUTLINED_FUNCTION_460_0() && v0 == v12;
              if (v13 || (OUTLINED_FUNCTION_7() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v15 = v1 == OUTLINED_FUNCTION_428_0() && v0 == v14;
                if (v15 || (OUTLINED_FUNCTION_7() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v16 = v1 == OUTLINED_FUNCTION_299_0() && v0 == 0xEA0000000000746ELL;
                  if (v16 || (OUTLINED_FUNCTION_7() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_401_0();
                    v17 = v3 && v0 == 0xEA00000000007365;
                    if (v17 || (OUTLINED_FUNCTION_7() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (v1 == OUTLINED_FUNCTION_459_0() && v0 == v18)
                    {

                      return 10;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_369();
                      if (v1)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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
}

void sub_1D84E2B38()
{
  OUTLINED_FUNCTION_333_1();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_186_1();
      break;
    case 6:
      OUTLINED_FUNCTION_460_0();
      break;
    case 7:
      OUTLINED_FUNCTION_428_0();
      break;
    case 9:
      OUTLINED_FUNCTION_443_0();
      break;
    case 10:
      OUTLINED_FUNCTION_459_0();
      break;
    default:
      return;
  }
}

uint64_t sub_1D84E2C74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84E28E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D84E2CA4()
{
  sub_1D84EC33C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E2CDC()
{
  sub_1D84EC33C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t GameActivityInstance.ParsedLink.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F60, &qword_1D859AAE8);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_110();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v13, v14);
  sub_1D84EC33C();
  OUTLINED_FUNCTION_377_0();
  v15 = *v3;
  v16 = v3[1];
  OUTLINED_FUNCTION_232();
  sub_1D8581998();
  if (!v2)
  {
    v17 = v3[2];
    v18 = v3[3];
    OUTLINED_FUNCTION_107_1(1);
    v19 = type metadata accessor for GameActivityInstance.ParsedLink(0);
    v20 = v19[6];
    type metadata accessor for GameActivityInstance(0);
    OUTLINED_FUNCTION_14_1();
    sub_1D84C49BC(v21);
    OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_232();
    sub_1D85819E8();
    OUTLINED_FUNCTION_256_1(v19[7]);
    OUTLINED_FUNCTION_107_1(3);
    OUTLINED_FUNCTION_256_1(v19[8]);
    OUTLINED_FUNCTION_107_1(4);
    OUTLINED_FUNCTION_256_1(v19[9]);
    OUTLINED_FUNCTION_107_1(5);
    v28 = OUTLINED_FUNCTION_256_1(v19[10]);
    v30 = v23;
    v31 = *(v22 + 16);
    sub_1D84EB994(v28, v23, v31);
    sub_1D84D7BAC();
    OUTLINED_FUNCTION_232();
    sub_1D85819E8();
    sub_1D84EB9AC(v28, v30, v31);
    OUTLINED_FUNCTION_256_1(v19[11]);
    OUTLINED_FUNCTION_107_1(7);
    OUTLINED_FUNCTION_256_1(v19[12]);
    OUTLINED_FUNCTION_107_1(8);
    v29 = *(v3 + v19[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    OUTLINED_FUNCTION_108_2(&unk_1ECA39AB0);
    OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    LOBYTE(v29) = *(v3 + v19[14]);
    sub_1D84EC390();
    OUTLINED_FUNCTION_232();
    sub_1D85819E8();
  }

  v24 = *(v7 + 8);
  v25 = OUTLINED_FUNCTION_291();
  return v26(v25);
}

void GameActivityInstance.ParsedLink.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39968, &qword_1D8596368);
  OUTLINED_FUNCTION_363(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_196();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F70, &qword_1D859AAF0);
  OUTLINED_FUNCTION_1(v43);
  v42 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_196();
  v12 = OUTLINED_FUNCTION_5_0();
  v13 = type metadata accessor for GameActivityInstance.ParsedLink(v12);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_228_1();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v41 = v14[8];
  type metadata accessor for GameActivityInstance(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_361_0(v14[9]);
  v40 = v20;
  v21 = (v1 + v14[10]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v1 + v14[11]);
  *v22 = 0;
  v22[1] = 0;
  v23 = v1 + v14[12];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = -1;
  v24 = (v1 + v14[13]);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v1 + v14[14]);
  *v25 = 0;
  v25[1] = 0;
  v39 = v14[15];
  *(v1 + v39) = MEMORY[0x1E69E7CC8];
  v26 = v14[16];
  v44 = v1;
  *(v1 + v26) = 6;
  v27 = v3[4];
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D84EC33C();
  sub_1D8581BA8();
  if (!v0)
  {
    OUTLINED_FUNCTION_312_0();
    *v44 = sub_1D8581898();
    v44[1] = v28;
    OUTLINED_FUNCTION_312_0();
    v44[2] = sub_1D8581898();
    v44[3] = v29;
    LOBYTE(v45) = 2;
    OUTLINED_FUNCTION_14_1();
    sub_1D84C49BC(v30);
    OUTLINED_FUNCTION_312_0();
    sub_1D85818E8();
    sub_1D84EC2E4();
    *v40 = OUTLINED_FUNCTION_184_1(3);
    v40[1] = v31;
    *v21 = OUTLINED_FUNCTION_184_1(4);
    v21[1] = v32;
    *v22 = OUTLINED_FUNCTION_184_1(5);
    v22[1] = v33;
    sub_1D84E8BE8();
    OUTLINED_FUNCTION_312_0();
    sub_1D85818E8();
    sub_1D84EB9AC(*v23, *(v23 + 1), v23[16]);
    *v23 = v45;
    *(v23 + 1) = v46;
    v23[16] = v47;
    LOBYTE(v45) = 7;
    *v24 = sub_1D8581898();
    v24[1] = v34;
    *v25 = OUTLINED_FUNCTION_184_1(8);
    v25[1] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    OUTLINED_FUNCTION_104_2(&unk_1ECA39AD8);
    OUTLINED_FUNCTION_501_0();
    sub_1D8581958();
    *(v44 + v39) = v45;
    sub_1D84EC3E4();
    OUTLINED_FUNCTION_259_1();
    sub_1D85818E8();
    v36 = *(v42 + 8);
    v37 = OUTLINED_FUNCTION_151();
    v38(v37);
    *(v44 + v26) = 7;
    OUTLINED_FUNCTION_31_1();
    sub_1D84EA648();
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_80_0();
  sub_1D84EB2B8();
  OUTLINED_FUNCTION_342_1();
  OUTLINED_FUNCTION_284_0();
}

void static GameActivityInstance.parseResult(from:activityEnvironment:creatorPlayerID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_386();
  a19 = v22;
  a20 = v23;
  v482 = v24;
  v481 = v25;
  v27 = v26;
  v500 = v28;
  v502 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v31 = OUTLINED_FUNCTION_363(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_66_0(v36);
  v475 = sub_1D8580EA8();
  v37 = OUTLINED_FUNCTION_1(v475);
  v474 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_19_0();
  v42 = OUTLINED_FUNCTION_66_0(v41);
  v43 = type metadata accessor for GameActivityInstance(v42);
  v44 = OUTLINED_FUNCTION_4_0(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_190_1(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F80, &qword_1D859AAF8);
  OUTLINED_FUNCTION_363(v50);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_66_0(v54);
  v480 = sub_1D8580EE8();
  v55 = OUTLINED_FUNCTION_1(v480);
  v479 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_190_1(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F88, &unk_1D859AB00);
  OUTLINED_FUNCTION_363(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_66_0(v64);
  v65 = sub_1D8580B88();
  v66 = OUTLINED_FUNCTION_1(v65);
  v494 = v67;
  v495 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_245_1();
  v496 = v72;
  OUTLINED_FUNCTION_5_0();
  v73 = sub_1D8580D78();
  v74 = OUTLINED_FUNCTION_1(v73);
  v497 = v75;
  v498 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_235_2();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E50, &unk_1D859AA30);
  v79 = OUTLINED_FUNCTION_363(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_292();
  MEMORY[0x1EEE9AC00](v82);
  v84 = v454 - v83;
  v85 = sub_1D8580C68();
  v86 = OUTLINED_FUNCTION_1(v85);
  v88 = v87;
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_21_1();
  v499 = v91;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v92);
  v94 = (v454 - v93);
  v95 = type metadata accessor for GameActivityInstance.ParsedLink(0);
  v96 = (v95 - 8);
  v97 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_228_1();
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v472 = v20 + v96[8];
  OUTLINED_FUNCTION_123();
  v477 = v43;
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v43);
  OUTLINED_FUNCTION_361_0(v96[9]);
  v487 = v101;
  OUTLINED_FUNCTION_361_0(v96[10]);
  v486 = v102;
  OUTLINED_FUNCTION_361_0(v96[11]);
  v485 = v103;
  v104 = v20 + v96[12];
  *v104 = 0;
  *(v104 + 1) = 0;
  v484 = v104;
  v104[16] = -1;
  OUTLINED_FUNCTION_361_0(v96[13]);
  v489 = v105;
  OUTLINED_FUNCTION_361_0(v96[14]);
  OUTLINED_FUNCTION_302_0(v106);
  v488 = v96[15];
  *(v20 + v488) = MEMORY[0x1E69E7CC8];
  v107 = v96[16];
  v501 = v20;
  *(v20 + v107) = 6;
  sub_1D8580BB8();
  OUTLINED_FUNCTION_311_0();
  OUTLINED_FUNCTION_501(v108, v109, v110);
  if (v125)
  {
    sub_1D8436E18(v84, &qword_1ECA39E50, &unk_1D859AA30);
LABEL_31:
    *(v501 + v107) = 3;
    sub_1D84EB32C();
LABEL_32:
    OUTLINED_FUNCTION_388();
    return;
  }

  v493 = v107;
  v107 = v88 + 32;
  v111 = *(v88 + 32);
  v112 = OUTLINED_FUNCTION_506();
  v111(v112);
  v113 = *(v27 + 24);
  v114 = *(v27 + 32);
  v471 = v27;
  v115 = OUTLINED_FUNCTION_151();
  __swift_project_boxed_opaque_existential_1(v115, v116);
  v117 = *(v114 + 40);
  v118 = OUTLINED_FUNCTION_344_1();
  v119(v118);
  sub_1D8580BB8();
  v120 = OUTLINED_FUNCTION_212_0();
  v121(v120);
  OUTLINED_FUNCTION_311_0();
  OUTLINED_FUNCTION_501(v122, v123, v124);
  v126 = v85;
  if (v125)
  {
    v127 = OUTLINED_FUNCTION_77();
    v128(v127);
    sub_1D8436E18(v21, &qword_1ECA39E50, &unk_1D859AA30);
    OUTLINED_FUNCTION_127_1();
    goto LABEL_31;
  }

  v129 = v88;
  v130 = OUTLINED_FUNCTION_241_0();
  v111(v130);
  v131 = sub_1D8580C18();
  v133 = v132;
  v134 = sub_1D8580C18();
  v136 = v135;
  v137 = v94;
  if (v133)
  {
    if (!v135)
    {
      OUTLINED_FUNCTION_127_1();
LABEL_29:

      goto LABEL_30;
    }

    v138 = v131 == v134 && v133 == v135;
    v107 = v493;
    if (v138)
    {
    }

    else
    {
      v139 = sub_1D8581AB8();

      if ((v139 & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_127_1();
    if (v136)
    {
LABEL_28:
      v133 = v136;
      goto LABEL_29;
    }
  }

  v140 = sub_1D8580BD8();
  v133 = v141;
  v142 = sub_1D8580BD8();
  v136 = v143;
  if (!v133)
  {
    if (!v143)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if (!v143)
  {
    goto LABEL_29;
  }

  if (v140 != v142 || v133 != v143)
  {
    OUTLINED_FUNCTION_506();
    v145 = sub_1D8581AB8();

    if (v145)
    {
      goto LABEL_34;
    }

LABEL_30:
    v146 = OUTLINED_FUNCTION_355_0();
    v133(v146, v126);
    v147 = OUTLINED_FUNCTION_233();
    (v133)(v147);
    goto LABEL_31;
  }

LABEL_34:
  v497 = v126;
  v470 = v137;
  v148 = v137;
  sub_1D8580BF8();
  OUTLINED_FUNCTION_471_0();
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_413_0();
  v154 = sub_1D84E6E0C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D84EC464, v150, v151, v152, v153);
  v498 = 0;
  v155 = *(v154 + 16);
  v500 = v129;
  if (v155)
  {
    OUTLINED_FUNCTION_437_0(MEMORY[0x1E69E7CC0]);
    v107 = 0;
    v156 = v506;
    v157 = (v154 + 56);
    while (v107 < *(v154 + 16))
    {
      v148 = *(v157 - 3);
      v158 = *(v157 - 2);
      v159 = *(v157 - 1);
      v160 = *v157;

      v161 = OUTLINED_FUNCTION_150();
      v162 = MEMORY[0x1DA718930](v161);
      v164 = v163;

      v506 = v156;
      v166 = v156[2];
      v165 = v156[3];
      if (v166 >= v165 >> 1)
      {
        v168 = OUTLINED_FUNCTION_337_0(v165);
        v148 = &v506;
        sub_1D84E8374(v168, v166 + 1, 1);
        v156 = v506;
      }

      ++v107;
      v156[2] = v166 + 1;
      v167 = &v156[2 * v166];
      v167[4] = v162;
      v167[5] = v164;
      v157 += 32;
      if (v155 == v107)
      {

        OUTLINED_FUNCTION_127_1();
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v156 = MEMORY[0x1E69E7CC0];
LABEL_42:
  sub_1D8580BF8();
  OUTLINED_FUNCTION_471_0();
  MEMORY[0x1EEE9AC00](v169);
  OUTLINED_FUNCTION_413_0();
  v170 = v498;
  v157 = sub_1D84E6E0C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D84F0B94, v171, v172, v173, v174);
  v469 = v170;
  v175 = *(v157 + 2);
  if (v175)
  {
    OUTLINED_FUNCTION_437_0(MEMORY[0x1E69E7CC0]);
    v107 = 0;
    v148 = v506;
    v176 = (v157 + 56);
    do
    {
      if (v107 >= *(v157 + 2))
      {
        goto LABEL_162;
      }

      v177 = *(v176 - 3);
      v178 = *(v176 - 2);
      v179 = *(v176 - 1);
      v180 = *v176;

      OUTLINED_FUNCTION_269_1();
      v181 = MEMORY[0x1DA718930]();
      v183 = v182;

      v506 = v148;
      v185 = v148[2];
      v184 = v148[3];
      if (v185 >= v184 >> 1)
      {
        v187 = OUTLINED_FUNCTION_337_0(v184);
        sub_1D84E8374(v187, v185 + 1, 1);
        v148 = v506;
      }

      ++v107;
      v148[2] = v185 + 1;
      v186 = &v148[2 * v185];
      v186[4] = v181;
      v186[5] = v183;
      v176 += 4;
    }

    while (v175 != v107);

    OUTLINED_FUNCTION_219_2();
  }

  else
  {

    v148 = MEMORY[0x1E69E7CC0];
  }

  v188 = v156[2];
  if (v188 != v148[2] || v188 <= 1)
  {

    v190 = v497;
LABEL_91:

    v232 = OUTLINED_FUNCTION_355_0();
    (v188)(v232, v190);
    v233 = OUTLINED_FUNCTION_252_2();
    (v188)(v233, v190);
    v234 = 3;
LABEL_92:
    *(v501 + v107) = v234;
    OUTLINED_FUNCTION_31_1();
    goto LABEL_93;
  }

  sub_1D84E5780(1uLL, v156[2], v156);
  v192 = v191;
  v194 = v193;
  if (v193)
  {
    sub_1D8581AC8();
    swift_unknownObjectRetain_n();
    v198 = swift_dynamicCastClass();
    if (!v198)
    {
      swift_unknownObjectRelease();
      v198 = MEMORY[0x1E69E7CC0];
    }

    v107 = *(v198 + 16);

    if (__OFSUB__(v194 >> 1, v192))
    {
      __break(1u);
      goto LABEL_216;
    }

    if (v107 != (v194 >> 1) - v192)
    {
      goto LABEL_217;
    }

    v194 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_127_1();
    if (v194)
    {
      goto LABEL_64;
    }

    v194 = MEMORY[0x1E69E7CC0];
    goto LABEL_63;
  }

  while (1)
  {
    v195 = OUTLINED_FUNCTION_233();
    sub_1D84E773C(v195, v196, v192, v194);
    v194 = v197;
LABEL_63:
    swift_unknownObjectRelease();
LABEL_64:
    OUTLINED_FUNCTION_231();
    sub_1D84E5780(v199, v200, v201);
    v192 = v202;
    v204 = v203;

    if ((v204 & 1) == 0)
    {
      goto LABEL_65;
    }

    sub_1D8581AC8();
    swift_unknownObjectRetain_n();
    v209 = swift_dynamicCastClass();
    if (!v209)
    {
      swift_unknownObjectRelease();
      v209 = MEMORY[0x1E69E7CC0];
    }

    v107 = *(v209 + 16);

    if (!__OFSUB__(v204 >> 1, v192))
    {
      break;
    }

LABEL_216:
    __break(1u);
LABEL_217:
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_127_1();
  }

  if (v107 != (v204 >> 1) - v192)
  {
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_127_1();
LABEL_65:
    v205 = OUTLINED_FUNCTION_344_1();
    sub_1D84E773C(v205, v206, v192, v204);
    v208 = v207;
    v190 = v497;
    goto LABEL_72;
  }

  v208 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v190 = v497;
  OUTLINED_FUNCTION_219_2();
  if (v208)
  {
    goto LABEL_73;
  }

  v208 = MEMORY[0x1E69E7CC0];
LABEL_72:
  swift_unknownObjectRelease();
LABEL_73:
  v188 = sub_1D84C78BC(v194, v208);

  if ((v188 & 1) == 0 || !v156[2])
  {
    goto LABEL_91;
  }

  v211 = v156[4];
  v210 = v156[5];

  OUTLINED_FUNCTION_353_0();
  *v212 = v211;
  v212[1] = v210;
  v213 = sub_1D8580B98();
  if (!v213)
  {
    v240 = OUTLINED_FUNCTION_355_0();
    (v210)(v240, v190);
    v241 = OUTLINED_FUNCTION_150();
    (v210)(v241);
    v234 = 4;
    goto LABEL_92;
  }

  v214 = v213;
  v215 = 0;
  v216 = *(v213 + 16);
  v498 = (v494 + 16);
  v217 = (v494 + 8);
  v468 = (v494 + 32);
  v218 = MEMORY[0x1E69E7CC0];
  v219 = v495;
  v491 = v216;
  while (v216 != v215)
  {
    if (v215 >= *(v214 + 16))
    {
      __break(1u);
LABEL_178:
      v338 = v506;
      v339 = v507;
      v340 = 1;
LABEL_179:
      v337 = v497;
      if (v213)
      {
        goto LABEL_180;
      }

      v469 = 0;

      goto LABEL_182;
    }

    OUTLINED_FUNCTION_490_0();
    v222 = v221 & ~v220;
    v224 = *(v223 + 72);
    v210 = v496;
    (*(v223 + 16))(v496, v214 + v222 + v224 * v215, v219);
    sub_1D8580B58();
    OUTLINED_FUNCTION_343_1();
    v225 = sub_1D85779BC();
    OUTLINED_FUNCTION_487_0(v225);
    if (v125)
    {
      v227 = v210 == v226;
    }

    else
    {
      v227 = 0;
    }

    if (v227)
    {

LABEL_86:
      v107 = *v468;
      v219 = v495;
      (*v468)(v492, v496, v495);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v506 = v218;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D8439A88(0, *(v218 + 16) + 1, 1);
        v219 = v495;
        v218 = v506;
      }

      v230 = *(v218 + 16);
      v229 = *(v218 + 24);
      v210 = v230 + 1;
      if (v230 >= v229 >> 1)
      {
        v231 = OUTLINED_FUNCTION_337_0(v229);
        sub_1D8439A88(v231, v230 + 1, 1);
        v219 = v495;
        v218 = v506;
      }

      ++v215;
      *(v218 + 16) = v210;
      (v107)(v218 + v222 + v230 * v224, v492, v219);
      OUTLINED_FUNCTION_219_2();
      v216 = v491;
    }

    else
    {
      OUTLINED_FUNCTION_151();
      sub_1D8581AB8();
      OUTLINED_FUNCTION_369();
      if (v210)
      {
        goto LABEL_86;
      }

      v219 = v495;
      v213 = (*v217)(v496, v495);
      ++v215;
    }
  }

  if (*(v218 + 16) != 1)
  {

    v242 = OUTLINED_FUNCTION_355_0();
    v243 = v497;
    (v210)(v242, v497);
    v244 = OUTLINED_FUNCTION_252_2();
    (v210)(v244, v243);
    goto LABEL_101;
  }

  v235 = v490;
  sub_1D84E57EC(v218, v490);

  OUTLINED_FUNCTION_55_0(v235);
  v236 = v502;
  if (v125)
  {

    v237 = OUTLINED_FUNCTION_355_0();
    v238 = v497;
    (v210)(v237, v497);
    v239 = OUTLINED_FUNCTION_252_2();
    (v210)(v239, v238);
    sub_1D8436E18(v235, &qword_1ECA39F88, &unk_1D859AB00);
LABEL_101:
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_344_1();
    goto LABEL_93;
  }

  v245 = v219;
  v216 = sub_1D8580B78();
  v246 = v235;
  v248 = v247;
  v157 = *v217;
  (*v217)(v246, v219);
  v148 = v497;
  if (!v248)
  {
LABEL_163:

    v303 = OUTLINED_FUNCTION_355_0();
    (v157)(v303, v148);
    v304 = OUTLINED_FUNCTION_252_2();
    (v157)(v304, v148);
    goto LABEL_101;
  }

  v249 = v501;
  v458 = v216;
  *v501 = v216;
  v249[1] = v248;
  v464 = v248;

  v465 = sub_1D85811B8();
  OUTLINED_FUNCTION_353_0();
  if (v250)
  {
    OUTLINED_FUNCTION_176_1();
    v251 = v495;
    OUTLINED_FUNCTION_490_0();
    v254 = v214 + (v253 & ~v252);
    v496 = *(v255 + 72);
    v256 = *(v255 + 16);
    OUTLINED_FUNCTION_496_0();
    while (1)
    {
      v256(v236, v254, v251);
      sub_1D8580B58();
      OUTLINED_FUNCTION_354_0();
      v257 = sub_1D8577980();
      OUTLINED_FUNCTION_58_1(v257);
      if (v125)
      {
        v259 = v258 == v236;
      }

      else
      {
        v259 = 0;
      }

      if (v259 || (OUTLINED_FUNCTION_271_1() & 1) != 0)
      {

        v251 = v236;
        v492 = sub_1D8580B78();
        v216 = v260;
      }

      else
      {
        v261 = sub_1D8577994();
        OUTLINED_FUNCTION_58_1(v261);
        if (v125)
        {
          v263 = v262 == v236;
        }

        else
        {
          v263 = 0;
        }

        if (v263 || (OUTLINED_FUNCTION_271_1() & 1) != 0)
        {

          OUTLINED_FUNCTION_214_2();

          v251 = v236;
          v468 = sub_1D8580B78();
          v265 = &a15;
        }

        else
        {
          v268 = sub_1D85779A8();
          OUTLINED_FUNCTION_58_1(v268);
          if (v125)
          {
            v270 = v269 == v236;
          }

          else
          {
            v270 = 0;
          }

          if (v270 || (OUTLINED_FUNCTION_271_1() & 1) != 0)
          {

            v251 = v236;
            v463 = sub_1D8580B78();
            v265 = &v493;
          }

          else
          {
            v271 = sub_1D85779D0();
            OUTLINED_FUNCTION_58_1(v271);
            if (v125)
            {
              v273 = v272 == v236;
            }

            else
            {
              v273 = 0;
            }

            if (!v273 && (OUTLINED_FUNCTION_271_1() & 1) == 0)
            {
              v274 = sub_1D85779E4();
              OUTLINED_FUNCTION_58_1(v274);
              if (v125)
              {
                v276 = v275 == v236;
              }

              else
              {
                v276 = 0;
              }

              if (v276 || (OUTLINED_FUNCTION_271_1() & 1) != 0)
              {

                OUTLINED_FUNCTION_496_0();
                v251 = v236;
                v460 = sub_1D8580B78();
                v278 = &v487;
                goto LABEL_139;
              }

              v280 = sub_1D85779F8();
              OUTLINED_FUNCTION_58_1(v280);
              if (v125)
              {
                v282 = v281 == v236;
              }

              else
              {
                v282 = 0;
              }

              if (v282)
              {
              }

              else
              {
                OUTLINED_FUNCTION_271_1();
                OUTLINED_FUNCTION_442_0();
                if ((v245 & 1) == 0)
                {
                  v251 = v483;
                  v457 = sub_1D8580B78();
                  v494 = v283;
                  if (!v283)
                  {
                    goto LABEL_160;
                  }

                  sub_1D8580B58();
                  v245 = v284;
                  v251 = sub_1D85812C8();

                  if (v251 < 2)
                  {
                    v236 = v483;
                    v296 = OUTLINED_FUNCTION_389_0();
                    (v157)(v296);
                  }

                  else
                  {
                    v285 = sub_1D8580B58();
                    v287 = v286;
                    v288 = v465;
                    v454[1] = swift_isUniquelyReferenced_nonNull_native();
                    v506 = v288;
                    v455 = v285;
                    v456 = v287;
                    v289 = sub_1D8436A4C(v285, v287);
                    v291 = *(v288 + 16);
                    v292 = (v290 & 1) == 0;
                    v245 = v291 + v292;
                    if (__OFADD__(v291, v292))
                    {
                      goto LABEL_220;
                    }

                    v236 = v289;
                    v107 = v290;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
                    v251 = &v506;
                    if (sub_1D8581808())
                    {
                      v251 = v506;
                      v293 = sub_1D8436A4C(v455, v456);
                      if ((v107 & 1) != (v294 & 1))
                      {
                        goto LABEL_222;
                      }

                      v236 = v293;
                    }

                    v465 = v506;
                    if (v107)
                    {
                      v295 = (*(v465 + 56) + 16 * v236);
                      v251 = v295[1];
                      OUTLINED_FUNCTION_384_0(v295);
                    }

                    else
                    {
                      v297 = v465;
                      *(v465 + 8 * (v236 >> 6) + 64) |= 1 << v236;
                      OUTLINED_FUNCTION_229_2((*(v297 + 48) + 16 * v236));
                      OUTLINED_FUNCTION_384_0((*(v298 + 56) + 16 * v236));
                      v300 = *(v299 + 16);
                      v301 = __OFADD__(v300, 1);
                      v302 = v300 + 1;
                      if (v301)
                      {
                        goto LABEL_221;
                      }

                      *(v465 + 16) = v302;
                    }

LABEL_160:
                    OUTLINED_FUNCTION_496_0();
LABEL_140:
                    v279 = OUTLINED_FUNCTION_389_0();
                    (v157)(v279);
                  }

                  OUTLINED_FUNCTION_219_2();
                  goto LABEL_119;
                }
              }

              OUTLINED_FUNCTION_496_0();
              v251 = v236;
              sub_1D8580B78();
              v278 = &v485;
LABEL_139:
              *(v278 - 32) = v277;
              goto LABEL_140;
            }

            OUTLINED_FUNCTION_427_0();
            v251 = v236;
            v462 = sub_1D8580B78();
            v265 = &v492;
          }
        }

        *(v265 - 32) = v264;
      }

      v266 = OUTLINED_FUNCTION_389_0();
      (v157)(v266);
LABEL_119:
      v254 += v496;
      OUTLINED_FUNCTION_353_0();
      v491 = v267 - 1;
      if (v267 == 1)
      {
        goto LABEL_165;
      }
    }
  }

  OUTLINED_FUNCTION_176_1();
LABEL_165:

  v305 = v487;
  *v487 = v492;
  v305[1] = v216;
  v306 = v486;
  v307 = v490;
  *v486 = v468;
  v306[1] = v307;
  v308 = v485;
  v309 = v466;
  *v485 = v462;
  v308[1] = v309;

  v310 = sub_1D84F1F10(v460, v461);
  v311 = v489;
  *v489 = v310;
  v311[1] = v312;
  *(v501 + v488) = v465;
  v313 = v467;
  v498 = v310;
  v496 = v312;
  if (!v467)
  {

    v338 = 0;
    v339 = 0;
    v340 = 255;
    v337 = v497;
    goto LABEL_182;
  }

  Ref<A>.init(bundleID:)();
  v314 = v506;
  v315 = v507;
  v506 = v463;
  v507 = v313;
  v316 = sub_1D8577A0C();
  v317 = v316[1];
  v508 = *v316;
  v509 = v317;
  sub_1D8437DF8();
  v318 = sub_1D8581648();
  v319 = v318;
  if (v318[2] != 2)
  {

    v339 = 0;
    v338 = 0;
    v340 = 255;
    v213 = v469;
    goto LABEL_179;
  }

  v495 = v314;
  v320 = v318[4];
  v321 = v318[5];
  v322 = v318[6];
  v323 = v318[7];

  v324 = OUTLINED_FUNCTION_253();
  MEMORY[0x1DA718930](v324);
  v326 = v325;

  if (v319[2] >= 2uLL)
  {
    v327 = v319[8];
    v328 = v319[9];
    v329 = v319[10];
    v330 = v319[11];

    v331 = OUTLINED_FUNCTION_150();
    MEMORY[0x1DA718930](v331);
    OUTLINED_FUNCTION_343_1();

    v332 = sub_1D8577A20();
    OUTLINED_FUNCTION_58_1(v332);
    if (v125)
    {
      v334 = v333 == v326;
    }

    else
    {
      v334 = 0;
    }

    if (v334 || (sub_1D8581AB8() & 1) != 0)
    {

      v508 = v495;
      v509 = v315;

      v335 = OUTLINED_FUNCTION_151();
      v336 = v469;
      Ref<A>.init(id:game:)(v335);
      v213 = v336;
      if (!v336)
      {
        goto LABEL_178;
      }

      v337 = v497;
    }

    else
    {
      v403 = sub_1D8577A3C();
      OUTLINED_FUNCTION_58_1(v403);
      if (v125)
      {
        v405 = v404 == v326;
      }

      else
      {
        v405 = 0;
      }

      if (v405)
      {
      }

      else
      {
        v406 = sub_1D8581AB8();

        if ((v406 & 1) == 0)
        {

          v339 = 0;
          v338 = 0;
          v340 = 255;
          OUTLINED_FUNCTION_219_2();
          v213 = v469;
          goto LABEL_179;
        }
      }

      v508 = v495;
      v509 = v315;

      v407 = OUTLINED_FUNCTION_151();
      v408 = v469;
      Ref<A>.init(leaderboardID:game:)(v407);
      if (!v408)
      {
        v340 = 0;
        v338 = v506;
        v339 = v507;
        OUTLINED_FUNCTION_219_2();
        goto LABEL_179;
      }

      v337 = v497;
      OUTLINED_FUNCTION_219_2();
    }

LABEL_180:
    MEMORY[0x1DA719650](v213);

    v338 = 0;
    v339 = 0;
    v469 = 0;
    v340 = 255;
LABEL_182:
    v341 = v484;
    v342 = *v484;
    v343 = v484[1];
    *v484 = v338;
    v341[1] = v339;
    v344 = *(v341 + 16);
    *(v341 + 16) = v340;
    v345 = OUTLINED_FUNCTION_125_1();
    sub_1D84EB994(v345, v346, v347);
    v348 = OUTLINED_FUNCTION_253();
    sub_1D84EB9AC(v348, v349, v344);
    if (v216)
    {
      if (v459)
      {

        if (!v490)
        {
LABEL_187:
          v350 = v482;

          if (!v466)
          {
            v351 = sub_1D8542C48();
            v462 = sub_1D84477D8(*v351);
            v466 = v352;
          }

          if (v350)
          {
            v506 = sub_1D84F1FF4(v481, v350);
            v507 = v353;
            MEMORY[0x1DA718990](45, 0xE100000000000000);
            MEMORY[0x1DA718990](v462, v466);
            v354 = v507;
            v355 = sub_1D8446BDC();
            v356 = *v355;
            v357 = v355[1];

            v358 = v478;
            OUTLINED_FUNCTION_287_0();
            sub_1D8446D38(v359, v360, v361);

            v362 = OUTLINED_FUNCTION_258_1();
            OUTLINED_FUNCTION_501(v362, v363, v480);
            if (!v125)
            {
              v390 = *(v479 + 32);
              v391 = OUTLINED_FUNCTION_166();
              v392(v391);
              sub_1D84EB9C4(v471, &v506);
              v498 = sub_1D8580EB8();
              v394 = v393;
              Ref<A>.init(bundleID:)();
              v503 = v504[1];
              v504[0] = v505;
              v395 = v469;
              Ref<A>.gameActivityDefinition(id:activityEnvironment:)();
              if (v395)
              {
                MEMORY[0x1DA719650](v395);

                OUTLINED_FUNCTION_427_0();

                OUTLINED_FUNCTION_214_2();

                v396 = OUTLINED_FUNCTION_125_1();
                sub_1D84EB9AC(v396, v397, v398);

                __swift_destroy_boxed_opaque_existential_1(&v506);
                v399 = OUTLINED_FUNCTION_339_0();
                v400(v399);
                v401 = OUTLINED_FUNCTION_503_0();
                (v340)(v401);
                v402 = OUTLINED_FUNCTION_252_2();
                (v340)(v402, v395);
                *(v501 + v493) = 0;
              }

              else
              {

                v492 = v508;
                OUTLINED_FUNCTION_302_0(v509);
                Ref<A>.init(internalID:)();
                v489 = v508;
                v488 = v509;
                v409 = v473;
                sub_1D8580E98();
                v410 = OUTLINED_FUNCTION_61_1(v504);
                v411 = v475;
                __swift_storeEnumTagSinglePayload(v410, v412, v413, v475);
                v414 = OUTLINED_FUNCTION_61_1(&v505);
                __swift_storeEnumTagSinglePayload(v414, v415, v416, v411);
                v417 = OUTLINED_FUNCTION_61_1(&v506);
                __swift_storeEnumTagSinglePayload(v417, v418, v419, v411);
                v420 = sub_1D8581BF8();
                v495 = v421;
                v496 = v420;
                v422 = v477;
                v423 = v476;
                v494 = v476 + v477[10];
                OUTLINED_FUNCTION_91_0();
                __swift_storeEnumTagSinglePayload(v424, v425, v426, v427);
                OUTLINED_FUNCTION_483_0(v423 + v422[11]);
                OUTLINED_FUNCTION_91_0();
                __swift_storeEnumTagSinglePayload(v428, v429, v430, v431);
                v432 = v423 + v422[12];
                OUTLINED_FUNCTION_91_0();
                __swift_storeEnumTagSinglePayload(v433, v434, v435, v436);
                v437 = v423 + v422[20];
                *v437 = 0;
                *(v437 + 1) = 0;
                v437[16] = -1;
                *v423 = v498;
                v423[1] = v394;
                OUTLINED_FUNCTION_353_0();
                v423[2] = v439;
                v423[3] = v438;
                *(v423 + v422[16]) = MEMORY[0x1E69E7CD0];
                *(v423 + v422[17]) = MEMORY[0x1E69E7CC8];
                OUTLINED_FUNCTION_229_2((v423 + v422[18]));
                (*(v474 + 16))(v423 + v422[9], v409, v411);
                if (!v490)
                {
                  v468 = static PartyCodeGenerator.generate4_4String()();
                  v490 = v440;
                }

                (*(v474 + 8))(v473, v475);
                __swift_destroy_boxed_opaque_existential_1(&v506);
                v441 = OUTLINED_FUNCTION_339_0();
                v442(v441);
                v443 = *(v500 + 8);
                v444 = v497;
                v443(v499, v497);
                v445 = OUTLINED_FUNCTION_252_2();
                v443(v445, v444);
                v446 = v476;
                v447 = v490;
                v476[6] = v468;
                v446[7] = v447;
                sub_1D84EC2E4();
                sub_1D84EC2E4();
                sub_1D84EC2E4();
                v448 = v477;
                v449 = (v446 + v477[13]);
                v450 = v495;
                *v449 = v496;
                v449[1] = v450;
                *(v446 + 40) = 1;
                *(v446 + v448[19]) = 0;
                *(v446 + v448[15]) = MEMORY[0x1E69E7CC0];
                sub_1D84EB9AC(*v437, *(v437 + 1), v437[16]);
                *v437 = v338;
                *(v437 + 1) = v339;
                v437[16] = v340;
                v446[4] = v465;
                OUTLINED_FUNCTION_229_2((v446 + v448[14]));
                *(v446 + v448[21]) = 0;
                sub_1D84EB32C();
                sub_1D84EB32C();
                sub_1D8436E18(v472, &qword_1ECA39968, &qword_1D8596368);
                sub_1D84EB32C();
                OUTLINED_FUNCTION_336_1();
                __swift_storeEnumTagSinglePayload(v451, v452, v453, v448);
                OUTLINED_FUNCTION_31_1();
              }

              goto LABEL_93;
            }

            v364 = OUTLINED_FUNCTION_125_1();
            sub_1D84EB9AC(v364, v365, v366);

            OUTLINED_FUNCTION_427_0();

            OUTLINED_FUNCTION_462_0();
            OUTLINED_FUNCTION_214_2();

            v367 = OUTLINED_FUNCTION_503_0();
            (v340)(v367);
            v368 = OUTLINED_FUNCTION_252_2();
            (v340)(v368, v354);

            sub_1D8436E18(v358, &qword_1ECA39F80, &qword_1D859AAF8);
          }

          else
          {
            v385 = OUTLINED_FUNCTION_125_1();
            sub_1D84EB9AC(v385, v386, v387);
            OUTLINED_FUNCTION_427_0();

            OUTLINED_FUNCTION_462_0();
            OUTLINED_FUNCTION_214_2();

            v388 = OUTLINED_FUNCTION_390_0();
            (v340)(v388);
            v389 = OUTLINED_FUNCTION_252_2();
            (v340)(v389, v337);
          }

          *(v501 + v107) = 0;
LABEL_93:
          sub_1D84EA648();
          OUTLINED_FUNCTION_80_0();
          sub_1D84EB2B8();
          goto LABEL_32;
        }

        if (static PartyCodeGenerator.isValidCode(_:)(v468, v490))
        {
          v481 = v498;
          v482 = v496;
          goto LABEL_187;
        }

        v380 = OUTLINED_FUNCTION_125_1();
        sub_1D84EB9AC(v380, v381, v382);

        OUTLINED_FUNCTION_462_0();
        OUTLINED_FUNCTION_427_0();
        OUTLINED_FUNCTION_214_2();

        v383 = OUTLINED_FUNCTION_390_0();
        (v340)(v383);
        v384 = OUTLINED_FUNCTION_252_2();
        (v340)(v384, v337);

        v379 = 2;
LABEL_196:
        *(v501 + v107) = v379;
        goto LABEL_93;
      }

      v373 = OUTLINED_FUNCTION_125_1();
      sub_1D84EB9AC(v373, v374, v375);

      OUTLINED_FUNCTION_462_0();
      OUTLINED_FUNCTION_427_0();
      v372 = &a15;
    }

    else
    {
      v369 = OUTLINED_FUNCTION_125_1();
      sub_1D84EB9AC(v369, v370, v371);
      OUTLINED_FUNCTION_462_0();
      OUTLINED_FUNCTION_427_0();
      OUTLINED_FUNCTION_214_2();

      v372 = &v485;
    }

    v376 = *(v372 - 32);

    v377 = OUTLINED_FUNCTION_390_0();
    (v340)(v377);
    v378 = OUTLINED_FUNCTION_252_2();
    (v340)(v378, v337);

    v379 = 4;
    goto LABEL_196;
  }

  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  sub_1D8581AF8();
  __break(1u);
}

unint64_t sub_1D84E5780(unint64_t result, uint64_t a2, uint64_t a3)
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
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D84E57EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1D8580B88();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void static GameActivityInstance.gameBundleID(from:)()
{
  OUTLINED_FUNCTION_386();
  v2 = v1;
  v113 = sub_1D8580D78();
  v3 = OUTLINED_FUNCTION_1(v113);
  v116 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19_0();
  v115 = v7;
  OUTLINED_FUNCTION_5_0();
  v8 = sub_1D85810A8();
  v9 = OUTLINED_FUNCTION_1(v8);
  v114 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F88, &unk_1D859AB00);
  OUTLINED_FUNCTION_363(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_196();
  v110 = v20;
  OUTLINED_FUNCTION_5_0();
  v21 = sub_1D8580B88();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_21_1();
  v119 = v27;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v106 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E50, &unk_1D859AA30);
  OUTLINED_FUNCTION_363(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v106 - v35;
  v37 = sub_1D8580C68();
  v38 = OUTLINED_FUNCTION_1(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_235_2();
  v112 = v2;
  sub_1D8580BB8();
  v43 = OUTLINED_FUNCTION_508_0();
  OUTLINED_FUNCTION_501(v43, v44, v37);
  if (v59)
  {
    sub_1D8436E18(v36, &qword_1ECA39E50, &unk_1D859AA30);
  }

  else
  {
    v109 = v15;
    v45 = *(v40 + 32);
    v46 = OUTLINED_FUNCTION_495();
    v47(v46);
    v48 = sub_1D8580B98();
    if (v48)
    {
      v49 = v48;
      v122 = v0;
      v107 = v8;
      v108 = v37;
      v50 = 0;
      v51 = *(v48 + 16);
      v120 = v24 + 16;
      v121 = v51;
      v52 = (v24 + 8);
      v117 = (v24 + 32);
      v118 = MEMORY[0x1E69E7CC0];
      v106 = v40;
      while (1)
      {
        while (1)
        {
          if (v121 == v50)
          {

            if (*(v118 + 16) == 1)
            {
              v71 = v110;
              sub_1D84E57EC(v118, v110);

              v72 = OUTLINED_FUNCTION_508_0();
              OUTLINED_FUNCTION_501(v72, v73, v21);
              v74 = v108;
              v75 = v109;
              v77 = v115;
              v76 = v116;
              if (v59)
              {
                sub_1D8436E18(v71, &qword_1ECA39F88, &unk_1D859AB00);
              }

              else
              {
                sub_1D8580B78();
                v101 = v71;
                v103 = v102;
                (*v52)(v101, v21);
                if (v103)
                {
                  v104 = OUTLINED_FUNCTION_276();
                  v105(v104, v74);
                  goto LABEL_29;
                }
              }
            }

            else
            {

              v74 = v108;
              v75 = v109;
              v77 = v115;
              v76 = v116;
            }

            v81 = sub_1D85369C4();
            v82 = v114;
            v83 = v107;
            (*(v114 + 16))(v75, v81, v107);
            (*(v76 + 16))(v77, v112, v113);
            v84 = sub_1D8581088();
            v85 = sub_1D8581688();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v123 = v87;
              *v86 = 136315138;
              OUTLINED_FUNCTION_3_4();
              sub_1D84C49BC(v88);
              sub_1D8581A88();
              v89 = *(v76 + 8);
              v90 = OUTLINED_FUNCTION_325();
              v91(v90);
              v92 = OUTLINED_FUNCTION_165_0();
              v95 = sub_1D84355C8(v92, v93, v94);

              *(v86 + 4) = v95;
              _os_log_impl(&dword_1D8433000, v84, v85, "Cannot parse bundleID from URL: %s", v86, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v87);
              MEMORY[0x1DA719810](v87, -1, -1);
              MEMORY[0x1DA719810](v86, -1, -1);

              (*(v82 + 8))(v109, v107);
              (*(v106 + 8))(v122, v108);
            }

            else
            {

              v96 = *(v76 + 8);
              v97 = OUTLINED_FUNCTION_325();
              v98(v97);
              (*(v82 + 8))(v75, v83);
              v99 = OUTLINED_FUNCTION_276();
              v100(v99, v74);
            }

            goto LABEL_29;
          }

          if (v50 >= *(v49 + 16))
          {
            __break(1u);
            return;
          }

          v53 = (*(v24 + 80) + 32) & ~*(v24 + 80);
          v54 = *(v24 + 72);
          (*(v24 + 16))(v30, v49 + v53 + v54 * v50, v21);
          v55 = sub_1D8580B58();
          v57 = v56;
          v58 = sub_1D85779BC();
          v59 = v55 == *v58 && v57 == v58[1];
          if (!v59)
          {
            break;
          }

LABEL_15:
          v111 = *v117;
          v111(v119, v30, v21);
          v64 = v118;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v123 = v64;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D8439A88(0, *(v64 + 16) + 1, 1);
            v64 = v123;
          }

          v67 = *(v64 + 16);
          v66 = *(v64 + 24);
          v68 = v67 + 1;
          if (v67 >= v66 >> 1)
          {
            v69 = OUTLINED_FUNCTION_337_0(v66);
            v118 = v70;
            sub_1D8439A88(v69, v70, 1);
            v68 = v118;
            v64 = v123;
          }

          ++v50;
          *(v64 + 16) = v68;
          v118 = v64;
          v111(v64 + v53 + v67 * v54, v119, v21);
        }

        v60 = sub_1D8581AB8();

        if (v60)
        {
          goto LABEL_15;
        }

        v61 = *v52;
        v62 = OUTLINED_FUNCTION_418_0();
        v63(v62);
        ++v50;
      }
    }

    v78 = *(v40 + 8);
    v79 = OUTLINED_FUNCTION_165_0();
    v80(v79);
  }

LABEL_29:
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_388();
}

void static GameActivityInstance.create(for:activityIdentifier:activityEnvironment:activityProperties:bundleID:deepLinkReferral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  OUTLINED_FUNCTION_285();
  a19 = v23;
  a20 = v24;
  v114 = v25;
  v115 = v26;
  v116 = v27;
  v110 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v105 = v37;
  v38 = a21;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v40 = OUTLINED_FUNCTION_363(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_66_0(v45);
  v109 = sub_1D8580EA8();
  v46 = OUTLINED_FUNCTION_1(v109);
  v108 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_190_1(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F80, &qword_1D859AAF8);
  OUTLINED_FUNCTION_363(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_199();
  a10 = sub_1D8580EE8();
  v55 = OUTLINED_FUNCTION_1(a10);
  v113 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_190_1(v59);
  v60 = *v38;
  v61 = v38[1];
  v62 = *(v38 + 16);

  MEMORY[0x1DA718990](45, 0xE100000000000000);
  OUTLINED_FUNCTION_449_0();
  MEMORY[0x1DA718990](v32, v30);

  OUTLINED_FUNCTION_449_0();
  MEMORY[0x1DA718990](45, 0xE100000000000000);

  OUTLINED_FUNCTION_449_0();
  MEMORY[0x1DA718990](v116, v114);

  v124 = v36;
  v125 = v34;
  sub_1D84E677C(v115);
  v63 = v21;
  v121 = 45;
  v122 = 0xE100000000000000;
  MEMORY[0x1DA718990](v60, v61);
  MEMORY[0x1DA718990](45, 0xE100000000000000);

  v64 = sub_1D8446BDC();
  v66 = *v64;
  v65 = v64[1];

  OUTLINED_FUNCTION_160_0();
  sub_1D8446D38(v67, v125, v68);

  if (__swift_getEnumTagSinglePayload(v22, 1, a10) == 1)
  {
    sub_1D8436E18(v22, &qword_1ECA39F80, &qword_1D859AAF8);
    v121 = 0;
    v122 = 0xE000000000000000;
    sub_1D8581768();
    MEMORY[0x1DA718990](0xD00000000000003FLL, 0x80000001D8586550);
    v69 = OUTLINED_FUNCTION_199_0();
    MEMORY[0x1DA718990](v69);
    sub_1D8448448();
    OUTLINED_FUNCTION_446();
    *v70 = 0;
    *(v70 + 8) = 0xE000000000000000;
    *(v70 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v71 = *(v113 + 32);
    v72 = OUTLINED_FUNCTION_415_0();
    v73(v72);
    sub_1D84EB9C4(v110, &v121);
    v104 = sub_1D8580EB8();
    v75 = v74;
    sub_1D84EB9C4(&v121, v119);
    sub_1D84C55F4();
    v76 = sub_1D8542C48();
    sub_1D84477D8(*v76);

    Ref<A>.init(bundleID:)();
    Ref<A>.gameActivityDefinition(id:activityEnvironment:)();
    if (!v63)
    {

      Ref<A>.init(internalID:)();
      sub_1D8580E98();
      v77 = OUTLINED_FUNCTION_61_1(&a10);
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v109);
      v80 = OUTLINED_FUNCTION_61_1(&a11);
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v109);
      v83 = OUTLINED_FUNCTION_61_1(&a12);
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v109);
      v86 = sub_1D8581BF8();
      OUTLINED_FUNCTION_483_0(v86);
      v106 = *(OUTLINED_FUNCTION_422_0() + 40);
      OUTLINED_FUNCTION_123();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v109);
      v90 = OUTLINED_FUNCTION_39_0(*(v113 + 44));
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v109);
      v93 = OUTLINED_FUNCTION_39_0(*(v113 + 48));
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v109);
      v111 = v61;
      v96 = v105 + *(v113 + 80);
      *v96 = 0;
      *(v96 + 8) = 0;
      *(v96 + 16) = -1;
      *v105 = v104;
      *(v105 + 8) = v75;
      *(v105 + 16) = v117;
      *(v105 + 24) = v118;
      *(v105 + *(v113 + 64)) = MEMORY[0x1E69E7CD0];
      *(v105 + *(v113 + 68)) = MEMORY[0x1E69E7CC8];
      v97 = (v105 + *(v113 + 72));
      *v97 = v117;
      v97[1] = v118;
      (*(v108 + 16))(v105 + *(v113 + 36), v107, v109);
      v98 = static PartyCodeGenerator.generate4_4String()();
      v100 = v99;
      v101 = *(v108 + 8);
      v102 = OUTLINED_FUNCTION_228();
      v103(v102);
      __swift_destroy_boxed_opaque_existential_1(v119);
      __swift_destroy_boxed_opaque_existential_1(&v121);
      (*(v113 + 8))(v112, a10);
      *(v105 + 48) = v98;
      *(v105 + 56) = v100;
      OUTLINED_FUNCTION_246_1(&v124);
      OUTLINED_FUNCTION_281_0(&a10);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_246_1(&v123);
      OUTLINED_FUNCTION_281_0(&a11);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_246_1(&v120);
      OUTLINED_FUNCTION_281_0(&a12);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_229_2((v105 + *(v113 + 52)));
      *(v105 + 40) = 1;
      *(v105 + *(v113 + 76)) = 1;
      OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
      *v96 = v60;
      *(v96 + 8) = v111;
      *(v96 + 16) = v62;

      *(v105 + 32) = v115;
      OUTLINED_FUNCTION_384_0((v105 + *(v113 + 56)));
      *(v105 + *(v113 + 84)) = 1;
      goto LABEL_6;
    }

    sub_1D84C5620();
    __swift_destroy_boxed_opaque_existential_1(v119);
    __swift_destroy_boxed_opaque_existential_1(&v121);
    (*(v113 + 8))(v112, a10);
  }

LABEL_6:
  OUTLINED_FUNCTION_342_1();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84E677C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v16 = *v15;
    v17 = v15[1];

    MEMORY[0x1DA718990](v13, v14);
    MEMORY[0x1DA718990](45, 0xE100000000000000);
    MEMORY[0x1DA718990](v16, v17);
    MEMORY[0x1DA718990](45, 0xE100000000000000);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D84E6DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1D8581AB8() & 1;
  }
}

uint64_t sub_1D84E6E0C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D8581388();
    v11 = v29;
    v12 = v30;
    v13 = v31;

    v14 = sub_1D84E72A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 2);
    a7 = *(v14 + 3);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 2) = v10;
      v35 = &v14[32 * v9];
      *(v35 + 4) = v7;
      *(v35 + 5) = v11;
      *(v35 + 6) = v12;
      *(v35 + 7) = v13;
      return v14;
    }

LABEL_41:
    v14 = sub_1D84E72A8((a7 > 1), v10, 1, v14);
    goto LABEL_38;
  }

  v7 = a4;
  v14 = (4 * v16);
  v43 = MEMORY[0x1E69E7CC0];
  v17 = 15;
  while (1)
  {
    v41 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if ((v17 >> 14) == v14)
      {
        v17 = v41;
        goto LABEL_30;
      }

      v18 = sub_1D8581378();
      v12 = v19;
      v44[0] = v18;
      v44[1] = v19;
      v20 = v45(v44);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = sub_1D85812D8();
    }

    v23 = (v41 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v41 >> 14)
    {
      break;
    }

    v42 = sub_1D8581388();
    v37 = v25;
    v38 = v24;
    v36 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1D84E72A8(0, *(v43 + 2) + 1, 1, v43);
    }

    v13 = *(v43 + 2);
    v27 = *(v43 + 3);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      v43 = sub_1D84E72A8((v27 > 1), v13 + 1, 1, v43);
    }

    *(v43 + 2) = v12;
    v28 = &v43[32 * v13];
    *(v28 + 4) = v42;
    *(v28 + 5) = v38;
    *(v28 + 6) = v37;
    *(v28 + 7) = v36;
LABEL_20:
    v17 = sub_1D85812D8();
    if ((v23 & 1) == 0 && *(v43 + 2) == a1)
    {
LABEL_30:
      if (v17 >> 14) == v14 && (a2)
      {

        return v43;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_1D8581388();
        v11 = v32;
        v12 = v33;
        v13 = v34;

        v14 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 2);
          a7 = *(v14 + 3);
          goto LABEL_37;
        }
      }

      v14 = sub_1D84E72A8(0, *(v14 + 2) + 1, 1, v14);
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D84E71A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0F0, qword_1D859E580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_1D84E72A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0D0, &unk_1D859E570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D84E73B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0C8, &qword_1D859F0C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t sub_1D84E742C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1D8580B88(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_1D8580B88();

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_1D84E7500(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  sub_1D848211C(&qword_1EE0E0090);
  v4 = sub_1D85811D8();
  return sub_1D84E75B0(a1, a2, v4);
}

unint64_t sub_1D84E75B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = v3 + 64;
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v5 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    v8 = (*(v4 + 48) + 16 * i);
    v11 = *v8;
    v12 = v8[1];
    sub_1D848211C(&unk_1ECA3A0D8);

    v9 = sub_1D8581208();

    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1D84E76D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D84EB7D4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D84E780C(v5);
  *a1 = v2;
  return result;
}

void sub_1D84E773C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0C8, &qword_1D859F0C0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1D84E780C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D8581A78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1D8581488();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1D84E79C8(v7, v8, a1, v4);
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
    return sub_1D84E7900(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D84E7900(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1D8581AB8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1D84E79C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v83 = result;
  v89 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        result = *v11;
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          result = sub_1D8581AB8();
          v14 = result;
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_1D8581AB8();
            if ((v14 ^ result))
            {
              break;
            }
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = (v9 + a4);
          }

          if (v27 < v9)
          {
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
            return result;
          }

          if (v10 != v27)
          {
            v84 = v5;
            v86 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = (v9 - v10);
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              result = *v32;
              v33 = v32[1];
              v34 = v30;
              v35 = v29;
              do
              {
                if (result == *(v35 - 2) && v33 == *(v35 - 1))
                {
                  break;
                }

                result = sub_1D8581AB8();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                result = *v35;
                v33 = v35[1];
                *v35 = *(v35 - 1);
                *(v35 - 1) = v33;
                *(v35 - 2) = result;
                v35 -= 2;
              }

              while (!__CFADD__(v34++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while ((v31 + 1) != v27);
            v10 = v27;
            v5 = v84;
            v9 = v86;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v10;
      if ((result & 1) == 0)
      {
        result = sub_1D84E71A8(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v39 = *(v8 + 16);
      v38 = *(v8 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_1D84E71A8((v38 > 1), v39 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v40;
      v41 = v8 + 32;
      v42 = (v8 + 32 + 16 * v39);
      *v42 = v9;
      v42[1] = v85;
      v87 = *v83;
      if (!*v83)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = (v41 + 16 * (v40 - 1));
          v45 = (v8 + 16 * v40);
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = *(v8 + 32);
            v47 = *(v8 + 40);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = (v41 + 16 * (v43 - 1));
          v76 = *v75;
          v77 = (v41 + 16 * v43);
          v78 = v77[1];
          result = sub_1D84E7FFC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = *(v8 + 16);
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          result = memmove((v41 + 16 * v43), v77 + 2, 16 * (v80 - 1 - v43));
          *(v79 + 16) = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = v41 + 16 * v40;
        v51 = *(v50 - 64);
        v52 = *(v50 - 56);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 48);
        v54 = *(v50 - 40);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v85;
      if (v85 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*v83)
  {
    goto LABEL_128;
  }

  sub_1D84E7ED0(&v89, *v83, a3);
}

uint64_t sub_1D84E7ED0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1D84E81C0(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1D84E7FFC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1D84E7FFC(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1D8581AB8() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_1D8581AB8() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_1D84E81D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D8436A4C(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
  if ((sub_1D8581808() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_1D8436A4C(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1D8581AF8();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    v20 = v19[1];
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_1D84E8328(v13, a3, a4, a1, a2, v18);
  }
}

unint64_t sub_1D84E8328(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

char *sub_1D84E8374(char *a1, int64_t a2, char a3)
{
  result = sub_1D84E8394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D84E8394(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0C8, &qword_1D859F0C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D84E849C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      sub_1D85812B8();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D84E8514(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for AchievementProgress();
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GameActivityRuntimeStat(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = *(a2 + 16);
  v28 = a1;
  result = MEMORY[0x1DA7191F0](v14);
  if (v14)
  {
    v16 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v17 = *(v7 + 72);
    v23 = v13;
    v24 = v11;
    do
    {
      sub_1D84EA648();
      sub_1D84EA648();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D84EB32C();
        MEMORY[0x1DA7191F0](1);
        sub_1D84C49BC(&unk_1ECA39DE0);
        sub_1D85811E8();
        sub_1D84EB2B8();
        result = sub_1D84EB2B8();
      }

      else
      {
        v18 = *v11;
        v19 = *(v11 + 1);
        v27 = *(v11 + 1);
        v20 = v6;
        v22 = *(v11 + 4);
        v21 = *(v11 + 5);
        MEMORY[0x1DA7191F0](0);
        v29 = v18;
        v30 = v19;
        v31 = v27;
        v32 = v22;
        v33 = v21;
        v6 = v20;
        sub_1D84EB4D4();
        v11 = v24;
        sub_1D85811E8();
        sub_1D84EB2B8();
      }

      v16 += v17;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1D84E8808(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v12 = __clz(__rbit64(v6)) | (v10 << 6);
      v13 = (*(a2 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(a2 + 56) + v12);

      if (!v17)
      {
        break;
      }

      v6 &= v6 - 1;
      v20 = v15;
      v21 = v17;
      memcpy(__dst, a1, sizeof(__dst));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
      sub_1D848211C(&qword_1EE0E0090);
      sub_1D85811E8();

      sub_1D85812B8();

      result = sub_1D8581B98();
      v9 ^= result;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

LABEL_11:

    return MEMORY[0x1DA7191F0](v9);
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D84E8A08(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1D8581B98();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v12)
  {
    v10 = i;
LABEL_9:
    v11 = (*(a2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v5)))));
    v5 &= v5 - 1;
    v13 = *v11;
    v14 = v11[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    sub_1D848211C(&qword_1EE0E0090);
    v12 = sub_1D85811D8();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1DA7191F0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D84E8B94()
{
  result = qword_1ECA39CA8;
  if (!qword_1ECA39CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39CA8);
  }

  return result;
}

unint64_t sub_1D84E8BE8()
{
  result = qword_1ECA39CB0;
  if (!qword_1ECA39CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39CB0);
  }

  return result;
}

uint64_t sub_1D84E8C3C(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 5:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84E8C7C(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 5:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D84E8CBC()
{
  result = qword_1ECA47180;
  if (!qword_1ECA47180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47180);
  }

  return result;
}

unint64_t sub_1D84E8D10()
{
  result = qword_1EE0E25E0[0];
  if (!qword_1EE0E25E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E25E0);
  }

  return result;
}

unint64_t sub_1D84E8D64()
{
  result = qword_1EE0E0458;
  if (!qword_1EE0E0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E0458);
  }

  return result;
}

unint64_t sub_1D84E8DB8()
{
  result = qword_1ECA47188;
  if (!qword_1ECA47188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47188);
  }

  return result;
}

unint64_t sub_1D84E8E0C()
{
  result = qword_1ECA47190;
  if (!qword_1ECA47190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47190);
  }

  return result;
}

unint64_t sub_1D84E8E60()
{
  result = qword_1ECA47198;
  if (!qword_1ECA47198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47198);
  }

  return result;
}

unint64_t sub_1D84E8EB4()
{
  result = qword_1EE0E02E0;
  if (!qword_1EE0E02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E02E0);
  }

  return result;
}

uint64_t sub_1D84E8F2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v19 = a4;
  v11 = a2[1];
  v5[5] = v11;
  v12 = *(v11 - 8);
  v5[6] = v12;
  v13 = *(v12 + 64) + 15;
  v5[7] = swift_task_alloc();
  sub_1D8580F88();
  v14 = *v19;
  v15 = *a5;
  v16 = a5[1];
  v17 = swift_task_alloc();
  v5[8] = v17;
  *v17 = v5;
  v17[1] = sub_1D84F0BE8;

  return DistributedGameActivityServiceProtocol<>.refreshGameActivity(game:scope:)();
}

uint64_t sub_1D84E9164(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v14 = swift_task_alloc();
  v5[5] = v14;
  *v14 = v5;
  v14[1] = sub_1D84911F8;

  return DistributedGameActivityServiceProtocol<>.refreshGameActivity(game:)();
}

uint64_t sub_1D84E92EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *a2;
  v5[2] = *a2;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = a2[1];
  v5[5] = v10;
  v11 = *(v10 - 8);
  v5[6] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[7] = v13;
  sub_1D8580F88();
  v22 = *v13;
  v14 = a2[2];
  v5[8] = v14;
  v15 = *(v14 - 8);
  v5[9] = v15;
  v16 = *(v15 + 64) + 15;
  v5[10] = swift_task_alloc();
  sub_1D8580F88();
  v17 = *a4;
  v18 = *a5;
  v19 = a5[1];
  v20 = swift_task_alloc();
  v5[11] = v20;
  *v20 = v5;
  v20[1] = sub_1D84E9608;

  return DistributedGameActivityServiceProtocol<>.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_1D84E9608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_487();
  OUTLINED_FUNCTION_153();
  v18 = v17[11];
  v19 = v17[10];
  v46 = v17[9];
  OUTLINED_FUNCTION_193();
  v21 = *(v20 + 64);
  v23 = *(v22 + 56);
  v45 = *(v22 + 48);
  OUTLINED_FUNCTION_193();
  v25 = *(v24 + 40);
  v27 = v26[4];
  v28 = v26[3];
  v29 = v26[2];
  OUTLINED_FUNCTION_171_0();
  v31 = v30;
  OUTLINED_FUNCTION_37();
  *v32 = v31;

  (*(v28 + 8))(v27, v29);
  (*(v45 + 8))(v23, v25);
  v33 = *(v46 + 8);
  v34 = OUTLINED_FUNCTION_233();
  v35(v34);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_428();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, v21 - 8, v46, v16, a14, a15, a16);
}

uint64_t sub_1D84E9850(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v12 = *v11;
  v13 = *a4;
  v15 = *a5;
  v14 = a5[1];
  v16 = swift_task_alloc();
  v5[6] = v16;
  *v16 = v5;
  v16[1] = sub_1D84F0BE4;

  return DistributedGameActivityServiceProtocol<>.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_1D84E9A00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *a2;
  v5[2] = *a2;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v29 = a4;
  v10 = a2[1];
  v5[5] = v10;
  v11 = *(v10 - 8);
  v5[6] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[7] = v13;
  sub_1D8580F88();
  v14 = *v13;
  v15 = a2[2];
  v5[8] = v15;
  v16 = *(v15 - 8);
  v5[9] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v5[10] = v18;
  v28 = v18;
  sub_1D8580F88();
  v27 = *v28;
  v19 = a2[3];
  v5[11] = v19;
  v20 = *(v19 - 8);
  v5[12] = v20;
  v21 = *(v20 + 64) + 15;
  v5[13] = swift_task_alloc();
  sub_1D8580F88();
  v22 = *v29;
  v23 = *a5;
  v24 = a5[1];
  v25 = swift_task_alloc();
  v5[14] = v25;
  *v25 = v5;
  v25[1] = sub_1D84E9E20;

  return DistributedGameActivityServiceProtocol<>.listGameActivities(game:filters:excludedFilters:after:)();
}

uint64_t sub_1D84E9E20()
{
  OUTLINED_FUNCTION_153();
  v1 = *(v0 + 112);
  v30 = *(v0 + 104);
  OUTLINED_FUNCTION_193();
  v29 = *(v2 + 96);
  OUTLINED_FUNCTION_193();
  v4 = *(v3 + 88);
  v28 = *(v5 + 80);
  OUTLINED_FUNCTION_193();
  v27 = *(v6 + 72);
  OUTLINED_FUNCTION_193();
  v8 = *(v7 + 64);
  v26 = *(v9 + 56);
  OUTLINED_FUNCTION_193();
  v25 = *(v10 + 48);
  OUTLINED_FUNCTION_193();
  v12 = *(v11 + 40);
  v14 = v13[4];
  v15 = v13[3];
  v16 = v13[2];
  OUTLINED_FUNCTION_171_0();
  v18 = v17;
  OUTLINED_FUNCTION_37();
  *v19 = v18;

  (*(v15 + 8))(v14, v16);
  (*(v25 + 8))(v26, v12);
  (*(v27 + 8))(v28, v8);
  v20 = *(v29 + 8);
  v21 = OUTLINED_FUNCTION_368_0();
  v22(v21);

  v23 = *(v18 + 8);

  return v23();
}

uint64_t sub_1D84EA10C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5[2] = a3;
  v8 = *a2;
  v5[3] = *a2;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  sub_1D8580F88();
  v12 = *v11;
  v13 = *a4;
  v15 = *a5;
  v14 = a5[1];
  v16 = swift_task_alloc();
  v5[6] = v16;
  *v16 = v5;
  v16[1] = sub_1D84EA29C;

  return DistributedGameActivityServiceProtocol<>.describeGameActivities(activities:)();
}

uint64_t sub_1D84EA29C()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[3];
  v5 = v0[2];
  OUTLINED_FUNCTION_171_0();
  *v6 = v7;
  *v9 = v8;

  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_188();
  v12(v11);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_535();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1D84EA410(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v19 = a4;
  v11 = a2[1];
  v5[5] = v11;
  v12 = *(v11 - 8);
  v5[6] = v12;
  v13 = *(v12 + 64) + 15;
  v5[7] = swift_task_alloc();
  sub_1D8580F88();
  v14 = *v19;
  v15 = *a5;
  v16 = a5[1];
  v17 = swift_task_alloc();
  v5[8] = v17;
  *v17 = v5;
  v17[1] = sub_1D84BF8AC;

  return DistributedGameActivityServiceProtocol<>.createOrUpdateGameActivity(activity:context:)();
}

uint64_t sub_1D84EA648()
{
  OUTLINED_FUNCTION_263_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_0(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_194();
  v6(v5);
  return v0;
}

uint64_t sub_1D84EA6A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v14 = swift_task_alloc();
  v5[5] = v14;
  *v14 = v5;
  v14[1] = sub_1D84A7CAC;

  return DistributedGameActivityServiceProtocol<>.delete(gameActivity:)();
}

unint64_t sub_1D84EA834()
{
  result = qword_1ECA39D48;
  if (!qword_1ECA39D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39D48);
  }

  return result;
}

unint64_t sub_1D84EA888()
{
  result = qword_1ECA39D50;
  if (!qword_1ECA39D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39D50);
  }

  return result;
}

uint64_t sub_1D84EA8DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v14 = swift_task_alloc();
  v5[5] = v14;
  *v14 = v5;
  v14[1] = sub_1D84A7CAC;

  return DistributedGameActivityServiceProtocol<>.deleteAllActivities(for:)();
}

uint64_t sub_1D84EAA70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a2;
  v5[2] = *a2;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64) + 15;
  v5[4] = swift_task_alloc();
  sub_1D8580F88();
  v21 = a4;
  v11 = a2[1];
  v5[5] = v11;
  v12 = *(v11 - 8);
  v5[6] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v5[7] = v14;
  sub_1D8580F88();
  v15 = *v14;
  v16 = *v21;
  v17 = *a5;
  v18 = a5[1];
  v19 = swift_task_alloc();
  v5[8] = v19;
  *v19 = v5;
  v19[1] = sub_1D84BF8AC;

  return DistributedGameActivityServiceProtocol<>.shareGameActivity(activity:receivingPlayers:)();
}

uint64_t sub_1D84EACAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  *(v5 + 16) = a3;
  v6 = *a4;
  v7 = *a5;
  v8 = a5[1];
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D84EAD60;

  return DistributedGameActivityServiceProtocol<>.listAllStoredGameActivityDefinitions()();
}

uint64_t sub_1D84EAD60()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v2 = *(v1 + 24);
  v6 = *v0;
  **(v1 + 16) = v3;

  OUTLINED_FUNCTION_146();

  return v4();
}

unint64_t sub_1D84EAE60()
{
  result = qword_1ECA39D60;
  if (!qword_1ECA39D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39D58, &qword_1D859A968);
    sub_1D84C49BC(&qword_1ECA39898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39D60);
  }

  return result;
}

unint64_t sub_1D84EAF18()
{
  result = qword_1ECA39D68;
  if (!qword_1ECA39D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39D58, &qword_1D859A968);
    sub_1D84C49BC(&qword_1ECA398B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39D68);
  }

  return result;
}

uint64_t sub_1D84EAFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  *(v5 + 16) = a3;
  v6 = *a4;
  v7 = *a5;
  v8 = a5[1];
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D84F0B90;

  return DistributedGameActivityServiceProtocol<>.listAllStoredGameActivityInstances()();
}

unint64_t sub_1D84EB084()
{
  result = qword_1ECA39D78;
  if (!qword_1ECA39D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39D70, &qword_1D859A980);
    sub_1D84C49BC(&qword_1ECA39970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39D78);
  }

  return result;
}

unint64_t sub_1D84EB13C()
{
  result = qword_1ECA39D80;
  if (!qword_1ECA39D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39D70, &qword_1D859A980);
    sub_1D84C49BC(&qword_1ECA39988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39D80);
  }

  return result;
}

uint64_t sub_1D84EB1F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D84EB264()
{
  result = qword_1ECA471A0;
  if (!qword_1ECA471A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471A0);
  }

  return result;
}

uint64_t sub_1D84EB2B8()
{
  v1 = OUTLINED_FUNCTION_85_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4_0(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1D84EB32C()
{
  OUTLINED_FUNCTION_263_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_0(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_194();
  v6(v5);
  return v0;
}

unint64_t sub_1D84EB384()
{
  result = qword_1ECA471A8;
  if (!qword_1ECA471A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471A8);
  }

  return result;
}

unint64_t sub_1D84EB3D8()
{
  result = qword_1ECA471B0;
  if (!qword_1ECA471B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471B0);
  }

  return result;
}

unint64_t sub_1D84EB42C()
{
  result = qword_1ECA471B8;
  if (!qword_1ECA471B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471B8);
  }

  return result;
}

unint64_t sub_1D84EB480()
{
  result = qword_1ECA39DD8;
  if (!qword_1ECA39DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39DD8);
  }

  return result;
}

unint64_t sub_1D84EB4D4()
{
  result = qword_1ECA39DE8;
  if (!qword_1ECA39DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39DE8);
  }

  return result;
}

unint64_t sub_1D84EB528()
{
  result = qword_1ECA39E08;
  if (!qword_1ECA39E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39E08);
  }

  return result;
}

unint64_t sub_1D84EB57C()
{
  result = qword_1ECA471C0;
  if (!qword_1ECA471C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471C0);
  }

  return result;
}

unint64_t sub_1D84EB5D0()
{
  result = qword_1ECA471C8;
  if (!qword_1ECA471C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471C8);
  }

  return result;
}

unint64_t sub_1D84EB624()
{
  result = qword_1ECA471D0;
  if (!qword_1ECA471D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471D0);
  }

  return result;
}

uint64_t sub_1D84EB678(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

int64_t sub_1D84EB7E8(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1D84EB918(result, 1);
  v8 = *v2;
  v9 = *(sub_1D8580B88() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_1D84E742C(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

size_t sub_1D84EB918(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1D8439370(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1D84EB994(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D84C55F4();
  }

  return result;
}

uint64_t sub_1D84EB9AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D84C5620();
  }

  return result;
}

uint64_t sub_1D84EB9C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1D84EBA88(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 2:
    case 3:

      break;
    case 1:
      JUMPOUT(0x1DA719660);
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D84EBAC8()
{
  result = qword_1ECA471D8;
  if (!qword_1ECA471D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471D8);
  }

  return result;
}

unint64_t sub_1D84EBB1C()
{
  result = qword_1ECA39E70;
  if (!qword_1ECA39E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39E68, &qword_1D859AA48);
    sub_1D84C49BC(&unk_1ECA39E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39E70);
  }

  return result;
}

unint64_t sub_1D84EBBD4()
{
  result = qword_1ECA39E88;
  if (!qword_1ECA39E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39E80, &qword_1D859AA50);
    sub_1D848211C(&qword_1ECA389C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39E88);
  }

  return result;
}

unint64_t sub_1D84EBC84()
{
  result = qword_1ECA39E98;
  if (!qword_1ECA39E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39E90, &qword_1D859AA58);
    sub_1D848211C(&qword_1ECA389C0);
    sub_1D84EBD3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39E98);
  }

  return result;
}

unint64_t sub_1D84EBD3C()
{
  result = qword_1ECA39EA0;
  if (!qword_1ECA39EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39EA0);
  }

  return result;
}

unint64_t sub_1D84EBD90()
{
  result = qword_1ECA39EB8;
  if (!qword_1ECA39EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39E68, &qword_1D859AA48);
    sub_1D84C49BC(&unk_1ECA39EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39EB8);
  }

  return result;
}

unint64_t sub_1D84EBE48()
{
  result = qword_1ECA39EC8;
  if (!qword_1ECA39EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39E80, &qword_1D859AA50);
    sub_1D848211C(&qword_1ECA389F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39EC8);
  }

  return result;
}

unint64_t sub_1D84EBEF8()
{
  result = qword_1ECA39ED0;
  if (!qword_1ECA39ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39E90, &qword_1D859AA58);
    sub_1D848211C(&qword_1ECA389F8);
    sub_1D84EBFB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39ED0);
  }

  return result;
}

unint64_t sub_1D84EBFB0()
{
  result = qword_1ECA39ED8;
  if (!qword_1ECA39ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39ED8);
  }

  return result;
}

unint64_t sub_1D84EC004()
{
  result = qword_1ECA471E0;
  if (!qword_1ECA471E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471E0);
  }

  return result;
}

unint64_t sub_1D84EC058()
{
  result = qword_1ECA471E8;
  if (!qword_1ECA471E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471E8);
  }

  return result;
}

unint64_t sub_1D84EC0AC()
{
  result = qword_1ECA471F0;
  if (!qword_1ECA471F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471F0);
  }

  return result;
}

unint64_t sub_1D84EC100()
{
  result = qword_1ECA471F8;
  if (!qword_1ECA471F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471F8);
  }

  return result;
}

unint64_t sub_1D84EC154()
{
  result = qword_1ECA47200;
  if (!qword_1ECA47200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47200);
  }

  return result;
}

unint64_t sub_1D84EC1A8()
{
  result = qword_1ECA47208;
  if (!qword_1ECA47208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47208);
  }

  return result;
}

unint64_t sub_1D84EC1FC()
{
  result = qword_1ECA47210;
  if (!qword_1ECA47210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47210);
  }

  return result;
}

unint64_t sub_1D84EC270()
{
  result = qword_1ECA47218;
  if (!qword_1ECA47218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47218);
  }

  return result;
}

uint64_t sub_1D84EC2E4()
{
  OUTLINED_FUNCTION_263_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_0(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_194();
  v7(v6);
  return v0;
}

unint64_t sub_1D84EC33C()
{
  result = qword_1ECA47220[0];
  if (!qword_1ECA47220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA47220);
  }

  return result;
}

unint64_t sub_1D84EC390()
{
  result = qword_1ECA39F68;
  if (!qword_1ECA39F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39F68);
  }

  return result;
}

unint64_t sub_1D84EC3E4()
{
  result = qword_1ECA39F78;
  if (!qword_1ECA39F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39F78);
  }

  return result;
}

unint64_t sub_1D84EC484(void *a1)
{
  a1[1] = OUTLINED_FUNCTION_382_0(&unk_1ECA39FA0);
  a1[2] = OUTLINED_FUNCTION_382_0(&unk_1ECA39FA8);
  result = OUTLINED_FUNCTION_382_0(&unk_1ECA39FB0);
  a1[3] = result;
  return result;
}

unint64_t sub_1D84EC564()
{
  result = qword_1ECA39FC0;
  if (!qword_1ECA39FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39FC0);
  }

  return result;
}

unint64_t sub_1D84EC5BC()
{
  result = qword_1ECA39FC8;
  if (!qword_1ECA39FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39FC8);
  }

  return result;
}

unint64_t sub_1D84EC614()
{
  result = qword_1ECA39FD0;
  if (!qword_1ECA39FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39FD0);
  }

  return result;
}

unint64_t sub_1D84EC66C()
{
  result = qword_1ECA39FD8;
  if (!qword_1ECA39FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39FD8);
  }

  return result;
}

unint64_t sub_1D84EC76C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_5();
  result = sub_1D84C49BC(v2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D84EC858()
{
  result = qword_1ECA3A000;
  if (!qword_1ECA3A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A000);
  }

  return result;
}

unint64_t sub_1D84EC92C()
{
  result = qword_1ECA3A020;
  if (!qword_1ECA3A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A020);
  }

  return result;
}

unint64_t sub_1D84EC9D0()
{
  result = qword_1ECA3A030;
  if (!qword_1ECA3A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A030);
  }

  return result;
}

unint64_t sub_1D84ECA58()
{
  result = qword_1ECA3A048;
  if (!qword_1ECA3A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A048);
  }

  return result;
}

unint64_t sub_1D84ECAE0()
{
  result = qword_1ECA3A060;
  if (!qword_1ECA3A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A060);
  }

  return result;
}

unint64_t sub_1D84ECB80()
{
  result = qword_1ECA3A070;
  if (!qword_1ECA3A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A070);
  }

  return result;
}

uint64_t sub_1D84ECC24()
{
  result = sub_1D8580D78();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_413();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityInstanceDeletionResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_226(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_192();
  }
}

uint64_t storeEnumTagSinglePayload for Artwork.Size(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D84ECD00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 17))
    {
      return OUTLINED_FUNCTION_226(*a1 + 122);
    }

    v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
    if (v3 >= 0x7A)
    {
      return OUTLINED_FUNCTION_226(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_226(v3);
}