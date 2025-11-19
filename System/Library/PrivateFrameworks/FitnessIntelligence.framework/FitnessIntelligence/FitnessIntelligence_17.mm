uint64_t storeEnumTagSinglePayload for HeartRateZonesFact(uint64_t result, int a2, int a3)
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

unint64_t sub_1B4AF6810()
{
  result = qword_1EB8A9FF8;
  if (!qword_1EB8A9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A9FF8);
  }

  return result;
}

unint64_t sub_1B4AF6868()
{
  result = qword_1EB8AA000;
  if (!qword_1EB8AA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA000);
  }

  return result;
}

unint64_t sub_1B4AF68C0()
{
  result = qword_1EB8AA008;
  if (!qword_1EB8AA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA008);
  }

  return result;
}

uint64_t CurrentDayFact.init(today:dayOfWeek:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1B4D1777C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for CurrentDayFact();
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t type metadata accessor for CurrentDayFact()
{
  result = qword_1EB8AA038;
  if (!qword_1EB8AA038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static CurrentDayFact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CurrentDayFact() + 20);
  v5 = *(a2 + v4);
  v6 = *(a1 + v4);

  return sub_1B49767B8(v6, v5);
}

uint64_t sub_1B4AF6A3C()
{
  if (*v0)
  {
    result = 0x656557664F796164;
  }

  else
  {
    result = 0x7961646F74;
  }

  *v0;
  return result;
}

uint64_t sub_1B4AF6A78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7961646F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656557664F796164 && a2 == 0xE90000000000006BLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

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

uint64_t sub_1B4AF6B58(uint64_t a1)
{
  v2 = sub_1B4AF6D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF6B94(uint64_t a1)
{
  v2 = sub_1B4AF6D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrentDayFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA010, &qword_1B4D2CE30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF6D8C();
  sub_1B4D18EFC();
  v12[15] = 0;
  sub_1B4D1777C();
  sub_1B49B1198(&qword_1EDC37820);
  sub_1B4D18D0C();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for CurrentDayFact() + 20));
    v12[13] = 1;
    sub_1B4AF6DE0();
    sub_1B4D18D0C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B4AF6D8C()
{
  result = qword_1EB8AA018;
  if (!qword_1EB8AA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA018);
  }

  return result;
}

unint64_t sub_1B4AF6DE0()
{
  result = qword_1EB8AA020;
  if (!qword_1EB8AA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA020);
  }

  return result;
}

uint64_t CurrentDayFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_1B4D1777C();
  v28 = *(v31 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA028, &qword_1B4D2CE38);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for CurrentDayFact();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF6D8C();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v12;
  v17 = v15;
  v18 = v28;
  v34 = 0;
  sub_1B49B1198(&qword_1EB8A6FB8);
  v19 = v31;
  v20 = v29;
  sub_1B4D18C0C();
  v21 = *(v18 + 32);
  v25 = v17;
  v21(v17, v6, v19);
  v32 = 1;
  sub_1B4AF7180();
  sub_1B4D18C0C();
  (*(v30 + 8))(v11, v20);
  v22 = v25;
  *(v25 + *(v26 + 20)) = v33;
  sub_1B49C1268(v22, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1B4AF71D4(v22);
}

unint64_t sub_1B4AF7180()
{
  result = qword_1EB8AA030;
  if (!qword_1EB8AA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA030);
  }

  return result;
}

uint64_t sub_1B4AF71D4(uint64_t a1)
{
  v2 = type metadata accessor for CurrentDayFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4AF7260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1B4D1774C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a2 + v6);
  v8 = *(a1 + v6);

  return sub_1B49767B8(v8, v7);
}

uint64_t sub_1B4AF72F0()
{
  result = sub_1B4D1777C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4AF7378()
{
  result = qword_1EB8AA048;
  if (!qword_1EB8AA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA048);
  }

  return result;
}

unint64_t sub_1B4AF73D0()
{
  result = qword_1EB8AA050;
  if (!qword_1EB8AA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA050);
  }

  return result;
}

unint64_t sub_1B4AF7428()
{
  result = qword_1EB8AA058;
  if (!qword_1EB8AA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA058);
  }

  return result;
}

uint64_t sub_1B4AF7484(uint64_t a1)
{
  v2 = sub_1B4AF7610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF74C0(uint64_t a1)
{
  v2 = sub_1B4AF7610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClosedAllRingsFact.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA060, &qword_1B4D2CFF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF7610();
  sub_1B4D18EFC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1B4AF7610()
{
  result = qword_1EB8AA068;
  if (!qword_1EB8AA068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA068);
  }

  return result;
}

uint64_t sub_1B4AF76B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA060, &qword_1B4D2CFF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF7610();
  sub_1B4D18EFC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1B4AF77EC()
{
  result = qword_1EB8AA070;
  if (!qword_1EB8AA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA070);
  }

  return result;
}

unint64_t sub_1B4AF7844()
{
  result = qword_1EB8AA078;
  if (!qword_1EB8AA078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA078);
  }

  return result;
}

uint64_t WorkoutGoalAchievementStatusFact.goal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D179EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutGoalAchievementStatusFact.init(goal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4D179EC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1B4AF7980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1818324839 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B4AF7A08(uint64_t a1)
{
  v2 = sub_1B4AF7BE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AF7A44(uint64_t a1)
{
  v2 = sub_1B4AF7BE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutGoalAchievementStatusFact.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA080, &qword_1B4D2D130);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF7BE4();
  sub_1B4D18EFC();
  sub_1B4D179EC();
  sub_1B4AF7EF0(&qword_1EB8A9F90);
  sub_1B4D18D0C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1B4AF7BE4()
{
  result = qword_1EB8AA088;
  if (!qword_1EB8AA088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA088);
  }

  return result;
}

uint64_t WorkoutGoalAchievementStatusFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1B4D179EC();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA090, &qword_1B4D2D138);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for WorkoutGoalAchievementStatusFact();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF7BE4();
  v16 = v23;
  sub_1B4D18EEC();
  if (!v16)
  {
    v17 = v21;
    sub_1B4AF7EF0(&qword_1EB8A9FA0);
    sub_1B4D18C0C();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_1B49E1B84(v14, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t type metadata accessor for WorkoutGoalAchievementStatusFact()
{
  result = qword_1EB8AA098;
  if (!qword_1EB8AA098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4AF7EF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B4D179EC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4AF7F4C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA080, &qword_1B4D2D130);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AF7BE4();
  sub_1B4D18EFC();
  sub_1B4D179EC();
  sub_1B4AF7EF0(&qword_1EB8A9F90);
  sub_1B4D18D0C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1B4AF80DC()
{
  result = sub_1B4D179EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4AF815C()
{
  result = qword_1EB8AA0A8;
  if (!qword_1EB8AA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0A8);
  }

  return result;
}

unint64_t sub_1B4AF81B4()
{
  result = qword_1EB8AA0B0;
  if (!qword_1EB8AA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0B0);
  }

  return result;
}

unint64_t sub_1B4AF820C()
{
  result = qword_1EB8AA0B8;
  if (!qword_1EB8AA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0B8);
  }

  return result;
}

uint64_t HighestDailyDistanceAnniversaryFact.TemplateString.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4AF82E0()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AF8354()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AF83A8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

uint64_t HighestDailyDistanceAnniversaryFact.placeholders()()
{
  v1 = v0;
  v2 = type metadata accessor for HighestDailyDistanceAnniversaryFact();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B4D1BE00;
  sub_1B4AF86B0(v1, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1B4AF8714(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B4AF8778;
  *(v9 + 24) = v8;
  *(v6 + 32) = 0x65636E6174736964;
  *(v6 + 40) = 0xE800000000000000;
  *(v6 + 48) = sub_1B4AF87E4;
  *(v6 + 56) = v9;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  v17[1] = *(v1 + *(v3 + 32));
  v10 = sub_1B4D18D5C();
  v12 = v11;
  *(v6 + 80) = 0x67615F7372616579;
  *(v6 + 88) = 0xE90000000000006FLL;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  *(v6 + 96) = sub_1B4993DFC;
  *(v6 + 104) = v13;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  sub_1B4AF86B0(v1, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_1B4AF8714(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v7);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B4AF89E8;
  *(v15 + 24) = v14;
  *(v6 + 128) = 0x7261655F65746164;
  *(v6 + 136) = 0xEB0000000064656ELL;
  *(v6 + 144) = sub_1B4AF8C58;
  *(v6 + 152) = v15;
  *(v6 + 160) = 0;
  *(v6 + 168) = 0;
  return v6;
}

uint64_t sub_1B4AF86B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighestDailyDistanceAnniversaryFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AF8714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighestDailyDistanceAnniversaryFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AF87EC(uint64_t a1)
{
  v2 = *(type metadata accessor for HighestDailyDistanceAnniversaryFact() + 20);
  v3 = sub_1B4D11F8C();
  [v3 setDateStyle_];

  v4 = OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter;
  [*(a1 + OBJC_IVAR____TtC19FitnessIntelligence15PromptFormatter____lazy_storage___dateFormatter) setTimeStyle_];
  v5 = *(a1 + v4);
  v6 = sub_1B4D1771C();
  v7 = [v5 stringFromDate_];

  v8 = sub_1B4D1818C();
  return v8;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for HighestDailyDistanceAnniversaryFact() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_1B4D1777C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4AF89E8(uint64_t a1)
{
  v2 = *(*(type metadata accessor for HighestDailyDistanceAnniversaryFact() - 8) + 80);

  return sub_1B4AF87EC(a1);
}

unint64_t sub_1B4AF8A5C()
{
  result = qword_1EB8AA0C0;
  if (!qword_1EB8AA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0C0);
  }

  return result;
}

unint64_t sub_1B4AF8AB4()
{
  result = qword_1EB8AA0C8;
  if (!qword_1EB8AA0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AA0D0, &qword_1B4D2D398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0C8);
  }

  return result;
}

unint64_t sub_1B4AF8B1C()
{
  result = qword_1EB8AA0D8;
  if (!qword_1EB8AA0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0D8);
  }

  return result;
}

unint64_t sub_1B4AF8B74()
{
  result = qword_1EB8AA0E0;
  if (!qword_1EB8AA0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA0E0);
  }

  return result;
}

unint64_t sub_1B4AF8BC8(uint64_t a1)
{
  result = sub_1B4AF8BF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4AF8BF0()
{
  result = qword_1EB8AA0E8[0];
  if (!qword_1EB8AA0E8[0])
  {
    type metadata accessor for HighestDailyDistanceAnniversaryFact();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB8AA0E8);
  }

  return result;
}

uint64_t static Task<>.withTimeout(_:_:onTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 56) = a5;
  *(v7 + 64) = a6;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  *(v7 + 32) = a2;
  *(v7 + 24) = a7;
  *(v7 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4AF8C8C, 0, 0);
}

uint64_t sub_1B4AF8C8C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = *(v0 + 32);
  *(v5 + 16) = v1;
  *(v5 + 24) = v6;
  *(v5 + 40) = v4;
  *(v5 + 48) = v3;
  *(v5 + 56) = v2;
  v7 = *(MEMORY[0x1E69E88A0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_1B4AF8D98;
  v9 = *(v0 + 16);
  v12 = *(v0 + 64);

  return MEMORY[0x1EEE6DD58](v9);
}

uint64_t sub_1B4AF8D98()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4AF8ED4, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1B4AF8ED4()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1B4AF8F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(v8 + 64) = a6;
  *(v8 + 72) = a7;
  *(v8 + 56) = a5;
  *(v8 + 48) = a8;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1B4D1880C();
  *(v8 + 80) = v9;
  v10 = *(v9 - 8);
  *(v8 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7460, &qword_1B4D1E158) - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4AF9050, 0, 0);
}

uint64_t sub_1B4AF9050()
{
  v1 = v0[14];
  v2 = v0[9];
  v17 = v0[7];
  v18 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  v7 = sub_1B4D1858C();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v4;
  v9[6] = v5;

  v0[15] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6D00, &unk_1B4D1BDF0);
  v10 = sub_1B4D185DC();
  sub_1B4AF9808(v1, &unk_1B4D2D438, v9, v10);
  sub_1B4AF9DBC(v1);
  v8(v1, 1, 1, v7);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v2;
  v11[5] = v3;
  v11[6] = v17;
  v11[7] = v18;
  sub_1B4AF9EFC(v17);
  sub_1B4AF9808(v1, &unk_1B4D2D450, v11, v10);
  sub_1B4AF9DBC(v1);
  v12 = *(MEMORY[0x1E69E8708] + 4);
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_1B4AF9284;
  v14 = v0[13];
  v15 = v0[3];

  return MEMORY[0x1EEE6DAC8](v14, 0, 0, v10);
}

uint64_t sub_1B4AF9284()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1B4AF95B0;
  }

  else
  {
    v3 = sub_1B4AF9398;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4AF9398()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = **(v0 + 24);
  sub_1B4D185CC();
  (*(v5 + 16))(v2, v3, v4);
  v8 = *(v6 - 8);
  v9 = (*(v8 + 48))(v2, 1, v6);
  v10 = *(v5 + 8);
  if (v9 == 1)
  {
    v11 = *(v0 + 104);
    v12 = *(v0 + 80);
    v10(*(v0 + 96), v12);
    _s7FailureOMa_4();
    swift_getWitnessTable();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    v10(v11, v12);
    v15 = *(v0 + 104);
    v14 = *(v0 + 112);
    v16 = *(v0 + 96);
  }

  else
  {
    v18 = *(v0 + 112);
    v19 = *(v0 + 96);
    v20 = *(v0 + 72);
    v21 = *(v0 + 16);
    v10(*(v0 + 104), *(v0 + 80));
    (*(v8 + 32))(v21, v19, v20);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1B4AF95B0()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B4AF9630(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v11 = *(v2 + 6);
  v10 = *(v2 + 7);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B4983F3C;

  return sub_1B4AF8F38(a1, a2, v7, v8, v11, v10, v6, v9);
}

uint64_t sub_1B4AF9710(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B4983F3C;

  return v9(a1);
}

uint64_t sub_1B4AF9808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7460, &qword_1B4D1E158);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v23 - v11;
  sub_1B4AF9F24(a1, v23 - v11);
  v13 = sub_1B4D1858C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B4AF9DBC(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_1B4D184FC();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B4D1857C();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_1B4AF99DC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 24) = a5;
  *(v7 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4AF9A04, 0, 0);
}

uint64_t sub_1B4AF9A04(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DA60](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x1E69E86C8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 48) = v6;
  *v6 = v1;
  v6[1] = sub_1B4AF9AEC;
  a1 = v4;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1B4AF9AEC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4AF9C1C, 0, 0);
  }
}

uint64_t sub_1B4AF9C1C()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];

    v1(v3);
    sub_1B4A03C40(v1);
  }

  v4 = v0[5];
  _s7FailureOMa_4();
  swift_getWitnessTable();
  swift_allocError();
  *v5 = 0;
  swift_willThrow();
  v6 = v0[1];

  return v6();
}

uint64_t sub_1B4AF9CF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B49DA364;

  return sub_1B4AF9710(a1, v4, v5, v7);
}

uint64_t sub_1B4AF9DBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7460, &qword_1B4D1E158);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4AF9E24(uint64_t a1)
{
  v5 = *(v1 + 3);
  v4 = *(v1 + 4);
  v6 = *(v1 + 2);
  v7 = v1[5];
  v9 = *(v1 + 6);
  v8 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B49DA364;

  return sub_1B4AF99DC(v7, a1, v6, v5, v9, v8, v4);
}

uint64_t sub_1B4AF9EFC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B4AF9F24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7460, &qword_1B4D1E158);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutVoiceGreatestElevationGainFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

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

unint64_t WorkoutVoiceGreatestElevationGainFact.TemplateString.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000085;
  }

  else
  {
    result = 0xD00000000000006DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B4AFA05C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000085;
  }

  else
  {
    v4 = 0xD00000000000006DLL;
  }

  if (v3)
  {
    v5 = "ears ago, on <date_earned>.";
  }

  else
  {
    v5 = "lue of <elevation_milestone>.";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000085;
  }

  else
  {
    v7 = 0xD00000000000006DLL;
  }

  if (*a2)
  {
    v8 = "lue of <elevation_milestone>.";
  }

  else
  {
    v8 = "ears ago, on <date_earned>.";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4AFA108()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4AFA188()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4AFA1F4()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4AFA270@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B4AFA2D0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000085;
  }

  else
  {
    v2 = 0xD00000000000006DLL;
  }

  if (*v1)
  {
    v3 = "lue of <elevation_milestone>.";
  }

  else
  {
    v3 = "ears ago, on <date_earned>.";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id WorkoutVoiceGreatestElevationGainFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D1BE00;
  v6 = *(v0 + *(v1 + 28));
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v8 = result;
    v9 = sub_1B4D1818C();
    v11 = v10;

    strcpy((v5 + 32), "activity_type");
    *(v5 + 46) = -4864;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    *(v5 + 48) = sub_1B4993DFC;
    *(v5 + 56) = v12;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    sub_1B4AFA798(v0, &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v14 = swift_allocObject();
    sub_1B4AFA7FC(v4, v14 + v13);
    *(v5 + 80) = 0xD000000000000013;
    *(v5 + 88) = 0x80000001B4D61650;
    *(v5 + 96) = sub_1B4AFA860;
    *(v5 + 104) = v14;
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    v15 = *(v0 + *(v1 + 24));
    v16 = *&aThisDaythisWee_1[8 * v15];
    v17 = qword_1B4D2D668[v15];
    *(v5 + 128) = 0xD000000000000015;
    *(v5 + 136) = 0x80000001B4D4EFE0;
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    *(v5 + 144) = sub_1B4994004;
    *(v5 + 152) = v18;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4AFA568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for WorkoutVoiceGreatestElevationGainFact() + 20);
  v8 = *(a1 + 16);
  FIUnitManager.userMeasurementUnitForElevation()(v9);
  v11 = v10;
  sub_1B4D1745C();
  v12 = sub_1B4D12160();
  sub_1B499221C();
  v13 = sub_1B4D1878C();

  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t WorkoutVoiceGreatestElevationGainFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for WorkoutVoiceGreatestElevationGainFact() + 24)) >= 4u)
  {

    v5 = 0;
  }

  else
  {
    v3 = sub_1B4D18DCC();

    v5 = (v3 & 1) == 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1B4AFA798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AFA7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AFA860(uint64_t a1)
{
  v2 = *(*(type metadata accessor for WorkoutVoiceGreatestElevationGainFact() - 8) + 80);

  return sub_1B4AFA568(a1);
}

unint64_t sub_1B4AFA8D4()
{
  result = qword_1EB8AA170;
  if (!qword_1EB8AA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA170);
  }

  return result;
}

unint64_t sub_1B4AFA92C()
{
  result = qword_1EB8AA178;
  if (!qword_1EB8AA178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AA180, &qword_1B4D2D5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA178);
  }

  return result;
}

unint64_t sub_1B4AFA994()
{
  result = qword_1EB8AA188;
  if (!qword_1EB8AA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA188);
  }

  return result;
}

unint64_t sub_1B4AFA9EC()
{
  result = qword_1EB8AA190;
  if (!qword_1EB8AA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA190);
  }

  return result;
}

unint64_t sub_1B4AFAA40(uint64_t a1)
{
  result = sub_1B4AFAA68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4AFAA68()
{
  result = qword_1EB8AA198;
  if (!qword_1EB8AA198)
  {
    type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA198);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutMetricsFact()
{
  result = qword_1EB8AA1B8;
  if (!qword_1EB8AA1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutMetricsFact.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutMetricsFact() + 28);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutMetricsFact.estimatedEffort.getter()
{
  v1 = (v0 + *(type metadata accessor for WorkoutMetricsFact() + 56));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t WorkoutMetricsFact.init(activityType:distance:pace:duration:workoutHasEnded:energyBurned:elevationGained:averagePower:averageHeartRate:maximumHeartRate:estimatedEffort:shouldUseHigherPrecisionForDistance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14)
{
  *a9 = a1;
  v21 = type metadata accessor for WorkoutMetricsFact();
  sub_1B498B270(a2, &a9[v21[5]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B498B270(a3, &a9[v21[6]], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  (*(*(v23 - 8) + 32))(&a9[v22], a4, v23);
  a9[v21[8]] = a5;
  sub_1B498B270(a6, &a9[v21[9]], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B498B270(a7, &a9[v21[10]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B498B270(a8, &a9[v21[11]], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B498B270(a10, &a9[v21[12]], &qword_1EB8A6CC8, &unk_1B4D464B0);
  result = sub_1B498B270(a11, &a9[v21[13]], &qword_1EB8A6CC8, &unk_1B4D464B0);
  v25 = &a9[v21[14]];
  *v25 = a12;
  v25[8] = a13 & 1;
  a9[v21[15]] = a14;
  return result;
}

unint64_t sub_1B4AFB014(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000010;
    v6 = 0x6574616D69747365;
    if (a1 != 10)
    {
      v6 = 0xD000000000000023;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x6F69746176656C65;
    v8 = 0x5065676172657661;
    if (a1 != 7)
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x65636E6174736964;
    v2 = 0x6E6F697461727564;
    v3 = 0x4874756F6B726F77;
    if (a1 != 4)
    {
      v3 = 0x7542796772656E65;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 1701011824;
    }

    if (!a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B4AFB1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4AFE1EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4AFB1FC(uint64_t a1)
{
  v2 = sub_1B4AFDC10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AFB238(uint64_t a1)
{
  v2 = sub_1B4AFDC10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutMetricsFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA1A0, &qword_1B4D2D690);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v33 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AFDC10();
  sub_1B4D18EFC();
  v37 = *v3;
  v36 = 0;
  v11 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B4D18D0C();
  if (v2)
  {
  }

  else
  {

    v12 = type metadata accessor for WorkoutMetricsFact();
    v35 = v3;
    v13 = *(v12 + 20);
    LOBYTE(v37) = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    v15 = sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40);
    v16 = v35;
    sub_1B4D18CAC();
    v33[1] = v15;
    v33[2] = v14;
    v34 = v12;
    v17 = *(v12 + 24);
    LOBYTE(v37) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B49B0578(&qword_1EB8A71E8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
    sub_1B4D18CAC();
    v18 = v34[7];
    LOBYTE(v37) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B4D18D0C();
    v19 = v34;
    v20 = *(v16 + v34[8]);
    LOBYTE(v37) = 4;
    sub_1B4D18CCC();
    v21 = v19[9];
    LOBYTE(v37) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80);
    sub_1B4D18CAC();
    v22 = v34;
    v23 = v34[10];
    LOBYTE(v37) = 6;
    sub_1B4D18CAC();
    v24 = v22[11];
    LOBYTE(v37) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
    sub_1B49B0578(&qword_1EB8A7838, &qword_1EB8A6CE0, &unk_1B4D1EF00);
    sub_1B4D18CAC();
    v25 = v34[12];
    LOBYTE(v37) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
    sub_1B49B0578(&qword_1EB8A9D68, &qword_1EB8A6CD0, &unk_1B4D1F270);
    sub_1B4D18CAC();
    v26 = v34;
    v27 = v34[13];
    LOBYTE(v37) = 9;
    sub_1B4D18CAC();
    v28 = (v16 + v26[14]);
    v29 = *v28;
    v30 = *(v28 + 8);
    LOBYTE(v37) = 10;
    sub_1B4D18C8C();
    v31 = *(v35 + v34[15]);
    LOBYTE(v37) = 11;
    sub_1B4D18CCC();
  }

  return (*(v6 + 8))(v9, v5);
}

void WorkoutMetricsFact.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v69 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v72 = v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v73 = v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v74 = v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v63 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA1B0, &qword_1B4D2D698);
  v77 = *(v27 - 8);
  v78 = v27;
  v28 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v63 - v29;
  v31 = type metadata accessor for WorkoutMetricsFact();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = (v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AFDC10();
  v79 = v30;
  v36 = v80;
  sub_1B4D18EEC();
  if (v36)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v64 = v23;
    v65 = v26;
    v80 = a1;
    v66 = v31;
    v67 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v81 = 0;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B4D18C0C();
    v37 = v67;
    *v67 = v82;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    LOBYTE(v82) = 1;
    v39 = sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40);
    v40 = v65;
    sub_1B4D18BAC();
    v41 = v77;
    v63[1] = v39;
    v63[2] = v38;
    v42 = v66;
    sub_1B498B270(v40, v37 + v66[5], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    LOBYTE(v82) = 2;
    sub_1B49B0578(&qword_1EB8A7200, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
    v43 = v74;
    sub_1B4D18BAC();
    sub_1B498B270(v43, v37 + v42[6], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    LOBYTE(v82) = 3;
    sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10);
    v44 = v73;
    sub_1B4D18C0C();
    (*(v75 + 32))(v37 + v42[7], v44, v76);
    LOBYTE(v82) = 4;
    *(v37 + v42[8]) = sub_1B4D18BCC() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    LOBYTE(v82) = 5;
    sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80);
    v45 = v72;
    sub_1B4D18BAC();
    sub_1B498B270(v45, v37 + v42[9], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    LOBYTE(v82) = 6;
    v46 = v64;
    sub_1B4D18BAC();
    sub_1B498B270(v46, v37 + v42[10], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
    LOBYTE(v82) = 7;
    sub_1B49B0578(&qword_1EB8A7848, &qword_1EB8A6CE0, &unk_1B4D1EF00);
    v47 = v71;
    sub_1B4D18BAC();
    v74 = 0;
    sub_1B498B270(v47, v37 + v42[11], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
    LOBYTE(v82) = 8;
    sub_1B49B0578(&qword_1EB8A9D80, &qword_1EB8A6CD0, &unk_1B4D1F270);
    v48 = v70;
    v49 = v74;
    sub_1B4D18BAC();
    v50 = v49 == 0;
    v74 = v49;
    if (v49)
    {
      (*(v41 + 8))(v79, v78);
      v51 = 0;
    }

    else
    {
      sub_1B498B270(v48, v37 + v42[12], &qword_1EB8A6CC8, &unk_1B4D464B0);
      LOBYTE(v82) = 9;
      v52 = v74;
      sub_1B4D18BAC();
      v74 = v52;
      if (v52)
      {
        (*(v77 + 8))(v79, v78);
        v51 = 0;
      }

      else
      {
        sub_1B498B270(v69, v67 + v66[13], &qword_1EB8A6CC8, &unk_1B4D464B0);
        LOBYTE(v82) = 10;
        v53 = v74;
        v54 = sub_1B4D18B8C();
        v74 = v53;
        if (!v53)
        {
          v56 = v67 + v66[14];
          *v56 = v54;
          v56[8] = v55 & 1;
          LOBYTE(v82) = 11;
          v57 = v74;
          v58 = sub_1B4D18BCC();
          v74 = v57;
          if (!v57)
          {
            v59 = v58;
            (*(v77 + 8))(v79, v78);
            v60 = v59 & 1;
            v62 = v67;
            v61 = v68;
            *(v67 + v66[15]) = v60;
            sub_1B4AFDC64(v62, v61);
            __swift_destroy_boxed_opaque_existential_1Tm(v80);
            sub_1B4AFDCC8(v62);
            return;
          }
        }

        (*(v77 + 8))(v79, v78);
        v51 = 1;
      }

      v42 = v66;
      v37 = v67;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v80);

    sub_1B4975024(v37 + v42[5], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v37 + v42[6], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    (*(v75 + 8))(v37 + v42[7], v76);
    sub_1B4975024(v37 + v42[9], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v37 + v42[10], &qword_1EB8A6CC0, &unk_1B4D1BC00);
    sub_1B4975024(v37 + v42[11], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
    if (v50)
    {
      sub_1B4975024(v37 + v42[12], &qword_1EB8A6CC8, &unk_1B4D464B0);
      if (v51)
      {
        goto LABEL_12;
      }
    }

    else if (v51)
    {
LABEL_12:
      sub_1B4975024(v37 + v42[13], &qword_1EB8A6CC8, &unk_1B4D464B0);
    }
  }
}

uint64_t _s19FitnessIntelligence18WorkoutMetricsFactV2eeoiySbAC_ACtFZ_0(void **a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v170 = *(v4 - 8);
  v5 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v164 = &v158 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v163 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v175 = &v158 - v11;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E10, &unk_1B4D46A80);
  v12 = *(*(v169 - 8) + 64);
  MEMORY[0x1EEE9AC00](v169);
  v165 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v167 = &v158 - v15;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v173 = *(v174 - 8);
  v16 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v166 = &v158 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v168 = &v158 - v20;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7878, &unk_1B4D2D8B0);
  v21 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v172 = &v158 - v22;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v23 = *(v182 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v177 = &v158 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v179 = &v158 - v28;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F68, &unk_1B4D1C550);
  v29 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v181 = &v158 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v188 = *(v31 - 8);
  v189 = v31;
  v32 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v183 = &v158 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v184 = &v158 - v36;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9E18, &unk_1B4D2C410);
  v37 = *(*(v186 - 8) + 64);
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v158 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v40 = *(v39 - 8);
  v191 = v39;
  v192 = v40;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v185 = &v158 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v176 = &v158 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v158 - v47;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F50, &qword_1B4D425A0);
  v49 = *(*(v190 - 8) + 64);
  MEMORY[0x1EEE9AC00](v190);
  v178 = &v158 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v158 - v52;
  v54 = *a1;
  v55 = *a2;
  objc_opt_self();
  v56 = swift_dynamicCastObjCClass();
  if (v56 && (v57 = v56, objc_opt_self(), (v58 = swift_dynamicCastObjCClass()) != 0))
  {
    v59 = v58;
    v162 = v23;
    v60 = v54;
    v61 = v55;
    [v57 coordinate];
    v63 = v62;
    [v59 coordinate];
    if (v63 != v64)
    {

      goto LABEL_22;
    }

    [v57 coordinate];
    v66 = v65;
    [v59 coordinate];
    v68 = v67;

    v23 = v162;
    if (v66 != v68)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v161 = type metadata accessor for WorkoutMetricsFact();
  v69 = v161[5];
  v70 = *(v190 + 48);
  sub_1B4974FBC(a1 + v69, v53, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(a2 + v69, &v53[v70], &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v71 = v191;
  v72 = *(v192 + 48);
  if (v72(v53, 1, v191) == 1)
  {
    if (v72(&v53[v70], 1, v71) == 1)
    {
      v160 = v72;
      v162 = v23;
      v159 = v4;
      sub_1B4975024(v53, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_15;
    }

LABEL_12:
    v73 = &qword_1EB8A6F50;
    v74 = &qword_1B4D425A0;
    v75 = v53;
LABEL_21:
    sub_1B4975024(v75, v73, v74);
    goto LABEL_22;
  }

  sub_1B4974FBC(v53, v48, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v72(&v53[v70], 1, v71) == 1)
  {
    (*(v192 + 8))(v48, v71);
    goto LABEL_12;
  }

  v160 = v72;
  v162 = v23;
  v159 = v4;
  v158 = a2;
  v76 = v192;
  v77 = v185;
  (*(v192 + 32))(v185, &v53[v70], v71);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
  v78 = sub_1B4D1816C();
  v79 = *(v76 + 8);
  v79(v77, v71);
  v79(v48, v71);
  a2 = v158;
  sub_1B4975024(v53, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v78 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v80 = v161[6];
  v81 = v187;
  v82 = *(v186 + 48);
  sub_1B4974FBC(a1 + v80, v187, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  sub_1B4974FBC(a2 + v80, v81 + v82, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v84 = v188;
  v83 = v189;
  v85 = *(v188 + 48);
  if (v85(v81, 1, v189) == 1)
  {
    if (v85(v81 + v82, 1, v83) == 1)
    {
      sub_1B4975024(v81, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v86 = v184;
  sub_1B4974FBC(v81, v184, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if (v85(v81 + v82, 1, v83) == 1)
  {
    (*(v84 + 8))(v86, v83);
LABEL_20:
    v73 = &qword_1EB8A9E18;
    v74 = &unk_1B4D2C410;
    v75 = v81;
    goto LABEL_21;
  }

  v89 = v81 + v82;
  v90 = v183;
  (*(v84 + 32))(v183, v89, v83);
  sub_1B49B0578(&qword_1EB8A71C8, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v91 = sub_1B4D1816C();
  v92 = *(v84 + 8);
  v92(v90, v83);
  v92(v86, v83);
  sub_1B4975024(v81, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((v91 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v93 = a1;
  v94 = v161;
  v95 = v161[7];
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
  if ((sub_1B4D1816C() & 1) == 0 || *(v93 + v94[8]) != *(a2 + v94[8]))
  {
    goto LABEL_22;
  }

  v96 = v94[9];
  v97 = v181;
  v98 = *(v180 + 48);
  v189 = v93;
  sub_1B4974FBC(v93 + v96, v181, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4974FBC(a2 + v96, v97 + v98, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v99 = *(v162 + 48);
  v100 = v182;
  if (v99(v97, 1, v182) == 1)
  {
    if (v99(v97 + v98, 1, v100) == 1)
    {
      sub_1B4975024(v97, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      goto LABEL_34;
    }

LABEL_32:
    v73 = &qword_1EB8A6F68;
    v74 = &unk_1B4D1C550;
LABEL_40:
    v75 = v97;
    goto LABEL_21;
  }

  v101 = v179;
  sub_1B4974FBC(v97, v179, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if (v99(v97 + v98, 1, v100) == 1)
  {
    (*(v162 + 8))(v101, v100);
    goto LABEL_32;
  }

  v102 = v162;
  v103 = v97 + v98;
  v104 = v177;
  (*(v162 + 32))(v177, v103, v100);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
  v105 = sub_1B4D1816C();
  v106 = *(v102 + 8);
  v106(v104, v100);
  v106(v101, v100);
  sub_1B4975024(v97, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if ((v105 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_34:
  v107 = v94[10];
  v108 = *(v190 + 48);
  v97 = v178;
  sub_1B4974FBC(v189 + v107, v178, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  sub_1B4974FBC(a2 + v107, v97 + v108, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v109 = v191;
  v110 = v160;
  if (v160(v97, 1, v191) == 1)
  {
    if (v110(v97 + v108, 1, v109) == 1)
    {
      sub_1B4975024(v97, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v111 = v176;
  sub_1B4974FBC(v97, v176, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v110(v97 + v108, 1, v109) == 1)
  {
    (*(v192 + 8))(v111, v109);
LABEL_39:
    v73 = &qword_1EB8A6F50;
    v74 = &qword_1B4D425A0;
    goto LABEL_40;
  }

  v112 = v192;
  v113 = v185;
  (*(v192 + 32))(v185, v97 + v108, v109);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
  v114 = v109;
  v115 = sub_1B4D1816C();
  v116 = *(v112 + 8);
  v116(v113, v114);
  v116(v111, v114);
  sub_1B4975024(v97, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v115 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_42:
  v117 = v94[11];
  v118 = *(v171 + 48);
  v119 = v172;
  sub_1B4974FBC(v189 + v117, v172, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  sub_1B4974FBC(a2 + v117, v119 + v118, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v120 = v173;
  v121 = *(v173 + 48);
  v122 = v174;
  if (v121(v119, 1, v174) == 1)
  {
    v123 = v121(v119 + v118, 1, v122);
    v124 = v175;
    if (v123 == 1)
    {
      sub_1B4975024(v119, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
      goto LABEL_49;
    }

LABEL_47:
    v73 = &qword_1EB8A7878;
    v74 = &unk_1B4D2D8B0;
    v75 = v119;
    goto LABEL_21;
  }

  v125 = v168;
  sub_1B4974FBC(v119, v168, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v126 = v121(v119 + v118, 1, v122);
  v124 = v175;
  if (v126 == 1)
  {
    (*(v120 + 8))(v125, v122);
    goto LABEL_47;
  }

  v127 = v119 + v118;
  v128 = v166;
  (*(v120 + 32))(v166, v127, v122);
  sub_1B49B0578(&qword_1EB8A7880, &qword_1EB8A6CE0, &unk_1B4D1EF00);
  v129 = sub_1B4D1816C();
  v130 = *(v120 + 8);
  v130(v128, v122);
  v130(v125, v122);
  sub_1B4975024(v119, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  if ((v129 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_49:
  v131 = v161;
  v132 = v161[12];
  v133 = *(v169 + 48);
  v134 = v167;
  sub_1B4974FBC(v189 + v132, v167, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v135 = v134;
  sub_1B4974FBC(a2 + v132, v134 + v133, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v136 = *(v170 + 48);
  v137 = v159;
  if (v136(v135, 1, v159) != 1)
  {
    sub_1B4974FBC(v135, v124, &qword_1EB8A6CC8, &unk_1B4D464B0);
    if (v136(v135 + v133, 1, v137) != 1)
    {
      v138 = v170;
      v139 = v135 + v133;
      v140 = v164;
      (*(v170 + 32))(v164, v139, v137);
      sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270);
      v141 = v124;
      v142 = sub_1B4D1816C();
      v143 = *(v138 + 8);
      v143(v140, v137);
      v144 = v141;
      v131 = v161;
      v159 = v137;
      v143(v144, v137);
      sub_1B4975024(v167, &qword_1EB8A6CC8, &unk_1B4D464B0);
      if ((v142 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_56;
    }

    (*(v170 + 8))(v124, v137);
LABEL_54:
    v73 = &qword_1EB8A9E10;
    v74 = &unk_1B4D46A80;
    v75 = v135;
    goto LABEL_21;
  }

  if (v136(v135 + v133, 1, v137) != 1)
  {
    goto LABEL_54;
  }

  v159 = v137;
  sub_1B4975024(v135, &qword_1EB8A6CC8, &unk_1B4D464B0);
LABEL_56:
  v145 = v131[13];
  v146 = *(v169 + 48);
  v97 = v165;
  sub_1B4974FBC(v189 + v145, v165, &qword_1EB8A6CC8, &unk_1B4D464B0);
  sub_1B4974FBC(a2 + v145, v97 + v146, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v147 = v159;
  if (v136(v97, 1, v159) == 1)
  {
    if (v136(v97 + v146, 1, v147) == 1)
    {
      sub_1B4975024(v97, &qword_1EB8A6CC8, &unk_1B4D464B0);
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  v148 = v163;
  sub_1B4974FBC(v97, v163, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v136(v97 + v146, 1, v147) == 1)
  {
    (*(v170 + 8))(v148, v147);
LABEL_61:
    v73 = &qword_1EB8A9E10;
    v74 = &unk_1B4D46A80;
    goto LABEL_40;
  }

  v149 = v170;
  v150 = v97 + v146;
  v151 = v164;
  (*(v170 + 32))(v164, v150, v147);
  sub_1B49B0578(&qword_1EB8A8040, &qword_1EB8A6CD0, &unk_1B4D1F270);
  v152 = sub_1B4D1816C();
  v153 = *(v149 + 8);
  v153(v151, v147);
  v153(v148, v147);
  sub_1B4975024(v97, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v152)
  {
LABEL_63:
    v154 = v161[14];
    v155 = (v189 + v154);
    v156 = *(v189 + v154 + 8);
    v157 = (a2 + v154);
    v87 = *(a2 + v154 + 8);
    if (v156)
    {
      if (!v87)
      {
        return v87 & 1;
      }
    }

    else
    {
      if (*v155 != *v157)
      {
        LOBYTE(v87) = 1;
      }

      if (v87)
      {
        goto LABEL_22;
      }
    }

    LOBYTE(v87) = *(v189 + v161[15]) ^ *(a2 + v161[15]) ^ 1;
    return v87 & 1;
  }

LABEL_22:
  LOBYTE(v87) = 0;
  return v87 & 1;
}

unint64_t sub_1B4AFDC10()
{
  result = qword_1EB8AA1A8;
  if (!qword_1EB8AA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA1A8);
  }

  return result;
}

uint64_t sub_1B4AFDC64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutMetricsFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4AFDCC8(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutMetricsFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4AFDD4C()
{
  sub_1B49BEEDC(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
  if (v0 <= 0x3F)
  {
    sub_1B49AFCD8(319, &qword_1EDC3CB30, &qword_1EB8A6830, &unk_1B4D1AB40);
    if (v1 <= 0x3F)
    {
      sub_1B49AFCD8(319, &qword_1EDC37888, &qword_1EB8A6CD8, &unk_1B4D1D2C0);
      if (v2 <= 0x3F)
      {
        sub_1B49BEEDC(319, &qword_1EDC3CB28, &qword_1EDC378C0, 0x1E696B008, MEMORY[0x1E6968070]);
        if (v3 <= 0x3F)
        {
          sub_1B49AFCD8(319, &qword_1EDC3CB48, &qword_1EB8A6868, &unk_1B4D1AB80);
          if (v4 <= 0x3F)
          {
            sub_1B49AFCD8(319, &qword_1EDC37880, &qword_1EB8A6CE0, &unk_1B4D1EF00);
            if (v5 <= 0x3F)
            {
              sub_1B49AFCD8(319, &qword_1EDC37868, &qword_1EB8A6CD0, &unk_1B4D1F270);
              if (v6 <= 0x3F)
              {
                sub_1B4AFDF44();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B4AFDF44()
{
  if (!qword_1EDC378D8)
  {
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC378D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for MonthOfYear(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MonthOfYear(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4AFE0E8()
{
  result = qword_1EB8AA1C8;
  if (!qword_1EB8AA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA1C8);
  }

  return result;
}

unint64_t sub_1B4AFE140()
{
  result = qword_1EB8AA1D0;
  if (!qword_1EB8AA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA1D0);
  }

  return result;
}

unint64_t sub_1B4AFE198()
{
  result = qword_1EB8AA1D8;
  if (!qword_1EB8AA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA1D8);
  }

  return result;
}

uint64_t sub_1B4AFE1EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701011824 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4874756F6B726F77 && a2 == 0xEF6465646E457361 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7542796772656E65 && a2 == 0xEC00000064656E72 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F69746176656C65 && a2 == 0xEF64656E6961476ELL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5065676172657661 && a2 == 0xEC0000007265776FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4C140 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D61670 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6574616D69747365 && a2 == 0xEF74726F66664564 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001B4D61690 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t AnnounceCancellationRequest.requestIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t type metadata accessor for RingStateFact()
{
  result = qword_1EB8AA1F8;
  if (!qword_1EB8AA1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RingStateFact.init(ringProgressType:isWheelchairUser:isCloseToClosing:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1B4995228(a1, a4);
  result = type metadata accessor for RingStateFact();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t static RingStateFact.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s19FitnessIntelligence16RingProgressTypeO2eeoiySbAC_ACtFZ_0(a1, a2) && (v4 = type metadata accessor for RingStateFact(), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1B4AFE7A4()
{
  *v0;
  *v0;
  return 0xD000000000000010;
}

uint64_t sub_1B4AFE7EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4AFF104(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4AFE814(uint64_t a1)
{
  v2 = sub_1B4AFEE2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AFE850(uint64_t a1)
{
  v2 = sub_1B4AFEE2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RingStateFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA1E0, &qword_1B4D2D910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AFEE2C();
  sub_1B4D18EFC();
  v15[15] = 0;
  type metadata accessor for RingProgressType();
  sub_1B49951E4(&qword_1EB8A6BE0);
  sub_1B4D18D0C();
  if (!v2)
  {
    v11 = type metadata accessor for RingStateFact();
    v12 = *(v3 + *(v11 + 20));
    v15[14] = 1;
    sub_1B4D18CCC();
    v13 = *(v3 + *(v11 + 24));
    v15[13] = 2;
    sub_1B4D18CCC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t RingStateFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for RingProgressType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA1F0, &qword_1B4D2D918);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for RingStateFact();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AFEE2C();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v22;
  v17 = v14;
  v27 = 0;
  sub_1B49951E4(&qword_1EB8A6BF0);
  v18 = v23;
  sub_1B4D18C0C();
  sub_1B4995228(v24, v17);
  v26 = 1;
  *(v17 + *(v11 + 20)) = sub_1B4D18BCC() & 1;
  v25 = 2;
  v19 = sub_1B4D18BCC();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 24)) = v19 & 1;
  sub_1B4AFEE80(v17, v21, type metadata accessor for RingStateFact);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1B4AFEEE8(v17, type metadata accessor for RingStateFact);
}

uint64_t sub_1B4AFEDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s19FitnessIntelligence16RingProgressTypeO2eeoiySbAC_ACtFZ_0(a1, a2) && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1B4AFEE2C()
{
  result = qword_1EB8AA1E8;
  if (!qword_1EB8AA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA1E8);
  }

  return result;
}

uint64_t sub_1B4AFEE80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AFEEE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4AFEF70()
{
  result = type metadata accessor for RingProgressType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4AFF000()
{
  result = qword_1EB8AA208;
  if (!qword_1EB8AA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA208);
  }

  return result;
}

unint64_t sub_1B4AFF058()
{
  result = qword_1EB8AA210;
  if (!qword_1EB8AA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA210);
  }

  return result;
}

unint64_t sub_1B4AFF0B0()
{
  result = qword_1EB8AA218;
  if (!qword_1EB8AA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA218);
  }

  return result;
}

uint64_t sub_1B4AFF104(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001B4D4F000 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F160 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D616C0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

__n128 WorkoutAlertFact.init(alert:activityType:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1->n128_u8[8];
  v4 = a1->n128_u8[9];
  v5 = a1->n128_u8[10];
  v6 = a1[2].n128_u8[0];
  a3->n128_u64[0] = a1->n128_u64[0];
  a3->n128_u8[8] = v3;
  a3->n128_u8[9] = v4;
  a3->n128_u8[10] = v5;
  result = a1[1];
  a3[1] = result;
  a3[2].n128_u8[0] = v6;
  a3[2].n128_u64[1] = a2;
  return result;
}

BOOL static WorkoutAlertFact.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 32);
  v6 = a1[5];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  v10 = *(a2 + 10);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v33 = *a1;
  v34 = v2;
  v35 = v3;
  v36 = v4;
  v37 = *(a1 + 1);
  v38 = v5;
  v27 = v7;
  v28 = v8;
  v29 = v9;
  v30 = v10;
  v31 = *(a2 + 16);
  v32 = v11;
  if ((_s19FitnessIntelligence17WorkoutVoiceAlertV2eeoiySbAC_ACtFZ_0(&v33, &v27) & 1) == 0)
  {
    return 0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13 && (v14 = v13, objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) != 0))
  {
    v16 = v15;
    v17 = v6;
    v18 = v12;
    [v14 coordinate];
    v20 = v19;
    [v16 coordinate];
    if (v20 == v21)
    {
      [v14 coordinate];
      v23 = v22;
      [v16 coordinate];
      v25 = v24;

      return v23 == v25;
    }
  }

  else
  {
    sub_1B49DF540();
    if (sub_1B4D187AC())
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1B4AFF400()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x7472656C61;
  }

  *v0;
  return result;
}

uint64_t sub_1B4AFF43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472656C61 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B4D18DCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();

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

uint64_t sub_1B4AFF51C(uint64_t a1)
{
  v2 = sub_1B4AFFAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AFF558(uint64_t a1)
{
  v2 = sub_1B4AFFAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutAlertFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA220, &unk_1B4D2DAE0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 9);
  v29 = *(v1 + 10);
  v10 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v10;
  v17 = *(v1 + 32);
  v16 = *(v1 + 40);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AFFAFC();
  sub_1B4D18EFC();
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v29;
  v26 = v19;
  v27 = v18;
  v28 = v17;
  v30 = 0;
  sub_1B4AFFB50();
  v12 = v20;
  sub_1B4D18D0C();
  if (!v12)
  {
    v22 = v16;
    v30 = 1;
    v13 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B49B1148(&qword_1EB8A6FA0);
    sub_1B4D18D0C();
  }

  return (*(v21 + 8))(v6, v3);
}

uint64_t WorkoutAlertFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA238, &qword_1B4D2DAF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4AFFAFC();
  sub_1B4D18EEC();
  if (!v2)
  {
    v28 = 0;
    sub_1B4AFFBA4();
    sub_1B4D18C0C();
    v11 = v20;
    v12 = v21;
    v27 = v23;
    v18 = v25;
    v19 = v24;
    HIDWORD(v17) = v26;
    v29 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v28 = 1;
    sub_1B49B1148(&qword_1EB8A6FB0);
    sub_1B4D18C0C();
    (*(v6 + 8))(v9, v5);
    v13 = v29;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 9) = v13;
    *(a2 + 10) = v27;
    v14 = v20;
    v15 = v18;
    *(a2 + 16) = v19;
    *(a2 + 24) = v15;
    *(a2 + 32) = BYTE4(v17);
    *(a2 + 40) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

BOOL sub_1B4AFFA34(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 32);
  v6 = a1[5];
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 9);
  v10 = *(a2 + 10);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v20 = *a1;
  v21 = v2;
  v22 = v3;
  v23 = v4;
  v24 = *(a1 + 1);
  v25 = v5;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = *(a2 + 16);
  v19 = v11;
  if ((_s19FitnessIntelligence17WorkoutVoiceAlertV2eeoiySbAC_ACtFZ_0(&v20, &v14) & 1) == 0)
  {
    return 0;
  }

  return sub_1B49B0864(v6, v12);
}

unint64_t sub_1B4AFFAFC()
{
  result = qword_1EB8AA228;
  if (!qword_1EB8AA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA228);
  }

  return result;
}

unint64_t sub_1B4AFFB50()
{
  result = qword_1EB8AA230;
  if (!qword_1EB8AA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA230);
  }

  return result;
}

unint64_t sub_1B4AFFBA4()
{
  result = qword_1EB8AA240;
  if (!qword_1EB8AA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA240);
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

uint64_t sub_1B4AFFC0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4AFFC54(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_1B4AFFCC4()
{
  result = qword_1EB8AA248;
  if (!qword_1EB8AA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA248);
  }

  return result;
}

unint64_t sub_1B4AFFD1C()
{
  result = qword_1EB8AA250;
  if (!qword_1EB8AA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA250);
  }

  return result;
}

unint64_t sub_1B4AFFD74()
{
  result = qword_1EB8AA258;
  if (!qword_1EB8AA258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA258);
  }

  return result;
}

uint64_t sub_1B4AFFE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E696E69617274 && a2 == 0xEF79614464616F4CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B4AFFE9C(uint64_t a1)
{
  v2 = sub_1B4B00060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4AFFED8(uint64_t a1)
{
  v2 = sub_1B4B00060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrainingLoadFact.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA260, &qword_1B4D2DCD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B00060();
  sub_1B4D18EFC();
  v12 = v8;
  sub_1B4B000B4();
  sub_1B4D18D0C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B4B00060()
{
  result = qword_1EB8AA268;
  if (!qword_1EB8AA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA268);
  }

  return result;
}

unint64_t sub_1B4B000B4()
{
  result = qword_1EB8AA270;
  if (!qword_1EB8AA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA270);
  }

  return result;
}

uint64_t TrainingLoadFact.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA278, &qword_1B4D2DCD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B00060();
  sub_1B4D18EEC();
  if (!v2)
  {
    sub_1B4B00274();
    sub_1B4D18C0C();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1B4B00274()
{
  result = qword_1EB8AA280;
  if (!qword_1EB8AA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA280);
  }

  return result;
}

unint64_t sub_1B4B0031C()
{
  result = qword_1EB8AA288;
  if (!qword_1EB8AA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA288);
  }

  return result;
}

unint64_t sub_1B4B00374()
{
  result = qword_1EB8AA290;
  if (!qword_1EB8AA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA290);
  }

  return result;
}

unint64_t sub_1B4B003CC()
{
  result = qword_1EB8AA298;
  if (!qword_1EB8AA298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA298);
  }

  return result;
}

uint64_t AverageWorkoutDurationFact.init(activityType:numberOfWorkouts:averageDuration:currentDuration:workoutHasEnded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v10 = type metadata accessor for AverageWorkoutDurationFact();
  v11 = v10[6];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v13 = *(*(v12 - 8) + 32);
  v13(&a6[v11], a3, v12);
  result = (v13)(&a6[v10[7]], a4, v12);
  a6[v10[8]] = a5;
  return result;
}

uint64_t type metadata accessor for AverageWorkoutDurationFact()
{
  result = qword_1EB8AA2B8;
  if (!qword_1EB8AA2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4B00540()
{
  v1 = *v0;
  v2 = 0x4465676172657661;
  v3 = 0x44746E6572727563;
  if (v1 != 3)
  {
    v3 = 0x4874756F6B726F77;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000013;
  if (*v0)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B4B005FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B01410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4B00624(uint64_t a1)
{
  v2 = sub_1B4B010C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B00660(uint64_t a1)
{
  v2 = sub_1B4B010C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AverageWorkoutDurationFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA2A0, &unk_1B4D2DE98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B010C8();
  sub_1B4D18EFC();
  v24 = *v3;
  v23 = 0;
  v11 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B4D18D0C();

  if (!v2)
  {
    v12 = *(v3 + 8);
    v22 = 1;
    sub_1B4D18CEC();
    v18 = type metadata accessor for AverageWorkoutDurationFact();
    v13 = *(v18 + 24);
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B4D18D0C();
    v14 = v18;
    v15 = *(v18 + 28);
    v20 = 3;
    sub_1B4D18D0C();
    v16 = *(v3 + *(v14 + 32));
    v19 = 4;
    sub_1B4D18CCC();
  }

  return (*(v6 + 8))(v9, v5);
}

void AverageWorkoutDurationFact.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA2B0, &qword_1B4D2DEA8);
  v11 = *(v10 - 8);
  v38 = v10;
  v39 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v32 - v13;
  v15 = type metadata accessor for AverageWorkoutDurationFact();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B010C8();
  v40 = v14;
  v20 = v41;
  sub_1B4D18EEC();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v41 = v9;
    v33 = v15;
    v34 = v18;
    v21 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v46 = 0;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80);
    v22 = v38;
    sub_1B4D18C0C();
    v23 = v34;
    *v34 = v47;
    v45 = 1;
    v23[1] = sub_1B4D18BEC();
    v44 = 2;
    v24 = sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10);
    v25 = v41;
    v32[1] = v24;
    sub_1B4D18C0C();
    v26 = v23 + *(v33 + 24);
    v41 = *(v36 + 32);
    v41(v26, v25, v21);
    v43 = 3;
    sub_1B4D18C0C();
    v27 = v33;
    v41(v34 + *(v33 + 28), v6, v21);
    v42 = 4;
    v28 = sub_1B4D18BCC();
    (*(v39 + 8))(v40, v22);
    v29 = v28 & 1;
    v31 = v34;
    v30 = v35;
    *(v34 + *(v27 + 32)) = v29;
    sub_1B4B0111C(v31, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1B4B01180(v31);
  }
}

uint64_t _s19FitnessIntelligence26AverageWorkoutDurationFactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = v6, objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if (sub_1B4D187AC())
    {
      goto LABEL_7;
    }

LABEL_12:
    v22 = 0;
    return v22 & 1;
  }

  v9 = v8;
  v10 = v4;
  v11 = v5;
  [v7 coordinate];
  v13 = v12;
  [v9 coordinate];
  if (v13 != v14)
  {

    goto LABEL_12;
  }

  [v7 coordinate];
  v16 = v15;
  [v9 coordinate];
  v18 = v17;

  if (v16 != v18)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v19 = type metadata accessor for AverageWorkoutDurationFact();
  v20 = v19[6];
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = v19[7];
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = *(a1 + v19[8]) ^ *(a2 + v19[8]) ^ 1;
  return v22 & 1;
}

unint64_t sub_1B4B010C8()
{
  result = qword_1EB8AA2A8;
  if (!qword_1EB8AA2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA2A8);
  }

  return result;
}

uint64_t sub_1B4B0111C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AverageWorkoutDurationFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B01180(uint64_t a1)
{
  v2 = type metadata accessor for AverageWorkoutDurationFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4B01204()
{
  sub_1B49BEEDC(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
  if (v0 <= 0x3F)
  {
    sub_1B49BEEDC(319, &qword_1EDC3CB28, &qword_1EDC378C0, 0x1E696B008, MEMORY[0x1E6968070]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B4B0130C()
{
  result = qword_1EB8AA2C8;
  if (!qword_1EB8AA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA2C8);
  }

  return result;
}

unint64_t sub_1B4B01364()
{
  result = qword_1EB8AA2D0;
  if (!qword_1EB8AA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA2D0);
  }

  return result;
}

unint64_t sub_1B4B013BC()
{
  result = qword_1EB8AA2D8;
  if (!qword_1EB8AA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA2D8);
  }

  return result;
}

uint64_t sub_1B4B01410(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D616E0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4465676172657661 && a2 == 0xEF6E6F6974617275 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44746E6572727563 && a2 == 0xEF6E6F6974617275 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4874756F6B726F77 && a2 == 0xEF6465646E457361)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t ThisWeekCurrentWorkoutDistanceFact.init(activityType:currentWeekTotalDistance:thisTimeLastWeekTotalDistance:lastWeekDistance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact();
  v10 = v9[5];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  sub_1B4B016F8(a3, &a5[v9[6]]);
  v12 = &a5[v9[7]];

  return sub_1B4B016F8(a4, v12);
}

uint64_t type metadata accessor for ThisWeekCurrentWorkoutDistanceFact()
{
  result = qword_1EB8AA2F8;
  if (!qword_1EB8AA2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4B016F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4B0176C()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000010;
  }

  v2 = 0xD000000000000018;
  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}

uint64_t sub_1B4B017E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B02A4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4B01808(uint64_t a1)
{
  v2 = sub_1B4B026A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B01844(uint64_t a1)
{
  v2 = sub_1B4B026A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ThisWeekCurrentWorkoutDistanceFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA2E0, &unk_1B4D2E060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B026A0();
  sub_1B4D18EFC();
  v22 = *v3;
  v21 = 0;
  v11 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80);
  sub_1B4D18D0C();

  if (!v2)
  {
    v17 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact();
    v12 = *(v17 + 20);
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4D18D0C();
    v13 = v17;
    v14 = *(v17 + 24);
    v19 = 2;
    sub_1B4D18CAC();
    v15 = *(v13 + 28);
    v18 = 3;
    sub_1B4D18CAC();
  }

  return (*(v6 + 8))(v9, v5);
}

void ThisWeekCurrentWorkoutDistanceFact.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v30 = v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA2F0, &qword_1B4D2E070);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v27 - v15;
  v17 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B026A0();
  v34 = v16;
  v22 = v35;
  sub_1B4D18EEC();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v35 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v39 = 0;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80);
    v23 = v32;
    sub_1B4D18C0C();
    v24 = v35;
    *v35 = v40;
    v38 = 1;
    v27[2] = sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4D18C0C();
    (*(v31 + 32))(v24 + v17[5], v11, v8);
    v37 = 2;
    v25 = v30;
    v27[1] = 0;
    sub_1B4D18BAC();
    sub_1B4B016F8(v25, v24 + v17[6]);
    v36 = 3;
    v26 = v29;
    sub_1B4D18BAC();
    (*(v33 + 8))(v34, v23);
    sub_1B4B016F8(v26, v24 + v17[7]);
    sub_1B4B026F4(v24, v28);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1B4B02758(v24);
  }
}

BOOL _s19FitnessIntelligence34ThisWeekCurrentWorkoutDistanceFactV2eeoiySbAC_ACtFZ_0(void **a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v54[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54[-v13];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F50, &qword_1B4D425A0);
  v15 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v17 = &v54[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54[-v19];
  v60 = a1;
  v61 = a2;
  v21 = *a1;
  v22 = *a2;
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23 && (v24 = v23, objc_opt_self(), (v25 = swift_dynamicCastObjCClass()) != 0))
  {
    v26 = v25;
    v57 = v17;
    v27 = v21;
    v28 = v22;
    [v24 coordinate];
    v30 = v29;
    [v26 coordinate];
    if (v30 != v31)
    {

      return 0;
    }

    [v24 coordinate];
    v33 = v32;
    [v26 coordinate];
    v35 = v34;

    v17 = v57;
    if (v33 != v35)
    {
      return 0;
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if ((sub_1B4D187AC() & 1) == 0)
    {
      return 0;
    }
  }

  v36 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact();
  v37 = v36[5];
  v38 = sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
  v39 = v60;
  v40 = v61;
  v57 = v38;
  if ((sub_1B4D1816C() & 1) == 0)
  {
    return 0;
  }

  v41 = v39;
  v42 = v36[6];
  v43 = *(v59 + 48);
  sub_1B4B02BB8(v41 + v42, v20);
  sub_1B4B02BB8(v40 + v42, &v20[v43]);
  v44 = *(v5 + 48);
  if (v44(v20, 1, v4) == 1)
  {
    if (v44(&v20[v43], 1, v4) == 1)
    {
      v56 = v5;
      sub_1B4975024(v20, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      goto LABEL_16;
    }

LABEL_14:
    v45 = v20;
LABEL_22:
    sub_1B4975024(v45, &qword_1EB8A6F50, &qword_1B4D425A0);
    return 0;
  }

  sub_1B4B02BB8(v20, v14);
  if (v44(&v20[v43], 1, v4) == 1)
  {
    (*(v5 + 8))(v14, v4);
    goto LABEL_14;
  }

  (*(v5 + 32))(v8, &v20[v43], v4);
  v55 = sub_1B4D1816C();
  v56 = v5;
  v46 = *(v5 + 8);
  v46(v8, v4);
  v46(v14, v4);
  sub_1B4975024(v20, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v47 = v36[7];
  v48 = *(v59 + 48);
  sub_1B4B02BB8(v60 + v47, v17);
  sub_1B4B02BB8(v61 + v47, &v17[v48]);
  if (v44(v17, 1, v4) != 1)
  {
    v49 = v58;
    sub_1B4B02BB8(v17, v58);
    if (v44(&v17[v48], 1, v4) == 1)
    {
      (*(v56 + 8))(v49, v4);
      goto LABEL_21;
    }

    v51 = v56;
    (*(v56 + 32))(v8, &v17[v48], v4);
    v52 = sub_1B4D1816C();
    v53 = *(v51 + 8);
    v53(v8, v4);
    v53(v49, v4);
    sub_1B4975024(v17, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return (v52 & 1) != 0;
  }

  if (v44(&v17[v48], 1, v4) != 1)
  {
LABEL_21:
    v45 = v17;
    goto LABEL_22;
  }

  sub_1B4975024(v17, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  return 1;
}

unint64_t sub_1B4B026A0()
{
  result = qword_1EB8AA2E8;
  if (!qword_1EB8AA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA2E8);
  }

  return result;
}

uint64_t sub_1B4B026F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B02758(uint64_t a1)
{
  v2 = type metadata accessor for ThisWeekCurrentWorkoutDistanceFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4B027DC()
{
  sub_1B49BEEDC(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
  if (v0 <= 0x3F)
  {
    sub_1B49BEEDC(319, &qword_1EDC3CE78, &qword_1EDC3CB80, 0x1E696B058, MEMORY[0x1E6968070]);
    if (v1 <= 0x3F)
    {
      sub_1B4B028D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4B028D0()
{
  if (!qword_1EDC3CB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC3CB30);
    }
  }
}

unint64_t sub_1B4B02948()
{
  result = qword_1EB8AA308;
  if (!qword_1EB8AA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA308);
  }

  return result;
}

unint64_t sub_1B4B029A0()
{
  result = qword_1EB8AA310;
  if (!qword_1EB8AA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA310);
  }

  return result;
}

unint64_t sub_1B4B029F8()
{
  result = qword_1EB8AA318;
  if (!qword_1EB8AA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA318);
  }

  return result;
}

uint64_t sub_1B4B02A4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001B4D61700 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001B4D61720 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D61740 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

uint64_t sub_1B4B02BB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B02C28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for RingsBestMeasurementEntry();
  sub_1B4AF497C(a2, &a4[*(v7 + 28)]);
  v8 = *(v7 + 32);
  v9 = sub_1B4D1746C();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a4[v8], a3, v9);
}

uint64_t RingsBestMetricPropertyValue.topEntries.getter()
{
  sub_1B4959850();
}

uint64_t static RingsBestMetricPropertyValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(*(a5 + 16) + 8);
  return sub_1B4D184DC();
}

uint64_t RingsBestMetricPropertyValue.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 32) + 24);
  return sub_1B4D184CC();
}

uint64_t RingsBestMetricPropertyValue.hashValue.getter(uint64_t a1)
{
  v3 = *v1;
  sub_1B4D18E8C();
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 32) + 24);
  sub_1B4D184CC();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B02D9C(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  RingsBestMetricPropertyValue.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t RingsBestMeasurementEntry.measurement.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v6 = sub_1B4D1746C();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t sub_1B4B02EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1B4D1746C();
  v9 = *(type metadata accessor for RingsBestMeasurementEntry() + 32);
  WitnessTable = swift_getWitnessTable();
  return a5(a1 + v9, a2 + v9, v8, WitnessTable) & 1;
}

uint64_t RingsBestMeasurementEntry.hash(into:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1B8C7D2C0](*v2);
  v4 = v2 + *(a2 + 28);
  LocalizedDate.hash(into:)();
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  sub_1B4D1746C();
  swift_getWitnessTable();
  return sub_1B4D1808C();
}

uint64_t RingsBestMeasurementEntry.hashValue.getter(uint64_t a1)
{
  sub_1B4D18E8C();
  RingsBestMeasurementEntry.hash(into:)(v3, a1);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B03048(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  RingsBestMeasurementEntry.hash(into:)(v4, a2);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4B030CC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4B03108(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4B03144(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4B031C0(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1B4B03240()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B4B03294(uint64_t a1)
{
  result = type metadata accessor for LocalizedDate();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = sub_1B4D1746C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static CompletedWorkoutsFact.RelatedActivity.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1B49DF540();
  return sub_1B4D187AC() & (v3 == v5);
}

uint64_t sub_1B4B033AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1B49DF540();
  return sub_1B4D187AC() & (v3 == v5);
}

__n128 CompletedWorkoutsFact.init(workoutRecordsByWorkoutType:currentActivityType:relatedActivity:numberOfWorkoutsForCurrentActivityType:workoutCount:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  a6->n128_u64[0] = a1;
  a6->n128_u64[1] = a2;
  result = *a3;
  a6[1] = *a3;
  a6[2].n128_u64[0] = a4;
  a6[2].n128_u64[1] = a5;
  return result;
}

BOOL _s19FitnessIntelligence21CompletedWorkoutsFactV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  sub_1B4A24660(*a1, *a2);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v20 = v5;
  sub_1B49DF540();
  if ((sub_1B4D187AC() & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    if (!v8)
    {
      if (v6 == v11)
      {
        return v20 == v10;
      }

      return 0;
    }

    v18 = 0;
    v4 = v8;
LABEL_12:
    v19 = v4;

    return 0;
  }

  if (!v8)
  {
    v18 = v4;
    goto LABEL_12;
  }

  v13 = v4;
  v14 = v8;
  v15 = v13;
  v16 = sub_1B4D187AC();

  result = 0;
  if ((v16 & 1) != 0 && v3 == v9 && v6 == v11)
  {
    return v20 == v10;
  }

  return result;
}

uint64_t sub_1B4B03538(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1B4B03580(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1B4B03608()
{
  v1 = *v0;
  v2 = 0x7461527472616568;
  v3 = 0xD000000000000010;
  v4 = 0x656C7341656D6974;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x79784F646F6F6C62;
  if (v1 != 1)
  {
    v5 = 0x7461726970736572;
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

uint64_t sub_1B4B036E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B0404C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4B03710(uint64_t a1)
{
  v2 = sub_1B4B03E58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B0374C(uint64_t a1)
{
  v2 = sub_1B4B03E58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VitalsFact.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA320, &qword_1B4D2E570);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = *v1;
  v23 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v19 = v1[4];
  v18 = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B03E58();
  v12 = v4;
  sub_1B4D18EFC();
  LOBYTE(v22) = v9;
  v24 = 0;
  sub_1B49967BC();
  sub_1B4D18D0C();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = v20;
  v13 = v21;
  v15 = v19;
  v16 = v18;
  LOBYTE(v22) = v23;
  v24 = 1;
  sub_1B4D18D0C();
  LOBYTE(v22) = v13;
  v24 = 2;
  sub_1B4D18D0C();
  LOBYTE(v22) = v14;
  v24 = 3;
  sub_1B4D18D0C();
  LOBYTE(v22) = v15;
  v24 = 4;
  sub_1B4D18D0C();
  v22 = v16;
  v24 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA330, &qword_1B4D2E578);
  sub_1B4B03EAC(&qword_1EB8AA338, sub_1B49967BC);
  sub_1B4D18D0C();
  return (*(v5 + 8))(v8, v12);
}

uint64_t VitalsFact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA340, &qword_1B4D2E580);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B03E58();
  sub_1B4D18EEC();
  if (!v2)
  {
    v22 = 0;
    sub_1B4996810();
    sub_1B4D18C0C();
    v11 = v20;
    v22 = 1;
    sub_1B4D18C0C();
    v21 = v11;
    v12 = v20;
    v22 = 2;
    sub_1B4D18C0C();
    v19 = v12;
    v13 = v20;
    v22 = 3;
    sub_1B4D18C0C();
    v18 = v13;
    LOBYTE(v13) = v20;
    v22 = 4;
    sub_1B4D18C0C();
    v15 = v13;
    LOBYTE(v13) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA330, &qword_1B4D2E578);
    v22 = 5;
    sub_1B4B03EAC(&qword_1EB8AA348, sub_1B4996810);
    sub_1B4D18C0C();
    (*(v6 + 8))(v9, v5);
    v16 = v20;
    *a2 = v21;
    v17 = v18;
    *(a2 + 1) = v19;
    *(a2 + 2) = v17;
    *(a2 + 3) = v15;
    *(a2 + 4) = v13;
    *(a2 + 8) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t _s19FitnessIntelligence10VitalsFactV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  a3.i32[0] = *a1;
  a4.i32[0] = *a2;
  if ((vminv_u16(vceq_s16((vmovl_u8(a3).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL))) & 1) != 0 && *(a1 + 4) == *(a2 + 4))
  {
    return sub_1B4A0C94C(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1B4B03E58()
{
  result = qword_1EB8AA328;
  if (!qword_1EB8AA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA328);
  }

  return result;
}

uint64_t sub_1B4B03EAC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AA330, &qword_1B4D2E578);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4B03F48()
{
  result = qword_1EB8AA350;
  if (!qword_1EB8AA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA350);
  }

  return result;
}

unint64_t sub_1B4B03FA0()
{
  result = qword_1EB8AA358;
  if (!qword_1EB8AA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA358);
  }

  return result;
}

unint64_t sub_1B4B03FF8()
{
  result = qword_1EB8AA360;
  if (!qword_1EB8AA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA360);
  }

  return result;
}

uint64_t sub_1B4B0404C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461527472616568 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79784F646F6F6C62 && a2 == 0xEB000000006E6567 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461726970736572 && a2 == 0xEF6574615279726FLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F060 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C7341656D6974 && a2 == 0xEA00000000007065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D61760 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

uint64_t sub_1B4B04274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_1B4D188DC();
  v6 = result;
  v7 = 1 << *(a1 + 32);
  if (result == v7)
  {
    v8 = 0;
  }

  else
  {
    result = sub_1B4B05C48(result, *(a1 + 36), a1, &v9);
    v8 = v9;
  }

  *a2 = v8;
  *(a2 + 8) = v6 == v7;
  return result;
}

uint64_t SnapshotContainerProtocol.make(for:with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA368, &unk_1B4D2E750);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B4D1A800;
  sub_1B497558C(a2, v9 + 32);
  SnapshotContainerProtocol.make(for:with:)(&v11, v9, a3, a4, a5);
}

uint64_t SnapshotContainerProtocol.make(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v26 = a5;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v16;
  (*(v18 + 32))(&v27, v19, v18, v13);
  if (v17 >= v27)
  {
    v27 = v17;
    result = static SnapshotContainerProtocol.from(cacheIndex:_:)(&v27, a2, a3, a4, v15);
    if (!v6)
    {
      static SnapshotContainerProtocol.add(_:_:)(v5, v15, a3, a4, v26);
      return (*(v11 + 8))(v15, a3);
    }
  }

  else
  {
    if (qword_1EDC3CBB8[0] != -1)
    {
      swift_once();
    }

    v20 = sub_1B4D17F6C();
    __swift_project_value_buffer(v20, qword_1EDC37A40);
    v21 = sub_1B4D17F5C();
    v22 = sub_1B4D1871C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B4953000, v21, v22, "Adding previous container to current container. Ignoring...", v23, 2u);
      MEMORY[0x1B8C7DDA0](v23, -1, -1);
    }

    return (*(v11 + 16))(v26, v7, a3);
  }

  return result;
}

uint64_t static SnapshotContainerProtocol.from(cacheIndex:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v77 = a5;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v75 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v74 = &v63 - v15;
  v16 = swift_checkMetadataState();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v27 = *a1;
  v28 = *(a2 + 16);
  if (!v28)
  {
    v78 = *a1;
    return static SnapshotContainerProtocol.empty(cacheIndex:)(&v78, a3, a4);
  }

  v72 = v6;
  v73 = v27;
  v68 = v21;
  v69 = &v63 - v23;
  v64 = v26;
  v65 = v25;
  v70 = v13;
  v71 = AssociatedTypeWitness;
  v66 = v24;
  v67 = a4;
  v76 = a3;
  v83 = MEMORY[0x1E69E7CC0];
  sub_1B4BCF09C(0, v28, 0);
  v29 = v83;
  v30 = a2 + 32;
  do
  {
    sub_1B497558C(v30, &v78);
    v32 = v80;
    v31 = v81;
    __swift_project_boxed_opaque_existential_1(&v78, v80);
    (*(v31 + 8))(&v82, v32, v31);
    __swift_destroy_boxed_opaque_existential_1Tm(&v78);
    v33 = v82;
    v83 = v29;
    v35 = *(v29 + 16);
    v34 = *(v29 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1B4BCF09C((v34 > 1), v35 + 1, 1);
      v29 = v83;
    }

    *(v29 + 16) = v35 + 1;
    *(v29 + 8 * v35 + 32) = v33;
    v30 += 40;
    --v28;
  }

  while (v28);
  v36 = sub_1B4A052E8(v29);

  if (*(v36 + 16) == 1)
  {
    sub_1B4B04274(v36, &v78);

    v37 = v76;
    if (v79 != 1)
    {
      v38 = v73;
      if (v78 == v73)
      {
        v78 = v73;
        v40 = v74;
        v39 = v75;
        sub_1B4B05518();
        v41 = v69;
        v42 = v72;
        sub_1B4BDE744(a2, &v78, v40, 0, 0, v16, v39, v69);
        if (v42)
        {
          return (*(v70 + 8))(v40, v71);
        }

        (*(v70 + 8))(v40, v71);
        v78 = v38;
        v59 = v66;
        v60 = *(v66 + 16);
        v60(v68, v41, v16);
        v61 = v64;
        v60(v64, v41, v16);
        v62 = v65;
        v60(v65, v41, v16);
        (*(v67 + 64))(&v78, v68, v61, v62, v37);
        return (*(v59 + 8))(v41, v16);
      }
    }
  }

  else
  {
  }

  if (qword_1EDC3CBB8[0] != -1)
  {
    swift_once();
  }

  v44 = sub_1B4D17F6C();
  __swift_project_value_buffer(v44, qword_1EDC37A40);
  v45._countAndFlagsBits = 0xD00000000000002BLL;
  v45._object = 0x80000001B4D61780;
  v46._object = 0x80000001B4D617B0;
  v46._countAndFlagsBits = 0xD000000000000013;
  Logger.trace(file:function:)(v45, v46);

  v47 = sub_1B4D17F5C();
  v48 = sub_1B4D1871C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v78 = v50;
    *v49 = 136315394;
    v51 = sub_1B4D1900C();
    v53 = sub_1B49558AC(v51, v52, &v78);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BB8, &unk_1B4D2B4C0);
    v55 = MEMORY[0x1B8C7C800](a2, v54);
    v57 = sub_1B49558AC(v55, v56, &v78);

    *(v49 + 14) = v57;
    _os_log_impl(&dword_1B4953000, v47, v48, "%s Invalid representables: %s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8C7DDA0](v50, -1, -1);
    MEMORY[0x1B8C7DDA0](v49, -1, -1);
  }

  sub_1B4B05C9C();
  swift_allocError();
  *v58 = 0;
  return swift_willThrow();
}

{
  v8 = *a1;
  sub_1B4B05CF0(a2, &v11);
  if (v12)
  {
    sub_1B496F398(&v11, v13);
    *&v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA368, &unk_1B4D2E750);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B4D1A800;
    sub_1B497558C(v13, v9 + 32);
    static SnapshotContainerProtocol.from(cacheIndex:_:)(&v11, v9, a3, a4, a5);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    sub_1B4B05D60(&v11);
    v13[0] = v8;
    return static SnapshotContainerProtocol.empty(cacheIndex:)(v13, a3, a4);
  }
}

uint64_t static SnapshotContainerProtocol.add(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  v59 = AssociatedTypeWitness;
  v11 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v49 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v49 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v56 = &v49 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v57 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v61 = &v49 - v24;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v25 = sub_1B4D1796C();
  __swift_project_value_buffer(v25, qword_1EDC3CE48);
  v26 = *(a4 + 32);
  v26(&v63, a3, a4);
  v26(&v62, a3, a4);
  result = Calendar.isSameMonth(_:_:)(&v63, &v62);
  if (!v5)
  {
    v28 = a1;
    v29 = a2;
    v30 = result;
    v51 = v28;
    v26(&v63, a3, a4);
    v26(&v62, a3, a4);
    v50 = Calendar.isSameWeek(_:_:)(&v63, &v62);
    v26(&v63, a3, a4);
    v31 = v63;
    v26(&v62, a3, a4);
    v32 = v62;
    if (v62 <= v31)
    {
      v32 = v31;
    }

    v63 = v32;
    v33 = *(a4 + 40);
    if (v30)
    {
      v34 = v57;
      v33(a3, a4);
      v35 = v56;
      v33(a3, a4);
      v36 = v35;
      v37 = v59;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      static SnapshotProperties.add(_:_:)(v34, v36, v37, AssociatedConformanceWitness);
      v39 = v29;
      v40 = v60;
      v49 = v39;
      v41 = *(v58 + 8);
      v41(v36, v37);
      v41(v34, v37);
    }

    else
    {
      v33(a3, a4);
      v49 = v29;
      v37 = v59;
      v40 = v60;
    }

    v42 = *(a4 + 48);
    if (v50)
    {
      v43 = v53;
      v42(a3, a4);
      v44 = v52;
      v42(a3, a4);
      v45 = v43;
      v40 = v60;
      v46 = swift_getAssociatedConformanceWitness();
      static SnapshotProperties.add(_:_:)(v45, v44, v37, v46);
      v47 = *(v58 + 8);
      v47(v44, v37);
      v47(v45, v37);
    }

    else
    {
      v42(a3, a4);
    }

    v48 = v54;
    (*(a4 + 56))(a3, a4);
    return (*(a4 + 64))(&v63, v61, v40, v48, a3, a4);
  }

  return result;
}

uint64_t static SnapshotContainerProtocol.empty(cacheIndex:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v19 = *a1;
  v16 = v19;
  v20 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static SnapshotProperties.empty(cacheIndex:)(&v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = v16;
  static SnapshotProperties.empty(cacheIndex:)(&v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  v19 = v16;
  static SnapshotProperties.empty(cacheIndex:)(&v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(a3 + 64))(&v20, v15, v12, v9, a2, a3);
}

uint64_t sub_1B4B05518()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t SnapshotContainerProtocol.uniqueSnapshotProperties()(uint64_t a1, void (**a2)(void, void))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1B4B05BD4(AssociatedTypeWitness, AssociatedTypeWitness);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = *(*(AssociatedTypeWitness - 8) + 72);
  v9 = *(*(AssociatedTypeWitness - 8) + 80);
  swift_allocObject();
  v10 = sub_1B4D1841C();
  a2[5](a1, a2);
  a2[6](a1, a2);
  a2[7](a1, a2);
  sub_1B49BA6A8(v10);
  sub_1B4D1843C();
  sub_1B4D184BC();
  swift_getWitnessTable();
  sub_1B4D182DC();

  return v12;
}

uint64_t sub_1B4B057E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v29 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v25 - v13;
  v15 = *a1;
  v16 = *(v10 + 16);
  v27 = v10 + 16;
  v28 = a2;
  v26 = v16;
  (v16)(&v25 - v13, a2, AssociatedTypeWitness, v12);
  v17 = *(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v10 + 32))(v18 + ((v17 + 32) & ~v17), v14, AssociatedTypeWitness);
  v30 = v15;
  sub_1B4D184BC();

  swift_getWitnessTable();
  v30 = sub_1B4D189DC();
  swift_getWitnessTable();
  LOBYTE(v14) = sub_1B4D186AC();

  if (v14)
  {
    v19 = sub_1B4B05BD4(AssociatedTypeWitness, AssociatedTypeWitness);
    v20 = ((*(v19 + 48) + v17) & ~v17) + *(v10 + 72);
    v21 = *(v19 + 52) | v17;
    swift_allocObject();
    v22 = sub_1B4D1841C();
    v26(v23, v28, AssociatedTypeWitness);
    sub_1B49BA6A8(v22);
    v15 = sub_1B4D1842C();
  }

  else
  {
  }

  *v29 = v15;
  return result;
}

BOOL sub_1B4B05A90()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 88);
  v2 = swift_checkMetadataState();
  v1(&v8, v2, AssociatedConformanceWitness);
  v3 = v8;
  v1(&v7, v2, AssociatedConformanceWitness);
  if (v3 != v7)
  {
    return 0;
  }

  v4 = *(AssociatedConformanceWitness + 96);
  v4(&v8, v2, AssociatedConformanceWitness);
  v5 = v8;
  v4(&v7, v2, AssociatedConformanceWitness);
  return v5 == v7;
}

uint64_t sub_1B4B05BD4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7108, &unk_1B4D2E7A0);
  }

  else
  {

    return sub_1B4D18D6C();
  }
}

uint64_t sub_1B4B05C48@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + 8 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1B4B05C9C()
{
  result = qword_1EB8AA370;
  if (!qword_1EB8AA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA370);
  }

  return result;
}

uint64_t sub_1B4B05CF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA378, &unk_1B4D2E760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B05D60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA378, &unk_1B4D2E760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1B4B05E5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(swift_getAssociatedTypeWitness() - 8) + 80);

  return sub_1B4B05A90();
}

uint64_t sub_1B4B05EF8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v265 = a3;
  v266 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v237 = &v232 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v242 = &v232 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v252 = &v232 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v258 = (&v232 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v259 = *(v13 - 8);
  v260 = v13;
  v14 = *(v259 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v236 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v238 = &v232 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v241 = &v232 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v246 = &v232 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v251 = &v232 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v235 = &v232 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v234 = &v232 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v248 = &v232 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v254 = &v232 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v34 = *(v33 - 8);
  v256 = v33;
  v257 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v239 = &v232 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v244 = &v232 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v245 = &v232 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v247 = &v232 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v253 = &v232 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v48 = &v232 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v232 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v232 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v232 - v56;
  MEMORY[0x1EEE9AC00](v58);
  v240 = &v232 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v232 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v64 = *(v63 - 8);
  v261 = v63;
  v262 = v64;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v249 = &v232 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v255 = &v232 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v232 - v70;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v232 - v73;
  MEMORY[0x1EEE9AC00](v75);
  v243 = &v232 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v232 - v78;
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v232 - v81;
  v83 = type metadata accessor for RingProgressType();
  v263 = *(v83 - 8);
  v264 = v83;
  v84 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v233 = &v232 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86);
  v250 = &v232 - v87;
  v88 = *a2;
  v89 = type metadata accessor for HKActivitySummaryRepresentable();
  if (v88 <= 1)
  {
    if (!v88)
    {
      v90 = v266;
      v91 = v266 + v89[18];
      if ((*(v91 + 8) & 1) == 0 && *v91 == 2)
      {
        v92 = v89;
        sub_1B4974FBC(v266 + v89[10], v62, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        v93 = v261;
        v94 = v262;
        v95 = *(v262 + 48);
        if (v95(v62, 1, v261) == 1)
        {
          sub_1B4B10A80(v90, type metadata accessor for HKActivitySummaryRepresentable);
        }

        else
        {
          v260 = *(v94 + 32);
          v260(v82, v62, v93);
          v62 = v240;
          sub_1B4974FBC(v90 + v92[9], v240, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          if (v95(v62, 1, v93) != 1)
          {
            v260(v79, v62, v93);
            v183 = sub_1B4A612D4();
            if ((v184 & 1) == 0)
            {
              v262 = v183;
              sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
              v192 = v243;
              sub_1B4D1744C();
              sub_1B4B10A80(v90, type metadata accessor for HKActivitySummaryRepresentable);
              v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
              v194 = v193[12];
              v195 = v193[16];
              v196 = v193[20];
              v197 = v250;
              v198 = v260;
              v260(v250, v82, v93);
              v198(v197 + v194, v79, v93);
              v198(v197 + v195, v192, v93);
              *(v197 + v196) = v262;
              v199 = v264;
              swift_storeEnumTagMultiPayload();
              sub_1B4B10A80(v197, type metadata accessor for RingProgressType);
              v150 = v199;
              v148 = 1;
              v149 = v265;
              return (*(v263 + 56))(v149, v148, 1, v150);
            }

            sub_1B4B10A80(v90, type metadata accessor for HKActivitySummaryRepresentable);
            v185 = *(v262 + 8);
            v185(v79, v93);
            v185(v82, v93);
            goto LABEL_40;
          }

          sub_1B4B10A80(v90, type metadata accessor for HKActivitySummaryRepresentable);
          (*(v94 + 8))(v82, v93);
        }

        v102 = &qword_1EB8A6C90;
        v103 = &unk_1B4D1BBD0;
        goto LABEL_38;
      }

      v115 = v89;
      v62 = v254;
      sub_1B4974FBC(v266 + v89[8], v254, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      v116 = v256;
      v117 = v257;
      v118 = *(v257 + 48);
      if (v118(v62, 1, v256) == 1)
      {
        sub_1B4B10A80(v90, type metadata accessor for HKActivitySummaryRepresentable);
        v102 = &qword_1EB8A6CA8;
        v103 = &unk_1B4D1C2B0;
LABEL_38:
        v104 = v62;
        goto LABEL_39;
      }

      if (qword_1EDC36DF0 != -1)
      {
        swift_once();
      }

      v126 = v247;
      sub_1B4D1745C();
      v262 = *(v117 + 8);
      (v262)(v62, v116);
      v127 = v253;
      v128 = v126;
      v129 = *(v117 + 32);
      v129(v253, v128, v116);
      v130 = v90 + v115[7];
      v131 = v248;
      sub_1B4974FBC(v130, v248, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      if (v118(v131, 1, v116) == 1)
      {
        sub_1B4B10A80(v90, type metadata accessor for HKActivitySummaryRepresentable);
        (v262)(v127, v116);
        v102 = &qword_1EB8A6CA8;
        v103 = &unk_1B4D1C2B0;
        v104 = v131;
        goto LABEL_39;
      }

      v143 = v244;
      sub_1B4D1745C();
      v144 = v262;
      (v262)(v131, v116);
      v145 = v245;
      v129(v245, v143, v116);
      v146 = sub_1B4A612D4();
      if (v147)
      {
        sub_1B4B10A80(v90, type metadata accessor for HKActivitySummaryRepresentable);
        v144(v145, v116);
        v144(v253, v116);
        goto LABEL_40;
      }

      v262 = v146;
      sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
      v175 = v239;
      v176 = v253;
      sub_1B4D1744C();
      sub_1B4B10A80(v90, type metadata accessor for HKActivitySummaryRepresentable);
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v178 = v177[12];
      v179 = v177[16];
      v180 = v129;
      v181 = v177[20];
      v158 = v250;
      v180(v250, v176, v116);
      v180(v158 + v178, v145, v116);
      v180(v158 + v179, v175, v116);
      *(v158 + v181) = v262;
      v159 = v264;
      goto LABEL_47;
    }

    v105 = v266;
    v106 = v89;
    sub_1B4974FBC(v266 + v89[12], v57, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v108 = v261;
    v107 = v262;
    v109 = *(v262 + 48);
    if (v109(v57, 1, v261) == 1)
    {
      sub_1B4B10A80(v105, type metadata accessor for HKActivitySummaryRepresentable);
      v102 = &qword_1EB8A6C90;
      v103 = &unk_1B4D1BBD0;
      v104 = v57;
      goto LABEL_39;
    }

    v260 = *(v107 + 32);
    v260(v74, v57, v108);
    sub_1B4974FBC(v105 + v106[11], v54, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v109(v54, 1, v108) == 1)
    {
      sub_1B4B10A80(v105, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v107 + 8))(v74, v108);
      v102 = &qword_1EB8A6C90;
      v103 = &unk_1B4D1BBD0;
      v104 = v54;
      goto LABEL_39;
    }

    v260(v71, v54, v108);
    v136 = sub_1B4A61B14();
    if (v137)
    {
      sub_1B4B10A80(v105, type metadata accessor for HKActivitySummaryRepresentable);
      v138 = *(v262 + 8);
      v138(v71, v108);
      v138(v74, v108);
      goto LABEL_40;
    }

    v160 = v136;
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v161 = v243;
    sub_1B4D1744C();
    sub_1B4B10A80(v105, type metadata accessor for HKActivitySummaryRepresentable);
    v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v163 = v162[12];
    v164 = v162[16];
    v165 = v162[20];
    v166 = v250;
    v167 = v74;
    v168 = v260;
    v260(v250, v167, v108);
    v168(v166 + v163, v71, v108);
    v168(v166 + v164, v161, v108);
    v158 = v166;
    *(v166 + v165) = v160;
    v159 = v264;
LABEL_47:
    swift_storeEnumTagMultiPayload();
    goto LABEL_48;
  }

  if (v88 != 2)
  {
    v110 = v266;
    v111 = v89;
    sub_1B4974FBC(v266 + v89[12], v51, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v112 = v261;
    v113 = v262;
    v114 = *(v262 + 48);
    if (v114(v51, 1, v261) == 1)
    {
      sub_1B4B10A80(v110, type metadata accessor for HKActivitySummaryRepresentable);
      v102 = &qword_1EB8A6C90;
      v103 = &unk_1B4D1BBD0;
      v104 = v51;
      goto LABEL_39;
    }

    v123 = v255;
    v124 = v51;
    v125 = *(v113 + 32);
    v125(v255, v124, v112);
    v258 = v111;
    sub_1B4974FBC(v110 + v111[11], v48, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v114(v48, 1, v112) == 1)
    {
      sub_1B4B10A80(v110, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v113 + 8))(v123, v112);
      v102 = &qword_1EB8A6C90;
      v103 = &unk_1B4D1BBD0;
      v104 = v48;
      goto LABEL_39;
    }

    v139 = v249;
    v125(v249, v48, v112);
    v140 = sub_1B4A61B14();
    if (v141)
    {
      sub_1B4B10A80(v110, type metadata accessor for HKActivitySummaryRepresentable);
      v142 = *(v113 + 8);
      v142(v139, v112);
      v142(v255, v112);
      goto LABEL_40;
    }

    v252 = v113 + 32;
    v253 = v125;
    v254 = v140;
    v169 = v258;
    v170 = v242;
    sub_1B4974FBC(v110 + v258[14], v242, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    v171 = v259;
    v172 = *(v259 + 48);
    v173 = v260;
    if (v172(v170, 1) == 1)
    {
      sub_1B4B10A80(v110, type metadata accessor for HKActivitySummaryRepresentable);
      v174 = *(v113 + 8);
      v174(v249, v112);
      v174(v255, v112);
      v102 = &qword_1EB8A6D18;
      v103 = &unk_1B4D1BCA0;
      v104 = v170;
      goto LABEL_39;
    }

    v186 = v238;
    v187 = v170;
    v188 = v173;
    v189 = *(v171 + 32);
    v189(v238, v187, v188);
    v190 = v110 + v169[13];
    v122 = v237;
    sub_1B4974FBC(v190, v237, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    if ((v172)(v122, 1, v188) != 1)
    {
      v200 = v236;
      v189(v236, v122, v188);
      v201 = sub_1B4A61EE8();
      if (v202)
      {
        sub_1B4B10A80(v110, type metadata accessor for HKActivitySummaryRepresentable);
        v203 = v200;
        v204 = *(v259 + 8);
        v204(v203, v188);
        v204(v186, v188);
        v205 = *(v262 + 8);
        v205(v249, v112);
        v205(v255, v112);
        goto LABEL_40;
      }

      v262 = v201;
      v206 = v234;
      sub_1B4974FBC(v110 + v258[8], v234, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      v207 = v256;
      v259 = *(v257 + 48);
      if ((v259)(v206, 1, v256) == 1)
      {
        sub_1B4975024(v206, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        v208 = 1;
        v209 = v257;
        v210 = v235;
        v211 = v233;
      }

      else
      {
        v210 = v235;
        v211 = v233;
        if (qword_1EDC36DF0 != -1)
        {
          swift_once();
        }

        sub_1B4D1745C();
        v209 = v257;
        (*(v257 + 8))(v206, v207);
        v208 = 0;
      }

      v212 = *(v209 + 56);
      v212(v211, v208, 1, v207);
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
      v214 = v213[12];
      sub_1B4974FBC(v266 + v258[7], v210, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      if ((v259)(v210, 1, v207) == 1)
      {
        sub_1B4975024(v210, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        v215 = 1;
        v216 = v256;
      }

      else
      {
        if (qword_1EDC36DF0 != -1)
        {
          swift_once();
        }

        v216 = v256;
        sub_1B4D1745C();
        (*(v257 + 8))(v210, v216);
        v215 = 0;
      }

      v212(v211 + v214, v215, 1, v216);
      v217 = v211 + v213[16];
      v218 = v213[20];
      v219 = v213[24];
      v220 = v211 + v213[28];
      v221 = v213[36];
      v247 = v213[32];
      v248 = v221;
      v251 = v213[40];
      v222 = v213[48];
      v256 = v213[44];
      v257 = v222;
      v259 = v213[52];
      v223 = v266;
      *v217 = sub_1B4A612D4();
      *(v217 + 8) = v224 & 1;
      v225 = v258;
      sub_1B4974FBC(v223 + v258[10], v211 + v218, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4974FBC(v223 + v225[9], v211 + v219, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v226 = sub_1B4A612D4();
      v228 = v227;
      sub_1B4B10A80(v223, type metadata accessor for HKActivitySummaryRepresentable);
      *v220 = v226;
      *(v220 + 8) = v228 & 1;
      v229 = v261;
      v230 = v253;
      (v253)(&v247[v211], v255, v261);
      v230(v211 + v248, v249, v229);
      *&v251[v211] = v254;
      v231 = v260;
      v189((v211 + v256), v238, v260);
      v189((v211 + v257), v236, v231);
      *(v211 + v259) = v262;
      v159 = v264;
      swift_storeEnumTagMultiPayload();
      v158 = v250;
      sub_1B4995228(v211, v250);
LABEL_48:
      v182 = v265;
      sub_1B4995228(v158, v265);
      v149 = v182;
      v148 = 0;
      v150 = v159;
      return (*(v263 + 56))(v149, v148, 1, v150);
    }

    sub_1B4B10A80(v110, type metadata accessor for HKActivitySummaryRepresentable);
    (*(v171 + 8))(v186, v188);
    v191 = *(v262 + 8);
    v191(v249, v112);
    v191(v255, v112);
LABEL_18:
    v102 = &qword_1EB8A6D18;
    v103 = &unk_1B4D1BCA0;
    v104 = v122;
    goto LABEL_39;
  }

  v96 = v266;
  v97 = v89;
  v98 = v258;
  sub_1B4974FBC(v266 + v89[14], v258, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  v99 = v259;
  v100 = v260;
  v101 = *(v259 + 48);
  if (v101(v98, 1, v260) == 1)
  {
    sub_1B4B10A80(v96, type metadata accessor for HKActivitySummaryRepresentable);
    v102 = &qword_1EB8A6D18;
    v103 = &unk_1B4D1BCA0;
    v104 = v98;
LABEL_39:
    sub_1B4975024(v104, v102, v103);
    goto LABEL_40;
  }

  v119 = *(v99 + 32);
  v120 = v251;
  v119(v251, v98, v100);
  v121 = v96 + v97[13];
  v122 = v252;
  sub_1B4974FBC(v121, v252, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  if (v101(v122, 1, v100) == 1)
  {
    sub_1B4B10A80(v96, type metadata accessor for HKActivitySummaryRepresentable);
    (*(v99 + 8))(v120, v100);
    goto LABEL_18;
  }

  v132 = v246;
  v119(v246, v122, v100);
  v133 = sub_1B4A61EE8();
  if ((v134 & 1) == 0)
  {
    v262 = v133;
    type metadata accessor for UnitCount();
    v152 = v241;
    sub_1B4D1744C();
    sub_1B4B10A80(v96, type metadata accessor for HKActivitySummaryRepresentable);
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
    v154 = v153[12];
    v155 = v153[16];
    v156 = v153[20];
    v157 = v250;
    v119(v250, v120, v100);
    v119((v157 + v154), v132, v100);
    v119((v157 + v155), v152, v100);
    *(v157 + v156) = v262;
    v158 = v157;
    v159 = v264;
    goto LABEL_47;
  }

  sub_1B4B10A80(v96, type metadata accessor for HKActivitySummaryRepresentable);
  v135 = *(v99 + 8);
  v135(v132, v100);
  v135(v120, v100);
LABEL_40:
  v148 = 1;
  v150 = v264;
  v149 = v265;
  return (*(v263 + 56))(v149, v148, 1, v150);
}

uint64_t sub_1B4B0793C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for RingProgressType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B0F6D0(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v9 = 0x6E69722065766F6DLL;
    if (EnumCaseMultiPayload)
    {
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v16 = *(v36 + 48);
      v17 = *(v36 + 64);
      v18 = &qword_1EB8A6850;
      v19 = &unk_1B4D1BC10;
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v16 = *(v15 + 48);
      v17 = *(v15 + 64);
      v18 = &qword_1EB8A6868;
      v19 = &unk_1B4D1AB80;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    v38 = *(*(v37 - 8) + 8);
    v38(&v7[v17], v37);
    v38(&v7[v16], v37);
    v38(v7, v37);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v21 = *(v20 + 48);
    v22 = *(v20 + 64);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v24 = *(*(v23 - 8) + 8);
    v24(&v7[v22], v23);
    v24(&v7[v21], v23);
    v24(v7, v23);
    return 0x6573696372657865;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    if (a1)
    {
      v9 = 0x6E6972206C6C6F72;
    }

    else
    {
      v9 = 0x697220646E617473;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
    v11 = *(v10 + 48);
    v12 = *(v10 + 64);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v14 = *(*(v13 - 8) + 8);
    v14(&v7[v12], v13);
    v14(&v7[v11], v13);
    v14(v7, v13);
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
    v41 = v25[12];
    v26 = v25[20];
    v27 = v25[24];
    v28 = v25[32];
    v29 = v25[36];
    v30 = v25[44];
    v31 = v25[48];
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    v33 = *(*(v32 - 8) + 8);
    v33(&v7[v31], v32);
    v33(&v7[v30], v32);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    v35 = *(*(v34 - 8) + 8);
    v35(&v7[v29], v34);
    v35(&v7[v28], v34);
    sub_1B4975024(&v7[v27], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v7[v26], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v7[v41], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v7, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    return 0x7974697669746361;
  }

  return v9;
}

unint64_t sub_1B4B07DD8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6F7250646E617473;
    v7 = 0x616F47646E617473;
    if (a1 != 10)
    {
      v7 = 0x726550646E617473;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000010;
    v9 = 0x6573696372657865;
    if (a1 != 7)
    {
      v9 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x676F725065766F6DLL;
    v2 = 0xD000000000000012;
    v3 = 0x756E694D65766F6DLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C616F4765766F6DLL;
    if (a1 != 1)
    {
      v4 = 0x6372655065766F6DLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B4B07FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B1035C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4B07FD8(uint64_t a1)
{
  v2 = sub_1B4B0F734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B08014(uint64_t a1)
{
  v2 = sub_1B4B0F734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B08050()
{
  v1 = *v0;
  v2 = 0x6F6C614365766F6DLL;
  v3 = 0x6573696372657865;
  v4 = 0x646E617473;
  if (v1 != 3)
  {
    v4 = 0x73676E69526C6C61;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x756E694D65766F6DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B4B080F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B10758(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4B08120(uint64_t a1)
{
  v2 = sub_1B4B0F67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B0815C(uint64_t a1)
{
  v2 = sub_1B4B0F67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B08198(uint64_t a1)
{
  v2 = sub_1B4B0F7DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B081D4(uint64_t a1)
{
  v2 = sub_1B4B0F7DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B08210(uint64_t a1)
{
  v2 = sub_1B4B0F884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B0824C(uint64_t a1)
{
  v2 = sub_1B4B0F884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B08288(uint64_t a1)
{
  v2 = sub_1B4B0F830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B082C4(uint64_t a1)
{
  v2 = sub_1B4B0F830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4B08300(uint64_t a1)
{
  v2 = sub_1B4B0F788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4B0833C(uint64_t a1)
{
  v2 = sub_1B4B0F788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RingProgressType.encode(to:)(void *a1)
{
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA380, &qword_1B4D2E7B0);
  v193 = *(v213 - 8);
  v2 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v194 = &v181 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v204 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v205 = &v181 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v208 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v212 = &v181 - v13;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA388, &unk_1B4D2E7B8);
  v191 = *(v192 - 8);
  v14 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v192);
  v190 = &v181 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v214 = *(v16 - 8);
  v215 = v16;
  v17 = v214[8];
  MEMORY[0x1EEE9AC00](v16);
  v198 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v203 = &v181 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v207 = &v181 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v211 = &v181 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v197 = &v181 - v26;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA390, &qword_1B4D2E7C8);
  v188 = *(v189 - 8);
  v27 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v187 = &v181 - v28;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA398, &unk_1B4D2E7D0);
  v186 = *(v185 - 8);
  v29 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v181 = &v181 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v217 = *(v31 - 8);
  v218 = v31;
  v32 = v217[8];
  MEMORY[0x1EEE9AC00](v31);
  v209 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v206 = &v181 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v201 = &v181 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v210 = &v181 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v196 = &v181 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v200 = &v181 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v216 = &v181 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v195 = &v181 - v47;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3A0, &unk_1B4D2E7E0);
  v183 = *(v184 - 8);
  v48 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v182 = &v181 - v49;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v199 = *(v202 - 8);
  v50 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v52 = &v181 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v181 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v181 - v57;
  v59 = type metadata accessor for RingProgressType();
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v181 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3A8, &qword_1B4D2E7F0);
  v221 = *(v223 - 8);
  v63 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v223);
  v65 = &v181 - v64;
  v66 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4B0F67C();
  v222 = v65;
  sub_1B4D18EFC();
  sub_1B4B0F6D0(v219, v62);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v215 = v52;
    v219 = v55;
    v83 = v199;
    v84 = v216;
    if (EnumCaseMultiPayload)
    {
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v135 = v134[12];
      v136 = v134[16];
      v137 = *(v62 + v134[20]);
      v139 = v217;
      v138 = v218;
      v140 = v217[4];
      v141 = v195;
      v140(v195, v62, v218);
      v140(v84, v62 + v135, v138);
      v140(v200, v62 + v136, v138);
      v224 = 1;
      sub_1B4B0F830();
      v142 = v181;
      v143 = v222;
      v144 = v223;
      sub_1B4D18C5C();
      v224 = 0;
      sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10);
      v145 = v141;
      v146 = v185;
      v147 = v142;
      v148 = v220;
      sub_1B4D18D0C();
      if (v148)
      {
        (*(v186 + 8))(v142, v146);
        v149 = v139[1];
        v149(v200, v138);
        v149(v216, v138);
        v149(v145, v138);
        return (*(v221 + 8))(v143, v144);
      }

      else
      {
        v224 = 1;
        v153 = v216;
        sub_1B4D18D0C();
        v224 = 2;
        v160 = v200;
        sub_1B4D18D0C();
        v161 = v186;
        v162 = v195;
        v224 = 3;
        sub_1B4D18CDC();
        v220 = 0;
        (*(v161 + 8))(v147, v146);
        v176 = v139[1];
        v176(v160, v138);
        v176(v153, v138);
        v176(v162, v138);
        return (*(v221 + 8))(v143, v223);
      }
    }

    else
    {
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v86 = v85[12];
      v87 = v85[16];
      v88 = *(v62 + v85[20]);
      v89 = *(v83 + 32);
      v90 = v58;
      v91 = v202;
      v89(v58, v62, v202);
      v89(v219, v62 + v86, v91);
      v89(v215, v62 + v87, v91);
      v224 = 0;
      sub_1B4B0F884();
      v92 = v182;
      v94 = v222;
      v93 = v223;
      sub_1B4D18C5C();
      v224 = 0;
      sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80);
      v95 = v184;
      v96 = v220;
      sub_1B4D18D0C();
      if (v96)
      {
        (*(v183 + 8))(v92, v95);
        v97 = *(v83 + 8);
        v97(v215, v91);
        v97(v219, v91);
        v97(v90, v91);
      }

      else
      {
        v220 = v90;
        v224 = 1;
        v151 = v92;
        sub_1B4D18D0C();
        v152 = v183;
        v224 = 2;
        v159 = v215;
        sub_1B4D18D0C();
        v224 = 3;
        sub_1B4D18CDC();
        (*(v152 + 8))(v151, v95);
        v175 = *(v83 + 8);
        v175(v159, v91);
        v175(v219, v91);
        v175(v220, v91);
      }

      return (*(v221 + 8))(v94, v93);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
    v99 = v98[12];
    v100 = v98[16];
    v101 = *(v62 + v98[20]);
    v103 = v217;
    v102 = v218;
    v104 = v217[4];
    v105 = v196;
    v104(v196, v62, v218);
    v104(v210, v62 + v99, v102);
    v104(v201, v62 + v100, v102);
    v224 = 2;
    sub_1B4B0F7DC();
    v106 = v187;
    v107 = v222;
    v108 = v223;
    sub_1B4D18C5C();
    v224 = 0;
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10);
    v109 = v189;
    v110 = v220;
    sub_1B4D18D0C();
    if (v110)
    {
      (*(v188 + 8))(v106, v109);
      v111 = v103[1];
      v111(v201, v102);
      v111(v210, v102);
      v111(v105, v102);
    }

    else
    {
      v224 = 1;
      sub_1B4D18D0C();
      v224 = 2;
      v154 = v201;
      sub_1B4D18D0C();
      v155 = v103;
      v163 = v154;
      v224 = 3;
      sub_1B4D18CDC();
      v108 = v223;
      (*(v188 + 8))(v106, v109);
      v164 = v155[1];
      v164(v163, v102);
      v164(v210, v102);
      v164(v196, v102);
    }

    return (*(v221 + 8))(v107, v108);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
    v69 = v68[12];
    v70 = v68[16];
    v71 = *(v62 + v68[20]);
    v73 = v214;
    v72 = v215;
    v74 = v214[4];
    v75 = v197;
    v74(v197, v62, v215);
    v74(v211, v62 + v69, v72);
    v74(v207, v62 + v70, v72);
    v224 = 3;
    sub_1B4B0F788();
    v76 = v190;
    v77 = v222;
    v78 = v223;
    sub_1B4D18C5C();
    v224 = 0;
    sub_1B49B0578(&qword_1EB8A6EE0, &qword_1EB8A6870, &unk_1B4D1C2C0);
    v79 = v192;
    v80 = v220;
    sub_1B4D18D0C();
    if (v80)
    {
      (*(v191 + 8))(v76, v79);
      v81 = v73[1];
      v81(v207, v72);
      v81(v211, v72);
      v81(v75, v72);
      return (*(v221 + 8))(v77, v78);
    }

    else
    {
      v224 = 1;
      sub_1B4D18D0C();
      v224 = 2;
      sub_1B4D18D0C();
      v156 = v73;
      v224 = 3;
      sub_1B4D18CDC();
      v165 = v76;
      v166 = v223;
      v167 = v197;
      (*(v191 + 8))(v165, v79);
      v168 = v156[1];
      v168(v207, v72);
      v168(v211, v72);
      v168(v167, v72);
      return (*(v221 + 8))(v77, v166);
    }
  }

  else
  {
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
    v113 = v112[12];
    v114 = (v62 + v112[16]);
    v211 = *v114;
    LODWORD(v210) = v114[8];
    v115 = v112[20];
    v116 = v112[24];
    v117 = (v62 + v112[28]);
    v201 = *v117;
    LODWORD(v207) = v117[8];
    v118 = v112[32];
    v119 = *(v62 + v112[40]);
    v120 = v112[36];
    v216 = v112[44];
    v219 = v112[48];
    v121 = *(v62 + v112[52]);
    sub_1B498B270(v62, v212, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B498B270(v62 + v113, v208, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B498B270(v62 + v115, v205, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B498B270(v62 + v116, v204, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v122 = v217;
    v123 = v217[4];
    v124 = (v62 + v118);
    v125 = v218;
    v123(v206, v124, v218);
    v123(v209, (v62 + v120), v125);
    v126 = v214;
    v127 = v215;
    v128 = v214[4];
    v128(v203, &v216[v62], v215);
    v129 = v198;
    v128(v198, &v219[v62], v127);
    v224 = 4;
    sub_1B4B0F734();
    v130 = v194;
    sub_1B4D18C5C();
    v224 = 0;
    sub_1B49B0578(&qword_1EB8A6ED0, &qword_1EB8A6868, &unk_1B4D1AB80);
    v131 = v220;
    sub_1B4D18CAC();
    if (v131)
    {
      (*(v193 + 8))(v130, v213);
      v132 = v126[1];
      v132(v129, v127);
      v132(v203, v127);
      v133 = v122[1];
      v133(v209, v125);
      v133(v206, v125);
      sub_1B4975024(v204, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(v205, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B4975024(v208, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B4975024(v212, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      return (*(v221 + 8))(v222, v223);
    }

    else
    {
      v224 = 1;
      v150 = v130;
      sub_1B4D18CAC();
      v224 = 2;
      sub_1B4D18C8C();
      v220 = 0;
      v157 = v218;
      v158 = v206;
      v224 = 3;
      sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10);
      v169 = v205;
      v170 = v220;
      sub_1B4D18CAC();
      if (v170)
      {
        (*(v193 + 8))(v150, v213);
        v171 = v215;
        v172 = v158;
        v173 = v214[1];
        v173(v198, v215);
        v173(v203, v171);
        v174 = v217[1];
        v174(v209, v157);
        v174(v172, v157);
        sub_1B4975024(v204, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(v169, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      }

      else
      {
        v224 = 4;
        sub_1B4D18CAC();
        v224 = 5;
        sub_1B4D18C8C();
        v224 = 6;
        sub_1B4D18D0C();
        v224 = 7;
        sub_1B4D18D0C();
        v224 = 8;
        sub_1B4D18CDC();
        v224 = 9;
        sub_1B49B0578(&qword_1EB8A6EE0, &qword_1EB8A6870, &unk_1B4D1C2C0);
        sub_1B4D18D0C();
        v224 = 10;
        sub_1B4D18D0C();
        v224 = 11;
        sub_1B4D18CDC();
        (*(v193 + 8))(v194, v213);
        v177 = v215;
        v178 = v214[1];
        v178(v198, v215);
        v178(v203, v177);
        v179 = v218;
        v180 = v217[1];
        v180(v209, v218);
        v180(v206, v179);
        sub_1B4975024(v204, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        sub_1B4975024(v205, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      }

      sub_1B4975024(v208, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B4975024(v212, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      return (*(v221 + 8))(v222, v223);
    }
  }
}

uint64_t RingProgressType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v151 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA400, &qword_1B4D2E818);
  v142 = *(v3 - 8);
  v143 = v3;
  v4 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v146 = &v129 - v5;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA408, &qword_1B4D2E820);
  v141 = *(v139 - 8);
  v6 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v150 = (&v129 - v7);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA410, &qword_1B4D2E828);
  v140 = *(v152 - 8);
  v8 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v149 = &v129 - v9;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA418, &qword_1B4D2E830);
  v137 = *(v138 - 8);
  v10 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v148 = &v129 - v11;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA420, &qword_1B4D2E838);
  v135 = *(v136 - 8);
  v12 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v145 = &v129 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA428, &unk_1B4D2E840);
  v153 = *(v14 - 8);
  v154 = v14;
  v15 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v129 - v16;
  v147 = type metadata accessor for RingProgressType();
  v18 = *(*(v147 - 8) + 64);
  MEMORY[0x1EEE9AC00](v147);
  v144 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v129 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v129 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v129 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v129 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v129 - v33;
  v36 = a1[3];
  v35 = a1[4];
  v155 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1B4B0F67C();
  v37 = v156;
  sub_1B4D18EEC();
  if (v37)
  {
    goto LABEL_11;
  }

  v38 = v148;
  v131 = v28;
  v132 = v25;
  v134 = v31;
  v39 = v149;
  v133 = v22;
  v156 = 0;
  v40 = v150;
  v130 = v34;
  v41 = v151;
  v43 = v153;
  v42 = v154;
  v44 = sub_1B4D18C2C();
  v45 = (2 * *(v44 + 16)) | 1;
  v158 = v44;
  v159 = v44 + 32;
  v160 = 0;
  v161 = v45;
  v46 = sub_1B49C8ABC();
  v47 = v17;
  if (v46 == 5 || v160 != v161 >> 1)
  {
    v54 = sub_1B4D189BC();
    swift_allocError();
    v56 = v55;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820) + 48);
    *v56 = v147;
    sub_1B4D18B5C();
    sub_1B4D189AC();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
    swift_willThrow();
    (*(v43 + 8))(v47, v42);
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v129 = v17;
  v48 = v43;
  if (v46 <= 1u)
  {
    if (v46)
    {
      v157 = 1;
      sub_1B4B0F830();
      v67 = v154;
      v68 = v129;
      v69 = v156;
      sub_1B4D18B4C();
      if (!v69)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        v157 = 0;
        sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10);
        v70 = v138;
        sub_1B4D18C0C();
        v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
        v80 = *(v156 + 48);
        v157 = 1;
        sub_1B4D18C0C();
        v152 = v80;
        v85 = *(v156 + 64);
        v157 = 2;
        sub_1B4D18C0C();
        v93 = v156;
        v157 = 3;
        sub_1B4D18BDC();
        v106 = *(v93 + 80);
        v108 = v107;
        (*(v137 + 8))(v38, v70);
        (*(v43 + 8))(v129, v154);
        swift_unknownObjectRelease();
        v109 = v131;
        *&v131[v106] = v108;
        swift_storeEnumTagMultiPayload();
        v101 = v109;
        v110 = v155;
        v111 = v151;
LABEL_28:
        v112 = v130;
        sub_1B4995228(v101, v130);
        sub_1B4995228(v112, v111);
        v58 = v110;
        return __swift_destroy_boxed_opaque_existential_1Tm(v58);
      }

      (*(v43 + 8))(v68, v67);
      goto LABEL_10;
    }

    v157 = 0;
    sub_1B4B0F884();
    v60 = v145;
    v50 = v154;
    v51 = v129;
    v61 = v156;
    sub_1B4D18B4C();
    if (!v61)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      v157 = 0;
      sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80);
      v62 = v136;
      sub_1B4D18C0C();
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v79 = *(v156 + 48);
      v157 = 1;
      v152 = v79;
      sub_1B4D18C0C();
      v84 = *(v156 + 64);
      v157 = 2;
      sub_1B4D18C0C();
      v92 = v156;
      v157 = 3;
      sub_1B4D18BDC();
      v103 = *(v92 + 80);
      v105 = v104;
      (*(v135 + 8))(v60, v62);
      (*(v43 + 8))(v129, v154);
      swift_unknownObjectRelease();
      v101 = v134;
      *&v134[v103] = v105;
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v46 == 2)
  {
    v157 = 2;
    sub_1B4B0F7DC();
    v50 = v154;
    v51 = v129;
    v63 = v156;
    sub_1B4D18B4C();
    if (!v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
      v157 = 0;
      sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10);
      sub_1B4D18C0C();
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v72 = v71[12];
      v157 = 1;
      sub_1B4D18C0C();
      v156 = v72;
      v81 = v71[16];
      v157 = 2;
      sub_1B4D18C0C();
      v150 = v81;
      v157 = 3;
      sub_1B4D18BDC();
      v94 = v71[20];
      v96 = v95;
      (*(v140 + 8))(v39, v152);
      (*(v43 + 8))(v129, v154);
      swift_unknownObjectRelease();
      v97 = v132;
      *&v132[v94] = v96;
      swift_storeEnumTagMultiPayload();
      v101 = v97;
LABEL_26:
      v110 = v155;
LABEL_27:
      v111 = v41;
      goto LABEL_28;
    }

LABEL_17:
    (*(v43 + 8))(v51, v50);
    goto LABEL_10;
  }

  if (v46 == 3)
  {
    v157 = 3;
    sub_1B4B0F788();
    v49 = v40;
    v50 = v154;
    v51 = v129;
    v52 = v156;
    sub_1B4D18B4C();
    if (!v52)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      v157 = 0;
      sub_1B49B0578(&qword_1EB8A6F20, &qword_1EB8A6870, &unk_1B4D1C2C0);
      v53 = v139;
      sub_1B4D18C0C();
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
      v74 = v53;
      v156 = v73;
      v75 = *(v73 + 48);
      v157 = 1;
      v76 = v74;
      sub_1B4D18C0C();
      v152 = v75;
      v82 = *(v156 + 64);
      v157 = 2;
      sub_1B4D18C0C();
      v86 = v156;
      v157 = 3;
      sub_1B4D18BDC();
      v98 = *(v86 + 80);
      v100 = v99;
      (*(v141 + 8))(v49, v76);
      (*(v48 + 8))(v129, v154);
      swift_unknownObjectRelease();
      v101 = v133;
      *&v133[v98] = v100;
LABEL_25:
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v157 = 4;
  sub_1B4B0F734();
  v64 = v154;
  v65 = v129;
  v66 = v156;
  sub_1B4D18B4C();
  if (v66)
  {
    (*(v153 + 8))(v65, v64);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v157 = 0;
  sub_1B49B0578(&qword_1EB8A6F10, &qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B4D18BAC();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
  v78 = *(v77 + 48);
  v157 = 1;
  sub_1B4D18BAC();
  v150 = v77;
  v152 = v78;
  v157 = 2;
  v83 = sub_1B4D18B8C();
  v87 = v150;
  v88 = (v144 + v150[16]);
  v89 = v150[20];
  *v88 = v83;
  v88[8] = v90 & 1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v157 = 3;
  sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10);
  v149 = v89;
  sub_1B4D18BAC();
  v102 = v87[24];
  v157 = 4;
  v148 = v91;
  sub_1B4D18BAC();
  v157 = 5;
  v113 = sub_1B4D18B8C();
  v114 = (v144 + v150[28]);
  v115 = v150[32];
  *v114 = v113;
  v114[8] = v116 & 1;
  v157 = 6;
  sub_1B4D18C0C();
  v117 = v150[36];
  v157 = 7;
  v145 = v117;
  sub_1B4D18C0C();
  v157 = 8;
  sub_1B4D18BDC();
  v156 = 0;
  v118 = v150[44];
  *(v144 + v150[40]) = v119;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v157 = 9;
  sub_1B49B0578(&qword_1EB8A6F20, &qword_1EB8A6870, &unk_1B4D1C2C0);
  v141 = v118;
  v120 = v156;
  sub_1B4D18C0C();
  v156 = v120;
  if (!v120)
  {
    v124 = v150[48];
    v157 = 10;
    sub_1B4D18C0C();
    v156 = 0;
    v157 = 11;
    sub_1B4D18BDC();
    v156 = 0;
    v126 = v125;
    v127 = v150[52];
    (*(v142 + 8))(v146, v143);
    (*(v43 + 8))(v129, v154);
    swift_unknownObjectRelease();
    v128 = v144;
    *(v144 + v127) = v126;
    swift_storeEnumTagMultiPayload();
    v101 = v128;
    v110 = v155;
    goto LABEL_27;
  }

  (*(v142 + 8))(v146, v143);
  (*(v43 + 8))(v129, v154);
  swift_unknownObjectRelease();
  v121 = v148;
  v122 = *(*(v148 - 1) + 8);
  v123 = v144;
  v122(&v145[v144], v148);
  v122((v123 + v115), v121);
  sub_1B4975024(v123 + v102, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(&v149[v123], &qword_1EB8A6C90, &unk_1B4D1BBD0);
  sub_1B4975024(v123 + v152, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  sub_1B4975024(v123, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
LABEL_11:
  v58 = v155;
  return __swift_destroy_boxed_opaque_existential_1Tm(v58);
}

BOOL _s19FitnessIntelligence16RingProgressTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v389 = a1;
  v390 = a2;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F60, &qword_1B4D2C420);
  v2 = *(*(v343 - 8) + 64);
  MEMORY[0x1EEE9AC00](v343);
  v340 = &v337 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v342 = &v337 - v5;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F68, &unk_1B4D1C550);
  v6 = *(*(v353 - 8) + 64);
  MEMORY[0x1EEE9AC00](v353);
  v346 = &v337 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v356 = &v337 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v338 = &v337 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v341 = &v337 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v376 = &v337 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v378 = &v337 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v377 = &v337 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v379 = &v337 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v344 = &v337 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v347 = &v337 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v380 = &v337 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v381 = &v337 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v33 = *(v32 - 8);
  v385 = v32;
  v386 = v33;
  v34 = *(v33 + 8);
  MEMORY[0x1EEE9AC00](v32);
  v368 = &v337 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v369 = &v337 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v370 = &v337 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v371 = &v337 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v352 = &v337 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v362 = &v337 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v363 = &v337 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v364 = &v337 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v355 = &v337 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v387 = *(v52 - 8);
  v388 = v52;
  v53 = v387[8];
  MEMORY[0x1EEE9AC00](v52);
  v339 = &v337 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v374 = &v337 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v372 = &v337 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v375 = &v337 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v373 = &v337 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v349 = &v337 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v350 = &v337 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v360 = &v337 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v361 = &v337 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v351 = &v337 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v357 = &v337 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v348 = &v337 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v359 = &v337 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v358 = &v337 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v384 = &v337 - v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v382 = *(v83 - 8);
  v383 = v83;
  v84 = v382[8];
  MEMORY[0x1EEE9AC00](v83);
  v345 = &v337 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v86);
  v354 = &v337 - v87;
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v337 - v89;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v337 - v92;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v337 - v95;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v337 - v98;
  v100 = type metadata accessor for RingProgressType();
  v101 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v367 = &v337 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103);
  v366 = &v337 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v365 = &v337 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v337 - v108;
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v337 - v111;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA4F8, &qword_1B4D2EFD0);
  v114 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113 - 8);
  v116 = &v337 - v115;
  v118 = &v337 + *(v117 + 56) - v115;
  sub_1B4B0F6D0(v389, &v337 - v115);
  v119 = v118;
  sub_1B4B0F6D0(v390, v118);
  v391 = v116;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v386 = v90;
    v389 = v93;
    v390 = v96;
    v144 = v384;
    if (EnumCaseMultiPayload)
    {
      v204 = v109;
      sub_1B4B0F6D0(v391, v109);
      v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
      v206 = v205[12];
      v207 = v205[16];
      v208 = v205[20];
      v188 = *&v109[v208];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v233 = v388;
        v234 = v387[1];
        v234(&v109[v207], v388);
        v234(&v109[v206], v233);
        v234(v109, v233);
        goto LABEL_30;
      }

      v192 = *&v118[v208];
      v210 = v387;
      v209 = v388;
      v211 = v387[4];
      v212 = v144;
      v211(v144, v119, v388);
      v211(v358, &v204[v206], v209);
      v211(v359, &v204[v207], v209);
      v213 = v348;
      v211(v348, &v119[v206], v209);
      v214 = &v119[v207];
      v215 = v212;
      v216 = v357;
      v211(v357, v214, v209);
      sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
      v217 = sub_1B4D1816C();
      v218 = v210[1];
      v218(v204, v209);
      if (v217)
      {
        v219 = v358;
        v220 = sub_1B4D1816C();
        v221 = v391;
        if ((v220 & 1) == 0)
        {
          v218(v357, v209);
          v218(v213, v209);
          v218(v359, v209);
          v218(v219, v209);
          v218(v215, v209);
          v261 = v221;
          goto LABEL_62;
        }

        v222 = v359;
        v223 = v357;
        v224 = sub_1B4D1816C();
        v218(v223, v209);
        v218(v213, v209);
        v218(v222, v209);
        v218(v219, v209);
        v218(v215, v209);
        if (v224)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v218(v216, v209);
        v218(v213, v209);
        v218(v359, v209);
        v218(v358, v209);
        v218(v215, v209);
      }
    }

    else
    {
      v145 = v99;
      sub_1B4B0F6D0(v391, v112);
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3F0, &qword_1B4D2E810);
      v147 = v146[12];
      v148 = v146[16];
      v149 = v146[20];
      v150 = *&v112[v149];
      if (swift_getEnumCaseMultiPayload())
      {
        v151 = v382[1];
        v152 = &v112[v148];
        v153 = v383;
        v151(v152, v383);
        v151(&v112[v147], v153);
        v151(v112, v153);
        goto LABEL_30;
      }

      v235 = *&v118[v149];
      v236 = v382;
      v237 = v382[4];
      v238 = v145;
      v239 = v145;
      v240 = v383;
      v237(v239, v119, v383);
      v237(v390, &v112[v147], v240);
      v237(v389, &v112[v148], v240);
      v241 = v386;
      v237(v386, &v119[v147], v240);
      v242 = &v119[v148];
      v243 = v354;
      v237(v354, v242, v240);
      v244 = v238;
      sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
      v245 = sub_1B4D1816C();
      v246 = v236[1];
      v246(v112, v240);
      if (v245)
      {
        v247 = sub_1B4D1816C();
        v248 = v391;
        if (v247)
        {
          v249 = v244;
          v250 = v389;
          v251 = v354;
          v252 = sub_1B4D1816C();
          v246(v251, v240);
          v246(v241, v240);
          v246(v250, v240);
          v246(v390, v240);
          v246(v249, v240);
          if (v252)
          {
            v174 = v150 == v235;
            v175 = v248;
            goto LABEL_36;
          }
        }

        else
        {
          v246(v354, v240);
          v246(v241, v240);
          v246(v389, v240);
          v246(v390, v240);
          v246(v244, v240);
        }

        v261 = v248;
        goto LABEL_62;
      }

      v246(v243, v240);
      v246(v241, v240);
      v246(v389, v240);
      v246(v390, v240);
      v246(v244, v240);
    }

LABEL_61:
    v261 = v391;
    goto LABEL_62;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v121 = v391;
    v122 = v118;
    if (EnumCaseMultiPayload == 3)
    {
      v123 = v366;
      sub_1B4B0F6D0(v391, v366);
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3C8, &qword_1B4D2E800);
      v125 = v124[12];
      v126 = v124[16];
      v127 = v124[20];
      v128 = *(v123 + v127);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v129 = *&v118[v127];
        v131 = v385;
        v130 = v386;
        v132 = *(v386 + 4);
        v133 = v355;
        v132(v355, v122, v385);
        v132(v364, v123 + v125, v131);
        v132(v363, v123 + v126, v131);
        v132(v362, v122 + v125, v131);
        v134 = v122 + v126;
        v135 = v352;
        v132(v352, v134, v131);
        v136 = v133;
        sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
        v137 = sub_1B4D1816C();
        v138 = *(v130 + 1);
        v138(v123, v131);
        if (v137)
        {
          v139 = v364;
          v140 = v362;
          if (sub_1B4D1816C())
          {
            v141 = v135;
            v142 = v363;
            v143 = sub_1B4D1816C();
            v138(v141, v131);
            v138(v140, v131);
            v138(v142, v131);
            v138(v139, v131);
            v138(v355, v131);
            if ((v143 & 1) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_16;
          }

          v138(v135, v131);
          v138(v140, v131);
          v138(v363, v131);
          v255 = v139;
        }

        else
        {
          v138(v135, v131);
          v138(v362, v131);
          v138(v363, v131);
          v255 = v364;
        }

        v138(v255, v131);
        v138(v136, v131);
        goto LABEL_49;
      }

      v226 = *(v386 + 1);
      v227 = v123 + v126;
      v228 = v385;
      v226(v227, v385);
      v226(v123 + v125, v228);
      v226(v123, v228);
      goto LABEL_31;
    }

    v176 = v367;
    sub_1B4B0F6D0(v391, v367);
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3B8, &qword_1B4D2E7F8);
    v365 = v177[12];
    v178 = v177[16];
    v179 = *(v176 + v178);
    v180 = *(v176 + v178 + 8);
    v181 = v177[20];
    v390 = v177[24];
    v182 = v177[28];
    v183 = *(v176 + v182);
    LODWORD(v364) = *(v176 + v182 + 8);
    v389 = v177[32];
    v184 = v177[40];
    v185 = *(v176 + v184);
    v384 = v177[36];
    v186 = v177[44];
    v366 = v177[48];
    v187 = v177[52];
    v188 = *(v176 + v187);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      LODWORD(v361) = v180;
      v189 = *&v118[v178];
      LODWORD(v360) = v118[v178 + 8];
      v190 = *&v118[v182];
      LODWORD(v359) = v118[v182 + 8];
      v191 = *&v118[v184];
      v192 = *&v118[v187];
      sub_1B498B270(v176 + v365, v381, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      v363 = v181;
      sub_1B498B270(&v181[v176], v379, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B498B270(&v390[v176], v377, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v193 = v388;
      v195 = (v387 + 4);
      v194 = v387[4];
      v194(v373, &v389[v176], v388);
      v194(v375, &v384[v176], v193);
      v196 = *(v386 + 4);
      v362 = v186;
      v197 = v385;
      v196(v371, &v186[v176], v385);
      v196(v370, (v176 + v366), v197);
      sub_1B498B270(v122 + v365, v380, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B498B270(&v363[v122], v378, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      sub_1B498B270(&v390[v122], v376, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v194(v372, &v389[v122], v193);
      v390 = v194;
      v194(v374, &v384[v122], v193);
      v196(v369, &v362[v122], v197);
      v196(v368, (v122 + v366), v197);
      v198 = v353;
      v199 = *(v353 + 48);
      v200 = v356;
      sub_1B498B270(v176, v356, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      sub_1B498B270(v122, v200 + v199, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      v202 = v382;
      v201 = v383;
      v203 = v382[6];
      if (v203(v200, 1, v383) == 1)
      {
        if (v203(v200 + v199, 1, v201) == 1)
        {
          v389 = v195;
          sub_1B4975024(v200, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          goto LABEL_51;
        }
      }

      else
      {
        v256 = v347;
        sub_1B4974FBC(v200, v347, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
        if (v203(v200 + v199, 1, v201) != 1)
        {
          v389 = v195;
          v262 = v345;
          (v202[4])(v345, v200 + v199, v201);
          sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
          v263 = sub_1B4D1816C();
          v264 = v256;
          v265 = v202[1];
          v265(v262, v201);
          v265(v264, v201);
          sub_1B4975024(v356, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          if (v263)
          {
LABEL_51:
            v266 = *(v198 + 48);
            v267 = v346;
            sub_1B4974FBC(v381, v346, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
            v268 = v267;
            sub_1B4974FBC(v380, v267 + v266, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
            if (v203(v267, 1, v201) == 1)
            {
              if (v203(v267 + v266, 1, v201) == 1)
              {
                sub_1B4975024(v267, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                goto LABEL_67;
              }
            }

            else
            {
              v269 = v267;
              v270 = v344;
              sub_1B4974FBC(v269, v344, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
              if (v203(v268 + v266, 1, v201) != 1)
              {
                v276 = v345;
                (v202[4])(v345, v268 + v266, v201);
                sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80);
                v277 = v268;
                v278 = sub_1B4D1816C();
                v279 = v202[1];
                v279(v276, v201);
                v279(v270, v201);
                sub_1B4975024(v277, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                if (v278)
                {
LABEL_67:
                  if (v361)
                  {
                    if (v360)
                    {
                      goto LABEL_73;
                    }
                  }

                  else
                  {
                    v280 = v360;
                    if (v179 != v189)
                    {
                      v280 = 1;
                    }

                    if ((v280 & 1) == 0)
                    {
LABEL_73:
                      v281 = *(v343 + 48);
                      v282 = v342;
                      sub_1B4974FBC(v379, v342, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                      sub_1B4974FBC(v378, v282 + v281, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                      v283 = v387[6];
                      if (v283(v282, 1, v388) == 1)
                      {
                        if (v283(v282 + v281, 1, v388) == 1)
                        {
                          sub_1B4975024(v282, &qword_1EB8A6C90, &unk_1B4D1BBD0);
LABEL_80:
                          v290 = *(v343 + 48);
                          v291 = v340;
                          sub_1B4974FBC(v377, v340, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                          v292 = v291;
                          sub_1B4974FBC(v376, v291 + v290, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                          if (v283(v291, 1, v388) == 1)
                          {
                            if (v283(v291 + v290, 1, v388) == 1)
                            {
                              sub_1B4975024(v291, &qword_1EB8A6C90, &unk_1B4D1BBD0);
LABEL_89:
                              if (v364)
                              {
                                v305 = v373;
                                if (!v359)
                                {
LABEL_91:
                                  v306 = v385;
                                  v307 = *(v386 + 1);
                                  v307(v368, v385);
                                  v307(v369, v306);
                                  v308 = v388;
                                  v309 = v387[1];
                                  v309(v374, v388);
                                  v310 = v372;
LABEL_102:
                                  v309(v310, v308);
                                  sub_1B4975024(v376, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                  sub_1B4975024(v378, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                  sub_1B4975024(v380, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                                  v307(v370, v306);
                                  v307(v371, v306);
                                  v309(v375, v308);
                                  v309(v305, v308);
                                  sub_1B4975024(v377, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                  sub_1B4975024(v379, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                  v275 = v381;
                                  goto LABEL_60;
                                }
                              }

                              else
                              {
                                v311 = v359;
                                if (v183 != v190)
                                {
                                  v311 = 1;
                                }

                                v305 = v373;
                                if (v311)
                                {
                                  goto LABEL_91;
                                }
                              }

                              sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
                              v312 = v372;
                              if ((sub_1B4D1816C() & 1) == 0)
                              {
                                v306 = v385;
                                v307 = *(v386 + 1);
                                v307(v368, v385);
                                v307(v369, v306);
                                v308 = v388;
                                v309 = v387[1];
                                v309(v374, v388);
                                v310 = v312;
                                goto LABEL_102;
                              }

                              v313 = v375;
                              v314 = v374;
                              if ((sub_1B4D1816C() & 1) == 0)
                              {
                                v324 = v314;
                                v325 = *(v386 + 1);
                                v326 = v313;
                                v327 = v385;
                                v325(v368, v385);
                                v325(v369, v327);
                                v328 = v388;
                                v329 = v387[1];
                                v329(v324, v388);
                                v329(v312, v328);
                                sub_1B4975024(v376, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v378, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v380, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                                v325(v370, v327);
                                v325(v371, v327);
                                v329(v326, v328);
                                v329(v305, v328);
                                sub_1B4975024(v377, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v379, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                v275 = v381;
                                goto LABEL_60;
                              }

                              v315 = v391;
                              if (v185 != v191)
                              {
                                v330 = v385;
                                v331 = *(v386 + 1);
                                v331(v368, v385);
                                v331(v369, v330);
                                v332 = v388;
                                v333 = v387[1];
                                v333(v374, v388);
                                v333(v312, v332);
                                sub_1B4975024(v376, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v378, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v380, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                                v331(v370, v330);
                                v331(v371, v330);
                                v333(v375, v332);
                                v333(v373, v332);
                                sub_1B4975024(v377, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v379, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v381, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                                v261 = v315;
                                goto LABEL_62;
                              }

                              sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0);
                              v316 = v371;
                              v317 = v369;
                              v318 = v385;
                              if ((sub_1B4D1816C() & 1) == 0)
                              {
                                v334 = *(v386 + 1);
                                v334(v368, v318);
                                v334(v317, v318);
                                v335 = v388;
                                v336 = v387[1];
                                v336(v374, v388);
                                v336(v372, v335);
                                sub_1B4975024(v376, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v378, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v380, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                                v334(v370, v318);
                                v334(v316, v318);
                                v336(v375, v335);
                                v336(v373, v335);
                                sub_1B4975024(v377, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                sub_1B4975024(v379, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                                v275 = v381;
                                goto LABEL_60;
                              }

                              v319 = v370;
                              v320 = v368;
                              LODWORD(v390) = sub_1B4D1816C();
                              v321 = *(v386 + 1);
                              v321(v320, v318);
                              v321(v317, v318);
                              v322 = v388;
                              v323 = v387[1];
                              v323(v374, v388);
                              v323(v372, v322);
                              sub_1B4975024(v376, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                              sub_1B4975024(v378, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                              sub_1B4975024(v380, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                              v321(v319, v318);
                              v321(v316, v318);
                              v323(v375, v322);
                              v323(v373, v322);
                              sub_1B4975024(v377, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                              sub_1B4975024(v379, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                              sub_1B4975024(v381, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                              if ((v390 & 1) == 0)
                              {
                                goto LABEL_61;
                              }

LABEL_25:
                              v174 = v188 == v192;
                              v175 = v391;
                              goto LABEL_36;
                            }
                          }

                          else
                          {
                            v293 = v291;
                            v294 = v338;
                            sub_1B4974FBC(v293, v338, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                            if (v283(v292 + v290, 1, v388) != 1)
                            {
                              v299 = v292 + v290;
                              v300 = v339;
                              v301 = v388;
                              (v390)(v339, v299, v388);
                              sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
                              v302 = v292;
                              v303 = sub_1B4D1816C();
                              v304 = v387[1];
                              v304(v300, v301);
                              v304(v294, v301);
                              sub_1B4975024(v302, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                              if (v303)
                              {
                                goto LABEL_89;
                              }

                              goto LABEL_87;
                            }

                            (v387[1])(v294, v388);
                          }

                          v285 = v292;
                          goto LABEL_86;
                        }
                      }

                      else
                      {
                        v284 = v341;
                        sub_1B4974FBC(v282, v341, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                        if (v283(v282 + v281, 1, v388) != 1)
                        {
                          v286 = v339;
                          v287 = v388;
                          (v390)(v339, v282 + v281, v388);
                          sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
                          v288 = sub_1B4D1816C();
                          v289 = v387[1];
                          v289(v286, v287);
                          v289(v284, v287);
                          sub_1B4975024(v282, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                          if ((v288 & 1) == 0)
                          {
LABEL_87:
                            v295 = v385;
                            v296 = *(v386 + 1);
                            v296(v368, v385);
                            v296(v369, v295);
                            v297 = v388;
                            v298 = v387[1];
                            v298(v374, v388);
                            v298(v372, v297);
                            sub_1B4975024(v376, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                            sub_1B4975024(v378, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                            sub_1B4975024(v380, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                            v296(v370, v295);
                            v296(v371, v295);
                            v298(v375, v297);
                            v298(v373, v297);
                            sub_1B4975024(v377, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                            sub_1B4975024(v379, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                            v275 = v381;
                            goto LABEL_60;
                          }

                          goto LABEL_80;
                        }

                        (v387[1])(v284, v388);
                      }

                      v285 = v282;
LABEL_86:
                      sub_1B4975024(v285, &qword_1EB8A6F60, &qword_1B4D2C420);
                      goto LABEL_87;
                    }
                  }
                }

LABEL_58:
                v271 = v385;
                v272 = *(v386 + 1);
                v272(v368, v385);
                v272(v369, v271);
                v273 = v388;
                v274 = v387[1];
                v274(v374, v388);
                v274(v372, v273);
                sub_1B4975024(v376, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                sub_1B4975024(v378, &qword_1EB8A6C90, &unk_1B4D1BBD0);
                sub_1B4975024(v380, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
                v272(v370, v271);
                v272(v371, v271);
                v274(v375, v273);
                v274(v373, v273);
                goto LABEL_59;
              }

              (v202[1])(v270, v201);
            }

            sub_1B4975024(v268, &qword_1EB8A6F68, &unk_1B4D1C550);
            goto LABEL_58;
          }

LABEL_42:
          v257 = v385;
          v258 = *(v386 + 1);
          v258(v368, v385);
          v258(v369, v257);
          v259 = v388;
          v260 = v387[1];
          v260(v374, v388);
          v260(v372, v259);
          sub_1B4975024(v376, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          sub_1B4975024(v378, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          sub_1B4975024(v380, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          v258(v370, v257);
          v258(v371, v257);
          v260(v375, v259);
          v260(v373, v259);
LABEL_59:
          sub_1B4975024(v377, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          sub_1B4975024(v379, &qword_1EB8A6C90, &unk_1B4D1BBD0);
          v275 = v381;
LABEL_60:
          sub_1B4975024(v275, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          goto LABEL_61;
        }

        (v202[1])(v256, v201);
      }

      sub_1B4975024(v200, &qword_1EB8A6F68, &unk_1B4D1C550);
      goto LABEL_42;
    }

    v229 = v385;
    v230 = *(v386 + 1);
    v230(v176 + v366, v385);
    v230(&v186[v176], v229);
    v231 = v388;
    v232 = v387[1];
    v232(&v384[v176], v388);
    v232(&v389[v176], v231);
    sub_1B4975024(&v390[v176], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(&v181[v176], &qword_1EB8A6C90, &unk_1B4D1BBD0);
    sub_1B4975024(v176 + v365, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    sub_1B4975024(v176, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
LABEL_30:
    v121 = v391;
    goto LABEL_31;
  }

  v121 = v391;
  v154 = v365;
  sub_1B4B0F6D0(v391, v365);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA3D8, &qword_1B4D2E808);
  v156 = v155[12];
  v157 = v155[16];
  v158 = v155[20];
  v128 = *(v154 + v158);
  v159 = swift_getEnumCaseMultiPayload();
  v161 = v387;
  v160 = v388;
  if (v159 == 2)
  {
    v129 = *&v118[v158];
    v162 = v387[4];
    v163 = v351;
    v162(v351, v119, v388);
    v162(v361, (v154 + v156), v160);
    v162(v360, (v154 + v157), v160);
    v164 = &v119[v156];
    v165 = v350;
    v162(v350, v164, v160);
    v166 = &v119[v157];
    v167 = v163;
    v168 = v349;
    v162(v349, v166, v160);
    sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
    LOBYTE(v162) = sub_1B4D1816C();
    v169 = v161[1];
    v169(v154, v160);
    if (v162)
    {
      v170 = v361;
      if (sub_1B4D1816C())
      {
        v171 = v168;
        v172 = v360;
        v173 = sub_1B4D1816C();
        v169(v171, v160);
        v169(v165, v160);
        v169(v172, v160);
        v169(v170, v160);
        v169(v167, v160);
        if (v173)
        {
LABEL_16:
          v174 = v128 == v129;
          v175 = v121;
LABEL_36:
          sub_1B4B10A80(v175, type metadata accessor for RingProgressType);
          return v174;
        }

LABEL_49:
        v261 = v121;
LABEL_62:
        sub_1B4B10A80(v261, type metadata accessor for RingProgressType);
        return 0;
      }

      v169(v168, v160);
      v169(v165, v160);
      v169(v360, v160);
      v254 = v170;
    }

    else
    {
      v169(v168, v160);
      v169(v165, v160);
      v169(v360, v160);
      v254 = v361;
    }

    v169(v254, v160);
    v169(v167, v160);
    goto LABEL_49;
  }

  v225 = v387[1];
  v225(v154 + v157, v388);
  v225(v154 + v156, v160);
  v225(v154, v160);
LABEL_31:
  sub_1B4975024(v121, &qword_1EB8AA4F8, &qword_1B4D2EFD0);
  return 0;
}

uint64_t type metadata accessor for RingProgressType()
{
  result = qword_1EB8AA430;
  if (!qword_1EB8AA430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4B0F67C()
{
  result = qword_1EB8AA3B0;
  if (!qword_1EB8AA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA3B0);
  }

  return result;
}

uint64_t sub_1B4B0F6D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RingProgressType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4B0F734()
{
  result = qword_1EB8AA3C0;
  if (!qword_1EB8AA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA3C0);
  }

  return result;
}

unint64_t sub_1B4B0F788()
{
  result = qword_1EB8AA3D0;
  if (!qword_1EB8AA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA3D0);
  }

  return result;
}

unint64_t sub_1B4B0F7DC()
{
  result = qword_1EB8AA3E0;
  if (!qword_1EB8AA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA3E0);
  }

  return result;
}

unint64_t sub_1B4B0F830()
{
  result = qword_1EB8AA3E8;
  if (!qword_1EB8AA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA3E8);
  }

  return result;
}

unint64_t sub_1B4B0F884()
{
  result = qword_1EB8AA3F8;
  if (!qword_1EB8AA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA3F8);
  }

  return result;
}

void sub_1B4B0F8D8()
{
  sub_1B4B0F9BC(319, &qword_1EB8AA440);
  if (v0 <= 0x3F)
  {
    sub_1B4B0F9BC(319, &qword_1EB8AA448);
    if (v1 <= 0x3F)
    {
      sub_1B4B0F9BC(319, &qword_1EB8AA450);
      if (v2 <= 0x3F)
      {
        sub_1B4B0FAC8(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4B0F9BC(uint64_t a1, unint64_t *a2)
{
  if (*a2)
  {
    v2 = *a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

void sub_1B4B0FAC8(uint64_t a1)
{
  if (!qword_1EB8AA458)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AA460, &qword_1B4D2E8E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB8AA458);
    }
  }
}

unint64_t sub_1B4B0FD30()
{
  result = qword_1EB8AA468;
  if (!qword_1EB8AA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA468);
  }

  return result;
}

unint64_t sub_1B4B0FD88()
{
  result = qword_1EB8AA470;
  if (!qword_1EB8AA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA470);
  }

  return result;
}

unint64_t sub_1B4B0FDE0()
{
  result = qword_1EB8AA478;
  if (!qword_1EB8AA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA478);
  }

  return result;
}

unint64_t sub_1B4B0FE38()
{
  result = qword_1EB8AA480;
  if (!qword_1EB8AA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA480);
  }

  return result;
}

unint64_t sub_1B4B0FE90()
{
  result = qword_1EB8AA488;
  if (!qword_1EB8AA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA488);
  }

  return result;
}

unint64_t sub_1B4B0FEE8()
{
  result = qword_1EB8AA490;
  if (!qword_1EB8AA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA490);
  }

  return result;
}

unint64_t sub_1B4B0FF40()
{
  result = qword_1EB8AA498;
  if (!qword_1EB8AA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA498);
  }

  return result;
}

unint64_t sub_1B4B0FF98()
{
  result = qword_1EB8AA4A0;
  if (!qword_1EB8AA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4A0);
  }

  return result;
}

unint64_t sub_1B4B0FFF0()
{
  result = qword_1EB8AA4A8;
  if (!qword_1EB8AA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4A8);
  }

  return result;
}

unint64_t sub_1B4B10048()
{
  result = qword_1EB8AA4B0;
  if (!qword_1EB8AA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4B0);
  }

  return result;
}

unint64_t sub_1B4B100A0()
{
  result = qword_1EB8AA4B8;
  if (!qword_1EB8AA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4B8);
  }

  return result;
}

unint64_t sub_1B4B100F8()
{
  result = qword_1EB8AA4C0;
  if (!qword_1EB8AA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4C0);
  }

  return result;
}

unint64_t sub_1B4B10150()
{
  result = qword_1EB8AA4C8;
  if (!qword_1EB8AA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4C8);
  }

  return result;
}

unint64_t sub_1B4B101A8()
{
  result = qword_1EB8AA4D0;
  if (!qword_1EB8AA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4D0);
  }

  return result;
}

unint64_t sub_1B4B10200()
{
  result = qword_1EB8AA4D8;
  if (!qword_1EB8AA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4D8);
  }

  return result;
}

unint64_t sub_1B4B10258()
{
  result = qword_1EB8AA4E0;
  if (!qword_1EB8AA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4E0);
  }

  return result;
}

unint64_t sub_1B4B102B0()
{
  result = qword_1EB8AA4E8;
  if (!qword_1EB8AA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4E8);
  }

  return result;
}

unint64_t sub_1B4B10308()
{
  result = qword_1EB8AA4F0;
  if (!qword_1EB8AA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA4F0);
  }

  return result;
}

uint64_t sub_1B4B1035C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676F725065766F6DLL && a2 == 0xEC00000073736572;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616F4765766F6DLL && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6372655065766F6DLL && a2 == 0xEE00656761746E65 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B4D618C0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756E694D65766F6DLL && a2 == 0xEE006C616F476574 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B4D618E0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B4D4F120 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xEC0000006C616F47 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B4D61900 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F7250646E617473 && a2 == 0xED00007373657267 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x616F47646E617473 && a2 == 0xE90000000000006CLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x726550646E617473 && a2 == 0xEF656761746E6563)
  {

    return 11;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1B4B10758(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C614365766F6DLL && a2 == 0xEC00000073656972;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756E694D65766F6DLL && a2 == 0xEB00000000736574 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E617473 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73676E69526C6C61 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B4B1090C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1818324839 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646E69616D6572 && a2 == 0xE900000000000072 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61746E6563726570 && a2 == 0xEA00000000006567)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

uint64_t sub_1B4B10A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TrainingLoadDay.init(_:)@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  if (*a1 >= 5)
  {
    sub_1B4B10B98();
    swift_allocError();
    swift_willThrow();
    return sub_1B4B11630(a1, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  }

  else
  {
    result = sub_1B4B11630(a1, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
    *a2 = v2;
  }

  return result;
}

unint64_t sub_1B4B10B98()
{
  result = qword_1EB8AA500;
  if (!qword_1EB8AA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA500);
  }

  return result;
}

uint64_t TrainingLoadDay.protobuf()()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  sub_1B4B11830(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  return sub_1B4D17DAC();
}

char *sub_1B4B10CA0(uint64_t a1)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v8 = sub_1B4B11934();
  v9 = &v12;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4B11830(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
    v9 = sub_1B4D17D6C();
    sub_1B4B11630(v7, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  }

  return v9;
}

uint64_t sub_1B4B10DE4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B22B2C(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4B10E18()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  sub_1B4B11830(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  return sub_1B4D17DAC();
}

uint64_t TrainingLoadContext.init(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4B11558(a1 + *(Context + 20), v7);
  v14 = *(v9 + 48);
  if (v14(v7, 1, v8) == 1)
  {
    *v12 = 0;
    v15 = v12 + *(v8 + 20);
    sub_1B4D17BBC();
    if (v14(v7, 1, v8) != 1)
    {
      sub_1B4B115C8(v7);
    }
  }

  else
  {
    sub_1B4B11690(v7, v12);
  }

  v16 = *v12;
  if (*v12 >= 5)
  {
    sub_1B4B10B98();
    swift_allocError();
    swift_willThrow();
    sub_1B4B11630(a1, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    return sub_1B4B11630(v12, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  }

  else
  {
    sub_1B4B11630(a1, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    result = sub_1B4B11630(v12, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
    *a2 = v16;
  }

  return result;
}

uint64_t TrainingLoadContext.protobuf()()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4B11830(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B111BC(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11[16] = a2;
  sub_1B4B11830(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  sub_1B4D17DAC();
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0) + 20);
  sub_1B4B115C8(a1 + v9);
  sub_1B4B11690(v8, a1 + v9);
  return (*(v5 + 56))(a1 + v9, 0, 1, v4);
}

char *sub_1B4B11320(uint64_t a1)
{
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v5 = *(*(Context - 8) + 64);
  MEMORY[0x1EEE9AC00](Context);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v8 = sub_1B4B118E0();
  v9 = &v12;
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4B11830(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    v9 = sub_1B4D17D6C();
    sub_1B4B11630(v7, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  }

  return v9;
}

uint64_t sub_1B4B11464@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4B22DDC(a1, a2, &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t sub_1B4B11498()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4B11830(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4B11558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B115C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4B11630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B11690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4B11830(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4B1188C()
{
  result = qword_1EB8AA530;
  if (!qword_1EB8AA530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA530);
  }

  return result;
}

unint64_t sub_1B4B118E0()
{
  result = qword_1EB8AA538;
  if (!qword_1EB8AA538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA538);
  }

  return result;
}

unint64_t sub_1B4B11934()
{
  result = qword_1EB8AA540;
  if (!qword_1EB8AA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA540);
  }

  return result;
}

unint64_t sub_1B4B119CC()
{
  result = qword_1EB8AA548;
  if (!qword_1EB8AA548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA548);
  }

  return result;
}

unint64_t sub_1B4B11A24()
{
  result = qword_1EB8AA550;
  if (!qword_1EB8AA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA550);
  }

  return result;
}

uint64_t sub_1B4B11A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4B11B24, 0, 0);
}

uint64_t sub_1B4B11B24()
{
  v1 = v0[5];
  sub_1B4992854(v0[3], v1);
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4992680;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return sub_1B4D0F75C(v6, v4);
}

void Date.cacheIndex.getter(uint64_t *a1@<X8>)
{
  v2 = sub_1B4D1771C();
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4D1796C();
  __swift_project_value_buffer(v3, qword_1EDC3CE48);
  v4 = sub_1B4D178CC();
  v5 = _HKCacheIndexFromDate();

  *a1 = v5;
}

void Date.beginningOfWeek()()
{
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v0 = sub_1B4D1796C();
  __swift_project_value_buffer(v0, qword_1EDC3CE48);
  v1 = sub_1B4D178CC();
  v2 = sub_1B4D1771C();
  v3 = [v1 hk:v2 startOfFitnessWeekBeforeDate:?];

  sub_1B4D1775C();
}

uint64_t sub_1B4B11DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v32 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v31 - v4;
  v5 = sub_1B4D1796C();
  v36 = *(v5 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4D1794C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4D1777C();
  v33 = *(v13 - 8);
  v34 = v13;
  v14 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v31 = &v31 - v18;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v5, qword_1EDC3CE48);
  v20 = sub_1B4D178CC();
  v21 = sub_1B4D1771C();
  v22 = [v20 hk:v21 startOfFitnessWeekBeforeDate:?];

  sub_1B4D1775C();
  (*(v9 + 104))(v12, *MEMORY[0x1E6969A48], v8);
  v23 = v35;
  v24 = v36;
  (*(v36 + 16))(v35, v19, v5);
  v25 = v38;
  sub_1B4D1790C();
  (*(v24 + 8))(v23, v5);
  (*(v9 + 8))(v12, v8);
  v26 = v33;
  v27 = v34;
  (*(v33 + 8))(v16, v34);
  if ((*(v26 + 48))(v25, 1, v27) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4B15124();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v29 = *(v26 + 32);
    v30 = v31;
    v29(v31, v25, v27);
    return (v29)(v32, v30, v27);
  }
}

uint64_t Date.dateIntervalFromStartOfWeek(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v33 = a2;
  v35 = sub_1B4D1794C();
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_1B4D1777C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v31 = &v30 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v30 = &v30 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - v19;
  v21 = sub_1B4D178CC();
  v22 = sub_1B4D1771C();
  v23 = [v21 hk:v22 startOfFitnessWeekBeforeDate:?];

  v36 = v20;
  sub_1B4D1775C();

  v24 = v35;
  (*(v2 + 104))(v5, *MEMORY[0x1E6969A98], v35);
  sub_1B4D1790C();
  (*(v2 + 8))(v5, v24);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4B15124();
    swift_allocError();
    swift_willThrow();
    return (*(v11 + 8))(v36, v10);
  }

  else
  {
    v26 = v30;
    (*(v11 + 32))(v30, v9, v10);
    v27 = *(v11 + 16);
    v28 = v36;
    v27(v31, v36, v10);
    v27(v32, v26, v10);
    sub_1B4D174CC();
    v29 = *(v11 + 8);
    v29(v26, v10);
    return (v29)(v28, v10);
  }
}

uint64_t Date.dateIntervalForPreviousWeek(calendar:)@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v43 = sub_1B4D1794C();
  v42 = *(v43 - 8);
  v1 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_1B4D1777C();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v36 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v20 = sub_1B4D178CC();
  v21 = sub_1B4D1771C();
  v22 = [v20 hk:v21 startOfFitnessWeekBeforeDate:?];

  v23 = v19;
  v24 = v8;
  v25 = v41;
  sub_1B4D1775C();

  v26 = v42;
  v27 = v43;
  (*(v42 + 104))(v3, *MEMORY[0x1E6969A98], v43);
  sub_1B4D1790C();
  (*(v26 + 8))(v3, v27);
  if ((*(v25 + 48))(v7, 1, v24) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4B15124();
    swift_allocError();
    swift_willThrow();
    return (*(v25 + 8))(v23, v24);
  }

  else
  {
    v29 = v36;
    (*(v25 + 32))(v36, v7, v24);
    v30 = sub_1B4D178CC();
    v31 = sub_1B4D1771C();
    v32 = [v30 hk:v31 startOfFitnessWeekBeforeDate:?];

    v33 = v37;
    sub_1B4D1775C();

    v34 = *(v25 + 16);
    v34(v38, v33, v24);
    v34(v39, v29, v24);
    sub_1B4D174CC();
    v35 = *(v25 + 8);
    v35(v33, v24);
    v35(v29, v24);
    return (v35)(v23, v24);
  }
}

uint64_t DateError.hashValue.getter()
{
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](0);
  return sub_1B4D18EDC();
}

uint64_t Date.activitySummaryComponents(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7048, &qword_1B4D1CC00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v6 = sub_1B4D1794C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B4D1B2D0;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x1E6969A50], v6);
  v12(v11 + v8, *MEMORY[0x1E6969A68], v6);
  v12(v11 + 2 * v8, *MEMORY[0x1E6969A78], v6);
  v12(v11 + 3 * v8, *MEMORY[0x1E6969A48], v6);
  sub_1B49B56B4(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B4D1788C();

  v13 = sub_1B4D1796C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5, a1, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  return sub_1B4D175EC();
}

uint64_t Date.endOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v32 = sub_1B4D1789C();
  v1 = *(v32 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B4D178BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B4D1786C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v28 - v16;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v18 = sub_1B4D1796C();
  __swift_project_value_buffer(v18, qword_1EDC3CE48);
  v19 = *MEMORY[0x1E69698D0];
  v20 = *(v10 + 104);
  v30 = v9;
  v20(v13, v19, v9);
  v21 = *MEMORY[0x1E69699C8];
  v22 = *(v5 + 104);
  v29 = v4;
  v22(v8, v21, v4);
  v23 = v31;
  v24 = v32;
  (*(v1 + 104))(v31, *MEMORY[0x1E6969998], v32);
  sub_1B4D178EC();
  (*(v1 + 8))(v23, v24);
  (*(v5 + 8))(v8, v29);
  (*(v10 + 8))(v13, v30);
  v25 = sub_1B4D1777C();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v17, 1, v25) != 1)
  {
    return (*(v26 + 32))(v28, v17, v25);
  }

  sub_1B4975024(v17, &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4B15124();
  swift_allocError();
  return swift_willThrow();
}

uint64_t Date.beginningOfDay()()
{
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v0 = sub_1B4D1796C();
  __swift_project_value_buffer(v0, qword_1EDC3CE48);
  return sub_1B4D1782C();
}

uint64_t Date.byAdding(component:value:calendar:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  sub_1B4D1790C();
  v6 = sub_1B4D1777C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    return (*(v7 + 32))(a1, v5, v6);
  }

  sub_1B4975024(v5, &qword_1EB8A6790, &qword_1B4D1BBC0);
  sub_1B4B15124();
  swift_allocError();
  return swift_willThrow();
}

uint64_t Date.beginningOfSemester()@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v55 = &v49 - v3;
  v56 = sub_1B4D1777C();
  v54 = *(v56 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7048, &qword_1B4D1CC00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v49 - v11;
  v12 = sub_1B4D175FC();
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v18 = sub_1B4D1796C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v18, qword_1EDC3CE48);
  v24 = *(v19 + 16);
  v49 = v23;
  v24(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6838, &unk_1B4D1AB50);
  v25 = sub_1B4D1794C();
  v26 = *(v25 - 8);
  v61 = v19;
  v27 = v26;
  v28 = *(v26 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B4D1BE00;
  v31 = v30 + v29;
  v32 = *MEMORY[0x1E6969A68];
  v58 = v18;
  v33 = *(v27 + 104);
  v33(v31, v32, v25);
  v33(v31 + v28, *MEMORY[0x1E6969A78], v25);
  v33(v31 + 2 * v28, *MEMORY[0x1E6969A48], v25);
  sub_1B49B56B4(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1B4D1788C();

  sub_1B4D175AC();
  if (v34)
  {
    sub_1B4B15124();
    swift_allocError();
    swift_willThrow();
    (*(v59 + 8))(v17, v60);
    v35 = v58;
    v36 = v61;
    return (*(v36 + 8))(v22, v35);
  }

  v35 = v58;
  (*(v61 + 56))(v52, 1, 1, v58);
  v37 = sub_1B4D179BC();
  (*(*(v37 - 8) + 56))(v53, 1, 1, v37);
  sub_1B4D1759C();
  v38 = v57;
  sub_1B4D175DC();
  v39 = v55;
  sub_1B4D178FC();
  v40 = v54;
  v41 = v56;
  v42 = (*(v54 + 48))(v39, 1, v56);
  v36 = v61;
  if (v42 == 1)
  {
    sub_1B4975024(v39, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4B15124();
    swift_allocError();
    swift_willThrow();
    v43 = v60;
    v44 = *(v59 + 8);
    v44(v38, v60);
    v44(v17, v43);
    return (*(v36 + 8))(v22, v35);
  }

  v46 = v50;
  (*(v40 + 32))(v50, v39, v41);
  sub_1B4D1782C();
  (*(v40 + 8))(v46, v41);
  v47 = v60;
  v48 = *(v59 + 8);
  v48(v57, v60);
  v48(v17, v47);
  return (*(v36 + 8))(v22, v35);
}

uint64_t sub_1B4B13AD8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v25 = a2;
  v2 = sub_1B4D1794C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7728, &qword_1B4D1E9D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  v24 = sub_1B4D1777C();
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v18 = sub_1B4D1796C();
  __swift_project_value_buffer(v18, qword_1EDC3CE48);
  (*(v3 + 104))(v6, *v26, v2);
  sub_1B4D1783C();
  (*(v3 + 8))(v6, v2);
  v19 = sub_1B4D174EC();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v10, 1, v19) == 1)
  {
    sub_1B4975024(v10, &qword_1EB8A7728, &qword_1B4D1E9D0);
    sub_1B4B15124();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_1B4D174DC();
    (*(v20 + 8))(v10, v19);
    v22 = v24;
    (*(v11 + 32))(v17, v14, v24);
    sub_1B4D1782C();
    return (*(v11 + 8))(v17, v22);
  }
}

uint64_t Date.endOfLastWeek(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v21 = a2;
  v23 = sub_1B4D1794C();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_1B4D1777C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4D178CC();
  v16 = sub_1B4D1771C();
  v17 = [v15 hk:v16 startOfFitnessWeekBeforeDate:?];

  sub_1B4D1775C();
  v18 = v23;
  (*(v2 + 104))(v5, *MEMORY[0x1E6969A98], v23);
  sub_1B4D1790C();
  (*(v2 + 8))(v5, v18);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4B15124();
    swift_allocError();
    swift_willThrow();
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    return (*(v11 + 32))(v21, v9, v10);
  }
}