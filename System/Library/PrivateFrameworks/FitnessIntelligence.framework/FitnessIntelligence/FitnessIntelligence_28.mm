uint64_t sub_1B4C0C48C(uint64_t a1)
{
  v2 = *(type metadata accessor for HighestDailyStepCountAnniversaryFact() + 20);
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

uint64_t sub_1B4C0C564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighestDailyStepCountAnniversaryFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4C0C5C8(uint64_t a1)
{
  v2 = *(*(type metadata accessor for HighestDailyStepCountAnniversaryFact() - 8) + 80);

  return sub_1B4C0C48C(a1);
}

unint64_t sub_1B4C0C63C()
{
  result = qword_1EB8AC6E0;
  if (!qword_1EB8AC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6E0);
  }

  return result;
}

unint64_t sub_1B4C0C694()
{
  result = qword_1EB8AC6E8;
  if (!qword_1EB8AC6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8AC6F0, &qword_1B4D3CD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6E8);
  }

  return result;
}

unint64_t sub_1B4C0C6FC()
{
  result = qword_1EB8AC6F8;
  if (!qword_1EB8AC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC6F8);
  }

  return result;
}

unint64_t sub_1B4C0C754()
{
  result = qword_1EB8AC700;
  if (!qword_1EB8AC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC700);
  }

  return result;
}

unint64_t sub_1B4C0C7A8(uint64_t a1)
{
  result = sub_1B4C0C7D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4C0C7D0()
{
  result = qword_1EB8AC708;
  if (!qword_1EB8AC708)
  {
    type metadata accessor for HighestDailyStepCountAnniversaryFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AC708);
  }

  return result;
}

BOOL Apple_Fitness_Intelligence_WorkoutRecord.hasFitnessPlusCatalogWorkout.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  sub_1B4974FBC(v0 + *(v5 + 44), v4, &qword_1EB8A6A28, &qword_1B4D20160);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A6A28, &qword_1B4D20160);
  return v7;
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.fitnessPlusCatalogWorkout.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  sub_1B4974FBC(v1 + *(v7 + 44), v6, &qword_1EB8A6A28, &qword_1B4D20160);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  v10 = a1 + *(v8 + 28);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6A28, &qword_1B4D20160);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.fitnessPlusCatalogWorkout.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 44);
  sub_1B4975024(v1 + v3, &qword_1EB8A6A28, &qword_1B4D20160);
  sub_1B4C2FF48(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_ActivitySummaryContext.todayRing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C38, &qword_1B4D2B6E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  sub_1B4974FBC(v1 + *(v7 + 20), v6, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  }

  sub_1B4D17BBC();
  v10 = *(v8 + 20);
  if (qword_1EB8A64F8 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_1EB8AC7F8;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummaryContext.todayRing.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  sub_1B4C2FF48(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_TrainingLoadContext.trainingLoadDay.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4974FBC(v1 + *(Context + 20), v6, &qword_1EB8AA510, &unk_1B4D3CDD0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  }

  *a1 = 0;
  v10 = a1 + *(v8 + 20);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8AA510, &unk_1B4D3CDD0);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_TrainingLoadContext.trainingLoadDay.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8AA510, &unk_1B4D3CDD0);
  sub_1B4C2FF48(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Workout.workoutType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  sub_1B4974FBC(v1 + *(v7 + 28), v6, &qword_1EB8A7CB8, &unk_1B4D20170);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  }

  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  v10 = a1 + *(v8 + 28);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7CB8, &unk_1B4D20170);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Workout.workoutType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A7CB8, &unk_1B4D20170);
  sub_1B4C2FF48(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.displayName.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.activeCompetitionUuid.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.activeCompetitionUuid.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.cacheIndex.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  swift_beginAccess();
  return *(v1 + 16);
}

BOOL Apple_Fitness_Intelligence_ActivitySummary.hasPausedInterval.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1B4975024(v4, &qword_1EB8AB768, &unk_1B4D3CDE0);
  return v8;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.pausedInterval.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  }

  *a1 = 0;
  a1[1] = 0;
  v11 = a1 + *(v9 + 24);
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8AB768, &unk_1B4D3CDE0);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.isPaused.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  v2 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  swift_beginAccess();
  return *(v1 + v2);
}

BOOL sub_1B4C0D8D8(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  return (*(v3 + 8) & 1) == 0;
}

double sub_1B4C0D960(uint64_t (*a1)(void), void *a2)
{
  v3 = *(v2 + *(a1(0) + 20)) + *a2;
  swift_beginAccess();
  result = *v3;
  if (*(v3 + 8))
  {
    return 0.0;
  }

  return result;
}

BOOL Apple_Fitness_Intelligence_ActivitySummary.hasActivityMoveMode.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20)) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  swift_beginAccess();
  return (*(v1 + 4) & 1) == 0;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.activityMoveMode.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20)) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode);
  swift_beginAccess();
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

BOOL Apple_Fitness_Intelligence_ActivitySummary.hasIsWheelchairUser.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  v2 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  return *(v1 + v2) != 2;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.isWheelchairUser.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  v2 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  return *(v1 + v2) & 1;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.cacheIndex.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1B4C3D764(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.pausedInterval.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1B4C3D764(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v17, &qword_1EB8AB768, &unk_1B4D3CDE0);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.isPaused.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1B4C3D764(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  result = swift_beginAccess();
  *(v7 + v12) = a1 & 1;
  return result;
}

uint64_t sub_1B4C0E06C(void *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1B4C3D764(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = v9 + *a1;
  result = swift_beginAccess();
  *v14 = a2;
  *(v14 + 8) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.activityMoveMode.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1B4C3D764(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = v7 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  result = swift_beginAccess();
  *v12 = a1;
  *(v12 + 4) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySummary.isWheelchairUser.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1B4C3D764(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  result = swift_beginAccess();
  *(v7 + v12) = a1 & 1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.workoutPropertiesQuery.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8A6668, &qword_1B4D1A658);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  }

  v11 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v11;
  v12 = &a1[v9[6]];
  sub_1B4D17BBC();
  v13 = v9[7];
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v9[8];
  v16 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  (*(*(v16 - 8) + 56))(&a1[v15], 1, 1, v16);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6668, &qword_1B4D1A658);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.ringsPropertiesQuery.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8A6680, &unk_1B4D2FD90);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  v11 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v11;
  v12 = &a1[v9[6]];
  sub_1B4D17BBC();
  v13 = v9[7];
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  v15 = v9[8];
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  (*(*(v16 - 8) + 56))(&a1[v15], 1, 1, v16);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6680, &unk_1B4D2FD90);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.location.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ABC28, &qword_1B4D38428);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  *a1 = 0u;
  a1[1] = 0u;
  v11 = a1 + *(v9 + 32);
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ABC28, &qword_1B4D38428);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.workoutPropertiesQuery.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C24944(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8A6668, &qword_1B4D1A658);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.ringsPropertiesQuery.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C24944(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8A6680, &unk_1B4D2FD90);
  return swift_endAccess();
}

uint64_t sub_1B4C0EC34(void *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C24944(v9);
    *(v4 + v6) = v9;
  }

  v13 = v9 + *a1;
  result = swift_beginAccess();
  *v13 = a2;
  *(v13 + 8) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.location.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C24944(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8ABC28, &qword_1B4D38428);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.earnedDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  sub_1B4974FBC(v1 + *(v7 + 32), v6, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v10 = a1 + *(v8 + 28);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  }

  return result;
}

uint64_t sub_1B4C0F034(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double Apple_Fitness_Intelligence_AwardsContext.Award.valueDouble.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 36);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1B4C0F140(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 48));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double Apple_Fitness_Intelligence_AwardsContext.Award.goalDouble.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 44);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1B4C0F21C(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 52));
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.earnedDateComponents.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  sub_1B4C2FF48(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.valueDouble.setter(double a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_1B4C0F380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.goalDouble.setter(double a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_1B4C0F41C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 48));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1B4C0F480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 52));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.type.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;
  return sub_1B4C0F574;
}

uint64_t sub_1B4C0F5A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4C24944(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8A6668, &qword_1B4D1A658);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.workoutPropertiesQuery.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A6668, &qword_1B4D1A658);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v19;
    v20 = &v14[v9[6]];
    sub_1B4D17BBC();
    v21 = v9[7];
    v22 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
    (*(*(v22 - 8) + 56))(&v14[v21], 1, 1, v22);
    v23 = v9[8];
    v24 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
    (*(*(v24 - 8) + 56))(&v14[v23], 1, 1, v24);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6668, &qword_1B4D1A658);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  }

  return sub_1B4C0FA74;
}

void sub_1B4C0FA74(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4C24944(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8A6668, &qword_1B4D1A658);
    swift_endAccess();
    sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4C24944(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8A6668, &qword_1B4D1A658);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.hasWorkoutPropertiesQuery.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8A6668, &qword_1B4D1A658);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1B4975024(v4, &qword_1EB8A6668, &qword_1B4D1A658);
  return v8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.clearWorkoutPropertiesQuery()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C24944(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v14, &qword_1EB8A6668, &qword_1B4D1A658);
  swift_endAccess();
}

uint64_t sub_1B4C0FF28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4C24944(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8A6680, &unk_1B4D2FD90);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.ringsPropertiesQuery.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A6680, &unk_1B4D2FD90);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v19;
    v20 = &v14[v9[6]];
    sub_1B4D17BBC();
    v21 = v9[7];
    v22 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
    (*(*(v22 - 8) + 56))(&v14[v21], 1, 1, v22);
    v23 = v9[8];
    v24 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
    (*(*(v24 - 8) + 56))(&v14[v23], 1, 1, v24);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6680, &unk_1B4D2FD90);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  return sub_1B4C103FC;
}

void sub_1B4C103FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4C24944(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8A6680, &unk_1B4D2FD90);
    swift_endAccess();
    sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4C24944(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8A6680, &unk_1B4D2FD90);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.hasRingsPropertiesQuery.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8A6680, &unk_1B4D2FD90);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1B4975024(v4, &qword_1EB8A6680, &unk_1B4D2FD90);
  return v8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.clearRingsPropertiesQuery()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C24944(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v14, &qword_1EB8A6680, &unk_1B4D2FD90);
  swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.currentDate.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1096C;
}

uint64_t sub_1B4C109A4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X4>, double *a4@<X8>)
{
  v5 = *(a1 + *(a2(0) + 20)) + *a3;
  result = swift_beginAccess();
  v7 = *v5;
  if (*(v5 + 8))
  {
    v7 = 0.0;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1B4C10A24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C24944(v11);
    *(a2 + v8) = v11;
  }

  v15 = v11 + *a5;
  result = swift_beginAccess();
  *v15 = v7;
  *(v15 + 8) = 0;
  return result;
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.dateIntervalStart.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C10B8C;
}

void sub_1B4C10B98(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 88);
    v12 = *(v4 + 80);
    v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v10 = sub_1B4C24944(v10);
    *(v12 + v11) = v10;
  }

  v16 = v10 + *a3;
  swift_beginAccess();
  *v16 = v5;
  *(v16 + 8) = 0;

  free(v4);
}

uint64_t sub_1B4C10CA0(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1B4C24944(v7);
    *(v3 + v4) = v7;
  }

  v11 = v7 + *a1;
  result = swift_beginAccess();
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.dateIntervalEnd.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C10E00;
}

uint64_t sub_1B4C10E38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4C24944(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8ABC28, &qword_1B4D38428);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_LocationCoordinate.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  *a1 = 0u;
  a1[1] = 0u;
  v3 = a1 + *(v2 + 32);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.location.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ABC28, &qword_1B4D38428);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    v19 = v14 + *(v9 + 32);
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ABC28, &qword_1B4D38428);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  return sub_1B4C112BC;
}

void sub_1B4C112BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4C24944(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8ABC28, &qword_1B4D38428);
    swift_endAccess();
    sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4C24944(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8ABC28, &qword_1B4D38428);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.hasLocation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8ABC28, &qword_1B4D38428);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1B4975024(v4, &qword_1EB8ABC28, &qword_1B4D38428);
  return v8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextQueryDescriptor.clearLocation()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C24944(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v14, &qword_1EB8ABC28, &qword_1B4D38428);
  swift_endAccess();
}

uint64_t sub_1B4C117AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C41D9C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest.queryDescriptor.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v5[2] = Descriptor;
  v10 = *(Descriptor - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  v16 = *(v11 + 48);
  if (v16(v8, 1, Descriptor) == 1)
  {
    sub_1B4D17BBC();
    v17 = *(Descriptor + 20);
    if (qword_1EB8A64A8 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_1EB8AC728;
    v18 = v16(v8, 1, Descriptor);

    if (v18 != 1)
    {
      sub_1B4975024(v8, &qword_1EB8AA6B8, &qword_1B4D2FC68);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  return sub_1B4C41EB4;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  Request = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0);
  v3 = &a1[*(Request + 20)];
  sub_1B4D17BBC();
  v4 = *(Request + 24);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v6 = *(*(Descriptor - 8) + 56);

  return v6(&a1[v4], 1, 1, Descriptor);
}

uint64_t sub_1B4C11C68@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v16 - v8;
  v10 = a1(0, v7);
  sub_1B4974FBC(v2 + *(v10 + 24), v9, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v12 = *(*(Descriptor - 8) + 48);
  if (v12(v9, 1, Descriptor) != 1)
  {
    return sub_1B4C2FF48(v9, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  sub_1B4D17BBC();
  v13 = *(Descriptor + 20);
  if (qword_1EB8A64A8 != -1)
  {
    swift_once();
  }

  *(a2 + v13) = qword_1EB8AC728;
  v14 = v12(v9, 1, Descriptor);

  if (v14 != 1)
  {
    return sub_1B4975024(v9, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  }

  return result;
}

uint64_t sub_1B4C11E18@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = a2(0);
  sub_1B4974FBC(a1 + *(v10 + 24), v9, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v12 = *(*(Descriptor - 8) + 48);
  if (v12(v9, 1, Descriptor) != 1)
  {
    return sub_1B4C2FF48(v9, a3, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  sub_1B4D17BBC();
  v13 = *(Descriptor + 20);
  if (qword_1EB8A64A8 != -1)
  {
    swift_once();
  }

  *(a3 + v13) = qword_1EB8AC728;
  v14 = v12(v9, 1, Descriptor);

  if (v14 != 1)
  {
    return sub_1B4975024(v9, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  }

  return result;
}

uint64_t sub_1B4C11FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v9 = *(Descriptor - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  v13 = *(a5(0) + 24);
  sub_1B4975024(a2 + v13, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  sub_1B4C2FF48(v12, a2 + v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  return (*(v9 + 56))(a2 + v13, 0, 1, Descriptor);
}

uint64_t sub_1B4C12120(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  sub_1B4975024(v2 + v4, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  sub_1B4C2FF48(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v6 = *(*(Descriptor - 8) + 56);

  return v6(v2 + v4, 0, 1, Descriptor);
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryResult.queryDescriptor.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v5[2] = Descriptor;
  v10 = *(Descriptor - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  v16 = *(v11 + 48);
  if (v16(v8, 1, Descriptor) == 1)
  {
    sub_1B4D17BBC();
    v17 = *(Descriptor + 20);
    if (qword_1EB8A64A8 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_1EB8AC728;
    v18 = v16(v8, 1, Descriptor);

    if (v18 != 1)
    {
      sub_1B4975024(v8, &qword_1EB8AA6B8, &qword_1B4D2FC68);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  return sub_1B4C12434;
}

BOOL sub_1B4C12488(uint64_t (*a1)(void, double))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v12 - v6;
  v8 = a1(0, v5);
  sub_1B4974FBC(v1 + *(v8 + 24), v7, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v10 = (*(*(Descriptor - 8) + 48))(v7, 1, Descriptor) != 1;
  sub_1B4975024(v7, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  return v10;
}

uint64_t sub_1B4C125A4(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 24);
  sub_1B4975024(v1 + v2, &qword_1EB8AA6B8, &qword_1B4D2FC68);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v4 = *(*(Descriptor - 8) + 56);

  return v4(v1 + v2, 1, 1, Descriptor);
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.component.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA0, &unk_1B4D3CE00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4974FBC(v1 + *(v7 + 28), v6, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  }

  sub_1B4D17BBC();
  v10 = *(v8 + 20);
  if (qword_1EB8A64D8 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_1EB8AC7A8;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  }

  return result;
}

uint64_t sub_1B4C127E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA0, &unk_1B4D3CE00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4974FBC(a1 + *(v8 + 28), v7, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  }

  sub_1B4D17BBC();
  v11 = *(v9 + 20);
  if (qword_1EB8A64D8 != -1)
  {
    swift_once();
  }

  *(a2 + v11) = qword_1EB8AC7A8;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  }

  return result;
}

uint64_t sub_1B4C1298C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 28);
  sub_1B4975024(a2 + v9, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  sub_1B4C2FF48(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.component.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  sub_1B4C2FF48(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1B4C12BB0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B4D17BBC();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryResult.component.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA0, &unk_1B4D3CE00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8ACAA0, &unk_1B4D3CE00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = *(v9 + 20);
    if (qword_1EB8A64D8 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_1EB8AC7A8;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACAA0, &unk_1B4D3CE00);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent);
  }

  return sub_1B4C12E90;
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4974FBC(v1 + *(v7 + 32), v6, &qword_1EB8A6670, &unk_1B4D2FDA0);
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v9 = *(*(Metrics - 8) + 48);
  if (v9(v6, 1, Metrics) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v10 = a1 + *(Metrics + 28);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, Metrics);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6670, &unk_1B4D2FDA0);
  }

  return result;
}

uint64_t sub_1B4C130A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  sub_1B4974FBC(a1 + *(v8 + 32), v7, &qword_1EB8A6670, &unk_1B4D2FDA0);
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v10 = *(*(Metrics - 8) + 48);
  if (v10(v7, 1, Metrics) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v11 = a2 + *(Metrics + 28);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, Metrics);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6670, &unk_1B4D2FDA0);
  }

  return result;
}

uint64_t sub_1B4C13208(uint64_t a1, uint64_t a2)
{
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v5 = *(Metrics - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](Metrics);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 32);
  sub_1B4975024(a2 + v9, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4C2FF48(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  return (*(v5 + 56))(a2 + v9, 0, 1, Metrics);
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.metrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4C2FF48(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v5 = *(*(Metrics - 8) + 56);

  return v5(v1 + v3, 0, 1, Metrics);
}

void (*Apple_Fitness_Intelligence_FitnessContextQueryResult.metrics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v5[2] = Metrics;
  v10 = *(Metrics - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, Metrics) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    v17 = v14 + *(Metrics + 28);
    sub_1B4D17BBC();
    if (v16(v8, 1, Metrics) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  }

  return sub_1B4C1360C;
}

uint64_t sub_1B4C136D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4C13774(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_FitnessContextQueryResult.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  v3 = &a1[v2[5]];
  sub_1B4D17BBC();
  v4 = v2[6];
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  (*(*(Descriptor - 8) + 56))(&a1[v4], 1, 1, Descriptor);
  v6 = v2[7];
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = v2[8];
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v10 = *(*(Metrics - 8) + 56);

  return v10(&a1[v8], 1, 1, Metrics);
}

uint64_t sub_1B4C13A28@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1(0) + 20));
  result = swift_beginAccess();
  v6 = *(v4 + 24);
  *a2 = *(v4 + 16);
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1B4C13A8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(uint64_t))
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a5(0) + 20);
  v13 = *(a2 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = a6(0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v15 = a7(v15);
    *(a2 + v12) = v15;
  }

  result = swift_beginAccess();
  *(v15 + 16) = v10;
  *(v15 + 24) = v11;
  return result;
}

uint64_t sub_1B4C13B8C(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a2(0) + 20);
  v11 = *(v4 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v4 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = a3(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v13 = a4(v13);
    *(v7 + v10) = v13;
  }

  result = swift_beginAccess();
  *(v13 + 16) = v8;
  *(v13 + 24) = v9;
  return result;
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.type.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;
  return sub_1B4C13CF4;
}

void sub_1B4C13D20(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 84);
  v9 = *(*a1 + 88);
  v10 = *(*a1 + 80);
  v11 = *(v9 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v9 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v6 + 84);
    v15 = *(v6 + 88);
    v16 = a3(0);
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    v13 = a4(v13);
    *(v15 + v14) = v13;
  }

  swift_beginAccess();
  *(v13 + 16) = v7;
  *(v13 + 24) = v10;

  free(v6);
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.activitySharingContext.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v11 = a1 + *(v9 + 20);
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  }

  return result;
}

uint64_t sub_1B4C13F94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B4974FBC(v8 + v9, v7, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v12 = a2 + *(v10 + 20);
  sub_1B4D17BBC();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  }

  return result;
}

uint64_t sub_1B4C14120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4C29188(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.activitySharingContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C29188(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  return swift_endAccess();
}

uint64_t sub_1B4C14498@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1(0) + 20);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.activitySharingContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x1E69E7CC0];
    v19 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  }

  return sub_1B4C1473C;
}

void sub_1B4C1473C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    swift_endAccess();
    sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4C29188(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8ACAA8, &qword_1B4D3CE10);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasActivitySharingContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1B4975024(v4, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  return v8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearActivitySharingContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAA8, &qword_1B4D3CE10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySharingContext;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v14, &qword_1EB8ACAA8, &qword_1B4D3CE10);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.activitySummaryContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  }

  sub_1B4D17BBC();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  }

  return result;
}

uint64_t sub_1B4C14DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v8 + v9, v7, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  }

  sub_1B4D17BBC();
  v12 = *(v10 + 20);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  }

  return result;
}

uint64_t sub_1B4C14F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4C29188(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.activitySummaryContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C29188(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.activitySummaryContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACAB8, &qword_1B4D3CE18);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  }

  return sub_1B4C15588;
}

void sub_1B4C15588(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8ACAB8, &qword_1B4D3CE18);
    swift_endAccess();
    sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4C29188(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8ACAB8, &qword_1B4D3CE18);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasActivitySummaryContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1B4975024(v4, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  return v8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearActivitySummaryContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAB8, &qword_1B4D3CE18);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activitySummaryContext;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v14, &qword_1EB8ACAB8, &qword_1B4D3CE18);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.ringsProperties.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8A6678, &qword_1B4D3CE20);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  v11 = a1 + *(v9 + 28);
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6678, &qword_1B4D3CE20);
  }

  return result;
}

uint64_t sub_1B4C15BC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B4974FBC(v8 + v9, v7, &qword_1EB8A6678, &qword_1B4D3CE20);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x1E69E7CC0];
  v12 = a2 + *(v10 + 28);
  sub_1B4D17BBC();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6678, &qword_1B4D3CE20);
  }

  return result;
}

uint64_t sub_1B4C15D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4C29188(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8A6678, &qword_1B4D3CE20);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.ringsProperties.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C29188(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8A6678, &qword_1B4D3CE20);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.ringsProperties.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A6678, &qword_1B4D3CE20);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = MEMORY[0x1E69E7CC0];
    v19 = v14 + *(v9 + 28);
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6678, &qword_1B4D3CE20);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  }

  return sub_1B4C16318;
}

void sub_1B4C16318(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8A6678, &qword_1B4D3CE20);
    swift_endAccess();
    sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4C29188(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8A6678, &qword_1B4D3CE20);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasRingsProperties.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8A6678, &qword_1B4D3CE20);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1B4975024(v4, &qword_1EB8A6678, &qword_1B4D3CE20);
  return v8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearRingsProperties()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsProperties;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v14, &qword_1EB8A6678, &qword_1B4D3CE20);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.weeklySummaryContext.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  }

  v11 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v11;
  v12 = a1 + *(v9 + 24);
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  }

  return result;
}

uint64_t sub_1B4C16954@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v8 + v9, v7, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  }

  v12 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v12;
  v13 = a2 + *(v10 + 24);
  sub_1B4D17BBC();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  }

  return result;
}

uint64_t sub_1B4C16AE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4C29188(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.weeklySummaryContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C29188(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_WeeklySummaryContext.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0) + 24);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.weeklySummaryContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    v14[1] = v19;
    v20 = v14 + *(v9 + 24);
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACAD0, &qword_1B4D3CE28);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  }

  return sub_1B4C170DC;
}

void sub_1B4C170DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8ACAD0, &qword_1B4D3CE28);
    swift_endAccess();
    sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4C29188(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8ACAD0, &qword_1B4D3CE28);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasWeeklySummaryContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1B4975024(v4, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  return v8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearWeeklySummaryContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAD0, &qword_1B4D3CE28);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__weeklySummaryContext;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v14, &qword_1EB8ACAD0, &qword_1B4D3CE28);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.trainingLoadContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v10 = *(*(Context - 8) + 48);
  if (v10(v6, 1, Context) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  }

  sub_1B4D17BBC();
  v11 = *(Context + 20);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v10)(v6, 1, Context);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  }

  return result;
}

uint64_t sub_1B4C1774C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B4974FBC(v8 + v9, v7, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v11 = *(*(Context - 8) + 48);
  if (v11(v7, 1, Context) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  }

  sub_1B4D17BBC();
  v12 = *(Context + 20);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v11)(v7, 1, Context);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  }

  return result;
}

uint64_t sub_1B4C1790C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v9 = *(Context - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](Context);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4C29188(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  (*(v9 + 56))(v7, 0, 1, Context);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.trainingLoadContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C29188(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  (*(*(Context - 8) + 56))(v7, 0, 1, Context);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  return swift_endAccess();
}

uint64_t sub_1B4C17C98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_1B4D17BBC();
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.trainingLoadContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  *(v5 + 96) = Context;
  v10 = *(Context - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, Context) == 1)
  {
    sub_1B4D17BBC();
    v19 = *(Context + 20);
    v20 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, Context) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACAE0, &qword_1B4D3CE30);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  }

  return sub_1B4C17FBC;
}

void sub_1B4C17FBC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8ACAE0, &qword_1B4D3CE30);
    swift_endAccess();
    sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4C29188(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8ACAE0, &qword_1B4D3CE30);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasTrainingLoadContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  v8 = (*(*(Context - 8) + 48))(v4, 1, Context) != 1;
  sub_1B4975024(v4, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  return v8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearTrainingLoadContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAE0, &qword_1B4D3CE30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v1 + v6) = v9;
  }

  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  (*(*(Context - 8) + 56))(v5, 1, 1, Context);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__trainingLoadContext;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v14, &qword_1EB8ACAE0, &qword_1B4D3CE30);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.vitalsContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  }

  sub_1B4D17BBC();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  }

  return result;
}

uint64_t sub_1B4C1862C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B4974FBC(v8 + v9, v7, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  }

  sub_1B4D17BBC();
  v12 = *(v10 + 20);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  }

  return result;
}

uint64_t sub_1B4C187EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4C29188(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.vitalsContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C29188(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.vitalsContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACAF0, &qword_1B4D3CE38);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  }

  return sub_1B4C18E08;
}

void sub_1B4C18E08(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8ACAF0, &qword_1B4D3CE38);
    swift_endAccess();
    sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4C29188(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8ACAF0, &qword_1B4D3CE38);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasVitalsContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1B4975024(v4, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  return v8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearVitalsContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACAF0, &qword_1B4D3CE38);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__vitalsContext;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v14, &qword_1EB8ACAF0, &qword_1B4D3CE38);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.awardsContext.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  }

  v11 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v11;
  v12 = a1 + *(v9 + 28);
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACB00, &unk_1B4D3CE40);
  }

  return result;
}

uint64_t sub_1B4C19448@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B4974FBC(v8 + v9, v7, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  }

  v12 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v12;
  v13 = a2 + *(v10 + 28);
  sub_1B4D17BBC();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACB00, &unk_1B4D3CE40);
  }

  return result;
}

uint64_t sub_1B4C195D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4C29188(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8ACB00, &unk_1B4D3CE40);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.awardsContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C29188(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8ACB00, &unk_1B4D3CE40);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  a1[1] = 0;
  a1[2] = 0;
  v3 = a1 + *(v2 + 28);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.awardsContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    v14[1] = 0;
    v14[2] = 0;
    *v14 = v19;
    v20 = v14 + *(v9 + 28);
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACB00, &unk_1B4D3CE40);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  }

  return sub_1B4C19BDC;
}

void sub_1B4C19BDC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8ACB00, &unk_1B4D3CE40);
    swift_endAccess();
    sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4C29188(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8ACB00, &unk_1B4D3CE40);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasAwardsContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8ACB00, &unk_1B4D3CE40);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1B4975024(v4, &qword_1EB8ACB00, &unk_1B4D3CE40);
  return v8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearAwardsContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB00, &unk_1B4D3CE40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__awardsContext;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v14, &qword_1EB8ACB00, &unk_1B4D3CE40);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.workoutProperties.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  v11 = a1 + *(v9 + 28);
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6660, &unk_1B4D2FDB0);
  }

  return result;
}

uint64_t sub_1B4C1A21C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B4974FBC(v8 + v9, v7, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x1E69E7CC0];
  v12 = a2 + *(v10 + 28);
  sub_1B4D17BBC();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6660, &unk_1B4D2FDB0);
  }

  return result;
}

uint64_t sub_1B4C1A3AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4C29188(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8A6660, &unk_1B4D2FDB0);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.workoutProperties.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C29188(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8A6660, &unk_1B4D2FDB0);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.workoutProperties.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = MEMORY[0x1E69E7CC0];
    v19 = v14 + *(v9 + 28);
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6660, &unk_1B4D2FDB0);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  }

  return sub_1B4C1A96C;
}

void sub_1B4C1A96C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8A6660, &unk_1B4D2FDB0);
    swift_endAccess();
    sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4C29188(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8A6660, &unk_1B4D2FDB0);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasWorkoutProperties.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1B4975024(v4, &qword_1EB8A6660, &unk_1B4D2FDB0);
  return v8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearWorkoutProperties()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutProperties;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v14, &qword_1EB8A6660, &unk_1B4D2FDB0);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.workoutWeekContext.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v11 = a1 + *(v9 + 20);
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACB18, &qword_1B4D3CE50);
  }

  return result;
}

uint64_t sub_1B4C1AFA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B4974FBC(v8 + v9, v7, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v12 = a2 + *(v10 + 20);
  sub_1B4D17BBC();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ACB18, &qword_1B4D3CE50);
  }

  return result;
}

uint64_t sub_1B4C1B134(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4C29188(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8ACB18, &qword_1B4D3CE50);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.workoutWeekContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C29188(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8ACB18, &qword_1B4D3CE50);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.workoutWeekContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x1E69E7CC0];
    v19 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACB18, &qword_1B4D3CE50);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  }

  return sub_1B4C1B708;
}

void sub_1B4C1B708(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8ACB18, &qword_1B4D3CE50);
    swift_endAccess();
    sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4C29188(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8ACB18, &qword_1B4D3CE50);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasWorkoutWeekContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8ACB18, &qword_1B4D3CE50);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1B4975024(v4, &qword_1EB8ACB18, &qword_1B4D3CE50);
  return v8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearWorkoutWeekContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB18, &qword_1B4D3CE50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutWeekContext;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v14, &qword_1EB8ACB18, &qword_1B4D3CE50);
  swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.locationContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8ACB28, &unk_1B4D3CE58);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  }

  sub_1B4D17BBC();
  v11 = v9[5];
  v12 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = (a1 + v9[6]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v9[7]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v9[8]);
  *v15 = 0;
  v15[1] = 0;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ACB28, &unk_1B4D3CE58);
  }

  return result;
}

uint64_t sub_1B4C1BD9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4C29188(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8ACB28, &unk_1B4D3CE58);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_FitnessContextComponent.locationContext.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4C29188(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4C2FF48(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8ACB28, &unk_1B4D3CE58);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_LocationContext.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  v2 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v3 = v2[5];
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v6 = (a1 + v2[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v2[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v2[8]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

void (*Apple_Fitness_Intelligence_FitnessContextComponent.locationContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8ACB28, &unk_1B4D3CE58);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v19 = v9[5];
    v20 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = (v14 + v9[6]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v14 + v9[7]);
    *v22 = 0;
    v22[1] = 0;
    v23 = (v14 + v9[8]);
    *v23 = 0;
    v23[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ACB28, &unk_1B4D3CE58);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  }

  return sub_1B4C1C450;
}

void sub_1B4C1C450(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4C29188(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8ACB28, &unk_1B4D3CE58);
    swift_endAccess();
    sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4C29188(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4C2FF48(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8ACB28, &unk_1B4D3CE58);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_FitnessContextComponent.hasLocationContext.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20));
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B4974FBC(v5 + v6, v4, &qword_1EB8ACB28, &unk_1B4D3CE58);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_1B4975024(v4, &qword_1EB8ACB28, &unk_1B4D3CE58);
  return v8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessContextComponent.clearLocationContext()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ACB28, &unk_1B4D3CE58);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextComponent._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1B4C29188(v9);
    *(v1 + v6) = v9;
  }

  v13 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence50Apple_Fitness_Intelligence_FitnessContextComponentP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__locationContext;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v14, &qword_1EB8ACB28, &unk_1B4D3CE58);
  swift_endAccess();
}

unint64_t Apple_Fitness_Intelligence_FitnessContextComponent.ComponentType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xA;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B4C1C960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C41D48();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutActivityType.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0) + 28);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4C1CAD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1B4C3D764(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = v3;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.cacheIndex.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 16);
  return sub_1B4C1CC18;
}

void sub_1B4C1CC18(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1B4C3D764(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;

  free(v1);
}

uint64_t sub_1B4C1CCEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20));
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(v8 + v9, v7, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  }

  *a2 = 0;
  a2[1] = 0;
  v12 = a2 + *(v10 + 24);
  sub_1B4D17BBC();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8AB768, &unk_1B4D3CDE0);
  }

  return result;
}

uint64_t sub_1B4C1CE70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1B4C3D764(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1B4C2FF48(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v21, &qword_1EB8AB768, &unk_1B4D3CDE0);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_ActivitySummary.pausedInterval.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8AB768, &unk_1B4D3CDE0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v19 = v14 + *(v9 + 24);
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8AB768, &unk_1B4D3CDE0);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  }

  return sub_1B4C1D2BC;
}

void sub_1B4C1D2BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4C3DE94(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_1B4C3D764(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1B4C2FF48(v15, v19, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
    swift_beginAccess();
    sub_1B49A205C(v19, v7 + v20, &qword_1EB8AB768, &unk_1B4D3CDE0);
    swift_endAccess();
    sub_1B4C3DEFC(v14, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_1B4C3D764(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1B4C2FF48(v14, v19, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
    swift_beginAccess();
    sub_1B49A205C(v19, v24 + v33, &qword_1EB8AB768, &unk_1B4D3CDE0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_ActivitySummary.clearPausedInterval()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB768, &unk_1B4D3CDE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1B4C3D764(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__pausedInterval;
  swift_beginAccess();
  sub_1B49A205C(v5, v9 + v15, &qword_1EB8AB768, &unk_1B4D3CDE0);
  swift_endAccess();
}

void (*Apple_Fitness_Intelligence_ActivitySummary.moveGoal.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveGoal;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1D734;
}

uint64_t sub_1B4C1D74C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1B4C3D764(v11);

    *(a2 + v8) = v15;
    v11 = v15;
  }

  v16 = v11 + *a5;
  result = swift_beginAccess();
  *v16 = v7;
  *(v16 + 8) = 0;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.moveProgress.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveProgress;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1D8BC;
}

void sub_1B4C1D8C8(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 88);
    v12 = *(v4 + 80);
    v13 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_1B4C3D764(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = v10 + *a3;
  swift_beginAccess();
  *v17 = v5;
  *(v17 + 8) = 0;

  free(v4);
}

uint64_t sub_1B4C1D9B8(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1B4C3D764(v7);

    *(v3 + v4) = v11;
    v7 = v11;
  }

  v12 = v7 + *a1;
  result = swift_beginAccess();
  *v12 = 0;
  *(v12 + 8) = 1;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.moveMinutesGoal.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesGoal;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1DB34;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.moveMinutesProgress.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__moveMinutesProgress;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1DC14;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.exerciseGoal.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseGoal;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1DCE8;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.exerciseProgress.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__exerciseProgress;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1DDBC;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.standGoal.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standGoal;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1DE90;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.standProgress.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__standProgress;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1DF64;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.stepCount.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__stepCount;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1E038;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.flightCount.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__flightCount;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1E10C;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.distance.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__distance;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_1B4C1E1E0;
}

uint64_t sub_1B4C1E1F8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20)) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 4))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1B4C1E268(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1B4C3D764(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  v12 = v7 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  result = swift_beginAccess();
  *v12 = v3;
  *(v12 + 4) = 0;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.activityMoveMode.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_1B4C1E3D4;
}

void sub_1B4C1E3D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1B4C3D764(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  v14 = v7 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  swift_beginAccess();
  *v14 = v2;
  *(v14 + 4) = 0;

  free(v1);
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_ActivitySummary.clearActivityMoveMode()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_1B4C3D764(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = v5 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__activityMoveMode;
  swift_beginAccess();
  *v10 = 0;
  *(v10 + 4) = 1;
}

uint64_t sub_1B4C1E564(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1B4C3D764(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  result = swift_beginAccess();
  *(v7 + v12) = v3;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.isWheelchairUser.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_1B4C1E6BC;
}

void sub_1B4C1E6BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1B4C3D764(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  v14 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  *(v7 + v14) = v4;

  free(v1);
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_ActivitySummary.clearIsWheelchairUser()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_1B4C3D764(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  v10 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isWheelchairUser;
  swift_beginAccess();
  *(v5 + v10) = 2;
}

uint64_t sub_1B4C1E838(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1B4C3D764(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  result = swift_beginAccess();
  *(v7 + v12) = v3;
  return result;
}

void (*Apple_Fitness_Intelligence_ActivitySummary.isPaused.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1B4C1E98C;
}

void sub_1B4C1E98C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1B4C3D764(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  v14 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_ActivitySummaryP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__isPaused;
  swift_beginAccess();
  *(v7 + v14) = v4;

  free(v1);
}

uint64_t sub_1B4C1EB74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1B4C1EBD8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_ActivitySharingContext.Friend.displayName.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_ActivitySharingContext.Friend.clearDisplayName()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 44));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*Apple_Fitness_Intelligence_ActivitySharingContext.Friend.fullName.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 48);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

uint64_t (*Apple_Fitness_Intelligence_ActivitySharingContext.Friend.timeZoneIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 52);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.workouts.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.activitySummaries.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_1B4C1EFCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1B4C1F030(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_ActivitySharingContext.Friend.activeCompetitionUuid.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_ActivitySharingContext.Friend.clearActiveCompetitionUuid()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 56));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 40);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0) + 40);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Friend.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  v4 = a1 + v3[10];
  result = sub_1B4D17BBC();
  v6 = (a1 + v3[11]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v3[12]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v3[13]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a1 + v3[14]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t sub_1B4C1F330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  sub_1B4974FBC(a1 + *(v8 + 28), v7, &qword_1EB8A7CB8, &unk_1B4D20170);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  }

  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  v11 = a2 + *(v9 + 28);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7CB8, &unk_1B4D20170);
  }

  return result;
}

uint64_t sub_1B4C1F498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0) + 28);
  sub_1B4975024(a2 + v9, &qword_1EB8A7CB8, &unk_1B4D20170);
  sub_1B4C2FF48(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_ActivitySharingContext.Workout.workoutType.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7CB8, &unk_1B4D20170);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 4) = 0;
    *(v14 + 8) = 0;
    v17 = v14 + *(v9 + 28);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7CB8, &unk_1B4D20170);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
  }

  return sub_1B4C1F7E8;
}

BOOL sub_1B4C1F860(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  sub_1B4974FBC(v4 + *(v14 + 28), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_1B4975024(v13, a1, a2);
  return v16;
}

uint64_t sub_1B4C1F998(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_ActivitySharingContext.Workout.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = &a1[*(v2 + 24)];
  sub_1B4D17BBC();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1B4C1FB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C38, &qword_1B4D2B6E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  sub_1B4974FBC(a1 + *(v8 + 20), v7, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  }

  sub_1B4D17BBC();
  v11 = *(v9 + 20);
  if (qword_1EB8A64F8 != -1)
  {
    swift_once();
  }

  *(a2 + v11) = qword_1EB8AC7F8;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  }

  return result;
}

uint64_t sub_1B4C1FD34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0) + 20);
  sub_1B4975024(a2 + v9, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  sub_1B4C2FF48(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_ActivitySummaryContext.todayRing.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9C38, &qword_1B4D2B6E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A9C38, &qword_1B4D2B6E0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = *(v9 + 20);
    if (qword_1EB8A64F8 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_1EB8AC7F8;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A9C38, &qword_1B4D2B6E0);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
  }

  return sub_1B4C200C0;
}

uint64_t sub_1B4C20158@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  sub_1B4974FBC(a1 + *(Context + 20), v7, &qword_1EB8AA510, &unk_1B4D3CDD0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  }

  *a2 = 0;
  v11 = a2 + *(v9 + 20);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8AA510, &unk_1B4D3CDD0);
  }

  return result;
}

uint64_t sub_1B4C202B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0) + 20);
  sub_1B4975024(a2 + v9, &qword_1EB8AA510, &unk_1B4D3CDD0);
  sub_1B4C2FF48(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0) + 20);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_TrainingLoadContext.trainingLoadDay.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA510, &unk_1B4D3CDD0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8AA510, &unk_1B4D3CDD0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v17 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8AA510, &unk_1B4D3CDD0);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
  }

  return sub_1B4C20638;
}

BOOL sub_1B4C206B0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  sub_1B4974FBC(v4 + *(v14 + 20), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_1B4975024(v13, a1, a2);
  return v16;
}

uint64_t sub_1B4C207E8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_VitalsContext.vitalsDay.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  sub_1B4974FBC(v1 + *(v7 + 20), v6, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v10 = a1 + *(v8 + 36);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  }

  return result;
}

uint64_t sub_1B4C20AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  sub_1B4974FBC(a1 + *(v8 + 20), v7, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v11 = a2 + *(v9 + 36);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  }

  return result;
}

uint64_t sub_1B4C20C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0) + 20);
  sub_1B4975024(a2 + v9, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  sub_1B4C2FF48(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_VitalsContext.vitalsDay.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  sub_1B4C2FF48(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_VitalsContext.VitalsDay.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a1 + *(v2 + 36);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_VitalsContext.vitalsDay.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8AA6C8, &unk_1B4D2FC70);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    v17 = v14 + *(v9 + 36);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8AA6C8, &unk_1B4D2FC70);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
  }

  return sub_1B4C21050;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.earnedAchievements.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1B4C21330@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4C213CC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t Apple_Fitness_Intelligence_AwardsContext.Section.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Section.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B4C214F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4C3E124();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.DateComponents.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0) + 28);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.templateUniqueName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.templateUniqueName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B4C2170C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  sub_1B4974FBC(a1 + *(v8 + 32), v7, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v11 = a2 + *(v9 + 28);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  }

  return result;
}

uint64_t sub_1B4C21870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 32);
  sub_1B4975024(a2 + v9, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  sub_1B4C2FF48(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_AwardsContext.Award.earnedDateComponents.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFE8, &unk_1B4D3CDF0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    v17 = v14 + *(v9 + 28);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ABFE8, &unk_1B4D3CDF0);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents);
  }

  return sub_1B4C21BBC;
}

BOOL sub_1B4C21C34(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  sub_1B4974FBC(v4 + *(v14 + 32), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_1B4975024(v13, a1, a2);
  return v16;
}

uint64_t sub_1B4C21D6C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

void Apple_Fitness_Intelligence_AwardsContext.Award.section.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.section.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AwardsContext.Award.valueDouble.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_1B4A608B8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_AwardsContext.Award.clearValueDouble()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*Apple_Fitness_Intelligence_AwardsContext.Award.valueUnitString.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

uint64_t (*Apple_Fitness_Intelligence_AwardsContext.Award.goalDouble.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 44);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_1B4A3E3D4;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_AwardsContext.Award.clearGoalDouble()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_1B4C22090@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 48));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_1B4C220F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 48));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AwardsContext.Award.goalUnitString.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 48);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A3E8AC;
}

uint64_t sub_1B4C22218(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 48));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1B4C22258@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 52));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_1B4C222C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 52));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AwardsContext.Award.externalIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0) + 52);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

uint64_t sub_1B4C223E0(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 52));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AwardsContext.Award.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 0;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  v3 = a1 + v2[7];
  sub_1B4D17BBC();
  v4 = v2[8];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.DateComponents(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v7 = a1 + v2[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (a1 + v2[10]);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1 + v2[11];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = (a1 + v2[12]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v2[13]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.locationType.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.locationType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1B4C226A0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 40));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;
}

uint64_t sub_1B4C22708(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *(a5(0) + 40));
  v8 = v7[1];

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutRecord.catalogWorkoutIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

uint64_t sub_1B4C22828(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 40));
  v3 = v2[1];

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1B4C22868@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  sub_1B4974FBC(a1 + *(v8 + 44), v7, &qword_1EB8A6A28, &qword_1B4D20160);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = 0;
  a2[4] = 0xE000000000000000;
  v11 = a2 + *(v9 + 28);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6A28, &qword_1B4D20160);
  }

  return result;
}

uint64_t sub_1B4C229DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 44);
  sub_1B4975024(a2 + v9, &qword_1EB8A6A28, &qword_1B4D20160);
  sub_1B4C2FF48(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WorkoutRecord.fitnessPlusCatalogWorkout.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A28, &qword_1B4D20160) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 44);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6A28, &qword_1B4D20160);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = MEMORY[0x1E69E7CC0];
    v14[3] = 0;
    v14[4] = 0xE000000000000000;
    v17 = v14 + *(v9 + 28);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6A28, &qword_1B4D20160);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);
  }

  return sub_1B4C22D38;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutRecord.clearFitnessPlusCatalogWorkout()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0) + 44);
  sub_1B4975024(v0 + v1, &qword_1EB8A6A28, &qword_1B4D20160);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1B4C22E18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4C22EB4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutRecord.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  v3 = a1 + v2[9];
  sub_1B4D17BBC();
  v4 = (a1 + v2[10]);
  *v4 = 0;
  v4[1] = 0;
  v5 = v2[11];
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t Apple_Fitness_Intelligence_WeeklySummaryContext.previousWeekSummaries.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B4C23148@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4C231E4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_LocationCoordinate.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0) + 32);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_LocationCoordinate.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0) + 32);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_LocationContext.location.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4974FBC(v1 + *(v7 + 20), v6, &qword_1EB8ABC28, &qword_1B4D38428);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4C2FF48(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  *a1 = 0u;
  a1[1] = 0u;
  v10 = a1 + *(v8 + 32);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8ABC28, &qword_1B4D38428);
  }

  return result;
}

uint64_t sub_1B4C235DC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  sub_1B4974FBC(a1 + *(v8 + 20), v7, &qword_1EB8ABC28, &qword_1B4D38428);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4C2FF48(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  *a2 = 0u;
  a2[1] = 0u;
  v11 = a2 + *(v9 + 32);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8ABC28, &qword_1B4D38428);
  }

  return result;
}

uint64_t sub_1B4C23740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4C3DE94(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 20);
  sub_1B4975024(a2 + v9, &qword_1EB8ABC28, &qword_1B4D38428);
  sub_1B4C2FF48(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_LocationContext.location.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8ABC28, &qword_1B4D38428);
  sub_1B4C2FF48(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_LocationContext.location.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8ABC28, &qword_1B4D38428);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    v17 = v14 + *(v9 + 32);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8ABC28, &qword_1B4D38428);
    }
  }

  else
  {
    sub_1B4C2FF48(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  }

  return sub_1B4C23B44;
}

void sub_1B4C23B80(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_1B4C3DE94(v12, v11, a6);
    sub_1B4975024(v15 + v10, a3, a4);
    sub_1B4C2FF48(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_1B4C3DEFC(v12, a6);
  }

  else
  {
    sub_1B4975024(v15 + v10, a3, a4);
    sub_1B4C2FF48(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

uint64_t Apple_Fitness_Intelligence_LocationContext.country.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1B4C23D88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1B4C23DEC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_LocationContext.country.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_LocationContext.country.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_LocationContext.clearCountry()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_LocationContext.name.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1B4C23FF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 28));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1B4C24058(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 28));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_LocationContext.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_LocationContext.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_LocationContext.clearName()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 28));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_LocationContext.locality.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1B4C24260@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 32));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1B4C242C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_LocationContext.locality.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_LocationContext.locality.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_LocationContext.clearLocality()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_1B4C244B4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AC710);
  __swift_project_value_buffer(v0, qword_1EB8AC710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D223F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "workoutPropertiesQuery";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ringsPropertiesQuery";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "currentDate";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "dateIntervalStart";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "dateIntervalEnd";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "location";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4C247E0()
{
  v0 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = v3 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v3 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v3 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  result = (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  qword_1EB8AC728 = v3;
  return result;
}

uint64_t sub_1B4C24944(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v39 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = &v37 - v11;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  v38 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  v40 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  v20 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  swift_beginAccess();
  v21 = *(a1 + 16);
  LOBYTE(v19) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v21;
  *(v1 + 24) = v19;
  v22 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  v23 = v37;
  sub_1B4974FBC(a1 + v22, v37, &qword_1EB8A6668, &qword_1B4D1A658);
  swift_beginAccess();
  sub_1B49A205C(v23, v1 + v12, &qword_1EB8A6668, &qword_1B4D1A658);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  v25 = v39;
  sub_1B4974FBC(a1 + v24, v39, &qword_1EB8A6680, &unk_1B4D2FD90);
  v26 = v38;
  swift_beginAccess();
  sub_1B49A205C(v25, v1 + v26, &qword_1EB8A6680, &unk_1B4D2FD90);
  swift_endAccess();
  v27 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate);
  swift_beginAccess();
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  swift_beginAccess();
  *v16 = v28;
  *(v16 + 8) = v27;
  v29 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart);
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  swift_beginAccess();
  *v17 = v30;
  *(v17 + 8) = v29;
  v31 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd);
  swift_beginAccess();
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  swift_beginAccess();
  *v18 = v32;
  *(v18 + 8) = v31;
  v33 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  v34 = v41;
  sub_1B4974FBC(a1 + v33, v41, &qword_1EB8ABC28, &qword_1B4D38428);

  v35 = v40;
  swift_beginAccess();
  sub_1B49A205C(v34, v1 + v35, &qword_1EB8ABC28, &qword_1B4D38428);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B4C24E20()
{
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery, &qword_1EB8A6668, &qword_1B4D1A658);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery, &qword_1EB8A6680, &unk_1B4D2FD90);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location, &qword_1EB8ABC28, &qword_1B4D38428);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B4C24F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_1B4C2A1C0(a2, a1, a3, a4, sub_1B4C41D9C);
            break;
          case 2:
            sub_1B4C250E4();
            break;
          case 3:
            sub_1B4C251C0();
            break;
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result == 4)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
          }

          goto LABEL_5;
        }

        if (result == 6)
        {
          v11 = a2;
          v12 = a1;
          v13 = a3;
          v14 = a4;
          v15 = &OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
LABEL_5:
          sub_1B4C306A0(v11, v12, v13, v14, v15);
          goto LABEL_6;
        }

        if (result == 7)
        {
          sub_1B4C2529C();
        }
      }

LABEL_6:
      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4C250E4()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  sub_1B4C3E0DC(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C251C0()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  sub_1B4C3E0DC(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C2529C()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  sub_1B4C3E0DC(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4C253B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (v10 = *(a1 + 16), v11 = *(a1 + 24), sub_1B4C41D9C(), result = sub_1B4D17DDC(), !v4))
  {
    result = sub_1B4C2550C(a1, a2, a3, a4);
    if (!v4)
    {
      sub_1B4C25734(a1, a2, a3, a4);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart);
      sub_1B4C30D58(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd);
      return sub_1B4C2595C(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1B4C2550C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8A6668, &qword_1B4D1A658);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6668, &qword_1B4D1A658);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4C3E0DC(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
}

uint64_t sub_1B4C25734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8A6680, &unk_1B4D2FD90);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6680, &unk_1B4D2FD90);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4C3E0DC(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
}

uint64_t sub_1B4C2595C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8ABC28, &qword_1B4D38428);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8ABC28, &qword_1B4D38428);
  }

  sub_1B4C2FF48(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  sub_1B4C3E0DC(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
  sub_1B4D17E6C();
  return sub_1B4C3DEFC(v13, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
}

BOOL sub_1B4C25BC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v104 = *(v4 - 8);
  v5 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v99 = (&v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD0A8, &qword_1B4D3F8F8);
  v7 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v9 = &v96 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v100 = (&v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v111 = &v96 - v14;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v108 = *(v15 - 8);
  v109 = v15;
  v16 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v102 = (&v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF10, &unk_1B4D3F9A0);
  v18 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v96 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v105 = (&v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v113 = &v96 - v24;
  v114 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v25 = *(v114 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v106 = (&v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF20, &qword_1B4D32548);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v96 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v112 = (&v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v96 - v36;
  swift_beginAccess();
  v38 = *(a1 + 16);
  swift_beginAccess();
  v39 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v39 > 4)
    {
      if (v39 <= 6)
      {
        if (v39 == 5)
        {
          if (v38 != 5)
          {
            return 0;
          }
        }

        else if (v38 != 6)
        {
          return 0;
        }
      }

      else if (v39 == 7)
      {
        if (v38 != 7)
        {
          return 0;
        }
      }

      else if (v39 == 8)
      {
        if (v38 != 8)
        {
          return 0;
        }
      }

      else if (v38 != 9)
      {
        return 0;
      }
    }

    else if (v39 <= 1)
    {
      if (v39)
      {
        if (v38 != 1)
        {
          return 0;
        }
      }

      else if (v38)
      {
        return 0;
      }
    }

    else if (v39 == 2)
    {
      if (v38 != 2)
      {
        return 0;
      }
    }

    else if (v39 == 3)
    {
      if (v38 != 3)
      {
        return 0;
      }
    }

    else if (v38 != 4)
    {
      return 0;
    }
  }

  else if (v38 != v39)
  {
    return 0;
  }

  v97 = v4;
  v98 = v9;
  v103 = a2;
  v40 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  swift_beginAccess();
  v41 = a1;
  sub_1B4974FBC(a1 + v40, v37, &qword_1EB8A6668, &qword_1B4D1A658);
  v42 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
  v43 = v103;
  swift_beginAccess();
  v44 = *(v28 + 48);
  sub_1B4974FBC(v37, v31, &qword_1EB8A6668, &qword_1B4D1A658);
  sub_1B4974FBC(v43 + v42, &v31[v44], &qword_1EB8A6668, &qword_1B4D1A658);
  v45 = *(v25 + 48);
  v46 = v114;
  if (v45(v31, 1, v114) == 1)
  {

    sub_1B4975024(v37, &qword_1EB8A6668, &qword_1B4D1A658);
    if (v45(&v31[v44], 1, v46) == 1)
    {
      sub_1B4975024(v31, &qword_1EB8A6668, &qword_1B4D1A658);
      v47 = a1;
      v48 = v43;
      goto LABEL_21;
    }

LABEL_19:
    v50 = &qword_1EB8AAF20;
    v51 = &qword_1B4D32548;
    v52 = v31;
LABEL_33:
    sub_1B4975024(v52, v50, v51);
    goto LABEL_34;
  }

  v49 = v112;
  sub_1B4974FBC(v31, v112, &qword_1EB8A6668, &qword_1B4D1A658);
  if (v45(&v31[v44], 1, v46) == 1)
  {

    sub_1B4975024(v37, &qword_1EB8A6668, &qword_1B4D1A658);
    sub_1B4C3DEFC(v49, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    goto LABEL_19;
  }

  v53 = v106;
  sub_1B4C2FF48(&v31[v44], v106, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  v47 = v41;

  v54 = static Apple_Fitness_Intelligence_WorkoutPropertiesQuery.== infix(_:_:)(v49, v53);
  sub_1B4C3DEFC(v53, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  v55 = v49;
  v48 = v43;
  sub_1B4975024(v37, &qword_1EB8A6668, &qword_1B4D1A658);
  sub_1B4C3DEFC(v55, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  sub_1B4975024(v31, &qword_1EB8A6668, &qword_1B4D1A658);
  if ((v54 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_21:
  v56 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  v57 = v47;
  v58 = v113;
  sub_1B4974FBC(v47 + v56, v113, &qword_1EB8A6680, &unk_1B4D2FD90);
  v59 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
  swift_beginAccess();
  v60 = *(v107 + 48);
  v61 = v110;
  sub_1B4974FBC(v58, v110, &qword_1EB8A6680, &unk_1B4D2FD90);
  sub_1B4974FBC(v48 + v59, v61 + v60, &qword_1EB8A6680, &unk_1B4D2FD90);
  v62 = v109;
  v63 = *(v108 + 48);
  v64 = v48;
  if (v63(v61, 1, v109) == 1)
  {
    sub_1B4975024(v58, &qword_1EB8A6680, &unk_1B4D2FD90);
    v65 = v63(v61 + v60, 1, v62);
    v66 = v57;
    v67 = v111;
    if (v65 == 1)
    {
      sub_1B4975024(v61, &qword_1EB8A6680, &unk_1B4D2FD90);
      goto LABEL_50;
    }

    goto LABEL_32;
  }

  v68 = v105;
  sub_1B4974FBC(v61, v105, &qword_1EB8A6680, &unk_1B4D2FD90);
  v69 = v63(v61 + v60, 1, v62);
  v67 = v111;
  if (v69 == 1)
  {
    sub_1B4975024(v113, &qword_1EB8A6680, &unk_1B4D2FD90);
    sub_1B4C3DEFC(v68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
LABEL_32:
    v50 = &qword_1EB8AAF10;
    v51 = &unk_1B4D3F9A0;
    v52 = v61;
    goto LABEL_33;
  }

  v71 = v61 + v60;
  v72 = v102;
  sub_1B4C2FF48(v71, v102, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  v73 = static Apple_Fitness_Intelligence_RingsPropertiesQuery.== infix(_:_:)(v68, v72);
  sub_1B4C3DEFC(v72, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  sub_1B4975024(v113, &qword_1EB8A6680, &unk_1B4D2FD90);
  sub_1B4C3DEFC(v68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  v64 = v103;
  sub_1B4975024(v61, &qword_1EB8A6680, &unk_1B4D2FD90);
  v66 = v57;
  if ((v73 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_50:
  v74 = v66 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
  swift_beginAccess();
  v75 = *v74;
  LOBYTE(v74) = *(v74 + 8);
  v76 = v64 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
  swift_beginAccess();
  v77 = *(v76 + 8);
  if (v74)
  {
    v78 = v104;
    if ((*(v76 + 8) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v78 = v104;
    if ((*(v76 + 8) & 1) != 0 || v75 != *v76)
    {
      goto LABEL_34;
    }
  }

  v79 = v66 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
  swift_beginAccess();
  v80 = *v79;
  LOBYTE(v79) = *(v79 + 8);
  v81 = v64 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
  swift_beginAccess();
  v82 = *(v81 + 8);
  if (v79)
  {
    if ((*(v81 + 8) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((*(v81 + 8) & 1) != 0 || v80 != *v81)
  {
    goto LABEL_34;
  }

  v83 = v66 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
  swift_beginAccess();
  v84 = *v83;
  LOBYTE(v83) = *(v83 + 8);
  v85 = v64 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
  swift_beginAccess();
  v86 = *(v85 + 8);
  if (v83)
  {
    if (*(v85 + 8))
    {
      goto LABEL_65;
    }

LABEL_34:

    return 0;
  }

  if ((*(v85 + 8) & 1) != 0 || v84 != *v85)
  {
    goto LABEL_34;
  }

LABEL_65:
  v87 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  sub_1B4974FBC(v66 + v87, v67, &qword_1EB8ABC28, &qword_1B4D38428);
  v88 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
  swift_beginAccess();
  v89 = *(v101 + 48);
  v90 = v98;
  sub_1B4974FBC(v67, v98, &qword_1EB8ABC28, &qword_1B4D38428);
  sub_1B4974FBC(v103 + v88, v90 + v89, &qword_1EB8ABC28, &qword_1B4D38428);
  v91 = *(v78 + 48);
  v92 = v97;
  if (v91(v90, 1, v97) != 1)
  {
    v93 = v100;
    sub_1B4974FBC(v90, v100, &qword_1EB8ABC28, &qword_1B4D38428);
    if (v91(v90 + v89, 1, v92) == 1)
    {

      sub_1B4975024(v67, &qword_1EB8ABC28, &qword_1B4D38428);
      sub_1B4C3DEFC(v93, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
      goto LABEL_70;
    }

    v94 = v99;
    sub_1B4C2FF48(v90 + v89, v99, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    v95 = _s19FitnessIntelligence06Apple_a1_B19_LocationCoordinateV2eeoiySbAC_ACtFZ_0(v93, v94);

    sub_1B4C3DEFC(v94, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    sub_1B4975024(v67, &qword_1EB8ABC28, &qword_1B4D38428);
    sub_1B4C3DEFC(v93, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    sub_1B4975024(v90, &qword_1EB8ABC28, &qword_1B4D38428);
    return (v95 & 1) != 0;
  }

  sub_1B4975024(v67, &qword_1EB8ABC28, &qword_1B4D38428);
  if (v91(v90 + v89, 1, v92) != 1)
  {
LABEL_70:
    sub_1B4975024(v90, &qword_1EB8AD0A8, &qword_1B4D3F8F8);
    return 0;
  }

  sub_1B4975024(v90, &qword_1EB8ABC28, &qword_1B4D38428);
  return 1;
}