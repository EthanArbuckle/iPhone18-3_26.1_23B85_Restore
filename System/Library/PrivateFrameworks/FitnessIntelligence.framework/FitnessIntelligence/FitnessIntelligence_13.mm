uint64_t sub_1B4A7C874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.totalCount.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.totalCount.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v12 = 0;
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4A7CC6C;
  }

  if (swift_getEnumCaseMultiPayload() != 14)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4A7CC6C;
}

void sub_1B4A7CC6C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.countByWeatherConditionProperty.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0) + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7CF68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0) + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7D0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.countByWeatherConditionProperty.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.countByWeatherConditionProperty.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = 0;
    v15 = v12 + *(v9 + 24);
    sub_1B4D17BBC();
    return sub_1B4A7D4E0;
  }

  if (swift_getEnumCaseMultiPayload() != 15)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  return sub_1B4A7D4E0;
}

void sub_1B4A7D4E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.countByRoundedDistanceProperty.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0) + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7D7DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0) + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7D954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.countByRoundedDistanceProperty.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.countByRoundedDistanceProperty.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = 0;
    v15 = v12 + *(v9 + 24);
    sub_1B4D17BBC();
    return sub_1B4A7DD54;
  }

  if (swift_getEnumCaseMultiPayload() != 16)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  return sub_1B4A7DD54;
}

void sub_1B4A7DD54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.weeklyCountStatistics.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  sub_1B4974FBC(v2, &v15 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v12 = &a1[*(v11 + 24)];
  sub_1B4D17BBC();
  v13 = *(v11 + 28);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  return (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
}

uint64_t sub_1B4A7E098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.weeklyCountStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.weeklyCountStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A7CC8, &qword_1B4D20180);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v16 = MEMORY[0x1E69E7CC0];
    *v13 = 0;
    *(v13 + 1) = v16;
    v17 = &v13[*(v10 + 24)];
    sub_1B4D17BBC();
    v18 = *(v10 + 28);
    v19 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
    (*(*(v19 - 8) + 56))(&v13[v18], 1, 1, v19);
    return sub_1B4A7E4E0;
  }

  if (swift_getEnumCaseMultiPayload() != 17)
  {
    sub_1B4A6FA60(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  return sub_1B4A7E4E0;
}

void sub_1B4A7E4E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A191CC(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0) + 24);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A7E7BC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8FD0);
  __swift_project_value_buffer(v0, qword_1EB8A8FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startCacheIndex";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endCacheIndex";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "records";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperties.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
        sub_1B4A97E08(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);
        sub_1B4D17D3C();
      }

      else if (result == 2 || result == 1)
      {
        sub_1B4D17CCC();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperties.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E0C(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17E0C(), !v1))
    {
      if (!*(v0[2] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0), sub_1B4A97E08(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord), result = sub_1B4D17E5C(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0) + 28);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4A7EC70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 28);
  return sub_1B4D17BBC();
}

uint64_t (*sub_1B4A7ECBC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1B4A7ED10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9380, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A7EDB0(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A7EE1C()
{
  sub_1B4A97E08(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v6 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 32);
LABEL_16:
          v0 = 0;
          sub_1B4D17CBC();
          break;
        case 5:
          v8 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36);
LABEL_3:
          v0 = 0;
          sub_1B4D17D0C();
          break;
        case 6:
          v5 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40);
          goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24);
          goto LABEL_3;
        case 3:
          v4 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 28);
          goto LABEL_16;
      }
    }
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.traverse<A>(visitor:)()
{
  result = sub_1B4A7F0F0(v0);
  if (!v1)
  {
    sub_1B4A7F168(v0);
    sub_1B4A7F1E0(v0);
    sub_1B4A7F258(v0);
    sub_1B4A7F2D0(v0);
    sub_1B4A7F348(v0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A7F0F0(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A7F168(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A7F1E0(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1B4D17E0C();
  }

  return result;
}

uint64_t sub_1B4A7F258(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1B4D17E0C();
  }

  return result;
}

uint64_t sub_1B4A7F2D0(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A7F348(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A7F40C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4D17BBC();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t sub_1B4A7F4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9378, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A7F568(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3B440, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A7F5D4()
{
  sub_1B4A97E08(qword_1EDC3B440, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A7F67C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B4D223E0;
  v7 = v21 + v6 + v4[14];
  *(v21 + v6) = 1;
  *v7 = "monthOfYear";
  *(v7 + 8) = 11;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1B4D17E7C();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v21 + v6 + v5 + v4[14];
  *(v21 + v6 + v5) = 2;
  *v11 = "dayOfWeek";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v10();
  v12 = (v21 + v6 + 2 * v5);
  v13 = v12 + v4[14];
  *v12 = 3;
  *v13 = "hourOfDay";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v10();
  v14 = (v21 + v6 + 3 * v5);
  v15 = v14 + v4[14];
  *v14 = 4;
  *v15 = "activityType";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v10();
  v16 = (v21 + v6 + 4 * v5);
  v17 = v16 + v4[14];
  *v16 = 5;
  *v17 = "locationType";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v10();
  v18 = (v21 + v6 + 5 * v5);
  v19 = v18 + v4[14];
  *v18 = 6;
  *v19 = "sourceIdentifier";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v10();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4)
      {
        goto LABEL_14;
      }

      if (result == 5 || result == 6)
      {
LABEL_2:
        sub_1B4D17CDC();
      }
    }

    else
    {
      if (result == 1 || result == 2)
      {
        goto LABEL_2;
      }

      if (result == 3)
      {
LABEL_14:
        sub_1B4D17C7C();
      }
    }
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_1B4D17E1C(), !v1))
  {
    if (!*(v0[1] + 16) || (result = sub_1B4D17E1C(), !v1))
    {
      if (!*(v0[2] + 16) || (result = sub_1B4D17DBC(), !v1))
      {
        if (!*(v0[3] + 16) || (result = sub_1B4D17DBC(), !v1))
        {
          if (!*(v0[4] + 16) || (result = sub_1B4D17E1C(), !v1))
          {
            if (!*(v0[5] + 16) || (result = sub_1B4D17E1C(), !v1))
            {
              v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0) + 40);
              return sub_1B4D17BAC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4A7FBBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  a2[2] = v2;
  a2[3] = v2;
  a2[4] = v2;
  a2[5] = v2;
  v3 = a2 + *(a1 + 40);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7FC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A7FC80(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1B4A7FCF4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_1B4A7FD48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9370, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A7FDE8(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3A500, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A7FE54()
{
  sub_1B4A97E08(qword_1EDC3A500, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A7FEF0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9018);
  __swift_project_value_buffer(v0, qword_1EB8A9018);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "startCacheIndex";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endCacheIndex";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dimensions";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "property";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1B4A80228();
      }

      else if (result == 4)
      {
        sub_1B4A802DC();
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_1B4D17CCC();
    }
  }

  return result;
}

uint64_t sub_1B4A80228()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 28);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  sub_1B4A97E08(qword_1EDC3B440, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A802DC()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 32);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  sub_1B4A97E08(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      result = sub_1B4A80464(v3, a1, a2, a3);
      if (!v4)
      {
        sub_1B4A80680(v3, a1, a2, a3);
        v9 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 24);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4A80464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v14 + 28), v8, &qword_1EB8A7CE8, &qword_1B4D201A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7CE8, &qword_1B4D201A0);
  }

  sub_1B4A6F890(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  sub_1B4A97E08(qword_1EDC3B440, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
}

uint64_t sub_1B4A80680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v14 + 32), v8, &qword_1EB8A7CD8, &unk_1B4D20190);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7CD8, &unk_1B4D20190);
  }

  sub_1B4A6F890(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  sub_1B4A97E08(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
}

uint64_t sub_1B4A808E8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = &a2[a1[6]];
  sub_1B4D17BBC();
  v5 = a1[7];
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_1B4A80A04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9368, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A80AA4(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A80B10()
{
  sub_1B4A97E08(qword_1EDC3BC68, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A80BAC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9030);
  __swift_project_value_buffer(v0, qword_1EB8A9030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "currentCount";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currentEntries";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "milestones";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
        sub_1B4A97E08(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
LABEL_12:
        sub_1B4D17D3C();
        goto LABEL_4;
      }

      if (result == 1)
      {
        sub_1B4D17CCC();
      }

LABEL_4:
      result = sub_1B4D17C2C();
    }

    type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
    sub_1B4A97E08(&qword_1EB8A7190, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);
    goto LABEL_12;
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E0C(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0), sub_1B4A97E08(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry), result = sub_1B4D17E5C(), !v1))
    {
      if (!*(v0[2] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0), sub_1B4A97E08(&qword_1EB8A7190, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair), result = sub_1B4D17E5C(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue(0) + 28);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4A81114@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  a2[1] = v2;
  a2[2] = v2;
  v3 = a2 + *(a1 + 28);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A81160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A811D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4A81278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9360, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A81318(uint64_t a1)
{
  v2 = sub_1B4A97E08(&qword_1EB8A7168, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A81384()
{
  sub_1B4A97E08(&qword_1EB8A7168, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A8144C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9058);
  __swift_project_value_buffer(v0, qword_1EB8A9058);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cacheIndex";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "workoutIdentifier";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "localizedDate";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B4A85BB8(a1, v5, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
        break;
      case 2:
        sub_1B4D17D1C();
        break;
      case 1:
        sub_1B4D17CCC();
        break;
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    v9 = v3[2];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 || (result = sub_1B4D17E3C(), !v4))
    {
      result = sub_1B4A862B0(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, 3);
      if (!v4)
      {
        v11 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0) + 24);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4A81878@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0xE000000000000000;
  v4 = &a2[*(a1 + 24)];
  sub_1B4D17BBC();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1B4A8195C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9358, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A819FC(uint64_t a1)
{
  v2 = sub_1B4A97E08(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A81A68()
{
  sub_1B4A97E08(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A81B08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B8C7C620](a2, a3);
  *a4 = 0xD000000000000038;
  *a5 = 0x80000001B4D606C0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17CCC();
    }

    else if (result == 2)
    {
      sub_1B4A81C70();
    }
  }

  return result;
}

uint64_t sub_1B4A81C70()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0) + 24);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  sub_1B4A97E08(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    result = sub_1B4A81DC0(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0) + 20);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A81DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v14 + 24), v8, &qword_1EB8A7148, &unk_1B4D25C40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7148, &unk_1B4D25C40);
  }

  sub_1B4A6F890(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  sub_1B4A97E08(&qword_1EB8A7170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
}

uint64_t sub_1B4A82028@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  sub_1B4D17BBC();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1B4A82104(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9350, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A821A4(uint64_t a1)
{
  v2 = sub_1B4A97E08(&qword_1EB8A7190, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A82210()
{
  sub_1B4A97E08(&qword_1EB8A7190, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
        sub_1B4A97E08(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);
        sub_1B4D17D3C();
      }

      else if (result == 2)
      {
        sub_1B4D17CCC();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0), sub_1B4A97E08(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair), result = sub_1B4D17E5C(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17E0C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A82538@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  v2 = a2 + *(a1 + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A825B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9348, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A82650(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A826BC()
{
  sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A82738(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B4A191CC(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A82834()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A90C0);
  __swift_project_value_buffer(v0, qword_1EB8A90C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1CBF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dayOfWeek";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hourOfDay";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "weatherCondition";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "distance";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "roundedDistance";
  *(v15 + 8) = 15;
  *(v15 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v16 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1B4A82C3C();
      }

      else if (result == 2)
      {
        v9 = MEMORY[0x1E69AACA0];
        v10 = a1;
        v11 = v5;
        v12 = a2;
        v13 = a3;
        v14 = 1;
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v9 = MEMORY[0x1E69AACA0];
          v10 = a1;
          v11 = v5;
          v12 = a2;
          v13 = a3;
          v14 = 2;
          goto LABEL_3;
        case 4:
          v9 = MEMORY[0x1E69AACC8];
          v10 = a1;
          v11 = v5;
          v12 = a2;
          v13 = a3;
          v14 = 3;
LABEL_3:
          sub_1B4A82D04(v10, v11, v12, v13, v9, v14);
          break;
        case 5:
          v9 = MEMORY[0x1E69AACC8];
          v10 = a1;
          v11 = v5;
          v12 = a2;
          v13 = a3;
          v14 = 4;
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_1B4A82C3C()
{
  result = sub_1B4D17D0C();
  if (v0)
  {
  }

  return result;
}

uint64_t sub_1B4A82D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t, uint64_t), char a6)
{
  v14 = 0;
  v15 = 1;
  result = a5(&v14, a3, a4);
  if (!v6 && (v15 & 1) == 0)
  {
    v10 = v14;
    if (*(a2 + 16) == 255)
    {
      v11 = -1;
    }

    else
    {
      sub_1B4D17C3C();
      v11 = *(a2 + 16);
    }

    v12 = *a2;
    v13 = *(a2 + 8);
    *a2 = v10;
    *(a2 + 8) = 0;
    *(a2 + 16) = a6;
    return sub_1B4A1F5C0(v12, v13, v11);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.traverse<A>(visitor:)()
{
  v2 = *(v0 + 16);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v8 = *v0;
    }

    else
    {
      if (v2 != 4)
      {
        goto LABEL_11;
      }

      v4 = *v0;
    }

    result = sub_1B4D17E2C();
    if (v1)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (!*(v0 + 16))
  {
    v5 = *v0;
    v6 = v0[1];
    result = sub_1B4D17E3C();
    if (v1)
    {
      return result;
    }

    goto LABEL_11;
  }

  v3 = *v0;
  result = sub_1B4D17E0C();
  if (!v1)
  {
LABEL_11:
    v9 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A82F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  v2 = a2 + *(a1 + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A82F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9340, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A83030(uint64_t a1)
{
  v2 = sub_1B4A97E08(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A8309C()
{
  sub_1B4A97E08(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A83184(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B4D1AA70;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 5;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1B4D17E7C();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A833A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93A0, &qword_1B4D27A98);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7E80, &unk_1B4D25C50);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7E80, &unk_1B4D25C50);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
      v34 = v49;
    }

    else
    {
      sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A93A0, &qword_1B4D27A98);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
    return sub_1B4975024(v37, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A83960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7E80, &unk_1B4D25C50);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7E80, &unk_1B4D25C50);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9398, &qword_1B4D27A88);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
    return sub_1B4975024(v37, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  sub_1B4974FBC(v3, &v15 - v10, &qword_1EB8A7E80, &unk_1B4D25C50);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A903F8(v3, a1, a2, a3, &qword_1EB8A7E80, &unk_1B4D25C50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  }

  else
  {
    sub_1B4A840F4(v3, a1, a2, a3);
  }

  result = sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A840F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7E80, &unk_1B4D25C50);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7E80, &unk_1B4D25C50);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4A97E08(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A843E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9338, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A84488(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A844F4()
{
  sub_1B4A97E08(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A84594(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B8C7C620](a2, a3);
  *a4 = 0xD000000000000039;
  *a5 = 0x80000001B4D60700;
  return result;
}

uint64_t sub_1B4A84628()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9110);
  __swift_project_value_buffer(v0, qword_1EB8A9110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4A848A8();
    }

    else if (result == 2)
    {
      sub_1B4A8495C();
    }
  }

  return result;
}

uint64_t sub_1B4A848A8()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 20);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  sub_1B4A97E08(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A8495C()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 24);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  sub_1B4A97E08(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A84A80(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1B4A84C9C(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A84A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v14 + 20), v8, &qword_1EB8A7EA0, &unk_1B4D42260);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7EA0, &unk_1B4D42260);
  }

  sub_1B4A6F890(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  sub_1B4A97E08(&qword_1EDC3A6F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
}

uint64_t sub_1B4A84C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v14 + 24), v8, &qword_1EB8A7E90, &unk_1B4D25C60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7E90, &unk_1B4D25C60);
  }

  sub_1B4A6F890(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  sub_1B4A97E08(qword_1EDC3A7A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
}

uint64_t sub_1B4A84F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1B4A85020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9330, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A850C0(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A8512C()
{
  sub_1B4A97E08(qword_1EDC3A650, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A851C8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9128);
  __swift_project_value_buffer(v0, qword_1EB8A9128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1CBF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "startTimestamp";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endTimestamp";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "distanceMarker";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "distance";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "duration";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_DistanceSampleIntervalRecord.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_10:
          sub_1B4D17CFC();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        goto LABEL_10;
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_DistanceSampleIntervalRecord.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E2C(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17E2C(), !v1))
    {
      if (!v0[2] || (result = sub_1B4D17E2C(), !v1))
      {
        if (!v0[3] || (result = sub_1B4D17E2C(), !v1))
        {
          if (!v0[4] || (result = sub_1B4D17E2C(), !v1))
          {
            v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0) + 36);
            return sub_1B4D17BAC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4A85698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = a2 + *(a1 + 36);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A85710(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9328, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A857B0(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3AF70, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A8581C()
{
  sub_1B4A97E08(qword_1EDC3AF70, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A858B8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9140);
  __swift_project_value_buffer(v0, qword_1EB8A9140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workoutIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localizedDate";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "distanceRecord";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B4A85C70(v5, a1, a2, a3);
        break;
      case 2:
        sub_1B4A85BB8(a1, v5, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
        break;
      case 1:
        sub_1B4D17D1C();
        break;
    }
  }

  return result;
}

uint64_t sub_1B4A85BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 28);
  type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  sub_1B4A97E08(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A85C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a1;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93C0, &unk_1B4D27AC0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v45 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v39 - v27;
  v43 = v5;
  v29 = *(v5 + 56);
  v46 = v4;
  v29(&v39 - v27, 1, 1, v4, v26);
  v39 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0) + 20);
  sub_1B4974FBC(v51 + v39, v13, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v40 = v15;
  v41 = v14;
  v30 = (*(v15 + 48))(v13, 1, v14);
  if (v30 == 1)
  {
    sub_1B4975024(v13, &qword_1EB8A7B90, &unk_1B4D3B2C0);
    v31 = v46;
  }

  else
  {
    sub_1B4A6F890(v13, v21, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
    sub_1B4A6F890(v21, v18, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
    sub_1B4975024(v28, &qword_1EB8A93C0, &unk_1B4D27AC0);
    v32 = v44;
    sub_1B4A6F890(v18, v44, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    sub_1B4A6F890(v32, v28, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    v31 = v46;
    (v29)(v28, 0, 1, v46);
  }

  sub_1B4A97E08(qword_1EDC3AF70, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  v33 = v47;
  sub_1B4D17D4C();
  v34 = v45;
  if (v33)
  {
    return sub_1B4975024(v28, &qword_1EB8A93C0, &unk_1B4D27AC0);
  }

  sub_1B4974FBC(v28, v45, &qword_1EB8A93C0, &unk_1B4D27AC0);
  if ((*(v43 + 48))(v34, 1, v31) == 1)
  {
    sub_1B4975024(v28, &qword_1EB8A93C0, &unk_1B4D27AC0);
    return sub_1B4975024(v34, &qword_1EB8A93C0, &unk_1B4D27AC0);
  }

  else
  {
    v36 = v42;
    sub_1B4A6F890(v34, v42, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    if (v30 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v28, &qword_1EB8A93C0, &unk_1B4D27AC0);
    v37 = v51;
    v38 = v39;
    sub_1B4975024(v51 + v39, &qword_1EB8A7B90, &unk_1B4D3B2C0);
    sub_1B4A6F890(v36, v37 + v38, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    return (*(v40 + 56))(v37 + v38, 0, 1, v41);
  }
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v4))
  {
    result = sub_1B4A862B0(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry, 2);
    if (!v4)
    {
      sub_1B4A864D4(v3, a1, a2, a3);
      v12 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A862B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double), uint64_t a6)
{
  v20[2] = a6;
  v20[3] = a3;
  v20[5] = a4;
  v20[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v20 - v10;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a5(0, v15);
  sub_1B4974FBC(a1 + *(v18 + 28), v11, &qword_1EB8A7158, &unk_1B4D20310);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1B4975024(v11, &qword_1EB8A7158, &unk_1B4D20310);
  }

  sub_1B4A6F890(v11, v17, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4A97E08(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v17, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
}

uint64_t sub_1B4A864D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  sub_1B4974FBC(a1 + *(v13 + 20), v8, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  sub_1B4A97E08(qword_1EDC3AF70, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  sub_1B4D17E6C();
  return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
}

uint64_t sub_1B4A86728@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = a1[5];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[a1[6]];
  sub_1B4D17BBC();
  v7 = a1[7];
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_1B4A86848(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9320, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A868E8(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3BB10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A86954()
{
  sub_1B4A97E08(qword_1EDC3BB10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A869F0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9158);
  __swift_project_value_buffer(v0, qword_1EB8A9158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "workoutIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localizedDate";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "measurement";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B4D17CFC();
        break;
      case 2:
        sub_1B4A85BB8(a1, v5, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
        break;
      case 1:
        sub_1B4D17D1C();
        break;
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v4))
  {
    result = sub_1B4A862B0(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry, 2);
    if (!v4)
    {
      if (v3[2])
      {
        sub_1B4D17E2C();
      }

      v12 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A86E1C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  v4 = &a2[*(a1 + 24)];
  sub_1B4D17BBC();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1B4A86EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9318, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A86F94(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A87000()
{
  sub_1B4A97E08(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A8709C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9170);
  __swift_project_value_buffer(v0, qword_1EB8A9170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1A800;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "topEntries";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0);
        sub_1B4A97E08(qword_1EDC3A998, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);
        sub_1B4D17D3C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0), sub_1B4A97E08(qword_1EDC3A998, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry), result = sub_1B4D17E5C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A87484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9310, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A87524(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A87590()
{
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A8760C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B4A10A90(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A876B4()
{
  result = MEMORY[0x1B8C7C620](0x7972746E452ELL, 0xE600000000000000);
  qword_1EB8A9188 = 0xD000000000000039;
  unk_1EB8A9190 = 0x80000001B4D60800;
  return result;
}

uint64_t sub_1B4A87744()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9198);
  __swift_project_value_buffer(v0, qword_1EB8A9198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "recordEntry";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "measurementEntry";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A87970(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4A87A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93B0, &unk_1B4D27AB0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      v34 = v49;
    }

    else
    {
      sub_1B4975024(v29, &qword_1EB8A93B0, &unk_1B4D27AB0);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3BB10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A93B0, &unk_1B4D27AB0);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A93B0, &unk_1B4D27AB0);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A93B0, &unk_1B4D27AB0);
    return sub_1B4975024(v37, &qword_1EB8A93B0, &unk_1B4D27AB0);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A93B0, &unk_1B4D27AB0);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A87FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93B8, &unk_1B4D3B2E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v29, &qword_1EB8A93B8, &unk_1B4D3B2E0);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A93B8, &unk_1B4D3B2E0);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A93B8, &unk_1B4D3B2E0);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A93B8, &unk_1B4D3B2E0);
    return sub_1B4975024(v37, &qword_1EB8A93B8, &unk_1B4D3B2E0);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A93B8, &unk_1B4D3B2E0);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  sub_1B4974FBC(v3, &v15 - v10, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A8895C(v3, a1, a2, a3);
  }

  else
  {
    sub_1B4A88724(v3, a1, a2, a3);
  }

  result = sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A88724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    sub_1B4A97E08(qword_1EDC3BB10, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A8895C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4A97E08(qword_1EDC3B380, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A88BF8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A88CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9308, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A88D64(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3A998, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A88DD0()
{
  sub_1B4A97E08(qword_1EDC3A998, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A88E6C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A91B0);
  __swift_project_value_buffer(v0, qword_1EB8A91B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1B4D25C30;
  v4 = v41 + v3;
  v5 = v41 + v3 + v1[14];
  *(v41 + v3) = 1;
  *v5 = "fastestByDistance";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "fastestPace";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "longestDistance";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "greatestElevation";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "mostCaloriesBurned";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "greatestDuration";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "distanceStatistics";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "paceStatistics";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "elevationGainStatistics";
  *(v22 + 8) = 23;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "averageHeartRateStatistics";
  *(v24 + 1) = 26;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "diveDepthStatistics";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "caloriesStatistics";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "durationStatistics";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "weatherTemperatureStatistics";
  *(v32 + 1) = 28;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "totalCount";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "countByWeatherConditionProperty";
  *(v36 + 1) = 31;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "countByRoundedDistanceProperty";
  *(v37 + 8) = 30;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "weeklyCountStatistics";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B4A896AC(v5, a1, a2, a3);
        break;
      case 2:
        sub_1B4A89C5C(v5, a1, a2, a3);
        break;
      case 3:
        sub_1B4A8A218(v5, a1, a2, a3);
        break;
      case 4:
        sub_1B4A8A7D4(v5, a1, a2, a3);
        break;
      case 5:
        sub_1B4A8AD90(v5, a1, a2, a3);
        break;
      case 6:
        sub_1B4A8B34C(v5, a1, a2, a3);
        break;
      case 7:
        sub_1B4A8B908(v5, a1, a2, a3);
        break;
      case 8:
        sub_1B4A8BEC4(v5, a1, a2, a3);
        break;
      case 9:
        sub_1B4A8C480(v5, a1, a2, a3);
        break;
      case 10:
        sub_1B4A8CA3C(v5, a1, a2, a3);
        break;
      case 11:
        sub_1B4A8CFF8(v5, a1, a2, a3);
        break;
      case 12:
        sub_1B4A8D5B4(v5, a1, a2, a3);
        break;
      case 13:
        sub_1B4A8DB70(v5, a1, a2, a3);
        break;
      case 14:
        sub_1B4A8E12C(v5, a1, a2, a3);
        break;
      case 15:
        sub_1B4A8E6E8(v5, a1, a2, a3);
        break;
      case 16:
        sub_1B4A8ECA4(v5, a1, a2, a3);
        break;
      case 17:
        sub_1B4A8F260(v5, a1, a2, a3);
        break;
      case 18:
        sub_1B4A8F81C(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B4A896AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9390, &qword_1B4D27A80);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }

    else
    {
      sub_1B4975024(v29, &qword_1EB8A9390, &qword_1B4D27A80);
      v36 = v44;
      sub_1B4A6F890(v19, v44, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9390, &qword_1B4D27A80);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9390, &qword_1B4D27A80);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9390, &qword_1B4D27A80);
    return sub_1B4975024(v37, &qword_1EB8A9390, &qword_1B4D27A80);
  }

  else
  {
    v40 = v45;
    sub_1B4A6F890(v37, v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9390, &qword_1B4D27A80);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A89C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9398, &qword_1B4D27A88);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
    return sub_1B4975024(v37, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8A218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9398, &qword_1B4D27A88);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
    return sub_1B4975024(v37, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8A7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9398, &qword_1B4D27A88);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
    return sub_1B4975024(v37, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8AD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9398, &qword_1B4D27A88);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
    return sub_1B4975024(v37, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9398, &qword_1B4D27A88);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9398, &qword_1B4D27A88);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
    return sub_1B4975024(v37, &qword_1EB8A9398, &qword_1B4D27A88);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9398, &qword_1B4D27A88);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8B908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8BEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8C480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8CA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8CFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8DB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8E12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    return sub_1B4975024(v37, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8E6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93A0, &qword_1B4D27A98);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A93A0, &qword_1B4D27A98);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
    return sub_1B4975024(v37, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9390, &qword_1B4D27A80);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1B4975024(v29, &qword_1EB8A9390, &qword_1B4D27A80);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9390, &qword_1B4D27A80);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9390, &qword_1B4D27A80);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9390, &qword_1B4D27A80);
    return sub_1B4975024(v37, &qword_1EB8A9390, &qword_1B4D27A80);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9390, &qword_1B4D27A80);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8F260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9390, &qword_1B4D27A80);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1B4975024(v29, &qword_1EB8A9390, &qword_1B4D27A80);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9390, &qword_1B4D27A80);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9390, &qword_1B4D27A80);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9390, &qword_1B4D27A80);
    return sub_1B4975024(v37, &qword_1EB8A9390, &qword_1B4D27A80);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9390, &qword_1B4D27A80);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4A8F81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93A8, &unk_1B4D27AA0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v47 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v46 = v6;
  v30 = *(v6 + 56);
  v49 = v5;
  v31 = v5;
  v32 = v30;
  (v30)(&v42 - v28, 1, 1, v31, v27);
  v43 = a1;
  sub_1B4974FBC(a1, v14, &qword_1EB8A7CC8, &qword_1B4D20180);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A7CC8, &qword_1B4D20180);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A6F890(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    sub_1B4A6F890(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_1B4975024(v29, &qword_1EB8A93A8, &unk_1B4D27AA0);
      v36 = v45;
      sub_1B4A6F890(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
      sub_1B4A6F890(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4A97E08(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A93A8, &unk_1B4D27AA0);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A93A8, &unk_1B4D27AA0);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A93A8, &unk_1B4D27AA0);
    return sub_1B4975024(v37, &qword_1EB8A93A8, &unk_1B4D27AA0);
  }

  else
  {
    v40 = v44;
    sub_1B4A6F890(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A93A8, &unk_1B4D27AA0);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  sub_1B4974FBC(v3, &v15 - v10, &qword_1EB8A7CC8, &qword_1B4D20180);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1B4A903F8(v3, a1, a2, a3, &qword_1EB8A7CC8, &qword_1B4D20180, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        result = sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        if (!v4)
        {
          break;
        }

        return result;
      case 2u:
        sub_1B4A9061C(v3, a1, a2, a3);
        goto LABEL_29;
      case 3u:
        sub_1B4A90854(v3, a1, a2, a3);
        goto LABEL_29;
      case 4u:
        sub_1B4A90A8C(v3, a1, a2, a3);
        goto LABEL_29;
      case 5u:
        sub_1B4A90CC4(v3, a1, a2, a3);
        goto LABEL_29;
      case 6u:
        sub_1B4A90EFC(v3, a1, a2, a3);
        goto LABEL_29;
      case 7u:
        sub_1B4A91134(v3, a1, a2, a3);
        goto LABEL_29;
      case 8u:
        sub_1B4A9136C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 9u:
        sub_1B4A915A4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0xAu:
        sub_1B4A917DC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0xBu:
        sub_1B4A91A14(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0xCu:
        sub_1B4A91C4C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0xDu:
        sub_1B4A91E84(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0xEu:
        sub_1B4A920BC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0xFu:
        sub_1B4A922F4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_8;
        }

        return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      case 0x10u:
        sub_1B4A9252C(v3, a1, a2, a3);
        if (v4)
        {
          return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        }

        goto LABEL_8;
      case 0x11u:
        sub_1B4A92764(v3, a1, a2, a3);
        if (v4)
        {
          return sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        }

LABEL_8:
        sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        break;
      default:
        sub_1B4A901C4(v3, a1, a2, a3);
LABEL_29:
        result = sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        if (v4)
        {
          return result;
        }

        break;
    }
  }

  v13 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0) + 20);
  return sub_1B4D17BAC();
}

uint64_t sub_1B4A901C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A903F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v22[0] = a8;
  v22[3] = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v22 - v14;
  v16 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v15, a5, a6);
  v20 = a7(0);
  if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
  {
    sub_1B4975024(v15, a5, a6);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6F890(v15, v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  result = sub_1B4A6FA60(v15, v22[0]);
  __break(1u);
  return result;
}

uint64_t sub_1B4A9061C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A90854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A90A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A90CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4A97E08(qword_1EDC3A8F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A90EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A91134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A9136C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A915A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A917DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A91A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A91C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A91E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A920BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4A97E08(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A922F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A9252C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4A97E08(qword_1EDC3A5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A92764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    sub_1B4A97E08(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
  }

  result = sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4A929E8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B4D18E8C();
  a1(0);
  sub_1B4A97E08(a2, a3);
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A92AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A97E08(&qword_1EB8A9300, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A92B74(uint64_t a1)
{
  v2 = sub_1B4A97E08(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A92BE0()
{
  sub_1B4A97E08(qword_1EDC3C5A8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);

  return sub_1B4D17D9C();
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV3KeyV06OneOf_H4TypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        if (v7 == 3)
        {
          v8 = *a1;
          v9 = *a2;
          sub_1B4A1F5D4(*a1, v3, 3);
          v10 = *&v5;
          v11 = v6;
          v12 = 3;
LABEL_13:
          sub_1B4A1F5D4(v10, v11, v12);
          return v8 == v9;
        }
      }

      else if (v7 == 4)
      {
        v8 = *a1;
        v9 = *a2;
        sub_1B4A1F5D4(*a1, v3, 4);
        v10 = *&v5;
        v11 = v6;
        v12 = 4;
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    if (v7 == 2)
    {
      sub_1B4A1F5D4(*a1, v3, 2);
      v14 = *&v5;
      v15 = v6;
      v16 = 2;
LABEL_16:
      sub_1B4A1F5D4(v14, v15, v16);
      return v2 == *&v5;
    }

    goto LABEL_17;
  }

  if (*(a1 + 16))
  {
    if (v7 == 1)
    {
      sub_1B4A1F5D4(*a1, v3, 1);
      v14 = *&v5;
      v15 = v6;
      v16 = 1;
      goto LABEL_16;
    }

LABEL_17:
    sub_1B4A1F5AC(*&v5, v6, v7);
    sub_1B4A1F5D4(v2, v3, v4);
    sub_1B4A1F5D4(*&v5, v6, v7);
    return 0;
  }

  if (*(a2 + 16))
  {
    v13 = *(a1 + 8);

    goto LABEL_17;
  }

  v18 = *a1;
  if (v2 == *&v5 && v3 == v6)
  {
    sub_1B4A1F5AC(v18, v3, 0);
    sub_1B4A1F5AC(v2, v3, 0);
    sub_1B4A1F5D4(v2, v3, 0);
    sub_1B4A1F5D4(v2, v3, 0);
    return 1;
  }

  else
  {
    v20 = sub_1B4D18DCC();
    sub_1B4A1F5AC(*&v5, v6, 0);
    sub_1B4A1F5AC(v2, v3, 0);
    sub_1B4A1F5D4(v2, v3, 0);
    sub_1B4A1F5D4(*&v5, v6, 0);
    return v20 & 1;
  }
}

uint64_t _s19FitnessIntelligence06Apple_a1_B33_WorkoutPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0 || (sub_1B4A0C158(a1[1], a2[1]) & 1) == 0 || (sub_1B4A0A164(a1[2], a2[2]) & 1) == 0 || (sub_1B4A0A164(a1[3], a2[3]) & 1) == 0 || (sub_1B4A0C158(a1[4], a2[4]) & 1) == 0 || (sub_1B4A0C158(a1[5], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0) + 40);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV4PairV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E98, &unk_1B4D203B0);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA8, &qword_1B4D203C0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  sub_1B4974FBC(a1 + v25, v24, &qword_1EB8A7EA0, &unk_1B4D42260);
  sub_1B4974FBC(v52 + v25, &v24[v26], &qword_1EB8A7EA0, &unk_1B4D42260);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) != 1)
  {
    sub_1B4974FBC(v24, v19, &qword_1EB8A7EA0, &unk_1B4D42260);
    if (v27(&v24[v26], 1, v11) != 1)
    {
      sub_1B4A6F890(&v24[v26], v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      v31 = _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV3KeyV2eeoiySbAE_AEtFZ_0(v19, v15);
      sub_1B4A6FA60(v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
      sub_1B4975024(v24, &qword_1EB8A7EA0, &unk_1B4D42260);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1B4A6FA60(v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
LABEL_6:
    v28 = &qword_1EB8A7EA8;
    v29 = &qword_1B4D203C0;
    v30 = v24;
LABEL_14:
    sub_1B4975024(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4975024(v24, &qword_1EB8A7EA0, &unk_1B4D42260);
LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  sub_1B4974FBC(v51 + v32, v50, &qword_1EB8A7E90, &unk_1B4D25C60);
  sub_1B4974FBC(v52 + v32, v34 + v33, &qword_1EB8A7E90, &unk_1B4D25C60);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_1B4975024(v34, &qword_1EB8A7E90, &unk_1B4D25C60);
LABEL_18:
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v38 = sub_1B4D1816C();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  sub_1B4974FBC(v34, v45, &qword_1EB8A7E90, &unk_1B4D25C60);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    sub_1B4A6FA60(v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
LABEL_13:
    v28 = &qword_1EB8A7E98;
    v29 = &unk_1B4D203B0;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  sub_1B4A6F890(v40, v44, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  v42 = _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV0G0V2eeoiySbAE_AEtFZ_0(v37, v41);
  sub_1B4A6FA60(v41, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  sub_1B4A6FA60(v37, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  sub_1B4975024(v34, &qword_1EB8A7E90, &unk_1B4D25C60);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV3KeyV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 != 255)
  {
    v14 = *a1;
    v15 = v2;
    v16 = v4;
    if (v7 != 255)
    {
      v11 = v6;
      v12 = v5;
      v13 = v7;
      sub_1B4A1F598(v3, v2, v4);
      sub_1B4A1F598(v6, v5, v7);
      sub_1B4A1F598(v3, v2, v4);
      v8 = _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV3KeyV06OneOf_H4TypeO2eeoiySbAG_AGtFZ_0(&v14, &v11);
      sub_1B4A1F5D4(v11, v12, v13);
      sub_1B4A1F5D4(v14, v15, v16);
      sub_1B4A1F5C0(v3, v2, v4);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_1B4A1F598(v3, v2, v4);
    sub_1B4A1F598(v6, v5, 255);
    sub_1B4A1F598(v3, v2, v4);
    sub_1B4A1F5D4(v3, v2, v4);
LABEL_8:
    sub_1B4A1F5C0(v3, v2, v4);
    sub_1B4A1F5C0(v6, v5, v7);
    return 0;
  }

  sub_1B4A1F598(*a1, v2, 255);
  if (v7 != 255)
  {
    sub_1B4A1F598(v6, v5, v7);
    goto LABEL_8;
  }

  sub_1B4A1F598(v6, v5, 255);
  sub_1B4A1F5C0(v3, v2, 255);
LABEL_10:
  v10 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0) + 20);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV0G0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E88, &unk_1B4D203A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1B4974FBC(a1, &v24 - v15, &qword_1EB8A7E80, &unk_1B4D25C50);
  sub_1B4974FBC(a2, &v16[v18], &qword_1EB8A7E80, &unk_1B4D25C50);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A7E80, &unk_1B4D25C50);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0) + 20);
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A7E80, &unk_1B4D25C50);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8A7E88, &unk_1B4D203A0);
    goto LABEL_7;
  }

  sub_1B4A6F890(&v16[v18], v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  v21 = _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV0G0V06OneOf_G4TypeO2eeoiySbAG_AGtFZ_0(v12, v8);
  sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4975024(v16, &qword_1EB8A7E80, &unk_1B4D25C50);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_WorkoutDictionaryPropertyValueV0G0V06OneOf_G4TypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v34 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93D8, &qword_1B4D27AF8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v34 - v19;
  v22 = *(v21 + 56);
  sub_1B4A6F9F8(a1, &v34 - v19, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4A6F9F8(a2, &v20[v22], type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6F9F8(v20, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4A6F890(&v20[v22], v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      if (sub_1B4A10A90(*v13, *v6))
      {
        v23 = *(v35 + 20);
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v24 = sub_1B4D1816C();
        sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
        if (v24)
        {
          v25 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
          v26 = v13;
LABEL_13:
          sub_1B4A6FA60(v26, v25);
          sub_1B4A6FA60(v20, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
          return 1;
        }
      }

      else
      {
        sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      }

      v32 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
      v33 = v13;
LABEL_18:
      sub_1B4A6FA60(v33, v32);
      sub_1B4A6FA60(v20, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
      return 0;
    }

    v27 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
    v28 = v13;
  }

  else
  {
    sub_1B4A6F9F8(v20, v16, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B4A6F890(&v20[v22], v9, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      if (*v16 == *v9)
      {
        v29 = *(v34 + 20);
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v30 = sub_1B4D1816C();
        sub_1B4A6FA60(v9, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        if (v30)
        {
          v25 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
          v26 = v16;
          goto LABEL_13;
        }
      }

      else
      {
        sub_1B4A6FA60(v9, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      }

      v32 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
      v33 = v16;
      goto LABEL_18;
    }

    v27 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
    v28 = v16;
  }

  sub_1B4A6FA60(v28, v27);
  sub_1B4975024(v20, &qword_1EB8A93D8, &qword_1B4D27AF8);
  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_WorkoutBestMetricPropertyValueV5EntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EB8, &qword_1B4D203C8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1B4974FBC(a1, &v24 - v15, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  sub_1B4974FBC(a2, &v16[v18], &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A7BC8, &unk_1B4D1FD60);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry(0) + 20);
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8A7EB8, &qword_1B4D203C8);
    goto LABEL_7;
  }

  sub_1B4A6F890(&v16[v18], v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  v21 = _s19FitnessIntelligence06Apple_a1_B31_WorkoutBestMetricPropertyValueV5EntryV06OneOf_I4TypeO2eeoiySbAG_AGtFZ_0(v12, v8);
  sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4975024(v16, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_WorkoutBestMetricPropertyValueV5EntryV06OneOf_I4TypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v31 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EB0, &qword_1B4D27AF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v31 - v21;
  v24 = *(v23 + 56);
  sub_1B4A6F9F8(a1, &v31 - v21, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4A6F9F8(a2, &v22[v24], type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6F9F8(v22, v15, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4A6F890(&v22[v24], v7, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
      v25 = _s19FitnessIntelligence06Apple_a1_B28_BestWorkoutMeasurementEntryV2eeoiySbAC_ACtFZ_0(v15, v7);
      sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
      v26 = v15;
      v27 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry;
LABEL_9:
      sub_1B4A6FA60(v26, v27);
      sub_1B4A6FA60(v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
      return v25 & 1;
    }

    v28 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry;
    v29 = v15;
  }

  else
  {
    sub_1B4A6F9F8(v22, v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B4A6F890(&v22[v24], v11, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      v25 = _s19FitnessIntelligence06Apple_a1_B23_BestWorkoutRecordEntryV2eeoiySbAC_ACtFZ_0(v18, v11);
      sub_1B4A6FA60(v11, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      v26 = v18;
      v27 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry;
      goto LABEL_9;
    }

    v28 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry;
    v29 = v18;
  }

  sub_1B4A6FA60(v29, v28);
  sub_1B4975024(v22, &qword_1EB8A7EB0, &qword_1B4D27AF0);
  v25 = 0;
  return v25 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B30_WorkoutMilestonePropertyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || (sub_1B4A118C4(a1[1], a2[1]) & 1) == 0 || (sub_1B4A11F5C(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue(0) + 28);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B30_WorkoutMilestonePropertyValueV5EntryV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if (*a1 != *a2 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_11;
  }

  v25 = v8;
  v26 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v17 = *(v26 + 28);
  v18 = *(v13 + 48);
  sub_1B4974FBC(a1 + v17, v16, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4974FBC(a2 + v17, &v16[v18], &qword_1EB8A7158, &unk_1B4D20310);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A7158, &unk_1B4D20310);
LABEL_14:
      v24 = *(v26 + 24);
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_10;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A7158, &unk_1B4D20310);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
LABEL_10:
    sub_1B4975024(v16, &qword_1EB8A7E20, &unk_1B4D2B450);
    goto LABEL_11;
  }

  v22 = v25;
  sub_1B4A6F890(&v16[v18], v25, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v23 = static Apple_Fitness_Intelligence_LocalizedDate.== infix(_:_:)(v12, v22);
  sub_1B4A6FA60(v22, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4975024(v16, &qword_1EB8A7158, &unk_1B4D20310);
  if (v23)
  {
    goto LABEL_14;
  }

LABEL_11:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B30_WorkoutMilestonePropertyValueV4PairV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E78, &unk_1B4D20390);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 24);
  v21 = *(v13 + 48);
  sub_1B4974FBC(v18 + v20, v16, &qword_1EB8A7148, &unk_1B4D25C40);
  sub_1B4974FBC(v19 + v20, &v16[v21], &qword_1EB8A7148, &unk_1B4D25C40);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A7148, &unk_1B4D25C40);
LABEL_11:
      v26 = *(v27[0] + 20);
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v23 = sub_1B4D1816C();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A7148, &unk_1B4D25C40);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
LABEL_7:
    sub_1B4975024(v16, &qword_1EB8A7E78, &unk_1B4D20390);
    goto LABEL_8;
  }

  sub_1B4A6F890(&v16[v21], v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  v25 = _s19FitnessIntelligence06Apple_a1_B30_WorkoutMilestonePropertyValueV5EntryV2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  sub_1B4975024(v16, &qword_1EB8A7148, &unk_1B4D25C40);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B28_BestWorkoutMeasurementEntryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = v8;
  v25 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v17 = *(v25 + 28);
  v18 = *(v13 + 48);
  sub_1B4974FBC(a1 + v17, v16, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4974FBC(a2 + v17, &v16[v18], &qword_1EB8A7158, &unk_1B4D20310);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A7158, &unk_1B4D20310);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A7158, &unk_1B4D20310);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
LABEL_9:
    sub_1B4975024(v16, &qword_1EB8A7E20, &unk_1B4D2B450);
LABEL_13:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v26;
  sub_1B4A6F890(&v16[v18], v26, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v21 = static Apple_Fitness_Intelligence_LocalizedDate.== infix(_:_:)(v12, v20);
  sub_1B4A6FA60(v20, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4975024(v16, &qword_1EB8A7158, &unk_1B4D20310);
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_13;
  }

  v22 = *(v25 + 24);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v23 = sub_1B4D1816C();
  return v23 & 1;
}

BOOL _s19FitnessIntelligence06Apple_a1_B23_BestWorkoutRecordEntryV06OneOf_F4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9388, &unk_1B4D27A70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v13 - v6);
  v9 = (&v13 + *(v8 + 56) - v6);
  sub_1B4A6F9F8(a1, &v13 - v6, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  sub_1B4A6F9F8(a2, v9, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  v11 = 0;
  if (*v7 == *v9 && v7[1] == v9[1] && v7[2] == v9[2] && v7[3] == v9[3] && v7[4] == v9[4])
  {
    v10 = *(type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0) + 36);
    sub_1B4D17BCC();
    sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    if (sub_1B4D1816C())
    {
      v11 = 1;
    }
  }

  sub_1B4A6FA60(v9, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  return v11;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_BestWorkoutRecordEntryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v50 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93D0, &qword_1B4D27AE8);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v13 = &v50 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v50 - v25;
  v27 = *a1;
  v28 = a1[1];
  v57 = a1;
  if ((v27 != *a2 || v28 != a2[1]) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_18;
  }

  v52 = v13;
  v50 = v7;
  v29 = a2;
  v51 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v30 = *(v51 + 28);
  v31 = *(v23 + 48);
  sub_1B4974FBC(v57 + v30, v26, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4974FBC(v29 + v30, &v26[v31], &qword_1EB8A7158, &unk_1B4D20310);
  v32 = *(v15 + 48);
  if (v32(v26, 1, v14) != 1)
  {
    sub_1B4974FBC(v26, v22, &qword_1EB8A7158, &unk_1B4D20310);
    if (v32(&v26[v31], 1, v14) != 1)
    {
      sub_1B4A6F890(&v26[v31], v18, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      v36 = static Apple_Fitness_Intelligence_LocalizedDate.== infix(_:_:)(v22, v18);
      sub_1B4A6FA60(v18, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      sub_1B4A6FA60(v22, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      sub_1B4975024(v26, &qword_1EB8A7158, &unk_1B4D20310);
      if ((v36 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    sub_1B4A6FA60(v22, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
LABEL_9:
    v33 = &qword_1EB8A7E20;
    v34 = &unk_1B4D2B450;
    v35 = v26;
LABEL_17:
    sub_1B4975024(v35, v33, v34);
    goto LABEL_18;
  }

  if (v32(&v26[v31], 1, v14) != 1)
  {
    goto LABEL_9;
  }

  sub_1B4975024(v26, &qword_1EB8A7158, &unk_1B4D20310);
LABEL_11:
  v38 = v51;
  v37 = v52;
  v39 = *(v51 + 20);
  v40 = *(v54 + 48);
  sub_1B4974FBC(v57 + v39, v52, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  sub_1B4974FBC(v29 + v39, v37 + v40, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v41 = v56;
  v42 = *(v55 + 48);
  if (v42(v37, 1, v56) == 1)
  {
    if (v42(v37 + v40, 1, v41) == 1)
    {
      sub_1B4975024(v37, &qword_1EB8A7B90, &unk_1B4D3B2C0);
LABEL_21:
      v49 = *(v38 + 24);
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v44 = sub_1B4D1816C();
      return v44 & 1;
    }

    goto LABEL_16;
  }

  v43 = v53;
  sub_1B4974FBC(v37, v53, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  if (v42(v37 + v40, 1, v41) == 1)
  {
    sub_1B4A6FA60(v43, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
LABEL_16:
    v33 = &qword_1EB8A93D0;
    v34 = &qword_1B4D27AE8;
    v35 = v37;
    goto LABEL_17;
  }

  v46 = v37 + v40;
  v47 = v50;
  sub_1B4A6F890(v46, v50, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  v48 = _s19FitnessIntelligence06Apple_a1_B23_BestWorkoutRecordEntryV06OneOf_F4TypeO2eeoiySbAE_AEtFZ_0(v43, v47);
  sub_1B4A6FA60(v47, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  sub_1B4A6FA60(v43, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  sub_1B4975024(v37, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  if (v48)
  {
    goto LABEL_21;
  }

LABEL_18:
  v44 = 0;
  return v44 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B29_DistanceSampleIntervalRecordV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0) + 36);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B22_WorkoutPropertyRecordV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v49 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE0, &unk_1B4D27AD0);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v13 = &v49 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CF0, &qword_1B4D201A8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v49 - v25;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_17;
  }

  v51 = v13;
  v49 = v7;
  v50 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  v27 = *(v50 + 28);
  v28 = *(v23 + 48);
  v52 = a1;
  sub_1B4974FBC(a1 + v27, v26, &qword_1EB8A7CE8, &qword_1B4D201A0);
  v29 = a2 + v27;
  v30 = a2;
  sub_1B4974FBC(v29, &v26[v28], &qword_1EB8A7CE8, &qword_1B4D201A0);
  v31 = *(v15 + 48);
  if (v31(v26, 1, v14) != 1)
  {
    sub_1B4974FBC(v26, v22, &qword_1EB8A7CE8, &qword_1B4D201A0);
    if (v31(&v26[v28], 1, v14) != 1)
    {
      sub_1B4A6F890(&v26[v28], v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      v35 = _s19FitnessIntelligence06Apple_a1_B26_WorkoutPropertyDimensionsV2eeoiySbAC_ACtFZ_0(v22, v18);
      sub_1B4A6FA60(v18, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      sub_1B4A6FA60(v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      sub_1B4975024(v26, &qword_1EB8A7CE8, &qword_1B4D201A0);
      if ((v35 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    sub_1B4A6FA60(v22, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
LABEL_8:
    v32 = &qword_1EB8A7CF0;
    v33 = &qword_1B4D201A8;
    v34 = v26;
LABEL_16:
    sub_1B4975024(v34, v32, v33);
    goto LABEL_17;
  }

  if (v31(&v26[v28], 1, v14) != 1)
  {
    goto LABEL_8;
  }

  sub_1B4975024(v26, &qword_1EB8A7CE8, &qword_1B4D201A0);
LABEL_10:
  v37 = v50;
  v36 = v51;
  v38 = *(v50 + 32);
  v39 = *(v54 + 48);
  sub_1B4974FBC(v52 + v38, v51, &qword_1EB8A7CD8, &unk_1B4D20190);
  sub_1B4974FBC(v30 + v38, v36 + v39, &qword_1EB8A7CD8, &unk_1B4D20190);
  v40 = v56;
  v41 = *(v55 + 48);
  if (v41(v36, 1, v56) == 1)
  {
    if (v41(v36 + v39, 1, v40) == 1)
    {
      sub_1B4975024(v36, &qword_1EB8A7CD8, &unk_1B4D20190);
LABEL_20:
      v48 = *(v37 + 24);
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v43 = sub_1B4D1816C();
      return v43 & 1;
    }

    goto LABEL_15;
  }

  v42 = v53;
  sub_1B4974FBC(v36, v53, &qword_1EB8A7CD8, &unk_1B4D20190);
  if (v41(v36 + v39, 1, v40) == 1)
  {
    sub_1B4A6FA60(v42, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
LABEL_15:
    v32 = &qword_1EB8A7CE0;
    v33 = &unk_1B4D27AD0;
    v34 = v36;
    goto LABEL_16;
  }

  v45 = v36 + v39;
  v46 = v49;
  sub_1B4A6F890(v45, v49, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  v47 = _s19FitnessIntelligence06Apple_a1_B16_WorkoutPropertyV2eeoiySbAC_ACtFZ_0(v42, v46);
  sub_1B4A6FA60(v46, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  sub_1B4A6FA60(v42, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  sub_1B4975024(v36, &qword_1EB8A7CD8, &unk_1B4D20190);
  if (v47)
  {
    goto LABEL_20;
  }

LABEL_17:
  v43 = 0;
  return v43 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B26_WorkoutPropertyDimensionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1B4D18DCC();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1B4D18DCC();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  v26 = v4[8];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v31 = v4[9];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35)
    {
      return 0;
    }

    if (*v32 != *v34 || v33 != v35)
    {
      v36 = v4;
      v37 = sub_1B4D18DCC();
      v4 = v36;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v35)
  {
    return 0;
  }

  v38 = v4[10];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }

LABEL_43:
    sub_1B4D17BCC();
    sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    return sub_1B4D1816C() & 1;
  }

  if (!v42)
  {
    goto LABEL_43;
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B18_WorkoutPropertiesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (sub_1B4A185B4(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0) + 28);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_WorkoutPropertyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD0, &qword_1B4D20188);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1B4974FBC(a1, &v24 - v15, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4974FBC(a2, &v16[v18], &qword_1EB8A7CC8, &qword_1B4D20180);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0) + 20);
      sub_1B4D17BCC();
      sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A7CC8, &qword_1B4D20180);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8A7CD0, &qword_1B4D20188);
    goto LABEL_7;
  }

  sub_1B4A6F890(&v16[v18], v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  v21 = _s19FitnessIntelligence06Apple_a1_B16_WorkoutPropertyV06OneOf_E4TypeO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  sub_1B4A6FA60(v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  sub_1B4975024(v16, &qword_1EB8A7CC8, &qword_1B4D20180);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_WorkoutPropertyV06OneOf_E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v179 = a2;
  v180 = a1;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v164 = (&v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v5 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v165 = (&v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v163 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v162 = &v146 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v161 = &v146 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v160 = &v146 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v159 = &v146 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v146 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v155 = &v146 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v153 = &v146 - v23;
  v178 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v24 = *(*(v178 - 8) + 64);
  MEMORY[0x1EEE9AC00](v178);
  v158 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v156 = &v146 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v154 = &v146 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v152 = (&v146 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v151 = (&v146 - v33);
  v147 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v34 = *(*(v147 - 8) + 64);
  MEMORY[0x1EEE9AC00](v147);
  v150 = &v146 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v149 = &v146 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v148 = (&v146 - v39);
  v40 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v174 = (&v146 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v43);
  v177 = (&v146 - v44);
  MEMORY[0x1EEE9AC00](v45);
  v176 = (&v146 - v46);
  MEMORY[0x1EEE9AC00](v47);
  v175 = (&v146 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v173 = (&v146 - v50);
  MEMORY[0x1EEE9AC00](v51);
  v172 = (&v146 - v52);
  MEMORY[0x1EEE9AC00](v53);
  v171 = (&v146 - v54);
  MEMORY[0x1EEE9AC00](v55);
  v169 = (&v146 - v56);
  MEMORY[0x1EEE9AC00](v57);
  v167 = (&v146 - v58);
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v146 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = (&v146 - v63);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v146 - v66;
  MEMORY[0x1EEE9AC00](v68);
  v170 = (&v146 - v69);
  MEMORY[0x1EEE9AC00](v70);
  v168 = (&v146 - v71);
  MEMORY[0x1EEE9AC00](v72);
  v166 = (&v146 - v73);
  MEMORY[0x1EEE9AC00](v74);
  v76 = (&v146 - v75);
  MEMORY[0x1EEE9AC00](v77);
  v79 = (&v146 - v78);
  MEMORY[0x1EEE9AC00](v80);
  v82 = (&v146 - v81);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93C8, &qword_1B4D27AE0);
  v84 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83 - 8);
  v86 = &v146 - v85;
  v88 = *(v87 + 56);
  sub_1B4A6F9F8(v180, &v146 - v85, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  v180 = v88;
  sub_1B4A6F9F8(v179, &v86[v88], type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B4A6F9F8(v86, v79, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v125 = v180;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v137 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
        goto LABEL_59;
      }

      v93 = v86;
      v126 = v151;
      sub_1B4A6F890(&v86[v125], v151, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      if (sub_1B4A10A90(*v79, *v126))
      {
        v127 = *(v178 + 20);
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        if (sub_1B4D1816C())
        {
          v112 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
          sub_1B4A6FA60(v126, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
          v100 = v79;
          goto LABEL_45;
        }
      }

      v140 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
      sub_1B4A6FA60(v126, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v141 = v79;
      goto LABEL_64;
    case 2u:
      sub_1B4A6F9F8(v86, v76, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v109 = v180;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v90 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
        v91 = v76;
        goto LABEL_70;
      }

      v93 = v86;
      v110 = v152;
      sub_1B4A6F890(&v86[v109], v152, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      if (sub_1B4A10A90(*v76, *v110))
      {
        v111 = *(v178 + 20);
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        if (sub_1B4D1816C())
        {
          v112 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
          sub_1B4A6FA60(v110, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
          v100 = v76;
          goto LABEL_45;
        }
      }

      v140 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
      sub_1B4A6FA60(v110, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      v141 = v76;
      goto LABEL_64;
    case 3u:
      v64 = v166;
      sub_1B4A6F9F8(v86, v166, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v118 = v180;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_47;
      }

      v93 = v86;
      v105 = &v86[v118];
      v106 = &v183;
      goto LABEL_41;
    case 4u:
      v64 = v168;
      sub_1B4A6F9F8(v86, v168, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v104 = v180;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_47;
      }

      v93 = v86;
      v105 = &v86[v104];
      v106 = &v184;
      goto LABEL_41;
    case 5u:
      v64 = v170;
      sub_1B4A6F9F8(v86, v170, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v130 = v180;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
LABEL_47:
        v117 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
        goto LABEL_69;
      }

      v93 = v86;
      v105 = &v86[v130];
      v106 = &v185;
LABEL_41:
      v114 = *(v106 - 32);
      sub_1B4A6F890(v105, v114, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
      if (sub_1B4A10A90(*v64, *v114))
      {
        v131 = *(v178 + 20);
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        if (sub_1B4D1816C())
        {
          v116 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
          goto LABEL_44;
        }
      }

      v132 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue;
      goto LABEL_63;
    case 6u:
      sub_1B4A6F9F8(v86, v67, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v134 = v180;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v135 = v153;
        sub_1B4A6F890(&v86[v134], v153, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v121 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v67, v135);
        v122 = v86;
        v123 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
        sub_1B4A6FA60(v135, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v124 = v67;
        goto LABEL_57;
      }

      v90 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      v91 = v67;
      goto LABEL_70;
    case 7u:
      sub_1B4A6F9F8(v86, v64, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v119 = v180;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v120 = v155;
        sub_1B4A6F890(&v86[v119], v155, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v121 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v64, v120);
        v122 = v86;
        v123 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
        sub_1B4A6FA60(v120, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v124 = v64;
        goto LABEL_57;
      }

      v117 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      goto LABEL_69;
    case 8u:
      sub_1B4A6F9F8(v86, v61, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v138 = v180;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v139 = v157;
        sub_1B4A6F890(&v86[v138], v157, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v121 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v61, v139);
        sub_1B4A6FA60(v139, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        sub_1B4A6FA60(v61, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        sub_1B4A6FA60(v86, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
        return v121 & 1;
      }

      v90 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      v91 = v61;
      goto LABEL_70;
    case 9u:
      v79 = v167;
      sub_1B4A6F9F8(v86, v167, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v108 = v180;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_58;
      }

      v102 = &v86[v108];
      v103 = v159;
      goto LABEL_55;
    case 0xAu:
      v79 = v169;
      sub_1B4A6F9F8(v86, v169, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v136 = v180;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_58;
      }

      v102 = &v86[v136];
      v103 = v160;
      goto LABEL_55;
    case 0xBu:
      v79 = v171;
      sub_1B4A6F9F8(v86, v171, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v101 = v180;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_58;
      }

      v102 = &v86[v101];
      v103 = v161;
      goto LABEL_55;
    case 0xCu:
      v79 = v172;
      sub_1B4A6F9F8(v86, v172, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v107 = v180;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_58;
      }

      v102 = &v86[v107];
      v103 = v162;
      goto LABEL_55;
    case 0xDu:
      v79 = v173;
      sub_1B4A6F9F8(v86, v173, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v133 = v180;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
LABEL_58:
        v137 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
        goto LABEL_59;
      }

      v102 = &v86[v133];
      v103 = v163;
LABEL_55:
      sub_1B4A6F890(v102, v103, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v121 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v79, v103);
      v129 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      goto LABEL_56;
    case 0xEu:
      v64 = v175;
      sub_1B4A6F9F8(v86, v175, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v96 = v180;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        v117 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
        goto LABEL_69;
      }

      v93 = v86;
      v97 = v165;
      sub_1B4A6F890(&v86[v96], v165, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      if (*v64 == *v97)
      {
        v98 = *(v146 + 20);
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        LOBYTE(v98) = sub_1B4D1816C();
        sub_1B4A6FA60(v97, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        if (v98)
        {
          v99 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
          v100 = v64;
          goto LABEL_46;
        }
      }

      else
      {
        sub_1B4A6FA60(v97, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      }

      v142 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
      v141 = v64;
      goto LABEL_65;
    case 0xFu:
      v64 = v176;
      sub_1B4A6F9F8(v86, v176, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v113 = v180;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_28;
      }

      v93 = v86;
      v94 = &v86[v113];
      v95 = &v181;
      goto LABEL_24;
    case 0x10u:
      v64 = v177;
      sub_1B4A6F9F8(v86, v177, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v92 = v180;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
LABEL_28:
        v117 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue;
LABEL_69:
        v90 = v117;
        v91 = v64;
        goto LABEL_70;
      }

      v93 = v86;
      v94 = &v86[v92];
      v95 = &v182;
LABEL_24:
      v114 = *(v95 - 32);
      sub_1B4A6F890(v94, v114, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      if ((sub_1B4A191CC(*v64, *v114) & 1) != 0 && v64[1] == v114[1])
      {
        v115 = *(v147 + 24);
        sub_1B4D17BCC();
        sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        if (sub_1B4D1816C())
        {
          v116 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue;
LABEL_44:
          v112 = v116;
          sub_1B4A6FA60(v114, v116);
          v100 = v64;
          goto LABEL_45;
        }
      }

      v132 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue;
LABEL_63:
      v140 = v132;
      sub_1B4A6FA60(v114, v132);
      v141 = v64;
      goto LABEL_64;
    case 0x11u:
      v79 = v174;
      sub_1B4A6F9F8(v86, v174, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v128 = v180;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        v137 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue;
LABEL_59:
        v90 = v137;
        v91 = v79;
        goto LABEL_70;
      }

      v103 = v164;
      sub_1B4A6F890(&v86[v128], v164, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);
      v121 = _s19FitnessIntelligence06Apple_a1_B30_WeeklyStatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v79, v103);
      v129 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue;
LABEL_56:
      v122 = v86;
      v123 = v129;
      sub_1B4A6FA60(v103, v129);
      v124 = v79;
LABEL_57:
      sub_1B4A6FA60(v124, v123);
      sub_1B4A6FA60(v122, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      return v121 & 1;
    default:
      sub_1B4A6F9F8(v86, v82, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v89 = v180;
      if (swift_getEnumCaseMultiPayload())
      {
        v90 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue;
        v91 = v82;
LABEL_70:
        sub_1B4A6FA60(v91, v90);
        sub_1B4975024(v86, &qword_1EB8A93C8, &qword_1B4D27AE0);
        goto LABEL_71;
      }

      v93 = v86;
      v144 = v148;
      sub_1B4A6F890(&v86[v89], v148, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      if ((sub_1B4A191CC(*v82, *v144) & 1) == 0 || v82[1] != v144[1] || (v145 = *(v147 + 24), sub_1B4D17BCC(), sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]), (sub_1B4D1816C() & 1) == 0))
      {
        v140 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue;
        sub_1B4A6FA60(v144, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
        v141 = v82;
LABEL_64:
        v142 = v140;
LABEL_65:
        sub_1B4A6FA60(v141, v142);
        sub_1B4A6FA60(v93, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
LABEL_71:
        v121 = 0;
        return v121 & 1;
      }

      v112 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue;
      sub_1B4A6FA60(v144, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      v100 = v82;
LABEL_45:
      v99 = v112;
LABEL_46:
      sub_1B4A6FA60(v100, v99);
      sub_1B4A6FA60(v93, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
      v121 = 1;
      return v121 & 1;
  }
}

uint64_t sub_1B4A97E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_set_51Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *a1;
  result = sub_1B4A1F5C0(*a2, *(a2 + 8), *(a2 + 16));
  *a2 = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = a5;
  return result;
}

void sub_1B4A991DC()
{
  sub_1B4A995FC(319, &qword_1EDC37970, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A992C8()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A99A04(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4A99A04(319, &qword_1EDC37890, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4A993DC()
{
  sub_1B4A99A04(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4A99A04(319, &qword_1EDC378E0, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B4D17BCC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4A994F0()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A995FC(319, qword_1EDC3B3E0, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4A995FC(319, qword_1EDC3C560, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4A995FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B4A99688()
{
  sub_1B4A995FC(319, &qword_1EB8A92C8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4A995FC(319, &qword_1EB8A92D0, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B4D17BCC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4A997F8()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A995FC(319, &qword_1EB8A92F8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A998E4()
{
  sub_1B4A995FC(319, &qword_1EDC37938, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A99A04(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B4A99A74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B4A99ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

void sub_1B4A99BDC()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A995FC(319, qword_1EDC3A6B0, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4A995FC(319, qword_1EDC3A760, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B4A99D00()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4A99DB0()
{
  sub_1B4A995FC(319, &qword_1EDC3BB88, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      sub_1B4A995FC(319, qword_1EDC3C950, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B4A99EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_221Tm);
}

uint64_t __swift_get_extra_inhabitant_index_221Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  v6 = sub_1B4D17BCC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1B4A99F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_222Tm);
}

uint64_t __swift_store_extra_inhabitant_index_222Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v7 = sub_1B4D17BCC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B4A9A070(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1B4A9A150()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A995FC(319, qword_1EDC3C950, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4A9A2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_1B4D17BCC();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B4A9A3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_196Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = sub_1B4D17BCC();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_197Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = sub_1B4D17BCC();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1B4A9A690()
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperties.records.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperties.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0) + 28);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.monthOfYear.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20));
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

uint64_t sub_1B4A9AA04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20));
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

uint64_t sub_1B4A9AA68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.monthOfYear.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.monthOfYear.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20);
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

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.clearMonthOfYear()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.dayOfWeek.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24));
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

uint64_t sub_1B4A9AC70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24));
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

uint64_t sub_1B4A9ACD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.dayOfWeek.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.dayOfWeek.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24);
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

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.clearDayOfWeek()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.hourOfDay.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 28));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.hourOfDay.setter(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.hourOfDay.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_1B4A3E3D4;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.clearHourOfDay()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.modalityKind.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32));
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

uint64_t sub_1B4A9B010@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32));
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

uint64_t sub_1B4A9B074(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.modalityKind.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.modalityKind.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32);
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

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.clearModalityKind()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.trainerIdentifiers.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4974FBC(v1 + *(v7 + 36), v6, &qword_1EB8A9540, &unk_1B4D27B00);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(v8 + 20);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A9540, &unk_1B4D27B00);
  }

  return result;
}

uint64_t sub_1B4A9B38C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4974FBC(a1 + *(v8 + 36), v7, &qword_1EB8A9540, &unk_1B4D27B00);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A9C0D4(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v11 = a2 + *(v9 + 20);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A9540, &unk_1B4D27B00);
  }

  return result;
}

uint64_t sub_1B4A9B4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 36);
  sub_1B4975024(a2 + v9, &qword_1EB8A9540, &unk_1B4D27B00);
  sub_1B4A9C0D4(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.trainerIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 36);
  sub_1B4975024(v1 + v3, &qword_1EB8A9540, &unk_1B4D27B00);
  sub_1B4A9C0D4(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.trainerIdentifiers.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 36);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A9540, &unk_1B4D27B00);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x1E69E7CC0];
    v17 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A9540, &unk_1B4D27B00);
    }
  }

  else
  {
    sub_1B4A9C0D4(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  }

  return sub_1B4A9B928;
}

BOOL Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.hasTrainerIdentifiers.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4974FBC(v0 + *(v5 + 36), v4, &qword_1EB8A9540, &unk_1B4D27B00);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A9540, &unk_1B4D27B00);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.clearTrainerIdentifiers()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 36);
  sub_1B4975024(v0 + v1, &qword_1EB8A9540, &unk_1B4D27B00);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a1 + v2[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = v2[9];
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.dayOfWeek.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.modalityKind.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.trainerIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v2;
  v3 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0) + 36);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.dimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(v1 + *(v7 + 28), v6, &qword_1EB8A7DC8, &qword_1B4D202B8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  }

  sub_1B4D17BBC();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (a1 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  v14 = v8[9];
  v15 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7DC8, &qword_1B4D202B8);
  }

  return result;
}

uint64_t sub_1B4A9C0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A9C13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v8 + 28), v7, &qword_1EB8A7DC8, &qword_1B4D202B8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A9C0D4(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  }

  sub_1B4D17BBC();
  v11 = (a2 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a2 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  v13 = a2 + v9[7];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = (a2 + v9[8]);
  *v14 = 0;
  v14[1] = 0;
  v15 = v9[9];
  v16 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7DC8, &qword_1B4D202B8);
  }

  return result;
}

uint64_t sub_1B4A9C310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 28);
  sub_1B4975024(a2 + v9, &qword_1EB8A7DC8, &qword_1B4D202B8);
  sub_1B4A9C0D4(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.dimensions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A7DC8, &qword_1B4D202B8);
  sub_1B4A9C0D4(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.dimensions.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7DC8, &qword_1B4D202B8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = (v14 + v9[8]);
    *v20 = 0;
    v20[1] = 0;
    v21 = v9[9];
    v22 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7DC8, &qword_1B4D202B8);
    }
  }

  else
  {
    sub_1B4A9C0D4(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  }

  return sub_1B4A9C778;
}

uint64_t sub_1B4A9C7B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A9C81C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.hasDimensions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(v0 + *(v5 + 28), v4, &qword_1EB8A7DC8, &qword_1B4D202B8);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A7DC8, &qword_1B4D202B8);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.clearDimensions()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 28);
  sub_1B4975024(v0 + v1, &qword_1EB8A7DC8, &qword_1B4D202B8);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.property.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(v1 + *(v7 + 32), v6, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7DB8, &unk_1B4D27B10);
  }

  return result;
}

uint64_t sub_1B4A9CB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v8 + 32), v7, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A9C0D4(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  }

  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7DB8, &unk_1B4D27B10);
  }

  return result;
}

uint64_t sub_1B4A9CD30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 32);
  sub_1B4975024(a2 + v9, &qword_1EB8A7DB8, &unk_1B4D27B10);
  sub_1B4A9C0D4(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.property.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A7DB8, &unk_1B4D27B10);
  sub_1B4A9C0D4(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.property.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7DB8, &unk_1B4D27B10);
    }
  }

  else
  {
    sub_1B4A9C0D4(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  }

  return sub_1B4A9D1CC;
}

BOOL Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.hasProperty.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(v0 + *(v5 + 32), v4, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A7DB8, &unk_1B4D27B10);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.clearProperty()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 32);
  sub_1B4975024(v0 + v1, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = &a1[v2[6]];
  sub_1B4D17BBC();
  v4 = v2[7];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[8];
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers.identifiers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1B4A9D5FC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A9D6B8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4A9D7B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A9D874(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4A9D954@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.trainerIdentifiers.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  }

  sub_1B4975024(v7, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  *a1 = MEMORY[0x1E69E7CC0];
  v9 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A9DB78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  }

  sub_1B4975024(v7, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  *a2 = MEMORY[0x1E69E7CC0];
  v9 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A9DCB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  sub_1B4975024(a2, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  sub_1B4A9C0D4(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}