uint64_t sub_1D5F33238(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5BB13E4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5F33294(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1D5F332A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v28 = a4;
  v6 = sub_1D726062C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v23 - v13;
  v15 = a1[3];
  v26 = a1[4];
  v27 = __swift_project_boxed_opaque_existential_1(a1, v15);
  v25 = sub_1D726025C();
  v16 = *(v7 + 16);
  v16(v14, a2, v6);
  v16(v10, v24, v6);
  v17 = *(v7 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = (v8 + v17 + v18) & ~v17;
  v20 = swift_allocObject();
  v21 = *(v7 + 32);
  v21(v20 + v18, v14, v6);
  v21(v20 + v19, v10, v6);
  sub_1D72609CC();
  sub_1D7260A0C();
  sub_1D7260A9C();
  sub_1D5B48940(&qword_1EDF43930, MEMORY[0x1E69B41B0]);
  sub_1D72609DC();
}

uint64_t sub_1D5F33524(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v34 = a2;
  v35 = MEMORY[0x1E69B4228];
  sub_1D5BB13E4(0, &unk_1EDF3A9A8, MEMORY[0x1E69B4228]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v27 - v6;
  v8 = sub_1D72602AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D726057C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v9 + 104))(v12, *MEMORY[0x1E69B3E10], v8);
  sub_1D726056C();
  sub_1D5B48940(&qword_1EDF3AA50, MEMORY[0x1E69B3F60]);
  sub_1D72609FC();
  (*(v14 + 8))(v17, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = *MEMORY[0x1E69B4210];
  v32 = sub_1D7260AEC();
  v20 = *(v32 - 8);
  v31 = *(v20 + 104);
  v33 = v20 + 104;
  v31(v7, v19, v32);
  v30 = *MEMORY[0x1E69B4220];
  v21 = v30;
  v22 = sub_1D7260AFC();
  v23 = *(v22 - 8);
  v29 = *(v23 + 104);
  v29(v7, v21, v22);
  v28 = *(v23 + 56);
  v28(v7, 0, 1, v22);
  sub_1D726062C();
  sub_1D5B48940(&qword_1EDF3AA30, MEMORY[0x1E69B3FD8]);
  sub_1D72609EC();
  v24 = v35;
  sub_1D5F33238(v7, &unk_1EDF3A9A8, v35);
  v25 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v31(v7, *MEMORY[0x1E69B4218], v32);
  v29(v7, v30, v22);
  v28(v7, 0, 1, v22);
  sub_1D72609EC();
  return sub_1D5F33238(v7, &unk_1EDF3A9A8, v24);
}

uint64_t sub_1D5F33988@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1D726062C() - 8);
  v6 = *(v5 + 80);
  return sub_1D5F332A8(a1, v2 + ((v6 + 16) & ~v6), v2 + ((*(v5 + 64) + v6 + ((v6 + 16) & ~v6)) & ~v6), a2);
}

uint64_t sub_1D5F33A30(void *a1)
{
  v3 = *(sub_1D726062C() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_1D5F33524(a1, v1 + v5, v6);
}

uint64_t static FormatSlotItemTagFilterCondition.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v3 >> 62 == 1)
      {
        v10 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v14 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v15 = v10;
        sub_1D5F33D5C(v3);
        sub_1D5F33D5C(v2);
        v6 = _s8NewsFeed35FormatSlotItemTagFilterAndConditionV2eeoiySbAC_ACtFZ_0(&v15, &v14);
        goto LABEL_10;
      }
    }

    else if (!(v3 >> 62))
    {
      v5 = *(v2 + 16);
      v14 = *(v3 + 16);
      v15 = v5;
      sub_1D5F33D5C(v3);
      sub_1D5F33D5C(v2);
      v6 = _s8NewsFeed35FormatSlotItemTagFilterAndConditionV2eeoiySbAC_ACtFZ_0(&v15, &v14);
LABEL_10:
      v9 = v6;
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  if (v4 != 2)
  {
    v11 = __ROR8__(v2 + 0x4000000000000000, 3);
    if (v11 > 1)
    {
      if (v11 == 2)
      {
        if (v3 != 0xC000000000000010)
        {
          goto LABEL_24;
        }

        sub_1D5F33D8C(*a1);
        v12 = 0xC000000000000010;
      }

      else
      {
        if (v3 != 0xC000000000000018)
        {
          goto LABEL_24;
        }

        sub_1D5F33D8C(*a1);
        v12 = 0xC000000000000018;
      }
    }

    else if (v11)
    {
      if (v3 != 0xC000000000000008)
      {
        goto LABEL_24;
      }

      sub_1D5F33D8C(*a1);
      v12 = 0xC000000000000008;
    }

    else
    {
      if (v3 != 0xC000000000000000)
      {
        goto LABEL_24;
      }

      sub_1D5F33D8C(*a1);
      v12 = 0xC000000000000000;
    }

    sub_1D5F33D8C(v12);
    v9 = 1;
    return v9 & 1;
  }

  if (v3 >> 62 != 2)
  {
LABEL_24:
    sub_1D5F33D5C(*a2);
    sub_1D5F33D5C(v2);
    sub_1D5F33D8C(v2);
    sub_1D5F33D8C(v3);
    v9 = 0;
    return v9 & 1;
  }

  v8 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  *&v15 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v7 = v15;
  *&v14 = v8;
  sub_1D5F33D5C(v3);
  sub_1D5F33D5C(v2);
  sub_1D5F33D5C(v8);
  sub_1D5F33D5C(v15);
  v9 = static FormatSlotItemTagFilterCondition.== infix(_:_:)(&v15, &v14);
  sub_1D5F33D8C(v8);
  sub_1D5F33D8C(v7);
LABEL_11:
  sub_1D5F33D8C(v2);
  sub_1D5F33D8C(v3);
  return v9 & 1;
}

unint64_t sub_1D5F33D5C(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

unint64_t sub_1D5F33D8C(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

uint64_t sub_1D5F33DF0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *v3 >> 62;
  if (v8 <= 1)
  {
    if (v8)
    {
      v14 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      sub_1D5F33D5C(v10);
      sub_1D5F33D5C(v9);
      sub_1D5F33D5C(v10);
      v15 = sub_1D5F33DF0(a1, a2, a3);
      sub_1D5F33D8C(v10);
      if (v15)
      {
        sub_1D5F33D8C(v10);
        sub_1D5F33D8C(v9);
        v12 = 1;
        return v12 & 1;
      }
    }

    else
    {
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      sub_1D5F33D5C(v10);
      sub_1D5F33D5C(v9);
      sub_1D5F33D5C(v10);
      v11 = sub_1D5F33DF0(a1, a2, a3);
      sub_1D5F33D8C(v10);
      if ((v11 & 1) == 0)
      {
        sub_1D5F33D8C(v10);
        sub_1D5F33D8C(v9);
        v12 = 0;
        return v12 & 1;
      }
    }

    sub_1D5F33D5C(v9);
    v12 = sub_1D5F33DF0(a1, a2, a3);
    sub_1D5F33D8C(v10);
    sub_1D5F33D8C(v9);
    sub_1D5F33D8C(v9);
    return v12 & 1;
  }

  if (v8 == 2)
  {
    v34 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D5F33D5C(v34);
    sub_1D5F33D5C(v34);
    v13 = sub_1D5F33DF0(a1, a2, a3);
    sub_1D5F33D8C(v34);
    sub_1D5F33D8C(v34);
    v12 = v13 ^ 1;
    return v12 & 1;
  }

  v16 = __ROR8__(v7 + 0x4000000000000000, 3);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v12 = [*(a3 + 56) hasSubscriptionToTag_];
    }

    else
    {
      v12 = [*(a3 + 56) hasSubscriptionToTag_] ^ 1;
    }

    return v12 & 1;
  }

  if (v16)
  {
    v24 = *(a2 + *(type metadata accessor for FormatServiceOptions() + 64));
    if (v24)
    {
      v25 = *(v24 + 32);
      if (v25)
      {
        swift_unknownObjectRetain();
        v26 = [a1 identifier];
        v20 = sub_1D726207C();
        v22 = v27;

        v23 = [v25 identifier];
        goto LABEL_20;
      }
    }

LABEL_25:
    v12 = 0;
    return v12 & 1;
  }

  v17 = *(a2 + *(type metadata accessor for FormatServiceOptions() + 64));
  if (!v17 || !*(v17 + 24))
  {
    goto LABEL_25;
  }

  v18 = FCFeedDescriptor.feedTag.getter();
  v19 = [a1 identifier];
  v20 = sub_1D726207C();
  v22 = v21;

  v23 = [v18 identifier];
LABEL_20:
  v28 = v23;
  v29 = sub_1D726207C();
  v31 = v30;

  if (v20 == v29 && v22 == v31)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  swift_unknownObjectRelease();
  return v12 & 1;
}

uint64_t sub_1D5F34118(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 62;
  if (v3 <= 1)
  {
    if (v3)
    {
      v15 = sub_1D5F34118(a1);
      v4 = 762474285;
      v5 = 0xE400000000000000;
    }

    else
    {
      v15 = sub_1D5F34118(a1);
      v4 = 0x2D646E612DLL;
      v5 = 0xE500000000000000;
    }

    v8 = MEMORY[0x1DA6F9910](v4, v5);
    v9 = sub_1D5F34118(v8);
    MEMORY[0x1DA6F9910](v9);

    return v15;
  }

  if (v3 == 2)
  {
    v15 = 762605422;
    v14 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v6 = sub_1D5F33D5C(v14);
    v7 = sub_1D5F34118(v6);
    MEMORY[0x1DA6F9910](v7);

    sub_1D5F33D8C(v14);
    return v15;
  }

  v11 = __ROR8__(v2 + 0x4000000000000000, 3);
  v12 = 0x67615464656566;
  v13 = 0x6465776F6C6C6F66;
  if (v11 != 2)
  {
    v13 = 0x776F6C6C6F666E75;
  }

  if (v11)
  {
    v12 = 0x67615470756F7267;
  }

  if (v11 <= 1)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

unint64_t sub_1D5F342B0(uint64_t a1)
{
  result = sub_1D5F342D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F342D8()
{
  result = qword_1EC881260;
  if (!qword_1EC881260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881260);
  }

  return result;
}

unint64_t sub_1D5F3432C(void *a1)
{
  a1[1] = sub_1D5F34364();
  a1[2] = sub_1D5F343B8();
  result = sub_1D5F3440C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F34364()
{
  result = qword_1EDF08188;
  if (!qword_1EDF08188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF08188);
  }

  return result;
}

unint64_t sub_1D5F343B8()
{
  result = qword_1EC881268;
  if (!qword_1EC881268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881268);
  }

  return result;
}

unint64_t sub_1D5F3440C()
{
  result = qword_1EC881270;
  if (!qword_1EC881270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881270);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed32FormatSlotItemTagFilterConditionO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

void *sub_1D5F3447C(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_1D5F344D0(uint64_t a1)
{
  v2 = sub_1D5F34598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F3450C(uint64_t a1)
{
  v2 = sub_1D5F34598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D5F34598()
{
  result = qword_1EDF09CA8;
  if (!qword_1EDF09CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09CA8);
  }

  return result;
}

void sub_1D5F345EC()
{
  if (!qword_1EDF3C880)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C880);
    }
  }
}

uint64_t sub_1D5F3468C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5F345EC();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5F3473C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D5F347C4(uint64_t a1)
{
  v2 = sub_1D5F34A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F34800(uint64_t a1)
{
  v2 = sub_1D5F34A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5F3488C(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v15[0] = a5;
  sub_1D5F35218(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v15 - v11;
  v13 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v15[0])();

  sub_1D7264B5C();
  v15[3] = v13;
  sub_1D5F345EC();
  sub_1D5F3468C(&qword_1EDF04C40, sub_1D5B59EF4);
  sub_1D726443C();

  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1D5F34A38()
{
  result = qword_1EDF0A4B8[0];
  if (!qword_1EDF0A4B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0A4B8);
  }

  return result;
}

uint64_t sub_1D5F34ADC@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, void *a6@<X8>)
{
  v18 = a6;
  sub_1D5F35218(0, a2, a3, a4, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a5();
  sub_1D7264B0C();
  if (!v6)
  {
    v15 = v17;
    v14 = v18;
    sub_1D5F345EC();
    sub_1D5F3468C(&qword_1EDF3C870, sub_1D5B59EA0);
    sub_1D726431C();
    (*(v15 + 8))(v13, v10);
    *v14 = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static FormatContentSubgroupFilterNot.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  LOBYTE(v2) = static FormatContentSubgroupFilter.== infix(_:_:)(&v5, &v4);

  return v2 & 1;
}

uint64_t sub_1D5F34D74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D5F34DF8(uint64_t a1)
{
  v2 = sub_1D5F35004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F34E34(uint64_t a1)
{
  v2 = sub_1D5F35004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupFilterNot.encode(to:)(void *a1)
{
  sub_1D5F35218(0, &qword_1EDF02548, sub_1D5F35004, &type metadata for FormatContentSubgroupFilterNot.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F35004();

  sub_1D7264B5C();
  v11[3] = v9;
  sub_1D5B59EF4();
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D5F35004()
{
  result = qword_1EDF09C80;
  if (!qword_1EDF09C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C80);
  }

  return result;
}

uint64_t FormatContentSubgroupFilterNot.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  sub_1D5F35218(0, &qword_1EDF03940, sub_1D5F35004, &type metadata for FormatContentSubgroupFilterNot.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F35004();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v13;
    sub_1D5B59EA0();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
    *v10 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5F35218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D5F352C0()
{
  result = qword_1EDF09C88;
  if (!qword_1EDF09C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C88);
  }

  return result;
}

unint64_t sub_1D5F35314()
{
  result = qword_1EDF09C90;
  if (!qword_1EDF09C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C90);
  }

  return result;
}

unint64_t sub_1D5F35368()
{
  result = qword_1EC881278;
  if (!qword_1EC881278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881278);
  }

  return result;
}

unint64_t sub_1D5F353FC()
{
  result = qword_1EDF0A498;
  if (!qword_1EDF0A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A498);
  }

  return result;
}

unint64_t sub_1D5F35450()
{
  result = qword_1EDF0A4A0;
  if (!qword_1EDF0A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A4A0);
  }

  return result;
}

unint64_t sub_1D5F354A4()
{
  result = qword_1EC881280;
  if (!qword_1EC881280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881280);
  }

  return result;
}

uint64_t sub_1D5F35538(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F3558C()
{
  result = qword_1EDF09C60;
  if (!qword_1EDF09C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C60);
  }

  return result;
}

unint64_t sub_1D5F355E0()
{
  result = qword_1EDF09C68;
  if (!qword_1EDF09C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C68);
  }

  return result;
}

unint64_t sub_1D5F35634()
{
  result = qword_1EC881288;
  if (!qword_1EC881288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881288);
  }

  return result;
}

uint64_t sub_1D5F356B8(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  LOBYTE(v2) = static FormatContentSubgroupFilter.== infix(_:_:)(&v5, &v4);

  return v2 & 1;
}

unint64_t sub_1D5F35794()
{
  result = qword_1EC881290;
  if (!qword_1EC881290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881290);
  }

  return result;
}

unint64_t sub_1D5F357EC()
{
  result = qword_1EC881298;
  if (!qword_1EC881298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881298);
  }

  return result;
}

unint64_t sub_1D5F35844()
{
  result = qword_1EC8812A0;
  if (!qword_1EC8812A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8812A0);
  }

  return result;
}

unint64_t sub_1D5F3589C()
{
  result = qword_1EDF09C70;
  if (!qword_1EDF09C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C70);
  }

  return result;
}

unint64_t sub_1D5F358F4()
{
  result = qword_1EDF09C78;
  if (!qword_1EDF09C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C78);
  }

  return result;
}

unint64_t sub_1D5F3594C()
{
  result = qword_1EDF0A4A8;
  if (!qword_1EDF0A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A4A8);
  }

  return result;
}

unint64_t sub_1D5F359A4()
{
  result = qword_1EDF0A4B0;
  if (!qword_1EDF0A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A4B0);
  }

  return result;
}

unint64_t sub_1D5F359FC()
{
  result = qword_1EDF09C98;
  if (!qword_1EDF09C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09C98);
  }

  return result;
}

unint64_t sub_1D5F35A54()
{
  result = qword_1EDF09CA0;
  if (!qword_1EDF09CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09CA0);
  }

  return result;
}

uint64_t sub_1D5F35B18()
{
  v1 = v0[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = sub_1D725AA4C();
  LOBYTE(v1) = sub_1D5BE240C(v2, v3, v1);

  if (v1)
  {
    return 1;
  }

  v5 = v0[3];
  v6 = sub_1D725AA4C();
  LOBYTE(v5) = sub_1D5BE240C(v6, v7, v5);

  if (v5)
  {
    return 2;
  }

  v8 = v0[4];
  v9 = sub_1D725AA4C();
  LOBYTE(v8) = sub_1D5BE240C(v9, v10, v8);

  if (v8)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5F35CB0()
{

  return v0;
}

uint64_t sub_1D5F35CE0()
{
  sub_1D5F35CB0();

  return swift_deallocClassInstance();
}

unint64_t sub_1D5F35D2C()
{
  v1 = 0x776F6C6C61;
  v2 = 0xD00000000000001BLL;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D5F35DC8()
{
  result = qword_1EC8812A8;
  if (!qword_1EC8812A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8812A8);
  }

  return result;
}

id sub_1D5F35E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  sub_1D6997D10(0, v1, 0);
  v2 = v28;
  v4 = a1 + 64;
  result = sub_1D7263B7C();
  v6 = result;
  v7 = 0;
  v27 = *(a1 + 36);
  v25 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v26 = *v10;
    v12 = *(*(a1 + 56) + 8 * v6);

    result = [v12 doubleValue];
    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = v13;
      result = sub_1D6997D10((v14 > 1), v15 + 1, 1);
      v13 = v24;
    }

    *(v28 + 16) = v15 + 1;
    v16 = (v28 + 24 * v15);
    v16[4] = v26;
    v16[5] = v11;
    v16[6] = v13;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v27 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 72 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1D5C25E1C(v6, v27, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1D5C25E1C(v6, v27, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v25)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}

char *sub_1D5F3608C(unint64_t a1)
{
  v1 = a1;
  v20 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v22 = MEMORY[0x1E69E7CC0];
    result = sub_1D6997CD0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    if (!i)
    {
      break;
    }

    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v20)
    {
      v19 = sub_1D7263BFC();
    }

    else
    {
      v19 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    v21 = v1 & 0xC000000000000001;
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    while (v10 < i)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_45;
      }

      if (v19 == v10)
      {
        goto LABEL_46;
      }

      if (v21)
      {
        v12 = MEMORY[0x1DA6FB460](v10, v1);
      }

      else
      {
        if (v10 >= *(v4 + 16))
        {
          goto LABEL_47;
        }

        v12 = *(v1 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      v13 = v1;
      v14 = [swift_unknownObjectRetain() scoreProfile];
      if (!v14)
      {
        v14 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      }

      swift_unknownObjectRelease();
      v16 = *(v22 + 16);
      v15 = *(v22 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D6997CD0((v15 > 1), v16 + 1, 1);
      }

      *(v22 + 16) = v16 + 1;
      v17 = v22 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      ++v10;
      v1 = v13;
      v4 = v18;
      if (v11 == i)
      {
        goto LABEL_8;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1 & 0xC000000000000001;
LABEL_8:
  if (v20)
  {
    while (i != sub_1D7263BFC())
    {
LABEL_12:
      if (v21)
      {
        v5 = MEMORY[0x1DA6FB460](i, v1);
        if (__OFADD__(i, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (i < 0)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        if (i >= *(v4 + 16))
        {
          goto LABEL_43;
        }

        v5 = *(v1 + 8 * i + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(i, 1))
        {
          goto LABEL_42;
        }
      }

      v6 = [swift_unknownObjectRetain() scoreProfile];
      if (!v6)
      {
        v6 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      }

      swift_unknownObjectRelease();
      v8 = *(v22 + 16);
      v7 = *(v22 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1D6997CD0((v7 > 1), v8 + 1, 1);
      }

      *(v22 + 16) = v8 + 1;
      v9 = v22 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      ++i;
      if (!v20)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (i != *(v4 + 16))
    {
      goto LABEL_12;
    }
  }

  return v22;
}

void FeedPersonalizationServiceType.score<A>(group:context:)(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  if (FeedGroupable.personalizingScoredItems.getter(a4, a6))
  {
    (*(a5 + 48))();

    (*(a6 + 48))(a4, a6);
  }

  else
  {
    v11 = (*(a6 + 32))(a4, a6);
    v13 = v10;
    FeedPersonalizationServiceType.groupScore(items:context:)(v11, &v13, a3, a5);

    if (!v12)
    {
      (*(a6 + 48))(a4, a6);
    }
  }
}

uint64_t FeedPersonalizationServiceType.groupScore(items:context:)(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  result = (*(a4 + 8))(a1, &v7);
  if (!v4)
  {
    (*(a4 + 48))();
  }

  return result;
}

uint64_t FeedPersonalizationServiceType.scoreSort<A>(groups:context:)(uint64_t a1, __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  v11 = *a2;
  v35 = a1;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v33 = v11;
  v12 = sub_1D72627FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = sub_1D5B49474(0, &qword_1EDF3C5D0);
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1D5B874E4(sub_1D5F36980, v28, v12, TupleTypeMetadata2, v14, WitnessTable, MEMORY[0x1E69E7288], &v34);
  if (!v6)
  {
    v27 = &v26;
    v35 = v16;
    MEMORY[0x1EEE9AC00](v16, v17);
    v18 = sub_1D72627FC();
    swift_getWitnessTable();
    v19 = sub_1D72624AC();

    v27 = &v26;
    v35 = v19;
    MEMORY[0x1EEE9AC00](v20, v21);
    v25[2] = a3;
    v25[3] = v9;
    v25[4] = a5;
    v25[5] = a6;
    v22 = swift_getWitnessTable();
    v9 = sub_1D5B874E4(sub_1D5F36B30, v25, v18, v9, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  }

  return v9;
}

uint64_t sub_1D5F36828@<X0>(uint64_t a1@<X0>, __int16 a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>)
{
  v15 = *(a4 - 8);
  (*(v15 + 16))(a8, a1, a4);
  v21 = a2;
  FeedPersonalizationServiceType.score<A>(group:context:)(a1, &v21, a3, a4, a5, a6);
  if (v20)
  {
    result = (*(v15 + 8))(a8, a4);
    *a7 = v20;
  }

  else
  {
    v18 = v16;
    result = swift_getTupleTypeMetadata2();
    *(a8 + *(result + 48)) = v18;
  }

  return result;
}

uint64_t sub_1D5F36A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v7);
  v10 = v13 - v9;
  (*(v11 + 16))(v13 - v9, a1, v8);
  return (*(*(a2 - 8) + 32))(a3, v10, a2);
}

uint64_t FeedPersonalizationServiceType.score(content:context:)@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = v9 >> 13;
  if (v9 >> 13 > 2)
  {
    if (v10 == 3)
    {
      v13 = type metadata accessor for FormatContent.Resolved();
      v14 = sub_1D5CECAC0(*(a1 + *(v13 + 36)));
      v15 = *(a4 + 24);
      sub_1D5B5A498(0, &qword_1EDF3C6B0);
      v15(v14);

LABEL_8:

      return sub_1D5D63D9C(a1, a5);
    }

    v16 = type metadata accessor for FormatContent.Resolved();
    v12 = sub_1D5CEB958(*(a1 + *(v16 + 36)));
    LOBYTE(v18) = 0;
LABEL_7:
    (*(a4 + 16))(v12, &v18, a3, a4);

    goto LABEL_8;
  }

  if (v10 - 1 >= 2)
  {
    v11 = type metadata accessor for FormatContent.Resolved();
    v12 = sub_1D5CEB958(*(a1 + *(v11 + 36)));
    LOBYTE(v18) = v9;
    goto LABEL_7;
  }

  return sub_1D5D63D9C(a1, a5);
}

uint64_t *FeedPersonalizationServiceType.bestOfGroup(from:context:allowClusteringFallback:)(uint64_t a1, unsigned __int8 *a2, char a3, uint64_t a4, unint64_t a5)
{
  v7 = v6;
  v9 = a4;
  LOBYTE(v10) = a3;
  v11 = *a2;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v53[0] = MEMORY[0x1E69E7CC0];
    sub_1D6997D30(0, v12, 0);
    v13 = v53[0];
    v15 = (a1 + 32);
    do
    {
      v51 = *v15;
      v53[0] = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      swift_unknownObjectRetain();
      v18 = *(&v51 + 1);
      if (v17 >= v16 >> 1)
      {
        sub_1D6997D30((v16 > 1), v17 + 1, 1);
        v13 = v53[0];
      }

      *(v13 + 16) = v17 + 1;
      v19 = v13 + 24 * v17;
      *(v19 + 32) = v51;
      *(v19 + 48) = 0;
      ++v15;
      --v12;
    }

    while (v12);
    v7 = v47;
    v5 = v49;
    v9 = a4;
    LOBYTE(v10) = a3;
  }

  LOWORD(v53[0]) = v11;
  if (qword_1EC87DBF8 != -1)
  {
LABEL_27:
    swift_once();
  }

  v20 = type metadata accessor for FeedPersonalizationClusteringRules();
  v21 = __swift_project_value_buffer(v20, qword_1EC8974C0);
  v22 = (*(a5 + 72))(v13, v53, v10 & 1, v21, v9, a5);
  if (!v7)
  {
    v9 = v22;

    v13 = *(v9 + 16);
    if (v13)
    {
      v23 = 0;
      v24 = v9 + 48;
      v42 = v13 - 1;
      v5 = MEMORY[0x1E69E7CC0];
      v48 = *(v9 + 16);
      v50 = v9;
      v43 = v9 + 48;
      do
      {
        v45 = v5;
        v5 = (v24 + 24 * v23);
        a5 = v23;
        while (1)
        {
          if (a5 >= *(v9 + 16))
          {
            __break(1u);
            goto LABEL_27;
          }

          v26 = *(v5 - 2);
          v25 = *(v5 - 1);
          v10 = *v5;
          v23 = a5 + 1;
          v53[4] = &unk_1F52ABB80;
          v27 = swift_dynamicCastObjCProtocolConditional();
          if (v27)
          {
            break;
          }

          v52 = a5 + 1;
          v28 = qword_1EDF1BB50;
          swift_unknownObjectRetain();
          v29 = v25;
          v30 = v10;
          if (v28 != -1)
          {
            swift_once();
          }

          v7 = qword_1EDFFC828;
          sub_1D7262EBC();
          sub_1D5C384A0();
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1D7273AE0;
          v53[0] = v26;
          v53[1] = v29;
          v53[2] = v10;
          swift_unknownObjectRetain();
          v32 = v29;
          v33 = v30;
          v10 = sub_1D72620FC();
          v35 = v34;
          *(v31 + 56) = MEMORY[0x1E69E6158];
          *(v31 + 64) = sub_1D5B7E2C0();
          *(v31 + 32) = v10;
          *(v31 + 40) = v35;
          sub_1D725C30C();

          swift_unknownObjectRelease();
          v5 += 3;
          v9 = v50;
          a5 = v52;
          v13 = v48;
          if (v48 == v52)
          {
            v5 = v45;
            goto LABEL_25;
          }
        }

        v36 = v27;
        swift_unknownObjectRetain();
        v37 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_1D698FB64(0, *(v45 + 2) + 1, 1, v45);
        }

        v7 = *(v45 + 2);
        v38 = *(v45 + 3);
        if (v7 >= v38 >> 1)
        {
          v45 = sub_1D698FB64((v38 > 1), v7 + 1, 1, v45);
        }

        v39 = v36;
        v5 = v45;
        *(v45 + 2) = v7 + 1;
        v40 = &v45[16 * v7];
        *(v40 + 4) = v39;
        *(v40 + 5) = v37;
        v24 = v43;
      }

      while (v42 != a5);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }
  }

LABEL_25:

  return v5;
}

uint64_t FeedPersonalizationService.__allocating_init(feedPersonalizingEngine:groupingPersonalizer:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FeedPersonalizationService.init(feedPersonalizingEngine:groupingPersonalizer:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

char *FeedPersonalizationService.score(items:context:)(unint64_t a1, unsigned __int16 *a2)
{
  v4 = *a2;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_22:
    v22 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
    v14 = sub_1D5F38AC8(a1, v22);

    return v14;
  }

  if (!sub_1D7263BFC())
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = *(v2 + 16);
  sub_1D5B5534C(0, &qword_1EDF1A860);
  v6 = sub_1D726265C();
  if (v4 >> 13 > 2)
  {
    v7 = 0;
  }

  else if (v4 >> 13 == 1)
  {
    v7 = qword_1D7283B98[v4];
  }

  else
  {
    v7 = FeedHeadlineScoringContext.configurationSet.getter();
  }

  v8 = [v5 sortItems:v6 options:0 configurationSet:v7];

  v9 = [v8 sortedItems];
  v10 = sub_1D726267C();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  v11 = sub_1D7263BFC();
  if (!v11)
  {
LABEL_24:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_10:
  v24 = MEMORY[0x1E69E7CC0];
  result = sub_1D6997D30(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = v24;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1DA6FB460](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      v16 = [v8 scoreProfiles];
      v17 = [v16 objectForKey_];

      v18 = v17;
      if (!v17)
      {
        v18 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      }

      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      if (v20 >= v19 >> 1)
      {
        v23 = v18;
        sub_1D6997D30((v19 > 1), v20 + 1, 1);
        v18 = v23;
      }

      ++v13;
      *(v24 + 16) = v20 + 1;
      v21 = (v24 + 24 * v20);
      v21[4] = v15;
      v21[5] = v18;
      v21[6] = 0;
    }

    while (v11 != v13);

    return v14;
  }

  __break(1u);
  return result;
}

char *FeedPersonalizationService.score(headlines:context:)(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_33:
    if (sub_1D7263BFC())
    {
      v5 = *(v2 + 16);
      sub_1D5B5534C(0, &qword_1EDF1A860);

      sub_1D726403C();

      goto LABEL_4;
    }
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v2 + 16);

      sub_1D726479C();
      sub_1D5B5534C(0, &qword_1EDF1A860);
      if (!swift_dynamicCastMetatype())
      {
        v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          v23 = v4 + 32;
          do
          {
            if (!swift_dynamicCastObjCProtocolConditional())
            {
              break;
            }

            v23 += 8;
            --v22;
          }

          while (v22);
        }
      }

LABEL_4:
      sub_1D5B5534C(0, &qword_1EDF1A860);
      v6 = sub_1D726265C();

      v7 = [v5 sortItems:v6 options:0 configurationSet:FeedHeadlineScoringContext.configurationSet.getter()];

      sub_1D5B5534C(0, &qword_1EDF3C720);
      v8 = sub_1D726265C();
      v9 = [v7 scoreProfiles];
      FCAssignPersonalizationScoresFromProfiles();

      v10 = [v7 sortedItems];
      v11 = sub_1D726267C();

      if (v11 >> 62)
      {
        v3 = sub_1D7263BFC();
        if (v3)
        {
LABEL_6:
          v2 = 0;
          v12 = MEMORY[0x1E69E7CC0];
          do
          {
            v13 = v2;
            while (1)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v14 = MEMORY[0x1DA6FB460](v13, v11);
                v2 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
                  goto LABEL_31;
                }
              }

              else
              {
                if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_32;
                }

                v14 = *(v11 + 8 * v13 + 32);
                swift_unknownObjectRetain();
                v2 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
LABEL_31:
                  __break(1u);
LABEL_32:
                  __break(1u);
                  goto LABEL_33;
                }
              }

              v15 = swift_dynamicCastObjCProtocolConditional();
              if (v15)
              {
                break;
              }

              swift_unknownObjectRelease();
              ++v13;
              if (v2 == v3)
              {
                goto LABEL_38;
              }
            }

            v26 = v15;
            swift_unknownObjectRetain();
            v25 = v7;
            v16 = [v7 scoreProfiles];
            v17 = [v16 objectForKey_];

            if (!v17)
            {
              v17 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
            }

            swift_unknownObjectRelease();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_1D698FB64(0, *(v12 + 2) + 1, 1, v12);
            }

            v19 = *(v12 + 2);
            v18 = *(v12 + 3);
            v20 = v26;
            if (v19 >= v18 >> 1)
            {
              v12 = sub_1D698FB64((v18 > 1), v19 + 1, 1, v12);
              v20 = v26;
            }

            *(v12 + 2) = v19 + 1;
            v21 = &v12[16 * v19];
            *(v21 + 4) = v20;
            *(v21 + 5) = v17;
            v7 = v25;
          }

          while (v2 != v3);
          goto LABEL_38;
        }
      }

      else
      {
        v3 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3)
        {
          goto LABEL_6;
        }
      }

      v12 = MEMORY[0x1E69E7CC0];
LABEL_38:

      return v12;
    }
  }

  return sub_1D5F3608C(v3);
}

id sub_1D5F37918@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = objc_allocWithZone(MEMORY[0x1E69B52B8]);
  swift_unknownObjectRetain();
  return FeedScoredRecipe.init(recipe:scoreProfile:)(v3, [v4 init], a2);
}

char *FeedPersonalizationService.score(issues:context:)(unint64_t a1, char *a2)
{
  v3 = a1;
  v4 = *a2;
  if (a1 >> 62)
  {
LABEL_27:
    if (sub_1D7263BFC())
    {
      v5 = *(v2 + 16);
      sub_1D5B5534C(0, &qword_1EDF1A860);

      sub_1D726403C();

LABEL_4:
      sub_1D5B5534C(0, &qword_1EDF1A860);
      v6 = sub_1D726265C();

      v7 = [v5 sortItems:v6 options:0 configurationSet:qword_1D7283B98[v4]];

      v8 = [v7 sortedItems];
      v2 = sub_1D726267C();

      if (v2 >> 62)
      {
        v9 = sub_1D7263BFC();
        if (v9)
        {
LABEL_6:
          v3 = 0;
          v10 = MEMORY[0x1E69E7CC0];
          do
          {
            v11 = v3;
            while (1)
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                v4 = MEMORY[0x1DA6FB460](v11, v2);
                v3 = v11 + 1;
                if (__OFADD__(v11, 1))
                {
                  goto LABEL_25;
                }
              }

              else
              {
                if (v11 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_26;
                }

                v4 = *(v2 + 8 * v11 + 32);
                swift_unknownObjectRetain();
                v3 = v11 + 1;
                if (__OFADD__(v11, 1))
                {
LABEL_25:
                  __break(1u);
LABEL_26:
                  __break(1u);
                  goto LABEL_27;
                }
              }

              objc_opt_self();
              v12 = swift_dynamicCastObjCClass();
              if (v12)
              {
                break;
              }

              swift_unknownObjectRelease();
              ++v11;
              if (v3 == v9)
              {
                goto LABEL_32;
              }
            }

            v22 = v12;
            swift_unknownObjectRetain();
            v21 = v7;
            v13 = [v7 scoreProfiles];
            v14 = [v13 objectForKey_];

            if (!v14)
            {
              v14 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
            }

            swift_unknownObjectRelease();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_1D698FC88(0, *(v10 + 2) + 1, 1, v10);
            }

            v16 = *(v10 + 2);
            v15 = *(v10 + 3);
            v4 = v16 + 1;
            v17 = v22;
            if (v16 >= v15 >> 1)
            {
              v10 = sub_1D698FC88((v15 > 1), v16 + 1, 1, v10);
              v17 = v22;
            }

            *(v10 + 2) = v4;
            v18 = &v10[16 * v16];
            *(v18 + 4) = v17;
            *(v18 + 5) = v14;
            v7 = v21;
          }

          while (v3 != v9);
          goto LABEL_32;
        }
      }

      else
      {
        v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_6;
        }
      }

      v10 = MEMORY[0x1E69E7CC0];
LABEL_32:

      return v10;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v2 + 16);

    sub_1D726479C();
    sub_1D5B5534C(0, &qword_1EDF1A860);
    goto LABEL_4;
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
  v10 = sub_1D5F3882C(v3, v19);

  return v10;
}

void FeedPersonalizationService.score(tags:)()
{
  v1 = *(v0 + 16);
  v2 = sub_1D726265C();
  v3 = [v1 scoresForTagIDs_];

  if (v3)
  {
    sub_1D5B5A498(0, &qword_1EDF1A660);
    v4 = sub_1D7261D3C();

    sub_1D5F35E1C(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t FeedPersonalizationService.bestOfGroup(from:context:)(unint64_t a1)
{
  v52[1] = *MEMORY[0x1E69E9840];
  isUniquelyReferenced_nonNull_native = sub_1D605BC90(MEMORY[0x1E69E7CC0]);
  v42 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_28:
    if (qword_1EDF1BB50 != -1)
    {
LABEL_56:
      swift_once();
    }

    sub_1D5C384A0();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7273AE0;
    if (v42)
    {
      v24 = sub_1D7263BFC();
    }

    else
    {
      v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = MEMORY[0x1E69E65A8];
    *(v23 + 56) = MEMORY[0x1E69E6530];
    *(v23 + 64) = v25;
    *(v23 + 32) = v24;
    sub_1D7262EDC();
    sub_1D725C30C();

    v26 = *(v43 + 24);
    sub_1D5B5534C(0, &qword_1EDF3C720);
    v27 = sub_1D726265C();
    v28 = FeedHeadlineScoringContext.configurationSet.getter();
    v52[0] = 0;
    v29 = [v26 bestOfGroupFromHeadlines:v27 configurationSet:v28 error:v52];

    if (v52[0])
    {
      v52[0];

      return swift_willThrow();
    }

    a1 = sub_1D726267C();

    v52[0] = MEMORY[0x1E69E7CC0];
    if (a1 >> 62)
    {
      v49 = a1 & 0xFFFFFFFFFFFFFF8;
      v31 = sub_1D7263BFC();
      if (v31)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v49 = a1 & 0xFFFFFFFFFFFFFF8;
      v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_36:
        v32 = 0;
        v47 = a1 & 0xC000000000000001;
        v45 = MEMORY[0x1E69E7CC0];
        v51 = isUniquelyReferenced_nonNull_native;
        while (1)
        {
          isUniquelyReferenced_nonNull_native = v32;
          while (1)
          {
            if (v47)
            {
              v33 = MEMORY[0x1DA6FB460](isUniquelyReferenced_nonNull_native, a1);
              v32 = isUniquelyReferenced_nonNull_native + 1;
              if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
              {
                goto LABEL_54;
              }
            }

            else
            {
              if (isUniquelyReferenced_nonNull_native >= *(v49 + 16))
              {
                goto LABEL_55;
              }

              v33 = *(a1 + 8 * isUniquelyReferenced_nonNull_native + 32);
              swift_unknownObjectRetain();
              v32 = isUniquelyReferenced_nonNull_native + 1;
              if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
              {
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
                goto LABEL_56;
              }
            }

            v34 = a1;
            v35 = [v33 itemID];
            v36 = sub_1D726207C();
            v38 = v37;

            if (*(v51 + 16))
            {
              break;
            }

            swift_unknownObjectRelease();

LABEL_39:
            a1 = v34;
            ++isUniquelyReferenced_nonNull_native;
            if (v32 == v31)
            {
              goto LABEL_59;
            }
          }

          sub_1D5B69D90(v36, v38);
          v40 = v39;

          if ((v40 & 1) == 0)
          {
            break;
          }

          swift_unknownObjectRetain();
          v41 = swift_unknownObjectRelease();
          MEMORY[0x1DA6F9CE0](v41);
          a1 = v34;
          if (*((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          v45 = v52[0];
          if (v32 == v31)
          {
LABEL_59:

            return v45;
          }
        }

        swift_unknownObjectRelease();
        goto LABEL_39;
      }
    }

    v45 = MEMORY[0x1E69E7CC0];
    goto LABEL_59;
  }

LABEL_3:
  v4 = 0;
  v46 = a1 & 0xFFFFFFFFFFFFFF8;
  v48 = a1 & 0xC000000000000001;
  v44 = a1;
  while (1)
  {
    if (v48)
    {
      v5 = MEMORY[0x1DA6FB460](v4, a1);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v4 >= *(v46 + 16))
      {
        goto LABEL_24;
      }

      v5 = *(a1 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v3 = sub_1D7263BFC();
        if (!v3)
        {
          goto LABEL_28;
        }

        goto LABEL_3;
      }
    }

    v50 = v6;
    v7 = [v5 identifier];
    v8 = sub_1D726207C();
    v10 = v9;

    swift_unknownObjectRetain();
    v11 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = v11;
    v13 = sub_1D5B69D90(v8, v10);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_25;
    }

    a1 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1D6D7DB48();
      if (a1)
      {
LABEL_4:

        isUniquelyReferenced_nonNull_native = v52[0];
        *(*(v52[0] + 7) + 8 * v13) = v5;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_5;
      }
    }

LABEL_16:
    isUniquelyReferenced_nonNull_native = v52[0];
    *(v52[0] + (v13 >> 6) + 8) |= 1 << v13;
    v19 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * v13);
    *v19 = v8;
    v19[1] = v10;
    *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v13) = v5;
    swift_unknownObjectRelease();
    v20 = *(isUniquelyReferenced_nonNull_native + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_26;
    }

    *(isUniquelyReferenced_nonNull_native + 16) = v22;
LABEL_5:
    ++v4;
    a1 = v44;
    if (v50 == v3)
    {
      goto LABEL_28;
    }
  }

  sub_1D6D66678(v16, isUniquelyReferenced_nonNull_native);
  v17 = sub_1D5B69D90(v8, v10);
  if ((a1 & 1) == (v18 & 1))
  {
    v13 = v17;
    if (a1)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t FeedPersonalizationService.prepareForUse()()
{
  sub_1D5B73960();
  swift_allocObject();
  return sub_1D725BBAC();
}

void sub_1D5F3846C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D5DF743C;
  *(v10 + 24) = v8;
  v12[4] = sub_1D5F39624;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D5B6B06C;
  v12[3] = &block_descriptor_6;
  v11 = _Block_copy(v12);

  [v9 prepareForUseWithCompletionHandler_];
  _Block_release(v11);
}

uint64_t FeedPersonalizationService.diversify<A>(recipes:)(uint64_t a1)
{
  nullsub_1(a1);
}

uint64_t FeedPersonalizationService.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FeedPersonalizationService.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D5F386AC()
{
  v1 = *(*v0 + 16);
  v2 = sub_1D726265C();
  v3 = [v1 scoresForTagIDs_];

  if (v3)
  {
    sub_1D5B5A498(0, &qword_1EDF1A660);
    v4 = sub_1D7261D3C();

    sub_1D5F35E1C(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D5F387B0()
{
  sub_1D5B73960();
  swift_allocObject();
  return sub_1D725BBAC();
}

uint64_t sub_1D5F38804(uint64_t a1)
{
  nullsub_1(a1);
}

char *sub_1D5F3882C(unint64_t a1, void *a2)
{
  v2 = a1;
  v25 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v28 = MEMORY[0x1E69E7CC0];
    result = sub_1D6997CF0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    if (!i)
    {
      break;
    }

    v5 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v25)
    {
      v24 = sub_1D7263BFC();
    }

    else
    {
      v24 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    v27 = v2 & 0xC000000000000001;
    v22 = v2 & 0xFFFFFFFFFFFFFF8;
    v23 = v2;
    while (v14 < i)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_40;
      }

      if (v24 == v14)
      {
        goto LABEL_41;
      }

      if (v27)
      {
        v16 = MEMORY[0x1DA6FB460](v14, v2);
      }

      else
      {
        if (v14 >= *(v5 + 16))
        {
          goto LABEL_42;
        }

        v16 = *(v2 + 8 * v14 + 32);
      }

      v17 = v16;
      v19 = *(v28 + 16);
      v18 = *(v28 + 24);
      v20 = a2;
      if (v19 >= v18 >> 1)
      {
        sub_1D6997CF0((v18 > 1), v19 + 1, 1);
      }

      *(v28 + 16) = v19 + 1;
      v21 = v28 + 16 * v19;
      *(v21 + 32) = v17;
      *(v21 + 40) = v20;
      ++v14;
      v5 = v22;
      v2 = v23;
      if (v15 == i)
      {
        goto LABEL_8;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    ;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  v27 = v2 & 0xC000000000000001;
LABEL_8:
  if (v25)
  {
    while (i != sub_1D7263BFC())
    {
LABEL_12:
      if (v27)
      {
        v6 = MEMORY[0x1DA6FB460](i, v2);
      }

      else
      {
        if (i < 0)
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (i >= *(v5 + 16))
        {
          goto LABEL_38;
        }

        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        goto LABEL_37;
      }

      v9 = *(v28 + 16);
      v8 = *(v28 + 24);
      v10 = a2;
      if (v9 >= v8 >> 1)
      {
        v12 = v8 > 1;
        v13 = v10;
        sub_1D6997CF0(v12, v9 + 1, 1);
        v10 = v13;
      }

      *(v28 + 16) = v9 + 1;
      v11 = v28 + 16 * v9;
      *(v11 + 32) = v7;
      *(v11 + 40) = v10;
      ++i;
      if (!v25)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (i != *(v5 + 16))
    {
      goto LABEL_12;
    }
  }

  return v28;
}

char *sub_1D5F38AC8(unint64_t a1, void *a2)
{
  v2 = a1;
  v23 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    v26 = MEMORY[0x1E69E7CC0];
    result = sub_1D6997D30(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    if (!i)
    {
      break;
    }

    v20 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v23)
    {
      v22 = sub_1D7263BFC();
    }

    else
    {
      v22 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v25 = v2 & 0xC000000000000001;
    v21 = v2;
    while (v6 < i)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_41;
      }

      if (v22 == v6)
      {
        goto LABEL_42;
      }

      if (v25)
      {
        v8 = MEMORY[0x1DA6FB460](v6, v2);
      }

      else
      {
        if (v6 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v8 = *(v2 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v10 = *(v26 + 16);
      v9 = *(v26 + 24);
      v11 = a2;
      if (v10 >= v9 >> 1)
      {
        sub_1D6997D30((v9 > 1), v10 + 1, 1);
      }

      *(v26 + 16) = v10 + 1;
      v12 = (v26 + 24 * v10);
      v12[4] = v8;
      v12[5] = v11;
      v12[6] = 0;
      ++v6;
      v2 = v21;
      if (v7 == i)
      {
        v5 = v20;
        goto LABEL_21;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  v25 = v2 & 0xC000000000000001;
LABEL_21:
  if (v23)
  {
    while (i != sub_1D7263BFC())
    {
LABEL_25:
      if (v25)
      {
        v13 = MEMORY[0x1DA6FB460](i, v2);
        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (i < 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (i >= *(v5 + 16))
        {
          goto LABEL_39;
        }

        v13 = *(v2 + 8 * i + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }
      }

      v15 = *(v26 + 16);
      v14 = *(v26 + 24);
      v16 = a2;
      if (v15 >= v14 >> 1)
      {
        v18 = v14 > 1;
        v19 = v16;
        sub_1D6997D30(v18, v15 + 1, 1);
        v16 = v19;
      }

      *(v26 + 16) = v15 + 1;
      v17 = (v26 + 24 * v15);
      v17[4] = v13;
      v17[5] = v16;
      v17[6] = 0;
      ++i;
      if (!v23)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    if (i != *(v5 + 16))
    {
      goto LABEL_25;
    }
  }

  return v26;
}

uint64_t _s8NewsFeed0B22PersonalizationServiceC5score7recipes7contextSayAA0B12ScoredRecipeVyxGGSayxG_AA0bI14ScoringContextOtSo16FCRecipeScorableRzlF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a3;
  v3 = sub_1D72627FC();
  v4 = type metadata accessor for FeedScoredRecipe();
  WitnessTable = swift_getWitnessTable();
  return sub_1D5B874E4(sub_1D5F396DC, v8, v3, v4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
}

void *sub_1D5F38E4C(uint64_t a1, unsigned __int16 *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = [objc_allocWithZone(MEMORY[0x1E69B53A0]) init];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    v8 = (a1 + 40);
    v9 = v6;
    do
    {
      [v5 setObject:*v8 forKey:*(v8 - 1)];
      v8 += 3;
      --v9;
    }

    while (v9);
    v10 = *(v2 + 24);
    v24[0] = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    do
    {
      v7 += 24;
      swift_unknownObjectRetain();
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = *(v2 + 24);
  }

  sub_1D5B5534C(0, &qword_1EDF1A860);
  v11 = sub_1D726265C();

  if (v4 >> 13 > 2)
  {
    v12 = 0;
  }

  else if (v4 >> 13 == 1)
  {
    v12 = qword_1D7283B98[v4];
  }

  else
  {
    LOBYTE(v24[0]) = v4;
    v12 = FeedHeadlineScoringContext.configurationSet.getter();
  }

  v24[0] = 0;
  v13 = [v10 bestOfGroupFromFeedItems:v11 scoreProfiles:v5 configurationSet:v12 error:v24];

  if (v24[0])
  {
    v24[0];

    swift_willThrow();
    return v13;
  }

  v14 = sub_1D726267C();

  if (v14 >> 62)
  {
    v15 = sub_1D7263BFC();
    if (v15)
    {
      goto LABEL_17;
    }

LABEL_29:

    return MEMORY[0x1E69E7CC0];
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_17:
  v24[0] = MEMORY[0x1E69E7CC0];
  sub_1D6997D30(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
  }

  v16 = 0;
  v13 = v24[0];
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1DA6FB460](v16, v14);
    }

    else
    {
      v17 = *(v14 + 8 * v16 + 32);
      swift_unknownObjectRetain();
    }

    v18 = [v5 objectForKey_];
    if (!v18)
    {
      v18 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
    }

    v24[0] = v13;
    v20 = v13[2];
    v19 = v13[3];
    if (v20 >= v19 >> 1)
    {
      v23 = v18;
      sub_1D6997D30((v19 > 1), v20 + 1, 1);
      v18 = v23;
      v13 = v24[0];
    }

    ++v16;
    v13[2] = v20 + 1;
    v21 = &v13[3 * v20];
    v21[4] = v17;
    v21[5] = v18;
    v21[6] = 0;
  }

  while (v15 != v16);

  return v13;
}

double _s8NewsFeed0B22PersonalizationServiceC10groupScore5itemsSdSayAA0B10ScoredItemVG_tF_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D6998464(0, v1, 0);
    v3 = v11;
    v4 = (a1 + 40);
    do
    {
      [*v4 sortingScore];
      v10 = v3;
      v7 = *(*&v3 + 16);
      v6 = *(*&v3 + 24);
      if (v7 >= v6 >> 1)
      {
        v8 = v5;
        sub_1D6998464((v6 > 1), v7 + 1, 1);
        v5 = v8;
      }

      *(*&v3 + 16) = v7 + 1;
      *(*&v3 + 8 * v7 + 32) = v5;
      v4 += 3;
      --v1;
    }

    while (v1);
  }

  sub_1D5F39688();
  sub_1D72626FC();

  return v10;
}

double _s8NewsFeed0B22PersonalizationServiceC10groupScore9headlinesSdSayAA0B14ScoredHeadlineVG_tF_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1D6998464(0, v1, 0);
    v3 = v11;
    v4 = (a1 + 40);
    do
    {
      [*v4 sortingScore];
      v10 = v3;
      v7 = *(*&v3 + 16);
      v6 = *(*&v3 + 24);
      if (v7 >= v6 >> 1)
      {
        v8 = v5;
        sub_1D6998464((v6 > 1), v7 + 1, 1);
        v5 = v8;
      }

      *(*&v3 + 16) = v7 + 1;
      *(*&v3 + 8 * v7 + 32) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  sub_1D5F39688();
  sub_1D72626FC();

  return v10;
}

double _s8NewsFeed0B22PersonalizationServiceC10groupScore7recipesSdSayAA0B12ScoredRecipeVyxGG_tSo16FCRecipeScorableRzlF_0(uint64_t a1, uint64_t a2)
{
  v7 = *&a1;
  v6[2] = a2;
  type metadata accessor for FeedScoredRecipe();
  v2 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  sub_1D5B874E4(sub_1D5F3964C, v6, v2, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v4);
  sub_1D5F39688();
  sub_1D72626FC();

  return v7;
}

id sub_1D5F3964C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(a1 + 8) sortingScore];
  *a2 = v4;
  return result;
}

unint64_t sub_1D5F39688()
{
  result = qword_1EDF05860;
  if (!qword_1EDF05860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05860);
  }

  return result;
}

unint64_t sub_1D5F396FC()
{
  result = qword_1EC8812B0;
  if (!qword_1EC8812B0)
  {
    sub_1D5B9F048(255, &qword_1EDF3C810, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, sub_1D5B5534C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8812B0);
  }

  return result;
}

unint64_t sub_1D5F39780()
{
  result = qword_1EC8812C0;
  if (!qword_1EC8812C0)
  {
    sub_1D5B9F048(255, &qword_1EDF1AE20, &qword_1EDF3C6B0, 0x1E69B5578, sub_1D5B5A498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8812C0);
  }

  return result;
}

Swift::Void __swiftcall TaskScheduler.scheduleIfMainElseStart(_:)(NSOperation a1)
{
  if ([objc_opt_self() isMainThread])
  {

    sub_1D725AC2C();
  }

  else
  {

    [(objc_class *)a1.super.isa start];
  }
}

uint64_t FormatAdMetricsNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatAdMetricsNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatAdMetricsNode.privacyMarkerFrameIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t FormatAdMetricsNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

uint64_t FormatAdMetricsNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t FormatAdMetricsNode.zIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

unint64_t FormatAdMetricsNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

unint64_t sub_1D5F39B98(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 80);
  sub_1D5EB1500(v2);
  *(v3 + 80) = v2;
  return sub_1D5EB15C4(v4);
}

unint64_t FormatAdMetricsNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatAdMetricsNode.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t FormatAdMetricsNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatAdMetricsNode.__allocating_init(identifier:content:privacyMarkerFrameIdentifier:size:resize:adjustments:zIndex:visibility:isUserInteractionEnabled:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, char a11, uint64_t a12)
{
  v18 = swift_allocObject();
  v19 = *a6;
  v20 = *a7;
  v21 = *a10;
  v22 = *(a12 + 40);
  v26 = *(a12 + 32);
  swift_beginAccess();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = v19;
  *(v18 + 56) = v20;
  swift_beginAccess();
  *(v18 + 64) = a8;
  swift_beginAccess();
  *(v18 + 72) = a9;
  swift_beginAccess();
  *(v18 + 80) = v21;
  swift_beginAccess();
  *(v18 + 88) = a11;
  v23 = *(a12 + 16);
  *(v18 + 96) = *a12;
  *(v18 + 112) = v23;
  *(v18 + 128) = v26;
  *(v18 + 136) = v22;
  return v18;
}

uint64_t FormatAdMetricsNode.init(identifier:content:privacyMarkerFrameIdentifier:size:resize:adjustments:zIndex:visibility:isUserInteractionEnabled:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t *a10, char a11, uint64_t a12)
{
  v18 = *a6;
  v19 = *a7;
  v24 = *(a12 + 32);
  v22 = *a10;
  v23 = *(a12 + 40);
  swift_beginAccess();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = v18;
  *(v12 + 56) = v19;
  swift_beginAccess();
  *(v12 + 64) = a8;
  swift_beginAccess();
  *(v12 + 72) = a9;
  swift_beginAccess();
  *(v12 + 80) = v22;
  swift_beginAccess();
  *(v12 + 88) = a11;
  v20 = *(a12 + 16);
  *(v12 + 96) = *a12;
  *(v12 + 112) = v20;
  *(v12 + 128) = v24;
  *(v12 + 136) = v23;
  return v12;
}

uint64_t FormatAdMetricsNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 48));

  sub_1D5EB15C4(*(v0 + 80));
  sub_1D5EB2398(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));
  return v0;
}

uint64_t FormatAdMetricsNode.__deallocating_deinit()
{
  FormatAdMetricsNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F3A058(uint64_t a1)
{
  result = sub_1D5F3A19C(&qword_1EC8812D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5F3A09C(void *a1)
{
  a1[1] = sub_1D5F3A19C(&qword_1EDF2CDC0);
  a1[2] = sub_1D5F3A19C(&qword_1EDF0FCB0);
  result = sub_1D5F3A19C(&qword_1EC8812D8);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5F3A158(uint64_t a1)
{
  result = sub_1D5F3A19C(&qword_1EC8812E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5F3A19C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatAdMetricsNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5F3A1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v15 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v16 = *(a4 + 16);
  v17 = *(a4 + 24);

  if (*(v15 + 40))
  {
    v35 = *(v15 + 32);
    v36 = *(v15 + 40);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v16, v17);

    v16 = v35;
    v17 = v36;
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v29 = *(a4 + 16);
  v30 = *(a4 + 24);

  swift_unownedRetainStrong();
  v18 = *(a4 + 56);

  v31 = v16;
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = *(v18 + 16);
  swift_beginAccess();
  if (!*(*(v19 + 16) + 16))
  {

LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

LABEL_8:
  v20 = swift_allocObject();
  swift_unownedRetainStrong();
  swift_beginAccess();
  v21 = *(a4 + 72);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v22 = *(a4 + 80);
  sub_1D5EB1500(v22);

  sub_1D615B4A8(a3, &v37);
  sub_1D5EB15C4(v22);
  v23 = v37;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v24 = *(a4 + 88);

  swift_unownedRetainStrong();
  v25 = *(a4 + 32);
  v26 = *(a4 + 40);

  type metadata accessor for FormatAdMetricsNodeLayoutAttributes();
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  *(v27 + 32) = v31;
  *(v27 + 40) = v17;
  *(v27 + 48) = v29;
  *(v27 + 56) = v30;
  *(v27 + 64) = a6;
  *(v27 + 72) = a7;
  *(v27 + 80) = a8;
  *(v27 + 88) = a9;
  *(v27 + 96) = v19;
  *(v27 + 104) = v21;
  *(v27 + 112) = v23;
  *(v27 + 120) = v24;
  *(v27 + 128) = v25;
  *(v27 + 136) = v26;
  *(v20 + 16) = v27;
  *a5 = v20 | 0x5000000000000004;
}

uint64_t sub_1D5F3A4E8(void *a1)
{
  sub_1D5F3EF50(0, &qword_1EC881358, sub_1D5F3EEA8, &type metadata for DebugInspectionScoreProfile.Cohort.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3EEA8();
  sub_1D7264B5C();
  v14 = 0;
  sub_1D72643FC();
  if (!v1)
  {
    v13 = 1;
    sub_1D726441C();
    v12 = 2;
    sub_1D726441C();
    v11 = 3;
    sub_1D726441C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D5F3A6B4(void *a1)
{
  sub_1D5F3EF50(0, &qword_1EC881360, sub_1D5F3EEFC, &type metadata for DebugInspectionScoreProfile.Coefficients.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3EEFC();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D726441C();
  if (!v1)
  {
    v15 = 1;
    sub_1D726441C();
    v14 = 2;
    sub_1D726441C();
    v13 = 3;
    sub_1D726441C();
    v12 = 4;
    sub_1D726441C();
    v11 = 5;
    sub_1D726441C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D5F3A8C0()
{
  v1 = 0x696669746E656469;
  v2 = 0x6B63696C43776172;
  if (*v0 != 2)
  {
    v2 = 0x6973736572706D69;
  }

  if (*v0)
  {
    v1 = 0x736B63696C63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D5F3A948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F3C164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F3A970(uint64_t a1)
{
  v2 = sub_1D5F3EEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F3A9AC(uint64_t a1)
{
  v2 = sub_1D5F3EEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D5F3A9E8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5F3C2D8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1D5F3AA48()
{
  v1 = *v0;
  v2 = 0x6353726576726573;
  v3 = 0x726F635369626174;
  if (v1 != 4)
  {
    v3 = 0xD000000000000015;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000016;
  if (v1 == 1)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D5F3AB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F3C554(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F3AB3C(uint64_t a1)
{
  v2 = sub_1D5F3EEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F3AB78(uint64_t a1)
{
  v2 = sub_1D5F3EEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D5F3ABB4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5F3C760(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D5F3AC10(char a1)
{
  result = 0x726F635369626174;
  switch(a1)
  {
    case 1:
    case 7:
    case 16:
    case 29:
      result = 0xD000000000000013;
      break;
    case 2:
    case 19:
    case 28:
      result = 0xD000000000000010;
      break;
    case 3:
    case 34:
      result = 0xD00000000000001ELL;
      break;
    case 4:
    case 23:
    case 27:
    case 30:
      result = 0xD000000000000011;
      break;
    case 5:
      return result;
    case 6:
      result = 0xD000000000000014;
      break;
    case 8:
    case 38:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
    case 15:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0x6C754D6F69647561;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 17:
    case 22:
      result = 0xD000000000000012;
      break;
    case 18:
    case 21:
      result = 0xD000000000000016;
      break;
    case 20:
    case 31:
      result = 0xD000000000000015;
      break;
    case 24:
      v3 = 1852138867;
      goto LABEL_14;
    case 25:
      v3 = 1684104562;
LABEL_14:
      result = v3 | 0x616E655000000000;
      break;
    case 26:
      result = 0x64656E657473696CLL;
      break;
    case 32:
      result = 0x53676E6974726F73;
      break;
    case 33:
      result = 0x6154776F64616873;
      break;
    case 35:
      result = 0x6F436C61626F6C67;
      break;
    case 36:
      result = 0x6963696666656F63;
      break;
    case 37:
      result = 0x56676E69726F6373;
      break;
    case 39:
      result = 0x696C7069746C756DLL;
      break;
    case 40:
      result = 0xD000000000000020;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1D5F3AFF4(void *a1)
{
  v3 = v1;
  sub_1D5F3EF50(0, &qword_1EC881308, sub_1D5F3EB64, &type metadata for DebugInspectionScoreProfile.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3EB64();
  sub_1D7264B5C();
  LOBYTE(v14) = 0;
  sub_1D726441C();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1D726441C();
    LOBYTE(v14) = 2;
    sub_1D726441C();
    LOBYTE(v14) = 3;
    sub_1D726441C();
    LOBYTE(v14) = 4;
    sub_1D726441C();
    LOBYTE(v14) = 5;
    sub_1D726441C();
    LOBYTE(v14) = 6;
    sub_1D726441C();
    LOBYTE(v14) = 7;
    sub_1D726441C();
    LOBYTE(v14) = 8;
    sub_1D726441C();
    LOBYTE(v14) = 9;
    sub_1D726441C();
    LOBYTE(v14) = 10;
    sub_1D726441C();
    LOBYTE(v14) = 11;
    sub_1D726441C();
    LOBYTE(v14) = 12;
    sub_1D726441C();
    LOBYTE(v14) = 13;
    sub_1D726441C();
    LOBYTE(v14) = 14;
    sub_1D726441C();
    LOBYTE(v14) = 15;
    sub_1D726441C();
    LOBYTE(v14) = 16;
    sub_1D726441C();
    LOBYTE(v14) = 17;
    sub_1D726441C();
    LOBYTE(v14) = 18;
    sub_1D726441C();
    LOBYTE(v14) = 19;
    sub_1D726441C();
    LOBYTE(v14) = 20;
    sub_1D726441C();
    LOBYTE(v14) = 21;
    sub_1D726441C();
    LOBYTE(v14) = 22;
    sub_1D726441C();
    LOBYTE(v14) = 23;
    sub_1D726441C();
    LOBYTE(v14) = 24;
    sub_1D726441C();
    LOBYTE(v14) = 25;
    sub_1D726441C();
    LOBYTE(v14) = 26;
    sub_1D726441C();
    LOBYTE(v14) = 27;
    sub_1D726441C();
    LOBYTE(v14) = 28;
    sub_1D726441C();
    LOBYTE(v14) = 29;
    sub_1D726441C();
    LOBYTE(v14) = 30;
    sub_1D726441C();
    LOBYTE(v14) = 31;
    sub_1D726441C();
    LOBYTE(v14) = 32;
    sub_1D726441C();
    LOBYTE(v14) = 33;
    sub_1D726441C();
    LOBYTE(v14) = 34;
    sub_1D726441C();
    v12 = *(v3 + 296);
    v14 = *(v3 + 280);
    v15 = v12;
    *&v16 = *(v3 + 312);
    v17 = 35;
    sub_1D5F3ECC8();
    sub_1D726443C();
    v13 = *(v3 + 336);
    v14 = *(v3 + 320);
    v15 = v13;
    v16 = *(v3 + 352);
    v17 = 36;
    sub_1D5F3ED1C();
    sub_1D726443C();
    LOBYTE(v14) = 37;
    sub_1D726445C();
    LOBYTE(v14) = 38;
    sub_1D726437C();
    LOBYTE(v14) = 39;
    sub_1D726441C();
    LOBYTE(v14) = 40;
    sub_1D726441C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5F3B7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F3D37C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F3B7E0(uint64_t a1)
{
  v2 = sub_1D5F3EB64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F3B81C(uint64_t a1)
{
  v2 = sub_1D5F3EB64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D5F3B858@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D5F3E020(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x198uLL);
  }

  return result;
}

uint64_t sub_1D5F3B8BC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[48];
  if (v3)
  {
    v4 = v1[47];
    sub_1D5F3D224();
    v5 = swift_allocObject();
    *(v5 + 32) = 0xD000000000000012;
    *(v5 + 40) = 0x80000001D73C2DD0;
    v6 = MEMORY[0x1E69E6158];
    v7 = MEMORY[0x1E69E61C8];
    *(v5 + 16) = xmmword_1D7273AE0;
    *(v5 + 72) = v6;
    *(v5 + 80) = v7;
    *(v5 + 48) = v4;
    *(v5 + 56) = v3;
    *(v5 + 88) = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5F3D224();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7283D40;
  v9 = v1[1];
  *(v8 + 48) = *v1;
  *(v8 + 112) = v9;
  *(v8 + 176) = v1[2];
  v10 = v1[5];
  *(v8 + 240) = v1[4];
  v11 = v1[7];
  *(v8 + 304) = v1[6];
  *(v8 + 368) = v11;
  *(v8 + 432) = v10;
  v12 = v1[9];
  *(v8 + 496) = v1[8];
  *(v8 + 560) = v12;
  *(v8 + 624) = v1[10];
  v13 = v1[32];
  *(v8 + 688) = v1[31];
  *(v8 + 752) = v13;
  v14 = v1[34];
  *(v8 + 816) = v1[33];
  v15 = MEMORY[0x1E69E63B0];
  v16 = MEMORY[0x1E69E6418];
  *(v8 + 32) = 0xD000000000000016;
  *(v8 + 40) = 0x80000001D73C2C40;
  *(v8 + 72) = v15;
  *(v8 + 80) = v16;
  *(v8 + 88) = 0;
  *(v8 + 96) = 0xD000000000000015;
  *(v8 + 104) = 0x80000001D73C2C60;
  *(v8 + 136) = v15;
  *(v8 + 144) = v16;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0xD000000000000012;
  *(v8 + 168) = 0x80000001D73C2C80;
  *(v8 + 200) = v15;
  *(v8 + 208) = v16;
  *(v8 + 216) = 0;
  *(v8 + 224) = 0xD000000000000013;
  *(v8 + 232) = 0x80000001D73C2CA0;
  *(v8 + 264) = v15;
  *(v8 + 272) = v16;
  *(v8 + 280) = 0;
  *(v8 + 288) = 0xD000000000000017;
  *(v8 + 296) = 0x80000001D73C2CC0;
  *(v8 + 328) = v15;
  *(v8 + 336) = v16;
  *(v8 + 344) = 0;
  *(v8 + 352) = 0xD000000000000015;
  *(v8 + 360) = 0x80000001D73C2CE0;
  *(v8 + 392) = v15;
  *(v8 + 400) = v16;
  *(v8 + 408) = 0;
  *(v8 + 416) = 0x6F63532069626154;
  *(v8 + 424) = 0xEA00000000006572;
  *(v8 + 456) = v15;
  *(v8 + 464) = v16;
  *(v8 + 472) = 0;
  *(v8 + 480) = 0xD000000000000019;
  *(v8 + 488) = 0x80000001D73C2D00;
  *(v8 + 520) = v15;
  *(v8 + 528) = v16;
  *(v8 + 536) = 0;
  *(v8 + 544) = 0xD000000000000015;
  *(v8 + 552) = 0x80000001D73C2D20;
  *(v8 + 584) = v15;
  *(v8 + 592) = v16;
  *(v8 + 600) = 0;
  *(v8 + 608) = 0xD00000000000001ALL;
  *(v8 + 616) = 0x80000001D73C2D40;
  *(v8 + 648) = v15;
  *(v8 + 656) = v16;
  *(v8 + 664) = 0;
  *(v8 + 672) = 0xD000000000000016;
  *(v8 + 680) = 0x80000001D73C2D60;
  *(v8 + 712) = v15;
  *(v8 + 720) = v16;
  *(v8 + 728) = 0;
  strcpy((v8 + 736), "Sorting Score");
  *(v8 + 750) = -4864;
  *(v8 + 776) = v15;
  *(v8 + 784) = v16;
  *(v8 + 792) = 0;
  *(v8 + 800) = 0xD000000000000011;
  *(v8 + 808) = 0x80000001D73C2D80;
  *(v8 + 840) = v15;
  *(v8 + 848) = v16;
  *(v8 + 856) = 0;
  *(v8 + 864) = 0xD000000000000021;
  *(v8 + 872) = 0x80000001D73C2DA0;
  *(v8 + 904) = v15;
  *(v8 + 912) = v16;
  *(v8 + 880) = v14;
  *(v8 + 920) = 0;

  result = sub_1D6986C3C(v8);
  *(a1 + 24) = &type metadata for DebugInspectionDataSection;
  *(a1 + 32) = &off_1F5132800;
  strcpy(a1, "Score Profile");
  *(a1 + 14) = -4864;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1D5F3BC44@<X0>(uint64_t a1@<X8>)
{
  sub_1D5F3D224();
  result = swift_allocObject();
  *(result + 16) = xmmword_1D7279970;
  *(result + 32) = 0xD000000000000021;
  *(result + 40) = 0x80000001D73C2DF0;
  v4 = v1[3];
  v5 = MEMORY[0x1E69E63B0];
  v6 = MEMORY[0x1E69E6418];
  *(result + 72) = MEMORY[0x1E69E63B0];
  *(result + 80) = v6;
  *(result + 48) = v4;
  *(result + 88) = 0;
  *(result + 96) = 0xD000000000000015;
  *(result + 104) = 0x80000001D73C2E20;
  v7 = v1[29];
  *(result + 136) = v5;
  *(result + 144) = v6;
  *(result + 112) = v7;
  *(result + 152) = 0;
  *(result + 160) = 0xD000000000000016;
  *(result + 168) = 0x80000001D73C2E40;
  v8 = v1[45];
  *(result + 200) = v5;
  *(result + 208) = v6;
  *(result + 176) = v8;
  *(result + 216) = 0;
  *(a1 + 24) = &type metadata for DebugInspectionDataSection;
  *(a1 + 32) = &off_1F5132800;
  strcpy(a1, "Coefficients");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  *(a1 + 16) = result;
  return result;
}

double sub_1D5F3BD48@<D0>(void *a1@<X8>)
{
  sub_1D5F3D224();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7283D50;
  *(v3 + 48) = *(v1 + 392);
  v4 = *(v1 + 96);
  *(v3 + 112) = *(v1 + 88);
  *(v3 + 176) = v4;
  v5 = *(v1 + 112);
  *(v3 + 240) = *(v1 + 104);
  *(v3 + 304) = v5;
  v6 = *(v1 + 128);
  *(v3 + 368) = *(v1 + 120);
  *(v3 + 432) = v6;
  v7 = *(v1 + 144);
  *(v3 + 496) = *(v1 + 136);
  *(v3 + 560) = v7;
  result = *(v1 + 160);
  *(v3 + 624) = *(v1 + 152);
  *(v3 + 32) = 0x696C7069746C754DLL;
  *(v3 + 40) = 0xEA00000000007265;
  v9 = MEMORY[0x1E69E63B0];
  v10 = MEMORY[0x1E69E6418];
  *(v3 + 72) = MEMORY[0x1E69E63B0];
  *(v3 + 80) = v10;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0xD000000000000010;
  *(v3 + 104) = 0x80000001D73C2E60;
  *(v3 + 136) = v9;
  *(v3 + 144) = v10;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0xD000000000000016;
  *(v3 + 168) = 0x80000001D73C2E80;
  *(v3 + 200) = v9;
  *(v3 + 208) = v10;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0xD000000000000016;
  *(v3 + 232) = 0x80000001D73C2EA0;
  *(v3 + 264) = v9;
  *(v3 + 272) = v10;
  *(v3 + 280) = 0;
  *(v3 + 288) = 0xD000000000000015;
  *(v3 + 296) = 0x80000001D73C2EC0;
  *(v3 + 328) = v9;
  *(v3 + 336) = v10;
  *(v3 + 344) = 0;
  *(v3 + 352) = 0xD00000000000001ALL;
  *(v3 + 360) = 0x80000001D73C2EE0;
  *(v3 + 392) = v9;
  *(v3 + 400) = v10;
  *(v3 + 408) = 0;
  *(v3 + 416) = 0xD000000000000014;
  *(v3 + 424) = 0x80000001D73C2F00;
  *(v3 + 456) = v9;
  *(v3 + 464) = v10;
  *(v3 + 472) = 0;
  *(v3 + 480) = 0xD000000000000013;
  *(v3 + 488) = 0x80000001D73C2F20;
  *(v3 + 520) = v9;
  *(v3 + 528) = v10;
  *(v3 + 536) = 0;
  *(v3 + 544) = 0xD000000000000018;
  *(v3 + 552) = 0x80000001D73C2F40;
  *(v3 + 584) = v9;
  *(v3 + 592) = v10;
  *(v3 + 600) = 0;
  *(v3 + 608) = 0xD000000000000011;
  *(v3 + 616) = 0x80000001D73C2F60;
  *(v3 + 648) = v9;
  *(v3 + 656) = v10;
  *(v3 + 664) = 0;
  *(v3 + 672) = 0xD000000000000016;
  *(v3 + 680) = 0x80000001D73C2F80;
  *(v3 + 712) = v9;
  *(v3 + 720) = v10;
  *(v3 + 688) = result;
  *(v3 + 728) = 0;
  a1[3] = &type metadata for DebugInspectionDataSection;
  a1[4] = &off_1F5132800;
  *a1 = 0x696C7069746C754DLL;
  a1[1] = 0xEB00000000737265;
  a1[2] = v3;
  return result;
}

double sub_1D5F3BF80@<D0>(void *a1@<X8>)
{
  sub_1D5F3D224();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7283D60;
  v4 = *(v1 + 184);
  *(v3 + 48) = *(v1 + 192);
  v5 = *(v1 + 208);
  *(v3 + 112) = *(v1 + 200);
  *(v3 + 176) = v5;
  v6 = *(v1 + 224);
  *(v3 + 240) = *(v1 + 216);
  *(v3 + 304) = v6;
  v7 = *(v1 + 176);
  *(v3 + 368) = *(v1 + 168);
  *(v3 + 432) = v7;
  strcpy((v3 + 32), "Seen Penalty");
  *(v3 + 45) = 0;
  *(v3 + 46) = -5120;
  v8 = MEMORY[0x1E69E63B0];
  v9 = MEMORY[0x1E69E6418];
  *(v3 + 72) = MEMORY[0x1E69E63B0];
  *(v3 + 80) = v9;
  *(v3 + 88) = 0;
  strcpy((v3 + 96), "Read Penalty");
  *(v3 + 109) = 0;
  *(v3 + 110) = -5120;
  *(v3 + 136) = v8;
  *(v3 + 144) = v9;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0xD000000000000010;
  *(v3 + 168) = 0x80000001D73C2FA0;
  *(v3 + 200) = v8;
  *(v3 + 208) = v9;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0xD000000000000013;
  *(v3 + 232) = 0x80000001D73C2FC0;
  *(v3 + 264) = v8;
  *(v3 + 272) = v9;
  *(v3 + 280) = 0;
  *(v3 + 288) = 0xD000000000000012;
  *(v3 + 296) = 0x80000001D73C2FE0;
  *(v3 + 328) = v8;
  *(v3 + 336) = v9;
  *(v3 + 344) = 0;
  *(v3 + 352) = 0xD000000000000018;
  *(v3 + 360) = 0x80000001D73C3000;
  *(v3 + 392) = v8;
  *(v3 + 400) = v9;
  *(v3 + 408) = 0;
  *(v3 + 416) = 0xD000000000000013;
  *(v3 + 424) = 0x80000001D73C3020;
  *(v3 + 456) = v8;
  *(v3 + 464) = v9;
  *(v3 + 472) = 0;
  *(v3 + 480) = 0xD000000000000013;
  *(v3 + 488) = 0x80000001D73C3040;
  *(v3 + 520) = v8;
  *(v3 + 528) = v9;
  *(v3 + 496) = v4;
  *(v3 + 536) = 0;
  *(v3 + 544) = 0xD000000000000012;
  *(v3 + 552) = 0x80000001D73C3060;
  result = *(v1 + 240);
  *(v3 + 584) = v8;
  *(v3 + 592) = v9;
  *(v3 + 560) = result;
  *(v3 + 600) = 0;
  a1[3] = &type metadata for DebugInspectionDataSection;
  a1[4] = &off_1F5132800;
  *a1 = 0x6569746C616E6550;
  a1[1] = 0xE900000000000073;
  a1[2] = v3;
  return result;
}

uint64_t sub_1D5F3C164(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736B63696C63 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B63696C43776172 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D5F3C2D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  sub_1D5F3EF50(0, &qword_1EC881338, sub_1D5F3EEA8, &type metadata for DebugInspectionScoreProfile.Cohort.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3EEA8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v23;
  v27 = 0;
  v12 = sub_1D72642BC();
  v14 = v13;
  v15 = v12;
  v26 = 1;
  sub_1D72642DC();
  v17 = v16;
  v25 = 2;
  sub_1D72642DC();
  v19 = v18;
  v24 = 3;
  sub_1D72642DC();
  v21 = v20;
  (*(v10 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v15;
  v11[1] = v14;
  v11[2] = v17;
  v11[3] = v19;
  v11[4] = v21;
  return result;
}

uint64_t sub_1D5F3C554(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6353726576726573 && a2 == 0xEB0000000065726FLL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73C3450 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C3470 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73C3490 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F635369626174 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C34B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D5F3C760@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v25 = a2;
  sub_1D5F3EF50(0, &qword_1EC881348, sub_1D5F3EEFC, &type metadata for DebugInspectionScoreProfile.Coefficients.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3EEFC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v25;
  v31 = 0;
  sub_1D72642DC();
  v12 = v11;
  v30 = 1;
  sub_1D72642DC();
  v14 = v13;
  v29 = 2;
  sub_1D72642DC();
  v16 = v15;
  v28 = 3;
  sub_1D72642DC();
  v18 = v17;
  v27 = 4;
  sub_1D72642DC();
  v20 = v19;
  v26 = 5;
  sub_1D72642DC();
  v22 = v21;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v12;
  v10[1] = v14;
  v10[2] = v16;
  v10[3] = v18;
  v10[4] = v20;
  v10[5] = v22;
  return result;
}

void *sub_1D5F3CA00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    [v3 subscribedChannelCtr];
    v126 = v4;
    [v3 paidNonpaidSubscriptionCtr];
    v125 = v5;
    [v3 autoSubscribeCtr];
    v124 = v6;
    [v3 computedGlobalScoreCoefficient];
    v123 = v7;
    [v3 userFeedbackScore];
    v122 = v8;
    [v3 tabiScore];
    v121 = v9;
    [v3 rawUserFeedbackScore];
    v120 = v10;
    [v3 rawPersonalizationScore];
    v119 = v11;
    [v3 personalizationScore];
    v118 = v12;
    [v3 agedPersonalizationScore];
    v117 = v13;
    [v3 conversionMultiplier];
    v116 = v14;
    [v3 dampenedStaticMultiplier];
    v115 = v15;
    [v3 staticMultiplier];
    v114 = v16;
    [v3 qualitativeMultiplier];
    v112 = v17;
    [v3 publisherDampener];
    v113 = v18;
    [v3 publisherFavorability];
    v111 = v19;
    [v3 sortingScore];
    v110 = v20;
    [v3 shadowTabiScore];
    v109 = v21;
    [v3 shadowAgedPersonalizationScore];
    v108 = v22;
    v23 = [v3 globalCohort];
    [v23 clicks];
    v107 = v24;

    v25 = [v3 globalCohort];
    [v25 rawClicks];
    v106 = v26;

    v27 = [v3 globalCohort];
    [v27 impressions];
    v105 = v28;

    v29 = [v3 coefficients];
    [v29 serverScoreCoefficient];
    v104 = v30;

    v31 = [v3 coefficients];
    [v31 subscribedTopicScoreCoefficient];
    v103 = v32;

    v33 = [v3 coefficients];
    [v33 subscribedChannelScoreCoefficent];
    v102 = v34;

    v35 = [v3 coefficients];
    [v35 autofavoritedScoreCoefficient];
    v101 = v36;

    v37 = [v3 coefficients];
    [v37 tabiScoreCoefficient];
    v100 = v38;

    v39 = [v3 coefficients];
    [v39 conversionCoefficient];
    v99 = v40;

    v41 = [v3 debugFields];
    [v41 userConversionScore];
    v98 = v42;

    v43 = [v3 debugFields];
    [v43 audioMultiplier];
    v97 = v44;

    v45 = [v3 debugFields];
    [v45 bundleFreeMultiplier];
    v96 = v46;

    v47 = [v3 debugFields];
    [v47 bundlePaidMultiplier];
    v95 = v48;

    v49 = [v3 debugFields];
    [v49 evergreenMultiplier];
    v94 = v50;

    v51 = [v3 debugFields];
    [v51 featuredMultiplier];
    v93 = v52;

    [v3 nicheContentMultiplier];
    v92 = v53;
    [v3 contentTriggerDampener];
    v91 = v54;
    v55 = [v3 debugFields];
    [v55 multiplierDampener];
    v90 = v56;

    v57 = [v3 debugFields];
    [v57 mutedVoteDampener];
    v88 = v58;

    v59 = [v3 debugFields];
    [v59 seenPenalty];
    v61 = v60;

    v62 = [v3 debugFields];
    [v62 readPenalty];
    v64 = v63;

    v65 = [v3 debugFields];
    [v65 listenedPenalty];
    v67 = v66;

    v68 = [v3 debugFields];
    [v68 sparseTagsPenalty];
    v70 = v69;

    v71 = [v3 debugFields];
    [v71 timeDecayPenalty];
    v73 = v72;

    v74 = [v3 coefficients];
    [v74 halfLifeCoefficient];
    v76 = v75;

    v77 = [v3 scoringVersion];
    v78 = [v3 debugFields];
    v79 = [v78 scoringAssetsIdentifier];

    if (v79)
    {
      v80 = sub_1D726207C();
      v82 = v81;
    }

    else
    {
      v80 = 0;
      v82 = 0;
    }

    [v3 multiplier];
    v84 = v83;
    [v3 serverScoreDemocratizationFactor];
    v86 = v85;

    __src[0] = v126;
    __src[1] = v125;
    __src[2] = v124;
    __src[3] = v123;
    __src[4] = v122;
    __src[5] = v121;
    __src[6] = v120;
    __src[7] = v98;
    __src[8] = v119;
    __src[9] = v118;
    __src[10] = v117;
    __src[11] = v97;
    __src[12] = v96;
    __src[13] = v95;
    __src[14] = v116;
    __src[15] = v115;
    __src[16] = v94;
    __src[17] = v93;
    __src[18] = v92;
    __src[19] = v114;
    __src[20] = v112;
    __src[21] = v91;
    __src[22] = v90;
    __src[23] = v89;
    __src[24] = v61;
    __src[25] = v64;
    __src[26] = v67;
    __src[27] = v70;
    __src[28] = v73;
    __src[29] = v76;
    __src[30] = v113;
    __src[31] = v111;
    __src[32] = v110;
    *&__src[33] = v109;
    *&__src[34] = v108;
    __src[35] = 42;
    __src[36] = 0xE100000000000000;
    __src[37] = v107;
    __src[38] = v106;
    __src[39] = v105;
    __src[40] = v104;
    __src[41] = v103;
    __src[42] = v102;
    __src[43] = v101;
    __src[44] = v100;
    __src[45] = v99;
    __src[46] = v77;
    __src[47] = v80;
    __src[48] = v82;
    __src[49] = v84;
    __src[50] = v86;
    nullsub_1();
    memcpy(__dst, __src, sizeof(__dst));
  }

  else
  {
    sub_1D5F3D1E4(__dst);
  }

  return memcpy(a2, __dst, 0x198uLL);
}

double sub_1D5F3D1E4(uint64_t a1)
{
  *(a1 + 400) = 0;
  result = 0.0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_1D5F3D224()
{
  if (!qword_1EC893920)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893920);
    }
  }
}

uint64_t sub_1D5F3D27C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 408))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 288);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5F3D2C4(uint64_t result, int a2, int a3)
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
      *(result + 408) = 1;
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
      *(result + 288) = (a2 - 1);
      return result;
    }

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5F3D37C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001D73C3080 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C30A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C30C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D73C30E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C3100 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F635369626174 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73C3120 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C3140 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73C3160 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73C3180 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C31A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6C754D6F69647561 && a2 == 0xEF7265696C706974 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73C31C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73C31E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73C3200 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C3220 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C3240 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73C3260 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C3280 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C32A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C32C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C32E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73C3300 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C3320 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x616E65506E656573 && a2 == 0xEB0000000079746CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x616E655064616572 && a2 == 0xEB0000000079746CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x64656E657473696CLL && a2 == 0xEF79746C616E6550 || (sub_1D72646CC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C3340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73C3360 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C3380 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C33A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C33C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x53676E6974726F73 && a2 == 0xEC00000065726F63 || (sub_1D72646CC() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x6154776F64616873 && a2 == 0xEF65726F63536962 || (sub_1D72646CC() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D73C33E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x6F436C61626F6C67 && a2 == 0xEC00000074726F68 || (sub_1D72646CC() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x6963696666656F63 && a2 == 0xEC00000073746E65 || (sub_1D72646CC() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0x56676E69726F6373 && a2 == 0xEE006E6F69737265 || (sub_1D72646CC() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73C3400 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x696C7069746C756DLL && a2 == 0xEA00000000007265 || (sub_1D72646CC() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D73C3420 == a2)
  {

    return 40;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 40;
    }

    else
    {
      return 41;
    }
  }
}

void *sub_1D5F3E020@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D5F3EF50(0, &qword_1EC8812E8, sub_1D5F3EB64, &type metadata for DebugInspectionScoreProfile.CodingKeys, MEMORY[0x1E69E6F48]);
  v105 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v64 - v8;
  v10 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D5F3EB64();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v106);
  }

  v11 = v6;
  LOBYTE(v108) = 0;
  sub_1D72642DC();
  v13 = v12;
  LOBYTE(v108) = 1;
  sub_1D72642DC();
  v15 = v14;
  LOBYTE(v108) = 2;
  sub_1D72642DC();
  v17 = v16;
  LOBYTE(v108) = 3;
  sub_1D72642DC();
  v19 = v18;
  LOBYTE(v108) = 4;
  sub_1D72642DC();
  v21 = v20;
  LOBYTE(v108) = 5;
  sub_1D72642DC();
  v23 = v22;
  LOBYTE(v108) = 6;
  sub_1D72642DC();
  v25 = v24;
  LOBYTE(v108) = 7;
  sub_1D72642DC();
  v103 = v26;
  v104 = a2;
  LOBYTE(v108) = 8;
  sub_1D72642DC();
  v28 = v27;
  LOBYTE(v108) = 9;
  sub_1D72642DC();
  v102 = v29;
  LOBYTE(v108) = 10;
  sub_1D72642DC();
  v101 = v30;
  LOBYTE(v108) = 11;
  sub_1D72642DC();
  v100 = v31;
  LOBYTE(v108) = 12;
  sub_1D72642DC();
  v99 = v32;
  LOBYTE(v108) = 13;
  sub_1D72642DC();
  v98 = v33;
  LOBYTE(v108) = 14;
  sub_1D72642DC();
  v97 = v34;
  LOBYTE(v108) = 15;
  sub_1D72642DC();
  v96 = v35;
  LOBYTE(v108) = 16;
  sub_1D72642DC();
  v95 = v36;
  LOBYTE(v108) = 17;
  sub_1D72642DC();
  v94 = v37;
  LOBYTE(v108) = 18;
  sub_1D72642DC();
  v93 = v38;
  LOBYTE(v108) = 19;
  sub_1D72642DC();
  v92 = v39;
  LOBYTE(v108) = 20;
  sub_1D72642DC();
  v91 = v40;
  LOBYTE(v108) = 21;
  sub_1D72642DC();
  v90 = v41;
  LOBYTE(v108) = 22;
  sub_1D72642DC();
  v89 = v42;
  LOBYTE(v108) = 23;
  sub_1D72642DC();
  v88 = v43;
  LOBYTE(v108) = 24;
  sub_1D72642DC();
  v87 = v44;
  LOBYTE(v108) = 25;
  sub_1D72642DC();
  v86 = v45;
  LOBYTE(v108) = 26;
  sub_1D72642DC();
  v85 = v46;
  LOBYTE(v108) = 27;
  sub_1D72642DC();
  v84 = v47;
  LOBYTE(v108) = 28;
  sub_1D72642DC();
  v83 = v48;
  LOBYTE(v108) = 29;
  sub_1D72642DC();
  v82 = v49;
  LOBYTE(v108) = 30;
  sub_1D72642DC();
  v81 = v50;
  LOBYTE(v108) = 31;
  sub_1D72642DC();
  v80 = v51;
  LOBYTE(v108) = 32;
  sub_1D72642DC();
  v79 = v52;
  LOBYTE(v108) = 33;
  sub_1D72642DC();
  v78 = v53;
  LOBYTE(v108) = 34;
  sub_1D72642DC();
  v77 = v54;
  LOBYTE(v107[0]) = 35;
  sub_1D5F3EBB8();
  sub_1D726431C();
  v55 = v108;
  v56 = v109;
  v75 = v111;
  v76 = v110;
  v74 = v112;
  LOBYTE(v107[0]) = 36;
  sub_1D5F3EC0C();
  sub_1D726431C();
  v72 = v109;
  v73 = v108;
  v70 = v111;
  v71 = v110;
  v68 = v113;
  v69 = v112;
  LOBYTE(v108) = 37;
  v57 = sub_1D726432C();
  LOBYTE(v108) = 38;
  v65 = sub_1D726422C();
  v59 = v58;
  LOBYTE(v108) = 39;
  sub_1D72642DC();
  v67 = v60;
  v159 = 40;
  sub_1D72642DC();
  v66 = v61;
  (*(v11 + 8))(v9, v105);
  v107[0] = v13;
  v107[1] = v15;
  v107[2] = v17;
  v107[3] = v19;
  v107[4] = v21;
  v107[5] = v23;
  v107[6] = v25;
  v107[7] = v103;
  v107[8] = v28;
  v107[9] = v102;
  v107[10] = v101;
  v107[11] = v100;
  v107[12] = v99;
  v107[13] = v98;
  v107[14] = v97;
  v107[15] = v96;
  v107[16] = v95;
  v107[17] = v94;
  v107[18] = v93;
  v107[19] = v92;
  v107[20] = v91;
  v107[21] = v90;
  v107[22] = v89;
  v107[23] = v88;
  v107[24] = v87;
  v107[25] = v86;
  v107[26] = v85;
  v107[27] = v84;
  v107[28] = v83;
  v107[29] = v82;
  v107[30] = v81;
  v107[31] = v80;
  v107[32] = v79;
  v107[33] = v78;
  v107[34] = v77;
  v107[35] = v55;
  v107[36] = v56;
  v107[37] = v76;
  v107[38] = v75;
  v107[39] = v74;
  v107[40] = v73;
  v107[41] = v72;
  v107[42] = v71;
  v107[43] = v70;
  v107[44] = v69;
  v107[45] = v68;
  v107[46] = v57;
  v62 = v65;
  v107[47] = v65;
  v107[48] = v59;
  v107[49] = v67;
  v107[50] = v66;
  sub_1D5F3EC60(v107, &v108);
  __swift_destroy_boxed_opaque_existential_1(v106);
  v108 = v13;
  v109 = v15;
  v110 = v17;
  v111 = v19;
  v112 = v21;
  v113 = v23;
  v114 = v25;
  v115 = v103;
  v116 = v28;
  v117 = v102;
  v118 = v101;
  v119 = v100;
  v120 = v99;
  v121 = v98;
  v122 = v97;
  v123 = v96;
  v124 = v95;
  v125 = v94;
  v126 = v93;
  v127 = v92;
  v128 = v91;
  v129 = v90;
  v130 = v89;
  v131 = v88;
  v132 = v87;
  v133 = v86;
  v134 = v85;
  v135 = v84;
  v136 = v83;
  v137 = v82;
  v138 = v81;
  v139 = v80;
  v140 = v79;
  v141 = v78;
  v142 = v77;
  v143 = v55;
  v144 = v56;
  v145 = v76;
  v146 = v75;
  v147 = v74;
  v148 = v73;
  v149 = v72;
  v150 = v71;
  v151 = v70;
  v152 = v69;
  v153 = v68;
  v154 = v57;
  v155 = v62;
  v156 = v59;
  v157 = v67;
  v158 = v66;
  sub_1D5F3EC98(&v108);
  return memcpy(v104, v107, 0x198uLL);
}

unint64_t sub_1D5F3EB64()
{
  result = qword_1EC8812F0;
  if (!qword_1EC8812F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8812F0);
  }

  return result;
}

unint64_t sub_1D5F3EBB8()
{
  result = qword_1EC8812F8;
  if (!qword_1EC8812F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8812F8);
  }

  return result;
}

unint64_t sub_1D5F3EC0C()
{
  result = qword_1EC881300;
  if (!qword_1EC881300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881300);
  }

  return result;
}

unint64_t sub_1D5F3ECC8()
{
  result = qword_1EC881310;
  if (!qword_1EC881310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881310);
  }

  return result;
}

unint64_t sub_1D5F3ED1C()
{
  result = qword_1EC881318;
  if (!qword_1EC881318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881318);
  }

  return result;
}

unint64_t sub_1D5F3EDA4()
{
  result = qword_1EC881320;
  if (!qword_1EC881320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881320);
  }

  return result;
}

unint64_t sub_1D5F3EDFC()
{
  result = qword_1EC881328;
  if (!qword_1EC881328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881328);
  }

  return result;
}

unint64_t sub_1D5F3EE54()
{
  result = qword_1EC881330;
  if (!qword_1EC881330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881330);
  }

  return result;
}

unint64_t sub_1D5F3EEA8()
{
  result = qword_1EC881340;
  if (!qword_1EC881340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881340);
  }

  return result;
}

unint64_t sub_1D5F3EEFC()
{
  result = qword_1EC881350;
  if (!qword_1EC881350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881350);
  }

  return result;
}

void sub_1D5F3EF50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D5F3EFDC()
{
  result = qword_1EC881368;
  if (!qword_1EC881368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881368);
  }

  return result;
}

unint64_t sub_1D5F3F034()
{
  result = qword_1EC881370;
  if (!qword_1EC881370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881370);
  }

  return result;
}

unint64_t sub_1D5F3F08C()
{
  result = qword_1EC881378;
  if (!qword_1EC881378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881378);
  }

  return result;
}

unint64_t sub_1D5F3F0E4()
{
  result = qword_1EC881380;
  if (!qword_1EC881380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881380);
  }

  return result;
}

unint64_t sub_1D5F3F13C()
{
  result = qword_1EC881388;
  if (!qword_1EC881388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881388);
  }

  return result;
}

unint64_t sub_1D5F3F194()
{
  result = qword_1EC881390;
  if (!qword_1EC881390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881390);
  }

  return result;
}

void *sub_1D5F3F1F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1D5E4049C();
  v2[2] = sub_1D7263ADC();
  v2[3] = v6;
  v2[4] = a1;
  v2[5] = a2;
  swift_beginAccess();

  v7 = FormatGroupCollection.subscript.getter(a2);
  if (v7)
  {
    v8 = v7;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v3[6] = v8;
  return v3;
}

uint64_t sub_1D5F3F2DC()
{

  return swift_deallocClassInstance();
}

uint64_t FormatContentSubgroupFilterLastPrecededBy.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatContentSubgroupFilterLastPrecededBy.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D5F3F3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D5F3F440(uint64_t a1)
{
  v2 = sub_1D5F3F604();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F3F47C(uint64_t a1)
{
  v2 = sub_1D5F3F604();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupFilterLastPrecededBy.encode(to:)(void *a1)
{
  sub_1D5F3F7DC(0, &qword_1EC881398, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3F604();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D5F3F604()
{
  result = qword_1EC8813A0;
  if (!qword_1EC8813A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813A0);
  }

  return result;
}

uint64_t FormatContentSubgroupFilterLastPrecededBy.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5F3F7DC(0, &qword_1EC8813A8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3F604();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = sub_1D72642BC();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5F3F7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F3F604();
    v7 = a3(a1, &type metadata for FormatContentSubgroupFilterLastPrecededBy.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5F3F840(void *a1)
{
  a1[1] = sub_1D5F3F878();
  a1[2] = sub_1D5F3F8CC();
  result = sub_1D5F3F920();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F3F878()
{
  result = qword_1EC8813B0;
  if (!qword_1EC8813B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813B0);
  }

  return result;
}

unint64_t sub_1D5F3F8CC()
{
  result = qword_1EC8813B8;
  if (!qword_1EC8813B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813B8);
  }

  return result;
}

unint64_t sub_1D5F3F920()
{
  result = qword_1EC8813C0;
  if (!qword_1EC8813C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813C0);
  }

  return result;
}

uint64_t sub_1D5F3F98C(void *a1)
{
  sub_1D5F3F7DC(0, &qword_1EC881398, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F3F604();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D5F3FAFC()
{
  result = qword_1EC8813C8;
  if (!qword_1EC8813C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813C8);
  }

  return result;
}

unint64_t sub_1D5F3FB54()
{
  result = qword_1EC8813D0;
  if (!qword_1EC8813D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813D0);
  }

  return result;
}

unint64_t sub_1D5F3FBAC()
{
  result = qword_1EC8813D8;
  if (!qword_1EC8813D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813D8);
  }

  return result;
}

uint64_t FormatVideoPlayerOverlayData.duration.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed11FormatImageO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

uint64_t sub_1D5F3FC84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1D5F3FCE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 static FormatCodingSplitBackgroundInsetsZeroStrategy.defaultValue.getter@<Q0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1D5F3FE24();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  result = xmmword_1D7273AE0;
  *(v5 + 16) = xmmword_1D7273AE0;
  *(v5 + 32) = v4;
  *(v5 + 40) = 0;
  *a1 = v3;
  a1[1] = v5;
  return result;
}

void sub_1D5F3FE24()
{
  if (!qword_1EDF19860)
  {
    sub_1D5F3FE7C();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19860);
    }
  }
}

void sub_1D5F3FE7C()
{
  if (!qword_1EDF2C898[0])
  {
    sub_1D5C35130();
    v0 = type metadata accessor for FormatEquationToken();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF2C898);
    }
  }
}

uint64_t _s8NewsFeed45FormatCodingSplitBackgroundInsetsZeroStrategyV12shouldEncode12wrappedValueSbAA0cefG0V_tFZ_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  sub_1D5F3FE24();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v3;
  *(inited + 40) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  *(v6 + 32) = v5;
  *(v6 + 40) = 0;
  if (sub_1D633A310(v2, inited))
  {
    v7 = sub_1D633A310(v1, v6);

    v8 = v7 ^ 1;
  }

  else
  {

    v8 = 1;
  }

  return v8 & 1;
}

unint64_t sub_1D5F3FFE8(uint64_t a1)
{
  result = sub_1D5F40010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F40010()
{
  result = qword_1EC8813E0;
  if (!qword_1EC8813E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813E0);
  }

  return result;
}

unint64_t sub_1D5F40064()
{
  result = qword_1EDF0AF08;
  if (!qword_1EDF0AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AF08);
  }

  return result;
}

unint64_t sub_1D5F400B8()
{
  result = qword_1EC8813E8;
  if (!qword_1EC8813E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8813E8);
  }

  return result;
}

uint64_t sub_1D5F40124(void *a1)
{
  v3 = v1;
  sub_1D5F4118C(0, &qword_1EC881410, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F40D10();
  sub_1D7264B5C();
  LOBYTE(v14) = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v15 = v14;
    v13[23] = 1;
    sub_1D5F40D64(&v15, v13);
    sub_1D5F13DF8();
    sub_1D726443C();
    sub_1D5B952F8(v14, *(&v14 + 1));
    LOBYTE(v14) = 2;
    sub_1D72643FC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D5F402FC()
{
  v1 = 1635017060;
  if (*v0 != 1)
  {
    v1 = 0x54746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D616E656C6966;
  }
}

uint64_t sub_1D5F40358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F40DC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F40380(uint64_t a1)
{
  v2 = sub_1D5F40D10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F403BC(uint64_t a1)
{
  v2 = sub_1D5F40D10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D5F403F8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5F40EDC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D5F40454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v51 = a2;
  v40 = a3;
  v42 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v42, v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BDF8(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v47 = &v38 - v8;
  v9 = sub_1D725BD1C();
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  MEMORY[0x1EEE9AC00](v9, v11);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1D725789C();
  v13 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v14);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1D725785C();
  MEMORY[0x1EEE9AC00](v17, v18);
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1D7263D4C();

  v50 = a1;
  v52 = FormatFile.identifier.getter();
  v53 = v19;
  MEMORY[0x1DA6F9910](0x656966696E696D2DLL, 0xEE006E6F736A2E64);
  v39 = v52;
  v48 = v53;
  sub_1D72578EC();
  swift_allocObject();
  sub_1D72578DC();
  v20 = MEMORY[0x1E6967F78];
  sub_1D5B5BDF8(0, &qword_1EC8813F0, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7273AE0;
  sub_1D725782C();
  v52 = v21;
  sub_1D5F40C58(&qword_1EC8813F8, MEMORY[0x1E6967F78]);
  sub_1D5B5BDF8(0, &qword_1EC881400, v20, MEMORY[0x1E69E62F8]);
  sub_1D5F40B44();
  sub_1D7263B6C();
  sub_1D725786C();
  *v16 = 0x7974696E69666E69;
  v16[1] = 0xE800000000000000;
  v16[2] = 0x74696E69666E692DLL;
  v16[3] = 0xE900000000000079;
  v16[4] = 7233902;
  v16[5] = 0xE300000000000000;
  (*(v13 + 104))(v16, *MEMORY[0x1E6967FE0], v44);
  v22 = v45;
  sub_1D72578AC();
  v23 = v47;
  sub_1D5D3A874(v51, v47);
  v24 = v46;
  if ((*(v46 + 48))(v23, 1, v22) == 1)
  {
    sub_1D5F40BCC(v23);
  }

  else
  {
    v25 = v41;
    (*(v24 + 32))(v41, v23, v22);
    v26 = v43;
    (*(v24 + 16))(v43, v25, v22);
    swift_storeEnumTagMultiPayload();
    v27 = sub_1D72578CC();
    v29 = v28;
    v54 = *v28;
    swift_bridgeObjectRetain_n();
    Dictionary<>.seedFormatCodingVersion(mode:)(v26);
    sub_1D5F40CA0(v26, type metadata accessor for FormatVersioningMode);
    *v29 = v54;

    v27(&v52, 0);
    (*(v24 + 8))(v25, v22);
  }

  type metadata accessor for FormatFile();
  sub_1D5F40C58(&qword_1EC8857F0, type metadata accessor for FormatFile);
  v30 = v49;
  v31 = v50;
  v32 = sub_1D72578BC();
  v34 = v33;

  sub_1D5F40BCC(v51);
  sub_1D5F40CA0(v31, type metadata accessor for FormatFile);
  if (v30)
  {
  }

  v36 = v48;

  sub_1D5E3E824(v32, v34);

  sub_1D5B952F8(v32, v34);

  v37 = v40;
  *v40 = v39;
  v37[1] = v36;
  v37[2] = v32;
  v37[3] = v34;
  v37[4] = 0xD000000000000010;
  v37[5] = 0x80000001D73C3510;
  return result;
}

unint64_t sub_1D5F40B44()
{
  result = qword_1EC881408;
  if (!qword_1EC881408)
  {
    sub_1D5B5BDF8(255, &qword_1EC881400, MEMORY[0x1E6967F78], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881408);
  }

  return result;
}

uint64_t sub_1D5F40BCC(uint64_t a1)
{
  sub_1D5B5BDF8(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F40C58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5F40CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D5F40D10()
{
  result = qword_1EC881418;
  if (!qword_1EC881418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881418);
  }

  return result;
}

uint64_t sub_1D5F40DC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D5F40EDC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5F4118C(0, &qword_1EC881420, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F40D10();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v24 = v11;
  v27 = 1;
  sub_1D5F1449C();
  sub_1D726431C();
  v22 = v25;
  v23 = v26;
  LOBYTE(v25) = 2;
  v14 = sub_1D72642BC();
  v16 = v15;
  v17 = v14;
  (*(v7 + 8))(v10, v6);

  v19 = v22;
  v18 = v23;
  sub_1D5E3E824(v22, v23);

  __swift_destroy_boxed_opaque_existential_1(a1);

  sub_1D5B952F8(v19, v18);

  *a2 = v24;
  a2[1] = v13;
  a2[2] = v19;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v16;
  return result;
}

void sub_1D5F4118C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F40D10();
    v7 = a3(a1, &type metadata for DebugFormatUploadFile.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5F41204()
{
  result = qword_1EC881428;
  if (!qword_1EC881428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881428);
  }

  return result;
}

unint64_t sub_1D5F4125C()
{
  result = qword_1EC881430;
  if (!qword_1EC881430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881430);
  }

  return result;
}

unint64_t sub_1D5F412B4()
{
  result = qword_1EC881438;
  if (!qword_1EC881438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881438);
  }

  return result;
}

void sub_1D5F41308(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_1D7263BAC();
    }

    else
    {
      v3 = sub_1D7263B7C();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_1D5FD2040(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 identifier];
        v14 = sub_1D726207C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D5BFC364((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_1D7263BCC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          sub_1D5F4249C(0, &qword_1EC881448, MEMORY[0x1E69E64B8]);
          v6 = sub_1D7262B6C();
          sub_1D7263C4C();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_1D5C25E1C(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1D5C25E1C(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_1D5C25E1C(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          v2 = v33;
          if (v5 == v33)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t type metadata accessor for FormatDataManager()
{
  result = qword_1EDF10C88;
  if (!qword_1EDF10C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5F41770()
{
  result = type metadata accessor for FormatPluginData();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5F41818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for FormatReloadRequest(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v14 = result;
  v33 = MEMORY[0x1E69E7CD0];
  if (!a2 || (sub_1D5F41AA8(a2), !v15))
  {
    if (!a3)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_1D5F41AA8(a3);
    if (v18)
    {
      sub_1D5F41308(v18);
      v20 = v19;

      sub_1D5B87D50(v20);
    }

    goto LABEL_9;
  }

  sub_1D5F41308(v15);
  v17 = v16;

  sub_1D5B87D50(v17);

  if (a3)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (a4)
  {
    sub_1D5F41AA8(a4);
    if (v21)
    {
      sub_1D5F41308(v21);
      v23 = v22;

      sub_1D5B87D50(v23);
    }
  }

  if (a5)
  {
    sub_1D5F41AA8(a5);
    if (v24)
    {
      sub_1D5F41308(v24);
      v26 = v25;

      sub_1D5B87D50(v26);
    }
  }

  v27 = &v14[OBJC_IVAR____TtC8NewsFeed17FormatDataManager_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v27 + 1);
    swift_getObjectType();
    v29 = OBJC_IVAR____TtC8NewsFeed17FormatDataManager_pluginData;
    swift_beginAccess();
    sub_1D5F423D0(&v14[v29], v12);
    *&v12[*(v9 + 20)] = v33;
    v30 = *(v28 + 8);
    v31 = v14;
    v30();
    swift_unknownObjectRelease();

    return sub_1D5F425C8(v12, type metadata accessor for FormatReloadRequest);
  }

  else
  {
  }
}

void sub_1D5F41AA8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D5F4249C(0, &unk_1EC881460, MEMORY[0x1E69E6A10]);
    v2 = sub_1D7263CDC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = sub_1D5B5A498(0, &qword_1EC881450);
  v30[5] = v2;
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
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_31:
      sub_1D5F42518(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v27 << 6)), v30);
      v28 = sub_1D7263C5C();
      sub_1D5F42574(v30);
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_1D5F41F28(v29);
      v26 = v27;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 56;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_1D5F42518(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v30);
      v14 = sub_1D7263C5C();
      sub_1D5F42574(v30);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = sub_1D72636FC();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

void sub_1D5F41F28(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D72636FC();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_1D5B5A498(0, &qword_1EC881450);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_1D726370C();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void sub_1D5F42068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D7261ABC();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7261B2C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 == 5 || a5 == 2)
  {
    v26 = v17;
    sub_1D5B5A498(0, &qword_1EDF1AA30);
    v25 = sub_1D726308C();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = a2;
    v21[5] = a3;
    v21[6] = a4;
    aBlock[4] = sub_1D5F423C0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_7;
    v22 = _Block_copy(aBlock);

    sub_1D7261AEC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D5B736C8(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
    sub_1D5B73908();
    sub_1D5B736C8(&qword_1EDF1B560, sub_1D5B73908);
    sub_1D7263B6C();
    v23 = v25;
    MEMORY[0x1DA6FA730](0, v19, v13, v22);
    _Block_release(v22);

    (*(v27 + 8))(v13, v10);
    (*(v15 + 8))(v19, v26);
  }
}

uint64_t sub_1D5F423D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPluginData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5F42434()
{
  result = qword_1EC881458;
  if (!qword_1EC881458)
  {
    sub_1D5B5A498(255, &qword_1EC881450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881458);
  }

  return result;
}

void sub_1D5F4249C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B5A498(255, &qword_1EC881450);
    v7 = sub_1D5F42434();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D5F425C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5F42628@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  sub_1D5F435F0(0, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v50 - v16;
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  v18 = type metadata accessor for TagMastheadModel();
  v19 = *(a1 + *(v18 + 24));
  *(a3 + 32) = v19;
  v20 = *(a1 + *(v18 + 28));
  v21 = type metadata accessor for TagMastheadViewBackground();
  *(a3 + v21[11]) = v20;
  v22 = *a1;
  swift_getObjectType();
  v23 = v19;
  v24 = &off_1E84D3000;
  if ((FCTagProviding.forceBasicTagMasthead.getter() & 1) != 0 || ![v22 theme])
  {
    goto LABEL_8;
  }

  ObjectType = swift_getObjectType();
  v26 = FCFeedTheming.navigationChromeBackgroundImage(for:userInterfaceIdiom:)([a2 horizontalSizeClass], objc_msgSend(a2, sel_userInterfaceIdiom));
  if (!v26)
  {
    swift_unknownObjectRelease();
LABEL_8:
    *(a3 + v21[8]) = 0;
    *(a3 + v21[9]) = 0;
    v32 = 4;
    goto LABEL_9;
  }

  v27 = v26;
  v54 = v17;
  v28 = FCFeedTheming.darkStyleNavigationChromeBackgroundImage(for:userInterfaceIdiom:)([a2 horizontalSizeClass], objc_msgSend(a2, sel_userInterfaceIdiom));
  v53 = ObjectType;
  if (!v28)
  {
    v28 = v27;
  }

  v29 = v28;
  v51 = sub_1D5B5A498(0, &qword_1EDF1AB50);
  v56 = v51;
  v30 = sub_1D5EECFF8();
  v57 = v30;
  v55 = v27;
  v52 = v27;
  [a2 displayScale];
  sub_1D725E64C();
  swift_allocObject();
  *(a3 + v21[8]) = sub_1D725E63C();
  v56 = v51;
  v57 = v30;
  v55 = v29;
  v31 = v29;
  [a2 displayScale];
  swift_allocObject();
  *(a3 + v21[9]) = sub_1D725E63C();
  v32 = FCFeedTheming.navigationChromeBackgroundImageContentMode(for:userInterfaceIdiom:)([a2 horizontalSizeClass], objc_msgSend(a2, sel_userInterfaceIdiom));
  swift_unknownObjectRelease();

  v17 = v54;
  v24 = &off_1E84D3000;
LABEL_9:
  *(a3 + v21[10]) = v32;
  v33 = [v22 v24[380]];
  if (v33 && (v34 = [v33 navigationChromeBackgroundGradient], swift_unknownObjectRelease(), v34))
  {
    v53 = a2;
    v54 = v17;
    v35 = v21[6];
    v36 = v34;
    GradientDescriptor.init(from:)(v36, a3 + v35);
    v37 = sub_1D725DD3C();
    v38 = *(*(v37 - 8) + 56);
    v38(a3 + v35, 0, 1, v37);
    v39 = [v22 v24[380]];
    if (!v39 || (v40 = [v39 darkStyleNavigationChromeBackgroundGradient], swift_unknownObjectRelease(), (v41 = v40) == 0))
    {
      v41 = v36;
    }

    v42 = v54;
    GradientDescriptor.init(from:)(v41, v54);

    sub_1D5F433D0(a1);
    v38(v42, 0, 1, v37);
    return sub_1D5F4342C(v42, a3 + v21[7]);
  }

  else
  {

    sub_1D5F433D0(a1);
    v44 = v21[6];
    v45 = sub_1D725DD3C();
    v46 = *(v45 - 8);
    v47 = *(v46 + 56);
    v53 = (v46 + 56);
    v54 = v47;
    (v47)(a3 + v44, 1, 1, v45);
    v48 = a3 + v21[7];
    v49 = v54;

    return v49(v48, 1, 1, v45);
  }
}

uint64_t sub_1D5F42B3C(char *a1, void *a2)
{
  sub_1D5F435F0(0, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v44 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - v13;
  v15 = sub_1D725DD3C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v42 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x1EEE9AC00](v19, v20).n128_u64[0];
  v23 = &v38 - v22;
  v41 = *&a1[qword_1EDF3A2D8];
  [v41 setHidden_];
  v24 = *&a1[qword_1EDF3A2E0];
  [v24 setHidden_];
  v40 = a1;
  [*&a1[qword_1EDF3A2E8] setBackgroundColor_];
  v25 = type metadata accessor for TagMastheadViewBackground();
  v26 = *(v25 + 24);
  v45 = v2;
  sub_1D5F42FF8(v2 + v26, v14);
  v27 = *(v16 + 48);
  if (v27(v14, 1, v15) == 1)
  {
    sub_1D5F43078(v14);
  }

  else
  {
    v38 = v24;
    v39 = a2;
    v28 = *(v16 + 32);
    v28(v23, v14, v15);
    v29 = v44;
    sub_1D5F42FF8(v45 + *(v25 + 28), v44);
    if (v27(v29, 1, v15) == 1)
    {
      (*(v16 + 8))(v23, v15);
      sub_1D5F43078(v29);
      a2 = v39;
    }

    else
    {
      v30 = v42;
      v28(v42, v29, v15);
      [v41 setHidden_];
      v31 = [v40 traitCollection];
      v32 = [v31 userInterfaceStyle];

      if (v32 >= 2)
      {
        a2 = v39;
        v35 = v43;
        if (v32 == 2)
        {
          (*(v16 + 16))(v43, v30, v15);
        }

        else
        {
          (*(v16 + 16))(v43, v23, v15);
        }

        (*(v16 + 56))(v35, 0, 1, v15);
        sub_1D725CD5C();
        v36 = *(v16 + 8);
        v36(v30, v15);
        v36(v23, v15);
      }

      else
      {
        v33 = v43;
        (*(v16 + 16))(v43, v23, v15);
        (*(v16 + 56))(v33, 0, 1, v15);
        sub_1D725CD5C();
        v34 = *(v16 + 8);
        v34(v30, v15);
        v34(v23, v15);
        a2 = v39;
      }
    }

    v24 = v38;
  }

  return sub_1D5F430F0(v24, a2);
}

uint64_t type metadata accessor for TagMastheadViewBackground()
{
  result = qword_1EDF23EB8;
  if (!qword_1EDF23EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5F42FF8(uint64_t a1, uint64_t a2)
{
  sub_1D5F435F0(0, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F43078(uint64_t a1)
{
  sub_1D5F435F0(0, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F430F0(void *a1, void *a2)
{
  result = type metadata accessor for TagMastheadViewBackground();
  v6 = *(v2 + *(result + 32));
  if (v6)
  {
    v7 = result;
    v8 = *(v2 + *(result + 36));
    if (v8)
    {

      [a1 setHidden_];
      v9 = [a1 traitCollection];
      v10 = [v9 userInterfaceStyle];

      if (v10 == 2)
      {
        v11 = v8;
      }

      else
      {
        v11 = v6;
      }

      [a1 setClipsToBounds_];
      [a1 setContentMode_];
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      v12 = sub_1D725E64C();
      v13 = MEMORY[0x1E69D7F48];
      v17 = v12;
      v18 = MEMORY[0x1E69D7F48];
      v16[0] = v11;

      v14 = sub_1D725D0BC();
      __swift_destroy_boxed_opaque_existential_1(v16);
      if (v14)
      {
        v15 = v14;
        sub_1D725FBBC();
        [a1 layoutIfNeeded];
        [a1 setNeedsDisplay];
      }

      else
      {
        v17 = v12;
        v18 = v13;
        v16[0] = v11;
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1D725FB5C();

        return __swift_destroy_boxed_opaque_existential_1(v16);
      }
    }
  }

  return result;
}

void sub_1D5F4332C(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = a1;
      sub_1D725FBBC();
      [v3 layoutIfNeeded];
      [v3 setNeedsDisplay];
    }
  }
}

uint64_t sub_1D5F433D0(uint64_t a1)
{
  v2 = type metadata accessor for TagMastheadModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F4342C(uint64_t a1, uint64_t a2)
{
  sub_1D5F435F0(0, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D5F434D4()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_1D5B5A498(319, qword_1EDF1A6A0);
    if (v1 <= 0x3F)
    {
      sub_1D5F435F0(319, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
      if (v2 <= 0x3F)
      {
        sub_1D5F435F0(319, &qword_1EDF3B4E8, MEMORY[0x1E69D7F50]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ContentMode(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D5F435F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void __swiftcall HeadlineFontBook.init(titleFont:excerptFont:accessoryFont:publisherFont:adBadgeFont:)(NewsFeed::HeadlineFontBook *__return_ptr retstr, UIFont titleFont, UIFont excerptFont, UIFont accessoryFont, UIFont publisherFont, UIFont adBadgeFont)
{
  retstr->titleFont = titleFont;
  retstr->excerptFont = excerptFont;
  retstr->accessoryFont = accessoryFont;
  retstr->publisherFont = publisherFont;
  retstr->adBadgeFont = adBadgeFont;
}

id sub_1D5F4368C(void *a1)
{
  *&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_resizing] = *a1;

  return [v1 setNeedsLayout];
}

uint64_t sub_1D5F436D4()
{
  sub_1D5E42B34();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D72849C0;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_widthLayer);
  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_heightLayer);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_leftMarginLayer);
  v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_rightMarginLayer);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_topMarginLayer);
  v7 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_bottomMarginLayer);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  return v1;
}

unint64_t sub_1D5F43794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_resizing] = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_frameLayer;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v8 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_widthLayer;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v9 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_heightLayer;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v10 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_leftMarginLayer;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v11 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_rightMarginLayer;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v12 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_topMarginLayer;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v13 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_bottomMarginLayer;
  *&v3[v13] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  if (a3)
  {
    v14 = sub_1D726203C();
  }

  else
  {
    v14 = 0;
  }

  v49.receiver = v3;
  v49.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v49, sel_initWithStyle_reuseIdentifier_, a1, v14);

  v16 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_frameLayer;
  v17 = *&v15[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_frameLayer];
  v18 = v15;
  [v17 setLineWidth_];
  v19 = *&v15[v16];
  sub_1D5E42B34();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D72816C0;
  sub_1D5BAFAD8();
  v21 = v19;
  *(v20 + 32) = sub_1D72636EC();
  v22 = sub_1D726265C();

  [v21 setLineDashPattern_];

  v23 = *&v15[v16];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 lightGrayColor];
  v27 = [v26 CGColor];

  [v25 setStrokeColor_];
  v28 = *&v15[v16];
  v29 = [v24 clearColor];
  v30 = [v29 CGColor];

  [v28 setFillColor_];
  v31 = [v18 contentView];

  v32 = [v31 layer];
  [v32 addSublayer_];

  v48 = v18;
  result = sub_1D5F436D4();
  v34 = result;
  if (!(result >> 62))
  {
    v35 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_6;
    }

LABEL_13:

    return v48;
  }

  result = sub_1D7263BFC();
  v35 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v35 >= 1)
  {
    v36 = 0;
    v47 = *MEMORY[0x1E6979E98];
    v37 = *MEMORY[0x1E6979E78];
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1DA6FB460](v36, v34);
      }

      else
      {
        v38 = *(v34 + 8 * v36 + 32);
      }

      v39 = v38;
      ++v36;
      [v38 setLineWidth_];
      v40 = [v24 clearColor];
      v41 = [v40 CGColor];

      [v39 setFillColor_];
      [v39 setLineJoin_];
      [v39 setLineCap_];
      v42 = [v24 systemBlueColor];
      v43 = [v42 colorWithAlphaComponent_];

      v44 = [v43 CGColor];
      [v39 setStrokeColor_];

      v45 = [v48 contentView];
      v46 = [v45 layer];

      [v46 addSublayer_];
    }

    while (v35 != v36);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1D5F43D54()
{
  v123.receiver = v0;
  v123.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v123, sel_layoutSubviews);
  [v0 bounds];
  v1 = CGRectGetWidth(v124) * 0.5;
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_frameLayer];
  [v0 bounds];
  v3 = CGRectGetWidth(v125) * 0.5 - v1 * 0.5;
  [v0 bounds];
  [v2 setFrame_];
  [v2 bounds];
  v8 = [objc_opt_self() bezierPathWithRect_];
  v9 = [v8 CGPath];

  [v2 setPath_];
  v10 = sub_1D5F436D4();
  v11 = v10;
  if (v10 >> 62)
  {
    v12 = sub_1D7263BFC();
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  v13 = objc_opt_self();
  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1DA6FB460](v15, v11);
    }

    else
    {
      v16 = *(v11 + 8 * v15 + 32);
    }

    v17 = v16;
    ++v15;
    v18 = [v14 systemBlueColor];
    v19 = [v18 colorWithAlphaComponent_];

    v20 = [v19 CGColor];
    [v17 setStrokeColor_];
  }

  while (v12 != v15);
LABEL_10:

  v21 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_heightLayer];
  [v0 bounds];
  v22 = CGRectGetWidth(v127) * 0.5;
  [v2 frame];
  v23 = CGRectGetMinY(v128) + 8.0;
  [v0 bounds];
  v24 = CGRectGetWidth(v129) * 0.5;
  [v2 frame];
  v25 = CGRectGetMaxY(v130) + -8.0;
  v26 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v26 moveToPoint_];
  [v26 addLineToPoint_];
  sub_1D6089D88(v26, v22, v23, v24, v25);
  sub_1D6089D88(v26, v24, v25, v22, v23);
  v27 = [v26 CGPath];

  v119 = v21;
  [v21 setPath_];

  v28 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_widthLayer];
  [v2 frame];
  v29 = CGRectGetMinX(v131) + 8.0;
  [v0 bounds];
  v30 = CGRectGetHeight(v132) * 0.5;
  [v2 frame];
  v31 = CGRectGetMaxX(v133) + -8.0;
  [v0 bounds];
  v32 = CGRectGetHeight(v134) * 0.5;
  v33 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v33 moveToPoint_];
  [v33 addLineToPoint_];
  sub_1D6089D88(v33, v29, v30, v31, v32);
  sub_1D6089D88(v33, v31, v32, v29, v30);
  v34 = [v33 CGPath];

  v117 = v28;
  [v28 setPath_];

  v35 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_topMarginLayer];
  [v0 bounds];
  v36 = CGRectGetWidth(v135) * 0.5;
  [v0 bounds];
  v37 = CGRectGetWidth(v136) * 0.5;
  [v2 frame];
  MinY = CGRectGetMinY(v137);
  v39 = sub_1D6089EA4(v36, 8.0, v37, MinY + -8.0);
  v40 = [v39 CGPath];

  v120 = v35;
  [v35 setPath_];

  v41 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_bottomMarginLayer];
  [v0 bounds];
  v42 = CGRectGetWidth(v138) * 0.5;
  [v2 frame];
  v43 = CGRectGetMaxY(v139) + 8.0;
  [v0 bounds];
  v44 = CGRectGetWidth(v140) * 0.5;
  [v0 bounds];
  Height = CGRectGetHeight(v141);
  v46 = sub_1D6089EA4(v42, v43, v44, Height + -8.0);
  v47 = [v46 CGPath];

  [v41 setPath_];
  [v2 frame];
  v48 = CGRectGetMinY(v142) + -16.0;
  v49 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_leftMarginLayer];
  [v2 frame];
  v50 = CGRectGetMinX(v143) + -8.0;
  [v0 bounds];
  v51 = CGRectGetHeight(v144) * 0.5;
  [v2 frame];
  v52 = CGRectGetMinX(v145) + -8.0 - v48;
  [v0 bounds];
  v53 = CGRectGetHeight(v146);
  v54 = sub_1D6089EA4(v50, v51, v52, v53 * 0.5);
  v55 = [v54 CGPath];

  v118 = v49;
  [v49 setPath_];

  v56 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_rightMarginLayer];
  [v2 frame];
  v57 = CGRectGetMaxX(v147) + 8.0;
  [v0 bounds];
  v58 = CGRectGetHeight(v148) * 0.5;
  [v2 frame];
  v59 = v48 + CGRectGetMaxX(v149) + 8.0;
  [v0 bounds];
  v60 = CGRectGetHeight(v150);
  v61 = sub_1D6089EA4(v57, v58, v59, v60 * 0.5);
  v62 = [v61 CGPath];

  v121 = v56;
  [v56 setPath_];

  v63 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_resizing];
  if (!v63)
  {
    return;
  }

  v116 = v41;
  swift_beginAccess();
  v64 = v63[2];
  v122 = v63;
  if (*(v64 + 16))
  {
    sub_1D7264A0C();

    sub_1D72621EC();
    v65 = sub_1D7264A5C();
    v66 = -1 << *(v64 + 32);
    v67 = v65 & ~v66;
    if ((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
    {
      v68 = ~v66;
      while (*(*(v64 + 48) + v67) > 2u || !*(*(v64 + 48) + v67) || *(*(v64 + 48) + v67) == 2)
      {
        v69 = sub_1D72646CC();

        if (v69)
        {
          goto LABEL_23;
        }

        v67 = (v67 + 1) & v68;
        if (((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_23:

      v70 = [objc_opt_self() systemBlueColor];
      v71 = [v70 CGColor];

      [v117 setStrokeColor_];
    }

    else
    {
LABEL_19:
    }
  }

  else
  {
  }

  v72 = v63[2];
  if (*(v72 + 16))
  {
    sub_1D7264A0C();

    sub_1D72621EC();
    v73 = sub_1D7264A5C();
    v74 = -1 << *(v72 + 32);
    v75 = v73 & ~v74;
    if ((*(v72 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
    {
      v76 = ~v74;
      while (1)
      {
        v77 = *(*(v72 + 48) + v75);
        if (v77 >= 4 && v77 != 5)
        {
          break;
        }

        v78 = sub_1D72646CC();

        if (v78)
        {
          goto LABEL_34;
        }

        v75 = (v75 + 1) & v76;
        if (((*(v72 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

LABEL_34:

      v79 = [objc_opt_self() systemBlueColor];
      v80 = [v79 CGColor];

      [v119 setStrokeColor_];
    }

    else
    {
LABEL_31:
    }
  }

  v81 = v63[2];
  if (*(v81 + 16))
  {
    sub_1D7264A0C();

    sub_1D72621EC();
    v82 = sub_1D7264A5C();
    v83 = -1 << *(v81 + 32);
    v84 = v82 & ~v83;
    if ((*(v81 + 56 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84))
    {
      v85 = ~v83;
      while (1)
      {
        v86 = *(*(v81 + 48) + v84);
        if (v86 <= 2 && v86 != 1 && v86 != 2)
        {
          break;
        }

        v87 = sub_1D72646CC();

        if (v87)
        {
          goto LABEL_46;
        }

        v84 = (v84 + 1) & v85;
        if (((*(v81 + 56 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
        {

          goto LABEL_47;
        }
      }

LABEL_46:

      v88 = [objc_opt_self() systemBlueColor];
      v89 = [v88 CGColor];

      [v118 setStrokeColor_];
LABEL_47:
      v63 = v122;
    }

    else
    {
    }
  }

  v90 = v63[2];
  if (*(v90 + 16))
  {
    sub_1D7264A0C();

    sub_1D72621EC();
    v91 = sub_1D7264A5C();
    v92 = -1 << *(v90 + 32);
    v93 = v91 & ~v92;
    if ((*(v90 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93))
    {
      v94 = ~v92;
      while (*(*(v90 + 48) + v93) != 2)
      {
        v95 = sub_1D72646CC();

        if (v95)
        {
          goto LABEL_57;
        }

        v93 = (v93 + 1) & v94;
        if (((*(v90 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
        {

          goto LABEL_58;
        }
      }

LABEL_57:

      v96 = [objc_opt_self() systemBlueColor];
      v97 = [v96 CGColor];

      [v121 setStrokeColor_];
LABEL_58:
      v63 = v122;
    }

    else
    {
    }
  }

  v98 = v63[2];
  if (*(v98 + 16))
  {
    sub_1D7264A0C();

    sub_1D72621EC();
    v99 = sub_1D7264A5C();
    v100 = -1 << *(v98 + 32);
    v101 = v99 & ~v100;
    if ((*(v98 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101))
    {
      v102 = ~v100;
      while (1)
      {
        v103 = *(*(v98 + 48) + v101);
        if (v103 > 2 && v103 != 4 && v103 != 5)
        {
          break;
        }

        v104 = sub_1D72646CC();

        if (v104)
        {
          goto LABEL_70;
        }

        v101 = (v101 + 1) & v102;
        if (((*(v98 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0)
        {

          goto LABEL_71;
        }
      }

LABEL_70:

      v105 = [objc_opt_self() systemBlueColor];
      v106 = [v105 CGColor];

      [v120 setStrokeColor_];
LABEL_71:
      v63 = v122;
    }

    else
    {
    }
  }

  v107 = v63[2];
  if (!*(v107 + 16))
  {
LABEL_80:

    return;
  }

  sub_1D7264A0C();

  sub_1D72621EC();
  v108 = sub_1D7264A5C();
  v109 = -1 << *(v107 + 32);
  v110 = v108 & ~v109;
  if (((*(v107 + 56 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) == 0)
  {

    goto LABEL_80;
  }

  v111 = ~v109;
  while (1)
  {
    v112 = *(*(v107 + 48) + v110);
    if (v112 > 4)
    {
      break;
    }

    v113 = sub_1D72646CC();

    if (v113)
    {
      goto LABEL_82;
    }

    v110 = (v110 + 1) & v111;
    if (((*(v107 + 56 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) == 0)
    {

      return;
    }
  }

LABEL_82:

  v114 = [objc_opt_self() systemBlueColor];
  v115 = [v114 CGColor];

  [v116 setStrokeColor_];
}

void sub_1D5F452A4()
{
  *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_resizing) = 0;
  v1 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_frameLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v2 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_widthLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v3 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_heightLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v4 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_leftMarginLayer;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v5 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_rightMarginLayer;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v6 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_topMarginLayer;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v7 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_bottomMarginLayer;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D5F45404(char a1, uint64_t a2)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v45 - v10;
  v12 = sub_1D7264AAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v55 + 1) = a2;
  LOBYTE(v54) = a1;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v17 = sub_1D7264A7C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v11, v7);
  if ((*(v18 + 88))(v7, v17) != *MEMORY[0x1E69E75A8])
  {
    (*(v18 + 8))(v7, v17);
LABEL_7:
    (*(v13 + 8))(v16, v12);
    goto LABEL_8;
  }

  v45 = v13;
  v46 = v12;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v19 == result)
  {
    v21 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v21)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v54 = v52;
      v55 = v53[0];
      v56 = v53[1];
      sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);
      v23 = *(&v52 + 1);
      if (*(&v52 + 1))
      {
        v24 = v52;
        v25 = sub_1D5C73AB0(v52, *(&v52 + 1));
        if (v26)
        {
          v49[0] = v25;
          v49[1] = v26;
          sub_1D5BF4D9C();
          v27 = sub_1D7263A0C();
          v29 = v28;

          v30 = sub_1D5FD24A4(1uLL, v24, v23);
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v37 = MEMORY[0x1DA6F97E0](v30, v32, v34, v36);
          v39 = v38;

          *&v47[0] = v27;
          *(&v47[0] + 1) = v29;

          MEMORY[0x1DA6F9910](v37, v39);

          v23 = *(&v47[0] + 1);
          v24 = *&v47[0];
        }

        v40 = v46;
        __swift_destroy_boxed_opaque_existential_1(v53);
        sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v47, v49);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_1D7273AE0;
          *(v41 + 32) = v24;
          *(v41 + 40) = v23;
          v42 = v50;
          v43 = v51;
          __swift_project_boxed_opaque_existential_1(v49, v50);
          v44 = (*(v43 + 8))(v42, v43);
          *&v52 = v41;
          sub_1D6985160(v44);
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
          v22 = v52;
          __swift_destroy_boxed_opaque_existential_1(v49);
        }

        else
        {
          v48 = 0;
          memset(v47, 0, sizeof(v47));
          sub_1D5BFB704(v47, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1D7273AE0;
          *(v22 + 32) = v24;
          *(v22 + 40) = v23;
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v54, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    (*(v45 + 8))(v16, v46);
LABEL_8:
    v22 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v11, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F45ACC()
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v42 - v7;
  v9 = sub_1D7264AAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v50[0] + 1) = &type metadata for FormatLiveActivityBinding.Command;
  *&v49 = swift_allocObject();
  sub_1D5F58338(v0, v49 + 16);
  sub_1D5F58394(v0, v51);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v14 = sub_1D7264A7C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v8, v4);
  if ((*(v15 + 88))(v4, v14) != *MEMORY[0x1E69E75A8])
  {
    (*(v15 + 8))(v4, v14);
LABEL_7:
    (*(v10 + 8))(v13, v9);
    goto LABEL_8;
  }

  v42 = v10;
  v43 = v9;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v16 == result)
  {
    v18 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v18)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v51[0] = v49;
      v51[1] = v50[0];
      v51[2] = v50[1];
      sub_1D5D28654(v51, &v49, sub_1D5F57EB8);
      v20 = *(&v49 + 1);
      if (*(&v49 + 1))
      {
        v21 = v49;
        v22 = sub_1D5C73AB0(v49, *(&v49 + 1));
        if (v23)
        {
          v46[0] = v22;
          v46[1] = v23;
          sub_1D5BF4D9C();
          v24 = sub_1D7263A0C();
          v26 = v25;

          v27 = sub_1D5FD24A4(1uLL, v21, v20);
          v29 = v28;
          v31 = v30;
          v33 = v32;

          v34 = MEMORY[0x1DA6F97E0](v27, v29, v31, v33);
          v36 = v35;

          *&v44[0] = v24;
          *(&v44[0] + 1) = v26;

          MEMORY[0x1DA6F9910](v34, v36);

          v20 = *(&v44[0] + 1);
          v21 = *&v44[0];
        }

        v37 = v42;
        __swift_destroy_boxed_opaque_existential_1(v50);
        sub_1D5D28654(v51, &v49, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v44, v46);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_1D7273AE0;
          *(v38 + 32) = v21;
          *(v38 + 40) = v20;
          v39 = v47;
          v40 = v48;
          __swift_project_boxed_opaque_existential_1(v46, v47);
          v41 = (*(v40 + 8))(v39, v40);
          *&v49 = v38;
          sub_1D6985160(v41);
          sub_1D5F57F4C(v51, sub_1D5F57EB8);
          (*(v37 + 8))(v13, v43);
          v19 = v49;
          __swift_destroy_boxed_opaque_existential_1(v46);
        }

        else
        {
          v45 = 0;
          memset(v44, 0, sizeof(v44));
          sub_1D5BFB704(v44, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1D7273AE0;
          *(v19 + 32) = v21;
          *(v19 + 40) = v20;
          sub_1D5F57F4C(v51, sub_1D5F57EB8);
          (*(v37 + 8))(v13, v43);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v51, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v50);
    }

    (*(v42 + 8))(v13, v43);
LABEL_8:
    v19 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v8, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F461B8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v49 - v14;
  v16 = sub_1D7264AAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v59 + 1) = &type metadata for FormatSportsEventBinding.Command;
  v21 = swift_allocObject();
  *&v58 = v21;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  sub_1D5F5844C(a1, a2, a3, a4, sub_1D5E1DA1C);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v22 = sub_1D7264A7C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v15, 1, v22) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v15, v11);
  if ((*(v23 + 88))(v11, v22) != *MEMORY[0x1E69E75A8])
  {
    (*(v23 + 8))(v11, v22);
LABEL_7:
    (*(v17 + 8))(v20, v16);
    goto LABEL_8;
  }

  v49 = v17;
  v50 = v16;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v24 == result)
  {
    v26 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v26)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v58 = v56;
      v59 = v57[0];
      v60 = v57[1];
      sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);
      v28 = *(&v56 + 1);
      if (*(&v56 + 1))
      {
        v29 = v56;
        v30 = sub_1D5C73AB0(v56, *(&v56 + 1));
        if (v31)
        {
          v53[0] = v30;
          v53[1] = v31;
          sub_1D5BF4D9C();
          v32 = sub_1D7263A0C();
          v34 = v33;

          v35 = sub_1D5FD24A4(1uLL, v29, v28);
          v37 = v36;
          v39 = v38;
          v41 = v40;

          v42 = MEMORY[0x1DA6F97E0](v35, v37, v39, v41);
          v44 = v43;

          *&v51[0] = v32;
          *(&v51[0] + 1) = v34;

          MEMORY[0x1DA6F9910](v42, v44);

          v28 = *(&v51[0] + 1);
          v29 = *&v51[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v57);
        sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v51, v53);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1D7273AE0;
          *(v45 + 32) = v29;
          *(v45 + 40) = v28;
          v46 = v54;
          v47 = v55;
          __swift_project_boxed_opaque_existential_1(v53, v54);
          v48 = (*(v47 + 8))(v46, v47);
          *&v56 = v45;
          sub_1D6985160(v48);
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v20, v50);
          v27 = v56;
          __swift_destroy_boxed_opaque_existential_1(v53);
        }

        else
        {
          v52 = 0;
          memset(v51, 0, sizeof(v51));
          sub_1D5BFB704(v51, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1D7273AE0;
          *(v27 + 32) = v29;
          *(v27 + 40) = v28;
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v20, v50);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v58, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    (*(v49 + 8))(v20, v50);
LABEL_8:
    v27 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v15, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F468CC()
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - v7;
  v9 = sub_1D7264AAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v52[0] + 1) = &type metadata for FormatSportsEventBinding.Image;
  v14 = swift_allocObject();
  *&v51 = v14;
  v15 = v0[1];
  v14[1] = *v0;
  v14[2] = v15;
  *(v14 + 41) = *(v0 + 25);
  sub_1D5F5823C(v0, v53);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v16 = sub_1D7264A7C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v8, v4);
  if ((*(v17 + 88))(v4, v16) != *MEMORY[0x1E69E75A8])
  {
    (*(v17 + 8))(v4, v16);
LABEL_7:
    (*(v10 + 8))(v13, v9);
    goto LABEL_8;
  }

  v44 = v10;
  v45 = v9;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v18 == result)
  {
    v20 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v20)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v53[0] = v51;
      v53[1] = v52[0];
      v53[2] = v52[1];
      sub_1D5D28654(v53, &v51, sub_1D5F57EB8);
      v22 = *(&v51 + 1);
      if (*(&v51 + 1))
      {
        v23 = v51;
        v24 = sub_1D5C73AB0(v51, *(&v51 + 1));
        if (v25)
        {
          v48[0] = v24;
          v48[1] = v25;
          sub_1D5BF4D9C();
          v26 = sub_1D7263A0C();
          v28 = v27;

          v29 = sub_1D5FD24A4(1uLL, v23, v22);
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v36 = MEMORY[0x1DA6F97E0](v29, v31, v33, v35);
          v38 = v37;

          *&v46[0] = v26;
          *(&v46[0] + 1) = v28;

          MEMORY[0x1DA6F9910](v36, v38);

          v22 = *(&v46[0] + 1);
          v23 = *&v46[0];
        }

        v39 = v44;
        __swift_destroy_boxed_opaque_existential_1(v52);
        sub_1D5D28654(v53, &v51, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v46, v48);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1D7273AE0;
          *(v40 + 32) = v23;
          *(v40 + 40) = v22;
          v41 = v49;
          v42 = v50;
          __swift_project_boxed_opaque_existential_1(v48, v49);
          v43 = (*(v42 + 8))(v41, v42);
          *&v51 = v40;
          sub_1D6985160(v43);
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
          v21 = v51;
          __swift_destroy_boxed_opaque_existential_1(v48);
        }

        else
        {
          v47 = 0;
          memset(v46, 0, sizeof(v46));
          sub_1D5BFB704(v46, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7273AE0;
          *(v21 + 32) = v23;
          *(v21 + 40) = v22;
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v53, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    (*(v44 + 8))(v13, v45);
LABEL_8:
    v21 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v8, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F46FC8(uint64_t a1, char a2, uint64_t a3)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v46 - v12;
  v14 = sub_1D7264AAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v56 + 1) = a3;
  *&v55 = a1;
  BYTE8(v55) = a2;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v19 = sub_1D7264A7C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v13, 1, v19) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v13, v9);
  if ((*(v20 + 88))(v9, v19) != *MEMORY[0x1E69E75A8])
  {
    (*(v20 + 8))(v9, v19);
LABEL_7:
    (*(v15 + 8))(v18, v14);
    goto LABEL_8;
  }

  v46 = v15;
  v47 = v14;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v21 == result)
  {
    v23 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v23)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v55 = v53;
      v56 = v54[0];
      v57 = v54[1];
      sub_1D5D28654(&v55, &v53, sub_1D5F57EB8);
      v25 = *(&v53 + 1);
      if (*(&v53 + 1))
      {
        v26 = v53;
        v27 = sub_1D5C73AB0(v53, *(&v53 + 1));
        if (v28)
        {
          v50[0] = v27;
          v50[1] = v28;
          sub_1D5BF4D9C();
          v29 = sub_1D7263A0C();
          v31 = v30;

          v32 = sub_1D5FD24A4(1uLL, v26, v25);
          v34 = v33;
          v36 = v35;
          v38 = v37;

          v39 = MEMORY[0x1DA6F97E0](v32, v34, v36, v38);
          v41 = v40;

          *&v48[0] = v29;
          *(&v48[0] + 1) = v31;

          MEMORY[0x1DA6F9910](v39, v41);

          v25 = *(&v48[0] + 1);
          v26 = *&v48[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v54);
        sub_1D5D28654(&v55, &v53, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v48, v50);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1D7273AE0;
          *(v42 + 32) = v26;
          *(v42 + 40) = v25;
          v43 = v51;
          v44 = v52;
          __swift_project_boxed_opaque_existential_1(v50, v51);
          v45 = (*(v44 + 8))(v43, v44);
          *&v53 = v42;
          sub_1D6985160(v45);
          sub_1D5F57F4C(&v55, sub_1D5F57EB8);
          (*(v46 + 8))(v18, v47);
          v24 = v53;
          __swift_destroy_boxed_opaque_existential_1(v50);
        }

        else
        {
          v49 = 0;
          memset(v48, 0, sizeof(v48));
          sub_1D5BFB704(v48, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1D7273AE0;
          *(v24 + 32) = v26;
          *(v24 + 40) = v25;
          sub_1D5F57F4C(&v55, sub_1D5F57EB8);
          (*(v46 + 8))(v18, v47);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v55, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v54);
    }

    (*(v46 + 8))(v18, v47);
LABEL_8:
    v24 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v13, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F476A4(uint64_t a1)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v43 - v8;
  v10 = sub_1D7264AAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v53 + 1) = a1;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v15 = sub_1D7264A7C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v9, v5);
  if ((*(v16 + 88))(v5, v15) != *MEMORY[0x1E69E75A8])
  {
    (*(v16 + 8))(v5, v15);
LABEL_7:
    (*(v11 + 8))(v14, v10);
    goto LABEL_8;
  }

  v43 = v11;
  v44 = v10;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v17 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v17 == result)
  {
    v19 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v19)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v52 = v50;
      v53 = v51[0];
      v54 = v51[1];
      sub_1D5D28654(&v52, &v50, sub_1D5F57EB8);
      v21 = *(&v50 + 1);
      if (*(&v50 + 1))
      {
        v22 = v50;
        v23 = sub_1D5C73AB0(v50, *(&v50 + 1));
        if (v24)
        {
          v47[0] = v23;
          v47[1] = v24;
          sub_1D5BF4D9C();
          v25 = sub_1D7263A0C();
          v27 = v26;

          v28 = sub_1D5FD24A4(1uLL, v22, v21);
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v35 = MEMORY[0x1DA6F97E0](v28, v30, v32, v34);
          v37 = v36;

          *&v45[0] = v25;
          *(&v45[0] + 1) = v27;

          MEMORY[0x1DA6F9910](v35, v37);

          v21 = *(&v45[0] + 1);
          v22 = *&v45[0];
        }

        v38 = v43;
        __swift_destroy_boxed_opaque_existential_1(v51);
        sub_1D5D28654(&v52, &v50, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v45, v47);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_1D7273AE0;
          *(v39 + 32) = v22;
          *(v39 + 40) = v21;
          v40 = v48;
          v41 = v49;
          __swift_project_boxed_opaque_existential_1(v47, v48);
          v42 = (*(v41 + 8))(v40, v41);
          *&v50 = v39;
          sub_1D6985160(v42);
          sub_1D5F57F4C(&v52, sub_1D5F57EB8);
          (*(v38 + 8))(v14, v44);
          v20 = v50;
          __swift_destroy_boxed_opaque_existential_1(v47);
        }

        else
        {
          v46 = 0;
          memset(v45, 0, sizeof(v45));
          sub_1D5BFB704(v45, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1D7273AE0;
          *(v20 + 32) = v22;
          *(v20 + 40) = v21;
          sub_1D5F57F4C(&v52, sub_1D5F57EB8);
          (*(v38 + 8))(v14, v44);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v52, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v51);
    }

    (*(v43 + 8))(v14, v44);
LABEL_8:
    v20 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v9, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F47D5C(uint64_t a1, char a2)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v45 - v10;
  v12 = sub_1D7264AAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v55 + 1) = &type metadata for FormatPuzzleTypeBinding.Text;
  *&v54 = a1;
  BYTE8(v54) = a2 & 1;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v17 = sub_1D7264A7C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v11, v7);
  if ((*(v18 + 88))(v7, v17) != *MEMORY[0x1E69E75A8])
  {
    (*(v18 + 8))(v7, v17);
LABEL_7:
    (*(v13 + 8))(v16, v12);
    goto LABEL_8;
  }

  v45 = v13;
  v46 = v12;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v19 == result)
  {
    v21 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v21)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v54 = v52;
      v55 = v53[0];
      v56 = v53[1];
      sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);
      v23 = *(&v52 + 1);
      if (*(&v52 + 1))
      {
        v24 = v52;
        v25 = sub_1D5C73AB0(v52, *(&v52 + 1));
        if (v26)
        {
          v49[0] = v25;
          v49[1] = v26;
          sub_1D5BF4D9C();
          v27 = sub_1D7263A0C();
          v29 = v28;

          v30 = sub_1D5FD24A4(1uLL, v24, v23);
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v37 = MEMORY[0x1DA6F97E0](v30, v32, v34, v36);
          v39 = v38;

          *&v47[0] = v27;
          *(&v47[0] + 1) = v29;

          MEMORY[0x1DA6F9910](v37, v39);

          v23 = *(&v47[0] + 1);
          v24 = *&v47[0];
        }

        v40 = v46;
        __swift_destroy_boxed_opaque_existential_1(v53);
        sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v47, v49);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_1D7273AE0;
          *(v41 + 32) = v24;
          *(v41 + 40) = v23;
          v42 = v50;
          v43 = v51;
          __swift_project_boxed_opaque_existential_1(v49, v50);
          v44 = (*(v43 + 8))(v42, v43);
          *&v52 = v41;
          sub_1D6985160(v44);
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
          v22 = v52;
          __swift_destroy_boxed_opaque_existential_1(v49);
        }

        else
        {
          v48 = 0;
          memset(v47, 0, sizeof(v47));
          sub_1D5BFB704(v47, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1D7273AE0;
          *(v22 + 32) = v24;
          *(v22 + 40) = v23;
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v54, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    (*(v45 + 8))(v16, v46);
LABEL_8:
    v22 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v11, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F48434(char a1, uint64_t a2)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v45 - v10;
  v12 = sub_1D7264AAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v55 + 1) = a2;
  LOBYTE(v54) = a1 & 1;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v17 = sub_1D7264A7C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v11, v7);
  if ((*(v18 + 88))(v7, v17) != *MEMORY[0x1E69E75A8])
  {
    (*(v18 + 8))(v7, v17);
LABEL_7:
    (*(v13 + 8))(v16, v12);
    goto LABEL_8;
  }

  v45 = v13;
  v46 = v12;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v19 == result)
  {
    v21 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v21)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v54 = v52;
      v55 = v53[0];
      v56 = v53[1];
      sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);
      v23 = *(&v52 + 1);
      if (*(&v52 + 1))
      {
        v24 = v52;
        v25 = sub_1D5C73AB0(v52, *(&v52 + 1));
        if (v26)
        {
          v49[0] = v25;
          v49[1] = v26;
          sub_1D5BF4D9C();
          v27 = sub_1D7263A0C();
          v29 = v28;

          v30 = sub_1D5FD24A4(1uLL, v24, v23);
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v37 = MEMORY[0x1DA6F97E0](v30, v32, v34, v36);
          v39 = v38;

          *&v47[0] = v27;
          *(&v47[0] + 1) = v29;

          MEMORY[0x1DA6F9910](v37, v39);

          v23 = *(&v47[0] + 1);
          v24 = *&v47[0];
        }

        v40 = v46;
        __swift_destroy_boxed_opaque_existential_1(v53);
        sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v47, v49);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_1D7273AE0;
          *(v41 + 32) = v24;
          *(v41 + 40) = v23;
          v42 = v50;
          v43 = v51;
          __swift_project_boxed_opaque_existential_1(v49, v50);
          v44 = (*(v43 + 8))(v42, v43);
          *&v52 = v41;
          sub_1D6985160(v44);
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
          v22 = v52;
          __swift_destroy_boxed_opaque_existential_1(v49);
        }

        else
        {
          v48 = 0;
          memset(v47, 0, sizeof(v47));
          sub_1D5BFB704(v47, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1D7273AE0;
          *(v22 + 32) = v24;
          *(v22 + 40) = v23;
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v54, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    (*(v45 + 8))(v16, v46);
LABEL_8:
    v22 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v11, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F48C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, void, __n128))
{
  v56 = a5;
  LODWORD(v55) = BYTE1(a3);
  v9 = a3 >> 8;
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v55 - v16;
  v18 = sub_1D7264AAC();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v65 + 1) = a4;
  *&v64 = a1;
  *(&v64 + 1) = a2;
  LOBYTE(v65) = a3;
  BYTE1(v65) = v9;
  v24 = a3;
  v25 = v17;
  v56(a1, a2, v24, v55, v21);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v26 = sub_1D7264A7C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v17, 1, v26) == 1)
  {
    goto LABEL_7;
  }

  v28 = v19;
  v56 = v18;
  sub_1D5F57E24(v25, v13);
  if ((*(v27 + 88))(v13, v26) != *MEMORY[0x1E69E75A8])
  {
    (*(v27 + 8))(v13, v26);
    v18 = v56;
LABEL_7:
    (*(v19 + 8))(v23, v18);
    v33 = MEMORY[0x1E69E7CC0];
LABEL_16:
    sub_1D5D28118(v25, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v33;
  }

  v55 = v25;
  v29 = v23;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v30 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v30 == result)
  {
    v32 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v32)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v64 = v62;
      v65 = v63[0];
      v66 = v63[1];
      sub_1D5D28654(&v64, &v62, sub_1D5F57EB8);
      v34 = *(&v62 + 1);
      if (*(&v62 + 1))
      {
        v35 = v62;
        v36 = sub_1D5C73AB0(v62, *(&v62 + 1));
        if (v37)
        {
          v59[0] = v36;
          v59[1] = v37;
          sub_1D5BF4D9C();
          v38 = sub_1D7263A0C();
          v40 = v39;

          v41 = sub_1D5FD24A4(1uLL, v35, v34);
          v43 = v42;
          v45 = v44;
          v47 = v46;

          v48 = MEMORY[0x1DA6F97E0](v41, v43, v45, v47);
          v50 = v49;

          *&v57[0] = v38;
          *(&v57[0] + 1) = v40;

          MEMORY[0x1DA6F9910](v48, v50);

          v34 = *(&v57[0] + 1);
          v35 = *&v57[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v63);
        sub_1D5D28654(&v64, &v62, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v57, v59);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1D7273AE0;
          *(v51 + 32) = v35;
          *(v51 + 40) = v34;
          v52 = v60;
          v53 = v61;
          __swift_project_boxed_opaque_existential_1(v59, v60);
          v54 = (*(v53 + 8))(v52, v53);
          *&v62 = v51;
          sub_1D6985160(v54);
          sub_1D5F57F4C(&v64, sub_1D5F57EB8);
          (*(v28 + 8))(v29, v56);
          v33 = v62;
          __swift_destroy_boxed_opaque_existential_1(v59);
        }

        else
        {
          v58 = 0;
          memset(v57, 0, sizeof(v57));
          sub_1D5BFB704(v57, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_1D7273AE0;
          *(v33 + 32) = v35;
          *(v33 + 40) = v34;
          sub_1D5F57F4C(&v64, sub_1D5F57EB8);
          (*(v28 + 8))(v29, v56);
        }

        goto LABEL_15;
      }

      sub_1D5F57F4C(&v64, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v63);
    }

    (*(v19 + 8))(v29, v56);
    v33 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v25 = v55;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F493D0()
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - v7;
  v9 = sub_1D7264AAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v52[0] + 1) = &type metadata for FormatRecipeBinding.Text;
  v14 = swift_allocObject();
  *&v51 = v14;
  v15 = v0[1];
  v14[1] = *v0;
  v14[2] = v15;
  v14[3] = v0[2];
  sub_1D5F58298(v0, v53);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v16 = sub_1D7264A7C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v8, v4);
  if ((*(v17 + 88))(v4, v16) != *MEMORY[0x1E69E75A8])
  {
    (*(v17 + 8))(v4, v16);
LABEL_7:
    (*(v10 + 8))(v13, v9);
    goto LABEL_8;
  }

  v44 = v10;
  v45 = v9;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v18 == result)
  {
    v20 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v20)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v53[0] = v51;
      v53[1] = v52[0];
      v53[2] = v52[1];
      sub_1D5D28654(v53, &v51, sub_1D5F57EB8);
      v22 = *(&v51 + 1);
      if (*(&v51 + 1))
      {
        v23 = v51;
        v24 = sub_1D5C73AB0(v51, *(&v51 + 1));
        if (v25)
        {
          v48[0] = v24;
          v48[1] = v25;
          sub_1D5BF4D9C();
          v26 = sub_1D7263A0C();
          v28 = v27;

          v29 = sub_1D5FD24A4(1uLL, v23, v22);
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v36 = MEMORY[0x1DA6F97E0](v29, v31, v33, v35);
          v38 = v37;

          *&v46[0] = v26;
          *(&v46[0] + 1) = v28;

          MEMORY[0x1DA6F9910](v36, v38);

          v22 = *(&v46[0] + 1);
          v23 = *&v46[0];
        }

        v39 = v44;
        __swift_destroy_boxed_opaque_existential_1(v52);
        sub_1D5D28654(v53, &v51, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v46, v48);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1D7273AE0;
          *(v40 + 32) = v23;
          *(v40 + 40) = v22;
          v41 = v49;
          v42 = v50;
          __swift_project_boxed_opaque_existential_1(v48, v49);
          v43 = (*(v42 + 8))(v41, v42);
          *&v51 = v40;
          sub_1D6985160(v43);
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
          v21 = v51;
          __swift_destroy_boxed_opaque_existential_1(v48);
        }

        else
        {
          v47 = 0;
          memset(v46, 0, sizeof(v46));
          sub_1D5BFB704(v46, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7273AE0;
          *(v21 + 32) = v23;
          *(v21 + 40) = v22;
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v53, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    (*(v44 + 8))(v13, v45);
LABEL_8:
    v21 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v8, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F49B18(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _OWORD *))
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v48 - v12;
  v14 = sub_1D7264AAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v56[0] + 1) = a1;
  v19 = swift_allocObject();
  *&v55 = v19;
  v20 = *(v3 + 16);
  *(v19 + 16) = *v3;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v3 + 32);
  *(v19 + 64) = *(v3 + 48);
  a3(v3, v57);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v21 = sub_1D7264A7C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v13, v9);
  if ((*(v22 + 88))(v9, v21) != *MEMORY[0x1E69E75A8])
  {
    (*(v22 + 8))(v9, v21);
LABEL_7:
    (*(v15 + 8))(v18, v14);
    goto LABEL_8;
  }

  v48 = v15;
  v49 = v14;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v23 == result)
  {
    v25 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v25)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v57[0] = v55;
      v57[1] = v56[0];
      v57[2] = v56[1];
      sub_1D5D28654(v57, &v55, sub_1D5F57EB8);
      v27 = *(&v55 + 1);
      if (*(&v55 + 1))
      {
        v28 = v55;
        v29 = sub_1D5C73AB0(v55, *(&v55 + 1));
        if (v30)
        {
          v52[0] = v29;
          v52[1] = v30;
          sub_1D5BF4D9C();
          v31 = sub_1D7263A0C();
          v33 = v32;

          v34 = sub_1D5FD24A4(1uLL, v28, v27);
          v36 = v35;
          v38 = v37;
          v40 = v39;

          v41 = MEMORY[0x1DA6F97E0](v34, v36, v38, v40);
          v43 = v42;

          *&v50[0] = v31;
          *(&v50[0] + 1) = v33;

          MEMORY[0x1DA6F9910](v41, v43);

          v27 = *(&v50[0] + 1);
          v28 = *&v50[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v56);
        sub_1D5D28654(v57, &v55, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v50, v52);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_1D7273AE0;
          *(v44 + 32) = v28;
          *(v44 + 40) = v27;
          v45 = v53;
          v46 = v54;
          __swift_project_boxed_opaque_existential_1(v52, v53);
          v47 = (*(v46 + 8))(v45, v46);
          *&v55 = v44;
          sub_1D6985160(v47);
          sub_1D5F57F4C(v57, sub_1D5F57EB8);
          (*(v48 + 8))(v18, v49);
          v26 = v55;
          __swift_destroy_boxed_opaque_existential_1(v52);
        }

        else
        {
          v51 = 0;
          memset(v50, 0, sizeof(v50));
          sub_1D5BFB704(v50, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1D7273AE0;
          *(v26 + 32) = v28;
          *(v26 + 40) = v27;
          sub_1D5F57F4C(v57, sub_1D5F57EB8);
          (*(v48 + 8))(v18, v49);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v57, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v56);
    }

    (*(v48 + 8))(v18, v49);
LABEL_8:
    v26 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v13, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4A264(uint64_t a1, __int16 a2, double a3)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v47 - v12;
  v14 = sub_1D7264AAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v57 + 1) = &type metadata for FormatIssueBinding.Font;
  *&v56 = a3;
  *(&v56 + 1) = a1;
  LOWORD(v57) = a2;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v19 = sub_1D7264A7C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v13, 1, v19) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v13, v9);
  if ((*(v20 + 88))(v9, v19) != *MEMORY[0x1E69E75A8])
  {
    (*(v20 + 8))(v9, v19);
LABEL_7:
    (*(v15 + 8))(v18, v14);
    goto LABEL_8;
  }

  v47 = v15;
  v48 = v14;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v21 == result)
  {
    v23 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v23)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v56 = v54;
      v57 = v55[0];
      v58 = v55[1];
      sub_1D5D28654(&v56, &v54, sub_1D5F57EB8);
      v25 = *(&v54 + 1);
      if (*(&v54 + 1))
      {
        v26 = v54;
        v27 = sub_1D5C73AB0(v54, *(&v54 + 1));
        if (v28)
        {
          v51[0] = v27;
          v51[1] = v28;
          sub_1D5BF4D9C();
          v29 = sub_1D7263A0C();
          v31 = v30;

          v32 = sub_1D5FD24A4(1uLL, v26, v25);
          v34 = v33;
          v36 = v35;
          v38 = v37;

          v39 = MEMORY[0x1DA6F97E0](v32, v34, v36, v38);
          v41 = v40;

          *&v49[0] = v29;
          *(&v49[0] + 1) = v31;

          MEMORY[0x1DA6F9910](v39, v41);

          v25 = *(&v49[0] + 1);
          v26 = *&v49[0];
        }

        v42 = v48;
        __swift_destroy_boxed_opaque_existential_1(v55);
        sub_1D5D28654(&v56, &v54, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v49, v51);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1D7273AE0;
          *(v43 + 32) = v26;
          *(v43 + 40) = v25;
          v44 = v52;
          v45 = v53;
          __swift_project_boxed_opaque_existential_1(v51, v52);
          v46 = (*(v45 + 8))(v44, v45);
          *&v54 = v43;
          sub_1D6985160(v46);
          sub_1D5F57F4C(&v56, sub_1D5F57EB8);
          (*(v47 + 8))(v18, v42);
          v24 = v54;
          __swift_destroy_boxed_opaque_existential_1(v51);
        }

        else
        {
          v50 = 0;
          memset(v49, 0, sizeof(v49));
          sub_1D5BFB704(v49, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1D7273AE0;
          *(v24 + 32) = v26;
          *(v24 + 40) = v25;
          sub_1D5F57F4C(&v56, sub_1D5F57EB8);
          (*(v47 + 8))(v18, v42);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v56, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    (*(v47 + 8))(v18, v48);
LABEL_8:
    v24 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v13, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v24;
  }

  __break(1u);
  return result;
}