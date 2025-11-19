uint64_t get_enum_tag_for_layout_string_9DepthCore19TemperatureProviderO(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

void sub_2487F567C()
{
  sub_2487F573C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2487F573C()
{
  if (!qword_280DD0B40)
  {
    sub_24882AA28();
    v0 = sub_24882B218();
    if (!v1)
    {
      atomic_store(v0, &qword_280DD0B40);
    }
  }
}

id DepthFormatter.init(configuration:)(uint64_t a1)
{
  v3 = *(a1 + 112);
  v57[6] = *(a1 + 96);
  v58 = v3;
  v59 = *(a1 + 128);
  v4 = *(a1 + 48);
  v57[2] = *(a1 + 32);
  v57[3] = v4;
  v5 = *(a1 + 80);
  v57[4] = *(a1 + 64);
  v57[5] = v5;
  v6 = *(a1 + 16);
  v57[0] = *a1;
  v57[1] = v6;
  v7 = OBJC_IVAR___DKDepthFormatter____lazy_storage___decimalDigitsAndPunctuationSet;
  v8 = sub_24882AA28();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v9 = &v1[OBJC_IVAR___DKDepthFormatter_configuration];
  v10 = *(a1 + 112);
  *(v9 + 6) = *(a1 + 96);
  *(v9 + 7) = v10;
  *(v9 + 16) = *(a1 + 128);
  v11 = *(a1 + 48);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v11;
  v12 = *(a1 + 80);
  *(v9 + 4) = *(a1 + 64);
  *(v9 + 5) = v12;
  v13 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v13;
  v14 = objc_allocWithZone(MEMORY[0x277CCABB8]);
  sub_2487F5E08(v57, v56);
  v15 = [v14 init];
  v16 = OBJC_IVAR___DKDepthFormatter_depthNumberFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_depthNumberFormatter] = v15;
  v17 = BYTE2(v58);
  [v15 setMaximumFractionDigits_];
  [*&v1[v16] setMinimumFractionDigits_];
  v18 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  v19 = OBJC_IVAR___DKDepthFormatter_depthMeasurementFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_depthMeasurementFormatter] = v18;
  [v18 setUnitStyle_];
  [*&v1[v19] setUnitOptions_];
  result = [*&v1[v19] numberFormatter];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = result;
  [result setMaximumFractionDigits_];

  result = [*&v1[v19] numberFormatter];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v22 = result;
  [result setMinimumFractionDigits_];

  v23 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  v24 = OBJC_IVAR___DKDepthFormatter_depthIntegerNumberFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_depthIntegerNumberFormatter] = v23;
  [v23 setMaximumFractionDigits_];
  [*&v1[v24] setMinimumFractionDigits_];
  v25 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  v26 = OBJC_IVAR___DKDepthFormatter_depthIntegerMeasurementFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_depthIntegerMeasurementFormatter] = v25;
  [v25 setUnitStyle_];
  [*&v1[v26] setUnitOptions_];
  result = [*&v1[v26] numberFormatter];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v27 = result;
  [result setMaximumFractionDigits_];

  result = [*&v1[v26] numberFormatter];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v28 = result;
  [result setMinimumFractionDigits_];

  v29 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v30 = OBJC_IVAR___DKDepthFormatter_hoursMinutesSecondsUnderwaterTimeFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_hoursMinutesSecondsUnderwaterTimeFormatter] = v29;
  [v29 setZeroFormattingBehavior_];
  [*&v1[v30] setAllowedUnits_];
  v31 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v32 = OBJC_IVAR___DKDepthFormatter_hoursMinutesUnderwaterTimeFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_hoursMinutesUnderwaterTimeFormatter] = v31;
  [v31 setZeroFormattingBehavior_];
  [*&v1[v32] setAllowedUnits_];
  v33 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v34 = OBJC_IVAR___DKDepthFormatter_minutesSecondsShortUnderwaterTimeFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_minutesSecondsShortUnderwaterTimeFormatter] = v33;
  [v33 setZeroFormattingBehavior_];
  [*&v1[v34] setAllowedUnits_];
  v35 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v36 = OBJC_IVAR___DKDepthFormatter_secondsOnlyShortUnderwaterTimeFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_secondsOnlyShortUnderwaterTimeFormatter] = v35;
  [v35 setZeroFormattingBehavior_];
  [*&v1[v36] setAllowedUnits_];
  v37 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v38 = OBJC_IVAR___DKDepthFormatter_diveHistoryDiveDurationFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_diveHistoryDiveDurationFormatter] = v37;
  [v37 setAllowedUnits_];
  [*&v1[v38] setUnitsStyle_];
  [*&v1[v38] setZeroFormattingBehavior_];
  v39 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  v40 = OBJC_IVAR___DKDepthFormatter_temperatureFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_temperatureFormatter] = v39;
  [v39 setUnitStyle_];
  result = [*&v1[v40] numberFormatter];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v41 = result;
  [result setMaximumFractionDigits_];

  result = [*&v1[v40] numberFormatter];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v42 = result;
  [result setMinimumFractionDigits_];

  [*&v1[v40] setUnitOptions_];
  v43 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  v44 = OBJC_IVAR___DKDepthFormatter_temperatureUnitlessFormatter;
  *&v1[OBJC_IVAR___DKDepthFormatter_temperatureUnitlessFormatter] = v43;
  [v43 setUnitStyle_];
  [*&v1[v44] setUnitOptions_];
  result = [*&v1[v44] numberFormatter];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v45 = result;
  [result setMaximumFractionDigits_];

  result = [*&v1[v44] numberFormatter];
  if (result)
  {
    v46 = result;
    sub_2487F5E64(v57);
    [v46 setMinimumFractionDigits_];

    v47 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v48 = OBJC_IVAR___DKDepthFormatter_startDateFormatter;
    *&v1[OBJC_IVAR___DKDepthFormatter_startDateFormatter] = v47;
    [v47 setDoesRelativeDateFormatting_];
    [*&v1[v48] setDateStyle_];
    [*&v1[v48] setTimeStyle_];
    v49 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v50 = OBJC_IVAR___DKDepthFormatter_endDateFormatter;
    *&v1[OBJC_IVAR___DKDepthFormatter_endDateFormatter] = v49;
    [v49 setDateStyle_];
    [*&v1[v50] setTimeStyle_];
    v51 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v52 = OBJC_IVAR___DKDepthFormatter_voiceoverDateFormatter;
    *&v1[OBJC_IVAR___DKDepthFormatter_voiceoverDateFormatter] = v51;
    [v51 setDateStyle_];
    [*&v1[v52] setTimeStyle_];
    v53 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    v54 = OBJC_IVAR___DKDepthFormatter_batteryLevelFormatter;
    *&v1[OBJC_IVAR___DKDepthFormatter_batteryLevelFormatter] = v53;
    [v53 setMaximumFractionDigits_];
    [*&v1[v54] setNumberStyle_];
    v55.receiver = v1;
    v55.super_class = type metadata accessor for DepthFormatter();
    return objc_msgSendSuper2(&v55, sel_init);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DepthFormatter()
{
  result = qword_280DD0B28;
  if (!qword_280DD0B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_2487F5F24(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_2487F5FA0()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2487F5FD8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2487F5FE8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2487F6020()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

__n128 sub_2487F606C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_2487F6078@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_248802AD8();
  *a2 = result;
  return result;
}

uint64_t sub_2487F60A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_248802C14(v4, v5, v6, v7);
}

uint64_t sub_2487F6104(uint64_t a1, uint64_t a2)
{
  v4 = sub_24882AA88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2487F6170(uint64_t a1, uint64_t a2)
{
  v4 = sub_24882AA88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2487F61F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24882ABE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_24882AB78();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 36) + 16);
      if (v14 > 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_2487F6300(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24882ABE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24882AB78();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 16) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2487F6414(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24882ABE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24882AA88();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 253)
  {
    v14 = *(a1 + a3[8] + 16);
    if (v14 > 2)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2487F6590(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24882ABE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_24882AA88();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 253)
  {
    *(a1 + a4[8] + 16) = -a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEAA248, &qword_24882DDD0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[11];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t _s9DepthCore14DepthTransformVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9DepthCore14DepthTransformVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_2487F6764()
{
  if (*v0)
  {
    result = 0x65746144646E65;
  }

  else
  {
    result = 0x7461447472617473;
  }

  *v0;
  return result;
}

uint64_t sub_2487F67A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnderwaterTime(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_2487F6820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnderwaterTime(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2487F689C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24882ABE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for UnderwaterTime(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 32));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_2487F69B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24882ABE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for UnderwaterTime(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2487F6AD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2487F6BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24882ABE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2487F6C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24882ABE8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2487F6D20()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2487F6D68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2487F6DAC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2487F6DE4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2487F6E2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2487F6E64()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2487F6E9C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2487F6EF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2487F6FB0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t getEnumTagSinglePayload for TemperatureValue(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TemperatureValue(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2487F713C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0xE700000000000000;
      v5 = 0x6C616E696D6F6ELL;
    }

    else
    {
      if (a1 == 4)
      {
        v5 = 0xD000000000000011;
      }

      else
      {
        v5 = 0xD000000000000014;
      }

      if (v2 == 4)
      {
        v6 = 0x800000024882FFB0;
      }

      else
      {
        v6 = 0x800000024882FFD0;
      }
    }
  }

  else
  {
    v3 = 0x656D627553746F6ELL;
    v4 = 0xEC00000064656772;
    if (a1 != 1)
    {
      v3 = 0x776F6C6C616873;
      v4 = 0xE700000000000000;
    }

    if (a1)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v7 = 0xE700000000000000;
      if (v5 != 0x6C616E696D6F6ELL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (a2 == 4)
      {
        v8 = 0xD000000000000011;
      }

      else
      {
        v8 = 0xD000000000000014;
      }

      if (a2 == 4)
      {
        v7 = 0x800000024882FFB0;
      }

      else
      {
        v7 = 0x800000024882FFD0;
      }

      if (v5 != v8)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v7 = 0xEC00000064656772;
      if (v5 != 0x656D627553746F6ELL)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v7 = 0xE700000000000000;
      if (v5 != 0x776F6C6C616873)
      {
LABEL_39:
        v9 = sub_24882B4B8();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v5 != 0x6E776F6E6B6E75)
    {
      goto LABEL_39;
    }
  }

  if (v6 != v7)
  {
    goto LABEL_39;
  }

  v9 = 1;
LABEL_40:

  return v9 & 1;
}

uint64_t sub_2487F7334()
{
  sub_24882B528();
  MEMORY[0x24C1D9CA0](1);
  return sub_24882B548();
}

uint64_t sub_2487F7378()
{
  sub_24882B528();
  sub_24882AF88();

  return sub_24882B548();
}

uint64_t sub_2487F74B4()
{
  sub_24882B528();
  MEMORY[0x24C1D9CA0](1);
  return sub_24882B548();
}

uint64_t sub_2487F74F4()
{
  sub_24882B528();
  sub_24882AF88();

  return sub_24882B548();
}

uint64_t sub_2487F7628()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6C616E696D6F6ELL;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D627553746F6ELL;
  if (v1 != 1)
  {
    v5 = 0x776F6C6C616873;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t static WaterDepth.Category.fromString(_:)@<X0>(char *a1@<X8>)
{

  return WaterDepth.Category.init(rawValue:)(a1);
}

uint64_t WaterDepth.Category.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_24882B3A8();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2487F77B4()
{
  *v0;
  *v0;
  *v0;
  sub_24882AF88();
}

uint64_t sub_2487F78B8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return WaterDepth.Category.init(rawValue:)(a1);
}

void sub_2487F78C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE700000000000000;
  v6 = 0x6C616E696D6F6ELL;
  v7 = 0xD000000000000011;
  v8 = 0x800000024882FFB0;
  if (v2 != 4)
  {
    v7 = 0xD000000000000014;
    v8 = 0x800000024882FFD0;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEC00000064656772;
  v10 = 0x656D627553746F6ELL;
  if (v2 != 1)
  {
    v10 = 0x776F6C6C616873;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

void WaterDepth.category.getter(char *a1@<X8>)
{
  if (v1[8] > 1u)
  {
    if (v1[8] == 2)
    {
      *a1 = 4;
    }

    else
    {
      *a1 = 0x50100u >> (8 * *v1);
    }
  }

  else
  {
    if (v1[8])
    {
      v2 = 3;
    }

    else
    {
      v2 = 2;
    }

    *a1 = v2;
  }
}

void static WaterDepth.depth(fromDepthValue:categoryString:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 8);

  WaterDepth.Category.init(rawValue:)(&v18);
  if (v18 <= 2u)
  {
    if (!v18)
    {
      v9 = 3;
      v7 = 0;
      goto LABEL_25;
    }

    if (v18 == 1)
    {
      v9 = 3;
      v7 = 1;
      goto LABEL_25;
    }

    if ((v8 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    if (v18 > 4u)
    {
      if (v18 == 5)
      {
        v7 = 2;
      }

      else
      {
        v7 = 0;
      }

      if (v18 == 5)
      {
        v9 = 3;
      }

      else
      {
        v9 = -1;
      }

      goto LABEL_25;
    }

    if (v18 == 3)
    {
      if ((v8 & 1) == 0)
      {
        v9 = 1;
        goto LABEL_25;
      }
    }

    else if ((v8 & 1) == 0)
    {
      v9 = 2;
      goto LABEL_25;
    }
  }

  if (qword_27EEA9950 != -1)
  {
    swift_once();
  }

  v10 = sub_24882AC88();
  __swift_project_value_buffer(v10, qword_27EEAA810);

  v11 = sub_24882AC68();
  v12 = sub_24882B138();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315394;
    v18 = v7;
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA99A0, &qword_24882BDB0);
    v15 = sub_24882AF58();
    v17 = sub_2487F852C(v15, v16, &v20);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2487F852C(a2, a3, &v20);
    _os_log_impl(&dword_2487F4000, v11, v12, "ERROR: Failure to realized serialized WaterDepth from values %s,%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1DA290](v14, -1, -1);
    MEMORY[0x24C1DA290](v13, -1, -1);
  }

  v7 = 0;
  v9 = -1;
LABEL_25:
  *a4 = v7;
  *(a4 + 8) = v9;
}

uint64_t static WaterDepth.maxDepth(fromMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_2487F8B2C(0xD00000000000001DLL, 0x8000000248830060), (v5 & 1) != 0) && (sub_2487F8BA4(*(a1 + 56) + 32 * v4, v17), swift_dynamicCast()))
  {
    v6 = 0;
    v7 = v13;
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  v15 = v7;
  v16 = v6;
  if (*(a1 + 16) && (v8 = sub_2487F8B2C(0xD000000000000025, 0x8000000248830080), (v9 & 1) != 0) && (sub_2487F8BA4(*(a1 + 56) + 32 * v8, v17), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v13;
    v11 = v14;
  }

  else
  {
    v11 = 0xEF79726F67657461;
    v10 = 0x63676E697373696DLL;
  }

  static WaterDepth.depth(fromDepthValue:categoryString:)(&v15, v10, v11, a2);
}

uint64_t static WaterDepth.depth(fromMetadata:valueKey:categoryKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a1 + 16) && (v10 = sub_2487F8B2C(a2, a3), (v11 & 1) != 0) && (sub_2487F8BA4(*(a1 + 56) + 32 * v10, v23), (swift_dynamicCast() & 1) != 0))
  {
    v12 = 0;
    v13 = v19;
  }

  else
  {
    v13 = 0;
    v12 = 1;
  }

  v21 = v13;
  v22 = v12;
  if (*(a1 + 16) && (v14 = sub_2487F8B2C(a4, a5), (v15 & 1) != 0) && (sub_2487F8BA4(*(a1 + 56) + 32 * v14, v23), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v19;
    v17 = v20;
  }

  else
  {
    v17 = 0xEF79726F67657461;
    v16 = 0x63676E697373696DLL;
  }

  static WaterDepth.depth(fromDepthValue:categoryString:)(&v21, v16, v17, a6);
}

unint64_t WaterDepth.asMaxDepthMetadata.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return WaterDepth.asMetadata(usingValueKey:categoryKey:)(0xD00000000000001DLL, 0x8000000248830060, 0xD000000000000025, 0x8000000248830080);
}

unint64_t WaterDepth.asMetadata(usingValueKey:categoryKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(v4 + 8);
  v11 = sub_2487F8CB8(MEMORY[0x277D84F90]);
  if (v10 < 3)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v11;
    sub_2487F8DBC(v12, a1, a2, isUniquelyReferenced_nonNull_native, &v17);

    v11 = v17;
  }

  v14 = sub_24882AED8();

  v15 = swift_isUniquelyReferenced_nonNull_native();
  v17 = v11;
  sub_2487F8DBC(v14, a3, a4, v15, &v17);

  return v17;
}

void static TemperatureRange.temperatureRange(fromMetadata:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v4 = sub_2487F8B2C(0xD000000000000021, 0x80000002488300E0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2487F8BA4(*(a1 + 56) + 32 * v4, v14);
  sub_2487F8F38();
  if (swift_dynamicCast() & 1) != 0 && ([v13 doubleValue], v7 = v6, v13, *(a1 + 16)) && (v8 = sub_2487F8B2C(0xD000000000000021, 0x80000002488300B0), (v9) && (sub_2487F8BA4(*(a1 + 56) + 32 * v8, v14), (swift_dynamicCast()))
  {
    [v13 doubleValue];
    v11 = v10;

    if (v7 == v11)
    {
      *a2 = v7;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return;
    }

    if (v11 >= v7)
    {
      *a2 = v7;
      *(a2 + 8) = v11;
    }

    else
    {
      *a2 = v11;
      *(a2 + 8) = v7;
    }

    v12 = 1;
  }

  else
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = -1;
  }

  *(a2 + 16) = v12;
}

unint64_t TemperatureRange.asMetadata.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  result = sub_2487F8CB8(MEMORY[0x277D84F90]);
  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    v5 = v1;
    v6 = result;
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v6;
    sub_2487F8DBC(v7, 0xD000000000000021, 0x80000002488300B0, isUniquelyReferenced_nonNull_native, &v17);
    v9 = v17;
    v10 = "_HKPrivateMetadataKeyMaxWaterTemp";
  }

  else
  {
    v2 = v1;
    v11 = result;
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v17 = v11;
    sub_2487F8DBC(v12, 0xD000000000000021, 0x80000002488300E0, v13, &v17);
    v9 = v17;
    v10 = "_HKPrivateMetadataKeyMinWaterTemp";
  }

  v14 = v10 - 32;
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v17 = v9;
  sub_2487F8DBC(v15, 0xD000000000000021, v14 | 0x8000000000000000, v16, &v17);
  return v17;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2487F845C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2487F84D0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2487F852C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2487F852C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2487F85F8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2487F8BA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2487F85F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2487F8704(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24882B2F8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2487F8704(uint64_t a1, unint64_t a2)
{
  v4 = sub_2487F8750(a1, a2);
  sub_2487F8880(&unk_285B43708);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2487F8750(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2487F896C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24882B2F8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24882AFA8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2487F896C(v10, 0);
        result = sub_24882B268();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2487F8880(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2487F89E0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2487F896C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9AF8, &qword_24882BF88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2487F89E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9AF8, &qword_24882BF88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_2487F8AD4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2487F8B2C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24882B528();
  sub_24882AF88();
  v6 = sub_24882B548();

  return sub_2487F8C00(a1, a2, v6);
}

uint64_t sub_2487F8BA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2487F8C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24882B4B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2487F8CB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9AF0, &qword_24882BF80);
    v3 = sub_24882B388();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_2487F8B2C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2487F8DBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_2487F8B2C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2487FD128(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_2487F8B2C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_24882B4C8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2487FDB58();
      v11 = v19;
    }
  }

  v22 = *a5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_2487F8F38()
{
  result = qword_27EEA99A8;
  if (!qword_27EEA99A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEA99A8);
  }

  return result;
}

unint64_t sub_2487F8F88()
{
  result = qword_27EEA99B0;
  if (!qword_27EEA99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA99B0);
  }

  return result;
}

unint64_t sub_2487F8FE0()
{
  result = qword_27EEA99B8;
  if (!qword_27EEA99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA99B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiveWorkoutUtil(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DiveWorkoutUtil(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t _s8CategoryOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8CategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2487F9280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9A28, qword_24882BF68);
    v3 = sub_24882B388();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2487F8B2C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2487F937C(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_2487F93A8()
{
  v1 = *(v0 + 40);
  sub_24882B528();
  MEMORY[0x24C1D9CA0](0);
  v2 = sub_24882B548();

  return sub_2487F937C(v2);
}

unint64_t sub_2487F9400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9A20, &qword_24882BF60);
    v3 = sub_24882B388();
    for (i = (a1 + 32); ; ++i)
    {
      v5 = *i;
      result = sub_2487F93A8();
      if (v7)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v3 + 56) + result) = v5;
      v8 = *(v3 + 16);
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t FormattedDepthComponents.formattedString.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FormattedDepthComponents.valueString.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FormattedDepthComponents.unitString.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_2487F95F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24882AA28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v10 = MEMORY[0x28223BE20](v4, v7, v8, v9);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v13, v14, v15);
  v17 = &v34[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C50, &qword_24882C0B0);
  v19 = *(*(v18 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v18 - 8, v20, v21, v22);
  v25 = &v34[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v26, v27, v28);
  v30 = &v34[-v29];
  v31 = OBJC_IVAR___DKDepthFormatter____lazy_storage___decimalDigitsAndPunctuationSet;
  swift_beginAccess();
  sub_2487FAE0C(v2 + v31, v30);
  if ((*(v5 + 48))(v30, 1, v4) != 1)
  {
    return (*(v5 + 32))(a1, v30, v4);
  }

  sub_2487FAE7C(v30);
  sub_24882A9E8();
  sub_24882A9F8();
  sub_24882AA08();
  v32 = *(v5 + 8);
  v32(v12, v4);
  v32(v17, v4);
  (*(v5 + 16))(v25, a1, v4);
  (*(v5 + 56))(v25, 0, 1, v4);
  swift_beginAccess();
  sub_2487FAEE4(v25, v2 + v31);
  return swift_endAccess();
}

uint64_t sub_2487F9930(double a1)
{
  v3 = &OBJC_IVAR___DKDepthFormatter_minutesSecondsShortUnderwaterTimeFormatter;
  if (a1 >= 3600.0)
  {
    v3 = &OBJC_IVAR___DKDepthFormatter_hoursMinutesSecondsUnderwaterTimeFormatter;
  }

  v4 = *(v1 + *v3);
  v5 = [v4 stringFromTimeInterval_];
  if (v5)
  {
    v6 = v5;
    v7 = sub_24882AEF8();

    v4 = v6;
  }

  else
  {
    v7 = sub_2487FB274();
  }

  return v7;
}

uint64_t sub_2487F99FC()
{
  v1 = [*(v0 + OBJC_IVAR___DKDepthFormatter_diveHistoryDiveDurationFormatter) stringFromTimeInterval_];
  if (v1)
  {
    v2 = v1;
    v3 = sub_24882AEF8();

    return v3;
  }

  else
  {

    return sub_2487FB274();
  }
}

uint64_t sub_2487F9A98(double a1)
{
  v3 = &OBJC_IVAR___DKDepthFormatter_secondsOnlyShortUnderwaterTimeFormatter;
  v4 = &OBJC_IVAR___DKDepthFormatter_minutesSecondsShortUnderwaterTimeFormatter;
  if (a1 >= 3600.0)
  {
    v4 = &OBJC_IVAR___DKDepthFormatter_hoursMinutesUnderwaterTimeFormatter;
  }

  if (a1 >= 60.0)
  {
    v3 = v4;
  }

  v5 = *(v1 + *v3);
  v6 = [v5 stringFromTimeInterval_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24882AEF8();
  }

  else
  {
    v8 = sub_2487FB274();
    v7 = v5;
  }

  return v8;
}

uint64_t sub_2487F9B84(double a1)
{
  v1 = 72;
  if (a1 < 3600.0)
  {
    v1 = 77;
  }

  if (a1 >= 60.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 83;
  }

  MEMORY[0x24C1D9700](v2, 0xE100000000000000);

  v3 = sub_2487FB274();

  return v3;
}

uint64_t sub_2487F9C34(uint64_t a1)
{
  sub_2487FB274();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_24882BFD0;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_24882AF18();

  return v5;
}

uint64_t sub_2487F9CEC(uint64_t a1, char a2, char a3)
{
  if (*(a1 + 8))
  {
    return 11565;
  }

  v4 = *a1;
  return sub_2487F9D34(&v4, a2 & 1, a3 & 1);
}

uint64_t sub_2487F9D34(uint64_t *a1, char a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C58, &qword_24882C0B8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11, v12, v13);
  v15 = &v25 - v14;
  v16 = *a1;
  if (v4[OBJC_IVAR___DKDepthFormatter_configuration + 115] == 1)
  {
    v17 = &selRef_fahrenheit;
  }

  else
  {
    v17 = &selRef_celsius;
  }

  v18 = [objc_opt_self() *v17];
  sub_2487FAF54();
  sub_24882A9D8();
  v19 = &OBJC_IVAR___DKDepthFormatter_temperatureFormatter;
  if ((a2 & 1) == 0)
  {
    v19 = &OBJC_IVAR___DKDepthFormatter_temperatureUnitlessFormatter;
  }

  v20 = *&v4[*v19];
  v21 = sub_24882B1E8();
  v28 = v21;
  v29 = v22;
  if ((a3 & 1) == 0)
  {
    v26 = v21;
    v27 = v22;
    v23 = v4;
    sub_2487FAFA0(&v26, v23);

    v28 = v26;
    v29 = v27;
  }

  if (sub_24882AFB8())
  {
    v26 = 45;
    v27 = 0xE100000000000000;
    sub_2487FB214();
    sub_24882B118();
  }

  (*(v9 + 8))(v15, v8);
  return v28;
}

uint64_t sub_2487F9F5C(uint64_t a1, char a2)
{
  v2 = *a1;
  if (!*(a1 + 16))
  {
    v16 = *a1;
    return sub_2487F9D34(&v16, 0, a2 & 1);
  }

  if (*(a1 + 16) != 1)
  {
    return 11565;
  }

  v3 = *(a1 + 8);
  v4 = *a1;
  if (vabdd_f64(v2, v3) < 1.0)
  {
    v16 = (v3 + v2) * 0.5;
    return sub_2487F9D34(&v16, 0, a2 & 1);
  }

  sub_2487FB274();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24882BFE0;
  v16 = v2;
  v8 = sub_2487F9D34(&v16, 0, 0);
  v10 = v9;
  v11 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2487FA950();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v16 = v3;
  v13 = sub_2487F9D34(&v16, 0, a2 & 1);
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  v15 = sub_24882AEE8();

  return v15;
}

uint64_t sub_2487FA0F0(__int128 *a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  v3 = sub_2487F9F5C(&v6, 0);
  v4 = *(v1 + OBJC_IVAR___DKDepthFormatter_configuration + 115) == 0;
  sub_2487FB274();
  return v3;
}

uint64_t sub_2487FA198()
{
  v1 = v0;
  v2 = sub_24882AB78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5, v6, v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24882AA78();
  if (v10 >= 60.0)
  {
    v15 = sub_2487FB274();
    v33[0] = v16;
    v33[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_24882BFE0;
    v18 = *(v0 + OBJC_IVAR___DKDepthFormatter_startDateFormatter);
    sub_24882AA68();
    v19 = sub_24882AB28();
    v20 = *(v3 + 8);
    v20(v9, v2);
    v21 = [v18 stringFromDate_];

    v22 = sub_24882AEF8();
    v24 = v23;

    *(v17 + 56) = MEMORY[0x277D837D0];
    v25 = sub_2487FA950();
    *(v17 + 64) = v25;
    *(v17 + 32) = v22;
    *(v17 + 40) = v24;
    v26 = *(v1 + OBJC_IVAR___DKDepthFormatter_endDateFormatter);
    sub_24882AA48();
    v27 = sub_24882AB28();
    v20(v9, v2);
    v28 = [v26 stringFromDate_];

    v29 = sub_24882AEF8();
    v31 = v30;

    *(v17 + 96) = MEMORY[0x277D837D0];
    *(v17 + 104) = v25;
    *(v17 + 72) = v29;
    *(v17 + 80) = v31;
    v14 = sub_24882AEE8();
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR___DKDepthFormatter_startDateFormatter);
    sub_24882AA68();
    v12 = sub_24882AB28();
    (*(v3 + 8))(v9, v2);
    v13 = [v11 stringFromDate_];

    v14 = sub_24882AEF8();
  }

  return v14;
}

uint64_t sub_2487FA498(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  v4 = sub_24882AB28();
  v5 = [v3 stringFromDate_];

  v6 = sub_24882AEF8();
  return v6;
}

uint64_t sub_2487FA510(int *a1)
{
  if (*(a1 + 4) > 1u)
  {
    return 11565;
  }

  v2 = *a1;
  sub_2487FB274();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C40, &qword_24882C000);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24882BFD0;
  v4 = *(v1 + OBJC_IVAR___DKDepthFormatter_batteryLevelFormatter);
  v5 = sub_24882B0E8();
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    v7 = sub_24882AEF8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2487FA950();
  v11 = 11565;
  if (v9)
  {
    v11 = v7;
  }

  v12 = 0xE200000000000000;
  if (v9)
  {
    v12 = v9;
  }

  *(v3 + 32) = v11;
  *(v3 + 40) = v12;
  v13 = sub_24882AEE8();

  return v13;
}

uint64_t sub_2487FA678()
{
  v1 = *(v0 + OBJC_IVAR___DKDepthFormatter_depthIntegerNumberFormatter);
  v2 = sub_24882B0F8();
  v3 = [v1 stringForObjectValue_];

  if (!v3)
  {
    return sub_24882B498();
  }

  v4 = sub_24882AEF8();

  return v4;
}

id DepthFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DepthFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DepthFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2487FA950()
{
  result = qword_27EEA9C48;
  if (!qword_27EEA9C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9C48);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2487FA9B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2487FAA00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2487FAE0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C50, &qword_24882C0B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2487FAE7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C50, &qword_24882C0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2487FAEE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C50, &qword_24882C0B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2487FAF54()
{
  result = qword_27EEA9C60;
  if (!qword_27EEA9C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEA9C60);
  }

  return result;
}

uint64_t sub_2487FAFA0(void *a1, uint64_t a2)
{
  v38 = a2;
  v34 = sub_24882AA28();
  v4 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34, v5, v6, v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v36 = 0;
  v37 = 0xE000000000000000;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    v27 = 0;
    v28 = 0xE000000000000000;
    goto LABEL_25;
  }

  v30 = a1;
  v31 = v2;
  v14 = 0;
  v32 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v33 = v11 & 0xFFFFFFFFFFFFFFLL;
  v15 = (v8 + 8);
  do
  {
    if ((v11 & 0x1000000000000000) != 0)
    {
      sub_24882B278();
      v19 = v18;
      goto LABEL_16;
    }

    if ((v11 & 0x2000000000000000) != 0)
    {
      v35[0] = v12;
      v35[1] = v33;
      v17 = v35 + v14;
    }

    else
    {
      v16 = v32;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v16 = sub_24882B2F8();
      }

      v17 = (v16 + v14);
    }

    v20 = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
LABEL_15:
      v19 = 1;
      goto LABEL_16;
    }

    v22 = (__clz(v20 ^ 0xFF) - 24);
    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v24 = ((v20 & 0xF) << 12) | ((v17[1] & 0x3F) << 6) | v17[2] & 0x3Fu;
        v19 = 3;
      }

      else
      {
        v25 = ((v20 & 0xF) << 18) | ((v17[1] & 0x3F) << 12) | ((v17[2] & 0x3F) << 6) | v17[3] & 0x3Fu;
        v19 = 4;
      }
    }

    else
    {
      if (v22 == 1)
      {
        goto LABEL_15;
      }

      v23 = v17[1] & 0x3F | ((v20 & 0x1F) << 6);
      v19 = 2;
    }

LABEL_16:
    sub_2487F95F0(v10);
    v21 = sub_24882AA18();
    (*v15)(v10, v34);
    if (v21)
    {
      sub_24882AF78();
    }

    v14 += v19;
  }

  while (v14 < v13);

  v27 = v36;
  v28 = v37;
  a1 = v30;
LABEL_25:
  *a1 = v27;
  a1[1] = v28;
  return result;
}

unint64_t sub_2487FB214()
{
  result = qword_27EEA9C68;
  if (!qword_27EEA9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9C68);
  }

  return result;
}

Swift::String __swiftcall String.localizedDepthCore(comment:)(Swift::String comment)
{
  v1 = sub_2487FB274();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_2487FB274()
{
  v0 = sub_24882AED8();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (!v1)
  {
    return 11565;
  }

  v2 = sub_24882AED8();
  v3 = sub_24882AED8();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_24882AEF8();
  return v5;
}

void sub_2487FB388(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2487FCC20(0, &qword_27EEA9C70, 0x277CCD830);
  v4 = *MEMORY[0x277CCCCD0];
  v5 = MEMORY[0x24C1D98C0]();
  v6 = COERCE_DOUBLE([a1 statisticsForType_]);

  if (v6 == 0.0)
  {
    goto LABEL_5;
  }

  v7 = [*&v6 minimumQuantity];

  if (!v7)
  {
    v6 = 0.0;
LABEL_5:
    v13 = 1;
    goto LABEL_6;
  }

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 degreeCelsiusUnit];
  [v9 doubleValueForUnit_];
  v12 = v11;

  v13 = 0;
  v6 = v12;
LABEL_6:
  v14 = MEMORY[0x24C1D98C0](v4);
  v15 = [a1 statisticsForType_];

  if (!v15 || (v16 = [v15 maximumQuantity], v15, !v16))
  {
    v22 = 0.0;
    if ((v13 & 1) == 0)
    {
      v23 = 0;
      goto LABEL_20;
    }

    v23 = 2;
    goto LABEL_12;
  }

  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 degreeCelsiusUnit];
  [v18 doubleValueForUnit_];
  v21 = v20;

  v22 = v21;
  if (v13)
  {
    v23 = 0;
LABEL_12:
    v6 = v22;
    v22 = 0.0;
    goto LABEL_20;
  }

  if (v21 <= v6)
  {
    v24 = v21;
  }

  else
  {
    v24 = v6;
  }

  if (v21 <= v6)
  {
    v22 = v6;
  }

  v23 = 1;
  v6 = v24;
LABEL_20:
  *a2 = v6;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
}

void static DiveWorkoutUtil.waterTemperatureRange(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 metadata];
  if (!v4 || (v5 = v4, sub_24882AE68(), v5, v6 = , static TemperatureRange.temperatureRange(fromMetadata:)(v6, &v8), swift_bridgeObjectRelease_n(), v7 = v9, v9 == 255))
  {

    sub_2487FB388(a1, a2);
  }

  else
  {
    *a2 = v8;
    *(a2 + 16) = v7;
  }
}

uint64_t static DiveWorkoutUtil.numberOfDives(from:)(void *a1)
{
  v1 = *(_s9DepthCore15DiveWorkoutUtilO23underwaterTimeIntervals4fromSay10Foundation12DateIntervalVGSo9HKWorkoutC_tFZ_0(a1) + 16);

  return v1;
}

void static DiveWorkoutUtil.deviceType(fromWorkout:)(void *a1@<X0>, char *a2@<X8>)
{
  v3 = [a1 device];
  if (v3 && (v4 = v3, v5 = [v3 hardwareVersion], v4, v5))
  {
    v6 = sub_24882AEF8();
    v8 = v7;

    static DeviceType.deviceType(forDeviceIdentifier:)(v6, v8, &v10);

    v9 = v10;
  }

  else
  {
    v9 = 3;
  }

  *a2 = v9;
}

void static DiveWorkoutUtil.depthLimit(fromWorkout:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 device];
  if (v3 && (v4 = v3, v5 = [v3 hardwareVersion], v4, v5))
  {
    v6 = sub_24882AEF8();
    v8 = v7;

    static DeviceType.deviceType(forDeviceIdentifier:)(v6, v8, &v11);

    if (v11)
    {
      if (v11 == 1)
      {
        if (qword_27EEA9940 != -1)
        {
          swift_once();
        }

        v9 = &xmmword_27EEB0FD0;
      }

      else
      {
        if (qword_27EEA9948 != -1)
        {
          swift_once();
        }

        v9 = &xmmword_27EEB0FE0;
      }
    }

    else
    {
      if (qword_27EEA9938 != -1)
      {
        swift_once();
      }

      v9 = &xmmword_27EEB0FC0;
    }

    v10 = *(v9 + 1);
    *a2 = *v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }
}

void static DiveWorkoutUtil.waterDepthFrom(depthValue:workout:)(id a1@<X1>, double *a2@<X0>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = [a1 device];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = [v5 hardwareVersion];

  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = sub_24882AEF8();
  v10 = v9;

  static DeviceType.deviceType(forDeviceIdentifier:)(v8, v10, &v13);

  if (v13)
  {
    if (v13 == 1)
    {
      if (qword_27EEA9940 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_27EEB0FD0 + 1;
    }

    else
    {
      if (qword_27EEA9948 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_27EEB0FE0 + 1;
    }
  }

  else
  {
    if (qword_27EEA9938 != -1)
    {
      swift_once();
    }

    v11 = &xmmword_27EEB0FC0 + 1;
  }

  if (*v11 <= v4)
  {
    v12 = 2;
  }

  else
  {
LABEL_15:
    v12 = 1;
  }

  *a3 = v4;
  *(a3 + 8) = v12;
}

void static DiveWorkoutUtil.maxDepth(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 metadata];
  if (!v4 || (v5 = v4, v6 = sub_24882AE68(), v5, static WaterDepth.maxDepth(fromMetadata:)(v6, &v14), , v7 = v15, v15 == 255))
  {
    sub_2487FCC20(0, &qword_27EEA9C70, 0x277CCD830);
    v8 = MEMORY[0x24C1D98C0](*MEMORY[0x277CCCC90]);
    v9 = [a1 statisticsForType_];

    if (v9)
    {
      v10 = [v9 maximumQuantity];

      if (v10)
      {
        v11 = [objc_opt_self() meterUnit];
        [v10 doubleValueForUnit_];
        v13 = v12;

        v14 = v13;
        static DiveWorkoutUtil.waterDepthFrom(depthValue:workout:)(a1, &v14, a2);

        return;
      }
    }

    *a2 = 0;
    v7 = 3;
  }

  else
  {
    *a2 = v14;
  }

  *(a2 + 8) = v7;
}

size_t DiveWorkout.underwaterTimeIntervals.getter()
{
  v36 = sub_24882AA88();
  v1 = *(v36 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v36, v3, v4, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*v0 workoutEvents];
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v10 = v8;
  v35 = v7;
  sub_2487FCC20(0, &qword_27EEA9C78, 0x277CCDC68);
  v11 = sub_24882AFF8();

  v38 = v9;
  if (v11 >> 62)
  {
    goto LABEL_35;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = 0;
    v34 = "taKeyDiveIDString";
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C1D9A30](v14, v11);
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v12 = sub_24882B358();
        goto LABEL_4;
      }

      v18 = [v15 metadata];
      if (v18)
      {
        v19 = v18;
        v20 = sub_24882AE68();

        if (*(v20 + 16) && (v21 = sub_2487F8B2C(0xD000000000000024, v34 | 0x8000000000000000), (v22 & 1) != 0))
        {
          sub_2487F8BA4(*(v20 + 56) + 32 * v21, v37);

          if (swift_dynamicCast())
          {
            sub_24882B308();
            v23 = *(v38 + 16);
            sub_24882B328();
            sub_24882B338();
            sub_24882B318();
            goto LABEL_8;
          }
        }

        else
        {
        }
      }

LABEL_8:
      ++v14;
      if (v17 == v12)
      {
        v24 = v38;
        v13 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
LABEL_21:

  if ((v24 & 0x8000000000000000) == 0 && (v24 & 0x4000000000000000) == 0)
  {
    v25 = *(v24 + 16);
    if (v25)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  v25 = sub_24882B358();
  if (!v25)
  {
LABEL_37:

    return MEMORY[0x277D84F90];
  }

LABEL_24:
  v37[0] = v13;
  result = sub_2487FC248(0, v25 & ~(v25 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v27 = 0;
    v9 = v37[0];
    v28 = v35;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x24C1D9A30](v27, v24);
      }

      else
      {
        v29 = *(v24 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = [v30 dateInterval];
      sub_24882AA38();

      v37[0] = v9;
      v33 = *(v9 + 16);
      v32 = *(v9 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2487FC248(v32 > 1, v33 + 1, 1);
        v9 = v37[0];
      }

      ++v27;
      *(v9 + 16) = v33 + 1;
      (*(v1 + 32))(v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v33, v28, v36);
    }

    while (v25 != v27);

    return v9;
  }

  __break(1u);
  return result;
}

double DiveWorkout.underwaterTime.getter()
{
  v1 = sub_24882AA88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4, v5, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = [*v0 metadata];
  if (v10)
  {
    v11 = v10;
    v12 = sub_24882AE68();

    if (*(v12 + 16) && (v13 = sub_2487F8B2C(0xD000000000000023, 0x8000000248830030), (v14 & 1) != 0))
    {
      sub_2487F8BA4(*(v12 + 56) + 32 * v13, v29);

      if (swift_dynamicCast())
      {
        return *&v28[1];
      }
    }

    else
    {
    }
  }

  v29[0] = v9;
  v16 = *(DiveWorkout.underwaterTimeIntervals.getter() + 16);

  if (v16)
  {
    v29[0] = v9;
    v17 = DiveWorkout.underwaterTimeIntervals.getter();
    v18 = *(v17 + 16);
    if (v18)
    {
      v21 = *(v2 + 16);
      v19 = v2 + 16;
      v20 = v21;
      v22 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v23 = *(v19 + 56);
      v15 = 0.0;
      do
      {
        v20(v8, v22, v1);
        sub_24882AA78();
        v25 = v24;
        (*(v19 - 8))(v8, v1);
        v15 = v15 + v25;
        v22 += v23;
        --v18;
      }

      while (v18);
    }

    else
    {

      return 0.0;
    }
  }

  else
  {
    [v9 duration];
    return v26;
  }

  return v15;
}

size_t sub_2487FC248(size_t a1, int64_t a2, char a3)
{
  result = sub_2487FC2F0(a1, a2, a3, *v3, &unk_27EEA9C90, &qword_24882C120, MEMORY[0x277CC88A8]);
  *v3 = result;
  return result;
}

size_t sub_2487FC28C(size_t a1, int64_t a2, char a3)
{
  result = sub_2487FC2F0(a1, a2, a3, *v3, &qword_27EEA9C88, &qword_24882C118, type metadata accessor for DepthIntervalSummary);
  *v3 = result;
  return result;
}

char *sub_2487FC2D0(char *a1, int64_t a2, char a3)
{
  result = sub_2487FC4CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2487FC2F0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2487FC4CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9C80, "@W");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t _s9DepthCore15DiveWorkoutUtilO23underwaterTimeIntervals4fromSay10Foundation12DateIntervalVGSo9HKWorkoutC_tFZ_0(void *a1)
{
  v38 = sub_24882AA88();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v38, v4, v5, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 workoutEvents];
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v11 = v9;
  v37 = v8;
  sub_2487FCC20(0, &qword_27EEA9C78, 0x277CCDC68);
  v12 = sub_24882AFF8();

  v41 = v10;
  if (v12 >> 62)
  {
    goto LABEL_36;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = 0;
    v36 = "taKeyDiveIDString";
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x24C1D9A30](v15, v12);
      }

      else
      {
        if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v13 = sub_24882B358();
        goto LABEL_4;
      }

      v19 = [v16 metadata];
      if (!v19)
      {
        goto LABEL_17;
      }

      v20 = v19;
      v21 = sub_24882AE68();

      if (!*(v21 + 16))
      {
        break;
      }

      v22 = sub_2487F8B2C(0xD000000000000024, v36 | 0x8000000000000000);
      if ((v23 & 1) == 0)
      {
        break;
      }

      sub_2487F8BA4(*(v21 + 56) + 32 * v22, v40);

      if ((swift_dynamicCast() & 1) == 0 || v39 != 1)
      {
        goto LABEL_17;
      }

      sub_24882B308();
      v24 = *(v41 + 16);
      sub_24882B328();
      sub_24882B338();
      sub_24882B318();
LABEL_18:
      ++v15;
      if (v18 == v13)
      {
        v25 = v41;
        v14 = MEMORY[0x277D84F90];
        goto LABEL_22;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_22:

  if ((v25 & 0x8000000000000000) == 0 && (v25 & 0x4000000000000000) == 0)
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  v26 = sub_24882B358();
  if (!v26)
  {
LABEL_38:

    return MEMORY[0x277D84F90];
  }

LABEL_25:
  v40[0] = v14;
  result = sub_2487FC248(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v10 = v40[0];
    v29 = v37;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x24C1D9A30](v28, v25);
      }

      else
      {
        v30 = *(v25 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = [v31 dateInterval];
      sub_24882AA38();

      v40[0] = v10;
      v34 = *(v10 + 16);
      v33 = *(v10 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_2487FC248(v33 > 1, v34 + 1, 1);
        v10 = v40[0];
      }

      ++v28;
      *(v10 + 16) = v34 + 1;
      (*(v2 + 32))(v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v34, v29, v38);
    }

    while (v26 != v28);

    return v10;
  }

  __break(1u);
  return result;
}

double _s9DepthCore15DiveWorkoutUtilO14underwaterTime4fromSdSo9HKWorkoutC_tFZ_0(void *a1)
{
  v2 = sub_24882AA88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5, v6, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9DepthCore15DiveWorkoutUtilO23underwaterTimeIntervals4fromSay10Foundation12DateIntervalVGSo9HKWorkoutC_tFZ_0(a1);
  v11 = [a1 metadata];
  if (v11)
  {
    v12 = v11;
    v13 = sub_24882AE68();

    if (*(v13 + 16) && (v14 = sub_2487F8B2C(0xD000000000000023, 0x8000000248830030), (v15 & 1) != 0))
    {
      sub_2487F8BA4(*(v13 + 56) + 32 * v14, v28);

      if (swift_dynamicCast())
      {

        return *&v27[1];
      }
    }

    else
    {
    }
  }

  v17 = *(v10 + 16);
  if (v17)
  {
    v20 = *(v3 + 16);
    v18 = v3 + 16;
    v19 = v20;
    v21 = v10 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v22 = *(v18 + 56);
    v16 = 0.0;
    do
    {
      v19(v9, v21, v2);
      sub_24882AA78();
      v24 = v23;
      (*(v18 - 8))(v9, v2);
      v16 = v16 + v24;
      v21 += v22;
      --v17;
    }

    while (v17);
  }

  else
  {

    [a1 duration];
    return v25;
  }

  return v16;
}

uint64_t sub_2487FCC20(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2487FCC84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2487FCCCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DepthFeatureKey.isEnabled.getter()
{
  if (qword_27EEA9930 != -1)
  {
    swift_once();
  }

  v0 = off_27EEA9CA0;
  swift_beginAccess();
  v1 = v0[2];
  if (*(v1 + 16) && (v2 = sub_2487F93A8(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + v2);
  }

  else
  {
    v4 = 0;
  }

  swift_endAccess();
  return v4;
}

uint64_t DepthFeatures.isEnabled(_:)()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (*(v1 + 16) && (v2 = sub_2487F93A8(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + v2);
  }

  else
  {
    v4 = 0;
  }

  swift_endAccess();
  return v4;
}

uint64_t DepthFeatureKey.hashValue.getter()
{
  sub_24882B528();
  MEMORY[0x24C1D9CA0](0);
  return sub_24882B548();
}

uint64_t sub_2487FCEBC()
{
  sub_24882B528();
  MEMORY[0x24C1D9CA0](0);
  return sub_24882B548();
}

uint64_t sub_2487FCF00()
{
  sub_24882B528();
  MEMORY[0x24C1D9CA0](0);
  return sub_24882B548();
}

uint64_t sub_2487FCF68()
{
  type metadata accessor for DepthFeatures();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = sub_2487F9400(MEMORY[0x277D84F90]);
  v2 = sub_2487F9400(v1);
  swift_beginAccess();
  v3 = *(v0 + 16);
  *(v0 + 16) = v2;

  off_27EEA9CA0 = v0;
  return result;
}

uint64_t static DepthFeatures.shared.getter()
{
  if (qword_27EEA9930 != -1)
  {
    swift_once();
  }
}

uint64_t DepthFeatures.override(feature:_:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  v4 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_2487FDA40(a2, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v7;
  return swift_endAccess();
}

uint64_t DepthFeatures.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DepthFeatures.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2487FD128(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9AF0, &qword_24882BF80);
  v38 = a2;
  result = sub_24882B378();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_24882B528();
      sub_24882AF88();
      result = sub_24882B548();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2487FD3D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9A28, qword_24882BF68);
  v38 = a2;
  result = sub_24882B378();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_24882B528();
      sub_24882AF88();
      result = sub_24882B548();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2487FD670(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9A20, &qword_24882BF60);
  result = sub_24882B378();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 56) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_24882B528();
      MEMORY[0x24C1D9CA0](0);
      result = sub_24882B548();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 56) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_2487FD8DC(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2487F8B2C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2487FD3D0(v16, a4 & 1);
      v20 = *v5;
      result = sub_2487F8B2C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_24882B4C8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2487FDCC8();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

unint64_t sub_2487FDA40(char a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = sub_2487F93A8();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 >= v12 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v14 >= v12 && (a2 & 1) == 0)
  {
    v15 = result;
    sub_2487FDE30();
    result = v15;
    goto LABEL_8;
  }

  sub_2487FD670(v12, a2 & 1);
  v16 = *v3;
  result = sub_2487F93A8();
  if ((v13 & 1) == (v17 & 1))
  {
LABEL_8:
    v18 = *v3;
    if (v13)
    {
      *(*(v18 + 56) + result) = a1 & 1;
      return result;
    }

    *(v18 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v18 + 56) + result) = a1 & 1;
    v19 = *(v18 + 16);
    v11 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v11)
    {
      *(v18 + 16) = v20;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_24882B4C8();
  __break(1u);
  return result;
}

void *sub_2487FDB58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9AF0, &qword_24882BF80);
  v2 = *v0;
  v3 = sub_24882B368();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2487FDCC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9A28, qword_24882BF68);
  v2 = *v0;
  v3 = sub_24882B368();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2487FDE30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9A20, &qword_24882BF60);
  v2 = *v0;
  v3 = sub_24882B368();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = *(*(v2 + 56) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2487FDF74()
{
  result = qword_27EEA9CA8;
  if (!qword_27EEA9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9CA8);
  }

  return result;
}

double *static TemperatureRange.orderedRange(t1:t2:)@<X0>(double *result@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result >= *a2)
  {
    v4 = *a2;
  }

  else
  {
    v4 = *result;
  }

  if (*result < *a2)
  {
    v3 = *a2;
  }

  *a3 = v4;
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

void TemperatureRange.temperatureSpan.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (*(v1 + 16))
  {
    if (v2 == 1)
    {
      *a1 = vabdd_f64(*v1, *(v1 + 8));
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 1;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = v2;
  }
}

void TemperatureRange.average.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (*(v1 + 16))
  {
    if (v3 == 1)
    {
      *a1 = (*(v1 + 8) + v2) * 0.5;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 1;
    }
  }

  else
  {
    *a1 = v2;
    *(a1 + 8) = v3;
  }
}

void TemperatureRange.minValue.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 16) > 1u;
  if (*(v1 + 16) > 1u)
  {
    v2 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
}

void TemperatureRange.maxValue.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 == 1)
  {
    v3 = *(v1 + 8);
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v2 != 1;
}

uint64_t TemperatureRange.values.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v2 = v0[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9CB0, &qword_24882C210);
      result = swift_allocObject();
      *(result + 16) = xmmword_24882BFE0;
      *(result + 32) = v1;
      *(result + 40) = v2;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9CB0, &qword_24882C210);
    result = swift_allocObject();
    *(result + 16) = xmmword_24882BFD0;
    *(result + 32) = v1;
  }

  return result;
}

double *TemperatureRange.updated(withTemperature:)@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v5 = *v2;
  v4 = *(v2 + 8);
  if (!*(v2 + 16))
  {
    v7 = *v2;
    if (v3 == v5)
    {
      *a2 = v5;
      *(a2 + 8) = v4;
      *(a2 + 16) = 0;
      return result;
    }

    if (v3 <= v5)
    {
      *a2 = v3;
      *(a2 + 8) = v5;
      goto LABEL_14;
    }

    *a2 = v5;
    goto LABEL_12;
  }

  if (*(v2 + 16) != 1)
  {
    *a2 = v3;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  v6 = *v2;
  if (v3 >= v5)
  {
    v8 = *(v2 + 8);
    *a2 = v5;
    if (v3 <= v4)
    {
      goto LABEL_9;
    }

LABEL_12:
    *(a2 + 8) = v3;
    goto LABEL_14;
  }

  *a2 = v3;
LABEL_9:
  *(a2 + 8) = v4;
LABEL_14:
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_2487FE258()
{
  v1 = *v0;
  sub_24882B528();
  MEMORY[0x24C1D9CA0](v1);
  return sub_24882B548();
}

uint64_t sub_2487FE2A0()
{
  v1 = *v0;
  sub_24882B528();
  MEMORY[0x24C1D9CA0](v1);
  return sub_24882B548();
}

uint64_t sub_2487FE2E4()
{
  v1 = 0x72616C75676E6973;
  if (*v0 != 1)
  {
    v1 = 0x65676E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_2487FE33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2487FFD70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2487FE37C(uint64_t a1)
{
  v2 = sub_2487FF410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2487FE3B8(uint64_t a1)
{
  v2 = sub_2487FF410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2487FE3F4()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_2487FE410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_24882B4B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24882B4B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2487FE4DC(uint64_t a1)
{
  v2 = sub_2487FF464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2487FE518(uint64_t a1)
{
  v2 = sub_2487FF464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2487FE560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24882B4B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2487FE5E0(uint64_t a1)
{
  v2 = sub_2487FF50C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2487FE61C(uint64_t a1)
{
  v2 = sub_2487FF50C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2487FE664(uint64_t a1)
{
  v2 = sub_2487FF560();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2487FE6A0(uint64_t a1)
{
  v2 = sub_2487FF560();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureRange.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9CB8, &qword_24882C218);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9CC0, &qword_24882C220);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9, v11, v12, v13);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9CC8, &qword_24882C228);
  v40 = *(v16 - 8);
  v17 = *(v40 + 64);
  MEMORY[0x28223BE20](v16, v18, v19, v20);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9CD0, &qword_24882C230);
  v47 = *(v23 - 8);
  v48 = v23;
  v24 = *(v47 + 64);
  MEMORY[0x28223BE20](v23, v25, v26, v27);
  v29 = &v40 - v28;
  v46 = *v1;
  v30 = v1[1];
  v31 = *(v1 + 16);
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2487FF410();
  sub_24882B568();
  if (v31)
  {
    if (v31 != 1)
    {
      LOBYTE(v51) = 0;
      sub_2487FF560();
      v38 = v48;
      sub_24882B438();
      (*(v40 + 8))(v22, v16);
      return (*(v47 + 8))(v29, v38);
    }

    LOBYTE(v51) = 2;
    sub_2487FF464();
    v33 = v43;
    v34 = v48;
    sub_24882B438();
    v51 = v46;
    v50 = 0;
    sub_2487FF4B8();
    v35 = v45;
    v36 = v49;
    sub_24882B488();
    if (!v36)
    {
      v51 = v30;
      v50 = 1;
      sub_24882B488();
    }

    (*(v44 + 8))(v33, v35);
  }

  else
  {
    LOBYTE(v51) = 1;
    sub_2487FF50C();
    v34 = v48;
    sub_24882B438();
    v51 = v46;
    sub_2487FF4B8();
    v37 = v42;
    sub_24882B488();
    (*(v41 + 8))(v15, v37);
  }

  return (*(v47 + 8))(v29, v34);
}

uint64_t TemperatureRange.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D00, &qword_24882C238);
  v67 = *(v64 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v64, v4, v5, v6);
  v70 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D08, &qword_24882C240);
  v9 = *(v8 - 8);
  v65 = v8;
  v66 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11, v12, v13);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D10, &qword_24882C248);
  v69 = *(v16 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x28223BE20](v16, v18, v19, v20);
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D18, &unk_24882C250);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26, v27, v28);
  v30 = &v61 - v29;
  v31 = a1[3];
  v32 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_2487FF410();
  v33 = v71;
  sub_24882B558();
  if (v33)
  {
    return __swift_destroy_boxed_opaque_existential_0(v72);
  }

  v62 = 0;
  v63 = v30;
  v35 = v69;
  v34 = v70;
  v71 = v24;
  v36 = sub_24882B428();
  v37 = v36;
  v38 = *(v36 + 16);
  if (!v38 || ((v39 = *(v36 + 32), v38 == 1) ? (v40 = v39 == 3) : (v40 = 1), v40))
  {
    v41 = sub_24882B2E8();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9D20, &qword_24882CE60) + 48);
    *v43 = &type metadata for TemperatureRange;
    v45 = v63;
    sub_24882B3C8();
    sub_24882B2D8();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v71 + 8))(v45, v23);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v72);
  }

  if (!*(v36 + 32))
  {
    LOBYTE(v75) = 0;
    sub_2487FF560();
    v51 = v62;
    v50 = v63;
    sub_24882B3B8();
    if (!v51)
    {
      (*(v35 + 8))(v22, v16);
      (*(v71 + 8))(v50, v23);
      swift_unknownObjectRelease();
      v57 = 0;
      v55 = 0;
      v56 = 2;
      v49 = v68;
      goto LABEL_21;
    }

LABEL_18:
    (*(v71 + 8))(v50, v23);
    goto LABEL_9;
  }

  v47 = v63;
  if (v39 != 1)
  {
    LOBYTE(v75) = 2;
    sub_2487FF464();
    v50 = v47;
    v52 = v62;
    sub_24882B3B8();
    v53 = v68;
    if (!v52)
    {
      v69 = v37;
      LOBYTE(v74) = 0;
      sub_2487FF5B4();
      v58 = v34;
      v59 = v64;
      sub_24882B418();
      v60 = v71;
      v57 = v75;
      v73 = 1;
      sub_24882B418();
      (*(v67 + 8))(v58, v59);
      (*(v60 + 8))(v63, v23);
      swift_unknownObjectRelease();
      v55 = v74;
      v56 = 1;
      v49 = v53;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  LOBYTE(v75) = 1;
  sub_2487FF50C();
  v48 = v62;
  sub_24882B3B8();
  v49 = v68;
  if (v48)
  {
    (*(v71 + 8))(v47, v23);
    goto LABEL_9;
  }

  sub_2487FF5B4();
  v54 = v65;
  sub_24882B418();
  (*(v66 + 8))(v15, v54);
  (*(v71 + 8))(v47, v23);
  swift_unknownObjectRelease();
  v55 = 0;
  v56 = 0;
  v57 = v75;
LABEL_21:
  *v49 = v57;
  *(v49 + 8) = v55;
  *(v49 + 16) = v56;
  return __swift_destroy_boxed_opaque_existential_0(v72);
}

uint64_t sub_2487FF248()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2487FF27C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2487FF2B0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2487FF2E4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _s9DepthCore16TemperatureRangeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v10 = *a1;
    v11 = *a2;
    return v2 == v3;
  }

  v5 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (v4 == 1)
    {
      v6 = *a1;
      v7 = *a2;
      if (v2 == v3)
      {
        v8 = *(a2 + 8);
        return *(a1 + 8) == v5;
      }
    }

    return 0;
  }

  v12 = *&v5 | *&v3;
  return v4 == 2 && v12 == 0;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2487FF410()
{
  result = qword_27EEA9CD8;
  if (!qword_27EEA9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9CD8);
  }

  return result;
}

unint64_t sub_2487FF464()
{
  result = qword_27EEA9CE0;
  if (!qword_27EEA9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9CE0);
  }

  return result;
}

unint64_t sub_2487FF4B8()
{
  result = qword_27EEA9CE8;
  if (!qword_27EEA9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9CE8);
  }

  return result;
}

unint64_t sub_2487FF50C()
{
  result = qword_27EEA9CF0;
  if (!qword_27EEA9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9CF0);
  }

  return result;
}

unint64_t sub_2487FF560()
{
  result = qword_27EEA9CF8;
  if (!qword_27EEA9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9CF8);
  }

  return result;
}

unint64_t sub_2487FF5B4()
{
  result = qword_27EEA9D28;
  if (!qword_27EEA9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D28);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TemperatureRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TemperatureRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2487FF6A8(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2487FF6C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TemperatureRange.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TemperatureRange.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemperatureRange.RangeCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InterfaceSettings(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
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

unint64_t sub_2487FF9AC()
{
  result = qword_27EEA9D30;
  if (!qword_27EEA9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D30);
  }

  return result;
}

unint64_t sub_2487FFA04()
{
  result = qword_27EEA9D38;
  if (!qword_27EEA9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D38);
  }

  return result;
}

unint64_t sub_2487FFA5C()
{
  result = qword_27EEA9D40;
  if (!qword_27EEA9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D40);
  }

  return result;
}

unint64_t sub_2487FFAB4()
{
  result = qword_27EEA9D48;
  if (!qword_27EEA9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D48);
  }

  return result;
}

unint64_t sub_2487FFB0C()
{
  result = qword_27EEA9D50;
  if (!qword_27EEA9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D50);
  }

  return result;
}

unint64_t sub_2487FFB64()
{
  result = qword_27EEA9D58;
  if (!qword_27EEA9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D58);
  }

  return result;
}

unint64_t sub_2487FFBBC()
{
  result = qword_27EEA9D60;
  if (!qword_27EEA9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D60);
  }

  return result;
}

unint64_t sub_2487FFC14()
{
  result = qword_27EEA9D68;
  if (!qword_27EEA9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D68);
  }

  return result;
}

unint64_t sub_2487FFC6C()
{
  result = qword_27EEA9D70;
  if (!qword_27EEA9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D70);
  }

  return result;
}

unint64_t sub_2487FFCC4()
{
  result = qword_27EEA9D78;
  if (!qword_27EEA9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D78);
  }

  return result;
}

unint64_t sub_2487FFD1C()
{
  result = qword_27EEA9D80;
  if (!qword_27EEA9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9D80);
  }

  return result;
}

uint64_t sub_2487FFD70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_24882B4B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C75676E6973 && a2 == 0xE800000000000000 || (sub_24882B4B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24882B4B8();

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

uint64_t sub_2487FFE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1, v4, a3, a4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_24882AF48();
}

uint64_t StateRepresentable.on(_:transitionTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v27 = a1;
  v28 = a2;
  v26 = a5;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = a3;
  v30 = AssociatedTypeWitness;
  v31 = a4;
  v32 = AssociatedConformanceWitness;
  v15 = type metadata accessor for StateDescription();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18, v19, v20);
  v22 = &v25 - v21;
  (*(v9 + 16))(v12, v6, a3);
  StateDescription.init(state:)(v12, a3, AssociatedConformanceWitness, v22);
  StateDescription.on(_:transitionTo:)(v27, v28, v15, v23, v26);
  return (*(v16 + 8))(v22, v15);
}

uint64_t StateRepresentable.onEntry(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return sub_248800178(a1, a2, a3, a4, StateDescription.onEntry(perform:), a5);
}

{
  return sub_248800178(a1, a2, a3, a4, StateDescription.onEntry(perform:), a5);
}

{
  return sub_248800178(a1, a2, a3, a4, StateDescription.onEntry(perform:), a5);
}

uint64_t sub_248800178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v27 = a2;
  v28 = a5;
  v7 = v6;
  v25 = a6;
  v26 = a1;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = a3;
  v30 = AssociatedTypeWitness;
  v31 = a4;
  v32 = AssociatedConformanceWitness;
  v16 = type metadata accessor for StateDescription();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19, v20, v21);
  v23 = &v25 - v22;
  (*(v10 + 16))(v13, v7, a3);
  StateDescription.init(state:)(v13, a3, AssociatedConformanceWitness, v23);
  v28(v26, v27, v16);
  return (*(v17 + 8))(v23, v16);
}

int *StateDescription.init(state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  (*(v8 + 16))(a4, a1, a2);
  type metadata accessor for StateTransition();
  v9 = *(a3 + 8);
  v10 = sub_24882AE48();
  (*(v8 + 8))(a1, a2);
  result = type metadata accessor for StateDescription();
  *(a4 + result[13]) = v10;
  v12 = (a4 + result[14]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a4 + result[15]);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t StateDescription.on(_:transitionTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v31 = a1;
  v32 = a2;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 24);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v9, v16, v12, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StateTransition();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23, v24, v25);
  v27 = &v31 - v26;
  (*(v14 + 16))(v19, v31, v13);
  (*(v7 + 16))(v11, v32, v6);
  sub_248800EE0(v19, v11, v6, v13, v27);
  sub_248801084(v27, a3, v28, v29, v33);
  return (*(v21 + 8))(v27, v20);
}

uint64_t StateDescription.onEntry(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v27 = a1;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v6 + *(v15 + 56)))
  {
    result = sub_24882B348();
    __break(1u);
  }

  else
  {
    (*(v11 + 16))(v14, v6, v10);
    v16 = *(v6 + *(a3 + 52));
    v17 = (v6 + *(a3 + 60));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(a3 + 40);
    v21 = *(v11 + 32);
    v26 = *(a3 + 24);
    v21(a5, v14, v10);
    v28 = v10;
    v29 = v26;
    v30 = v20;
    v22 = type metadata accessor for StateDescription();
    *(a5 + v22[13]) = v16;
    v23 = (a5 + v22[14]);
    *v23 = v27;
    v23[1] = a2;
    v24 = (a5 + v22[15]);
    *v24 = v18;
    v24[1] = v19;

    sub_2487F5FD8(v18);
  }

  return result;
}

{
  v6 = v5;
  v31 = a5;
  v32 = a2;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + *(v14 + 56)))
  {
    result = sub_24882B348();
    __break(1u);
  }

  else
  {
    v15 = swift_allocObject();
    v17 = *(a3 + 24);
    v16 = *(a3 + 32);
    *(v15 + 2) = v9;
    *(v15 + 3) = v17;
    v18 = *(a3 + 40);
    *(v15 + 4) = v16;
    *(v15 + 5) = v18;
    v19 = v32;
    *(v15 + 6) = a1;
    *(v15 + 7) = v19;
    (*(v10 + 16))(v13, v6, v9);
    v20 = *(v6 + *(a3 + 52));
    v21 = (v6 + *(a3 + 60));
    v22 = v21[1];
    v30 = *v21;
    v23 = v31;
    (*(v10 + 32))(v31, v13, v9);
    v33 = v9;
    v34 = v17;
    v35 = v16;
    v36 = v18;
    v24 = type metadata accessor for StateDescription();
    *(v23 + v24[13]) = v20;
    v25 = (v23 + v24[14]);
    *v25 = sub_248801518;
    v25[1] = v15;
    v26 = (v23 + v24[15]);
    v27 = v30;
    *v26 = v30;
    v26[1] = v22;

    return sub_2487F5FD8(v27);
  }

  return result;
}

uint64_t StateRepresentable.onExit(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return sub_248800178(a1, a2, a3, a4, StateDescription.onExit(perform:), a5);
}

{
  return sub_248800178(a1, a2, a3, a4, StateDescription.onExit(perform:), a5);
}

uint64_t sub_248800B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v11 = swift_allocObject();
  v12 = *(a3 + 32);
  *(v11 + 16) = *(a3 + 16);
  *(v11 + 32) = v12;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  a6(a5, v11, a3);
}

uint64_t StateDescription.onExit(perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a1;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + *(v14 + 60)))
  {
    result = sub_24882B348();
    __break(1u);
  }

  else
  {
    (*(v10 + 16))(v13, v5, v9);
    v15 = *(v5 + *(a3 + 52));
    v16 = (v5 + *(a3 + 56));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(a3 + 40);
    v20 = *(v10 + 32);
    v25 = *(a3 + 24);
    v20(a5, v13, v9);
    v27 = v9;
    v28 = v25;
    v29 = v19;
    v21 = type metadata accessor for StateDescription();
    *(a5 + v21[13]) = v15;
    v22 = (a5 + v21[14]);
    *v22 = v17;
    v22[1] = v18;
    v23 = (a5 + v21[15]);
    *v23 = v26;
    v23[1] = a2;

    sub_2487F5FD8(v17);
  }

  return result;
}

{
  v6 = v5;
  v31 = a5;
  v32 = a2;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + *(v14 + 60)))
  {
    result = sub_24882B348();
    __break(1u);
  }

  else
  {
    v15 = swift_allocObject();
    v17 = *(a3 + 24);
    v16 = *(a3 + 32);
    *(v15 + 2) = v9;
    *(v15 + 3) = v17;
    v18 = *(a3 + 40);
    *(v15 + 4) = v16;
    *(v15 + 5) = v18;
    v19 = v32;
    *(v15 + 6) = a1;
    *(v15 + 7) = v19;
    (*(v10 + 16))(v13, v6, v9);
    v20 = *(a3 + 56);
    v21 = *(v6 + *(a3 + 52));
    v22 = *(v6 + v20 + 8);
    v30 = *(v6 + v20);
    v23 = v31;
    (*(v10 + 32))(v31, v13, v9);
    v33 = v9;
    v34 = v17;
    v35 = v16;
    v36 = v18;
    v24 = type metadata accessor for StateDescription();
    *(v23 + v24[13]) = v21;
    v25 = (v23 + v24[14]);
    v26 = v30;
    *v25 = v30;
    v25[1] = v22;
    v27 = (v23 + v24[15]);
    *v27 = sub_248801B2C;
    v27[1] = v15;

    return sub_2487F5FD8(v26);
  }

  return result;
}

int *StateRepresentable.emptyStateDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a1);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return StateDescription.init(state:)(v9, a1, AssociatedConformanceWitness, a5);
}

uint64_t sub_248800EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for StateTransition();
  v9 = *(*(a3 - 8) + 32);
  v10 = a5 + *(v8 + 36);

  return v9(v10, a2, a3);
}

int *StateDescription.init(state:transitions:entryHandler:exitHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  result = type metadata accessor for StateDescription();
  *(a8 + result[13]) = a2;
  v15 = (a8 + result[14]);
  *v15 = a3;
  v15[1] = a4;
  v16 = (a8 + result[15]);
  *v16 = a5;
  v16[1] = a6;
  return result;
}

uint64_t sub_248801084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1;
  v62 = a5;
  v8 = *(a2 + 16);
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  v10 = MEMORY[0x28223BE20](a1, v8, a3, a4);
  v59 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 24);
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v10, v14, v15, v16);
  v58 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v18;
  v19 = type metadata accessor for StateTransition();
  v20 = sub_24882B218();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v26 = MEMORY[0x28223BE20](v20, v23, v24, v25);
  v28 = v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29, v30, v31);
  v33 = v55 - v32;
  v34 = *(a2 + 52);
  v63 = v5;
  v64 = v12;
  v35 = *(v5 + v34);
  v36 = v7;
  v57 = *(a2 + 40);
  v55[1] = *(v57 + 8);
  sub_24882AE98();
  v37 = *(v19 - 8);
  LODWORD(v7) = (*(v37 + 48))(v33, 1, v19);
  (*(v21 + 8))(v33, v20);
  if (v7 == 1)
  {
    v65 = v35;
    v38 = v64;
    (*(v56 + 16))(v58, v36, v64);
    (*(v37 + 16))(v28, v36, v19);
    (*(v37 + 56))(v28, 0, 1, v19);
    sub_24882AE88();

    sub_24882AEA8();
    v39 = v59;
    v40 = v60;
    v41 = v63;
    v42 = v61;
    (*(v60 + 16))(v59, v63, v61);
    v58 = v65;
    v43 = (v41 + *(a2 + 56));
    v44 = *v43;
    v45 = v43[1];
    v46 = (v41 + *(a2 + 60));
    v47 = *v46;
    v48 = v46[1];
    v49 = *(a2 + 32);
    v50 = v62;
    (*(v40 + 32))(v62, v39, v42);
    v66 = v42;
    v67 = v38;
    v68 = v49;
    v69 = v57;
    v51 = type metadata accessor for StateDescription();
    *(v50 + v51[13]) = v58;
    v52 = (v50 + v51[14]);
    *v52 = v44;
    v52[1] = v45;
    v53 = (v50 + v51[15]);
    *v53 = v47;
    v53[1] = v48;
    sub_2487F5FD8(v44);
    return sub_2487F5FD8(v47);
  }

  else
  {
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_24882B288();
    MEMORY[0x24C1D9700](0x206574617453, 0xE600000000000000);
    sub_24882B4A8();
    MEMORY[0x24C1D9700](0xD000000000000023, 0x8000000248830A40);
    sub_24882B4A8();
    result = sub_24882B348();
    __break(1u);
  }

  return result;
}

uint64_t sub_248801538(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_248807F14;

  return v13(a6, a7);
}

uint64_t sub_248801640()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_248801874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a7;
  v43 = a8;
  v40 = a3;
  v41 = a4;
  v38 = a2;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v44 = a10;
  v39 = a9;
  v15 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v37 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15, v19, v20, v21);
  v22 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F48, &qword_24882FBA0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25, v26, v27);
  v29 = &v37 - v28;
  v30 = sub_24882B0B8();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  (*(v17 + 16))(v22, a1, a5);
  (*(v13 + 16))(&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v38, a6);
  v31 = (*(v17 + 80) + 80) & ~*(v17 + 80);
  v32 = (v18 + *(v13 + 80) + v31) & ~*(v13 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  *(v33 + 4) = a5;
  *(v33 + 5) = a6;
  v34 = v43;
  *(v33 + 6) = v42;
  *(v33 + 7) = v34;
  v35 = v41;
  *(v33 + 8) = v40;
  *(v33 + 9) = v35;
  (*(v17 + 32))(&v33[v31], v22, a5);
  (*(v13 + 32))(&v33[v32], v37, a6);

  sub_248825F90(0, 0, v29, v44, v33);
}

uint64_t sub_248801B84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_248801C8C;

  return v13(a6, a7);
}

uint64_t sub_248801C8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_248801D80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9)
{
  v80 = a8;
  v84 = a4;
  v82 = a3;
  v77 = a1;
  v13 = sub_24882B218();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v19 = MEMORY[0x28223BE20](v13, v16, v17, v18);
  v79 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v19, v21, v22, v23);
  v25 = *(a6 - 8);
  v26 = *(v25 + 64);
  v30 = MEMORY[0x28223BE20](v24, v27, v28, v29);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a7 - 1);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30, v35, v36, v37);
  v39 = &v72 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v33 + 16);
  v41 = a5;
  v43 = v42;
  v83 = a7;
  v40(v39, v41, a7);
  v44 = *(v25 + 16);
  v45 = v82;
  v82 = a6;
  v44(v32, v45, a6);
  v46 = *(v14 + 16);
  v47 = v84;
  v84 = v13;
  v76 = v46;
  v46(v43, v47, v13);

  v48 = sub_24882AC68();
  v49 = sub_24882B148();
  v78 = a2;

  if (os_log_type_enabled(v48, v49))
  {
    v73 = v49;
    v74 = v48;
    v75 = v14;
    v81 = v43;
    v50 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v85 = v72;
    *v50 = 136315906;
    *(v50 + 4) = sub_2487F852C(v77, v78, &v85);
    *(v50 + 12) = 2082;
    v51 = v83;
    v52 = (*(a9 + 16))(v83, a9);
    v54 = v53;
    (*(v33 + 8))(v39, v51);
    v55 = sub_2487F852C(v52, v54, &v85);

    *(v50 + 14) = v55;
    *(v50 + 22) = 2082;
    v56 = v82;
    v83 = *(v80 + 40);
    v57 = v83(v82);
    v59 = v58;
    v60 = *(v25 + 8);
    v60(v32, v56);
    v61 = sub_2487F852C(v57, v59, &v85);

    *(v50 + 24) = v61;
    *(v50 + 32) = 2082;
    v62 = v79;
    v63 = v84;
    v76(v79, v81, v84);
    if ((*(v25 + 48))(v62, 1, v56) == 1)
    {
      v64 = *(v75 + 8);
      v64(v62, v63);
      v65 = 0xED00004E4F495449;
      v66 = 0x534E4152545F4F4ELL;
    }

    else
    {
      v67 = v62;
      v66 = (v83)(v56, v80);
      v65 = v68;
      v60(v67, v56);
      v64 = *(v75 + 8);
    }

    v64(v81, v63);
    v69 = sub_2487F852C(v66, v65, &v85);

    *(v50 + 34) = v69;
    v70 = v74;
    _os_log_impl(&dword_2487F4000, v74, v73, "%s: %{public}s ! %{public}s -> %{public}s", v50, 0x2Au);
    v71 = v72;
    swift_arrayDestroy();
    MEMORY[0x24C1DA290](v71, -1, -1);
    MEMORY[0x24C1DA290](v50, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v43, v84);
    (*(v25 + 8))(v32, v82);
    (*(v33 + 8))(v39, v83);
  }
}

uint64_t sub_248802300@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v13 = *(a2 + a3 - 16);
  v14 = *(a2 + a3 - 32);
  v5 = *a1;
  v6 = sub_248806B7C();
  if (v6)
  {
    v8 = v6;
    v9 = v7;
    v10 = swift_allocObject();
    v6 = v8;
    *(v10 + 16) = v14;
    *(v10 + 32) = v13;
    *(v10 + 48) = v8;
    *(v10 + 56) = v9;
    v11 = sub_2488079B4;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *a4 = v11;
  a4[1] = v10;

  return sub_2487F5FD8(v6);
}

uint64_t sub_2488023B0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    v9 = *(v7 - 16);
    *(v8 + 16) = *(v7 - 32);
    *(v8 + 32) = v9;
    *(v8 + 48) = v5;
    *(v8 + 56) = v6;
    v10 = sub_24880798C;
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v11 = *a2;
  sub_2487F5FD8(v5);
  return sub_248802480(v10, v8);
}

uint64_t sub_24880244C()
{
  v0 = sub_248806B7C();
  sub_2487F5FD8(v0);
  return v0;
}

uint64_t sub_248802480(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_248806BB0(v5);
}

uint64_t sub_248802528@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  swift_beginAccess();
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  type metadata accessor for StateDescription();
  v5 = sub_24882B218();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_248802600(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  swift_beginAccess();
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  type metadata accessor for StateDescription();
  v5 = sub_24882B218();
  (*(*(v5 - 8) + 40))(v1 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_2488026E0(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t sub_248802704@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  type metadata accessor for StateDescription();
  v5 = sub_24882B218();
  return (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
}

uint64_t sub_2488027DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  v7 = *(v3 + 80);
  v8 = *(v3 + 96);
  type metadata accessor for StateDescription();
  v5 = sub_24882B218();
  (*(*(v5 - 8) + 40))(v1 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t sub_2488028BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v17[0] = *(*v1 + 80);
  v17[1] = v17[0];
  v17[2] = v3;
  v4 = type metadata accessor for StateDescription();
  v5 = sub_24882B218();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = v17 - v11;
  sub_248802704(v17 - v11);
  if ((*(*(v4 - 8) + 48))(v12, 1, v4))
  {
    (*(v6 + 8))(v12, v5);
    v13 = *&v17[0];
    v14 = *(*&v17[0] - 8);
    v15 = 1;
  }

  else
  {
    v14 = *(*&v17[0] - 8);
    (*(v14 + 16))(a1, v12);
    (*(v6 + 8))(v12, v5);
    v13 = *&v17[0];
    v15 = 0;
  }

  return (*(v14 + 56))(a1, v15, 1, v13);
}

uint64_t sub_248802AD8()
{
  v1 = *v0;
  if (*(v0 + *(*v0 + 168)))
  {
    v4 = *(v1 + 96);
    v5 = *(v1 + 80);
    type metadata accessor for StateDescription();
    v2 = *(v4 + 16);
    sub_24882AE78();

    swift_getWitnessTable();
    return sub_24882B068();
  }

  else
  {
    result = sub_24882B348();
    __break(1u);
  }

  return result;
}

uint64_t sub_248802C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedConformanceWitness = a1;
  v5 = *v4;
  v6 = *(*v4 + 80);
  v139 = *(v6 - 8);
  v7 = v139[8];
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v124 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v8, v10, v11, v12);
  v123 = &v112 - v14;
  MEMORY[0x28223BE20](v13, v15, v16, v17);
  v19 = &v112 - v18;
  v20 = sub_24882B218();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22, v23, v24);
  v26 = &v112 - v25;
  v27 = v5[12];
  v28 = *(v27 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v31, v32, v33);
  v130 = (&v112 - v34);
  v131 = v28;
  v119 = *(swift_getAssociatedConformanceWitness() + 8);
  v132 = AssociatedTypeWitness;
  v127 = swift_getAssociatedTypeWitness();
  v115 = *(v127 - 8);
  v35 = *(v115 + 64);
  MEMORY[0x28223BE20](v127, v36, v37, v38);
  v138 = &v112 - v39;
  *&v40 = v6;
  v122 = v5[11];
  *(&v40 + 1) = v122;
  v117 = v4;
  v41 = v5[13];
  v128 = v27;
  *&v42 = v27;
  v121 = v41;
  *(&v42 + 1) = v41;
  v120 = v42;
  v143 = v42;
  v134 = v40;
  v142 = v40;
  v43 = type metadata accessor for StateDescription();
  v113 = sub_24882B218();
  v129 = *(v113 - 8);
  v44 = *(v129 + 64);
  v48 = MEMORY[0x28223BE20](v113, v45, v46, v47);
  v126 = &v112 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v48, v50, v51, v52);
  v125 = &v112 - v54;
  v58 = MEMORY[0x28223BE20](v53, v55, v56, v57);
  v60 = &v112 - v59;
  v64 = MEMORY[0x28223BE20](v58, v61, v62, v63);
  v66 = &v112 - v65;
  v67 = *(v43 - 8);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v64, v69, v70, v71);
  v73 = &v112 - v72;
  *&v142 = AssociatedConformanceWitness;
  v74 = sub_24882B058();
  swift_getWitnessTable();
  v118 = v74;
  sub_24882B108();
  v75 = v67;
  v78 = *(v67 + 48);
  v76 = v67 + 48;
  v77 = v78;
  if (v78(v66, 1, v43) == 1)
  {
    (*(v129 + 8))(v66, v113);
    DWORD2(v111) = 0;
    *&v111 = 189;
LABEL_13:
    result = sub_24882B348();
    __break(1u);
    return result;
  }

  v116 = v75;
  (*(v75 + 32))(v73, v66, v43);
  sub_248802704(v60);
  v136 = v77;
  v137 = v76;
  v79 = v77(v60, 1, v43);
  v80 = *(v129 + 8);
  v81 = v113;
  v129 += 8;
  v135 = v80;
  v80(v60, v113);
  if (v79 != 1)
  {
    DWORD2(v111) = 0;
    *&v111 = 192;
    goto LABEL_13;
  }

  v114 = v73;
  v141 = AssociatedConformanceWitness;
  swift_getTupleTypeMetadata2();
  v82 = sub_24882B008();
  v83 = *(v128 + 16);
  v84 = sub_248806890(v82, v6, v43, v83);

  v112 = &v112;
  v140 = v84;
  MEMORY[0x28223BE20](v85, v86, v87, v88);
  v89 = v120;
  *(&v112 - 2) = v134;
  v111 = v89;
  *&v134 = v83;
  v90 = sub_24882AE88();
  swift_getWitnessTable();
  *&v120 = v90;
  sub_24882AFD8();

  sub_24882B298();
  sub_24882AFC8();
  v91 = v127;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_24882B228();
  v131 = v139[6];
  v132 = v139 + 6;
  v92 = v131(v26, 1, v6);
  v93 = v43;
  v94 = v125;
  if (v92 != 1)
  {
    v130 = v139[4];
    v104 = (v139 + 1);
    v139 += 4;
    v119 = (v139 - 2);
    v118 = (v116 + 56);
    v130(v19, v26, v6);
    while (1)
    {
      sub_24882AE98();
      if (v136(v94, 1, v93) == 1)
      {
        v135(v94, v81);
        v105 = *v119;
        (*v119)(v123, v19, v6);
        v106 = v93;
        v107 = v124;
        v105(v124, v19, v6);
        v108 = v81;
        v109 = v126;
        v110 = v107;
        v93 = v106;
        v91 = v127;
        StateDescription.init(state:)(v110, v6, v121, v126);
        (*v118)(v109, 0, 1, v93);
        v81 = v108;
        v94 = v125;
        sub_24882AEA8();
        (*v104)(v19, v6);
      }

      else
      {
        (*v104)(v19, v6);
        v135(v94, v81);
      }

      sub_24882B228();
      if (v131(v26, 1, v6) == 1)
      {
        break;
      }

      v130(v19, v26, v6);
    }
  }

  (*(v115 + 8))(v138, v91);
  v95 = v116;
  v96 = *(v116 + 16);
  v97 = v126;
  v98 = v114;
  v96(v126, v114, v93);
  v99 = *(v95 + 56);
  v99(v97, 0, 1, v93);
  v100 = v117;
  sub_248802600(v97);
  v96(v97, v98, v93);
  v99(v97, 0, 1, v93);
  sub_2488027DC(v97);
  v101 = *(*v100 + 168);
  v102 = *(v100 + v101);
  *(v100 + v101) = v142;

  (*(v95 + 8))(v98, v93);
}

uint64_t sub_24880375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  v9 = type metadata accessor for StateDescription();
  v10 = sub_24882B218();
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x28223BE20](v10 - 8, v12, v13, v14);
  v17 = v27 - v16;
  v18 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v15, v19, v20, v21);
  (*(v23 + 16))(v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
  v24 = *(v9 - 8);
  (*(v24 + 16))(v17, a2, v9);
  (*(v24 + 56))(v17, 0, 1, v9);
  v25 = *(a5 + 16);
  sub_24882AE88();
  return sub_24882AEA8();
}

uint64_t (*sub_248803928(uint64_t *a1))(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = v1;
  *a1 = sub_248802AD8();
  return sub_248803970;
}

uint64_t sub_248803970(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_248802C14(*a1, a2, a3, a4);
  }

  v6 = *a1;

  sub_248802C14(v7, v8, v9, v10);
}

uint64_t StateMachine.__allocating_init(name:stateDescriptions:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  StateMachine.init(name:stateDescriptions:log:)(a1, a2, a3, a4);
  return v11;
}

char *StateMachine.init(name:stateDescriptions:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *v5;
  v10 = *v5;

  *(v5 + 4) = 0;
  *(v5 + 5) = 0;
  v11 = qword_27EEA9D88;
  v29 = *(v10 + 80);
  swift_getFunctionTypeMetadata2();
  v12 = *(v9 + 96);
  v13 = *(v12 + 16);
  *&v5[v11] = sub_24882AE48();
  v14 = qword_27EEA9D90;
  *&v5[v14] = sub_24882AE58();
  *&v5[qword_27EEA9D98] = 0;
  v15 = *(*v5 + 160);
  v16 = *(v9 + 104);
  *&v17 = v12;
  *(&v17 + 1) = v16;
  v31 = v17;
  aBlock = v29;
  v18 = type metadata accessor for StateDescription();
  v19 = *(*(v18 - 8) + 56);
  v19(&v5[v15], 1, 1, v18);
  *&v5[*(*v5 + 168)] = 0;
  v19(&v5[*(*v5 + 176)], 1, 1, v18);
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  v20 = qword_27EEA9DA0;
  v21 = sub_24882AC88();
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v5[v20], a4, v21);
  sub_248806BE0();
  v23 = sub_24882B168();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v29;
  *(v25 + 32) = v12;
  *(v25 + 40) = v16;
  *(v25 + 48) = v24;
  v32 = sub_248806C2C;
  v33 = v25;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v31 = sub_24880450C;
  *(&v31 + 1) = &block_descriptor;
  v26 = _Block_copy(&aBlock);

  v27 = qword_27EEA9D98;
  swift_beginAccess();
  notify_register_dispatch("com.apple.depth.dumpfsmstate", &v5[v27], v23, v26);
  swift_endAccess();
  _Block_release(v26);

  (*(v22 + 8))(a4, v21);
  return v5;
}

uint64_t sub_248803D94()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_248803DEC();
  }

  return result;
}

uint64_t sub_248803DEC()
{
  v1 = v0;
  v2 = sub_24882AF38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5, v6, v7);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24882AAE8();
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  v15 = MEMORY[0x28223BE20](v10, v12, v13, v14);
  v56[1] = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v15, v17, v18, v19);
  v58 = v56 - v21;
  v25 = MEMORY[0x28223BE20](v20, v22, v23, v24);
  v27 = v56 - v26;
  MEMORY[0x28223BE20](v25, v28, v29, v30);
  v32 = v56 - v31;
  v33 = NSTemporaryDirectory();
  sub_24882AEF8();

  sub_24882AAC8();

  v34 = *(v1 + 24);
  v57 = *(v1 + 16);
  v62[0] = v57;
  v62[1] = v34;

  MEMORY[0x24C1D9700](1953457198, 0xE400000000000000);
  v35 = v27;
  v59 = v32;
  sub_24882AAD8();

  StateMachine.dotRepresentation.getter();
  sub_24882AF28();
  v36 = sub_24882AF08();
  v38 = v37;

  (*(v3 + 8))(v9, v2);
  if (v38 >> 60 != 15)
  {
    sub_24882AAF8();
    sub_248807A34(v36, v38);
  }

  if (qword_27EEA9950 != -1)
  {
    swift_once();
  }

  v39 = sub_24882AC88();
  __swift_project_value_buffer(v39, qword_27EEAA810);
  v40 = v60;
  v41 = v58;
  v42 = v35;
  v43 = v35;
  v44 = v61;
  (*(v60 + 16))(v58, v43, v61);

  v45 = sub_24882AC68();
  v46 = sub_24882B148();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v56[0] = v42;
    v48 = v47;
    v49 = swift_slowAlloc();
    v62[0] = v49;
    *v48 = 136315394;
    *(v48 + 4) = sub_2487F852C(v57, v34, v62);
    *(v48 + 12) = 2080;
    sub_2488079DC();
    v50 = sub_24882B498();
    v52 = v51;
    v53 = *(v40 + 8);
    v53(v41, v44);
    v54 = sub_2487F852C(v50, v52, v62);

    *(v48 + 14) = v54;
    _os_log_impl(&dword_2487F4000, v45, v46, "Wrote %s state to %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1DA290](v49, -1, -1);
    MEMORY[0x24C1DA290](v48, -1, -1);

    v53(v56[0], v44);
  }

  else
  {

    v53 = *(v40 + 8);
    v53(v41, v44);
    v53(v42, v44);
  }

  return (v53)(v59, v44);
}

uint64_t sub_24880450C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

char *StateMachine.deinit()
{
  v1 = *v0;
  v2 = qword_27EEA9D98;
  swift_beginAccess();
  notify_cancel(*&v0[v2]);
  v3 = *(v0 + 3);

  v4 = *(v0 + 5);
  sub_248806BB0(*(v0 + 4));
  v5 = qword_27EEA9DA0;
  v6 = sub_24882AC88();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *&v0[qword_27EEA9D88];

  v8 = *&v0[qword_27EEA9D90];

  v9 = *(*v0 + 160);
  v14 = *(v1 + 80);
  v15 = *(v1 + 96);
  type metadata accessor for StateDescription();
  v10 = sub_24882B218();
  v11 = *(*(v10 - 8) + 8);
  v11(&v0[v9], v10);
  v12 = *&v0[*(*v0 + 168)];

  v11(&v0[*(*v0 + 176)], v10);
  return v0;
}

uint64_t StateMachine.__deallocating_deinit()
{
  StateMachine.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_248804758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(*v4 + 88) - 8) + 64);
  MEMORY[0x28223BE20](a1, a1, a3, a4);
  (*(v7 + 16))(&v15 - v6);
  swift_beginAccess();
  sub_24882B058();
  sub_24882B038();
  swift_endAccess();
  v8 = qword_27EEA9D90;
  swift_beginAccess();
  v9 = *(v4 + v8);

  v10 = sub_24882B028();

  if (v10 == 1)
  {
    return sub_2488048B0(result, v12, v13, v14);
  }

  return result;
}

uint64_t sub_2488048B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v7 = *(v6 + 80);
  v154 = *(v7 - 8);
  v8 = *(v154 + 64);
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v143 = v132 - v9;
  v11 = *(v10 + 88);
  v147 = type metadata accessor for StateTransition();
  v140 = sub_24882B218();
  v141 = *(v140 - 8);
  v12 = *(v141 + 64);
  MEMORY[0x28223BE20](v140, v13, v14, v15);
  v146 = v132 - v16;
  v17 = sub_24882B218();
  v151 = *(v17 - 8);
  v152 = v17;
  v18 = *(v151 + 64);
  v22 = MEMORY[0x28223BE20](v17, v19, v20, v21);
  v148 = v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24, v25, v26);
  v157 = v132 - v27;
  v28 = *(v6 + 96);
  v153 = v7;
  *&v29 = v7;
  *(&v29 + 1) = v11;
  v155 = v28;
  v160 = v29;
  v161 = v28;
  v30 = type metadata accessor for StateDescription();
  v137 = sub_24882B218();
  v136 = *(v137 - 8);
  v31 = *(v136 + 64);
  v35 = MEMORY[0x28223BE20](v137, v32, v33, v34);
  v138 = v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v35, v37, v38, v39);
  v142 = v132 - v41;
  v45 = MEMORY[0x28223BE20](v40, v42, v43, v44);
  v144 = v132 - v46;
  v158 = v30;
  v156 = *(v30 - 8);
  v47 = *(v156 + 64);
  v51 = MEMORY[0x28223BE20](v45, v48, v49, v50);
  v139 = v132 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v53, v54, v55);
  v159 = v132 - v56;
  v57 = sub_24882B218();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  v63 = MEMORY[0x28223BE20](v57, v60, v61, v62);
  v65 = v132 - v64;
  v66 = *(v11 - 1);
  v67 = *(v66 + 64);
  v71 = MEMORY[0x28223BE20](v63, v68, v69, v70);
  v150 = v132 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71, v73, v74, v75);
  v77 = v132 - v76;
  v78 = qword_27EEA9D90;
  swift_beginAccess();
  *&v160 = *(v5 + v78);
  v79 = sub_24882B058();

  swift_getWitnessTable();
  v149 = v79;
  v80 = v11;
  sub_24882B108();
  if ((*(v66 + 48))(v65, 1, v11) == 1)
  {
    (*(v58 + 8))(v65, v57);
  }

  v135 = v66;
  (*(v66 + 32))(v77, v65, v11);

  v82 = *(v5 + *(*v5 + 168));
  if (v82)
  {
    v83 = v144;
    sub_248802704(v144);
    v84 = v156;
    v85 = *(v156 + 48);
    v86 = v158;
    v134 = v156 + 48;
    v133 = v85;
    v87 = v85(v83, 1, v158);
    v88 = v147;
    v89 = v146;
    if (v87 != 1)
    {
      v91 = v84 + 32;
      v90 = *(v84 + 32);
      v92 = v159;
      v132[1] = v91;
      v132[0] = v90;
      v90(v159, v83, v86);
      v93 = *(v92 + *(v86 + 52));
      v94 = *(&v155 + 1);
      v95 = *(*(&v155 + 1) + 8);
      v144 = v82;

      v145 = v80;
      sub_24882AE98();
      v96 = *(v88 - 8);
      v97 = 1;
      if ((*(v96 + 48))(v89, 1, v88) == 1)
      {
        v98 = v140;
        v99 = v157;
        v100 = v153;
        v101 = v154;
        v96 = v141;
      }

      else
      {
        v102 = *(v88 + 36);
        v98 = v88;
        v100 = v153;
        v101 = v154;
        v99 = v157;
        (*(v154 + 16))(v157, &v89[v102], v153);
        v97 = 0;
      }

      (*(v96 + 8))(v89, v98);
      (*(v101 + 56))(v99, v97, 1, v100);
      v103 = v5[2];
      v104 = v5[3];
      v105 = v155;
      *&v155 = v77;
      sub_248801D80(v103, v104, v159, v99, v77, v100, v145, v105, v94);
      v107 = v151;
      v106 = v152;
      v108 = v148;
      (*(v151 + 16))(v148, v99, v152);
      if ((*(v101 + 48))(v108, 1, v100) == 1)
      {

        (*(v107 + 8))(v108, v106);
      }

      else
      {
        v109 = v108;
        v110 = v143;
        (*(v101 + 32))(v143, v109, v100);
        v111 = *(v105 + 16);
        v112 = v142;
        v113 = v158;
        sub_24882AE98();

        if (v133(v112, 1, v113) != 1)
        {
          v117 = v106;
          v118 = v139;
          (v132[0])(v139, v112, v113);
          v119 = v159 + *(v113 + 60);
          if (*v119)
          {
            v120 = *(v119 + 8);
            (*v119)();
          }

          v115 = v156;
          v121 = v138;
          (*(v156 + 16))(v138, v118, v113);
          (*(v115 + 56))(v121, 0, 1, v113);
          sub_2488027DC(v121);
          v122 = &v118[*(v113 + 56)];
          v123 = v143;
          if (*v122)
          {
            v124 = *(v122 + 1);
            (*v122)(v143, v155);
          }

          swift_beginAccess();
          v125 = v5[4];
          if (v125)
          {
            v126 = v5[5];
            sub_2487F5FD8(v5[4]);
            v125(v123);
            sub_248806BB0(v125);
          }

          (*(v154 + 8))(v123, v153);
          (*(v115 + 8))(v118, v158);
          v116 = v159;
          v114 = v117;
          goto LABEL_20;
        }

        (*(v101 + 8))(v110, v100);
        (*(v136 + 8))(v112, v137);
      }

      v114 = v106;
      v115 = v156;
      v116 = v159;
LABEL_20:
      swift_beginAccess();
      swift_getWitnessTable();
      v127 = v150;
      sub_24882B128();
      v128 = *(v135 + 8);
      v129 = v145;
      v128(v127, v145);
      v130 = swift_endAccess();
      sub_2488048B0(v130);
      (*(v107 + 8))(v157, v114);
      v128(v155, v129);
      return (*(v115 + 8))(v116, v158);
    }

    v131 = *(v136 + 8);

    v131(v83, v137);
  }

  result = sub_24882B348();
  __break(1u);
  return result;
}

uint64_t StateMachine.dotRepresentation.getter()
{
  v1 = v0;
  v2 = *v0;
  v203 = *(v2 + 80);
  v3 = v203;
  v4 = type metadata accessor for StateTransition();
  v181 = *(v4 - 8);
  v5 = *(v181 + 64);
  v8 = MEMORY[0x28223BE20](v4, v6, v4, v7);
  v200 = &v155 - v9;
  v180 = *(*(&v203 + 1) - 8);
  v10 = *(v180 + 64);
  MEMORY[0x28223BE20](v8, v11, v12, v13);
  v204 = &v155 - v14;
  v201 = v15;
  v202 = *(&v3 + 1);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v192 = sub_24882B218();
  v198 = *(v192 - 8);
  v17 = *(v198 + 64);
  v21 = MEMORY[0x28223BE20](v192, v18, v19, v20);
  v196 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23, v24, v25);
  v27 = &v155 - v26;
  v189 = *(v2 + 96);
  v212 = v189;
  v211 = v203;
  v28 = type metadata accessor for StateDescription();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31, v32, v33);
  v160 = &v155 - v34;
  v35 = swift_getTupleTypeMetadata2();
  v170 = sub_24882B218();
  v191 = *(v170 - 8);
  v36 = *(v191 + 64);
  v40 = MEMORY[0x28223BE20](v170, v37, v38, v39);
  v176 = &v155 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v40, v42, v43, v44);
  v169 = &v155 - v46;
  v194 = v3;
  v166 = *(v3 - 8);
  v47 = *(v166 + 64);
  v51 = MEMORY[0x28223BE20](v45, v48, v49, v50);
  v193 = &v155 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v53, v54, v55);
  v162 = &v155 - v56;
  *&v203 = sub_24882B218();
  v199 = *(v203 - 8);
  v57 = *(v199 + 64);
  v61 = MEMORY[0x28223BE20](v203, v58, v59, v60);
  v190 = &v155 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61, v63, v64, v65);
  v67 = &v155 - v66;
  v68 = *(v1 + *(v2 + 168));
  if (v68)
  {
    v171 = v35;
    v195 = v27;
    *&v211 = 0;
    *(&v211 + 1) = 0xE000000000000000;
    v164 = v68;

    sub_24882B288();
    MEMORY[0x24C1D9700](0x2068706172676964, 0xE800000000000000);
    v69 = v1[3];
    v209 = v1[2];
    v210 = v69;
    v207 = 32;
    v208 = 0xE100000000000000;
    v205 = 95;
    v206 = 0xE100000000000000;
    sub_248806C54();
    v70 = sub_24882B238();
    MEMORY[0x24C1D9700](v70);

    MEMORY[0x24C1D9700](0xD00000000000003DLL, 0x8000000248830830);
    sub_248802528(v67);
    v172 = v29;
    v71 = *(v29 + 48);
    v72 = v71(v67, 1, v28);
    v163 = v28;
    if (v72)
    {
      v73 = *(v199 + 8);
      v73(v67, v203);
      v74 = 0x54535F5954504D45;
      v75 = 0xEE0050414D455441;
    }

    else
    {
      v76 = v166;
      v77 = v162;
      v78 = v194;
      (*(v166 + 16))(v162, v67, v194);
      v73 = *(v199 + 8);
      v73(v67, v203);
      v74 = (*(v189 + 40))(v78);
      v75 = v79;
      v80 = v78;
      v28 = v163;
      (*(v76 + 8))(v77, v80);
    }

    MEMORY[0x24C1D9700](v74, v75);

    MEMORY[0x24C1D9700](0xD000000000000027, 0x8000000248830870);
    v81 = v190;
    sub_248802704(v190);
    v82 = v71(v81, 1, v28);
    v83 = v176;
    if (v82)
    {
      v73(v81, v203);
      v84 = v166;
      v85 = v198;
      v86 = v191;
      v87 = 0xEE0050414D455441;
      v88 = 0x54535F5954504D45;
    }

    else
    {
      v84 = v166;
      v89 = v162;
      v90 = v194;
      (*(v166 + 16))(v162, v81, v194);
      v73(v81, v203);
      v91 = (*(v189 + 40))(v90);
      v87 = v92;
      v93 = v90;
      v83 = v176;
      (*(v84 + 8))(v89, v93);
      v88 = v91;
      v85 = v198;
      v86 = v191;
    }

    MEMORY[0x24C1D9700](v88, v87);

    MEMORY[0x24C1D9700](0xD00000000000001FLL, 0x80000002488308A0);
    v94 = 0;
    v95 = *(v164 + 64);
    v156 = v164 + 64;
    v96 = 1 << *(v164 + 32);
    if (v96 < 64)
    {
      v97 = ~(-1 << v96);
    }

    else
    {
      v97 = -1;
    }

    v98 = v97 & v95;
    v155 = (v96 + 63) >> 6;
    v99 = v171;
    v168 = v171 - 8;
    v159 = v84 + 16;
    v100 = v84;
    v101 = v172;
    v158 = v172 + 16;
    v175 = (v100 + 32);
    v157 = v172 + 32;
    v167 = (v86 + 32);
    v165 = (v172 + 8);
    v191 = TupleTypeMetadata2 - 8;
    v179 = v180 + 16;
    v178 = v181 + 16;
    v198 = v181 + 32;
    v199 = v180 + 32;
    v190 = (v85 + 32);
    v188 = v189;
    v187 = v189 + 40;
    v186 = *(&v189 + 1);
    v185 = *(&v189 + 1) + 16;
    v184 = (v181 + 8);
    v183 = (v180 + 8);
    v161 = (v100 + 8);
    v197 = TupleTypeMetadata2;
    while (v98)
    {
      v102 = v94;
LABEL_21:
      v174 = (v98 - 1) & v98;
      v104 = __clz(__rbit64(v98)) | (v102 << 6);
      v105 = v164;
      v106 = v166;
      (*(v166 + 16))(v162, *(v164 + 48) + *(v166 + 72) * v104, v194);
      v107 = *(v105 + 56) + *(v101 + 72) * v104;
      v108 = v160;
      (*(v101 + 16))(v160, v107, v28);
      v109 = *(v99 + 48);
      v83 = v176;
      (*(v106 + 32))();
      (*(v101 + 32))(&v83[v109], v108, v28);
      v110 = 0;
      v173 = v102;
LABEL_22:
      v111 = *(v99 - 8);
      (*(v111 + 56))(v83, v110, 1, v99);
      v112 = v169;
      (*v167)();
      if ((*(v111 + 48))(v112, 1, v99) == 1)
      {
        goto LABEL_42;
      }

      v113 = &v112[*(v99 + 48)];
      (*v175)(v193, v112, v194);
      v114 = *&v113[*(v28 + 52)];
      v115 = *v165;

      v115(v113, v28);
      v116 = 0;
      v117 = *(v114 + 64);
      v177 = v114 + 64;
      v182 = v114;
      v118 = 1 << *(v114 + 32);
      if (v118 < 64)
      {
        v119 = ~(-1 << v118);
      }

      else
      {
        v119 = -1;
      }

      v120 = v119 & v117;
      v121 = (v118 + 63) >> 6;
      *&v189 = v121;
      if ((v119 & v117) == 0)
      {
LABEL_28:
        if (v121 <= v116 + 1)
        {
          v123 = v116 + 1;
        }

        else
        {
          v123 = v121;
        }

        v124 = v123 - 1;
        v125 = v196;
        v126 = v197;
        v127 = v195;
        while (1)
        {
          v122 = v116 + 1;
          if (__OFADD__(v116, 1))
          {
            break;
          }

          if (v122 >= v121)
          {
            v120 = 0;
            v139 = 1;
            goto LABEL_36;
          }

          v120 = *(v177 + 8 * v122);
          ++v116;
          if (v120)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_42:

        MEMORY[0x24C1D9700](125, 0xE100000000000000);
        return v211;
      }

      while (1)
      {
        v122 = v116;
LABEL_35:
        v128 = __clz(__rbit64(v120));
        v120 &= v120 - 1;
        v129 = v128 | (v122 << 6);
        v130 = v182;
        v131 = v180;
        v132 = v204;
        v133 = v202;
        (*(v180 + 16))(v204, *(v182 + 48) + *(v180 + 72) * v129, v202);
        v134 = v181;
        v136 = v200;
        v135 = v201;
        (*(v181 + 16))(v200, *(v130 + 56) + *(v181 + 72) * v129, v201);
        v125 = v196;
        v137 = *(v197 + 48);
        v138 = *(v131 + 32);
        v126 = v197;
        v138(v196, v132, v133);
        (*(v134 + 32))(&v125[v137], v136, v135);
        v139 = 0;
        v124 = v122;
        v127 = v195;
LABEL_36:
        v140 = *(v126 - 8);
        (*(v140 + 56))(v125, v139, 1, v126);
        (*v190)(v127, v125, v192);
        if ((*(v140 + 48))(v127, 1, v126) == 1)
        {
          break;
        }

        v141 = *(v126 + 48);
        v142 = *v199;
        *&v203 = v124;
        v143 = v202;
        v142(v204, v127, v202);
        v145 = v200;
        v144 = v201;
        (*v198)(v200, &v127[v141], v201);
        v209 = 0;
        v210 = 0xE000000000000000;
        sub_24882B288();

        v209 = 34;
        v210 = 0xE100000000000000;
        v146 = v188;
        v147 = *(v188 + 40);
        v148 = v194;
        v149 = v147(v194, v188);
        MEMORY[0x24C1D9700](v149);

        MEMORY[0x24C1D9700](0x22203E2D2022, 0xE600000000000000);
        v150 = *(v144 + 36);
        v151 = v147(v148, v146);
        MEMORY[0x24C1D9700](v151);

        MEMORY[0x24C1D9700](0x6C6562616C5B2022, 0xEA0000000000223DLL);
        v152 = v204;
        v153 = (*(v186 + 16))(v143);
        MEMORY[0x24C1D9700](v153);

        MEMORY[0x24C1D9700](171662626, 0xE400000000000000);
        MEMORY[0x24C1D9700](v209, v210);

        (*v184)(v145, v144);
        (*v183)(v152, v143);
        v116 = v203;
        v121 = v189;
        if (!v120)
        {
          goto LABEL_28;
        }
      }

      (*v161)(v193, v194);

      v94 = v173;
      v28 = v163;
      v101 = v172;
      v99 = v171;
      v83 = v176;
      v98 = v174;
    }

    if (v155 <= v94 + 1)
    {
      v103 = v94 + 1;
    }

    else
    {
      v103 = v155;
    }

    while (1)
    {
      v102 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        break;
      }

      if (v102 >= v155)
      {
        v173 = v103 - 1;
        v174 = 0;
        v110 = 1;
        goto LABEL_22;
      }

      v98 = *(v156 + 8 * v102);
      ++v94;
      if (v98)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  result = sub_24882B348();
  __break(1u);
  return result;
}

unint64_t sub_2488066AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_24882AEB8();

  return sub_248806708(a1, v9, a2, a3);
}

unint64_t sub_248806708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_24882AEC8();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_248806890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v23 - v11;
  if (sub_24882B028())
  {
    sub_24882B398();
    v13 = sub_24882B388();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24882B028();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24882B018())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24882B2B8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2488066AC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_248806B7C()
{
  swift_beginAccess();
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_248806BB0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_248806BE0()
{
  result = qword_27EEAA7D0;
  if (!qword_27EEAA7D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EEAA7D0);
  }

  return result;
}

uint64_t sub_248806C2C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_248803D94();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_248806C54()
{
  result = qword_27EEA9DA8[0];
  if (!qword_27EEA9DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EEA9DA8);
  }

  return result;
}

uint64_t dispatch thunk of StateRepresentable.onEntry(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 56))();
}

{
  return (*(a4 + 64))();
}

uint64_t sub_248806D14(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_248806DA0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_248806F7C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

void sub_248807240(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    type metadata accessor for StateTransition();
    v5 = *(a1[5] + 8);
    sub_24882AE88();
    if (v6 <= 0x3F)
    {
      sub_248807620();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_248807304(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_248807450(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_248807620()
{
  if (!qword_27EEA9EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EEA9EB8, qword_24882C7B8);
    v0 = sub_24882B218();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEA9EB0);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2488076D0(uint64_t a1)
{
  result = sub_24882AC88();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 80);
    v6 = *(a1 + 96);
    type metadata accessor for StateDescription();
    result = sub_24882B218();
    if (v4 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24880798C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_2488079B4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

unint64_t sub_2488079DC()
{
  result = qword_27EEA9F40;
  if (!qword_27EEA9F40)
  {
    sub_24882AAE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F40);
  }

  return result;
}

uint64_t sub_248807A34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_248807A48(a1, a2);
  }

  return a1;
}

uint64_t sub_248807A48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_248807A9C(uint64_t a1)
{
  v3 = v2;
  v12 = v1[7];
  v13 = v1[6];
  v4 = (*(*(v1[4] - 8) + 80) + 80) & ~*(*(v1[4] - 8) + 80);
  v5 = (v4 + *(*(v1[4] - 8) + 64) + *(*(v1[5] - 8) + 80)) & ~*(*(v1[5] - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_248801C8C;

  return sub_248801B84(a1, v6, v7, v8, v9, v1 + v4, v1 + v5);
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 80) & ~v4;
  v6 = *(v2 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  v11 = *(v0 + 2);
  swift_unknownObjectRelease();
  v12 = *(v0 + 9);

  (*(v3 + 8))(&v0[v5], v1);
  (*(v6 + 8))(&v0[v8], v2);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_248807D60(uint64_t a1)
{
  v3 = v2;
  v12 = v1[7];
  v13 = v1[6];
  v4 = (*(*(v1[4] - 8) + 80) + 80) & ~*(*(v1[4] - 8) + 80);
  v5 = (v4 + *(*(v1[4] - 8) + 64) + *(*(v1[5] - 8) + 80)) & ~*(*(v1[5] - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_248807F14;

  return sub_248801538(a1, v6, v7, v8, v9, v1 + v4, v1 + v5);
}

uint64_t LocationTimerPurpose.hashValue.getter()
{
  v1 = *v0;
  sub_24882B528();
  MEMORY[0x24C1D9CA0](v1);
  return sub_24882B548();
}

unint64_t sub_24880802C()
{
  result = qword_27EEA9F50;
  if (!qword_27EEA9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA9F50);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LocationSettings(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LocationSettings(uint64_t result, int a2, int a3)
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

double DepthValueRange.min.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double DepthValueRange.min.setter(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double DepthValueRange.max.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double DepthValueRange.max.setter(double *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

double DepthValueRange.range.getter@<D0>(double *a1@<X8>)
{
  result = v1[1] - *v1;
  *a1 = result;
  return result;
}

DepthCore::DepthValueRange __swiftcall DepthValueRange.init(min:max:)(DepthCore::DepthValue min, DepthCore::DepthValue max)
{
  v5 = *v2;
  v6 = *v3;
  *v4 = *v2;
  v4[1] = v6;
  result.max = *&v6;
  result.min = *&v5;
  return result;
}

uint64_t sub_248808184()
{
  if (*v0)
  {
    return 7889261;
  }

  else
  {
    return 7235949;
  }
}

uint64_t sub_2488081A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v5 || (sub_24882B4B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24882B4B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_248808284(uint64_t a1)
{
  v2 = sub_24880BD24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2488082C0(uint64_t a1)
{
  v2 = sub_24880BD24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DepthValueRange.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F58, &qword_24882C970);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7, v8, v9);
  v11 = &v16 - v10;
  v13 = *v1;
  v12 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880BD24();
  sub_24882B568();
  v17 = v13;
  HIBYTE(v16) = 0;
  sub_24880BD78();
  sub_24882B488();
  if (!v2)
  {
    v17 = v12;
    HIBYTE(v16) = 1;
    sub_24882B488();
  }

  return (*(v5 + 8))(v11, v4);
}

uint64_t DepthValueRange.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA9F70, &qword_24882C978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8, v9, v10);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24880BD24();
  sub_24882B558();
  if (!v2)
  {
    HIBYTE(v17) = 0;
    sub_24880BDCC();
    sub_24882B418();
    v14 = v18;
    HIBYTE(v17) = 1;
    sub_24882B418();
    (*(v6 + 8))(v12, v5);
    v15 = v18;
    *a2 = v14;
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t DepthIntervalSummary.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24882AA88();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DepthIntervalSummary.dateInterval.setter(uint64_t a1)
{
  v3 = sub_24882AA88();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

__n128 DepthIntervalSummary.depthRange.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DepthIntervalSummary() + 20));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t DepthIntervalSummary.depthRange.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for DepthIntervalSummary();
  v6 = v1 + *(result + 20);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t sub_248808874()
{
  if (*v0)
  {
    result = 0x6E61526874706564;
  }

  else
  {
    result = 0x65746E4965746164;
  }

  *v0;
  return result;
}

uint64_t sub_2488088BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672;
  if (v6 || (sub_24882B4B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E61526874706564 && a2 == 0xEA00000000006567)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24882B4B8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}