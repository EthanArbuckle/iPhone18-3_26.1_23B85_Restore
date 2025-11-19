void (*Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.trainerIdentifiers.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
    *v12 = MEMORY[0x1E69E7CC0];
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
  }

  else
  {
    sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  }

  return sub_1B4A9DFE4;
}

uint64_t sub_1B4A9E104@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.count.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A6DC8, &unk_1B4D20350);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  sub_1B4975024(v7, &qword_1EB8A6DC8, &unk_1B4D20350);
  *a1 = 0;
  v9 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A9E33C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A6DC8, &unk_1B4D20350);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  sub_1B4975024(v7, &qword_1EB8A6DC8, &unk_1B4D20350);
  *a2 = 0;
  v9 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A9E474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A6DC8, &unk_1B4D20350);
  sub_1B4A9C0D4(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t sub_1B4A9E5B0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  sub_1B4975024(v5, a2, a3);
  sub_1B4A9C0D4(a1, v5, a4);
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v5, 0, 1, v9);
}

void (*Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.count.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6DC8, &unk_1B4D20350);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6DC8, &unk_1B4D20350);
    *v12 = 0;
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
  }

  else
  {
    sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  return sub_1B4A9E830;
}

void sub_1B4A9E86C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v15 = **a1;
  v14 = (*a1)[1];
  if (a2)
  {
    sub_1B4A9C7B4((*a1)[3], v12, a5);
    sub_1B4975024(v15, a3, a4);
    sub_1B4A9C0D4(v12, v15, a5);
    (*(v11 + 56))(v15, 0, 1, v10);
    sub_1B4A9C81C(v13, a6);
  }

  else
  {
    sub_1B4975024(**a1, a3, a4);
    sub_1B4A9C0D4(v13, v15, a5);
    (*(v11 + 56))(v15, 0, 1, v10);
  }

  free(v13);
  free(v12);
  free(v14);

  free(v9);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v1 + *(v7 + 20), v6, &qword_1EB8A6DB0, &unk_1B4D462F0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6DB0, &unk_1B4D462F0);
  }

  return result;
}

uint64_t sub_1B4A9EBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v8 + 20), v7, &qword_1EB8A6DB0, &unk_1B4D462F0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A9C0D4(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  }

  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6DB0, &unk_1B4D462F0);
  }

  return result;
}

uint64_t sub_1B4A9ED80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 20);
  sub_1B4975024(a2 + v9, &qword_1EB8A6DB0, &unk_1B4D462F0);
  sub_1B4A9C0D4(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A6DB0, &unk_1B4D462F0);
  sub_1B4A9C0D4(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.key.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6DB0, &unk_1B4D462F0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6DB0, &unk_1B4D462F0);
    }
  }

  else
  {
    sub_1B4A9C0D4(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  }

  return sub_1B4A9F1B0;
}

BOOL Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.hasKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v0 + *(v5 + 20), v4, &qword_1EB8A6DB0, &unk_1B4D462F0);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A6DB0, &unk_1B4D462F0);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.clearKey()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 20);
  sub_1B4975024(v0 + v1, &qword_1EB8A6DB0, &unk_1B4D462F0);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A9C0D4(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  }

  return result;
}

uint64_t sub_1B4A9F504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v8 + 24), v7, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A9C0D4(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  }

  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  }

  return result;
}

uint64_t sub_1B4A9F6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A9C7B4(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 24);
  sub_1B4975024(a2 + v9, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  sub_1B4A9C0D4(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.value.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  sub_1B4A9C0D4(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.value.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
    }
  }

  else
  {
    sub_1B4A9C0D4(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  }

  return sub_1B4A9FAD0;
}

void sub_1B4A9FB0C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
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
    sub_1B4A9C7B4(v12, v11, a5);
    sub_1B4975024(v15 + v10, a3, a4);
    sub_1B4A9C0D4(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_1B4A9C81C(v12, a6);
  }

  else
  {
    sub_1B4975024(v15 + v10, a3, a4);
    sub_1B4A9C0D4(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.hasValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v0 + *(v5 + 24), v4, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.clearValue()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 24);
  sub_1B4975024(v0 + v1, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0) + 24);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.bestWorkout.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4A9C0D4(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
    }

    sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v9 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0) + 24);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessPlusProperty.bestWorkout.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      return sub_1B4AA0324;
    }

    sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  *v12 = 0;
  v12[1] = 0;
  v12[2] = 0xE000000000000000;
  v15 = v12 + *(v9 + 24);
  sub_1B4D17BBC();
  return sub_1B4AA0324;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.averageHeartRate.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4A9C0D4(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessPlusProperty.averageHeartRate.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AA0710;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AA0710;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.calories.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4A9C0D4(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessPlusProperty.calories.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AA0AFC;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AA0AFC;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.duration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1B4A9C0D4(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessPlusProperty.duration.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4AA0EE8;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4AA0EE8;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.countByTrainer.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1B4A9C0D4(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    }

    sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0) + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AA1090@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1B4A9C0D4(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    }

    sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0) + 24);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_FitnessPlusProperty.countByTrainer.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = 0;
    v15 = v12 + *(v9 + 24);
    sub_1B4D17BBC();
    return sub_1B4AA144C;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
  return sub_1B4AA144C;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.count.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1B4A9C0D4(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AA15EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1B4A9C0D4(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AA175C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = a5(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15 - v11;
  sub_1B4A9C7B4(a1, &v15 - v11, a6);
  sub_1B4975024(a2, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  sub_1B4A9C0D4(v12, a2, a6);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
}

uint64_t sub_1B4AA1888(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1B4975024(v2, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  sub_1B4A9C0D4(a1, v2, a2);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*Apple_Fitness_Intelligence_FitnessPlusProperty.count.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8) - 8) + 64);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
LABEL_15:
    *v12 = 0;
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4AA1B60;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4AA1B60;
}

void sub_1B4AA1B90(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v12 = **a1;
  v11 = (*a1)[1];
  if (a2)
  {
    sub_1B4A9C7B4((*a1)[3], v9, a3);
    sub_1B4975024(v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v9, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
    sub_1B4A9C81C(v10, a5);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v10, v12, a3);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(v12, 0, 1, v7);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v6);
}

uint64_t static Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A0F598(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0) + 24);
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.catalogIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.catalogIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.modalityKind.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.modalityKind.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_1B4AA1F6C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4AA2008(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = 0;
  a1[4] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0) + 28);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AA2138()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A93E0);
  __swift_project_value_buffer(v0, qword_1EB8A93E0);
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

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperties.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
        sub_1B4AADC88(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
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

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperties.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E0C(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17E0C(), !v1))
    {
      if (!*(v0[2] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0), sub_1B4AADC88(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord), result = sub_1B4D17E5C(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0) + 28);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4AA2638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96D0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA26D8(uint64_t a1)
{
  v2 = sub_1B4AADC88(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA2744()
{
  sub_1B4AADC88(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 20);
LABEL_3:
        v0 = 0;
        sub_1B4D17D0C();
      }

      else if (result == 2)
      {
        v4 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v5 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 28);
          sub_1B4D17CBC();
          break;
        case 4:
          v1 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 32);
          goto LABEL_3;
        case 5:
          sub_1B4AA2934();
          break;
      }
    }
  }
}

uint64_t sub_1B4AA2934()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0) + 36);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  sub_1B4AADC88(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4AA2AA0(v3);
  if (!v4)
  {
    sub_1B4AA2B18(v3);
    sub_1B4AA2B90(v3);
    sub_1B4AA2C08(v3);
    sub_1B4AA2C80(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AA2AA0(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4AA2B18(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4AA2B90(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1B4D17E0C();
  }

  return result;
}

uint64_t sub_1B4AA2C08(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4AA2C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4974FBC(a1 + *(v14 + 36), v8, &qword_1EB8A9540, &unk_1B4D27B00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A9540, &unk_1B4D27B00);
  }

  sub_1B4A9C0D4(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  sub_1B4AADC88(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
}

uint64_t sub_1B4AA2EE8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *(v8 + 8) = 1;
  *v8 = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[9];
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v10, 1, 1, v11);
}

uint64_t sub_1B4AA2FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA307C(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA30E8()
{
  sub_1B4AADC88(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA3190(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B4D1CBF0;
  v7 = v19 + v6;
  v8 = v19 + v6 + v4[14];
  *(v19 + v6) = 1;
  *v8 = "monthOfYear";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_1B4D17E7C();
  v11 = *(*(v10 - 8) + 104);
  (v11)(v8, v9, v10);
  v12 = v7 + v5 + v4[14];
  *(v7 + v5) = 2;
  *v12 = "dayOfWeek";
  *(v12 + 8) = 9;
  *(v12 + 16) = 2;
  v11();
  v13 = (v7 + 2 * v5);
  v14 = v13 + v4[14];
  *v13 = 3;
  *v14 = "hourOfDay";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v11();
  v15 = (v7 + 3 * v5);
  v16 = v15 + v4[14];
  *v15 = 4;
  *v16 = "modalityKind";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v11();
  v17 = v7 + 4 * v5 + v4[14];
  *(v7 + 4 * v5) = 5;
  *v17 = "trainerIdentifiers";
  *(v17 + 8) = 18;
  *(v17 + 16) = 2;
  v11();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.decodeMessage<A>(decoder:)()
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
LABEL_4:
          sub_1B4D17CDC();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1B4D17C7C();
            break;
          case 4:
            goto LABEL_4;
          case 5:
            type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
            sub_1B4AADC88(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
            sub_1B4D17D3C();
            break;
        }
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_1B4D17E1C(), !v1))
  {
    if (!*(v0[1] + 16) || (result = sub_1B4D17E1C(), !v1))
    {
      if (!*(v0[2] + 16) || (result = sub_1B4D17DBC(), !v1))
      {
        if (!*(v0[3] + 16) || (result = sub_1B4D17E1C(), !v1))
        {
          if (!*(v0[4] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0), sub_1B4AADC88(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers), result = sub_1B4D17E5C(), !v1))
          {
            v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0) + 36);
            return sub_1B4D17BAC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4AA3740@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v2;
  a2[2] = v2;
  a2[3] = v2;
  a2[4] = v2;
  v3 = a2 + *(a1 + 36);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AA37C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96C0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA3860(uint64_t a1)
{
  v2 = sub_1B4AADC88(qword_1EDC39B80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA38CC()
{
  sub_1B4AADC88(qword_1EDC39B80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA3968()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9428);
  __swift_project_value_buffer(v0, qword_1EB8A9428);
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

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.decodeMessage<A>(decoder:)()
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
        sub_1B4AA3CA0();
      }

      else if (result == 4)
      {
        sub_1B4AA3D54();
      }
    }

    else if (result == 1 || result == 2)
    {
      sub_1B4D17CCC();
    }
  }

  return result;
}

uint64_t sub_1B4AA3CA0()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 28);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  sub_1B4AADC88(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4AA3D54()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 32);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  sub_1B4AADC88(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertyRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      result = sub_1B4AA3EDC(v3, a1, a2, a3);
      if (!v4)
      {
        sub_1B4AA40F8(v3, a1, a2, a3);
        v9 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0) + 24);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4AA3EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v14 + 28), v8, &qword_1EB8A7DC8, &qword_1B4D202B8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7DC8, &qword_1B4D202B8);
  }

  sub_1B4A9C0D4(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  sub_1B4AADC88(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
}

uint64_t sub_1B4AA40F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v14 + 32), v8, &qword_1EB8A7DB8, &unk_1B4D27B10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7DB8, &unk_1B4D27B10);
  }

  sub_1B4A9C0D4(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  sub_1B4AADC88(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
}

uint64_t sub_1B4AA4360@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = &a2[a1[6]];
  sub_1B4D17BBC();
  v5 = a1[7];
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_1B4AA447C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96B8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA451C(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA4588()
{
  sub_1B4AADC88(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA46BC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3(0) + 20);
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AA47EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA488C(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA48F8()
{
  sub_1B4AADC88(&qword_1EB8A9560, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA4990()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9458);
  __swift_project_value_buffer(v0, qword_1EB8A9458);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pairs";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "missed";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
        sub_1B4AADC88(&qword_1EB8A6DA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);
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

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0), sub_1B4AADC88(&qword_1EB8A6DA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair), result = sub_1B4D17E5C(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17E0C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4AA4E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96A8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA4EB0(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6D98, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA4F1C()
{
  sub_1B4AADC88(&qword_1EB8A6D98, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA4F98(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B4A0F598(*a1, *a2) & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AA5050()
{
  result = MEMORY[0x1B8C7C620](0xD000000000000013, 0x80000001B4D60D00);
  qword_1EB8A9470 = 0xD00000000000003DLL;
  *algn_1EB8A9478 = 0x80000001B4D60C10;
  return result;
}

uint64_t sub_1B4AA5128()
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
      sub_1B4D17CDC();
    }
  }

  return result;
}

uint64_t sub_1B4AA51C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (result = sub_1B4D17E1C(), !v5))
  {
    v8 = v4 + *(a4(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AA52E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A96A0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA5384(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6DD8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA53F0()
{
  sub_1B4AADC88(&qword_1EB8A6DD8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA546C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AA55C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a1;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A96E8, &qword_1B4D28FF0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v44 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v38 - v27;
  v42 = v5;
  v29 = *(v5 + 56);
  v45 = v4;
  v29(&v38 - v27, 1, 1, v4, v26);
  sub_1B4974FBC(v50, v13, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v39 = v15;
  v40 = v14;
  v30 = (*(v15 + 48))(v13, 1, v14);
  if (v30 == 1)
  {
    sub_1B4975024(v13, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
    v31 = v45;
  }

  else
  {
    sub_1B4A9C0D4(v13, v21, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
    sub_1B4A9C0D4(v21, v18, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
    sub_1B4975024(v28, &qword_1EB8A96E8, &qword_1B4D28FF0);
    v32 = v43;
    sub_1B4A9C0D4(v18, v43, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    sub_1B4A9C0D4(v32, v28, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    v31 = v45;
    (v29)(v28, 0, 1, v45);
  }

  sub_1B4AADC88(&qword_1EB8A6DD8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  v33 = v46;
  sub_1B4D17D4C();
  v34 = v44;
  if (v33)
  {
    return sub_1B4975024(v28, &qword_1EB8A96E8, &qword_1B4D28FF0);
  }

  sub_1B4974FBC(v28, v44, &qword_1EB8A96E8, &qword_1B4D28FF0);
  if ((*(v42 + 48))(v34, 1, v31) == 1)
  {
    sub_1B4975024(v28, &qword_1EB8A96E8, &qword_1B4D28FF0);
    return sub_1B4975024(v34, &qword_1EB8A96E8, &qword_1B4D28FF0);
  }

  else
  {
    v36 = v41;
    sub_1B4A9C0D4(v34, v41, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    if (v30 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v28, &qword_1EB8A96E8, &qword_1B4D28FF0);
    v37 = v50;
    sub_1B4975024(v50, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
    sub_1B4A9C0D4(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    return (*(v39 + 56))(v37, 0, 1, v40);
  }
}

uint64_t sub_1B4AA5B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  }

  sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  sub_1B4AADC88(&qword_1EB8A6DD8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
}

uint64_t sub_1B4AA5E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A9698, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA5EA8(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6DA8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA5F14()
{
  sub_1B4AADC88(&qword_1EB8A6DA8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA6044(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v7, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4AA60C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v50 = a1;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A93A0, &qword_1B4D27A98);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v44 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v38 - v27;
  v42 = v5;
  v29 = *(v5 + 56);
  v45 = v4;
  v29(&v38 - v27, 1, 1, v4, v26);
  sub_1B4974FBC(v50, v13, &qword_1EB8A6DC8, &unk_1B4D20350);
  v39 = v15;
  v40 = v14;
  v30 = (*(v15 + 48))(v13, 1, v14);
  if (v30 == 1)
  {
    sub_1B4975024(v13, &qword_1EB8A6DC8, &unk_1B4D20350);
    v31 = v45;
  }

  else
  {
    sub_1B4A9C0D4(v13, v21, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
    sub_1B4A9C0D4(v21, v18, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
    sub_1B4975024(v28, &qword_1EB8A93A0, &qword_1B4D27A98);
    v32 = v43;
    sub_1B4A9C0D4(v18, v43, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4A9C0D4(v32, v28, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    v31 = v45;
    (v29)(v28, 0, 1, v45);
  }

  sub_1B4AADC88(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  v33 = v46;
  sub_1B4D17D4C();
  v34 = v44;
  if (v33)
  {
    return sub_1B4975024(v28, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  sub_1B4974FBC(v28, v44, &qword_1EB8A93A0, &qword_1B4D27A98);
  if ((*(v42 + 48))(v34, 1, v31) == 1)
  {
    sub_1B4975024(v28, &qword_1EB8A93A0, &qword_1B4D27A98);
    return sub_1B4975024(v34, &qword_1EB8A93A0, &qword_1B4D27A98);
  }

  else
  {
    v36 = v41;
    sub_1B4A9C0D4(v34, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v30 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v28, &qword_1EB8A93A0, &qword_1B4D27A98);
    v37 = v50;
    sub_1B4975024(v50, &qword_1EB8A6DC8, &unk_1B4D20350);
    sub_1B4A9C0D4(v36, v37, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    return (*(v39 + 56))(v37, 0, 1, v40);
  }
}

uint64_t sub_1B4AA6654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = v5 + *(a5(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AA66DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A6DC8, &unk_1B4D20350);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6DC8, &unk_1B4D20350);
  }

  sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4AADC88(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
}

uint64_t sub_1B4AA6940@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AA6A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A9690, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA6AAC(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6DB8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA6B18()
{
  sub_1B4AADC88(&qword_1EB8A6DB8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA6BB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1B8C7C620](a2, a3);
  *a4 = 0xD00000000000003DLL;
  *a5 = 0x80000001B4D60C10;
  return result;
}

uint64_t sub_1B4AA6C4C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A94F8);
  __swift_project_value_buffer(v0, qword_1EB8A94F8);
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

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.decodeMessage<A>(decoder:)()
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
      sub_1B4AA6ECC();
    }

    else if (result == 2)
    {
      sub_1B4AA6F80();
    }
  }

  return result;
}

uint64_t sub_1B4AA6ECC()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 20);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  sub_1B4AADC88(&qword_1EB8A6DA8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4AA6F80()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0) + 24);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  sub_1B4AADC88(&qword_1EB8A6DB8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4AA70A4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1B4AA72C0(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AA70A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v14 + 20), v8, &qword_1EB8A6DB0, &unk_1B4D462F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6DB0, &unk_1B4D462F0);
  }

  sub_1B4A9C0D4(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  sub_1B4AADC88(&qword_1EB8A6DA8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
}

uint64_t sub_1B4AA72C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v14 + 24), v8, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  }

  sub_1B4A9C0D4(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  sub_1B4AADC88(&qword_1EB8A6DB8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  sub_1B4D17E6C();
  return sub_1B4A9C81C(v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
}

uint64_t sub_1B4AA7528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1B4AA7644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A9688, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AA76E4(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6DA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AA7750()
{
  sub_1B4AADC88(&qword_1EB8A6DA0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AA77EC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9510);
  __swift_project_value_buffer(v0, qword_1EB8A9510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B4D223E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "bestWorkout";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B4D17E7C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "averageHeartRate";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "calories";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "duration";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "countByTrainer";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "count";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_1B4AA8D24(v5, a1, a2, a3);
          break;
        case 5:
          sub_1B4AA92E0(v5, a1, a2, a3);
          break;
        case 6:
          sub_1B4AA989C(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_1B4AA7BFC(v5, a1, a2, a3);
          break;
        case 2:
          sub_1B4AA81AC(v5, a1, a2, a3);
          break;
        case 3:
          sub_1B4AA8768(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1B4AA7BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A96D8, &unk_1B4D28FB0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A9C0D4(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    sub_1B4A9C0D4(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B4A9C81C(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      v34 = v49;
    }

    else
    {
      sub_1B4975024(v29, &qword_1EB8A96D8, &unk_1B4D28FB0);
      v36 = v44;
      sub_1B4A9C0D4(v19, v44, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      sub_1B4A9C0D4(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }
  }

  v37 = v47;
  sub_1B4AADC88(&qword_1EB8A6DE0, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A96D8, &unk_1B4D28FB0);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A96D8, &unk_1B4D28FB0);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A96D8, &unk_1B4D28FB0);
    return sub_1B4975024(v37, &qword_1EB8A96D8, &unk_1B4D28FB0);
  }

  else
  {
    v40 = v45;
    sub_1B4A9C0D4(v37, v45, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A96D8, &unk_1B4D28FB0);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AA81AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A9C0D4(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    sub_1B4A9C0D4(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4A9C0D4(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A9C0D4(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A9C81C(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4AADC88(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4A9C0D4(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AA8768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A9C0D4(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    sub_1B4A9C0D4(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4A9C0D4(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A9C0D4(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A9C81C(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4AADC88(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4A9C0D4(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AA8D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A9C0D4(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    sub_1B4A9C0D4(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
      v36 = v45;
      sub_1B4A9C0D4(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      sub_1B4A9C0D4(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A9C81C(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4AADC88(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
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
    sub_1B4A9C0D4(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A69A0, &qword_1B4D27A90);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AA92E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v50 = a2;
  v51 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A96E0, &unk_1B4D28FC0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A9C0D4(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    sub_1B4A9C0D4(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B4975024(v29, &qword_1EB8A96E0, &unk_1B4D28FC0);
      v36 = v45;
      sub_1B4A9C0D4(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
      sub_1B4A9C0D4(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A9C81C(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4AADC88(&qword_1EB8A6D98, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
  v38 = v48;
  sub_1B4D17D4C();
  if (v38)
  {
    return sub_1B4975024(v29, &qword_1EB8A96E0, &unk_1B4D28FC0);
  }

  sub_1B4974FBC(v29, v37, &qword_1EB8A96E0, &unk_1B4D28FC0);
  if ((*(v46 + 48))(v37, 1, v34) == 1)
  {
    sub_1B4975024(v29, &qword_1EB8A96E0, &unk_1B4D28FC0);
    return sub_1B4975024(v37, &qword_1EB8A96E0, &unk_1B4D28FC0);
  }

  else
  {
    v40 = v44;
    sub_1B4A9C0D4(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A96E0, &unk_1B4D28FC0);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t sub_1B4AA989C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
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
  sub_1B4974FBC(a1, v14, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v42 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_1B4975024(v14, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    v34 = v49;
    v35 = v15;
  }

  else
  {
    sub_1B4A9C0D4(v14, v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    sub_1B4A9C0D4(v22, v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    v35 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
      v36 = v45;
      sub_1B4A9C0D4(v19, v45, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      sub_1B4A9C0D4(v36, v29, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      v34 = v49;
      v32(v29, 0, 1, v49);
    }

    else
    {
      sub_1B4A9C81C(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      v34 = v49;
    }
  }

  v37 = v47;
  sub_1B4AADC88(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
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
    sub_1B4A9C0D4(v37, v44, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v33 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v29, &qword_1EB8A93A0, &qword_1B4D27A98);
    v41 = v43;
    sub_1B4975024(v43, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    sub_1B4A9C0D4(v40, v41, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    return (*(v42 + 56))(v41, 0, 1, v35);
  }
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusProperty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - v10;
  sub_1B4974FBC(v3, &v16 - v10, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_14;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B4AAA718(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1B4AAA950(v3, a1, a2, a3);
    }

    else
    {
      sub_1B4AAAB88(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4AAA2A8(v3, a1, a2, a3);
    }

    else
    {
      sub_1B4AAA4E0(v3, a1, a2, a3);
    }
  }

  else
  {
    sub_1B4AAA074(v3, a1, a2, a3);
  }

  result = sub_1B4A9C81C(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  if (!v4)
  {
LABEL_14:
    v15 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AAA074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
    sub_1B4AADC88(&qword_1EB8A6DE0, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
  }

  result = sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AAA2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4AADC88(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AAA4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4AADC88(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AAA718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4AADC88(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  result = sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AAA950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    sub_1B4AADC88(&qword_1EB8A6D98, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
  }

  result = sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AAAB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4974FBC(a1, v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A6D38, &qword_1B4D1BCB8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1B4A9C0D4(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4AADC88(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4D17E6C();
    return sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  result = sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  __break(1u);
  return result;
}

uint64_t sub_1B4AAAE70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A9680, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AAAF10(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AAAF7C()
{
  sub_1B4AADC88(&qword_1EB8A6D30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AAB018()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9528);
  __swift_project_value_buffer(v0, qword_1EB8A9528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "catalogIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trainers";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "modalityKind";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_1B4D17CDC();
        break;
      case 1:
LABEL_8:
        sub_1B4D17D1C();
        break;
    }
  }
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1B4D17E3C(), !v1))
  {
    if (!*(v0[2] + 16) || (result = sub_1B4D17E1C(), !v1))
    {
      v6 = v0[4];
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v0[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v7 || (result = sub_1B4D17E3C(), !v1))
      {
        v8 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0) + 28);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4AAB420(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B4D18E8C();
  a1(0);
  sub_1B4AADC88(a2, a3);
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AAB4A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = 0;
  a2[4] = 0xE000000000000000;
  v2 = a2 + *(a1 + 28);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AAB52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AADC88(&qword_1EB8A9678, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AAB5CC(uint64_t a1)
{
  v2 = sub_1B4AADC88(&qword_1EB8A6A80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AAB638()
{
  sub_1B4AADC88(&qword_1EB8A6A80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout);

  return sub_1B4D17D9C();
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV4PairV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v43 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E58, &unk_1B4D28FD0);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v43 - v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DB0, &unk_1B4D462F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E70, &unk_1B4D20380);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  v46 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair(0);
  v25 = *(v46 + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  sub_1B4974FBC(a1 + v25, v24, &qword_1EB8A6DB0, &unk_1B4D462F0);
  sub_1B4974FBC(v52 + v25, &v24[v26], &qword_1EB8A6DB0, &unk_1B4D462F0);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) != 1)
  {
    sub_1B4974FBC(v24, v19, &qword_1EB8A6DB0, &unk_1B4D462F0);
    if (v27(&v24[v26], 1, v11) != 1)
    {
      sub_1B4A9C0D4(&v24[v26], v15, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
      v31 = _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV3KeyV2eeoiySbAE_AEtFZ_0(v19, v15);
      sub_1B4A9C81C(v15, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
      sub_1B4A9C81C(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
      sub_1B4975024(v24, &qword_1EB8A6DB0, &unk_1B4D462F0);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1B4A9C81C(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key);
LABEL_6:
    v28 = &qword_1EB8A7E70;
    v29 = &unk_1B4D20380;
    v30 = v24;
LABEL_14:
    sub_1B4975024(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_1B4975024(v24, &qword_1EB8A6DB0, &unk_1B4D462F0);
LABEL_8:
  v32 = *(v46 + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  sub_1B4974FBC(v51 + v32, v50, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  sub_1B4974FBC(v52 + v32, v34 + v33, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      sub_1B4975024(v34, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
LABEL_18:
      sub_1B4D17BCC();
      sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v38 = sub_1B4D1816C();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  sub_1B4974FBC(v34, v45, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    sub_1B4A9C81C(v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
LABEL_13:
    v28 = &qword_1EB8A7E58;
    v29 = &unk_1B4D28FD0;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  sub_1B4A9C0D4(v40, v44, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  v42 = _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV0G0V2eeoiySbAE_AEtFZ_0(v37, v41);
  sub_1B4A9C81C(v41, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  sub_1B4A9C81C(v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value);
  sub_1B4975024(v34, &qword_1EB8A6DC0, &unk_1B4D1BDD0);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV3KeyV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E68, &unk_1B4D20370);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1B4974FBC(a1, &v24 - v15, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  sub_1B4974FBC(a2, &v16[v18], &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key(0) + 20);
      sub_1B4D17BCC();
      sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8A7E68, &unk_1B4D20370);
    goto LABEL_7;
  }

  sub_1B4A9C0D4(&v16[v18], v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
  v21 = _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV3KeyV06OneOf_H4TypeO2eeoiySbAG_AGtFZ_0(v12, v8);
  sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
  sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
  sub_1B4975024(v16, &qword_1EB8A6DD0, &unk_1B4D1BDE0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV3KeyV06OneOf_H4TypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E60, &unk_1B4D20360);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v16 = *(v15 + 56);
  sub_1B4A9C7B4(a1, &v20 - v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
  sub_1B4A9C7B4(a2, &v14[v16], type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key.OneOf_KeyType);
  sub_1B4A9C0D4(v14, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  sub_1B4A9C0D4(&v14[v16], v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  if (sub_1B4A0C158(*v10, *v7))
  {
    v17 = *(v4 + 20);
    sub_1B4D17BCC();
    sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v18 = sub_1B4D1816C();
    sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    if (v18)
    {
      return 1;
    }
  }

  else
  {
    sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
    sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers);
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV0G0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DC8, &unk_1B4D20350);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E50, &unk_1B4D28FE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1B4974FBC(a1, &v24 - v15, &qword_1EB8A6DC8, &unk_1B4D20350);
  sub_1B4974FBC(a2, &v16[v18], &qword_1EB8A6DC8, &unk_1B4D20350);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A6DC8, &unk_1B4D20350);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value(0) + 20);
      sub_1B4D17BCC();
      sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A6DC8, &unk_1B4D20350);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8A7E50, &unk_1B4D28FE0);
    goto LABEL_7;
  }

  sub_1B4A9C0D4(&v16[v18], v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
  v21 = _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV0G0V06OneOf_G4TypeO2eeoiySbAG_AGtFZ_0(v12, v8);
  sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4975024(v16, &qword_1EB8A6DC8, &unk_1B4D20350);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A27PlusDictionaryPropertyValueV0G0V06OneOf_G4TypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E48, &qword_1B4D20348);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v16 = *(v15 + 56);
  sub_1B4A9C7B4(a1, &v20 - v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4A9C7B4(a2, &v14[v16], type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value.OneOf_ValueType);
  sub_1B4A9C0D4(v14, v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4A9C0D4(&v14[v16], v7, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  if (*v10 == *v7)
  {
    v17 = *(v4 + 20);
    sub_1B4D17BCC();
    sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v18 = sub_1B4D1816C();
    sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    if (v18)
    {
      return 1;
    }
  }

  else
  {
    sub_1B4A9C81C(v7, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4A9C81C(v10, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A18PlusPropertyRecordV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v49 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC0, &qword_1B4D202B0);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v13 = &v49 - v12;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD0, &unk_1B4D202C0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v49 - v25;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_17;
  }

  v51 = v13;
  v49 = v7;
  v50 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  v27 = *(v50 + 28);
  v28 = *(v23 + 48);
  v52 = a1;
  sub_1B4974FBC(a1 + v27, v26, &qword_1EB8A7DC8, &qword_1B4D202B8);
  v29 = a2 + v27;
  v30 = a2;
  sub_1B4974FBC(v29, &v26[v28], &qword_1EB8A7DC8, &qword_1B4D202B8);
  v31 = *(v15 + 48);
  if (v31(v26, 1, v14) != 1)
  {
    sub_1B4974FBC(v26, v22, &qword_1EB8A7DC8, &qword_1B4D202B8);
    if (v31(&v26[v28], 1, v14) != 1)
    {
      sub_1B4A9C0D4(&v26[v28], v18, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      v35 = _s19FitnessIntelligence06Apple_a1_b1_A22PlusPropertyDimensionsV2eeoiySbAC_ACtFZ_0(v22, v18);
      sub_1B4A9C81C(v18, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      sub_1B4A9C81C(v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
      sub_1B4975024(v26, &qword_1EB8A7DC8, &qword_1B4D202B8);
      if ((v35 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    sub_1B4A9C81C(v22, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
LABEL_8:
    v32 = &qword_1EB8A7DD0;
    v33 = &unk_1B4D202C0;
    v34 = v26;
LABEL_16:
    sub_1B4975024(v34, v32, v33);
    goto LABEL_17;
  }

  if (v31(&v26[v28], 1, v14) != 1)
  {
    goto LABEL_8;
  }

  sub_1B4975024(v26, &qword_1EB8A7DC8, &qword_1B4D202B8);
LABEL_10:
  v37 = v50;
  v36 = v51;
  v38 = *(v50 + 32);
  v39 = *(v54 + 48);
  sub_1B4974FBC(v52 + v38, v51, &qword_1EB8A7DB8, &unk_1B4D27B10);
  sub_1B4974FBC(v30 + v38, v36 + v39, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v40 = v56;
  v41 = *(v55 + 48);
  if (v41(v36, 1, v56) == 1)
  {
    if (v41(v36 + v39, 1, v40) == 1)
    {
      sub_1B4975024(v36, &qword_1EB8A7DB8, &unk_1B4D27B10);
LABEL_20:
      v48 = *(v37 + 24);
      sub_1B4D17BCC();
      sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v43 = sub_1B4D1816C();
      return v43 & 1;
    }

    goto LABEL_15;
  }

  v42 = v53;
  sub_1B4974FBC(v36, v53, &qword_1EB8A7DB8, &unk_1B4D27B10);
  if (v41(v36 + v39, 1, v40) == 1)
  {
    sub_1B4A9C81C(v42, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
LABEL_15:
    v32 = &qword_1EB8A7DC0;
    v33 = &qword_1B4D202B0;
    v34 = v36;
    goto LABEL_16;
  }

  v45 = v36 + v39;
  v46 = v49;
  sub_1B4A9C0D4(v45, v49, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  v47 = _s19FitnessIntelligence06Apple_a1_b1_A12PlusPropertyV2eeoiySbAC_ACtFZ_0(v42, v46);
  sub_1B4A9C81C(v46, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  sub_1B4A9C81C(v42, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  sub_1B4975024(v36, &qword_1EB8A7DB8, &unk_1B4D27B10);
  if (v47)
  {
    goto LABEL_20;
  }

LABEL_17:
  v43 = 0;
  return v43 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A14PlusPropertiesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (sub_1B4A0E980(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0) + 28);
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A12PlusPropertyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D38, &qword_1B4D1BCB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB0, &unk_1B4D202A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_1B4974FBC(a1, &v24 - v15, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  sub_1B4974FBC(a2, &v16[v18], &qword_1EB8A6D38, &qword_1B4D1BCB8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A6D38, &qword_1B4D1BCB8);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0) + 20);
      sub_1B4D17BCC();
      sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v20 = sub_1B4D1816C();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8A7DB0, &unk_1B4D202A0);
    goto LABEL_7;
  }

  sub_1B4A9C0D4(&v16[v18], v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  v21 = _s19FitnessIntelligence06Apple_a1_b1_A12PlusPropertyV06OneOf_E4TypeO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  sub_1B4975024(v16, &qword_1EB8A6D38, &qword_1B4D1BCB8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A12PlusPropertyV06OneOf_E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v73 = a2;
  v65 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v2 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v70 = (&v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(0);
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v69 = (&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  v64 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  v14 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v71 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v62 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v62 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v62 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v62 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v62 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A96F8, &qword_1B4D29000);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v62 - v36;
  v39 = *(v38 + 56);
  sub_1B4A9C7B4(v72, &v62 - v36, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  sub_1B4A9C7B4(v73, &v37[v39], type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B4A9C7B4(v37, v24, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v49 = v68;
        sub_1B4A9C0D4(&v37[v39], v68, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v41 = static Apple_Fitness_Intelligence_StatisticsPropertyValue.== infix(_:_:)(v24, v49);
        sub_1B4A9C81C(v49, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v42 = v24;
        goto LABEL_19;
      }

      v55 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1B4A9C7B4(v37, v21, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          v47 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue;
          v48 = v21;
          goto LABEL_30;
        }

        v43 = v69;
        sub_1B4A9C0D4(&v37[v39], v69, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
        if ((sub_1B4A0F598(*v21, *v43) & 1) != 0 && v21[1] == v43[1])
        {
          v44 = *(v63 + 24);
          sub_1B4D17BCC();
          sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
          if (sub_1B4D1816C())
          {
            v45 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue;
            sub_1B4A9C81C(v43, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
            v46 = v21;
LABEL_38:
            v54 = v45;
            goto LABEL_39;
          }
        }

        v56 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue;
        sub_1B4A9C81C(v43, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue);
        v57 = v21;
        goto LABEL_41;
      }

      v24 = v71;
      sub_1B4A9C7B4(v37, v71, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v51 = v70;
        sub_1B4A9C0D4(&v37[v39], v70, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        if (*v24 == *v51)
        {
          v52 = *(v65 + 20);
          sub_1B4D17BCC();
          sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
          v53 = sub_1B4D1816C();
          sub_1B4A9C81C(v51, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
          if (v53)
          {
            v54 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
            v46 = v24;
LABEL_39:
            sub_1B4A9C81C(v46, v54);
            sub_1B4A9C81C(v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
            v41 = 1;
            return v41 & 1;
          }
        }

        else
        {
          sub_1B4A9C81C(v51, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        }

        v60 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
        v57 = v24;
LABEL_44:
        sub_1B4A9C81C(v57, v60);
        sub_1B4A9C81C(v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
        goto LABEL_45;
      }

      v55 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue;
    }

    v47 = v55;
    v48 = v24;
    goto LABEL_30;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B4A9C7B4(v37, v33, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    if (swift_getEnumCaseMultiPayload())
    {
      v47 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue;
      v48 = v33;
LABEL_30:
      sub_1B4A9C81C(v48, v47);
      sub_1B4975024(v37, &qword_1EB8A96F8, &qword_1B4D29000);
LABEL_45:
      v41 = 0;
      return v41 & 1;
    }

    v58 = v66;
    sub_1B4A9C0D4(&v37[v39], v66, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
    if (*v33 == *v58 && (*(v33 + 1) == *(v58 + 8) && *(v33 + 2) == *(v58 + 16) || (sub_1B4D18DCC() & 1) != 0))
    {
      v59 = *(v64 + 24);
      sub_1B4D17BCC();
      sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      if (sub_1B4D1816C())
      {
        v45 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue;
        sub_1B4A9C81C(v58, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
        v46 = v33;
        goto LABEL_38;
      }
    }

    v56 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue;
    sub_1B4A9C81C(v58, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);
    v57 = v33;
LABEL_41:
    v60 = v56;
    goto LABEL_44;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1B4A9C7B4(v37, v27, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v50 = v67;
      sub_1B4A9C0D4(&v37[v39], v67, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v41 = static Apple_Fitness_Intelligence_StatisticsPropertyValue.== infix(_:_:)(v27, v50);
      sub_1B4A9C81C(v50, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
      v42 = v27;
      goto LABEL_19;
    }

    v47 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
    v48 = v27;
    goto LABEL_30;
  }

  sub_1B4A9C7B4(v37, v30, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v47 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue;
    v48 = v30;
    goto LABEL_30;
  }

  sub_1B4A9C0D4(&v37[v39], v13, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v41 = static Apple_Fitness_Intelligence_StatisticsPropertyValue.== infix(_:_:)(v30, v13);
  sub_1B4A9C81C(v13, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v42 = v30;
LABEL_19:
  sub_1B4A9C81C(v42, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4A9C81C(v37, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType);
  return v41 & 1;
}

uint64_t sub_1B4AADC88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A22PlusPropertyDimensionsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9540, &unk_1B4D27B00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v57 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A96F0, &qword_1B4D28FF8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - v15;
  v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_40;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_1B4D18DCC();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_40;
  }

  v26 = v17[6];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_40;
    }

    if (*v27 != *v29 || v28 != v30)
    {
      v32 = v17;
      v33 = sub_1B4D18DCC();
      v17 = v32;
      if ((v33 & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  else if (v30)
  {
    goto LABEL_40;
  }

  v34 = v17[7];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 8);
  if (v36)
  {
    if (!v38)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v38) = 1;
    }

    if (v38)
    {
      goto LABEL_40;
    }
  }

  v39 = v17[8];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (!v41)
  {
    if (!v43)
    {
      goto LABEL_32;
    }

LABEL_40:
    v51 = 0;
    return v51 & 1;
  }

  if (!v43)
  {
    goto LABEL_40;
  }

  if (*v40 != *v42 || v41 != v43)
  {
    v44 = v17;
    v45 = sub_1B4D18DCC();
    v17 = v44;
    if ((v45 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_32:
  v46 = v17[9];
  v47 = *(v13 + 48);
  sub_1B4974FBC(a1 + v46, v16, &qword_1EB8A9540, &unk_1B4D27B00);
  v48 = a2 + v46;
  v49 = v47;
  sub_1B4974FBC(v48, &v16[v47], &qword_1EB8A9540, &unk_1B4D27B00);
  v50 = *(v5 + 48);
  if (v50(v16, 1, v4) == 1)
  {
    if (v50(&v16[v49], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A9540, &unk_1B4D27B00);
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A9540, &unk_1B4D27B00);
  if (v50(&v16[v49], 1, v4) == 1)
  {
    sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
LABEL_38:
    v52 = &qword_1EB8A96F0;
    v53 = &qword_1B4D28FF8;
LABEL_39:
    sub_1B4975024(v16, v52, v53);
    goto LABEL_40;
  }

  sub_1B4A9C0D4(&v16[v49], v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  if ((sub_1B4A0C158(*v12, *v8) & 1) == 0)
  {
    sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
    v52 = &qword_1EB8A9540;
    v53 = &unk_1B4D27B00;
    goto LABEL_39;
  }

  v55 = *(v4 + 20);
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v56 = sub_1B4D1816C();
  sub_1B4A9C81C(v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  sub_1B4A9C81C(v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers);
  sub_1B4975024(v16, &qword_1EB8A9540, &unk_1B4D27B00);
  if ((v56 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_35:
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v51 = sub_1B4D1816C();
  return v51 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A29PlusPropertyDimensionsFiltersV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A0C158(*a1, *a2) & 1) == 0 || (sub_1B4A0C158(a1[1], a2[1]) & 1) == 0 || (sub_1B4A0A164(a1[2], a2[2]) & 1) == 0 || (sub_1B4A0C158(a1[3], a2[3]) & 1) == 0 || (sub_1B4A0E6CC(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0) + 36);
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_b1_A18PlusCatalogWorkoutV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B4A0C158(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v5 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusCatalogWorkout(0) + 28);
  sub_1B4D17BCC();
  sub_1B4AADC88(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

void sub_1B4AAF178()
{
  sub_1B4AAF394(319, &qword_1EDC37930, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4AAF264()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4AAF550(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4AAF550(319, &qword_1EDC37890, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B4AAF394(319, qword_1EDC3A020, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4AAF394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B4AAF420()
{
  sub_1B4AAF550(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4AAF550(319, &qword_1EDC378E0, MEMORY[0x1E69E7360], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B4AAF394(319, &qword_1EDC37928, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1B4D17BCC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4AAF550(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B4AAF5C8()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4AAF394(319, qword_1EDC3A0B8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4AAF394(319, qword_1EDC3A358, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4AAF724()
{
  sub_1B4AAF394(319, &qword_1EDC37920, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Pair, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4AAF808()
{
  sub_1B4AAF550(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4AAF8F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, j____swift_get_extra_inhabitant_index_287Tm_0);
}

uint64_t sub_1B4AAF950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.TrainerIdentifiers(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, j____swift_store_extra_inhabitant_index_288Tm_0);
}

void sub_1B4AAFA18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B4AAF394(319, a4, a5, MEMORY[0x1E69E6720]);
  if (v5 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4AAFAB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1B495F6EC);
}

uint64_t sub_1B4AAFB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1B495F764);
}

uint64_t sub_1B4AAFB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1B4AAFC60()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4AAF394(319, qword_1EDC39D10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Key, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4AAF394(319, qword_1EDC39EE0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue.Value, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B4AAFDA4()
{
  result = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusDictionaryPropertyValue(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1B4AAFE6C()
{
  sub_1B4AAF550(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.accumulatedStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  sub_1B4974FBC(v1 + *(v7 + 28), v6, &qword_1EB8A69A0, &qword_1B4D27A90);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4AB86FC(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v10 = a1 + *(v8 + 40);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.accumulatedStatistics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A69A0, &qword_1B4D27A90);
  sub_1B4AB86FC(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_LocalizedDate.timeZone.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40));
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

uint64_t Apple_Fitness_Intelligence_LocalizedDate.timeZone.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_LocalizedDate.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a1 + *(v2 + 36);
  result = sub_1B4D17BBC();
  v5 = (a1 + *(v2 + 40));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_CountPropertyValue.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t static Apple_Fitness_Intelligence_CountPropertyValue.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t Apple_Fitness_Intelligence_StatisticsPropertyValue.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v3 = a1 + *(v2 + 40);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v4 = &a1[*(v3 + 24)];
  sub_1B4D17BBC();
  v5 = *(v3 + 28);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a1[v5], 1, 1, v6);
}

uint64_t Apple_Fitness_Intelligence_MaxPropertyValue.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0) + 24);
  return sub_1B4D17BBC();
}

uint64_t static Apple_Fitness_Intelligence_MaxPropertyValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0) + 24);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.bestStreak.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(v1 + *(v7 + 28), v6, &qword_1EB8A97F8, &qword_1B4D29008);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4AB86FC(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  *a1 = 0u;
  a1[1] = 0u;
  v10 = a1 + *(v8 + 32);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  return result;
}

uint64_t sub_1B4AB08D0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(a1 + *(v8 + 28), v7, &qword_1EB8A97F8, &qword_1B4D29008);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4AB86FC(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  *a2 = 0u;
  a2[1] = 0u;
  v11 = a2 + *(v9 + 32);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  return result;
}

uint64_t sub_1B4AB0A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AB8764(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 28);
  sub_1B4975024(a2 + v9, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4AB86FC(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.bestStreak.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4AB86FC(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.Streak.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  *a1 = 0u;
  a1[1] = 0u;
  v3 = a1 + *(v2 + 32);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_StreakPropertyValue.bestStreak.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A97F8, &qword_1B4D29008);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    v17 = v14 + *(v9 + 32);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A97F8, &qword_1B4D29008);
    }
  }

  else
  {
    sub_1B4AB86FC(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  return sub_1B4AB0E74;
}

BOOL sub_1B4AB0EEC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
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

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.currentStreak.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(v1 + *(v7 + 32), v6, &qword_1EB8A97F8, &qword_1B4D29008);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4AB86FC(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  *a1 = 0u;
  a1[1] = 0u;
  v10 = a1 + *(v8 + 32);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  return result;
}

uint64_t sub_1B4AB1184@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(a1 + *(v8 + 32), v7, &qword_1EB8A97F8, &qword_1B4D29008);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4AB86FC(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  *a2 = 0u;
  a2[1] = 0u;
  v11 = a2 + *(v9 + 32);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  return result;
}

uint64_t sub_1B4AB12E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AB8764(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 32);
  sub_1B4975024(a2 + v9, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4AB86FC(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.currentStreak.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4AB86FC(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_StreakPropertyValue.currentStreak.modify(void *a1))(uint64_t **, char)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A97F8, &qword_1B4D29008);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    v17 = v14 + *(v9 + 32);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A97F8, &qword_1B4D29008);
    }
  }

  else
  {
    sub_1B4AB86FC(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  return sub_1B4ABA68C;
}

BOOL Apple_Fitness_Intelligence_StreakPropertyValue.hasCurrentStreak.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(v0 + *(v5 + 32), v4, &qword_1EB8A97F8, &qword_1B4D29008);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A97F8, &qword_1B4D29008);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_StreakPropertyValue.clearCurrentStreak()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 32);
  sub_1B4975024(v0 + v1, &qword_1EB8A97F8, &qword_1B4D29008);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.initialStreak.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(v1 + *(v7 + 36), v6, &qword_1EB8A97F8, &qword_1B4D29008);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4AB86FC(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  *a1 = 0u;
  a1[1] = 0u;
  v10 = a1 + *(v8 + 32);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  return result;
}

uint64_t sub_1B4AB19CC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(a1 + *(v8 + 36), v7, &qword_1EB8A97F8, &qword_1B4D29008);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4AB86FC(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  *a2 = 0u;
  a2[1] = 0u;
  v11 = a2 + *(v9 + 32);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  return result;
}

uint64_t sub_1B4AB1B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AB8764(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 36);
  sub_1B4975024(a2 + v9, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4AB86FC(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.initialStreak.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 36);
  sub_1B4975024(v1 + v3, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4AB86FC(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_StreakPropertyValue.initialStreak.modify(void *a1))(uint64_t **, char)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 36);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A97F8, &qword_1B4D29008);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    v17 = v14 + *(v9 + 32);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A97F8, &qword_1B4D29008);
    }
  }

  else
  {
    sub_1B4AB86FC(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  }

  return sub_1B4ABA68C;
}

BOOL Apple_Fitness_Intelligence_StreakPropertyValue.hasInitialStreak.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(v0 + *(v5 + 36), v4, &qword_1EB8A97F8, &qword_1B4D29008);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A97F8, &qword_1B4D29008);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_StreakPropertyValue.clearInitialStreak()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 36);
  sub_1B4975024(v0 + v1, &qword_1EB8A97F8, &qword_1B4D29008);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.currentPauseIntervals.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B4AB2120@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4AB21BC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.Streak.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0) + 32);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.Streak.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0) + 32);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 1) = v2;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v4 = &a1[v3[6]];
  sub_1B4D17BBC();
  v5 = v3[7];
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), &a1[v5], 1, 1, v6);
  v9(&a1[v3[8]], 1, 1, v6);
  v7 = &a1[v3[9]];

  return (v9)(v7, 1, 1, v6);
}

uint64_t Apple_Fitness_Intelligence_CountPropertyValue.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_CountPropertyValue.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_MaxPropertyValue.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Apple_Fitness_Intelligence_MaxPropertyValue.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_StatisticsPropertyValue.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) + 40);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_StatisticsPropertyValue.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) + 40);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B4AB2A6C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  sub_1B4974FBC(a1 + *(v8 + 28), v7, &qword_1EB8A69A0, &qword_1B4D27A90);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4AB86FC(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v11 = a2 + *(v9 + 40);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  return result;
}

uint64_t sub_1B4AB2BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AB8764(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
  sub_1B4975024(a2 + v9, &qword_1EB8A69A0, &qword_1B4D27A90);
  sub_1B4AB86FC(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.accumulatedStatistics.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90) - 8) + 64);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A69A0, &qword_1B4D27A90);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
    v17 = v14 + *(v9 + 40);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A69A0, &qword_1B4D27A90);
    }
  }

  else
  {
    sub_1B4AB86FC(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  return sub_1B4AB2F24;
}

void sub_1B4AB2F60(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
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
    sub_1B4AB8764(v12, v11, a6);
    sub_1B4975024(v15 + v10, a3, a4);
    sub_1B4AB86FC(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_1B4AB87CC(v12, a6);
  }

  else
  {
    sub_1B4975024(v15 + v10, a3, a4);
    sub_1B4AB86FC(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

uint64_t sub_1B4AB30D8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1B4AB32DC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1(0);
  *a2 = 0;
  a2[1] = 0;
  v4 = a2 + *(v3 + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AB340C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40));
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

uint64_t sub_1B4AB3470(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*Apple_Fitness_Intelligence_LocalizedDate.timeZone.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40);
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

  return sub_1B4A41888;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_LocalizedDate.clearTimeZone()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_LocalizedDate.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_LocalizedDate.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_CacheIndexRange.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E0C(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17E0C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_CacheIndexRange.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0) + 24);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB3968(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98D8, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB3A08(uint64_t a1)
{
  v2 = sub_1B4AB884C(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB3A74()
{
  sub_1B4AB884C(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB3AF0(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB3BBC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9718);
  __swift_project_value_buffer(v0, qword_1EB8A9718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B4D1CBF0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "cacheIndex";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "bestStreak";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "currentStreak";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "initialStreak";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "currentPauseIntervals";
  *(v14 + 8) = 21;
  *(v14 + 16) = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1B4D17CCC();
        }

        else if (result == 2)
        {
          sub_1B4AB3FD8();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1B4AB408C();
            break;
          case 4:
            sub_1B4AB4140();
            break;
          case 5:
            type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
            sub_1B4AB884C(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
            sub_1B4D17D3C();
            break;
        }
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4AB3FD8()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 28);
  type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4AB408C()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 32);
  type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4AB4140()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 36);
  type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    result = sub_1B4AB4340(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1B4AB455C(v3, a1, a2, a3);
      sub_1B4AB4778(v3, a1, a2, a3);
      if (*(v3[1] + 16))
      {
        type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
        sub_1B4AB884C(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
        sub_1B4D17E5C();
      }

      v9 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4AB4340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(a1 + *(v14 + 28), v8, &qword_1EB8A97F8, &qword_1B4D29008);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  sub_1B4AB86FC(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4D17E6C();
  return sub_1B4AB87CC(v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
}

uint64_t sub_1B4AB455C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(a1 + *(v14 + 32), v8, &qword_1EB8A97F8, &qword_1B4D29008);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  sub_1B4AB86FC(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4D17E6C();
  return sub_1B4AB87CC(v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
}

uint64_t sub_1B4AB4778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  sub_1B4974FBC(a1 + *(v14 + 36), v8, &qword_1EB8A97F8, &qword_1B4D29008);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A97F8, &qword_1B4D29008);
  }

  sub_1B4AB86FC(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4D17E6C();
  return sub_1B4AB87CC(v13, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
}

uint64_t sub_1B4AB49E0@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 1) = v4;
  v5 = &a2[a1[6]];
  sub_1B4D17BBC();
  v6 = a1[7];
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), &a2[v6], 1, 1, v7);
  v10(&a2[a1[8]], 1, 1, v7);
  v8 = &a2[a1[9]];

  return (v10)(v8, 1, 1, v7);
}

uint64_t sub_1B4AB4B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98D0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB4BBC(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB4C28()
{
  sub_1B4AB884C(qword_1EDC3BF18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB4CA8()
{
  result = MEMORY[0x1B8C7C620](0x6B61657274532ELL, 0xE700000000000000);
  qword_1EB8A9730 = 0xD00000000000002ELL;
  *algn_1EB8A9738 = 0x80000001B4D60D70;
  return result;
}

uint64_t sub_1B4AB4D3C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9740);
  __swift_project_value_buffer(v0, qword_1EB8A9740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pausedDays";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "startCacheIndex";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "expectedNextStartCacheIndex";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.Streak.decodeMessage<A>(decoder:)()
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

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          sub_1B4D17CCC();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_StreakPropertyValue.Streak.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E0C(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17E0C(), !v1))
    {
      if (!v0[2] || (result = sub_1B4D17E0C(), !v1))
      {
        if (!v0[3] || (result = sub_1B4D17E0C(), !v1))
        {
          v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0) + 32);
          return sub_1B4D17BAC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4AB5184@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  v2 = a2 + *(a1 + 32);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AB51D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4AB5248(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1B4AB52BC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1B4AB5310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98C8, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB53B0(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB541C()
{
  sub_1B4AB884C(qword_1EDC3BFD0, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB54B8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9758);
  __swift_project_value_buffer(v0, qword_1EB8A9758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1A800;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "count";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_CountPropertyValue.decodeMessage<A>(decoder:)()
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

uint64_t Apple_Fitness_Intelligence_CountPropertyValue.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E0C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4AB5784@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AB57F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB5894(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB5900()
{
  sub_1B4AB884C(qword_1EDC3C3C0, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB597C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB5A3C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9770);
  __swift_project_value_buffer(v0, qword_1EB8A9770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "measurement";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_MaxPropertyValue.decodeMessage<A>(decoder:)()
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
      sub_1B4D17CFC();
    }

    else if (result == 2)
    {
      sub_1B4D17D1C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_MaxPropertyValue.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E2C(), !v1))
  {
    v3 = v0[2];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_1B4D17E3C(), !v1))
    {
      v5 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4AB5DB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AB5E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98B8, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB5ECC(uint64_t a1)
{
  v2 = sub_1B4AB884C(&qword_1EB8A6DE0, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB5F38()
{
  sub_1B4AB884C(&qword_1EB8A6DE0, type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB5FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    v4 = a3;
    v5 = *(a2 + 8);
    v6 = sub_1B4D18DCC();
    a3 = v4;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a3 + 24);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB60A4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A9788);
  __swift_project_value_buffer(v0, qword_1EB8A9788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B4D223E0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "total";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "count";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sumY2";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "min";
  *(v13 + 1) = 3;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "max";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sumXY";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_StatisticsPropertyValue.decodeMessage<A>(decoder:)()
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
      if (result == 4 || result == 5 || result == 6)
      {
LABEL_2:
        sub_1B4D17CFC();
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_2;
        case 2:
          sub_1B4D17CCC();
          break;
        case 3:
          goto LABEL_2;
      }
    }
  }
}

uint64_t Apple_Fitness_Intelligence_StatisticsPropertyValue.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E2C(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17E0C(), !v1))
    {
      if (!v0[2] || (result = sub_1B4D17E2C(), !v1))
      {
        if (!v0[3] || (result = sub_1B4D17E2C(), !v1))
        {
          if (!v0[4] || (result = sub_1B4D17E2C(), !v1))
          {
            if (!v0[5] || (result = sub_1B4D17E2C(), !v1))
            {
              v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) + 40);
              return sub_1B4D17BAC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4AB65E0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v2 = a2 + *(a1 + 40);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4AB6658(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98B0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB66F8(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB6764()
{
  sub_1B4AB884C(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB6800()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A97A0);
  __swift_project_value_buffer(v0, qword_1EB8A97A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "currentCacheIndex";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currentMonthMeasurementByStartOfWeek";
  *(v10 + 1) = 36;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "accumulatedStatistics";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_1B4AB6B58();
          break;
        case 2:
          type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0);
          sub_1B4AB884C(qword_1EDC3ACD8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);
          sub_1B4D17D3C();
          break;
        case 1:
          sub_1B4D17CCC();
          break;
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4AB6B58()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 28);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  sub_1B4AB884C(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0), sub_1B4AB884C(qword_1EDC3ACD8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair), result = sub_1B4D17E5C(), !v4))
    {
      result = sub_1B4AB6D28(v3, a1, a2, a3);
      if (!v4)
      {
        v9 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0) + 24);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4AB6D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  sub_1B4974FBC(a1 + *(v14 + 28), v8, &qword_1EB8A69A0, &qword_1B4D27A90);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A69A0, &qword_1B4D27A90);
  }

  sub_1B4AB86FC(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4AB884C(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17E6C();
  return sub_1B4AB87CC(v13, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
}

uint64_t sub_1B4AB6F8C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 1) = v4;
  v5 = &a2[*(a1 + 24)];
  sub_1B4D17BBC();
  v6 = *(a1 + 28);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1B4AB7064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98A8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB7104(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB7170()
{
  sub_1B4AB884C(qword_1EDC3AC30, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB71F0()
{
  result = MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D60ED0);
  qword_1EB8A97B8 = 0xD000000000000038;
  unk_1EB8A97C0 = 0x80000001B4D60E40;
  return result;
}

uint64_t sub_1B4AB72AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  *(v13 + 8) = 10;
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

uint64_t sub_1B4AB74B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17CCC();
    }

    else if (result == 2)
    {
      a4(v4 + 8, a2, a3);
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E0C(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17E2C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair(0) + 24);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB7754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A98A0, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB77F4(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3ACD8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB7860()
{
  sub_1B4AB884C(qword_1EDC3ACD8, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4AB78DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB79A8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A97E0);
  __swift_project_value_buffer(v0, qword_1EB8A97E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B4D223E0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "year";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "month";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "day";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hour";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "minute";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "timeZone";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_LocalizedDate.decodeMessage<A>(decoder:)()
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
      if (result == 4 || result == 5)
      {
LABEL_2:
        sub_1B4D17CAC();
      }

      else if (result == 6)
      {
        v3 = *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 40);
        sub_1B4D17D0C();
      }
    }

    else if (result == 1 || result == 2 || result == 3)
    {
      goto LABEL_2;
    }
  }
}

uint64_t Apple_Fitness_Intelligence_LocalizedDate.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17DFC(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17DFC(), !v1))
    {
      if (!v0[2] || (result = sub_1B4D17DFC(), !v1))
      {
        if (!v0[3] || (result = sub_1B4D17DFC(), !v1))
        {
          if (!v0[4] || (result = sub_1B4D17DFC(), !v1))
          {
            result = sub_1B4AB7E94(v0);
            if (!v1)
            {
              v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0) + 36);
              return sub_1B4D17BAC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4AB7E94(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4AB7F58(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B4D18E8C();
  a1(0);
  sub_1B4AB884C(a2, a3);
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4AB7FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = a2 + *(a1 + 36);
  result = sub_1B4D17BBC();
  v6 = (a2 + *(a1 + 40));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1B4AB8070(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4AB884C(&qword_1EB8A9898, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4AB8110(uint64_t a1)
{
  v2 = sub_1B4AB884C(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4AB817C()
{
  sub_1B4AB884C(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);

  return sub_1B4D17D9C();
}

uint64_t _s19FitnessIntelligence06Apple_a1_B30_WeeklyStatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A69A0, &qword_1B4D27A90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A98E8, &qword_1B4D29F28);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  if (*a1 != *a2 || (sub_1B4A129A8(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_9;
  }

  v27 = type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 48);
  sub_1B4974FBC(a1 + v17, v16, &qword_1EB8A69A0, &qword_1B4D27A90);
  v19 = a2 + v17;
  v20 = v18;
  sub_1B4974FBC(v19, &v16[v18], &qword_1EB8A69A0, &qword_1B4D27A90);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A69A0, &qword_1B4D27A90);
LABEL_12:
      v25 = *(v27 + 24);
      sub_1B4D17BCC();
      sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v22 = sub_1B4D1816C();
      return v22 & 1;
    }

    goto LABEL_8;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A69A0, &qword_1B4D27A90);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_1B4AB87CC(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
LABEL_8:
    sub_1B4975024(v16, &qword_1EB8A98E8, &qword_1B4D29F28);
    goto LABEL_9;
  }

  sub_1B4AB86FC(&v16[v20], v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v24 = _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_1B4AB87CC(v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4AB87CC(v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(v16, &qword_1EB8A69A0, &qword_1B4D27A90);
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_9:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B24_StatisticsPropertyValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0) + 40);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4AB86FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AB8764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4AB87CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4AB884C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV0D0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0) + 32);
  sub_1B4D17BCC();
  sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A97F8, &qword_1B4D29008);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v59 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A98E0, &qword_1B4D29F20);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v59 - v27;
  if (*a1 != *a2)
  {
    goto LABEL_23;
  }

  v61 = v26;
  v62 = v15;
  v60 = v12;
  v64 = v8;
  v29 = v25;
  v30 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v65 = v29;
  v66 = v30;
  v31 = *(v30 + 28);
  v32 = *(v29 + 48);
  v63 = a1;
  sub_1B4974FBC(a1 + v31, v28, &qword_1EB8A97F8, &qword_1B4D29008);
  v33 = a2 + v31;
  v34 = a2;
  sub_1B4974FBC(v33, &v28[v32], &qword_1EB8A97F8, &qword_1B4D29008);
  v37 = *(v5 + 48);
  v36 = v5 + 48;
  v35 = v37;
  if (v37(v28, 1, v4) == 1)
  {
    if (v35(&v28[v32], 1, v4) == 1)
    {
      sub_1B4975024(v28, &qword_1EB8A97F8, &qword_1B4D29008);
      goto LABEL_9;
    }

LABEL_7:
    v38 = v28;
LABEL_22:
    sub_1B4975024(v38, &qword_1EB8A98E0, &qword_1B4D29F20);
    goto LABEL_23;
  }

  sub_1B4974FBC(v28, v18, &qword_1EB8A97F8, &qword_1B4D29008);
  if (v35(&v28[v32], 1, v4) == 1)
  {
    sub_1B4AB87CC(v18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
    goto LABEL_7;
  }

  v39 = &v28[v32];
  v40 = v64;
  sub_1B4AB86FC(v39, v64, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v41 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV0D0V2eeoiySbAE_AEtFZ_0(v18, v40);
  sub_1B4AB87CC(v40, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4AB87CC(v18, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4975024(v28, &qword_1EB8A97F8, &qword_1B4D29008);
  if ((v41 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v42 = v66[8];
  v43 = *(v65 + 48);
  v44 = v63;
  sub_1B4974FBC(v63 + v42, v23, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4974FBC(v34 + v42, &v23[v43], &qword_1EB8A97F8, &qword_1B4D29008);
  if (v35(v23, 1, v4) == 1)
  {
    if (v35(&v23[v43], 1, v4) == 1)
    {
      v59 = v36;
      sub_1B4975024(v23, &qword_1EB8A97F8, &qword_1B4D29008);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v45 = v62;
  sub_1B4974FBC(v23, v62, &qword_1EB8A97F8, &qword_1B4D29008);
  if (v35(&v23[v43], 1, v4) == 1)
  {
    sub_1B4AB87CC(v45, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
LABEL_14:
    v38 = v23;
    goto LABEL_22;
  }

  v59 = v36;
  v46 = &v23[v43];
  v47 = v64;
  sub_1B4AB86FC(v46, v64, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  v48 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV0D0V2eeoiySbAE_AEtFZ_0(v45, v47);
  sub_1B4AB87CC(v47, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4AB87CC(v45, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
  sub_1B4975024(v23, &qword_1EB8A97F8, &qword_1B4D29008);
  if ((v48 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  v49 = v66[9];
  v50 = *(v65 + 48);
  v51 = v61;
  sub_1B4974FBC(v44 + v49, v61, &qword_1EB8A97F8, &qword_1B4D29008);
  sub_1B4974FBC(v34 + v49, v51 + v50, &qword_1EB8A97F8, &qword_1B4D29008);
  if (v35(v51, 1, v4) != 1)
  {
    v52 = v60;
    sub_1B4974FBC(v51, v60, &qword_1EB8A97F8, &qword_1B4D29008);
    if (v35((v51 + v50), 1, v4) != 1)
    {
      v55 = v51 + v50;
      v56 = v64;
      sub_1B4AB86FC(v55, v64, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
      v57 = _s19FitnessIntelligence06Apple_a1_B20_StreakPropertyValueV0D0V2eeoiySbAE_AEtFZ_0(v52, v56);
      sub_1B4AB87CC(v56, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
      sub_1B4AB87CC(v52, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
      sub_1B4975024(v51, &qword_1EB8A97F8, &qword_1B4D29008);
      if ((v57 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    sub_1B4AB87CC(v52, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak);
    goto LABEL_21;
  }

  if (v35((v51 + v50), 1, v4) != 1)
  {
LABEL_21:
    v38 = v51;
    goto LABEL_22;
  }

  sub_1B4975024(v51, &qword_1EB8A97F8, &qword_1B4D29008);
LABEL_26:
  if (sub_1B4A1A554(v44[1], v34[1]))
  {
    v58 = v66[6];
    sub_1B4D17BCC();
    sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v53 = sub_1B4D1816C();
    return v53 & 1;
  }

LABEL_23:
  v53 = 0;
  return v53 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B14_LocalizedDateV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4])
  {
    v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
    v5 = *(v4 + 40);
    v6 = (a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v8[1];
    if (v7)
    {
      if (v9)
      {
        if (*v6 == *v8 && v7 == v9)
        {
          goto LABEL_13;
        }

        v11 = v4;
        v12 = sub_1B4D18DCC();
        v4 = v11;
        if (v12)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v9)
    {
LABEL_13:
      v13 = *(v4 + 36);
      sub_1B4D17BCC();
      sub_1B4AB884C(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      return sub_1B4D1816C() & 1;
    }
  }

  return 0;
}

void sub_1B4AB9C8C()
{
  sub_1B4AB9DA0(319, &qword_1EDC37980, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      sub_1B4AB9DA0(319, qword_1EDC3BF78, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue.Streak, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4AB9DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B4AB9E2C()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4AB9ED4()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4AB9FB4()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_30Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_1B4D17BCC();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_31Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v12 = sub_1B4D17BCC();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_1B4ABA2EC()
{
  sub_1B4AB9DA0(319, &qword_1EDC3CBB0, type metadata accessor for Apple_Fitness_Intelligence_WeeklyStatisticsPropertyValue.CacheIndexMeasurementPair, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      sub_1B4AB9DA0(319, qword_1EDC3B740, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1B4D17BCC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1B4D17BCC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_1B4ABA550()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4ABA5F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4ABA5F0()
{
  if (!qword_1EDC3CEC0)
  {
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC3CEC0);
    }
  }
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.entry.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8A7818, &unk_1B4D29F40);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  }

  *a1 = 0;
  v10 = a1 + *(v8 + 20);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7818, &unk_1B4D29F40);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.entry.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A7818, &unk_1B4D29F40);
  sub_1B4ABD53C(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool.BOOL.setter(char a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.startCacheIndex.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20));
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.endCacheIndex.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20));
  swift_beginAccess();
  return *(v1 + 24);
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.dimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8A8F90, &unk_1B4D32490);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  }

  sub_1B4D17BBC();
  v11 = (a1 + v9[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + v9[6]);
  *v12 = 0;
  v12[1] = 0;
  *(a1 + v9[7]) = 2;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8F90, &unk_1B4D32490);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.property.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20));
  v8 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B4974FBC(v7 + v8, v6, &qword_1EB8A8F88, &unk_1B4D29F50);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  }

  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  v12 = a1 + *(v9 + 20);
  sub_1B4D17BBC();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8F88, &unk_1B4D29F50);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.startCacheIndex.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1B4AC8F90(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.endCacheIndex.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1B4AC8F90(v7);
    *(v2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 24) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.dimensions.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4AC8F90(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4ABD53C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8A8F90, &unk_1B4D32490);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.property.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1B4AC8F90(v11);
    *(v2 + v8) = v11;
  }

  sub_1B4ABD53C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B49A205C(v7, v11 + v16, &qword_1EB8A8F88, &unk_1B4D29F50);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_RingsProperties.records.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsProperties.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0) + 28);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.monthOfYear.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20));
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

uint64_t sub_1B4ABB2E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20));
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

uint64_t sub_1B4ABB348(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.monthOfYear.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_RingsPropertyDimensions.monthOfYear.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20);
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

Swift::Void __swiftcall Apple_Fitness_Intelligence_RingsPropertyDimensions.clearMonthOfYear()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.dayOfWeek.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24));
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

uint64_t sub_1B4ABB550@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24));
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

uint64_t sub_1B4ABB5B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.dayOfWeek.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_RingsPropertyDimensions.dayOfWeek.modify(uint64_t *a1))()
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
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24);
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

Swift::Void __swiftcall Apple_Fitness_Intelligence_RingsPropertyDimensions.clearDayOfWeek()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensions.paused.setter(char a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_RingsPropertyDimensions.paused.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1B4A3B338;
}

int *Apple_Fitness_Intelligence_RingsPropertyDimensions.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + result[7]) = 2;
  return result;
}

uint64_t sub_1B4ABB958@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4ABB9F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool.BOOL.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0) + 20);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1B4A6084C;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters.OptionalBool(0);
  *(a1 + *(result + 20)) = 2;
  return result;
}

uint64_t sub_1B4ABBBB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1B4AC8F90(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 16) = v3;
  return result;
}

void (*Apple_Fitness_Intelligence_RingsPropertyRecord.startCacheIndex.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 16);
  return sub_1B4ABBCEC;
}

void sub_1B4ABBCEC(uint64_t *a1)
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
    v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = sub_1B4AC8F90(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;

  free(v1);
}

uint64_t sub_1B4ABBDB0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1B4AC8F90(v7);
    *(a2 + v4) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 24) = v3;
  return result;
}

void (*Apple_Fitness_Intelligence_RingsPropertyRecord.endCacheIndex.modify(uint64_t *a1))(uint64_t *a1)
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
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 24);
  return sub_1B4ABBEE4;
}

void sub_1B4ABBEE4(uint64_t *a1)
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
    v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = sub_1B4AC8F90(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  *(v7 + 24) = v2;

  free(v1);
}

uint64_t sub_1B4ABBFA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AC9298(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4AC8F90(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4ABD53C(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8A8F90, &unk_1B4D32490);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_RingsPropertyRecord.dimensions.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A8F90, &unk_1B4D32490);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[6]);
    *v20 = 0;
    v20[1] = 0;
    *(v14 + v9[7]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8F90, &unk_1B4D32490);
    }
  }

  else
  {
    sub_1B4ABD53C(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  }

  return sub_1B4ABC408;
}

void sub_1B4ABC408(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4AC9298(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4AC8F90(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4ABD53C(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8A8F90, &unk_1B4D32490);
    swift_endAccess();
    sub_1B4AC9300(v13, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
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
      v26 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4AC8F90(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4ABD53C(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8A8F90, &unk_1B4D32490);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t sub_1B4ABC6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20));
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B4974FBC(v8 + v9, v7, &qword_1EB8A8F88, &unk_1B4D29F50);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1B4ABD53C(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  }

  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  v13 = a2 + *(v10 + 20);
  sub_1B4D17BBC();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8F88, &unk_1B4D29F50);
  }

  return result;
}

uint64_t sub_1B4ABC878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AC9298(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1B4AC8F90(v16);
    *(a2 + v13) = v16;
  }

  sub_1B4ABD53C(v12, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B49A205C(v7, v16 + v20, &qword_1EB8A8F88, &unk_1B4D29F50);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_RingsPropertyRecord.property.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A8F88, &unk_1B4D29F50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    v20 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8F88, &unk_1B4D29F50);
    }
  }

  else
  {
    sub_1B4ABD53C(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  }

  return sub_1B4ABCD24;
}

void sub_1B4ABCD24(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1B4AC9298(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1B4AC8F90(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4ABD53C(v14, v18, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
    swift_beginAccess();
    sub_1B49A205C(v18, v7 + v19, &qword_1EB8A8F88, &unk_1B4D29F50);
    swift_endAccess();
    sub_1B4AC9300(v13, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
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
      v26 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1B4AC8F90(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1B4ABD53C(v13, v18, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
    swift_beginAccess();
    sub_1B49A205C(v18, v23 + v31, &qword_1EB8A8F88, &unk_1B4D29F50);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL sub_1B4ABCFA4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_1B4974FBC(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_1B4975024(v12, a1, a2);
  return v16;
}

uint64_t sub_1B4ABD0EC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = sub_1B4AC8F90(v17);
    *(v9 + v14) = v17;
  }

  v21 = a3(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_1B49A205C(v13, v17 + v22, a1, a2);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_RingsPropertyRecord.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  if (qword_1EDC3C1B0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EDC3C1B8;
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.currentEntries.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B4ABD53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4ABD624@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v8 + 24), v7, &qword_1EB8A7818, &unk_1B4D29F40);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4ABD53C(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  }

  *a2 = 0;
  v11 = a2 + *(v9 + 20);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7818, &unk_1B4D29F40);
  }

  return result;
}

uint64_t sub_1B4ABD784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AC9298(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0) + 24);
  sub_1B4975024(a2 + v9, &qword_1EB8A7818, &unk_1B4D29F40);
  sub_1B4ABD53C(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.entry.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7818, &unk_1B4D29F40);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v17 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7818, &unk_1B4D29F40);
    }
  }

  else
  {
    sub_1B4ABD53C(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  }

  return sub_1B4ABDACC;
}

void sub_1B4ABDACC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4AC9298((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
    sub_1B4975024(v9 + v3, &qword_1EB8A7818, &unk_1B4D29F40);
    sub_1B4ABD53C(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4AC9300(v5, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A7818, &unk_1B4D29F40);
    sub_1B4ABD53C(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.hasEntry.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7818, &unk_1B4D29F40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(v0 + *(v5 + 24), v4, &qword_1EB8A7818, &unk_1B4D29F40);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A7818, &unk_1B4D29F40);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.clearEntry()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0) + 24);
  sub_1B4975024(v0 + v1, &qword_1EB8A7818, &unk_1B4D29F40);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1B4ABDDCC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4ABDE68(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Pair(0);
  v3 = &a1[*(v2 + 20)];
  sub_1B4D17BBC();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue.Entry(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1B4ABDFD8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a3 = a1;
  a3[1] = v4;
  a3[2] = v4;
  v5 = a3 + *(a2(0) + 28);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.localizedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  sub_1B4974FBC(v1 + *(v7 + 28), v6, &qword_1EB8A7158, &unk_1B4D20310);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4ABD53C(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v10 = a1 + *(v8 + 36);
  sub_1B4D17BBC();
  v11 = (a1 + *(v8 + 40));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7158, &unk_1B4D20310);
  }

  return result;
}

uint64_t sub_1B4ABE1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  sub_1B4974FBC(a1 + *(v8 + 28), v7, &qword_1EB8A7158, &unk_1B4D20310);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4ABD53C(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v11 = a2 + *(v9 + 36);
  sub_1B4D17BBC();
  v12 = (a2 + *(v9 + 40));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7158, &unk_1B4D20310);
  }

  return result;
}

uint64_t sub_1B4ABE31C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AC9298(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  sub_1B4975024(a2 + v9, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4ABD53C(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.localizedDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4ABD53C(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_RingsBestMeasurementEntry.localizedDate.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
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
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7158, &unk_1B4D20310);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    v17 = v14 + *(v9 + 36);
    sub_1B4D17BBC();
    v18 = (v14 + *(v9 + 40));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7158, &unk_1B4D20310);
    }
  }

  else
  {
    sub_1B4ABD53C(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  return sub_1B4ABE72C;
}

void sub_1B4ABE72C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4AC9298((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    sub_1B4975024(v9 + v3, &qword_1EB8A7158, &unk_1B4D20310);
    sub_1B4ABD53C(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4AC9300(v5, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A7158, &unk_1B4D20310);
    sub_1B4ABD53C(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_RingsBestMeasurementEntry.hasLocalizedDate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  sub_1B4974FBC(v0 + *(v5 + 28), v4, &qword_1EB8A7158, &unk_1B4D20310);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A7158, &unk_1B4D20310);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_RingsBestMeasurementEntry.clearLocalizedDate()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  sub_1B4975024(v0 + v1, &qword_1EB8A7158, &unk_1B4D20310);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 24);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 24);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_RingsBestMeasurementEntry.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = &a1[*(v2 + 24)];
  sub_1B4D17BBC();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.topEntries.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.measurementEntry.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1B4974FBC(v2, &v14 - v6, &qword_1EB8A7E30, &unk_1B4D29F60);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) != 1)
  {
    return sub_1B4ABD53C(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  }

  sub_1B4975024(v7, &qword_1EB8A7E30, &unk_1B4D29F60);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v10 = &a1[*(v9 + 24)];
  sub_1B4D17BBC();
  v11 = *(v9 + 28);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1B4ABEED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4AC9298(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4975024(a2, &qword_1EB8A7E30, &unk_1B4D29F60);
  sub_1B4ABD53C(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.measurementEntry.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7E30, &unk_1B4D29F60);
  sub_1B4ABD53C(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.measurementEntry.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
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
  sub_1B4974FBC(v1, v8, &qword_1EB8A7E30, &unk_1B4D29F60);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7E30, &unk_1B4D29F60);
    *v12 = 0;
    *(v12 + 1) = 0;
    v15 = &v12[*(v9 + 24)];
    sub_1B4D17BBC();
    v16 = *(v9 + 28);
    v17 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
    (*(*(v17 - 8) + 56))(&v12[v16], 1, 1, v17);
  }

  else
  {
    sub_1B4ABD53C(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  }

  return sub_1B4ABF2B4;
}

void sub_1B4ABF2B4(uint64_t **a1, char a2)
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
    sub_1B4AC9298((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    sub_1B4975024(v8, &qword_1EB8A7E30, &unk_1B4D29F60);
    sub_1B4ABD53C(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4AC9300(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7E30, &unk_1B4D29F60);
    sub_1B4ABD53C(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E28, &unk_1B4D20320);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v11 - v6);
  v9 = *(v8 + 56);
  sub_1B4AC9298(a1, &v11 - v6, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4AC9298(a2, v7 + v9, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  LOBYTE(a2) = _s19FitnessIntelligence06Apple_a1_B26_RingsBestMeasurementEntryV2eeoiySbAC_ACtFZ_0(v7, v7 + v9);
  sub_1B4AC9300(v7 + v9, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  return a2 & 1;
}

uint64_t sub_1B4ABF590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E28, &unk_1B4D20320);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v11 - v6);
  v9 = *(v8 + 56);
  sub_1B4AC9298(a1, &v11 - v6, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  sub_1B4AC9298(a2, v7 + v9, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType);
  LOBYTE(a2) = static Apple_Fitness_Intelligence_RingsBestMeasurementEntry.== infix(_:_:)(v7, v7 + v9);
  sub_1B4AC9300(v7 + v9, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  sub_1B4AC9300(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  return a2 & 1;
}