uint64_t sub_1B4ABF6B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4ABF75C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v3 = a3 + *(a2(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveStreak.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  sub_1B4974FBC(v2, &v16 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v11 = &a1[v10[6]];
  sub_1B4D17BBC();
  v12 = v10[7];
  v13 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v14 = *(*(v13 - 8) + 56);
  v14(&a1[v12], 1, 1, v13);
  v14(&a1[v10[8]], 1, 1, v13);
  return (v14)(&a1[v10[9]], 1, 1, v13);
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveStreak.modify(void *a1))(uint64_t **a1, char a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v10 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A9A50, &qword_1B4D29F70);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4ABD53C(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      return sub_1B4ABFCE0;
    }

    sub_1B4AC9300(v9, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v16 = MEMORY[0x1E69E7CC0];
  *v13 = 0;
  *(v13 + 1) = v16;
  v17 = &v13[v10[6]];
  sub_1B4D17BBC();
  v18 = v10[7];
  v19 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v20 = *(*(v19 - 8) + 56);
  v20(&v13[v18], 1, 1, v19);
  v20(&v13[v10[8]], 1, 1, v19);
  v20(&v13[v10[9]], 1, 1, v19);
  return sub_1B4ABFCE0;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.exerciseStreak.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  sub_1B4974FBC(v2, &v16 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v12 = &a1[v11[6]];
  sub_1B4D17BBC();
  v13 = v11[7];
  v14 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v15 = *(*(v14 - 8) + 56);
  v15(&a1[v13], 1, 1, v14);
  v15(&a1[v11[8]], 1, 1, v14);
  return (v15)(&a1[v11[9]], 1, 1, v14);
}

void (*Apple_Fitness_Intelligence_RingsProperty.exerciseStreak.modify(void *a1))(uint64_t **a1, char a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v10 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A9A50, &qword_1B4D29F70);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v16 = MEMORY[0x1E69E7CC0];
    *v13 = 0;
    *(v13 + 1) = v16;
    v17 = &v13[v10[6]];
    sub_1B4D17BBC();
    v18 = v10[7];
    v19 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
    v20 = *(*(v19 - 8) + 56);
    v20(&v13[v18], 1, 1, v19);
    v20(&v13[v10[8]], 1, 1, v19);
    v20(&v13[v10[9]], 1, 1, v19);
    return sub_1B4AC01F8;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4AC9300(v9, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  return sub_1B4AC01F8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.standStreak.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  sub_1B4974FBC(v2, &v16 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v12 = &a1[v11[6]];
  sub_1B4D17BBC();
  v13 = v11[7];
  v14 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v15 = *(*(v14 - 8) + 56);
  v15(&a1[v13], 1, 1, v14);
  v15(&a1[v11[8]], 1, 1, v14);
  return (v15)(&a1[v11[9]], 1, 1, v14);
}

void (*Apple_Fitness_Intelligence_RingsProperty.standStreak.modify(void *a1))(uint64_t **a1, char a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v10 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A9A50, &qword_1B4D29F70);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v16 = MEMORY[0x1E69E7CC0];
    *v13 = 0;
    *(v13 + 1) = v16;
    v17 = &v13[v10[6]];
    sub_1B4D17BBC();
    v18 = v10[7];
    v19 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
    v20 = *(*(v19 - 8) + 56);
    v20(&v13[v18], 1, 1, v19);
    v20(&v13[v10[8]], 1, 1, v19);
    v20(&v13[v10[9]], 1, 1, v19);
    return sub_1B4AC0710;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B4AC9300(v9, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  return sub_1B4AC0710;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.allThreeRingsStreak.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  sub_1B4974FBC(v2, &v16 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v12 = &a1[v11[6]];
  sub_1B4D17BBC();
  v13 = v11[7];
  v14 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v15 = *(*(v14 - 8) + 56);
  v15(&a1[v13], 1, 1, v14);
  v15(&a1[v11[8]], 1, 1, v14);
  return (v15)(&a1[v11[9]], 1, 1, v14);
}

void (*Apple_Fitness_Intelligence_RingsProperty.allThreeRingsStreak.modify(void *a1))(uint64_t **a1, char a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v10 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A9A50, &qword_1B4D29F70);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v16 = MEMORY[0x1E69E7CC0];
    *v13 = 0;
    *(v13 + 1) = v16;
    v17 = &v13[v10[6]];
    sub_1B4D17BBC();
    v18 = v10[7];
    v19 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
    v20 = *(*(v19 - 8) + 56);
    v20(&v13[v18], 1, 1, v19);
    v20(&v13[v10[8]], 1, 1, v19);
    v20(&v13[v10[9]], 1, 1, v19);
    return sub_1B4AC0C28;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B4AC9300(v9, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  return sub_1B4AC0C28;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveRingStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveRingStatistics.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AC1028;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC1028;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveMinutesRingStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveMinutesRingStatistics.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AC1428;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC1428;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.exerciseRingStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.exerciseRingStatistics.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AC1828;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC1828;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.standRingStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.standRingStatistics.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AC1C28;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC1C28;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.stepsStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.stepsStatistics.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AC2028;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC2028;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.flightsStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.flightsStatistics.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AC2428;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC2428;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.distanceStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.distanceStatistics.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AC2828;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC2828;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveGoalAchievedCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC29DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_1B4ABD53C(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveGoalAchievedCount.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v12 = 0;
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4AC2D88;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4AC2D88;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.exerciseGoalAchievedCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC2F3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1B4ABD53C(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.exerciseGoalAchievedCount.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v12 = 0;
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4AC32E8;
  }

  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4AC32E8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.standGoalAchievedCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC349C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1B4ABD53C(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.standGoalAchievedCount.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v12 = 0;
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4AC3848;
  }

  if (swift_getEnumCaseMultiPayload() != 13)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4AC3848;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.allThreeRingsGoalAchievedCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC39FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1B4ABD53C(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.allThreeRingsGoalAchievedCount.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v12 = 0;
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4AC3DA8;
  }

  if (swift_getEnumCaseMultiPayload() != 14)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4AC3DA8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveGoalDelta.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveGoalDelta.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AC41A8;
  }

  if (swift_getEnumCaseMultiPayload() != 15)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC41A8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveMinutesGoalDelta.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveMinutesGoalDelta.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AC45A8;
  }

  if (swift_getEnumCaseMultiPayload() != 16)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC45A8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.exerciseGoalDelta.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.exerciseGoalDelta.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AC49A8;
  }

  if (swift_getEnumCaseMultiPayload() != 17)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC49A8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.standGoalDelta.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.standGoalDelta.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AC4DA8;
  }

  if (swift_getEnumCaseMultiPayload() != 18)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AC4DA8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.moveGoalMilestone.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v10;
  a1[2] = v10;
  v11 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0) + 28);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.moveGoalMilestone.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v15 = MEMORY[0x1E69E7CC0];
    *v12 = 0;
    v12[1] = v15;
    v12[2] = v15;
    v16 = v12 + *(v9 + 28);
    sub_1B4D17BBC();
    return sub_1B4AC51B0;
  }

  if (swift_getEnumCaseMultiPayload() != 19)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  return sub_1B4AC51B0;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.exerciseGoalMilestone.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v10;
  a1[2] = v10;
  v11 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0) + 28);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.exerciseGoalMilestone.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v15 = MEMORY[0x1E69E7CC0];
    *v12 = 0;
    v12[1] = v15;
    v12[2] = v15;
    v16 = v12 + *(v9 + 28);
    sub_1B4D17BBC();
    return sub_1B4AC55B8;
  }

  if (swift_getEnumCaseMultiPayload() != 20)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  return sub_1B4AC55B8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.standGoalMilestone.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v10;
  a1[2] = v10;
  v11 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0) + 28);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.standGoalMilestone.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v15 = MEMORY[0x1E69E7CC0];
    *v12 = 0;
    v12[1] = v15;
    v12[2] = v15;
    v16 = v12 + *(v9 + 28);
    sub_1B4D17BBC();
    return sub_1B4AC59C0;
  }

  if (swift_getEnumCaseMultiPayload() != 21)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  return sub_1B4AC59C0;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.allThreeRingsGoalMilestone.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v10;
  a1[2] = v10;
  v11 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0) + 28);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.allThreeRingsGoalMilestone.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    v15 = MEMORY[0x1E69E7CC0];
    *v12 = 0;
    v12[1] = v15;
    v12[2] = v15;
    v16 = v12 + *(v9 + 28);
    sub_1B4D17BBC();
    return sub_1B4AC5DC8;
  }

  if (swift_getEnumCaseMultiPayload() != 22)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  return sub_1B4AC5DC8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.highestDailyStepCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC5F84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      return sub_1B4ABD53C(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.highestDailyStepCount.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4AC6340;
  }

  if (swift_getEnumCaseMultiPayload() != 23)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  return sub_1B4AC6340;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.highestDailyDistance.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC64FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      return sub_1B4ABD53C(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_RingsProperty.highestDailyDistance.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4AC68B8;
  }

  if (swift_getEnumCaseMultiPayload() != 24)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  return sub_1B4AC68B8;
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.totalCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC6A6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A9A50, &qword_1B4D29F70);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A9A50, &qword_1B4D29F70);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      return sub_1B4ABD53C(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AC6BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = a5(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17 - v13;
  sub_1B4AC9298(a1, &v17 - v13, a6);
  sub_1B4975024(a2, &qword_1EB8A9A50, &qword_1B4D29F70);
  sub_1B4ABD53C(v14, a2, a7);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_1B4AC6D0C(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1B4975024(v2, &qword_1EB8A9A50, &qword_1B4D29F70);
  sub_1B4ABD53C(a1, v2, a2);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*Apple_Fitness_Intelligence_RingsProperty.totalCount.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_15:
    *v12 = 0;
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4AC6FE4;
  }

  if (swift_getEnumCaseMultiPayload() != 25)
  {
    sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4AC6FE4;
}

void sub_1B4AC7028(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_1B4AC9298((*a1)[3], v10, a5);
    sub_1B4975024(v13, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_1B4AC9300(v11, a6);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t static Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A12C0C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0) + 20);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AC72CC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A98F0);
  __swift_project_value_buffer(v0, qword_1EB8A98F0);
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

uint64_t Apple_Fitness_Intelligence_RingsProperties.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
        sub_1B4ADE840(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
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

uint64_t Apple_Fitness_Intelligence_RingsProperties.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E0C(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17E0C(), !v1))
    {
      if (!*(v0[2] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0), sub_1B4ADE840(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord), result = sub_1B4D17E5C(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0) + 28);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4AC77CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B60, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AC786C(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AC78D8()
{
  sub_1B4ADE840(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AC7974()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9908);
  __swift_project_value_buffer(v0, qword_1EB8A9908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "monthOfYear";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dayOfWeek";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "paused";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v1 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 28);
        sub_1B4D17C4C();
        break;
      case 2:
        v5 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24);
LABEL_10:
        v0 = 0;
        sub_1B4D17D0C();
        break;
      case 1:
        v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.traverse<A>(visitor:)()
{
  result = sub_1B4AC7D0C(v0);
  if (!v1)
  {
    sub_1B4AC7D84(v0);
    sub_1B4AC7DFC(v0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AC7D0C(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4AC7D84(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4AC7DFC(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4AC7EC0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4D17BBC();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_1B4AC7F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B58, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AC7FF4(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3B850, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AC8060()
{
  sub_1B4ADE840(qword_1EDC3B850, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AC80FC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9920);
  __swift_project_value_buffer(v0, qword_1EB8A9920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "monthOfYear";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dayOfWeek";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "paused";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
        sub_1B4ADE840(&qword_1EB8A7EC0, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);
        sub_1B4D17D3C();
      }

      else if (result == 2 || result == 1)
      {
        sub_1B4D17CDC();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_1B4D17E1C(), !v1))
  {
    if (!*(v0[1] + 16) || (result = sub_1B4D17E1C(), !v1))
    {
      if (!*(v0[2] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0), sub_1B4ADE840(&qword_1EB8A7EC0, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool), result = sub_1B4D17E5C(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0) + 28);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4AC8610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B50, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AC86B0(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3AAF8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AC871C()
{
  sub_1B4ADE840(qword_1EDC3AAF8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AC879C()
{
  result = MEMORY[0x1B8C7C620](0x616E6F6974704F2ELL, 0xED00006C6F6F426CLL);
  qword_1EB8A9938 = 0xD000000000000039;
  unk_1EB8A9940 = 0x80000001B4D61080;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool.decodeMessage<A>(decoder:)()
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
      v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0) + 20);
      sub_1B4D17C4C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool.traverse<A>(visitor:)()
{
  result = sub_1B4AC895C(v0);
  if (!v1)
  {
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AC895C(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
  if (*(a1 + *(result + 20)) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4AC8A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4D17BBC();
  *(a2 + *(a1 + 20)) = 2;
  return result;
}

uint64_t sub_1B4AC8AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B48, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AC8B4C(uint64_t a1)
{
  v2 = sub_1B4ADE840(&qword_1EB8A7EC0, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AC8BB8()
{
  sub_1B4ADE840(&qword_1EB8A7EC0, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AC8C54()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9960);
  __swift_project_value_buffer(v0, qword_1EB8A9960);
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

uint64_t sub_1B4AC8EC0()
{
  v0 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v4 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  result = (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  qword_1EDC3C1B8 = v3;
  return result;
}

uint64_t sub_1B4AC8F90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20[-v9];
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  swift_beginAccess();
  v15 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v15;
  swift_beginAccess();
  v16 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v16;
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v17, v10, &qword_1EB8A8F90, &unk_1B4D32490);
  swift_beginAccess();
  sub_1B49A205C(v10, v1 + v11, &qword_1EB8A8F90, &unk_1B4D32490);
  swift_endAccess();
  v18 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v18, v6, &qword_1EB8A8F88, &unk_1B4D29F50);

  swift_beginAccess();
  sub_1B49A205C(v6, v1 + v13, &qword_1EB8A8F88, &unk_1B4D29F50);
  swift_endAccess();
  return v1;
}

uint64_t sub_1B4AC9298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AC9300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4AC9400()
{
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions, &qword_1EB8A8F90, &unk_1B4D32490);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property, &qword_1EB8A8F88, &unk_1B4D29F50);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v0 + v2);
    v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    *(v1 + v2) = sub_1B4AC8F90(v6);
  }

  return sub_1B4AC953C();
}

uint64_t sub_1B4AC953C()
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
        sub_1B4AC9728();
      }

      else if (result == 4)
      {
        sub_1B4AC9804();
      }
    }

    else if (result == 1)
    {
      sub_1B4AC9620();
    }

    else if (result == 2)
    {
      sub_1B4AC96A4();
    }
  }

  return result;
}

uint64_t sub_1B4AC9620()
{
  swift_beginAccess();
  sub_1B4D17CCC();
  return swift_endAccess();
}

uint64_t sub_1B4AC96A4()
{
  swift_beginAccess();
  sub_1B4D17CCC();
  return swift_endAccess();
}

uint64_t sub_1B4AC9728()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  sub_1B4ADE840(qword_1EDC3B850, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4AC9804()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  sub_1B4ADE840(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  result = sub_1B4AC994C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AC994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    result = sub_1B4D17E0C();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 24))
  {
    v11 = v5;
    result = sub_1B4D17E0C();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v11 = v5;
  }

  result = sub_1B4AC9A34(a1, a2, a3, a4);
  if (!v11)
  {
    return sub_1B4AC9C5C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B4AC9A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8A8F90, &unk_1B4D32490);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8F90, &unk_1B4D32490);
  }

  sub_1B4ABD53C(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  sub_1B4ADE840(qword_1EDC3B850, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  sub_1B4D17E6C();
  return sub_1B4AC9300(v13, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
}

uint64_t sub_1B4AC9C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8A8F88, &unk_1B4D29F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8F88, &unk_1B4D29F50);
  }

  sub_1B4ABD53C(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  sub_1B4ADE840(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  sub_1B4D17E6C();
  return sub_1B4AC9300(v13, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
}

BOOL sub_1B4AC9E88(uint64_t a1, uint64_t a2)
{
  v54 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v53 = *(v54 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B68, &qword_1B4D2B400);
  v6 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v48 - v13;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v55 = *(v14 - 8);
  v15 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B70, &qword_1B4D2B408);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v48 - v27;
  swift_beginAccess();
  v29 = *(a1 + 16);
  swift_beginAccess();
  if (v29 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 24);
  swift_beginAccess();
  if (v30 != *(a2 + 24))
  {
    return 0;
  }

  v48 = v8;
  v56 = a2;
  v31 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v31, v28, &qword_1EB8A8F90, &unk_1B4D32490);
  v32 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  v33 = *(v18 + 48);
  sub_1B4974FBC(v28, v21, &qword_1EB8A8F90, &unk_1B4D32490);
  sub_1B4974FBC(v56 + v32, &v21[v33], &qword_1EB8A8F90, &unk_1B4D32490);
  v34 = *(v55 + 48);
  if (v34(v21, 1, v14) != 1)
  {
    sub_1B4974FBC(v21, v25, &qword_1EB8A8F90, &unk_1B4D32490);
    if (v34(&v21[v33], 1, v14) != 1)
    {
      sub_1B4ABD53C(&v21[v33], v17, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);

      v37 = _s19FitnessIntelligence06Apple_a1_B24_RingsPropertyDimensionsV2eeoiySbAC_ACtFZ_0(v25, v17);
      sub_1B4AC9300(v17, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
      sub_1B4975024(v28, &qword_1EB8A8F90, &unk_1B4D32490);
      sub_1B4AC9300(v25, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
      sub_1B4975024(v21, &qword_1EB8A8F90, &unk_1B4D32490);
      v36 = v48;
      if (v37)
      {
        goto LABEL_11;
      }

LABEL_9:

      return 0;
    }

    sub_1B4975024(v28, &qword_1EB8A8F90, &unk_1B4D32490);
    sub_1B4AC9300(v25, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
LABEL_8:
    sub_1B4975024(v21, &qword_1EB8A9B70, &qword_1B4D2B408);
    goto LABEL_9;
  }

  sub_1B4975024(v28, &qword_1EB8A8F90, &unk_1B4D32490);
  v35 = v34(&v21[v33], 1, v14);
  v36 = v48;
  if (v35 != 1)
  {
    goto LABEL_8;
  }

  sub_1B4975024(v21, &qword_1EB8A8F90, &unk_1B4D32490);
LABEL_11:
  v38 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  v39 = v52;
  sub_1B4974FBC(a1 + v38, v52, &qword_1EB8A8F88, &unk_1B4D29F50);
  v40 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  v41 = *(v51 + 48);
  sub_1B4974FBC(v39, v36, &qword_1EB8A8F88, &unk_1B4D29F50);
  sub_1B4974FBC(v56 + v40, v36 + v41, &qword_1EB8A8F88, &unk_1B4D29F50);
  v42 = *(v53 + 48);
  v43 = v54;
  if (v42(v36, 1, v54) == 1)
  {

    sub_1B4975024(v39, &qword_1EB8A8F88, &unk_1B4D29F50);
    if (v42(v36 + v41, 1, v43) == 1)
    {
      sub_1B4975024(v36, &qword_1EB8A8F88, &unk_1B4D29F50);
      return 1;
    }

    goto LABEL_16;
  }

  v44 = v50;
  sub_1B4974FBC(v36, v50, &qword_1EB8A8F88, &unk_1B4D29F50);
  if (v42(v36 + v41, 1, v43) == 1)
  {

    sub_1B4975024(v39, &qword_1EB8A8F88, &unk_1B4D29F50);
    sub_1B4AC9300(v44, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
LABEL_16:
    sub_1B4975024(v36, &qword_1EB8A9B68, &qword_1B4D2B400);
    return 0;
  }

  v46 = v49;
  sub_1B4ABD53C(v36 + v41, v49, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  v47 = _s19FitnessIntelligence06Apple_a1_B14_RingsPropertyV2eeoiySbAC_ACtFZ_0(v44, v46);

  sub_1B4AC9300(v46, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  sub_1B4975024(v39, &qword_1EB8A8F88, &unk_1B4D29F50);
  sub_1B4AC9300(v44, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  sub_1B4975024(v36, &qword_1EB8A8F88, &unk_1B4D29F50);
  return (v47 & 1) != 0;
}

uint64_t sub_1B4ACA760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = *(a1 + 20);
  if (qword_1EDC3C1B0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1EDC3C1B8;
}

uint64_t sub_1B4ACA824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B40, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACA8C4(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACA930()
{
  sub_1B4ADE840(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4ACA9CC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9978);
  __swift_project_value_buffer(v0, qword_1EB8A9978);
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

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.decodeMessage<A>(decoder:)()
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
        type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
        sub_1B4ADE840(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
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

    type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
    sub_1B4ADE840(qword_1EDC3B168, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);
    goto LABEL_12;
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E0C(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0), sub_1B4ADE840(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry), result = sub_1B4D17E5C(), !v1))
    {
      if (!*(v0[2] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0), sub_1B4ADE840(qword_1EDC3B168, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair), result = sub_1B4D17E5C(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0) + 28);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4ACAF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a3 = a2;
  a3[1] = v3;
  a3[2] = v3;
  v4 = a3 + *(a1 + 28);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4ACAFB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B38, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACB054(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACB0C0()
{
  sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry.decodeMessage<A>(decoder:)()
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
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E0C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0) + 20);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4ACB404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B30, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACB4A4(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACB510()
{
  sub_1B4ADE840(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4ACB58C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4ACB650(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B8C7C620](a2, a3);
  *a4 = 0xD000000000000036;
  *a5 = 0x80000001B4D610F0;
  return result;
}

uint64_t sub_1B4ACB6E4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A99C8);
  __swift_project_value_buffer(v0, qword_1EB8A99C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "count";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entry";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.decodeMessage<A>(decoder:)()
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
      sub_1B4ACB960();
    }
  }

  return result;
}

uint64_t sub_1B4ACB960()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0) + 24);
  type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  sub_1B4ADE840(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    result = sub_1B4ACBAB0(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0) + 20);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4ACBAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v14 + 24), v8, &qword_1EB8A7818, &unk_1B4D29F40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7818, &unk_1B4D29F40);
  }

  sub_1B4ABD53C(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  sub_1B4ADE840(qword_1EDC3B0C0, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  sub_1B4D17E6C();
  return sub_1B4AC9300(v13, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
}

uint64_t sub_1B4ACBD18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  sub_1B4D17BBC();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1B4ACBDF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B28, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACBE94(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3B168, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACBF00()
{
  sub_1B4ADE840(qword_1EDC3B168, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4ACBF9C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A99E0);
  __swift_project_value_buffer(v0, qword_1EB8A99E0);
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

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1B4D17CFC();
        break;
      case 2:
        sub_1B4ACC284();
        break;
      case 1:
        sub_1B4D17CCC();
        break;
    }
  }

  return result;
}

uint64_t sub_1B4ACC284()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  sub_1B4ADE840(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    result = sub_1B4ACC3F8(v3, a1, a2, a3);
    if (!v4)
    {
      if (v3[1])
      {
        sub_1B4D17E2C();
      }

      v9 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4ACC3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  sub_1B4974FBC(a1 + *(v14 + 28), v8, &qword_1EB8A7158, &unk_1B4D20310);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7158, &unk_1B4D20310);
  }

  sub_1B4ABD53C(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4ADE840(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4D17E6C();
  return sub_1B4AC9300(v13, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
}

uint64_t sub_1B4ACC65C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = &a2[*(a1 + 24)];
  sub_1B4D17BBC();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1B4ACC72C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B20, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACC7CC(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3B4E8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACC838()
{
  sub_1B4ADE840(qword_1EDC3B4E8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
        sub_1B4ADE840(qword_1EDC3AE18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
        sub_1B4D17D3C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0), sub_1B4ADE840(qword_1EDC3AE18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry), result = sub_1B4D17E5C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4ACCB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACCC08(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACCC74()
{
  sub_1B4ADE840(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4ACCCF0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B4A12C0C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4ACCD98()
{
  result = MEMORY[0x1B8C7C620](0x7972746E452ELL, 0xE600000000000000);
  qword_1EB8A9A10 = 0xD000000000000037;
  *algn_1EB8A9A18 = 0x80000001B4D61170;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4ACCED8(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4ACCED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a1;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B98, &unk_1B4D2B438);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v44 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v38 - v27;
  v42 = v5;
  v29 = *(v5 + 56);
  v45 = v4;
  v29(&v38 - v27, 1, 1, v4, v26);
  sub_1B4974FBC(v50, v13, &qword_1EB8A7E30, &unk_1B4D29F60);
  v39 = v15;
  v40 = v14;
  v30 = (*(v15 + 48))(v13, 1, v14);
  if (v30 == 1)
  {
    sub_1B4975024(v13, &qword_1EB8A7E30, &unk_1B4D29F60);
    v31 = v45;
  }

  else
  {
    sub_1B4ABD53C(v13, v21, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
    sub_1B4ABD53C(v21, v18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
    sub_1B4975024(v28, &qword_1EB8A9B98, &unk_1B4D2B438);
    v32 = v43;
    sub_1B4ABD53C(v18, v43, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    sub_1B4ABD53C(v32, v28, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    v31 = v45;
    (v29)(v28, 0, 1, v45);
  }

  sub_1B4ADE840(qword_1EDC3B4E8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  v33 = v46;
  sub_1B4D17D4C();
  v34 = v44;
  if (v33)
  {
    return sub_1B4975024(v28, &qword_1EB8A9B98, &unk_1B4D2B438);
  }

  sub_1B4974FBC(v28, v44, &qword_1EB8A9B98, &unk_1B4D2B438);
  if ((*(v42 + 48))(v34, 1, v31) == 1)
  {
    sub_1B4975024(v28, &qword_1EB8A9B98, &unk_1B4D2B438);
    return sub_1B4975024(v34, &qword_1EB8A9B98, &unk_1B4D2B438);
  }

  else
  {
    v36 = v41;
    sub_1B4ABD53C(v34, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    if (v30 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v28, &qword_1EB8A9B98, &unk_1B4D2B438);
    v37 = v50;
    sub_1B4975024(v50, &qword_1EB8A7E30, &unk_1B4D29F60);
    sub_1B4ABD53C(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    return (*(v39 + 56))(v37, 0, 1, v40);
  }
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4ACD49C(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4ACD49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A7E30, &unk_1B4D29F60);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7E30, &unk_1B4D29F60);
  }

  sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4ADE840(qword_1EDC3B4E8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4D17E6C();
  return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
}

uint64_t sub_1B4ACD758(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B10, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ACD7F8(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3AE18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ACD864()
{
  sub_1B4ADE840(qword_1EDC3AE18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4ACD900()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9A38);
  __swift_project_value_buffer(v0, qword_1EB8A9A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1B4D29F30;
  v4 = v57 + v3;
  v5 = v57 + v3 + v1[14];
  *(v57 + v3) = 1;
  *v5 = "moveStreak";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v57 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "exerciseStreak";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v57 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "standStreak";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v57 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "allThreeRingsStreak";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v57 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "moveRingStatistics";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v57 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "moveMinutesRingStatistics";
  *(v17 + 1) = 25;
  v17[16] = 2;
  v8();
  v18 = (v57 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "exerciseRingStatistics";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v57 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "standRingStatistics";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v57 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "stepsStatistics";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v57 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "flightsStatistics";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v8();
  v25 = (v57 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "distanceStatistics";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v8();
  v27 = (v57 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "moveGoalAchievedCount";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v8();
  v29 = (v57 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "exerciseGoalAchievedCount";
  *(v30 + 1) = 25;
  v30[16] = 2;
  v8();
  v31 = (v57 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "standGoalAchievedCount";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v8();
  v33 = (v57 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "allThreeRingsGoalAchievedCount";
  *(v34 + 1) = 30;
  v34[16] = 2;
  v8();
  v35 = (v57 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "moveGoalDelta";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v8();
  v37 = v57 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "moveMinutesGoalDelta";
  *(v37 + 8) = 20;
  *(v37 + 16) = 2;
  v8();
  v38 = (v57 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "exerciseGoalDelta";
  *(v39 + 1) = 17;
  v39[16] = 2;
  v8();
  v40 = (v57 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "standGoalDelta";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v8();
  v42 = (v57 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "moveGoalMilestone";
  *(v43 + 1) = 17;
  v43[16] = 2;
  v8();
  v44 = (v57 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "exerciseGoalMilestone";
  *(v45 + 1) = 21;
  v45[16] = 2;
  v8();
  v46 = (v57 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "standGoalMilestone";
  *(v47 + 1) = 18;
  v47[16] = 2;
  v8();
  v48 = (v57 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "allThreeRingsGoalMilestone";
  *(v49 + 1) = 26;
  v49[16] = 2;
  v8();
  v50 = (v57 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "highestDailyStepCount";
  *(v51 + 1) = 21;
  v51[16] = 2;
  v8();
  v52 = (v57 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "highestDailyDistance";
  *(v53 + 1) = 20;
  v53[16] = 2;
  v8();
  v54 = (v57 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "totalCount";
  *(v55 + 1) = 10;
  v55[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_1B4ACE3F8(v5, a1, a2, a3);
        break;
      case 2:
        sub_1B4ACE9A8(v5, a1, a2, a3);
        break;
      case 3:
        sub_1B4ACEF64(v5, a1, a2, a3);
        break;
      case 4:
        sub_1B4ACF520(v5, a1, a2, a3);
        break;
      case 5:
        sub_1B4ACFADC(v5, a1, a2, a3);
        break;
      case 6:
        sub_1B4AD0098(v5, a1, a2, a3);
        break;
      case 7:
        sub_1B4AD0654(v5, a1, a2, a3);
        break;
      case 8:
        sub_1B4AD0C10(v5, a1, a2, a3);
        break;
      case 9:
        sub_1B4AD11CC(v5, a1, a2, a3);
        break;
      case 10:
        sub_1B4AD1788(v5, a1, a2, a3);
        break;
      case 11:
        sub_1B4AD1D44(v5, a1, a2, a3);
        break;
      case 12:
        sub_1B4AD2300(v5, a1, a2, a3);
        break;
      case 13:
        sub_1B4AD28BC(v5, a1, a2, a3);
        break;
      case 14:
        sub_1B4AD2E78(v5, a1, a2, a3);
        break;
      case 15:
        sub_1B4AD3434(v5, a1, a2, a3);
        break;
      case 16:
        sub_1B4AD39F0(v5, a1, a2, a3);
        break;
      case 17:
        sub_1B4AD3FAC(v5, a1, a2, a3);
        break;
      case 18:
        sub_1B4AD4568(v5, a1, a2, a3);
        break;
      case 19:
        sub_1B4AD4B24(v5, a1, a2, a3);
        break;
      case 20:
        sub_1B4AD50E0(v5, a1, a2, a3);
        break;
      case 21:
        sub_1B4AD569C(v5, a1, a2, a3);
        break;
      case 22:
        sub_1B4AD5C58(v5, a1, a2, a3);
        break;
      case 23:
        sub_1B4AD6214(v5, a1, a2, a3);
        break;
      case 24:
        sub_1B4AD67D0(v5, a1, a2, a3);
        break;
      case 25:
        sub_1B4AD6D8C(v5, a1, a2, a3);
        break;
      case 26:
        sub_1B4AD7348(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B4ACE3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B80, &qword_1B4D2B418);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }

    else
    {
      sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
      v36 = v44;
      sub_1B4ABD53C(v19, v44, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9B80, &qword_1B4D2B418);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
    return sub_1B4975024(v37, &qword_1EB8A9B80, &qword_1B4D2B418);
  }

  else
  {
    v40 = v45;
    sub_1B4ABD53C(v37, v45, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4ACE9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B80, &qword_1B4D2B418);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9B80, &qword_1B4D2B418);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
    return sub_1B4975024(v37, &qword_1EB8A9B80, &qword_1B4D2B418);
  }

  else
  {
    v40 = v44;
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4ACEF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B80, &qword_1B4D2B418);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9B80, &qword_1B4D2B418);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
    return sub_1B4975024(v37, &qword_1EB8A9B80, &qword_1B4D2B418);
  }

  else
  {
    v40 = v44;
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4ACF520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B80, &qword_1B4D2B418);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9B80, &qword_1B4D2B418);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
    return sub_1B4975024(v37, &qword_1EB8A9B80, &qword_1B4D2B418);
  }

  else
  {
    v40 = v44;
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9B80, &qword_1B4D2B418);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4ACFADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD0098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD0654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD0C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD11CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD1788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD1D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD2300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD28BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD2E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD3434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD39F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD3FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD4568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD4B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD50E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B88, &qword_1B4D2B420);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9B88, &qword_1B4D2B420);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
    return sub_1B4975024(v37, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  else
  {
    v40 = v44;
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B88, &qword_1B4D2B420);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9B88, &qword_1B4D2B420);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
    return sub_1B4975024(v37, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  else
  {
    v40 = v44;
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD5C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B88, &qword_1B4D2B420);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9B88, &qword_1B4D2B420);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
    return sub_1B4975024(v37, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  else
  {
    v40 = v44;
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD6214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B88, &qword_1B4D2B420);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9B88, &qword_1B4D2B420);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
    return sub_1B4975024(v37, &qword_1EB8A9B88, &qword_1B4D2B420);
  }

  else
  {
    v40 = v44;
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9B88, &qword_1B4D2B420);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD67D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B90, &unk_1B4D2B428);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_1B4975024(v29, &qword_1EB8A9B90, &unk_1B4D2B428);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9B90, &unk_1B4D2B428);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9B90, &unk_1B4D2B428);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9B90, &unk_1B4D2B428);
    return sub_1B4975024(v37, &qword_1EB8A9B90, &unk_1B4D2B428);
  }

  else
  {
    v40 = v44;
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9B90, &unk_1B4D2B428);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD6D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B90, &unk_1B4D2B428);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_1B4975024(v29, &qword_1EB8A9B90, &unk_1B4D2B428);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A9B90, &unk_1B4D2B428);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A9B90, &unk_1B4D2B428);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A9B90, &unk_1B4D2B428);
    return sub_1B4975024(v37, &qword_1EB8A9B90, &unk_1B4D2B428);
  }

  else
  {
    v40 = v44;
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A9B90, &unk_1B4D2B428);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AD7348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A9A50, &qword_1B4D29F70);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A9A50, &qword_1B4D29F70);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4ABD53C(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    sub_1B4ABD53C(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
      v36 = v45;
      sub_1B4ABD53C(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4ABD53C(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4AC9300(v19, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
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
    sub_1B4ABD53C(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A9A50, &qword_1B4D29F70);
    sub_1B4ABD53C(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t Apple_Fitness_Intelligence_RingsProperty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  sub_1B4974FBC(v3, &v15 - v10, &qword_1EB8A9A50, &qword_1B4D29F70);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1B4AD8010(v3, a1, a2, a3);
        goto LABEL_35;
      case 2u:
        sub_1B4AD8248(v3, a1, a2, a3);
        goto LABEL_35;
      case 3u:
        sub_1B4AD8480(v3, a1, a2, a3);
        goto LABEL_35;
      case 4u:
        sub_1B4AD86B8(v3, a1, a2, a3);
        goto LABEL_35;
      case 5u:
        sub_1B4AD88F0(v3, a1, a2, a3);
        goto LABEL_35;
      case 6u:
        sub_1B4AD8B28(v3, a1, a2, a3);
        goto LABEL_35;
      case 7u:
        sub_1B4AD8D60(v3, a1, a2, a3);
        goto LABEL_35;
      case 8u:
        sub_1B4AD8F98(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 9u:
        sub_1B4AD91D0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0xAu:
        sub_1B4AD9408(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0xBu:
        sub_1B4AD9640(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0xCu:
        sub_1B4AD9878(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0xDu:
        sub_1B4AD9AB0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0xEu:
        sub_1B4AD9CE8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0xFu:
        sub_1B4AD9F20(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x10u:
        sub_1B4ADA158(v3, a1, a2, a3);
        if (v4)
        {
          return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
        }

        goto LABEL_7;
      case 0x11u:
        sub_1B4ADA390(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x12u:
        sub_1B4ADA5C8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x13u:
        sub_1B4ADA800(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x14u:
        sub_1B4ADAA38(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x15u:
        sub_1B4ADAC70(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x16u:
        sub_1B4ADAEA8(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x17u:
        sub_1B4ADB0E0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x18u:
        sub_1B4ADB318(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_7;
        }

        return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      case 0x19u:
        sub_1B4ADB550(v3, a1, a2, a3);
        if (v4)
        {
          return sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
        }

LABEL_7:
        sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
        break;
      default:
        sub_1B4AD7DDC(v3, a1, a2, a3);
LABEL_35:
        result = sub_1B4AC9300(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v14 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0) + 20);
  return sub_1B4D17BAC();
}

uint64_t sub_1B4AD7DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4ADE840(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD8010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4ADE840(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD8248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4ADE840(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD8480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4ADE840(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD86B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD88F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD8B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD8D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD8F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD91D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD9408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD9640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD9878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD9AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD9CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AD9F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADA158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADA390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADA5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 18)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4ADE840(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADA800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 19)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADAA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADAC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 21)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADAEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 22)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4ADE840(qword_1EDC3B018, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADB0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 23)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    sub_1B4ADE840(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADB318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 24)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    sub_1B4ADE840(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADB550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A9A50, &qword_1B4D29F70);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 25)
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4ADE840(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4ADB7D4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B4D18E8C();
  a1(0);
  sub_1B4ADE840(a2, a3);
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4ADB874@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4ADB934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4ADE840(&qword_1EB8A9B08, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4ADB9D4(uint64_t a1)
{
  v2 = sub_1B4ADE840(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4ADBA40()
{
  sub_1B4ADE840(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);

  return sub_1B4D17D9C();
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_RingsPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0 || (sub_1B4A0C158(a1[1], a2[1]) & 1) == 0 || (sub_1B4A15970(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0) + 28);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B31_RingsPropertyDimensionsFiltersV12OptionalBoolV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != 2)
  {
    if (v6 != 2 && ((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_7:
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B29_RingsBestMetricPropertyValueV5EntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E28, &unk_1B4D20320);
  v4 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v6 = (&v29 - v5);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E38, &unk_1B4D20330);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  v20 = *(v19 + 56);
  v31 = a1;
  sub_1B4974FBC(a1, &v29 - v17, &qword_1EB8A7E30, &unk_1B4D29F60);
  v32 = a2;
  sub_1B4974FBC(a2, &v18[v20], &qword_1EB8A7E30, &unk_1B4D29F60);
  v21 = *(v8 + 48);
  if (v21(v18, 1, v7) == 1)
  {
    if (v21(&v18[v20], 1, v7) == 1)
    {
      sub_1B4975024(v18, &qword_1EB8A7E30, &unk_1B4D29F60);
LABEL_9:
      v27 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0) + 20);
      sub_1B4D17BCC();
      sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v22 = sub_1B4D1816C();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v18, v14, &qword_1EB8A7E30, &unk_1B4D29F60);
  if (v21(&v18[v20], 1, v7) == 1)
  {
    sub_1B4AC9300(v14, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
LABEL_6:
    sub_1B4975024(v18, &qword_1EB8A7E38, &unk_1B4D20330);
    goto LABEL_7;
  }

  v23 = &v18[v20];
  v24 = v30;
  sub_1B4ABD53C(v23, v30, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  v25 = *(v29 + 48);
  sub_1B4AC9298(v14, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4AC9298(v24, v6 + v25, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  v26 = _s19FitnessIntelligence06Apple_a1_B26_RingsBestMeasurementEntryV2eeoiySbAC_ACtFZ_0(v6, v6 + v25);
  sub_1B4AC9300(v6 + v25, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4AC9300(v24, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4AC9300(v14, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4975024(v18, &qword_1EB8A7E30, &unk_1B4D29F60);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B28_RingsMilestonePropertyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || (sub_1B4A137D8(a1[1], a2[1]) & 1) == 0 || (sub_1B4A13A2C(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0) + 28);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B28_RingsMilestonePropertyValueV4PairV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E40, &qword_1B4D20340);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_10;
  }

  v27 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  v28 = a2;
  v17 = *(v27 + 24);
  v18 = *(v13 + 48);
  sub_1B4974FBC(a1 + v17, v16, &qword_1EB8A7818, &unk_1B4D29F40);
  sub_1B4974FBC(v28 + v17, &v16[v18], &qword_1EB8A7818, &unk_1B4D29F40);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1B4974FBC(v16, v12, &qword_1EB8A7818, &unk_1B4D29F40);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      sub_1B4ABD53C(&v16[v18], v8, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      if (*v12 == *v8)
      {
        v25 = *(v4 + 20);
        sub_1B4D17BCC();
        sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        v26 = sub_1B4D1816C();
        sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
        sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
        sub_1B4975024(v16, &qword_1EB8A7818, &unk_1B4D29F40);
        if (v26)
        {
          goto LABEL_5;
        }

LABEL_10:
        v21 = 0;
        return v21 & 1;
      }

      sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
      v22 = &qword_1EB8A7818;
      v23 = &unk_1B4D29F40;
LABEL_9:
      sub_1B4975024(v16, v22, v23);
      goto LABEL_10;
    }

    sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
LABEL_8:
    v22 = &qword_1EB8A7E40;
    v23 = &qword_1B4D20340;
    goto LABEL_9;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1B4975024(v16, &qword_1EB8A7818, &unk_1B4D29F40);
LABEL_5:
  v20 = *(v27 + 20);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v21 = sub_1B4D1816C();
  return v21 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B26_RingsBestMeasurementEntryV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E20, &unk_1B4D2B450);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_11;
  }

  v17 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v18 = *(v17 + 28);
  v19 = a1;
  v20 = *(v13 + 48);
  v26 = v17;
  v27 = v19;
  sub_1B4974FBC(v19 + v18, v16, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4974FBC(a2 + v18, &v16[v20], &qword_1EB8A7158, &unk_1B4D20310);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A7158, &unk_1B4D20310);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A7158, &unk_1B4D20310);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
LABEL_7:
    sub_1B4975024(v16, &qword_1EB8A7E20, &unk_1B4D2B450);
LABEL_11:
    v24 = 0;
    return v24 & 1;
  }

  sub_1B4ABD53C(&v16[v20], v8, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v22 = static Apple_Fitness_Intelligence_LocalizedDate.== infix(_:_:)(v12, v8);
  sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4975024(v16, &qword_1EB8A7158, &unk_1B4D20310);
  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (v27[1] != *(a2 + 8))
  {
    goto LABEL_11;
  }

  v23 = *(v26 + 24);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v24 = sub_1B4D1816C();
  return v24 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B24_RingsPropertyDimensionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
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
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 != 2)
  {
    if (v23 != 2 && ((v22 ^ v23) & 1) == 0)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (v23 != 2)
  {
    return 0;
  }

LABEL_25:
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_RingsPropertyRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_1B4AC9E88(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_RingsPropertiesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (sub_1B4A1A2C8(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0) + 28);
  sub_1B4D17BCC();
  sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_RingsPropertyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B78, &qword_1B4D2B410);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1B4974FBC(a1, &v24 - v15, &qword_1EB8A9A50, &qword_1B4D29F70);
  sub_1B4974FBC(a2, &v16[v18], &qword_1EB8A9A50, &qword_1B4D29F70);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A9A50, &qword_1B4D29F70);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0) + 20);
      sub_1B4D17BCC();
      sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A9A50, &qword_1B4D29F70);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8A9B78, &qword_1B4D2B410);
    goto LABEL_7;
  }

  sub_1B4ABD53C(&v16[v18], v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  v21 = _s19FitnessIntelligence06Apple_a1_B14_RingsPropertyV06OneOf_E4TypeO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_1B4AC9300(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  sub_1B4AC9300(v12, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  sub_1B4975024(v16, &qword_1EB8A9A50, &qword_1B4D29F70);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_RingsPropertyV06OneOf_E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v235 = a2;
  v236 = a1;
  v213 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  v2 = *(*(v213 - 8) + 64);
  MEMORY[0x1EEE9AC00](v213);
  v212 = &v186 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v211 = &v186 - v5;
  v186 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v6 = *(*(v186 - 8) + 64);
  MEMORY[0x1EEE9AC00](v186);
  v210 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v209 = &v186 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v208 = &v186 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v207 = &v186 - v13;
  v233 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v14 = *(*(v233 - 8) + 64);
  MEMORY[0x1EEE9AC00](v233);
  v206 = &v186 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v205 = &v186 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v204 = &v186 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v203 = &v186 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v202 = &v186 - v23;
  v24 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v201 = &v186 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v200 = &v186 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v199 = &v186 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v198 = &v186 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v197 = &v186 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v196 = &v186 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v195 = &v186 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v194 = &v186 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v193 = &v186 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v192 = &v186 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v191 = &v186 - v46;
  v47 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v190 = (&v186 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v50);
  v189 = (&v186 - v51);
  MEMORY[0x1EEE9AC00](v52);
  v188 = (&v186 - v53);
  MEMORY[0x1EEE9AC00](v54);
  v187 = (&v186 - v55);
  v234 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  v56 = *(*(v234 - 8) + 64);
  MEMORY[0x1EEE9AC00](v234);
  v232 = (&v186 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v58);
  v230 = (&v186 - v59);
  MEMORY[0x1EEE9AC00](v60);
  v228 = (&v186 - v61);
  MEMORY[0x1EEE9AC00](v62);
  v231 = (&v186 - v63);
  MEMORY[0x1EEE9AC00](v64);
  v229 = (&v186 - v65);
  MEMORY[0x1EEE9AC00](v66);
  v227 = (&v186 - v67);
  MEMORY[0x1EEE9AC00](v68);
  v226 = (&v186 - v69);
  MEMORY[0x1EEE9AC00](v70);
  v222 = (&v186 - v71);
  MEMORY[0x1EEE9AC00](v72);
  v220 = (&v186 - v73);
  MEMORY[0x1EEE9AC00](v74);
  v219 = (&v186 - v75);
  MEMORY[0x1EEE9AC00](v76);
  v218 = (&v186 - v77);
  MEMORY[0x1EEE9AC00](v78);
  v225 = (&v186 - v79);
  MEMORY[0x1EEE9AC00](v80);
  v224 = (&v186 - v81);
  MEMORY[0x1EEE9AC00](v82);
  v223 = (&v186 - v83);
  MEMORY[0x1EEE9AC00](v84);
  v221 = (&v186 - v85);
  MEMORY[0x1EEE9AC00](v86);
  v217 = (&v186 - v87);
  MEMORY[0x1EEE9AC00](v88);
  v216 = (&v186 - v89);
  MEMORY[0x1EEE9AC00](v90);
  v215 = (&v186 - v91);
  MEMORY[0x1EEE9AC00](v92);
  v214 = (&v186 - v93);
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v186 - v95;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v186 - v98;
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v186 - v101;
  MEMORY[0x1EEE9AC00](v103);
  v105 = (&v186 - v104);
  MEMORY[0x1EEE9AC00](v106);
  v108 = (&v186 - v107);
  MEMORY[0x1EEE9AC00](v109);
  v111 = (&v186 - v110);
  MEMORY[0x1EEE9AC00](v112);
  v114 = (&v186 - v113);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9BA0, &qword_1B4D2B448);
  v116 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115 - 8);
  v118 = &v186 - v117;
  v120 = *(v119 + 56);
  sub_1B4AC9298(v236, &v186 - v117, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  v236 = v120;
  sub_1B4AC9298(v235, &v118[v120], type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B4AC9298(v118, v111, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v151 = v236;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v152 = v188;
        sub_1B4ABD53C(&v118[v151], v188, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v134 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV2eeoiySbAC_ACtFZ_0(v111, v152);
        v135 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
        sub_1B4AC9300(v152, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v136 = v111;
        goto LABEL_56;
      }

      v122 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
      v123 = v111;
      goto LABEL_80;
    case 2u:
      sub_1B4AC9298(v118, v108, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v143 = v236;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v144 = v189;
        sub_1B4ABD53C(&v118[v143], v189, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v134 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV2eeoiySbAC_ACtFZ_0(v108, v144);
        v145 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
        goto LABEL_55;
      }

      v173 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
      goto LABEL_59;
    case 3u:
      sub_1B4AC9298(v118, v105, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v147 = v236;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v148 = v190;
        sub_1B4ABD53C(&v118[v147], v190, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v134 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV2eeoiySbAC_ACtFZ_0(v105, v148);
        sub_1B4AC9300(v148, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v136 = v105;
        v149 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
        goto LABEL_57;
      }

      v122 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
      v123 = v105;
      goto LABEL_80;
    case 4u:
      sub_1B4AC9298(v118, v102, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v132 = v236;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v133 = v191;
        sub_1B4ABD53C(&v118[v132], v191, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v134 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v102, v133);
        v135 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
        sub_1B4AC9300(v133, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v136 = v102;
        goto LABEL_56;
      }

      v122 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      v123 = v102;
      goto LABEL_80;
    case 5u:
      sub_1B4AC9298(v118, v99, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v157 = v236;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v158 = v192;
        sub_1B4ABD53C(&v118[v157], v192, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v134 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v99, v158);
        v135 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
        sub_1B4AC9300(v158, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v136 = v99;
        goto LABEL_56;
      }

      v122 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      v123 = v99;
      goto LABEL_80;
    case 6u:
      sub_1B4AC9298(v118, v96, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v168 = v236;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v169 = v193;
        sub_1B4ABD53C(&v118[v168], v193, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v134 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v96, v169);
        v135 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
        sub_1B4AC9300(v169, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v136 = v96;
        goto LABEL_56;
      }

      v122 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
      v123 = v96;
      goto LABEL_80;
    case 7u:
      v108 = v214;
      sub_1B4AC9298(v118, v214, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v150 = v236;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_58;
      }

      v125 = &v118[v150];
      v126 = &v226;
      goto LABEL_54;
    case 8u:
      v108 = v215;
      sub_1B4AC9298(v118, v215, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v172 = v236;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_58;
      }

      v125 = &v118[v172];
      v126 = &v227;
      goto LABEL_54;
    case 9u:
      v108 = v216;
      sub_1B4AC9298(v118, v216, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v138 = v236;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_58;
      }

      v125 = &v118[v138];
      v126 = &v228;
      goto LABEL_54;
    case 0xAu:
      v108 = v217;
      sub_1B4AC9298(v118, v217, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v171 = v236;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_58;
      }

      v125 = &v118[v171];
      v126 = &v229;
      goto LABEL_54;
    case 0xBu:
      v127 = v221;
      sub_1B4AC9298(v118, v221, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v131 = v236;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_43;
      }

      v129 = &v118[v131];
      v130 = &v234;
      goto LABEL_40;
    case 0xCu:
      v127 = v223;
      sub_1B4AC9298(v118, v223, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v137 = v236;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_43;
      }

      v129 = &v118[v137];
      v130 = &v235;
      goto LABEL_40;
    case 0xDu:
      v127 = v224;
      sub_1B4AC9298(v118, v224, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v160 = v236;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_43;
      }

      v129 = &v118[v160];
      v130 = &v236;
      goto LABEL_40;
    case 0xEu:
      v127 = v225;
      sub_1B4AC9298(v118, v225, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v128 = v236;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_43;
      }

      v129 = &v118[v128];
      v130 = &v237;
      goto LABEL_40;
    case 0xFu:
      v108 = v218;
      sub_1B4AC9298(v118, v218, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v146 = v236;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_58;
      }

      v125 = &v118[v146];
      v126 = &v230;
      goto LABEL_54;
    case 0x10u:
      v108 = v219;
      sub_1B4AC9298(v118, v219, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v124 = v236;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_58;
      }

      v125 = &v118[v124];
      v126 = &v231;
      goto LABEL_54;
    case 0x11u:
      v108 = v220;
      sub_1B4AC9298(v118, v220, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v153 = v236;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_58;
      }

      v125 = &v118[v153];
      v126 = &v232;
      goto LABEL_54;
    case 0x12u:
      v108 = v222;
      sub_1B4AC9298(v118, v222, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v170 = v236;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v125 = &v118[v170];
        v126 = &v233;
LABEL_54:
        v144 = *(v126 - 32);
        sub_1B4ABD53C(v125, v144, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v134 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v108, v144);
        v145 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
LABEL_55:
        v135 = v145;
        sub_1B4AC9300(v144, v145);
        v136 = v108;
        goto LABEL_56;
      }

LABEL_58:
      v173 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
LABEL_59:
      v122 = v173;
      v123 = v108;
      goto LABEL_80;
    case 0x13u:
      v127 = v226;
      sub_1B4AC9298(v118, v226, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v175 = v236;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_69;
      }

      v155 = &v118[v175];
      v156 = &v239;
      goto LABEL_64;
    case 0x14u:
      v127 = v227;
      sub_1B4AC9298(v118, v227, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v154 = v236;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_69;
      }

      v155 = &v118[v154];
      v156 = &v240;
      goto LABEL_64;
    case 0x15u:
      v127 = v229;
      sub_1B4AC9298(v118, v229, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v159 = v236;
      if (swift_getEnumCaseMultiPayload() != 21)
      {
        goto LABEL_69;
      }

      v155 = &v118[v159];
      v156 = &v241;
      goto LABEL_64;
    case 0x16u:
      v127 = v231;
      sub_1B4AC9298(v118, v231, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v174 = v236;
      if (swift_getEnumCaseMultiPayload() != 22)
      {
LABEL_69:
        v165 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue;
        goto LABEL_79;
      }

      v155 = &v118[v174];
      v156 = &v242;
LABEL_64:
      v176 = *(v156 - 32);
      sub_1B4ABD53C(v155, v176, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
      if (*v127 == *v176 && (sub_1B4A137D8(v127[1], v176[1]) & 1) != 0 && (sub_1B4A13A2C(v127[2], v176[2]) & 1) != 0)
      {
        v177 = *(v186 + 28);
        sub_1B4D17BCC();
        sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        if (sub_1B4D1816C())
        {
          v178 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue;
          goto LABEL_76;
        }
      }

      v179 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue;
      goto LABEL_82;
    case 0x17u:
      v127 = v228;
      sub_1B4AC9298(v118, v228, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v180 = v236;
      if (swift_getEnumCaseMultiPayload() != 23)
      {
        goto LABEL_78;
      }

      v141 = &v118[v180];
      v142 = &v243;
      goto LABEL_73;
    case 0x18u:
      v127 = v230;
      sub_1B4AC9298(v118, v230, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v140 = v236;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
LABEL_78:
        v165 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue;
        goto LABEL_79;
      }

      v141 = &v118[v140];
      v142 = &v244;
LABEL_73:
      v176 = *(v142 - 32);
      sub_1B4ABD53C(v141, v176, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      if (sub_1B4A12C0C(*v127, *v176))
      {
        v181 = *(v213 + 20);
        sub_1B4D17BCC();
        sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        if (sub_1B4D1816C())
        {
          v178 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue;
LABEL_76:
          v182 = v178;
          sub_1B4AC9300(v176, v178);
          v164 = v127;
          v163 = v182;
          goto LABEL_77;
        }
      }

      v179 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue;
LABEL_82:
      v183 = v179;
      sub_1B4AC9300(v176, v179);
      v167 = v127;
      v166 = v183;
      goto LABEL_83;
    case 0x19u:
      v127 = v232;
      sub_1B4AC9298(v118, v232, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v139 = v236;
      if (swift_getEnumCaseMultiPayload() != 25)
      {
LABEL_43:
        v165 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
LABEL_79:
        v122 = v165;
        v123 = v127;
        goto LABEL_80;
      }

      v129 = &v118[v139];
      v130 = &v238;
LABEL_40:
      v161 = *(v130 - 32);
      sub_1B4ABD53C(v129, v161, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      if (*v127 == *v161)
      {
        v162 = *(v233 + 20);
        sub_1B4D17BCC();
        sub_1B4ADE840(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
        LOBYTE(v162) = sub_1B4D1816C();
        sub_1B4AC9300(v161, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        if (v162)
        {
          v163 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
          v164 = v127;
LABEL_77:
          sub_1B4AC9300(v164, v163);
          sub_1B4AC9300(v118, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
          v134 = 1;
          return v134 & 1;
        }
      }

      else
      {
        sub_1B4AC9300(v161, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      }

      v166 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
      v167 = v127;
LABEL_83:
      sub_1B4AC9300(v167, v166);
      sub_1B4AC9300(v118, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      goto LABEL_84;
    default:
      sub_1B4AC9298(v118, v114, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      v121 = v236;
      if (swift_getEnumCaseMultiPayload())
      {
        v122 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
        v123 = v114;
LABEL_80:
        sub_1B4AC9300(v123, v122);
        sub_1B4975024(v118, &qword_1EB8A9BA0, &qword_1B4D2B448);
LABEL_84:
        v134 = 0;
      }

      else
      {
        v185 = v187;
        sub_1B4ABD53C(&v118[v121], v187, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v134 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV2eeoiySbAC_ACtFZ_0(v114, v185);
        v135 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue;
        sub_1B4AC9300(v185, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v136 = v114;
LABEL_56:
        v149 = v135;
LABEL_57:
        sub_1B4AC9300(v136, v149);
        sub_1B4AC9300(v118, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType);
      }

      return v134 & 1;
  }
}

uint64_t sub_1B4ADE840(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B4ADF630()
{
  sub_1B4ADF968(319, &qword_1EDC37978, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4ADF71C()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4ADF918(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4ADF918(319, &qword_1EDC3CEB0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4ADF828()
{
  sub_1B4ADF918(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4ADF968(319, &qword_1EDC3CBA8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool, MEMORY[0x1E69E62F8]);
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

void sub_1B4ADF918(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B4ADF968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B4ADF9F4()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4ADF918(319, &qword_1EDC3CEB0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4ADFAC4()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B4ADFB70()
{
  sub_1B4ADF968(319, &qword_1EDC37950, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4ADF968(319, &qword_1EDC37958, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair, MEMORY[0x1E69E62F8]);
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

void sub_1B4ADFCCC()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4ADF968(319, qword_1EDC3B078, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4ADFDB8()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4ADF968(319, qword_1EDC3C950, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}