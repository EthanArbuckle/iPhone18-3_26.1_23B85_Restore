unint64_t sub_1D1200BF0()
{
  result = qword_1EC60D5B0;
  if (!qword_1EC60D5B0)
  {
    sub_1D1200F04(255, &qword_1EC60D518, sub_1D1200598);
    sub_1D12010A4(&qword_1EC60D5B8, sub_1D1200598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D5B0);
  }

  return result;
}

void sub_1D1200CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D1200418();
    v7 = v6;
    sub_1D1200794();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D1200D34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D1200D94@<D0>(uint64_t a1@<X8>)
{
  sub_1D138F98C();

  *&result = sub_1D11FEB90(a1).n128_u64[0];
  return result;
}

double sub_1D1200E14(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 121) = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_1D1200E30()
{
  result = qword_1EC60D5D0;
  if (!qword_1EC60D5D0)
  {
    sub_1D1200F04(255, &qword_1EC60D5D8, sub_1D1200F68);
    sub_1D12010A4(&qword_1EC60D5F8, sub_1D1200F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D5D0);
  }

  return result;
}

void sub_1D1200F04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D138FA0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D1200F68()
{
  if (!qword_1EC60D5E0)
  {
    sub_1D1200FFC();
    sub_1D12010A4(&qword_1EC60D5F0, sub_1D1200FFC);
    v0 = sub_1D138F9BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D5E0);
    }
  }
}

void sub_1D1200FFC()
{
  if (!qword_1EC60D5E8)
  {
    sub_1D1200380(255);
    sub_1D1200B80(&qword_1EC60D590, sub_1D1200380, sub_1D1200A28);
    v0 = sub_1D138F93C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D5E8);
    }
  }
}

uint64_t sub_1D12010A4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D120111C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VaccinationRecordFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D1201184(uint64_t a1)
{
  result = sub_1D12011AC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D12011AC()
{
  result = qword_1EC60D610;
  if (!qword_1EC60D610)
  {
    type metadata accessor for VaccinationRecordFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D610);
  }

  return result;
}

id sub_1D1201248(void *a1)
{
  if ([a1 notGiven])
  {
    if (qword_1EE06AD00 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v2 = sub_1D138D1CC();
  v4 = v3;
  sub_1D106F934(0, &qword_1EC609BE8);
  v5 = [a1 administrationDate];
  v6 = [a1 meaningfulDateTitle];
  v7 = sub_1D139016C();
  v9 = v8;

  return sub_1D11EDE68(v2, v4, v5, v7, v9);
}

id sub_1D12013F0(void *a1)
{
  if ([a1 notGiven])
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v1 = sub_1D138D1CC();
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v4 setDisplayItemType_];
      sub_1D138D1CC();
      v5 = sub_1D139012C();

      [v4 setTitle_];

      v6 = sub_1D139012C();

      [v4 setSubtitle_];

      [v4 setSeparatorStyle_];
      [v4 setSeparatorHidden_];
      [v4 setExtraTopPadding_];

      return v4;
    }
  }

  return 0;
}

id sub_1D12015F4(void *a1)
{
  if ([a1 patientReported])
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v1 = sub_1D138D1CC();
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
      [v4 setDisplayItemType_];
      sub_1D138D1CC();
      v5 = sub_1D139012C();

      [v4 setTitle_];

      v6 = sub_1D139012C();

      [v4 setSubtitle_];

      [v4 setSeparatorStyle_];
      [v4 setSeparatorHidden_];
      [v4 setExtraTopPadding_];

      return v4;
    }
  }

  return 0;
}

id sub_1D12017F8(void *a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a2();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v8 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v9 = sub_1D139012C();

    [v8 setTitle_];

    v10 = sub_1D139012C();

    [v8 setSubtitle_];

    [v8 setSeparatorStyle_];
    [v8 setSeparatorHidden_];
    [v8 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v8;
}

id sub_1D12019B4(void *a1)
{
  v1 = [a1 route];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 localizedPreferredName];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_1D139016C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_7:
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v9 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v10 = sub_1D139012C();

    [v9 setTitle_];

    v11 = sub_1D139012C();

    [v9 setSubtitle_];

    [v9 setSeparatorStyle_];
    [v9 setSeparatorHidden_];
    [v9 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v9;
}

id sub_1D1201BC4(void *a1)
{
  v1 = [a1 reasons];
  if (!v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v2 = v1;
  sub_1D106F934(0, &qword_1EC609980);
  v3 = sub_1D139045C();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_1D13910DC();
    if (v4)
    {
LABEL_4:
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = v5;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1D3886B70](v7, v3);
          }

          else
          {
            if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v8 = *(v3 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v10 = [v8 localizedPreferredName];
          if (v10)
          {
            break;
          }

          ++v7;
          if (v5 == v4)
          {
            goto LABEL_25;
          }
        }

        v11 = v10;
        v12 = sub_1D139016C();
        v25 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D10F7284(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1D10F7284((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v25;
      }

      while (v5 != v4);
      goto LABEL_25;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_25:

LABEL_26:
  v17 = Array<A>.newlineJoined.getter(v6);
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v21 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v22 = sub_1D139012C();

    [v21 setTitle_];

    v23 = sub_1D139012C();

    [v21 setSubtitle_];

    [v21 setSeparatorStyle_];
    [v21 setSeparatorHidden_];
    [v21 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v21;
}

id sub_1D1201F28(void *a1)
{
  v1 = [a1 reasonsNotGiven];
  if (!v1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v2 = v1;
  sub_1D106F934(0, &qword_1EC609980);
  v3 = sub_1D139045C();

  if (v3 >> 62)
  {
LABEL_23:
    v4 = sub_1D13910DC();
    if (v4)
    {
LABEL_4:
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        v7 = v5;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1D3886B70](v7, v3);
          }

          else
          {
            if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v8 = *(v3 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          v10 = [v8 localizedPreferredName];
          if (v10)
          {
            break;
          }

          ++v7;
          if (v5 == v4)
          {
            goto LABEL_25;
          }
        }

        v11 = v10;
        v12 = sub_1D139016C();
        v25 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D10F7284(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_1D10F7284((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v25;
      }

      while (v5 != v4);
      goto LABEL_25;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_25:

LABEL_26:
  v17 = Array<A>.newlineJoined.getter(v6);
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v21 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v22 = sub_1D139012C();

    [v21 setTitle_];

    v23 = sub_1D139012C();

    [v21 setSubtitle_];

    [v21 setSeparatorStyle_];
    [v21 setSeparatorHidden_];
    [v21 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v21;
}

id sub_1D120228C(void *a1)
{
  v1 = [a1 reaction];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139016C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  v7 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v7 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v8 = sub_1D139012C();

  [v7 setTitle_];

  v9 = sub_1D139012C();

  [v7 setSubtitle_];

  [v7 setSeparatorStyle_];
  [v7 setSeparatorHidden_];
  [v7 setExtraTopPadding_];

  return v7;
}

id sub_1D1202454(void *a1)
{
  v1 = [a1 performer];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139016C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  v7 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v7 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v8 = sub_1D139012C();

  [v7 setTitle_];

  v9 = sub_1D139012C();

  [v7 setSubtitle_];

  [v7 setSeparatorStyle_];
  [v7 setSeparatorHidden_];
  [v7 setExtraTopPadding_];

  return v7;
}

id sub_1D120261C(void *a1)
{
  sub_1D1107C14(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v28 - v4;
  v6 = [a1 doseNumber];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_1D139016C();
  v10 = v9;

  v11 = [a1 doseQuantity];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D139016C();
    v15 = v14;

    v16 = sub_1D138D67C();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    sub_1D1107C14(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D139E710;
    v18 = MEMORY[0x1E69E6158];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1D1089930();
    *(v17 + 32) = v8;
    *(v17 + 40) = v10;
    *(v17 + 96) = v18;
    *(v17 + 104) = v19;
    *(v17 + 64) = v19;
    *(v17 + 72) = v13;
    *(v17 + 80) = v15;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v8 = sub_1D138D1CC();
    v10 = v20;
    if (*(v17 + 16))
    {
      v8 = sub_1D139019C();
      v22 = v21;

      sub_1D10CD608(v5);
      v10 = v22;
    }

    else
    {
      sub_1D10CD608(v5);
    }
  }

  v23 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v23 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

    return 0;
  }

  v24 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v24 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v25 = sub_1D139012C();

  [v24 setTitle_];

  v26 = sub_1D139012C();

  [v24 setSubtitle_];

  [v24 setSeparatorStyle_];
  [v24 setSeparatorHidden_];
  [v24 setExtraTopPadding_];

  return v24;
}

id sub_1D1202A20(void *a1)
{
  v1 = [a1 lotNumber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139016C();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  v7 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v7 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v8 = sub_1D139012C();

  [v7 setTitle_];

  v9 = sub_1D139012C();

  [v7 setSubtitle_];

  [v7 setSeparatorStyle_];
  [v7 setSeparatorHidden_];
  [v7 setExtraTopPadding_];

  return v7;
}

uint64_t sub_1D1202BE8(void *a1)
{
  v10[4] = sub_1D1201248(a1);
  v10[5] = sub_1D12013F0(a1);
  v10[6] = sub_1D12015F4(a1);
  if ([a1 notGiven])
  {
    v2 = sub_1D12033D0(a1, sub_1D1249368);
  }

  else
  {
    v2 = 0;
  }

  v10[7] = v2;
  v10[8] = sub_1D12017F8(a1, sub_1D124936C);
  v10[9] = sub_1D12019B4(a1);
  v10[10] = sub_1D1201BC4(a1);
  v10[11] = sub_1D1201F28(a1);
  v10[12] = sub_1D120228C(a1);
  v10[13] = sub_1D1202454(a1);
  v10[14] = sub_1D128719C(a1);
  v10[15] = sub_1D120261C(a1);
  result = sub_1D1202A20(a1);
  v4 = 0;
  v10[16] = result;
  v5 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
  if (v4 <= 0xD)
  {
    v6 = 13;
  }

  else
  {
    v6 = v4;
  }

  while (1)
  {
    if (v4 == 13)
    {
      sub_1D10CD53C();
      swift_arrayDestroy();
      return v5;
    }

    if (v6 == v4)
    {
      break;
    }

    v7 = v10[v4++ + 4];
    if (v7)
    {
      v8 = v7;
      MEMORY[0x1D3885D90]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      result = sub_1D13904FC();
      v5 = v9;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D1202DBC(void *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D12013F0(a1);
  if (v3)
  {
    v26[4] = v3;
    v4 = v3;
    v5 = 0;
    v26[5] = sub_1D1201F28(a1);
    v25 = v2;
    while (v5 != 2)
    {
      v6 = v26[v5++ + 4];
      if (v6)
      {
        v7 = v6;
        MEMORY[0x1D3885D90]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        sub_1D13904FC();
        v2 = v25;
      }
    }

    sub_1D10CD53C();
    swift_arrayDestroy();
    sub_1D11220E0(v2);

    v2 = v27;
  }

  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_15;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_15;
  }

  v8 = sub_1D12015F4(a1);
  if (v8)
  {
    v9 = v8;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v2 = v27;
  }

LABEL_15:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_22;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_22;
  }

  if ([a1 notGiven])
  {
    v10 = sub_1D12033D0(a1, sub_1D1249368);
    if (v10)
    {
      v11 = v10;
      MEMORY[0x1D3885D90]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();

      v2 = v27;
    }
  }

LABEL_22:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_28;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_28;
  }

  v12 = sub_1D12017F8(a1, sub_1D124936C);
  if (v12)
  {
    v13 = v12;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v2 = v27;
  }

LABEL_28:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_34;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_34;
  }

  v14 = sub_1D12019B4(a1);
  if (v14)
  {
    v15 = v14;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v2 = v27;
  }

LABEL_34:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_40;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_40;
  }

  v16 = sub_1D1201BC4(a1);
  if (v16)
  {
    v17 = v16;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v2 = v27;
  }

LABEL_40:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_46;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_46;
  }

  v18 = sub_1D120228C(a1);
  if (v18)
  {
    v19 = v18;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v2 = v27;
  }

LABEL_46:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      goto LABEL_52;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_52;
  }

  v20 = sub_1D1202454(a1);
  if (v20)
  {
    v21 = v20;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v2 = v27;
  }

LABEL_52:
  if (v2 >> 62)
  {
    if (sub_1D13910DC() > 1)
    {
      return v2;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    return v2;
  }

  v22 = sub_1D128719C(a1);
  if (v22)
  {
    v23 = v22;
    MEMORY[0x1D3885D90]();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    return v27;
  }

  return v2;
}

id sub_1D12033D0(void *a1, uint64_t (*a2)(void))
{
  v3 = a1;
  v4 = a2();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v8 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v9 = sub_1D139012C();

    [v8 setTitle_];

    v10 = sub_1D139012C();

    [v8 setSubtitle_];

    [v8 setSeparatorStyle_];
    [v8 setSeparatorHidden_];
    [v8 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v8;
}

uint64_t UDCListDataSource.init(listManager:healthStore:collectionView:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_1EE06A158) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakInit();
  *(v4 + qword_1EE06A148) = 0;
  *(v4 + qword_1EC60D618) = a1;
  *(v4 + qword_1EE06A160) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v19[0] = 0;
  v19[1] = 0xE000000000000000;

  v12 = a2;
  sub_1D13911EC();

  strcpy(v19, "MutableArray<");
  HIWORD(v19[1]) = -4864;
  sub_1D138D5DC();
  v13 = sub_1D138D59C();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x1D3885C10](v13, v15);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  v16 = sub_1D138E56C();

  sub_1D1203E7C();

  return v16;
}

uint64_t sub_1D12037A4()
{
  sub_1D138E71C();
  sub_1D13908AC();
  sub_1D138EA0C();
  return sub_1D13908BC();
}

uint64_t UDCListDataSource.deinit()
{
  v1 = qword_1EE06A158;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1D139108C();
    sub_1D138F65C();
    sub_1D1204CEC(&qword_1EC60BEA8, MEMORY[0x1E695BF10]);
    result = sub_1D139070C();
    v5 = v19;
    v4 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
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
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_1D102CC30();

      v17 = sub_1D138E5CC();

      MEMORY[0x1D3888420](v17 + qword_1EE06A150);

      return v17;
    }

    while (1)
    {
      sub_1D138F64C();

      v7 = v14;
      v8 = v15;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D139110C())
      {
        sub_1D138F65C();
        swift_dynamicCast();
        v14 = v7;
        v15 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1203AB0()
{
  sub_1D1204C0C();
}

uint64_t sub_1D1203AD8(uint64_t a1)
{
  v3 = qword_1EC60D618;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_1D1203B78(void *a1)
{
  sub_1D1204C50();
}

void (*sub_1D1203BB0(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1EE06A150;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D1203C48;
}

void sub_1D1203C48(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_1D1203CC4()
{
  v0 = sub_1D1204CA8();

  return v0;
}

void sub_1D1203CEC(uint64_t a1)
{
  v3 = qword_1EE06A160;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1D1203DA4()
{
  v1 = qword_1EE06A148;
  v2 = *(v0 + qword_1EE06A148);
  if (v2)
  {
    v3 = *(v0 + qword_1EE06A148);
  }

  else
  {
    v4 = sub_1D1204754(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D1203E08(uint64_t a1)
{
  v2 = *(v1 + qword_1EE06A148);
  *(v1 + qword_1EE06A148) = a1;
}

void (*sub_1D1203E1C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1D1203DA4();
  return sub_1D1203E64;
}

void sub_1D1203E64(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + qword_1EE06A148);
  *(v1 + qword_1EE06A148) = v2;
}

uint64_t sub_1D1203E7C()
{
  v25 = *v0;
  sub_1D1205260();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v25 + class metadata base offset for UDCListDataSource;
  v24 = *(v25 + class metadata base offset for UDCListDataSource);
  sub_1D139052C();
  swift_getTupleTypeMetadata2();
  v5 = sub_1D138F62C();
  v6 = sub_1D106F934(255, &qword_1EE06B760);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1D10EDC58();
  v27 = v5;
  v28 = v6;
  v29 = WitnessTable;
  v30 = v8;
  v9 = sub_1D138F5FC();
  v23 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v27 = (*(v4 + 192))(v10);
  v13 = sub_1D1390A7C();
  v26 = v13;
  v14 = sub_1D1390A2C();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  sub_1D138F8BC();
  sub_1D10D5C04(v3);

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v18 = v24;
  v17 = v25;
  v16[2] = v24;
  v19 = *(v17 + class metadata base offset for UDCListDataSource + 8);
  v16[3] = v19;
  v16[4] = v15;
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = sub_1D12052B8;
  v20[5] = v16;
  swift_getWitnessTable();
  sub_1D138F90C();

  (*(v23 + 8))(v12, v9);
  swift_beginAccess();
  sub_1D138F63C();
  swift_endAccess();
}

uint64_t sub_1D1204234@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1D138E52C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138E57C();
  v9 = sub_1D138D81C();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 >= *(v8 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  (*(v5 + 16))(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v4);

  sub_1D138E51C();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  if (!v11)
  {
    if (qword_1EE06AD00 == -1)
    {
LABEL_5:
      sub_1D138D1CC();
      goto LABEL_6;
    }

LABEL_9:
    swift_once();
    goto LABEL_5;
  }

LABEL_6:
  v12 = sub_1D138D81C();
  (*(*v1 + class metadata base offset for UDCListDataSource + 208))(v12);
  v13 = sub_1D138D81C();
  v14 = (*(*v1 + class metadata base offset for UDCListDataSource + 216))(v13);
  sub_1D102CE24(v14);
  sub_1D138F37C();
  v15 = sub_1D138DE3C();
  swift_allocObject();
  v16 = sub_1D138DE1C();
  a1[3] = v15;
  a1[4] = sub_1D1204CEC(&qword_1EC60B610, MEMORY[0x1E69A34C8]);
  result = sub_1D102CC60(v14);
  *a1 = v16;
  return result;
}

uint64_t sub_1D1204598@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D138E6BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E60C();
  sub_1D138E66C();
  sub_1D11580B0();
  v7 = *(v6 + 48);
  (*(v3 + 16))(a1, v5, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(v3 + 8))(v5, v2);
  *(a1 + v7) = Strong;
  v9 = *MEMORY[0x1E69A36B0];
  v10 = sub_1D138E5EC();
  v11 = *(v10 - 8);
  (*(v11 + 104))(a1, v9, v10);
  return (*(v11 + 56))(a1, 0, 1, v10);
}

id sub_1D1204754(uint64_t a1)
{
  v2 = qword_1EE06A160;
  swift_beginAccess();
  return [objc_allocWithZone(MEMORY[0x1E696C558]) initWithHealthStore_];
}

void *sub_1D120480C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + class metadata base offset for UDCListDataSource + 200))(a1, a2);
    sub_1D138E58C();

    sub_1D138E59C();
  }

  return result;
}

void sub_1D1204988()
{

  MEMORY[0x1D3888420](v0 + qword_1EE06A150);

  v1 = *(v0 + qword_1EE06A148);
}

uint64_t UDCListDataSource.__deallocating_deinit()
{
  UDCListDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D1204C0C()
{
  v1 = qword_1EC60D618;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D1204CA8()
{
  v1 = qword_1EE06A160;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D1204CEC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1205260()
{
  if (!qword_1EE06A620)
  {
    sub_1D1390A2C();
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A620);
    }
  }
}

uint64_t NotificationPolicy.__allocating_init(healthStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1D1207E1C(a1);
  v5 = v4;

  return v5;
}

uint64_t NotificationPolicy.init(healthStore:)(void *a1)
{
  sub_1D1207E1C(a1);
  v3 = v2;

  return v3;
}

uint64_t sub_1D1205364(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1EC608EA8 != -1)
  {
    swift_once();
  }

  if (sub_1D136B6F0())
  {
    v4 = 0;
  }

  else
  {
    v4 = 27;
  }

  return a3(v4);
}

uint64_t sub_1D1205598(uint64_t a1, uint64_t (*a2)(void))
{
  swift_getObjectType();
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F09C();
  v7 = sub_1D138F0AC();
  v8 = sub_1D139081C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = v3;
    v10 = v9;
    v11 = swift_slowAlloc();
    v20 = a2;
    v21 = v11;
    v18 = v11;
    *v10 = 136315394;
    v12 = sub_1D139184C();
    v14 = sub_1D11DF718(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1D11DF718(0xD000000000000046, 0x80000001D13C3EE0, &v21);
    _os_log_impl(&dword_1D101F000, v7, v8, "%s %s running", v10, 0x16u);
    v15 = v18;
    swift_arrayDestroy();
    v16 = v15;
    a2 = v20;
    MEMORY[0x1D38882F0](v16, -1, -1);
    MEMORY[0x1D38882F0](v10, -1, -1);

    (*(v4 + 8))(v6, v19);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  sub_1D120768C();
  return a2();
}

uint64_t sub_1D12057E4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = a1;
  ObjectType = swift_getObjectType();
  sub_1D1208F34(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v60 - v8;
  v10 = sub_1D138D39C();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138F0BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  sub_1D138F09C();
  v19 = sub_1D138F0AC();
  v20 = sub_1D139081C();
  v21 = os_log_type_enabled(v19, v20);
  v64 = v13;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v61 = v12;
    v23 = v22;
    v24 = swift_slowAlloc();
    v62 = v4;
    v60 = v24;
    v69 = v24;
    *v23 = 136315394;
    v25 = sub_1D139184C();
    v27 = v9;
    v28 = a3;
    v29 = sub_1D11DF718(v25, v26, &v69);

    *(v23 + 4) = v29;
    a3 = v28;
    v9 = v27;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1D11DF718(0xD000000000000036, 0x80000001D13C3EA0, &v69);
    _os_log_impl(&dword_1D101F000, v19, v20, "%s %s running", v23, 0x16u);
    v30 = v60;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v30, -1, -1);
    v31 = v23;
    v12 = v61;
    v13 = v64;
    MEMORY[0x1D38882F0](v31, -1, -1);
  }

  v32 = *(v13 + 8);
  v32(v18, v12);
  v33 = [v68 notification];
  sub_1D139085C();

  v35 = v66;
  v34 = v67;
  if ((*(v66 + 6))(v9, 1, v67) == 1)
  {
    sub_1D1208DFC(v9, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v36 = v9;
    v37 = v32;
    (*(v35 + 4))(v65, v36, v34);
    v38 = [v68 actionIdentifier];
    v39 = sub_1D139016C();
    v41 = v40;

    if (v39 == sub_1D139016C() && v41 == v42)
    {
    }

    else
    {
      v43 = sub_1D139162C();

      if ((v43 & 1) == 0)
      {
        v54 = v65;
        sub_1D120768C();
        (*(v66 + 1))(v54, v67);
        goto LABEL_14;
      }
    }

    (*(v66 + 1))(v65, v67);
    v32 = v37;
  }

  sub_1D138F09C();
  v44 = sub_1D138F0AC();
  v45 = sub_1D13907FC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v67 = v32;
    v47 = v46;
    v48 = swift_slowAlloc();
    v69 = v48;
    *v47 = 136315394;
    v49 = sub_1D139184C();
    v66 = v15;
    v51 = v12;
    v52 = a2;
    v53 = sub_1D11DF718(v49, v50, &v69);

    *(v47 + 4) = v53;
    a2 = v52;
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_1D11DF718(0xD000000000000036, 0x80000001D13C3EA0, &v69);
    _os_log_impl(&dword_1D101F000, v44, v45, "%s %s No content request URL found", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v48, -1, -1);
    MEMORY[0x1D38882F0](v47, -1, -1);

    v67(v66, v51);
  }

  else
  {

    v32(v15, v12);
  }

LABEL_14:
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  v57 = v68;
  *(v56 + 16) = v55;
  *(v56 + 24) = v57;
  *(v56 + 32) = a2;
  *(v56 + 40) = a3;

  v58 = v57;

  sub_1D1205F0C(v58, sub_1D1208F28, v56);
}

void sub_1D1205E94(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1D1206BFC(a2, a3, a4);
  }
}

void sub_1D1205F0C(void *a1, char *a2, char *a3)
{
  v4 = v3;
  v74 = a1;
  ObjectType = swift_getObjectType();
  v7 = sub_1D138DAFC();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1208F34(0, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v69 = &v63 - v10;
  v11 = sub_1D138D5EC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v63 - v15;
  v16 = sub_1D138F0BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  sub_1D138F09C();
  v22 = sub_1D138F0AC();
  LODWORD(v71) = sub_1D139081C();
  v75 = v22;
  v23 = os_log_type_enabled(v22, v71);
  v76 = v17;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v79[0] = v63;
    *v24 = 136315394;
    v25 = sub_1D139184C();
    v27 = sub_1D11DF718(v25, v26, v79);
    v64 = v16;
    v28 = a2;
    v29 = a3;
    v30 = v27;

    *(v24 + 4) = v30;
    a3 = v29;
    a2 = v28;
    v16 = v64;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_1D11DF718(0xD00000000000003BLL, 0x80000001D13C3E60, v79);
    v31 = v75;
    _os_log_impl(&dword_1D101F000, v75, v71, "%s %s running", v24, 0x16u);
    v32 = v63;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v32, -1, -1);
    MEMORY[0x1D38882F0](v24, -1, -1);

    v71 = *(v76 + 8);
  }

  else
  {

    v71 = *(v17 + 8);
  }

  v71(v21, v16);
  sub_1D138D94C();
  v33 = *(v4 + OBJC_IVAR____TtC15HealthRecordsUI18NotificationPolicy_healthStore);
  v75 = sub_1D138D92C();
  sub_1D138D93C();
  v34 = [v74 notification];
  v35 = [v34 request];

  v74 = v35;
  v36 = [v35 content];
  v37 = [v36 userInfo];

  v38 = sub_1D138FFFC();
  v77 = sub_1D139016C();
  v78 = v39;
  sub_1D139116C();
  if (*(v38 + 16) && (v40 = sub_1D129E400(v79), (v41 & 1) != 0))
  {
    sub_1D109F94C(*(v38 + 56) + 32 * v40, v80);
    sub_1D1116E48(v79);
    if (swift_dynamicCast())
    {
      v42 = v69;
      sub_1D138D58C();

      if ((*(v12 + 48))(v42, 1, v11) != 1)
      {

        v58 = v70;
        (*(v12 + 32))(v70, v42, v11);
        v59 = [v74 identifier];
        v76 = v4;
        v60 = v59;
        sub_1D139016C();

        (*(v12 + 16))(v65, v58, v11);
        v61 = v66;
        sub_1D138DAEC();
        v79[0] = sub_1D138D91C();
        v62 = swift_allocObject();
        v62[2] = a2;
        v62[3] = a3;
        v62[4] = ObjectType;
        sub_1D1208E64();
        sub_1D1208ED0();

        sub_1D138F85C();

        swift_beginAccess();
        sub_1D138F63C();
        swift_endAccess();

        (*(v67 + 8))(v61, v68);
        (*(v12 + 8))(v70, v11);
        return;
      }

      v43 = v16;
      sub_1D1208DFC(v42, &qword_1EC60D6B0, MEMORY[0x1E69695A8]);
    }

    else
    {
      v43 = v16;
    }
  }

  else
  {
    v43 = v16;
    sub_1D1116E48(v79);
  }

  v44 = v72;
  sub_1D138F09C();

  v45 = sub_1D138F0AC();
  v46 = sub_1D13907FC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v69 = a3;
    v70 = a2;
    v49 = v48;
    v79[0] = v48;
    *v47 = 136446466;
    v50 = sub_1D139184C();
    v52 = sub_1D11DF718(v50, v51, v79);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2080;
    v53 = sub_1D139000C();
    v55 = v54;

    v56 = sub_1D11DF718(v53, v55, v79);

    *(v47 + 14) = v56;
    _os_log_impl(&dword_1D101F000, v45, v46, "%{public}s Could not set notification acknowledgement: Missing identifier in user info: %s", v47, 0x16u);
    swift_arrayDestroy();
    a2 = v70;
    MEMORY[0x1D38882F0](v49, -1, -1);
    MEMORY[0x1D38882F0](v47, -1, -1);
  }

  else
  {
  }

  v57 = (v71)(v44, v43);
  (a2)(v57);
}

uint64_t sub_1D1206888(void **a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = sub_1D138F0BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = *a1;
  if (!*a1)
  {
    sub_1D138F09C();
    v30 = sub_1D138F0AC();
    v31 = sub_1D139081C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = a2;
      v34 = v33;
      v46 = v33;
      *v32 = 136446210;
      v35 = sub_1D139184C();
      v37 = v6;
      v38 = sub_1D11DF718(v35, v36, &v46);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_1D101F000, v30, v31, "%{public}s Successfully set notification acknowledgement", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v39 = v34;
      a2 = v44;
      MEMORY[0x1D38882F0](v39, -1, -1);
      MEMORY[0x1D38882F0](v32, -1, -1);

      v29 = (*(v7 + 8))(v9, v37);
      return a2(v29);
    }

    v40 = *(v7 + 8);
    v41 = v9;
LABEL_8:
    v29 = v40(v41, v6);
    return a2(v29);
  }

  sub_1D138F09C();
  v14 = v13;
  v15 = sub_1D138F0AC();
  v16 = sub_1D13907FC();

  if (!os_log_type_enabled(v15, v16))
  {

    v40 = *(v7 + 8);
    v41 = v12;
    goto LABEL_8;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v43 = v6;
  v19 = v18;
  v46 = v18;
  *v17 = 136446466;
  v20 = sub_1D139184C();
  v22 = sub_1D11DF718(v20, v21, &v46);
  v44 = a3;
  v23 = a2;
  v24 = v22;

  *(v17 + 4) = v24;
  *(v17 + 12) = 2080;
  v45 = v13;
  v25 = v13;
  sub_1D10922EC();
  v26 = sub_1D139020C();
  v28 = sub_1D11DF718(v26, v27, &v46);
  a2 = v23;

  *(v17 + 14) = v28;
  _os_log_impl(&dword_1D101F000, v15, v16, "%{public}s Could not set notification acknowledgement: %s", v17, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1D38882F0](v19, -1, -1);
  MEMORY[0x1D38882F0](v17, -1, -1);

  v29 = (*(v7 + 8))(v12, v43);
  return a2(v29);
}

uint64_t sub_1D1206BFC(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v68 = a3;
  v69 = a2;
  v63 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_1D138D57C();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v11 = sub_1D138F0BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  sub_1D138F09C();
  v17 = sub_1D138F0AC();
  v18 = sub_1D139081C();
  v19 = os_log_type_enabled(v17, v18);
  v64 = ObjectType;
  v70 = v11;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v62 = v4;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136315394;
    v23 = sub_1D139184C();
    v25 = sub_1D11DF718(v23, v24, aBlock);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1D11DF718(0xD00000000000003ALL, 0x80000001D13C3DF0, aBlock);
    _os_log_impl(&dword_1D101F000, v17, v18, "%s %s running", v20, 0x16u);
    swift_arrayDestroy();
    v4 = v62;
    MEMORY[0x1D38882F0](v22, -1, -1);
    v26 = v20;
    v11 = v70;
    MEMORY[0x1D38882F0](v26, -1, -1);
  }

  v27 = *(v12 + 8);
  v28 = v27(v16, v11);
  if (*(v4 + OBJC_IVAR____TtC15HealthRecordsUI18NotificationPolicy_shouldDismissNotificationsUrgently) != 1)
  {
    return v69(v28);
  }

  v61 = v27;
  v62 = v12;
  v29 = [v63 notification];
  v30 = [v29 request];

  v31 = [v30 identifier];
  v32 = v31;
  if (!v31)
  {
    sub_1D139016C();
    v32 = sub_1D139012C();
  }

  v60 = sub_1D139016C();
  v34 = v33;
  sub_1D138D56C();
  sub_1D139064C();
  sub_1D138D4DC();
  v35 = objc_allocWithZone(MEMORY[0x1E696C2B8]);
  v36 = sub_1D138D4EC();
  v37 = [v35 initWithAction:1 categoryIdentifier:v32 expirationDate:v36];

  v38 = v67;
  sub_1D138F09C();

  v39 = sub_1D138F0AC();
  v40 = sub_1D139081C();
  v63 = v34;

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v59 = v10;
    v43 = v42;
    aBlock[0] = v42;
    *v41 = 136446466;
    v44 = v64;
    v45 = sub_1D139184C();
    v47 = sub_1D11DF718(v45, v46, aBlock);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2080;
    v48 = v60;
    *(v41 + 14) = sub_1D11DF718(v60, v63, aBlock);
    _os_log_impl(&dword_1D101F000, v39, v40, "%{public}s Sending dismiss instruction for %s", v41, 0x16u);
    swift_arrayDestroy();
    v49 = v43;
    v10 = v59;
    MEMORY[0x1D38882F0](v49, -1, -1);
    MEMORY[0x1D38882F0](v41, -1, -1);

    v61(v67, v70);
  }

  else
  {

    v61(v38, v70);
    v44 = v64;
    v48 = v60;
  }

  v51 = *(v4 + OBJC_IVAR____TtC15HealthRecordsUI18NotificationPolicy_notificationSyncStore);
  v52 = swift_allocObject();
  v53 = v63;
  v52[2] = v48;
  v52[3] = v53;
  v54 = v68;
  v52[4] = v69;
  v52[5] = v54;
  v52[6] = v44;
  aBlock[4] = sub_1D1208DEC;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D112A218;
  aBlock[3] = &block_descriptor_20;
  v55 = _Block_copy(aBlock);
  v56 = v51;

  [v56 sendNotificationInstruction:v37 completion:v55];
  _Block_release(v55);

  v57 = v66;
  v58 = *(v65 + 8);
  v58(v71, v66);
  return (v58)(v10, v57);
}

uint64_t sub_1D1207258(int a1, void *a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v57 = a5;
  LODWORD(v54) = a1;
  v12 = sub_1D138F0BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  sub_1D138F09C();

  v18 = sub_1D138F0AC();
  v19 = sub_1D139081C();

  v53 = v19;
  v20 = os_log_type_enabled(v18, v19);
  v51 = a7;
  v52 = a3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v55 = v12;
    v22 = v21;
    v23 = swift_slowAlloc();
    v56 = a6;
    v24 = v23;
    v60 = v23;
    *v22 = 136446722;
    v25 = sub_1D139184C();
    v27 = sub_1D11DF718(v25, v26, &v60);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    v28 = a4;
    *(v22 + 14) = sub_1D11DF718(a3, a4, &v60);
    *(v22 + 22) = 1024;
    *(v22 + 24) = v54 & 1;
    _os_log_impl(&dword_1D101F000, v18, v53, "%{public}s Sent dismiss instruction for %s successfully: %{BOOL}d", v22, 0x1Cu);
    swift_arrayDestroy();
    v29 = v24;
    a6 = v56;
    MEMORY[0x1D38882F0](v29, -1, -1);
    v30 = v22;
    v12 = v55;
    MEMORY[0x1D38882F0](v30, -1, -1);
  }

  else
  {
    v28 = a4;
  }

  v31 = *(v13 + 8);
  v32 = v31(v17, v12);
  if (a2)
  {
    v54 = v13;
    v33 = a2;
    sub_1D138F09C();

    v34 = a2;
    v35 = sub_1D138F0AC();
    v36 = sub_1D13907FC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55 = v12;
      v39 = v38;
      v60 = v38;
      *v37 = 136446722;
      v40 = sub_1D139184C();
      v42 = sub_1D11DF718(v40, v41, &v60);
      v56 = a6;
      v43 = v42;

      *(v37 + 4) = v43;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_1D11DF718(v52, v28, &v60);
      *(v37 + 22) = 2082;
      v59 = a2;
      v44 = a2;
      sub_1D10922EC();
      v45 = sub_1D139020C();
      v47 = sub_1D11DF718(v45, v46, &v60);

      *(v37 + 24) = v47;
      _os_log_impl(&dword_1D101F000, v35, v36, "%{public}s Unable to send dismiss instruction for %s. %{public}s", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v39, -1, -1);
      MEMORY[0x1D38882F0](v37, -1, -1);

      v48 = v55;
      v49 = v58;
    }

    else
    {

      v49 = v58;
      v48 = v12;
    }

    v32 = v31(v49, v48);
  }

  return v57(v32);
}

void sub_1D120768C()
{
  ObjectType = swift_getObjectType();
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D138D30C();
    v4 = swift_allocObject();
    *(v4 + 16) = ObjectType;
    v6[4] = sub_1D1208DCC;
    v6[5] = v4;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1D1382B18;
    v6[3] = &block_descriptor_38;
    v5 = _Block_copy(v6);

    [v2 openURL:v3 configuration:0 completionHandler:v5];
    _Block_release(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D12077B0(uint64_t a1, void *a2)
{
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = a2;
    sub_1D138F09C();
    v8 = a2;
    v9 = sub_1D138F0AC();
    v10 = sub_1D13907FC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v20 = v3;
      v12 = v11;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v12 = 136315394;
      v15 = sub_1D139184C();
      v17 = sub_1D11DF718(v15, v16, &v21);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&dword_1D101F000, v9, v10, "%s Unable to open URL for ViewHealthRecords: %@", v12, 0x16u);
      sub_1D1208DFC(v13, &qword_1EE06A518, sub_1D10C94AC);
      MEMORY[0x1D38882F0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1D38882F0](v14, -1, -1);
      MEMORY[0x1D38882F0](v12, -1, -1);

      (*(v4 + 8))(v6, v20);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_1D1207A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_1D13905AC();
  v5[5] = sub_1D139059C();
  v5[6] = sub_1D139059C();
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_1D1207ACC;

  return sub_1D130871C(0xD000000000000022, 0x80000001D13C3FC0);
}

uint64_t sub_1D1207ACC()
{

  v1 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D1207C08, v1, v0);
}

uint64_t sub_1D1207C08()
{

  v1 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D1207C8C, v1, v0);
}

uint64_t sub_1D1207C8C()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

id NotificationPolicy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationPolicy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationPolicy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D1207E1C(void *a1)
{
  v3 = [objc_opt_self() sharedBehavior];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 features];

    if (v5)
    {
      v6 = OBJC_IVAR____TtC15HealthRecordsUI18NotificationPolicy_shouldDismissNotificationsUrgently;
      v7 = [v5 urgentNotificationDismiss];

      v1[v6] = v7;
      *&v1[OBJC_IVAR____TtC15HealthRecordsUI18NotificationPolicy_cancellables] = MEMORY[0x1E69E7CD0];
      *&v1[OBJC_IVAR____TtC15HealthRecordsUI18NotificationPolicy_healthStore] = a1;
      v8 = [objc_allocWithZone(MEMORY[0x1E696C2C8]) initWithClientIdentifier:*MEMORY[0x1E69A3EF0] healthStore:a1];
      *&v1[OBJC_IVAR____TtC15HealthRecordsUI18NotificationPolicy_notificationSyncStore] = v8;
      v9.receiver = v1;
      v9.super_class = type metadata accessor for NotificationPolicy();
      objc_msgSendSuper2(&v9, sel_init);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D1207F44(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_1D1208F34(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_1D138F0BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F09C();
  v11 = sub_1D138F0AC();
  v12 = sub_1D139081C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v7;
    v14 = v13;
    v27 = swift_slowAlloc();
    v29 = v27;
    *v14 = 136315394;
    v15 = sub_1D139184C();
    v17 = a1;
    v18 = a2;
    v19 = sub_1D11DF718(v15, v16, &v29);

    *(v14 + 4) = v19;
    a2 = v18;
    a1 = v17;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1D11DF718(0xD000000000000040, 0x80000001D13C3F70, &v29);
    _os_log_impl(&dword_1D101F000, v11, v12, "%s %s running", v14, 0x16u);
    v20 = v27;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v20, -1, -1);
    MEMORY[0x1D38882F0](v14, -1, -1);

    (*(v8 + 8))(v10, v28);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v21 = sub_1D13905DC();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  sub_1D13905AC();

  v22 = sub_1D139059C();
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = a1;
  v23[5] = a2;
  sub_1D107877C(0, 0, v6, &unk_1D13A9388, v23);
}

uint64_t sub_1D120826C(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v106 = a2;
  v107 = a3;
  ObjectType = swift_getObjectType();
  sub_1D1208F34(0, &qword_1EE06A650, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v100 = v98 - v8;
  v103 = type metadata accessor for HealthRecordsURLParsingResult();
  MEMORY[0x1EEE9AC00](v103);
  v10 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v105 = v98 - v12;
  sub_1D1208F34(0, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v98 - v14;
  v108 = sub_1D138D39C();
  v110 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v109 = v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D138F0BC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v104 = v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v101 = v98 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v98 - v23;
  sub_1D138F09C();
  v25 = a1;
  v26 = sub_1D138F0AC();
  v27 = sub_1D139081C();

  v28 = os_log_type_enabled(v26, v27);
  v111 = v25;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v99 = v17;
    v30 = v29;
    v31 = swift_slowAlloc();
    v102 = v10;
    v32 = v31;
    v112 = v31;
    *v30 = 136446978;
    v33 = sub_1D139184C();
    v98[1] = v4;
    v35 = sub_1D11DF718(v33, v34, &v112);
    v98[0] = v18;
    v36 = v35;

    *(v30 + 4) = v36;
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_1D11DF718(0xD00000000000003BLL, 0x80000001D13C3F30, &v112);
    *(v30 + 22) = 2080;
    v37 = [v25 notification];
    v38 = [v37 request];

    v39 = [v38 identifier];
    v40 = sub_1D139016C();
    v41 = ObjectType;
    v43 = v42;

    v44 = sub_1D11DF718(v40, v43, &v112);

    *(v30 + 24) = v44;
    *(v30 + 32) = 2082;
    v45 = [v111 actionIdentifier];
    v46 = sub_1D139016C();
    v48 = v47;

    v49 = v46;
    v18 = v98[0];
    v50 = sub_1D11DF718(v49, v48, &v112);
    ObjectType = v41;
    v25 = v111;

    *(v30 + 34) = v50;
    _os_log_impl(&dword_1D101F000, v26, v27, "%{public}s %{public}s notification: %s action: %{public}s", v30, 0x2Au);
    swift_arrayDestroy();
    v51 = v32;
    v10 = v102;
    MEMORY[0x1D38882F0](v51, -1, -1);
    v52 = v30;
    v17 = v99;
    MEMORY[0x1D38882F0](v52, -1, -1);
  }

  v53 = *(v18 + 8);
  v53(v24, v17);
  v54 = [v25 notification];
  sub_1D139085C();

  v55 = v110;
  v56 = v108;
  if ((*(v110 + 48))(v15, 1, v108) != 1)
  {
    v104 = ObjectType;
    v68 = v109;
    (*(v55 + 32))(v109, v15, v56);
    type metadata accessor for HealthRecordsURLHandler();
    swift_initStackObject();
    v69 = v105;
    sub_1D11C6ED8(v68, v105);
    sub_1D10C7774(v69, v10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 13)
      {
        sub_1D12057E4(v111, v106, v107);
        v71 = v109;
        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 2)
      {
        sub_1D1207F44(v106, v107);
        v71 = v109;
LABEL_23:

        sub_1D10C77D8(v69);
        (*(v55 + 8))(v71, v56);
        return sub_1D10C77D8(v10);
      }
    }

    else if (URL.isCategoryRoomURL.getter())
    {
      v71 = v109;
      sub_1D1205598(v109, v106);
      goto LABEL_23;
    }

    v85 = v101;
    sub_1D138F09C();
    v86 = sub_1D138F0AC();
    LODWORD(v103) = sub_1D139081C();
    v111 = v86;
    if (os_log_type_enabled(v86, v103))
    {
      v87 = swift_slowAlloc();
      v88 = v17;
      v89 = swift_slowAlloc();
      v112 = v89;
      *v87 = 136315394;
      v90 = sub_1D139184C();
      v92 = sub_1D11DF718(v90, v91, &v112);
      v102 = v10;
      v93 = v92;
      v69 = v105;

      *(v87 + 4) = v93;
      *(v87 + 12) = 2080;
      *(v87 + 14) = sub_1D11DF718(0xD00000000000003BLL, 0x80000001D13C3F30, &v112);
      v94 = v111;
      _os_log_impl(&dword_1D101F000, v111, v103, "%s %s default response: open URL", v87, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v89, -1, -1);
      v95 = v87;
      v56 = v108;
      MEMORY[0x1D38882F0](v95, -1, -1);

      v10 = v102;
      v96 = v85;
      v97 = v88;
    }

    else
    {

      v96 = v85;
      v97 = v17;
    }

    v53(v96, v97);
    v71 = v109;
    v55 = v110;
    sub_1D120768C();
    v106();
    goto LABEL_23;
  }

  sub_1D1208DFC(v15, &qword_1EC60A5F0, MEMORY[0x1E6968FB0]);
  v57 = v104;
  sub_1D138F09C();
  v58 = sub_1D138F0AC();
  v59 = sub_1D139081C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v112 = v61;
    *v60 = 136315394;
    v62 = sub_1D139184C();
    v64 = v17;
    v65 = sub_1D11DF718(v62, v63, &v112);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_1D11DF718(0xD00000000000003BLL, 0x80000001D13C3F30, &v112);
    _os_log_impl(&dword_1D101F000, v58, v59, "%s %s No content request URL found", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v61, -1, -1);
    MEMORY[0x1D38882F0](v60, -1, -1);

    v66 = v57;
    v67 = v64;
  }

  else
  {

    v66 = v57;
    v67 = v17;
  }

  v53(v66, v67);
  v72 = [v111 actionIdentifier];
  v73 = sub_1D139016C();
  v75 = v74;

  if (v73 == sub_1D139016C() && v75 == v76)
  {
  }

  else
  {
    v78 = sub_1D139162C();

    if ((v78 & 1) == 0)
    {
      v79 = sub_1D13905DC();
      v80 = v100;
      (*(*(v79 - 8) + 56))(v100, 1, 1, v79);
      sub_1D13905AC();
      v81 = v107;

      v82 = sub_1D139059C();
      v83 = swift_allocObject();
      v84 = MEMORY[0x1E69E85E0];
      v83[2] = v82;
      v83[3] = v84;
      v83[4] = v106;
      v83[5] = v81;
      sub_1D107877C(0, 0, v80, &unk_1D13A9380, v83);
    }
  }

  return result;
}

uint64_t sub_1D1208DFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D1208F34(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D1208E64()
{
  if (!qword_1EC60D6B8)
  {
    sub_1D10922EC();
    v0 = sub_1D138F62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D6B8);
    }
  }
}

unint64_t sub_1D1208ED0()
{
  result = qword_1EC60D6C0;
  if (!qword_1EC60D6C0)
  {
    sub_1D1208E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D6C0);
  }

  return result;
}

void sub_1D1208F34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D1208F88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D10819BC;

  return sub_1D1207A04(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1209048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D108077C;

  return sub_1D1207A04(a1, v4, v5, v7, v6);
}

id MedicalRecordChartPoint.__allocating_init(chartableSet:unit:blockCoordinateInfo:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1D120A4E8(a1, a2, a3);

  return v8;
}

id MedicalRecordChartPoint.init(chartableSet:unit:blockCoordinateInfo:)(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1D120A4E8(a1, a2, a3);

  return v5;
}

void *sub_1D12091DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_blockCoordinateInfo);
  v2 = v1;
  return v1;
}

void sub_1D1209220(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_chartableSet) date];
  a1[3] = sub_1D138D57C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_1D138D52C();
}

id sub_1D12092A0(char *a1)
{
  v2 = sub_1D138D57C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *&a1[OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_chartableSet];
  v10 = a1;
  v11 = [v9 date];
  sub_1D138D52C();

  (*(v3 + 16))(v5, v8, v2);
  v12 = sub_1D13916AC();
  (*(v3 + 8))(v8, v2);

  return v12;
}

uint64_t sub_1D120940C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F04C();
  v8 = sub_1D138F0AC();
  v9 = sub_1D13907FC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    MEMORY[0x1D38882F0](v10, -1, -1);
  }

  result = (*(v5 + 8))(v7, v4);
  v12 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_sortedYValues);
  if (*(v12 + 16))
  {
    v13 = *(v12 + 32);
    v14 = MEMORY[0x1E69E63B0];
  }

  else
  {
    v14 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v13 = 0;
  }

  *a1 = v13;
  a1[3] = v14;
  return result;
}

void sub_1D1209760(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_sortedYValues);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    v4 = MEMORY[0x1E69E63B0];
  }

  else
  {
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v3 = 0;
  }

  *a1 = v3;
  a1[3] = v4;
}

id sub_1D120979C(uint64_t a1)
{
  if (*(*(a1 + OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_sortedYValues) + 16))
  {
    v2 = sub_1D139161C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1D1209808(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_sortedYValues);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 8 * v3 + 24);
    v5 = MEMORY[0x1E69E63B0];
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v4 = 0;
  }

  *a1 = v4;
  a1[3] = v5;
}

uint64_t sub_1D1209920()
{
  v1 = v0;
  v2 = 7104878;
  v3 = sub_1D138D57C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1D13911EC();
  MEMORY[0x1D3885C10](0xD00000000000001FLL, 0x80000001D13C3FF0);
  v7 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_chartableSet) date];
  sub_1D138D52C();

  sub_1D120A700();
  v8 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v8);

  (*(v4 + 8))(v6, v3);
  MEMORY[0x1D3885C10](0x203A6E696D202CLL, 0xE700000000000000);
  v9 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_sortedYValues);
  if (*(v9 + 16))
  {
    v10 = sub_1D139063C();
    v12 = v11;
  }

  else
  {
    v12 = 0xE300000000000000;
    v10 = 7104878;
  }

  MEMORY[0x1D3885C10](v10, v12);

  MEMORY[0x1D3885C10](0x203A78616D202CLL, 0xE700000000000000);
  if (*(v9 + 16))
  {
    v2 = sub_1D139063C();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  MEMORY[0x1D3885C10](v2, v14);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  return v16[0];
}

id MedicalRecordChartPoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicalRecordChartPoint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordChartPoint();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D1209C64(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1245E88(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D13915BC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D13904DC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D1209D98(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D1209D98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D1245848(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1D120A2F4((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D10F7610(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_1D10F7610((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_1D120A2F4((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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

uint64_t sub_1D120A2F4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

id sub_1D120A4E8(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_chartableSet] = a1;
  v7 = [a1 quantities];
  sub_1D10F5C10();
  v8 = sub_1D139045C();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_13:

    v11 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v21 = v11;

    sub_1D1209C64(&v21);

    *&v4[OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_sortedYValues] = v21;
    *&v4[OBJC_IVAR____TtC15HealthRecordsUI23MedicalRecordChartPoint_blockCoordinateInfo] = a3;
    v20.receiver = v4;
    v20.super_class = type metadata accessor for MedicalRecordChartPoint();
    return objc_msgSendSuper2(&v20, sel_init);
  }

  v9 = sub_1D13910DC();
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_3:
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D10FDD0C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v19 = a3;
    v10 = 0;
    v11 = v21;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1D3886B70](v10, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      [v12 doubleValueForUnit_];
      v15 = v14;

      v21 = v11;
      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        sub_1D10FDD0C((v16 > 1), v17 + 1, 1);
        v11 = v21;
      }

      ++v10;
      *(v11 + 2) = v17 + 1;
      *&v11[8 * v17 + 32] = v15;
    }

    while (v9 != v10);

    a3 = v19;
    goto LABEL_14;
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1D120A700()
{
  result = qword_1EC60D6E8;
  if (!qword_1EC60D6E8)
  {
    sub_1D138D57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D6E8);
  }

  return result;
}

void *BrowseIcon.tintColor.getter()
{
  if ((*(v0 + 32) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void BrowseIcon.hash(into:)()
{
  v1 = *(v0 + 8);
  if ((*(v0 + 32) & 0x8000000000000000) != 0)
  {
    MEMORY[0x1D38870E0](1);
    AccountIcon.hash(into:)();
  }

  else
  {
    MEMORY[0x1D38870E0](0);
    sub_1D1390D9C();
    if (v1)
    {
      sub_1D139179C();
      v2 = v1;
      sub_1D1390D9C();
    }

    else
    {
      sub_1D139179C();
    }
  }
}

uint64_t BrowseIcon.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  sub_1D139177C();
  if (v2 < 0)
  {
    MEMORY[0x1D38870E0](1);
    AccountIcon.hash(into:)();
  }

  else
  {
    MEMORY[0x1D38870E0](0);
    sub_1D1390D9C();
    sub_1D139179C();
    if (v1)
    {
      v3 = v1;
      sub_1D1390D9C();
    }
  }

  return sub_1D13917CC();
}

uint64_t sub_1D120ABC8()
{
  sub_1D139177C();
  BrowseIcon.hash(into:)();
  return sub_1D13917CC();
}

uint64_t sub_1D120AC20()
{
  sub_1D139177C();
  BrowseIcon.hash(into:)();
  return sub_1D13917CC();
}

uint64_t _s15HealthRecordsUI10BrowseIconO2eeoiySbAC_ACtFZ_0(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[5];
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v45 = a1[4];
  if (v45 < 0)
  {
    if (v12 < 0)
    {
      LOBYTE(v49[0]) = v2 & 1;
      v39 = v3;
      *&v49[1] = v3;
      *&v49[2] = v4;
      *&v49[3] = v5;
      v50 = v45 & 1;
      v51 = v6;
      LOBYTE(v46[0]) = v8 & 1;
      *&v46[1] = v7;
      *&v46[2] = v10;
      *&v46[3] = v9;
      v47 = v12 & 1;
      v48 = v11;
      v42 = v10;
      v32 = v10;
      v33 = v9;
      v34 = v9;
      v35 = v11;
      v36 = v6;
      v37 = v11;
      v38 = v2;
      v40 = v2;
      sub_1D10A00EC(v8, v7, v32, v34, v12, v37);
      sub_1D10A00EC(v38, v39, v4, v5, v45, v36);
      sub_1D10A00EC(v8, v7, v42, v33, v12, v35);
      sub_1D10A00EC(v40, v39, v4, v5, v45, v36);
      v30 = _s15HealthRecordsUI11AccountIconV2eeoiySbAC_ACtFZ_0(v49, v46);
      sub_1D10A4F6C(v40, v39, v4, v5, v45);
      sub_1D10A4F6C(v8, v7, v42, v33, v12);
      sub_1D10A4F6C(v8, v7, v42, v33, v12);
      sub_1D10A4F6C(v40, v39, v4, v5, v45);
      return v30 & 1;
    }

    goto LABEL_9;
  }

  if (v12 < 0)
  {
LABEL_9:
    v23 = a1[5];
    v43 = *(a2 + 8);
    v24 = *a1;
    sub_1D10A00EC(v8, v43, v10, v9, v12, *(a2 + 40));
    sub_1D10A00EC(v24, v3, v4, v5, v45, v23);
    sub_1D10A4F6C(v24, v3, v4, v5, v45);
    v25 = v8;
    v26 = v43;
    v27 = v10;
    v28 = v9;
    v29 = v12;
LABEL_11:
    sub_1D10A4F6C(v25, v26, v27, v28, v29);
    goto LABEL_12;
  }

  v44 = a1[3];
  v13 = *(a2 + 8);
  v14 = *a1;
  v15 = a1[5];
  sub_1D106F934(0, &qword_1EE06B0C0);
  v16 = v9;
  v17 = v13;
  v41 = v16;
  sub_1D10A00EC(v8, v13, v10, v16, v12, v11);
  sub_1D10A00EC(v14, v3, v4, v44, v45, v15);
  v18 = v13;
  v19 = v3;
  if ((sub_1D1390D8C() & 1) == 0)
  {

    sub_1D10A4F6C(v14, v3, v4, v44, v45);
    v25 = v8;
    v26 = v17;
    v27 = v10;
    v29 = v12;
    v28 = v41;
    goto LABEL_11;
  }

  v20 = v18;
  if (v3)
  {
    if (v17)
    {
      sub_1D106F934(0, &qword_1EE06B6E0);
      v21 = v19;
      v22 = sub_1D1390D8C();

      sub_1D10A4F6C(v14, v3, v4, v44, v45);
      sub_1D10A4F6C(v8, v17, v10, v41, v12);

      if (v22)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    sub_1D10A4F6C(v14, v3, v4, v44, v45);
    sub_1D10A4F6C(v8, 0, v10, v41, v12);
    v20 = v19;
  }

  else
  {
    sub_1D10A4F6C(v14, 0, v4, v44, v45);
    sub_1D10A4F6C(v8, v17, v10, v41, v12);
    if (!v17)
    {
LABEL_16:
      v30 = 1;
      return v30 & 1;
    }
  }

LABEL_12:
  v30 = 0;
  return v30 & 1;
}

unint64_t sub_1D120B11C()
{
  result = qword_1EC60D6F0;
  if (!qword_1EC60D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D6F0);
  }

  return result;
}

uint64_t sub_1D120B17C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D120B1CC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 2 * -a2;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LabTipFeedItemData.concept.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D120B2C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_1D120B2C0()
{
  if (!qword_1EC60D6F8)
  {
    sub_1D120B318();
    v0 = sub_1D138FF9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D6F8);
    }
  }
}

unint64_t sub_1D120B318()
{
  result = qword_1EE06A5C0;
  if (!qword_1EE06A5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06A5C0);
  }

  return result;
}

uint64_t LabTipFeedItemData.ontologyPreferredName.getter()
{
  v1 = *(v0 + *(type metadata accessor for LabTipFeedItemData() + 20));

  return v1;
}

uint64_t type metadata accessor for LabTipFeedItemData()
{
  result = qword_1EC60D730;
  if (!qword_1EC60D730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LabTipFeedItemData.ontologyPreferredName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LabTipFeedItemData() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t LabTipFeedItemData.relevanceInMonths.setter(uint64_t a1)
{
  result = type metadata accessor for LabTipFeedItemData();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t LabTipFeedItemData.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LabTipFeedItemData() + 28);
  v4 = sub_1D138D5EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LabTipFeedItemData.uuid.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LabTipFeedItemData() + 28);
  v4 = sub_1D138D5EC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LabTipFeedItemData.init(concept:ontologyPreferredName:relevanceInMonths:uuid:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_1D120B318();
  sub_1D138FFAC();
  v10 = type metadata accessor for LabTipFeedItemData();
  v11 = (a5 + v10[5]);
  *v11 = a1;
  v11[1] = a2;
  *(a5 + v10[6]) = a3;
  v12 = v10[7];
  v13 = sub_1D138D5EC();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a4, v13);
}

uint64_t static LabTipFeedItemData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1D120B318();
  sub_1D120C118(&qword_1EC60D700, sub_1D120B318);
  if ((sub_1D138FF8C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LabTipFeedItemData();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D139162C() & 1) == 0 || *(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  return sub_1D138D5BC();
}

unint64_t sub_1D120B820()
{
  v1 = 0x747065636E6F63;
  v2 = 1684632949;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_1D120B898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D120C524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D120B8CC(uint64_t a1)
{
  v2 = sub_1D120BBB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D120B908(uint64_t a1)
{
  v2 = sub_1D120BBB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LabTipFeedItemData.encode(to:)(void *a1)
{
  sub_1D120C0B4(0, &qword_1EC60D708, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D120BBB4();
  sub_1D139181C();
  v9[15] = 0;
  sub_1D120B2C0();
  sub_1D120C118(&qword_1EC60D718, sub_1D120B2C0);
  sub_1D139158C();
  if (!v1)
  {
    type metadata accessor for LabTipFeedItemData();
    v9[14] = 1;
    sub_1D139155C();
    v9[13] = 2;
    sub_1D139157C();
    v9[12] = 3;
    sub_1D138D5EC();
    sub_1D120C118(&qword_1EC609DC8, MEMORY[0x1E69695A8]);
    sub_1D139158C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D120BBB4()
{
  result = qword_1EC60D710;
  if (!qword_1EC60D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D710);
  }

  return result;
}

uint64_t LabTipFeedItemData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = sub_1D138D5EC();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D120B2C0();
  v6 = v5;
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D120C0B4(0, &qword_1EC60D720, MEMORY[0x1E69E6F48]);
  v35 = v8;
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for LabTipFeedItemData();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D120BBB4();
  v34 = v10;
  v14 = v36;
  sub_1D13917FC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v31;
  v15 = v32;
  v27 = v13;
  v36 = v4;
  v40 = 0;
  sub_1D120C118(&qword_1EC60D728, sub_1D120B2C0);
  sub_1D13914FC();
  v17 = v27;
  (*(v15 + 32))(v27, v33, v6);
  v39 = 1;
  v18 = sub_1D13914CC();
  v19 = &v17[v11[5]];
  *v19 = v18;
  v19[1] = v20;
  v38 = 2;
  v21 = sub_1D13914EC();
  v22 = v17;
  v23 = a1;
  *&v22[v11[6]] = v21;
  v37 = 3;
  sub_1D120C118(&qword_1EC609DB8, MEMORY[0x1E69695A8]);
  v24 = v30;
  sub_1D13914FC();
  (*(v16 + 8))(v34, v35);
  v25 = v27;
  (*(v28 + 32))(&v27[v11[7]], v36, v24);
  sub_1D120C160(v25, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return sub_1D120C1C4(v25);
}

void sub_1D120C0B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D120BBB4();
    v7 = a3(a1, &type metadata for LabTipFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D120C118(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D120C160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabTipFeedItemData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D120C1C4(uint64_t a1)
{
  v2 = type metadata accessor for LabTipFeedItemData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D120C250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D120B318();
  sub_1D120C118(&qword_1EC60D700, sub_1D120B318);
  if ((sub_1D138FF8C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1D139162C() & 1) == 0 || *(a1 + *(a3 + 24)) != *(a2 + *(a3 + 24)))
  {
    return 0;
  }

  return sub_1D138D5BC();
}

void sub_1D120C370()
{
  sub_1D120B2C0();
  if (v0 <= 0x3F)
  {
    sub_1D138D5EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D120C420()
{
  result = qword_1EC60D740;
  if (!qword_1EC60D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D740);
  }

  return result;
}

unint64_t sub_1D120C478()
{
  result = qword_1EC60D748;
  if (!qword_1EC60D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D748);
  }

  return result;
}

unint64_t sub_1D120C4D0()
{
  result = qword_1EC60D750;
  if (!qword_1EC60D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D750);
  }

  return result;
}

uint64_t sub_1D120C524(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747065636E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D139162C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D13C40C0 == a2 || (sub_1D139162C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D13C40E0 == a2 || (sub_1D139162C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D139162C();

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

id static UIColor.dynamicColor(default:dark:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v11[4] = sub_1D120E474;
  v11[5] = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D120E4B8;
  v11[3] = &block_descriptor_39;
  v6 = _Block_copy(v11);
  v7 = a2;
  v8 = a1;
  v9 = [v5 initWithDynamicProvider_];
  _Block_release(v6);

  return v9;
}

uint64_t sub_1D120C790()
{
  sub_1D120E53C();
  result = sub_1D1390CEC();
  qword_1EC60D758 = result;
  return result;
}

id sub_1D120C80C()
{
  if (qword_1EE069530 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE06A5B8;
  qword_1EC60D760 = qword_1EE06A5B8;

  return v1;
}

id UIColor.init(decimalRed:green:blue:alpha:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithRed:a1 / 255.0 green:a2 / 255.0 blue:a3 / 255.0 alpha:a4];
}

id static UIColor.dynamicColor(default:defaultHighConstrast:dark:darkHighConstrast:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a3;
  v8[4] = a2;
  v8[5] = a1;
  v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v17[4] = sub_1D120E538;
  v17[5] = v8;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D120E4B8;
  v17[3] = &block_descriptor_6_1;
  v10 = _Block_copy(v17);
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = a1;
  v15 = [v9 initWithDynamicProvider_];
  _Block_release(v10);

  return v15;
}

uint64_t sub_1D120CACC()
{
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v0 systemDarkBlueColor];
  v3 = [v0 systemBlueColor];
  v4 = [v0 systemBlueColor];
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v14[4] = sub_1D120E6CC;
  v14[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D120E4B8;
  v14[3] = &block_descriptor_97;
  v7 = _Block_copy(v14);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = [v6 initWithDynamicProvider_];

  _Block_release(v7);

  qword_1EE06A570 = v12;
  return result;
}

uint64_t sub_1D120CCAC()
{
  v0 = objc_opt_self();
  v1 = [v0 systemPinkColor];
  v2 = [v0 systemDarkPinkColor];
  v3 = [v0 systemPinkColor];
  v4 = [v0 systemPinkColor];
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v14[4] = sub_1D120E6CC;
  v14[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D120E4B8;
  v14[3] = &block_descriptor_90;
  v7 = _Block_copy(v14);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = [v6 initWithDynamicProvider_];

  _Block_release(v7);

  qword_1EE06B6E8 = v12;
  return result;
}

uint64_t sub_1D120CE8C()
{
  v0 = objc_opt_self();
  v1 = [v0 systemCyanColor];
  v2 = [v0 systemCyanColor];
  v3 = [v0 systemCyanColor];
  v4 = [v0 systemCyanColor];
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v14[4] = sub_1D120E6CC;
  v14[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D120E4B8;
  v14[3] = &block_descriptor_83;
  v7 = _Block_copy(v14);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = [v6 initWithDynamicProvider_];

  _Block_release(v7);

  qword_1EE06B6F8 = v12;
  return result;
}

uint64_t sub_1D120D068()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGreenColor];
  v2 = [v0 systemDarkGreenColor];
  v3 = [v0 systemGreenColor];
  v4 = [v0 systemGreenColor];
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v14[4] = sub_1D120E6CC;
  v14[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D120E4B8;
  v14[3] = &block_descriptor_76;
  v7 = _Block_copy(v14);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = [v6 initWithDynamicProvider_];

  _Block_release(v7);

  qword_1EE06B6F0 = v12;
  return result;
}

uint64_t sub_1D120D248()
{
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v0 systemDarkBlueColor];
  v3 = [v0 systemBlueColor];
  v4 = [v0 systemBlueColor];
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v14[4] = sub_1D120E6CC;
  v14[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D120E4B8;
  v14[3] = &block_descriptor_69;
  v7 = _Block_copy(v14);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = [v6 initWithDynamicProvider_];

  _Block_release(v7);

  qword_1EE06B720 = v12;
  return result;
}

uint64_t sub_1D120D428()
{
  v0 = objc_opt_self();
  v1 = [v0 systemCyanColor];
  v2 = [v0 systemCyanColor];
  v3 = [v0 systemCyanColor];
  v4 = [v0 systemCyanColor];
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v14[4] = sub_1D120E6CC;
  v14[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D120E4B8;
  v14[3] = &block_descriptor_62;
  v7 = _Block_copy(v14);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = [v6 initWithDynamicProvider_];

  _Block_release(v7);

  qword_1EE06B728 = v12;
  return result;
}

uint64_t sub_1D120D604()
{
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v0 systemDarkBlueColor];
  v3 = [v0 systemBlueColor];
  v4 = [v0 systemBlueColor];
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v14[4] = sub_1D120E6CC;
  v14[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D120E4B8;
  v14[3] = &block_descriptor_55_0;
  v7 = _Block_copy(v14);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = [v6 initWithDynamicProvider_];

  _Block_release(v7);

  qword_1EE06B710 = v12;
  return result;
}

uint64_t sub_1D120D7E4()
{
  v0 = objc_opt_self();
  v1 = [v0 systemIndigoColor];
  v2 = [v0 systemIndigoColor];
  v3 = [v0 systemIndigoColor];
  v4 = [v0 systemIndigoColor];
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v14[4] = sub_1D120E6CC;
  v14[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D120E4B8;
  v14[3] = &block_descriptor_48;
  v7 = _Block_copy(v14);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = [v6 initWithDynamicProvider_];

  _Block_release(v7);

  qword_1EE06B718 = v12;
  return result;
}

uint64_t sub_1D120D9C0()
{
  v0 = objc_opt_self();
  v1 = [v0 systemPurpleColor];
  v2 = [v0 systemDarkPurpleColor];
  v3 = [v0 systemPurpleColor];
  v4 = [v0 systemPurpleColor];
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v14[4] = sub_1D120E6CC;
  v14[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D120E4B8;
  v14[3] = &block_descriptor_41_1;
  v7 = _Block_copy(v14);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = [v6 initWithDynamicProvider_];

  _Block_release(v7);

  qword_1EE06B708 = v12;
  return result;
}

uint64_t sub_1D120DBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_opt_self();
  v9 = [v8 systemGrayColor];
  v10 = [v8 systemDarkGrayColor];
  v11 = [v8 systemGrayColor];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.658823529 green:0.658823529 blue:0.678431373 alpha:1.0];
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v11;
  v13[4] = v10;
  v13[5] = v9;
  v14 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v22[4] = a3;
  v22[5] = v13;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1D120E4B8;
  v22[3] = a4;
  v15 = _Block_copy(v22);
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v9;
  v20 = [v14 initWithDynamicProvider_];

  _Block_release(v15);

  *a5 = v20;
  return result;
}

uint64_t sub_1D120DDC8()
{
  v0 = objc_opt_self();
  v1 = [v0 systemRedColor];
  v2 = [v0 systemDarkRedColor];
  v3 = [v0 systemRedColor];
  v4 = [v0 systemRedColor];
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v14[4] = sub_1D120E6CC;
  v14[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D120E4B8;
  v14[3] = &block_descriptor_27_0;
  v7 = _Block_copy(v14);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = [v6 initWithDynamicProvider_];

  _Block_release(v7);

  qword_1EC60D768 = v12;
  return result;
}

uint64_t sub_1D120DFA8()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGreenColor];
  v2 = [v0 systemDarkGreenColor];
  v3 = [v0 systemGreenColor];
  v4 = [v0 systemGreenColor];
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v14[4] = sub_1D120E6CC;
  v14[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D120E4B8;
  v14[3] = &block_descriptor_20_0;
  v7 = _Block_copy(v14);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = [v6 initWithDynamicProvider_];

  _Block_release(v7);

  qword_1EC60D770 = v12;
  return result;
}

uint64_t sub_1D120E188()
{
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v0 systemDarkBlueColor];
  v3 = [v0 systemBlueColor];
  v4 = [v0 systemBlueColor];
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;
  v5[5] = v1;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v14[4] = sub_1D120E6CC;
  v14[5] = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D120E4B8;
  v14[3] = &block_descriptor_13_1;
  v7 = _Block_copy(v14);
  v8 = v4;
  v9 = v3;
  v10 = v2;
  v11 = v1;
  v12 = [v6 initWithDynamicProvider_];

  _Block_release(v7);

  qword_1EC60D778 = v12;
  return result;
}

id sub_1D120E344(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_1D120E3C8(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id sub_1D120E42C(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
  }

  return v5;
}

id sub_1D120E474(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if ([a1 userInterfaceStyle] == 2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id sub_1D120E4B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D120E53C()
{
  result = qword_1EE06B6E0;
  if (!qword_1EE06B6E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06B6E0);
  }

  return result;
}

uint64_t objectdestroy_2Tm_2()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1D120E5D8(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = [a1 userInterfaceStyle];
  v8 = [a1 accessibilityContrast];
  if (v8 == 1)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (v8 == 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  if (v7 == 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  return v11;
}

uint64_t sub_1D120E6D0(uint64_t a1)
{
  v47 = type metadata accessor for UserDomainConceptViewData();
  v51 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v42 - v6;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  v52 = MEMORY[0x1E69E7CC8];
  v48 = a1;
  v11 = *(a1 + 56);
  v10 = a1 + 56;
  v9 = v11;
  v12 = 1 << *(v10 - 24);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v50 = v5;
  v45 = v5 + 8;
  v15 = (v12 + 63) >> 6;
  v43 = xmmword_1D139E700;
  while (v14)
  {
LABEL_9:
    v17 = *(v48 + 48);
    v49 = *(v51 + 72);
    v18 = v46;
    sub_1D10DC904(v17 + v49 * (__clz(__rbit64(v14)) | (v7 << 6)), v46);
    sub_1D11631E4(v18, v50);
    v19 = *(v45 + *(v47 + 56));
    v21 = sub_1D129E79C(v19);
    v22 = v8[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_24;
    }

    v25 = v20;
    if (v8[3] < v24)
    {
      sub_1D117E8D8(v24, 1);
      v8 = v52;
      v26 = sub_1D129E79C(v19);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_26;
      }

      v21 = v26;
    }

    v14 &= v14 - 1;
    if (v25)
    {
      v28 = v8[7];
      sub_1D11631E4(v50, v44);
      v29 = *(v28 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 8 * v21) = v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v28;
      }

      else
      {
        v29 = sub_1D10F89D8(0, v29[2] + 1, 1, v29);
        v31 = v28;
        *(v28 + 8 * v21) = v29;
      }

      v33 = v29[2];
      v32 = v29[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v42 = v33 + 1;
        v40 = sub_1D10F89D8(v32 > 1, v33 + 1, 1, v29);
        v34 = v42;
        v29 = v40;
        *(v31 + 8 * v21) = v40;
      }

      v29[2] = v34;
      sub_1D11631E4(v44, v29 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + v33 * v49);
    }

    else
    {
      sub_1D120F924(0, &qword_1EC60AD48, type metadata accessor for UserDomainConceptViewData, MEMORY[0x1E69E6F90]);
      v35 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = v43;
      sub_1D11631E4(v50, v36 + v35);
      v8[(v21 >> 6) + 8] |= 1 << v21;
      *(v8[6] + v21) = v19;
      *(v8[7] + 8 * v21) = v36;
      v37 = v8[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_25;
      }

      v8[2] = v39;
    }
  }

  while (1)
  {
    v16 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      return v8;
    }

    v14 = *(v10 + 8 * v16);
    ++v7;
    if (v14)
    {
      v7 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1D13916CC();
  __break(1u);
  return result;
}

uint64_t sub_1D120EAA0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v66 = a3;
  v64 = a2;
  v51 = a1;
  v5 = sub_1D1390A5C();
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x1E69E8050];
  sub_1D120F924(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v51 - v8;
  sub_1D120F4D8();
  v53 = v10;
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D120F5C4();
  v63 = v13;
  v65 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D120F7A0();
  v16 = *(v15 - 8);
  v68 = v15;
  v69 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v57 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D120F988();
  v19 = *(v18 - 8);
  v70 = v18;
  v71 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D120FA1C();
  v22 = *(v21 - 8);
  v72 = v21;
  v73 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v62 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D120FAC8();
  v25 = *(v24 - 8);
  v74 = v24;
  v75 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v67 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D138EF1C();
  v80 = a4;
  v81 = v27;
  v59 = sub_1D1390A2C();
  v28 = *(v59 - 8);
  v58 = *(v28 + 56);
  v60 = v28 + 56;
  v58(v9, 1, 1, v59);
  v29 = MEMORY[0x1E69DF058];
  sub_1D12125E8(0, &qword_1EC60D788, MEMORY[0x1E69DF058], MEMORY[0x1E695BED0]);
  v56 = sub_1D106F934(0, &qword_1EE06B760);
  sub_1D121265C(&qword_1EC60D790, &qword_1EC60D788, v29);
  v55 = sub_1D10EDC58();
  v30 = a4;
  sub_1D138F8BC();
  sub_1D12132AC(v9, &qword_1EE06A620, v79);

  sub_1D120F670();
  sub_1D1213364(&qword_1EC60D7A8, sub_1D120F4D8);
  v31 = v52;
  v32 = v53;
  sub_1D138F84C();
  (*(v54 + 8))(v12, v32);
  v33 = swift_allocObject();
  v34 = v64;
  v33[2] = v51;
  v33[3] = v34;
  v33[4] = v66;
  v33[5] = v30;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1D1210160;
  *(v35 + 24) = v33;
  v36 = v30;

  v37 = v34;

  sub_1D138F61C();
  sub_1D120F88C();
  sub_1D1213364(&qword_1EC60D7C8, sub_1D120F5C4);
  sub_1D1213364(&qword_1EC60D7C0, sub_1D120F88C);
  v38 = v57;
  v39 = v63;
  sub_1D138F91C();

  (*(v65 + 8))(v31, v39);
  v81 = MEMORY[0x1E69E7CC0];
  sub_1D1213364(&qword_1EC60D7D8, sub_1D120F7A0);
  v40 = v61;
  v41 = v68;
  sub_1D138F82C();
  (*(v69 + 8))(v38, v41);
  sub_1D1125BE8();
  sub_1D1213364(&qword_1EC60D7E8, sub_1D120F988);
  v42 = v62;
  v43 = v70;
  sub_1D138F84C();
  (*(v71 + 8))(v40, v43);
  v44 = v76;
  sub_1D1390A4C();
  v81 = v36;
  v58(v9, 1, 1, v59);
  sub_1D1213364(&qword_1EC60D7F8, sub_1D120FA1C);
  v45 = v67;
  v46 = v72;
  sub_1D138F8CC();
  sub_1D12132AC(v9, &qword_1EE06A620, v79);

  (*(v77 + 8))(v44, v78);
  (*(v73 + 8))(v42, v46);
  sub_1D1213364(&qword_1EC60D800, sub_1D120FAC8);
  v47 = v74;
  v48 = sub_1D138F7EC();
  (*(v75 + 8))(v45, v47);
  v81 = v48;
  sub_1D1210360();
  sub_1D1213364(&qword_1EC60D830, sub_1D1210360);
  v49 = sub_1D138F80C();

  return v49;
}

void sub_1D120F4D8()
{
  if (!qword_1EC60D780)
  {
    v0 = MEMORY[0x1E69DF058];
    sub_1D12125E8(255, &qword_1EC60D788, MEMORY[0x1E69DF058], MEMORY[0x1E695BED0]);
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D121265C(&qword_1EC60D790, &qword_1EC60D788, v0);
    sub_1D10EDC58();
    v1 = sub_1D138F5FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60D780);
    }
  }
}

void sub_1D120F5C4()
{
  if (!qword_1EC60D798)
  {
    sub_1D120F4D8();
    sub_1D120F670();
    sub_1D1213364(&qword_1EC60D7A8, sub_1D120F4D8);
    v0 = sub_1D138F54C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D798);
    }
  }
}

void sub_1D120F670()
{
  if (!qword_1EC60D7A0)
  {
    sub_1D120F738(255, &qword_1EE06A658, &qword_1EE06A5C0, 0x1E696C260, MEMORY[0x1E69E62F8]);
    sub_1D120F738(255, &qword_1EE06A5F0, &unk_1EE06A5F8, 0x1E696C218, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60D7A0);
    }
  }
}

void sub_1D120F738(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D106F934(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D120F7A0()
{
  if (!qword_1EC60D7B0)
  {
    sub_1D120F88C();
    sub_1D120F5C4();
    sub_1D1213364(&qword_1EC60D7C0, sub_1D120F88C);
    sub_1D1213364(&qword_1EC60D7C8, sub_1D120F5C4);
    v0 = sub_1D138F59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D7B0);
    }
  }
}

void sub_1D120F88C()
{
  if (!qword_1EC60D7B8)
  {
    sub_1D120F924(255, &qword_1EC60B3B0, type metadata accessor for UserDomainConceptViewData, MEMORY[0x1E69E62F8]);
    v0 = sub_1D138F62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D7B8);
    }
  }
}

void sub_1D120F924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D120F988()
{
  if (!qword_1EC60D7D0)
  {
    sub_1D120F7A0();
    sub_1D1213364(&qword_1EC60D7D8, sub_1D120F7A0);
    v0 = sub_1D138F52C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D7D0);
    }
  }
}

void sub_1D120FA1C()
{
  if (!qword_1EC60D7E0)
  {
    sub_1D120F988();
    sub_1D1125BE8();
    sub_1D1213364(&qword_1EC60D7E8, sub_1D120F988);
    v0 = sub_1D138F54C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D7E0);
    }
  }
}

void sub_1D120FAC8()
{
  if (!qword_1EC60D7F0)
  {
    sub_1D120FA1C();
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D1213364(&qword_1EC60D7F8, sub_1D120FA1C);
    sub_1D10EDC58();
    v0 = sub_1D138F5AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D7F0);
    }
  }
}

uint64_t sub_1D120FB94@<X0>(void *a1@<X8>)
{
  v1 = sub_1D138EF7C();
  v2 = sub_1D138EF3C();
  sub_1D11227BC(v2);
  v11 = MEMORY[0x1E69E7CC0];
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v3 = sub_1D13910DC();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3886B70](v6, v1);
      }

      else
      {
        if (v6 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1D3885D90]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();
    v5 = v11;
  }

  while (v4 != v3);
LABEL_21:

  *a1 = v5;
  result = sub_1D138EF6C();
  a1[1] = result;
  return result;
}

uint64_t sub_1D120FD44(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v34 = a6;
  sub_1D12123AC();
  v35 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12124DC();
  v16 = *(v15 - 8);
  v36 = v15;
  v37 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12126C0();
  v20 = *(v19 - 8);
  v38 = v19;
  v39 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_1D120F738(0, &qword_1EE06A658, &qword_1EE06A5C0, 0x1E696C260, MEMORY[0x1E69E62F8]);
  sub_1D1212458();
  sub_1D13903BC();
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v24 = v34;
  v23[4] = a5;
  v23[5] = v24;
  v23[6] = a2;
  v25 = a2;

  v26 = a4;

  v27 = v24;
  sub_1D138F61C();
  sub_1D12125E8(0, &qword_1EC60D858, type metadata accessor for UserDomainConceptViewData, MEMORY[0x1E695BED0]);
  sub_1D1213364(&qword_1EC60D868, sub_1D12123AC);
  sub_1D121265C(&qword_1EC60D860, &qword_1EC60D858, type metadata accessor for UserDomainConceptViewData);
  v28 = v35;
  sub_1D138F91C();

  (*(v12 + 8))(v14, v28);
  sub_1D1213364(&qword_1EC60D878, sub_1D12124DC);
  v29 = v36;
  sub_1D138F89C();
  (*(v37 + 8))(v18, v29);
  sub_1D1213364(&qword_1EC60D880, sub_1D12126C0);
  v30 = v38;
  v31 = sub_1D138F80C();
  (*(v39 + 8))(v22, v30);
  return v31;
}

uint64_t sub_1D121016C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D12101A4@<X0>(void *a1@<X8>)
{

  v3 = sub_1D12DF36C(v2);

  v4 = sub_1D120E6D0(v3);
  if (*(v4 + 16) && (v5 = sub_1D129E79C(0), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v14 = v7;

  sub_1D1211144(&v14);

  v8 = v14;
  if (*(v4 + 16) && (v9 = sub_1D129E79C(1), (v10 & 1) != 0))
  {
    v11 = *(*(v4 + 56) + 8 * v9);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11;
  swift_getKeyPath();
  sub_1D120F924(0, &qword_1EC60B3B0, type metadata accessor for UserDomainConceptViewData, MEMORY[0x1E69E62F8]);
  sub_1D12133AC(&qword_1EC60D838, &qword_1EC60B3B0, type metadata accessor for UserDomainConceptViewData);
  v12 = sub_1D139039C();

  *a1 = v8;
  a1[1] = v12;
  return result;
}

void sub_1D1210360()
{
  if (!qword_1EC60D808)
  {
    sub_1D12103F4();
    sub_1D1213364(&qword_1EC60D828, sub_1D12103F4);
    v0 = sub_1D138F51C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D808);
    }
  }
}

void sub_1D12103F4()
{
  if (!qword_1EC60D810)
  {
    sub_1D120FAC8();
    sub_1D12125E8(255, &qword_1EC60D818, sub_1D1125BE8, MEMORY[0x1E69A3180]);
    sub_1D1213364(&qword_1EC60D800, sub_1D120FAC8);
    sub_1D12104E0();
    v0 = sub_1D138F5EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D810);
    }
  }
}

unint64_t sub_1D12104E0()
{
  result = qword_1EC60D820;
  if (!qword_1EC60D820)
  {
    sub_1D12125E8(255, &qword_1EC60D818, sub_1D1125BE8, MEMORY[0x1E69A3180]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D820);
  }

  return result;
}

void sub_1D1210568(unint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  v14 = objc_autoreleasePoolPush();
  sub_1D1210600(v13, a2, a3, a4, a5, a6 & 1, a7);

  objc_autoreleasePoolPop(v14);
}

uint64_t sub_1D1210600@<X0>(unint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  LODWORD(v94) = a6;
  v92 = a4;
  v93 = a5;
  v95 = a2;
  v11 = sub_1D138F0BC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v81[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D120F924(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v91 = &v81[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v81[-v19];
  v21 = (a1 >> 62);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_34:
    sub_1D138F06C();
    v64 = v95;
    v65 = sub_1D138F0AC();
    v66 = sub_1D13907DC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v94 = v65;
      v68 = v67;
      v95 = swift_slowAlloc();
      v97 = v95;
      *v68 = 136315394;
      v96 = &type metadata for LabsListViewDataProvider;
      sub_1D121331C();
      v69 = sub_1D13901EC();
      v90 = v7;
      v71 = sub_1D11DF718(v69, v70, &v97);

      *(v68 + 4) = v71;
      *(v68 + 12) = 2080;
      v72 = v64;
      v73 = [v72 description];
      v74 = sub_1D139016C();
      LODWORD(v93) = v66;
      v76 = v75;

      v77 = sub_1D11DF718(v74, v76, &v97);

      *(v68 + 14) = v77;
      v78 = v94;
      _os_log_impl(&dword_1D101F000, v94, v93, "%s itemPublisher dropping %s because it has no records", v68, 0x16u);
      v79 = v95;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v79, -1, -1);
      MEMORY[0x1D38882F0](v68, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v14, v11);
    v80 = type metadata accessor for UserDomainConceptViewData();
    return (*(*(v80 - 8) + 56))(a7, 1, 1, v80);
  }

  if (!sub_1D13910DC())
  {
    goto LABEL_34;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1D3886B70](0, a1, v18);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(a1 + 32);
LABEL_6:
    v23 = v22;
    v24 = HKDiagnosticTestResult.valueDisplayables.getter()[2];

    if (v24 < 2)
    {
      v12 = HKDiagnosticTestResult.valueString.getter();
      v89 = v26;
      v27 = v23;
      v28 = sub_1D1210EF8(v23);
      v87 = v29;
      v88 = v28;

      goto LABEL_10;
    }

    if (qword_1EE06AD00 != -1)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v12 = sub_1D138D1CC();
      v88 = 0;
      v89 = v25;
      v87 = 0;
LABEL_10:
      a3 = v20;
      v20 = v23;
      v86 = [v20 state];
      v30 = [v20 meaningfulDate];

      if (v30)
      {
        sub_1D138D52C();

        v31 = sub_1D138D57C();
        (*(*(v31 - 8) + 56))(a3, 0, 1, v31);
      }

      else
      {
        v32 = sub_1D138D57C();
        (*(*(v32 - 8) + 56))(a3, 1, 1, v32);
      }

      a1 = v21 ? sub_1D13910DC() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = [v20 value];
      v21 = v95;
      if (v33)
      {
        v34 = v33;
        v35 = [v20 referenceRanges];
        v84 = [v34 valueInRangeWithReferenceRanges:v35 includeUnitString:1 allowsNullRange:1];
      }

      else
      {
        v84 = 0;
      }

      v23 = [v21 categoryTypes];
      sub_1D106F934(0, &qword_1EE06B6C0);
      v11 = sub_1D139045C();

      v36 = v11 >> 62 ? sub_1D13910DC() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v90 = v7;
      v85 = a1;
      if (!v36)
      {
        break;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        goto LABEL_41;
      }

      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v37 = *(v11 + 32);
        goto LABEL_25;
      }

      __break(1u);
LABEL_43:
      swift_once();
    }

    v39 = 0;
    goto LABEL_27;
  }

  __break(1u);
LABEL_41:
  v37 = MEMORY[0x1D3886B70](0, v11, v18);
LABEL_25:
  v38 = v37;

  v39 = [v38 integerValue];

LABEL_27:
  v83 = v12;
  DisplayCategory.Kind.init(rawValue:)(v39);
  v40 = v97;
  if (v97 == 11)
  {
    v40 = 0;
  }

  v82 = v40;
  v41 = [objc_opt_self() mainBundle];
  v42 = [v41 preferredLocalizations];

  v43 = sub_1D139045C();
  v44 = HKMedicalUserDomainConcept.localizedOntologyPreferredName(given:)(v43);

  v45 = sub_1D138D57C();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(a3, 1, v45) == 1)
  {
    v47 = [v21 modificationDate];
    v48 = a3;
    v49 = v91;
    sub_1D138D52C();

    v21 = v95;
    (*(v46 + 56))(v49, 0, 1, v45);
  }

  else
  {

    v50 = a3;
    v48 = a3;
    v49 = v91;
    sub_1D106A1D8(v50, v91);
  }

  *a7 = v82;
  v51 = v85;
  v52 = v86;
  *(a7 + 8) = v21;
  *(a7 + 16) = v52;
  *(a7 + 24) = v44;
  *(a7 + 40) = v51;
  v53 = type metadata accessor for UserDomainConceptViewData();
  sub_1D112A184(v49, a7 + v53[9]);
  v54 = v83;
  *(a7 + v53[10]) = v84;
  v55 = (a7 + v53[11]);
  v56 = v88;
  v57 = v89;
  *v55 = v54;
  v55[1] = v57;
  v58 = (a7 + v53[12]);
  *v58 = v56;
  v58[1] = v87;
  v59 = a7 + v53[13];
  v60 = v93;
  *v59 = v92;
  *(v59 + 8) = 0;
  v61 = a7 + v53[14];
  *v61 = v60;
  *(v61 + 8) = v94 & 1;
  v62 = v21;
  sub_1D12132AC(v48, &qword_1EE06B500, MEMORY[0x1E6969530]);
  return (*(*(v53 - 1) + 56))(a7, 0, 1, v53);
}

id sub_1D1210EF8(id result)
{
  if (result)
  {
    result = [result value];
    if (result)
    {
      v1 = result;
      v2 = [objc_opt_self() _unitStringForValueCollection_];
      sub_1D139016C();

      if (qword_1EE06AF70 != -1)
      {
        v3 = swift_once();
      }

      v8 = *(qword_1EE06BB58 + OBJC_IVAR___HRProfileManager_lock);
      MEMORY[0x1EEE9AC00](v3);
      sub_1D138D96C();
      sub_1D106F934(0, &qword_1EE06B6B0);
      sub_1D1213364(&qword_1EE06B048, MEMORY[0x1E69A3B50]);

      sub_1D138ED0C();

      v4 = [v9 ucumDisplayConverter];
      v5 = sub_1D139012C();

      v6 = [v4 synonymForUCUMUnitString_];

      v7 = sub_1D139016C();
      return v7;
    }
  }

  return result;
}

void sub_1D1211144(void **a1)
{
  v2 = *(type metadata accessor for UserDomainConceptViewData() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1245FA0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D12111EC(v5);
  *a1 = v3;
}

void sub_1D12111EC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D13915BC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for UserDomainConceptViewData();
        v6 = sub_1D13904DC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for UserDomainConceptViewData() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D121153C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D1211318(0, v2, 1, a1);
  }
}

void sub_1D1211318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v36 = v17;
    v30 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v22;
    v33 = v21;
    while (1)
    {
      sub_1D10DC904(v22, v16);
      sub_1D10DC904(v19, v12);
      v23 = *(v8 + 56);
      if (v16[v23 + 8])
      {
        v24 = -1;
      }

      else
      {
        v24 = *&v16[v23];
      }

      v25 = &v12[v23];
      if (v25[8])
      {
        v26 = -1;
      }

      else
      {
        v26 = *v25;
      }

      sub_1D1162FD4(v12);
      sub_1D1162FD4(v16);
      if (v24 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v21 = v33 - 1;
        v22 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_1D11631E4(v22, v37);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D11631E4(v27, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D121153C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v128 = a1;
  v143 = type metadata accessor for UserDomainConceptViewData();
  v137 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v131 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v142 = &v123 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v123 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v123 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v134 = &v123 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v133 = &v123 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v126 = &v123 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v125 = &v123 - v25;
  v139 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_118:
    v5 = *v128;
    if (!*v128)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_120:
      v144 = v28;
      v119 = *(v28 + 2);
      if (v119 >= 2)
      {
        while (*v139)
        {
          v120 = *&v28[16 * v119];
          v121 = *&v28[16 * v119 + 24];
          sub_1D1211EB4(*v139 + *(v137 + 72) * v120, *v139 + *(v137 + 72) * *&v28[16 * v119 + 16], *v139 + *(v137 + 72) * v121, v5);
          if (v6)
          {
            goto LABEL_128;
          }

          if (v121 < v120)
          {
            goto LABEL_143;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1D1245848(v28);
          }

          if (v119 - 2 >= *(v28 + 2))
          {
            goto LABEL_144;
          }

          v122 = &v28[16 * v119];
          *v122 = v120;
          *(v122 + 1) = v121;
          v144 = v28;
          sub_1D12457BC(v119 - 1);
          v28 = v144;
          v119 = *(v144 + 2);
          if (v119 <= 1)
          {
            goto LABEL_128;
          }
        }

        goto LABEL_154;
      }

LABEL_128:

      return;
    }

LABEL_150:
    v28 = sub_1D1245848(v28);
    goto LABEL_120;
  }

  v124 = a4;
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  v132 = v17;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    v129 = v29;
    if (v30 >= v26)
    {
      v51 = v30;
    }

    else
    {
      v141 = v26;
      v127 = v6;
      v31 = *v139;
      v6 = *(v137 + 72);
      v5 = *v139 + v6 * v30;
      v32 = v29;
      v33 = v125;
      sub_1D10DC904(v5, v125);
      v34 = v126;
      sub_1D10DC904(v31 + v6 * v32, v126);
      v35 = *(v143 + 56);
      if (*(v33 + v35 + 8))
      {
        v36 = -1;
      }

      else
      {
        v36 = *(v33 + v35);
      }

      v37 = v34 + v35;
      if (*(v37 + 8))
      {
        v38 = -1;
      }

      else
      {
        v38 = *v37;
      }

      v135 = v38;
      v136 = v36;
      sub_1D1162FD4(v34);
      sub_1D1162FD4(v33);
      v39 = v32 + 2;
      v138 = v6;
      v40 = v31 + v6 * v39;
      while (v141 != v39)
      {
        LODWORD(v140) = v136 < v135;
        v41 = v133;
        sub_1D10DC904(v40, v133);
        v42 = v14;
        v43 = v134;
        sub_1D10DC904(v5, v134);
        v44 = *(v143 + 56);
        v6 = v28;
        if (*(v41 + v44 + 8))
        {
          v45 = -1;
        }

        else
        {
          v45 = *(v41 + v44);
        }

        v46 = v43 + v44;
        if (*(v46 + 8))
        {
          v47 = -1;
        }

        else
        {
          v47 = *v46;
        }

        v48 = v43;
        v14 = v42;
        v17 = v132;
        sub_1D1162FD4(v48);
        sub_1D1162FD4(v41);
        v49 = v45 < v47;
        v28 = v6;
        v50 = !v49;
        ++v39;
        v40 += v138;
        v5 += v138;
        if (((v140 ^ v50) & 1) == 0)
        {
          v51 = v39 - 1;
          goto LABEL_26;
        }
      }

      v51 = v141;
LABEL_26:
      v29 = v129;
      if (v136 >= v135)
      {
        goto LABEL_39;
      }

      if (v51 < v129)
      {
        goto LABEL_147;
      }

      if (v129 >= v51)
      {
LABEL_39:
        v6 = v127;
      }

      else
      {
        v123 = v28;
        v52 = v138 * (v51 - 1);
        v53 = v51;
        v54 = v51 * v138;
        v141 = v51;
        v55 = v129;
        v56 = v129 * v138;
        do
        {
          if (v55 != --v53)
          {
            v57 = *v139;
            if (!*v139)
            {
              goto LABEL_153;
            }

            v5 = v57 + v56;
            sub_1D11631E4(v57 + v56, v131);
            if (v56 < v52 || v5 >= v57 + v54)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v56 != v52)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D11631E4(v131, v57 + v52);
          }

          ++v55;
          v52 -= v138;
          v54 -= v138;
          v56 += v138;
        }

        while (v55 < v53);
        v6 = v127;
        v28 = v123;
        v29 = v129;
        v51 = v141;
      }
    }

    v58 = v139[1];
    if (v51 >= v58)
    {
      goto LABEL_50;
    }

    if (__OFSUB__(v51, v29))
    {
      goto LABEL_146;
    }

    if (v51 - v29 >= v124)
    {
LABEL_50:
      v60 = v51;
      if (v51 < v29)
      {
        goto LABEL_145;
      }

      goto LABEL_51;
    }

    if (__OFADD__(v29, v124))
    {
      goto LABEL_148;
    }

    if (v29 + v124 >= v58)
    {
      v59 = v139[1];
    }

    else
    {
      v59 = v29 + v124;
    }

    if (v59 < v29)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v51 == v59)
    {
      goto LABEL_50;
    }

    v123 = v28;
    v127 = v6;
    v107 = *v139;
    v108 = *(v137 + 72);
    v109 = *v139 + v108 * (v51 - 1);
    v110 = -v108;
    v111 = (v29 - v51);
    v130 = v108;
    v5 = v107 + v51 * v108;
    v112 = v143;
    v135 = v59;
LABEL_103:
    v140 = v109;
    v141 = v51;
    v136 = v5;
    v138 = v111;
LABEL_104:
    sub_1D10DC904(v5, v17);
    sub_1D10DC904(v109, v14);
    v113 = *(v112 + 56);
    v114 = v17[v113 + 8] ? -1 : *&v17[v113];
    v115 = &v14[v113];
    v116 = v115[8] ? -1 : *v115;
    sub_1D1162FD4(v14);
    sub_1D1162FD4(v17);
    if (v114 < v116)
    {
      break;
    }

    v112 = v143;
LABEL_102:
    v51 = v141 + 1;
    v109 = v140 + v130;
    v111 = v138 - 1;
    v60 = v135;
    v5 = v136 + v130;
    if (v141 + 1 != v135)
    {
      goto LABEL_103;
    }

    v6 = v127;
    v28 = v123;
    if (v135 < v129)
    {
      goto LABEL_145;
    }

LABEL_51:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1D10F7610(0, *(v28 + 2) + 1, 1, v28);
    }

    v62 = *(v28 + 2);
    v61 = *(v28 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      v28 = sub_1D10F7610((v61 > 1), v62 + 1, 1, v28);
    }

    *(v28 + 2) = v63;
    v64 = &v28[16 * v62];
    *(v64 + 4) = v129;
    *(v64 + 5) = v60;
    v5 = *v128;
    if (!*v128)
    {
      goto LABEL_155;
    }

    v135 = v60;
    if (v62)
    {
      while (2)
      {
        v65 = v63 - 1;
        if (v63 >= 4)
        {
          v70 = &v28[16 * v63 + 32];
          v71 = *(v70 - 64);
          v72 = *(v70 - 56);
          v76 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          if (v76)
          {
            goto LABEL_132;
          }

          v75 = *(v70 - 48);
          v74 = *(v70 - 40);
          v76 = __OFSUB__(v74, v75);
          v68 = v74 - v75;
          v69 = v76;
          if (v76)
          {
            goto LABEL_133;
          }

          v77 = &v28[16 * v63];
          v79 = *v77;
          v78 = *(v77 + 1);
          v76 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v76)
          {
            goto LABEL_135;
          }

          v76 = __OFADD__(v68, v80);
          v81 = v68 + v80;
          if (v76)
          {
            goto LABEL_138;
          }

          if (v81 >= v73)
          {
            v99 = &v28[16 * v65 + 32];
            v101 = *v99;
            v100 = *(v99 + 1);
            v76 = __OFSUB__(v100, v101);
            v102 = v100 - v101;
            if (v76)
            {
              goto LABEL_142;
            }

            if (v68 < v102)
            {
              v65 = v63 - 2;
            }
          }

          else
          {
LABEL_70:
            if (v69)
            {
              goto LABEL_134;
            }

            v82 = &v28[16 * v63];
            v84 = *v82;
            v83 = *(v82 + 1);
            v85 = __OFSUB__(v83, v84);
            v86 = v83 - v84;
            v87 = v85;
            if (v85)
            {
              goto LABEL_137;
            }

            v88 = &v28[16 * v65 + 32];
            v90 = *v88;
            v89 = *(v88 + 1);
            v76 = __OFSUB__(v89, v90);
            v91 = v89 - v90;
            if (v76)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v86, v91))
            {
              goto LABEL_141;
            }

            if (v86 + v91 < v68)
            {
              goto LABEL_84;
            }

            if (v68 < v91)
            {
              v65 = v63 - 2;
            }
          }
        }

        else
        {
          if (v63 == 3)
          {
            v66 = *(v28 + 4);
            v67 = *(v28 + 5);
            v76 = __OFSUB__(v67, v66);
            v68 = v67 - v66;
            v69 = v76;
            goto LABEL_70;
          }

          v92 = &v28[16 * v63];
          v94 = *v92;
          v93 = *(v92 + 1);
          v76 = __OFSUB__(v93, v94);
          v86 = v93 - v94;
          v87 = v76;
LABEL_84:
          if (v87)
          {
            goto LABEL_136;
          }

          v95 = &v28[16 * v65];
          v97 = *(v95 + 4);
          v96 = *(v95 + 5);
          v76 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v76)
          {
            goto LABEL_139;
          }

          if (v98 < v86)
          {
            break;
          }
        }

        v103 = v65 - 1;
        if (v65 - 1 >= v63)
        {
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
LABEL_136:
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v139)
        {
          goto LABEL_152;
        }

        v104 = *&v28[16 * v103 + 32];
        v105 = *&v28[16 * v65 + 40];
        sub_1D1211EB4(*v139 + *(v137 + 72) * v104, *v139 + *(v137 + 72) * *&v28[16 * v65 + 32], *v139 + *(v137 + 72) * v105, v5);
        if (v6)
        {
          goto LABEL_128;
        }

        if (v105 < v104)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1D1245848(v28);
        }

        if (v103 >= *(v28 + 2))
        {
          goto LABEL_131;
        }

        v106 = &v28[16 * v103];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        v144 = v28;
        sub_1D12457BC(v65);
        v28 = v144;
        v63 = *(v144 + 2);
        if (v63 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v26 = v139[1];
    v27 = v135;
    if (v135 >= v26)
    {
      goto LABEL_118;
    }
  }

  if (v107)
  {
    v117 = v142;
    sub_1D11631E4(v5, v142);
    v112 = v143;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D11631E4(v117, v109);
    v109 += v110;
    v5 += v110;
    if (__CFADD__(v111++, 1))
    {
      goto LABEL_102;
    }

    goto LABEL_104;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_1D1211EB4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v20 = (a2 - a1) / v18;
  v53 = a1;
  v52 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v22;
    if (v22 >= 1)
    {
      v29 = -v18;
      v30 = a4 + v22;
      v44 = a1;
      v45 = a4;
      do
      {
        v42 = v28;
        v31 = a2;
        v32 = a2 + v29;
        v46 = v31;
        v47 = v32;
        while (1)
        {
          if (v31 <= a1)
          {
            v53 = v31;
            v51 = v42;
            goto LABEL_70;
          }

          v33 = a3;
          v43 = v28;
          v34 = v30 + v29;
          v35 = v48;
          sub_1D10DC904(v30 + v29, v48);
          v36 = v49;
          sub_1D10DC904(v32, v49);
          v37 = *(v50 + 56);
          v38 = *(v35 + v37 + 8) ? -1 : *(v35 + v37);
          v39 = v36 + v37;
          v40 = *(v39 + 8) ? -1 : *v39;
          v41 = v33 + v29;
          sub_1D1162FD4(v36);
          sub_1D1162FD4(v35);
          if (v38 < v40)
          {
            break;
          }

          v28 = v30 + v29;
          a3 = v33 + v29;
          if (v33 < v30 || v41 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v47;
            a1 = v44;
          }

          else
          {
            v32 = v47;
            a1 = v44;
            if (v33 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 += v29;
          v31 = v46;
          if (v34 <= v45)
          {
            a2 = v46;
            goto LABEL_69;
          }
        }

        a3 = v33 + v29;
        if (v33 < v46 || v41 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v43;
          a1 = v44;
        }

        else
        {
          a2 = v47;
          v28 = v43;
          a1 = v44;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v30 > v45);
    }

LABEL_69:
    v53 = a2;
    v51 = v28;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v21;
    v51 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      do
      {
        sub_1D10DC904(a2, v16);
        sub_1D10DC904(a4, v13);
        v24 = *(v50 + 56);
        if (v16[v24 + 8])
        {
          v25 = -1;
        }

        else
        {
          v25 = *&v16[v24];
        }

        v26 = &v13[v24];
        if (v26[8])
        {
          v27 = -1;
        }

        else
        {
          v27 = *v26;
        }

        sub_1D1162FD4(v13);
        sub_1D1162FD4(v16);
        if (v25 >= v27)
        {
          if (a1 < a4 || a1 >= a4 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v52 = a4 + v18;
          a4 += v18;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
        }

        a1 += v18;
        v53 = a1;
      }

      while (a4 < v49 && a2 < a3);
    }
  }

LABEL_70:
  sub_1D1245874(&v53, &v52, &v51);
}

void sub_1D12123AC()
{
  if (!qword_1EC60D840)
  {
    sub_1D120F738(255, &qword_1EE06A658, &qword_1EE06A5C0, 0x1E696C260, MEMORY[0x1E69E62F8]);
    sub_1D1212458();
    v0 = sub_1D138F5CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D840);
    }
  }
}

unint64_t sub_1D1212458()
{
  result = qword_1EC60D848;
  if (!qword_1EC60D848)
  {
    sub_1D120F738(255, &qword_1EE06A658, &qword_1EE06A5C0, 0x1E696C260, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D848);
  }

  return result;
}

void sub_1D12124DC()
{
  if (!qword_1EC60D850)
  {
    sub_1D12125E8(255, &qword_1EC60D858, type metadata accessor for UserDomainConceptViewData, MEMORY[0x1E695BED0]);
    sub_1D12123AC();
    sub_1D121265C(&qword_1EC60D860, &qword_1EC60D858, type metadata accessor for UserDomainConceptViewData);
    sub_1D1213364(&qword_1EC60D868, sub_1D12123AC);
    v0 = sub_1D138F59C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D850);
    }
  }
}

void sub_1D12125E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D121265C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D12125E8(255, a2, a3, MEMORY[0x1E695BED0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D12126C0()
{
  if (!qword_1EC60D870)
  {
    sub_1D12124DC();
    sub_1D1213364(&qword_1EC60D878, sub_1D12124DC);
    v0 = sub_1D138F58C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D870);
    }
  }
}

uint64_t sub_1D1212754@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D1212A54(*(v2 + 32), *a1, *(v2 + 24), *(v2 + 48));
  *a2 = result;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1D1212790(uint64_t a1, void *a2)
{
  v14 = a2;
  v13 = sub_1D1390A6C();
  v2 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1390A0C();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1D138FF0C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12[1] = sub_1D106F934(0, &qword_1EE06B760);
  sub_1D138FEFC();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D1213364(&qword_1EE06B770, MEMORY[0x1E69E8030]);
  v7 = MEMORY[0x1E69E8030];
  sub_1D120F924(0, &qword_1EE06B7A8, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1D12133AC(&qword_1EE06B7A0, &qword_1EE06B7A8, v7);
  sub_1D139103C();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v13);
  sub_1D1390ABC();
  type metadata accessor for UserDomainConceptDataProvider();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC8];
  v8[2] = MEMORY[0x1E69E7CC8];
  v8[3] = v9;
  v10 = v14;
  v8[4] = v14;
  v11 = v10;
}

uint64_t sub_1D1212A54(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46 = a3;
  v52 = a2;
  v44 = a1;
  sub_1D121302C();
  v6 = v5;
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D121315C();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138D5EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  v43 = sub_1D138EF0C();
  v49 = v10;
  if (a4 && (v19 = [a4 linkCollection]) != 0)
  {
    v20 = v19;
    v21 = [v19 links];

    sub_1D106F934(0, &qword_1EC60D078);
    v22 = sub_1D139045C();

    v41 = v6;
    v42 = v9;
    if (v22 >> 62)
    {
LABEL_21:
      v50 = v22 & 0xFFFFFFFFFFFFFF8;
      v51 = sub_1D13910DC();
    }

    else
    {
      v50 = v22 & 0xFFFFFFFFFFFFFF8;
      v51 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = 0;
    v24 = (v13 + 8);
    while (1)
    {
      v25 = v51 == v23;
      if (v51 == v23)
      {
        break;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1D3886B70](v23, v22);
      }

      else
      {
        if (v23 >= *(v50 + 16))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v26 = *(v22 + 8 * v23 + 32);
      }

      v27 = v26;
      v28 = [v26 targetUUID];
      sub_1D138D5CC();

      v29 = [v52 UUID];
      sub_1D138D5CC();

      LOBYTE(v29) = sub_1D138D5BC();
      v13 = *v24;
      (*v24)(v15, v12);
      v13(v18, v12);
      if (v29)
      {
        goto LABEL_17;
      }

      if (__OFADD__(v23++, 1))
      {
        goto LABEL_20;
      }
    }

    v23 = 0;
LABEL_17:

    v6 = v41;
    v9 = v42;
  }

  else
  {
    v23 = 0;
    v25 = 1;
  }

  v31 = v52;
  v54 = sub_1D11D8EE4(v52, 2, 0, 0);
  v53 = MEMORY[0x1E69E7CC0];
  sub_1D12130C0();
  sub_1D1213364(&qword_1EC60D898, sub_1D12130C0);
  v32 = v45;
  sub_1D138F82C();

  v33 = swift_allocObject();
  v34 = v46;
  *(v33 + 16) = v31;
  *(v33 + 24) = v34;
  *(v33 + 32) = v43;
  *(v33 + 40) = v23;
  *(v33 + 48) = v25;
  type metadata accessor for UserDomainConceptViewData();
  sub_1D1213364(&qword_1EC60D8A8, sub_1D121302C);
  v35 = v31;
  v36 = v34;
  v37 = v47;
  sub_1D138F81C();

  (*(v48 + 8))(v32, v6);
  sub_1D1213364(&qword_1EC60D8B0, sub_1D121315C);
  v38 = sub_1D138F87C();
  (*(v49 + 8))(v37, v9);
  v54 = v38;
  sub_1D1213218();
  sub_1D1213364(&qword_1EC60D8C0, sub_1D1213218);
  v39 = sub_1D138F80C();

  return v39;
}

void sub_1D121302C()
{
  if (!qword_1EC60D888)
  {
    sub_1D12130C0();
    sub_1D1213364(&qword_1EC60D898, sub_1D12130C0);
    v0 = sub_1D138F52C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D888);
    }
  }
}

void sub_1D12130C0()
{
  if (!qword_1EC60D890)
  {
    sub_1D120F738(255, &qword_1EC60D048, &qword_1EC60B0A8, 0x1E696C0F8, MEMORY[0x1E69E62F8]);
    sub_1D10922EC();
    v0 = sub_1D138F62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D890);
    }
  }
}

void sub_1D121315C()
{
  if (!qword_1EC60D8A0)
  {
    sub_1D121302C();
    type metadata accessor for UserDomainConceptViewData();
    sub_1D1213364(&qword_1EC60D8A8, sub_1D121302C);
    v0 = sub_1D138F50C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D8A0);
    }
  }
}

void sub_1D1213218()
{
  if (!qword_1EC60D8B8)
  {
    sub_1D121315C();
    sub_1D1213364(&qword_1EC60D8B0, sub_1D121315C);
    v0 = sub_1D138F56C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60D8B8);
    }
  }
}

uint64_t sub_1D12132AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D120F924(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D121331C()
{
  result = qword_1EC60D8C8;
  if (!qword_1EC60D8C8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC60D8C8);
  }

  return result;
}

uint64_t sub_1D1213364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D12133AC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D120F924(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1213410(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D1213458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D12134BC()
{
  result = qword_1EC60D8D0;
  if (!qword_1EC60D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D8D0);
  }

  return result;
}

uint64_t sub_1D1213510()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  return v1;
}

uint64_t sub_1D1213584(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D138F0BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F06C();
  v9 = a1;
  v10 = sub_1D138F0AC();
  v11 = sub_1D13907EC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v33 = v2;
    v13 = v12;
    v32 = swift_slowAlloc();
    v34 = v32;
    v35 = ObjectType;
    *v13 = 136446466;
    swift_getMetatypeMetadata();
    v14 = sub_1D13901EC();
    v16 = sub_1D11DF718(v14, v15, &v34);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = v9;
    v18 = [v17 description];
    v19 = sub_1D139016C();
    v31 = v5;
    v20 = v19;
    v22 = v21;

    v23 = sub_1D11DF718(v20, v22, &v34);

    *(v13 + 14) = v23;
    _os_log_impl(&dword_1D101F000, v10, v11, "[%{public}s]: downloadableAttachmentDidChangeState (downloadableAttachment: %s)", v13, 0x16u);
    v24 = v32;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v24, -1, -1);
    v25 = v13;
    v2 = v33;
    MEMORY[0x1D38882F0](v25, -1, -1);

    (*(v6 + 8))(v8, v31);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v35 = v9;
  v26 = v9;
  v27 = v2;
  sub_1D138F7CC();
  v28 = *&v27[OBJC_IVAR____TtC15HealthRecordsUI41DownloadableAttachmentStateChangeListener_handler];

  v28(v26);
}

id sub_1D12138EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadableAttachmentStateChangeListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DownloadableAttachmentStateChangeListener()
{
  result = qword_1EC60D958;
  if (!qword_1EC60D958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1213A28()
{
  sub_1D1213B28(319, &qword_1EC60D968, sub_1D1213AF4, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D1213B28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D1213B8C()
{
  result = qword_1EC60D978;
  if (!qword_1EC60D978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60D978);
  }

  return result;
}

uint64_t sub_1D1213BD8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D138F7BC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D1213C58(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1D138F7CC();
}

unint64_t sub_1D1213CEC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D1213D20(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1D1213D20(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D1213D34()
{
  result = qword_1EC60D980;
  if (!qword_1EC60D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D980);
  }

  return result;
}

uint64_t sub_1D1213D98(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1 || a1 == 1)
    {
      goto LABEL_11;
    }
  }

  else if (a1 == 2 || a1 == 3 || a1 == 4)
  {
LABEL_11:
    sub_1D1214498();
    return sub_1D1390DBC();
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

unint64_t sub_1D1213EB4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D1214478(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1D1213EE8(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
      sub_1D1214498();
      result = sub_1D1390DBC();
      break;
    default:
      result = sub_1D139169C();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_1D12141A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D1214488(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t UserInteractionAction.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

void *sub_1D1214318@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1D1214330(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_9;
    }
  }

  else if (!a1 || a1 == 1)
  {
LABEL_9:
    sub_1D1214498();
    return sub_1D1390DBC();
  }

  result = sub_1D139169C();
  __break(1u);
  return result;
}

unint64_t sub_1D121442C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D12144E4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t PinLabRoomType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D1214478(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D1214488(unint64_t result)
{
  if (result > 0x13)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D1214498()
{
  result = qword_1EE06A510;
  if (!qword_1EE06A510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06A510);
  }

  return result;
}

unint64_t sub_1D12144E4(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D12144F8()
{
  result = qword_1EC60D988;
  if (!qword_1EC60D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D988);
  }

  return result;
}

unint64_t sub_1D1214550()
{
  result = qword_1EC60D990;
  if (!qword_1EC60D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D990);
  }

  return result;
}

unint64_t sub_1D12145A8()
{
  result = qword_1EC60D998;
  if (!qword_1EC60D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D998);
  }

  return result;
}

unint64_t sub_1D1214600()
{
  result = qword_1EC60D9A0;
  if (!qword_1EC60D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D9A0);
  }

  return result;
}

unint64_t sub_1D1214658()
{
  result = qword_1EC60D9A8;
  if (!qword_1EC60D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D9A8);
  }

  return result;
}

unint64_t sub_1D12146B0()
{
  result = qword_1EC60D9B0;
  if (!qword_1EC60D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D9B0);
  }

  return result;
}

unint64_t sub_1D1214708()
{
  result = qword_1EC60D9B8;
  if (!qword_1EC60D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D9B8);
  }

  return result;
}

unint64_t sub_1D1214760()
{
  result = qword_1EC60D9C0;
  if (!qword_1EC60D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D9C0);
  }

  return result;
}

void sub_1D1214844(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_font;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1D12148A4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_font;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D12148F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_font;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id LabelStackView.__allocating_init(textStyle:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_labels] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_interItemSpacing] = 0x4010000000000000;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_textStyle] = a1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 preferredFontForTextStyle_];
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_font] = v6;
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);

  return v7;
}

id LabelStackView.init(textStyle:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_labels] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_interItemSpacing] = 0x4010000000000000;
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_textStyle] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 preferredFontForTextStyle_];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_font] = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for LabelStackView();
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);

  return v6;
}

void sub_1D1214C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v8 = sub_1D139012C();
  [v7 setText_];

  [v7 setTextColor_];
  v9 = OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_font;
  swift_beginAccess();
  [v7 setFont_];
  [v7 setNumberOfLines_];
  sub_1D1215600(v7);
}

void sub_1D1214CF0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v4 setAttributedText_];
  [v4 setNumberOfLines_];
  sub_1D1215600(v4);
}

id sub_1D1214D80()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_labels;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D3886B70](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 removeFromSuperview];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  *&v0[v1] = MEMORY[0x1E69E7CC0];

  return [v0 setNeedsLayout];
}

uint64_t sub_1D1214EB4()
{
  v1 = sub_1D139160C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LabelStackView();
  v23.receiver = v0;
  v23.super_class = v5;
  objc_msgSendSuper2(&v23, sel_layoutSubviews);
  [v0 directionalLayoutMargins];
  v7 = v6;
  [v0 directionalLayoutMargins];
  v9 = v8;
  [v0 bounds];
  v10 = CGRectGetWidth(v24) - v7;
  v11 = OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_labels;
  swift_beginAccess();
  v12 = *&v0[v11];
  if (v12 >> 62)
  {
    result = sub_1D13910DC();
    v14 = v10 - v9;
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v10 - v9;
    if (!result)
    {
      goto LABEL_8;
    }
  }

  if ((v12 & 0xC000000000000001) != 0)
  {

    v15 = MEMORY[0x1D3886B70](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v15 = *(v12 + 32);
  }

  [v15 sizeThatFits_];
  (*(v2 + 104))(v4, *MEMORY[0x1E69E7040], v1);
  v16 = [v15 traitCollection];
  [v16 displayScale];
  sub_1D138D86C();
  [v16 displayScale];
  sub_1D138D86C();

  result = (*(v2 + 8))(v4, v1);
LABEL_8:
  v17 = *&v0[v11];
  if (v17 >> 62)
  {
    result = sub_1D13910DC();
    v18 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      return result;
    }
  }

  if (v18 < 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v19 = 0;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1D3886B70](v19, v17);
    }

    else
    {
      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    if ([v0 effectiveUserInterfaceLayoutDirection] == 1)
    {
      [v0 bounds];
      CGRectGetWidth(v26);
      [v21 intrinsicContentSize];
    }

    ++v19;
    [v21 setFrame_];
    [v21 sizeToFit];
    [v21 frame];
    CGRectGetMaxY(v25);
  }

  while (v18 != v19);
}

uint64_t sub_1D12152B4()
{
  v1 = v0;
  v2 = sub_1D139160C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 directionalLayoutMargins];
  v8 = v7;
  [v0 directionalLayoutMargins];
  v10 = v9;
  [v0 bounds];
  Width = CGRectGetWidth(v33);
  v12 = OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_labels;
  result = swift_beginAccess();
  v14 = *&v1[v12];
  if (v14 >> 62)
  {
    result = sub_1D13910DC();
    v15 = result;
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v15 < 1)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v29 = v12;
  v30 = v1;
  v16 = Width - v8 - v10;
  v32 = v14 & 0xC000000000000001;
  v31 = *MEMORY[0x1E69E7040];
  v17 = (v3 + 104);
  v18 = (v3 + 8);

  v19 = 0;
  v20 = 0.0;
  v21 = v14;
  do
  {
    if (v32)
    {
      v22 = MEMORY[0x1D3886B70](v19, v14);
    }

    else
    {
      v22 = *(v14 + 8 * v19 + 32);
    }

    v23 = v22;
    ++v19;
    [v22 sizeThatFits_];
    (*v17)(v6, v31, v2);
    v24 = [v23 traitCollection];
    [v24 displayScale];
    sub_1D138D86C();
    [v24 displayScale];
    sub_1D138D86C();
    v26 = v25;

    (*v18)(v6, v2);
    v20 = v20 + v26;
    v14 = v21;
  }

  while (v15 != v19);

  v12 = v29;
  v1 = v30;
LABEL_11:
  v27 = *&v1[v12];
  if (!(v27 >> 62))
  {
    result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!__OFSUB__(result, 1))
    {
      return result;
    }

    goto LABEL_16;
  }

  result = sub_1D13910DC();
  if (__OFSUB__(result, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

id sub_1D1215600(void *a1)
{
  v2 = v1;
  [v2 addSubview_];
  v4 = OBJC_IVAR____TtC15HealthRecordsUI14LabelStackView_labels;
  swift_beginAccess();
  v5 = a1;
  MEMORY[0x1D3885D90]();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();
  swift_endAccess();
  return [v2 setNeedsLayout];
}

id LabelStackView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LabelStackView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabelStackView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D1215994@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_1D11362EC(a2, a3), (v7 & 1) != 0))
  {
    sub_1D1217D54(*(a1 + 56) + 72 * v6, a4, sub_1D11DD350);
  }

  else
  {
    *(a4 + 64) = 0;
    result = 0.0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

double sub_1D1215A34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (*(a1 + 16) && (v8 = sub_1D129E444(a2, a3, a4, a5 & 1), (v9 & 1) != 0))
  {
    v10 = *(a1 + 56) + 48 * v8;
    v11 = *(v10 + 24);
    v12 = *(v10 + 32);
    v13 = *(v10 + 40);
    *a6 = *v10;
    *(a6 + 8) = *(v10 + 8);
    *(a6 + 24) = v11;
    *(a6 + 32) = v12;
    *(a6 + 40) = v13;

    v14 = v13;
  }

  else
  {
    result = 0.0;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *a6 = 0u;
  }

  return result;
}

double sub_1D1215AD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a1 + 16) && (v10 = a3(a2), (v11 & 1) != 0))
  {
    sub_1D1217A9C(*(a1 + 56) + 72 * v10, a6, a4, a5);
  }

  else
  {
    *(a6 + 64) = 0;
    result = 0.0;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

double sub_1D1215B54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  if (*(a1 + 16) && (v8 = sub_1D129E444(a2, a3, a4, a5 & 1), (v9 & 1) != 0))
  {
    v10 = *(a1 + 56) + 48 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 32);
    v16 = *(v10 + 40);
    *a6 = *v10;
    a6[1] = v12;
    a6[2] = v13;
    a6[3] = v14;
    a6[4] = v15;
    a6[5] = v16;

    sub_1D10A00EC(v11, v12, v13, v14, v15, v16);
  }

  else
  {
    *a6 = 0u;
    *(a6 + 1) = 0u;
    *&result = 0x1FFFFFFFELL;
    *(a6 + 2) = xmmword_1D13A9F00;
  }

  return result;
}

uint64_t sub_1D1215BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for BrowseCategory();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v22[0] = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = v4;
  v11 = *a1;
  v10 = *(a1 + 8);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v23 = a3;
  v24 = v14;
  v16 = *a2;
  v27 = *(a2 + 8);
  v28 = v16;
  v26 = *(a2 + 16);
  v25 = *(a2 + 24);
  v17 = *v4;
  v32[2] = a3;
  v29 = sub_1D1217DC0;
  v30 = v32;
  v31 = v17;
  sub_1D1217A24(0, &qword_1EE06AED8, &qword_1EE06AEE0, type metadata accessor for UnboundedCache, MEMORY[0x1E69E6720]);
  sub_1D1390A9C();
  if (v33)
  {
    v39[0] = v35;
    v39[1] = v36;
    v40 = v37;
    v38[0] = v33;
    v38[1] = v34;
    *&v33 = v11;
    *(&v33 + 1) = v10;
    *&v34 = v13;
    *(&v34 + 1) = v12;
    *&v35 = v15;
    *(&v35 + 1) = v24;
    sub_1D10A00EC(v11, v10, v13, v12, v15, v24);
    sub_1D1254CF8(&v33, v28, v27, v26, v25);
  }

  else
  {
    sub_1D1217608(&v33);
    v18 = sub_1D109EAA4(MEMORY[0x1E69E7CC0]);
    sub_1D1217A24(0, &qword_1EC60D9E8, &qword_1EC60D9F0, MEMORY[0x1E69E5E28], type metadata accessor for Box);
    swift_allocObject();
    *&v38[0] = sub_1D1257814(v18);
    v19 = swift_allocObject();
    swift_weakInit();

    sub_1D1096838(sub_1D1217A94, v19, v38 + 1);
    sub_1D1096860(sub_1D1217A94, v19, v39 + 1);

    *&v41 = v11;
    *(&v41 + 1) = v10;
    v42 = v13;
    v43 = v12;
    v44 = v15;
    v45 = v24;
    sub_1D10A00EC(v11, v10, v13, v12, v15, v24);
    sub_1D1254CF8(&v41, v28, v27, v26, v25);
    v20 = v22[0];
    sub_1D1217D54(v23, v22[0], type metadata accessor for BrowseCategory);
    sub_1D1217A9C(v38, &v33, &qword_1EE06AEE0, &type metadata for BrowseIcon);
    sub_1D1254F98(&v33, v20);
  }

  return sub_1D1217B1C(v38);
}

void *sub_1D1215F38()
{
  type metadata accessor for BrowseIconProvider();
  v0 = swift_allocObject();
  result = sub_1D1217394();
  qword_1EE06AE08 = v0;
  return result;
}

uint64_t static BrowseIconProvider.shared.getter()
{
  if (qword_1EE06A0C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D1215FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 296) = a2;
  *(v4 + 304) = v3;
  *(v4 + 288) = a1;
  *(v4 + 312) = type metadata accessor for BrowseCategory();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = *a3;
  *(v4 + 344) = *(a3 + 16);
  *(v4 + 233) = *(a3 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D1216088, v3, 0);
}

uint64_t sub_1D1216088()
{
  v51 = v0;
  sub_1D1217D54(*(v0 + 296), *(v0 + 320), type metadata accessor for BrowseCategory);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v14 = *(v0 + 296);
    v15 = *(v0 + 304);
    swift_beginAccess();
    sub_1D1216558(v15 + 184, v0 + 16);
    v16 = *(v0 + 16);
    v17 = swift_task_alloc();
    *(v17 + 16) = v14;
    v18 = swift_task_alloc();
    v18[2] = sub_1D121752C;
    v18[3] = v17;
    v18[4] = v16;
    sub_1D1217A24(0, &qword_1EE06AED8, &qword_1EE06AEE0, type metadata accessor for UnboundedCache, MEMORY[0x1E69E6720]);
    sub_1D1390A9C();

    sub_1D1217590(v0 + 16);
    v19 = *(v0 + 88);
    if (v19)
    {
      v20 = *(v0 + 233);
      v21 = *(v0 + 344);
      *(v0 + 208) = *(v0 + 328);
      *(v0 + 224) = v21;
      *(v0 + 232) = v20;
      v22 = swift_task_alloc();
      *(v22 + 16) = v0 + 208;
      v23 = swift_task_alloc();
      v23[2] = sub_1D121769C;
      v23[3] = v22;
      v23[4] = v19;
      sub_1D12176C0();
      sub_1D1390A9C();

      v41 = *(v0 + 176);
      v43 = *(v0 + 160);
      v25 = *(v0 + 192);
      v24 = *(v0 + 200);
      sub_1D1217608(v0 + 88);
      if (v25 >> 1 != 0xFFFFFFFF)
      {
        v26 = *(v0 + 320);
        v27 = *(v0 + 288);
        *v27 = v43;
        *(v27 + 16) = v41;
        *(v27 + 32) = v25;
        *(v27 + 40) = v24;
LABEL_13:
        sub_1D10F3688(v26);
        goto LABEL_14;
      }
    }

    else
    {
      sub_1D1217608(v0 + 88);
    }

    BrowseCategory.systemImageName.getter();
    if (v28 && (v29 = [objc_opt_self() configurationPreferringMulticolor], v30 = sub_1D139012C(), , v31 = objc_msgSend(objc_opt_self(), sel_systemImageNamed_withConfiguration_, v30, v29), v29, v30, v31))
    {
      v32 = *(v0 + 233);
      v33 = *(v0 + 344);
      v34 = *(v0 + 320);
      v36 = *(v0 + 288);
      v35 = *(v0 + 296);
      v44 = v31;
      v45 = 0u;
      v46 = 0u;
      v47 = 0;
      v48 = *(v0 + 328);
      v49 = v33;
      v50 = v32;
      swift_beginAccess();
      v37 = v31;
      sub_1D1215BF0(&v44, &v48, v35);
      swift_endAccess();

      *v36 = v31;
      *(v36 + 8) = 0u;
      *(v36 + 24) = 0u;
      *(v36 + 40) = 0;
      v26 = v34;
    }

    else
    {
      v26 = *(v0 + 320);
      v38 = *(v0 + 288);
      *v38 = 0u;
      v38[1] = 0u;
      v38[2] = xmmword_1D13A9F00;
    }

    goto LABEL_13;
  }

  v1 = *(v0 + 320);
  sub_1D107D12C();
  v3 = (v1 + *(v2 + 48));
  v4 = *v3;
  v5 = v3[1];
  if (qword_1EC608DC0 != -1)
  {
    swift_once();
    v1 = *(v0 + 320);
  }

  v6 = *(v0 + 233);
  v7 = *(v0 + 344);
  v42 = *(v0 + 328);
  v8 = *(v0 + 288);
  os_unfair_lock_lock(&dword_1EC60E248);

  os_unfair_lock_unlock(&dword_1EC60E248);
  v48 = v42;
  v49 = v7;
  v50 = v6;
  AccountIconProvider.placeholder(forTitle:size:)(v4, v5, &v48, &v44);

  v9 = v46;
  v10 = v47;
  v11 = BYTE8(v46) | 0x8000000000000000;
  v12 = v45;
  *v8 = v44;
  *(v8 + 8) = v12;
  *(v8 + 24) = v9;
  *(v8 + 32) = v11;
  *(v8 + 40) = v10;
  v13 = sub_1D138D5EC();
  (*(*(v13 - 8) + 8))(v1, v13);
LABEL_14:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1D1216558(uint64_t a1, uint64_t a2)
{
  sub_1D1217C10(0, &qword_1EE06AEC8, type metadata accessor for UnboundedCache);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D12165D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 376) = a2;
  *(v4 + 384) = v3;
  *(v4 + 368) = a1;
  v6 = sub_1D138F0BC();
  *(v4 + 392) = v6;
  *(v4 + 400) = *(v6 - 8);
  *(v4 + 408) = swift_task_alloc();
  v7 = sub_1D138D5EC();
  *(v4 + 416) = v7;
  *(v4 + 424) = *(v7 - 8);
  *(v4 + 432) = swift_task_alloc();
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 448) = type metadata accessor for BrowseCategory();
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = *a3;
  *(v4 + 480) = *(a3 + 16);
  *(v4 + 281) = *(a3 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D1216758, v3, 0);
}

uint64_t sub_1D1216758()
{
  v46 = v0;
  sub_1D1217D54(*(v0 + 376), *(v0 + 456), type metadata accessor for BrowseCategory);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *(v0 + 456);
    v2 = *(v0 + 440);
    v3 = *(v0 + 416);
    v4 = *(v0 + 424);
    sub_1D107D12C();

    (*(v4 + 32))(v2, v1, v3);
    if (qword_1EC608DC0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 281);
    v6 = *(v0 + 480);
    v37 = *(v0 + 464);
    os_unfair_lock_lock(&dword_1EC60E248);
    *(v0 + 488) = qword_1EC60E250;

    os_unfair_lock_unlock(&dword_1EC60E248);
    *(v0 + 288) = v37;
    *(v0 + 304) = v6;
    *(v0 + 312) = v5;
    v7 = swift_task_alloc();
    *(v0 + 496) = v7;
    *v7 = v0;
    v7[1] = sub_1D1216C88;
    v8 = *(v0 + 440);

    return AccountIconProvider.fetchIcon(for:size:)(v0 + 208, v8, v0 + 288);
  }

  v10 = *(v0 + 376);
  v11 = *(v0 + 384);
  swift_beginAccess();
  sub_1D1216558(v11 + 112, v0 + 16);
  v12 = *(v0 + 16);
  v13 = swift_task_alloc();
  *(v13 + 16) = v10;
  v14 = swift_task_alloc();
  v14[2] = sub_1D1217DC0;
  v14[3] = v13;
  v14[4] = v12;
  sub_1D1217A24(0, &qword_1EE06AED8, &qword_1EE06AEE0, type metadata accessor for UnboundedCache, MEMORY[0x1E69E6720]);
  sub_1D1390A9C();

  sub_1D1217590(v0 + 16);
  v15 = *(v0 + 88);
  if (!v15)
  {
    sub_1D1217608(v0 + 88);
    goto LABEL_11;
  }

  v16 = *(v0 + 281);
  v17 = *(v0 + 480);
  *(v0 + 256) = *(v0 + 464);
  *(v0 + 272) = v17;
  *(v0 + 280) = v16;
  v18 = swift_task_alloc();
  *(v18 + 16) = v0 + 256;
  v19 = swift_task_alloc();
  v19[2] = sub_1D1217DF4;
  v19[3] = v18;
  v19[4] = v15;
  sub_1D12176C0();
  sub_1D1390A9C();

  v35 = *(v0 + 176);
  v38 = *(v0 + 160);
  v33 = *(v0 + 192);
  sub_1D1217608(v0 + 88);
  v21 = v33;
  v20 = v35;
  v22 = v38;
  if (v33 >> 1 == 0xFFFFFFFF)
  {
LABEL_11:
    if (*(v0 + 281) == 1)
    {
      v23 = *(v0 + 464);
      if (*(v0 + 472) | *(v0 + 480) | v23)
      {
        if (v23 == 1 && *(v0 + 472) == 0)
        {
          v24 = 40.0;
        }

        else
        {
          v25 = *(v0 + 472) == 0 && v23 == 2;
          v24 = 82.0;
          if (v25)
          {
            v24 = 48.0;
          }
        }
      }

      else
      {
        v24 = 28.0;
      }
    }

    else
    {
      v24 = *(v0 + 464);
    }

    sub_1D12170AC(&v40, v24, v24);
    v22 = v40;
    v20 = v41;
    v21 = v42;
    v26 = v42;
    if (v42 >> 1 != 0xFFFFFFFF)
    {
      v27 = *(v0 + 281);
      v28 = *(v0 + 480);
      v29 = *(v0 + 376);
      v36 = v41;
      v39 = v40;
      v43 = *(v0 + 464);
      v44 = v28;
      v45 = v27;
      v34 = v42;
      swift_beginAccess();
      sub_1D10A00EC(v39, *(&v39 + 1), v36, *(&v36 + 1), v26, *(&v34 + 1));
      sub_1D1215BF0(&v40, &v43, v29);
      swift_endAccess();
      sub_1D10A4F58(v39, *(&v39 + 1), v36, *(&v36 + 1), v26);
      v21 = v34;
      v20 = v36;
      v22 = v39;
    }
  }

  v30 = *(v0 + 456);
  v31 = *(v0 + 368);
  *v31 = v22;
  v31[1] = v20;
  v31[2] = v21;
  sub_1D10F3688(v30);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1D1216C88()
{
  v1 = *(*v0 + 384);

  return MEMORY[0x1EEE6DFA0](sub_1D1216DB4, v1, 0);
}

uint64_t sub_1D1216DB4()
{
  v36 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 440);
  if (v1)
  {
    v3 = *(v0 + 368);
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v33 = *(v0 + 216);
    v6 = *(v0 + 208);
    (*(*(v0 + 424) + 8))(v2, *(v0 + 416));
    *v3 = v6 & 1;
    *(v3 + 8) = v33;
    *(v3 + 24) = v5;
    *(v3 + 32) = v4 & 1 | 0x8000000000000000;
  }

  else
  {
    v8 = *(v0 + 424);
    v7 = *(v0 + 432);
    v9 = *(v0 + 416);
    sub_1D138F06C();
    (*(v8 + 16))(v7, v2, v9);
    v10 = sub_1D138F0AC();
    v11 = sub_1D13907FC();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 432);
    v14 = *(v0 + 440);
    v15 = *(v0 + 416);
    v16 = *(v0 + 424);
    v17 = *(v0 + 400);
    v18 = *(v0 + 408);
    v19 = *(v0 + 392);
    if (v12)
    {
      v34 = *(v0 + 408);
      v20 = swift_slowAlloc();
      v32 = v19;
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315138;
      sub_1D1217728(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
      v30 = v11;
      v22 = sub_1D13915CC();
      v31 = v14;
      v24 = v23;
      v25 = *(v16 + 8);
      v25(v13, v15);
      v26 = sub_1D11DF718(v22, v24, &v35);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_1D101F000, v10, v30, "Unable to fetch icon for account with identifier %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1D38882F0](v21, -1, -1);
      MEMORY[0x1D38882F0](v20, -1, -1);

      (*(v17 + 8))(v34, v32);
      v25(v31, v15);
    }

    else
    {

      v27 = *(v16 + 8);
      v27(v13, v15);
      (*(v17 + 8))(v18, v19);
      v27(v14, v15);
    }

    v1 = 0;
    v3 = *(v0 + 368);
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0x1FFFFFFFELL;
  }

  *(v3 + 40) = v1;

  v28 = *(v0 + 8);

  return v28();
}

void sub_1D12170AC(void *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = BrowseCategory.systemImageName.getter();
  if (!v7)
  {
    goto LABEL_8;
  }

  if ((v6 != 0x69662E736C6C6970 || v7 != 0xEA00000000006C6CLL) && (sub_1D139162C() & 1) == 0)
  {
    v9 = [objc_opt_self() configurationPreferringMulticolor];
    v10 = sub_1D139012C();

    v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

    v8 = v11;
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_8:
    BrowseCategory.coloredImageName.getter();
    if (!v12)
    {
      goto LABEL_13;
    }

    if (qword_1EE06A528 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE06B6C8;
    v14 = sub_1D139012C();

    v15 = [objc_opt_self() imageNamed:v14 inBundle:v13 compatibleWithTraitCollection:0];

    if (v15)
    {
      v16 = v15;
      v17 = 0;
    }

    else
    {
LABEL_13:
      v18 = BrowseCategory.image.getter();
      v16 = v18;
      v19 = BrowseCategory.tintColorForTemplateImage.getter();
      v17 = v19;
      if (!v18)
      {

        v17 = 0;
        v21 = 0x1FFFFFFFELL;
        goto LABEL_17;
      }

      v20 = v19;
    }

    v18 = [v16 scaledToTargetSize_];

    v21 = 0;
LABEL_17:
    *a1 = v18;
    a1[1] = v17;
    a1[2] = 0;
    a1[3] = 0;
    a1[4] = v21;
    goto LABEL_18;
  }

  v8 = [objc_opt_self() hk_medicationsSymbolImage];
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  *a1 = v8;
  *(a1 + 1) = 0u;
  *(a1 + 3) = 0u;
LABEL_18:
  a1[5] = 0;
}

uint64_t BrowseIconProvider.deinit()
{
  sub_1D1217590(v0 + 112);
  sub_1D1217590(v0 + 184);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t BrowseIconProvider.__deallocating_deinit()
{
  sub_1D1217590(v0 + 112);
  sub_1D1217590(v0 + 184);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void *sub_1D1217394()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D109EBEC(MEMORY[0x1E69E7CC0]);
  sub_1D1217B9C();
  swift_allocObject();
  v1[14] = sub_1D1257814(v3);
  v4 = swift_allocObject();
  swift_weakInit();

  sub_1D1096838(sub_1D1217A94, v4, v1 + 15);
  sub_1D1096860(sub_1D1217A94, v4, v1 + 19);

  v5 = sub_1D109EBEC(v2);
  swift_allocObject();
  v1[23] = sub_1D1257814(v5);
  v6 = swift_allocObject();
  swift_weakInit();

  sub_1D1096838(sub_1D1217DBC, v6, v1 + 24);
  sub_1D1096860(sub_1D1217DBC, v6, v1 + 28);

  return v1;
}

uint64_t sub_1D1217590(uint64_t a1)
{
  sub_1D1217C10(0, &qword_1EE06AEC8, type metadata accessor for UnboundedCache);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1217608(uint64_t a1)
{
  sub_1D1217A24(0, &qword_1EE06AED8, &qword_1EE06AEE0, type metadata accessor for UnboundedCache, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D12176C0()
{
  if (!qword_1EE06B038)
  {
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B038);
    }
  }
}

uint64_t sub_1D1217728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of BrowseIconProvider.placeholder(for:size:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 152) + **(*v3 + 152));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1D10819BC;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of BrowseIconProvider.fetchIcon(for:size:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 160) + **(*v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1D108077C;

  return v10(a1, a2, a3);
}

void sub_1D1217A24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t, unint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D1217CE8(255, a3, &type metadata for BrowseIcon, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D1217A9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D1217CE8(0, a3, a4, type metadata accessor for UnboundedCache);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D1217B1C(uint64_t a1)
{
  sub_1D1217CE8(0, &qword_1EE06AEE0, &type metadata for BrowseIcon, type metadata accessor for UnboundedCache);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1217B9C()
{
  if (!qword_1EE06A7E0)
  {
    sub_1D1217C10(255, &qword_1EE06A680, MEMORY[0x1E69E5E28]);
    v0 = type metadata accessor for Box();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A7E0);
    }
  }
}

void sub_1D1217C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for BrowseCategory();
    sub_1D1217CE8(255, &qword_1EE06AEE0, &type metadata for BrowseIcon, type metadata accessor for UnboundedCache);
    v8 = v7;
    v9 = sub_1D1217728(&qword_1EE06BBE8, type metadata accessor for BrowseCategory);
    v10 = a3(a1, v6, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D1217CE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D109FEE8();
    v9 = a4(a1, &type metadata for AccountIcon.Size, a3, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D1217D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for HorizontalHighlightsDataSource()
{
  result = qword_1EC60D9F8;
  if (!qword_1EC60D9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1217ECC()
{
  v1 = sub_1D138DFEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138DFDC();
  v5 = sub_1D138DFBC();
  if (v0)
  {
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    v6 = v5;
    (*(v2 + 8))(v4, v1);
    v7 = [objc_opt_self() estimatedDimension_];
    v1 = sub_1D1390BAC();
  }

  return v1;
}

unint64_t sub_1D121801C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D138DE3C();
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138F37C();
  v4 = sub_1D138DE2C();
  a1[3] = v3;
  result = sub_1D10B71CC();
  a1[4] = result;
  *a1 = v4;
  return result;
}

id sub_1D12181EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HorizontalHighlightsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}