uint64_t sub_1C5D07C38()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5D07D38()
{
  OUTLINED_FUNCTION_248();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1C5D07D9C()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5D07E00(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return OUTLINED_FUNCTION_1_15();
}

uint64_t sub_1C5D07E14()
{
  OUTLINED_FUNCTION_13();
  v1 = [*(v0 + 96) items];
  sub_1C5C64D74(0, &qword_1EC1AADD0);
  v2 = sub_1C6016B10();
  *(v0 + 104) = v2;

  v3 = sub_1C5C6AA20(v2);
  v10 = *MEMORY[0x1E69876D8];
  *(v0 + 112) = v3;
  *(v0 + 120) = v10;
  v11 = *(v0 + 104);
  if (v3)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1C6954040](0);
    }

    else
    {
      if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return MEMORY[0x1EEE68148](v3, v11, v4, v5, v6, v7, v8, v9);
      }

      v12 = *(v11 + 32);
    }

    *(v0 + 128) = v12;
    *(v0 + 136) = 1;
    sub_1C5D08B20();
    v13 = sub_1C6015240();
    *(v0 + 144) = v13;
    sub_1C5D08C90(0, &qword_1EC1AADF8, &qword_1EC1A9480);
    v14 = sub_1C6015230();
    *(v0 + 152) = v14;
    swift_task_alloc();
    OUTLINED_FUNCTION_14_2();
    *(v0 + 160) = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_10_10(v15);
    v3 = v0 + 80;
    v11 = v0 + 48;
    v4 = v0 + 16;
    v5 = v13;
    v6 = v14;
    v7 = v0 + 16;
    v8 = 0;
    v9 = 0;

    return MEMORY[0x1EEE68148](v3, v11, v4, v5, v6, v7, v8, v9);
  }

  v17 = sub_1C6014F20();
  OUTLINED_FUNCTION_35_3(v17);
  OUTLINED_FUNCTION_172();

  return v18();
}

uint64_t sub_1C5D07FF8()
{
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C5D0815C()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  if (!v1)
  {
    goto LABEL_14;
  }

  if (!*(v1 + 16) || (v3 = sub_1C5CE36D0(*(v0 + 120)), (v4 & 1) == 0))
  {

LABEL_14:

    goto LABEL_15;
  }

  sub_1C5C653C8(*(v1 + 56) + 32 * v3, v0 + 16);

  if (!swift_dynamicCast())
  {
    goto LABEL_14;
  }

  v5 = *(v0 + 72);
  if (!v2)
  {
    goto LABEL_14;
  }

  v6 = *(v0 + 64);
  v7 = v6 == 0x2072657470616863 && v5 == 0xEB000000006C7275;
  if (!v7 && (sub_1C6017860() & 1) == 0 && (v6 != 1178948168 || v5 != 0xE400000000000000))
  {
    v19 = sub_1C6017860();

    if (v19)
    {
      goto LABEL_12;
    }

    v20 = *(v0 + 128);

LABEL_15:
    v9 = *(v0 + 136);
    v10 = *(v0 + 104);
    if (v9 == *(v0 + 112))
    {

      v11 = sub_1C6014F20();
      OUTLINED_FUNCTION_35_3(v11);
      goto LABEL_17;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1C6954040](*(v0 + 136));
    }

    else
    {
      if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v14 = *(v10 + 8 * v9 + 32);
    }

    *(v0 + 128) = v14;
    *(v0 + 136) = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      sub_1C5D08B20();
      *(v0 + 144) = sub_1C6015240();
      sub_1C5D08C90(0, &qword_1EC1AADF8, &qword_1EC1A9480);
      *(v0 + 152) = sub_1C6015230();
      swift_task_alloc();
      OUTLINED_FUNCTION_14_2();
      *(v0 + 160) = v15;
      *v15 = v16;
      OUTLINED_FUNCTION_10_10();
      OUTLINED_FUNCTION_31();

      return MEMORY[0x1EEE68148]();
    }

    __break(1u);
LABEL_38:
    __break(1u);
    return MEMORY[0x1EEE68148]();
  }

LABEL_12:

  v8 = *(v0 + 128);
  sub_1C6014F00();

LABEL_17:
  OUTLINED_FUNCTION_172();

  return v12();
}

uint64_t sub_1C5D08488()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5D084F8()
{
  v2 = [*(v0 + 32) items];
  sub_1C5C64D74(0, &qword_1EC1AADD0);
  v3 = sub_1C6016B10();

  v4 = sub_1C5C6AA20(v3);
  if (!v4)
  {
LABEL_15:

    OUTLINED_FUNCTION_29_4();
    OUTLINED_FUNCTION_19_3();

    __asm { BRAA            X3, X16 }
  }

  v8 = v4;
  v9 = 0;
  v33 = v3 & 0xFFFFFFFFFFFFFF8;
  v34 = *MEMORY[0x1E6987680];
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6954040](v9, v3);
    }

    else
    {
      if (v9 >= *(v33 + 16))
      {
        goto LABEL_23;
      }

      v10 = *(v3 + 8 * v9 + 32);
    }

    v4 = OUTLINED_FUNCTION_30_4(v10, v11, v12, v13, v14, v15, v16, v17, v33, v34, v35);
    if (v18)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return MEMORY[0x1EEE68140](v4, v5, v6, v7);
    }

    v19 = [v2 commonKey];
    if (v19)
    {
      break;
    }

LABEL_14:

    ++v9;
    if (v1 == v8)
    {
      goto LABEL_15;
    }
  }

  v20 = v19;
  v21 = sub_1C6016940();
  v23 = v22;
  if (v21 != sub_1C6016940() || v23 != v24)
  {
    v26 = OUTLINED_FUNCTION_26_5();

    if (v26)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

LABEL_19:

  sub_1C5D08C90(0, &qword_1EC1AADD8, &qword_1EC1A91E0);
  *(v35 + 48) = sub_1C6015250();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_2();
  *(v35 + 56) = v29;
  *v29 = v30;
  v29[1] = sub_1C5D0875C;
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE68140](v4, v5, v6, v7);
}

uint64_t sub_1C5D0875C()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5D0885C()
{

  return v0;
}

uint64_t sub_1C5D0888C()
{
  sub_1C5D0885C();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t type metadata accessor for PodcastChapter()
{
  result = qword_1EC1A9160;
  if (!qword_1EC1A9160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5D08958()
{
  sub_1C5D0A178(319, &unk_1ED7E01F0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C5C67444(319, &qword_1EC1A91E0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C5D08A3C()
{
  MEMORY[0x1C69534E0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1C69534E0](23328, 0xE200000000000000);
  type metadata accessor for PodcastChapter();
  sub_1C6016D10();
  MEMORY[0x1C69534E0](2108704, 0xE300000000000000);
  sub_1C6016D10();
  MEMORY[0x1C69534E0](93, 0xE100000000000000);
  return 0;
}

void sub_1C5D08B20()
{
  if (!qword_1EC1AADE0)
  {
    sub_1C5C64D74(255, &qword_1EC1AADD0);
    sub_1C5D0A178(255, &qword_1EC1AADE8, sub_1C5D08BC8, MEMORY[0x1E69E6720]);
    v0 = sub_1C6015200();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AADE0);
    }
  }
}

void sub_1C5D08BC8()
{
  if (!qword_1EC1AADF0)
  {
    type metadata accessor for AVMetadataExtraAttributeKey();
    sub_1C5D08C38();
    v0 = sub_1C60168A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AADF0);
    }
  }
}

unint64_t sub_1C5D08C38()
{
  result = qword_1EC1AA378;
  if (!qword_1EC1AA378)
  {
    type metadata accessor for AVMetadataExtraAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AA378);
  }

  return result;
}

void sub_1C5D08C90(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1C5C64D74(255, &qword_1EC1AADD0);
    sub_1C5C67444(255, a3);
    v5 = sub_1C6015200();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C5D08D40()
{
  if (!qword_1EC1A8CF0)
  {
    type metadata accessor for PodcastChapter();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1A8CF0);
    }
  }
}

uint64_t sub_1C5D08DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastChapter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5D08E0C(uint64_t *a1)
{
  v2 = *(type metadata accessor for PodcastChapter() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C5D978B8();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1C5D08EB4(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1C5D08EB4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C60177C0();
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
        type metadata accessor for PodcastChapter();
        v6 = sub_1C6016B60();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PodcastChapter() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C5D091E4(v8, v9, a1, v4);
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
    return sub_1C5D08FE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C5D08FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PodcastChapter();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v30 - v17;
  v32 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v31 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v36 = a3;
      v33 = v24;
      v34 = v23;
      v25 = v23;
      v35 = v21;
      do
      {
        sub_1C5CFAC38(v24, v18);
        sub_1C5CFAC38(v21, v14);
        v26 = *(v8 + 36);
        v27 = *&v18[v26];
        v28 = *&v14[v26];
        sub_1C5D09F2C(v14);
        result = sub_1C5D09F2C(v18);
        if (v27 >= v28)
        {
          break;
        }

        if (!v19)
        {
          __break(1u);
          return result;
        }

        sub_1C5D08DA8(v24, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1C5D08DA8(v11, v21);
        v21 += v22;
        v24 += v22;
      }

      while (!__CFADD__(v25++, 1));
      a3 = v36 + 1;
      v21 = v35 + v31;
      v23 = v34 - 1;
      v24 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C5D091E4(int64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = v4;
  v110 = a1;
  v8 = type metadata accessor for PodcastChapter();
  v117 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v113 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v122 = &v106 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v106 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v106 - v17;
  v119 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_100:
    a3 = *v110;
    if (!*v110)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v101 = (v21 + 16);
      v100 = *(v21 + 16);
      for (i = v21; v100 >= 2; v21 = i)
      {
        if (!*v119)
        {
          goto LABEL_138;
        }

        v102 = (v21 + 16 * v100);
        v21 = *v102;
        v103 = &v101[2 * v100];
        v104 = *(v103 + 1);
        sub_1C5D09A28(*v119 + *(v117 + 72) * *v102, *v119 + *(v117 + 72) * *v103, *v119 + *(v117 + 72) * v104, a3);
        if (v5)
        {
          break;
        }

        if (v104 < v21)
        {
          goto LABEL_126;
        }

        if (v100 - 2 >= *v101)
        {
          goto LABEL_127;
        }

        *v102 = v21;
        v102[1] = v104;
        v105 = *v101 - v100;
        if (*v101 < v100)
        {
          goto LABEL_128;
        }

        v100 = *v101 - 1;
        sub_1C5D97380(v103 + 16, v105, v103);
        *v101 = v100;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v21 = sub_1C5D9736C(v21);
    goto LABEL_102;
  }

  v123 = v16;
  v108 = a4;
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v114 = &v106 - v17;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v20 + 1 < v19)
    {
      v24 = *v119;
      a3 = *(v117 + 72);
      i = v19;
      v121 = v20 + 1;
      v25 = v24 + a3 * v23;
      v26 = v24;
      sub_1C5CFAC38(v25, v18);
      sub_1C5CFAC38(v26 + a3 * v22, v15);
      v27 = *(v123 + 36);
      v28 = *&v18[v27];
      v29 = *&v15[v27];
      sub_1C5D09F2C(v15);
      sub_1C5D09F2C(v18);
      v30 = i;
      v109 = v22;
      v31 = v22 + 2;
      v118 = a3;
      v32 = v26 + a3 * (v22 + 2);
      while (1)
      {
        v33 = v31;
        if (++v121 >= v30)
        {
          break;
        }

        a3 = v28 < v29;
        sub_1C5CFAC38(v32, v18);
        sub_1C5CFAC38(v25, v15);
        v34 = *(v123 + 36);
        v35 = *&v18[v34];
        v36 = *&v15[v34];
        sub_1C5D09F2C(v15);
        sub_1C5D09F2C(v18);
        v30 = i;
        v32 += v118;
        v25 += v118;
        v31 = v33 + 1;
        if (v28 < v29 == v35 >= v36)
        {
          goto LABEL_9;
        }
      }

      v121 = v30;
LABEL_9:
      if (v28 < v29)
      {
        v23 = v121;
        if (v121 < v109)
        {
          goto LABEL_132;
        }

        if (v109 >= v121)
        {
          v22 = v109;
          goto LABEL_31;
        }

        i = v21;
        v107 = v5;
        if (v30 >= v33)
        {
          v37 = v33;
        }

        else
        {
          v37 = v30;
        }

        v38 = v118 * (v37 - 1);
        v39 = v118 * v37;
        v40 = v109 * v118;
        v41 = v109;
        do
        {
          if (v41 != --v23)
          {
            a3 = *v119;
            if (!*v119)
            {
              goto LABEL_139;
            }

            sub_1C5D08DA8(a3 + v40, v113);
            v42 = v40 < v38 || a3 + v40 >= a3 + v39;
            if (v42)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v40 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C5D08DA8(v113, a3 + v38);
          }

          ++v41;
          v38 -= v118;
          v39 -= v118;
          v40 += v118;
        }

        while (v41 < v23);
        v5 = v107;
        v21 = i;
      }

      v23 = v121;
      v22 = v109;
    }

LABEL_31:
    v43 = v119[1];
    if (v23 < v43)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_131;
      }

      if (v23 - v22 < v108)
      {
        break;
      }
    }

LABEL_47:
    if (v23 < v22)
    {
      goto LABEL_130;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C5D0DDF8();
      v21 = v98;
    }

    a3 = *(v21 + 16);
    v58 = a3 + 1;
    if (a3 >= *(v21 + 24) >> 1)
    {
      sub_1C5D0DDF8();
      v21 = v99;
    }

    *(v21 + 16) = v58;
    v59 = v21 + 32;
    v60 = (v21 + 32 + 16 * a3);
    v61 = v121;
    *v60 = v22;
    v60[1] = v61;
    v118 = *v110;
    if (!v118)
    {
      goto LABEL_140;
    }

    if (a3)
    {
      i = v21;
      while (1)
      {
        v62 = v58 - 1;
        v63 = (v59 + 16 * (v58 - 1));
        v64 = (v21 + 16 * v58);
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v65 = *(v21 + 32);
          v66 = *(v21 + 40);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_68:
          if (v68)
          {
            goto LABEL_117;
          }

          v80 = *v64;
          v79 = v64[1];
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_120;
          }

          v84 = v63[1];
          v85 = v84 - *v63;
          if (__OFSUB__(v84, *v63))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v82, v85))
          {
            goto LABEL_125;
          }

          if (v82 + v85 >= v67)
          {
            if (v67 < v85)
            {
              v62 = v58 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v58 < 2)
        {
          goto LABEL_119;
        }

        v87 = *v64;
        v86 = v64[1];
        v75 = __OFSUB__(v86, v87);
        v82 = v86 - v87;
        v83 = v75;
LABEL_83:
        if (v83)
        {
          goto LABEL_122;
        }

        v89 = *v63;
        v88 = v63[1];
        v75 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v75)
        {
          goto LABEL_124;
        }

        if (v90 < v82)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v62 - 1 >= v58)
        {
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
          goto LABEL_134;
        }

        if (!*v119)
        {
          goto LABEL_137;
        }

        v94 = (v59 + 16 * (v62 - 1));
        v95 = *v94;
        a3 = v62;
        v96 = v59 + 16 * v62;
        v21 = *(v96 + 8);
        sub_1C5D09A28(*v119 + *(v117 + 72) * *v94, *v119 + *(v117 + 72) * *v96, *v119 + *(v117 + 72) * v21, v118);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v21 < v95)
        {
          goto LABEL_112;
        }

        v5 = *(i + 16);
        if (a3 > v5)
        {
          goto LABEL_113;
        }

        *v94 = v95;
        v94[1] = v21;
        if (a3 >= v5)
        {
          goto LABEL_114;
        }

        v58 = v5 - 1;
        sub_1C5D97380((v96 + 16), v5 - 1 - a3, v96);
        v21 = i;
        *(i + 16) = v5 - 1;
        v97 = v5 > 2;
        v5 = 0;
        v18 = v114;
        if (!v97)
        {
          goto LABEL_97;
        }
      }

      v69 = v59 + 16 * v58;
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_115;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_116;
      }

      v76 = v64[1];
      v77 = v76 - *v64;
      if (__OFSUB__(v76, *v64))
      {
        goto LABEL_118;
      }

      v75 = __OFADD__(v67, v77);
      v78 = v67 + v77;
      if (v75)
      {
        goto LABEL_121;
      }

      if (v78 >= v72)
      {
        v92 = *v63;
        v91 = v63[1];
        v75 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v75)
        {
          goto LABEL_129;
        }

        if (v67 < v93)
        {
          v62 = v58 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v19 = v119[1];
    v20 = v121;
    if (v121 >= v19)
    {
      goto LABEL_100;
    }
  }

  v44 = v22 + v108;
  if (__OFADD__(v22, v108))
  {
    goto LABEL_133;
  }

  if (v44 >= v43)
  {
    v44 = v119[1];
  }

  if (v44 < v22)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v23 == v44)
  {
    goto LABEL_47;
  }

  i = v21;
  v107 = v5;
  v45 = *v119;
  v46 = *(v117 + 72);
  v47 = *v119 + v46 * (v23 - 1);
  v48 = v22;
  v49 = -v46;
  v109 = v48;
  v50 = v48 - v23;
  v111 = v46;
  v112 = v44;
  v51 = v45 + v23 * v46;
LABEL_40:
  v121 = v23;
  v115 = v51;
  v116 = v50;
  v118 = v47;
  v52 = v47;
  a3 = v123;
  while (1)
  {
    sub_1C5CFAC38(v51, v18);
    sub_1C5CFAC38(v52, v15);
    v53 = *(a3 + 36);
    v54 = *&v18[v53];
    v55 = *&v15[v53];
    sub_1C5D09F2C(v15);
    sub_1C5D09F2C(v18);
    if (v54 >= v55)
    {
LABEL_45:
      v23 = v121 + 1;
      v47 = v118 + v111;
      v50 = v116 - 1;
      v51 = v115 + v111;
      if (v121 + 1 == v112)
      {
        v23 = v112;
        v5 = v107;
        v21 = i;
        v22 = v109;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v45)
    {
      break;
    }

    v56 = v122;
    sub_1C5D08DA8(v51, v122);
    a3 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C5D08DA8(v56, v52);
    v52 += v49;
    v51 += v49;
    v42 = __CFADD__(v50++, 1);
    if (v42)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

uint64_t sub_1C5D09A28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for PodcastChapter();
  v8 = MEMORY[0x1EEE9AC00](v56);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v50 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v16 = a2 - a1;
  v17 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v17)
  {
    goto LABEL_61;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v20 = v16 / v15;
  v59 = a1;
  v58 = a4;
  v21 = v18 / v15;
  if (v16 / v15 >= v18 / v15)
  {
    v53 = v10;
    sub_1C5D0EC9C(a2, v18 / v15, a4);
    v29 = a4 + v21 * v15;
    v30 = -v15;
    v31 = v29;
    v54 = v30;
    v52 = a1;
LABEL_37:
    v55 = a2 + v30;
    v32 = a3;
    v33 = v31;
    while (1)
    {
      if (v29 <= a4)
      {
        v59 = a2;
        v57 = v33;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v51 = v33;
      v34 = a2;
      v35 = a4;
      v36 = v31;
      v37 = v32 + v54;
      v38 = v29 + v54;
      v39 = v29;
      sub_1C5CFAC38(v29 + v54, v13);
      v40 = v13;
      v41 = v53;
      sub_1C5CFAC38(v55, v53);
      v42 = *(v56 + 36);
      v43 = *(v40 + v42);
      v44 = *(v41 + v42);
      v45 = v41;
      v13 = v40;
      sub_1C5D09F2C(v45);
      sub_1C5D09F2C(v40);
      if (v43 < v44)
      {
        v50 = v39;
        v47 = v32 < v34 || v37 >= v34;
        a3 = v37;
        a4 = v35;
        if (v47)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v51;
          a1 = v52;
          v30 = v54;
          v29 = v50;
        }

        else
        {
          a1 = v52;
          v31 = v51;
          v30 = v54;
          v48 = v55;
          a2 = v55;
          v29 = v50;
          if (v32 != v34)
          {
            v49 = v51;
            swift_arrayInitWithTakeBackToFront();
            v29 = v50;
            a2 = v48;
            v31 = v49;
          }
        }

        goto LABEL_37;
      }

      v46 = v32 < v39 || v37 >= v39;
      a4 = v35;
      if (v46)
      {
        swift_arrayInitWithTakeFrontToBack();
        v32 = v37;
        v29 = v38;
        v33 = v38;
        v31 = v36;
        a2 = v34;
        a1 = v52;
      }

      else
      {
        v33 = v38;
        v17 = v39 == v32;
        v32 = v37;
        v29 = v38;
        v31 = v36;
        a2 = v34;
        a1 = v52;
        if (!v17)
        {
          swift_arrayInitWithTakeBackToFront();
          v31 = v36;
          v32 = v37;
          v29 = v38;
          v33 = v38;
        }
      }
    }

    v59 = a2;
    v57 = v31;
  }

  else
  {
    sub_1C5D0EC9C(a1, v16 / v15, a4);
    v22 = a4 + v20 * v15;
    v57 = v22;
    while (a4 < v22 && a2 < a3)
    {
      sub_1C5CFAC38(a2, v13);
      sub_1C5CFAC38(a4, v10);
      v24 = *(v56 + 36);
      v25 = *&v13[v24];
      v26 = *&v10[v24];
      sub_1C5D09F2C(v10);
      sub_1C5D09F2C(v13);
      if (v25 >= v26)
      {
        if (a1 < a4 || a1 >= a4 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v58 = a4 + v15;
        a4 += v15;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v15)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v15;
      }

      a1 += v15;
      v59 = a1;
    }
  }

LABEL_59:
  sub_1C5D09E4C(&v59, &v58, &v57);
  return 1;
}

uint64_t sub_1C5D09E4C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PodcastChapter();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1C5D09F2C(uint64_t a1)
{
  v2 = type metadata accessor for PodcastChapter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5D09F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastChapter();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5D09FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C5D0A178(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C5D0A07C()
{
  result = qword_1EC1AAE00;
  if (!qword_1EC1AAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AAE00);
  }

  return result;
}

void sub_1C5D0A0D0()
{
  if (!qword_1EC1A91B8)
  {
    sub_1C5C64D74(255, &qword_1EC1A8CE8);
    sub_1C5D0A178(255, &qword_1EC1A8DB8, MEMORY[0x1E6969770], MEMORY[0x1E69E62F8]);
    v0 = sub_1C6015200();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A91B8);
    }
  }
}

void sub_1C5D0A178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for PodcastsChapterController.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for PodcastsChapterController.Error(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C5D0A2E0()
{
  result = qword_1EC1AAE08;
  if (!qword_1EC1AAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AAE08);
  }

  return result;
}

double sub_1C5D0A3C8()
{
  if ([*(v0 + OBJC_IVAR___MPCPodcastsDefaultsHelper__defaults) objectForKey_])
  {
    sub_1C6017390();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1C5CBCF4C(v5);
  }

  return 30.0;
}

double sub_1C5D0A4C8()
{
  if ([*(v0 + OBJC_IVAR___MPCPodcastsDefaultsHelper__defaults) objectForKey_])
  {
    sub_1C6017390();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1C5CBCF4C(v5);
  }

  return 15.0;
}

id _s17MediaPlaybackCore22PodcastsDefaultsHelperC30playbackRateMigrationAttemptedSbvg_0()
{
  v1 = *(v0 + OBJC_IVAR___MPCPodcastsDefaultsHelper__defaults);
  v2 = sub_1C6016900();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void _s17MediaPlaybackCore22PodcastsDefaultsHelperC30playbackRateMigrationAttemptedSbvs_0(char a1)
{
  v3 = *(v1 + OBJC_IVAR___MPCPodcastsDefaultsHelper__defaults);
  v4 = sub_1C6016900();
  [v3 setBool:a1 & 1 forKey:v4];
}

void (*PodcastsDefaultsHelper.playbackRateMigrationAttempted.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _s17MediaPlaybackCore22PodcastsDefaultsHelperC30playbackRateMigrationAttemptedSbvg_0() & 1;
  return sub_1C5D0A75C;
}

void PodcastsDefaultsHelper.observeValue(forKeyPath:of:change:context:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = sub_1C6016940();
  if (!a2)
  {

    goto LABEL_9;
  }

  if (v12 != a1 || v13 != a2)
  {
    v15 = OUTLINED_FUNCTION_0_20();

    if (v15)
    {
      goto LABEL_17;
    }

LABEL_9:
    v16 = sub_1C6016940();
    if (a2)
    {
      if (v16 == a1 && v17 == a2)
      {
      }

      else
      {
        v19 = OUTLINED_FUNCTION_0_20();

        if ((v19 & 1) == 0)
        {
          a2 = sub_1C6016900();
          goto LABEL_21;
        }
      }

      v20 = [objc_opt_self() defaultCenter];
      v29 = v20;
      if (qword_1EC1A8B80 != -1)
      {
        swift_once();
        v20 = v29;
      }

      v21 = qword_1EC1A8B88;
      goto LABEL_29;
    }

LABEL_21:
    sub_1C5CC5960(a3, v31);
    v22 = v32;
    if (v32)
    {
      v23 = __swift_project_boxed_opaque_existential_0(v31, v32);
      v24 = *(v22 - 8);
      MEMORY[0x1EEE9AC00](v23);
      v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v26);
      v27 = sub_1C6017850();
      (*(v24 + 8))(v26, v22);
      __swift_destroy_boxed_opaque_existential_0(v31);
      if (!a4)
      {
LABEL_24:
        v30.receiver = v5;
        v30.super_class = ObjectType;
        objc_msgSendSuper2(&v30, sel_observeValueForKeyPath_ofObject_change_context_, a2, v27, a4, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v27 = 0;
      if (!a4)
      {
        goto LABEL_24;
      }
    }

    type metadata accessor for NSKeyValueChangeKey();
    sub_1C5D0AB2C();
    a4 = sub_1C6016840();
    goto LABEL_24;
  }

LABEL_17:
  v20 = [objc_opt_self() defaultCenter];
  v29 = v20;
  if (qword_1EC1A8B98 != -1)
  {
    swift_once();
    v20 = v29;
  }

  v21 = qword_1EC1A8BA0;
LABEL_29:
  if (qword_1EC1A9070 != -1)
  {
    swift_once();
    v20 = v29;
  }

  [v20 postNotificationName:v21 object:qword_1EC1A9078];
}

unint64_t sub_1C5D0AB2C()
{
  result = qword_1EC1A9E18;
  if (!qword_1EC1A9E18)
  {
    type metadata accessor for NSKeyValueChangeKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A9E18);
  }

  return result;
}

id PodcastsDefaultsHelper.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  sub_1C5D0ACE0();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1C5D0ACE0()
{
  v1 = OBJC_IVAR___MPCPodcastsDefaultsHelper__defaults;
  [*(v0 + OBJC_IVAR___MPCPodcastsDefaultsHelper__defaults) removeObserver:v0 forKeyPath:*MEMORY[0x1E69C4E98]];
  v2 = *(v0 + v1);
  v3 = *MEMORY[0x1E69C4E90];

  return [v2 removeObserver:v0 forKeyPath:v3];
}

uint64_t getEnumTagSinglePayload for PodcastsFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PodcastsFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C5D0AF38(char *a1)
{
  v2 = sub_1C60152E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  (*(v3 + 16))(&v14 - v7, a1, v2);
  sub_1C60152D0();
  sub_1C5D0B2F4();
  v9 = OUTLINED_FUNCTION_0_21();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v10(a1, v2);
    v10(v8, v2);
    return 0;
  }

  else
  {
    sub_1C60152D0();
    v12 = OUTLINED_FUNCTION_0_21();
    v10(v6, v2);
    if (v12)
    {
      v10(a1, v2);
      v10(v8, v2);
      return 1;
    }

    else
    {
      sub_1C60152D0();
      v13 = OUTLINED_FUNCTION_0_21();
      v10(a1, v2);
      v10(v6, v2);
      v10(v8, v2);
      if (v13)
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

uint64_t sub_1C5D0B1C8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C5D0AF38(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1C5D0B1FC()
{
  result = qword_1EC1AAE18;
  if (!qword_1EC1AAE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AAE18);
  }

  return result;
}

uint64_t sub_1C5D0B264(uint64_t a1)
{
  v2 = sub_1C5D0B2A0();

  return MEMORY[0x1EEE41830](a1, v2);
}

unint64_t sub_1C5D0B2A0()
{
  result = qword_1EC1A9138;
  if (!qword_1EC1A9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A9138);
  }

  return result;
}

unint64_t sub_1C5D0B2F4()
{
  result = qword_1EC1AAE20;
  if (!qword_1EC1AAE20)
  {
    sub_1C60152E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AAE20);
  }

  return result;
}

void *PodcastsManagedQueue.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  result[3] = 0;
  result[4] = 0;
  result[2] = v1;
  return result;
}

void *PodcastsManagedQueue.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v2;
  return result;
}

uint64_t sub_1C5D0B398()
{
  OUTLINED_FUNCTION_23_6();
  v9[0] = *(v0 + 16);

  v2 = sub_1C5D0FF48(v1);
  sub_1C5D10100(sub_1C5D11634, v2, v3 & 1, &v7);

  if (v8)
  {
    sub_1C5C6BEFC(&v7, v9);
    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    OUTLINED_FUNCTION_16_0();
    v4 = OUTLINED_FUNCTION_252();
    v5(v4);
    OUTLINED_FUNCTION_318();
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_1C5D1208C(&v7, qword_1EC1A9120, MEMORY[0x1E69E6720]);
  }

  return OUTLINED_FUNCTION_255();
}

BOOL sub_1C5D0B4A8(uint64_t a1, uint64_t a2)
{
  if (!a2 || !*(v2 + 32))
  {
    return 0;
  }

  OUTLINED_FUNCTION_41_1();

  v3 = sub_1C5D0C0A8();
  if (v4)
  {

    return 0;
  }

  v6 = v3;
  v7 = sub_1C5D0C0A8();
  v9 = v8;

  return (v9 & 1) == 0 && v7 < v6;
}

uint64_t sub_1C5D0B540()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v20 = MEMORY[0x1E69E7CC0];

  result = sub_1C5C66A1C(0, v2, 0);
  v5 = 0;
  v3 = v20;
  v6 = v1 + 32;
  while (v5 < *(v1 + 16))
  {
    sub_1C5CDAF64(v6, v17);
    v7 = v18;
    v8 = v19;
    __swift_project_boxed_opaque_existential_0(v17, v18);
    OUTLINED_FUNCTION_16_0();
    result = v9(v7, v8);
    if (!v10)
    {
      goto LABEL_11;
    }

    v11 = result;
    v12 = v10;
    result = __swift_destroy_boxed_opaque_existential_0(v17);
    v20 = v3;
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);
    if (v14 >= v13 >> 1)
    {
      v16 = OUTLINED_FUNCTION_128(v13);
      result = sub_1C5C66A1C(v16, v14 + 1, 1);
      v3 = v20;
    }

    ++v5;
    *(v3 + 16) = v14 + 1;
    v15 = v3 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
    v6 += 40;
    if (v2 == v5)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1C5D0B68C()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (!v2)
  {
    return sub_1C5D0B9F8();
  }

  v3 = v1 + 32;

  v5 = 0;
  while (1)
  {
    if (v5 >= *(v1 + 16))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    sub_1C5CDAF64(v3, &v26);
    v6 = v27;
    v7 = v28;
    __swift_project_boxed_opaque_existential_0(&v26, v27);
    OUTLINED_FUNCTION_16_0();
    v9 = v8(v6, v7);
    v11 = v0[4];
    if (!v10)
    {
      if (!v11)
      {

        result = __swift_destroy_boxed_opaque_existential_0(&v26);
        goto LABEL_21;
      }

      goto LABEL_15;
    }

    if (!v11)
    {

LABEL_15:
      result = __swift_destroy_boxed_opaque_existential_0(&v26);
      goto LABEL_16;
    }

    if (v9 == v0[3] && v10 == v11)
    {
      break;
    }

    v13 = sub_1C6017860();

    result = __swift_destroy_boxed_opaque_existential_0(&v26);
    if (v13)
    {
      goto LABEL_20;
    }

LABEL_16:
    ++v5;
    v3 += 40;
    if (v2 == v5)
    {

      return sub_1C5D0B9F8();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(&v26);
LABEL_20:

LABEL_21:
  v15 = v0[2];
  v16 = *(v15 + 16);
  if (v16 < v5)
  {
    goto LABEL_35;
  }

  result = sub_1C5D0DAC4(v5, v16, v15);
  v14 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v20 = (v19 >> 1) - v18;
  if (v19 >> 1 == v18)
  {
LABEL_23:
    swift_unknownObjectRelease();
    return v14;
  }

  if ((v19 >> 1) > v18)
  {
    v21 = v17 + 40 * v18;
    do
    {
      sub_1C5CDAF64(v21, &v26);
      sub_1C5C6BEFC(&v26, v23);
      sub_1C5C74680(0, &qword_1EC1A9130);
      type metadata accessor for PodcastAVItem();
      if ((OUTLINED_FUNCTION_36_2() & 1) != 0 && v24)
      {
        MEMORY[0x1C69535C0]();
        v22 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v22 >> 1)
        {
          OUTLINED_FUNCTION_128(v22);
          sub_1C6016B30();
        }

        sub_1C6016B70();
        v14 = v25;
      }

      v21 += 40;
      --v20;
    }

    while (v20);
    goto LABEL_23;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1C5D0B8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  for (i = (a1 + 32); ; i += 5)
  {
    if (v6 == v5)
    {

      return 0;
    }

    v8 = i[3];
    v9 = i[4];
    __swift_project_boxed_opaque_existential_0(i, v8);
    v10 = (*(v9 + 8))(v8, v9);
    if (!v11)
    {
      goto LABEL_9;
    }

    if (v10 == a2 && v11 == a3)
    {
      break;
    }

    v13 = sub_1C6017860();

    if (v13)
    {
      goto LABEL_12;
    }

LABEL_9:
    ++v5;
  }

LABEL_12:

  return v5;
}

uint64_t sub_1C5D0B9F8()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;

    do
    {
      sub_1C5CDAF64(v4, v9);
      sub_1C5C6BEFC(v9, v7);
      sub_1C5C74680(0, &qword_1EC1A9130);
      type metadata accessor for PodcastAVItem();
      if ((OUTLINED_FUNCTION_36_2() & 1) != 0 && v8)
      {
        MEMORY[0x1C69535C0]();
        v5 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v5 >> 1)
        {
          OUTLINED_FUNCTION_128(v5);
          sub_1C6016B30();
        }

        sub_1C6016B70();
        v2 = v10;
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return v2;
}

BOOL sub_1C5D0BB1C()
{
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_27();
  return *(*(v0 + 16) + 16) == 0;
}

uint64_t sub_1C5D0BB50()
{
  v2 = sub_1C5D0C2F4();
  OUTLINED_FUNCTION_12_9(v2, qword_1EC1A8DA0, &qword_1EC1A9130, &protocol descriptor for PodcastsQueueItem);
  sub_1C5D116B0();
  v0 = sub_1C6016E00();

  return v0 & 1;
}

uint64_t sub_1C5D0BBCC()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;

    v5 = 0;
    while (v5 < *(v1 + 16))
    {
      sub_1C5CDAF64(v3, &v14);
      __swift_project_boxed_opaque_existential_0(&v14, *(&v15 + 1));
      OUTLINED_FUNCTION_16_0();
      v6 = OUTLINED_FUNCTION_18();
      v8 = v7(v6);
      v10 = v0[4];
      if (v9)
      {
        if (v10)
        {
          if (v8 == v0[3] && v9 == v10)
          {

LABEL_19:

            sub_1C5C6BEFC(&v14, &v17);
            goto LABEL_20;
          }

          v12 = sub_1C6017860();

          if (v12)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      else if (!v10)
      {
        goto LABEL_19;
      }

      ++v5;
      result = __swift_destroy_boxed_opaque_existential_0(&v14);
      v3 += 40;
      if (v2 == v5)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
LABEL_20:
    v14 = v17;
    v15 = v18;
    v16 = v19;
    if (*(&v18 + 1))
    {
      sub_1C5C6BEFC(&v14, v13);
      sub_1C5C74680(0, &qword_1EC1A9130);
      type metadata accessor for PodcastAVItem();
      if (swift_dynamicCast())
      {
        return v13[5];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5D0BD8C()
{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 16);
  if (*(v1 + 16))
  {
    sub_1C5CDAF64(v1 + 32, v5);
    __swift_project_boxed_opaque_existential_0(v5, v5[3]);
    OUTLINED_FUNCTION_16_0();
    v2 = OUTLINED_FUNCTION_252();
    v3(v2);
    OUTLINED_FUNCTION_318();
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  return OUTLINED_FUNCTION_255();
}

uint64_t sub_1C5D0BE20@<X0>(id a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v5 = v4;
  result = OUTLINED_FUNCTION_27();
  v11 = *(v5 + 16);
  v12 = v11[2];
  if (!v12)
  {
LABEL_14:
    a4[4] = 0;
    *a4 = 0u;
    *(a4 + 1) = 0u;
    return result;
  }

  v26 = a3;
  v27 = a4;

  v13 = 0;
  v14 = 4;
  while (1)
  {
    if (v13 >= v11[2])
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1C5CDAF64(&v11[v14], &v29);
    v15 = v30;
    v16 = v31;
    __swift_project_boxed_opaque_existential_0(&v29, v30);
    OUTLINED_FUNCTION_16_0();
    v18 = v17(v15, v16);
    if (!v19)
    {
      __swift_destroy_boxed_opaque_existential_0(&v29);
      goto LABEL_12;
    }

    a4 = v19;
    if (v18 == a1 && v19 == a2)
    {
      break;
    }

    v21 = sub_1C6017860();

    __swift_destroy_boxed_opaque_existential_0(&v29);
    if (v21)
    {
      goto LABEL_16;
    }

LABEL_12:
    ++v13;
    v14 += 5;
    if (v12 == v13)
    {

      a4 = v27;
      goto LABEL_14;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(&v29);
LABEL_16:

  if (v26)
  {
    goto LABEL_24;
  }

  v22 = *(v5 + 16);
  if (v13 >= *(v22 + 16))
  {
    goto LABEL_29;
  }

  sub_1C5CDAF64(v22 + v14 * 8, &v29);
  v11 = sub_1C5C74680(0, &qword_1EC1A9130);
  a4 = type metadata accessor for PodcastAVItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  a1 = v28;
  v23 = sub_1C5CEDE80();
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = v23;
  v30 = a4;
  v31 = &off_1F4540EC0;
  *&v29 = v23;
  OUTLINED_FUNCTION_24_7();
  v11 = *(v5 + 16);
  a4 = v24;
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v11;
  if ((result & 1) == 0)
  {
    goto LABEL_30;
  }

  while (v13 < v11[2])
  {
    __swift_destroy_boxed_opaque_existential_0(&v11[v14]);
    sub_1C5C6BEFC(&v29, &v11[v14]);
    *(v5 + 16) = v11;
    swift_endAccess();

LABEL_23:
LABEL_24:
    v25 = *(v5 + 16);
    if (v13 < *(v25 + 16))
    {
      return sub_1C5CDAF64(v25 + v14 * 8, v27);
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_1C5D101D4(v11);
    v11 = result;
    *(v5 + 16) = result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D0C0A8()
{
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_23_6();
  v3 = *(v0 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;

    v7 = 0;
    while (v7 < *(v3 + 16))
    {
      sub_1C5CDAF64(v5, v15);
      v8 = v16;
      v9 = v17;
      __swift_project_boxed_opaque_existential_0(v15, v16);
      OUTLINED_FUNCTION_16_0();
      v11 = v10(v8, v9);
      if (v12)
      {
        if (v11 == v2 && v12 == v1)
        {

          __swift_destroy_boxed_opaque_existential_0(v15);
LABEL_16:

          return v7;
        }

        v14 = OUTLINED_FUNCTION_49_3();

        result = __swift_destroy_boxed_opaque_existential_0(v15);
        if (v14)
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v15);
      }

      ++v7;
      v5 += 40;
      if (v4 == v7)
      {

        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C5D0C1D8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  OUTLINED_FUNCTION_12_9(a1, qword_1EC1A8DA0, &qword_1EC1A9130, &protocol descriptor for PodcastsQueueItem);
  sub_1C5D116B0();

  if ((sub_1C6016E00() & 1) == 0)
  {
LABEL_11:
    swift_beginAccess();
    *(v2 + 16) = v3;
  }

  result = sub_1C5D0C2F4();
  v5 = v3[2];
  if (v5)
  {
    v6 = result;
    v7 = *(result + 16);
    v8 = v5 + v7;
    if (!__OFADD__(v5, v7))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v8 > v3[3] >> 1)
      {
        if (v5 <= v8)
        {
          v10 = v5 + v7;
        }

        else
        {
          v10 = v5;
        }

        v3 = sub_1C5D0DEE4(isUniquelyReferenced_nonNull_native, v10, 1, v3);
      }

      sub_1C5D10798(1uLL, 1, v7, v6);
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D0C2F4()
{
  if (!*(v0 + 32))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1C5D0C0A8();
  v3 = v2;

  if (v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C5D0B398();
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1C5D0C0A8();
  v7 = v6;

  if (v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_27();
  v1 = MEMORY[0x1E69E7CC0];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = *(v0 + 16);
    if (v9 < *(v10 + 16) && v5 >= v9)
    {
      if (!__OFADD__(v5, 1))
      {
        sub_1C5D0DAC4(v9, v5 + 1, v10);
        OUTLINED_FUNCTION_318();
        v1 = v12;
        v9 = v13;
        if ((v13 & 1) == 0)
        {
LABEL_15:
          v14 = OUTLINED_FUNCTION_255();
          sub_1C5D0FC9C(v14, v15, v1, v9);
          v1 = v16;
          goto LABEL_22;
        }

        sub_1C6017880();
        swift_unknownObjectRetain_n();
        v17 = swift_dynamicCastClass();
        if (!v17)
        {
          swift_unknownObjectRelease();
          v17 = MEMORY[0x1E69E7CC0];
        }

        v18 = *(v17 + 16);

        if (!__OFSUB__(v9 >> 1, v1))
        {
          if (v18 == (v9 >> 1) - v1)
          {
            v1 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v1)
            {
              return v1;
            }

            v1 = MEMORY[0x1E69E7CC0];
LABEL_22:
            swift_unknownObjectRelease();
            return v1;
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        swift_unknownObjectRelease_n();
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  return v1;
}

uint64_t sub_1C5D0C490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1C5D0B398();
  if (v8)
  {
    v9 = sub_1C5D0C0A8();
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      v5[3] = a3;
      v5[4] = a4;

      v13 = sub_1C5D0C0A8();
      if (v14)
      {
        return 0;
      }

      v15 = v13;
      OUTLINED_FUNCTION_303();
      result = sub_1C5D0C0A8();
      if (v16)
      {
        return 0;
      }

      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
      }

      else if (!__OFSUB__(result, 1))
      {
        if (result - 1 >= v9)
        {
          v18 = v9;
        }

        else
        {
          v18 = result - 1;
        }

        if (v18 < v17)
        {
          return 0;
        }

        OUTLINED_FUNCTION_27();
        v22 = sub_1C5D0DAC4(v15 + 1, v18 + 1, v5[2]);
        if (v20 == v21 >> 1 || (v23 = v19, v24 = v20, v25 = v21, OUTLINED_FUNCTION_22_8(), sub_1C5D103E8(v17, v18 + 1), swift_endAccess(), OUTLINED_FUNCTION_303(), result = sub_1C5D0C0A8(), (v26 & 1) != 0))
        {
          swift_unknownObjectRelease();
          return 0;
        }

        if (!__OFADD__(result, 1))
        {
          OUTLINED_FUNCTION_22_8();
          swift_unknownObjectRetain();
          v27 = OUTLINED_FUNCTION_29_5();
          sub_1C5D10304(v27, v28, v22, v23, v24, v25);
          swift_endAccess();
          swift_unknownObjectRelease();
          return 1;
        }

LABEL_21:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  v5[3] = a3;
  v5[4] = a4;

  return 0;
}

uint64_t sub_1C5D0C648(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  v7 = a3[2];

  if (!v7)
  {
LABEL_7:
    if (a4 == 1)
    {
      v13 = sub_1C5D0B398();
      if (v14)
      {
        sub_1C5D0C914(v13, v14, v5);

LABEL_13:
      }
    }

    else if (a4)
    {
      goto LABEL_13;
    }

    sub_1C5D0C914(a1, a2, v5);
    goto LABEL_13;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C5D101D4(v5);
      v5 = result;
    }

    if (v9 >= v5[2])
    {
      break;
    }

    ++v9;
    v11 = v5[v8 + 7];
    v12 = v5[v8 + 8];
    __swift_mutable_project_boxed_opaque_existential_1(&v5[v8 + 4], v11);
    v16 = 0;
    (*(v12 + 40))(&v16, v11, v12);
    v8 += 5;
    if (v7 == v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1C5D0C798()
{
  if (*(v0 + 32))
  {

    OUTLINED_FUNCTION_252();
    v2 = sub_1C5D0C0A8();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      OUTLINED_FUNCTION_19_10();
      swift_beginAccess();
      v5 = *(v0 + 16);
      v6 = *(v5 + 16);
      if (v2 > v6)
      {
        *(v0 + 16) = MEMORY[0x1E69E7CC0];
LABEL_16:

        return;
      }

      if (v6 <= v2)
      {
        __break(1u);
      }

      else
      {
        sub_1C5D0DAC4(v2 + 1, v6, v5);
        v4 = v7;
        v1 = v8;
        if ((v8 & 1) == 0)
        {
LABEL_7:
          v9 = OUTLINED_FUNCTION_252();
          sub_1C5D0FC9C(v9, v10, v4, v1);
          v12 = v11;
          goto LABEL_14;
        }

        sub_1C6017880();
        swift_unknownObjectRetain_n();
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          swift_unknownObjectRelease();
          v13 = MEMORY[0x1E69E7CC0];
        }

        v14 = *(v13 + 16);

        if (!__OFSUB__(v1 >> 1, v4))
        {
          if (v14 == (v1 >> 1) - v4)
          {
            v12 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v12)
            {
LABEL_15:
              *(v0 + 16) = v12;
              goto LABEL_16;
            }

            v12 = MEMORY[0x1E69E7CC0];
LABEL_14:
            swift_unknownObjectRelease();
            goto LABEL_15;
          }

          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_20:
      swift_unknownObjectRelease_n();
      goto LABEL_7;
    }
  }
}

void sub_1C5D0C914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_1C5D0B540();
    v5 = OUTLINED_FUNCTION_303();
    v7 = sub_1C5D0C9C0(v5, v6, v4);
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      sub_1C5D0B540();

      v10 = __OFADD__(v7, 1);
      v11 = v7 + 1;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        OUTLINED_FUNCTION_19_10();
        OUTLINED_FUNCTION_24_7();

        sub_1C5D1024C(v11, v11, a3);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_1C5D0C9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1C6017860() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

void sub_1C5D0CA9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), unint64_t *a4)
{
  v6 = a3(a2);
  v7 = 0;
  while (v6 != v7)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C6954040](v7, a2);
    }

    else
    {
      if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_1C5C64D74(0, a4);
    v10 = sub_1C60172D0();

    if (v10)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_1C5D0CB94()
{
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_24_7();

  sub_1C5D0CC08(v0);
  return swift_endAccess();
}

void sub_1C5D0CC08(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_33_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C5D0EF64(v4, 1, sub_1C5D0DEE4);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28_5();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C5C74680(0, &qword_1EC1A9130);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C5D0CCE4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_33_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C5D0EF64(v4, 1, sub_1C5D0DB30);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28_5();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C5D0CDCC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1C5D0EFDC(result);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1C5D0CE8C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C5D0EF64(v4 + v3, 1, sub_1C5D0E900);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_28_5();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 96 * v6 + 32), (a1 + 32), 96 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C5D0CF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (!a3 || (v5 = *(a1 + 16)) == 0)
  {
LABEL_13:
    OUTLINED_FUNCTION_24_7();

    sub_1C5D0CC08(v20);
    return swift_endAccess();
  }

  v8 = 0;
  v9 = a1 + 32;
  v10 = a1 + 32;
  while (1)
  {
    v11 = v5;
    sub_1C5CDAF64(v10, &v40);
    v12 = v42;
    v13 = v43;
    __swift_project_boxed_opaque_existential_0(&v40, v42);
    OUTLINED_FUNCTION_16_0();
    v15 = v14(v12, v13);
    if (!v16)
    {
      __swift_destroy_boxed_opaque_existential_0(&v40);
      v5 = v11;
      goto LABEL_12;
    }

    if (v15 == a2 && v16 == a3)
    {
      break;
    }

    v18 = sub_1C6017860();

    result = __swift_destroy_boxed_opaque_existential_0(&v40);
    v5 = v11;
    if (v18)
    {
      goto LABEL_16;
    }

LABEL_12:
    ++v8;
    v10 += 40;
    if (v5 == v8)
    {
      goto LABEL_13;
    }
  }

  result = __swift_destroy_boxed_opaque_existential_0(&v40);
  v5 = v11;
LABEL_16:
  for (i = 0; v5 != i; ++i)
  {
    sub_1C5CDAF64(v9, &v41);
    sub_1C5C6BEFC(&v41, v39);
    if (v8 >= i)
    {
      sub_1C5CDAF64(v39, &v36);
      v27 = v37;
      v28 = v38;
      __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
      LOBYTE(v35[0]) = 0;
      (*(v28 + 40))(v35, v27, v28);
      sub_1C5CDAF64(&v36, v35);
      OUTLINED_FUNCTION_24_7();
      v29 = *(v4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 16) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = OUTLINED_FUNCTION_35_4();
        *(v4 + 16) = v29;
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        v34 = OUTLINED_FUNCTION_128(v31);
        v29 = sub_1C5D0DEE4(v34, v32 + 1, 1, v29);
      }

      v29[2] = v32 + 1;
      sub_1C5C6BEFC(v35, &v29[5 * v32 + 4]);
      *(v4 + 16) = v29;
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_0(v39);
      v26 = &v36;
    }

    else
    {
      sub_1C5CDAF64(v39, &v36);
      OUTLINED_FUNCTION_24_7();
      v22 = *(v4 + 16);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 16) = v22;
      if ((v23 & 1) == 0)
      {
        v22 = OUTLINED_FUNCTION_35_4();
        *(v4 + 16) = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v33 = OUTLINED_FUNCTION_128(v24);
        v22 = sub_1C5D0DEE4(v33, v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_1C5C6BEFC(&v36, &v22[5 * v25 + 4]);
      *(v4 + 16) = v22;
      swift_endAccess();
      v26 = v39;
    }

    result = __swift_destroy_boxed_opaque_existential_0(v26);
    v9 += 40;
  }

  return result;
}

uint64_t sub_1C5D0D248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1C5D0B540();
  v10 = sub_1C5D0C9C0(a1, a2, v9);
  LOBYTE(a1) = v11;

  if (a1)
  {
    return 0;
  }

  v12 = sub_1C5D0B540();
  v13 = sub_1C5D0C9C0(a3, a4, v12);
  v15 = v14;

  if (v15)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_7();
  result = sub_1C5D0D358(v10, v21);
  if (*(*(v4 + 16) + 16) < v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v13 < 0)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1C5CDAF64(v21, v20);
  v17 = OUTLINED_FUNCTION_29_5();
  sub_1C5D1050C(v17, v18, v19);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0(v21);
  return 1;
}

uint64_t sub_1C5D0D358@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C5D101D4(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = &v5[5 * a1];
    sub_1C5C6BEFC(v8 + 2, a2);
    result = memmove(v8 + 2, v8 + 72, 40 * (v7 - 1 - a1));
    v5[2] = v7 - 1;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C5D0D3F4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1C5D101E8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    memmove((v8 + 32), (v8 + 40), 8 * v7);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_1C5D0D484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1C5D0B540();
  v10 = sub_1C5D0C9C0(a1, a2, v9);
  LOBYTE(a1) = v11;

  if (a1)
  {
    return 0;
  }

  v12 = sub_1C5D0B540();
  v13 = sub_1C5D0C9C0(a3, a4, v12);
  v15 = v14;

  if (v15)
  {
    return 0;
  }

  OUTLINED_FUNCTION_24_7();
  result = sub_1C5D0D358(v10, v22);
  if (v13 >= v10)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  if (*(*(v4 + 16) + 16) < v17)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v17 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_1C5CDAF64(v22, v21);
  v18 = OUTLINED_FUNCTION_29_5();
  sub_1C5D1050C(v18, v19, v20);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0(v22);
  return 1;
}

uint64_t sub_1C5D0D59C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_24_7();

  result = sub_1C5D10F78((v2 + 16), a1, a2);
  v6 = *(*(v2 + 16) + 16);
  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1C5D103E8(result, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1C5D0D618()
{
  v3 = v0;
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_23_6();
  v4 = *(v0 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = v4 + 32;

  v7 = 0;
  while (1)
  {
    if (v7 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1C5CDAF64(v6, v30);
    v8 = v31;
    v9 = v32;
    __swift_project_boxed_opaque_existential_0(v30, v31);
    OUTLINED_FUNCTION_16_0();
    v11 = v10(v8, v9);
    if (!v12)
    {
      __swift_destroy_boxed_opaque_existential_0(v30);
      goto LABEL_12;
    }

    if (v11 == v2 && v12 == v1)
    {
      break;
    }

    v14 = OUTLINED_FUNCTION_49_3();

    __swift_destroy_boxed_opaque_existential_0(v30);
    if (v14)
    {
      goto LABEL_16;
    }

LABEL_12:
    ++v7;
    v6 += 40;
    if (v5 == v7)
    {

      return 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
LABEL_16:

  sub_1C5D0B398();
  if (!v16 || (v17 = sub_1C5D0B540(), v18 = OUTLINED_FUNCTION_38_0(), v4 = sub_1C5D0C9C0(v18, v19, v17), v21 = v20, , , (v21 & 1) != 0))
  {
    v4 = *(*(v3 + 16) + 16) - 1;
  }

  if (v4 >= (v7 + 1))
  {
    v1 = v7 + 1;
  }

  else
  {
    v1 = v4;
  }

  if (qword_1EC1A8EB8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v22 = sub_1C60162D0();
  __swift_project_value_buffer(v22, qword_1EC1BE3A0);
  v23 = sub_1C60162B0();
  v24 = sub_1C6016F30();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30[0] = v26;
    *v25 = 136315138;
    OUTLINED_FUNCTION_303();
    v27 = sub_1C5D11784();
    v29 = sub_1C5C6AB10(v27, v28, v30);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1C5C61000, v23, v24, "Removing items at range: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1C6956920](v26, -1, -1);
    MEMORY[0x1C6956920](v25, -1, -1);
  }

  result = OUTLINED_FUNCTION_22_8();
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C5D103E8(v1, v4 + 1);
    swift_endAccess();
    return 1;
  }

  return result;
}

uint64_t sub_1C5D0D8D4()
{
  OUTLINED_FUNCTION_19_10();
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
}

uint64_t PodcastsManagedQueue.deinit()
{

  return v0;
}

uint64_t PodcastsManagedQueue.__deallocating_deinit()
{
  PodcastsManagedQueue.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t PodcastQueueType.hashValue.getter()
{
  v1 = *v0;
  sub_1C60179F0();
  MEMORY[0x1C69544E0](v1);
  return sub_1C6017A20();
}

unint64_t sub_1C5D0DAC4(unint64_t result, uint64_t a2, uint64_t a3)
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

void sub_1C5D0DB30()
{
  OUTLINED_FUNCTION_8_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_16();
    }
  }

  OUTLINED_FUNCTION_4_15();
  if (v3)
  {
    OUTLINED_FUNCTION_0_22();
    sub_1C5D1203C(0, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_26_6();
    _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_3_12();
    *(v10 + 2) = v2;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = v0 + 32;
  if (v1)
  {
    if (v10 != v0 || &v13[16 * v2] <= v12)
    {
      memmove(v12, v13, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C5D0DC20()
{
  OUTLINED_FUNCTION_15_8();
  if (v3)
  {
    OUTLINED_FUNCTION_14_12();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_13_5();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1C5D0EB8C(*(v0 + 16), v4, &qword_1EC1AAE30, MEMORY[0x1E69C4E18], MEMORY[0x1E69C4E18]);
  OUTLINED_FUNCTION_39_1();
  sub_1C60161C0();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_30_5();
  if (v1)
  {
    OUTLINED_FUNCTION_25_5(MEMORY[0x1E69C4E18], v7);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_7();
  }
}

void sub_1C5D0DD0C()
{
  OUTLINED_FUNCTION_15_8();
  if (v3)
  {
    OUTLINED_FUNCTION_14_12();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_13_5();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1C5D0EB8C(*(v0 + 16), v4, &qword_1EC1AAE70, type metadata accessor for PodcastChapter, type metadata accessor for PodcastChapter);
  OUTLINED_FUNCTION_39_1();
  type metadata accessor for PodcastChapter();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_30_5();
  if (v1)
  {
    OUTLINED_FUNCTION_25_5(type metadata accessor for PodcastChapter, v7);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_7();
  }
}

void sub_1C5D0DDF8()
{
  OUTLINED_FUNCTION_8_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_16();
    }
  }

  OUTLINED_FUNCTION_6_11();
  if (v2)
  {
    sub_1C5D11CDC(0, &qword_1EC1AAE38, sub_1C5D11EE4, MEMORY[0x1E69E6F90]);
    v7 = OUTLINED_FUNCTION_26_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_3_12();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_34_3();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void *sub_1C5D0DEE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C5D11654(0, qword_1EC1A8920, &qword_1EC1A9130, &protocol descriptor for PodcastsQueueItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C5C74680(0, &qword_1EC1A9130);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C5D0E040()
{
  OUTLINED_FUNCTION_15_8();
  if (v3)
  {
    OUTLINED_FUNCTION_14_12();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_13_5();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1C5D0EB8C(*(v0 + 16), v4, &qword_1EC1A8918, MEMORY[0x1E69C4B30], MEMORY[0x1E69C4B30]);
  OUTLINED_FUNCTION_39_1();
  sub_1C60154A0();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_30_5();
  if (v1)
  {
    OUTLINED_FUNCTION_25_5(MEMORY[0x1E69C4B30], v7);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_7();
  }
}

void sub_1C5D0E12C()
{
  OUTLINED_FUNCTION_8_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_16();
    }
  }

  OUTLINED_FUNCTION_6_11();
  if (v2)
  {
    OUTLINED_FUNCTION_0_22();
    sub_1C5D1203C(0, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_26_6();
    _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_5_14();
    v10[2] = v3;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = OUTLINED_FUNCTION_34_3();
  if (v1)
  {
    if (v10 != v0 || &v13[8 * v3] <= v12)
    {
      memmove(v12, v13, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v3);
  }
}

void sub_1C5D0E1FC()
{
  OUTLINED_FUNCTION_8_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_16();
    }
  }

  OUTLINED_FUNCTION_4_15();
  if (v3)
  {
    sub_1C5D11CDC(0, &qword_1EC1A88F0, sub_1C5CE5EF4, MEMORY[0x1E69E6F90]);
    v7 = OUTLINED_FUNCTION_26_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_5_14();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_18();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1C5CE5EF4();
    OUTLINED_FUNCTION_18();
    swift_arrayInitWithCopy();
  }
}

void sub_1C5D0E308()
{
  OUTLINED_FUNCTION_8_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_16();
    }
  }

  OUTLINED_FUNCTION_4_15();
  if (v3)
  {
    sub_1C5D11654(0, &qword_1EC1ABDC0, &qword_1ED7DCAE0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6F90]);
    v7 = OUTLINED_FUNCTION_26_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_5_14();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_18();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1C5C74680(0, &qword_1ED7DCAE0);
    OUTLINED_FUNCTION_18();
    swift_arrayInitWithCopy();
  }
}

void sub_1C5D0E420()
{
  OUTLINED_FUNCTION_8_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_16();
    }
  }

  OUTLINED_FUNCTION_4_15();
  if (v3)
  {
    sub_1C5D11CDC(0, &qword_1ED7DCB00, sub_1C5D11D40, MEMORY[0x1E69E6F90]);
    v7 = OUTLINED_FUNCTION_26_6();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_3_12();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[2 * v2 + 4] <= v7 + 4)
    {
      v10 = OUTLINED_FUNCTION_18();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1C5C755F0();
    OUTLINED_FUNCTION_18();
    swift_arrayInitWithCopy();
  }
}

void sub_1C5D0E540(char a1, uint64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_2_16();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_7_12();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_16();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    sub_1C5D1203C(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    OUTLINED_FUNCTION_17_5(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v15 / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (a1)
  {
    if (v14 != a4 || &v17[40 * v12] <= v16)
    {
      memmove(v16, v17, 40 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C5D0E64C()
{
  OUTLINED_FUNCTION_15_8();
  if (v3)
  {
    OUTLINED_FUNCTION_14_12();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_13_5();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1C5D0EB8C(*(v0 + 16), v4, &qword_1ED7DCB50, sub_1C5D11F3C, sub_1C5D11F3C);
  OUTLINED_FUNCTION_39_1();
  sub_1C5D11F3C();
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_30_5();
  if (v1)
  {
    OUTLINED_FUNCTION_25_5(sub_1C5D11F3C, v7);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_11_7();
  }
}

void sub_1C5D0E738()
{
  OUTLINED_FUNCTION_8_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_16();
    }
  }

  OUTLINED_FUNCTION_4_15();
  if (v3)
  {
    OUTLINED_FUNCTION_0_22();
    sub_1C5D1203C(0, v7, v8, v9);
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_17_5(v10);
    OUTLINED_FUNCTION_45_2();
    *(v10 + 2) = v2;
    *(v10 + 3) = v11;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = v0 + 32;
  if (v1)
  {
    if (v10 != v0 || &v13[72 * v2] <= v12)
    {
      memmove(v12, v13, 72 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1C5D0E830()
{
  OUTLINED_FUNCTION_8_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_16();
    }
  }

  OUTLINED_FUNCTION_6_11();
  if (v2)
  {
    OUTLINED_FUNCTION_0_22();
    sub_1C5D1203C(0, v7, v8, v9);
    v10 = OUTLINED_FUNCTION_26_6();
    _swift_stdlib_malloc_size(v10);
    OUTLINED_FUNCTION_5_14();
    v10[2] = v3;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = OUTLINED_FUNCTION_34_3();
  if (v1)
  {
    if (v10 != v0 || &v13[8 * v3] <= v12)
    {
      memmove(v12, v13, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v3);
  }
}

void sub_1C5D0E900()
{
  OUTLINED_FUNCTION_8_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_16();
    }
  }

  OUTLINED_FUNCTION_6_11();
  if (v2)
  {
    sub_1C5D11CDC(0, &qword_1EC1AAE50, type metadata accessor for CMTimeMapping, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_17_5(v7);
    OUTLINED_FUNCTION_45_2();
    v7[2] = v3;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_34_3();
  if (v1)
  {
    if (v7 != v0 || &v10[96 * v3] <= v9)
    {
      memmove(v9, v10, 96 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, 96 * v3);
  }
}

void *sub_1C5D0EA0C(uint64_t a1, uint64_t a2)
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

  OUTLINED_FUNCTION_0_22();
  sub_1C5D1203C(0, v4, v5, v6);
  v7 = OUTLINED_FUNCTION_26_6();
  _swift_stdlib_malloc_size(v7);
  OUTLINED_FUNCTION_3_12();
  v7[2] = a1;
  v7[3] = v8;
  return v7;
}

void *sub_1C5D0EA7C(uint64_t a1, uint64_t a2)
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

  OUTLINED_FUNCTION_0_22();
  sub_1C5D1203C(0, v5, v4 + 8, v6);
  v7 = OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_17_5(v7);
  v7[2] = a1;
  v7[3] = 2 * (v8 / 32);
  return v7;
}

void *sub_1C5D0EAF8(uint64_t a1, uint64_t a2)
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

  OUTLINED_FUNCTION_9_11();
  sub_1C5D11CDC(0, v4, v5, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_17_5(v6);
  v6[2] = a1;
  v6[3] = 2 * (v7 / 24);
  return v6;
}

size_t sub_1C5D0EB8C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C5D11CDC(0, a3, a4, MEMORY[0x1E69E6F90]);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      OUTLINED_FUNCTION_45_2();
      v11[2] = a1;
      v11[3] = v14;
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1C5D0ECB4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_11(a3, result);
  }

  return result;
}

char *sub_1C5D0ECD4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_10_11(a3, result);
  }

  return result;
}

uint64_t sub_1C5D0ECFC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_40_2();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_40_2();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1C5D0EDEC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1C5C6AB10(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_1C5D0EE48(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C5D1203C(0, &unk_1ED7DCB10, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1C5D0EF54(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1C5D0EF64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1C5D0EFDC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C6017440();
LABEL_9:
  result = sub_1C6017570();
  *v1 = result;
  return result;
}

char *sub_1C5D0F07C(char *a1, int64_t a2, char a3)
{
  result = sub_1C5D0F258(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C5D0F09C(char *a1, int64_t a2, char a3)
{
  result = sub_1C5D0F384(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C5D0F120()
{
  OUTLINED_FUNCTION_21_9();
  sub_1C5D0F4F4(v1, v2, v3, v4, v5, v6, type metadata accessor for PodcastChapter, type metadata accessor for PodcastChapter);
  *v0 = v7;
}

void *sub_1C5D0F1D8(void *a1, int64_t a2, char a3)
{
  result = sub_1C5D0F6B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C5D0F1F8(void *a1, int64_t a2, char a3)
{
  result = sub_1C5D0F7F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C5D0F218(char *a1, int64_t a2, char a3)
{
  result = sub_1C5D0FA4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C5D0F238(char *a1, int64_t a2, char a3)
{
  result = sub_1C5D0FB64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C5D0F258(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C5D1203C(0, &qword_1EC1AAE80, &_s7ContentON, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C5D0F384(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C5D1203C(0, &qword_1ED7DCAE8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
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

void sub_1C5D0F4F4(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_2_16();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_7_12();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_16();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  sub_1C5D11CDC(0, a5, a6, MEMORY[0x1E69E6F90]);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  a7(0);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_30_5();
  if (a1)
  {
    sub_1C5D0ECFC(a4 + v23, v15, v20 + v23, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1C5D0F6B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C5D11E68();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C5D1203C(0, &qword_1EC1A9480, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C5D0F7F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C5D11654(0, qword_1EC1A8920, &qword_1EC1A9130, &protocol descriptor for PodcastsQueueItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C5C74680(0, &qword_1EC1A9130);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1C5D0F950()
{
  OUTLINED_FUNCTION_8_11();
  if (v4)
  {
    OUTLINED_FUNCTION_2_16();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_7_12();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_16();
    }
  }

  OUTLINED_FUNCTION_6_11();
  if (v2)
  {
    OUTLINED_FUNCTION_9_11();
    sub_1C5D11CDC(0, v7, v8, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_17_5(v9);
    OUTLINED_FUNCTION_45_2();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_34_3();
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v3] <= v11)
    {
      memmove(v11, v12, 24 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 24 * v3);
  }
}

char *sub_1C5D0FA4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C5D1203C(0, &qword_1ED7DC210, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_1C5D0FB64(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C5D11CDC(0, &qword_1ED7DC208, type metadata accessor for CMTimeRange, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

void sub_1C5D0FC9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_1C5D11654(0, qword_1EC1A8920, &qword_1EC1A9130, &protocol descriptor for PodcastsQueueItem, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
    }

    if (v4 != a3)
    {
      sub_1C5C74680(0, &qword_1EC1A9130);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C5D0FDA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      OUTLINED_FUNCTION_0_22();
      sub_1C5D1203C(0, v7, v8, v9);
      v10 = OUTLINED_FUNCTION_26_6();
      _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_3_12();
      v10[2] = v5;
      v10[3] = v11;
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C5D0FE6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      OUTLINED_FUNCTION_0_22();
      sub_1C5D1203C(0, v8, v7 + 8, v9);
      v10 = OUTLINED_FUNCTION_26_6();
      OUTLINED_FUNCTION_17_5(v10);
      v10[2] = v5;
      v10[3] = (2 * (v11 / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_1C5D11E0C();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1C5D0FF48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1 - 1;
  for (i = (a1 + 40 * v1 - 8); ; i -= 5)
  {
    if (v2 == -1)
    {
      v11 = 0;
      goto LABEL_8;
    }

    v4 = i[3];
    v5 = i[4];
    __swift_project_boxed_opaque_existential_0(i, v4);
    (*(v5 + 32))(&v13, v4, v5);
    if (v13 != 1)
    {
      v6 = i[3];
      v7 = i[4];
      __swift_project_boxed_opaque_existential_0(i, v6);
      v8 = (*(v7 + 8))(v6, v7);
      v10 = sub_1C5D0B4A8(v8, v9);

      if (v10)
      {
        break;
      }
    }

    --v2;
  }

  v11 = v2;
LABEL_8:

  return v11;
}

void *sub_1C5D10060@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (a3)
  {
    v6 = sub_1C60161C0();
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v6);
  }

  else
  {
    v9 = a2;
    result = a1(a4, &v9);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v8 = sub_1C60161C0();
      return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
    }
  }

  return result;
}

uint64_t (*sub_1C5D10100@<X0>(uint64_t (*result)(void *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>))(void *)
{
  if (a3)
  {
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v7[1] = v5;
    v7[2] = v6;
    v7[0] = a2;
    result = result(v7);
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1C5D10154(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v6 = 0;
LABEL_5:
    v9 = a4 & 1;
    return (v6 | ((a4 & 1) << 32));
  }

  v8 = a3;
  result = a1(&v10, &v8);
  if (!v4)
  {
    v6 = v10;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D101E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C6017440();
  }

  return sub_1C6017570();
}

unint64_t sub_1C5D1024C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(*v3 + 16);
  if (v5 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = *(a3 + 16);
  v10 = __OFSUB__(v9, v7);
  v11 = v9 - v7;
  if (v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v5 + v11;
  if (__OFADD__(v5, v11))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1C5D0EF64(result, 1, sub_1C5D0DEE4);

  return sub_1C5D10798(v6, a2, v9, a3);
}

unint64_t sub_1C5D10304(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(*v6 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = __OFSUB__(v13, v10);
  v15 = v13 - v10;
  if (v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v8 + v15;
  if (__OFADD__(v8, v15))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_1C5D0EF64(result, 1, sub_1C5D0DEE4);

  return sub_1C5D108C4(v9, a2, v13, a3, a4, a5, a6);
}

uint64_t sub_1C5D103E8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1C5D0EF64(result, 1, sub_1C5D0DEE4);
  v8 = *v2;
  v9 = *v2 + 32;
  sub_1C5C74680(0, &qword_1EC1A9130);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 40 * a2);
  if (v5 != a2 || v12 + 40 * v11 <= v9 + 40 * v5)
  {
    result = memmove((v9 + 40 * v5), v12, 40 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1C5D1050C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(*v3 + 16);
  if (v5 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __OFSUB__(1, v7);
  v9 = 1 - v7;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v5 + v9;
  if (__OFADD__(v5, v9))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1C5D0EF64(result, 1, sub_1C5D0DEE4);

  return sub_1C5D10A18(v6, a2, 1, a3);
}

uint64_t sub_1C5D10634(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_41_1();
  v8 = *v4;
  result = v9(*v4);
  if (result < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(v5, v6))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = a4(v8);
  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_1C5D0EFDC(result);
    return sub_1C5D10B6C(v6, v5);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1C5D106EC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  result = sub_1C5C6AA20();
  if (result < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(a2, v3))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3 - a2;
  if (__OFSUB__(0, a2 - v3))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = sub_1C5C6AA20();
  v6 = __OFADD__(v5, v4);
  result = v5 + v4;
  if (!v6)
  {
    sub_1C5D0EFDC(result);
    return sub_1C5D10EA0(v3, a2);
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1C5D10798(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_1C5C74680(0, &qword_1EC1A9130);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = *(v9 + 16);
  v14 = v13 - a2;
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_20;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || v15 + 40 * v14 <= result)
  {
    result = memmove(result, v15, 40 * v14);
    v13 = *(v9 + 16);
  }

  v11 = __OFADD__(v13, v12);
  v17 = v13 + v12;
  if (v11)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v17;
LABEL_12:
  if (a3 >= 1)
  {
    if (*(a4 + 16) == a3)
    {
      swift_arrayInitWithCopy();
      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
    return result;
  }

LABEL_15:
}

unint64_t sub_1C5D108C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v7;
  v13 = v12 + 32 + 40 * result;
  sub_1C5C74680(0, &qword_1EC1A9130);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(a3, v8);
  v15 = a3 - v8;
  if (v14)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v15)
  {
    goto LABEL_12;
  }

  v16 = *(v12 + 16);
  v17 = v16 - a2;
  if (__OFSUB__(v16, a2))
  {
    goto LABEL_21;
  }

  result = v13 + 40 * a3;
  v18 = (v12 + 32 + 40 * a2);
  if (result != v18 || v18 + 40 * v17 <= result)
  {
    result = memmove(result, v18, 40 * v17);
    v16 = *(v12 + 16);
  }

  v14 = __OFADD__(v16, v15);
  v20 = v16 + v15;
  if (v14)
  {
    goto LABEL_22;
  }

  *(v12 + 16) = v20;
LABEL_12:
  if (a3 >= 1)
  {
    if (!__OFSUB__(a7 >> 1, a6))
    {
      if ((a7 >> 1) - a6 == a3)
      {
        swift_arrayInitWithCopy();
        goto LABEL_16;
      }

LABEL_24:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_16:

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5D10A18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = v10 + 40 * result;
  sub_1C5C74680(0, &qword_1EC1A9130);
  result = swift_arrayDestroy();
  v12 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v11 + 40 * a3;
  if (!v12)
  {
LABEL_12:
    if (a3 < 1)
    {
      return sub_1C5D1208C(a4, &qword_1EC1AAE88, MEMORY[0x1E69E6BC0]);
    }

    for (i = 0; (i & 1) == 0; i = 1)
    {
      result = sub_1C5CDAF64(a4, v11);
      v11 += 40;
      if (v11 >= v13)
      {
        return sub_1C5D1208C(a4, &qword_1EC1AAE88, MEMORY[0x1E69E6BC0]);
      }
    }

    goto LABEL_20;
  }

  v14 = *(v9 + 16);
  v15 = v14 - a2;
  if (!__OFSUB__(v14, a2))
  {
    v16 = (v10 + 40 * a2);
    if (v13 != v16 || v16 + 40 * v15 <= v13)
    {
      result = memmove((v11 + 40 * a3), v16, 40 * v15);
      v14 = *(v9 + 16);
    }

    v18 = __OFADD__(v14, v12);
    v19 = v14 + v12;
    if (v18)
    {
      goto LABEL_21;
    }

    *(v9 + 16) = v19;
    goto LABEL_12;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C5D10B6C(uint64_t a1, uint64_t a2)
{
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = OUTLINED_FUNCTION_20_8();
  sub_1C5C64D74(v8, v9);
  OUTLINED_FUNCTION_38_0();
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v2, v7);
  v7 = v2 - v7;
  if (v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  v6 = v5 >> 62;
  if (!(v5 >> 62))
  {
    result = *(v3 + 16);
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1C6017440();
LABEL_6:
  if (__OFSUB__(result, v4))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = OUTLINED_FUNCTION_37_1();
  if (v16)
  {
    v17 = v15 > v12;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    memmove(v12, v13, 8 * v14);
  }

  if (v6)
  {
    result = sub_1C6017440();
  }

  else
  {
    result = *(v3 + 16);
  }

  if (__OFADD__(result, v7))
  {
    goto LABEL_23;
  }

  *(v3 + 16) = result + v7;
LABEL_17:
  if (v2 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

void sub_1C5D10C70(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = a3;
  v7 = a2;
  v20 = a4;
  v12 = *v6;
  v8 = *v6 & 0xFFFFFFFFFFFFFF8;
  v9 = v8 + 32;
  v6 = (v8 + 32 + 8 * a1);
  sub_1C5C64D74(0, a5);
  swift_arrayDestroy();
  v13 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v14 = *(v8 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v14 = sub_1C6017440();
LABEL_6:
  v15 = &v14[-v7];
  if (__OFSUB__(v14, v7))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = &v6[v5];
  v17 = (v9 + 8 * v7);
  if (v16 != v17 || &v17[8 * v15] <= v16)
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    v14 = sub_1C6017440();
  }

  else
  {
    v14 = *(v8 + 16);
  }

  if (__OFADD__(v14, v11))
  {
    goto LABEL_27;
  }

  *(v8 + 16) = &v14[v11];
LABEL_17:
  v14 = v20;
  if (v5 >= 1)
  {
    *v6 = v20;
    if (v5 == 1)
    {
      return;
    }

LABEL_28:
    v19 = v14;
    __break(1u);
    return;
  }
}

unint64_t sub_1C5D10DBC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *v3;
  if (v6)
  {
    v8 = *(v7 + 16);
    v9 = v8 - a2;
    if (!__OFSUB__(v8, a2))
    {
      result = v7 + 32 + 96 * result + 96 * a3;
      v10 = (v7 + 32 + 96 * a2);
      if (result != v10 || v10 + 96 * v9 <= result)
      {
        result = memmove(result, v10, 96 * v9);
        v8 = *(v7 + 16);
      }

      v12 = __OFADD__(v8, v6);
      v13 = v8 + v6;
      if (!v12)
      {
        *(v7 + 16) = v13;
        goto LABEL_12;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  if (a3 > 0)
  {
    v14 = OUTLINED_FUNCTION_38_0();
    result = memcpy(v14, v15, 0x60uLL);
    if (a3 != 1)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_1C5D10EA0(uint64_t a1, uint64_t a2)
{
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = OUTLINED_FUNCTION_20_8();
  v9(v8);
  OUTLINED_FUNCTION_38_0();
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v2, v7);
  v7 = v2 - v7;
  if (v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v7)
  {
    goto LABEL_17;
  }

  v6 = v5 >> 62;
  if (!(v5 >> 62))
  {
    result = *(v3 + 16);
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1C6017440();
LABEL_6:
  if (__OFSUB__(result, v4))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = OUTLINED_FUNCTION_37_1();
  if (v16)
  {
    v17 = v15 > v12;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    memmove(v12, v13, 8 * v14);
  }

  if (v6)
  {
    result = sub_1C6017440();
  }

  else
  {
    result = *(v3 + 16);
  }

  if (__OFADD__(result, v7))
  {
    goto LABEL_23;
  }

  *(v3 + 16) = result + v7;
LABEL_17:
  if (v2 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C5D10F78(void **a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;

  result = sub_1C5D0B8F0(v8, a2, a3);
  if (v3)
  {

    return v4;
  }

  if (v10)
  {
    v4 = v8[2];

    return v4;
  }

  v4 = result;
  v26 = a1;
  v11 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_35;
  }

  for (i = 40 * result + 72; ; i += 40)
  {
    v13 = v8[2];
    if (v11 == v13)
    {

      return v4;
    }

    if (v11 >= v13)
    {
      break;
    }

    sub_1C5CDAF64(v8 + i, &v23);
    v14 = v24;
    v15 = v25;
    __swift_project_boxed_opaque_existential_0(&v23, v24);
    v16 = (*(v15 + 8))(v14, v15);
    if (!v17)
    {
      result = __swift_destroy_boxed_opaque_existential_0(&v23);
LABEL_17:
      if (v11 != v4)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        v20 = v8[2];
        if (v4 >= v20)
        {
          goto LABEL_32;
        }

        result = sub_1C5CDAF64(&v8[5 * v4 + 4], &v23);
        if (v11 >= v20)
        {
          goto LABEL_33;
        }

        sub_1C5CDAF64(v8 + i, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C5D101D4(v8);
        }

        v21 = &v8[5 * v4];
        __swift_destroy_boxed_opaque_existential_0((v21 + 4));
        result = sub_1C5C6BEFC(v22, (v21 + 4));
        if (v11 >= v8[2])
        {
          goto LABEL_34;
        }

        __swift_destroy_boxed_opaque_existential_0(v8 + i);
        result = sub_1C5C6BEFC(&v23, v8 + i);
        *v26 = v8;
      }

      ++v4;
      goto LABEL_27;
    }

    if (v16 == a2 && v17 == a3)
    {

      result = __swift_destroy_boxed_opaque_existential_0(&v23);
      goto LABEL_27;
    }

    v19 = sub_1C6017860();

    result = __swift_destroy_boxed_opaque_existential_0(&v23);
    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_27:
    ++v11;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void (*sub_1C5D111B4(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1C5C920B4(a3);
  sub_1C5C8CEE0(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1C6954040](a2, a3);
  }

  *a1 = v7;
  return sub_1C5D11240;
}

void (*sub_1C5D11248(void *a1, uint64_t a2, uint64_t a3))(id *)
{
  v6 = sub_1C5C920B4(a3);
  sub_1C5C8CEE0(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1C6954040](a2, a3);
  }

  *a1 = v7;
  return sub_1C5D12100;
}

uint64_t sub_1C5D112D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1C6017440();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1C5C6AA20(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1C5C64D74(0, &qword_1ED7DCE70);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1C5D11FA0(0, &qword_1EC1A9EF8);
        sub_1C5D11FEC(&qword_1EC1A9F00, &qword_1EC1A9EF8);
        for (i = 0; i != v7; ++i)
        {
          v9 = sub_1C5D111B4(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D11468(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1C6017440();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1C5C6AA20();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1C5D11FA0(0, &qword_1EC1AAE58);
        sub_1C5D11FEC(&qword_1EC1AAE60, &qword_1EC1AAE58);
        for (i = 0; i != v7; ++i)
        {
          v9 = sub_1C5D11248(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C5D11654(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_43();
    v10 = sub_1C5C74680(v8, v9);
    v11 = a5(a1, v10);
    if (!v12)
    {
      atomic_store(v11, v5);
    }
  }
}

unint64_t sub_1C5D116B0()
{
  result = qword_1EC1A8D98;
  if (!qword_1EC1A8D98)
  {
    sub_1C5D11654(255, qword_1EC1A8DA0, &qword_1EC1A9130, &protocol descriptor for PodcastsQueueItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A8D98);
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

uint64_t sub_1C5D11784()
{
  sub_1C6017650();
  MEMORY[0x1C69534E0](3026478, 0xE300000000000000);
  sub_1C6017650();
  return 0;
}

unint64_t sub_1C5D11820()
{
  result = qword_1EC1AAE28;
  if (!qword_1EC1AAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1AAE28);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PodcastQueueType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C5D11CDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1C5D11D40()
{
  result = qword_1ED7DCAB8;
  if (!qword_1ED7DCAB8)
  {
    sub_1C5D11CDC(255, &qword_1ED7DF158, sub_1C5D11E0C, MEMORY[0x1E69E6720]);
    sub_1C5D11654(255, &qword_1ED7DCAD0, &qword_1ED7DCAE0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_1ED7DCAB8);
  }

  return result;
}

unint64_t sub_1C5D11E0C()
{
  result = qword_1ED7DF160[0];
  if (!qword_1ED7DF160[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1ED7DF160);
  }

  return result;
}

void sub_1C5D11E68()
{
  if (!qword_1EC1A9240)
  {
    sub_1C5D1203C(255, &qword_1EC1A9480, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = sub_1C60177E0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A9240);
    }
  }
}

void sub_1C5D11EE4()
{
  if (!qword_1EC1AAE40)
  {
    v0 = sub_1C6016E10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AAE40);
    }
  }
}

void sub_1C5D11F3C()
{
  if (!qword_1ED7DCEC8)
  {
    v0 = sub_1C6016BD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7DCEC8);
    }
  }
}

void sub_1C5D11FA0(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_43();
    sub_1C5C64D74(v3, v4);
    v5 = sub_1C6016B80();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

uint64_t sub_1C5D11FEC(unint64_t *a1, void *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C5D11FA0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5D1203C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C5D1208C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1C5D11654(0, a2, &qword_1EC1A9130, &protocol descriptor for PodcastsQueueItem, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_23_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_49_3()
{

  return sub_1C6017860();
}

uint64_t sub_1C5D121E0()
{
  sub_1C5CFF12C();
  sub_1C6016940();
  sub_1C6016880();
  _s3__C4CodeOMa_3();
  sub_1C5D12938(&qword_1EC1AAF00, _s3__C4CodeOMa_3);
  OUTLINED_FUNCTION_147();
  v0 = sub_1C6017280();

  qword_1EC1BE4D0 = v0;
  return result;
}

id sub_1C5D122FC()
{
  v1 = sub_1C6015900();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v2 + 16);
  v5(v4, v0, v1);
  v6 = OUTLINED_FUNCTION_147();
  v8 = v7(v6);
  if (v8 == *MEMORY[0x1E69C4C20])
  {
    v9 = OUTLINED_FUNCTION_147();
    v10(v9);
    v11 = *v4;
    v12 = sub_1C5D1255C(*v4);

    return v12;
  }

  if (v8 != *MEMORY[0x1E69C4C38] && v8 != *MEMORY[0x1E69C4C40] && v8 != *MEMORY[0x1E69C4C30] && v8 != *MEMORY[0x1E69C4C48] && v8 != *MEMORY[0x1E69C4C28])
  {
    sub_1C5D12938(&unk_1EC1A8F60, MEMORY[0x1E69C4C50]);
    v12 = swift_allocError();
    v5(v19, v0, v1);
    v20 = OUTLINED_FUNCTION_147();
    v21(v20);
    return v12;
  }

  if (qword_1EC1A9758 != -1)
  {
    swift_once();
  }

  v17 = qword_1EC1BE4D0;

  return v17;
}

id sub_1C5D1255C(id a1)
{
  sub_1C5D12884();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6015FC0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - v10;
  v12 = sub_1C6014D30();
  v13 = [v12 msv:*MEMORY[0x1E698C548] errorByUnwrappingDomain:306 code:?];
  if (v13)
  {

    if (qword_1EC1A9758 != -1)
    {
      swift_once();
    }

    a1 = qword_1EC1BE4D0;
  }

  else
  {
    v21[1] = a1;
    v14 = a1;
    sub_1C5CB5808();
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
      (*(v6 + 32))(v11, v4, v5);
      (*(v6 + 16))(v9, v11, v5);
      v15 = (*(v6 + 88))(v9, v5);
      if (v15 == *MEMORY[0x1E69C4DB8] || v15 == *MEMORY[0x1E69C4DB0])
      {
        if (qword_1EC1A9758 != -1)
        {
          swift_once();
        }

        a1 = qword_1EC1BE4D0;

        (*(v6 + 8))(v11, v5);
      }

      else
      {
        v18 = *(v6 + 8);
        v18(v11, v5);

        v19 = a1;
        v18(v9, v5);
      }
    }

    else
    {

      __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
      sub_1C5D128DC(v4);
      v17 = a1;
    }
  }

  return a1;
}

void sub_1C5D12884()
{
  if (!qword_1EC1AAE90)
  {
    sub_1C6015FC0();
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1AAE90);
    }
  }
}

uint64_t sub_1C5D128DC(uint64_t a1)
{
  sub_1C5D12884();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5D12938(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5D129A8()
{
  v1 = OBJC_IVAR___MFPodcastsPlaybackDefaults_shouldPreroll;
  OUTLINED_FUNCTION_1_17();
  return *(v0 + v1);
}

uint64_t sub_1C5D12A04(char a1)
{
  v3 = OBJC_IVAR___MFPodcastsPlaybackDefaults_shouldPreroll;
  result = OUTLINED_FUNCTION_2_17();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5D12AC0()
{
  v1 = OBJC_IVAR___MFPodcastsPlaybackDefaults_allowScreenRecording;
  OUTLINED_FUNCTION_1_17();
  return *(v0 + v1);
}

uint64_t sub_1C5D12B1C(char a1)
{
  v3 = OBJC_IVAR___MFPodcastsPlaybackDefaults_allowScreenRecording;
  result = OUTLINED_FUNCTION_2_17();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C5D12BD4()
{
  v1 = OBJC_IVAR___MFPodcastsPlaybackDefaults_rewindOnInterruptionDuration;
  OUTLINED_FUNCTION_1_17();
  return *(v0 + v1);
}

uint64_t sub_1C5D12C2C(double a1)
{
  v3 = OBJC_IVAR___MFPodcastsPlaybackDefaults_rewindOnInterruptionDuration;
  result = OUTLINED_FUNCTION_2_17();
  *(v1 + v3) = a1;
  return result;
}

id PodcastsPlaybackDefaults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PodcastsPlaybackDefaults.init()()
{
  v0[OBJC_IVAR___MFPodcastsPlaybackDefaults_shouldPreroll] = 1;
  v0[OBJC_IVAR___MFPodcastsPlaybackDefaults_allowScreenRecording] = 1;
  *&v0[OBJC_IVAR___MFPodcastsPlaybackDefaults_rewindOnInterruptionDuration] = 0x4008000000000000;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastsPlaybackDefaults();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PodcastsPlaybackDefaults.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastsPlaybackDefaults();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5D12FC0()
{
  v0 = sub_1C6016940();
  v2 = v1;
  if (v0 == sub_1C6016940() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_147();
    v5 = sub_1C6017860();
  }

  return v5 & 1;
}

uint64_t sub_1C5D13064()
{
  v0 = sub_1C60152E0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  sub_1C60152D0();
  sub_1C60152D0();
  sub_1C5D1512C(&qword_1EC1AAE20, MEMORY[0x1E69D38B0]);
  OUTLINED_FUNCTION_147();
  v7 = sub_1C60168F0();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1C5D13264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_147();
    v10 = sub_1C6017860();
  }

  return v10 & 1;
}

uint64_t sub_1C5D132F0(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000676E6964;
  v3 = 0x616F4C7465737361;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x6B63616279616C70;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001C6045880;
    }

    else
    {
      v6 = 0xED00006C6C617453;
    }
  }

  else
  {
    v5 = 0x616F4C7465737361;
    v6 = 0xEC000000676E6964;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x6B63616279616C70;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001C6045880;
    }

    else
    {
      v2 = 0xED00006C6C617453;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6017860();
  }

  return v8 & 1;
}

uint64_t sub_1C5D13408(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x6F69647541;
  }

  else
  {
    v2 = 0x6F65646956;
  }

  if (a2)
  {
    v3 = 0x6F69647541;
  }

  else
  {
    v3 = 0x6F65646956;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1C6017860();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1C5D13480(unsigned __int8 a1, char a2)
{
  v2 = 1735290707;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1735290707;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6D75626C41;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x6E6F6974617453;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x7473696C79616C50;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x6F65646956;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x6D75626C41;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x6E6F6974617453;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x7473696C79616C50;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x6F65646956;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6017860();
  }

  return v8 & 1;
}

uint64_t sub_1C5D13678(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1C5D1512C(a4, a5);
  sub_1C6016AC0();
  sub_1C6016AC0();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C6017860();
  }

  return v8 & 1;
}

BOOL sub_1C5D13798(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1C5D137C4(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  v3 = (a1 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a2);
  return v4 != 0;
}

BOOL sub_1C5D137F0(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

float static PodcastsPlaybackRateHelper.globalPlaybackRate()()
{
  sub_1C6015F40();
  v0 = sub_1C6015F30();
  sub_1C6015F20();
  v2 = v1;
  sub_1C6015D70();
  v3 = MEMORY[0x1C6952810](v2);

  return v3;
}

Swift::Bool __swiftcall PodcastsPlaybackRateHelper.supportsRate(_:)(Swift::Float a1)
{
  if (qword_1EC1A9198 != -1)
  {
    swift_once();
  }

  v2 = off_1EC1A91A0;
  if (!*(off_1EC1A91A0 + 2))
  {
    if (qword_1EC1A9180 != -1)
    {
      swift_once();
    }

    v2 = off_1EC1A9188;
  }

  return sub_1C5D137C4(v2, a1);
}

Swift::Void __swiftcall PodcastsPlaybackRateHelper.save(rate:uuid:)(Swift::Float rate, Swift::String_optional uuid)
{
  if ((*(v2 + OBJC_IVAR____MPCPodcastsPlaybackRateHelper_playerState) & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    if (sub_1C6015460())
    {
      sub_1C60159B0();
      OUTLINED_FUNCTION_147();
      sub_1C6015980();
    }

    else
    {
      v5 = *(v2 + OBJC_IVAR____MPCPodcastsPlaybackRateHelper_defaults);
      *&v4 = rate;

      [v5 setPlaybackRateGlobalValue_];
    }
  }
}

void *sub_1C5D13A2C()
{
  sub_1C6015D70();
  result = sub_1C6015D50();
  off_1EC1A9188 = result;
  return result;
}

void *sub_1C5D13A9C()
{
  sub_1C6015D70();
  result = sub_1C6015D60();
  off_1EC1A91A0 = result;
  return result;
}

uint64_t sub_1C5D13AF4(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

id sub_1C5D13B58(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1C6016AF0();

  return v3;
}

uint64_t sub_1C5D13BAC()
{
  sub_1C6015D70();
  result = sub_1C6015D40();
  dword_1EC1AAEB0 = v1;
  return result;
}

float static PodcastsPlaybackRateHelper.standardRate.getter()
{
  if (qword_1EC1A9760 != -1)
  {
    swift_once();
  }

  return *&dword_1EC1AAEB0;
}

id sub_1C5D13C48()
{
  v1 = *(v0 + OBJC_IVAR____MPCPodcastsPlaybackRateHelper_currentRate);
  if (v1 <= 0.00000011921 && (v1 != 0.0 || *(v0 + OBJC_IVAR____MPCPodcastsPlaybackRateHelper_playerState) != 2))
  {
    return [*(v0 + OBJC_IVAR____MPCPodcastsPlaybackRateHelper_defaults) playbackRateGlobalValue];
  }

  return result;
}

id PodcastsPlaybackRateHelper.init(currentRate:playerState:)(uint64_t a1, float a2)
{
  ObjectType = swift_getObjectType();
  sub_1C6015F40();
  v5 = sub_1C6015F30();
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR____MPCPodcastsPlaybackRateHelper_currentRate] = a2;
  *&v6[OBJC_IVAR____MPCPodcastsPlaybackRateHelper_defaults] = v5;
  *&v6[OBJC_IVAR____MPCPodcastsPlaybackRateHelper_playerState] = a1;
  if (qword_1EC1A9088 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC1A9090;
  *&v6[OBJC_IVAR____MPCPodcastsPlaybackRateHelper_rateMigrator] = qword_1EC1A9090;
  v11.receiver = v6;
  v11.super_class = ObjectType;
  v8 = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  swift_deallocPartialClassInstance();
  return v9;
}

Swift::Bool __swiftcall PodcastsPlaybackRateHelper.canHandlePlaybackRateChange(forCommandEvent:)(MPChangePlaybackRateCommandEvent forCommandEvent)
{
  v1 = sub_1C5D13E5C(forCommandEvent.super.super.isa);
  if ((v1 & 0x100000000) == 0)
  {
    return PodcastsPlaybackRateHelper.supportsRate(_:)(*&v1);
  }

  if (v1)
  {
    v3 = sub_1C5D14558();
  }

  else
  {
    v3 = sub_1C5D144E0();
  }

  return !v3;
}

unint64_t sub_1C5D13E5C(void *a1)
{
  result = sub_1C5E00EA4(a1);
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x1E69B11C8];
    v10 = *MEMORY[0x1E69B11C8];
    sub_1C5D1502C();
    sub_1C5D15084();
    v5 = v4;
    sub_1C60174C0();
    sub_1C5CFF234(v11, v3, &v12);

    sub_1C5CE3504(v11);
    if (v13)
    {
      if (swift_dynamicCast())
      {
        if (v10 != 1)
        {
          if (v10 != 2)
          {
            if (qword_1EC1A9760 != -1)
            {
              swift_once();
            }

            v6 = 0;
            v7 = dword_1EC1AAEB0;
            goto LABEL_15;
          }

LABEL_13:
          v7 = 1;
          goto LABEL_14;
        }

        goto LABEL_11;
      }
    }

    else
    {
      sub_1C5CBCF4C(&v12);
    }

    [a1 playbackRate];
    if (v8 != -1.0)
    {
      if (v8 != -2.0)
      {
        [a1 playbackRate];
        v6 = 0;
        v7 = v9;
        goto LABEL_15;
      }

      goto LABEL_13;
    }

LABEL_11:
    v7 = 0;
LABEL_14:
    v6 = 1;
LABEL_15:
    v11[0] = v6;
    return v7 | (v6 << 32);
  }

  __break(1u);
  return result;
}

Swift::Float __swiftcall PodcastsPlaybackRateHelper.currentDisplayRate(with:)(Swift::Float with)
{
  if ((*(v1 + OBJC_IVAR____MPCPodcastsPlaybackRateHelper_playerState) & 0xFFFFFFFFFFFFFFFELL) != 4 && *(v1 + OBJC_IVAR____MPCPodcastsPlaybackRateHelper_currentRate) > 0.0)
  {
    return *(v1 + OBJC_IVAR____MPCPodcastsPlaybackRateHelper_currentRate);
  }

  return with;
}

Swift::Float __swiftcall PodcastsPlaybackRateHelper.updatedPlaybackRate(forChangePlaybackRateCommandEvent:podcastUUID:)(MPChangePlaybackRateCommandEvent forChangePlaybackRateCommandEvent, Swift::String_optional podcastUUID)
{
  v3 = PodcastsPlaybackRateHelper.computedRate(forChangePlaybackRateCommandEvent:)(forChangePlaybackRateCommandEvent);
  v4.value._countAndFlagsBits = OUTLINED_FUNCTION_147();
  PodcastsPlaybackRateHelper.save(rate:uuid:)(v5, v4);
  if (*(v2 + OBJC_IVAR____MPCPodcastsPlaybackRateHelper_currentRate) <= 0.00000011921 && *(v2 + OBJC_IVAR____MPCPodcastsPlaybackRateHelper_playerState) != 6)
  {
    return *(v2 + OBJC_IVAR____MPCPodcastsPlaybackRateHelper_currentRate);
  }

  return v3;
}

Swift::Float __swiftcall PodcastsPlaybackRateHelper.computedRate(forChangePlaybackRateCommandEvent:)(MPChangePlaybackRateCommandEvent forChangePlaybackRateCommandEvent)
{
  v1 = sub_1C5D13E5C(forChangePlaybackRateCommandEvent.super.super.isa);
  if ((v1 & 0x100000000) != 0)
  {
    if (v1)
    {

      sub_1C5D142F4();
    }

    else
    {

      return sub_1C5D14218();
    }
  }

  else
  {
    v2 = *&v1;
    sub_1C6015D70();
    MEMORY[0x1C6952810](v2);
  }

  return result;
}

float sub_1C5D14218()
{
  if (!sub_1C5D144E0())
  {
    if (qword_1EC1A9180 != -1)
    {
LABEL_12:
      swift_once();
    }

    v1 = 0;
    v2 = off_1EC1A9188;
    v3 = *(off_1EC1A9188 + 2);
    v4 = off_1EC1A9188 + 32;
    while (v3 != v1)
    {
      if (v1 >= v2[2])
      {
        __break(1u);
        goto LABEL_12;
      }

      v5 = v1 + 1;
      v6 = *&v4[4 * v1];
      sub_1C5D13C48();
      v1 = v5;
      if (v7 < v6)
      {
        return v6;
      }
    }
  }

  sub_1C5D13C48();
  return result;
}

unint64_t sub_1C5D142F4()
{
  if (sub_1C5D14558())
  {

    return sub_1C5D13C48();
  }

  else
  {
    if (qword_1EC1A9180 != -1)
    {
      swift_once();
    }

    v6 = off_1EC1A9188;
    v2 = sub_1C5D14F58(off_1EC1A9188, v0);
    MEMORY[0x1EEE9AC00](v2);
    v5[2] = &v6;
    result = sub_1C5D10154(sub_1C5D1500C, v5, v4, v3 & 1);
    if ((result & 0x100000000) != 0)
    {
      return sub_1C5D13C48();
    }
  }

  return result;
}

BOOL sub_1C5D144E0()
{
  if (qword_1EC1A9180 != -1)
  {
    swift_once();
  }

  v0 = *(off_1EC1A9188 + 2);
  if (!v0)
  {
    return 1;
  }

  v1 = *(off_1EC1A9188 + v0 + 7);
  sub_1C5D13C48();
  return v1 <= v2;
}

BOOL sub_1C5D14558()
{
  if (qword_1EC1A9180 != -1)
  {
    swift_once();
  }

  if (!*(off_1EC1A9188 + 2))
  {
    return 1;
  }

  v0 = *(off_1EC1A9188 + 8);
  sub_1C5D13C48();
  return v1 <= v0;
}

id PodcastsPlaybackRateHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PodcastsPlaybackRateHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C5D146C4()
{
  result = [objc_allocWithZone(type metadata accessor for PodcastsRateMigrator()) init];
  qword_1EC1A9090 = result;
  return result;
}

id sub_1C5D146F8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PodcastsRateMigrator();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  sub_1C5D14774();

  return v1;
}

void sub_1C5D14774()
{
  if (qword_1EC1A8EB8 != -1)
  {
    swift_once();
  }

  v0 = sub_1C60162D0();
  __swift_project_value_buffer(v0, qword_1EC1BE3A0);
  v1 = sub_1C60162B0();
  v2 = sub_1C6016F30();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v33[0] = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1C5C6AB10(0xD00000000000001ALL, 0x80000001C604A020, v33);
    _os_log_impl(&dword_1C5C61000, v1, v2, "%s [RateMigration] Attempting to migrate.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1C6956920](v4, -1, -1);
    MEMORY[0x1C6956920](v3, -1, -1);
  }

  if (qword_1EC1A9070 != -1)
  {
    swift_once();
  }

  if ((_s17MediaPlaybackCore22PodcastsDefaultsHelperC30playbackRateMigrationAttemptedSbvg_0() & 1) == 0)
  {
    v8 = objc_opt_self();
    v9 = [v8 standardUserDefaults];
    v10 = sub_1C6016900();
    v11 = [v9 persistentDomainForName_];

    if (v11)
    {
      v12 = sub_1C6016860();

      sub_1C5CFF290(0xD000000000000014, 0x80000001C604A040, v12, v33);

      v13 = v34;
      sub_1C5CBCF4C(v33);
      if (v13)
      {
        v14 = sub_1C60162B0();
        v15 = sub_1C6016F30();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v33[0] = v17;
          *v16 = 136315138;
          *(v16 + 4) = sub_1C5C6AB10(0xD00000000000001ALL, 0x80000001C604A020, v33);
          v18 = "%s [RateMigration] Non-default rate already set, will not attempt migration.";
LABEL_19:
          _os_log_impl(&dword_1C5C61000, v14, v15, v18, v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x1C6956920](v17, -1, -1);
          v19 = v16;
LABEL_20:
          MEMORY[0x1C6956920](v19, -1, -1);
        }
      }

      else
      {
        v20 = [v8 standardUserDefaults];
        v21 = sub_1C6016900();
        v22 = [v20 integerForKey_];

        if (v22 > 5)
        {
          v14 = sub_1C60162B0();
          v29 = sub_1C6016F30();
          if (!os_log_type_enabled(v14, v29))
          {
            goto LABEL_28;
          }

          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v33[0] = v31;
          *v30 = 136315651;
          *(v30 + 4) = sub_1C5C6AB10(0xD00000000000001ALL, 0x80000001C604A020, v33);
          *(v30 + 12) = 2160;
          *(v30 + 14) = 1752392040;
          *(v30 + 22) = 2049;
          *(v30 + 24) = v22;
          _os_log_impl(&dword_1C5C61000, v14, v29, "%s [RateMigration] Unexpected playback rate value=%{private,mask.hash}ld, will not attempt migration.", v30, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x1C6956920](v31, -1, -1);
          v19 = v30;
          goto LABEL_20;
        }

        if (v22 < 0)
        {
          __break(1u);
          return;
        }

        v23 = flt_1F453BDD0[v22 + 8];
        v24 = sub_1C60162B0();
        v25 = sub_1C6016F30();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v33[0] = v27;
          *v26 = 136315651;
          *(v26 + 4) = sub_1C5C6AB10(0xD00000000000001ALL, 0x80000001C604A020, v33);
          *(v26 + 12) = 2160;
          *(v26 + 14) = 1752392040;
          *(v26 + 22) = 2049;
          *(v26 + 24) = v23;
          _os_log_impl(&dword_1C5C61000, v24, v25, "%s [RateMigration] Migrating legacy playback rate=%{private,mask.hash}f.", v26, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x1C6956920](v27, -1, -1);
          MEMORY[0x1C6956920](v26, -1, -1);
        }

        v14 = [objc_opt_self() standardUserDefaults];
        *&v28 = v23;
        [v14 setPlaybackRate:v28];
      }
    }

    else
    {
      v14 = sub_1C60162B0();
      v15 = sub_1C6016F30();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v33[0] = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_1C5C6AB10(0xD00000000000001ALL, 0x80000001C604A020, v33);
        v18 = "%s [RateMigration] Unable to create iPod defaults, cannot attempt migration.";
        goto LABEL_19;
      }
    }

LABEL_28:

    _s17MediaPlaybackCore22PodcastsDefaultsHelperC30playbackRateMigrationAttemptedSbvs_0(1);
    return;
  }

  oslog = sub_1C60162B0();
  v5 = sub_1C6016F30();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C5C6AB10(0xD00000000000001ALL, 0x80000001C604A020, v33);
    _os_log_impl(&dword_1C5C61000, oslog, v5, "%s [RateMigration] Migration has been attempted before.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1C6956920](v7, -1, -1);
    MEMORY[0x1C6956920](v6, -1, -1);
  }

  else
  {
  }
}

id sub_1C5D14EBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastsRateMigrator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5D14F58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v4 = a1 + 28;
  do
  {
    v5 = v3;
    if (!v3)
    {
      break;
    }

    --v3;
    v6 = *(v4 + 4 * v5);
    sub_1C5D13C48();
  }

  while (v6 >= v7);

  return v3;
}

unint64_t sub_1C5D14FD0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  result = sub_1C5CFAE3C(*a1, *a2);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

void sub_1C5D1502C()
{
  if (!qword_1EC1A8CC0)
  {
    type metadata accessor for CFString();
    v0 = sub_1C6017350();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1A8CC0);
    }
  }
}

unint64_t sub_1C5D15084()
{
  result = qword_1EC1A8CB8;
  if (!qword_1EC1A8CB8)
  {
    sub_1C5D1502C();
    sub_1C5D1512C(&qword_1EC1A8CE0, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1A8CB8);
  }

  return result;
}

uint64_t sub_1C5D1512C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5D1517C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C5D0F09C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C5D0F09C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1C5C70758(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1C5D1527C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C6017440();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1C5D0F1F8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v20;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C6954040](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = type metadata accessor for PodcastAVItem();
      v18 = v8;
      v19 = &off_1F4540EC0;
      v17[0] = v7;
      v20 = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1C5D0F1F8((v9 > 1), v10 + 1, 1);
        v11 = v18;
        v12 = v19;
      }

      else
      {
        v11 = v8;
        v12 = &off_1F4540EC0;
      }

      ++v5;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v17, v11);
      MEMORY[0x1EEE9AC00](v13);
      v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      sub_1C5D2A21C(v10, v15, &v20, v11, v12);
      __swift_destroy_boxed_opaque_existential_0(v17);
      v3 = v20;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5D1546C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1C60175F0();
    v4 = a1 + 40;
    do
    {

      sub_1C6016900();

      sub_1C60175D0();
      sub_1C6017600();
      sub_1C6017610();
      sub_1C60175E0();
      v4 += 16;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

void sub_1C5D15530()
{
  OUTLINED_FUNCTION_58_1();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    sub_1C60175F0();
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      v5 = v4;
      sub_1C5C74680(0, &qword_1ED7DCAE0);
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      swift_dynamicCast();
      sub_1C60175D0();
      sub_1C6017600();
      sub_1C6017610();
      sub_1C60175E0();
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_57_1();
}

uint64_t sub_1C5D15630(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v28 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 56) + 8 * v12);
    if (v13)
    {
      v14 = *(*(a1 + 48) + 8 * v12);
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {
        swift_unknownObjectRetain();
        v17 = v14;
        sub_1C5CEA0C8(v15 + 1, 1);
      }

      else
      {
        swift_unknownObjectRetain();
        v16 = v14;
      }

      v2 = v28;
      sub_1C6016940();
      sub_1C60179F0();
      sub_1C60169F0();
      v18 = sub_1C6017A20();

      v19 = v28 + 64;
      v20 = -1 << *(v28 + 32);
      v21 = v18 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v28 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v28 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v28 + 48) + 8 * v23) = v14;
      *(*(v28 + 56) + 8 * v23) = v13;
      ++*(v28 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C5D15888()
{
  v1 = v0;
  v2 = sub_1C60158F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_activePlaybackContext;
  swift_beginAccess();
  if (__swift_getEnumTagSinglePayload(v1 + v6, 1, v2))
  {
    v7 = sub_1C6016880();
  }

  else
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    v7 = sub_1C6015830();
    (*(v3 + 8))(v5, v2);
  }

  v8 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_contentItemIDsMap;
  swift_beginAccess();
  *(v1 + v8) = v7;
}

uint64_t sub_1C5D159F8(uint64_t a1)
{
  v3 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_activePlaybackContext;
  swift_beginAccess();
  sub_1C5D2A324(a1, v1 + v3);
  swift_endAccess();
  sub_1C5D15888();
  OUTLINED_FUNCTION_4_16();
  return sub_1C5D29540();
}

uint64_t static QueueControllerBehaviorPodcasts.supportsSecureCoding.getter()
{
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  return byte_1EC1AAEE0;
}

uint64_t static QueueControllerBehaviorPodcasts.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_45_3();
  byte_1EC1AAEE0 = a1;
  return result;
}

uint64_t sub_1C5D15BA8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EC1AAEE0;
  return result;
}

uint64_t sub_1C5D15BF4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EC1AAEE0 = v1;
  return result;
}

uint64_t sub_1C5D15C64()
{
  v1 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5D15CCC(char a1)
{
  v3 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations;
  result = OUTLINED_FUNCTION_2_17();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5D15D84()
{
  v1 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_allowsQueueModifications;
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C5D15DEC(char a1)
{
  v3 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_allowsQueueModifications;
  result = OUTLINED_FUNCTION_2_17();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C5D15EC8()
{
  v1 = (v0 + OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_sessionID);
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1C5D15F8C()
{
  OUTLINED_FUNCTION_44_3();
  v3 = (v1 + OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_sessionID);
  OUTLINED_FUNCTION_45_3();
  *v3 = v2;
  v3[1] = v0;
}

uint64_t sub_1C5D160A0()
{
  OUTLINED_FUNCTION_31_2();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1C5D16144(uint64_t a1)
{
  v3 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  OUTLINED_FUNCTION_2_17();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

void QueueControllerBehaviorPodcasts.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_206());
  OUTLINED_FUNCTION_73();
  QueueControllerBehaviorPodcasts.init(coder:)();
}

void QueueControllerBehaviorPodcasts.init(coder:)()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_17_6();
  sub_1C5C6C678(0, v4, v5, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v6);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v101 - v8;
  v10 = sub_1C60154A0();
  OUTLINED_FUNCTION_25();
  v107 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_146();
  v106 = (v14 - v13);
  v110 = sub_1C60162D0();
  OUTLINED_FUNCTION_25();
  v105 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_146();
  v19 = v18 - v17;
  v20 = sub_1C6015790();
  v21 = OUTLINED_FUNCTION_13_3(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_146();
  v22 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_managedQueue;
  type metadata accessor for PodcastsManagedQueue();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E7CC0];
  v23[3] = 0;
  v23[4] = 0;
  v23[2] = v24;
  *&v0[v22] = v23;
  v25 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_podcastsMediaLibrary;
  sub_1C6015780();
  sub_1C6015970();
  swift_allocObject();
  OUTLINED_FUNCTION_34_4();
  *&v0[v25] = sub_1C6015910();
  sub_1C6015920();
  OUTLINED_FUNCTION_41_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_contentItemIDsMap;
  *&v1[v30] = sub_1C6016880();
  *&v1[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_lastEmittedBehaviorMetadata] = 0;
  *&v1[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_queueRestorationSnapshot] = v24;
  *&v1[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_restorationTrackIdentifiers] = v24;
  v31 = &v1[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_restorationTailInsertionContentIdentifier];
  *v31 = 0;
  v31[1] = 0;
  sub_1C60158F0();
  OUTLINED_FUNCTION_41_0();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v1[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations] = 0;
  v1[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_allowsQueueModifications] = 1;
  *&v1[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host] = 0;
  v36 = MSVNanoIDCreate();
  v37 = sub_1C6016940();
  v39 = v38;

  v40 = &v1[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_sessionID];
  *v40 = v37;
  v40[1] = v39;
  v41 = type metadata accessor for QueueControllerBehaviorPodcasts();
  v115.receiver = v1;
  v115.super_class = v41;
  v42 = objc_msgSendSuper2(&v115, sel_init);
  v43 = OUTLINED_FUNCTION_80_1();
  LOBYTE(v37) = [v3 decodeBoolForKey_];

  v44 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations;
  OUTLINED_FUNCTION_45_3();
  v42[v44] = v37;
  v45 = sub_1C5C64D74(0, &qword_1EC1A92B0);
  v46 = sub_1C6017260();
  if (v46)
  {
    v47 = v46;
    v112 = 0;
    v113 = 0;
    sub_1C6016930();

    v49 = v112;
    v48 = v113;
    if (!v113)
    {
      v49 = 0;
    }
  }

  else
  {
    v49 = 0;
    v48 = 0;
  }

  v50 = &v42[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_restorationTailInsertionContentIdentifier];
  *v50 = v49;
  v50[1] = v48;

  sub_1C5C6C678(0, &qword_1EC1A88A0, sub_1C5D16CB4, MEMORY[0x1E69E6F90]);
  v109 = v51;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1C6035CF0;
  *(v52 + 32) = sub_1C5C64D74(0, &qword_1ED7DCCD0);
  *(v52 + 40) = v45;
  *(v52 + 48) = sub_1C5C64D74(0, &unk_1EC1A8C70);
  v108 = sub_1C5C64D74(0, &qword_1EC1A8A10);
  *(v52 + 56) = v108;
  sub_1C6017270();

  v53 = &OBJC_IVAR___MPCSharedListeningPlaybackIntentDataSource__linkState;
  if (v114)
  {
    sub_1C5CC5674();
    if (swift_dynamicCast())
    {
      v103 = v45;
      v104 = v42;
      v54 = v111;
      sub_1C6016280();
      v55 = sub_1C60162B0();
      v56 = sub_1C6016F30();
      if (OUTLINED_FUNCTION_12_10(v56))
      {
        v57 = OUTLINED_FUNCTION_42();
        *v57 = 0;
        OUTLINED_FUNCTION_13_6();
        _os_log_impl(v58, v59, v60, v61, v57, 2u);
        v53 = &OBJC_IVAR___MPCSharedListeningPlaybackIntentDataSource__linkState;
        OUTLINED_FUNCTION_4();
      }

      (*(v105 + 8))(v19, v110);
      v62 = 0;
      v63 = *(v54 + 16);
      v105 = v107 + 32;
      v64 = MEMORY[0x1E69E7CC0];
      while (v63 != v62)
      {
        if (v62 >= *(v54 + 16))
        {
          __break(1u);
          goto LABEL_38;
        }

        sub_1C6015480();
        __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
        v101 = *v105;
        v101(v106, v9, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_3_0();
          sub_1C5D0E040();
          v64 = v67;
        }

        v66 = *(v64 + 16);
        if (v66 >= *(v64 + 24) >> 1)
        {
          sub_1C5D0E040();
          v64 = v68;
        }

        ++v62;
        *(v64 + 16) = v66 + 1;
        v101(v64 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v66, v106, v10);
        v3 = v102;
        v53 = &OBJC_IVAR___MPCSharedListeningPlaybackIntentDataSource__linkState;
      }

      v69 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_queueRestorationSnapshot;
      v42 = v104;
      *&v104[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_queueRestorationSnapshot] = v64;

      if (*(v53 + 471) != -1)
      {
        OUTLINED_FUNCTION_12_5();
      }

      OUTLINED_FUNCTION_144(v110, qword_1EC1BE3A0);
      v70 = v42;
      v71 = sub_1C60162B0();
      v72 = sub_1C6016F30();
      v73 = OUTLINED_FUNCTION_12_10(v72);
      v45 = v103;
      if (v73)
      {
        v74 = OUTLINED_FUNCTION_112();
        *v74 = 134217984;
        *(v74 + 4) = *(*&v42[v69] + 16);

        OUTLINED_FUNCTION_13_6();
        _os_log_impl(v75, v76, v77, v78, v74, 0xCu);
        OUTLINED_FUNCTION_6();
      }

      else
      {
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    sub_1C5D29540();
  }

  v79 = v108;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1C6035C00;
  *(v80 + 32) = v45;
  *(v80 + 40) = v79;
  sub_1C6017270();

  if (v114)
  {
    sub_1C5C67530(0, &qword_1ED7DCF10, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    if (swift_dynamicCast())
    {
      v81 = v111;
      *&v42[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_restorationTrackIdentifiers] = v111;

      sub_1C5D21DA4();
      if (*(v53 + 471) != -1)
      {
        OUTLINED_FUNCTION_12_5();
      }

      OUTLINED_FUNCTION_144(v110, qword_1EC1BE3A0);

      v82 = sub_1C60162B0();
      v83 = sub_1C6016F30();

      if (!os_log_type_enabled(v82, v83))
      {

        goto LABEL_36;
      }

      v84 = OUTLINED_FUNCTION_112();
      v85 = OUTLINED_FUNCTION_21();
      v112 = v85;
      *v84 = 136315138;
      v86 = MEMORY[0x1C6953600](v81, MEMORY[0x1E69E6158]);
      v88 = v87;

      v89 = sub_1C5C6AB10(v86, v88, &v112);

      *(v84 + 4) = v89;
      OUTLINED_FUNCTION_13_6();
      _os_log_impl(v90, v91, v92, v93, v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85);
      OUTLINED_FUNCTION_6();
      goto LABEL_34;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    sub_1C5D29540();
  }

  if (*(v53 + 471) != -1)
  {
LABEL_38:
    OUTLINED_FUNCTION_12_5();
  }

  OUTLINED_FUNCTION_144(v110, qword_1EC1BE3A0);
  v82 = sub_1C60162B0();
  v94 = sub_1C6016F30();
  if (OUTLINED_FUNCTION_12_10(v94))
  {
    v95 = OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_33_2(v95);
    OUTLINED_FUNCTION_8_12();
    _os_log_impl(v96, v97, v98, v99, v100, 2u);
LABEL_34:
    OUTLINED_FUNCTION_4();
  }

LABEL_36:

  OUTLINED_FUNCTION_237();
}

unint64_t sub_1C5D16CB4()
{
  result = qword_1EC1A8860;
  if (!qword_1EC1A8860)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC1A8860);
  }

  return result;
}

id QueueControllerBehaviorPodcasts.__allocating_init(sessionID:)()
{
  OUTLINED_FUNCTION_44_3();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_147();
  return QueueControllerBehaviorPodcasts.init(sessionID:)();
}

id QueueControllerBehaviorPodcasts.init(sessionID:)()
{
  v3 = v0;
  OUTLINED_FUNCTION_62_3();
  v4 = sub_1C6015790();
  v5 = OUTLINED_FUNCTION_13_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v6 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_managedQueue;
  type metadata accessor for PodcastsManagedQueue();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = v8;
  *&v0[v6] = v7;
  v9 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_podcastsMediaLibrary;
  sub_1C6015780();
  sub_1C6015970();
  swift_allocObject();
  OUTLINED_FUNCTION_34_4();
  *&v0[v9] = sub_1C6015910();
  sub_1C6015920();
  OUTLINED_FUNCTION_41_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_contentItemIDsMap;
  *&v3[v14] = sub_1C6016880();
  *&v3[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_lastEmittedBehaviorMetadata] = 0;
  *&v3[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_queueRestorationSnapshot] = v8;
  *&v3[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_restorationTrackIdentifiers] = v8;
  v15 = &v3[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_restorationTailInsertionContentIdentifier];
  *v15 = 0;
  v15[1] = 0;
  sub_1C60158F0();
  OUTLINED_FUNCTION_41_0();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v3[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_hasUserMutations] = 0;
  v3[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_allowsQueueModifications] = 1;
  *&v3[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host] = 0;
  if (!v1)
  {
    v20 = MSVNanoIDCreate();
    v2 = sub_1C6016940();
    v1 = v21;
  }

  v22 = &v3[OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_sessionID];
  *v22 = v2;
  v22[1] = v1;
  v38.receiver = v3;
  v38.super_class = type metadata accessor for QueueControllerBehaviorPodcasts();
  v23 = objc_msgSendSuper2(&v38, sel_init);
  sub_1C5D21DA4();
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v24 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v24, qword_1EC1BE3A0);
  v25 = sub_1C60162B0();
  v26 = sub_1C6016F30();
  if (OUTLINED_FUNCTION_52_3(v26))
  {
    v27 = OUTLINED_FUNCTION_112();
    v37 = OUTLINED_FUNCTION_21();
    *v27 = 136446210;
    OUTLINED_FUNCTION_31_2();
    swift_beginAccess();

    v28 = OUTLINED_FUNCTION_15_1();
    v31 = sub_1C5C6AB10(v28, v29, v30);

    *(v27 + 4) = v31;
    OUTLINED_FUNCTION_50_2();
    _os_log_impl(v32, v33, v34, v35, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_11_8();
  }

  return v23;
}

id QueueControllerBehaviorPodcasts.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for QueueControllerBehaviorPodcasts();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1C5D17260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_58_1();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v29 = sub_1C60162D0();
  __swift_project_value_buffer(v29, qword_1EC1BE3A0);
  swift_unknownObjectRetain();
  v30 = v24;
  v31 = sub_1C60162B0();
  v32 = sub_1C6016F30();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_68_0();
    a10 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = [v28 description];
    v35 = sub_1C6016940();
    v37 = v36;

    v38 = sub_1C5C6AB10(v35, v37, &a10);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    v39 = [v30 description];
    v40 = sub_1C6016940();
    v42 = v41;

    v43 = sub_1C5C6AB10(v40, v42, &a10);

    *(v33 + 14) = v43;
    OUTLINED_FUNCTION_50_2();
    _os_log_impl(v44, v45, v46, v47, v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_35_1();
  }

  v48 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  OUTLINED_FUNCTION_2_17();
  *&v30[v48] = v28;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_57_1();
}

void sub_1C5D17450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_58_1();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  if (qword_1EC1A8EB8 != -1)
  {
    OUTLINED_FUNCTION_12_5();
  }

  v29 = sub_1C60162D0();
  __swift_project_value_buffer(v29, qword_1EC1BE3A0);
  swift_unknownObjectRetain();
  v30 = v24;
  v31 = sub_1C60162B0();
  v32 = sub_1C6016F30();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_68_0();
    a10 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = [v28 description];
    v35 = sub_1C6016940();
    v37 = v36;

    v38 = sub_1C5C6AB10(v35, v37, &a10);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2080;
    v39 = [v30 description];
    v40 = sub_1C6016940();
    v42 = v41;

    v43 = sub_1C5C6AB10(v40, v42, &a10);

    *(v33 + 14) = v43;
    _os_log_impl(&dword_1C5C61000, v31, v32, "􀋪 Did disconnect from host: %s - %s", v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_4();
  }

  v44 = OBJC_IVAR____MPCQueueControllerBehaviorPodcasts_host;
  OUTLINED_FUNCTION_2_17();
  *&v30[v44] = 0;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_57_1();
}

void sub_1C5D1763C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_1C5D1771C()
{
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_21_10();
  sub_1C5C6C678(0, v0, v1, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v2);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v6 = sub_1C5D0B68C();
  v7 = sub_1C5C8FEE4(v6);
  v8 = 0;
  v36 = v6 & 0xC000000000000001;
  v35 = MEMORY[0x1E69E7CC0];
  while (v7 != v8)
  {
    if (v36)
    {
      v22 = OUTLINED_FUNCTION_68_2();
      v9 = MEMORY[0x1C6954040](v22);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v11 = v9;
    sub_1C5CF6E94();
    v12 = sub_1C6015DD0();
    OUTLINED_FUNCTION_73_0(v5, 1, v12);
    if (v13)
    {

      OUTLINED_FUNCTION_21_10();
      sub_1C5D29540();
      goto LABEL_11;
    }

    v14 = sub_1C6015DA0();
    v16 = v15;

    (*(*(v12 - 8) + 8))(v5, v12);
    if (v16)
    {
      v17 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_0();
        sub_1C5D0DB30();
        v17 = v23;
      }

      v19 = *(v17 + 16);
      v18 = *(v17 + 24);
      v35 = v17;
      if (v19 >= v18 >> 1)
      {
        sub_1C5D0DB30();
        v35 = v24;
      }

      v20 = v35;
      *(v35 + 16) = v19 + 1;
      v21 = v20 + 16 * v19;
      *(v21 + 32) = v14;
      *(v21 + 40) = v16;
      v8 = v10;
    }

    else
    {
LABEL_11:
      ++v8;
    }
  }

  if (qword_1EC1A8EA0 == -1)
  {
    goto LABEL_19;
  }

LABEL_24:
  OUTLINED_FUNCTION_29_6();
LABEL_19:
  v25 = sub_1C60162D0();
  OUTLINED_FUNCTION_144(v25, qword_1EC1BE370);
  v26 = v35;

  v27 = sub_1C60162B0();
  v28 = sub_1C6016F30();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_112();
    v30 = OUTLINED_FUNCTION_21();
    v37 = v30;
    *v29 = 136446210;
    v31 = MEMORY[0x1C6953600](v26, MEMORY[0x1E69E6158]);
    v33 = sub_1C5C6AB10(v31, v32, &v37);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_1C5C61000, v27, v28, "Encoded queue identifiers for handoff: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_237();
}

id sub_1C5D17A5C()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result playbackQueue];
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result playbackQueue];
  }

  return result;
}

void sub_1C5D17AC8()
{
  OUTLINED_FUNCTION_247();
  v1 = v0;
  v2 = sub_1C6015800();
  OUTLINED_FUNCTION_25();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_146();
  v8 = v7 - v6;
  v9 = sub_1C5D17A5C();
  v10 = sub_1C5E00EA4(v1);
  if (!v10)
  {
    v14 = 0u;
    v15 = 0u;
    goto LABEL_5;
  }

  v11 = v10;
  *&v14 = *MEMORY[0x1E69B11E0];
  sub_1C5C6C678(0, &qword_1EC1A8CC0, type metadata accessor for CFString, MEMORY[0x1E69E6720]);
  sub_1C5D15084();
  v12 = v14;
  sub_1C60174C0();
  sub_1C5CFF234(v13, v11, &v14);

  sub_1C5CE3504(v13);
  if (!*(&v15 + 1))
  {
LABEL_5:
    OUTLINED_FUNCTION_6_12();
    sub_1C5D29540();
    goto LABEL_6;
  }

  swift_dynamicCast();
LABEL_6:
  sub_1C5D17CBC(v8);
  OUTLINED_FUNCTION_32();
  sub_1C5D17D58();

  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_237();
}

uint64_t sub_1C5D17CBC@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  OUTLINED_FUNCTION_34_4();
  if (swift_dynamicCastObjCClass())
  {
    v2 = MEMORY[0x1E69C4BF0];
  }

  else
  {
    objc_opt_self();
    v2 = MEMORY[0x1E69C4BF8];
  }

  v3 = *v2;
  sub_1C6015800();
  OUTLINED_FUNCTION_105();
  v6 = *(v5 + 104);

  return v6(a1, v3, v4);
}

void sub_1C5D17D58()
{
  OUTLINED_FUNCTION_247();
  LODWORD(v137) = v1;
  v3 = v2;
  v5 = v4;
  v138 = v6;
  sub_1C6015800();
  OUTLINED_FUNCTION_25();
  v133 = v8;
  v134 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_146();
  v135 = (v10 - v9);
  v11 = MEMORY[0x1E69E6720];
  sub_1C5C6C678(0, &unk_1EC1A8F80, MEMORY[0x1E69C4BD8], MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_13_3(v12);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v126 - v14;
  sub_1C5C6C678(0, &unk_1EC1A8F90, MEMORY[0x1E69C4BC8], v11);
  v16 = v15;
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_18();
  sub_1C5C6C678(0, v18, v19, v11);
  OUTLINED_FUNCTION_13_3(v20);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_69_2();
  v22 = sub_1C6015B40();
  OUTLINED_FUNCTION_25();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_43_4();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v126 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v126 - v30;
  if (v5)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_34_4();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v132 = v11;
      v33 = v32;
      v133 = v5;
      v131 = v33;
      v34 = [v33 data];
      v35 = sub_1C6014F60();
      v37 = v36;

      sub_1C5C64D74(0, &qword_1EC1A8BC8);
      v134 = v35;
      v135 = v37;
      sub_1C5D18730(v0);
      OUTLINED_FUNCTION_73_0(v0, 1, v22);
      if (v38)
      {
        OUTLINED_FUNCTION_2_18();
        sub_1C5D29540();
        if (qword_1EC1A8EB8 != -1)
        {
LABEL_56:
          OUTLINED_FUNCTION_12_5();
        }

        v39 = sub_1C60162D0();
        OUTLINED_FUNCTION_144(v39, qword_1EC1BE3A0);
        v40 = sub_1C60162B0();
        v41 = sub_1C6016F30();
        if (OUTLINED_FUNCTION_12_10(v41))
        {
          v42 = OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_33_2(v42);
          OUTLINED_FUNCTION_8_12();
          _os_log_impl(v43, v44, v45, v46, v47, 2u);
          OUTLINED_FUNCTION_11_8();
        }

        sub_1C5C8F8BC(v134, v135);
        v48 = sub_1C60158F0();
        v49 = v138;
        v50 = 1;
        goto LABEL_40;
      }

      (*(v24 + 32))(v31, v0, v22);
      if (qword_1EC1A8EB8 != -1)
      {
        OUTLINED_FUNCTION_12_5();
      }

      v72 = sub_1C60162D0();
      OUTLINED_FUNCTION_144(v72, qword_1EC1BE3A0);
      v130 = *(v24 + 16);
      v130(v29, v31, v22);
      v73 = sub_1C60162B0();
      v74 = sub_1C6016F30();
      v75 = OUTLINED_FUNCTION_268(v74);
      v76 = v132;
      if (v75)
      {
        v77 = OUTLINED_FUNCTION_112();
        v128 = v24 + 16;
        v78 = v77;
        v129 = OUTLINED_FUNCTION_21();
        v139 = v129;
        *v78 = 136315138;
        v127 = v73;
        sub_1C6015B20();
        sub_1C60169A0();
        OUTLINED_FUNCTION_318();
        v79 = *(v24 + 8);
        v80 = OUTLINED_FUNCTION_76_1();
        v79(v80);
        v81 = OUTLINED_FUNCTION_255();
        sub_1C5C6AB10(v81, v82, v83);
        OUTLINED_FUNCTION_206();

        v84 = v127;
        *(v78 + 4) = v16;
        v76 = v132;
        _os_log_impl(&dword_1C5C61000, v84, v74, "Received initial item from intent: %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v129);
        OUTLINED_FUNCTION_4();
        OUTLINED_FUNCTION_4();
      }

      else
      {

        v79 = *(v24 + 8);
        v85 = OUTLINED_FUNCTION_76_1();
        v79(v85);
      }

      v86 = v138;
      v130(v76, v31, v22);
      v87 = v133;
      sub_1C5D18A64(v131, v136);
      sub_1C60158C0();
      sub_1C5C8F8BC(v134, v135);

      (v79)(v31, v22);
LABEL_39:
      v48 = sub_1C60158F0();
      v49 = v86;
      v50 = 0;
LABEL_40:
      __swift_storeEnumTagSinglePayload(v49, v50, 1, v48);
      OUTLINED_FUNCTION_237();
      return;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_34_4();
    v51 = swift_dynamicCastObjCClass();
    if (v51)
    {
      v52 = v51;
      v53 = v5;
      v54 = OUTLINED_FUNCTION_77_2();
      v55 = sub_1C5D29678(v54);
      if (v55)
      {
        v56 = v55;
        if (qword_1EC1A8EA0 != -1)
        {
          OUTLINED_FUNCTION_29_6();
        }

        v57 = sub_1C60162D0();
        OUTLINED_FUNCTION_144(v57, qword_1EC1BE370);

        v58 = sub_1C60162B0();
        v59 = sub_1C6016F30();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = OUTLINED_FUNCTION_112();
          v61 = OUTLINED_FUNCTION_21();
          v139 = v61;
          *v60 = 136446210;
          v62 = MEMORY[0x1C6953600](v56, MEMORY[0x1E69E6158]);
          v63 = v3;
          v65 = v64;

          v66 = sub_1C5C6AB10(v62, v65, &v139);
          v3 = v63;

          *(v60 + 4) = v66;
          OUTLINED_FUNCTION_71_1();
          _os_log_impl(v67, v68, v69, v70, v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v61);
          OUTLINED_FUNCTION_4();
          OUTLINED_FUNCTION_28();
        }

        else
        {
        }

        v105 = v137;
        v107 = v135;
        v106 = v136;
        (*(v133 + 2))(v135, v3, v134);
        v108 = v11;
        sub_1C5D18A64(v52, v106);
        v109 = v105 & 1;
        v86 = v138;
        sub_1C5D18BFC(v52, v107, v109, v106, v138);
        goto LABEL_39;
      }
    }

    objc_opt_self();
    OUTLINED_FUNCTION_34_4();
    v88 = swift_dynamicCastObjCClass();
    if (v88)
    {
      v89 = v88;
      v90 = v5;
      v91 = [v89 mediaQuery];
      if (v91)
      {
        v92 = v91;
        v93 = sub_1C5D29748(v91);
        if (v93)
        {
          v94 = v93;
          v135 = v89;
          v136 = v92;
          v137 = v90;
          v95 = sub_1C5C8FEE4(v93);
          v96 = 0;
          v97 = MEMORY[0x1E69E7CC0];
          while (v95 != v96)
          {
            if ((v94 & 0xC000000000000001) != 0)
            {
              v102 = OUTLINED_FUNCTION_68_2();
              v98 = MEMORY[0x1C6954040](v102);
            }

            else
            {
              if (v96 >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v98 = *(v94 + 8 * v96 + 32);
            }

            v99 = v98;
            if (__OFADD__(v96, 1))
            {
              __break(1u);
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

            v100 = [v98 persistentID];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_3_0();
              sub_1C5D0E12C();
              v97 = v103;
            }

            v101 = *(v97 + 16);
            if (v101 >= *(v97 + 24) >> 1)
            {
              sub_1C5D0E12C();
              v97 = v104;
            }

            *(v97 + 16) = v101 + 1;
            *(v97 + 8 * v101 + 32) = v100;
            ++v96;
          }

          v110 = [v135 firstItem];
          v111 = v110;
          if (v110)
          {
            [v110 persistentID];
          }

          v125 = v137;
          sub_1C6015880();

          sub_1C60158F0();
          goto LABEL_50;
        }
      }

      if (qword_1EC1A8EB8 != -1)
      {
        OUTLINED_FUNCTION_12_5();
      }

      v112 = sub_1C60162D0();
      OUTLINED_FUNCTION_144(v112, qword_1EC1BE3A0);
      v113 = sub_1C60162B0();
      v114 = sub_1C6016F20();
      if (OUTLINED_FUNCTION_12_10(v114))
      {
        v115 = OUTLINED_FUNCTION_42();
        *v115 = 0;
        OUTLINED_FUNCTION_13_6();
        _os_log_impl(v116, v117, v118, v119, v115, 2u);
        OUTLINED_FUNCTION_4();
      }
    }
  }

  sub_1C60158F0();
LABEL_50:
  OUTLINED_FUNCTION_237();

  __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
}