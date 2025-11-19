void HKActivitySummary.humanReadableDate.getter(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v22 - v13;
  v15 = [v2 _endDate];
  if (v15)
  {
    v23 = a1;
    v16 = v15;
    sub_1D15A2668();

    v17 = *(v5 + 32);
    v17(v14, v10, v4);
    v18 = [v2 _creationDate];
    sub_1D15A2668();

    LOBYTE(v18) = sub_1D15A2638();
    v19 = *(v5 + 8);
    v19(v7, v4);
    if (v18)
    {
      v17(v23, v14, v4);
    }

    else
    {
      v21 = [v2 _creationDate];
      sub_1D15A2668();

      v19(v14, v4);
    }
  }

  else
  {
    v23 = [v2 _creationDate];
    sub_1D15A2668();
    v20 = v23;
  }
}

id sub_1D14DB3B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v0 setNumberStyle_];
  result = [v0 setRoundingMode_];
  qword_1EE05AD40 = v0;
  return result;
}

NSAttributedString_optional __swiftcall HKActivitySummary.createAttributedString(from:valueText:valueFont:unitText:unitFont:)(Swift::String from, Swift::String valueText, UIFont valueFont, Swift::String unitText, UIFont unitFont)
{
  sub_1D14DBEE4(0, &qword_1EE05ABD0, sub_1D14DBF38);
  inited = swift_initStackObject();
  v8 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v9 = MEMORY[0x1E69DB650];
  *(inited + 16) = xmmword_1D15AEBB0;
  v10 = *v9;
  *(inited + 40) = valueFont;
  *(inited + 48) = v10;
  v11 = objc_opt_self();
  v12 = v8;
  v13 = v10;
  v14 = v12;
  v15 = v13;
  v16 = valueFont.super.isa;
  *(inited + 56) = [v11 labelColor];
  v17 = sub_1D159BBE0(inited);
  swift_setDeallocating();
  sub_1D14DBF38();
  swift_arrayDestroy();
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1D15AEBB0;
  *(v18 + 32) = v14;
  *(v18 + 40) = unitFont;
  *(v18 + 48) = v15;
  v19 = unitFont.super.isa;
  *(v18 + 56) = [v11 secondaryLabelColor];
  v35 = sub_1D159BBE0(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  v20 = sub_1D15A3EF8();
  v21 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v22 = sub_1D15A3EF8();
  v23 = [v21 initWithString_];

  v24 = sub_1D15A3EF8();
  v25 = [v20 rangeOfString_];
  v27 = v26;

  v28 = sub_1D15A3EF8();
  v36 = [v20 rangeOfString_];
  v30 = v29;

  sub_1D14DBA5C(v17);

  type metadata accessor for Key(0);
  sub_1D14587E0();
  v31 = sub_1D15A3E48();

  [v23 addAttributes:v31 range:{v25, v27}];

  sub_1D14DBA5C(v35);

  v32 = sub_1D15A3E48();

  [v23 addAttributes:v32 range:{v36, v30}];

  v34 = v23;
  result.value.super.isa = v34;
  result.is_nil = v33;
  return result;
}

id HKActivitySummary.createStandHourTitleText(_:titleFont:healthStore:)(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D15A4228();
  result = [a3 displayTypeController];
  if (result)
  {
    v12 = result;
    v13 = 0xD00000000000001DLL;
    v14 = [result displayTypeWithIdentifier_];

    v15 = "ACTIVITY_SUMMARY_EXERCISE_UNIT";
    v32 = v7;
    if (v14 && [v14 _isWheelchairUser])
    {
      v13 = 0xD000000000000028;
      v15 = "ACTIVITY_SUMMARY_STAND_HEADER";
    }

    v16 = v15 | 0x8000000000000000;
    sub_1D1479D10(a1, v34);
    type metadata accessor for Localization();
    swift_initStaticObject();
    v17 = sub_1D144E91C(v13, v15 | 0x8000000000000000, v34, 0, 0);
    v19 = v18;
    v20 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v21 = v17;

      v13 = v21;
    }

    else
    {

      sub_1D15A3238();

      v22 = sub_1D15A3248();
      v23 = sub_1D15A42F8();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v31 = a2;
        v25 = v24;
        v26 = swift_slowAlloc();
        v33 = v26;
        *v25 = 136446210;
        *(v25 + 4) = sub_1D1479780(v13, v16, &v33);
        _os_log_impl(&dword_1D1446000, v22, v23, "Localization: no localization found for '%{public}s'", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x1D388BF00](v26, -1, -1);
        v27 = v25;
        a2 = v31;
        MEMORY[0x1D388BF00](v27, -1, -1);
      }

      (*(v32 + 8))(v9, v6);
      v19 = v16;
    }

    sub_1D144ED4C(v34);
    v28 = [objc_opt_self() hk_activityStandGoalLineColor];
    v29 = _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(v13, v19, a2, v28);

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D14DBA5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D1458770();
    v1 = sub_1D15A4968();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v26 = *(*(a1 + 56) + v11);
    v13 = v26;
    sub_1D1453BA0(0, &qword_1EE05ACD0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_1D1458AC4((v27 + 8), v25);
    sub_1D1458AC4(v25, v27);
    sub_1D15A3F38();
    sub_1D15A4C88();
    sub_1D15A3F88();
    v16 = sub_1D15A4CB8();

    v17 = -1 << *(v1 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v6 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v6 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v6 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_1D1458AC4(v27, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_1D14DBEE4(0, &qword_1EE05ABD0, sub_1D14DBF38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D15AEBB0;
  v7 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v8 = *MEMORY[0x1E69DB650];
  *(inited + 40) = a3;
  *(inited + 48) = v8;
  *(inited + 56) = a4;
  v9 = v7;
  v10 = a3;
  v11 = v8;
  v12 = a4;
  v13 = sub_1D159BBE0(inited);
  swift_setDeallocating();
  sub_1D14DBF38();
  swift_arrayDestroy();
  sub_1D14DBA5C(v13);

  v14 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v15 = sub_1D15A3EF8();
  type metadata accessor for Key(0);
  sub_1D14587E0();
  v16 = sub_1D15A3E48();

  v17 = [v14 initWithString:v15 attributes:v16];

  return v17;
}

void sub_1D14DBE88()
{
  if (!qword_1EE05ADD0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE05ADD0);
    }
  }
}

void sub_1D14DBEE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4B78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D14DBF38()
{
  if (!qword_1EE05AD10)
  {
    type metadata accessor for Key(255);
    sub_1D1453BA0(255, &qword_1EE05ACD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE05AD10);
    }
  }
}

id _sSo17HKActivitySummaryC19HealthVisualizationE24createStandHourTitleText_9titleFont14wheelchairUserSo18NSAttributedStringCyp_So6UIFontCSbtF_0(uint64_t a1, void *a2, char a3)
{
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v10 = 0xD000000000000028;
  }

  else
  {
    v10 = 0xD00000000000001DLL;
  }

  if (a3)
  {
    v11 = "ACTIVITY_SUMMARY_STAND_HEADER";
  }

  else
  {
    v11 = "ACTIVITY_SUMMARY_EXERCISE_UNIT";
  }

  v12 = v11 | 0x8000000000000000;
  sub_1D1479D10(a1, v27);
  type metadata accessor for Localization();
  swift_initStaticObject();
  v13 = sub_1D144E91C(v10, v12, v27, 0, 0);
  v15 = v14;
  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = v13;

    v10 = v17;
  }

  else
  {

    sub_1D15A3238();

    v18 = sub_1D15A3248();
    v19 = sub_1D15A42F8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1D1479780(v10, v12, &v26);
      _os_log_impl(&dword_1D1446000, v18, v19, "Localization: no localization found for '%{public}s'", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D388BF00](v21, -1, -1);
      MEMORY[0x1D388BF00](v20, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v15 = v12;
  }

  sub_1D144ED4C(v27);
  v22 = [objc_opt_self() hk_activityStandGoalLineColor];
  v23 = _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(v10, v15, a2, v22);

  return v23;
}

HealthVisualization::MostRecentRangeQueryConfiguration __swiftcall MostRecentRangeQueryConfiguration.init(dateRange:anchorDate:aggregationInterval:)(HealthVisualization::DateRange dateRange, HealthVisualization::AnchorDate anchorDate, HealthVisualization::StatisticsInterval aggregationInterval)
{
  v4 = *anchorDate;
  *v3 = dateRange;
  *(v3 + 1) = v4;
  *(v3 + 2) = aggregationInterval;
  result.dateRange = dateRange;
  return result;
}

uint64_t static MostRecentRangeQueryConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1D1477464(*a1, *a2) & 1) == 0 || (sub_1D1477670(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1D147783C(v3, v5);
}

uint64_t sub_1D14DC320()
{
  v1 = 0x6144726F68636E61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E615265746164;
  }
}

uint64_t sub_1D14DC388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D14DCBE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D14DC3B0(uint64_t a1)
{
  v2 = sub_1D14DC618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14DC3EC(uint64_t a1)
{
  v2 = sub_1D14DC618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MostRecentRangeQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D14DC894(0, &qword_1EE056310, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v14 = v1[2];
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14DC618();
  sub_1D15A4CE8();
  v21 = v9;
  v20 = 0;
  sub_1D147903C();
  sub_1D15A4B38();
  if (!v2)
  {
    v11 = v14;
    v19 = v15;
    v18 = 1;
    sub_1D148D93C();
    sub_1D15A4B38();
    v17 = v11;
    v16 = 2;
    sub_1D14A46D0();
    sub_1D15A4B38();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D14DC618()
{
  result = qword_1EE057D28[0];
  if (!qword_1EE057D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE057D28);
  }

  return result;
}

uint64_t MostRecentRangeQueryConfiguration.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D14DC894(0, &qword_1EE0563F8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14DC618();
  sub_1D15A4CD8();
  if (!v2)
  {
    v19 = 0;
    sub_1D14790F4();
    sub_1D15A4A78();
    v10 = v20;
    v17 = 1;
    sub_1D148DC18();
    sub_1D15A4A78();
    v11 = v18;
    v15 = 2;
    sub_1D14A4848();
    sub_1D15A4A78();
    (*(v7 + 8))(v9, v6);
    v13 = v16;
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D14DC894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D14DC618();
    v7 = a3(a1, &type metadata for MostRecentRangeQueryConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D14DC928(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1D1477464(*a1, *a2) & 1) == 0 || (sub_1D1477670(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_1D147783C(v3, v5);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MostRecentRangeQueryConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC)
  {
    if ((a2 + 33554180) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776964;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776964;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 5;
  v6 = v4 - 5;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MostRecentRangeQueryConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554180) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFB)
  {
    v3 = 0;
  }

  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 2) = (a2 - 252) >> 16;
    if (v3)
    {
      v4 = ((a2 - 252) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 4;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1D14DCADC()
{
  result = qword_1EC630898;
  if (!qword_1EC630898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630898);
  }

  return result;
}

unint64_t sub_1D14DCB34()
{
  result = qword_1EE057D18;
  if (!qword_1EE057D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE057D18);
  }

  return result;
}

unint64_t sub_1D14DCB8C()
{
  result = qword_1EE057D20;
  if (!qword_1EE057D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE057D20);
  }

  return result;
}

uint64_t sub_1D14DCBE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E615265746164 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726F68636E61 && a2 == 0xEA00000000006574 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D15BEA10 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D14DCD28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D14DCD48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

id sub_1D14DCDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v49 = a3;
  sub_1D14547D8(0, &qword_1EE05B7E8, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v48 - v13;
  sub_1D14547D8(0, &qword_1EE05B7F0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_1D15A23A8();
  v50 = *(v18 - 8);
  v51 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v48 - v28;
  v30 = a6 - a5;
  if (v6[4] >= a6 - a5)
  {
    v37 = sub_1D15A2848();
    v38 = *(v37 - 8);
    (*(v38 + 16))(v17, a1, v37);
    v36 = 1;
    (*(v38 + 56))(v17, 0, 1, v37);
    v39 = sub_1D15A2898();
    (*(*(v39 - 8) + 56))(v14, 1, 1, v39);
    sub_1D15A2378();
    result = HKDateFormatterFromTemplate();
    if (result)
    {
      v49 = result;
      v33 = 6;
      v29 = v20;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v6[5] >= v30)
  {
    v40 = sub_1D15A2848();
    v41 = *(v40 - 8);
    (*(v41 + 16))(v17, a1, v40);
    v36 = 1;
    (*(v41 + 56))(v17, 0, 1, v40);
    v42 = sub_1D15A2898();
    (*(*(v42 - 8) + 56))(v14, 1, 1, v42);
    sub_1D15A2378();
    v33 = 12;
    result = HKDateFormatterFromTemplate();
    if (result)
    {
      v49 = result;
      v29 = v23;
      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6[6] >= v30)
  {
    v43 = sub_1D15A2848();
    v44 = *(v43 - 8);
    (*(v44 + 16))(v17, a1, v43);
    v33 = 1;
    (*(v44 + 56))(v17, 0, 1, v43);
    v45 = sub_1D15A2898();
    (*(*(v45 - 8) + 56))(v14, 1, 1, v45);
    sub_1D15A2378();
    result = HKDateFormatterFromTemplate();
    if (result)
    {
      v49 = result;
      v29 = v26;
      v36 = 1;
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  sub_1D15A19A4(a2, v49, v30 / *MEMORY[0x1E696B510]);
  v31 = sub_1D15A2848();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v17, a1, v31);
  v33 = 1;
  (*(v32 + 56))(v17, 0, 1, v31);
  v34 = sub_1D15A2898();
  (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
  sub_1D15A2378();
  result = HKDateFormatterFromTemplate();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v49 = result;
  v36 = 0;
LABEL_12:
  v46 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy();
  (*(v50 + 32))(&a4[v46[5]], v29, v51);
  *&a4[v46[6]] = v33;
  a4[v46[7]] = 0;
  v47 = v49;
  *&a4[v46[8]] = v49;
  *&a4[v46[9]] = v47;
  *a4 = v36;
  a4[v46[10]] = 1;

  return v47;
}

uint64_t DiagramMultiDayDateAxisMetricsCalculator.__allocating_init(boundsLabelsShouldShowDaySpan:customLabelDateFormatter:)(char a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = *MEMORY[0x1E696B510];
  if ((*MEMORY[0x1E696B510] - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(result + 32) = (4 * v5);
  if ((v5 * 10) >> 64 != (10 * v5) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(result + 40) = (10 * v5);
  v6 = (v5 * 20) >> 64;
  v7 = 20 * v5;
  if (v6 == v7 >> 63)
  {
    *(result + 48) = v7;
    *(result + 16) = a1 & 1;
    *(result + 24) = a2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t DiagramMultiDayDateAxisMetricsCalculator.init(boundsLabelsShouldShowDaySpan:customLabelDateFormatter:)(uint64_t result, uint64_t a2)
{
  v3 = *MEMORY[0x1E696B510];
  if ((*MEMORY[0x1E696B510] - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v2 + 32) = (4 * v3);
  if ((v3 * 10) >> 64 != (10 * v3) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v2 + 40) = (10 * v3);
  v4 = (v3 * 20) >> 64;
  v5 = 20 * v3;
  if (v4 == v5 >> 63)
  {
    *(v2 + 48) = v5;
    *(v2 + 16) = result & 1;
    *(v2 + 24) = a2;
    return v2;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t DiagramMultiDayDateAxisMetricsCalculator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1D14DD7F0()
{
  v1 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView____lazy_storage___ringsRenderer;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView____lazy_storage___ringsRenderer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView____lazy_storage___ringsRenderer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6989B20]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id HighlightCalendarView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void HighlightCalendarView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView____lazy_storage___ringsRenderer) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_weekdayLabels) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_monthLabels) = v1;
  sub_1D15A4908();
  __break(1u);
}

id HighlightCalendarView.init(model:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings;
  *&v1[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings] = 0;
  v5 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings;
  *&v1[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings] = 0;
  *&v1[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView____lazy_storage___ringsRenderer] = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_weekdayLabels] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_monthLabels] = v6;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *&v1[v4] = v3;
  *&v1[v5] = v7;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for HighlightCalendarView();

  v9 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1D14DDCF8();
  [v9 setHorizontalDistribution_];
  [v9 setHorizontalAlignment_];
  [v9 setRowSpacing_];
  [v9 setColumnSpacing_];
  [v9 setLayoutMarginsRelativeArrangement_];
  [v9 setLayoutMargins_];
  v17[0] = v2;
  v17[1] = v3;
  v17[2] = v7;
  v18 = v8;
  sub_1D14DDE10(v17);
  if (*(v2 + 16) && (v10 = *(v2 + 32), *(v10 + 16)))
  {
    v11 = *(type metadata accessor for HighlightCalendarDayViewModel(0) - 8);
    v12 = *(v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + 16);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v2 + 16);
  if (v13)
  {
    v14 = (v2 + 32);
    do
    {
      v15 = *v14;
      if (v12)
      {
      }

      else
      {
        v17[0] = *v14;

        sub_1D14DE678(v17);
      }

      v17[0] = v15;
      sub_1D14DEAA8(v17);

      ++v14;
      --v13;
    }

    while (v13);
  }

  return v9;
}

uint64_t sub_1D14DDCF8()
{
  swift_getObjectType();
  sub_1D14BB1D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D15AEBB0;
  v1 = sub_1D15A32B8();
  v2 = MEMORY[0x1E69DC2B0];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_1D15A32A8();
  v4 = MEMORY[0x1E69DC0F8];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  sub_1D15A4548();
  swift_unknownObjectRelease();

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D15ACDD0;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  sub_1D15A4548();
  swift_unknownObjectRelease();
}

void sub_1D14DDE10(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  LOBYTE(v4) = *(a1 + 24);
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_1D15A44D8();
  if (v5)
  {
    v7 = *&v2[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings];
    if (v7)
    {
      goto LABEL_7;
    }

    v8 = &OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings;
  }

  else
  {
    v7 = *&v2[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings];
    if (v7)
    {
      goto LABEL_7;
    }

    v8 = &OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings;
  }

  v7 = *&v2[*v8];
  if (!v7)
  {
    return;
  }

LABEL_7:

  v9 = *(v7 + 16);
  if (v9)
  {
    v27 = v4;
    v4 = v3;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D15A4878();
    v10 = 0;
    v3 = v7 + 40;
    while (v10 < *(v7 + 16))
    {

      sub_1D14DE2CC(&v28);

      ++v10;
      sub_1D15A4858();
      sub_1D15A4888();
      sub_1D15A4898();
      sub_1D15A4868();
      v3 += 16;
      if (v9 == v10)
      {

        v11 = v29;
        v3 = v4;
        LOBYTE(v4) = v27;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    sub_1D1453BA0(0, &qword_1EE059718);

    sub_1D15A4918();
    goto LABEL_15;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v12 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_weekdayLabels;
  *&v2[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_weekdayLabels] = v11;

  if (*&v2[v12] >> 62)
  {
    goto LABEL_26;
  }

  swift_bridgeObjectRetain_n();
  sub_1D15A4BB8();
  sub_1D1453BA0(0, &qword_1EE059718);
LABEL_15:

  sub_1D1453BA0(0, &qword_1EE059718);
  v13 = sub_1D15A40A8();

  v14 = [v2 addRowWithArrangedSubviews_];

  if (v4)
  {
    [v14 setSpacingAfter_];
    v15 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    v16 = [objc_opt_self() separatorColor];
    [v15 setBackgroundColor_];

    v17 = *MEMORY[0x1E698B6F8];
    HKUIOnePixel();
    LODWORD(v18) = 1148846080;
    [v15 setLayoutSize:v17 withContentPriority:{v19, v18}];
    sub_1D1496034();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D15AE100;
    *(v20 + 32) = v15;
    v21 = v15;
    v22 = sub_1D15A40A8();

    v23 = [v2 addRowWithArrangedSubviews_];
    swift_unknownObjectRelease();

    [v2 setAlignment:0 forView:v21 inAxis:0];
    v14 = v23;
  }

  if (!*(v3 + 16) || (v24 = *(v3 + 32), !*(v24 + 16)) || (v25 = *(type metadata accessor for HighlightCalendarDayViewModel(0) - 8), v26 = 16.0, (*(v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + 16) & 1) == 0))
  {
    v26 = 14.0;
  }

  [v14 setSpacingAfter_];

  swift_unknownObjectRelease();
}

void sub_1D14DE2CC(void *a1@<X8>)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v3 = sub_1D15A3EF8();
  [v2 setText_];

  v4 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  [v2 setTextAlignment_];
  if (qword_1EE058BE8 != -1)
  {
    swift_once();
  }

  v5 = off_1EE058BF0;
  v6 = *(off_1EE058BF0 + 2);
  sub_1D1453BA0(0, &qword_1EE0596F8);
  v7 = sub_1D15A45B8();
  v8 = *(v6 + 16);
  MEMORY[0x1EEE9AC00](v7);
  os_unfair_lock_lock((v8 + 24));
  sub_1D14BB3C8((v8 + 16), &v16);
  if (v1)
  {
    os_unfair_lock_unlock((v8 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v8 + 24));

    v9 = v16;
    if (!v16)
    {
      v9 = [objc_opt_self() hk:*MEMORY[0x1E69DDD28] preferredFontForTextStyle:32770 symbolicTraits:*MEMORY[0x1E69DDC50] maximumContentSizeCategory:?];
      v10 = v5[2];
      v11 = sub_1D15A45B8();
      v12 = *(v10 + 16);
      MEMORY[0x1EEE9AC00](v11);
      os_unfair_lock_lock((v12 + 24));
      sub_1D14BB3E0((v12 + 16));
      os_unfair_lock_unlock((v12 + 24));
    }

    [v2 setFont_];

    [v2 setAdjustsFontSizeToFitWidth_];
    [v2 setAllowsDefaultTighteningForTruncation_];
    v13 = *MEMORY[0x1E698B6F8];
    type metadata accessor for UILayoutPriority(0);
    sub_1D14BB040();
    sub_1D15A3278();
    LODWORD(v14) = v16;
    [v2 setLayoutSize:35.0 withContentPriority:{v13, v14}];

    *a1 = v2;
  }
}

uint64_t sub_1D14DE678(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  v5 = *(*a1 + 16);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_monthLabels;
    v7 = 0;
    v8 = *(type metadata accessor for HighlightCalendarDayViewModel(0) - 8);
    v9 = *(v8 + 72);
    v10 = ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v3 + 8;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v11 = 0;
      v12 = (v10 + v9 * v7);
      v13 = -1;
      while (1)
      {
        v14 = HIBYTE(*v12) & 0xFLL;
        if ((*v12 & 0x2000000000000000) == 0)
        {
          v14 = *(v12 - 1) & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          break;
        }

        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_30;
        }

        ++v11;
        v12 = (v12 + v9);
        ++v13;
        if (v5 - v7 == v11)
        {
          goto LABEL_23;
        }
      }

      v32 = v10;
      if (v11 < 1)
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v16 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        sub_1D1453BA0(0, &qword_1EE059718);
        v17 = sub_1D15A40F8();
        v18 = v17 & 0xFFFFFFFFFFFFFF8;
        *(v18 + 16) = v11;
        *(v18 + 32) = v16;
        if (v11 != 1)
        {
          v30 = v2;
          v31 = v17;
          v19 = (v18 + 40);
          do
          {
            *v19++ = v16;
            v20 = v16;
            --v13;
          }

          while (v13);
          v2 = v30;
          v17 = v31;
        }
      }

      sub_1D14C49EC(v17);
      v21 = sub_1D14DF374();
      swift_beginAccess();
      v22 = v21;
      MEMORY[0x1D388A400]();
      if (*((*(v2 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D15A40E8();
      }

      sub_1D15A4108();
      swift_endAccess();
      v23 = v22;
      MEMORY[0x1D388A400]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D15A40E8();
      }

      v24 = ~v7 + v5;
      sub_1D15A4108();

      v4 = v33;
      v7 += v11 + 1;
      v10 = v32;
    }

    while (v24 != v11);
  }

  v15 = 0;
LABEL_23:
  if (v4 >> 62)
  {
LABEL_30:
    if (sub_1D15A4708())
    {
      goto LABEL_25;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:
    if (v15 < 1)
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v25 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      v26 = sub_1D14DF2D8(v25, v15);
    }

    sub_1D14C49EC(v26);
    goto LABEL_34;
  }

  sub_1D14DF374();
  MEMORY[0x1D388A400]();
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D15A40E8();
  }

  sub_1D15A4108();
LABEL_34:
  sub_1D1453BA0(0, &qword_1EE059718);
  v27 = sub_1D15A40A8();

  v28 = [v2 addRowWithArrangedSubviews_];

  [v28 setSpacingAfter_];
  return swift_unknownObjectRelease();
}

void sub_1D14DEAA8(uint64_t *a1)
{
  v2 = type metadata accessor for HighlightCalendarDayViewModel(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = *a1;
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D15A4878();
    sub_1D15A4148();
    v12 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D14BACF0(v12, v8);
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v14 = v8[48];
      sub_1D14BACF0(v8, v5);
      if (v14)
      {
        v15 = objc_allocWithZone(type metadata accessor for HighlightCalendarDayView());
        sub_1D154EC48(v5, 0);
      }

      else
      {
        v16 = sub_1D14DD7F0();
        v17 = objc_allocWithZone(type metadata accessor for HighlightCalendarDayView());
        sub_1D154EC48(v5, v16);
      }

      sub_1D14BB0E8(v8);
      sub_1D15A4858();
      sub_1D15A4888();
      sub_1D15A4898();
      sub_1D15A4868();
      v12 += v13;
      --v10;
    }

    while (v10);
    v11 = v21;
  }

  if (v11 >> 62)
  {
    sub_1D1453BA0(0, &qword_1EE059718);

    sub_1D15A4918();
  }

  else
  {

    sub_1D15A4BB8();
    sub_1D1453BA0(0, &qword_1EE059718);
  }

  sub_1D1453BA0(0, &qword_1EE059718);
  v18 = sub_1D15A40A8();

  v19 = [v20 addRowWithArrangedSubviews_];
  swift_unknownObjectRelease();
}

id HighlightCalendarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id HighlightCalendarView.__allocating_init(arrangedSubviewRows:)(uint64_t a1)
{
  if (a1)
  {
    sub_1D14BA86C();
    v2 = sub_1D15A40A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviewRows_];

  return v3;
}

id HighlightCalendarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightCalendarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D14DF2D8(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    sub_1D1453BA0(0, &qword_1EE059718);
    v4 = sub_1D15A40F8();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

id sub_1D14DF374()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  [v0 setTextAlignment_];
  v1 = sub_1D15A3EF8();
  [v0 setText_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  if (qword_1EE058BE8 != -1)
  {
    swift_once();
  }

  v3 = off_1EE058BF0;
  v4 = *(off_1EE058BF0 + 2);
  sub_1D1453BA0(0, &qword_1EE0596F8);
  v5 = sub_1D15A45B8();
  v6 = *(v4 + 16);
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock((v6 + 24));
  sub_1D14BA9E8((v6 + 16), &v12);
  os_unfair_lock_unlock((v6 + 24));

  v7 = v12;
  if (!v12)
  {
    v7 = [objc_opt_self() hk:*MEMORY[0x1E69DDD10] preferredFontForTextStyle:32770 symbolicTraits:*MEMORY[0x1E69DDC50] maximumContentSizeCategory:?];
    v8 = v3[2];
    v9 = sub_1D15A45B8();
    v10 = *(v8 + 16);
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock((v10 + 24));
    sub_1D14BAA04((v10 + 16));
    os_unfair_lock_unlock((v10 + 24));
  }

  [v0 setFont_];

  return v0;
}

uint64_t sub_1D14DF5F0()
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EE058BE8 != -1)
  {
    swift_once();
  }

  v0 = *(*(off_1EE058BF0 + 2) + 16);
  os_unfair_lock_lock((v0 + 24));
  [*(v0 + 16) removeAllObjects];
  os_unfair_lock_unlock((v0 + 24));
}

uint64_t sub_1D14DF6E0(uint64_t a1)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_monthLabels;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_66;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v41 = a1;

  v5 = MEMORY[0x1E69DDC50];
  if (v4)
  {
    v6 = 0;
    a1 = 0;
    v50 = v3 & 0xFFFFFFFFFFFFFF8;
    v52 = v3 & 0xC000000000000001;
    v42 = *MEMORY[0x1E69DDC50];
    v44 = *MEMORY[0x1E69DDD10];
    v46 = v4;
    v48 = v3;
    while (1)
    {
      if (v52)
      {
        v7 = MEMORY[0x1D388AB50](v6, v3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v6 >= *(v50 + 16))
        {
          goto LABEL_61;
        }

        v7 = *(v3 + 8 * v6 + 32);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v4 = sub_1D15A4708();
          goto LABEL_5;
        }
      }

      v54 = v7;
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (qword_1EE058BE8 != -1)
      {
        swift_once();
      }

      v9 = off_1EE058BF0;
      v10 = *(off_1EE058BF0 + 2);
      sub_1D1453BA0(0, &qword_1EE0596F8);
      v11 = sub_1D15A45B8();
      v12 = *(v10 + 16);
      MEMORY[0x1EEE9AC00](v11);
      os_unfair_lock_lock((v12 + 24));
      sub_1D14BB3C8((v12 + 16), &v56);
      os_unfair_lock_unlock((v12 + 24));

      v13 = v56;
      if (!v56)
      {
        v13 = [objc_opt_self() hk:v44 preferredFontForTextStyle:32770 symbolicTraits:v42 maximumContentSizeCategory:?];
        v14 = v9[2];
        v15 = sub_1D15A45B8();
        v16 = *(v14 + 16);
        MEMORY[0x1EEE9AC00](v15);
        os_unfair_lock_lock((v16 + 24));
        sub_1D14BB3E0((v16 + 16));
        os_unfair_lock_unlock((v16 + 24));
      }

      [v54 setFont_];

      ++v6;
      v3 = v48;
      v5 = MEMORY[0x1E69DDC50];
      if (v8 == v46)
      {
        goto LABEL_21;
      }
    }
  }

  a1 = 0;
LABEL_21:

  v40 = OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_weekdayLabels;
  v3 = *&v41[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_weekdayLabels];
  if (v3 >> 62)
  {
    v17 = sub_1D15A4708();
  }

  else
  {
    v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17)
  {
    v18 = 0;
    v51 = v3 & 0xFFFFFFFFFFFFFF8;
    v53 = v3 & 0xC000000000000001;
    v43 = *v5;
    v45 = *MEMORY[0x1E69DDD28];
    v47 = v17;
    v49 = v3;
    do
    {
      if (v53)
      {
        v19 = MEMORY[0x1D388AB50](v18, v3);
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v18 >= *(v51 + 16))
        {
          goto LABEL_63;
        }

        v19 = *(v3 + 8 * v18 + 32);
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_62;
        }
      }

      v55 = v19;
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (qword_1EE058BE8 != -1)
      {
        swift_once();
      }

      v21 = off_1EE058BF0;
      v22 = *(off_1EE058BF0 + 2);
      sub_1D1453BA0(0, &qword_1EE0596F8);
      v23 = sub_1D15A45B8();
      v24 = *(v22 + 16);
      MEMORY[0x1EEE9AC00](v23);
      os_unfair_lock_lock((v24 + 24));
      sub_1D14BB3C8((v24 + 16), &v56);
      os_unfair_lock_unlock((v24 + 24));

      v25 = v56;
      if (!v56)
      {
        v25 = [objc_opt_self() hk:v45 preferredFontForTextStyle:32770 symbolicTraits:v43 maximumContentSizeCategory:?];
        v26 = v21[2];
        v27 = sub_1D15A45B8();
        v28 = *(v26 + 16);
        MEMORY[0x1EEE9AC00](v27);
        os_unfair_lock_lock((v28 + 24));
        sub_1D14BB3E0((v28 + 16));
        os_unfair_lock_unlock((v28 + 24));
      }

      [v55 setFont_];

      ++v18;
      v3 = v49;
    }

    while (v20 != v47);
  }

  v29 = [v41 traitCollection];
  v30 = [v29 preferredContentSizeCategory];

  LOBYTE(v29) = sub_1D15A44D8();
  if (v29)
  {
    v31 = *&v41[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings];
    if (v31)
    {
      goto LABEL_44;
    }

    v32 = &OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings;
  }

  else
  {
    v31 = *&v41[OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_longWeekdayStrings];
    if (v31)
    {
      goto LABEL_44;
    }

    v32 = &OBJC_IVAR____TtC19HealthVisualization21HighlightCalendarView_shortWeekdayStrings;
  }

  v31 = *&v41[*v32];
  if (!v31)
  {
  }

LABEL_44:

  v3 = *&v41[v40];
  if (v3 >> 62)
  {
    a1 = sub_1D15A4708();
  }

  else
  {
    a1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1)
  {
    v33 = 0;
    v34 = v31 + 40;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x1D388AB50](v33, v3);
      }

      else
      {
        if (v33 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v35 = *(v3 + 8 * v33 + 32);
      }

      v36 = v35;
      v37 = *(v31 + 16);
      if (v33 == v37)
      {
        break;
      }

      if (v33 >= v37)
      {
        goto LABEL_65;
      }

      ++v33;

      v38 = sub_1D15A3EF8();

      [v36 setText_];

      v34 += 16;
      if (a1 == v33)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
LABEL_56:
  }
}

id StatisticsQueryOperation.__allocating_init(sampleType:configuration:configurationOverrides:name:queryQualityOfService:healthStore:resultHandler:)(void *a1, char *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v14 = objc_allocWithZone(v10);
  v15 = *a2;
  v16 = *(a2 + 1);
  v17 = *(a2 + 8);
  v18 = qword_1EE0584A0;
  sub_1D1487B04();
  v19 = swift_allocError();
  *v20 = 0;
  v35 = v19;
  v36 = 1;
  sub_1D14E1318(0, &qword_1EE0593E8, sub_1D1495B48, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v14[v18] = sub_1D15A2D68();
  v21 = a5;
  *&v14[qword_1EE058498] = 0;
  *&v14[qword_1EE0584B0] = a1;
  v22 = &v14[qword_1EE0584A8];
  *v22 = v15;
  *(v22 + 1) = v16;
  *(v22 + 8) = v17;
  sub_1D14E2390(a3, &v14[qword_1EE0681F8], &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  *&v14[qword_1EE068200] = a6;
  *&v14[qword_1EE068210] = a7;
  v23 = &v14[qword_1EE068208];
  *v23 = a8;
  *(v23 + 1) = a9;
  v34.receiver = v14;
  v34.super_class = v10;
  v24 = a1;
  v25 = a7;

  v26 = objc_msgSendSuper2(&v34, sel_init);
  v27 = v26;
  if (v21)
  {
    v28 = sub_1D15A3EF8();
  }

  else
  {
    v28 = 0;
  }

  [v26 setName_];

  sub_1D14E2320(a3, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  return v26;
}

uint64_t sub_1D14E015C@<X0>(uint64_t a1@<X8>)
{

  sub_1D15A2D28();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1D14E01BC()
{

  sub_1D15A2D38();
}

uint64_t sub_1D14E022C()
{

  sub_1D15A2D28();

  return v1;
}

id sub_1D14E027C()
{
  v1 = qword_1EE058498;
  v2 = *(v0 + qword_1EE058498);
  if (v2)
  {
    v3 = *(v0 + qword_1EE058498);
  }

  else
  {
    v4 = sub_1D14E02DC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D14E02DC()
{
  v1 = v0;
  v121 = sub_1D15A31D8();
  v113 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v111 = v2;
  v112 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v120 = &v99 - v4;
  v5 = MEMORY[0x1E69E6720];
  sub_1D14E1318(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v109 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v110 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v99 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v123 = &v99 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v99 - v13;
  v108 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v99 - v17;
  v19 = sub_1D15A22A8();
  v122 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v99 - v22;
  sub_1D14E1318(0, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides, v5);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v106 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v99 - v27;
  v29 = sub_1D15A26A8();
  v117 = *(v29 - 8);
  v118 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v99 - v33;
  _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
  v115 = v1;
  v104 = qword_1EE0681F8;
  sub_1D14E2390(&v1[qword_1EE0681F8], v28, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  ConfigurationOverrides = type metadata accessor for StatisticsQueryConfigurationOverrides();
  v36 = *(ConfigurationOverrides - 8);
  v37 = *(v36 + 48);
  v38 = v36 + 48;
  v39 = v37(v28, 1, ConfigurationOverrides);
  v116 = v34;
  v119 = v19;
  v103 = v38;
  if (v39 != 1)
  {
    sub_1D14E2390(v28, v18, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v46 = v122;
    v114 = *(v122 + 6);
    if (v114(v18, 1, v19) == 1)
    {
      sub_1D14E2320(v18, &qword_1EE05B520, MEMORY[0x1E6968130]);
      v47 = *&v28[*(ConfigurationOverrides + 20)];
      v40 = v115;
      if (!v47)
      {
        v100 = v37;
        v101 = ConfigurationOverrides;
        sub_1D14E2558(v28);
        goto LABEL_3;
      }

      v105 = v47;
    }

    else
    {
      (*(v46 + 4))(v23, v18, v19);
      v56 = objc_opt_self();
      v57 = sub_1D15A2228();
      v58 = [v56 predicateForSamplesWithinDateInterval:v57 options:0];

      (*(v46 + 1))(v23, v19);
      v59 = *&v28[*(ConfigurationOverrides + 20)];
      v40 = v115;
      if (!v59)
      {
        v105 = v58;
        sub_1D14E2558(v28);
        v54 = v111;
        v55 = v109;
        v42 = _TtC19HealthVisualization30StatisticsSnidgetStringBuilder;
        goto LABEL_15;
      }

      sub_1D1496034();
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1D15B1320;
      *(v60 + 32) = v58;
      *(v60 + 40) = v59;
      sub_1D1453BA0(0, &qword_1EE056788);
      v61 = v59;
      v62 = v58;
      v63 = sub_1D15A40A8();

      v105 = [objc_opt_self() andPredicateWithSubpredicates_];
    }

    v54 = v111;
    v55 = v109;
    v42 = _TtC19HealthVisualization30StatisticsSnidgetStringBuilder;
    sub_1D14E2558(v28);
    goto LABEL_15;
  }

  v100 = v37;
  v101 = ConfigurationOverrides;
  sub_1D14E2320(v28, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  v40 = v115;
LABEL_3:
  v41 = v122;
  v42 = _TtC19HealthVisualization30StatisticsSnidgetStringBuilder;
  DateRange.dateInterval(endingAt:)(v34, v40[qword_1EE0584A8], v14);
  v43 = *(v41 + 6);
  v44 = v119;
  v45 = v43(v14, 1, v119);
  v114 = v43;
  if (v45 == 1)
  {
    sub_1D14E2320(v14, &qword_1EE05B520, MEMORY[0x1E6968130]);
    v105 = 0;
  }

  else
  {
    v48 = v102;
    (*(v41 + 4))(v102, v14, v44);
    v105 = objc_opt_self();
    sub_1D15A2288();
    v49 = sub_1D15A2618();
    v50 = v118;
    v51 = *(v117 + 8);
    v51(v31, v118);
    sub_1D15A2258();
    v52 = sub_1D15A2618();
    v53 = v50;
    v34 = v116;
    v51(v31, v53);
    v40 = v115;
    v105 = [v105 predicateForSamplesWithStartDate:v49 endDate:v52 options:0];

    v42 = _TtC19HealthVisualization30StatisticsSnidgetStringBuilder;
    (*(v41 + 1))(v48, v44);
  }

  v54 = v111;
  v55 = v109;
  ConfigurationOverrides = v101;
  v37 = v100;
LABEL_15:
  v64 = &v40[v42[29].info];
  v65 = *(v64 + 1);
  v66 = *(v65 + 16);
  if (v66)
  {
    v67 = 0;
    v68 = (v65 + 32);
    while (1)
    {
      v70 = *v68++;
      v69 = v70;
      if (v70 > 4)
      {
        if (v69 <= 6)
        {
          if (v69 == 5)
          {
            if ((v67 & 0x40) != 0)
            {
              goto LABEL_18;
            }

            v71 = 64;
            goto LABEL_17;
          }

          v71 = _HKStatisticOptionsAverageSampleDuration();
        }

        else if (v69 == 7)
        {
          v71 = _HKStatisticsOptionPresence();
        }

        else if (v69 == 8)
        {
          v71 = _HKStatisticsOptionBaselineRelativeQuantities();
        }

        else
        {
          v72 = _HKStatisticsOptionAttenuateSamples();
          if ((v72 & 0xFFFFFFFFFFFFFFFDLL) == 0)
          {
            goto LABEL_42;
          }

          v71 = v72 | 2;
        }

        if ((v71 & ~v67) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v69 <= 1)
        {
          if (v69)
          {
            if ((v67 & 4) != 0)
            {
              goto LABEL_18;
            }

            v71 = 4;
            goto LABEL_17;
          }

LABEL_42:
          if ((v67 & 2) != 0)
          {
            goto LABEL_18;
          }

          v71 = 2;
          goto LABEL_17;
        }

        if (v69 == 2)
        {
          if ((v67 & 8) != 0)
          {
            goto LABEL_18;
          }

          v71 = 8;
        }

        else if (v69 == 3)
        {
          if ((v67 & 0x10) != 0)
          {
            goto LABEL_18;
          }

          v71 = 16;
        }

        else
        {
          if ((v67 & 0x20) != 0)
          {
            goto LABEL_18;
          }

          v71 = 32;
        }
      }

LABEL_17:
      v67 |= v71;
LABEL_18:
      if (!--v66)
      {
        goto LABEL_48;
      }
    }
  }

  v67 = 0;
LABEL_48:
  v73 = v106;
  sub_1D14E2390(&v40[v104], v106, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  if (v37(v73, 1, ConfigurationOverrides) == 1)
  {
    sub_1D14E2320(v73, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
    v74 = v107;
    v75 = v119;
    (*(v122 + 7))(v107, 1, 1, v119);
    v76 = v114;
  }

  else
  {
    v74 = v107;
    sub_1D14E2390(v73, v107, &qword_1EE05B520, MEMORY[0x1E6968130]);
    sub_1D14E2558(v73);
    v77 = v122;
    v75 = v119;
    v76 = v114;
    if (v114(v74, 1, v119) != 1)
    {
      v78 = v123;
      (*(v77 + 4))(v123, v74, v75);
      (*(v77 + 7))(v78, 0, 1, v75);
      goto LABEL_54;
    }
  }

  DateRange.dateInterval(endingAt:)(v34, *v64, v123);
  if (v76(v74, 1, v75) != 1)
  {
    sub_1D14E2320(v74, &qword_1EE05B520, MEMORY[0x1E6968130]);
  }

LABEL_54:
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v79 = qword_1EE05B398;
  v80 = v40;
  v81 = v120;
  sub_1D15A31C8();
  v115 = *&v80[qword_1EE0584B0];
  v119 = v80;
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = v112;
  v83 = v113;
  v85 = v121;
  (*(v113 + 16))(v112, v81, v121);
  v122 = MEMORY[0x1E6968130];
  v86 = v110;
  sub_1D14E2390(v123, v110, &qword_1EE05B520, MEMORY[0x1E6968130]);
  v87 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v88 = (v54 + *(v55 + 80) + v87) & ~*(v55 + 80);
  v89 = (v108 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  (*(v83 + 32))(v90 + v87, v84, v85);
  sub_1D1495C10(v86, v90 + v88);
  *(v90 + v89) = v82;
  v91 = objc_allocWithZone(MEMORY[0x1E696C4E0]);
  aBlock[4] = sub_1D14E2410;
  aBlock[5] = v90;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D14E2280;
  aBlock[3] = &block_descriptor_4;
  v92 = _Block_copy(aBlock);

  v93 = v105;
  v94 = [v91 initWithSampleType:v115 samplePredicate:v105 options:v67 completionHandler:v92];
  _Block_release(v92);

  v95 = v94;
  v96 = v119;
  v97 = [v119 name];
  [v95 setDebugIdentifier_];

  [v95 setQualityOfService_];
  (*(v83 + 8))(v120, v121);
  sub_1D14E2320(v123, &qword_1EE05B520, v122);
  (*(v117 + 8))(v116, v118);
  return v95;
}

id StatisticsQueryOperation.init(sampleType:configuration:configurationOverrides:name:queryQualityOfService:healthStore:resultHandler:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v13 = *a2;
  v14 = *(a2 + 1);
  v15 = *(a2 + 8);
  v16 = qword_1EE0584A0;
  sub_1D1487B04();
  v17 = swift_allocError();
  *v18 = 0;
  v32 = v17;
  v33 = 1;
  sub_1D14E1318(0, &qword_1EE0593E8, sub_1D1495B48, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v9[v16] = sub_1D15A2D68();
  *&v9[qword_1EE058498] = 0;
  *&v9[qword_1EE0584B0] = a1;
  v19 = &v9[qword_1EE0584A8];
  *v19 = v13;
  *(v19 + 1) = v14;
  *(v19 + 8) = v15;
  sub_1D14E2390(a3, &v9[qword_1EE0681F8], &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  *&v9[qword_1EE068200] = a6;
  *&v9[qword_1EE068210] = a7;
  v20 = &v9[qword_1EE068208];
  *v20 = a8;
  *(v20 + 1) = a9;
  v31.receiver = v9;
  v31.super_class = type metadata accessor for StatisticsQueryOperation();
  v21 = a1;
  v22 = a7;

  v23 = objc_msgSendSuper2(&v31, sel_init);
  v24 = v23;
  if (a5)
  {
    v25 = sub_1D15A3EF8();
  }

  else
  {
    v25 = 0;
  }

  [v23 setName_];

  sub_1D14E2320(a3, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);
  return v23;
}

void sub_1D14E1318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for StatisticsQueryOperation()
{
  result = qword_1EE058488;
  if (!qword_1EE058488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D14E13C8()
{
  v1 = v0;
  v2 = sub_1D15A31D8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1487B04();
  v6 = swift_allocError();
  *v7 = 2;
  v26 = v6;
  v27 = 1;

  sub_1D15A2D38();

  v8 = *&v0[qword_1EE0584B0];
  v9 = [v8 identifier];
  v10 = sub_1D15A3F38();
  v12 = v11;

  v13._countAndFlagsBits = 0x676E696E6E7572;
  v13._object = 0xE700000000000000;
  v14._countAndFlagsBits = v10;
  v14._object = v12;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v13, v14);

  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE05B398;
  v16 = v1;
  sub_1D15A31C8();
  sub_1D15A4478();
  sub_1D1487C24();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D15ACDD0;
  v18 = [v8 identifier];
  v19 = sub_1D15A3F38();
  v21 = v20;

  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1D1487C8C();
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  sub_1D15A31A8();

  v22 = *&v16[qword_1EE068210];
  v23 = sub_1D14E027C();
  [v22 executeQuery_];

  return (*(v3 + 8))(v5, v2);
}

void sub_1D14E16C0(void *a1)
{
  v1 = a1;
  sub_1D14E13C8();
}

void sub_1D14E1708()
{
  v1 = v0;
  if ([v0 isCancelled])
  {
    sub_1D1487B04();
    v2 = swift_allocError();
    *v3 = 3;
    MEMORY[0x1EEE9AC00](v2);

    sub_1D15A2D38();

    v4 = [*&v0[qword_1EE0584B0] identifier];
    v5 = sub_1D15A3F38();
    v7 = v6;

    v8._countAndFlagsBits = 0x656C6C65636E6163;
    v8._object = 0xE900000000000064;
    v9._countAndFlagsBits = v5;
    v9._object = v7;
    NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v8, v9);
  }

  v10 = *&v1[qword_1EE068210];
  v11 = sub_1D14E027C();
  [v10 stopQuery_];
}

id StatisticsQueryOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D14E1914()
{

  sub_1D14E2320(v0 + qword_1EE0681F8, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);

  v1 = *(v0 + qword_1EE058498);
}

id StatisticsQueryOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StatisticsQueryOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D14E1A00(uint64_t a1)
{

  sub_1D14E2320(a1 + qword_1EE0681F8, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides);

  v2 = *(a1 + qword_1EE058498);
}

uint64_t sub_1D14E1AC0@<X0>(uint64_t a1@<X8>)
{

  sub_1D15A2D28();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void sub_1D14E1B20(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a3;
  v41 = a2;
  sub_1D14E1318(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  sub_1D15A4468();
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  sub_1D1487C24();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D15ACDD0;
  sub_1D14E2390(a5, v8, &qword_1EE05B520, MEMORY[0x1E6968130]);
  v10 = sub_1D15A22A8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_1D14E2320(v8, &qword_1EE05B520, MEMORY[0x1E6968130]);
    countAndFlagsBits = 0;
    object = 0;
  }

  else
  {
    v14 = DateInterval.stringWithISO8601Format()();
    countAndFlagsBits = v14._countAndFlagsBits;
    object = v14._object;
    (*(v11 + 8))(v8, v10);
  }

  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D1487C8C();
  v15 = 0x3E656E6F6E3CLL;
  if (object)
  {
    v15 = countAndFlagsBits;
  }

  v16 = 0xE600000000000000;
  if (object)
  {
    v16 = object;
  }

  *(v9 + 32) = v15;
  *(v9 + 40) = v16;
  sub_1D15A31A8();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if ([v18 isCancelled])
    {

LABEL_14:
      v20._countAndFlagsBits = 0xD00000000000002DLL;
      v20._object = 0x80000001D15BDC90;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v20, v21);

      return;
    }

    v19 = [v18 isFinished];

    if (v19)
    {
      goto LABEL_14;
    }

    v22 = v41;
    v23 = v41;
    if (!v41)
    {
      v24 = v40;
      if (v40)
      {
        v25 = 0xD00000000000001FLL;
      }

      else
      {
        v25 = 0;
      }

      if (v40)
      {
        v26 = 0x80000001D15BFFD0;
      }

      else
      {
        v26 = 0;
      }

      if (v40)
      {
        v27 = v40 | 0x8000000000000000;
      }

      else
      {
        v27 = 0xC000000000000000;
      }

      sub_1D1487F34();
      v28 = swift_allocError();
      *v29 = v25;
      v29[1] = v26;
      v29[2] = v27;
      swift_getErrorValue();
      v30 = v24;
      sub_1D1487F88(v25, v26, v27);
      v31._countAndFlagsBits = sub_1D15A4C08();
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      NSOperation.logErrorString(_:withInfo:)(v31, v32);

      v23 = swift_allocError();
      *v33 = v25;
      v33[1] = v26;
      v33[2] = v27;
      v34 = v23;
      v22 = v41;
    }

    v35 = v22 == 0;
    v36 = *&v18[qword_1EE068208];
    v37 = v22;

    v36(v23, v35);

    MEMORY[0x1EEE9AC00](v38);
    sub_1D15A2DA8();
    sub_1D14A8208(v23);
    sub_1D14A8208(v23);
  }
}

uint64_t sub_1D14E1FDC(uint64_t a1)
{

  sub_1D15A2D38();

  v2 = [*(a1 + qword_1EE0584B0) identifier];
  v3 = sub_1D15A3F38();
  v5 = v4;

  v6._countAndFlagsBits = 0x64656873696E6966;
  v6._object = 0xE800000000000000;
  v7._countAndFlagsBits = v3;
  v7._object = v5;
  NSOperation.logLifeCycleEvent(_:withPrivateInfo:)(v6, v7);
}

void sub_1D14E20B0()
{
  sub_1D14E1318(319, &qword_1EE05AEE0, type metadata accessor for StatisticsQueryConfigurationOverrides, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1D14E2280(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t sub_1D14E2320(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D14E1318(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D14E2390(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D14E1318(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D14E2410(uint64_t a1, void *a2, unint64_t a3)
{
  v7 = *(sub_1D15A31D8() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  sub_1D14E1318(0, &qword_1EE05B520, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  v11 = v3 + ((v9 + *(*(v10 - 8) + 80)) & ~*(*(v10 - 8) + 80));

  sub_1D14E1B20(a1, a2, a3, v3 + v8, v11);
}

uint64_t sub_1D14E2558(uint64_t a1)
{
  ConfigurationOverrides = type metadata accessor for StatisticsQueryConfigurationOverrides();
  (*(*(ConfigurationOverrides - 8) + 8))(a1, ConfigurationOverrides);
  return a1;
}

id sub_1D14E25C0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1D14A8208(*a1);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_1D14E261C(v3);
}

id HKObjectType.currentValueQueryConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 code];
  switch(result)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 0xFuLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x3AuLL:
    case 0x3EuLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x59uLL:
    case 0x5AuLL:
    case 0x72uLL:
    case 0x76uLL:
    case 0x89uLL:
    case 0x8BuLL:
    case 0xB7uLL:
    case 0xBBuLL:
    case 0xC2uLL:
    case 0x102uLL:
    case 0x103uLL:
    case 0x104uLL:
    case 0x10AuLL:
    case 0x10EuLL:
    case 0x112uLL:
    case 0x118uLL:
    case 0x119uLL:
    case 0x11AuLL:
    case 0x11BuLL:
    case 0x12DuLL:
    case 0x12EuLL:
    case 0x12FuLL:
      v4 = &unk_1F4D3A910;
      goto LABEL_8;
    case 5uLL:
    case 0xEuLL:
    case 0x3DuLL:
    case 0xB6uLL:
    case 0xBCuLL:
    case 0xC3uLL:
    case 0xC4uLL:
    case 0x110uLL:
    case 0x11EuLL:
      v4 = &unk_1F4D3A9C8;
      goto LABEL_8;
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3CuLL:
    case 0x4BuLL:
    case 0x4EuLL:
    case 0x53uLL:
    case 0x57uLL:
    case 0x65uLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x71uLL:
    case 0x7DuLL:
    case 0x8AuLL:
    case 0xB3uLL:
    case 0xBAuLL:
    case 0xFBuLL:
    case 0x117uLL:
    case 0x126uLL:
    case 0x127uLL:
    case 0x128uLL:
    case 0x129uLL:
      v4 = &unk_1F4D3A8C0;
      goto LABEL_8;
    case 0x3FuLL:
      *a1 = xmmword_1D15B13A0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v5 = 16;
      goto LABEL_31;
    case 0x46uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 80;
      goto LABEL_31;
    case 0x4FuLL:
    case 0x63uLL:
    case 0xBDuLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 24;
      goto LABEL_31;
    case 0x50uLL:
      *a1 = &unk_1F4D3A938;
      *(a1 + 8) = 2;
      *(a1 + 16) = &unk_1F4D3A978;
      *(a1 + 24) = 256;
      v5 = 8;
      goto LABEL_31;
    case 0x5BuLL:
    case 0x5CuLL:
    case 0x5FuLL:
    case 0x61uLL:
    case 0x90uLL:
    case 0x9DuLL:
    case 0x9EuLL:
    case 0x9FuLL:
    case 0xA0uLL:
    case 0xA1uLL:
    case 0xA2uLL:
    case 0xA3uLL:
    case 0xA4uLL:
    case 0xA5uLL:
    case 0xA6uLL:
    case 0xA7uLL:
    case 0xA8uLL:
    case 0xA9uLL:
    case 0xAAuLL:
    case 0xABuLL:
    case 0xE5uLL:
    case 0xE6uLL:
    case 0xE7uLL:
    case 0xE8uLL:
    case 0xE9uLL:
    case 0xEAuLL:
    case 0xEBuLL:
    case 0xF3uLL:
    case 0xF4uLL:
    case 0xF9uLL:
    case 0x11FuLL:
    case 0x120uLL:
    case 0x139uLL:
    case 0x13AuLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 33;
      goto LABEL_31;
    case 0x60uLL:
      *a1 = 0xD00000000000001CLL;
      *(a1 + 8) = 0x80000001D15BE6C0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v5 = 33;
      goto LABEL_31;
    case 0x64uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 48;
      goto LABEL_31;
    case 0x7CuLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 104;
      goto LABEL_31;
    case 0x8CuLL:
    case 0x93uLL:
    case 0x9CuLL:
    case 0xB2uLL:
    case 0xC7uLL:
    case 0xECuLL:
    case 0xFAuLL:
    case 0xFEuLL:
    case 0x114uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 72;
      goto LABEL_31;
    case 0x91uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 65;
      goto LABEL_31;
    case 0xACuLL:
      v6 = &unk_1F4D3A9A0;
      goto LABEL_29;
    case 0xADuLL:
      v6 = &unk_1F4D3AA18;
LABEL_29:
      *a1 = 3;
      *(a1 + 8) = v6;
      *(a1 + 16) = xmmword_1D15B13B0;
      v5 = 56;
      goto LABEL_31;
    case 0xBFuLL:
    case 0xC0uLL:
    case 0xC1uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 88;
      goto LABEL_31;
    case 0xC9uLL:
    case 0xCAuLL:
    case 0xCBuLL:
    case 0xCCuLL:
    case 0xCDuLL:
    case 0xCEuLL:
    case 0xCFuLL:
    case 0xDCuLL:
    case 0xDDuLL:
    case 0xDEuLL:
    case 0xDFuLL:
    case 0xE0uLL:
    case 0xE1uLL:
    case 0xE2uLL:
    case 0xF0uLL:
    case 0xF1uLL:
    case 0xF2uLL:
    case 0x113uLL:
    case 0x11CuLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 32;
      goto LABEL_31;
    case 0xEDuLL:
      v4 = &unk_1F4D3A9F0;
      goto LABEL_8;
    case 0xF8uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 112;
      goto LABEL_31;
    case 0x100uLL:
      v4 = &unk_1F4D3A8E8;
LABEL_8:
      *a1 = 2;
      *(a1 + 8) = v4;
      *(a1 + 16) = xmmword_1D15B1390;
      *(a1 + 32) = 0;
      return result;
    case 0x101uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = 120;
      goto LABEL_31;
    case 0x106uLL:
    case 0x107uLL:
    case 0x108uLL:
    case 0x109uLL:
      *a1 = 0xD000000000000010;
      *(a1 + 8) = 0x80000001D15BE6A0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v5 = 32;
      goto LABEL_31;
    case 0x10DuLL:
      *a1 = 2;
      *(a1 + 8) = &unk_1F4D3AA40;
      *(a1 + 16) = xmmword_1D15B1390;
      v5 = 0x80;
      goto LABEL_31;
    case 0x115uLL:
      *a1 = 65538;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      v5 = 40;
      goto LABEL_31;
    case 0x131uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = -120;
      goto LABEL_31;
    case 0x155uLL:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = -112;
      goto LABEL_31;
    default:
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v5 = -2;
LABEL_31:
      *(a1 + 32) = v5;
      return result;
  }
}

id HKObjectType.snippetSupplementaryLabelConfiguration.getter@<X0>(char *a1@<X8>)
{
  result = [v1 code];
  v4 = 1;
  switch(result)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x3AuLL:
    case 0x3DuLL:
    case 0x3EuLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x59uLL:
    case 0x5AuLL:
    case 0x72uLL:
    case 0x76uLL:
    case 0x89uLL:
    case 0x8BuLL:
    case 0xB6uLL:
    case 0xC3uLL:
    case 0xC4uLL:
    case 0xEDuLL:
    case 0x102uLL:
    case 0x103uLL:
    case 0x104uLL:
    case 0x10AuLL:
    case 0x10EuLL:
    case 0x110uLL:
    case 0x112uLL:
    case 0x115uLL:
    case 0x118uLL:
    case 0x119uLL:
    case 0x11AuLL:
    case 0x11BuLL:
    case 0x11EuLL:
    case 0x12DuLL:
    case 0x12EuLL:
    case 0x12FuLL:
      v4 = 0;
      break;
    case 0xF8uLL:
    case 0xF9uLL:
      break;
    default:
      v4 = 2;
      break;
  }

  *a1 = v4;
  return result;
}

id HKObjectType.swiftChartDiagramConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 code];
  switch(result)
  {
    case 0uLL:
    case 1uLL:
    case 3uLL:
    case 4uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3CuLL:
    case 0x3DuLL:
    case 0x3EuLL:
    case 0x3FuLL:
    case 0x46uLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x4BuLL:
    case 0x4EuLL:
    case 0x4FuLL:
    case 0x53uLL:
    case 0x57uLL:
    case 0x5AuLL:
    case 0x63uLL:
    case 0x65uLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x71uLL:
    case 0x72uLL:
    case 0x76uLL:
    case 0x7DuLL:
    case 0x89uLL:
    case 0x8AuLL:
    case 0x8BuLL:
    case 0xACuLL:
    case 0xADuLL:
    case 0xB3uLL:
    case 0xB6uLL:
    case 0xB7uLL:
    case 0xBAuLL:
    case 0xBBuLL:
    case 0xBCuLL:
    case 0xBDuLL:
    case 0xC2uLL:
    case 0xC3uLL:
    case 0xC4uLL:
    case 0xFBuLL:
    case 0x100uLL:
    case 0x102uLL:
    case 0x103uLL:
    case 0x104uLL:
    case 0x10AuLL:
    case 0x10EuLL:
    case 0x110uLL:
    case 0x112uLL:
    case 0x117uLL:
    case 0x118uLL:
    case 0x119uLL:
    case 0x11AuLL:
    case 0x11BuLL:
    case 0x11EuLL:
    case 0x126uLL:
    case 0x127uLL:
    case 0x128uLL:
    case 0x129uLL:
    case 0x12DuLL:
    case 0x12EuLL:
    case 0x12FuLL:
      v4 = xmmword_1D15B13E0;
      goto LABEL_3;
    case 5uLL:
    case 0xFuLL:
    case 0x10DuLL:
    case 0x115uLL:
      v4 = xmmword_1D15B13D0;
LABEL_3:
      *a1 = v4;
      v5 = 5;
      goto LABEL_4;
    case 0x7CuLL:
      *a1 = xmmword_1D15B13C0;
      v5 = 4;
LABEL_4:
      *(a1 + 16) = v5;
      *(a1 + 24) = 0;
      break;
    default:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 256;
      break;
  }

  return result;
}

uint64_t HKObjectType.canBeOngoing.getter()
{
  v1 = [v0 code] - 6;
  result = 1;
  switch(v1)
  {
    case 0uLL:
    case 5uLL:
    case 0x35uLL:
    case 0x3AuLL:
    case 0x3BuLL:
    case 0x3CuLL:
    case 0x3FuLL:
    case 0x44uLL:
    case 0x4CuLL:
    case 0x4EuLL:
    case 0x4FuLL:
    case 0x50uLL:
    case 0x52uLL:
    case 0x57uLL:
    case 0x58uLL:
    case 0x59uLL:
    case 0x61uLL:
    case 0x64uLL:
    case 0x67uLL:
    case 0x6DuLL:
    case 0x6FuLL:
    case 0x72uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x81uLL:
    case 0x82uLL:
    case 0x8CuLL:
    case 0x8EuLL:
    case 0xA8uLL:
    case 0xA9uLL:
    case 0xAAuLL:
    case 0xABuLL:
    case 0xAFuLL:
    case 0xB2uLL:
    case 0xB3uLL:
    case 0xB9uLL:
    case 0xBAuLL:
    case 0xBBuLL:
    case 0xC2uLL:
    case 0xCAuLL:
    case 0xD1uLL:
    case 0xD4uLL:
    case 0xDDuLL:
    case 0xDEuLL:
    case 0xE8uLL:
    case 0xE9uLL:
    case 0xF1uLL:
    case 0xFBuLL:
    case 0xFFuLL:
    case 0x109uLL:
    case 0x110uLL:
    case 0x11DuLL:
    case 0x11EuLL:
    case 0x12CuLL:
    case 0x133uLL:
    case 0x134uLL:
    case 0x137uLL:
    case 0x13CuLL:
    case 0x13DuLL:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

id sub_1D14E2A68(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = 0xD000000000000025;
  v7 = sub_1D15A3268();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v54 - v19;
  if (![a1 _isStandalonePhoneSummary])
  {
    if (((a2 == 1) & a3) != 0)
    {
      v21 = 0x80000001D15C0050;
      type metadata accessor for Localization();
      v56 = 0u;
      v57 = 0u;
      swift_initStaticObject();
      v22 = sub_1D144E91C(0xD00000000000002CLL, 0x80000001D15C0050, &v56, 0, 0);
      v24 = v31;
      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (!v32)
      {

        sub_1D15A3238();
        v33 = sub_1D15A3248();
        v34 = sub_1D15A42F8();
        if (!os_log_type_enabled(v33, v34))
        {

          (*(v8 + 8))(v13, v7);
          v30 = 0xD00000000000002CLL;
          v24 = 0x80000001D15C0050;
          goto LABEL_23;
        }

        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v55 = v36;
        *v35 = 136446210;
        v30 = 0xD00000000000002CLL;
        *(v35 + 4) = sub_1D1479780(0xD00000000000002CLL, 0x80000001D15C0050, &v55);
        _os_log_impl(&dword_1D1446000, v33, v34, "Localization: no localization found for '%{public}s'", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x1D388BF00](v36, -1, -1);
        MEMORY[0x1D388BF00](v35, -1, -1);

        (*(v8 + 8))(v13, v7);
LABEL_14:
        v24 = v21;
LABEL_23:
        sub_1D144ED4C(&v56);
        goto LABEL_28;
      }
    }

    else
    {
      type metadata accessor for Localization();
      v56 = 0u;
      v57 = 0u;
      swift_initStaticObject();
      v22 = sub_1D144E91C(0xD000000000000027, 0x80000001D15C0020, &v56, 0, 0);
      v24 = v40;
      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (!v41)
      {

        sub_1D15A3238();
        v50 = sub_1D15A3248();
        v51 = sub_1D15A42F8();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v55 = v53;
          *v52 = 136446210;
          v30 = 0xD000000000000027;
          *(v52 + 4) = sub_1D1479780(0xD000000000000027, 0x80000001D15C0020, &v55);
          _os_log_impl(&dword_1D1446000, v50, v51, "Localization: no localization found for '%{public}s'", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v53);
          MEMORY[0x1D388BF00](v53, -1, -1);
          MEMORY[0x1D388BF00](v52, -1, -1);

          (*(v8 + 8))(v10, v7);
        }

        else
        {

          (*(v8 + 8))(v10, v7);
          v30 = 0xD000000000000027;
        }

        v24 = 0x80000001D15C0020;
        goto LABEL_23;
      }
    }

LABEL_22:
    v30 = v22;
    goto LABEL_23;
  }

  if (((a2 == 1) & a3) != 0)
  {
    v21 = 0x80000001D15C00B0;
    type metadata accessor for Localization();
    v56 = 0u;
    v57 = 0u;
    swift_initStaticObject();
    v22 = sub_1D144E91C(0xD00000000000002ALL, 0x80000001D15C00B0, &v56, 0, 0);
    v24 = v23;
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25)
    {

      sub_1D15A3238();
      v26 = sub_1D15A3248();
      v27 = sub_1D15A42F8();
      if (!os_log_type_enabled(v26, v27))
      {

        (*(v8 + 8))(v20, v7);
        v30 = 0xD00000000000002ALL;
        v24 = 0x80000001D15C00B0;
        goto LABEL_23;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v55 = v29;
      *v28 = 136446210;
      v30 = 0xD00000000000002ALL;
      *(v28 + 4) = sub_1D1479780(0xD00000000000002ALL, 0x80000001D15C00B0, &v55);
      _os_log_impl(&dword_1D1446000, v26, v27, "Localization: no localization found for '%{public}s'", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1D388BF00](v29, -1, -1);
      MEMORY[0x1D388BF00](v28, -1, -1);

      (*(v8 + 8))(v20, v7);
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  type metadata accessor for Localization();
  v56 = 0u;
  v57 = 0u;
  swift_initStaticObject();
  v37 = sub_1D144E91C(0xD000000000000025, 0x80000001D15C0080, &v56, 0, 0);
  v24 = v38;
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    v6 = v37;
  }

  else
  {

    sub_1D15A3238();
    v42 = sub_1D15A3248();
    v43 = sub_1D15A42F8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55 = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_1D1479780(0xD000000000000025, 0x80000001D15C0080, &v55);
      _os_log_impl(&dword_1D1446000, v42, v43, "Localization: no localization found for '%{public}s'", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1D388BF00](v45, -1, -1);
      MEMORY[0x1D388BF00](v44, -1, -1);
    }

    (*(v8 + 8))(v16, v7);
    v24 = 0x80000001D15C0080;
  }

  sub_1D144ED4C(&v56);
  v30 = v6;
LABEL_28:
  sub_1D14AD968();
  v46 = sub_1D15A4538();
  v47 = [objc_opt_self() labelColor];
  v48 = _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(v30, v24, v46, v47);

  return v48;
}

id sub_1D14E3204(uint64_t a1)
{
  v2 = sub_1D15A3268();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v6 setDateStyle_];
  [v6 setTimeStyle_];
  type metadata accessor for Localization();
  memset(v30, 0, sizeof(v30));
  swift_initStaticObject();
  v7 = sub_1D144E91C(0xD00000000000002ELL, 0x80000001D15BFFF0, v30, 0, 0);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    sub_1D15A3238();
    v10 = sub_1D15A3248();
    v11 = sub_1D15A42F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v28 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1D1479780(0xD00000000000002ELL, 0x80000001D15BFFF0, &v29);
      _os_log_impl(&dword_1D1446000, v10, v11, "Localization: no localization found for '%{public}s'", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1D388BF00](v14, -1, -1);
      MEMORY[0x1D388BF00](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  sub_1D144ED4C(v30);
  sub_1D1487C24();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D15ACDD0;
  v16 = sub_1D15A2618();
  v17 = [v6 stringFromDate_];

  v18 = sub_1D15A3F38();
  v20 = v19;

  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1D1487C8C();
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  v21 = sub_1D15A3F08();
  v23 = v22;

  sub_1D14AD968();
  v24 = sub_1D15A4538();
  v25 = [objc_opt_self() secondaryLabelColor];
  v26 = _sSo17HKActivitySummaryC19HealthVisualizationE27createTitleAttributedString4text9titleFont0J5ColorSo012NSAttributedH0CSS_So6UIFontCSo7UIColorCtF_0(v21, v23, v24, v25);

  return v26;
}

uint64_t SummaryModelAudience.uniqueIdentifierComponent.getter(char a1)
{
  if (a1)
  {
    v1 = 0x676E6972616873;
  }

  else
  {
    v1 = 0x7972616D697270;
  }

  MEMORY[0x1D388A330](v1, 0xE700000000000000);

  return 0x65636E6569647541;
}

uint64_t SummaryModelAudience.description.getter(char a1)
{
  if (a1)
  {
    return 0x676E6972616873;
  }

  else
  {
    return 0x7972616D697270;
  }
}

HealthVisualization::SummaryModelAudience_optional __swiftcall SummaryModelAudience.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D15A49B8();

  if (v1 == 1)
  {
    v2.value = HealthVisualization_SummaryModelAudience_sharing;
  }

  else
  {
    v2.value = HealthVisualization_SummaryModelAudience_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D14E36D4()
{
  result = qword_1EC6308C8;
  if (!qword_1EC6308C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6308C8);
  }

  return result;
}

uint64_t sub_1D14E3728()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D14E37A0()
{
  sub_1D15A3F88();
}

uint64_t sub_1D14E37FC()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D14E3870@<X0>(char *a1@<X8>)
{
  v2 = sub_1D15A49B8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D14E38D0(uint64_t *a1@<X8>)
{
  v2 = 0x7972616D697270;
  if (*v1)
  {
    v2 = 0x676E6972616873;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_1D14E3908(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x676E6972616873;
  }

  else
  {
    v2 = 0x7972616D697270;
  }

  if (*a2)
  {
    v3 = 0x676E6972616873;
  }

  else
  {
    v3 = 0x7972616D697270;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D15A4BA8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D14E3990()
{
  if (*v0)
  {
    return 0x676E6972616873;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t SnippetSupplementaryLabelConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_1D15A4C88();
  MEMORY[0x1D388B000](v1);
  return sub_1D15A4CB8();
}

unint64_t sub_1D14E3A68()
{
  result = qword_1EC6308D0;
  if (!qword_1EC6308D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6308D0);
  }

  return result;
}

uint64_t SignificantChange.changes.getter()
{
  type metadata accessor for SignificantChange(0);
}

uint64_t SignificantChange.init(baseline:changes:notification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D14E764C(a1, a4, type metadata accessor for SignificantChange.Period);
  v7 = type metadata accessor for SignificantChange(0);
  *(a4 + *(v7 + 20)) = a2;
  v8 = a4 + *(v7 + 24);

  return sub_1D14E3BEC(a3, v8);
}

uint64_t sub_1D14E3BEC(uint64_t a1, uint64_t a2)
{
  sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SignificantChange.Period.period.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A22A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SignificantChange.Period.change.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SignificantChange.Period(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

int *SignificantChange.Period.init(period:value:frequency:change:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *a2;
  v10 = sub_1D15A22A8();
  (*(*(v10 - 8) + 32))(a3, a1, v10);
  result = type metadata accessor for SignificantChange.Period(0);
  *(a3 + result[5]) = a4;
  *(a3 + result[6]) = a5;
  *(a3 + result[7]) = v9;
  return result;
}

HealthVisualization::SignificantChange::Period::ChangeType_optional __swiftcall SignificantChange.Period.ChangeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SignificantChange.Period.ChangeType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6973616572636564;
  }

  else
  {
    return 0x6973616572636E69;
  }
}

uint64_t sub_1D14E3EB0()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D14E3F24()
{
  sub_1D15A3F88();
}

uint64_t sub_1D14E3F7C()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D14E3FEC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6973616572636564;
  }

  else
  {
    v2 = 0x6973616572636E69;
  }

  if (*a2)
  {
    v3 = 0x6973616572636564;
  }

  else
  {
    v3 = 0x6973616572636E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D15A4BA8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D14E4124@<X0>(char *a1@<X8>)
{
  v2 = sub_1D15A49B8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D14E4184(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0x6973616572636564;
  }

  else
  {
    v2 = 0x6973616572636E69;
  }

  *a1 = v2;
  a1[1] = 0xEA0000000000676ELL;
}

uint64_t sub_1D14E41B8()
{
  v1 = 0x646F69726570;
  v2 = 0x636E657571657266;
  if (*v0 != 2)
  {
    v2 = 0x65676E616863;
  }

  if (*v0)
  {
    v1 = 0x65756C6176;
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

uint64_t sub_1D14E422C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D14E6548(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D14E4254(uint64_t a1)
{
  v2 = sub_1D14E608C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14E4290(uint64_t a1)
{
  v2 = sub_1D14E608C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChange.Period.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D14E69BC(0, &qword_1EE0563C8, sub_1D14E608C, &type metadata for SignificantChange.Period.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E608C();
  sub_1D15A4CE8();
  v17 = 0;
  sub_1D15A22A8();
  sub_1D14E6134(&qword_1EE0595A0, MEMORY[0x1E6968130]);
  sub_1D15A4B38();
  if (!v2)
  {
    v10 = type metadata accessor for SignificantChange.Period(0);
    v16 = 1;
    sub_1D15A4B18();
    v15 = 2;
    sub_1D15A4B18();
    v14 = *(v3 + *(v10 + 28));
    v13 = 3;
    sub_1D14E60E0();
    sub_1D15A4AE8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t SignificantChange.Period.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_1D15A22A8();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14E69BC(0, &qword_1EE056458, sub_1D14E608C, &type metadata for SignificantChange.Period.CodingKeys, MEMORY[0x1E69E6F48]);
  v21 = v5;
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for SignificantChange.Period(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E608C();
  v23 = v7;
  v11 = v24;
  sub_1D15A4CD8();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v19;
  v12 = v20;
  v29 = 0;
  sub_1D14E6134(&qword_1EE059598, MEMORY[0x1E6968130]);
  sub_1D15A4A78();
  (*(v12 + 32))(v10, v22, v3);
  v28 = 1;
  sub_1D15A4A58();
  *&v10[v8[5]] = v14;
  v27 = 2;
  sub_1D15A4A58();
  *&v10[v8[6]] = v15;
  v25 = 3;
  sub_1D14E617C();
  sub_1D15A4A28();
  (*(v13 + 8))(v23, v21);
  v10[v8[7]] = v26;
  sub_1D14E6AE8(v10, v18, type metadata accessor for SignificantChange.Period);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D14E7560(v10, type metadata accessor for SignificantChange.Period);
}

uint64_t SignificantChange.Notification.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SignificantChange.Notification.detectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignificantChange.Notification(0) + 24);
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SignificantChange.Notification.originalEventDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SignificantChange.Notification(0) + 28);
  v4 = sub_1D15A26A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SignificantChange.Notification.init(identifier:significant:detectionDate:originalEventDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for SignificantChange.Notification(0);
  v10 = *(v9 + 24);
  v11 = sub_1D15A26A8();
  v14 = *(*(v11 - 8) + 32);
  (v14)((v11 - 8), a6 + v10, a4, v11);
  v12 = a6 + *(v9 + 28);

  return v14(v12, a5, v11);
}

uint64_t SignificantChange.Notification.with(significant:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1 & 1;
  if (*(v2 + 16) == (a1 & 1))
  {
    return sub_1D14E6AE8(v2, a2, type metadata accessor for SignificantChange.Notification);
  }

  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = type metadata accessor for SignificantChange.Notification(0);
  v8 = *(v7 + 24);
  v9 = sub_1D15A26A8();
  v10 = *(*(v9 - 8) + 16);
  v10(a2 + v8, v2 + v8, v9);
  v10(a2 + *(v7 + 28), v2 + *(v7 + 28), v9);
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
}

uint64_t static SignificantChange.Notification.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D15A4BA8() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for SignificantChange.Notification(0);
  if ((sub_1D15A2658() & 1) == 0)
  {
    return 0;
  }

  return sub_1D15A2658();
}

unint64_t sub_1D14E4D28()
{
  v1 = 0x696669746E656469;
  v2 = 0x6F69746365746564;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x636966696E676973;
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

uint64_t sub_1D14E4DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D14E71DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D14E4DE8(uint64_t a1)
{
  v2 = sub_1D14E681C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14E4E24(uint64_t a1)
{
  v2 = sub_1D14E681C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChange.Notification.encode(to:)(void *a1)
{
  sub_1D14E69BC(0, &qword_1EE0563D0, sub_1D14E681C, &type metadata for SignificantChange.Notification.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E681C();
  sub_1D15A4CE8();
  v13 = 0;
  sub_1D15A4AF8();
  if (!v1)
  {
    v12 = 1;
    sub_1D15A4B08();
    type metadata accessor for SignificantChange.Notification(0);
    v11 = 2;
    sub_1D15A26A8();
    sub_1D14E6134(&qword_1EE05B3F8, MEMORY[0x1E6969530]);
    sub_1D15A4B38();
    v10 = 3;
    sub_1D15A4B38();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SignificantChange.Notification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1D15A26A8();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  sub_1D14E69BC(0, &qword_1EE056460, sub_1D14E681C, &type metadata for SignificantChange.Notification.CodingKeys, MEMORY[0x1E69E6F48]);
  v35 = v8;
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for SignificantChange.Notification(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E681C();
  v34 = v10;
  v14 = v36;
  sub_1D15A4CD8();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v31;
  v16 = v32;
  v28 = v13;
  v17 = v33;
  v40 = 0;
  v18 = sub_1D15A4A38();
  v19 = v28;
  *v28 = v18;
  v19[1] = v20;
  v36 = v20;
  v39 = 1;
  *(v19 + 16) = sub_1D15A4A48() & 1;
  v38 = 2;
  v27 = sub_1D14E6134(&qword_1EE05B800, MEMORY[0x1E6969530]);
  sub_1D15A4A78();
  v21 = v19 + *(v11 + 24);
  v26 = *(v16 + 32);
  v26(v21, v7, v17);
  v37 = 3;
  sub_1D15A4A78();
  (*(v15 + 8))(v34, v35);
  v22 = *(v11 + 28);
  v23 = v28;
  v26(v28 + v22, v30, v17);
  sub_1D14E6AE8(v23, v29, type metadata accessor for SignificantChange.Notification);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D14E7560(v23, type metadata accessor for SignificantChange.Notification);
}

uint64_t sub_1D14E551C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D15A4BA8() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (sub_1D15A2658() & 1) == 0)
  {
    return 0;
  }

  return sub_1D15A2658();
}

uint64_t SignificantChange.notification.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SignificantChange(0) + 24);

  return sub_1D14E6870(v3, a1);
}

uint64_t sub_1D14E563C()
{
  v1 = 0x7365676E616863;
  if (*v0 != 1)
  {
    v1 = 0x6163696669746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E696C65736162;
  }
}

uint64_t sub_1D14E56A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D14E735C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D14E56C8(uint64_t a1)
{
  v2 = sub_1D14E6904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14E5704(uint64_t a1)
{
  v2 = sub_1D14E6904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChange.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D14E69BC(0, &qword_1EE0563D8, sub_1D14E6904, &type metadata for SignificantChange.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E6904();
  sub_1D15A4CE8();
  v14 = 0;
  type metadata accessor for SignificantChange.Period(0);
  sub_1D14E6134(&qword_1EE058FE0, type metadata accessor for SignificantChange.Period);
  sub_1D15A4B38();
  if (!v2)
  {
    v11[1] = *(v3 + *(type metadata accessor for SignificantChange(0) + 20));
    v13 = 1;
    sub_1D14E6958(0, &qword_1EE056878, type metadata accessor for SignificantChange.Period, MEMORY[0x1E69E62F8]);
    sub_1D14E6A24(&qword_1EE056870, &qword_1EE058FE0);
    sub_1D15A4B38();
    v12 = 2;
    type metadata accessor for SignificantChange.Notification(0);
    sub_1D14E6134(&qword_1EE0590C8, type metadata accessor for SignificantChange.Notification);
    sub_1D15A4AE8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t SignificantChange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v24 = type metadata accessor for SignificantChange.Period(0);
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14E69BC(0, &qword_1EE056468, sub_1D14E6904, &type metadata for SignificantChange.CodingKeys, MEMORY[0x1E69E6F48]);
  v26 = v7;
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SignificantChange(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E6904();
  v27 = v9;
  v13 = v28;
  sub_1D15A4CD8();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v23;
  v28 = v10;
  v15 = v12;
  v16 = a1;
  v32 = 0;
  sub_1D14E6134(&qword_1EE058FD8, type metadata accessor for SignificantChange.Period);
  v17 = v25;
  v18 = v26;
  sub_1D15A4A78();
  sub_1D14E764C(v17, v15, type metadata accessor for SignificantChange.Period);
  sub_1D14E6958(0, &qword_1EE056878, type metadata accessor for SignificantChange.Period, MEMORY[0x1E69E62F8]);
  v31 = 1;
  sub_1D14E6A24(&qword_1EE056868, &qword_1EE058FD8);
  sub_1D15A4A78();
  v19 = v28;
  *(v15 + *(v28 + 20)) = v29;
  type metadata accessor for SignificantChange.Notification(0);
  v30 = 2;
  sub_1D14E6134(&qword_1EE0590C0, type metadata accessor for SignificantChange.Notification);
  v25 = v15;
  sub_1D15A4A28();
  (*(v14 + 8))(v27, v18);
  v20 = v25;
  sub_1D14E3BEC(v5, &v25[*(v19 + 24)]);
  sub_1D14E6AE8(v20, v22, type metadata accessor for SignificantChange);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_1D14E7560(v20, type metadata accessor for SignificantChange);
}

uint64_t _s19HealthVisualization17SignificantChangeV6PeriodV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D15A2238() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SignificantChange.Period(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    return v7 == 2;
  }

  if (v7 == 2)
  {
    return 0;
  }

  if (v6)
  {
    v9 = 0x6973616572636564;
  }

  else
  {
    v9 = 0x6973616572636E69;
  }

  if (v7)
  {
    v10 = 0x6973616572636564;
  }

  else
  {
    v10 = 0x6973616572636E69;
  }

  if (v9 != v10)
  {
    v11 = sub_1D15A4BA8();
    swift_bridgeObjectRelease_n();
    return (v11 & 1) != 0;
  }

  swift_bridgeObjectRelease_n();
  return 1;
}

unint64_t sub_1D14E608C()
{
  result = qword_1EE058FF8;
  if (!qword_1EE058FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058FF8);
  }

  return result;
}

unint64_t sub_1D14E60E0()
{
  result = qword_1EE059018[0];
  if (!qword_1EE059018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE059018);
  }

  return result;
}

uint64_t sub_1D14E6134(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D14E617C()
{
  result = qword_1EE059008;
  if (!qword_1EE059008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059008);
  }

  return result;
}

uint64_t _s19HealthVisualization17SignificantChangeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantChange.Notification(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  sub_1D14E74CC();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((_s19HealthVisualization17SignificantChangeV6PeriodV2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for SignificantChange(0);
  if ((sub_1D1489344(*(a1 + *(v15 + 20)), *(a2 + *(v15 + 20))) & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 24);
  v17 = *(v12 + 48);
  sub_1D14E6870(a1 + v16, v14);
  sub_1D14E6870(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v17], 1, v4) == 1)
    {
      sub_1D14E75C0(v14);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1D14E6870(v14, v10);
  if (v18(&v14[v17], 1, v4) == 1)
  {
    sub_1D14E7560(v10, type metadata accessor for SignificantChange.Notification);
LABEL_8:
    sub_1D14E7560(v14, sub_1D14E74CC);
    return 0;
  }

  sub_1D14E764C(&v14[v17], v7, type metadata accessor for SignificantChange.Notification);
  v20 = *v10 == *v7 && *(v10 + 1) == *(v7 + 1);
  if (v20 || (sub_1D15A4BA8()) && v10[16] == v7[16] && (sub_1D15A2658())
  {
    v21 = sub_1D15A2658();
    sub_1D14E7560(v7, type metadata accessor for SignificantChange.Notification);
    sub_1D14E7560(v10, type metadata accessor for SignificantChange.Notification);
    sub_1D14E75C0(v14);
    if (v21)
    {
      return 1;
    }
  }

  else
  {
    sub_1D14E7560(v7, type metadata accessor for SignificantChange.Notification);
    sub_1D14E7560(v10, type metadata accessor for SignificantChange.Notification);
    sub_1D14E75C0(v14);
  }

  return 0;
}

uint64_t sub_1D14E6548(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F69726570 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676E616863 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t _s19HealthVisualization17SignificantChangeV12NotificationV10identifier9eventDate9directionSS10Foundation0H0V_AC6PeriodV0D4TypeOtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_1D15A25F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  MEMORY[0x1D38884F0](v5);
  sub_1D14E6134(&qword_1EE0594B0, MEMORY[0x1E69693A0]);
  sub_1D15A2688();
  (*(v4 + 8))(v7, v3);
  if (a2)
  {
    v8 = 0x6973616572636564;
  }

  else
  {
    v8 = 0x6973616572636E69;
  }

  MEMORY[0x1D388A330](95, 0xE100000000000000);
  MEMORY[0x1D388A330](v8, 0xEA0000000000676ELL);

  return v10;
}

unint64_t sub_1D14E681C()
{
  result = qword_1EE0590E0;
  if (!qword_1EE0590E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0590E0);
  }

  return result;
}

uint64_t sub_1D14E6870(uint64_t a1, uint64_t a2)
{
  sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D14E6904()
{
  result = qword_1EE0590F8[0];
  if (!qword_1EE0590F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0590F8);
  }

  return result;
}

void sub_1D14E6958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D14E69BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D14E6A24(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D14E6958(255, &qword_1EE056878, type metadata accessor for SignificantChange.Period, MEMORY[0x1E69E62F8]);
    sub_1D14E6134(a2, type metadata accessor for SignificantChange.Period);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D14E6AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D14E6B54()
{
  result = qword_1EC6308D8;
  if (!qword_1EC6308D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6308D8);
  }

  return result;
}

void sub_1D14E6BD0()
{
  type metadata accessor for SignificantChange.Period(319);
  if (v0 <= 0x3F)
  {
    sub_1D14E6958(319, &qword_1EE056878, type metadata accessor for SignificantChange.Period, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D14E6958(319, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D14E6CF4()
{
  sub_1D15A22A8();
  if (v0 <= 0x3F)
  {
    sub_1D14E6D88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D14E6D88()
{
  if (!qword_1EE059000)
  {
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059000);
    }
  }
}

uint64_t sub_1D14E6E10()
{
  result = sub_1D15A26A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D14E6EC8()
{
  result = qword_1EC6308E0;
  if (!qword_1EC6308E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6308E0);
  }

  return result;
}

unint64_t sub_1D14E6F20()
{
  result = qword_1EC6308E8;
  if (!qword_1EC6308E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6308E8);
  }

  return result;
}

unint64_t sub_1D14E6F78()
{
  result = qword_1EC6308F0;
  if (!qword_1EC6308F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6308F0);
  }

  return result;
}

unint64_t sub_1D14E6FD0()
{
  result = qword_1EE0590E8;
  if (!qword_1EE0590E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0590E8);
  }

  return result;
}

unint64_t sub_1D14E7028()
{
  result = qword_1EE0590F0;
  if (!qword_1EE0590F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0590F0);
  }

  return result;
}

unint64_t sub_1D14E7080()
{
  result = qword_1EE0590D0;
  if (!qword_1EE0590D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0590D0);
  }

  return result;
}

unint64_t sub_1D14E70D8()
{
  result = qword_1EE0590D8;
  if (!qword_1EE0590D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0590D8);
  }

  return result;
}

unint64_t sub_1D14E7130()
{
  result = qword_1EE058FE8;
  if (!qword_1EE058FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058FE8);
  }

  return result;
}

unint64_t sub_1D14E7188()
{
  result = qword_1EE058FF0;
  if (!qword_1EE058FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058FF0);
  }

  return result;
}

uint64_t sub_1D14E71DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636966696E676973 && a2 == 0xEB00000000746E61 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746365746564 && a2 == 0xED0000657461446ELL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D15C00E0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D14E735C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E696C65736162 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365676E616863 && a2 == 0xE700000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

unint64_t sub_1D14E7478()
{
  result = qword_1EE059010;
  if (!qword_1EE059010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE059010);
  }

  return result;
}

void sub_1D14E74CC()
{
  if (!qword_1EC6308F8)
  {
    sub_1D14E6958(255, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC6308F8);
    }
  }
}

uint64_t sub_1D14E7560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D14E75C0(uint64_t a1)
{
  sub_1D14E6958(0, qword_1EE059078, type metadata accessor for SignificantChange.Notification, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D14E764C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14E76DC()
{
  v0 = sub_1D15A45D8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D14E7DEC();
  sub_1D15A45C8();
  result = sub_1D15A45E8();
  qword_1EC630900 = result;
  return result;
}

uint64_t sub_1D14E78C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1D14E7DEC();
  result = sub_1D15A45F8();
  *a4 = result;
  return result;
}

id sub_1D14E7954(void *a1, void **a2)
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

uint64_t sub_1D14E79D0()
{
  v0 = sub_1D15A3268();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D14E7B6C();
  v2 = v1;
  __swift_allocate_value_buffer(v1, qword_1EE056CC0);
  __swift_project_value_buffer(v2, qword_1EE056CC0);
  sub_1D15A3228();
  sub_1D15A3178();
  sub_1D14E7C5C(&qword_1EE059340);
  sub_1D14E7C5C(&qword_1EE059350);
  sub_1D14E7C5C(&qword_1EE059348);
  return sub_1D15A3158();
}

void sub_1D14E7B6C()
{
  if (!qword_1EE059358)
  {
    sub_1D15A3178();
    sub_1D14E7C5C(&qword_1EE059340);
    sub_1D14E7C5C(&qword_1EE059350);
    sub_1D14E7C5C(&qword_1EE059348);
    v0 = sub_1D15A3168();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059358);
    }
  }
}

uint64_t sub_1D14E7C5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D15A3178();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D14E7CA0()
{
  v0 = sub_1D15A3268();
  __swift_allocate_value_buffer(v0, qword_1EC630910);
  __swift_project_value_buffer(v0, qword_1EC630910);
  return sub_1D15A3258();
}

uint64_t sub_1D14E7D48@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_1D14E7DEC()
{
  result = qword_1EE05ACC8;
  if (!qword_1EE05ACC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE05ACC8);
  }

  return result;
}

id sub_1D14E7E38(int a1, int a2, id a3)
{
  v5 = [a3 displayTypeController];
  if (v5 || (v5 = [objc_opt_self() sharedInstance]) != 0)
  {
    v6 = v5;
    v3 = objc_opt_self();
    v7 = sub_1D15A3EF8();
    v4 = &selRef_bundleForClass_;
    v8 = [v3 _typeWithIdentifier_];

    v9 = [v6 displayTypeForObjectType_];
    if (v9)
    {
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1D15A47D8();

  v11 = sub_1D15A3EF8();
  [v3 v4[124]];

  sub_1D14C867C();
  v12 = sub_1D15A3F68();
  MEMORY[0x1D388A330](v12);

  result = sub_1D15A4908();
  __break(1u);
  return result;
}

id sub_1D14E8008()
{
  v1 = sub_1D14E7E38(*v0, *(v0 + 8), *(v0 + 16));
  v2 = [v1 categoryIdentifier];

  result = [objc_opt_self() categoryWithID_];
  if (!result)
  {
    result = sub_1D15A4908();
    __break(1u);
  }

  return result;
}

void __swiftcall MostRecentSampleQueryConfiguration.init(valueOverrideLocalizedStringKey:valueOverrideLocalizedStringTable:forceDayGranularity:)(HealthVisualization::MostRecentSampleQueryConfiguration *__return_ptr retstr, Swift::String_optional valueOverrideLocalizedStringKey, Swift::String_optional valueOverrideLocalizedStringTable, Swift::Bool forceDayGranularity)
{
  retstr->valueOverrideLocalizedStringKey = valueOverrideLocalizedStringKey;
  retstr->valueOverrideLocalizedStringTable = valueOverrideLocalizedStringTable;
  retstr->forceDayGranularity = forceDayGranularity;
}

uint64_t MostRecentSampleQueryConfiguration.valueOverrideLocalizedStringKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MostRecentSampleQueryConfiguration.valueOverrideLocalizedStringTable.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MostRecentSampleQueryConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D14E8730(0, &qword_1EE05AC50, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E8340();
  sub_1D15A4CD8();
  if (!v2)
  {
    v22 = 0;
    v10 = sub_1D15A4A38();
    v18 = v11;
    v19 = v10;
    v21 = 1;
    v12 = sub_1D15A4A38();
    v14 = v13;
    v20 = 2;
    v15 = sub_1D15A4A48();
    (*(v7 + 8))(v9, v6);
    v16 = v18;
    *a2 = v19;
    *(a2 + 8) = v16;
    *(a2 + 16) = v12;
    *(a2 + 24) = v14;
    *(a2 + 32) = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D14E8340()
{
  result = qword_1EE05AF78;
  if (!qword_1EE05AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AF78);
  }

  return result;
}

unint64_t sub_1D14E8398()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_1D14E83F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D14E88BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D14E8418(uint64_t a1)
{
  v2 = sub_1D14E8340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D14E8454(uint64_t a1)
{
  v2 = sub_1D14E8340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MostRecentSampleQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D14E8730(0, &qword_1EE056308, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  v12 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D14E8340();
  sub_1D15A4CE8();
  v15 = 0;
  v9 = v11[3];
  sub_1D15A4AA8();
  if (!v9)
  {
    v14 = 1;
    sub_1D15A4AA8();
    v13 = 2;
    sub_1D15A4B08();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t _s19HealthVisualization34MostRecentSampleQueryConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_1D15A4BA8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (v9 && (v4 == v8 && v5 == v9 || (sub_1D15A4BA8() & 1) != 0))
    {
      return v6 ^ v10 ^ 1u;
    }
  }

  else if (!v9)
  {
    return v6 ^ v10 ^ 1u;
  }

  return 0;
}

void sub_1D14E8730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D14E8340();
    v7 = a3(a1, &type metadata for MostRecentSampleQueryConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D14E87B8()
{
  result = qword_1EC630928;
  if (!qword_1EC630928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630928);
  }

  return result;
}

unint64_t sub_1D14E8810()
{
  result = qword_1EE05AF68;
  if (!qword_1EE05AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AF68);
  }

  return result;
}

unint64_t sub_1D14E8868()
{
  result = qword_1EE05AF70;
  if (!qword_1EE05AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AF70);
  }

  return result;
}

uint64_t sub_1D14E88BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001FLL && 0x80000001D15BE9A0 == a2;
  if (v3 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D15BE9C0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D15C01C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t CoreChartTrendDataElement.init(date:value:value2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = type metadata accessor for CoreChartTrendDataElement(0);
  v11 = a4 + *(v10 + 24);
  v12 = sub_1D15A26A8();
  result = (*(*(v12 - 8) + 32))(a4, a1, v12);
  *(a4 + *(v10 + 20)) = a5;
  *v11 = a2;
  *(v11 + 8) = a3 & 1;
  return result;
}

int *CoreChartTrendLineViewModel.init(dateInterval:average:xAxisLabel:lineLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14 = sub_1D15A22A8();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  result = type metadata accessor for CoreChartTrendLineViewModel(0);
  *(a6 + result[5]) = a7;
  v16 = (a6 + result[6]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a6 + result[7]);
  *v17 = a4;
  v17[1] = a5;
  return result;
}

uint64_t CoreChartTrendViewModel.init(diagramStyle:hkType:coveredDateRange:baseTrendLine:changeTrendLine:dataSeries:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for CoreChartTrendViewModel(0);
  v15 = v14[8];
  v16 = type metadata accessor for CoreChartTrendLineViewModel(0);
  (*(*(v16 - 8) + 56))(a7 + v15, 1, 1, v16);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  sub_1D14F1A04(a4, a7 + v14[7], type metadata accessor for CoreChartTrendLineViewModel);
  result = sub_1D14EEC44(a5, a7 + v15, sub_1D14E8CA0);
  *(a7 + v14[9]) = a6;
  return result;
}

uint64_t CoreChartTrendDiagram.init(dataViewModel:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x4000000000000000;
  v4 = type metadata accessor for CoreChartTrendDiagram(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_1D14EEB54(0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = (a2 + v4[7]);
  sub_1D15A2E68();
  sub_1D14F1CB0(&qword_1EC630648, MEMORY[0x1E69A3650]);
  *v7 = sub_1D15A3788();
  v7[1] = v8;
  v9 = v4[9];
  *(a2 + v9) = 0;
  v10 = v4[8];
  sub_1D14F21C8(a1, a2 + v10, type metadata accessor for CoreChartTrendViewModel);
  if (!*(a2 + v10))
  {
    *(a2 + v9) = 1;
  }

  sub_1D1453BA0(0, &qword_1EE05ACF0);
  v11 = sub_1D15A4538();
  [v11 lineHeight];
  v13 = v12;

  result = sub_1D14F2078(a1, type metadata accessor for CoreChartTrendViewModel);
  *(a2 + v4[10]) = v13;
  return result;
}

uint64_t CoreChartTrendDataElement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A26A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D14E8F68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A26A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D14E91C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A3878();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EEB54(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CoreChartTrendDiagram(0);
  sub_1D14F21C8(v1 + *(v10 + 20), v9, sub_1D14EEB54);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D15A3668();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1D15A4328();
    v13 = sub_1D15A39E8();
    sub_1D15A3198();

    sub_1D15A3868();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_1D14E93BC()
{
  v1 = sub_1D15A3878();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for CoreChartTrendDiagram(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {

    return v6;
  }

  else
  {
    v9[0] = *v5;

    sub_1D15A4328();
    v8 = sub_1D15A39E8();
    sub_1D15A3198();

    sub_1D15A3868();
    swift_getAtKeyPath();
    sub_1D14F1AA8(v9[0], 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }
}

uint64_t sub_1D14E9538()
{
  if (qword_1EE059700 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE068250;
  result = sub_1D15A3CC8();
  qword_1EE068218 = result;
  return result;
}

uint64_t sub_1D14E95B8()
{
  if (qword_1EE059700 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE068250;
  result = sub_1D15A3CC8();
  qword_1EE068220 = result;
  return result;
}

void CoreChartTrendDiagram.body.getter(uint64_t a1@<X8>)
{
  v49 = a1;
  sub_1D149B16C();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EECAC(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F1F30(0, &qword_1EC630A88, sub_1D14F0C70, sub_1D14F0F28, MEMORY[0x1E697E830]);
  v10 = v9;
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = objc_opt_self();
  v14 = sub_1D14E93BC();
  v15 = [v13 sharedInstanceForHealthStore_];

  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v1 + *(type metadata accessor for CoreChartTrendDiagram(0) + 32);
  v17 = [v15 displayTypeForObjectType_];

  if (!v17)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v18 = [v17 displayCategory];

  v19 = [v18 color];
  if (!v19)
  {
    v20 = [objc_opt_self() systemGrayColor];
  }

  v21 = sub_1D15A3C38();
  if (*(*(v16 + *(type metadata accessor for CoreChartTrendViewModel(0) + 36)) + 16))
  {
    *v8 = sub_1D15A38E8();
    *(v8 + 1) = 0x4020000000000000;
    v8[16] = 0;
    sub_1D14F0F5C();
    sub_1D14E9BD8(v1, v21, &v8[*(v22 + 44)]);
    v23 = sub_1D15A3C78();
    v24 = sub_1D15A3A18();
    sub_1D14EECF4();
    v26 = &v8[*(v25 + 36)];
    *v26 = v23;
    v26[8] = v24;
    v27 = &v8[*(v6 + 36)];
    v28 = *(sub_1D15A3758() + 20);
    v29 = *MEMORY[0x1E697F468];
    v30 = sub_1D15A38C8();
    (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
    __asm { FMOV            V0.2D, #4.0 }

    *v27 = _Q0;
    sub_1D14AD5EC();
    *&v27[*(v36 + 36)] = 256;
    v37 = *MEMORY[0x1E697E728];
    v38 = sub_1D15A36F8();
    (*(*(v38 - 8) + 104))(v4, v37, v38);
    sub_1D14F1CB0(&qword_1EE056BF0, MEMORY[0x1E697E730]);
    if (sub_1D15A3EE8())
    {
      sub_1D14F0D44();
      sub_1D14F1CB0(&qword_1EE056488, sub_1D149B16C);
      sub_1D15A3BF8();

      sub_1D14F2078(v4, sub_1D149B16C);
      sub_1D14F1C24(v8, sub_1D14EECAC);
      KeyPath = swift_getKeyPath();
      v40 = &v12[*(v10 + 36)];
      sub_1D14F0F28(0);
      v42 = *(v41 + 28);
      v43 = *MEMORY[0x1E697E7D0];
      v44 = sub_1D15A3708();
      (*(*(v44 - 8) + 104))(v40 + v42, v43, v44);
      *v40 = KeyPath;
      v45 = v49;
      sub_1D1462F6C(v12, v49);
      (*(v48 + 56))(v45, 0, 1, v10);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v46 = v49;
  v47 = *(v48 + 56);

  v47(v46, 1, 1, v10);
}

uint64_t sub_1D14E9BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a1;
  v88 = a2;
  v86 = a3;
  sub_1D14F1A6C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D15A34B8();
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for CoreChartTrendDiagram(0);
  v64 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v66 = v7;
  v68 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D15A34A8();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF1EC();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF138();
  v63 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF04C();
  v70 = *(v19 - 8);
  v71 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EEEF8();
  v72 = *(v22 - 8);
  v73 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v69 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F10B4(0, &qword_1EC630958, sub_1D14EEEF8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  v65 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v85 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v67 = &v63 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v80 = &v63 - v29;
  sub_1D15A4148();
  v84 = sub_1D15A4138();
  sub_1D15A4128();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v78 = &v63;
  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v31 = v87;
  sub_1D14EF250();
  sub_1D14F0340();
  sub_1D15A3508();
  v32 = sub_1D14F1CB0(&qword_1EC630A70, sub_1D14EF1EC);
  sub_1D15A3B58();
  (*(v12 + 8))(v14, v11);
  *&v102 = v11;
  *(&v102 + 1) = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v63;
  sub_1D15A3B68();
  (*(v16 + 8))(v18, v34);
  v35 = v68;
  sub_1D14F21C8(v31, v68, type metadata accessor for CoreChartTrendDiagram);
  v36 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v37 = swift_allocObject();
  sub_1D14F1A04(v35, v37 + v36, type metadata accessor for CoreChartTrendDiagram);
  v38 = v75;
  sub_1D15A32C8();

  v39 = v79;
  sub_1D15A3498();
  v40 = sub_1D15A3628();
  v41 = v83;
  (*(*(v40 - 8) + 56))(v83, 1, 1, v40);
  *&v102 = v34;
  *(&v102 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v42 = v69;
  v43 = v71;
  v44 = v77;
  v45 = v82;
  sub_1D15A3B98();
  sub_1D14F2078(v41, sub_1D14F1A6C);
  (*(v81 + 8))(v39, v45);
  (*(v76 + 8))(v38, v44);
  (*(v70 + 8))(v21, v43);
  sub_1D15A3D48();
  sub_1D15A3778();
  v46 = v67;
  (*(v72 + 32))(v67, v42, v73);
  v47 = (v46 + *(v65 + 36));
  v48 = v107;
  v47[4] = v106;
  v47[5] = v48;
  v47[6] = v108;
  v49 = v103;
  *v47 = v102;
  v47[1] = v49;
  v50 = v105;
  v47[2] = v104;
  v47[3] = v50;
  v51 = v80;
  sub_1D1463EA0(v46, v80);
  v52 = sub_1D15A3898();
  v90 = 1;
  sub_1D14EDCFC(v87, v88, &v99);
  v93 = *&v100[16];
  v94 = *&v100[32];
  v91 = v99;
  v92 = *v100;
  v96[2] = *&v100[16];
  v96[3] = *&v100[32];
  v96[4] = *&v100[48];
  v96[1] = *v100;
  v95 = *&v100[48];
  v96[0] = v99;
  sub_1D14F21C8(&v91, &v97, sub_1D14F0BA8);
  sub_1D14F2078(v96, sub_1D14F0BA8);
  *&v89[23] = v92;
  *&v89[39] = v93;
  *&v89[55] = v94;
  *&v89[71] = v95;
  *&v89[7] = v91;
  LOBYTE(v45) = v90;
  v53 = v85;
  sub_1D1463F3C(v51, v85);
  v54 = v86;
  sub_1D1463F3C(v53, v86);
  sub_1D14EEE50();
  v56 = v54 + *(v55 + 48);
  v97 = v52;
  v98[0] = v45;
  *&v98[1] = *v89;
  *&v98[17] = *&v89[16];
  *&v98[65] = *&v89[64];
  *&v98[80] = *&v89[79];
  *&v98[49] = *&v89[48];
  *&v98[33] = *&v89[32];
  v57 = *v98;
  *v56 = v52;
  *(v56 + 16) = v57;
  v58 = *&v98[16];
  v59 = *&v98[32];
  v60 = *&v98[48];
  v61 = *&v98[64];
  *(v56 + 96) = *&v98[80];
  *(v56 + 64) = v60;
  *(v56 + 80) = v61;
  *(v56 + 32) = v58;
  *(v56 + 48) = v59;
  sub_1D14F21C8(&v97, &v99, sub_1D14F0B14);
  sub_1D1463FD8(v51);
  *&v100[33] = *&v89[32];
  *&v100[49] = *&v89[48];
  *v101 = *&v89[64];
  *&v100[1] = *v89;
  v99 = v52;
  v100[0] = v45;
  *&v101[15] = *&v89[79];
  *&v100[17] = *&v89[16];
  sub_1D14F2078(&v99, sub_1D14F0B14);
  sub_1D1463FD8(v53);
}

uint64_t sub_1D14EA694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v244 = a2;
  v251 = a1;
  v241 = a3;
  v260 = type metadata accessor for CoreChartTrendLineViewModel(0);
  v258 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v223 = &v202 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F030C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v240 = &v202 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v239 = &v202 - v7;
  v255 = sub_1D15A2838();
  v259 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v222 = &v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v233 = &v202 - v10;
  v254 = sub_1D15A26A8();
  v257 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v235 = &v202 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v219 = &v202 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v249 = &v202 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v248 = &v202 - v17;
  v243 = type metadata accessor for CoreChartTrendLineView(0);
  MEMORY[0x1EEE9AC00](v243);
  v221 = &v202 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v230 = &v202 - v20;
  sub_1D14EFA40();
  v238 = v21;
  v237 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v236 = &v202 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v220 = &v202 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v253 = &v202 - v26;
  v256 = sub_1D15A3668();
  v250 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v232 = &v202 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v231 = &v202 - v29;
  sub_1D14F0FC4(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v234 = &v202 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v252 = &v202 - v33;
  sub_1D14E8CA0(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v227 = &v202 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v226 = &v202 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v242 = &v202 - v39;
  v209 = type metadata accessor for CoreChartTrendDistributionSeries();
  v210 = *(v209 - 8);
  v40 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v211 = &v202 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v214 = &v202 - v42;
  sub_1D1475DA0();
  v215 = v43;
  v213 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v212 = &v202 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for CoreChartTrendLineSeries();
  v206 = *(v203 - 8);
  v45 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v208 = &v202 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v225 = &v202 - v47;
  sub_1D14EF4A0(0);
  v218 = v48;
  v217 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v216 = &v202 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF36C(0);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v245 = &v202 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for CoreChartTrendViewModel(0);
  MEMORY[0x1EEE9AC00](v246);
  v53 = &v202 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v202 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v202 - v58;
  v60 = type metadata accessor for CoreChartTrendBarSeries();
  v202 = *(v60 - 8);
  v61 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v202 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v224 = &v202 - v64;
  sub_1D14EF3B4(0);
  v207 = v65;
  v205 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v204 = &v202 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF2D0();
  MEMORY[0x1EEE9AC00](v67 - 8);
  v229 = &v202 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v247 = &v202 - v70;
  sub_1D15A4148();
  v228 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v261 = (v251 + *(type metadata accessor for CoreChartTrendDiagram(0) + 32));
  v71 = *v261;
  if (*v261 == 3)
  {
    sub_1D14F21C8(v261, v53, type metadata accessor for CoreChartTrendViewModel);
    v79 = v214;
    sub_1D14F21C8(v53, v214, type metadata accessor for CoreChartTrendViewModel);
    v80 = v53[16];
    sub_1D14F2078(v53, type metadata accessor for CoreChartTrendViewModel);
    v72 = v246;
    if ((v80 - 2) > 3u)
    {
      v81 = MEMORY[0x1E6969A48];
    }

    else
    {
      v81 = qword_1E83E6A40[(v80 - 2)];
    }

    (*(v259 + 104))(&v79[*(v209 + 20)], *v81, v255);
    v262 = *&v79[v72[9]];
    v107 = v211;
    sub_1D14F21C8(v79, v211, type metadata accessor for CoreChartTrendDistributionSeries);
    v108 = (*(v210 + 80) + 16) & ~*(v210 + 80);
    v109 = swift_allocObject();
    sub_1D14F1A04(v107, v109 + v108, type metadata accessor for CoreChartTrendDistributionSeries);
    sub_1D14EF3D4(0);
    sub_1D14EEB88(0, &qword_1EC62FFD0, sub_1D147598C, MEMORY[0x1E69E6720]);
    sub_1D14F1CB0(&qword_1EC62FFE8, sub_1D14EF3D4);
    sub_1D1475B60();
    sub_1D14F1CB0(&qword_1EC62FFF8, type metadata accessor for CoreChartTrendDataElement);

    v110 = v212;
    sub_1D15A3D28();
    sub_1D14F2078(v79, type metadata accessor for CoreChartTrendDistributionSeries);
    v111 = v247;
    (*(v213 + 32))(v247, v110, v215);
    sub_1D14F1F30(0, &qword_1EC630AF8, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A0]);
    swift_storeEnumTagMultiPayload();
    sub_1D14F1F30(0, &qword_1EC630990, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A8]);
    (*(*(v112 - 8) + 56))(v111, 0, 1, v112);
    goto LABEL_17;
  }

  v72 = v246;
  if (v71 != 1)
  {
    if (!v71)
    {
      sub_1D14F21C8(v261, v59, type metadata accessor for CoreChartTrendViewModel);
      sub_1D14F21C8(v59, v224, type metadata accessor for CoreChartTrendViewModel);
      v73 = v59[16];
      sub_1D14F2078(v59, type metadata accessor for CoreChartTrendViewModel);
      v74 = *(v60 + 20);
      v75 = v72;
      if ((v73 - 2) > 3u)
      {
        v76 = MEMORY[0x1E6969A48];
      }

      else
      {
        v76 = qword_1E83E6A40[(v73 - 2)];
      }

      v106 = v252;
      v113 = v224;
      (*(v259 + 104))(v224 + v74, *v76, v255);
      v266 = *(v113 + v75[9]);
      sub_1D14F21C8(v113, v62, type metadata accessor for CoreChartTrendBarSeries);
      v114 = (*(v202 + 80) + 16) & ~*(v202 + 80);
      v115 = swift_allocObject();
      sub_1D14F1A04(v62, v115 + v114, type metadata accessor for CoreChartTrendBarSeries);
      sub_1D14EF3D4(0);
      sub_1D14EF408();
      sub_1D14F1CB0(&qword_1EC62FFE8, sub_1D14EF3D4);
      v116 = sub_1D15A3538();

      v262 = v116;
      v263 = MEMORY[0x1E69815C0];
      v264 = MEMORY[0x1E695B228];
      v265 = MEMORY[0x1E6981568];
      swift_getOpaqueTypeConformance2();
      sub_1D14F1CB0(&qword_1EC62FFF8, type metadata accessor for CoreChartTrendDataElement);
      v117 = v204;
      sub_1D15A3D28();
      v118 = v113;
      v72 = v75;
      sub_1D14F2078(v118, type metadata accessor for CoreChartTrendBarSeries);
      v119 = v245;
      (*(v205 + 32))(v245, v117, v207);
      v120 = MEMORY[0x1E695B1A0];
      sub_1D14F1F30(0, &qword_1EC630B00, sub_1D14EF3B4, sub_1D14EF4A0, MEMORY[0x1E695B1A0]);
      swift_storeEnumTagMultiPayload();
      v121 = v247;
      sub_1D14F2160(v119, v247, sub_1D14EF36C);
      sub_1D14F1F30(0, &qword_1EC630AF8, sub_1D14EF36C, sub_1D1475DA0, v120);
      swift_storeEnumTagMultiPayload();
      sub_1D14F1F30(0, &qword_1EC630990, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A8]);
      (*(*(v122 - 8) + 56))(v121, 0, 1, v122);
      goto LABEL_20;
    }

    sub_1D14F1F30(0, &qword_1EC630990, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A8]);
    (*(*(v82 - 8) + 56))(v247, 1, 1, v82);
LABEL_17:
    v106 = v252;
    goto LABEL_20;
  }

  sub_1D14F21C8(v261, v56, type metadata accessor for CoreChartTrendViewModel);
  sub_1D14F21C8(v56, v225, type metadata accessor for CoreChartTrendViewModel);
  v77 = v56[16];
  sub_1D14F2078(v56, type metadata accessor for CoreChartTrendViewModel);
  if ((v77 - 2) > 3u)
  {
    v78 = MEMORY[0x1E6969A48];
  }

  else
  {
    v78 = qword_1E83E6A40[(v77 - 2)];
  }

  v83 = v225;
  (*(v259 + 104))(v225 + *(v203 + 20), *v78, v255);
  v266 = *(v83 + v72[9]);
  v84 = v208;
  sub_1D14F21C8(v83, v208, type metadata accessor for CoreChartTrendLineSeries);
  v85 = (*(v206 + 80) + 16) & ~*(v206 + 80);
  v86 = swift_allocObject();
  sub_1D14F1A04(v84, v86 + v85, type metadata accessor for CoreChartTrendLineSeries);
  sub_1D14EF3D4(0);
  v224 = v87;
  sub_1D14EF5C4();
  v215 = v88;
  sub_1D14F1CB0(&qword_1EC62FFE8, sub_1D14EF3D4);
  sub_1D14EF71C();
  v90 = v89;
  sub_1D14EF830();
  v92 = v91;
  v93 = sub_1D15A35A8();
  sub_1D14EF90C();
  v95 = v94;
  v96 = sub_1D14EF998();
  v97 = sub_1D14EF9EC();

  v262 = MEMORY[0x1E69817E8];
  v263 = v96;
  v72 = v246;
  v264 = v97;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v262 = v93;
  v263 = v95;
  v264 = MEMORY[0x1E695B2A0];
  v265 = OpaqueTypeConformance2;
  v99 = swift_getOpaqueTypeConformance2();
  v262 = v92;
  v263 = v99;
  v100 = swift_getOpaqueTypeConformance2();
  v262 = v90;
  v263 = MEMORY[0x1E69815C0];
  v264 = v100;
  v265 = MEMORY[0x1E6981568];
  swift_getOpaqueTypeConformance2();
  sub_1D14F1CB0(&qword_1EC62FFF8, type metadata accessor for CoreChartTrendDataElement);
  v101 = v216;
  sub_1D15A3D28();
  sub_1D14F2078(v83, type metadata accessor for CoreChartTrendLineSeries);
  v102 = v245;
  (*(v217 + 4))(v245, v101, v218);
  v103 = MEMORY[0x1E695B1A0];
  sub_1D14F1F30(0, &qword_1EC630B00, sub_1D14EF3B4, sub_1D14EF4A0, MEMORY[0x1E695B1A0]);
  swift_storeEnumTagMultiPayload();
  v104 = v247;
  sub_1D14F2160(v102, v247, sub_1D14EF36C);
  sub_1D14F1F30(0, &qword_1EC630AF8, sub_1D14EF36C, sub_1D1475DA0, v103);
  swift_storeEnumTagMultiPayload();
  sub_1D14F1F30(0, &qword_1EC630990, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A8]);
  (*(*(v105 - 8) + 56))(v104, 0, 1, v105);
  v106 = v252;
LABEL_20:
  v246 = v72[8];
  v123 = v242;
  sub_1D14F21C8(v261 + v246, v242, sub_1D14E8CA0);
  v124 = v258 + 48;
  v245 = *(v258 + 48);
  v125 = (v245)(v123, 1, v260);
  sub_1D14F2078(v123, sub_1D14E8CA0);
  v126 = v244;
  if (v125 != 1)
  {
    if (qword_1EE058CB8 != -1)
    {
      swift_once();
    }

    v126 = qword_1EE068220;
  }

  v242 = v126;

  v127 = v226;
  sub_1D14F21C8(v261 + v246, v226, sub_1D14E8CA0);
  v128 = (v245)(v127, 1, v260);
  sub_1D14F2078(v127, sub_1D14E8CA0);
  if (v128 == 1 && (v129 = v231, sub_1D14E91C0(v231), v130 = v250, v131 = v232, v132 = v256, (*(v250 + 104))(v232, *MEMORY[0x1E697DBB8], v256), v133 = sub_1D15A3658(), v134 = *(v130 + 8), v134(v131, v132), v134(v129, v132), (v133 & 1) == 0))
  {
    v135 = 1;
  }

  else
  {
    sub_1D14E91C0(v106);
    v135 = 0;
  }

  v136 = *(v250 + 56);
  v218 = v250 + 56;
  v217 = v136;
  v136(v106, v135, 1, v256);
  v137 = v261;
  v138 = v261 + v72[7];
  sub_1D15A2288();
  sub_1D15A2258();
  v139 = (*(v137 + 16) - 2);
  v140 = (*(v137 + 16) - 2);
  v258 = v124;
  v216 = v139;
  if (v140 > 3)
  {
    v141 = MEMORY[0x1E6969A48];
  }

  else
  {
    v141 = qword_1E83E6A40[v139];
  }

  v142 = *v141;
  v143 = v259;
  v144 = *(v259 + 104);
  v145 = v233;
  v146 = v255;
  v215 = v259 + 104;
  v214 = v144;
  (v144)(v233, v142, v255);
  v226 = sub_1D15A3D58();
  v225 = v147;
  v148 = v260;
  v149 = *&v138[*(v260 + 20)];
  v150 = &v138[*(v260 + 28)];
  v151 = v150[1];
  v224 = *v150;
  v152 = v243;
  v153 = v230;
  sub_1D14F21C8(v106, &v230[*(v243 + 44)], sub_1D14F0FC4);
  v155 = v257 + 32;
  v154 = *(v257 + 32);
  v156 = v254;
  v154(v153, v248, v254);
  v157 = v153 + v152[5];
  v158 = v249;
  v257 = v155;
  v249 = v154;
  v154(v157, v158, v156);
  v159 = *(v143 + 32);
  v160 = v153 + v152[6];
  v259 = v143 + 32;
  v159(v160, v145, v146);
  v161 = (v153 + v152[7]);
  v162 = v225;
  *v161 = v226;
  v161[1] = v162;
  *(v153 + v152[8]) = v149;
  v163 = (v153 + v152[9]);
  *v163 = v224;
  v163[1] = v151;
  *(v153 + v152[10]) = v242;

  CoreChartTrendLineView.averageRuleAndLabel.getter(v253);
  sub_1D14F2078(v153, type metadata accessor for CoreChartTrendLineView);
  v164 = v227;
  sub_1D14F21C8(v261 + v246, v227, sub_1D14E8CA0);
  if ((v245)(v164, 1, v148) == 1)
  {
    sub_1D14F2078(v164, sub_1D14E8CA0);
    v165 = 1;
    v166 = v239;
    v167 = v238;
    v168 = v237;
  }

  else
  {
    v261 = v159;
    v169 = v223;
    sub_1D14F1A04(v164, v223, type metadata accessor for CoreChartTrendLineViewModel);
    v170 = v231;
    sub_1D14E91C0(v231);
    v171 = v250;
    v172 = v232;
    v173 = v256;
    (*(v250 + 104))(v232, *MEMORY[0x1E697DBB8], v256);
    v174 = sub_1D15A3658();
    v175 = *(v171 + 8);
    v175(v172, v173);
    v175(v170, v173);
    v168 = v237;
    if (v174)
    {
      v176 = v234;
      sub_1D14E91C0(v234);
      v177 = 0;
      v178 = v219;
    }

    else
    {
      v177 = 1;
      v178 = v219;
      v176 = v234;
    }

    v217(v176, v177, 1, v256);
    sub_1D15A2288();
    sub_1D15A2258();
    if (v216 > 3u)
    {
      v179 = MEMORY[0x1E6969A48];
    }

    else
    {
      v179 = qword_1E83E6A40[v216];
    }

    v180 = v222;
    v181 = v255;
    (v214)(v222, *v179, v255);
    v258 = sub_1D15A3D68();
    v256 = v182;
    v183 = *(v169 + *(v260 + 20));
    v184 = (v169 + *(v260 + 28));
    v185 = v184[1];
    v260 = *v184;
    v186 = v243;
    v187 = v221;
    sub_1D14F21C8(v176, &v221[*(v243 + 44)], sub_1D14F0FC4);
    v188 = v178;
    v189 = v254;
    v190 = v249;
    (v249)(v187, v188, v254);
    v190(v187 + v186[5], v235, v189);
    v261(v187 + v186[6], v180, v181);
    v191 = (v187 + v186[7]);
    v192 = v256;
    *v191 = v258;
    v191[1] = v192;
    *(v187 + v186[8]) = v183;
    v193 = (v187 + v186[9]);
    *v193 = v260;
    v193[1] = v185;
    *(v187 + v186[10]) = v244;

    v194 = v220;
    CoreChartTrendLineView.averageRuleAndLabel.getter(v220);
    sub_1D14F2078(v187, type metadata accessor for CoreChartTrendLineView);
    sub_1D14F2078(v234, sub_1D14F0FC4);
    sub_1D14F2078(v169, type metadata accessor for CoreChartTrendLineViewModel);
    v166 = v239;
    v167 = v238;
    (*(v168 + 32))(v239, v194, v238);
    v165 = 0;
  }

  (*(v168 + 56))(v166, v165, 1, v167);
  v195 = v247;
  v196 = v229;
  sub_1D14F1BBC(v247, v229, sub_1D14EF2D0);
  v262 = v196;
  v197 = v236;
  v198 = v253;
  (*(v168 + 16))(v236, v253, v167);
  v263 = v197;
  v199 = v240;
  sub_1D14F1BBC(v166, v240, sub_1D14F030C);
  v264 = v199;
  sub_1D14ED934(&v262, v241);

  sub_1D14F1C24(v166, sub_1D14F030C);
  v200 = *(v168 + 8);
  v200(v198, v167);
  sub_1D14F2078(v252, sub_1D14F0FC4);
  sub_1D14F1C24(v195, sub_1D14EF2D0);
  sub_1D14F1C24(v199, sub_1D14F030C);
  v200(v197, v167);
  sub_1D14F1C24(v196, sub_1D14EF2D0);
}

uint64_t CoreChartTrendLineView.averageRuleAndLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v128 = a1;
  v129 = sub_1D15A3D78();
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v126 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F0FC4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v93 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v125 = &v92 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v92 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v124 = &v92 - v10;
  v121 = sub_1D15A3478();
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v119 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F0FF8(0, &qword_1EC630190, MEMORY[0x1E69E63B0], MEMORY[0x1E695B450], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v117 = &v92 - v13;
  v130 = sub_1D15A2848();
  v94 = *(v130 - 8);
  v14 = v94;
  MEMORY[0x1EEE9AC00](v130);
  v101 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v99 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1D15A26A8();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F1080(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F10B4(0, &qword_1EC630198, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v105 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v92 - v25;
  v110 = sub_1D15A35D8();
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v106 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F00B0();
  v114 = v27;
  v109 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v107 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EFFDC();
  v116 = v29;
  v113 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v111 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EFED0();
  v134 = v31;
  v115 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v112 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EFD80();
  v136 = v33;
  v118 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v133 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EFBF8();
  v123 = v35;
  v122 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v135 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A38B8();
  v37 = type metadata accessor for CoreChartTrendLineView(0);
  v38 = v130;
  v98 = *(v14 + 56);
  v98(v21, 1, 1, v130);
  v39 = v1;
  sub_1D15A33F8();

  v104 = v21;
  sub_1D14F2078(v21, sub_1D14F1080);
  v96 = sub_1D15A38B8();
  v97 = v40;
  v95 = v41;
  v42 = v101;
  sub_1D15A2818();
  v132 = v37;
  v43 = *(v37 + 20);
  v44 = v99;
  sub_1D15A27F8();
  (*(v94 + 8))(v42, v38);
  v45 = v100;
  v46 = *(v100 + 48);
  v47 = v44;
  v48 = v44;
  v49 = v102;
  if ((v46)(v48, 1) == 1)
  {
    v50 = v1 + v43;
    v51 = v103;
    (*(v45 + 16))(v103, v50, v49);
    v52 = v46(v47, 1, v49);
    v53 = v51;
    if (v52 != 1)
    {
      sub_1D14F2078(v47, sub_1D14F104C);
    }
  }

  else
  {
    v53 = v103;
    (*(v45 + 32))(v103, v47, v49);
  }

  v54 = v104;
  v98(v104, 1, 1, v130);
  sub_1D15A33F8();

  sub_1D14F2078(v54, sub_1D14F1080);
  (*(v45 + 8))(v53, v49);
  sub_1D15A38B8();
  v142[0] = *(v1 + *(v132 + 32));
  sub_1D15A3408();

  v55 = v106;
  sub_1D15A35C8();
  v56 = v119;
  v57 = sub_1D15A3468();
  MEMORY[0x1EEE9AC00](v57);
  sub_1D14F0154();
  v59 = v58;
  v91 = sub_1D14F01E8();
  v60 = v107;
  v61 = v39;
  v62 = v110;
  sub_1D15A32F8();
  (*(v120 + 8))(v56, v121);
  (*(v108 + 8))(v55, v62);
  v142[0] = v62;
  v142[1] = v59;
  v142[2] = MEMORY[0x1E695B2B8];
  v142[3] = v91;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v111;
  v65 = v114;
  sub_1D15A3338();
  (*(v109 + 8))(v60, v65);
  sub_1D15A3688();
  v137 = v65;
  v138 = OpaqueTypeConformance2;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v112;
  v68 = v116;
  sub_1D15A3378();
  sub_1D1476F40(v142);
  (*(v113 + 8))(v64, v68);
  v69 = v132;
  v141 = *(v61 + *(v132 + 40));
  v137 = v68;
  v138 = v66;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = MEMORY[0x1E69815C0];
  v72 = v134;
  sub_1D15A3328();
  (*(v115 + 8))(v67, v72);
  v73 = *(v69 + 44);
  v74 = v124;
  sub_1D14F21C8(v61 + v73, v124, sub_1D14F0FC4);
  v75 = sub_1D15A3668();
  v76 = *(v75 - 8);
  v77 = *(v76 + 48);
  if (v77(v74, 1, v75) != 1)
  {
    v78 = v92;
    sub_1D14F21C8(v74, v92, sub_1D14F0FC4);
    if ((*(v76 + 88))(v78, v75) != *MEMORY[0x1E697DBA8])
    {
      (*(v76 + 8))(v78, v75);
    }
  }

  sub_1D14F2078(v74, sub_1D14F0FC4);
  v137 = v134;
  v138 = v71;
  v139 = v70;
  v140 = MEMORY[0x1E6981568];
  v79 = swift_getOpaqueTypeConformance2();
  v80 = v136;
  v81 = v133;
  sub_1D15A3358();
  (*(v118 + 8))(v81, v80);
  v82 = v125;
  sub_1D14F21C8(v61 + v73, v125, sub_1D14F0FC4);
  if (v77(v82, 1, v75) == 1)
  {
    goto LABEL_12;
  }

  v83 = v93;
  sub_1D14F21C8(v82, v93, sub_1D14F0FC4);
  if ((*(v76 + 88))(v83, v75) != *MEMORY[0x1E697DBB8])
  {
    (*(v76 + 8))(v83, v75);
LABEL_12:
    v84 = MEMORY[0x1E6981DF0];
    goto LABEL_13;
  }

  v84 = MEMORY[0x1E6981DA0];
LABEL_13:
  v85 = v127;
  v86 = v126;
  v87 = v129;
  (*(v127 + 104))(v126, *v84, v129);
  sub_1D14F2078(v82, sub_1D14F0FC4);
  v137 = v136;
  v138 = v79;
  swift_getOpaqueTypeConformance2();
  v88 = v123;
  v89 = v135;
  sub_1D15A3368();
  (*(v85 + 8))(v86, v87);
  return (*(v122 + 8))(v89, v88);
}

uint64_t sub_1D14ED934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D14F20D8();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14EF2D0();
  sub_1D14F1750(&qword_1EC630A40, sub_1D14EF2D0, sub_1D14F0578);
  sub_1D14F1BBC(*a1, v7, sub_1D14EF2D0);
  sub_1D14EFA40();
  v9 = v8;
  sub_1D14EFBF8();
  sub_1D14EFD80();
  sub_1D14EFED0();
  sub_1D14EFFDC();
  sub_1D14F00B0();
  sub_1D15A35D8();
  sub_1D14F0154();
  sub_1D14F01E8();
  v10 = *(v5 + 56);
  v11 = *(v9 - 8);
  (*(v11 + 16))(&v7[v10], a1[1], v9);
  sub_1D14F030C(0);
  sub_1D14F0938();
  v12 = *(v5 + 72);
  sub_1D14F1BBC(a1[2], &v7[v12], sub_1D14F030C);
  sub_1D14F2160(v7, a2, sub_1D14EF2D0);
  (*(v11 + 32))(a2 + *(v5 + 56), &v7[v10], v9);
  return sub_1D14F2160(&v7[v12], a2 + *(v5 + 72), sub_1D14F030C);
}

uint64_t sub_1D14EDB54(uint64_t *a1, double *a2)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  v5 = COERCE_DOUBLE(sub_1D152CE94(*a1));
  v7 = 0.0;
  if (v6)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  v9 = COERCE_DOUBLE(sub_1D152CBA0(v4));
  v11 = v10;

  if (v11)
  {
    v12 = 100.0;
  }

  else
  {
    v12 = v9;
  }

  if (v12 - v8 < *a2)
  {
    v13 = *a2 - (v12 - v8);
    if (*(a2 + *(type metadata accessor for CoreChartTrendDiagram(0) + 36)) == 1)
    {
      v12 = v12 + v13;
      v8 = 0.0;
    }

    else
    {
      if (v8 - v13 * 0.5 < 0.0)
      {
        v8 = 0.0;
      }

      else
      {
        v8 = v8 - v13 * 0.5;
      }

      v12 = v12 + v13 * 0.5;
    }
  }

  if (!*(a2 + *(type metadata accessor for CoreChartTrendDiagram(0) + 36)))
  {
    v7 = v8;
  }

  sub_1D147EEB8(0, &qword_1EE059690, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D15AEBB0;
  *(v14 + 32) = v7;
  *(v14 + 40) = v12;

  *a1 = v14;
  return result;
}

uint64_t sub_1D14EDCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v77 = a3;
  v5 = type metadata accessor for CoreChartTrendLineViewModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v78 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14E8CA0(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v74 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v70 - v11;
  sub_1D15A4148();
  v79 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = a1 + *(type metadata accessor for CoreChartTrendDiagram(0) + 32);
  v14 = type metadata accessor for CoreChartTrendViewModel(0);
  v73 = *(v14 + 32);
  sub_1D14F21C8(v13 + v73, v12, sub_1D14E8CA0);
  v15 = *(v6 + 48);
  v75 = v6 + 48;
  v72 = v15;
  v16 = v15(v12, 1, v5);
  sub_1D14F2078(v12, sub_1D14E8CA0);
  v70[1] = a2;
  if (v16 == 1)
  {

    v17 = a2;
  }

  else
  {
    v18 = [objc_opt_self() secondaryLabelColor];
    v17 = sub_1D15A3C38();
  }

  v19 = (v13 + *(v14 + 28) + *(v5 + 24));
  v20 = v19[1];
  v81 = *v19;
  v82 = v20;
  v21 = sub_1D147ED3C();

  v70[0] = v21;
  v35 = sub_1D15A3B28();
  v23 = v22;
  v25 = v24;
  sub_1D15A3AD8();
  v26 = sub_1D15A3B08();
  v28 = v27;
  v76 = v5;
  v30 = v29;
  v71 = v13;

  sub_1D1491688(v35, v23, v25 & 1);

  v31 = sub_1D15A3AF8();
  v33 = v32;
  LODWORD(v35) = v34;
  v37 = v36;

  v38 = v76;
  sub_1D1491688(v26, v28, v30 & 1);

  v39 = v74;
  sub_1D14F21C8(v71 + v73, v74, sub_1D14E8CA0);
  if (v72(v39, 1, v38) == 1)
  {
    sub_1D14F2078(v39, sub_1D14E8CA0);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v44 = v39;
    v45 = v78;
    sub_1D14F1A04(v44, v78, type metadata accessor for CoreChartTrendLineViewModel);
    v46 = (v45 + *(v38 + 24));
    v47 = v46[1];
    v81 = *v46;
    v82 = v47;

    v48 = sub_1D15A3B28();
    v50 = v49;
    v52 = v51;
    sub_1D15A3AD8();
    v53 = sub_1D15A3B08();
    LODWORD(v73) = v35;
    v35 = v53;
    v75 = v37;
    v76 = v17;
    v55 = v54;
    v56 = v31;
    v58 = v57;
    v74 = v33;

    sub_1D1491688(v48, v50, v52 & 1);

    v40 = sub_1D15A3AF8();
    v41 = v59;
    LOBYTE(v50) = v60;
    v43 = v61;
    v62 = v58 & 1;
    v31 = v56;
    v63 = v35;
    LOBYTE(v35) = v73;
    v64 = v55;
    v37 = v75;
    sub_1D1491688(v63, v64, v62);
    v33 = v74;

    sub_1D14F2078(v78, type metadata accessor for CoreChartTrendLineViewModel);
    v42 = v50 & 1;
    sub_1D14F1B24(v40, v41, v42);
  }

  v65 = v35 & 1;
  LOBYTE(v81) = v65;
  v80 = 1;
  sub_1D14F1B24(v31, v33, v65);

  sub_1D14F1B34(v40, v41, v42, v43);
  sub_1D14F1B78(v40, v41, v42, v43);

  v66 = v81;
  v67 = v80;
  v68 = v77;
  *v77 = v31;
  v68[1] = v33;
  *(v68 + 16) = v66;
  v68[3] = v37;
  v68[4] = 0;
  *(v68 + 40) = v67;
  v68[6] = v40;
  v68[7] = v41;
  v68[8] = v42;
  v68[9] = v43;
  sub_1D14F1B78(v40, v41, v42, v43);
  sub_1D1491688(v31, v33, v65);
}

uint64_t sub_1D14EE2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v75 = a2;
  v2 = sub_1D15A3D78();
  v73 = *(v2 - 8);
  v74 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v72 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F0FC4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v63 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v63 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v63 - v11;
  sub_1D14F19D0(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D15A3AE8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F0154();
  v68 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v70 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A4148();
  v69 = sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v67 = type metadata accessor for CoreChartTrendLineView(0);
  v21 = (v77 + *(v67 + 36));
  v22 = v21[1];
  v78 = *v21;
  v79 = v22;
  sub_1D147ED3C();

  v23 = sub_1D15A3B28();
  v25 = v24;
  v27 = v26;
  v66 = v28;
  (*(v16 + 104))(v18, *MEMORY[0x1E6980F30], v15);
  v29 = *MEMORY[0x1E6980E28];
  v30 = sub_1D15A3A38();
  v31 = v15;
  v32 = *(v30 - 8);
  (*(v32 + 104))(v14, v29, v30);
  (*(v32 + 56))(v14, 0, 1, v30);
  sub_1D15A3A98();
  sub_1D14F2078(v14, sub_1D14F19D0);
  (*(v16 + 8))(v18, v31);
  sub_1D15A3A48();
  sub_1D15A3AA8();

  v33 = sub_1D15A3B08();
  v35 = v34;
  v37 = v36;

  sub_1D1491688(v23, v25, v27 & 1);

  v38 = v67;
  v39 = v77;
  v40 = sub_1D15A3AF8();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_1D1491688(v33, v35, v37 & 1);

  v47 = *(v38 + 44);
  v48 = v76;
  sub_1D14F21C8(v39 + v47, v76, sub_1D14F0FC4);
  v49 = sub_1D15A3668();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  v52 = 1.0;
  if (v51(v48, 1, v49) != 1)
  {
    v53 = v48;
    v54 = v64;
    sub_1D14F21C8(v53, v64, sub_1D14F0FC4);
    if ((*(v50 + 88))(v54, v49) == *MEMORY[0x1E697DBA8])
    {
      v52 = 0.9;
    }

    else
    {
      (*(v50 + 8))(v54, v49);
    }
  }

  v55 = v71;
  sub_1D14F2078(v76, sub_1D14F0FC4);
  sub_1D14F21C8(v77 + v47, v55, sub_1D14F0FC4);
  if (v51(v55, 1, v49) == 1)
  {
    goto LABEL_11;
  }

  v56 = v65;
  sub_1D14F21C8(v55, v65, sub_1D14F0FC4);
  if ((*(v50 + 88))(v56, v49) != *MEMORY[0x1E697DBB8])
  {
    (*(v50 + 8))(v56, v49);
LABEL_11:
    v57 = MEMORY[0x1E6981DF0];
    goto LABEL_12;
  }

  v57 = MEMORY[0x1E6981DA0];
LABEL_12:
  v59 = v72;
  v58 = v73;
  v60 = v74;
  (*(v73 + 104))(v72, *v57, v74);
  sub_1D14F2078(v55, sub_1D14F0FC4);
  v61 = v70;
  (*(v58 + 32))(&v70[*(v68 + 36)], v59, v60);
  *v61 = v40;
  *(v61 + 8) = v42;
  *(v61 + 16) = v44 & 1;
  *(v61 + 24) = v46;
  *(v61 + 32) = v52;
  sub_1D14F1A04(v61, v75, sub_1D14F0154);
}

uint64_t sub_1D14EEA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

void sub_1D14EEB88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D14EEBEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D15A37A8();
  *a1 = result;
  return result;
}

uint64_t sub_1D14EEC44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1D14EECF4()
{
  if (!qword_1EC630938)
  {
    sub_1D14EED88();
    sub_1D14F0FF8(255, &qword_1EE056AC0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1D15A3718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630938);
    }
  }
}

void sub_1D14EED88()
{
  if (!qword_1EC630940)
  {
    sub_1D14EEE1C(255);
    sub_1D14F1CB0(&qword_1EC630A80, sub_1D14EEE1C);
    v0 = sub_1D15A3CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630940);
    }
  }
}

void sub_1D14EEE50()
{
  if (!qword_1EC630950)
  {
    sub_1D14F10B4(255, &qword_1EC630958, sub_1D14EEEF8, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1D14F0B14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC630950);
    }
  }
}

void sub_1D14EEEF8()
{
  if (!qword_1EC630960)
  {
    sub_1D14EF04C();
    sub_1D15A34A8();
    sub_1D15A34B8();
    sub_1D14EF138();
    sub_1D14EF1EC();
    sub_1D14F1CB0(&qword_1EC630A70, sub_1D14EF1EC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630960);
    }
  }
}

void sub_1D14EF04C()
{
  if (!qword_1EC630968)
  {
    sub_1D14EF138();
    sub_1D14EF1EC();
    sub_1D14F1CB0(&qword_1EC630A70, sub_1D14EF1EC);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630968);
    }
  }
}

void sub_1D14EF138()
{
  if (!qword_1EC630970)
  {
    sub_1D14EF1EC();
    sub_1D14F1CB0(&qword_1EC630A70, sub_1D14EF1EC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630970);
    }
  }
}

void sub_1D14EF1EC()
{
  if (!qword_1EC630978)
  {
    sub_1D14EF250();
    sub_1D14F0340();
    v0 = sub_1D15A3518();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630978);
    }
  }
}

void sub_1D14EF250()
{
  if (!qword_1EC630980)
  {
    sub_1D14EF2D0();
    sub_1D14EFA40();
    sub_1D14F030C(255);
    v0 = sub_1D15A32D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630980);
    }
  }
}

void sub_1D14EF2D0()
{
  if (!qword_1EC630988)
  {
    sub_1D14F1F30(255, &qword_1EC630990, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A8]);
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630988);
    }
  }
}

void sub_1D14EF408()
{
  if (!qword_1EC6309A8)
  {
    sub_1D15A3538();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309A8);
    }
  }
}

void sub_1D14EF4C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1D14EF3D4(255);
    sub_1D15A26A8();
    a3(255);
    sub_1D14F1CB0(&qword_1EC62FFE8, sub_1D14EF3D4);
    sub_1D14F1CB0(&qword_1EC630010, MEMORY[0x1E6969530]);
    v5 = sub_1D15A3D38();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D14EF5C4()
{
  if (!qword_1EC6309B8)
  {
    sub_1D14EF71C();
    sub_1D14EF830();
    sub_1D15A35A8();
    sub_1D14EF90C();
    sub_1D14EF998();
    sub_1D14EF9EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309B8);
    }
  }
}

void sub_1D14EF71C()
{
  if (!qword_1EC6309C0)
  {
    sub_1D14EF830();
    sub_1D15A35A8();
    sub_1D14EF90C();
    sub_1D14EF998();
    sub_1D14EF9EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309C0);
    }
  }
}

void sub_1D14EF830()
{
  if (!qword_1EC6309C8)
  {
    sub_1D15A35A8();
    sub_1D14EF90C();
    sub_1D14EF998();
    sub_1D14EF9EC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309C8);
    }
  }
}

void sub_1D14EF90C()
{
  if (!qword_1EC6309D0)
  {
    sub_1D14EF998();
    sub_1D14EF9EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309D0);
    }
  }
}

unint64_t sub_1D14EF998()
{
  result = qword_1EC6309D8;
  if (!qword_1EC6309D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6309D8);
  }

  return result;
}

unint64_t sub_1D14EF9EC()
{
  result = qword_1EE056A80;
  if (!qword_1EE056A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056A80);
  }

  return result;
}

void sub_1D14EFA40()
{
  if (!qword_1EC6309E0)
  {
    sub_1D14EFBF8();
    sub_1D14EFD80();
    sub_1D14EFED0();
    sub_1D14EFFDC();
    sub_1D14F00B0();
    sub_1D15A35D8();
    sub_1D14F0154();
    sub_1D14F01E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309E0);
    }
  }
}

void sub_1D14EFBF8()
{
  if (!qword_1EC6309E8)
  {
    sub_1D14EFD80();
    sub_1D14EFED0();
    sub_1D14EFFDC();
    sub_1D14F00B0();
    sub_1D15A35D8();
    sub_1D14F0154();
    sub_1D14F01E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309E8);
    }
  }
}

void sub_1D14EFD80()
{
  if (!qword_1EC6309F0)
  {
    sub_1D14EFED0();
    sub_1D14EFFDC();
    sub_1D14F00B0();
    sub_1D15A35D8();
    sub_1D14F0154();
    sub_1D14F01E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309F0);
    }
  }
}

void sub_1D14EFED0()
{
  if (!qword_1EC6309F8)
  {
    sub_1D14EFFDC();
    sub_1D14F00B0();
    sub_1D15A35D8();
    sub_1D14F0154();
    sub_1D14F01E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC6309F8);
    }
  }
}

void sub_1D14EFFDC()
{
  if (!qword_1EC630A00)
  {
    sub_1D14F00B0();
    sub_1D15A35D8();
    sub_1D14F0154();
    sub_1D14F01E8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630A00);
    }
  }
}

void sub_1D14F00B0()
{
  if (!qword_1EC630A08)
  {
    sub_1D15A35D8();
    sub_1D14F0154();
    sub_1D14F01E8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630A08);
    }
  }
}

void sub_1D14F0154()
{
  if (!qword_1EC630A10)
  {
    sub_1D14F0FF8(255, &qword_1EC630A18, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1D15A3768();
    v0 = sub_1D15A3718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630A10);
    }
  }
}

unint64_t sub_1D14F01E8()
{
  result = qword_1EC630A20;
  if (!qword_1EC630A20)
  {
    sub_1D14F0154();
    sub_1D14F0268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A20);
  }

  return result;
}

unint64_t sub_1D14F0268()
{
  result = qword_1EC630A28;
  if (!qword_1EC630A28)
  {
    sub_1D14F0FF8(255, &qword_1EC630A18, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A28);
  }

  return result;
}

unint64_t sub_1D14F0340()
{
  result = qword_1EC630A38;
  if (!qword_1EC630A38)
  {
    sub_1D14EF250();
    sub_1D14F1750(&qword_1EC630A40, sub_1D14EF2D0, sub_1D14F0578);
    sub_1D14EFBF8();
    sub_1D14EFD80();
    sub_1D14EFED0();
    sub_1D14EFFDC();
    sub_1D14F00B0();
    sub_1D15A35D8();
    sub_1D14F0154();
    sub_1D14F01E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1D14F0938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A38);
  }

  return result;
}

unint64_t sub_1D14F0578()
{
  result = qword_1EC630A48;
  if (!qword_1EC630A48)
  {
    sub_1D14F1F30(255, &qword_1EC630990, sub_1D14EF36C, sub_1D1475DA0, MEMORY[0x1E695B1A8]);
    sub_1D14F0680();
    sub_1D14F1750(&qword_1EC630000, sub_1D1475DA0, sub_1D1475B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A48);
  }

  return result;
}

unint64_t sub_1D14F0680()
{
  result = qword_1EC630A50;
  if (!qword_1EC630A50)
  {
    sub_1D14EF36C(255);
    sub_1D14F0700();
    sub_1D14F07BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A50);
  }

  return result;
}

unint64_t sub_1D14F0700()
{
  result = qword_1EC630A58;
  if (!qword_1EC630A58)
  {
    sub_1D14EF3B4(255);
    sub_1D15A3538();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A58);
  }

  return result;
}

unint64_t sub_1D14F07BC()
{
  result = qword_1EC630A60;
  if (!qword_1EC630A60)
  {
    sub_1D14EF4A0(255);
    sub_1D14EF71C();
    sub_1D14EF830();
    sub_1D15A35A8();
    sub_1D14EF90C();
    sub_1D14EF998();
    sub_1D14EF9EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A60);
  }

  return result;
}

unint64_t sub_1D14F0938()
{
  result = qword_1EC630A68;
  if (!qword_1EC630A68)
  {
    sub_1D14F030C(255);
    sub_1D14EFBF8();
    sub_1D14EFD80();
    sub_1D14EFED0();
    sub_1D14EFFDC();
    sub_1D14F00B0();
    sub_1D15A35D8();
    sub_1D14F0154();
    sub_1D14F01E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A68);
  }

  return result;
}

void sub_1D14F0B14()
{
  if (!qword_1EC630A78)
  {
    sub_1D14F0BA8(255);
    sub_1D14F1CB0(&qword_1EE056928, sub_1D14F0BA8);
    v0 = sub_1D15A3CD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630A78);
    }
  }
}

void sub_1D14F0BDC()
{
  if (!qword_1EE056A88)
  {
    sub_1D147EEB8(255, &qword_1EE056A90, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE056A88);
    }
  }
}

void sub_1D14F0C70()
{
  if (!qword_1EC630A90)
  {
    sub_1D14EECAC(255);
    sub_1D149B16C();
    sub_1D14F0D44();
    sub_1D14F1CB0(&qword_1EE056488, sub_1D149B16C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC630A90);
    }
  }
}

unint64_t sub_1D14F0D44()
{
  result = qword_1EC630A98;
  if (!qword_1EC630A98)
  {
    sub_1D14EECAC(255);
    sub_1D14F0DF4();
    sub_1D14F1CB0(&qword_1EE056C60, sub_1D14AD5EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630A98);
  }

  return result;
}

unint64_t sub_1D14F0DF4()
{
  result = qword_1EC630AA0;
  if (!qword_1EC630AA0)
  {
    sub_1D14EECF4();
    sub_1D14F1CB0(&qword_1EC630AA8, sub_1D14EED88);
    sub_1D14F0EA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630AA0);
  }

  return result;
}

unint64_t sub_1D14F0EA4()
{
  result = qword_1EE056AC8;
  if (!qword_1EE056AC8)
  {
    sub_1D14F0FF8(255, &qword_1EE056AC0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE056AC8);
  }

  return result;
}

void sub_1D14F0F5C()
{
  if (!qword_1EC630AB0)
  {
    sub_1D14EEE1C(255);
    v0 = sub_1D15A36D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630AB0);
    }
  }
}

void sub_1D14F0FF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D14F10B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D14F11D4()
{
  sub_1D15A26A8();
  if (v0 <= 0x3F)
  {
    sub_1D147EEB8(319, &qword_1EE059750, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D14F12A4()
{
  result = sub_1D15A22A8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D14F134C()
{
  type metadata accessor for HKCodableSummaryTrendTileViewModel_TrendDiagramStyle(319);
  if (v0 <= 0x3F)
  {
    sub_1D1453BA0(319, &qword_1EE056778);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CoreChartTrendLineViewModel(319);
      if (v2 <= 0x3F)
      {
        sub_1D14E8CA0(319);
        if (v3 <= 0x3F)
        {
          sub_1D14EF3D4(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D14F1458()
{
  sub_1D14EEB88(319, &qword_1EE056C68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1D14F1564();
    if (v1 <= 0x3F)
    {
      sub_1D14F15CC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CoreChartTrendViewModel(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D14F1564()
{
  if (!qword_1EC630AB8)
  {
    sub_1D1453BA0(255, &qword_1EE056760);
    v0 = sub_1D15A3678();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630AB8);
    }
  }
}

void sub_1D14F15CC()
{
  if (!qword_1EC630AC0)
  {
    sub_1D15A2E68();
    sub_1D14F1CB0(&qword_1EC630648, MEMORY[0x1E69A3650]);
    v0 = sub_1D15A3798();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630AC0);
    }
  }
}

void sub_1D14F1688()
{
  sub_1D15A26A8();
  if (v0 <= 0x3F)
  {
    sub_1D15A2838();
    if (v1 <= 0x3F)
    {
      sub_1D14F0FC4(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D14F1750(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D14F17C0()
{
  if (!qword_1EC630AE0)
  {
    sub_1D14F1F30(255, &qword_1EC630A88, sub_1D14F0C70, sub_1D14F0F28, MEMORY[0x1E697E830]);
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC630AE0);
    }
  }
}

unint64_t sub_1D14F185C()
{
  result = qword_1EC630AE8;
  if (!qword_1EC630AE8)
  {
    sub_1D14F1F30(255, &qword_1EC630A88, sub_1D14F0C70, sub_1D14F0F28, MEMORY[0x1E697E830]);
    sub_1D14EECAC(255);
    sub_1D149B16C();
    sub_1D14F0D44();
    sub_1D14F1CB0(&qword_1EE056488, sub_1D149B16C);
    swift_getOpaqueTypeConformance2();
    sub_1D14F1CB0(&qword_1EE056AB0, sub_1D14F0F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630AE8);
  }

  return result;
}

uint64_t sub_1D14F1A04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D14F1AA8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D14F1AB4(uint64_t *a1)
{
  v3 = *(type metadata accessor for CoreChartTrendDiagram(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1D14EDB54(a1, v4);
}

uint64_t sub_1D14F1B24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D14F1B34(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D14F1B24(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1D14F1B78(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1D1491688(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1D14F1BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14F1C24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D14F1CB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_62Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v14 = *(*(v2 - 8) + 64);

  v5 = type metadata accessor for CoreChartTrendViewModel(0);
  v6 = v1 + v4 + *(v5 + 28);
  v7 = sub_1D15A22A8();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = type metadata accessor for CoreChartTrendLineViewModel(0);

  v10 = v1 + v4 + *(v5 + 32);
  if (!(*(*(v9 - 8) + 48))(v10, 1, v9))
  {
    v8(v10, v7);
  }

  v11 = *(v2 + 20);
  v12 = sub_1D15A2838();
  (*(*(v12 - 8) + 8))(v1 + v4 + v11, v12);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v14, v3 | 7);
}

void sub_1D14F1F30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1D14F1FE0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_1D14F2078(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D14F20D8()
{
  if (!qword_1EC630B08)
  {
    sub_1D14EF2D0();
    sub_1D14EFA40();
    sub_1D14F030C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC630B08);
    }
  }
}

uint64_t sub_1D14F2160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D14F21C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t static StatisticsCurrentValueSupport.statistics(from:)(void *a1)
{
  v2 = sub_1D15A3268();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 statistics];
  sub_1D1453BA0(0, &qword_1EE056768);
  v8 = sub_1D15A40C8();

  if (v8 >> 62)
  {
    if (sub_1D15A4708() > 1)
    {
      goto LABEL_3;
    }

    v9 = sub_1D15A4708();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 > 1)
    {
LABEL_3:

      sub_1D15A3238();
      v10 = sub_1D15A3248();
      v11 = sub_1D15A4318();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v24 = v13;
        *v12 = 136315394;
        *(v12 + 4) = sub_1D1479780(0xD00000000000001DLL, 0x80000001D15B1FF0, &v24);
        *(v12 + 12) = 2080;
        v22[1] = 0xD000000000000069;
        v22[2] = 0x80000001D15C0250;
        v23 = 0;
        v14 = sub_1D15A3F68();
        v16 = sub_1D1479780(v14, v15, &v24);
        v22[0] = v2;
        v2 = 0x80000001D15C0250;
        v17 = v16;

        *(v12 + 14) = v17;
        _os_log_impl(&dword_1D1446000, v10, v11, "[%s]: Error: %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v13, -1, -1);
        MEMORY[0x1D388BF00](v12, -1, -1);

        (*(v3 + 8))(v6, v22[0]);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }

      sub_1D14F2590();
      swift_allocError();
      *v18 = 0xD000000000000069;
      *(v18 + 8) = 0x80000001D15C0250;
      *(v18 + 16) = 0;
      swift_willThrow();
      return v2;
    }
  }

  if (!v9)
  {

    return 0;
  }

  v19 = __OFSUB__(v9, 1);
  result = v9 - 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v21 = MEMORY[0x1D388AB50](result, v8);
    goto LABEL_15;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v8 + 8 * result + 32);
LABEL_15:
    v2 = v21;

    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D14F2590()
{
  result = qword_1EC630B10;
  if (!qword_1EC630B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC630B10);
  }

  return result;
}

uint64_t static StatisticsCurrentValueSupport.queryDateInterval(for:with:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_1D15A2838();
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v82 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1D15A2848();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v6 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455B78(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v78 - v8;
  v87 = sub_1D15A26A8();
  v80 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v78[1] = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v88 = v78 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v78 - v14;
  v16 = sub_1D15A3268();
  v17 = *(v16 - 8);
  v89 = v16;
  v90 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v78 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v79 = v78 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v78 - v26;
  v28 = sub_1D15A22A8();
  v91 = *(v28 - 8);
  v92 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = *a1;
  v31 = a1[17];
  v93 = v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A2218();
  if (v31 <= 1)
  {
    if (!v31)
    {
      v37 = 0xD00000000000002FLL;
      v32 = 0x80000001D15C0390;
      sub_1D15A3238();
      v41 = sub_1D15A3248();
      v42 = sub_1D15A4318();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v97 = v44;
        *v43 = 136315394;
        *(v43 + 4) = sub_1D1479780(0xD00000000000001DLL, 0x80000001D15B1FF0, &v97);
        *(v43 + 12) = 2080;
        v94 = 0xD00000000000002FLL;
        v95 = 0x80000001D15C0390;
        v96 = 0;
        v45 = sub_1D15A3F68();
        v47 = sub_1D1479780(v45, v46, &v97);

        *(v43 + 14) = v47;
        _os_log_impl(&dword_1D1446000, v41, v42, "[%s]: Error: %s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D388BF00](v44, -1, -1);
        MEMORY[0x1D388BF00](v43, -1, -1);
      }

      (*(v90 + 8))(v27, v89);
      goto LABEL_15;
    }

    v48 = v93;
    if (v30 <= 2 && v30 > 1)
    {
    }

    else
    {
      v76 = sub_1D15A4BA8();

      if ((v76 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    return (*(v91 + 32))(v86, v48, v92);
  }

  if (v31 == 2)
  {
    if (v30 > 2)
    {
      v48 = v93;
      if (v30 == 3)
      {

        v57 = v88;
LABEL_26:
        sub_1D15A2818();
        v60 = v84;
        v59 = v85;
        v61 = v82;
        (*(v84 + 104))(v82, *MEMORY[0x1E6969A48], v85);
        sub_1D15A2288();
        sub_1D15A27F8();
        v62 = v80;
        v78[0] = *(v80 + 8);
        (v78[0])(v57, v87);
        v63 = v61;
        v64 = v87;
        (*(v60 + 8))(v63, v59);
        (*(v81 + 8))(v6, v83);
        if ((*(v62 + 48))(v9, 1, v64) != 1)
        {
          (*(v62 + 32))(v15, v9, v64);
          (*(v62 + 16))(v88, v15, v64);
          sub_1D15A2258();
          sub_1D15A2268();
          (v78[0])(v15, v64);
          return (*(v91 + 8))(v48, v92);
        }

        sub_1D14F44CC(v9, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
        v94 = 0;
        v95 = 0xE000000000000000;
        sub_1D15A47D8();

        v94 = 0xD000000000000029;
        v95 = 0x80000001D15C0360;
        v65 = v88;
        sub_1D15A2288();
        sub_1D14F4474();
        v66 = sub_1D15A4B68();
        MEMORY[0x1D388A330](v66);

        (v78[0])(v65, v64);
        v37 = v94;
        v32 = v95;
        v67 = v79;
        sub_1D15A3238();

        v68 = sub_1D15A3248();
        v69 = sub_1D15A4318();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v97 = v71;
          *v70 = 136315394;
          *(v70 + 4) = sub_1D1479780(0xD00000000000001DLL, 0x80000001D15B1FF0, &v97);
          *(v70 + 12) = 2080;
          v94 = v37;
          v95 = v32;
          v56 = 1;
          v96 = 1;

          v72 = sub_1D15A3F68();
          v74 = sub_1D1479780(v72, v73, &v97);

          *(v70 + 14) = v74;
          _os_log_impl(&dword_1D1446000, v68, v69, "[%s]: Error: %s", v70, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D388BF00](v71, -1, -1);
          MEMORY[0x1D388BF00](v70, -1, -1);

          (*(v90 + 8))(v79, v89);
        }

        else
        {

          (*(v90 + 8))(v67, v89);
          v56 = 1;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v48 = v93;
    }

    v57 = v88;
    v58 = sub_1D15A4BA8();

    if (v58)
    {
      goto LABEL_26;
    }

LABEL_33:
    v37 = 0xD00000000000002FLL;
    v32 = 0x80000001D15C0330;
    v56 = 1;
    goto LABEL_34;
  }

  if (v31 == 3)
  {
    v32 = 0x80000001D15C02F0;
    sub_1D15A3238();
    v33 = sub_1D15A3248();
    v34 = sub_1D15A4318();
    if (!os_log_type_enabled(v33, v34))
    {

      (*(v90 + 8))(v22, v89);
      v56 = 0;
      v37 = 0xD000000000000030;
      goto LABEL_16;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v97 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_1D1479780(0xD00000000000001DLL, 0x80000001D15B1FF0, &v97);
    *(v35 + 12) = 2080;
    v37 = 0xD000000000000030;
    v94 = 0xD000000000000030;
    v95 = 0x80000001D15C02F0;
    v96 = 0;
    v38 = sub_1D15A3F68();
    v40 = sub_1D1479780(v38, v39, &v97);

    *(v35 + 14) = v40;
    _os_log_impl(&dword_1D1446000, v33, v34, "[%s]: Error: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v36, -1, -1);
    MEMORY[0x1D388BF00](v35, -1, -1);

    (*(v90 + 8))(v22, v89);
  }

  else
  {
    v37 = 0xD00000000000002FLL;
    v32 = 0x80000001D15C02C0;
    sub_1D15A3238();
    v49 = sub_1D15A3248();
    v50 = sub_1D15A4318();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v97 = v52;
      *v51 = 136315394;
      *(v51 + 4) = sub_1D1479780(0xD00000000000001DLL, 0x80000001D15B1FF0, &v97);
      *(v51 + 12) = 2080;
      v94 = 0xD00000000000002FLL;
      v95 = 0x80000001D15C02C0;
      v96 = 0;
      v53 = sub_1D15A3F68();
      v55 = sub_1D1479780(v53, v54, &v97);

      *(v51 + 14) = v55;
      _os_log_impl(&dword_1D1446000, v49, v50, "[%s]: Error: %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D388BF00](v52, -1, -1);
      MEMORY[0x1D388BF00](v51, -1, -1);
    }

    (*(v90 + 8))(v19, v89);
  }

LABEL_15:
  v56 = 0;
LABEL_16:
  v48 = v93;
LABEL_34:
  sub_1D14F2590();
  swift_allocError();
  *v77 = v37;
  *(v77 + 8) = v32;
  *(v77 + 16) = v56;
  swift_willThrow();
  return (*(v91 + 8))(v48, v92);
}

id static StatisticsCurrentValueSupport.makeQuantityCurrentValue(quantity:date:dataCount:supplementaryDateInterval:queryConfiguration:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v40 = a3;
  v43 = a2;
  v44 = a1;
  v42 = sub_1D15A26A8();
  v7 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D15A22A8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455B78(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - v19;
  v39 = *a5;
  v41 = *(a5 + 1);
  v38 = a5[16];
  v21 = a5[17];
  (*(v11 + 16))(&v36 - v19, a4, v10, v18);
  (*(v11 + 56))(v20, 0, 1, v10);
  result = [objc_allocWithZone(MEMORY[0x1E69A4300]) init];
  if (result)
  {
    v23 = result;
    sub_1D149D62C(v20, v16);
    v24 = (*(v11 + 48))(v16, 1, v10);
    v37 = v21;
    if (v24 == 1)
    {
      sub_1D14F44CC(v16, &qword_1EE05B520, MEMORY[0x1E6968130]);
    }

    else
    {
      (*(v11 + 32))(v13, v16, v10);
      sub_1D1453BA0(0, &qword_1EE0566F8);
      v25 = sub_1D15A44A8();
      [v23 setDateInterval_];

      (*(v11 + 8))(v13, v10);
    }

    [v23 setDataCount_];
    sub_1D14F44CC(v20, &qword_1EE05B520, MEMORY[0x1E6968130]);
    sub_1D1453BA0(0, &qword_1EE056650);
    (*(v7 + 16))(v9, v43, v42);
    v26 = v44;
    v27 = sub_1D153FD10(v26, v9);

    v28 = v23;
    v29 = v41;

    result = [v27 data];
    if (result)
    {
      v30 = result;
      v31 = v38 | (v37 << 8);
      sub_1D1453BA0(0, &qword_1EE056670);
      v32 = sub_1D15A2518();
      v34 = v33;

      v49 = 14;
      v47[0] = v39;
      v47[1] = v29;
      v47[2] = v31;
      v47[3] = 0;
      v48 = 0;
      v46 = 0;
      memset(v45, 0, sizeof(v45));
      v35 = sub_1D153FE24(v32, v34, &v49, v47, v28, 0, v45);
      sub_1D1498BF4(v32, v34);

      return v35;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id static StatisticsCurrentValueSupport.makeQuantityCurrentValue(quantity:mostRecentEndDate:responseEndDate:dataCount:supplementaryDateInterval:queryConfiguration:)(void *a1, void (*a2)(char *, uint64_t, uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v59 = a5;
  v57 = a4;
  v49[1] = a3;
  v54 = a2;
  v58 = a1;
  v7 = sub_1D15A22A8();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v50 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455B78(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = v49 - v12;
  v13 = sub_1D15A26A8();
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v56 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v63 = v49 - v17;
  v18 = *(a6 + 1);
  v19 = (v18 + 32);
  v53 = *a6;
  v52 = a6[16];
  v51 = a6[17];
  v62 = v18;
  v20 = *(v18 + 16);
  while (1)
  {
    if (!v20)
    {
      v23 = &v71;
      goto LABEL_14;
    }

    v22 = *v19;
    if (v22 <= 4 && *v19 > 1u && v22 != 2 && v22 != 3)
    {
      break;
    }

    v21 = sub_1D15A4BA8();

    ++v19;
    --v20;
    if (v21)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  v23 = &v73;
LABEL_14:
  v24 = *(v23 - 32);
  v25 = v66;
  v26 = v63;
  v54 = *(v65 + 16);
  v54(v63, v24, v66, v16);
  v27 = v60;
  v28 = v64;
  v29 = v61;
  (*(v60 + 16))(v64, v59, v61);
  (*(v27 + 56))(v28, 0, 1, v29);
  result = [objc_allocWithZone(MEMORY[0x1E69A4300]) init];
  v31 = v62;
  if (result)
  {
    v32 = result;
    v33 = v55;
    sub_1D149D62C(v28, v55);
    if ((*(v27 + 48))(v33, 1, v29) == 1)
    {
      sub_1D14F44CC(v33, &qword_1EE05B520, MEMORY[0x1E6968130]);
    }

    else
    {
      v34 = v50;
      (*(v27 + 32))(v50, v33, v29);
      sub_1D1453BA0(0, &qword_1EE0566F8);
      v35 = sub_1D15A44A8();
      [v32 setDateInterval_];

      v28 = v64;
      v36 = v34;
      v25 = v66;
      (*(v27 + 8))(v36, v29);
    }

    [v32 setDataCount_];
    sub_1D14F44CC(v28, &qword_1EE05B520, MEMORY[0x1E6968130]);
    sub_1D1453BA0(0, &qword_1EE056650);
    v37 = v56;
    (v54)(v56, v26, v25);
    v38 = v58;
    v39 = sub_1D153FD10(v38, v37);

    v40 = v32;

    result = [v39 data];
    if (result)
    {
      v41 = result;
      v42 = v26;
      v43 = v31;
      v44 = v52 | (v51 << 8);
      sub_1D1453BA0(0, &qword_1EE056670);
      v45 = sub_1D15A2518();
      v47 = v46;

      v72 = 14;
      v69[0] = v53;
      v69[1] = v43;
      v69[2] = v44;
      v69[3] = 0;
      v70 = 0;
      v68 = 0;
      memset(v67, 0, sizeof(v67));
      v48 = sub_1D153FE24(v45, v47, &v72, v69, v40, 0, v67);
      sub_1D1498BF4(v45, v47);

      (*(v65 + 8))(v42, v66);
      return v48;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id static StatisticsCurrentValueSupport.makeTimePeriodCurrentValue(date:dataCount:supplementaryDateInterval:queryConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v37 = a1;
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D15A22A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455B78(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = *(v9 + 16);
  v36 = a3;
  v19(&v34 - v17, a3, v8, v16);
  (*(v9 + 56))(v18, 0, 1, v8);
  result = [objc_allocWithZone(MEMORY[0x1E69A4300]) init];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = result;
  sub_1D149D62C(v18, v14);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_1D14F44CC(v14, &qword_1EE05B520, MEMORY[0x1E6968130]);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_1D1453BA0(0, &qword_1EE0566F8);
    v22 = sub_1D15A44A8();
    [v21 setDateInterval_];

    (*(v9 + 8))(v11, v8);
  }

  [v21 setDataCount_];
  sub_1D14F44CC(v18, &qword_1EE05B520, MEMORY[0x1E6968130]);
  sub_1D15A2298();
  v24 = v23;
  (*(v5 + 16))(v7, v37, v4);
  result = [objc_allocWithZone(MEMORY[0x1E69A4308]) init];
  if (!result)
  {
    goto LABEL_9;
  }

  v25 = result;
  [v25 setTimeInterval_];
  v26 = sub_1D15A2618();
  v27 = MEMORY[0x1D388B370]();

  [v25 setDateData_];
  (*(v5 + 8))(v7, v4);
  v28 = v21;
  result = [v25 data];
  if (result)
  {
    v29 = result;
    sub_1D1453BA0(0, &qword_1EE056670);
    v30 = sub_1D15A2518();
    v32 = v31;

    v42 = 18;
    memset(v40, 0, sizeof(v40));
    v41 = 24;
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v33 = sub_1D153FE24(v30, v32, &v42, v40, v28, 0, v38);
    sub_1D1498BF4(v30, v32);

    return v33;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t StatisticsCurrentValueSupport.Failure.localizedDescription.getter()
{
  v1 = *v0;
  sub_1D14F4528();
  return v1;
}

unint64_t sub_1D14F4474()
{
  result = qword_1EE05B3F0;
  if (!qword_1EE05B3F0)
  {
    sub_1D15A26A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B3F0);
  }

  return result;
}

uint64_t sub_1D14F44CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D1455B78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D14F4560(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D14F45A8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation.init(supplementaryLabelConfiguration:sampleCount:dateInterval:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  *a5 = 2;
  v10 = *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0) + 24);
  v11 = sub_1D15A22A8();
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  *a5 = v9;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;

  return sub_1D14F46E4(a4, a5 + v10);
}

uint64_t sub_1D14F46E4(uint64_t a1, uint64_t a2)
{
  sub_1D14F524C(0, &qword_1EE05B520, MEMORY[0x1E6968130]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.init(displayType:categoryValue:healthStore:unitPreferenceController:forceDayGranularity:metadata:supplementaryFormatInformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1D159BDE4(MEMORY[0x1E69E7CC0]);
  *a8 = a1;
  *(a8 + 8) = a2;
  type metadata accessor for MostRecentSampleSnidgetStringBuilder();
  v16 = swift_allocObject();
  v16[2] = a3;
  v17 = objc_opt_self();
  v18 = a3;
  v16[4] = [v17 sharedInstanceForHealthStore_];

  v16[3] = a4;

  v19 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0);
  *(a8 + *(v19 + 36)) = v16;
  *(a8 + 16) = a5;
  *(a8 + 24) = a6;
  v20 = a8 + *(v19 + 32);

  return sub_1D14F5120(a7, v20);
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation.sampleCount.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0) + 24);

  return sub_1D149D62C(v3, a1);
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation.dateInterval.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0) + 24);

  return sub_1D14F46E4(a1, v3);
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.metadata.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.supplementaryFormatInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0) + 32);

  return sub_1D14F5184(v3, a1);
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.supplementaryFormatInformation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0) + 32);

  return sub_1D14F51E8(a1, v3);
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.primaryString.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1D14F524C(0, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_1D15A23F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0) + 36));
  v12 = *v2;
  v13 = *(v2 + 8);
  sub_1D149C950(*v2, *(v2 + 24), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D14F52A0(v6, &qword_1EE05AAE0, MEMORY[0x1E6968848]);
    v14 = [v12 presentation];
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v16 = [v14 adjustedValueForDaemonValue_];

    v17 = [v12 hk:0 valueFormatterForUnit:?];
    v18 = sub_1D15A3058();
    v19 = *(v11 + 24);
    v20 = v18;
    v21 = sub_1D15A3068();
    v22 = [v17 attributedStringFromValue:v16 displayType:v12 unitController:v19 valueFont:v20 unitFont:v21];

    if (!v22)
    {

      v24 = 1;
      return (*(v8 + 56))(a1, v24, 1, v7);
    }

    sub_1D15A2428();
  }

  else
  {
    v23 = *(v8 + 32);
    v23(v10, v6, v7);
    v23(a1, v10, v7);
  }

  v24 = 0;
  return (*(v8 + 56))(a1, v24, 1, v7);
}

uint64_t CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.supplementaryString.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + *(type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0) + 32));
  v7 = *v6;
  if (v7 == 2)
  {
    v8 = sub_1D15A23F8();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }

  else
  {
    v15 = v7 & 1;
    v11 = *(v6 + 1);
    v12 = v6[16];
    sub_1D14F5184(v6, v5);
    v13 = *(v3 + 24);
    MostRecentSampleSnidgetStringBuilder.makeMostRecentSampleSupplementaryString(supplementaryLabelConfiguration:supplementaryLabelInfo:)(&v15, v11, v12, &v5[v13], a1);
    return sub_1D14F52A0(&v5[v13], &qword_1EE05B520, MEMORY[0x1E6968130]);
  }
}

uint64_t sub_1D14F4F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v2 + *(a1 + 32));
  v9 = *v8;
  if (v9 == 2)
  {
    v10 = sub_1D15A23F8();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }

  else
  {
    v17 = v9 & 1;
    v13 = *(v8 + 1);
    v14 = v8[16];
    sub_1D14F5184(v8, v7);
    v15 = *(v5 + 24);
    MostRecentSampleSnidgetStringBuilder.makeMostRecentSampleSupplementaryString(supplementaryLabelConfiguration:supplementaryLabelInfo:)(&v17, v13, v14, &v7[v15], a2);
    return sub_1D14F52A0(&v7[v15], &qword_1EE05B520, MEMORY[0x1E6968130]);
  }
}

uint64_t sub_1D14F5120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D14F5184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D14F51E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D14F524C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D14F52A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D14F524C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D14F5360()
{
  sub_1D14F542C();
  if (v0 <= 0x3F)
  {
    sub_1D14F5478();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CategoryCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MostRecentSampleSnidgetStringBuilder();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D14F542C()
{
  result = qword_1EE05AD58;
  if (!qword_1EE05AD58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE05AD58);
  }

  return result;
}

void sub_1D14F5478()
{
  if (!qword_1EE0568B8)
  {
    v0 = sub_1D15A3E78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0568B8);
    }
  }
}

void sub_1D14F5504()
{
  sub_1D14F55DC(319, &qword_1EE057818);
  if (v0 <= 0x3F)
  {
    sub_1D14F55DC(319, &qword_1EE059748);
    if (v1 <= 0x3F)
    {
      sub_1D14F524C(319, &qword_1EE05B520, MEMORY[0x1E6968130]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D14F55DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D15A4608();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D14F5628()
{

  sub_1D15A2D38();
}

uint64_t sub_1D14F5698()
{

  sub_1D15A2D28();

  return v1;
}

id sub_1D14F56E8()
{
  v1 = qword_1EE05B1C0;
  v2 = *(v0 + qword_1EE05B1C0);
  if (v2)
  {
    v3 = *(v0 + qword_1EE05B1C0);
  }

  else
  {
    sub_1D14F5754((v0 + qword_1EE068370));
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D14F5754(char *a1)
{
  v63 = a1;
  v2 = sub_1D15A22A8();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v55 = v3;
  v56 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D15A26A8();
  v4 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D15A2708();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D15A2848();
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D15A31D8();
  v59 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v53 = v14;
  v54 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  if (qword_1EE05B390 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE05B398;
  v64 = v1;
  v65 = v17;
  sub_1D15A31C8();
  (*(v8 + 104))(v10, *MEMORY[0x1E6969868], v7);
  sub_1D15A2718();
  (*(v8 + 8))(v10, v7);
  v19 = v63;
  sub_1D15A2288();
  v20 = sub_1D15A2618();
  v21 = *(v4 + 8);
  v22 = v62;
  v21(v6, v62);
  v23 = sub_1D15A27B8();
  v24 = [v20 hk:v23 morningIndexWithCalendar:?];

  sub_1D15A2258();
  v25 = sub_1D15A2618();
  v21(v6, v22);
  v26 = sub_1D15A27B8();
  v27 = [v25 hk:v26 morningIndexWithCalendar:?];

  v62 = v24;
  v28 = v27 - v24;
  if (__OFSUB__(v27, v24))
  {
    __break(1u);
  }

  else if (!__OFADD__(v28, 1))
  {
    v29 = v13;
    v30 = v19;
    v52 = *&v64[qword_1EE068230];
    v51 = v28 + 1;
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = v59;
    v33 = v54;
    (*(v59 + 16))(v54, v65, v66);
    v35 = v56;
    v34 = v57;
    v36 = v58;
    (*(v57 + 16))(v56, v30, v58);
    v37 = *(v32 + 80);
    v63 = v29;
    v38 = (v37 + 16) & ~v37;
    v39 = (v53 + *(v34 + 80) + v38) & ~*(v34 + 80);
    v40 = (v55 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    v42 = v33;
    v43 = v66;
    (*(v32 + 32))(v41 + v38, v42, v66);
    (*(v34 + 32))(v41 + v39, v35, v36);
    *(v41 + v40) = v31;
    v44 = objc_allocWithZone(MEMORY[0x1E696C470]);
    aBlock[4] = sub_1D14F7664;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D14F73E4;
    aBlock[3] = &block_descriptor_5;
    v45 = _Block_copy(aBlock);

    v46 = [v44 initWithMorningIndexRange:v62 ascending:v51 limit:1 options:0 resultsHandler:{v52, v45}];
    _Block_release(v45);

    v47 = v46;
    v48 = v64;
    v49 = [v64 name];
    [v47 setDebugIdentifier_];

    [v47 setCacheSettings_];
    [v47 setQualityOfService_];

    (*(v60 + 8))(v63, v61);
    (*(v32 + 8))(v65, v43);
    return;
  }

  __break(1u);
}

id SleepQueryOperation.__allocating_init(dateInterval:name:queryOptions:queryQualityOfService:queryCacheSettings:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  v14 = objc_allocWithZone(v7);
  v15 = qword_1EE058E20;
  sub_1D1487B04();
  v16 = swift_allocError();
  *v17 = 0;
  v29 = v16;
  v30 = 1;
  sub_1D14F6344(0, &qword_1EE059400, sub_1D14F6294, MEMORY[0x1E69A3DC0]);
  swift_allocObject();
  *&v14[v15] = sub_1D15A2D68();
  *&v14[qword_1EE05B1C0] = 0;
  v18 = qword_1EE068370;
  v19 = sub_1D15A22A8();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v14[v18], a1, v19);
  *&v14[qword_1EE068378] = a7;
  *&v14[qword_1EE068230] = a4;
  *&v14[qword_1EE068368] = a5;
  *&v14[qword_1EE068228] = a6;
  v28.receiver = v14;
  v28.super_class = v8;
  v21 = a7;
  v22 = a6;
  v23 = objc_msgSendSuper2(&v28, sel_init);
  v24 = v23;
  if (a3)
  {
    v25 = sub_1D15A3EF8();
  }

  else
  {
    v25 = 0;
  }

  [v23 setName_];

  (*(v20 + 8))(a1, v19);
  return v23;
}