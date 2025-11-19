unint64_t sub_1D4FC2754()
{
  result = qword_1EDD56BD0[0];
  if (!qword_1EDD56BD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD56BD0);
  }

  return result;
}

uint64_t sub_1D4FC2810@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC18, &qword_1D561DA50);
  sub_1D5610708();
  v67[0] = v64;
  v67[1] = v65;
  v68 = v66;

  sub_1D4FC27E0(v67);
  if (*(&v64 + 1))
  {
    v2 = v64;
  }

  else
  {
    v2 = 0;
  }

  if (*(&v64 + 1))
  {
    v3 = *(&v64 + 1);
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v17 = v3;
  v18 = v2;
  sub_1D5610708();
  v62[0] = v59;
  v62[1] = v60;
  v63 = v61;

  sub_1D4FC27E0(v62);
  if (*(&v60 + 1))
  {
    v4 = v60;
  }

  else
  {
    v4 = 0;
  }

  if (*(&v60 + 1))
  {
    v5 = *(&v60 + 1);
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v15 = v5;
  v16 = v4;
  sub_1D5610708();
  v57[0] = v54;
  v57[1] = v55;
  v58 = v56;
  sub_1D4FC27E0(v57);
  v14 = v58;
  sub_1D5610708();
  v52[0] = v49;
  v52[1] = v50;
  v53 = v51;
  sub_1D4FC27E0(v52);
  v6 = BYTE1(v53);
  sub_1D5610708();
  v47[0] = v44;
  v47[1] = v45;
  v48 = v46;
  sub_1D4FC27E0(v47);
  v7 = BYTE2(v48);
  sub_1D5610708();
  v42[0] = v39;
  v42[1] = v40;
  v43 = v41;
  sub_1D4FC27E0(v42);
  v8 = BYTE3(v43);
  sub_1D5610708();
  v37[0] = v34;
  v37[1] = v35;
  v38 = v36;
  sub_1D4FC27E0(v37);
  v9 = BYTE4(v38);
  sub_1D5610708();
  v32[0] = v29;
  v32[1] = v30;
  v33 = v31;
  sub_1D4FC27E0(v32);
  v10 = BYTE5(v33);
  sub_1D5610708();
  v27[0] = v24;
  v27[1] = v25;
  v28 = v26;
  sub_1D4FC27E0(v27);
  v11 = BYTE6(v28);
  sub_1D5610708();
  v22[0] = v19;
  v22[1] = v20;
  v23 = v21;
  sub_1D4FC27E0(v22);
  v12 = HIBYTE(v23);
  result = sub_1D5610718();
  *a1 = v18;
  *(a1 + 8) = v17;
  *(a1 + 16) = v16;
  *(a1 + 24) = v15;
  *(a1 + 32) = v14 & 1;
  *(a1 + 33) = v6 & 1;
  *(a1 + 34) = v7 & 1;
  *(a1 + 35) = v8 & 1;
  *(a1 + 36) = v9 & 1;
  *(a1 + 37) = v10 & 1;
  *(a1 + 38) = v11 & 1;
  *(a1 + 39) = v12 & 1;
  *(a1 + 40) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CloudVideoLocale.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudVideoLocale.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4FC2C5C()
{
  result = qword_1EC7ECFA0;
  if (!qword_1EC7ECFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECFA0);
  }

  return result;
}

unint64_t sub_1D4FC2CB4()
{
  result = qword_1EDD56BC0;
  if (!qword_1EDD56BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56BC0);
  }

  return result;
}

unint64_t sub_1D4FC2D0C()
{
  result = qword_1EDD56BC8;
  if (!qword_1EDD56BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56BC8);
  }

  return result;
}

void sub_1D4FC2D60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = (a1 + 48);
  v7 = *(a1 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = v6 + 3;
    v9 = *v6;
    v10 = *(v6 - 8);
    v11 = *(v6 - 2);
    v12 = v10;
    v13 = v9;
    sub_1D4FC5590(&v11, a2, a3);
    v6 = v8;
  }

  while (!v3);
}

void FlexAnalysis.init<A>(_:configuration:sharedRelatedItemStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v170 = v22;
  v171 = v23;
  v168 = v25;
  v169 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFA8, &qword_1D5623DF8);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v32);
  v33 = sub_1D5611038();
  v34 = OUTLINED_FUNCTION_4(v33);
  v174 = v35;
  v175 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v44);
  v177 = sub_1D5611128();
  v45 = OUTLINED_FUNCTION_4(v177);
  v179 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_13_2();
  v180 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFB0, &qword_1D5623E00);
  v56 = OUTLINED_FUNCTION_22(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_13();
  v165 = v59;
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v61);
  v63 = v159 - v62;
  v64 = sub_1D5611188();
  v65 = OUTLINED_FUNCTION_4(v64);
  v166 = v66;
  v167 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5();
  v178 = v70 - v69;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v74);
  v76 = v159 - v75;
  v77 = type metadata accessor for FlexAnalysisPropertyProvider();
  OUTLINED_FUNCTION_24_0(v77);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_5();
  v83 = v82 - v81;
  if (qword_1EC7E8AF8 != -1)
  {
    swift_once();
  }

  v84 = sub_1D560D9A8();
  __swift_project_value_buffer(v84, qword_1EC7ED608);
  v85 = sub_1D56109F8();
  OUTLINED_FUNCTION_146_0(v76, v86, v87, v85);
  v88 = *(v77 + 44);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFB8, &qword_1D5623E08);
  sub_1D56105B8();
  sub_1D4E7661C(v76, &qword_1EC7EB5C0, &unk_1D56223C0);
  v173 = v77;
  v90 = v83 + *(v77 + 48);
  sub_1D5610658();
  v160 = sub_1D5610618();
  v92 = v91;
  v93 = sub_1D56105C8();
  v94 = sub_1D56105F8();
  v95 = sub_1D56105E8();
  v172 = v89;
  v176 = v27;
  v96 = sub_1D56105A8();
  *(v83 + 8) = 0;
  *(v83 + 16) = 0;
  *v83 = 0;
  *(v83 + 48) = 0u;
  *(v83 + 64) = 0u;
  *(v83 + 80) = 0u;
  if (qword_1EC7E9320 != -1)
  {
    swift_once();
  }

  v97 = qword_1EC87C4B0;
  if (qword_1EC87C4B0 >> 62)
  {
    sub_1D560CDE8();

    v158 = sub_1D5615E18();

    v97 = v158;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v83 + 96) = v97;
  v98 = v173;
  v99 = (v83 + v173[13]);
  *v99 = v160;
  v99[1] = v92;
  *(v83 + v98[14]) = v93;
  *(v83 + v98[15]) = v94;
  *(v83 + v98[16]) = v95;
  *(v83 + v98[17]) = v96;
  v100 = v178;
  sub_1D5610648();
  v101 = v180;
  sub_1D5611138();
  sub_1D5611108();
  v102 = v179 + 8;
  v180 = *(v179 + 8);
  (v180)(v101, v177);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC0, &qword_1D5623E10);
  OUTLINED_FUNCTION_43_0(v63);
  v179 = v102;
  if (v104)
  {
    sub_1D4E7661C(v63, &qword_1EC7ECFB0, &qword_1D5623E00);
    v105 = 0;
    v106 = 0;
    v107 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_27_14(&v182);
    v108 = COERCE_DOUBLE(sub_1D5611018());
    v110 = v109;
    v111 = v175;
    v112 = *(v174 + 8);
    v112(v96, v175);
    if ((v110 & 1) != 0 || v108 != -1.0)
    {
      OUTLINED_FUNCTION_27_14(&a10);
      v105 = sub_1D5611018();
      v115 = v114;
      v112(v96, v111);
      v113 = v111;
      v106 = v115 & 1;
    }

    else
    {
      v105 = 0;
      v113 = v111;
      v106 = 1;
    }

    OUTLINED_FUNCTION_15_23(&v183);
    v116 = sub_1D5610708();
    v117 = MEMORY[0x1DA6E6E10](v116);
    v112(v93, v113);
    OUTLINED_FUNCTION_24_0(v103);
    (*(v118 + 8))(v63, v103);
    if (v117)
    {
      v107 = v117;
    }

    else
    {
      v107 = MEMORY[0x1E69E7CC0];
    }

    v100 = v178;
    v102 = v179;
  }

  v119 = v163;
  v120 = *(v83 + 16);

  *v83 = v105;
  *(v83 + 8) = v106;
  *(v83 + 16) = v107;
  v121 = v161;
  sub_1D5611138();
  v122 = sub_1D56110C8();
  v123 = v121;
  v124 = v177;
  (v180)(v123, v177);
  if (v122)
  {
    v125 = sub_1D4FC3A98(v122);
  }

  else
  {
    v125 = 0;
  }

  v126 = v164;
  *(v83 + 24) = v125;
  OUTLINED_FUNCTION_19_20(&a13);
  sub_1D56110D8();
  v127 = OUTLINED_FUNCTION_128();
  v180(v127);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC8, &qword_1D5623E18);
  if (__swift_getEnumTagSinglePayload(v119, 1, v128) == 1)
  {
    sub_1D4E7661C(v119, &qword_1EC7ECFA8, &qword_1D5623DF8);
    v129 = 0;
  }

  else
  {
    v129 = sub_1D4FC3C04();
    OUTLINED_FUNCTION_24_0(v128);
    (*(v130 + 8))(v119, v128);
  }

  *(v83 + 32) = v129;
  v131 = v162;
  v132 = sub_1D5611138();
  v133 = COERCE_DOUBLE(MEMORY[0x1DA6E6EA0](v132));
  (v180)(v131, v124);
  if (v133 == 0.0)
  {
    v134 = 0;
  }

  else
  {
    v134 = sub_1D4FC3A98(*&v133);
  }

  v135 = v174;
  *(v83 + 40) = v134;
  OUTLINED_FUNCTION_19_20(&a15);
  sub_1D5611118();
  v136 = OUTLINED_FUNCTION_128();
  v180(v136);
  OUTLINED_FUNCTION_43_0(v126);
  if (v104)
  {
    sub_1D4E7661C(v126, &qword_1EC7ECFB0, &qword_1D5623E00);
    v133 = 0.0;
    v137 = 0;
    v138 = 0;
    v139 = v175;
  }

  else
  {
    OUTLINED_FUNCTION_30_11(v184);
    sub_1D5611018();
    OUTLINED_FUNCTION_24_4();
    v140 = *(v135 + 8);
    v140(v102, v175);
    if ((v102 & 1) != 0 || v133 != -1.0)
    {
      OUTLINED_FUNCTION_30_11(&a10);
      sub_1D5611018();
      OUTLINED_FUNCTION_24_4();
      v93 = v175;
      v140(v102, v175);
      v137 = v102 & 1;
      v141 = v126;
    }

    else
    {
      v133 = 0.0;
      v137 = 1;
      v141 = v126;
      v93 = v175;
    }

    v142 = v159[4];
    v143 = sub_1D5610708();
    v138 = MEMORY[0x1DA6E6E10](v143);
    v140(v142, v93);
    OUTLINED_FUNCTION_24_0(v103);
    (*(v144 + 8))(v141, v103);
    if (!v138)
    {
      v138 = MEMORY[0x1E69E7CC0];
    }

    v100 = v178;
    v135 = v174;
    v139 = v93;
  }

  v145 = *(v83 + 64);

  *(v83 + 48) = v133;
  *(v83 + 56) = v137;
  *(v83 + 64) = v138;
  OUTLINED_FUNCTION_19_20(&a18);
  v146 = v165;
  sub_1D56110E8();
  v147 = OUTLINED_FUNCTION_128();
  v180(v147);
  OUTLINED_FUNCTION_43_0(v146);
  if (v104)
  {
    sub_1D4E7661C(v146, &qword_1EC7ECFB0, &qword_1D5623E00);
    v133 = 0.0;
    v148 = 0;
    v149 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_23(&v185);
    sub_1D5610708();
    sub_1D5611018();
    OUTLINED_FUNCTION_24_4();
    v150 = *(v135 + 8);
    v150(v93, v139);
    if ((v93 & 1) != 0 || v133 != -1.0)
    {
      OUTLINED_FUNCTION_15_23(&a10);
      sub_1D5610708();
      sub_1D5611018();
      OUTLINED_FUNCTION_24_4();
      v150(v93, v139);
      v148 = v93 & 1;
    }

    else
    {
      v133 = 0.0;
      v148 = 1;
    }

    v151 = v159[6];
    v152 = sub_1D5610708();
    v149 = MEMORY[0x1DA6E6E10](v152);
    v150(v151, v139);
    OUTLINED_FUNCTION_24_0(v103);
    (*(v153 + 8))(v146, v103);
    if (!v149)
    {
      v149 = MEMORY[0x1E69E7CC0];
    }

    v100 = v178;
  }

  v154 = *(v83 + 88);

  *(v83 + 72) = v133;
  *(v83 + 80) = v148;
  *(v83 + 88) = v149;
  v184[0] = v173;
  v184[1] = sub_1D4FC5CEC(&qword_1EC7ECFD0, type metadata accessor for FlexAnalysisPropertyProvider);
  v155 = __swift_allocate_boxed_opaque_existential_0(&v181);
  sub_1D4FC5BE4(v83, v155);
  FlexAnalysis.init(propertyProvider:)(&v181, v168);

  OUTLINED_FUNCTION_24_0(v171);
  (*(v156 + 8))();
  OUTLINED_FUNCTION_24_0(v172);
  (*(v157 + 8))(v176);
  (*(v166 + 8))(v100, v167);
  sub_1D4FC5C48(v83);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FC3A98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D4F03E8C(0, v1, 0);
    v2 = v19;
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB1D8, &qword_1D561DF20) - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    do
    {
      sub_1D4FC4E18(v5, v16);
      v6 = v16[0];
      v7 = v16[1];
      v8 = v16[2];
      v9 = v17;
      v10 = v18;
      v19 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D4F03E8C((v11 > 1), v12 + 1, 1);
        v2 = v19;
      }

      *(v2 + 16) = v12 + 1;
      v13 = v2 + 40 * v12;
      *(v13 + 32) = v6;
      *(v13 + 40) = v7;
      *(v13 + 48) = v8;
      *(v13 + 56) = v9;
      *(v13 + 64) = v10;
      v5 += v15;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D4FC3C04()
{
  v1 = sub_1D56110A8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - v11;
  v32[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC8, &qword_1D5623E18);
  v34 = v0;
  sub_1D5610708();
  v13 = sub_1D5611088();
  v14 = *(v4 + 8);
  v32[3] = v4 + 8;
  v33 = v1;
  v15 = v1;
  v16 = v13;
  v14(v12, v15);
  v17 = *(v16 + 16);
  v32[1] = v16;
  if (v17)
  {
    v18 = 0;
    v19 = v16 + 32;
    v20 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v21 = *(v19 + 8 * v18);
      v22 = sub_1D5610708();
      v23 = MEMORY[0x1DA6E6E80](v22);
      result = (v14)(v9, v33);
      if (v18 >= *(v23 + 16))
      {
        __break(1u);
        return result;
      }

      v25 = *(v23 + 8 * v18 + 32);

      if ((v25 - 300) > 0xFFFFFFFFFFFFFF9BLL)
      {
        break;
      }

      if ((v25 - 500) > 0xFFFFFFFFFFFFFF9BLL)
      {
        v26 = 1;
        goto LABEL_12;
      }

      if ((v25 - 700) > 0xFFFFFFFFFFFFFF9BLL)
      {
        v26 = 2;
        goto LABEL_12;
      }

      if ((v25 - 900) >= 0xFFFFFFFFFFFFFF9CLL)
      {
        v26 = 3;
LABEL_12:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v20 + 16);
          sub_1D4F0065C();
          v20 = v30;
        }

        v27 = *(v20 + 16);
        if (v27 >= *(v20 + 24) >> 1)
        {
          sub_1D4F0065C();
          v20 = v31;
        }

        *(v20 + 16) = v27 + 1;
        v28 = v20 + 24 * v27;
        *(v28 + 32) = v21;
        *(v28 + 40) = v26;
        *(v28 + 48) = (v25 % 100) / 100.0;
      }

      if (v17 == ++v18)
      {
        goto LABEL_20;
      }
    }

    v26 = 0;
    goto LABEL_12;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v20;
}

void FlexAnalysis.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v136 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v135 = v7;
  v8 = sub_1D5610088();
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v146 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v131 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v23);
  v24 = sub_1D5612B78();
  v25 = OUTLINED_FUNCTION_4(v24);
  v133 = v26;
  v134 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v132 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFD8, &qword_1D5623E20);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  v128 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFE0, &qword_1D5623E28);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v127 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFE8, &qword_1D5623E30);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v45);
  v46 = sub_1D5611188();
  v47 = OUTLINED_FUNCTION_4(v46);
  v129 = v48;
  v130 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13();
  v144 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_2();
  v145 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFA8, &qword_1D5623DF8);
  OUTLINED_FUNCTION_22(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_3();
  v140 = v58;
  v59 = sub_1D5611038();
  v60 = OUTLINED_FUNCTION_4(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v65);
  v67 = v126 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFB0, &qword_1D5623E00);
  v69 = OUTLINED_FUNCTION_22(v68);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_135();
  v139 = v73;
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_2();
  v138 = v75;
  v76 = sub_1D5611128();
  v77 = OUTLINED_FUNCTION_4(v76);
  v142 = v78;
  v143 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_2();
  v141 = v82;
  if (qword_1EC7E8AB8 != -1)
  {
    swift_once();
  }

  sub_1D4FC5CEC(&qword_1EC7ECFF0, type metadata accessor for FlexAnalysis);
  sub_1D4FC5CEC(&qword_1EC7ECFF8, type metadata accessor for FlexAnalysis);
  OUTLINED_FUNCTION_9_30();
  v137 = v0;
  if (v148)
  {
    OUTLINED_FUNCTION_18_25();
    OUTLINED_FUNCTION_11_27();
    v83 = OUTLINED_FUNCTION_5_24();
    v84(v83);
    sub_1D5614A88();
    sub_1D5614BD8();
    OUTLINED_FUNCTION_20_27();

    v85 = OUTLINED_FUNCTION_26_17();
    v86(v85);
  }

  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC0, &qword_1D5623E10);
  OUTLINED_FUNCTION_14_21(v87);
  if (qword_1EC7E8AC0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED000, &unk_1D56257F0);
  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_29_16();
  v126[1] = v88;

  if (qword_1EC7E8AD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_29_16();
  v126[0] = v89;

  if (qword_1EC7E8AD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_30();
  if (v148)
  {
    OUTLINED_FUNCTION_18_25();
    OUTLINED_FUNCTION_11_27();
    v90 = OUTLINED_FUNCTION_5_24();
    v91(v90);
    sub_1D5614A88();
    sub_1D5614BD8();
    OUTLINED_FUNCTION_20_27();

    v92 = OUTLINED_FUNCTION_26_17();
    v93(v92);
  }

  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC0, &qword_1D5623E10);
  OUTLINED_FUNCTION_14_21(v94);
  if (qword_1EC7E8AC8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED008, &qword_1D5623E38);
  OUTLINED_FUNCTION_9_30();
  if (v147)
  {
    v95 = v147;
  }

  else
  {
    v95 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4FC4C18(v95);

  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC8, &qword_1D5623E18);
  OUTLINED_FUNCTION_28_20(v96);
  if (qword_1EC7E8AE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_30();
  if (v148)
  {
    OUTLINED_FUNCTION_18_25();
    OUTLINED_FUNCTION_11_27();
    v97 = OUTLINED_FUNCTION_5_24();
    v98(v97);
    sub_1D5614A88();
    sub_1D5614BD8();
    OUTLINED_FUNCTION_20_27();

    (*(v62 + 8))(v67, v59);
  }

  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC0, &qword_1D5623E10);
  OUTLINED_FUNCTION_14_21(v99);
  v100 = v141;
  sub_1D56110F8();
  v102 = *v1;
  v101 = v1[1];
  (*(v142 + 16))(v126[3], v100, v143);
  v103 = sub_1D5611158();
  OUTLINED_FUNCTION_146_0(v126[4], v104, v105, v103);
  v106 = sub_1D5611148();
  OUTLINED_FUNCTION_146_0(v127, v107, v108, v106);
  v109 = sub_1D5611178();
  OUTLINED_FUNCTION_146_0(v128, v110, v111, v109);

  v112 = v145;
  OUTLINED_FUNCTION_63_1();
  sub_1D5611168();
  v113 = *(type metadata accessor for FlexAnalysis() + 20);
  sub_1D5611A28();
  v114 = sub_1D560D838();
  OUTLINED_FUNCTION_28_20(v114);
  v115 = sub_1D5611C98();
  OUTLINED_FUNCTION_146_0(v131, v116, v117, v115);
  v118 = v132;
  OUTLINED_FUNCTION_63_1();
  sub_1D5612B38();
  v120 = v129;
  v119 = v130;
  (*(v129 + 16))(v144, v112, v130);
  sub_1D5611A98();
  v121 = sub_1D5611A88();
  v139 = v122;
  v140 = v121;
  v123 = v133;
  v124 = v134;
  v125 = v135;
  (*(v133 + 16))(v135, v118, v134);
  __swift_storeEnumTagSinglePayload(v125, 0, 1, v124);
  v138 = sub_1D5611A38();
  v137 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D4FC5CEC(&qword_1EC7ED010, MEMORY[0x1E69760E0]);
  sub_1D5610628();
  (*(v123 + 8))(v118, v124);
  (*(v120 + 8))(v145, v119);
  (*(v142 + 8))(v141, v143);
  OUTLINED_FUNCTION_46();
}

void sub_1D4FC4A48()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB1D8, &qword_1D561DF20);
  OUTLINED_FUNCTION_4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v10 = *(v1 + 16);
  if (v10)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D4F03F44();
    v11 = v22;
    v12 = (v1 + 64);
    do
    {
      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v15 = *(v12 - 8);
      v16 = *v12;
      v19[0] = *(v12 - 4);
      v19[1] = v13;
      v19[2] = v14;
      v20 = v15;
      v21 = v16;

      sub_1D4FC57A0(v19, v9);

      v22 = v11;
      v17 = *(v11 + 16);
      if (v17 >= *(v11 + 24) >> 1)
      {
        sub_1D4F03F44();
        v11 = v22;
      }

      *(v11 + 16) = v17 + 1;
      (*(v4 + 32))(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, v9, v2);
      v12 += 5;
      --v10;
    }

    while (v10);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FC4C18(uint64_t a1)
{
  v2 = sub_1D56110A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  v16 = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D4FC2D60(a1, &v17, &v16);

  sub_1D5611078();
  (*(v5 + 16))(v10, v13, v2);
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D56106F8();
  (*(v5 + 8))(v13, v2);
}

uint64_t sub_1D4FC4DAC()
{
  sub_1D4FC5CEC(&qword_1EC7ED018, type metadata accessor for FlexAnalysis);

  return sub_1D5612668();
}

uint64_t sub_1D4FC4E18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v67 = a2;
  v3 = sub_1D5610FF8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v69 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v66 = &v65 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v71 = &v65 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v65 = &v65 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v65 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB1D8, &qword_1D561DF20);
  v20 = sub_1D5610708();
  v21 = MEMORY[0x1DA6E6DB0](v20);
  v23 = *(v4 + 8);
  v22 = v4 + 8;
  v23(v18, v3);
  v24 = *(v21 + 16);

  v25 = sub_1D5610708();
  v26 = MEMORY[0x1DA6E6DD0](v25);
  v72 = v3;
  v74 = v23;
  v23(v16, v3);
  v27 = *(v26 + 16);

  if (v27 >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = v27;
  }

  v70 = v22;
  v29 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v30 = 4;
    v31 = a1;
    v68 = v19;
    while (1)
    {
      v32 = v29;
      v33 = v71;
      v34 = v31;
      v35 = sub_1D5610708();
      v36 = MEMORY[0x1DA6E6DB0](v35);
      v37 = v72;
      result = v74(v33, v72);
      if ((v30 - 4) >= *(v36 + 16))
      {
        break;
      }

      v73 = v28;
      v39 = *(v36 + 8 * v30);

      v40 = v69;
      v41 = sub_1D5610708();
      v42 = MEMORY[0x1DA6E6DD0](v41);
      result = v74(v40, v37);
      if ((v30 - 4) >= *(v42 + 16))
      {
        goto LABEL_18;
      }

      v43 = *(v42 + 8 * v30);

      v29 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = *(v32 + 16);
        sub_1D4F00980();
        v29 = v48;
      }

      v31 = v34;
      v44 = v73;
      v45 = *(v29 + 16);
      if (v45 >= *(v29 + 24) >> 1)
      {
        sub_1D4F00980();
        v29 = v49;
      }

      *(v29 + 16) = v45 + 1;
      v46 = v29 + 16 * v45;
      *(v46 + 32) = v39;
      *(v46 + 40) = v43;
      ++v30;
      v28 = v44 - 1;
      if (!v28)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_13:
    v50 = v65;
    sub_1D5610708();
    sub_1D5610FB8();
    v52 = v51;
    v53 = v72;
    v54 = v74;
    v74(v50, v72);

    v55 = v29;
    v56 = v71;
    sub_1D5610708();
    v69 = sub_1D5610F98();
    LODWORD(v73) = v57;
    v54(v56, v53);

    v58 = v66;
    v59 = sub_1D5610708();
    v60 = MEMORY[0x1DA6E6DC0](v59);
    result = (v54)(v58, v53);
    if (!v60 || (sub_1D4FC52B4(), v62 = v61, result = , !v62))
    {
      v62 = MEMORY[0x1E69E7CC0];
    }

    v63 = v67;
    *v67 = v52;
    v64 = v69;
    v63[1] = v55;
    v63[2] = v64;
    *(v63 + 24) = v73 & 1;
    v63[4] = v62;
  }

  return result;
}

void sub_1D4FC52B4()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = sub_1D5611068();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v10 = v8 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - v15;
  v17 = *(v1 + 16);
  if (v17)
  {
    v19 = *(v5 + 16);
    v18 = v5 + 16;
    v20 = (v1 + ((*(v18 + 64) + 32) & ~*(v18 + 64)));
    v33 = *(v18 + 56);
    v34 = v19;
    v21 = (v18 - 8);
    v37 = v18;
    v38 = MEMORY[0x1E69E7CC0];
    v35 = v14;
    v36 = &v33 - v15;
    while (1)
    {
      v22 = v34;
      v34(v16, v20, v2);
      v22(v14, v16, v2);
      sub_1D5611048();
      sub_1D4FC5CEC(&qword_1EC7ED020, MEMORY[0x1E69760C8]);
      OUTLINED_FUNCTION_128();
      v23 = sub_1D5614D18();
      v24 = *v21;
      (*v21)(v10, v2);
      if (v23)
      {
        break;
      }

      sub_1D5611058();
      OUTLINED_FUNCTION_128();
      v26 = sub_1D5614D18();
      v24(v10, v2);
      v27 = OUTLINED_FUNCTION_63_1();
      (v24)(v27);
      v24(v16, v2);
      if (v26)
      {
        goto LABEL_6;
      }

LABEL_11:
      v16 = v36;
      v20 += v33;
      --v17;
      v14 = v35;
      if (!v17)
      {
        goto LABEL_14;
      }
    }

    v25 = OUTLINED_FUNCTION_63_1();
    (v24)(v25);
    v24(v16, v2);
LABEL_6:
    v28 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = *(v28 + 16);
      sub_1D4F008C8();
      v28 = v31;
    }

    v29 = *(v28 + 16);
    if (v29 >= *(v28 + 24) >> 1)
    {
      sub_1D4F008C8();
      v28 = v32;
    }

    *(v28 + 16) = v29 + 1;
    v38 = v28;
    *(v28 + v29 + 32) = (v23 ^ 1) & 1;
    goto LABEL_11;
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_14:
  OUTLINED_FUNCTION_46();
}

void sub_1D4FC5590(double *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = a1[2] * 100.0;
  switch(*(a1 + 8))
  {
    case 1:
      goto LABEL_20;
    case 2:
      goto LABEL_8;
    case 3:
      goto LABEL_14;
    default:
      if (COERCE_UNSIGNED_INT64(fabs(a1[2] * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_27;
      }

      if (v4 <= -9.22337204e18)
      {
        goto LABEL_31;
      }

      if (v4 >= 9.22337204e18)
      {
        goto LABEL_35;
      }

      v7 = v4 + 200;
      if (!__OFADD__(v4, 200))
      {
        goto LABEL_24;
      }

      __break(1u);
LABEL_8:
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v4 <= -9.22337204e18)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= 9.22337204e18)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v7 = v4 + 600;
      if (!__OFADD__(v4, 600))
      {
        goto LABEL_24;
      }

      __break(1u);
LABEL_14:
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_26;
      }

      if (v4 <= -9.22337204e18)
      {
        goto LABEL_30;
      }

      if (v4 >= 9.22337204e18)
      {
        goto LABEL_34;
      }

      v7 = v4 + 800;
      if (!__OFADD__(v4, 800))
      {
        goto LABEL_24;
      }

      __break(1u);
LABEL_20:
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      if (v4 <= -9.22337204e18)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v4 >= 9.22337204e18)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v7 = v4 + 400;
      if (!__OFADD__(v4, 400))
      {
LABEL_24:
        sub_1D4EFF540();
        v8 = *(*a2 + 16);
        sub_1D4EFF788(v8);
        v9 = *a2;
        *(v9 + 16) = v8 + 1;
        *(v9 + 8 * v8 + 32) = v3;
        sub_1D4EFF4EC();
        v10 = *(*a3 + 16);
        sub_1D4EFF744();
        v11 = *a3;
        *(v11 + 16) = v10 + 1;
        *(v11 + 8 * v10 + 32) = v7;
        return;
      }

LABEL_37:
      __break(1u);
      return;
  }
}

uint64_t sub_1D4FC57A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D5610FF8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v36 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = v28 - v10;
  v11 = *a1;
  v12 = a1[1];
  v34 = a1[2];
  v33 = *(a1 + 24);
  v13 = v12[2];
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v28[1] = a1[4];
    v29 = v6;
    v30 = a2;
    v31 = v5;
    v32 = v2;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1D4F03EAC(0, v13, 0);
    v15 = v37;
    v16 = v12 + 4;
    v17 = *(v37 + 16);
    v18 = v13;
    do
    {
      v19 = *v16;
      v37 = v15;
      v20 = *(v15 + 24);
      if (v17 >= v20 >> 1)
      {
        sub_1D4F03EAC((v20 > 1), v17 + 1, 1);
        v15 = v37;
      }

      *(v15 + 16) = v17 + 1;
      *(v15 + 8 * v17 + 32) = v19;
      v16 += 2;
      ++v17;
      --v18;
    }

    while (v18);
    v37 = v14;
    sub_1D4F03EAC(0, v13, 0);
    v21 = v37;
    v22 = *(v37 + 16);
    v23 = v12 + 5;
    do
    {
      v24 = *v23;
      v37 = v21;
      v25 = *(v21 + 24);
      if (v22 >= v25 >> 1)
      {
        sub_1D4F03EAC((v25 > 1), v22 + 1, 1);
        v21 = v37;
      }

      *(v21 + 16) = v22 + 1;
      *(v21 + 8 * v22 + 32) = v24;
      v23 += 2;
      ++v22;
      --v13;
    }

    while (v13);
    v5 = v31;
    v6 = v29;
  }

  sub_1D4FC5A7C();
  v26 = v35;
  sub_1D5610FA8();
  (*(v6 + 16))(v36, v26, v5);
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D56106F8();
  return (*(v6 + 8))(v26, v5);
}

void sub_1D4FC5A7C()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = sub_1D5611068();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *(v1 + 16);
  if (v11)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D4F03F84();
    v12 = (v1 + 32);
    do
    {
      if (*v12)
      {
        sub_1D5611058();
      }

      else
      {
        sub_1D5611048();
      }

      v13 = *(v14 + 16);
      if (v13 >= *(v14 + 24) >> 1)
      {
        sub_1D4F03F84();
      }

      *(v14 + 16) = v13 + 1;
      (*(v5 + 32))(v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v10, v2);
      ++v12;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FC5BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlexAnalysisPropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FC5C48(uint64_t a1)
{
  v2 = type metadata accessor for FlexAnalysisPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4FC5CEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_20_27()
{

  return sub_1D56106F8();
}

uint64_t OUTLINED_FUNCTION_28_20(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

void static CloudTVShow.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v168 = sub_1D560C0A8();
  v7 = OUTLINED_FUNCTION_4(v168);
  v165 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v164 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v13 = OUTLINED_FUNCTION_22(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v160 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_2();
  v166 = v18;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v19 = OUTLINED_FUNCTION_14(v167);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v161 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_2();
  v169 = v24;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v175);
  v172 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v170 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13();
  v162 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_2();
  v171 = v36;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  v37 = OUTLINED_FUNCTION_14(v174);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13();
  v163 = v40;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_2();
  v173 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v43);
  v45 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_47_5();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_9();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_16_0();
  v58 = *(v57 + 56);
  v176 = v6;
  sub_1D4F39AB0(v6, v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39AB0(v4, v1 + v58, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v1, 1, v43);
  if (v59)
  {
    OUTLINED_FUNCTION_57(v1 + v58, 1, v43);
    if (v59)
    {
      sub_1D4E50004(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_13;
    }

LABEL_9:
    v60 = &qword_1EC7EC330;
    v61 = &qword_1D56222C0;
    v62 = v1;
LABEL_10:
    sub_1D4E50004(v62, v60, v61);
    goto LABEL_11;
  }

  sub_1D4F39AB0(v1, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v1 + v58, 1, v43);
  if (v59)
  {
    (*(v45 + 8))(v2, v43);
    goto LABEL_9;
  }

  (*(v45 + 32))(v0, v1 + v58, v43);
  sub_1D4F39858();
  v63 = sub_1D5614D18();
  v64 = *(v45 + 8);
  v65 = OUTLINED_FUNCTION_71();
  v64(v65);
  (v64)(v2, v43);
  sub_1D4E50004(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v66 = type metadata accessor for CloudTVShow.Attributes(0);
  OUTLINED_FUNCTION_73_6(v66[5]);
  if (v43)
  {
    if (!v0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F2C07C();
    OUTLINED_FUNCTION_70_2();
    if ((v43 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_73_6(v66[6]);
  if (v43)
  {
    if (!v0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F2C5FC();
    OUTLINED_FUNCTION_70_2();
    if ((v43 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_73_6(v66[7]);
  if (v43)
  {
    if (!v0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F28F1C();
    OUTLINED_FUNCTION_70_2();
    if ((v43 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_73_6(v66[8]);
  if (v43)
  {
    if (!v0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F2D3E4();
    OUTLINED_FUNCTION_70_2();
    if ((v43 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v0)
  {
    goto LABEL_11;
  }

  v67 = v66[9];
  v68 = *(v174 + 48);
  v69 = &unk_1D56334C0;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v70, v71, v72, v73);
  sub_1D4F39AB0(v4 + v67, v173 + v68, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v173, 1, v175);
  if (v59)
  {
    v74 = OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_57(v74, v75, v175);
    if (v59)
    {
      sub_1D4E50004(v173, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  sub_1D4F39AB0(v173, v171, &qword_1EC7EC960, &unk_1D56334C0);
  v76 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_57(v76, v77, v175);
  if (v78)
  {
    (*(v172 + 8))(v171, v175);
LABEL_41:
    v60 = &qword_1EC7EC968;
    v61 = &unk_1D5622290;
    v62 = v173;
    goto LABEL_10;
  }

  (*(v172 + 32))(v170, v173 + v68, v175);
  sub_1D4F7BF60();
  v159 = sub_1D5614D18();
  v69 = v172 + 8;
  v79 = *(v172 + 8);
  v79(v170, v175);
  v79(v171, v175);
  sub_1D4E50004(v173, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v159 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_43:
  OUTLINED_FUNCTION_73_6(v66[10]);
  if (v69)
  {
    if (!v173)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F29174();
    OUTLINED_FUNCTION_70_2();
    if ((v69 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v173)
  {
    goto LABEL_11;
  }

  v80 = v66[11];
  v81 = (v176 + v80);
  v82 = *(v176 + v80 + 8);
  v83 = (v4 + v80);
  v84 = *(v4 + v80 + 8);
  if (v82)
  {
    if (!v84)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*v81 != *v83)
    {
      LOBYTE(v84) = 1;
    }

    if (v84)
    {
      goto LABEL_11;
    }
  }

  v85 = v66[12];
  v86 = *(v176 + v85);
  v87 = *(v4 + v85);
  if (v86)
  {
    if (!v87 || (sub_1D4EF81E0(v86, v87) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v87)
  {
    goto LABEL_11;
  }

  v88 = v66[13];
  v89 = *(v176 + v88);
  v90 = *(v4 + v88);
  if (v89 == 2)
  {
    if (v90 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (v90 == 2 || ((v90 ^ v89) & 1) != 0)
  {
    goto LABEL_11;
  }

  v91 = v66[14];
  v92 = *(v176 + v91);
  v93 = *(v4 + v91);
  if (v92 == 2)
  {
    if (v93 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (v93 == 2 || ((v93 ^ v92) & 1) != 0)
  {
    goto LABEL_11;
  }

  v94 = v66[15];
  v95 = *(v167 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v96, v97, v98, v99);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v100, v101, v102, v103);
  OUTLINED_FUNCTION_57(v169, 1, v168);
  if (v59)
  {
    OUTLINED_FUNCTION_57(v169 + v95, 1, v168);
    if (v59)
    {
      sub_1D4E50004(v169, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  sub_1D4F39AB0(v169, v166, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v104 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_57(v104, v105, v168);
  if (v106)
  {
    (*(v165 + 8))(v166, v168);
LABEL_77:
    v60 = &qword_1EC7E9FB0;
    v61 = &qword_1D562C590;
    v62 = v169;
    goto LABEL_10;
  }

  (*(v165 + 32))(v164, v169 + v95, v168);
  OUTLINED_FUNCTION_0_39();
  sub_1D4FC6B3C(v107);
  v108 = sub_1D5614D18();
  v109 = *(v165 + 8);
  v109(v164, v168);
  v109(v166, v168);
  sub_1D4E50004(v169, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v108 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_79:
  v110 = v66[16];
  v111 = *(v176 + v110);
  v112 = *(v4 + v110);
  if (v111)
  {
    if (!v112)
    {
      goto LABEL_11;
    }

    v113 = *(v4 + v110);

    OUTLINED_FUNCTION_159();
    sub_1D4EF9D5C();
    OUTLINED_FUNCTION_70_2();
    if ((v111 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v112)
  {
    goto LABEL_11;
  }

  v114 = v66[17];
  OUTLINED_FUNCTION_62();
  if (v115)
  {
    if (!v116)
    {
      goto LABEL_11;
    }

    v119 = *v117 == *v118 && v115 == v116;
    if (!v119 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v116)
  {
    goto LABEL_11;
  }

  v120 = v66[18];
  v121 = *(v176 + v120);
  v122 = *(v4 + v120);
  if (v121)
  {
    if (!v122)
    {
      goto LABEL_11;
    }

    v123 = *(v4 + v120);

    OUTLINED_FUNCTION_159();
    sub_1D4F2D3E4();
    OUTLINED_FUNCTION_70_2();
    if ((v121 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v122)
  {
    goto LABEL_11;
  }

  v124 = v66[19];
  v125 = *(v174 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v126, v127, v128, v129);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v130, v131, v132, v133);
  OUTLINED_FUNCTION_57(v163, 1, v175);
  if (!v59)
  {
    sub_1D4F39AB0(v163, v162, &qword_1EC7EC960, &unk_1D56334C0);
    v134 = OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_57(v134, v135, v175);
    if (!v136)
    {
      (*(v172 + 32))(v170, v163 + v125, v175);
      sub_1D4F7BF60();
      OUTLINED_FUNCTION_157_0();
      v137 = OUTLINED_FUNCTION_51();
      (unk_1D56334C0)(v137);
      (unk_1D56334C0)(v162, v175);
      sub_1D4E50004(v163, &qword_1EC7EC960, &unk_1D56334C0);
      if ((v163 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_108;
    }

    (*(v172 + 8))(v162, v175);
    goto LABEL_106;
  }

  OUTLINED_FUNCTION_57(v163 + v125, 1, v175);
  if (!v59)
  {
LABEL_106:
    v60 = &qword_1EC7EC968;
    v61 = &unk_1D5622290;
    v62 = v163;
    goto LABEL_10;
  }

  sub_1D4E50004(v163, &qword_1EC7EC960, &unk_1D56334C0);
LABEL_108:
  v138 = v66[20];
  OUTLINED_FUNCTION_62();
  if (!v139)
  {
    if (v140)
    {
      goto LABEL_11;
    }

    goto LABEL_117;
  }

  if (v140)
  {
    v143 = *v141 == *v142 && v139 == v140;
    if (v143 || (sub_1D5616168() & 1) != 0)
    {
LABEL_117:
      v144 = v66[21];
      v145 = *(v167 + 48);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v146, v147, v148, v149);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v150, v151, v152, v153);
      OUTLINED_FUNCTION_57(v161, 1, v168);
      if (v59)
      {
        OUTLINED_FUNCTION_57(v161 + v145, 1, v168);
        if (v59)
        {
          sub_1D4E50004(v161, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_11;
        }
      }

      else
      {
        sub_1D4F39AB0(v161, v160, &unk_1EC7E9CA8, &unk_1D561D1D0);
        v154 = OUTLINED_FUNCTION_72_1();
        OUTLINED_FUNCTION_57(v154, v155, v168);
        if (!v156)
        {
          (*(v165 + 32))(v164, v161 + v145, v168);
          OUTLINED_FUNCTION_0_39();
          sub_1D4FC6B3C(v157);
          OUTLINED_FUNCTION_157_0();
          v158 = OUTLINED_FUNCTION_51();
          (unk_1D561D1D0)(v158);
          (unk_1D561D1D0)(v160, v168);
          sub_1D4E50004(v161, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_11;
        }

        (*(v165 + 8))(v160, v168);
      }

      v60 = &qword_1EC7E9FB0;
      v61 = &qword_1D562C590;
      v62 = v161;
      goto LABEL_10;
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4FC6B3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D4FC6B80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73746964657263 && a2 == 0xE700000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6169726F74696465 && a2 == 0xED0000647261436CLL;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4365646F73697065 && a2 == 0xEC000000746E756FLL;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6B34736168 && a2 == 0xE500000000000000;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4448736168 && a2 == 0xE500000000000000;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000012 && 0x80000001D56809F0 == a2;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 1701667182 && a2 == 0xE400000000000000;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000012 && 0x80000001D5680A10 == a2;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000013 && 0x80000001D5680670 == a2;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_1D5616168();

                                    if (v23)
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

unint64_t sub_1D4FC70E8(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x73746964657263;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 5:
    case 6:
      result = 0x6169726F74696465;
      break;
    case 7:
      result = 0x4365646F73697065;
      break;
    case 8:
      result = 0x6D614E65726E6567;
      break;
    case 9:
      result = 0x6B34736168;
      break;
    case 10:
      result = 0x4448736168;
      break;
    case 11:
      result = 0x76697372656D6D69;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 1701667182;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x44657361656C6572;
      break;
    case 17:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FC72F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FC6B80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FC731C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4FC70E0();
  *a1 = result;
  return result;
}

uint64_t sub_1D4FC7344(uint64_t a1)
{
  v2 = sub_1D4FC78D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FC7380(uint64_t a1)
{
  v2 = sub_1D4FC78D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudTVShow.Attributes.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED038, &unk_1D5623EB0);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  v12 = *(v5 + 24);
  v13 = *(v5 + 32);
  OUTLINED_FUNCTION_62_1();
  sub_1D4FC78D4();
  OUTLINED_FUNCTION_132();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  sub_1D4F7CD24();
  OUTLINED_FUNCTION_21_0();
  if (!v1)
  {
    v14 = type metadata accessor for CloudTVShow.Attributes(0);
    OUTLINED_FUNCTION_90_5(v14);
    OUTLINED_FUNCTION_42_2(v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    sub_1D4F7CE0C();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_42_2(v12[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    sub_1D4FC7928();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_42_2(v12[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D4FC7B20();
    OUTLINED_FUNCTION_20_3();
    OUTLINED_FUNCTION_42_2(v12[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED080, &qword_1D5623EC8);
    sub_1D4FC7BAC();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v16 = v12[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v12[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D4FC7D20();
    OUTLINED_FUNCTION_20_3();
    v17 = (v3 + v12[11]);
    v18 = *v17;
    v19 = *(v17 + 8);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616058();
    OUTLINED_FUNCTION_42_2(v12[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D4F88BF4(&unk_1EC7ECA00);
    OUTLINED_FUNCTION_20_3();
    v20 = *(v3 + v12[13]);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    v21 = *(v3 + v12[14]);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    v22 = v12[15];
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_39();
    sub_1D4FC6B3C(v23);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v12[16]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED098, &unk_1D5623EE0);
    sub_1D4FC7DAC(&unk_1EC7ED0A0);
    OUTLINED_FUNCTION_20_3();
    v24 = (v3 + v12[17]);
    v25 = *v24;
    v26 = v24[1];
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    OUTLINED_FUNCTION_42_2(v12[18]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v27 = v12[19];
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v28 = (v3 + v12[20]);
    v29 = *v28;
    v30 = v28[1];
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    v31 = v12[21];
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D4FC78D4()
{
  result = qword_1EC7ED040;
  if (!qword_1EC7ED040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED040);
  }

  return result;
}

unint64_t sub_1D4FC7928()
{
  result = qword_1EC7ED050;
  if (!qword_1EC7ED050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED048, &unk_1D56285A0);
    sub_1D4FC79B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED050);
  }

  return result;
}

unint64_t sub_1D4FC79B4()
{
  result = qword_1EC7ED058;
  if (!qword_1EC7ED058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED060, &qword_1D5623EC0);
    sub_1D4FC7A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED058);
  }

  return result;
}

unint64_t sub_1D4FC7A38()
{
  result = qword_1EC7ED068;
  if (!qword_1EC7ED068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB160, &qword_1D561DEE0);
    sub_1D4FC6B3C(&unk_1EC7ED070);
    sub_1D4FC6B3C(&unk_1EC7ED078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED068);
  }

  return result;
}

unint64_t sub_1D4FC7B20()
{
  result = qword_1EC7EC9D8;
  if (!qword_1EC7EC9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D4F7CD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9D8);
  }

  return result;
}

unint64_t sub_1D4FC7BAC()
{
  result = qword_1EC7ED088;
  if (!qword_1EC7ED088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED080, &qword_1D5623EC8);
    sub_1D4FC7C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED088);
  }

  return result;
}

unint64_t sub_1D4FC7C38()
{
  result = qword_1EC7ED090;
  if (!qword_1EC7ED090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
    sub_1D4FC6B3C(&unk_1EDD56910);
    sub_1D4FC6B3C(&unk_1EDD56918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED090);
  }

  return result;
}

unint64_t sub_1D4FC7D20()
{
  result = qword_1EC7EC9F0;
  if (!qword_1EC7EC9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D4F7D1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9F0);
  }

  return result;
}

unint64_t sub_1D4FC7DAC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED098, &unk_1D5623EE0);
    sub_1D4FC7E30(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4FC7E30(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB170, &qword_1D561DEF0);
    sub_1D4FC7E94();
    sub_1D4FC7EE8();
    result = OUTLINED_FUNCTION_91_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4FC7E94()
{
  result = qword_1EC7ED0B0;
  if (!qword_1EC7ED0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED0B0);
  }

  return result;
}

unint64_t sub_1D4FC7EE8()
{
  result = qword_1EC7ED0B8;
  if (!qword_1EC7ED0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED0B8);
  }

  return result;
}

void CloudTVShow.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  OUTLINED_FUNCTION_64_1();
  v2 = sub_1D560C0A8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v84 = v4;
  v85 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v83 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v9 = OUTLINED_FUNCTION_22(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v82 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_2();
  v78 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v15);
  v81 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  v80 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v22 = OUTLINED_FUNCTION_22(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v79 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v78 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v78 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v78 - v41;
  sub_1D4F39AB0(v1, &v78 - v41, &qword_1EC7EB5B8, &unk_1D56206A0);
  v43 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v43, v44, v29);
  if (v45)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v31 + 32))(v36, v42, v29);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v31 + 8))(v36, v29);
  }

  v46 = type metadata accessor for CloudTVShow.Attributes(0);
  v47 = v85;
  if (*(v1 + v46[5]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v46[6]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D4F35BFC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v46[7]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v46[8]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D4F38244();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v1 + v46[9], v28, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v28, 1, v15);
  if (v45)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v49 = v80;
    v48 = v81;
    (*(v81 + 32))(v80, v28, v15);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v48 + 8))(v49, v15);
  }

  if (*(v1 + v46[10]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v50 = v1 + v46[11];
  if (*(v50 + 8) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v51 = *v50;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v51);
  }

  if (*(v1 + v46[12]))
  {
    OUTLINED_FUNCTION_27();
    v52 = OUTLINED_FUNCTION_24();
    sub_1D4F06928(v52, v53);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v46[13]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v1 + v46[14]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  sub_1D4F39AB0(v1 + v46[15], v78, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v54 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v54, v55, v47);
  if (v45)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v57 = v83;
    v56 = v84;
    v58 = OUTLINED_FUNCTION_53_8();
    v59(v58);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_39();
    sub_1D4FC6B3C(v60);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v56 + 8))(v57, v47);
  }

  if (*(v1 + v46[16]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F085A8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v61 = (v1 + v46[17]);
  if (v61[1])
  {
    v62 = *v61;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v46[18]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F38244();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v1 + v46[19], v79, &qword_1EC7EC960, &unk_1D56334C0);
  v63 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v63, v64, v15);
  if (v45)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v66 = v80;
    v65 = v81;
    v67 = OUTLINED_FUNCTION_53_8();
    v68(v67);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v65 + 8))(v66, v15);
  }

  v69 = (v1 + v46[20]);
  if (v69[1])
  {
    v70 = *v69;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v1 + v46[21], v82, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v71 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v71, v72, v47);
  if (v45)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v74 = v83;
    v73 = v84;
    v75 = OUTLINED_FUNCTION_53_8();
    v76(v75);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_39();
    sub_1D4FC6B3C(v77);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v73 + 8))(v74, v47);
  }

  OUTLINED_FUNCTION_46();
}

void CloudTVShow.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v110 = v11;
  v13 = v12;
  v105 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v104 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v101 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v24 = OUTLINED_FUNCTION_22(v23);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v101 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v101 - v36;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED0C0, &qword_1D5623EF0);
  OUTLINED_FUNCTION_4(v108);
  v39 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_47_5();
  v109 = type metadata accessor for CloudTVShow.Attributes(0);
  v43 = OUTLINED_FUNCTION_14(v109);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v111 = v46;
  v48 = v13[3];
  v47 = v13[4];
  v102 = v13;
  OUTLINED_FUNCTION_62_1();
  sub_1D4FC78D4();
  v106 = v10;
  v49 = v110;
  sub_1D5616398();
  if (v49)
  {
    v110 = v49;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    LODWORD(v57) = 0;
    LODWORD(v105) = 0;
    LODWORD(v106) = 0;
    LODWORD(v108) = 0;
  }

  else
  {
    v50 = v31;
    v107 = v22;
    v103 = v29;
    v52 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(a10) = 0;
    sub_1D4F886BC();
    v53 = v108;
    sub_1D5615F78();
    v71 = v111;
    sub_1D4F39A1C(v37, v111, &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v112 = 1;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_7_30();
    sub_1D5615F78();
    v72 = v109;
    *(v71 + v109[5]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    v112 = 2;
    sub_1D4FCE204();
    OUTLINED_FUNCTION_7_30();
    sub_1D5615F78();
    *(v71 + v72[6]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v112 = 3;
    sub_1D4FCE3FC();
    OUTLINED_FUNCTION_7_30();
    sub_1D5615F78();
    *(v71 + v72[7]) = a10;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED080, &qword_1D5623EC8);
    v112 = 4;
    v74 = v71;
    v75 = sub_1D4FCE488();
    sub_1D5615F78();
    v101[3] = v73;
    v101[4] = v75;
    *(v74 + v72[8]) = a10;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    LOBYTE(a10) = 5;
    v57 = sub_1D4F88A24();
    sub_1D5615F78();
    v101[2] = v57;
    sub_1D4F39A1C(v50, v74 + v72[9], &qword_1EC7EC960, &unk_1D56334C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v54 = v74;
    v112 = 6;
    sub_1D4FCE5FC();
    OUTLINED_FUNCTION_7_30();
    sub_1D5615F78();
    v101[1] = v76;
    *(v74 + v72[10]) = a10;
    OUTLINED_FUNCTION_153_0(7);
    v77 = sub_1D5615F68();
    v78 = v74 + v72[11];
    *v78 = v77;
    *(v78 + 8) = v79 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v112 = 8;
    sub_1D4F88BF4(&qword_1EDD52778);
    OUTLINED_FUNCTION_7_30();
    sub_1D5615F78();
    v110 = 0;
    *(v111 + v72[12]) = a10;
    OUTLINED_FUNCTION_153_0(9);
    v80 = sub_1D5615F48();
    v110 = 0;
    *(v111 + v109[13]) = v80;
    OUTLINED_FUNCTION_153_0(10);
    v56 = v106;
    v81 = sub_1D5615F48();
    v110 = 0;
    *(v111 + v109[14]) = v81;
    v55 = sub_1D560C0A8();
    LOBYTE(a10) = 11;
    OUTLINED_FUNCTION_0_39();
    sub_1D4FC6B3C(v82);
    OUTLINED_FUNCTION_83_4();
    v83 = v110;
    sub_1D5615F78();
    v110 = v83;
    if (v83)
    {
      v84 = OUTLINED_FUNCTION_20_28();
      v85(v84);
      LODWORD(v106) = 0;
      LODWORD(v108) = 0;
      v51 = 1;
      OUTLINED_FUNCTION_4_26();
      LODWORD(v105) = 1;
    }

    else
    {
      sub_1D4F39A1C(v107, v111 + v109[15], &unk_1EC7E9CA8, &unk_1D561D1D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED098, &unk_1D5623EE0);
      v112 = 12;
      sub_1D4FC7DAC(&unk_1EC7ED0E0);
      v56 = v106;
      v86 = v110;
      sub_1D5615F78();
      v110 = v86;
      if (!v86)
      {
        *(v111 + v109[16]) = a10;
        OUTLINED_FUNCTION_153_0(13);
        v89 = sub_1D5615F38();
        v110 = 0;
        v90 = (v111 + v109[17]);
        *v90 = v89;
        v90[1] = v91;
        v112 = 14;
        sub_1D5615F78();
        LODWORD(v107) = 1;
        v110 = 0;
        *(v111 + v109[18]) = a10;
        sub_1D5615F78();
        v110 = 0;
        sub_1D4F39A1C(v103, v111 + v109[19], &qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_153_0(16);
        v56 = v106;
        v93 = v110;
        v94 = sub_1D5615F38();
        v110 = v93;
        if (!v93)
        {
          v98 = (v111 + v109[20]);
          *v98 = v94;
          v98[1] = v95;
          OUTLINED_FUNCTION_83_4();
          sub_1D5615F78();
          v110 = 0;
          v99 = OUTLINED_FUNCTION_20_28();
          v100(v99);
          sub_1D4F39A1C(v104, v111 + v109[21], &unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_14_22();
          sub_1D4FCF044();
          __swift_destroy_boxed_opaque_existential_1(v102);
          OUTLINED_FUNCTION_13_27();
          sub_1D4FCEDF8();
          goto LABEL_34;
        }

        v96 = OUTLINED_FUNCTION_20_28();
        v97(v96);
        LODWORD(v104) = 0;
        LODWORD(v103) = 1;
        __swift_destroy_boxed_opaque_existential_1(v102);
        OUTLINED_FUNCTION_4_26();
        OUTLINED_FUNCTION_69_7();
        LODWORD(v108) = v92;
        v60 = 1;
        v58 = v109;
        v59 = v111;
LABEL_6:
        sub_1D4E50004(v59, &qword_1EC7EB5B8, &unk_1D56206A0);
        if (v52)
        {
          goto LABEL_7;
        }

        goto LABEL_21;
      }

      v87 = OUTLINED_FUNCTION_20_28();
      v88(v87);
      LODWORD(v108) = 0;
      v51 = 1;
      OUTLINED_FUNCTION_4_26();
      OUTLINED_FUNCTION_69_7();
    }
  }

  v58 = v109;
  v59 = v111;
  __swift_destroy_boxed_opaque_existential_1(v102);
  if (v51)
  {
    v60 = 0;
    LODWORD(v107) = 0;
    LODWORD(v103) = 0;
    LODWORD(v104) = 0;
    goto LABEL_6;
  }

  LODWORD(v104) = 0;
  LODWORD(v103) = 0;
  LODWORD(v107) = 0;
  v60 = 0;
  if (v52)
  {
LABEL_7:
    v61 = *(v59 + v58[5]);

    if ((v53 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (!v53)
  {
LABEL_8:
    if (v54)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v66 = *(v59 + v58[6]);

  if (v54)
  {
LABEL_9:
    v62 = *(v59 + v58[7]);

    if ((v55 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (!v55)
  {
LABEL_10:
    if (v56)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v67 = *(v59 + v58[8]);

  if (v56)
  {
LABEL_11:
    sub_1D4E50004(v59 + v58[9], &qword_1EC7EC960, &unk_1D56334C0);
    if ((v57 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (!v57)
  {
LABEL_12:
    if (v105)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v68 = *(v59 + v58[10]);

  if (v105)
  {
LABEL_13:
    v63 = *(v59 + v58[12]);

    if ((v106 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v106)
  {
LABEL_14:
    if (v108)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1D4E50004(v59 + v58[15], &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v108)
  {
LABEL_15:
    v64 = *(v59 + v58[16]);

    if ((v60 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v60)
  {
LABEL_16:
    if (v107)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  v69 = *(v59 + v58[17] + 8);

  if (v107)
  {
LABEL_17:
    v65 = *(v59 + v58[18]);

    if ((v103 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v103)
  {
LABEL_18:
    if (!v104)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_32:
  sub_1D4E50004(v59 + v58[19], &qword_1EC7EC960, &unk_1D56334C0);
  if (v104)
  {
LABEL_33:
    v70 = *(v59 + v58[20] + 8);
  }

LABEL_34:
  OUTLINED_FUNCTION_26();
}

uint64_t CloudTVShow.Relationships.CodingKeys.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  *a1 = v2 != 0;
  return result;
}

uint64_t CloudTVShow.Relationships.CodingKeys.init(stringValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D4FC9450@<X0>(BOOL *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CloudTVShow.Relationships.CodingKeys.init(rawValue:)(a1);
}

uint64_t sub_1D4FC9494(uint64_t a1)
{
  v2 = sub_1D4FCE70C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FC94D0(uint64_t a1)
{
  v2 = sub_1D4FCE70C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void static CloudTVShow.Relationships.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_47_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED0F0, &unk_1D5623EF8);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_16_0();
  v22 = *(v21 + 56);
  sub_1D4F39AB0(v6, v1, &qword_1EC7ECD90, &unk_1D5622F80);
  sub_1D4F39AB0(v4, v1 + v22, &qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_57(v1, 1, v7);
  if (!v23)
  {
    sub_1D4F39AB0(v1, v2, &qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_57(v1 + v22, 1, v7);
    if (!v23)
    {
      (*(v9 + 32))(v0, v1 + v22, v7);
      sub_1D4FCE688();
      sub_1D5614D18();
      v24 = *(v9 + 8);
      v25 = OUTLINED_FUNCTION_71();
      v24(v25);
      (v24)(v2, v7);
      sub_1D4E50004(v1, &qword_1EC7ECD90, &unk_1D5622F80);
      goto LABEL_10;
    }

    (*(v9 + 8))(v2, v7);
LABEL_9:
    sub_1D4E50004(v1, &qword_1EC7ED0F0, &unk_1D5623EF8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_57(v1 + v22, 1, v7);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v1, &qword_1EC7ECD90, &unk_1D5622F80);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

uint64_t CloudTVShow.Relationships.encode(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED100, &qword_1D5623F08);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  OUTLINED_FUNCTION_62_1();
  sub_1D4FCE70C();
  OUTLINED_FUNCTION_132();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  sub_1D4FCE760();
  sub_1D5616068();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudTVShow.Relationships.hash(into:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31();
  sub_1D4F39AB0(v0, v2, &qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_57(v2, 1, v3);
  if (v13)
  {
    return sub_1D56162F8();
  }

  (*(v5 + 32))(v1, v2, v3);
  sub_1D56162F8();
  sub_1D4F8B4A0();
  sub_1D5614CB8();
  v14 = *(v5 + 8);
  v15 = OUTLINED_FUNCTION_98();
  return v16(v15);
}

uint64_t CloudTVShow.Relationships.hashValue.getter()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  sub_1D56162D8();
  sub_1D4F39AB0(v2, v14, &qword_1EC7ECD90, &unk_1D5622F80);
  v15 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v15, v16, v3);
  if (v17)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v1, v14, v3);
    sub_1D56162F8();
    sub_1D4F8B4A0();
    sub_1D5614CB8();
    v18 = *(v5 + 8);
    v19 = OUTLINED_FUNCTION_98();
    v20(v19);
  }

  return sub_1D5616328();
}

void CloudTVShow.Relationships.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v23 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED120, &qword_1D5623F10);
  OUTLINED_FUNCTION_4(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_114();
  v15 = type metadata accessor for CloudTVShow.Relationships(0);
  v16 = OUTLINED_FUNCTION_22(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D4FCE70C();
  sub_1D5616398();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    sub_1D4FCE8EC();
    sub_1D5615F78();
    (*(v11 + 8))(v1, v9);
    sub_1D4F39A1C(v23, v21, &qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_16_21();
    sub_1D4FCEF48();
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4FC9DF4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - v9;
  sub_1D56162D8();
  sub_1D4F39AB0(v1, v10, &qword_1EC7ECD90, &unk_1D5622F80);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1D56162F8();
    sub_1D4F8B4A0();
    sub_1D5614CB8();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1D5616328();
}

uint64_t sub_1D4FC9FC0(uint64_t a1)
{
  v2 = sub_1D4FCEA58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FC9FFC(uint64_t a1)
{
  v2 = sub_1D4FCEA58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudTVShow.Associations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED130, &qword_1D5623F18);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FCEA58();
  sub_1D56163D8();
  return (*(v5 + 8))(v1, v3);
}

uint64_t CloudTVShow.Metadata.init(snippets:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

uint64_t CloudTVShow.Metadata.snippets.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t static CloudTVShow.Metadata.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      v4 = *a2;

      OUTLINED_FUNCTION_159();
      sub_1D4EF7D1C();
      OUTLINED_FUNCTION_70_2();
      if (v2)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D4FCA2B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7374657070696E73 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D4FCA344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FCA2B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D4FCA370(uint64_t a1)
{
  v2 = sub_1D4FCEAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FCA3AC(uint64_t a1)
{
  v2 = sub_1D4FCEAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudTVShow.Metadata.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED140, &qword_1D5623F20);
  OUTLINED_FUNCTION_4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_0();
  v10 = *v0;
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D4FCEAAC();

  OUTLINED_FUNCTION_63_3();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
  sub_1D4FCEB00();
  OUTLINED_FUNCTION_21_0();

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_26();
}

void CloudTVShow.Metadata.hash(into:)()
{
  if (*v0)
  {
    sub_1D56162F8();
    OUTLINED_FUNCTION_98();

    sub_1D4F068B4();
  }

  else
  {
    sub_1D56162F8();
  }
}

uint64_t CloudTVShow.Metadata.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_164();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F068B4();
  }

  return sub_1D5616328();
}

void CloudTVShow.Metadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED178, &qword_1D5623F28);
  OUTLINED_FUNCTION_4(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9();
  v22 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1D4FCEAAC();
  OUTLINED_FUNCTION_63_3();
  sub_1D5616398();
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D4FCEC6C();
    sub_1D5615F78();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4FCA778()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F068B4();
  }

  return sub_1D5616328();
}

uint64_t CloudTVShow.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_71();
}

uint64_t CloudTVShow.attributes.getter()
{
  v0 = *(OUTLINED_FUNCTION_94_4() + 20);
  OUTLINED_FUNCTION_14_22();
  return sub_1D4FCF044();
}

uint64_t static CloudTVShow.relationshipCodingKeys.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7ED028 = a1;
}

uint64_t (*static CloudTVShow.relationshipCodingKeys.modify())()
{
  OUTLINED_FUNCTION_159();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D4FCA964@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7ED028;
}

uint64_t sub_1D4FCA9B4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7ED028 = v1;
}

uint64_t CloudTVShow.views.getter()
{
  result = OUTLINED_FUNCTION_94_4();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t CloudTVShow.meta.getter()
{
  v2 = *(v1 + *(OUTLINED_FUNCTION_94_4() + 32));
  *v0 = v2;

  return sub_1D4E67688(v2);
}

uint64_t CloudTVShow.meta.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CloudTVShow(0) + 32);
  result = sub_1D4EA7410(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

double (*CloudTVShow.meta.modify())(void, void)
{
  v0 = OUTLINED_FUNCTION_64_1();
  v1 = *(type metadata accessor for CloudTVShow(v0) + 32);
  return nullsub_1;
}

uint64_t sub_1D4FCAB3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
  OUTLINED_FUNCTION_64_1();
  v0 = *(sub_1D5610088() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = sub_1D560FFE8();
  qword_1EDD588B8 = v3;
  return result;
}

void static CloudTVShow.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_106_0();
  v6 = type metadata accessor for CloudTVShow.Relationships(v5);
  v7 = OUTLINED_FUNCTION_14(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED198, &qword_1D5623F38);
  OUTLINED_FUNCTION_14(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31();
  v18 = *v1 == *v0 && v1[1] == v0[1];
  if (!v18 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_34;
  }

  v19 = type metadata accessor for CloudTVShow(0);
  OUTLINED_FUNCTION_90_5(v19);
  static CloudTVShow.Attributes.== infix(_:_:)();
  if ((v20 & 1) == 0)
  {
    goto LABEL_34;
  }

  v21 = v4[6];
  v22 = *(v14 + 48);
  sub_1D4F39AB0(v1 + v21, v2, &qword_1EC7ED190, &qword_1D5623F30);
  sub_1D4F39AB0(v0 + v21, v2 + v22, &qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_57(v2, 1, v6);
  if (!v18)
  {
    sub_1D4F39AB0(v2, v3, &qword_1EC7ED190, &qword_1D5623F30);
    OUTLINED_FUNCTION_57(v2 + v22, 1, v6);
    if (!v23)
    {
      OUTLINED_FUNCTION_16_21();
      sub_1D4FCEF48();
      static CloudTVShow.Relationships.== infix(_:_:)();
      v25 = v24;
      sub_1D4FCEDF8();
      sub_1D4FCEDF8();
      sub_1D4E50004(v2, &qword_1EC7ED190, &qword_1D5623F30);
      if ((v25 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_17;
    }

    OUTLINED_FUNCTION_15_24();
    sub_1D4FCEDF8();
LABEL_15:
    sub_1D4E50004(v2, &qword_1EC7ED198, &qword_1D5623F38);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_57(v2 + v22, 1, v6);
  if (!v18)
  {
    goto LABEL_15;
  }

  sub_1D4E50004(v2, &qword_1EC7ED190, &qword_1D5623F30);
LABEL_17:
  if (*(v1 + v4[7]) == *(v0 + v4[7]))
  {
    v26 = v4[8];
    v27 = *(v1 + v26);
    v28 = *(v0 + v26);
    if (v27 == 1)
    {
      sub_1D4E67688(1);
      if (v28 == 1)
      {
        sub_1D4E67688(1);
        sub_1D4EA7410(1);
        goto LABEL_34;
      }

      sub_1D4E67688(v28);
      goto LABEL_24;
    }

    if (v28 == 1)
    {
      sub_1D4E67688(v27);
      sub_1D4E67688(1);
      sub_1D4E67688(v27);

LABEL_24:
      sub_1D4EA7410(v27);
      v29 = v28;
LABEL_33:
      sub_1D4EA7410(v29);
      goto LABEL_34;
    }

    if (v27)
    {
      if (v28)
      {
        sub_1D4E67688(v27);
        sub_1D4E67688(v28);
        sub_1D4E67688(v27);
        sub_1D4E67688(v28);
        OUTLINED_FUNCTION_159();
        sub_1D4EF7D1C();
        v31 = v30;
        sub_1D4EA7410(v28);
        sub_1D4EA7410(v28);
        if (v31)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_1D4E67688(v27);
        sub_1D4E67688(0);
        sub_1D4E67688(v27);
      }
    }

    else
    {
      sub_1D4E67688(0);
      if (!v28)
      {
        sub_1D4E67688(0);
        sub_1D4E67688(0);
LABEL_36:

        sub_1D4EA7410(v27);
        goto LABEL_34;
      }

      sub_1D4E67688(v28);
      sub_1D4E67688(0);
      sub_1D4EA7410(v28);
    }

    v29 = v27;
    goto LABEL_33;
  }

LABEL_34:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FCAFE4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x7377656976;
      break;
    case 4:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FCB078(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D4FCB0CC(uint64_t a1)
{
  v2 = sub_1D4FCEE4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FCB108(uint64_t a1)
{
  v2 = sub_1D4FCEE4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudTVShow.encode(to:)(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1A0, &qword_1D5623F40);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  OUTLINED_FUNCTION_62_1();
  sub_1D4FCEE4C();
  OUTLINED_FUNCTION_132();
  v20 = *v4;
  v23 = v4[1];
  sub_1D4F89BA0();
  OUTLINED_FUNCTION_32_9();
  sub_1D56160C8();
  if (!v2)
  {
    v14 = type metadata accessor for CloudTVShow(0);
    v15 = v14[5];
    type metadata accessor for CloudTVShow.Attributes(0);
    OUTLINED_FUNCTION_38_16();
    sub_1D4FC6B3C(v16);
    OUTLINED_FUNCTION_8_1();
    sub_1D56160C8();
    v17 = v14[6];
    type metadata accessor for CloudTVShow.Relationships(0);
    OUTLINED_FUNCTION_37_14();
    sub_1D4FC6B3C(v18);
    OUTLINED_FUNCTION_8_1();
    sub_1D5616068();
    v21 = *(v4 + v14[7]);
    sub_1D4FCEEA0();
    OUTLINED_FUNCTION_32_9();
    sub_1D5616068();
    v22 = *(v4 + v14[8]);
    sub_1D4E67688(v22);
    sub_1D4FCEEF4();
    OUTLINED_FUNCTION_32_9();
    sub_1D5616068();
    sub_1D4EA7410(v22);
  }

  return (*(v8 + 8))(v3, v6);
}

void CloudTVShow.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
  v4 = OUTLINED_FUNCTION_4(v3);
  v38 = v5;
  v39 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v37 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_114();
  v14 = type metadata accessor for CloudTVShow.Relationships(0);
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v36 - v25;
  v27 = *v0;
  v28 = v0[1];
  sub_1D5614E28();
  v29 = type metadata accessor for CloudTVShow(0);
  OUTLINED_FUNCTION_90_5(v29);
  CloudTVShow.Attributes.hash(into:)();
  sub_1D4F39AB0(v0 + v1[6], v26, &qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_23_1(v26);
  if (v31)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_16_21();
    sub_1D4FCEF48();
    OUTLINED_FUNCTION_27();
    sub_1D4F39AB0(v20, v2, &qword_1EC7ECD90, &unk_1D5622F80);
    v30 = v39;
    OUTLINED_FUNCTION_57(v2, 1, v39);
    if (v31)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v33 = v37;
      v32 = v38;
      (*(v38 + 32))(v37, v2, v30);
      OUTLINED_FUNCTION_27();
      sub_1D4F8B4A0();
      OUTLINED_FUNCTION_104();
      sub_1D5614CB8();
      (*(v32 + 8))(v33, v30);
    }

    OUTLINED_FUNCTION_15_24();
    sub_1D4FCEDF8();
  }

  v34 = *(v0 + v1[7]);
  sub_1D56162F8();
  v35 = *(v0 + v1[8]);
  if (v35 == 1 || (OUTLINED_FUNCTION_27(), !v35))
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D4F068B4();
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FCB660(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_164();
  a1(v3);
  return sub_1D5616328();
}

void CloudTVShow.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v30 = v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v9 = type metadata accessor for CloudTVShow.Attributes(v8);
  v10 = OUTLINED_FUNCTION_14(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1D0, &qword_1D5623F48);
  OUTLINED_FUNCTION_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_114();
  v17 = type metadata accessor for CloudTVShow(0);
  v18 = OUTLINED_FUNCTION_14(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v31 = (v23 - v22);
  v32 = *(v21 + 32);
  *(v23 - v22 + v32) = 1;
  v24 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D4FCEE4C();
  sub_1D5616398();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1D4EA7410(*(v31 + v32));
  }

  else
  {
    sub_1D4F89C9C();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615FD8();
    *v31 = v33;
    v31[1] = v34;
    OUTLINED_FUNCTION_38_16();
    sub_1D4FC6B3C(v25);
    sub_1D5615FD8();
    v26 = v17[5];
    sub_1D4FCEF48();
    type metadata accessor for CloudTVShow.Relationships(0);
    LOBYTE(v33) = 2;
    OUTLINED_FUNCTION_37_14();
    sub_1D4FC6B3C(v27);
    sub_1D5615F78();
    sub_1D4F39A1C(v30, v31 + v17[6], &qword_1EC7ED190, &qword_1D5623F30);
    sub_1D4FCEF9C();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615F78();
    *(v31 + v17[7]) = 2;
    sub_1D4FCEFF0();
    OUTLINED_FUNCTION_52_2();
    sub_1D5615F78();
    v28 = OUTLINED_FUNCTION_26_18();
    v29(v28);
    sub_1D4EA7410(*(v31 + v32));
    *(v31 + v32) = v33;
    OUTLINED_FUNCTION_40_14();
    sub_1D4FCF044();
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_17_22();
    sub_1D4FCEDF8();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D4FCBB40(uint64_t a1)
{
  v2 = sub_1D4FC6B3C(&unk_1EC7ED2E0);

  return MEMORY[0x1EEDCE440](a1, v2);
}

uint64_t sub_1D4FCBC00(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

void TVShow.init<A>(_:configuration:sharedRelatedItemStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v255 = v23;
  v256 = v24;
  v254 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_13_3();
  v253 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD90, &unk_1D5622F80);
  OUTLINED_FUNCTION_22(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_3();
  v257 = v45;
  OUTLINED_FUNCTION_70_0();
  v46 = sub_1D5610788();
  v47 = OUTLINED_FUNCTION_4(v46);
  v251 = v48;
  v252 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  v249 = v51;
  OUTLINED_FUNCTION_70_0();
  v250 = sub_1D56107C8();
  v52 = OUTLINED_FUNCTION_4(v250);
  v248 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v63 = OUTLINED_FUNCTION_22(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13();
  v242 = v66;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v70 = OUTLINED_FUNCTION_22(v69);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_13();
  v244 = v73;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v76);
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v81);
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v85);
  v261 = type metadata accessor for CloudTVShow(0);
  v86 = OUTLINED_FUNCTION_14(v261);
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  v262 = v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v90);
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_9();
  v94 = type metadata accessor for TVShowPropertyProvider();
  v95 = OUTLINED_FUNCTION_14(v94);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5();
  v100 = v99 - v98;
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  v102 = v101;
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v101);
  v106 = v94[9];
  v107 = sub_1D5610978();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v107);
  v111 = v94[15];
  v112 = sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v112);
  v241 = v94[19];
  OUTLINED_FUNCTION_33();
  v258 = v107;
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v107);
  v119 = v94[20];
  sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
  v243 = v94[21];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v112);
  v127 = v94[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_33();
  v246 = v128;
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v128);
  if (qword_1EC7E95E8 != -1)
  {
    swift_once();
  }

  v132 = sub_1D560D9A8();
  __swift_project_value_buffer(v132, qword_1EC7F5D98);
  OUTLINED_FUNCTION_64_1();
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v133, v134, v135, v136);
  v137 = v94[25];
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD0, &qword_1D561F220);
  sub_1D56105B8();
  sub_1D4E50004(v20, &qword_1EC7EB5C0, &unk_1D56223C0);
  v260 = v94;
  v139 = v100 + v94[26];
  sub_1D5610658();
  v140 = sub_1D5610618();
  v142 = v141;
  v143 = sub_1D56105C8();
  v144 = sub_1D56105F8();
  v145 = sub_1D56105E8();
  v259 = v138;
  v146 = sub_1D56105A8();
  if (qword_1EC7E9800 != -1)
  {
    swift_once();
  }

  v147 = qword_1EC87C740;
  if (qword_1EC87C740 >> 62)
  {
    sub_1D560CDE8();

    v234 = sub_1D5615E18();

    v147 = v234;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v100 + v260[24]) = v147;
  v148 = (v100 + v260[27]);
  *v148 = v140;
  v148[1] = v142;
  *(v100 + v260[28]) = v143;
  *(v100 + v260[29]) = v144;
  *(v100 + v260[30]) = v145;
  *(v100 + v260[31]) = v146;
  sub_1D5610648();
  v149 = v262 + v261[5];
  sub_1D4F39AB0(v149, v237, &qword_1EC7EB5B8, &unk_1D56206A0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v151 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v151, v152, v150);
  if (v216)
  {
    sub_1D4E50004(v237, &qword_1EC7EB5B8, &unk_1D56206A0);
    v158 = 1;
    v159 = v239;
    v153 = v238;
  }

  else
  {
    v153 = v238;
    sub_1D5610758();
    OUTLINED_FUNCTION_24_0(v150);
    v155 = *(v154 + 8);
    v156 = OUTLINED_FUNCTION_159();
    v157(v156);
    v158 = 0;
    v159 = v239;
  }

  __swift_storeEnumTagSinglePayload(v153, v158, 1, v102);
  sub_1D4E68940(v153, v100, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v160 = type metadata accessor for CloudTVShow.Attributes(0);
  OUTLINED_FUNCTION_90_5(v160);
  v162 = *(v149 + v161);
  if (v162)
  {
    v162 = sub_1D511C2A4(v162);
  }

  *(v100 + v260[5]) = v162;
  v163 = *(v149 + v145[6]);
  if (v163)
  {
    v163 = sub_1D5259FF8(v163);
  }

  v164 = v260[7];
  *(v100 + v260[6]) = v163;
  *(v100 + v164) = *(v149 + v145[7]);
  v165 = *(v149 + v145[8]);

  if (v165)
  {
    v166 = sub_1D50C4BD4(v165);
  }

  else
  {
    v166 = 0;
  }

  *(v100 + v260[8]) = v166;
  sub_1D4F39AB0(v149 + v145[9], v159, &qword_1EC7EC960, &unk_1D56334C0);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_23_1(v159);
  if (v216)
  {
    sub_1D4E50004(v159, &qword_1EC7EC960, &unk_1D56334C0);
    v172 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0(v167);
    v169 = *(v168 + 8);
    v170 = OUTLINED_FUNCTION_184();
    v171(v170);
    v172 = 0;
  }

  __swift_storeEnumTagSinglePayload(v240, v172, 1, v258);
  v173 = v260[10];
  v174 = v100 + v260[11];
  v175 = v260[12];
  v176 = v260[13];
  v177 = v260[14];
  OUTLINED_FUNCTION_61_2(&v264);
  sub_1D4E68940(v178, v179, v180, v181);
  *(v100 + v173) = *(v149 + v145[10]);
  v182 = v149 + v145[11];
  v183 = *v182;
  LOBYTE(v182) = *(v182 + 8);
  *v174 = v183;
  *(v174 + 8) = v182;
  *(v100 + v175) = *(v149 + v145[12]);
  *(v100 + v176) = *(v149 + v145[13]);
  *(v100 + v177) = *(v149 + v145[14]);
  v184 = v145[15];

  OUTLINED_FUNCTION_61_2(v265);
  sub_1D4F89DEC(v185, v186);
  v187 = *(v149 + v145[16]);
  if (v187)
  {
    v187 = sub_1D54FEF40(v187);
  }

  v188 = (v100 + v260[17]);
  *(v100 + v260[16]) = v187;
  v189 = (v149 + v145[17]);
  v190 = v189[1];
  *v188 = *v189;
  v188[1] = v190;
  v191 = *(v149 + v145[18]);

  if (v191)
  {
    v192 = sub_1D50C4BD4(v191);
  }

  else
  {
    v192 = 0;
  }

  *(v100 + v260[18]) = v192;
  sub_1D4F39AB0(v149 + v145[19], v242, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_23_1(v242);
  if (v216)
  {
    sub_1D4E50004(v242, &qword_1EC7EC960, &unk_1D56334C0);
    v194 = 1;
  }

  else
  {
    sub_1D5610738();
    OUTLINED_FUNCTION_24_0(v167);
    (*(v193 + 8))(v242, v167);
    v194 = 0;
  }

  __swift_storeEnumTagSinglePayload(v244, v194, 1, v258);
  OUTLINED_FUNCTION_61_2(&a9);
  sub_1D4E68940(v244, v195, v196, v197);
  sub_1D56107A8();
  v198 = (v149 + v145[20]);
  v199 = *v198;
  v200 = v198[1];
  (*(v251 + 104))(v249, *MEMORY[0x1E6975DC8], v252);
  OUTLINED_FUNCTION_71();
  sub_1D5610798();
  (*(v251 + 8))(v249, v252);
  (*(v248 + 8))(v247, v250);
  OUTLINED_FUNCTION_61_2(&a12);
  sub_1D4E68940(v245, v201, v202, v203);
  v204 = v149 + v145[21];
  OUTLINED_FUNCTION_61_2(&a11);
  sub_1D4F89DEC(v205, v206);
  sub_1D4F39AB0(v262 + v261[6], v253, &qword_1EC7ED190, &qword_1D5623F30);
  type metadata accessor for CloudTVShow.Relationships(0);
  v207 = OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_57(v207, 1, v208);
  if (v216)
  {
    sub_1D4E50004(v253, &qword_1EC7ED190, &qword_1D5623F30);
    v209 = 1;
    v211 = v255;
    v210 = v256;
    v212 = v260;
  }

  else
  {
    sub_1D4F39AB0(v253, v236, &qword_1EC7ECD90, &unk_1D5622F80);
    OUTLINED_FUNCTION_15_24();
    sub_1D4FCEDF8();
    v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    v214 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v214, v215, v213);
    v211 = v255;
    v210 = v256;
    if (v216)
    {
      sub_1D4E50004(v236, &qword_1EC7ECD90, &unk_1D5622F80);
      v209 = 1;
    }

    else
    {
      sub_1D560CD98();
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v217, v218, v219, v220);
      type metadata accessor for TVSeason();
      sub_1D4FC6B3C(&qword_1EC7ECC90);
      OUTLINED_FUNCTION_36_11();
      sub_1D4FC6B3C(v221);
      sub_1D5612368();
      sub_1D4E50004(v235, &qword_1EC7EA7D8, &unk_1D561E8B0);
      OUTLINED_FUNCTION_24_0(v213);
      v223 = *(v222 + 8);
      v224 = OUTLINED_FUNCTION_159();
      v225(v224);
      v209 = 0;
    }

    v212 = v260;
  }

  __swift_storeEnumTagSinglePayload(v257, v209, 1, v246);
  OUTLINED_FUNCTION_61_2(&a16);
  sub_1D4E68940(v257, v226, v227, v228);
  v229 = v261[8];
  v230 = *(v262 + v229);
  if (v230 == 1)
  {
    v231 = 0;
  }

  else
  {
    v231 = *(v262 + v229);
  }

  *(v100 + v212[23]) = v231;
  v265[0] = v212;
  v265[1] = sub_1D4FC6B3C(&qword_1EC7ED200);
  __swift_allocate_boxed_opaque_existential_0(v263);
  sub_1D4FCF044();
  sub_1D4E67688(v230);
  TVShow.init(propertyProvider:)(v263, v254);

  OUTLINED_FUNCTION_24_0(v210);
  (*(v232 + 8))(v211, v210);
  OUTLINED_FUNCTION_24_0(v259);
  (*(v233 + 8))();
  OUTLINED_FUNCTION_17_22();
  sub_1D4FCEDF8();
  sub_1D4FCEDF8();
  OUTLINED_FUNCTION_46();
}

void TVShow.convertToCloudResource<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  v235 = v26;
  v234 = v27;
  v233 = v28;
  v267[1] = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v267[0] = v34;
  OUTLINED_FUNCTION_70_0();
  v35 = sub_1D5610088();
  v36 = OUTLINED_FUNCTION_22(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v266 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  v261 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_3();
  v260 = v49;
  OUTLINED_FUNCTION_70_0();
  v50 = sub_1D5612B78();
  v51 = OUTLINED_FUNCTION_4(v50);
  v264 = v52;
  v265 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  v263 = v55;
  v56 = OUTLINED_FUNCTION_70_0();
  v262 = type metadata accessor for CloudTVShow(v56);
  v57 = OUTLINED_FUNCTION_14(v262);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13();
  v270 = v60;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13_2();
  v259 = v62;
  OUTLINED_FUNCTION_70_0();
  v232 = sub_1D5613578();
  v63 = OUTLINED_FUNCTION_4(v232);
  v231 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED1F8, &qword_1D5634780);
  OUTLINED_FUNCTION_22(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_3();
  v256 = v72;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_4(v258);
  v228 = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_13_3();
  v257 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED190, &qword_1D5623F30);
  v79 = OUTLINED_FUNCTION_22(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13();
  v229 = v82;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_13_2();
  v271 = v84;
  OUTLINED_FUNCTION_70_0();
  v254 = sub_1D5610788();
  v85 = OUTLINED_FUNCTION_4(v254);
  v253 = v86;
  v88 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v89);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v90);
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v94);
  v251 = sub_1D56107C8();
  v95 = OUTLINED_FUNCTION_4(v251);
  v249 = v96;
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v100);
  v102 = *(v101 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v103);
  v105 = &v227 - v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v107 = OUTLINED_FUNCTION_22(v106);
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_13();
  v255 = v110;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v227 - v112;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v115 = OUTLINED_FUNCTION_22(v114);
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_13();
  v269 = v118;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_13_2();
  v268 = v120;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v121);
  v123 = *(v122 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_114();
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v125);
  v127 = *(v126 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_47_5();
  v129 = type metadata accessor for CloudTVShow.Attributes(0);
  v130 = OUTLINED_FUNCTION_14(v129);
  v132 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_5_0();
  v272 = v133;
  if (qword_1EC7E9538 != -1)
  {
    swift_once();
  }

  v134 = sub_1D56140F8();
  sub_1D4FC6B3C(&qword_1EC7EA688);
  sub_1D4FC6B3C(&qword_1EC7EC4A0);
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_23_1(v22);
  if (v135)
  {
    sub_1D4E50004(v22, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  else
  {
    sub_1D5613F28();
    OUTLINED_FUNCTION_24_0(v134);
    (*(v136 + 8))(v22, v134);
  }

  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_16(v137);
  if (qword_1EC7E9540 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_19_21();
  v138 = MEMORY[0x1E69E7CC0];
  if (v273)
  {
    v139 = v273;
  }

  else
  {
    v139 = MEMORY[0x1E69E7CC0];
  }

  v140 = sub_1D511C730(v139);
  OUTLINED_FUNCTION_81_6(v140, &a10);
  if (qword_1EC7E9598 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED208, &unk_1D5623F80);
  OUTLINED_FUNCTION_19_21();
  if (v273)
  {
    v141 = sub_1D525AA6C(v273);
    OUTLINED_FUNCTION_81_6(v141, &a9);
  }

  else
  {
    v246 = 0;
  }

  if (qword_1EC7E9548 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  OUTLINED_FUNCTION_19_21();
  v245 = v273;
  if (qword_1EC7E95A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED210, &unk_1D5637540);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_27_15();
  if (v273)
  {
    v142 = v273;
  }

  else
  {
    v142 = v138;
  }

  v143 = sub_1D50C4F58(v142);
  OUTLINED_FUNCTION_81_6(v143, v274);
  if (qword_1EC7E9550 != -1)
  {
    swift_once();
  }

  v247 = v20;
  v144 = sub_1D5610978();
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_23_1(v113);
  if (v135)
  {
    sub_1D4E50004(v113, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0(v144);
    (*(v145 + 8))(v113, v144);
  }

  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_16(v146);
  sub_1D4F84AE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
  OUTLINED_FUNCTION_27_15();

  v244 = v273;
  if (qword_1EC7E9558 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_27_15();
  v147 = v273;
  if (v274[0])
  {
    v147 = 0;
  }

  v243 = v147;
  v148 = v255;
  if (qword_1EC7E9560 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  OUTLINED_FUNCTION_19_21();
  v242 = v273;
  if (qword_1EC7E9568 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_27_15();
  v238 = v273;
  if (qword_1EC7E9570 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_27_15();
  LODWORD(v237) = v273;
  if (qword_1EC7E95B0 != -1)
  {
    swift_once();
  }

  v149 = v105;
  v241 = sub_1D560C0A8();
  OUTLINED_FUNCTION_27_15();
  if (qword_1EC7E9578 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED218, &qword_1D5623F90);
  OUTLINED_FUNCTION_19_21();
  v150 = MEMORY[0x1E69E7CC0];
  if (v273)
  {
    v151 = v273;
  }

  else
  {
    v151 = MEMORY[0x1E69E7CC0];
  }

  v152 = sub_1D54FF0E8(v151);
  OUTLINED_FUNCTION_81_6(v152, &v270);
  v240 = TVShow.name.getter();
  v239 = v153;
  if (qword_1EC7E95B8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_27_15();
  if (v273)
  {
    v154 = v273;
  }

  else
  {
    v154 = v150;
  }

  v155 = sub_1D50C4F58(v154);
  OUTLINED_FUNCTION_81_6(v155, v267);
  if (qword_1EC7E95C0 != -1)
  {
    swift_once();
  }

  v156 = v25;
  sub_1D560EC28();
  OUTLINED_FUNCTION_23_1(v148);
  if (v135)
  {
    sub_1D4E50004(v148, &qword_1EC7EAC98, &unk_1D561DA80);
    v159 = 1;
    v157 = v269;
  }

  else
  {
    v157 = v269;
    sub_1D5610918();
    OUTLINED_FUNCTION_24_0(v144);
    (*(v158 + 8))(v148, v144);
    v159 = 0;
  }

  v255 = v149;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  __swift_storeEnumTagSinglePayload(v157, v159, 1, v160);
  v236 = v238 & 1;
  v238 = v237 & 1;
  v161 = v248;
  sub_1D56107A8();
  if (qword_1EC7E9588 != -1)
  {
    swift_once();
  }

  sub_1D560C328();
  v162 = v250;
  v163 = v156;
  sub_1D560EC28();
  v164 = v253;
  v165 = v252;
  v166 = v254;
  (*(v253 + 104))(v252, *MEMORY[0x1E6975DC8], v254);
  OUTLINED_FUNCTION_128();
  v167 = v161;
  v168 = sub_1D56107B8();
  v237 = v169;
  (*(v164 + 8))(v165, v166);
  sub_1D4E50004(v162, &qword_1EC7EA3B8, &unk_1D561E370);
  (*(v249 + 8))(v167, v251);
  if (qword_1EC7E9590 != -1)
  {
    swift_once();
  }

  v170 = v272;
  v171 = v272 + v129[21];
  sub_1D560EC28();
  if (v242)
  {
    v172 = v242;
  }

  else
  {
    v172 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4F39A1C(v247, v170, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_148_1(v129[5]);
  OUTLINED_FUNCTION_148_1(v129[6]);
  OUTLINED_FUNCTION_148_1(v129[7]);
  OUTLINED_FUNCTION_148_1(v129[8]);
  sub_1D4F39A1C(v268, v170 + v129[9], &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_148_1(v129[10]);
  v173 = v170 + v129[11];
  *v173 = v243;
  *(v173 + 8) = 0;
  *(v170 + v129[12]) = v172;
  *(v170 + v129[13]) = v236;
  *(v170 + v129[14]) = v238;
  sub_1D4F39A1C(v255, v170 + v129[15], &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_148_1(v129[16]);
  v174 = (v170 + v129[17]);
  v175 = v239;
  *v174 = v240;
  v174[1] = v175;
  OUTLINED_FUNCTION_148_1(v129[18]);
  sub_1D4F39A1C(v269, v170 + v129[19], &qword_1EC7EC960, &unk_1D56334C0);
  v176 = (v170 + v129[20]);
  v177 = v237;
  *v176 = v168;
  v176[1] = v177;
  v178 = type metadata accessor for CloudTVShow.Relationships(0);
  v179 = v271;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v178);
  if (qword_1EC7E95C8 != -1)
  {
    swift_once();
  }

  v183 = v256;
  v184 = v258;
  sub_1D560EC28();
  OUTLINED_FUNCTION_23_1(v183);
  if (v135)
  {
    sub_1D4E50004(v183, &qword_1EC7ED1F8, &qword_1D5634780);
  }

  else
  {
    v185 = v228;
    (*(v228 + 32))(v257, v183, v184);
    type metadata accessor for TVSeason();
    v269 = v178;
    sub_1D4FC6B3C(&qword_1EC7ECC90);
    OUTLINED_FUNCTION_36_11();
    sub_1D4FC6B3C(v186);
    v187 = v230;
    sub_1D4F1ABE8(v230);
    sub_1D560DA98();
    (*(v231 + 8))(v187, v232);
    v188 = *(v185 + 8);
    v189 = OUTLINED_FUNCTION_184();
    v190(v189);
    v179 = v271;
    v191 = OUTLINED_FUNCTION_71();
    sub_1D4E50004(v191, v192, &qword_1D5623F30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD88, &qword_1D5622F78);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v193, v194, v195, v196);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v197, v198, v199, v269);
    v200 = OUTLINED_FUNCTION_98();
    sub_1D4F39A1C(v200, v201, &qword_1EC7ED190, &qword_1D5623F30);
  }

  v202 = type metadata accessor for TVShow();
  sub_1D4FC6B3C(&qword_1EC7ED220);
  v203 = sub_1D560CBD8();
  if (v203 <= 1)
  {
    v204 = 1;
  }

  else
  {
    v204 = v203;
  }

  v206 = *v163;
  v205 = v163[1];
  v207 = v262;
  v208 = v262[5];
  OUTLINED_FUNCTION_14_22();
  v209 = v259;
  sub_1D4FCF044();
  sub_1D4F39AB0(v179, v209 + v207[6], &qword_1EC7ED190, &qword_1D5623F30);
  *v209 = v206;
  v209[1] = v205;
  *(v209 + v207[7]) = 1;
  *(v209 + v207[8]) = v204;
  v210 = *(v202 + 20);

  sub_1D5611A28();
  sub_1D560D838();
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v211, v212, v213, v214);
  sub_1D5611C98();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v215, v216, v217, v218);
  v219 = v263;
  sub_1D5612B38();
  OUTLINED_FUNCTION_40_14();
  sub_1D4FCF044();
  sub_1D5611A98();
  v220 = sub_1D5611A88();
  v268 = v221;
  v269 = v220;
  v223 = v264;
  v222 = v265;
  (*(v264 + 16))(v267[0], v219, v265);
  OUTLINED_FUNCTION_64_0();
  __swift_storeEnumTagSinglePayload(v224, v225, v226, v222);
  v261 = sub_1D5611A38();
  v260 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D4FC6B3C(&qword_1EC7ED228);
  sub_1D5610628();
  (*(v223 + 8))(v219, v222);
  OUTLINED_FUNCTION_17_22();
  sub_1D4FCEDF8();
  sub_1D4E50004(v271, &qword_1EC7ED190, &qword_1D5623F30);
  OUTLINED_FUNCTION_13_27();
  sub_1D4FCEDF8();
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FCE12C()
{
  sub_1D4FC6B3C(&qword_1EC7ECBB0);

  return sub_1D5612668();
}

uint64_t sub_1D4FCE198(uint64_t a1)
{
  v2 = sub_1D4FC6B3C(&unk_1EC7ED2D8);

  return MEMORY[0x1EEDCE440](a1, v2);
}

unint64_t sub_1D4FCE204()
{
  result = qword_1EC7ED0C8;
  if (!qword_1EC7ED0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED048, &unk_1D56285A0);
    sub_1D4FCE290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED0C8);
  }

  return result;
}

unint64_t sub_1D4FCE290()
{
  result = qword_1EC7ED0D0;
  if (!qword_1EC7ED0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED060, &qword_1D5623EC0);
    sub_1D4FCE314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED0D0);
  }

  return result;
}

unint64_t sub_1D4FCE314()
{
  result = qword_1EC7ED0D8;
  if (!qword_1EC7ED0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB160, &qword_1D561DEE0);
    sub_1D4FC6B3C(&unk_1EC7ED070);
    sub_1D4FC6B3C(&unk_1EC7ED078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED0D8);
  }

  return result;
}

unint64_t sub_1D4FCE3FC()
{
  result = qword_1EDD528F8;
  if (!qword_1EDD528F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D4F886BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD528F8);
  }

  return result;
}

unint64_t sub_1D4FCE488()
{
  result = qword_1EDD52928;
  if (!qword_1EDD52928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED080, &qword_1D5623EC8);
    sub_1D4FCE514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52928);
  }

  return result;
}

unint64_t sub_1D4FCE514()
{
  result = qword_1EDD53240;
  if (!qword_1EDD53240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
    sub_1D4FC6B3C(&unk_1EDD56910);
    sub_1D4FC6B3C(&unk_1EDD56918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53240);
  }

  return result;
}

unint64_t sub_1D4FCE5FC()
{
  result = qword_1EDD52908;
  if (!qword_1EDD52908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D4F88B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52908);
  }

  return result;
}

unint64_t sub_1D4FCE688()
{
  result = qword_1EC7ED0F8;
  if (!qword_1EC7ED0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD88, &qword_1D5622F78);
    sub_1D4F36FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED0F8);
  }

  return result;
}

unint64_t sub_1D4FCE70C()
{
  result = qword_1EC7ED108;
  if (!qword_1EC7ED108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED108);
  }

  return result;
}

unint64_t sub_1D4FCE760()
{
  result = qword_1EC7ED110;
  if (!qword_1EC7ED110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD88, &qword_1D5622F78);
    sub_1D4FCE7E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED110);
  }

  return result;
}

unint64_t sub_1D4FCE7E4()
{
  result = qword_1EC7ED118;
  if (!qword_1EC7ED118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAA8, &unk_1D56223D0);
    sub_1D4FC6B3C(&unk_1EDD577F0);
    sub_1D4FC6B3C(&unk_1EDD577F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED118);
  }

  return result;
}

unint64_t sub_1D4FCE8EC()
{
  result = qword_1EC7ED128;
  if (!qword_1EC7ED128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECD88, &qword_1D5622F78);
    sub_1D4FCE970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED128);
  }

  return result;
}

unint64_t sub_1D4FCE970()
{
  result = qword_1EDD532E8;
  if (!qword_1EDD532E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAA8, &unk_1D56223D0);
    sub_1D4FC6B3C(&unk_1EDD577F0);
    sub_1D4FC6B3C(&unk_1EDD577F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD532E8);
  }

  return result;
}

unint64_t sub_1D4FCEA58()
{
  result = qword_1EC7ED138;
  if (!qword_1EC7ED138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED138);
  }

  return result;
}

unint64_t sub_1D4FCEAAC()
{
  result = qword_1EC7ED148;
  if (!qword_1EC7ED148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED148);
  }

  return result;
}

unint64_t sub_1D4FCEB00()
{
  result = qword_1EC7ED158;
  if (!qword_1EC7ED158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D4FCEB84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED158);
  }

  return result;
}

unint64_t sub_1D4FCEB84()
{
  result = qword_1EC7ED160;
  if (!qword_1EC7ED160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA618, &unk_1D561C520);
    sub_1D4FC6B3C(&unk_1EC7ED168);
    sub_1D4FC6B3C(&unk_1EC7ED170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED160);
  }

  return result;
}

unint64_t sub_1D4FCEC6C()
{
  result = qword_1EC7ED180;
  if (!qword_1EC7ED180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED150, &unk_1D565B6C0);
    sub_1D4FCECF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED180);
  }

  return result;
}

unint64_t sub_1D4FCECF0()
{
  result = qword_1EC7ED188;
  if (!qword_1EC7ED188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA618, &unk_1D561C520);
    sub_1D4FC6B3C(&unk_1EC7ED168);
    sub_1D4FC6B3C(&unk_1EC7ED170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED188);
  }

  return result;
}

uint64_t sub_1D4FCEDF8()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1D4FCEE4C()
{
  result = qword_1EC7ED1A8;
  if (!qword_1EC7ED1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED1A8);
  }

  return result;
}

unint64_t sub_1D4FCEEA0()
{
  result = qword_1EC7ED1C0;
  if (!qword_1EC7ED1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED1C0);
  }

  return result;
}

unint64_t sub_1D4FCEEF4()
{
  result = qword_1EC7ED1C8;
  if (!qword_1EC7ED1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED1C8);
  }

  return result;
}

uint64_t sub_1D4FCEF48()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

unint64_t sub_1D4FCEF9C()
{
  result = qword_1EC7ED1E8;
  if (!qword_1EC7ED1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED1E8);
  }

  return result;
}

unint64_t sub_1D4FCEFF0()
{
  result = qword_1EC7ED1F0;
  if (!qword_1EC7ED1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED1F0);
  }

  return result;
}

uint64_t sub_1D4FCF044()
{
  v1 = OUTLINED_FUNCTION_106_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_14(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_71();
  v7(v6);
  return v0;
}

unint64_t sub_1D4FCF0E4()
{
  result = qword_1EC7ED238;
  if (!qword_1EC7ED238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED238);
  }

  return result;
}

unint64_t sub_1D4FCF13C()
{
  result = qword_1EC7ED240;
  if (!qword_1EC7ED240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED240);
  }

  return result;
}

unint64_t sub_1D4FCF194()
{
  result = qword_1EC7ED248;
  if (!qword_1EC7ED248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED248);
  }

  return result;
}

unint64_t sub_1D4FCF1EC()
{
  result = qword_1EC7ED250;
  if (!qword_1EC7ED250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED258, &qword_1D5624140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED250);
  }

  return result;
}

unint64_t sub_1D4FCF29C()
{
  result = qword_1EC7ED268;
  if (!qword_1EC7ED268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED268);
  }

  return result;
}

unint64_t sub_1D4FCF2F4()
{
  result = qword_1EC7ED270;
  if (!qword_1EC7ED270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED270);
  }

  return result;
}

void sub_1D4FCF57C()
{
  type metadata accessor for CloudTVShow.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_1D4FCF9B0(319, &qword_1EDD58870, type metadata accessor for CloudTVShow.Relationships);
    if (v1 <= 0x3F)
    {
      sub_1D4E518A0(319, qword_1EDD588C0);
      if (v2 <= 0x3F)
      {
        sub_1D4E518A0(319, qword_1EDD58810);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D4FCF6A4()
{
  sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD528D8, &qword_1EC7ED048, &unk_1D56285A0);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_1D4E6D600(319, &qword_1EDD52920, &qword_1EC7ED080, &qword_1D5623EC8);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
            if (v12 > 0x3F)
            {
              return v11;
            }

            else
            {
              sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
              if (v14 > 0x3F)
              {
                return v13;
              }

              sub_1D4E518A0(319, &qword_1EDD52708);
              if (v15 > 0x3F)
              {
                return v13;
              }

              sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
              if (v16 > 0x3F)
              {
                return v13;
              }

              sub_1D4E518A0(319, &qword_1EDD5F550);
              if (v17 > 0x3F)
              {
                return v13;
              }

              sub_1D4FCF9B0(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
              if (v19 > 0x3F)
              {
                return v18;
              }

              sub_1D4E6D600(319, &qword_1EDD527B0, &qword_1EC7ED098, &unk_1D5623EE0);
              if (v20 > 0x3F)
              {
                return v13;
              }

              sub_1D4E518A0(319, &qword_1EDD5F070);
              if (v21 > 0x3F)
              {
                return v13;
              }

              else
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1D4FCF9B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D4FCFA2C()
{
  sub_1D4E6D600(319, &qword_1EC7ED278, &qword_1EC7ECD88, &qword_1D5622F78);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D4FCFAD0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D4FCFB24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

_BYTE *storeEnumTagSinglePayload for CloudTVShow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D4FCFC60(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CloudTVShow.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudTVShow.Attributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4FCFE84()
{
  result = qword_1EC7ED280;
  if (!qword_1EC7ED280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED280);
  }

  return result;
}

unint64_t sub_1D4FCFEDC()
{
  result = qword_1EC7ED288;
  if (!qword_1EC7ED288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED288);
  }

  return result;
}

unint64_t sub_1D4FCFF34()
{
  result = qword_1EC7ED290;
  if (!qword_1EC7ED290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED290);
  }

  return result;
}

unint64_t sub_1D4FCFF8C()
{
  result = qword_1EC7ED298;
  if (!qword_1EC7ED298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED298);
  }

  return result;
}

unint64_t sub_1D4FCFFE4()
{
  result = qword_1EC7ED2A0;
  if (!qword_1EC7ED2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2A0);
  }

  return result;
}

unint64_t sub_1D4FD003C()
{
  result = qword_1EC7ED2A8;
  if (!qword_1EC7ED2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2A8);
  }

  return result;
}

unint64_t sub_1D4FD0094()
{
  result = qword_1EC7ED2B0;
  if (!qword_1EC7ED2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2B0);
  }

  return result;
}

unint64_t sub_1D4FD00EC()
{
  result = qword_1EC7ED2B8;
  if (!qword_1EC7ED2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2B8);
  }

  return result;
}

unint64_t sub_1D4FD0144()
{
  result = qword_1EC7ED2C0;
  if (!qword_1EC7ED2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2C0);
  }

  return result;
}

unint64_t sub_1D4FD019C()
{
  result = qword_1EC7ED2C8;
  if (!qword_1EC7ED2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2C8);
  }

  return result;
}

unint64_t sub_1D4FD01F4()
{
  result = qword_1EC7ED2D0;
  if (!qword_1EC7ED2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_28()
{
  v2 = *(v0 + 8);
  result = *(v1 - 136);
  v4 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_81_6@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
}

uint64_t OUTLINED_FUNCTION_91_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_94_4()
{

  return type metadata accessor for CloudTVShow(0);
}

uint64_t MusicItem<>.with(_:preferredSource:includeOnlyDownloadedContent:)()
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v1[1] = sub_1D4E6ED20;
  OUTLINED_FUNCTION_73_0();

  return MusicItem<>.with(_:preferredSource:includeOnlyDownloadedContent:)();
}

{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_24();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_40(v3);
  OUTLINED_FUNCTION_73_0();

  return MusicItem<>.with(_:preferredSource:options:)();
}

uint64_t sub_1D4FD0428()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v12();
  }
}

uint64_t sub_1D4FD053C()
{
  OUTLINED_FUNCTION_55();
  v1 = *(v0 + 24);
  return v2();
}

uint64_t MusicItem<>.with(_:preferredSource:options:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  *(v1 + 32) = v7;
  *(v1 + 40) = v8;
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  v11 = sub_1D560CBA8();
  *(v1 + 80) = v11;
  OUTLINED_FUNCTION_69(v11);
  *(v1 + 88) = v12;
  v14 = *(v13 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();
  v15 = sub_1D560D838();
  *(v1 + 104) = v15;
  OUTLINED_FUNCTION_69(v15);
  *(v1 + 112) = v16;
  v18 = *(v17 + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED2E8, &qword_1D5624AE8) - 8) + 64) + 15;
  *(v1 + 128) = swift_task_alloc();
  v20 = sub_1D560DE08();
  *(v1 + 136) = v20;
  OUTLINED_FUNCTION_69(v20);
  *(v1 + 144) = v21;
  v23 = *(v22 + 64) + 15;
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 192) = *v3;
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_2_24();
  *(v0 + 32) = *v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_32(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_0_40(v3);
  OUTLINED_FUNCTION_73_0();

  return MusicItem<>.with(_:preferredSource:options:)();
}

uint64_t sub_1D4FD0720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 128);
  v14 = *(v12 + 136);
  sub_1D4FD0B78(*(v12 + 32), v13);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v16 = *(v12 + 168);
  v17 = *(v12 + 136);
  v18 = *(v12 + 144);
  v19 = *(v12 + 128);
  if (EnumTagSinglePayload == 1)
  {
    v20 = *(v12 + 152);
    v22 = *(v12 + 112);
    v21 = *(v12 + 120);
    a9 = *(v12 + 104);
    v23 = *(v12 + 72);
    v25 = *(v12 + 40);
    v24 = *(v12 + 48);
    sub_1D4FD0BE8(v19);
    sub_1D560EC98();
    LOBYTE(v23) = sub_1D560D668();
    (*(v22 + 8))(v21, a9);
    v26 = MEMORY[0x1E69750B0];
    if ((v23 & 1) == 0)
    {
      v26 = MEMORY[0x1E69750A8];
    }

    (*(v18 + 104))(v20, *v26, v17);
    (*(v18 + 32))(v16, v20, v17);
  }

  else
  {
    v27 = *(v12 + 160);
    v28 = *(v18 + 32);
    v28(v27, v19, *(v12 + 136));
    v28(v16, v27, v17);
  }

  v29 = *(v12 + 192);
  v30 = *(v12 + 96);
  sub_1D560CB88();
  v31 = *(MEMORY[0x1E6975420] + 4);
  v32 = swift_task_alloc();
  *(v12 + 176) = v32;
  *v32 = v12;
  v32[1] = sub_1D4FD08F0;
  v33 = *(v12 + 168);
  v34 = *(v12 + 96);
  v35 = *(v12 + 64);
  v36 = *(v12 + 72);
  v37 = *(v12 + 48);
  v38 = *(v12 + 56);
  v39 = *(v12 + 40);
  v40 = *(v12 + 16);
  v41 = *(v12 + 24);
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEDCF238](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12);
}

uint64_t sub_1D4FD08F0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4FD09E8()
{
  v3 = OUTLINED_FUNCTION_3_27();
  v4(v3);
  (*(v2 + 8))(v0, v1);

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D4FD0AB0()
{
  v4 = OUTLINED_FUNCTION_3_27();
  v5(v4);
  (*(v3 + 8))(v0, v2);

  OUTLINED_FUNCTION_55();
  v7 = *(v1 + 184);

  return v6();
}

uint64_t sub_1D4FD0B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED2E8, &qword_1D5624AE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FD0BE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED2E8, &qword_1D5624AE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4FD0CF4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v12();
  }
}

uint64_t MusicRelationshipProperty.limit(_:)()
{
  v0 = sub_1D560CDD8();

  sub_1D560D0B8();

  return v0;
}

uint64_t MovieClip.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MovieClip.duration.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t type metadata accessor for MovieClip()
{
  result = qword_1EDD545E0;
  if (!qword_1EDD545E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MovieClip.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D56140F8();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v83 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_14(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v79 - v21;
  v22 = sub_1D560C0A8();
  v23 = OUTLINED_FUNCTION_4(v22);
  v86 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v79 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v79 - v40;
  v42 = *(a1 + 8);
  v43 = *(a2 + 8);
  if (v42)
  {
    if (!v43)
    {
      goto LABEL_36;
    }

    v44 = *a1 == *a2 && v42 == v43;
    if (!v44 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_10:
    v45 = *(a2 + 24);
    if (*(a1 + 24))
    {
      if (!*(a2 + 24))
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (*(a1 + 16) != *(a2 + 16))
      {
        v45 = 1;
      }

      if (v45)
      {
        goto LABEL_36;
      }
    }

    v80 = v4;
    v81 = v7;
    v46 = type metadata accessor for MovieClip();
    v82 = a2;
    v79 = v46;
    v47 = *(v46 + 24);
    v48 = *(v36 + 48);
    sub_1D4F1C460(a1 + v47, v41, &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D4F1C460(v82 + v47, &v41[v48], &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_57(v41, 1, v22);
    if (v44)
    {
      OUTLINED_FUNCTION_57(&v41[v48], 1, v22);
      v49 = v81;
      if (v44)
      {
        sub_1D4E50004(v41, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_26:
        v59 = v79;
        v60 = *(v79 + 28);
        v61 = *(v17 + 48);
        v62 = v85;
        sub_1D4F1C460(a1 + v60, v85, &qword_1EC7E9CA0, &unk_1D561A0C0);
        v63 = v82 + v60;
        v64 = v82;
        sub_1D4F1C460(v63, v62 + v61, &qword_1EC7E9CA0, &unk_1D561A0C0);
        v65 = v80;
        OUTLINED_FUNCTION_57(v62, 1, v80);
        if (v44)
        {
          OUTLINED_FUNCTION_57(v62 + v61, 1, v65);
          if (v44)
          {
            sub_1D4E50004(v62, &qword_1EC7E9CA0, &unk_1D561A0C0);
            goto LABEL_39;
          }
        }

        else
        {
          v66 = v84;
          sub_1D4F1C460(v62, v84, &qword_1EC7E9CA0, &unk_1D561A0C0);
          OUTLINED_FUNCTION_57(v62 + v61, 1, v65);
          if (!v67)
          {
            v70 = v62 + v61;
            v71 = v83;
            (*(v49 + 32))(v83, v70, v65);
            OUTLINED_FUNCTION_0_41();
            sub_1D4FD2544(v72, v73);
            v74 = sub_1D5614D18();
            v75 = *(v49 + 8);
            v75(v71, v65);
            v75(v66, v65);
            v64 = v82;
            sub_1D4E50004(v62, &qword_1EC7E9CA0, &unk_1D561A0C0);
            if ((v74 & 1) == 0)
            {
              goto LABEL_36;
            }

LABEL_39:
            v76 = *(v59 + 32);
            v77 = *(a1 + v76);
            v78 = *(v64 + v76);
            sub_1D4F286E0();
            return v68 & 1;
          }

          (*(v49 + 8))(v66, v65);
        }

        v51 = &qword_1EC7E9FB8;
        v52 = &unk_1D561B9C0;
        v53 = v62;
        goto LABEL_35;
      }
    }

    else
    {
      sub_1D4F1C460(v41, v35, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_57(&v41[v48], 1, v22);
      if (!v50)
      {
        v54 = v86;
        (*(v86 + 32))(v29, &v41[v48], v22);
        OUTLINED_FUNCTION_1_41();
        sub_1D4FD2544(v55, v56);
        v57 = sub_1D5614D18();
        v58 = *(v54 + 8);
        v58(v29, v22);
        v58(v35, v22);
        v49 = v81;
        sub_1D4E50004(v41, &unk_1EC7E9CA8, &unk_1D561D1D0);
        if ((v57 & 1) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_26;
      }

      (*(v86 + 8))(v35, v22);
    }

    v51 = &qword_1EC7E9FB0;
    v52 = &qword_1D562C590;
    v53 = v41;
LABEL_35:
    sub_1D4E50004(v53, v51, v52);
    goto LABEL_36;
  }

  if (!v43)
  {
    goto LABEL_10;
  }

LABEL_36:
  v68 = 0;
  return v68 & 1;
}

uint64_t sub_1D4FD1578(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4C5255736C68 && a2 == 0xE600000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4177656976657270 && a2 == 0xEE006B726F777472;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x65756C6156776172 && a2 == 0xE900000000000073)
        {

          return 4;
        }

        else
        {
          v10 = sub_1D5616168();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1D4FD1720(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727564;
      break;
    case 2:
      result = 0x4C5255736C68;
      break;
    case 3:
      result = 0x4177656976657270;
      break;
    case 4:
      result = 0x65756C6156776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FD17CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FD1578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FD17F4(uint64_t a1)
{
  v2 = sub_1D4FD1ACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FD1830(uint64_t a1)
{
  v2 = sub_1D4FD1ACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MovieClip.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED2F0, &unk_1D5624B00);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FD1ACC();
  sub_1D56163D8();
  v14 = *v3;
  v15 = v3[1];
  v31 = 0;
  sub_1D5616028();
  if (!v2)
  {
    v16 = v3[2];
    v17 = *(v3 + 24);
    v30 = 1;
    sub_1D5616048();
    v18 = type metadata accessor for MovieClip();
    v19 = v18[6];
    v29 = 2;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_1_41();
    sub_1D4FD2544(v20, v21);
    OUTLINED_FUNCTION_7_7();
    sub_1D5616068();
    v22 = v18[7];
    v28 = 3;
    sub_1D56140F8();
    OUTLINED_FUNCTION_0_41();
    sub_1D4FD2544(v23, v24);
    OUTLINED_FUNCTION_7_7();
    sub_1D5616068();
    v27 = *(v3 + v18[8]);
    v26[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F2FBD4();
    OUTLINED_FUNCTION_7_7();
    sub_1D56160C8();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1D4FD1ACC()
{
  result = qword_1EC7ED2F8;
  if (!qword_1EC7ED2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED2F8);
  }

  return result;
}

void MovieClip.hash(into:)()
{
  v2 = sub_1D56140F8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v43 = v4;
  v44 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v42 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_31();
  v13 = sub_1D560C0A8();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v41 - v26;
  if (v0[1])
  {
    v28 = *v0;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + 24) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v29 = v0[2];
    OUTLINED_FUNCTION_27();
    if ((v29 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    MEMORY[0x1DA6EC100](v30);
  }

  v31 = type metadata accessor for MovieClip();
  sub_1D4F1C460(v0 + v31[6], v27, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v27, 1, v13);
  if (v32)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v16 + 32))(v21, v27, v13);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_41();
    sub_1D4FD2544(v33, v34);
    sub_1D5614CB8();
    (*(v16 + 8))(v21, v13);
  }

  sub_1D4F1C460(v0 + v31[7], v1, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v35 = v44;
  OUTLINED_FUNCTION_57(v1, 1, v44);
  if (v32)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v37 = v42;
    v36 = v43;
    (*(v43 + 32))(v42, v1, v35);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_41();
    sub_1D4FD2544(v38, v39);
    sub_1D5614CB8();
    (*(v36 + 8))(v37, v35);
  }

  v40 = *(v0 + v31[8]);
  sub_1D4F31AC0();
}

uint64_t MovieClip.hashValue.getter()
{
  sub_1D56162D8();
  MovieClip.hash(into:)();
  return sub_1D5616328();
}

uint64_t MovieClip.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED308, &qword_1D5624B10);
  OUTLINED_FUNCTION_4(v49);
  v47 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10_31();
  v20 = type metadata accessor for MovieClip();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FD1ACC();
  v48 = v2;
  v28 = v50;
  sub_1D5616398();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v15;
  v50 = v9;
  v56 = 0;
  v30 = sub_1D5615F38();
  v32 = v31;
  *v26 = v30;
  *(v26 + 8) = v31;
  v55 = 1;
  *(v26 + 16) = sub_1D5615F58();
  *(v26 + 24) = v33 & 1;
  sub_1D560C0A8();
  v54 = 2;
  OUTLINED_FUNCTION_1_41();
  sub_1D4FD2544(v34, v35);
  v45 = v26;
  v36 = v29;
  sub_1D5615F78();
  v44 = v32;
  v37 = v45;
  sub_1D4FD23EC(v36, v45 + v20[6], &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D56140F8();
  v53 = 3;
  OUTLINED_FUNCTION_0_41();
  sub_1D4FD2544(v38, v39);
  v40 = v50;
  sub_1D5615F78();
  sub_1D4FD23EC(v40, v37 + v20[7], &qword_1EC7E9CA0, &unk_1D561A0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  v52 = 4;
  sub_1D4F31CF4();
  sub_1D5615FD8();
  v41 = OUTLINED_FUNCTION_5_26();
  v42(v41);
  *(v37 + v20[8]) = v51;
  sub_1D4FD243C(v37, v46);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D4FD24A0(v37);
}

uint64_t sub_1D4FD23B0()
{
  sub_1D56162D8();
  MovieClip.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D4FD23EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_1D4FD243C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MovieClip();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FD24A0(uint64_t a1)
{
  v2 = type metadata accessor for MovieClip();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4FD2544(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D4FD25B4()
{
  sub_1D4E518A0(319, &qword_1EDD5F070);
  if (v0 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD52730);
    if (v1 <= 0x3F)
    {
      sub_1D4FD26D8(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        sub_1D4FD26D8(319, &qword_1EDD5F190, MEMORY[0x1E6976F68]);
        if (v3 <= 0x3F)
        {
          sub_1D4E5CF94();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D4FD26D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MovieClip.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4FD280C()
{
  result = qword_1EC7ED318;
  if (!qword_1EC7ED318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED318);
  }

  return result;
}

unint64_t sub_1D4FD2864()
{
  result = qword_1EC7ED320;
  if (!qword_1EC7ED320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED320);
  }

  return result;
}

unint64_t sub_1D4FD28BC()
{
  result = qword_1EC7ED328;
  if (!qword_1EC7ED328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED328);
  }

  return result;
}

uint64_t type metadata accessor for UnknownMusicItem()
{
  result = qword_1EDD5C4C0;
  if (!qword_1EDD5C4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4FD2984@<X0>(uint64_t *a1@<X8>)
{
  v1 = type metadata accessor for UnknownMusicItemPropertyProvider();
  v2 = *(*(v1 - 1) + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v5 = (v4 - v3);
  v6 = sub_1D560E728();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_5();
  v8 = sub_1D560D9A8();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1D560F0F8();
  v18 = OUTLINED_FUNCTION_4(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  v26 = sub_1D560F148();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  OUTLINED_FUNCTION_5();
  v28 = sub_1D560D838();
  v29 = OUTLINED_FUNCTION_4(v28);
  v53 = v30;
  v54 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v35 = v34 - v33;
  (*(v20 + 104))(v25, *MEMORY[0x1E69755D0], v17);
  sub_1D560F118();
  if (qword_1EC7E8AB0 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v8, qword_1EC87BED0);
  (*(v11 + 16))(v16, v36, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v37 = sub_1D560DB08();
  OUTLINED_FUNCTION_4(v37);
  v39 = v38;
  v41 = *(v40 + 72);
  v42 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D561C050;
  (*(v39 + 104))(v43 + v42, *MEMORY[0x1E6975060], v37);
  sub_1D560E718();
  sub_1D560D798();
  v44 = &v5[v1[6]];
  sub_1D5610018();
  sub_1D5614A88();
  v45 = MEMORY[0x1E69E7CC0];
  v46 = OUTLINED_FUNCTION_3_28();
  v47 = OUTLINED_FUNCTION_3_28();
  v48 = OUTLINED_FUNCTION_3_28();
  v49 = OUTLINED_FUNCTION_3_28();
  *v5 = v45;
  (*(v53 + 16))(&v5[v1[5]], v35, v54);
  v50 = &v5[v1[7]];
  *v50 = 0;
  *(v50 + 1) = 0;
  *&v5[v1[8]] = v46;
  *&v5[v1[9]] = v47;
  *&v5[v1[10]] = v48;
  *&v5[v1[11]] = v49;
  v56[3] = v1;
  v56[4] = sub_1D4FD36C8(&qword_1EC7ED348, type metadata accessor for UnknownMusicItemPropertyProvider);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v56);
  sub_1D4FD3710(v5, boxed_opaque_existential_0);
  sub_1D4FD2E3C(v56, a1);
  sub_1D4FD3774(v5);
  return (*(v53 + 8))(v35, v54);
}

uint64_t sub_1D4FD2E3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v14 = sub_1D560D708();
  v16 = v15;
  (*(v7 + 8))(v12, v4);
  *a2 = v14;
  a2[1] = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = a2 + *(type metadata accessor for UnknownMusicItem() + 20);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D4FD2F6C()
{
  v0 = sub_1D5610F88();
  __swift_allocate_value_buffer(v0, qword_1EC87BE98);
  v1 = __swift_project_value_buffer(v0, qword_1EC87BE98);
  v2 = *MEMORY[0x1E69760C0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1D4FD2FF4(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for UnknownMusicItem() + 20);

  return sub_1D5611A78();
}

uint64_t sub_1D4FD3070()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for UnknownMusicItem() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_2_25();
  sub_1D4FD36C8(v4, v5);
  return sub_1D5614CB8();
}

uint64_t sub_1D4FD30F0()
{
  sub_1D56162D8();
  v1 = *v0;
  v2 = v0[1];
  sub_1D5614E28();
  v3 = *(type metadata accessor for UnknownMusicItem() + 20);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_2_25();
  sub_1D4FD36C8(v4, v5);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4FD318C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D4FD31C8(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  v4 = *v2;
  v5 = v2[1];
  sub_1D5614E28();
  v6 = *(a2 + 20);
  sub_1D5611AB8();
  sub_1D4FD36C8(&qword_1EC7ECF08, MEMORY[0x1E6976320]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4FD326C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1D4FD32C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x1E6974FD0], v0);
  qword_1EC87BEB0 = v4;
  return result;
}

uint64_t sub_1D4FD33A4()
{
  if (qword_1EC7E8AA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D4FD3404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1D5611AB8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4FD3478()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC87BEB8);
  __swift_project_value_buffer(v0, qword_1EC87BEB8);
  type metadata accessor for UnknownMusicItem();
  sub_1D4FD36C8(&qword_1EC7ED340, type metadata accessor for UnknownMusicItem);
  return sub_1D560D988();
}

uint64_t sub_1D4FD3510@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8AA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D560D9A8();
  v3 = __swift_project_value_buffer(v2, qword_1EC87BEB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D4FD3600()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC87BED0);
  v1 = __swift_project_value_buffer(v0, qword_1EC87BED0);
  if (qword_1EC7E8AA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC87BEB8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D4FD36C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4FD3710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownMusicItemPropertyProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FD3774(uint64_t a1)
{
  v2 = type metadata accessor for UnknownMusicItemPropertyProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s14descr1F509E369C4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE7)
  {
    if (a2 + 25 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 25) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 26;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v5 = v6 - 26;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr1F509E369C4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4FD3938()
{
  result = qword_1EC7ED350;
  if (!qword_1EC7ED350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED350);
  }

  return result;
}

uint64_t sub_1D4FD398C()
{
  v0 = sub_1D5616208();

  if (v0 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D4FD39E0(char a1)
{
  result = 0x6369666974726563;
  switch(a1)
  {
    case 1:
      result = 0x747265636E6F63;
      break;
    case 2:
      result = 6386787;
      break;
    case 3:
      result = 0x61776D6F74737563;
      break;
    case 4:
      result = 0x6964657263627564;
      break;
    case 5:
      v3 = 0x646F73697065;
      goto LABEL_18;
    case 6:
      result = 0x6265646F73697065;
      break;
    case 7:
      v3 = 0x727574616566;
LABEL_18:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 8:
      result = 0x7572646564697567;
      break;
    case 9:
      result = 0x6177646564697567;
      break;
    case 10:
      result = 0x76697372656D6D69;
      break;
    case 11:
      result = 1869049708;
      break;
    case 12:
      result = 0x697461746964656DLL;
      break;
    case 13:
      result = 0x77656976657270;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0x746D6172676F7270;
      break;
    case 17:
      result = 0x6F6D6F7270;
      break;
    case 18:
      result = 0x676E69746172;
      break;
    case 19:
      result = 0x7061636572;
      break;
    case 20:
      result = 0x6F626E6F73616573;
      break;
    case 21:
      result = 0x74726F6873;
      break;
    case 22:
      result = 0x746C616963657073;
      break;
    case 23:
      result = 0x72656C69617274;
      break;
    case 24:
      result = 0x656C696172747674;
      break;
    case 25:
      result = 0x676E696E726177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FD3CBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D4FD398C();
  *a2 = result;
  return result;
}

uint64_t sub_1D4FD3CEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4FD39E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D4FD3E00()
{
  result = qword_1EC7ED358;
  if (!qword_1EC7ED358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED360, qword_1D5624F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED358);
  }

  return result;
}

unint64_t sub_1D4FD3E64()
{
  result = qword_1EC7ED368;
  if (!qword_1EC7ED368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED368);
  }

  return result;
}

void MusicLibraryPlaylistEditViewModel.__allocating_init(_:author:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v35 = OUTLINED_FUNCTION_201();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_122_3();
  sub_1D4E69970(v28, v20, &unk_1EC7F1990, &unk_1D561CEF0);
  sub_1D4E69970(v26, v34, &unk_1EC7ED370, &unk_1D5624FE0);
  v41 = type metadata accessor for MusicLibraryPlaylistEditViewModel(0);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_1D4FD42FC(v20, MEMORY[0x1E69E7CC0], v34, v24);
  sub_1D4E50004(v26, &unk_1EC7ED370, &unk_1D5624FE0);
  sub_1D4E50004(v28, &unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_46();
}

void MusicLibraryPlaylistEditViewModel.__allocating_init<A>(_:entries:author:library:)()
{
  OUTLINED_FUNCTION_47();
  v35 = v2;
  v36 = v0;
  v33 = v4;
  v34 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v32 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_83_5();
  v15 = sub_1D56158D8();
  OUTLINED_FUNCTION_4(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v31 - v27;
  v29 = sub_1D5614898();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v28, v10, v29);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
  (*(v17 + 16))(v22, v8, v15);
  sub_1D4E69970(v6, v1, &unk_1EC7ED370, &unk_1D5624FE0);
  sub_1D4FD4280(v28, v22, v1, v34, v33, v35);
  sub_1D4E50004(v6, &unk_1EC7ED370, &unk_1D5624FE0);
  (*(v17 + 8))(v8, v15);
  (*(v30 + 8))(v32, v29);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FD4280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  return sub_1D4FD4D74(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D4FD42FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v102 = a3;
  v103 = a1;
  v98 = a2;
  v99 = type metadata accessor for SocialProfile();
  v7 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v87 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v101 = &v83 - v11;
  v12 = sub_1D5614898();
  v86 = *(v12 - 8);
  v13 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D56131C8();
  v96 = *(v15 - 8);
  v97 = v15;
  v16 = *(v96 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v95 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v83 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v92 = &v83 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED380, &qword_1D5624FF0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v83 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED388, &qword_1D5624FF8);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v83 - v31;
  v33 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__entries;
  v105 = MEMORY[0x1E69E7CC0];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
  sub_1D560C8B8();
  v89 = v33;
  v90 = v29;
  (*(v29 + 32))(v5 + v33, v32, v28);
  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries) = 0;
  v34 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingTracklist;
  v105 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB720, &unk_1D561E890);
  sub_1D560C8B8();
  (*(v24 + 32))(v5 + v34, v27, v23);
  v35 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  v36 = v12;
  __swift_storeEnumTagSinglePayload(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist, 1, 1, v12);
  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver) = 0;
  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__coverArtworkRecipes) = 0;
  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) = 0;
  swift_beginAccess();
  sub_1D4FD625C(v103, v5 + v35);
  swift_endAccess();
  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_library) = a4;

  v100 = a4;
  v37 = sub_1D560EFB8();
  if (!v37)
  {
    goto LABEL_18;
  }

  v38 = v37;
  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (!v39)
  {
    swift_unknownObjectRelease();
LABEL_18:
    result = sub_1D5615E08();
    __break(1u);
    return result;
  }

  v40 = v39;
  v41 = v92;
  sub_1D4E69970(v103, v92, &unk_1EC7F1990, &unk_1D561CEF0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v12);
  v43 = MEMORY[0x1E6976988];
  v44 = v101;
  v93 = v38;
  v91 = v28;
  if (EnumTagSinglePayload == 1)
  {
    swift_unknownObjectRetain();
    sub_1D4E50004(v41, &unk_1EC7F1990, &unk_1D561CEF0);
    v45 = 0;
  }

  else
  {
    v46 = *MEMORY[0x1E6976988];
    v84 = v40;
    v47 = v41;
    v48 = v96;
    v49 = v97;
    v50 = v86;
    v51 = v85;
    v52 = v94;
    (*(v96 + 104))(v94, v46, v97);
    (*(v48 + 16))(v95, v52, v49);
    (*(v50 + 16))(v51, v47, v36);
    swift_unknownObjectRetain();
    sub_1D4ECAE6C();
    v45 = v53;
    v54 = v49;
    v44 = v101;
    (*(v48 + 8))(v52, v54);
    v55 = v47;
    v40 = v84;
    (*(v50 + 8))(v55, v36);
    v43 = MEMORY[0x1E6976988];
  }

  v56 = v98;
  if (v98)
  {
    v57 = v89;
    swift_beginAccess();
    v58 = *(v90 + 8);

    v58(v5 + v57, v91);
    v104 = v56;
    sub_1D560C8B8();
    swift_endAccess();
  }

  sub_1D4E69970(v102, v44, &unk_1EC7ED370, &unk_1D5624FE0);
  if (__swift_getEnumTagSinglePayload(v44, 1, v99) == 1)
  {
    sub_1D4E50004(v44, &unk_1EC7ED370, &unk_1D5624FE0);
    v59 = 0;
  }

  else
  {
    v60 = *v43;
    v61 = v96;
    v62 = v97;
    v63 = v94;
    (*(v96 + 104))(v94, v60, v97);
    (*(v61 + 16))(v95, v63, v62);
    sub_1D4FE1CA8(v44, v87, type metadata accessor for SocialProfile);
    sub_1D4ECAE94();
    v59 = v64;
    (*(v61 + 8))(v63, v62);
    sub_1D4FE1DDC();
  }

  v65 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController);
  v66 = v45;
  swift_unknownObjectRetain();
  v67 = sub_1D545D1EC(v45, 0, v59, v40);
  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) = v67;
  v68 = v67;
  v69 = sub_1D4F636B4();
  v71 = v70;
  if (qword_1EC7E8DE8 != -1)
  {
    swift_once();
  }

  v72 = sub_1D560C758();
  __swift_project_value_buffer(v72, qword_1EC87C128);

  v73 = sub_1D560C738();
  v74 = sub_1D56156E8();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v105 = v76;
    *v75 = 136446210;
    v77 = sub_1D4E6835C(v69, v71, &v105);

    *(v75 + 4) = v77;
    _os_log_impl(&dword_1D4E3F000, v73, v74, "<MusicLibraryPlaylistEditViewModel: %{public}s> Initialized underlying playlist edit view model.", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1DA6ED200](v76, -1, -1);
    MEMORY[0x1DA6ED200](v75, -1, -1);
  }

  else
  {
  }

  sub_1D5611CC8();
  v78 = [objc_opt_self() playlistDidChangeNotificationName];
  swift_allocObject();
  swift_weakInit();
  v79 = v68;

  v80 = sub_1D5611CA8();

  swift_unknownObjectRelease_n();

  sub_1D4E50004(v102, &unk_1EC7ED370, &unk_1D5624FE0);
  sub_1D4E50004(v103, &unk_1EC7F1990, &unk_1D561CEF0);

  v81 = *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver);
  *(v5 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver) = v80;

  return v5;
}

uint64_t sub_1D4FD4D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v107 = a6;
  v120 = a4;
  v121 = a3;
  v122 = a2;
  v123 = a1;
  v116 = type metadata accessor for SocialProfile();
  v9 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v108 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v117 = v99 - v13;
  v14 = sub_1D56158D8();
  v15 = *(v14 - 8);
  v118 = v14;
  v119 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v110 = v99 - v18;
  v111 = a5;
  v106 = *(a5 - 8);
  v19 = *(v106 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v104 = v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v105 = v99 - v22;
  v23 = sub_1D5614898();
  v101 = *(v23 - 8);
  v24 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v109 = v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D56131C8();
  v114 = *(v26 - 8);
  v115 = v26;
  v27 = *(v114 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v113 = v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v112 = v99 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = v99 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED380, &qword_1D5624FF0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = v99 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED388, &qword_1D5624FF8);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = v99 - v43;
  v45 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__entries;
  v126 = MEMORY[0x1E69E7CC0];
  v99[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
  sub_1D560C8B8();
  v102 = v41;
  v46 = v41;
  v47 = v23;
  v48 = *(v46 + 32);
  v100 = v45;
  v103 = v40;
  v48(v7 + v45, v44, v40);
  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries) = 0;
  v49 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingTracklist;
  v126 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB720, &unk_1D561E890);
  sub_1D560C8B8();
  (*(v36 + 32))(v7 + v49, v39, v35);
  v50 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  __swift_storeEnumTagSinglePayload(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist, 1, 1, v23);
  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver) = 0;
  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__coverArtworkRecipes) = 0;
  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) = 0;
  swift_beginAccess();
  sub_1D4FD625C(v123, v7 + v50);
  swift_endAccess();
  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_library) = v120;

  if (!sub_1D560EFB8())
  {
    goto LABEL_19;
  }

  objc_opt_self();
  v51 = swift_dynamicCastObjCClass();
  if (!v51)
  {
    swift_unknownObjectRelease();
LABEL_19:
    result = sub_1D5615E08();
    __break(1u);
    return result;
  }

  v52 = v51;
  sub_1D4E69970(v123, v34, &unk_1EC7F1990, &unk_1D561CEF0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v23);
  v54 = MEMORY[0x1E6976988];
  if (EnumTagSinglePayload == 1)
  {
    swift_unknownObjectRetain();
    sub_1D4E50004(v34, &unk_1EC7F1990, &unk_1D561CEF0);
    v109 = 0;
  }

  else
  {
    v56 = v114;
    v55 = v115;
    v57 = v112;
    (*(v114 + 104))(v112, *MEMORY[0x1E6976988], v115);
    (*(v56 + 16))(v113, v57, v55);
    v58 = v101;
    (*(v101 + 16))(v109, v34, v47);
    swift_unknownObjectRetain();
    sub_1D4ECAE6C();
    v109 = v59;
    v60 = v57;
    v54 = MEMORY[0x1E6976988];
    (*(v56 + 8))(v60, v55);
    (*(v58 + 8))(v34, v47);
  }

  v62 = v110;
  v61 = v111;
  v64 = v118;
  v63 = v119;
  (*(v119 + 16))(v110, v122, v118);
  if (__swift_getEnumTagSinglePayload(v62, 1, v61) == 1)
  {
    (*(v63 + 8))(v62, v64);
  }

  else
  {
    v65 = v106;
    v66 = v105;
    (*(v106 + 32))(v105, v62, v61);
    (*(v65 + 16))(v104, v66, v61);
    sub_1D5614828();
    v67 = sub_1D5615318();
    v68 = v100;
    swift_beginAccess();
    (*(v102 + 8))(v7 + v68, v103);
    v125 = v67;
    sub_1D560C8B8();
    swift_endAccess();
    (*(v65 + 8))(v66, v61);
  }

  v69 = v117;
  sub_1D4E69970(v121, v117, &unk_1EC7ED370, &unk_1D5624FE0);
  if (__swift_getEnumTagSinglePayload(v69, 1, v116) == 1)
  {
    sub_1D4E50004(v69, &unk_1EC7ED370, &unk_1D5624FE0);
    v70 = 0;
  }

  else
  {
    v71 = v114;
    v72 = v64;
    v73 = v112;
    v74 = v52;
    v75 = v115;
    (*(v114 + 104))(v112, *v54, v115);
    (*(v71 + 16))(v113, v73, v75);
    sub_1D4FE1CA8(v69, v108, type metadata accessor for SocialProfile);
    sub_1D4ECAE94();
    v70 = v76;
    v77 = v73;
    v64 = v72;
    v78 = v75;
    v52 = v74;
    (*(v71 + 8))(v77, v78);
    sub_1D4FE1DDC();
  }

  v79 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController);
  v80 = v109;
  v81 = v109;
  swift_unknownObjectRetain();
  v82 = sub_1D545D1EC(v80, 0, v70, v52);
  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) = v82;
  v83 = v82;
  v84 = sub_1D4F636B4();
  v86 = v85;
  if (qword_1EC7E8DE8 != -1)
  {
    swift_once();
  }

  v87 = sub_1D560C758();
  __swift_project_value_buffer(v87, qword_1EC87C128);

  v88 = sub_1D560C738();
  v89 = sub_1D56156E8();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v126 = v91;
    *v90 = 136446210;
    v92 = sub_1D4E6835C(v84, v86, &v126);

    *(v90 + 4) = v92;
    _os_log_impl(&dword_1D4E3F000, v88, v89, "<MusicLibraryPlaylistEditViewModel: %{public}s> Initialized underlying playlist edit view model.", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v91);
    v93 = v91;
    v64 = v118;
    MEMORY[0x1DA6ED200](v93, -1, -1);
    MEMORY[0x1DA6ED200](v90, -1, -1);
  }

  else
  {
  }

  sub_1D5611CC8();
  v94 = [objc_opt_self() playlistDidChangeNotificationName];
  swift_allocObject();
  swift_weakInit();
  v95 = v83;

  v96 = sub_1D5611CA8();

  swift_unknownObjectRelease_n();

  sub_1D4E50004(v121, &unk_1EC7ED370, &unk_1D5624FE0);
  (*(v119 + 8))(v122, v64);
  sub_1D4E50004(v123, &unk_1EC7F1990, &unk_1D561CEF0);

  v97 = *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver);
  *(v7 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver) = v96;

  return v7;
}

uint64_t sub_1D4FD5A10()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_127_3();
}

uint64_t sub_1D4FD5A90()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_59();
  if (swift_weakLoadStrong())
  {
    sub_1D4FDCFC4();
  }

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t MusicLibraryPlaylistEditViewModel.__allocating_init(_:underlyingPlaylist:underlyingSectionedCollection:author:library:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  MusicLibraryPlaylistEditViewModel.init(_:underlyingPlaylist:underlyingSectionedCollection:author:library:)();
  return v3;
}

void MusicLibraryPlaylistEditViewModel.init(_:underlyingPlaylist:underlyingSectionedCollection:author:library:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v81 = v4;
  v82 = v5;
  v79 = v6;
  v83 = v7;
  v78 = type metadata accessor for SocialProfile();
  v8 = OUTLINED_FUNCTION_14(v78);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v76 = v12 - v11;
  OUTLINED_FUNCTION_70_0();
  v77 = sub_1D56131C8();
  v13 = OUTLINED_FUNCTION_4(v77);
  v75 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v74 = v17 - v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  v73 = v72 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v72 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED380, &qword_1D5624FF0);
  OUTLINED_FUNCTION_4(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v72 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED388, &qword_1D5624FF8);
  OUTLINED_FUNCTION_4(v35);
  v37 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v72 - v41;
  v43 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__entries;
  v85[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED398, &unk_1D5625000);
  sub_1D560C8B8();
  (*(v37 + 32))(v1 + v43, v42, v35);
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_initialEntries) = 0;
  v44 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingTracklist;
  v85[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB720, &unk_1D561E890);
  sub_1D560C8B8();
  (*(v29 + 32))(v1 + v44, v34, v27);
  v45 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  v46 = sub_1D5614898();
  __swift_storeEnumTagSinglePayload(v1 + v45, 1, 1, v46);
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__coverArtworkRecipes) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_didBeginSession) = 0;
  OUTLINED_FUNCTION_54_0();
  sub_1D4FD625C(v83, v1 + v45);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_library) = v3;

  v80 = v3;
  if (!sub_1D560EFB8())
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v47 = swift_dynamicCastObjCClass();
  if (!v47)
  {
    swift_unknownObjectRelease();
LABEL_14:
    OUTLINED_FUNCTION_53_9();
    v72[0] = 73;
    OUTLINED_FUNCTION_11_28();
    OUTLINED_FUNCTION_43_13();
    sub_1D5615E08();
    __break(1u);
    return;
  }

  v48 = v47;
  v49 = v81;
  v50 = v79;
  v51 = v26;
  if (v81)
  {
    ObjectType = swift_getObjectType();
    v53 = v49;
  }

  else
  {
    v53 = 0;
    ObjectType = 0;
    v85[1] = 0;
    v85[2] = 0;
  }

  v85[0] = v53;
  v85[3] = ObjectType;
  if (v50)
  {
    v54 = swift_getObjectType();
    v55 = v50;
  }

  else
  {
    v55 = 0;
    v54 = 0;
    v84[1] = 0;
    v84[2] = 0;
  }

  v84[0] = v55;
  v84[3] = v54;
  sub_1D4E69970(v82, v26, &unk_1EC7ED370, &unk_1D5624FE0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v78) == 1)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D4E50004(v26, &unk_1EC7ED370, &unk_1D5624FE0);
    v56 = 0;
  }

  else
  {
    v57 = *MEMORY[0x1E6976988];
    v78 = v48;
    v58 = v75;
    v59 = v73;
    v60 = v77;
    (*(v75 + 104))(v73, v57, v77);
    v61 = *(v58 + 16);
    v62 = OUTLINED_FUNCTION_0_33();
    v63(v62);
    v72[1] = v51;
    sub_1D4FE1CA8(v51, v76, type metadata accessor for SocialProfile);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D4ECAE94();
    v56 = v64;
    (*(v58 + 8))(v59, v60);
    v48 = v78;
    sub_1D4FE1DDC();
  }

  v65 = objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController);
  swift_unknownObjectRetain();
  v66 = sub_1D4FE056C(v85, v84, v56, v48);
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) = v66;
  swift_unknownObjectRetain();
  v67 = v66;
  sub_1D4FD62CC();
  sub_1D5611CC8();
  v68 = [objc_opt_self() playlistDidChangeNotificationName];
  swift_allocObject();
  swift_weakInit();
  v69 = v67;

  OUTLINED_FUNCTION_176();
  v70 = sub_1D5611CA8();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();

  sub_1D4E50004(v82, &unk_1EC7ED370, &unk_1D5624FE0);
  sub_1D4E50004(v83, &unk_1EC7F1990, &unk_1D561CEF0);

  v71 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver);
  *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_underlyingPlaylistDidChangeObserver) = v70;

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FD625C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FD62CC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_127_3();
}

uint64_t sub_1D4FD634C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D4FD63A4();
  *a2 = result;
  return result;
}

uint64_t sub_1D4FD6378(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D4FD5A10();
}

uint64_t sub_1D4FD63A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_159();
  sub_1D560C8F8();

  return v1;
}

uint64_t sub_1D4FD6430()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED458, &qword_1D5625238);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_100_2();
  v5(v4);
  OUTLINED_FUNCTION_54_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED388, &qword_1D5624FF8);
  sub_1D560C8D8();
  swift_endAccess();
  v6 = OUTLINED_FUNCTION_15_8();
  return v7(v6);
}

uint64_t sub_1D4FD6530@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D4FD6588();
  *a2 = result;
  return result;
}

uint64_t sub_1D4FD655C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_unknownObjectRetain();
  return sub_1D4FD62CC();
}

uint64_t sub_1D4FD6588()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_159();
  sub_1D560C8F8();

  return v1;
}

uint64_t sub_1D4FD65F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_91_5();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_4(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31();
  v17 = *(v16 + 16);
  v18 = OUTLINED_FUNCTION_61();
  v19(v18);
  v20 = *v7;
  return a7(v8);
}

uint64_t sub_1D4FD66C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED450, &qword_1D5625230);
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  v4 = OUTLINED_FUNCTION_100_2();
  v5(v4);
  OUTLINED_FUNCTION_54_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED380, &qword_1D5624FF0);
  sub_1D560C8D8();
  swift_endAccess();
  v6 = OUTLINED_FUNCTION_15_8();
  return v7(v6);
}

uint64_t sub_1D4FD67C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  OUTLINED_FUNCTION_59();
  return sub_1D4E69970(v1 + v3, a1, &unk_1EC7F1990, &unk_1D561CEF0);
}

uint64_t sub_1D4FD6828(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel_playlist;
  OUTLINED_FUNCTION_54_0();
  sub_1D4FE1E30(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1D4FD6890()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) underlyingEditController];

  return v1;
}

uint64_t sub_1D4FD68E8(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1D4FD68D0();
  a1[1] = v3;
  return OUTLINED_FUNCTION_88_5();
}

uint64_t sub_1D4FD6944(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  v9 = OUTLINED_FUNCTION_61();
  return a5(v9);
}

uint64_t sub_1D4FD69A0(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1D4FD6988();
  a1[1] = v3;
  return OUTLINED_FUNCTION_88_5();
}

uint64_t sub_1D4FD69FC(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = a1[1];

    v8 = OUTLINED_FUNCTION_61();
    a3(v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_61();
    return (a3)(v10);
  }
}

uint64_t sub_1D4FD6A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  OUTLINED_FUNCTION_91_5();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1D4E69970(v6, &v16 - v12, &unk_1EC7F1990, &unk_1D561CEF0);
  v14 = *v5;
  return a5(v13);
}

void sub_1D4FD6B1C()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v10 = sub_1D560E728();
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1D560D9A8();
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_122_3();
  v21 = sub_1D560D838();
  v22 = OUTLINED_FUNCTION_4(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v56 - v31;
  v33 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) parentPlaylist];
  if (v33)
  {
    v61 = v33;
    v59 = [v33 legacyIdentifierSet];
    sub_1D560D968();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v34 = sub_1D560DB08();
    v60 = v3;
    v35 = v34;
    OUTLINED_FUNCTION_4(v34);
    v57 = v1;
    v58 = v21;
    v37 = v36;
    v39 = *(v38 + 72);
    v40 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1D5621D90;
    v42 = *MEMORY[0x1E6975040];
    v56 = v29;
    v43 = *(v37 + 104);
    v44 = OUTLINED_FUNCTION_96_2();
    v43(v44);
    (v43)(v41 + v40 + v39, *MEMORY[0x1E6975030], v35);
    sub_1D560E718();
    v45 = sub_1D560D9E8();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v45);
    sub_1D4F40E88(v59, v57, v16, v9, v32);
    v46 = v58;
    (*(v24 + 16))(v56, v32, v58);
    v47 = v61;
    v48 = [v61 underlyingObject];
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v49 = v60;
    sub_1D56144C8();

    (*(v24 + 8))(v32, v46);
    v50 = sub_1D5614898();
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v50);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    sub_1D5614898();
    OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_46();

    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  }
}

void sub_1D4FD6EC0()
{
  OUTLINED_FUNCTION_47();
  v39 = v0;
  v3 = v2;
  v4 = sub_1D5614898();
  v5 = OUTLINED_FUNCTION_4(v4);
  v37 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1D56131C8();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  v21 = OUTLINED_FUNCTION_99_4();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_122_3();
  v38 = *(v39 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  v39 = v3;
  sub_1D4E69970(v3, v1, &unk_1EC7F1990, &unk_1D561CEF0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    sub_1D4E50004(v1, &unk_1EC7F1990, &unk_1D561CEF0);
    v27 = 0;
  }

  else
  {
    (*(v15 + 104))(v20, *MEMORY[0x1E6976988], v12);
    v28 = *(v15 + 16);
    v29 = OUTLINED_FUNCTION_45_3();
    v30(v29);
    v31 = v37;
    (*(v37 + 16))(v11, v1, v4);
    sub_1D4ECAE6C();
    v27 = v32;
    (*(v15 + 8))(v20, v12);
    v33 = *(v31 + 8);
    v34 = OUTLINED_FUNCTION_176();
    v35(v34);
  }

  [v38 setParentPlaylist_];

  sub_1D4E50004(v39, &unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_46();
}

void (*sub_1D4FD715C(void *a1))(uint64_t *a1, char a2)
{
  OUTLINED_FUNCTION_125_3(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = __swift_coroFrameAllocStub(v4);
  sub_1D4FD6B1C();
  return sub_1D4FD71F0;
}

void sub_1D4FD71F0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1D4E69970(a1[2], v2, &unk_1EC7F1990, &unk_1D561CEF0);
    sub_1D4FD6EC0();
    sub_1D4E50004(v3, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  else
  {
    v5 = a1[2];
    sub_1D4FD6EC0();
  }

  free(v3);

  free(v2);
}

id (*sub_1D4FD72D4(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  *a1 = v3;
  OUTLINED_FUNCTION_115_0([v3 addInsertedTracksToLibrary]);
  return sub_1D4FD732C;
}

void sub_1D4FD7340(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1D4FD73B0(v2);
}

id sub_1D4FD7370()
{
  v1 = [*(v0 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) userImage];

  return v1;
}

void sub_1D4FD73B0(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) setUserImage_];
}

uint64_t sub_1D4FD7400(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  a1[1] = v3;
  *a1 = [v3 userImage];
  return OUTLINED_FUNCTION_88_5();
}

void sub_1D4FD7460(id *a1)
{
  v1 = *a1;
  [a1[1] setUserImage_];
}

void (*sub_1D4FD74C0(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_125_3(a1);
  v1 = sub_1D4FD74A8();
  OUTLINED_FUNCTION_115_0(v1);
  return sub_1D4FD7500;
}

void sub_1D4FD7540(char a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  if (a1 == 2)
  {
    v5 = 0;
  }

  else
  {
    sub_1D4ECC7A8(0, &qword_1EC7ED3D0, 0x1E696AD98);
    v5 = sub_1D5615828();
  }

  v6 = v5;
  [v4 *a2];
}

void (*sub_1D4FD75E0(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_125_3(a1);
  v1 = sub_1D4FD7528();
  OUTLINED_FUNCTION_115_0(v1);
  return sub_1D4FD7620;
}

uint64_t sub_1D4FD7654(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) *a1];
  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  v4 = [v2 BOOLValue];

  return v4;
}

void (*sub_1D4FD76C4(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_125_3(a1);
  v1 = sub_1D4FD7648();
  OUTLINED_FUNCTION_115_0(v1);
  return sub_1D4FD7704;
}

uint64_t sub_1D4FD7738(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController) *a1];
  if (v2)
  {
    v3 = v2;
    sub_1D5614D68();
  }

  return OUTLINED_FUNCTION_71();
}

void sub_1D4FD77B0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__underlyingEditController);
  if (a2)
  {
    v6 = sub_1D5614D38();
  }

  else
  {
    v6 = 0;
  }

  [v5 *a3];
}

uint64_t sub_1D4FD7830(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1D4FD772C();
  a1[1] = v3;
  return OUTLINED_FUNCTION_88_5();
}

uint64_t sub_1D4FD788C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D4FD78F8(v4);
}

uint64_t sub_1D4FD78B8()
{
  v1 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__coverArtworkRecipes;
  OUTLINED_FUNCTION_59();
  v2 = *(v0 + v1);
}

uint64_t sub_1D4FD78F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicKitInternal33MusicLibraryPlaylistEditViewModel__coverArtworkRecipes;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D4FD79A8()
{
  OUTLINED_FUNCTION_60();
  v1[22] = v0;
  v2 = sub_1D560C998();
  v1[23] = v2;
  OUTLINED_FUNCTION_69(v2);
  v1[24] = v3;
  v5 = *(v4 + 64);
  v1[25] = OUTLINED_FUNCTION_127();
  v6 = sub_1D56131C8();
  v1[26] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[27] = v7;
  v9 = *(v8 + 64);
  v1[28] = OUTLINED_FUNCTION_167();
  v1[29] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  v1[30] = OUTLINED_FUNCTION_127();
  v13 = sub_1D5614898();
  v1[31] = v13;
  OUTLINED_FUNCTION_69(v13);
  v1[32] = v14;
  v16 = *(v15 + 64);
  v1[33] = OUTLINED_FUNCTION_167();
  v1[34] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}