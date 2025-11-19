unint64_t sub_25BC43488()
{
  result = qword_28154D3D8[0];
  if (!qword_28154D3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154D3D8);
  }

  return result;
}

unint64_t sub_25BC43580()
{
  result = qword_27FBB6990;
  if (!qword_27FBB6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6990);
  }

  return result;
}

unint64_t sub_25BC435D4()
{
  result = qword_27FBB6998;
  if (!qword_27FBB6998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6998);
  }

  return result;
}

unint64_t sub_25BC43628()
{
  result = qword_27FBB69A0;
  if (!qword_27FBB69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB69A0);
  }

  return result;
}

uint64_t sub_25BC436C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB3F98, &unk_25BCC3720);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyLayerVariablePathCache.Key(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for AnyLayerVariablePathCache.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_25BC437B4()
{
  result = qword_28154D3D0;
  if (!qword_28154D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154D3D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_18()
{

  return sub_25BAB5DD8(v2, v0, v1, v2);
}

uint64_t sub_25BC4388C(uint64_t a1, uint64_t a2)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC438D0()
{
  OUTLINED_FUNCTION_16_1();
  sub_25BCB625C();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC4393C()
{
  OUTLINED_FUNCTION_16_1();
  MEMORY[0x25F878200](v0 + 1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC439DC()
{
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_24_23();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43AAC()
{
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_24_23();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43B10()
{
  OUTLINED_FUNCTION_16_1();
  MEMORY[0x25F878200](v0 + 4);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43B50()
{
  OUTLINED_FUNCTION_16_1();
  MEMORY[0x25F878200](v0 + 8);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43B90()
{
  OUTLINED_FUNCTION_16_1();
  sub_25BCB625C();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43BF4()
{
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_24_23();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43C50()
{
  OUTLINED_FUNCTION_16_1();
  sub_25BCB79EC();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43CD4()
{
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_24_23();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43D34()
{
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_24_23();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43DC4()
{
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_24_23();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC43E68()
{
  OUTLINED_FUNCTION_16_1();
  v1 = 12;
  switch(v0 >> 6)
  {
    case 1:
      v1 = (v0 & 0x3F) + 4;
      break;
    case 2:
      v1 = (v0 & 0x3F) + 8;
      break;
    case 3:
      break;
    default:
      v1 = v0;
      break;
  }

  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43EE8()
{
  OUTLINED_FUNCTION_16_1();
  sub_25BCB7A0C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43F40(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_25BCB79CC();
  a3(v6, a2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43F8C()
{
  OUTLINED_FUNCTION_16_1();
  MEMORY[0x25F878200](v0);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC43FC8()
{
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_24_23();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC4402C()
{
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_24_23();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC440D4()
{
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_24_23();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC44148(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_25BCB79CC();
  a3(a2);
  sub_25BCB625C();

  return sub_25BCB7A3C();
}

uint64_t sub_25BC441B0()
{
  OUTLINED_FUNCTION_16_1();
  MEMORY[0x25F878200](v0 & 1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC44204()
{
  sub_25BCB79CC();
  sub_25BCB625C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC44250(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9)
{
  v10 = *(a3 + 16);
  v11 = v10[2] + 1;
  while (--v11)
  {
    v12 = v10 + 6;
    v13 = v10[9];
    v10 += 6;
    if (v13 == result)
    {
      v14 = *(v12 - 16);
      v15 = *(v12 - 1);
      v16 = *v12;
      v17 = v12[2];
      if (v14 == 2)
      {
        v18 = *a9;
      }

      else
      {
        if (v14 != 1)
        {
          return result;
        }

        v18 = *a7;
      }

      if (*(v18 + 16))
      {
        v19 = *v12;
        sub_25BCB617C();
        sub_25BCB617C();
        v20 = sub_25BA9266C(v15, v16);
        if (v21)
        {
          v22 = *(*(v18 + 56) + 8 * v20);
          v23 = *(v22 + 16);
          swift_retain_n();

          v24 = sub_25BA928B4();
          [v24 lock];

          sub_25BA92920(v23, 0, 0, v31);
          [*(v23 + 224) unlock];

          v25 = v31[0];
          v26 = *(v22 + 16);

          v27 = sub_25BAC44E4();
          v29 = v28;

          type metadata accessor for TensorRepresentation();
          memset(v31, 0, sizeof(v31));
          v32 = 0;
          swift_allocObject();
          v30 = sub_25BC5F404(v25, *(&v25 + 1), v27, v29, v31, 0x100000000);
          sub_25BC4445C(a2, v30);
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_25BC4445C(uint64_t a1, uint64_t a2)
{
  v152 = *(a2 + 152);
  if (sub_25BAB5C48(*(a1 + 152), v152))
  {
    OUTLINED_FUNCTION_5_53();
    swift_beginAccess();
    v4 = v2[5];
    v3 = v2[6];
    sub_25BCB617C();
    sub_25BCB617C();
    v5 = sub_25BC471F4(v4, v3);
    sub_25BCB617C();
    sub_25BC45D94(v5, v4);
    v7 = v6;

    v8 = 0;
    v9 = *(v7 + 16);
    v10 = v7 + 48;
    v151 = MEMORY[0x277D84F90];
    v159 = v2;
LABEL_3:
    v11 = (v10 + 24 * v8);
    while (v8 < v9)
    {
      if (v8 >= *(v7 + 16))
      {
        goto LABEL_71;
      }

      ++v8;
      v12 = v11 + 3;
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      v16 = sub_25BAC4018();
      v17 = sub_25BAC4018();
      v11 = v12;
      if (v16 == v17)
      {
        sub_25BCB617C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = *(v151 + 16);
          OUTLINED_FUNCTION_45();
          sub_25BAFD648();
          v151 = v22;
        }

        v19 = *(v151 + 16);
        v18 = *(v151 + 24);
        if (v19 >= v18 >> 1)
        {
          OUTLINED_FUNCTION_81(v18);
          OUTLINED_FUNCTION_45_0();
          sub_25BAFD648();
          v151 = v23;
        }

        *(v151 + 16) = v19 + 1;
        v20 = (v151 + 24 * v19);
        v20[4] = v13;
        v20[5] = v14;
        v20[6] = v15;
        v10 = v7 + 48;
        goto LABEL_3;
      }
    }

    v150 = *(v151 + 16);
    OUTLINED_FUNCTION_5_53();
    swift_beginAccess();
    v24 = 0;
    while (v24 != v150)
    {
      if (v24 >= *(v151 + 16))
      {
        goto LABEL_72;
      }

      v25 = (v151 + 32 + 24 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      v30 = v159[5];
      v29 = v159[6];
      v31 = *(v29 + 16);
      OUTLINED_FUNCTION_51_0();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      if (!v31)
      {
        goto LABEL_77;
      }

      sub_25BCB617C();
      sub_25BCB617C();
      v32 = OUTLINED_FUNCTION_7_49();
      v34 = sub_25BA9266C(v32, v33);
      if ((v35 & 1) == 0)
      {
        goto LABEL_76;
      }

      v153 = v24;
      v154 = *(*(v29 + 56) + 8 * v34);

      sub_25BC48950();
      v37 = v36;

      v156 = v37;
      if ((sub_25BC5F138(v38, a2) & 1) != 0 || (v39 = sub_25BAB3058()) == 0)
      {
        v63 = v159[5];
        v64 = v159[6];
        sub_25BCB617C();

        sub_25BCB617C();
        sub_25BCB617C();
        v65 = OUTLINED_FUNCTION_28_25();
        sub_25BC4666C(v65, v66, v67, v68, v69);
        v71 = v70;

        v72 = sub_25BC475A4(v71);
        v74 = v159[5];
        v73 = v159[6];
        v159[5] = v72;
        v159[6] = v75;

        v76 = *(a2 + 160);
        OUTLINED_FUNCTION_20_30();
        v77 = v159[7];
        sub_25BCB617C();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v159[7] = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BBF1424(v77);
          v77 = v137;
          v159[7] = v137;
        }

        if ((v154 & 0x8000000000000000) != 0)
        {
          goto LABEL_73;
        }

        if (v154 >= *(v77 + 16))
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:

LABEL_77:
          sub_25BCB70FC();

          v145 = OUTLINED_FUNCTION_7_49();
          MEMORY[0x25F876C90](v145);
          OUTLINED_FUNCTION_50_15();
          sub_25BCB617C();
          OUTLINED_FUNCTION_3_53();
          sub_25BA97890();
        }

        v79 = v77 + 16 * v154;
        v80 = *(v79 + 32);
        *(v79 + 32) = v152;
        *(v79 + 40) = v76;
        v159[7] = v77;
        swift_endAccess();

        v81 = v159[8];
        v82 = v159[9];
        sub_25BCB617C();

        sub_25BCB617C();
        sub_25BCB617C();
        v83 = OUTLINED_FUNCTION_28_25();
        sub_25BC46974(v83, v84, v85, v86);
        v88 = v87;

        v89 = sub_25BC47804(v88);
        v91 = v159[8];
        v90 = v159[9];
        v159[8] = v89;
        v159[9] = v92;
      }

      else
      {
        v148 = v40;
        v149 = v39;
        v41 = v159[5];
        v42 = v159[6];
        sub_25BCB617C();
        sub_25BCB617C();
        v43 = sub_25BC471F4(v41, v42);
        sub_25BCB617C();
        sub_25BC45D94(v43, v41);
        v45 = v44;

        v46 = 0;
        v47 = *(v45 + 16);
        v48 = v45 + 48;
        v49 = MEMORY[0x277D84F90];
LABEL_20:
        v50 = (v48 + 24 * v46);
        while (v46 < v47)
        {
          if (v46 >= *(v45 + 16))
          {
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v51 = *(v50 - 2);
          v52 = *(v50 - 1);
          if (v51 != v26 || v52 != v27)
          {
            v54 = *v50;
            if ((OUTLINED_FUNCTION_31_25() & 1) == 0)
            {
              sub_25BCB617C();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v59 = *(v49 + 16);
                OUTLINED_FUNCTION_45();
                sub_25BAD80BC();
                v49 = v60;
              }

              v56 = *(v49 + 16);
              v55 = *(v49 + 24);
              v57 = v56 + 1;
              if (v56 >= v55 >> 1)
              {
                OUTLINED_FUNCTION_81(v55);
                v146 = v61;
                sub_25BAD80BC();
                v57 = v146;
                v49 = v62;
              }

              ++v46;
              *(v49 + 16) = v57;
              v58 = (v49 + 24 * v56);
              v58[4] = v51;
              v58[5] = v52;
              v58[6] = v54;
              v48 = v45 + 48;
              goto LABEL_20;
            }
          }

          v50 += 3;
          ++v46;
        }

        v93 = sub_25BC475A4(v49);
        v95 = v159[5];
        v94 = v159[6];
        v159[5] = v93;
        v159[6] = v96;

        OUTLINED_FUNCTION_20_30();
        v97 = v159[7];
        v98 = swift_isUniquelyReferenced_nonNull_native();
        v159[7] = v97;
        if ((v98 & 1) == 0)
        {
          sub_25BBF1424(v97);
          v97 = v138;
          v159[7] = v138;
        }

        v99 = *(v97 + 16);
        if (v154 >= v99)
        {
          goto LABEL_75;
        }

        v100 = v99 - 1;
        v101 = v97 + 16 * v154;
        v102 = *(v101 + 32);
        sub_25BAC947C(v101 + 48);
        *(v97 + 16) = v100;
        v159[7] = v97;
        swift_endAccess();

        v103 = v159[8];
        v104 = v159[9];
        sub_25BCB617C();
        sub_25BCB617C();
        v105 = sub_25BC471F4(v103, v104);
        sub_25BCB617C();
        v106 = sub_25BC46C10(v105, v103);

        v107 = 0;
        v108 = *(v106 + 16);
        v109 = v106 + 56;
        v155 = MEMORY[0x277D84F90];
LABEL_43:
        v110 = (v109 + 32 * v107);
        while (v107 < v108)
        {
          if (v107 >= *(v106 + 16))
          {
            goto LABEL_70;
          }

          v111 = *(v110 - 3);
          v112 = *(v110 - 2);
          if (v111 != v26 || v112 != v27)
          {
            v115 = *(v110 - 1);
            v114 = *v110;
            if ((OUTLINED_FUNCTION_31_25() & 1) == 0)
            {
              sub_25BCB617C();
              sub_25BCB617C();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v120 = *(v155 + 16);
                OUTLINED_FUNCTION_45();
                sub_25BAFDB78();
                v155 = v121;
              }

              v117 = *(v155 + 16);
              v116 = *(v155 + 24);
              v118 = v117 + 1;
              if (v117 >= v116 >> 1)
              {
                OUTLINED_FUNCTION_81(v116);
                v147 = v122;
                sub_25BAFDB78();
                v118 = v147;
                v155 = v123;
              }

              ++v107;
              *(v155 + 16) = v118;
              v119 = (v155 + 32 * v117);
              v119[4] = v111;
              v119[5] = v112;
              v119[6] = v115;
              v119[7] = v114;
              v109 = v106 + 56;
              goto LABEL_43;
            }
          }

          v110 += 4;
          ++v107;
        }

        v124 = sub_25BC47804(v155);
        v126 = v159[8];
        v125 = v159[9];
        v159[8] = v124;
        v159[9] = v127;

        v37 = v156;
        if (!v156[2])
        {

          return swift_unknownObjectRelease();
        }

        v129 = v156[4];
        v128 = v156[5];
        swift_unknownObjectRetain();
        sub_25BC48260(v149, v148, v129, v128);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      v130 = v37[2];
      if (v130)
      {
        v131 = v37 + 8;
        do
        {
          v132 = *(v131 - 4);
          v133 = *(v131 - 3);
          v134 = *v131;
          v131 += 5;
          ObjectType = swift_getObjectType();
          v136 = *(v133 + 80);
          swift_unknownObjectRetain();
          sub_25BCB617C();
          v136(a1, a2, ObjectType, v133);

          swift_unknownObjectRelease();
          --v130;
        }

        while (v130);
      }

      v24 = v153 + 1;
    }

    result = sub_25BAB3058();
    if (!result)
    {
      return result;
    }

    v141 = v140;
    v142 = result;
    v143 = sub_25BAB3058();
    if (v143)
    {
      sub_25BC48D78(v142, v141, v143, v144);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC44E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8)
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  sub_25BCB617C();
  sub_25BCB617C();
  v14 = sub_25BC471F4(v12, v13);
  sub_25BCB617C();
  sub_25BC45D94(v14, v12);
  v16 = v15;

  v18 = 0;
  v19 = *(v16 + 16);
  for (i = (v16 + 48); ; i += 3)
  {
    if (v19 == v18)
    {
    }

    if (v18 >= *(v16 + 16))
    {
      break;
    }

    v22 = *(i - 1);
    v21 = *i;
    sub_25BCB617C();

    sub_25BC44250(v18, v21, a2, a3, a4, a5, a6, a7, a8);

    ++v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC44FE0(void (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  sub_25BCB617C();
  sub_25BCB617C();
  v5 = sub_25BC471F4(v4, v3);
  sub_25BCB617C();
  sub_25BC45D94(v5, v4);
  v7 = v6;

  v9 = 0;
  v10 = *(v7 + 16);
  for (i = (v7 + 48); ; i += 3)
  {
    if (v10 == v9)
    {
    }

    if (v9 >= *(v7 + 16))
    {
      break;
    }

    v12 = *(i - 1);
    v13 = *i;
    sub_25BCB617C();

    v14 = OUTLINED_FUNCTION_7_49();
    a1(v14);

    ++v9;
  }

  __break(1u);
  return result;
}

void sub_25BC45110(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v5 = a1[5];
  v6 = a1[6];
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  v7 = sub_25BC083D4(v5);

  v57[0] = v7;
  sub_25BC4B074(v57, a2, sub_25BB13CB4);
  v8 = v57[0];
  if (v2)
  {
  }

  else
  {
    v9 = sub_25BAF9E60(v57[0]);
    v10 = sub_25BC475A4(v9);
    v12 = a1[5];
    v11 = a1[6];
    a1[5] = v10;
    a1[6] = v13;

    v14 = *(v8 + 16);
    v15 = MEMORY[0x277D84F90];
    v55 = v8;
    if (v14)
    {
      v57[0] = MEMORY[0x277D84F90];
      sub_25BAD4D9C();
      v15 = v57[0];
      v16 = v8 + 48;
      do
      {
        v17 = *(*v16 + 152);
        v18 = *(*v16 + 160);
        v57[0] = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        sub_25BCB617C();
        if (v20 >= v19 >> 1)
        {
          OUTLINED_FUNCTION_13_39();
          sub_25BAD4D9C();
          v15 = v57[0];
        }

        *(v15 + 16) = v20 + 1;
        v21 = v15 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
        v16 += 24;
        --v14;
      }

      while (v14);
      v8 = v55;
    }

    OUTLINED_FUNCTION_5_53();
    swift_beginAccess();
    v22 = a1[7];
    a1[7] = v15;

    v56 = *(v8 + 16);
    OUTLINED_FUNCTION_17_10();
    swift_beginAccess();
    v23 = 0;
    v24 = v8 + 48;
    v54 = MEMORY[0x277D84F90];
    v53 = v8 + 48;
LABEL_10:
    for (i = (v24 + 24 * v23); ; i += 3)
    {
      if (v56 == v23)
      {

        v47 = sub_25BC47804(v54);
        v49 = v48;
        OUTLINED_FUNCTION_5_53();
        swift_beginAccess();
        v50 = a1[8];
        v51 = a1[9];
        a1[8] = v47;
        a1[9] = v49;

        return;
      }

      if (v23 >= *(v8 + 16))
      {
        break;
      }

      v26 = a1[9];
      if (*(v26 + 16))
      {
        v58 = v23;
        v28 = *(i - 1);
        v27 = *i;
        v29 = a1;
        v30 = a1[8];
        v31 = *(i - 2);
        OUTLINED_FUNCTION_51_0();
        swift_bridgeObjectRetain_n();

        sub_25BCB617C();
        sub_25BCB617C();
        v32 = OUTLINED_FUNCTION_7_49();
        v34 = sub_25BA9266C(v32, v33);
        v36 = v35;

        if (v36)
        {
          v37 = *(*(v26 + 56) + 8 * v34);
          if ((v37 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          if (v37 >= *(v30 + 16))
          {
            goto LABEL_27;
          }

          v38 = v30 + 16 * v37;
          v52 = *(v38 + 32);
          v39 = *(v38 + 40);
          sub_25BCB617C();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = *(v54 + 16);
            OUTLINED_FUNCTION_45();
            sub_25BAFDB78();
            v54 = v45;
          }

          a1 = v29;
          v8 = v55;
          v41 = *(v54 + 16);
          v40 = *(v54 + 24);
          v42 = v58;
          if (v41 >= v40 >> 1)
          {
            OUTLINED_FUNCTION_81(v40);
            sub_25BAFDB78();
            v54 = v46;
          }

          v23 = v42 + 1;
          *(v54 + 16) = v41 + 1;
          v43 = (v54 + 32 * v41);
          v43[4] = v31;
          v43[5] = v28;
          v43[6] = v52;
          v43[7] = v39;
          v24 = v53;
          goto LABEL_10;
        }

        a1 = v29;
        v8 = v55;
        v23 = v58;
      }

      ++v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void sub_25BC454D8(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v5 = a1[13];
  v6 = a1[14];
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  v7 = sub_25BC083D4(v5);

  v73[0] = v7;
  sub_25BC4B074(v73, a2, sub_25BB13CB4);
  v8 = v73[0];
  if (v2)
  {
  }

  else
  {
    v9 = sub_25BAF9E60(v73[0]);
    v10 = sub_25BC475A4(v9);
    v12 = a1[13];
    v11 = a1[14];
    a1[13] = v10;
    a1[14] = v13;

    v14 = *(v8 + 16);
    v15 = MEMORY[0x277D84F90];
    v78 = v8;
    v69 = a1;
    if (v14)
    {
      sub_25BB00718(0, v14, 0);
      v16 = (v8 + 48);
      do
      {
        v17 = *v16;

        OUTLINED_FUNCTION_17_10();
        sub_25BAD5184(v18, v19, v20, v21, v22);
        v23 = v73[0];
        v24 = v73[1];
        v25 = v74;
        v27 = v75;
        v26 = v76;
        v28 = v77;
        v72 = v15;
        v30 = *(v15 + 16);
        v29 = *(v15 + 24);
        if (v30 >= v29 >> 1)
        {
          OUTLINED_FUNCTION_81(v29);
          OUTLINED_FUNCTION_45_0();
          v70 = v32;
          v34 = v33;
          v67 = v35;
          sub_25BB00718(v36, v37, v38);
          v28 = v67;
          v26 = v34;
          v25 = v70;
          v15 = v72;
        }

        *(v15 + 16) = v30 + 1;
        v31 = v15 + 56 * v30;
        *(v31 + 32) = v23;
        *(v31 + 40) = v24;
        *(v31 + 48) = v25;
        *(v31 + 64) = v27;
        *(v31 + 72) = v26;
        *(v31 + 80) = v28;
        v16 += 3;
        --v14;
      }

      while (v14);
      a1 = v69;
      v8 = v78;
    }

    OUTLINED_FUNCTION_5_53();
    swift_beginAccess();
    v39 = a1[15];
    a1[15] = v15;

    v71 = *(v8 + 16);
    OUTLINED_FUNCTION_17_10();
    swift_beginAccess();
    v40 = 0;
    v41 = v8 + 48;
    v68 = MEMORY[0x277D84F90];
    v66 = v8 + 48;
LABEL_10:
    for (i = (v41 + 24 * v40); ; i += 3)
    {
      if (v71 == v40)
      {

        v61 = sub_25BC47804(v68);
        v63 = v62;
        OUTLINED_FUNCTION_5_53();
        swift_beginAccess();
        v64 = a1[16];
        v65 = a1[17];
        a1[16] = v61;
        a1[17] = v63;

        return;
      }

      if (v40 >= *(v8 + 16))
      {
        break;
      }

      v43 = a1[17];
      if (*(v43 + 16))
      {
        v44 = a1[16];
        v46 = *(i - 1);
        v45 = *i;
        v47 = *(i - 2);
        OUTLINED_FUNCTION_51_0();
        swift_bridgeObjectRetain_n();

        sub_25BCB617C();
        sub_25BCB617C();
        v48 = sub_25BA9266C(v47, v46);
        v50 = v49;

        if (v50)
        {
          v51 = *(*(v43 + 56) + 8 * v48);
          if ((v51 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          if (v51 >= *(v44 + 16))
          {
            goto LABEL_27;
          }

          v52 = v44 + 16 * v51;
          v53 = *(v52 + 32);
          v54 = *(v52 + 40);
          sub_25BCB617C();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = *(v68 + 16);
            OUTLINED_FUNCTION_45();
            sub_25BAFDB78();
            v68 = v59;
          }

          v8 = v78;
          v56 = *(v68 + 16);
          v55 = *(v68 + 24);
          if (v56 >= v55 >> 1)
          {
            OUTLINED_FUNCTION_81(v55);
            sub_25BAFDB78();
            v68 = v60;
          }

          ++v40;
          *(v68 + 16) = v56 + 1;
          v57 = (v68 + 32 * v56);
          v57[4] = v47;
          v57[5] = v46;
          v57[6] = v53;
          v57[7] = v54;
          a1 = v69;
          v41 = v66;
          goto LABEL_10;
        }

        a1 = v69;
        v8 = v78;
      }

      ++v40;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_25BC458D0()
{
  v1 = v0[13];
  v2 = v0[14];
  sub_25BAC44E4();
  OUTLINED_FUNCTION_14_36();
  sub_25BB2E238(v3, v4, v5, v6);
  OUTLINED_FUNCTION_22_29();

  if (!v2)
  {
    v1 = v0[17];
    v7 = v0[18];
    sub_25BAC44E4();
    OUTLINED_FUNCTION_14_36();
    sub_25BB2E238(v8, v9, v10, v11);
    OUTLINED_FUNCTION_22_29();

    if (!v7)
    {
      sub_25BAC44E4();
      OUTLINED_FUNCTION_22_29();
    }
  }

  return v1;
}

void sub_25BC4595C()
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BC471F4(v3, v2);
  OUTLINED_FUNCTION_37_21();
  sub_25BCB617C();
  v4 = OUTLINED_FUNCTION_26_29();
  sub_25BC45D94(v4, v5);
  v7 = v6;

  OUTLINED_FUNCTION_36_19();
  while (1)
  {
    if (v13 == v1)
    {

      goto LABEL_7;
    }

    if (v1 >= *(v7 + 16))
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_48_17();
    if (v8 == sub_25BAC4018())
    {
      sub_25BCB617C();

      OUTLINED_FUNCTION_20_30();
      OUTLINED_FUNCTION_14_36();
      sub_25BAD3BF4(v9, v10, v11, v12, 1);
      swift_endAccess();

LABEL_7:

      return;
    }
  }

  __break(1u);
}

uint64_t sub_25BC45AE0(void (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v4 = *(v1 + 104);
  v3 = *(v1 + 112);
  sub_25BCB617C();
  sub_25BCB617C();
  v5 = sub_25BC471F4(v4, v3);
  sub_25BCB617C();
  sub_25BC45D94(v5, v4);
  v7 = v6;

  v9 = 0;
  v10 = *(v7 + 16);
  for (i = (v7 + 48); ; i += 3)
  {
    if (v10 == v9)
    {
    }

    if (v9 >= *(v7 + 16))
    {
      break;
    }

    v12 = *(i - 1);
    v13 = *i;
    sub_25BCB617C();

    v14 = OUTLINED_FUNCTION_7_49();
    a1(v14);

    ++v9;
  }

  __break(1u);
  return result;
}

void sub_25BC45C10()
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BC471F4(v3, v2);
  OUTLINED_FUNCTION_37_21();
  sub_25BCB617C();
  v4 = OUTLINED_FUNCTION_26_29();
  sub_25BC45D94(v4, v5);
  v7 = v6;

  OUTLINED_FUNCTION_36_19();
  while (1)
  {
    if (v13 == v1)
    {

      goto LABEL_7;
    }

    if (v1 >= *(v7 + 16))
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_48_17();
    if (v8 == sub_25BAC4018())
    {
      sub_25BCB617C();

      OUTLINED_FUNCTION_20_30();
      OUTLINED_FUNCTION_14_36();
      sub_25BAD3BF4(v9, v10, v11, v12, 1);
      swift_endAccess();

LABEL_7:

      return;
    }
  }

  __break(1u);
}

void sub_25BC45D94(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = sub_25BAAF54C(a2);
  v8 = v7;
  v32 = v6;
  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v35 = MEMORY[0x277D84F90];
  sub_25BAD8238();
  if (v8 < 0)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v10 = v35;
  v34 = v4 >> 62;
  v31 = v4;
  if (v9)
  {
    v11 = 0;
    v33 = v4 & 0xC000000000000001;
    v12 = v4 & 0xFFFFFFFFFFFFFF8;
    v29 = v4 & 0xFFFFFFFFFFFFFF8;
    v28 = v5;
    v13 = (v5 + 40);
    v14 = v32;
    while (v14 != v11)
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      if (v34)
      {
        v17 = sub_25BCB749C();
      }

      else
      {
        v17 = *(v12 + 16);
      }

      if (v11 == v17)
      {
        goto LABEL_38;
      }

      if (v33)
      {
        sub_25BCB617C();
        v18 = MEMORY[0x25F8779B0](v11, v4);
      }

      else
      {
        if (v11 >= *(v12 + 16))
        {
          goto LABEL_42;
        }

        v18 = *(v4 + 8 * v11 + 32);
        sub_25BCB617C();
      }

      OUTLINED_FUNCTION_41_21();
      v14 = v32;
      if (v19)
      {
        sub_25BAD8238();
        v14 = v32;
        v10 = v35;
      }

      ++v11;
      *(v10 + 16) = v12;
      v20 = (v10 + 24 * v3);
      v20[4] = v15;
      v20[5] = v16;
      v20[6] = v18;
      v13 += 2;
      v12 = v29;
      v4 = v31;
      if (v9 == v11)
      {
        v5 = v28;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v12 = v4 & 0xFFFFFFFFFFFFFF8;
  v33 = v4 & 0xC000000000000001;
  v14 = v32;
LABEL_21:
  v30 = v4 + 32;
  v21 = (v5 + 16 * v9 + 40);
  for (i = v12; v14 != v9; v12 = i)
  {
    if (v9 >= v14)
    {
      goto LABEL_39;
    }

    if (__OFADD__(v9, 1))
    {
      goto LABEL_40;
    }

    v24 = *(v21 - 1);
    v23 = *v21;
    if (v34)
    {
      v25 = sub_25BCB749C();
      v14 = v32;
    }

    else
    {
      v25 = *(v12 + 16);
    }

    if (v9 == v25)
    {
      break;
    }

    if (v33)
    {
      sub_25BCB617C();
      v14 = v32;
      v26 = MEMORY[0x25F8779B0](v9, v31);
    }

    else
    {
      if (v9 >= *(v12 + 16))
      {
        goto LABEL_41;
      }

      v26 = *(v30 + 8 * v9);
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_41_21();
    if (v19)
    {
      sub_25BAD8238();
      v14 = v32;
      v10 = v35;
    }

    *(v10 + 16) = v12;
    v27 = (v10 + 24 * v3);
    v27[4] = v24;
    v27[5] = v23;
    v27[6] = v26;
    ++v9;
    v21 += 2;
  }

  OUTLINED_FUNCTION_46_19();
}

uint64_t sub_25BC4605C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v31 = MEMORY[0x277D84F90];
  result = sub_25BB00784(0, v6, 0);
  v25 = v5;
  v26 = v4;
  v23 = a1;
  v24 = v6;
  v22 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 48);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v27 = *(v9 - 4);
      v10 = *v9;
      v28 = *(v9 - 1);
      v29 = *v8;
      v12 = *(v31 + 16);
      v11 = *(v31 + 24);
      sub_25BCB617C();
      result = swift_unknownObjectRetain();
      if (v12 >= v11 >> 1)
      {
        result = sub_25BB00784((v11 > 1), v12 + 1, 1);
      }

      *(v31 + 16) = v12 + 1;
      v13 = v31 + 40 * v12;
      *(v13 + 32) = v27;
      --v5;
      *(v13 + 40) = v28;
      *(v13 + 48) = v10;
      *(v13 + 56) = v29;
      --v4;
      ++v8;
      v9 += 3;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v14 = v24;
    for (i = (v23 + 24 * v24 + 48); v26 != v14; i += 3)
    {
      if (v14 >= v26)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_24;
      }

      if (v25 == v14)
      {
        break;
      }

      if (v14 >= v25)
      {
        goto LABEL_25;
      }

      v16 = *(i - 4);
      v18 = *(i - 1);
      v17 = *i;
      v30 = *(v22 + 32 + 16 * v14);
      v20 = *(v31 + 16);
      v19 = *(v31 + 24);
      sub_25BCB617C();
      result = swift_unknownObjectRetain();
      if (v20 >= v19 >> 1)
      {
        result = sub_25BB00784((v19 > 1), v20 + 1, 1);
      }

      *(v31 + 16) = v20 + 1;
      v21 = v31 + 40 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      *(v21 + 48) = v17;
      *(v21 + 56) = v30;
      ++v14;
    }

    return v31;
  }

  return result;
}

uint64_t sub_25BC46280(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 16);
  v62 = MEMORY[0x277D84F90];
  sub_25BB007F0(0, v10, 0);
  v11 = sub_25BC4707C(a1, a2);
  sub_25BCB617C();
  v12 = sub_25BC4605C(v11, a1);

  v59 = a7;
  v56 = v10;
  v57 = v12;
  if (v10)
  {
    v14 = 0;
    v51 = *(v12 + 16);
    v15 = (v12 + 64);
    while (v51 != v14)
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_31;
      }

      v16 = *(v15 - 8);
      v17 = *(v15 - 3);
      v18 = *(v15 - 2);
      v20 = *(v15 - 1);
      v19 = *v15;
      if (v16 == a3 && (v17 == a4 ? (v21 = v18 == a5) : (v21 = 0), v21 || (v22 = *(v15 - 3), v23 = *(v15 - 2), (sub_25BCB789C() & 1) != 0)))
      {
        ObjectType = swift_getObjectType();
        v25 = *(v59 + 16);
        sub_25BCB617C();
        swift_unknownObjectRetain();
        v16 = v25(ObjectType, v59);
        v17 = v26;
        v54 = v27;
        v28 = a6;
        v60 = v59;
      }

      else
      {
        v60 = v19;
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain();
        v54 = v18;
        v28 = v20;
      }

      swift_unknownObjectRetain();
      swift_unknownObjectRelease();

      v30 = *(v62 + 16);
      v29 = *(v62 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_25BB007F0((v29 > 1), v30 + 1, 1);
      }

      *(v62 + 16) = v30 + 1;
      v31 = v62 + 40 * v30;
      *(v31 + 32) = v16;
      ++v14;
      *(v31 + 40) = v17;
      *(v31 + 48) = v54;
      *(v31 + 56) = v28;
      *(v31 + 64) = v60;
      v15 += 5;
      v12 = v57;
      if (v56 == v14)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_16:
    v32 = v56;
    v33 = (v12 + 40 * v56 + 64);
    while (v32 < *(v12 + 16))
    {
      v34 = *(v33 - 8);
      v35 = *(v33 - 3);
      v36 = *(v33 - 2);
      v37 = *(v33 - 1);
      v38 = *v33;
      if (v34 == a3 && (v35 == a4 ? (v39 = v36 == a5) : (v39 = 0), v39 || (v40 = *(v33 - 3), v41 = *(v33 - 2), (sub_25BCB789C() & 1) != 0)))
      {
        v42 = a6;
        v43 = swift_getObjectType();
        v44 = *(v59 + 16);
        sub_25BCB617C();
        swift_unknownObjectRetain();
        v34 = v44(v43, v59);
        v35 = v45;
        v47 = v46;
        v61 = v59;
      }

      else
      {
        v61 = v38;
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain();
        v47 = v36;
        v42 = v37;
      }

      swift_unknownObjectRetain();
      swift_unknownObjectRelease();

      v49 = *(v62 + 16);
      v48 = *(v62 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_25BB007F0((v48 > 1), v49 + 1, 1);
      }

      *(v62 + 16) = v49 + 1;
      v50 = v62 + 40 * v49;
      *(v50 + 32) = v34;
      *(v50 + 40) = v35;
      *(v50 + 48) = v47;
      *(v50 + 56) = v42;
      *(v50 + 64) = v61;
      v33 += 5;
      ++v32;
      v12 = v57;
    }

    swift_unknownObjectRelease();
    return v62;
  }

  return result;
}

void sub_25BC4666C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25BAAF54C(a1);
  v44 = MEMORY[0x277D84F90];
  sub_25BB00850(0, v7 & ~(v7 >> 63), 0);
  v8 = sub_25BC471F4(a1, a2);
  sub_25BCB617C();
  sub_25BC45D94(v8, a1);
  v41 = v9;

  v10 = v7;

  if (v7 < 0)
  {
LABEL_31:
    __break(1u);
    return;
  }

  if (v7)
  {
    v11 = 0;
    v38 = v10;
    v39 = *(v41 + 16);
    v12 = (v41 + 48);
    while (v39 != v11)
    {
      if (v11 >= *(v41 + 16))
      {
        goto LABEL_30;
      }

      v14 = *(v12 - 2);
      v13 = *(v12 - 1);
      v15 = *v12;
      v16 = v14 == a3 && v13 == a4;
      if (v16 || (v17 = *(v12 - 2), (OUTLINED_FUNCTION_18_36() & 1) != 0))
      {
        sub_25BCB617C();

        v18 = a5;
        v14 = sub_25BAC44E4();
        v20 = v19;
        v10 = v38;
      }

      else
      {
        swift_bridgeObjectRetain_n();

        v20 = v13;
        v18 = v15;
      }

      v21 = *(v44 + 16);
      if (v21 >= *(v44 + 24) >> 1)
      {
        OUTLINED_FUNCTION_45_0();
        sub_25BB00850(v23, v24, v25);
        v10 = v38;
      }

      ++v11;
      *(v44 + 16) = v21 + 1;
      v22 = (v44 + 24 * v21);
      v22[4] = v14;
      v22[5] = v20;
      v22[6] = v18;
      v12 += 3;
      if (v10 == v11)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_16:
  v26 = (v41 + 24 * v10 + 48);
  while (v10 < *(v41 + 16))
  {
    v28 = *(v26 - 2);
    v27 = *(v26 - 1);
    v29 = *v26;
    v30 = v28 == a3 && v27 == a4;
    if (v30 || (v31 = *(v26 - 2), (OUTLINED_FUNCTION_18_36() & 1) != 0))
    {
      sub_25BCB617C();

      v32 = a5;
      v28 = sub_25BAC44E4();
      v34 = v33;
    }

    else
    {
      swift_bridgeObjectRetain_n();

      v34 = v27;
      v32 = v29;
    }

    v36 = *(v44 + 16);
    v35 = *(v44 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_25BB00850((v35 > 1), v36 + 1, 1);
    }

    *(v44 + 16) = v36 + 1;
    v37 = (v44 + 24 * v36);
    v37[4] = v28;
    v37[5] = v34;
    v37[6] = v32;
    v26 += 3;
    ++v10;
  }

  OUTLINED_FUNCTION_46_19();
}

void sub_25BC46974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v44 = MEMORY[0x277D84F90];
  sub_25BB00810(0, v7, 0);
  v8 = v44;
  v9 = sub_25BC471F4(a1, a2);
  sub_25BCB617C();
  v10 = sub_25BC46C10(v9, a1);

  v11 = v7;

  v41 = v10;
  if (v7)
  {
    v12 = 0;
    v38 = v7;
    v39 = *(v10 + 16);
    v13 = (v10 + 56);
    while (v39 != v12)
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_29;
      }

      v14 = *(v13 - 3);
      v15 = *(v13 - 2);
      v4 = *(v13 - 1);
      v16 = *v13;
      v17 = v14 == a3 && v15 == a4;
      v40 = *(v13 - 1);
      if (v17 || (OUTLINED_FUNCTION_18_36() & 1) != 0)
      {
        sub_25BCB617C();
        sub_25BCB617C();
        v14 = sub_25BAC44E4();
        v19 = v18;

        v15 = v19;
        v11 = v38;
      }

      else
      {
        sub_25BCB617C();
        sub_25BCB617C();
      }

      OUTLINED_FUNCTION_39_22();
      if (v20)
      {
        OUTLINED_FUNCTION_13_39();
        sub_25BB00810(v22, v23, v24);
        v11 = v38;
        v8 = v44;
      }

      ++v12;
      *(v8 + 16) = a1;
      v21 = (v8 + 32 * v4);
      v21[4] = v14;
      v21[5] = v15;
      v21[6] = v40;
      v21[7] = v16;
      v13 += 4;
      v10 = v41;
      if (v11 == v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_15:
    v25 = (v10 + 32 * v11 + 56);
    while (v11 < *(v10 + 16))
    {
      v26 = *(v25 - 3);
      v27 = *(v25 - 2);
      v28 = *(v25 - 1);
      v29 = *v25;
      v30 = v26 == a3 && v27 == a4;
      if (v30 || (v31 = *(v25 - 3), (OUTLINED_FUNCTION_18_36() & 1) != 0))
      {
        sub_25BCB617C();
        sub_25BCB617C();
        v4 = v11;
        v26 = sub_25BAC44E4();
        v33 = v32;

        v27 = v33;
        v11 = v4;
      }

      else
      {
        sub_25BCB617C();
        sub_25BCB617C();
      }

      OUTLINED_FUNCTION_39_22();
      if (v20)
      {
        OUTLINED_FUNCTION_13_39();
        sub_25BB00810(v35, v36, v37);
        v8 = v44;
      }

      *(v8 + 16) = a1;
      v34 = (v8 + 32 * v4);
      v34[4] = v26;
      v34[5] = v27;
      v34[6] = v28;
      v34[7] = v29;
      v25 += 4;
      ++v11;
      v10 = v41;
    }

    OUTLINED_FUNCTION_46_19();
  }
}

uint64_t sub_25BC46C10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v36 = MEMORY[0x277D84F90];
  result = sub_25BB00830(0, v6, 0);
  v28 = v5;
  v29 = v4;
  v26 = a1;
  v27 = a2;
  v30 = v6;
  if (v6)
  {
    v8 = (a2 + 40);
    v9 = (a1 + 40);
    v10 = v5;
    while (v4)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = *v9;
      v12 = *v8;
      v32 = *(v9 - 1);
      v33 = *(v8 - 1);
      v14 = *(v36 + 16);
      v13 = *(v36 + 24);
      v34 = v14 + 1;
      sub_25BCB617C();
      result = sub_25BCB617C();
      if (v14 >= v13 >> 1)
      {
        result = sub_25BB00830(v13 > 1, v34, 1);
      }

      *(v36 + 16) = v34;
      v15 = (v36 + 32 * v14);
      v15[4] = v32;
      v15[5] = v11;
      --v10;
      v15[6] = v33;
      v15[7] = v12;
      --v4;
      v8 += 2;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v30;
    v35 = 16 * v30;
    v17 = v26;
    for (i = v27; v29 != v16; i += 16)
    {
      if (v16 >= v29)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_24;
      }

      if (v28 == v16)
      {
        break;
      }

      if (v16 >= v28)
      {
        goto LABEL_25;
      }

      v31 = v16;
      v19 = *(v17 + v35 + 32);
      v20 = *(v17 + v35 + 40);
      v21 = *(i + v35 + 32);
      v22 = *(i + v35 + 40);
      v24 = *(v36 + 16);
      v23 = *(v36 + 24);
      sub_25BCB617C();
      result = sub_25BCB617C();
      if (v24 >= v23 >> 1)
      {
        result = sub_25BB00830(v23 > 1, v24 + 1, 1);
      }

      *(v36 + 16) = v24 + 1;
      v25 = (v36 + 32 * v24);
      v25[4] = v19;
      v25[5] = v20;
      v25[6] = v21;
      v25[7] = v22;
      v16 = v31 + 1;
      v17 += 16;
    }

    return v36;
  }

  return result;
}

void sub_25BC46E18(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25BCB749C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (sub_25BAB3058())
      {
        v8 = v7;
        ObjectType = swift_getObjectType();
        (*(v8 + 48))(v20, ObjectType, v8);
        v18 = v20[1];
        v19 = v20[0];
        v17 = v20[2];
        v10 = v21;
        v11 = v22;
        v12 = v23;
        swift_unknownObjectRelease();

        if ((v12 & 1) == 0)
        {
          v14 = v18;
          v13 = v19;
          v15 = v17;
          goto LABEL_15;
        }
      }

      else
      {
      }

      ++v4;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_14:
  v10 = 0;
  v11 = 0;
  v12 = 1;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
LABEL_15:
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 57) = v12;
}

uint64_t sub_25BC4732C(uint64_t a1)
{
  sub_25BACF724();
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25BCB614C();
  v25 = *(a1 + 16);
  if (v25)
  {
    v4 = 0;
    v5 = (a1 + 56);
    v24 = a1;
    while (v4 < *(a1 + 16))
    {
      v6 = *(v5 - 6);
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      v28 = *v5;
      v26 = v2;
      v27 = *(v2 + 16);
      sub_25BCB617C();
      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v9 = sub_25BAD23EC();
      if (__OFADD__(v3[2], (v10 & 1) == 0))
      {
        goto LABEL_19;
      }

      v11 = v9;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66F8, &unk_25BCCEC10);
      if (sub_25BCB745C())
      {
        v13 = sub_25BAD23EC();
        if ((v12 & 1) != (v14 & 1))
        {
          goto LABEL_21;
        }

        v11 = v13;
      }

      if (v12)
      {

        *(v3[7] + 8 * v11) = v27;
      }

      else
      {
        v3[(v11 >> 6) + 8] |= 1 << v11;
        v15 = v3[6] + 24 * v11;
        *v15 = v6;
        *(v15 + 8) = v8;
        *(v15 + 16) = v7;
        *(v3[7] + 8 * v11) = v27;
        v16 = v3[2];
        v17 = __OFADD__(v16, 1);
        v18 = v16 + 1;
        if (v17)
        {
          goto LABEL_20;
        }

        v3[2] = v18;
      }

      v2 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = *(v26 + 16);
        sub_25BAFD89C();
        v2 = v21;
      }

      v19 = *(v2 + 16);
      if (v19 >= *(v2 + 24) >> 1)
      {
        sub_25BAFD89C();
        v2 = v22;
      }

      ++v4;
      *(v2 + 16) = v19 + 1;
      *(v2 + 16 * v19 + 32) = v28;
      v5 = (v5 + 40);
      a1 = v24;
      if (v25 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_25BCB795C();
    __break(1u);
  }

  else
  {
LABEL_17:

    return v2;
  }

  return result;
}

uint64_t sub_25BC475A4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  v3 = sub_25BCB614C();
  v23 = *(a1 + 16);
  if (v23)
  {
    v4 = 0;
    v5 = (a1 + 48);
    v22 = a1;
    while (v4 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      if (v2 >> 62)
      {
        v9 = sub_25BCB749C();
      }

      else
      {
        v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_25BCB617C();

      swift_isUniquelyReferenced_nonNull_native();
      v10 = v7;
      v11 = sub_25BA9266C(v7, v6);
      if (__OFADD__(v3[2], (v12 & 1) == 0))
      {
        goto LABEL_21;
      }

      v13 = v11;
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      v15 = sub_25BCB745C();
      if (v15)
      {
        v15 = sub_25BA9266C(v10, v6);
        if ((v14 & 1) != (v16 & 1))
        {
          goto LABEL_23;
        }

        v13 = v15;
      }

      if (v14)
      {

        *(v3[7] + 8 * v13) = v9;
      }

      else
      {
        v3[(v13 >> 6) + 8] |= 1 << v13;
        v17 = (v3[6] + 16 * v13);
        *v17 = v10;
        v17[1] = v6;
        *(v3[7] + 8 * v13) = v9;
        v18 = v3[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_22;
        }

        v3[2] = v20;
      }

      MEMORY[0x25F876F40](v15);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25BCB67AC();
      }

      ++v4;
      sub_25BCB680C();
      v2 = v24;
      v5 += 3;
      a1 = v22;
      if (v23 == v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_25BCB795C();
    __break(1u);
  }

  else
  {
LABEL_19:

    return v2;
  }

  return result;
}

uint64_t sub_25BC47804(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25BCB614C();
  v27 = *(a1 + 16);
  if (v27)
  {
    v4 = 0;
    v5 = (a1 + 56);
    v26 = a1;
    while (v4 < *(a1 + 16))
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v8 = *v5;
      v28 = *(v5 - 1);
      v29 = v2;
      v9 = *(v2 + 16);
      sub_25BCB617C();
      sub_25BCB617C();
      swift_isUniquelyReferenced_nonNull_native();
      v10 = sub_25BA9266C(v7, v6);
      if (__OFADD__(v3[2], (v11 & 1) == 0))
      {
        goto LABEL_19;
      }

      v12 = v10;
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      if (sub_25BCB745C())
      {
        v14 = sub_25BA9266C(v7, v6);
        if ((v13 & 1) != (v15 & 1))
        {
          goto LABEL_21;
        }

        v12 = v14;
      }

      if (v13)
      {

        *(v3[7] + 8 * v12) = v9;
      }

      else
      {
        v3[(v12 >> 6) + 8] |= 1 << v12;
        v16 = (v3[6] + 16 * v12);
        *v16 = v7;
        v16[1] = v6;
        *(v3[7] + 8 * v12) = v9;
        v17 = v3[2];
        v18 = __OFADD__(v17, 1);
        v19 = v17 + 1;
        if (v18)
        {
          goto LABEL_20;
        }

        v3[2] = v19;
      }

      v2 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = *(v29 + 16);
        sub_25BAB1E30();
        v2 = v23;
      }

      v20 = *(v2 + 16);
      if (v20 >= *(v2 + 24) >> 1)
      {
        sub_25BAB1E30();
        v2 = v24;
      }

      ++v4;
      *(v2 + 16) = v20 + 1;
      v21 = v2 + 16 * v20;
      *(v21 + 32) = v28;
      *(v21 + 40) = v8;
      v5 += 4;
      a1 = v26;
      if (v27 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_25BCB795C();
    __break(1u);
  }

  else
  {
LABEL_17:

    return v2;
  }

  return result;
}

uint64_t sub_25BC47A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v12 = v6[1];
  if (*(v12 + 16))
  {
    v13 = sub_25BAD23EC();
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        a4 = *v7;
        if (v15 < *(*v7 + 16))
        {
          v16 = a4 + 16 * v15;
          v12 = *(v16 + 32);
          v17 = *(v16 + 40);
          swift_unknownObjectRetain();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_6:
            v18 = a4 + 16 * v15;
            v19 = *(v18 + 32);
            *(v18 + 32) = a1;
            *(v18 + 40) = a2;
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            *v7 = a4;
            return v12;
          }

LABEL_13:
          sub_25BBF1378(a4);
          a4 = v25;
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  sub_25BAD46FC();
  v20 = *(*v7 + 16);
  sub_25BAD4820(v20);
  v21 = *v7;
  *(v21 + 16) = v20 + 1;
  v22 = v21 + 16 * v20;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  *v7 = v21;
  swift_unknownObjectRetain();
  v23 = v7[1];
  swift_isUniquelyReferenced_nonNull_native();
  v26 = v7[1];
  sub_25BAD4714();
  v12 = 0;
  v7[1] = v26;
  return v12;
}

uint64_t sub_25BC47BDC()
{
  sub_25BCB79CC();
  sub_25BAD88C8(v1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC47C24()
{
  sub_25BCB79CC();
  sub_25BAD88C8(v1);
  return sub_25BCB7A3C();
}

void sub_25BC47C64(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = OUTLINED_FUNCTION_9_47();
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v3;
  v5 = OUTLINED_FUNCTION_9_47();
  *(v1 + 64) = v3;
  *(v1 + 72) = v5;
  sub_25BACF724();
  v6 = sub_25BCB614C();
  *(v1 + 80) = v3;
  *(v1 + 88) = v6;
  *(v1 + 96) = v3;
  v7 = OUTLINED_FUNCTION_9_47();
  *(v1 + 104) = v3;
  *(v1 + 112) = v7;
  *(v1 + 120) = v3;
  v8 = OUTLINED_FUNCTION_9_47();
  v9 = MEMORY[0x277D84FA0];
  *(v1 + 200) = MEMORY[0x277D84FA0];
  *(v1 + 128) = v3;
  *(v1 + 136) = v8;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0;
  if (qword_28154F9D0 != -1)
  {
    swift_once();
  }

  *(v1 + 208) = dword_281557408;
  *(v1 + 216) = v3;
  *(v1 + 24) = 1;
  *(v1 + 32) = v9;
  OUTLINED_FUNCTION_20_30();
  sub_25BACF778(a1 + 168, v1 + 144);
  swift_endAccess();
  v10 = *(a1 + 224);
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v11 = *(v1 + 200);
  *(v1 + 200) = v10;
  sub_25BCB617C();

  *(v1 + 208) = *(a1 + 232);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v14 = *(v1 + 40);
  v15 = *(v1 + 48);
  *(v1 + 40) = v12;
  *(v1 + 48) = v13;
  sub_25BCB617C();
  sub_25BCB617C();

  v16 = sub_25BAAF54C(v12);
  v73 = v1;
  v74 = a1;
  if (v16)
  {
    v17 = v16;
    sub_25BAD4D9C();
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_31;
    }

    v18 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](v18, v12);
      }

      else
      {
        v19 = *(v12 + 8 * v18 + 32);
      }

      v20 = *(v19 + 152);
      v21 = *(v19 + 160);
      sub_25BCB617C();

      v76 = v3;
      v23 = *(v3 + 16);
      v22 = *(v3 + 24);
      if (v23 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_81(v22);
        OUTLINED_FUNCTION_13_39();
        sub_25BAD4D9C();
      }

      ++v18;
      *(v3 + 16) = v23 + 1;
      v24 = v3 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
    }

    while (v17 != v18);
    a1 = v74;
  }

  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v25 = *(v1 + 56);
  *(v1 + 56) = v3;

  v26 = *(a1 + 104);
  v27 = *(a1 + 112);
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v28 = *(v1 + 64);
  v29 = *(v1 + 72);
  *(v1 + 64) = v26;
  *(v1 + 72) = v27;
  sub_25BCB617C();
  sub_25BCB617C();

  v31 = *(a1 + 120);
  v30 = *(a1 + 128);
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v32 = *(v1 + 80);
  v33 = *(v1 + 88);
  *(v1 + 80) = v31;
  *(v1 + 88) = v30;
  sub_25BCB617C();
  sub_25BCB617C();

  v34 = *(v31 + 16);
  v35 = MEMORY[0x277D84F90];
  if (v34)
  {
    v77 = MEMORY[0x277D84F90];
    sub_25BB00738();
    v35 = v77;
    v36 = (v31 + 40);
    do
    {
      v37 = *(v36 - 1);
      v38 = *v36;
      v39 = swift_unknownObjectRetain();
      v40 = sub_25BAD4888(v39, v38);
      v42 = v41;
      v44 = v43;
      v76 = v35;
      v46 = *(v35 + 16);
      v45 = *(v35 + 24);
      if (v46 >= v45 >> 1)
      {
        OUTLINED_FUNCTION_81(v45);
        OUTLINED_FUNCTION_13_39();
        sub_25BB00738();
      }

      *(v35 + 16) = v46 + 1;
      v47 = (v35 + 24 * v46);
      v47[4] = v40;
      v47[5] = v42;
      v47[6] = v44;
      v36 += 2;
      --v34;
    }

    while (v34);
    v1 = v73;
    a1 = v74;
  }

  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v48 = *(v1 + 96);
  *(v1 + 96) = v35;

  v50 = *(a1 + 152);
  v49 = *(a1 + 160);
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v51 = *(v1 + 104);
  v52 = *(v1 + 112);
  *(v1 + 104) = v50;
  *(v1 + 112) = v49;
  sub_25BCB617C();
  sub_25BCB617C();

  v53 = sub_25BAAF54C(v50);
  v54 = MEMORY[0x277D84F90];
  if (!v53)
  {
    goto LABEL_29;
  }

  v55 = v53;
  v75 = MEMORY[0x277D84F90];
  sub_25BB00718(0, v53 & ~(v53 >> 63), 0);
  if ((v55 & 0x8000000000000000) == 0)
  {
    v56 = 0;
    v54 = v75;
    v57 = v50;
    do
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v56, v57);
      }

      else
      {
        v58 = *(v57 + 8 * v56 + 32);
      }

      OUTLINED_FUNCTION_17_10();
      sub_25BAD5184(v59, v60, v61, v62, v63);
      v64 = v79;
      v66 = *(v75 + 16);
      v65 = *(v75 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_25BB00718(v65 > 1, v66 + 1, 1);
        v64 = v79;
        v57 = v50;
      }

      ++v56;
      *(v75 + 16) = v66 + 1;
      v67 = v75 + 56 * v66;
      *(v67 + 32) = v76;
      *(v67 + 40) = v78;
      *(v67 + 48) = v64;
      *(v67 + 64) = v80;
      *(v67 + 72) = v81;
      *(v67 + 80) = v82;
    }

    while (v55 != v56);
    v1 = v73;
LABEL_29:
    OUTLINED_FUNCTION_5_53();
    swift_beginAccess();
    v68 = *(v1 + 120);
    *(v1 + 120) = v54;

    v69 = *(v74 + 136);
    v70 = *(v74 + 144);
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BA9AC78(v74);
    OUTLINED_FUNCTION_5_53();
    swift_beginAccess();
    v72 = *(v1 + 128);
    v71 = *(v1 + 136);
    *(v1 + 128) = v69;
    *(v1 + 136) = v70;

    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_25BC48234@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25BAC4018();
  *a1 = result;
  return result;
}

void sub_25BC48260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v7 = v4[10];
  v6 = v4[11];
  v104 = v4;
  sub_25BCB617C();
  sub_25BCB617C();
  v111 = v6;
  sub_25BC4707C(v7, v6);
  OUTLINED_FUNCTION_37_21();
  sub_25BCB617C();
  v8 = OUTLINED_FUNCTION_26_29();
  v10 = sub_25BC4605C(v8, v9);
  v112 = v7;

  v11 = 0;
  v12 = *(v10 + 16);
  v117 = a4;
  v115 = v10;
  for (i = (v10 + 64); ; i += 5)
  {
    if (v12 == v11)
    {

LABEL_42:

      ObjectType = swift_getObjectType();
      v74 = (*(a2 + 16))(ObjectType, a2);
      v76 = v75;
      v78 = v77;
      OUTLINED_FUNCTION_20_30();
      v79 = sub_25BC47A5C(a1, a2, v74, v76, v78, 1);
      swift_endAccess();

      swift_unknownObjectRelease();
      v80 = swift_unknownObjectRetain();
      sub_25BAD4888(v80, a2);
      OUTLINED_FUNCTION_22_29();
      v82 = v81;
      OUTLINED_FUNCTION_20_30();
      sub_25BAD4DE8();
      v83 = *(v104[12] + 16);
      sub_25BAD4E40();
      v84 = v104[12];
      *(v84 + 16) = v83 + 1;
      v85 = (v84 + 24 * v83);
      v85[4] = v79;
      v85[5] = v76;
      v85[6] = v82;
      v104[12] = v84;
      swift_endAccess();
      return;
    }

    if (v11 >= *(v115 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v14 = *(i - 8);
    v15 = *(i - 2);
    v114 = *(i - 3);
    v16 = *(i - 1);
    v17 = *i;
    v18 = swift_getObjectType();
    v19 = *(v17 + 16);
    sub_25BCB617C();
    swift_unknownObjectRetain();
    v20 = v19(v18, v17);
    v22 = v21;
    v24 = v23;
    v25 = swift_getObjectType();
    v116 = *(v117 + 16);
    if (v20 != v116())
    {

      goto LABEL_12;
    }

    v113 = v25;
    if (v22 == v26 && v24 == v27)
    {
      break;
    }

    v29 = OUTLINED_FUNCTION_32_23();

    if (v29)
    {
      goto LABEL_15;
    }

LABEL_12:
    swift_unknownObjectRelease();

    ++v11;
  }

LABEL_15:

  v31 = v104[10];
  v30 = v104[11];
  v32 = *(v30 + 16);
  sub_25BCB617C();
  if (!v32)
  {
LABEL_41:

    swift_unknownObjectRelease();
    goto LABEL_42;
  }

  sub_25BCB617C();
  v33 = sub_25BAD23EC();
  if ((v34 & 1) == 0)
  {

    goto LABEL_41;
  }

  v100 = *(*(v30 + 56) + 8 * v33);

  v35 = v104[10];
  v36 = v104[11];
  sub_25BCB617C();
  sub_25BCB617C();
  v37 = OUTLINED_FUNCTION_24_1();
  v39 = sub_25BC4707C(v37, v38);
  sub_25BCB617C();
  v40 = sub_25BC4605C(v39, v35);

  swift_bridgeObjectRelease_n();
  v107 = *(v40 + 16);
  if (v107)
  {
    v41 = 0;
    v102 = a2 + 16;
    v35 = (v40 + 64);
    v42 = MEMORY[0x277D84F90];
    v106 = v40;
    while (1)
    {
      if (v41 >= *(v40 + 16))
      {
        goto LABEL_48;
      }

      v111 = *(v35 - 8);
      v43 = *(v35 - 2);
      v112 = *(v35 - 3);
      v44 = *(v35 - 1);
      v45 = *v35;
      v46 = swift_getObjectType();
      v47 = *(v45 + 16);
      v115 = v43;
      sub_25BCB617C();
      swift_unknownObjectRetain();
      v114 = v45;
      LODWORD(v45) = v47(v46, v45);
      v49 = v48;
      v51 = v50;
      if (v45 == (v116)(v113, v117))
      {
        if (v49 == v52 && v51 == v53)
        {

LABEL_29:
          v56 = swift_getObjectType();
          v57 = (*(a2 + 16))(v56);
          v59 = v58;
          v103 = v60;
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = *(v42 + 16);
            OUTLINED_FUNCTION_45();
            sub_25BAFD950();
            v42 = v71;
          }

          v62 = *(v42 + 16);
          v61 = *(v42 + 24);
          if (v62 >= v61 >> 1)
          {
            OUTLINED_FUNCTION_81(v61);
            OUTLINED_FUNCTION_13_39();
            sub_25BAFD950();
            v42 = v72;
          }

          *(v42 + 16) = v62 + 1;
          v63 = v42 + 40 * v62;
          *(v63 + 32) = v57;
          *(v63 + 40) = v59;
          *(v63 + 48) = v103;
          *(v63 + 56) = a1;
          *(v63 + 64) = a2;
          goto LABEL_34;
        }

        v55 = OUTLINED_FUNCTION_32_23();

        if (v55)
        {
          goto LABEL_29;
        }
      }

      else
      {
      }

LABEL_34:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = *(v42 + 16);
        OUTLINED_FUNCTION_45();
        sub_25BAFD950();
        v42 = v68;
      }

      v65 = *(v42 + 16);
      v64 = *(v42 + 24);
      if (v65 >= v64 >> 1)
      {
        OUTLINED_FUNCTION_81(v64);
        sub_25BAFD950();
        v42 = v69;
      }

      *(v42 + 16) = v65 + 1;
      v66 = v42 + 40 * v65;
      *(v66 + 32) = v111;
      ++v41;
      *(v66 + 40) = v112;
      *(v66 + 48) = v115;
      *(v66 + 56) = v44;
      *(v66 + 64) = v114;
      v35 += 5;
      v40 = v106;
      if (v107 == v41)
      {
        goto LABEL_44;
      }
    }
  }

  v42 = MEMORY[0x277D84F90];
LABEL_44:

  sub_25BAF9D40(v42, v86, v87, v88, v89, v90, v91, v92, v100, v102, v103, v104, v106, v107, a1, a2, v111, v112, v113, v114, v115, v116);
  OUTLINED_FUNCTION_37_21();

  v93 = sub_25BC4732C(v35);
  v95 = v105[10];
  v94 = v105[11];
  v105[10] = v93;
  v105[11] = v96;

  v97 = swift_unknownObjectRetain();
  sub_25BAD4888(v97, v110);
  OUTLINED_FUNCTION_22_29();
  OUTLINED_FUNCTION_20_30();
  if (*(v105[12] + 16) < v101)
  {
    goto LABEL_49;
  }

  if ((v101 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_14_36();
    sub_25BC02968(v98, v99);
    swift_endAccess();
    swift_unknownObjectRelease();

    return;
  }

LABEL_50:
  __break(1u);
}

void sub_25BC48950()
{
  v1 = sub_25BAB3058();
  v3 = v2;
  swift_beginAccess();
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  sub_25BCB617C();
  sub_25BCB617C();
  v6 = sub_25BC4707C(v5, v4);
  sub_25BCB617C();
  v7 = sub_25BC4605C(v6, v5);

  v8 = 0;
  v40 = *(v7 + 16);
  v41 = v7;
  v39 = v7 + 32;
  v48 = v3;
  v45 = MEMORY[0x277D84F90];
  while (1)
  {
LABEL_2:
    if (v8 >= v40)
    {

      swift_unknownObjectRelease();
      return;
    }

    if (v8 >= *(v41 + 16))
    {
      break;
    }

    v9 = v39 + 40 * v8;
    v44 = *v9;
    v10 = *(v9 + 16);
    v43 = *(v9 + 8);
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    v47 = v8 + 1;
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 32);
    sub_25BCB617C();
    swift_unknownObjectRetain();
    v46 = v11;
    v42 = v12;
    v15 = v14(ObjectType, v12);
    v16 = sub_25BA9BEA0(v15);
    for (i = 0; ; ++i)
    {
      if (v16 == i)
      {
        swift_unknownObjectRelease();

        v8 = v47;
        goto LABEL_2;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](i, v15);
      }

      else
      {
        if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v18 = *(v15 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v19 = sub_25BAC4018();
      if (v19 == sub_25BAC4018())
      {
        break;
      }

      if (!v1)
      {
        goto LABEL_25;
      }

      swift_unknownObjectRetain();
      if (sub_25BAB3058())
      {
        v21 = v20;
        v22 = swift_getObjectType();
        v23 = (*(v21 + 16))(v22, v21);
        v25 = v24;
        v27 = v26;
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0;
        v25 = 0;
        v27 = 0;
      }

      v28 = swift_getObjectType();
      v29 = (*(v48 + 16))(v28);
      if (!v27)
      {

        swift_unknownObjectRelease();
LABEL_25:

        continue;
      }

      if (v23 != v29)
      {
        swift_unknownObjectRelease();

        goto LABEL_25;
      }

      if (v25 == v30 && v27 == v31)
      {
        swift_unknownObjectRelease();

        break;
      }

      v33 = sub_25BCB789C();
      swift_unknownObjectRelease();

      if (v33)
      {
        goto LABEL_31;
      }
    }

LABEL_31:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = *(v45 + 16);
      sub_25BAFD7B8();
      v45 = v37;
    }

    v34 = *(v45 + 16);
    if (v34 >= *(v45 + 24) >> 1)
    {
      sub_25BAFD7B8();
      v45 = v38;
    }

    *(v45 + 16) = v34 + 1;
    v35 = v45 + 40 * v34;
    *(v35 + 32) = v46;
    *(v35 + 40) = v42;
    *(v35 + 48) = v44;
    v8 = v47;
    *(v35 + 56) = v43;
    *(v35 + 64) = v10;
  }

LABEL_39:
  __break(1u);
}

void sub_25BC48D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  sub_25BC495B8(a1, a2);
  v9 = v8;
  v121 = *(v8 + 16);
  if (!v121)
  {
    OUTLINED_FUNCTION_10_16();

    return;
  }

  v120 = v8 + 32;
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v10 = 0;
  v117 = v9;
  v118 = a3;
  v112 = v6;
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:

      v14 = v125;
LABEL_39:
      OUTLINED_FUNCTION_21_31();
      sub_25BCB70FC();

      *&v134[0] = 0xD00000000000002ELL;
      *(&v134[0] + 1) = 0x800000025BCE47A0;
      MEMORY[0x25F876C90](v5, v14);
      OUTLINED_FUNCTION_50_15();
      OUTLINED_FUNCTION_15_37();
      OUTLINED_FUNCTION_3_53();
      goto LABEL_44;
    }

    v11 = (v120 + 48 * v10);
    if (*(v11 + 40))
    {
      break;
    }

LABEL_26:
    if (++v10 == v121)
    {
      goto LABEL_30;
    }
  }

  v12 = *v11;
  v5 = v11[1];
  v14 = v11[2];
  v13 = v11[3];
  v15 = v11[4];
  v123 = v15;
  v124 = v10;
  v125 = v14;
  v122 = v13;
  if (*(v11 + 40) == 1)
  {
    v16 = v6[11];
    if (*(v16 + 16))
    {
      v17 = v6[10];
      v18 = OUTLINED_FUNCTION_7_49();
      sub_25BC4E03C(v18, v19, v14, v13, v15, 1);
      sub_25BCB617C();
      sub_25BCB617C();
      v20 = sub_25BAD23EC();
      v21 = v13;
      if (v22)
      {
        v115 = *(*(v16 + 56) + 8 * v20);

        v23 = v6[10];
        v24 = v6[11];
        sub_25BCB617C();
        swift_unknownObjectRetain();
        sub_25BCB617C();
        sub_25BCB617C();
        v25 = sub_25BC46280(v23, v24, v14, v21, v15, a3, a4);

        v26 = sub_25BC4732C(v25);
        v28 = v6[10];
        v27 = v6[11];
        v6[10] = v26;
        v6[11] = v29;

        v30 = swift_unknownObjectRetain();
        v31 = sub_25BAD4888(v30, a4);
        v33 = v32;
        v35 = v34;
        OUTLINED_FUNCTION_20_30();
        v36 = v6[12];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6[12] = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25BBF140C(v36);
          v36 = v108;
          v6[12] = v108;
        }

        if ((v115 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        if (v115 >= *(v36 + 16))
        {
          goto LABEL_36;
        }

        v38 = (v36 + 24 * v115);
        v39 = v38[5];
        v38[4] = v31;
        v38[5] = v33;
        v38[6] = v35;
        v6[12] = v36;
        swift_endAccess();

        v40 = OUTLINED_FUNCTION_7_49();
        sub_25BC49B1C(v40, v41);
        v43 = *(v42 + 16);
        if (v43)
        {
          v44 = (v42 + 64);
          do
          {
            v45 = *(v44 - 4);
            v46 = *(v44 - 3);
            v47 = *v44;
            v44 += 5;
            ObjectType = swift_getObjectType();
            swift_unknownObjectRetain();
            sub_25BCB617C();
            v49 = OUTLINED_FUNCTION_7_49();
            sub_25BC607AC(v49, v50, v118, a4, ObjectType, v46);

            swift_unknownObjectRelease();
            --v43;
          }

          while (v43);

          v51 = OUTLINED_FUNCTION_7_49();
          sub_25BC4E0A8(v51, v52, v125, v122, v123, 1);
          v6 = v112;
          a3 = v118;
          goto LABEL_25;
        }

        v106 = OUTLINED_FUNCTION_7_49();
        sub_25BC4E0A8(v106, v107, v125, v122, v123, 1);
LABEL_24:
        a3 = v118;
LABEL_25:
        v9 = v117;
        v10 = v124;
        goto LABEL_26;
      }

      v111 = v15;
    }

    else
    {
      v21 = v11[3];
      swift_unknownObjectRetain();
      v111 = v15;
      sub_25BCB617C();
    }

    OUTLINED_FUNCTION_21_31();
    sub_25BCB70FC();
    v134[0] = v126;
    MEMORY[0x25F876C90](0xD000000000000031, 0x800000025BCE4810);
    MEMORY[0x25F876C90](v21, v111);
    OUTLINED_FUNCTION_50_15();
    OUTLINED_FUNCTION_15_37();
    OUTLINED_FUNCTION_3_53();
LABEL_44:
    sub_25BA97890();
  }

  v54 = v6[13];
  v53 = v6[14];
  v55 = *(v53 + 16);
  v56 = OUTLINED_FUNCTION_7_49();
  sub_25BC4E03C(v56, v57, v14, v13, v58, 2);

  if (!v55)
  {
    goto LABEL_39;
  }

  sub_25BCB617C();
  sub_25BCB617C();
  v59 = sub_25BA9266C(v5, v14);
  if ((v60 & 1) == 0)
  {
    goto LABEL_38;
  }

  v61 = *(*(v53 + 56) + 8 * v59);

  v62 = sub_25BAD5384();
  if (v63)
  {
    OUTLINED_FUNCTION_21_31();
    sub_25BCB70FC();
    v134[0] = v126;
    MEMORY[0x25F876C90](0xD000000000000035, 0x800000025BCE47D0);
    MEMORY[0x25F876C90](v5, v14);
    OUTLINED_FUNCTION_50_15();
    OUTLINED_FUNCTION_15_37();
    OUTLINED_FUNCTION_3_53();
    goto LABEL_44;
  }

  v64 = v62;
  type metadata accessor for ContextManager();
  memset(v134, 0, sizeof(v134));
  v135 = 0;
  sub_25BAA49B8();
  sub_25BAA4A5C(&v126);

  v65 = v133;

  sub_25BAA4AF4(&v126);
  sub_25BAA49B8();
  sub_25BAA4A5C(&v126);

  v66 = v132;

  sub_25BAA4AF4(&v126);
  type metadata accessor for TensorRepresentation();
  v67 = swift_allocObject();
  v68 = swift_getObjectType();
  v69 = swift_unknownObjectRetain();
  LOBYTE(v126) = 1;
  sub_25BC5FB58(v69, v64, v134, 0x100000000, v65, v66, v67, v68, a4);
  v71 = v70;
  v72 = v6[13];
  v73 = v6[14];
  sub_25BCB617C();

  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BC4666C(v72, v73, v5, v125, v71);
  v75 = v74;

  v76 = sub_25BC475A4(v75);
  v78 = v6[13];
  v77 = v6[14];
  v6[13] = v76;
  v6[14] = v79;

  OUTLINED_FUNCTION_17_10();
  sub_25BAD5184(v80, v81, v82, v83, v84);
  v85 = v126;
  v86 = v127;
  v87 = v128;
  v114 = v130;
  v116 = v129;
  v113 = v131;
  OUTLINED_FUNCTION_20_30();
  v88 = v6[15];
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v6[15] = v88;
  if (v89)
  {
    if ((v61 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  sub_25BBF13F4(v88);
  v88 = v109;
  v6[15] = v109;
  if ((v61 & 0x8000000000000000) == 0)
  {
LABEL_21:
    if (v61 >= *(v88 + 16))
    {
      goto LABEL_37;
    }

    v90 = v88 + 56 * v61;
    v91 = v86;
    v92 = *(v90 + 40);
    v93 = v87;
    v94 = *(v90 + 72);
    *(v90 + 32) = v85;
    *(v90 + 48) = v91;
    *(v90 + 56) = v93;
    *(v90 + 64) = v116;
    *(v90 + 72) = v114;
    *(v90 + 80) = v113;
    v6[15] = v88;
    swift_endAccess();

    v95 = v6[16];
    v96 = v6[17];
    sub_25BCB617C();

    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BC46974(v95, v96, v5, v125);
    v98 = v97;

    v99 = sub_25BC47804(v98);
    v101 = v100;

    v102 = OUTLINED_FUNCTION_7_49();
    sub_25BC4E0A8(v102, v103, v125, v122, v123, 2);
    v105 = v6[16];
    v104 = v6[17];
    v6[16] = v99;
    v6[17] = v101;

    goto LABEL_24;
  }

LABEL_29:
  __break(1u);
LABEL_30:

  OUTLINED_FUNCTION_10_16();
}

void sub_25BC495B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v63 = v2;
  v5 = *(v2 + 80);
  v4 = *(v2 + 88);
  sub_25BCB617C();
  sub_25BCB617C();
  v6 = sub_25BC4707C(v5, v4);
  sub_25BCB617C();
  v7 = sub_25BC4605C(v6, v5);

  v8 = 0;
  v68 = *(v7 + 16);
  v70 = v7;
  v9 = v7 + 64;
  v64 = MEMORY[0x277D84F90];
  v61 = v7 + 64;
LABEL_2:
  for (i = (v9 + 40 * v8); ; i += 5)
  {
    if (v8 >= v68)
    {

      swift_beginAccess();
      v32 = *(v63 + 104);
      v31 = *(v63 + 112);
      sub_25BCB617C();
      sub_25BCB617C();
      v33 = sub_25BC471F4(v32, v31);
      sub_25BCB617C();
      sub_25BC45D94(v33, v32);
      v35 = v34;

      v36 = 0;
      v69 = *(v35 + 16);
      v71 = v35;
      v37 = v35 + 48;
      v67 = MEMORY[0x277D84F90];
      v62 = v35 + 48;
LABEL_21:
      for (j = (v37 + 24 * v36); ; j += 3)
      {
        if (v36 >= v69)
        {

          sub_25BC033C0(v67);
          return;
        }

        if (v36 >= *(v71 + 16))
        {
          goto LABEL_46;
        }

        v39 = *(j - 2);
        v40 = *(j - 1);
        v41 = *j;
        sub_25BCB617C();

        if (sub_25BAB3058())
        {
          v43 = v42;
          ObjectType = swift_getObjectType();
          v45 = (*(v43 + 16))(ObjectType, v43);
          v47 = v46;
          v49 = v48;
          swift_unknownObjectRelease();
        }

        else
        {
          v45 = 0;
          v47 = 0;
          v49 = 0;
        }

        v50 = swift_getObjectType();
        v51 = (*(a2 + 16))(v50, a2);
        if (!v49)
        {
          goto LABEL_36;
        }

        if (v45 != v51)
        {
          break;
        }

        if (v47 == v52 && v49 == v53)
        {

LABEL_39:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = *(v67 + 16);
            sub_25BAFDA10();
            v67 = v59;
          }

          v56 = *(v67 + 16);
          if (v56 >= *(v67 + 24) >> 1)
          {
            sub_25BAFDA10();
            v67 = v60;
          }

          ++v36;
          *(v67 + 16) = v56 + 1;
          v57 = v67 + 48 * v56;
          *(v57 + 32) = v41;
          *(v57 + 40) = v39;
          *(v57 + 56) = 0;
          *(v57 + 64) = 0;
          *(v57 + 48) = v40;
          *(v57 + 72) = 2;
          v37 = v62;
          goto LABEL_21;
        }

        v55 = sub_25BCB789C();

        if (v55)
        {
          goto LABEL_39;
        }

LABEL_37:

        ++v36;
      }

LABEL_36:

      goto LABEL_37;
    }

    if (v8 >= *(v70 + 16))
    {
      break;
    }

    v66 = *(i - 8);
    v11 = *(i - 2);
    v65 = *(i - 3);
    v12 = *(i - 1);
    v13 = *i;
    v14 = swift_getObjectType();
    v15 = *(v13 + 16);
    sub_25BCB617C();
    swift_unknownObjectRetain();
    LODWORD(v15) = v15(v14, v13);
    v17 = v16;
    v19 = v18;
    v20 = swift_getObjectType();
    if (v15 != (*(a2 + 16))(v20, a2))
    {

      goto LABEL_13;
    }

    if (v17 == v21 && v19 == v22)
    {

LABEL_15:
      v25 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = *(v64 + 16);
        sub_25BAFDA10();
        v25 = v29;
      }

      v26 = *(v25 + 16);
      if (v26 >= *(v25 + 24) >> 1)
      {
        sub_25BAFDA10();
        v25 = v30;
      }

      ++v8;
      *(v25 + 16) = v26 + 1;
      v64 = v25;
      v27 = v25 + 48 * v26;
      *(v27 + 32) = v12;
      *(v27 + 40) = v13;
      *(v27 + 48) = v66;
      *(v27 + 56) = v65;
      *(v27 + 64) = v11;
      *(v27 + 72) = 1;
      v9 = v61;
      goto LABEL_2;
    }

    v24 = sub_25BCB789C();

    if (v24)
    {
      goto LABEL_15;
    }

LABEL_13:
    swift_unknownObjectRelease();

    ++v8;
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_25BC49B1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  v4 = *(v2 + 88);
  sub_25BCB617C();
  sub_25BCB617C();
  v6 = sub_25BC4707C(v5, v4);
  sub_25BCB617C();
  v7 = sub_25BC4605C(v6, v5);

  v8 = 0;
  v39 = *(v7 + 16);
  v40 = v7;
  v38 = v7 + 32;
  v47 = a2;
  v41 = MEMORY[0x277D84F90];
  while (1)
  {
LABEL_2:
    if (v8 >= v39)
    {

      return;
    }

    if (v8 >= *(v40 + 16))
    {
      break;
    }

    v9 = v38 + 40 * v8;
    v44 = *v9;
    v10 = *(v9 + 16);
    v43 = *(v9 + 8);
    v11 = *(v9 + 24);
    v12 = *(v9 + 32);
    v46 = v8 + 1;
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 32);
    sub_25BCB617C();
    swift_unknownObjectRetain();
    v45 = v11;
    v42 = v12;
    v15 = v14(ObjectType, v12);
    v16 = sub_25BA9BEA0(v15);
    for (i = 0; ; ++i)
    {
      if (v16 == i)
      {
        swift_unknownObjectRelease();

        v8 = v46;
        goto LABEL_2;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](i, v15);
      }

      else
      {
        if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v18 = *(v15 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (sub_25BAB3058())
      {
        v20 = v19;
        v21 = swift_getObjectType();
        v22 = (*(v20 + 16))(v21, v20);
        v24 = v23;
        v26 = v25;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
        v26 = 0;
      }

      v27 = swift_getObjectType();
      v28 = (*(v47 + 16))(v27);
      if (!v26)
      {
        goto LABEL_22;
      }

      if (v22 != v28)
      {

LABEL_22:

        continue;
      }

      if (v24 == v29 && v26 == v30)
      {
        break;
      }

      v32 = sub_25BCB789C();

      if (v32)
      {

        goto LABEL_27;
      }
    }

LABEL_27:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = *(v41 + 16);
      sub_25BAFD7B8();
      v41 = v36;
    }

    v33 = *(v41 + 16);
    if (v33 >= *(v41 + 24) >> 1)
    {
      sub_25BAFD7B8();
      v41 = v37;
    }

    *(v41 + 16) = v33 + 1;
    v34 = v41 + 40 * v33;
    *(v34 + 32) = v45;
    *(v34 + 40) = v42;
    *(v34 + 48) = v44;
    v8 = v46;
    *(v34 + 56) = v43;
    *(v34 + 64) = v10;
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_25BC49EE4(uint64_t a1)
{
  if (sub_25BAC4018() == a1)
  {

    return v1;
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 216);
    v4 = sub_25BA9BEA0(v3);
    result = sub_25BCB617C();
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        return 0;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x25F8779B0](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v1 = sub_25BC49EE4(a1);

      if (v1)
      {

        return v1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC4A000(char a1)
{
  if (a1)
  {
    return 0x646563617274;
  }

  else
  {
    return 0x676E6963617274;
  }
}

uint64_t sub_25BC4A034(char a1)
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

uint64_t sub_25BC4A070@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BC4A034(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BC4A09C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC4A050(*v1);
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LazyTensorFunctionBuilder.TraceContext.TracingStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BC4A1AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC4A1EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC4A25C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC4A29C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC4A304(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 236))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC4A344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 236) = 1;
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

    *(result + 236) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25BC4A3D4()
{
  result = qword_27FBB69B0;
  if (!qword_27FBB69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB69B0);
  }

  return result;
}

uint64_t sub_25BC4A428(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_25BAB5C48(*a1, *a2) & (v2 == v3);
}

uint64_t sub_25BC4A470(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_25BAD4C78(a1, v2);
  return MEMORY[0x25F878200](v3);
}

uint64_t sub_25BC4A4A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_25BCB79CC();
  sub_25BAD4C78(v4, v1);
  MEMORY[0x25F878200](v2);
  return sub_25BCB7A3C();
}

unint64_t sub_25BC4A50C()
{
  result = qword_28154EB18;
  if (!qword_28154EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154EB18);
  }

  return result;
}

uint64_t sub_25BC4A568()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_25BCB79CC();
  sub_25BC4A470(v3);
  return sub_25BCB7A3C();
}

unint64_t sub_25BC4A5C0()
{
  result = qword_27FBB69B8;
  if (!qword_27FBB69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB69B8);
  }

  return result;
}

uint64_t sub_25BC4A614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && (*(a2 + 16) == *(a5 + 16) ? (v6 = a3 == a6) : (v6 = 0), v6))
  {
    return sub_25BAD916C(a2, a5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC4A644(uint64_t a1, uint64_t a2)
{
  sub_25BCB79CC();
  sub_25BAD6C2C(v5, a1, a2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC4A6BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25BCB79CC();
  sub_25BAD6C2C(v5, v1, v2);
  return sub_25BCB7A3C();
}

unint64_t sub_25BC4A734()
{
  result = qword_27FBB69C0;
  if (!qword_27FBB69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB69C0);
  }

  return result;
}

uint64_t sub_25BC4A788(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  sub_25BAD6C2C(a1, *v1, *(v1 + 8));
  MEMORY[0x25F878200](v4);
  MEMORY[0x25F878200](v5);
  sub_25BAD4C78(a1, v6);
  return MEMORY[0x25F878200](v7);
}

void sub_25BC4A7F4(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_11;
  }

  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[4];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a1[4];
  v10 = a1[2];
  v11 = a1[3];
  if ((sub_25BAB5C48(a1[5], a2[5]) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v9 == v6 && v11 == v8)
  {
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_10_16();

    sub_25BC4A614(v13, v14, v15, v16, v17, v18);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_10_16();
  }
}

uint64_t sub_25BC4A8A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  sub_25BCB79CC();
  sub_25BAD6C2C(v9, v1, v2);
  MEMORY[0x25F878200](v4);
  MEMORY[0x25F878200](v5);
  sub_25BAD4C78(v9, v6);
  MEMORY[0x25F878200](v7);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC4A954()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6[9] = *v0;
  v6[10] = v1;
  v7 = *(v0 + 16);
  v8 = v2;
  v9 = v3;
  v10 = v4;
  sub_25BCB79CC();
  sub_25BC4A788(v6);
  return sub_25BCB7A3C();
}

unint64_t sub_25BC4A9BC()
{
  result = qword_28154EB20;
  if (!qword_28154EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154EB20);
  }

  return result;
}

unint64_t sub_25BC4AA14()
{
  result = qword_27FBB69C8;
  if (!qword_27FBB69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB69C8);
  }

  return result;
}

void sub_25BC4AA74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6988, &qword_25BCCE4B8);
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_17_38();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_0_80();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_33_25(v4, v5);
    }

    OUTLINED_FUNCTION_6_51();
    if (v11)
    {
      do
      {
        OUTLINED_FUNCTION_30_25();
LABEL_15:
        *(v0[6] + v13) = *(*(v1 + 48) + v13);
      }

      while (v12);
    }

    v14 = v9;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + 8 * v15))
      {
        OUTLINED_FUNCTION_29_27();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_25BC4AB28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6960, &unk_25BCCE490);
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_17_38();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_0_80();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_33_25(v5, v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_23_30();
    while (v3)
    {
      OUTLINED_FUNCTION_12_40();
LABEL_15:
      OUTLINED_FUNCTION_19_28(v11);
    }

    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v10 >= v2)
      {
        goto LABEL_17;
      }

      ++v12;
      if (*(v1 + 8 * v10))
      {
        OUTLINED_FUNCTION_11_43();
        v3 = v14 & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_25BC4ABEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6980, &qword_25BCCE4B0);
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_17_38();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_0_80();
    if (v7)
    {
      v8 = v4 >= v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      OUTLINED_FUNCTION_33_25(v4, v5);
    }

    v9 = 0;
    OUTLINED_FUNCTION_1_65();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_15:
        v19 = 56 * (v15 | (v9 << 6));
        v20 = *(v1 + 48) + v19;
        v21 = *(v20 + 8);
        v22 = *(v20 + 32);
        v23 = *(v20 + 40);
        v24 = *(v20 + 48);
        v25 = v0[6] + v19;
        v26 = *(v20 + 16);
        *v25 = *v20;
        *(v25 + 8) = v21;
        *(v25 + 16) = v26;
        *(v25 + 32) = v22;
        *(v25 + 40) = v23;
        *(v25 + 48) = v24;

        sub_25BCB617C();
      }

      while (v12);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v2 + 8 * v9))
      {
        OUTLINED_FUNCTION_11_43();
        v12 = v18 & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_25BC4AD30(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_17_38();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_0_80();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_33_25(v6, v7);
    }

    OUTLINED_FUNCTION_6_51();
    if (v13)
    {
      do
      {
        OUTLINED_FUNCTION_30_25();
LABEL_15:
        *(v2[6] + 8 * v15) = *(*(v3 + 48) + 8 * v15);
      }

      while (v14);
    }

    v16 = v11;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v12)
      {
        goto LABEL_17;
      }

      ++v16;
      if (*(v4 + 8 * v17))
      {
        OUTLINED_FUNCTION_29_27();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v2 = v2;
  }
}

void sub_25BC4ADD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6978, &qword_25BCCE4A8);
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_17_38();
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_0_80();
    if (v9)
    {
      v10 = v6 >= v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_33_25(v6, v7);
    }

    v11 = 0;
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_23_30();
    while (v4)
    {
      OUTLINED_FUNCTION_12_40();
LABEL_15:
      v16 = 3 * (v12 | (v11 << 6));
      v17 = *(v1 + 48) + 8 * v16;
      v19 = *(v17 + 8);
      v18 = *(v17 + 16);
      v20 = v0[6] + 8 * v16;
      *v20 = *v17;
      *(v20 + 8) = v19;
      *(v20 + 16) = v18;
      sub_25BCB617C();
    }

    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_17;
      }

      ++v13;
      if (*(v2 + 8 * v11))
      {
        OUTLINED_FUNCTION_11_43();
        v4 = v15 & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

void sub_25BC4AEC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6968, &unk_25BCCEBF0);
  OUTLINED_FUNCTION_10_41();
  OUTLINED_FUNCTION_17_38();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_0_80();
    if (v8)
    {
      v9 = v5 >= v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      OUTLINED_FUNCTION_33_25(v5, v6);
    }

    v10 = 0;
    OUTLINED_FUNCTION_1_65();
    OUTLINED_FUNCTION_23_30();
    while (v3)
    {
      OUTLINED_FUNCTION_12_40();
LABEL_15:
      OUTLINED_FUNCTION_19_28(v11);
    }

    v12 = v10;
    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v10 >= v2)
      {
        goto LABEL_17;
      }

      ++v12;
      if (*(v1 + 8 * v10))
      {
        OUTLINED_FUNCTION_11_43();
        v3 = v14 & v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v0 = v0;
  }
}

uint64_t sub_25BC4AF84(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BC19514(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_25BC4B214(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_25BC4AFF0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_25BC4B074(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void, void, void, uint64_t))
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BC19544(v6);
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_25BCB617C();
  sub_25BC4B41C(v10, a2, a3);
  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_25BC4B120(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25BCB77EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_25BCB67DC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_25BC4B7DC(v7, v8, a1, v4);
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
    return sub_25BC4B56C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25BC4B214(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25BCB77EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v8 = result;
      v9 = v2 / 2;
      if (v2 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DE8, &qword_25BCBBD50);
        v10 = sub_25BCB67DC();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      sub_25BC4BC88(v11, v12, a1, v8, v4, v5, v6, v7);
      *(v10 + 16) = 0;
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
    return sub_25BC4B5D4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25BC4B318(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25BCB77EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E20, &unk_25BCCEC00);
        v6 = sub_25BCB67DC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_25BC4C174(v7, v8, a1, v4);
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
    return sub_25BC4B650(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25BC4B41C(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void, void, void, uint64_t))
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_25BCB77EC();
  if (result >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        sub_25BCB617C();
        sub_25BC4B6C8(0, v6, 1, a1, a2, a3);
      }

      return swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C8, &unk_25BCCEC20);
        v10 = sub_25BCB67DC();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;
      sub_25BCB617C();
      sub_25BC4C674(v11, v12, a1, v8, a2, a3, a3);
      *(v10 + 16) = 0;

      return swift_bridgeObjectRelease_n();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC4B56C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = a3 + *a4 - 1;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if ((*v9 & 1) != 0 || (v7 & 1) == 0)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v9[1] = *v9;
        v7 = 1;
        *v9-- = 1;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_25BC4B5D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) < v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = v9[1];
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_25BC4B650(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 24);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 8) < v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        v13 = *(v9 - 16);
        *v9 = *(v9 - 32);
        *(v9 + 16) = v13;
        *(v9 - 24) = v11;
        *(v9 - 16) = v12;
        *(v9 - 8) = v7;
        *(v9 - 32) = v10;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_25BC4B6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void, void, void, uint64_t))
{
  v7 = v6;
  if (a3 == a2)
  {
  }

  v10 = a3;
  v12 = *a4;
  sub_25BCB617C();
  v13 = (v12 + 24 * v10);
  v14 = a1 - v10;
LABEL_3:
  v15 = (v12 + 24 * v10);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  while (1)
  {
    v19 = a6(v16, v17, v18, *(v13 - 3), *(v13 - 2), *(v13 - 1), a5);
    if (v7)
    {
      goto LABEL_10;
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_9;
    }

    if (!v12)
    {
      break;
    }

    v20 = *v13;
    v21 = v13[1];
    v22 = v13[2];
    *v13 = *(v13 - 3);
    v16 = OUTLINED_FUNCTION_38_21(v20, v21, v22, *(v13 - 1));
    if (v23)
    {
LABEL_9:
      ++v10;
      v13 += 3;
      --v14;
      if (v10 != a2)
      {
        goto LABEL_3;
      }

LABEL_10:
    }
  }

  __break(1u);
  return result;
}

void sub_25BC4B7DC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *a3;
        v10 = *(*a3 + v8);
        v11 = (*(*a3 + v6) ^ 1) & v10;
        v12 = v6 + 2;
        while (1)
        {
          v13 = v12;
          if (v12 >= v5)
          {
            break;
          }

          v14 = *(v9 + v12++) & ~v10 & 1;
          v10 = *(v9 + v13);
          if ((v11 & 1) != v14)
          {
            v8 = v13;
            if ((v11 & 1) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_10;
          }
        }

        v8 = v5;
        if ((v11 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_10:
        if (v8 < v6)
        {
          goto LABEL_109;
        }

        if (v6 < v8)
        {
          if (v5 >= v13)
          {
            v5 = v13;
          }

          v15 = v5 - 1;
          v16 = v6;
          do
          {
            if (v16 != v15)
            {
              v17 = *a3;
              if (!*a3)
              {
                goto LABEL_114;
              }

              v18 = *(v17 + v16);
              *(v17 + v16) = *(v17 + v15);
              *(v17 + v15) = v18;
            }

            v19 = ++v16 < v15--;
          }

          while (v19);
          v5 = a3[1];
        }
      }

LABEL_20:
      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_108;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_110;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + v8 - 1;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = v22;
              v25 = v21;
              do
              {
                if ((*v25 & 1) != 0 || (v23 & 1) == 0)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_112;
                }

                v25[1] = *v25;
                v23 = 1;
                *v25-- = 1;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_107;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = v7[2];
        sub_25BAFD620();
        v7 = v70;
      }

      v27 = v7[2];
      v28 = v27 + 1;
      if (v27 >= v7[3] >> 1)
      {
        sub_25BAFD620();
        v7 = v71;
      }

      v7[2] = v28;
      v29 = v7 + 4;
      v30 = &v7[2 * v27 + 4];
      *v30 = v6;
      v30[1] = v8;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_115;
      }

      if (v27)
      {
        while (1)
        {
          v31 = v28 - 1;
          v32 = &v29[2 * v28 - 2];
          v33 = &v7[2 * v28];
          if (v28 >= 4)
          {
            break;
          }

          if (v28 == 3)
          {
            v34 = v7[4];
            v35 = v7[5];
            v44 = __OFSUB__(v35, v34);
            v36 = v35 - v34;
            v37 = v44;
LABEL_57:
            if (v37)
            {
              goto LABEL_97;
            }

            v49 = *v33;
            v48 = v33[1];
            v50 = __OFSUB__(v48, v49);
            v51 = v48 - v49;
            v52 = v50;
            if (v50)
            {
              goto LABEL_100;
            }

            v53 = v32[1];
            v54 = v53 - *v32;
            if (__OFSUB__(v53, *v32))
            {
              goto LABEL_103;
            }

            if (__OFADD__(v51, v54))
            {
              goto LABEL_105;
            }

            if (v51 + v54 >= v36)
            {
              if (v36 < v54)
              {
                v31 = v28 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v28 < 2)
          {
            goto LABEL_99;
          }

          v56 = *v33;
          v55 = v33[1];
          v44 = __OFSUB__(v55, v56);
          v51 = v55 - v56;
          v52 = v44;
LABEL_72:
          if (v52)
          {
            goto LABEL_102;
          }

          v58 = *v32;
          v57 = v32[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_104;
          }

          if (v59 < v51)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v31 - 1 >= v28)
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_111;
          }

          if (!*a3)
          {
            goto LABEL_113;
          }

          v63 = &v29[2 * v31 - 2];
          v64 = *v63;
          v65 = &v29[2 * v31];
          v66 = v65[1];
          sub_25BC4D1B4((*a3 + *v63), (*a3 + *v65), (*a3 + v66), v75);
          if (v4)
          {
            goto LABEL_90;
          }

          if (v66 < v64)
          {
            goto LABEL_92;
          }

          v67 = v7;
          v68 = v7[2];
          if (v31 > v68)
          {
            goto LABEL_93;
          }

          *v63 = v64;
          v63[1] = v66;
          if (v31 >= v68)
          {
            goto LABEL_94;
          }

          v28 = v68 - 1;
          memmove(&v29[2 * v31], v65 + 2, 16 * (v68 - 1 - v31));
          v67[2] = v68 - 1;
          v19 = v68 > 2;
          v7 = v67;
          if (!v19)
          {
            goto LABEL_86;
          }
        }

        v38 = &v29[2 * v28];
        v39 = *(v38 - 8);
        v40 = *(v38 - 7);
        v44 = __OFSUB__(v40, v39);
        v41 = v40 - v39;
        if (v44)
        {
          goto LABEL_95;
        }

        v43 = *(v38 - 6);
        v42 = *(v38 - 5);
        v44 = __OFSUB__(v42, v43);
        v36 = v42 - v43;
        v37 = v44;
        if (v44)
        {
          goto LABEL_96;
        }

        v45 = v33[1];
        v46 = v45 - *v33;
        if (__OFSUB__(v45, *v33))
        {
          goto LABEL_98;
        }

        v44 = __OFADD__(v36, v46);
        v47 = v36 + v46;
        if (v44)
        {
          goto LABEL_101;
        }

        if (v47 >= v41)
        {
          v61 = *v32;
          v60 = v32[1];
          v44 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v44)
          {
            goto LABEL_106;
          }

          if (v36 < v62)
          {
            v31 = v28 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_116;
  }

  sub_25BC4CCB4(&v77, *a1, a3);
LABEL_90:
}

void sub_25BC4BC88(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v91 = isUniquelyReferenced_nonNull_native;
  v95 = MEMORY[0x277D84F90];
  v94 = a3;
  v10 = *(a3 + 8);
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v90 = a4;
    while (1)
    {
      v13 = v11 + 1;
      if (v11 + 1 < v10)
      {
        OUTLINED_FUNCTION_42_19(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8, v89, v90, v91, v92, v93, v94);
        v15 = *(v14 + 16);
        v17 = v16 + 24 * v11;
        v18 = 24 * v11;
        v19 = *(v17 + 16);
        v20 = (v17 + 64);
        v21 = v11 + 2;
        v22 = v15;
        while (1)
        {
          v23 = v21;
          if (++v13 >= v10)
          {
            break;
          }

          v24 = *v20;
          v20 += 3;
          v25 = (v19 >= v15) ^ (v22 < v24);
          ++v21;
          v22 = v24;
          if ((v25 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v13 = v10;
LABEL_9:
        if (v19 >= v15)
        {
          if (v13 < v11)
          {
            goto LABEL_108;
          }

          if (v11 < v13)
          {
            if (v10 >= v23)
            {
              v10 = v23;
            }

            v26 = 24 * v10 - 8;
            v27 = v13;
            v28 = v11;
            do
            {
              if (v28 != --v27)
              {
                v29 = *v94;
                if (!*v94)
                {
                  goto LABEL_113;
                }

                v30 = v29 + v18;
                v31 = (v29 + v26);
                v32 = *v30;
                v33 = *(v30 + 16);
                v34 = *v31;
                *v30 = *(v31 - 1);
                *(v30 + 16) = v34;
                *(v31 - 1) = v32;
                *v31 = v33;
              }

              ++v28;
              v26 -= 24;
              v18 += 24;
            }

            while (v28 < v27);
            v10 = v94[1];
          }
        }
      }

      if (v13 < v10)
      {
        if (__OFSUB__(v13, v11))
        {
          goto LABEL_107;
        }

        if (v13 - v11 < a4)
        {
          if (__OFADD__(v11, a4))
          {
            goto LABEL_109;
          }

          if (v11 + a4 < v10)
          {
            v10 = v11 + a4;
          }

          if (v10 < v11)
          {
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
            return;
          }

          if (v13 != v10)
          {
            OUTLINED_FUNCTION_42_19(isUniquelyReferenced_nonNull_native, a2, a3, a4, a5, a6, a7, a8, v89, v90, v91, v92, v93, v94);
            v38 = v11 - v13;
            do
            {
              v39 = *(v36 + 24 * v13 + 16);
              v40 = v38;
              v41 = v37;
              do
              {
                if (*(v41 - 1) < v39)
                {
                  break;
                }

                if (!v36)
                {
                  goto LABEL_111;
                }

                v42 = *v41;
                v43 = v41[1];
                *v41 = *(v41 - 3);
                v41[2] = *(v41 - 1);
                *(v41 - 2) = v43;
                *(v41 - 1) = v39;
                *(v41 - 3) = v42;
                v41 -= 3;
              }

              while (!__CFADD__(v40++, 1));
              ++v13;
              v37 += 3;
              --v38;
            }

            while (v13 != v35);
            v13 = v35;
          }
        }
      }

      if (v13 < v11)
      {
        goto LABEL_106;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v88 = v12[2];
        OUTLINED_FUNCTION_45();
        sub_25BAFD620();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v45 = v12[2];
      v46 = v45 + 1;
      if (v45 >= v12[3] >> 1)
      {
        OUTLINED_FUNCTION_13_39();
        sub_25BAFD620();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v12[2] = v46;
      v47 = v12 + 4;
      v48 = &v12[2 * v45 + 4];
      *v48 = v11;
      v48[1] = v92;
      v93 = *v91;
      if (!*v91)
      {
        goto LABEL_114;
      }

      if (v45)
      {
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v12[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v12[4];
            v53 = v12[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_56:
            if (v55)
            {
              goto LABEL_96;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_99;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_104;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v46 < 2)
          {
            goto LABEL_98;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_71:
          if (v70)
          {
            goto LABEL_101;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_103;
          }

          if (v77 < v69)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*v94)
          {
            goto LABEL_112;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = &v47[2 * v49];
          v84 = v83[1];
          sub_25BC4D324((*v94 + 24 * *v81), (*v94 + 24 * *v83), *v94 + 24 * v84, v93);
          if (v9)
          {
            goto LABEL_89;
          }

          if (v84 < v82)
          {
            goto LABEL_91;
          }

          v85 = v12;
          v86 = v12[2];
          if (v49 > v86)
          {
            goto LABEL_92;
          }

          *v81 = v82;
          v81[1] = v84;
          if (v49 >= v86)
          {
            goto LABEL_93;
          }

          v46 = v86 - 1;
          isUniquelyReferenced_nonNull_native = memmove(&v47[2 * v49], v83 + 2, 16 * (v86 - 1 - v49));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v12 = v85;
          v9 = 0;
          if (!v87)
          {
            goto LABEL_85;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_94;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_95;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_97;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_100;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_105;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v10 = v94[1];
      v11 = v92;
      a4 = v90;
      if (v92 >= v10)
      {
        v95 = v12;
        break;
      }
    }
  }

  if (!*v91)
  {
    goto LABEL_115;
  }

  sub_25BC4CDE0(&v95, *v91, v94);
LABEL_89:
}

void sub_25BC4C174(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v87 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9 + 24);
        v11 = *a3 + 32 * v7;
        v12 = *(v11 + 24);
        v13 = (v11 + 88);
        v14 = v7 + 2;
        v15 = v10;
        while (1)
        {
          v16 = v14;
          if (++v9 >= v6)
          {
            break;
          }

          v17 = *v13;
          v13 += 4;
          v18 = (v12 >= v10) ^ (v15 < v17);
          ++v14;
          v15 = v17;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v12 >= v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v16)
            {
              v6 = v16;
            }

            v19 = 32 * v6 - 16;
            v20 = 32 * v7 + 24;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v20);
                v25 = (v23 + v19);
                v26 = *(v24 - 6);
                v27 = *(v24 - 1);
                v28 = *v24;
                v29 = *v25;
                *(v24 - 3) = *(v25 - 1);
                *(v24 - 1) = v29;
                *(v25 - 4) = v26;
                *(v25 - 8) = v27;
                *(v25 + 1) = v28;
              }

              ++v22;
              v19 -= 32;
              v20 += 32;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 32 * v9 + 24);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 - 8) < v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 8);
                v38 = *(v35 + 16);
                v39 = *(v35 - 16);
                *v35 = *(v35 - 32);
                *(v35 + 16) = v39;
                *(v35 - 24) = v37;
                *(v35 - 16) = v38;
                *(v35 - 8) = v33;
                *(v35 - 32) = v36;
                v35 -= 32;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 32;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v89 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = v8[2];
        sub_25BAFD620();
        v8 = v85;
      }

      v41 = v8[2];
      v42 = v41 + 1;
      if (v41 >= v8[3] >> 1)
      {
        sub_25BAFD620();
        v8 = v86;
      }

      v8[2] = v42;
      v43 = v8 + 4;
      v44 = &v8[2 * v41 + 4];
      *v44 = v7;
      v44[1] = v9;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          v46 = &v43[2 * v42 - 2];
          v47 = &v8[2 * v42];
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v48 = v8[4];
            v49 = v8[5];
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_56:
            if (v51)
            {
              goto LABEL_96;
            }

            v63 = *v47;
            v62 = v47[1];
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_99;
            }

            v67 = v46[1];
            v68 = v67 - *v46;
            if (__OFSUB__(v67, *v46))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v65, v68))
            {
              goto LABEL_104;
            }

            if (v65 + v68 >= v50)
            {
              if (v50 < v68)
              {
                v45 = v42 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v42 < 2)
          {
            goto LABEL_98;
          }

          v70 = *v47;
          v69 = v47[1];
          v58 = __OFSUB__(v69, v70);
          v65 = v69 - v70;
          v66 = v58;
LABEL_71:
          if (v66)
          {
            goto LABEL_101;
          }

          v72 = *v46;
          v71 = v46[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_103;
          }

          if (v73 < v65)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v45 - 1 >= v42)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v77 = &v43[2 * v45 - 2];
          v78 = *v77;
          v79 = &v43[2 * v45];
          v80 = v79[1];
          sub_25BC4D4C8((*a3 + 32 * *v77), (*a3 + 32 * *v79), (*a3 + 32 * v80), v90);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v80 < v78)
          {
            goto LABEL_91;
          }

          v81 = v8;
          v82 = v8[2];
          if (v45 > v82)
          {
            goto LABEL_92;
          }

          *v77 = v78;
          v77[1] = v80;
          if (v45 >= v82)
          {
            goto LABEL_93;
          }

          v42 = v82 - 1;
          memmove(&v43[2 * v45], v79 + 2, 16 * (v82 - 1 - v45));
          v81[2] = v82 - 1;
          v83 = v82 > 2;
          v8 = v81;
          v5 = 0;
          if (!v83)
          {
            goto LABEL_85;
          }
        }

        v52 = &v43[2 * v42];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_94;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_95;
        }

        v59 = v47[1];
        v60 = v59 - *v47;
        if (__OFSUB__(v59, *v47))
        {
          goto LABEL_97;
        }

        v58 = __OFADD__(v50, v60);
        v61 = v50 + v60;
        if (v58)
        {
          goto LABEL_100;
        }

        if (v61 >= v55)
        {
          v75 = *v46;
          v74 = v46[1];
          v58 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v58)
          {
            goto LABEL_105;
          }

          if (v50 < v76)
          {
            v45 = v42 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v89;
      a4 = v87;
      if (v89 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_25BC4CF18(&v92, *a1, a3);
LABEL_89:
}

uint64_t sub_25BC4C674(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void, void, void, void, uint64_t))
{
  v8 = v7;
  swift_bridgeObjectRetain_n();
  v133 = MEMORY[0x277D84F90];
  v129 = a3;
  v12 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v122 = a4;
    while (1)
    {
      v15 = v13++;
      if (v13 >= v12)
      {
        goto LABEL_23;
      }

      v16 = *v129;
      v17 = (*v129 + 24 * v13);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = (*v129 + 24 * v15);
      v22 = *v21;
      v23 = v21[1];
      v24 = v21[2];
      OUTLINED_FUNCTION_22_31();
      v26 = v25();
      v8 = v7;
      if (v7)
      {
        goto LABEL_95;
      }

      v27 = v26;
      v28 = v13;
      v29 = v16 + 24 * v15;
      v30 = 24 * v15;
      v31 = v15;
      v32 = (v29 + 32);
      v124 = v31;
      v33 = v31 + 2;
      do
      {
        v34 = v33;
        if (v28 + 1 >= v12)
        {
          v28 = v12;
          if ((v27 & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_9:
          v15 = v124;
          if (v28 >= v124)
          {
            v43 = v124 < v28;
            v44 = v28;
            a4 = v122;
            if (v43)
            {
              if (v12 >= v34)
              {
                v45 = v34;
              }

              else
              {
                v45 = v12;
              }

              v46 = 24 * v45;
              v13 = v44;
              v47 = v124;
              do
              {
                if (v47 != --v44)
                {
                  v48 = *v129;
                  if (!*v129)
                  {
                    goto LABEL_119;
                  }

                  v49 = v48 + v30;
                  v50 = v48 + v46;
                  v51 = *v49;
                  v52 = *(v49 + 8);
                  v53 = *(v50 - 24);
                  *(v49 + 16) = *(v50 - 8);
                  *v49 = v53;
                  *(v50 - 24) = v51;
                  *(v50 - 16) = v52;
                }

                ++v47;
                v46 -= 24;
                v30 += 24;
              }

              while (v47 < v44);
            }

            else
            {
              v13 = v44;
            }

            goto LABEL_23;
          }

          goto LABEL_116;
        }

        v35 = v32[3];
        v36 = v32[4];
        v37 = *(v32 - 1);
        v38 = *v32;
        v40 = v32[1];
        v39 = v32[2];
        OUTLINED_FUNCTION_22_31();
        v42 = v41();
        v8 = 0;
        v32 += 3;
        ++v28;
        v33 = v34 + 1;
      }

      while (((v27 ^ v42) & 1) == 0);
      if (v27)
      {
        goto LABEL_9;
      }

LABEL_22:
      v13 = v28;
      a4 = v122;
      v15 = v124;
LABEL_23:
      v54 = v129[1];
      if (v13 < v54)
      {
        if (__OFSUB__(v13, v15))
        {
          goto LABEL_113;
        }

        if (v13 - v15 < a4)
        {
          if (__OFADD__(v15, a4))
          {
            goto LABEL_114;
          }

          if (v15 + a4 >= v54)
          {
            v55 = v129[1];
          }

          else
          {
            v55 = v15 + a4;
          }

          if (v55 >= v15)
          {
            if (v13 != v55)
            {
              v130 = v14;
              v56 = *v129;
              v57 = (*v129 + 24 * v13);
              v58 = v15 - v13;
              do
              {
                v126 = v13;
                v59 = (v56 + 24 * v13);
                v60 = *v59;
                v61 = v59[1];
                v62 = v59[2];
                do
                {
                  v63 = *(v57 - 3);
                  v64 = *(v57 - 2);
                  v65 = *(v57 - 1);
                  OUTLINED_FUNCTION_22_31();
                  v67 = v66();
                  v8 = v7;
                  if (v7)
                  {
                    goto LABEL_95;
                  }

                  if ((v67 & 1) == 0)
                  {
                    break;
                  }

                  if (!v56)
                  {
                    goto LABEL_118;
                  }

                  v68 = *v57;
                  v69 = v57[1];
                  v70 = v57[2];
                  *v57 = *(v57 - 3);
                  OUTLINED_FUNCTION_38_21(v68, v69, v70, *(v57 - 1));
                }

                while (!v71);
                ++v13;
                v57 += 3;
                --v58;
              }

              while (v126 + 1 != v55);
              v13 = v55;
              v14 = v130;
            }

            goto LABEL_41;
          }

LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_118:
          OUTLINED_FUNCTION_49_18();
          __break(1u);
LABEL_119:
          OUTLINED_FUNCTION_49_18();
          __break(1u);
LABEL_120:
          OUTLINED_FUNCTION_49_18();
          __break(1u);
          goto LABEL_121;
        }
      }

LABEL_41:
      if (v13 < v15)
      {
        goto LABEL_112;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = *(v14 + 16);
        OUTLINED_FUNCTION_45();
        sub_25BAFD620();
        v14 = v118;
      }

      v72 = *(v14 + 16);
      v73 = v72 + 1;
      if (v72 >= *(v14 + 24) >> 1)
      {
        OUTLINED_FUNCTION_13_39();
        sub_25BAFD620();
        v14 = v119;
      }

      *(v14 + 16) = v73;
      v74 = v14 + 32;
      v75 = (v14 + 32 + 16 * v72);
      *v75 = v15;
      v75[1] = v13;
      v133 = v14;
      v125 = *a1;
      if (!*a1)
      {
        goto LABEL_120;
      }

      if (v72)
      {
        break;
      }

LABEL_92:
      v12 = v129[1];
      a4 = v122;
      if (v13 >= v12)
      {
        goto LABEL_93;
      }
    }

    v132 = a5;
    v127 = v13;
    while (1)
    {
      v76 = v73 - 1;
      v77 = (v74 + 16 * (v73 - 1));
      v78 = (v14 + 16 * v73);
      if (v73 >= 4)
      {
        break;
      }

      if (v73 == 3)
      {
        v79 = *(v14 + 32);
        v80 = *(v14 + 40);
        v89 = __OFSUB__(v80, v79);
        v81 = v80 - v79;
        v82 = v89;
LABEL_62:
        if (v82)
        {
          goto LABEL_102;
        }

        v94 = *v78;
        v93 = v78[1];
        v95 = __OFSUB__(v93, v94);
        v96 = v93 - v94;
        v97 = v95;
        if (v95)
        {
          goto LABEL_105;
        }

        v98 = v77[1];
        v99 = v98 - *v77;
        if (__OFSUB__(v98, *v77))
        {
          goto LABEL_108;
        }

        if (__OFADD__(v96, v99))
        {
          goto LABEL_110;
        }

        if (v96 + v99 >= v81)
        {
          if (v81 < v99)
          {
            v76 = v73 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_77;
      }

      if (v73 < 2)
      {
        goto LABEL_104;
      }

      v101 = *v78;
      v100 = v78[1];
      v89 = __OFSUB__(v100, v101);
      v96 = v100 - v101;
      v97 = v89;
LABEL_77:
      if (v97)
      {
        goto LABEL_107;
      }

      v103 = *v77;
      v102 = v77[1];
      v89 = __OFSUB__(v102, v103);
      v104 = v102 - v103;
      if (v89)
      {
        goto LABEL_109;
      }

      if (v104 < v96)
      {
        goto LABEL_91;
      }

LABEL_84:
      if (v76 - 1 >= v73)
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
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
        goto LABEL_115;
      }

      v108 = *v129;
      if (!*v129)
      {
        goto LABEL_117;
      }

      v7 = v8;
      v109 = (v74 + 16 * (v76 - 1));
      v110 = *v109;
      v111 = v76;
      v112 = (v74 + 16 * v76);
      v113 = v112[1];
      v131 = (v108 + 24 * *v109);
      v114 = (v108 + 24 * *v112);
      v115 = v108 + 24 * v113;
      sub_25BCB617C();
      sub_25BC4D64C(v131, v114, v115, v125, v132, a7);
      if (v7)
      {
        goto LABEL_95;
      }

      if (v113 < v110)
      {
        goto LABEL_97;
      }

      v116 = *(v14 + 16);
      if (v111 > v116)
      {
        goto LABEL_98;
      }

      *v109 = v110;
      v109[1] = v113;
      if (v111 >= v116)
      {
        goto LABEL_99;
      }

      v73 = v116 - 1;
      memmove(v112, v112 + 2, 16 * (v116 - 1 - v111));
      *(v14 + 16) = v116 - 1;
      a5 = v132;
      v8 = 0;
      v13 = v127;
      v74 = v14 + 32;
      if (v116 <= 2)
      {
LABEL_91:
        v133 = v14;
        goto LABEL_92;
      }
    }

    v83 = v74 + 16 * v73;
    v84 = *(v83 - 64);
    v85 = *(v83 - 56);
    v89 = __OFSUB__(v85, v84);
    v86 = v85 - v84;
    if (v89)
    {
      goto LABEL_100;
    }

    v88 = *(v83 - 48);
    v87 = *(v83 - 40);
    v89 = __OFSUB__(v87, v88);
    v81 = v87 - v88;
    v82 = v89;
    if (v89)
    {
      goto LABEL_101;
    }

    v90 = v78[1];
    v91 = v90 - *v78;
    if (__OFSUB__(v90, *v78))
    {
      goto LABEL_103;
    }

    v89 = __OFADD__(v81, v91);
    v92 = v81 + v91;
    if (v89)
    {
      goto LABEL_106;
    }

    if (v92 >= v86)
    {
      v106 = *v77;
      v105 = v77[1];
      v89 = __OFSUB__(v105, v106);
      v107 = v105 - v106;
      if (v89)
      {
        goto LABEL_111;
      }

      if (v81 < v107)
      {
        v76 = v73 - 2;
      }

      goto LABEL_84;
    }

    goto LABEL_62;
  }

LABEL_93:
  v120 = *a1;
  if (!*a1)
  {
LABEL_121:
    result = OUTLINED_FUNCTION_49_18();
    __break(1u);
    return result;
  }

  sub_25BCB617C();
  sub_25BC4D044(&v133, v120, v129, a5, a7);
LABEL_95:

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_25BC4CCB4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25BC4D96C(v5);
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
    sub_25BC4D1B4((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
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

uint64_t sub_25BC4CDE0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25BC4D96C(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_25BC4D324((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_25BC4CF18(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25BC4D96C(v5);
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
    sub_25BC4D4C8((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
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

uint64_t sub_25BC4D044(char **a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void, void, void, void, void, void, uint64_t))
{
  v6 = v5;
  v7 = *a1;
  sub_25BCB617C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v7 = sub_25BC4D96C(v7);
  }

  for (*a1 = v7; ; v7 = *a1)
  {
    v8 = *(v7 + 2);
    if (v8 < 2)
    {
LABEL_11:
      swift_bridgeObjectRelease_n();
      return 1;
    }

    v9 = *a3;
    if (!*a3)
    {
      break;
    }

    v10 = v6;
    v11 = *&v7[16 * v8];
    v12 = *&v7[16 * v8 + 24];
    v13 = (v9 + 24 * v11);
    v14 = (v9 + 24 * *&v7[16 * v8 + 16]);
    v15 = v9 + 24 * v12;
    sub_25BCB617C();
    sub_25BC4D64C(v13, v14, v15, a2, a4, a5);
    v6 = v10;
    if (v10)
    {
      goto LABEL_11;
    }

    if (v12 < v11)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_25BC4D96C(v7);
    }

    if (v8 - 2 >= *(v7 + 2))
    {
      goto LABEL_13;
    }

    v16 = &v7[16 * v8];
    *v16 = v11;
    *(v16 + 1) = v12;
    *a1 = v7;
    sub_25BC4D8E0(v8 - 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC4D1B4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (a2 - a1 < a3 - a2)
  {
    sub_25BAE3AA0(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      v11 = v4 >= v10 || v6 >= v5;
      if (v11)
      {
        v6 = v7;
        goto LABEL_44;
      }

      if ((*v4 & 1) != 0 || !*v6)
      {
        v11 = v7 >= v4;
        v12 = v4++;
        if (!v11 || v7 >= v4)
        {
LABEL_19:
          *v7 = *v12;
        }
      }

      else
      {
        v11 = v7 >= v6;
        v12 = v6++;
        if (!v11 || v7 >= v6)
        {
          goto LABEL_19;
        }
      }

      ++v7;
    }
  }

  sub_25BAE3AA0(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_22:
  v15 = v6 - 1;
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    if ((*v15 & 1) == 0 && *(v10 - 1))
    {
      v18 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v18)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_22;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
  }

LABEL_44:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_25BC4D324(char *a1, char *a2, unint64_t a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_25BAC9924(a1);
    v10 = &a4[24 * v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(a4 + 2) >= *(v6 + 2))
      {
        break;
      }

      v12 = a4;
      v13 = v7 == a4;
      a4 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v6;
    v13 = v7 == v6;
    v6 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_25BAC9924(a2);
  v10 = &a4[24 * v9];
LABEL_15:
  for (v5 -= 24; v10 > a4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) >= *(v10 - 1))
    {
      v17 = v6 - 24;
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 24;
  }

LABEL_28:
  if (v6 != a4 || v6 >= &a4[24 * ((v10 - a4) / 24)])
  {
    OUTLINED_FUNCTION_43_15();
    memmove(v6, a4, v20);
  }

  return 1;
}

uint64_t sub_25BC4D4C8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_25BAE3A58(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v4 + 3) >= *(v6 + 3))
      {
        break;
      }

      v12 = v4;
      v13 = v7 == v4;
      v4 += 32;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
    }

    v12 = v6;
    v13 = v7 == v6;
    v6 += 32;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *(v12 + 1);
    *v7 = *v12;
    *(v7 + 1) = v14;
    goto LABEL_13;
  }

  sub_25BAE3A58(a2, (a3 - a2) / 32, a4);
  v10 = &v4[32 * v9];
LABEL_15:
  for (v5 -= 32; v10 > v4 && v6 > v7; v5 -= 32)
  {
    if (*(v6 - 1) >= *(v10 - 1))
    {
      v17 = v6 - 32;
      v13 = v5 + 32 == v6;
      v6 -= 32;
      if (!v13)
      {
        v18 = *(v17 + 1);
        *v5 = *v17;
        *(v5 + 1) = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 32)
    {
      v16 = *(v10 - 1);
      *v5 = *(v10 - 2);
      *(v5 + 1) = v16;
    }

    v10 -= 32;
  }

LABEL_28:
  v19 = (v10 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v19])
  {
    memmove(v6, v4, 32 * v19);
  }

  return 1;
}

uint64_t sub_25BC4D64C(void *a1, void *a2, unint64_t a3, void *a4, uint64_t a5, uint64_t (*a6)(void, void, void, void, void, void, uint64_t))
{
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = (a2 - a1) / 24;
  v13 = (a3 - a2) / 24;
  swift_bridgeObjectRetain_n();
  if (v12 < v13)
  {
    sub_25BAC9924(v11);
    v14 = &a4[3 * v12];
    while (1)
    {
      if (a4 >= v14 || v10 >= v9)
      {
        v10 = v11;
        goto LABEL_30;
      }

      v16 = a6(*v10, v10[1], v10[2], *a4, a4[1], a4[2], a5);
      if (v6)
      {
        OUTLINED_FUNCTION_25_27();
        v32 = v11 < a4 || v11 >= v31;
        if (v32 || v11 != a4)
        {
          OUTLINED_FUNCTION_43_15();
          v34 = v11;
          goto LABEL_49;
        }

        goto LABEL_50;
      }

      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = v10;
      v18 = v11 == v10;
      v10 += 3;
      if (!v18)
      {
        goto LABEL_13;
      }

LABEL_14:
      v11 += 3;
    }

    v17 = a4;
    v18 = v11 == a4;
    a4 += 3;
    if (v18)
    {
      goto LABEL_14;
    }

LABEL_13:
    v19 = *v17;
    v11[2] = v17[2];
    *v11 = v19;
    goto LABEL_14;
  }

  v40 = a5;
  sub_25BAC9924(v10);
  v20 = &a4[3 * v13];
LABEL_16:
  v21 = 0;
  v39 = v10 - 3;
  while (1)
  {
    v22 = &v20[v21 / 8];
    if (&v20[v21 / 8] <= a4 || v10 <= v11)
    {
      break;
    }

    v24 = a6(*(v22 - 3), *(v22 - 2), *(v22 - 1), *(v10 - 3), *(v10 - 2), *(v10 - 1), v40);
    if (v6)
    {
      OUTLINED_FUNCTION_25_27();
      if (v10 < a4 || v10 >= v35)
      {
        OUTLINED_FUNCTION_43_15();
        memmove(v10, a4, v37);
        goto LABEL_50;
      }

      if (v10 == a4)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    v25 = (v9 + v21);
    v26 = v9 + v21 - 24;
    if (v24)
    {
      v20 = (v20 + v21);
      v9 = v9 + v21 - 24;
      v18 = v25 == v10;
      v10 -= 3;
      if (!v18)
      {
        v28 = *v39;
        *(v26 + 16) = v39[2];
        *v26 = v28;
        v10 = v39;
        v9 = v26;
      }

      goto LABEL_16;
    }

    if (v22 != (v9 + v21))
    {
      v27 = *(v22 - 3);
      *(v9 + v21 - 8) = *(v22 - 1);
      *v26 = v27;
    }

    v21 -= 24;
  }

LABEL_30:
  OUTLINED_FUNCTION_25_27();
  if (v10 == a4 && v10 < v29)
  {
    goto LABEL_50;
  }

LABEL_48:
  OUTLINED_FUNCTION_43_15();
  v34 = v10;
LABEL_49:
  memmove(v34, a4, v33);
LABEL_50:
  swift_bridgeObjectRelease_n();
  return 1;
}

uint64_t sub_25BC4D8E0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25BC4D96C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

char *sub_25BC4D980(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3940, &qword_25BCBB8E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_25BC4DA80(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_25BCB617C();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_25BC4DB74(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_25BC4DB74(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_25BCB79CC();
  sub_25BCB7A0C();
  v6 = sub_25BCB7A3C();
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 2;
    }

    v9 = *(*(v4 + 48) + v8) ? 2 : 1;
    if (v9 == (a1 & 1) + 1)
    {
      break;
    }

    v6 = v8 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25BC4AA74();
    v13 = v15;
  }

  v10 = *(*(v13 + 48) + v8);
  sub_25BC4DE98(v8);
  *v2 = v15;
  return v10;
}

uint64_t sub_25BC4DC78(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
LABEL_2:
  while (1)
  {
    v11 = a5[3];
    v12 = a5[4];
    if (!v12)
    {
      break;
    }

    v13 = a5[3];
LABEL_7:
    v14 = *(*(*a5 + 48) + (__clz(__rbit64(v12)) | (v13 << 6)));
    a5[3] = v13;
    a5[4] = (v12 - 1) & v12;
    v15 = *(a3 + 40);
    sub_25BCB79CC();
    sub_25BCB7A0C();
    result = sub_25BCB7A3C();
    v16 = ~(-1 << *(a3 + 32));
    while (1)
    {
      v17 = result & v16;
      v18 = (result & v16) >> 6;
      v19 = 1 << (result & v16);
      if ((v19 & *(v10 + 8 * v18)) == 0)
      {
        break;
      }

      result = v17 + 1;
      if (v14 == *(*(a3 + 48) + v17))
      {
        v20 = v7[v18];
        v7[v18] = v20 & ~v19;
        if ((v20 & v19) == 0)
        {
          goto LABEL_2;
        }

        if (__OFSUB__(v9--, 1))
        {
          goto LABEL_16;
        }

        if (v9)
        {
          goto LABEL_2;
        }

        return MEMORY[0x277D84FA0];
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v11;
      a5[4] = 0;

      return sub_25BAD9A80(v7, a2, v9, a3);
    }

    v12 = *(a5[1] + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_25BC4DE10(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_25BC4DC78(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t sub_25BC4DE98(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_25BCB704C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_25BCB79CC();
        sub_25BCB7A0C();
        v13 = sub_25BCB7A3C() & v7;
        if (v2 >= v10)
        {
          if (v13 >= v10)
          {
            v17 = __OFSUB__(v2, v13);
            v16 = (v2 - v13) < 0;
          }

          else
          {
            v17 = 0;
            v16 = 1;
          }

          if (v16 == v17)
          {
LABEL_15:
            v18 = *(v3 + 48);
            v19 = (v18 + v2);
            v20 = (v18 + v6);
            if (v2 != v6 || v19 >= v20 + 1)
            {
              *v19 = *v20;
              v2 = v6;
            }
          }
        }

        else
        {
          if (v13 < v10)
          {
            v15 = __OFSUB__(v2, v13);
            v14 = (v2 - v13) < 0;
          }

          else
          {
            v15 = 0;
            v14 = 0;
          }

          if (v14 == v15)
          {
            goto LABEL_15;
          }
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v22 = *(v3 + 16);
  v15 = __OFSUB__(v22, 1);
  v23 = v22 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_25BC4E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 2)
  {
    if (a6 == 1)
    {
      swift_unknownObjectRetain();
      goto LABEL_6;
    }

    if (a6)
    {
      return result;
    }
  }

LABEL_6:

  return sub_25BCB617C();
}

uint64_t sub_25BC4E0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != 2)
  {
    if (a6 == 1)
    {
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    if (a6)
    {
      return result;
    }
  }

LABEL_6:
}

uint64_t sub_25BC4E130(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BC4E170(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC4E1FC(void *a1, unint64_t a2)
{
  if (*(v2 + 116) != 0.0 && sub_25BAAF54C(a2) == 4)
  {
    return sub_25BC4E37C(a1, a2);
  }

  v6 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v8 = v7;
  sub_25BAB4D78(1, v6 == 0, a2);
  if (v6)
  {
    v9 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v9 = *(a2 + 40);
  }

  v10 = v9;
  sub_25BAB4D78(2, v6 == 0, a2);
  if (v6)
  {
    v11 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v11 = *(a2 + 48);
  }

  v12 = v11;
  v14 = *(v2 + 24);
  v13 = *(v2 + 32);
  sub_25BCB617C();
  v15 = sub_25BC4EAD8(v12, v8, v10, v14, v13, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25BCBB6D0;
  *(v16 + 32) = v15;

  return v16;
}

uint64_t sub_25BC4E37C(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if (v6)
  {
    v7 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v36 = v7;
  sub_25BAB4D78(1, v6 == 0, a2);
  if (v6)
  {
    v8 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v8 = *(a2 + 40);
  }

  v9 = v8;
  sub_25BAB4D78(2, v6 == 0, a2);
  if (v6)
  {
    v10 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v10 = *(a2 + 48);
  }

  v11 = v10;
  sub_25BAB4D78(3, v6 == 0, a2);
  if (v6)
  {
    v12 = MEMORY[0x25F8779B0](3, a2);
  }

  else
  {
    v12 = *(a2 + 56);
  }

  v13 = v12;
  v14 = *(v3 + 116);
  result = sub_25BAF4B64();
  if (*(result + 16))
  {
    v37 = v13;
    v16 = *(result + 40);

    v17 = v37;
    v18 = [a1 constantWithScalar:sub_25BC6640C() dataType:v14];
    v19 = [a1 multiplicationWithPrimaryTensor:v37 secondaryTensor:v18 name:0];
    v34 = v11;
    v35 = v9;
    v20 = [a1 multiplicationWithPrimaryTensor:v9 secondaryTensor:v11 name:0];
    v21 = sub_25BB2BAEC(0x797469636F6C6576, 0xE800000000000000);
    v33 = v19;
    v23 = sub_25BB9FB54(v19, v20, v21, v22, a1);
    if (*(v3 + 120) == 1)
    {
      v24 = [a1 multiplicationWithPrimaryTensor:v23 secondaryTensor:v18 name:0];
      v25 = [a1 subtractionWithPrimaryTensor:v24 secondaryTensor:v20 name:0];
      v26 = sub_25BB2BAEC(0x6574656D61726170, 0xE900000000000072);
      v27 = v36;
      v29 = sub_25BB2B6D4(v36, v25, v26, v28, a1);

      v17 = v37;
    }

    else
    {
      v30 = sub_25BB2BAEC(0x6574656D61726170, 0xE900000000000072);
      v27 = v36;
      v29 = sub_25BB2B6D4(v36, v23, v30, v31, a1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    result = swift_allocObject();
    *(result + 16) = xmmword_25BCBAE40;
    if (v29)
    {
      v32 = result;
      *(result + 32) = v29;
      *(result + 40) = v23;

      return v32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC4E6FC(void *a1, unint64_t a2)
{
  v5 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if (v5)
  {
    v6 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v7 = v6;
  OUTLINED_FUNCTION_0_81();
  sub_25BAB4D78(1, v8, a2);
  if (v5)
  {
    v9 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v9 = *(a2 + 40);
  }

  v46 = v9;
  OUTLINED_FUNCTION_0_81();
  sub_25BAB4D78(2, v10, a2);
  if (v5)
  {
    v11 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v11 = *(a2 + 48);
  }

  v45 = v11;
  OUTLINED_FUNCTION_0_81();
  sub_25BAB4D78(3, v12, a2);
  if (v5)
  {
    v13 = MEMORY[0x25F8779B0](3, a2);
  }

  else
  {
    v13 = *(a2 + 56);
  }

  v44 = v13;
  OUTLINED_FUNCTION_0_81();
  sub_25BAB4D78(4, v14, a2);
  if (v5)
  {
    v15 = MEMORY[0x25F8779B0](4, a2);
  }

  else
  {
    v15 = *(a2 + 64);
  }

  v43 = v15;
  OUTLINED_FUNCTION_0_81();
  sub_25BAB4D78(5, v16, a2);
  if (v5)
  {
    v17 = MEMORY[0x25F8779B0](5, a2);
  }

  else
  {
    v17 = *(a2 + 72);
  }

  v18 = v17;
  if (*(v2 + 128) == 1)
  {
    OUTLINED_FUNCTION_0_81();
    sub_25BAB4D78(6, v19, a2);
    if (v5)
    {
      v20 = MEMORY[0x25F8779B0](6, a2);
    }

    else
    {
      v20 = *(a2 + 80);
    }

    v49 = v20;
  }

  else
  {
    v49 = 0;
  }

  v21 = *(v2 + 116);
  v22 = OUTLINED_FUNCTION_1_66();
  v40 = [a1 constantWithScalar:objc_msgSend(v22 dataType:{v23), v21}];
  v24 = *(v2 + 120);
  v25 = OUTLINED_FUNCTION_1_66();
  v39 = [a1 &off_279972380 + 3];
  v27 = OUTLINED_FUNCTION_1_66();
  v28 = v7;
  v42 = [a1 castTensor:v18 toType:objc_msgSend(v27 name:{v29), 0}];
  v47 = [a1 powerWithPrimaryTensor:v40 secondaryTensor:? name:?];
  v48 = [a1 powerWithPrimaryTensor:v39 secondaryTensor:v42 name:0];
  v30 = *(v2 + 124);
  v31 = OUTLINED_FUNCTION_1_66();
  v41 = [a1 constantWithScalar:objc_msgSend(v31 dataType:{v32), v30}];
  v33 = *(v2 + 24);
  v34 = *(v2 + 32);
  v35 = sub_25BCB633C();
  v36 = [a1 adamWithLearningRateTensor:v43 beta1Tensor:v40 beta2Tensor:v39 epsilonTensor:v41 beta1PowerTensor:v47 beta2PowerTensor:v48 valuesTensor:v7 momentumTensor:v45 velocityTensor:v44 maximumVelocityTensor:v49 gradientTensor:v46 name:v35];

  sub_25BB0607C();
  v37 = sub_25BCB673C();

  return v37;
}

id sub_25BC4EAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_25BCB633C();

  v11 = [a6 stochasticGradientDescentWithLearningRateTensor:a1 valuesTensor:a2 gradientTensor:a3 name:v10];

  return v11;
}

uint64_t sub_25BC4EBCC(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v6 = *v3;
  v7 = v3[2];
  OUTLINED_FUNCTION_7_50();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_7_50();
  v11 = *(v10 + 88);
  v12 = _s9IOMappingVMa();
  OUTLINED_FUNCTION_35_8();
  if (sub_25BCB681C() != *(a1 + 16))
  {
    sub_25BCB70FC();
    OUTLINED_FUNCTION_16_42();
    MEMORY[0x25F876C90](v61 + 3, v62 | 0x8000000000000000);
    OUTLINED_FUNCTION_11_3();
    v63 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v63);

    OUTLINED_FUNCTION_8_3();
    MEMORY[0x25F876C90](0xD000000000000017);
    OUTLINED_FUNCTION_35_8();
    v70 = sub_25BCB681C();
    OUTLINED_FUNCTION_11_3();
    v64 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v64);

    OUTLINED_FUNCTION_29_28();
    OUTLINED_FUNCTION_6_52();
    __break(1u);

    swift_unknownObjectRelease();
    v73 = 0xD00000000000003BLL;
    v74 = 0x800000025BCE4C80;
    v75 = 9;
    OUTLINED_FUNCTION_54_14();
    goto LABEL_36;
  }

  sub_25BC4F794();
  v14 = v13;
  swift_getObjectType();
  v15 = v14[3];
  v16 = OUTLINED_FUNCTION_5_17();
  v18 = v17(v16);
  v20 = v19;
  swift_unknownObjectRelease();
  v68 = v3;
  v21 = v3[3];
  sub_25BCB617C();
  v72 = sub_25BCB674C();
  v69 = v21 + 32;
  v67 = v18 + 32;
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    OUTLINED_FUNCTION_34_0();
    if (v72 == sub_25BCB681C())
    {
      break;
    }

    OUTLINED_FUNCTION_34_0();
    sub_25BCB67FC();
    OUTLINED_FUNCTION_45_16();
    if ((a2 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_24();
      sub_25BCB717C();
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      OUTLINED_FUNCTION_13_24();
      sub_25BCB717C();
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v73 = 0;
      v74 = 0xE000000000000000;
      sub_25BCB70FC();
      v70 = v73;
      v71 = v74;
      OUTLINED_FUNCTION_16_42();
      MEMORY[0x25F876C90](v59 + 38, v60 | 0x8000000000000000);
      MEMORY[0x25F876C90](v14, a2);
      OUTLINED_FUNCTION_29_28();
      v73 = v70;
      v74 = v71;
      v75 = 9;
      sub_25BCB617C();
      OUTLINED_FUNCTION_54_14();
LABEL_36:
      sub_25BA97890();
    }

    v23 = (v69 + 48 * v72);
    v24 = v23[1];
    v25 = v23[2];
    v14 = v23[3];
    a2 = v23[4];
    sub_25BCB617C();
    sub_25BCB617C();
    OUTLINED_FUNCTION_13_24();
    sub_25BCB68AC();
    if (!*(v20 + 16))
    {
      goto LABEL_35;
    }

    v26 = sub_25BA9266C(v14, a2);
    if ((v27 & 1) == 0)
    {
      goto LABEL_35;
    }

    v28 = *(*(v20 + 56) + 8 * v26);
    if (!*(v28 + 16))
    {
      goto LABEL_35;
    }

    v29 = *(*(v20 + 56) + 8 * v26);
    sub_25BCB617C();

    if (!*(v28 + 16))
    {
      goto LABEL_29;
    }

    a2 = *(v28 + 32);

    if ((a2 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

    if (a2 >= *(v18 + 16))
    {
      goto LABEL_31;
    }

    v30 = v20;
    v31 = v12;
    v32 = v18;
    v33 = v67 + 32 * a2;
    v34 = *(v33 + 16);
    v35 = *(v33 + 24);
    sub_25BABEF40((v68 + 4), &v73);
    type metadata accessor for TensorRepresentation();
    v36 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v38 = swift_unknownObjectRetain_n();
    LOBYTE(v70) = 1;
    a2 = sub_25BAA5BB4(v38, &v73, 0x100000000, v36, ObjectType, v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = *(v22 + 16);
      OUTLINED_FUNCTION_45();
      sub_25BAD80BC();
      v22 = v43;
    }

    v40 = *(v22 + 16);
    v39 = *(v22 + 24);
    v14 = (v40 + 1);
    if (v40 >= v39 >> 1)
    {
      OUTLINED_FUNCTION_81(v39);
      sub_25BAD80BC();
      v22 = v44;
    }

    swift_unknownObjectRelease();
    *(v22 + 16) = v14;
    v41 = (v22 + 24 * v40);
    v41[4] = v24;
    v41[5] = v25;
    v41[6] = a2;
    v18 = v32;
    v12 = v31;
    v20 = v30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v74 = sub_25BCB614C();
  v45 = sub_25BAD8178(v22);

  v73 = v45;
  sub_25BAD8324(v46);

  v47 = v73;
  v14 = v74;
  v70 = MEMORY[0x277D84FA0];
  sub_25BCB617C();
  v48 = sub_25BCB674C();
  v72 = v48;
  OUTLINED_FUNCTION_34_0();
  if (v48 != sub_25BCB681C())
  {
    do
    {
      OUTLINED_FUNCTION_34_0();
      sub_25BCB67FC();
      OUTLINED_FUNCTION_45_16();
      if ((a2 & 1) == 0)
      {
        goto LABEL_32;
      }

      v49 = (v69 + 48 * v48);
      v50 = *v49;
      v52 = *(v49 + 1);
      v51 = *(v49 + 2);
      sub_25BCB617C();
      OUTLINED_FUNCTION_13_24();
      sub_25BCB68AC();
      if (v50 == 2 && v14[2] && (v53 = sub_25BA9266C(v52, v51), (v54 & 1) != 0) && (v55 = *(v14[7] + 8 * v53), *(v55 + 16)))
      {
        v56 = *(v55 + 32);
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        if (v56 >= *(v47 + 16))
        {
          goto LABEL_34;
        }

        a2 = *(v47 + 32 + 24 * v56 + 16);
        sub_25BCB617C();

        sub_25BADBE78(&v73, v52, v51);

        type metadata accessor for TensorHandle();
        *(swift_allocObject() + 16) = a2;

        sub_25BAA6EB0();
        v57 = *a3;
        swift_isUniquelyReferenced_nonNull_native();
        v73 = *a3;
        sub_25BC19C08();

        *a3 = v73;
      }

      else
      {
      }

      OUTLINED_FUNCTION_34_0();
      v48 = v72;
    }

    while (v72 != sub_25BCB681C());
  }

  sub_25BBAC340(v47, v14, &v70);
  OUTLINED_FUNCTION_30();

  return v12;
}

uint64_t sub_25BC4F2EC(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x277D84F98];
  sub_25BC4EBCC(a1, a2, &v4);
  OUTLINED_FUNCTION_30();

  return v2;
}

uint64_t sub_25BC4F338()
{
  OUTLINED_FUNCTION_25_28();
  v0 = swift_allocObject();
  sub_25BC50248();
  return v0;
}

uint64_t sub_25BC4F3A4(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25BAC5590();
    v4 = v11;
    v6 = *(v11 + 16);
    v7 = (a1 + 48);
    do
    {
      v8 = *v7;
      v9 = *(v11 + 24);

      if (v6 >= v9 >> 1)
      {
        sub_25BAC5590();
      }

      *(v11 + 16) = v6 + 1;
      *(v11 + 8 * v6 + 32) = v8;
      v7 += 3;
      ++v6;
      --v3;
    }

    while (v3);
  }

  (*(*v2 + 96))(v4);
}

uint64_t *sub_25BC4F4CC()
{
  result = sub_25BC4F9C0();
  if (!v1)
  {
    v4 = *(v0 + 328);
    *(v0 + 328) = result;
    *(v0 + 336) = v3;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *sub_25BC4F508()
{
  v1 = *v0;
  v7 = v0[3];
  OUTLINED_FUNCTION_7_50();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_7_50();
  v5 = *(v4 + 88);
  _s9IOMappingVMa();
  OUTLINED_FUNCTION_41();
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F00, &qword_25BCCF340);
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  sub_25BCB65BC();
  OUTLINED_FUNCTION_15();

  return &v7;
}

uint64_t *sub_25BC4F62C()
{
  v1 = *v0;
  v7 = v0[2];
  OUTLINED_FUNCTION_7_50();
  v3 = *(v2 + 80);
  v5 = *(v4 + 88);
  _s9IOMappingVMa();
  OUTLINED_FUNCTION_41();
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F00, &qword_25BCCF340);
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_37_22();
  sub_25BCB65BC();
  OUTLINED_FUNCTION_15();

  return &v7;
}

uint64_t sub_25BC4F6FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_25BC4F710(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 328) = 0;
  *(v8 + 336) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a3 + 16);
  *(v8 + 32) = *a3;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a3 + 32);
  *(v8 + 80) = *(a3 + 48);
  memcpy((v8 + 88), a4, 0xECuLL);
  return v8;
}

uint64_t sub_25BC4F794()
{
  if (*(v0 + 328))
  {
    v1 = *(v0 + 336);
    v2 = *(v0 + 328);
  }

  else
  {
    v3 = sub_25BC4F9C0();
    v4 = *(v0 + 328);
    *(v0 + 328) = v3;
    *(v0 + 336) = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return OUTLINED_FUNCTION_26_0();
}

uint64_t *sub_25BC4F9C0()
{
  v2 = v0;
  v3 = (v0 + 4);
  v4 = *v0;
  sub_25BAC27B0((v0 + 4), &v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
  if (swift_dynamicCast())
  {
    if (qword_28154F2C8 != -1)
    {
      swift_once();
    }

    sub_25BABEF40(v3, v16);
    v5 = sub_25BC743BC(v16);
    sub_25BABF0A8(v16);
    if (v1)
    {
      goto LABEL_5;
    }

    if (v5)
    {
      sub_25BAD6FB0((v2 + 11), v16);
      type metadata accessor for MPSGraphExecutor();
      swift_allocObject();
      v4 = sub_25BBB4A0C(v16, v5);
      goto LABEL_5;
    }

LABEL_10:
    v7 = 5591111;
    __swift_destroy_boxed_opaque_existential_1(&v20);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_25BCB70FC();

    v20 = 0xD00000000000002DLL;
    v21 = 0x800000025BCE4C10;
    sub_25BABEF40(v3, v16);
    v8 = v17;
    if (v17)
    {
      if (v17 != 1)
      {
        if (v17 == 2)
        {
          v9 = 0xED0000656E69676ELL;
          v7 = 0x45206C617275654ELL;
        }

        else
        {
          v18 = 5591111;
          v19 = 0xE300000000000000;
          swift_unknownObjectRetain();
          MEMORY[0x25F876C90](10272, 0xE200000000000000);
          swift_getObjectType();
          v10 = sub_25BC17678();
          MEMORY[0x25F876C90](v10);

          MEMORY[0x25F876C90](41, 0xE100000000000000);
          sub_25BB7304C(v8);
          v7 = v18;
          v9 = v19;
        }

        goto LABEL_17;
      }

      v7 = 5591107;
    }

    v9 = 0xE300000000000000;
LABEL_17:
    MEMORY[0x25F876C90](v7, v9);

    sub_25BABF0A8(v16);
    MEMORY[0x25F876C90](96, 0xE100000000000000);
    v11 = v20;
    v12 = v21;
    v13 = v4[10];
    v4 = v4[11];
    type metadata accessor for Function.CompilationError();
    swift_getWitnessTable();
    swift_allocError();
    sub_25BCA6188(v11, v12, v14);
    swift_willThrow();
    return v4;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_10;
  }

  type metadata accessor for EspressoV1Executor();
  sub_25BAD6FB0((v0 + 11), v16);
  sub_25BB6FC6C();
  v4 = v6;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(&v20);
  return v4;
}

uint64_t sub_25BC4FD20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*result)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v5 = *(result + 8);
    v4 = *(result + 16);
    v6 = *(result + 40);
    v7 = *(a2 + 176);
    sub_25BAB4D78(v6, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x25F8779B0](v6, v7);
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    *a3 = v5;
    a3[1] = v4;
    a3[2] = v9;
    return sub_25BCB617C();
  }

  return result;
}

uint64_t sub_25BC4FDC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*result == 1)
  {
    v5 = *(result + 8);
    v4 = *(result + 16);
    v6 = *(result + 40);
    v7 = *(a2 + 176);
    sub_25BAB4D78(v6, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x25F8779B0](v6, v7);
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    *a3 = v5;
    a3[1] = v4;
    a3[2] = v9;
    return sub_25BCB617C();
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}