uint64_t sub_2574F5D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B840, &qword_25774F290);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_2574FD880(a1, v12, &qword_27F87B0E0, &unk_25774C0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574695E4(v24, &qword_27F87B840, &qword_25774F290);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v17, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
    }
  }

  sub_2574FB49C(&qword_27F87B4B0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87B840, &qword_25774F290);
  }

  sub_2574FD880(v24, v22, &qword_27F87B840, &qword_25774F290);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87B840, &qword_25774F290);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87B840, &qword_25774F290);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87B840, &qword_25774F290);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87B0E0, &unk_25774C0C0);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2574F6270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B848, &qword_25774F298);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_2574FD880(a1, v12, &qword_27F87B0E0, &unk_25774C0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574695E4(v24, &qword_27F87B848, &qword_25774F298);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v17, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
    }
  }

  sub_2574FB49C(&qword_27F87B4F0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87B848, &qword_25774F298);
  }

  sub_2574FD880(v24, v22, &qword_27F87B848, &qword_25774F298);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87B848, &qword_25774F298);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87B848, &qword_25774F298);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87B848, &qword_25774F298);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87B0E0, &unk_25774C0C0);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2574F6768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B850, &unk_25774F2A0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v30 - v23;
  __swift_storeEnumTagSinglePayload(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_2574FD880(a1, v12, &qword_27F87B0E0, &unk_25774C0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v33 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v12, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    sub_2574FD78C();
    sub_2574FD78C();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574695E4(v24, &qword_27F87B850, &unk_25774F2A0);
      sub_2574FD78C();
      sub_2574FD78C();
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
    }

    else
    {
      sub_2574FD734(v17, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
    }
  }

  sub_2574FB49C(&qword_27F87B450, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes);
  v25 = v35;
  sub_2577433D4();
  if (v25)
  {
    v26 = v24;
    return sub_2574695E4(v26, &qword_27F87B850, &unk_25774F2A0);
  }

  sub_2574FD880(v24, v22, &qword_27F87B850, &unk_25774F2A0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_2574695E4(v24, &qword_27F87B850, &unk_25774F2A0);
    v26 = v22;
    return sub_2574695E4(v26, &qword_27F87B850, &unk_25774F2A0);
  }

  sub_2574FD78C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v28 = v33;
  sub_2574695E4(v24, &qword_27F87B850, &unk_25774F2A0);
  v29 = v31;
  sub_2574695E4(v31, &qword_27F87B0E0, &unk_25774C0C0);
  sub_2574FD78C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v29, 0, 1, v28);
}

uint64_t sub_2574F6D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v8, &qword_27F87B0E0, &unk_25774C0C0);
  v13 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B510, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats);
      sub_257743574();
      return sub_2574FD734(v12, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats);
    }

    result = sub_2574FD734(v8, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F6F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v8, &qword_27F87B0E0, &unk_25774C0C0);
  v13 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B4D0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts);
      sub_257743574();
      return sub_2574FD734(v12, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts);
    }

    result = sub_2574FD734(v8, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F71B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v8, &qword_27F87B0E0, &unk_25774C0C0);
  v13 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B490, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools);
      sub_257743574();
      return sub_2574FD734(v12, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools);
    }

    result = sub_2574FD734(v8, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F73C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v8, &qword_27F87B0E0, &unk_25774C0C0);
  v13 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B470, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings);
      sub_257743574();
      return sub_2574FD734(v12, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings);
    }

    result = sub_2574FD734(v8, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F75D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v8, &qword_27F87B0E0, &unk_25774C0C0);
  v13 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B4B0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts);
      sub_257743574();
      return sub_2574FD734(v12, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts);
    }

    result = sub_2574FD734(v8, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F77EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v8, &qword_27F87B0E0, &unk_25774C0C0);
  v13 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B4F0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles);
      sub_257743574();
      return sub_2574FD734(v12, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles);
    }

    result = sub_2574FD734(v8, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F7A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B0E0, &unk_25774C0C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2574FD880(a1, v8, &qword_27F87B0E0, &unk_25774C0C0);
  v13 = type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    result = sub_2574695E4(v8, &qword_27F87B0E0, &unk_25774C0C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574FD78C();
      sub_2574FB49C(&qword_27F87B450, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes);
      sub_257743574();
      return sub_2574FD734(v12, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes);
    }

    result = sub_2574FD734(v8, type metadata accessor for Proto_MILSpec_TensorValue.OneOf_Value);
  }

  __break(1u);
  return result;
}

uint64_t sub_2574F7EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B818, type metadata accessor for Proto_MILSpec_TensorValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F7F4C(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B530, type metadata accessor for Proto_MILSpec_TensorValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F8014()
{
  sub_2574FB49C(&qword_27F87B530, type metadata accessor for Proto_MILSpec_TensorValue);

  return sub_257743424();
}

uint64_t sub_2574F8194(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B960, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F8234(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B510, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F82FC()
{
  sub_2574FB49C(&qword_27F87B510, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedFloats);

  return sub_257743424();
}

uint64_t sub_2574F83BC()
{
  result = MEMORY[0x259C64E90](0xD000000000000010, 0x800000025777B660);
  qword_27F8E8760 = 0xD000000000000019;
  *algn_27F8E8768 = 0x800000025777B250;
  return result;
}

void sub_2574F844C()
{
  OUTLINED_FUNCTION_188_0();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_12_8(), v4(), !v1))
  {
    v5 = v3(0);
    OUTLINED_FUNCTION_28_3(v5);
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2574F8588(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B968, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F8628(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B4F0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F86F0()
{
  sub_2574FB49C(&qword_27F87B4F0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedDoubles);

  return sub_257743424();
}

uint64_t sub_2574F88B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B970, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F8950(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B4D0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F8A18()
{
  sub_2574FB49C(&qword_27F87B4D0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedInts);

  return sub_257743424();
}

uint64_t sub_2574F8AD8()
{
  result = MEMORY[0x259C64E90](0xD000000000000011, 0x800000025777B680);
  qword_27F8E87B0 = 0xD000000000000019;
  *algn_27F8E87B8 = 0x800000025777B250;
  return result;
}

uint64_t sub_2574F8C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B978, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F8CCC(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B4B0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F8D94()
{
  sub_2574FB49C(&qword_27F87B4B0, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedLongInts);

  return sub_257743424();
}

uint64_t sub_2574F8F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B980, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F8FF4(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B490, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F90BC()
{
  sub_2574FB49C(&qword_27F87B490, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBools);

  return sub_257743424();
}

uint64_t sub_2574F917C()
{
  result = MEMORY[0x259C64E90](0xD000000000000010, 0x800000025777B6A0);
  qword_27F8E8800 = 0xD000000000000019;
  *algn_27F8E8808 = 0x800000025777B250;
  return result;
}

uint64_t sub_2574F920C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  while (1)
  {
    OUTLINED_FUNCTION_294();
    result = sub_257743234();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_264();
      a4(v8);
    }
  }

  return result;
}

uint64_t sub_2574F9340(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B988, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F93E0(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B470, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F94A8()
{
  sub_2574FB49C(&qword_27F87B470, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedStrings);

  return sub_257743424();
}

uint64_t sub_2574F9588(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = MEMORY[0x259C64E90](0x657461657065522ELL);
  *a3 = 0xD000000000000019;
  *a4 = 0x800000025777B250;
  return result;
}

uint64_t sub_2574F9614()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_53();
      sub_2577432D4();
    }
  }

  return result;
}

uint64_t sub_2574F9660()
{
  v2 = *v0;
  v3 = v0[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      v5 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
LABEL_6:
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_3_10();
      result = sub_2577434D4();
      if (!v1)
      {
LABEL_8:
        v7 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(0);
        return OUTLINED_FUNCTION_28_3(v7);
      }

      return result;
  }
}

uint64_t sub_2574F9714(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_54_1(a1);
  if ((MEMORY[0x259C648D0](v3, *(v2 + 8), *v1, v1[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes(0);
  OUTLINED_FUNCTION_95_0(v4);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_22();
  sub_2574FB49C(v5, v6);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574F97F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B990, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F9890(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B450, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F9958()
{
  sub_2574FB49C(&qword_27F87B450, type metadata accessor for Proto_MILSpec_TensorValue.RepeatedBytes);

  return sub_257743424();
}

void sub_2574F99F0()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_116_0();
  if (!v1 || (type metadata accessor for Proto_MILSpec_Value(0), OUTLINED_FUNCTION_86_1(), sub_2574FB49C(v2, v3), OUTLINED_FUNCTION_25_2(), !v0))
  {
    v4 = type metadata accessor for Proto_MILSpec_TupleValue(0);
    OUTLINED_FUNCTION_28_3(v4);
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2574F9AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B858, type metadata accessor for Proto_MILSpec_TupleValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F9B80(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B438, type metadata accessor for Proto_MILSpec_TupleValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F9C48()
{
  sub_2574FB49C(&qword_27F87B438, type metadata accessor for Proto_MILSpec_TupleValue);

  return sub_257743424();
}

void sub_2574F9D20()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_116_0();
  if (!v1 || (type metadata accessor for Proto_MILSpec_Value(0), OUTLINED_FUNCTION_86_1(), sub_2574FB49C(v2, v3), OUTLINED_FUNCTION_25_2(), !v0))
  {
    v4 = type metadata accessor for Proto_MILSpec_ListValue(0);
    OUTLINED_FUNCTION_28_3(v4);
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2574F9E10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B860, type metadata accessor for Proto_MILSpec_ListValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574F9EB0(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B428, type metadata accessor for Proto_MILSpec_ListValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574F9F78()
{
  sub_2574FB49C(&qword_27F87B428, type metadata accessor for Proto_MILSpec_ListValue);

  return sub_257743424();
}

void sub_2574FA050()
{
  OUTLINED_FUNCTION_165_0();
  v0 = OUTLINED_FUNCTION_108_0();
  v1(v0);
  v2 = OUTLINED_FUNCTION_131_0();
  sub_2574FB49C(v2, v3);
  OUTLINED_FUNCTION_162_0();
  OUTLINED_FUNCTION_166_0();
}

void sub_2574FA0A4()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_116_0();
  if (!v1 || (type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0), sub_2574FB49C(&qword_27F87B400, type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair), OUTLINED_FUNCTION_25_2(), !v0))
  {
    v2 = type metadata accessor for Proto_MILSpec_DictionaryValue(0);
    OUTLINED_FUNCTION_28_3(v2);
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_2574FA13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = OUTLINED_FUNCTION_54_1(a1);
  if ((v7(v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  OUTLINED_FUNCTION_95_0(v8);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_22();
  sub_2574FB49C(v9, v10);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_2574FA288(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B868, type metadata accessor for Proto_MILSpec_DictionaryValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574FA328(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B418, type metadata accessor for Proto_MILSpec_DictionaryValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574FA3F0()
{
  sub_2574FB49C(&qword_27F87B418, type metadata accessor for Proto_MILSpec_DictionaryValue);

  return sub_257743424();
}

uint64_t sub_2574FA4B0()
{
  result = MEMORY[0x259C64E90](0x756C615679654B2ELL, 0xED00007269615065);
  qword_27F8E8898 = 0xD00000000000001DLL;
  unk_27F8E88A0 = 0x800000025777B2B0;
  return result;
}

uint64_t sub_2574FA528()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E88A8);
  __swift_project_value_buffer(v0, qword_27F8E88A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257743FF0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2574FA6F0()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_6_8();
      sub_2574FA808();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_6_8();
      sub_2574FA754();
    }
  }

  return result;
}

uint64_t sub_2574FA754()
{
  v0 = *(type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0) + 20);
  type metadata accessor for Proto_MILSpec_Value(0);
  sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value);
  return sub_2577433D4();
}

uint64_t sub_2574FA808()
{
  v0 = *(type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0) + 24);
  type metadata accessor for Proto_MILSpec_Value(0);
  sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value);
  return sub_2577433D4();
}

uint64_t sub_2574FA8BC()
{
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_10_7();
  result = sub_2574FA918(v2, v3, v4, v0);
  if (!v1)
  {
    OUTLINED_FUNCTION_10_7();
    sub_2574FAAF8(v6, v7, v8, v0);
    OUTLINED_FUNCTION_222();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_2574FA918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB8, &unk_2577447E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_MILSpec_Value(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0);
  sub_2574FD880(a1 + *(v13 + 20), v8, &qword_27F879EB8, &unk_2577447E0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2574695E4(v8, &qword_27F879EB8, &unk_2577447E0);
  }

  sub_2574FD78C();
  sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value);
  sub_257743574();
  return sub_2574FD734(v12, type metadata accessor for Proto_MILSpec_Value);
}

uint64_t sub_2574FAAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EB8, &unk_2577447E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Proto_MILSpec_Value(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0);
  sub_2574FD880(a1 + *(v13 + 24), v8, &qword_27F879EB8, &unk_2577447E0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_2574695E4(v8, &qword_27F879EB8, &unk_2577447E0);
  }

  sub_2574FD78C();
  sub_2574FB49C(&qword_27F87B568, type metadata accessor for Proto_MILSpec_Value);
  sub_257743574();
  return sub_2574FD734(v12, type metadata accessor for Proto_MILSpec_Value);
}

void sub_2574FACD8()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for Proto_MILSpec_Value(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_1();
  v45 = v9;
  v10 = OUTLINED_FUNCTION_205();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v13 = OUTLINED_FUNCTION_13(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_0();
  v44 = v16;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879EC0, &qword_25774F340);
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_0();
  v47 = v24;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_134_0();
  v46 = type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair(0);
  v26 = *(v46 + 20);
  v27 = *(v20 + 48);
  v48 = v4;
  OUTLINED_FUNCTION_191_0(v4 + v26, v0);
  v49 = v2;
  OUTLINED_FUNCTION_191_0(v2 + v26, v0 + v27);
  OUTLINED_FUNCTION_155(v0, 1, v5);
  if (v32)
  {
    OUTLINED_FUNCTION_155(v0 + v27, 1, v5);
    if (!v32)
    {
      goto LABEL_16;
    }

    sub_2574695E4(v0, &qword_27F879EB8, &unk_2577447E0);
  }

  else
  {
    v28 = OUTLINED_FUNCTION_311();
    sub_2574FD880(v28, v29, v30, v31);
    OUTLINED_FUNCTION_155(v0 + v27, 1, v5);
    if (v32)
    {
LABEL_15:
      OUTLINED_FUNCTION_83_0();
      sub_2574FD734(v19, v38);
LABEL_16:
      sub_2574695E4(v0, &qword_27F879EC0, &qword_25774F340);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_41_3();
    v33 = v45;
    sub_2574FD78C();
    _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0();
    OUTLINED_FUNCTION_80_0();
    sub_2574FD734(v33, v34);
    sub_2574FD734(v19, &unk_2577447E0);
    sub_2574695E4(v0, &qword_27F879EB8, &unk_2577447E0);
    if ((&qword_27F879EB8 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v0 = v47;
  v35 = *(v46 + 24);
  v36 = *(v20 + 48);
  OUTLINED_FUNCTION_191_0(v48 + v35, v47);
  OUTLINED_FUNCTION_191_0(v49 + v35, v0 + v36);
  OUTLINED_FUNCTION_155(v0, 1, v5);
  if (v32)
  {
    OUTLINED_FUNCTION_155(v0 + v36, 1, v5);
    if (v32)
    {
      sub_2574695E4(v0, &qword_27F879EB8, &unk_2577447E0);
LABEL_20:
      sub_2577431B4();
      OUTLINED_FUNCTION_0_22();
      sub_2574FB49C(v42, v43);
      OUTLINED_FUNCTION_264();
      v39 = sub_257743644();
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v19 = v44;
  sub_2574FD880(v0, v44, &qword_27F879EB8, &unk_2577447E0);
  OUTLINED_FUNCTION_155(v0 + v36, 1, v5);
  if (v37)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_41_3();
  v40 = v45;
  sub_2574FD78C();
  _s20MLModelSpecification9MLProgramV5ValueV2eeoiySbAE_AEtFZ_0();
  OUTLINED_FUNCTION_80_0();
  sub_2574FD734(v40, v41);
  sub_2574FD734(v19, &unk_2577447E0);
  sub_2574695E4(v0, &qword_27F879EB8, &unk_2577447E0);
  if (&qword_27F879EB8)
  {
    goto LABEL_20;
  }

LABEL_17:
  v39 = 0;
LABEL_18:
  OUTLINED_FUNCTION_65_0(v39);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_2574FB084(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_257743A14();
  a1(0);
  sub_2574FB49C(a2, a3);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_2574FB138()
{
  v0 = sub_2577431B4();
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_205();

  return v4(v3);
}

uint64_t sub_2574FB194(uint64_t a1)
{
  v3 = sub_2577431B4();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t sub_2574FB224(uint64_t a1, uint64_t a2)
{
  v4 = sub_2574FB49C(&qword_27F87B998, type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2574FB2C4(uint64_t a1)
{
  v2 = sub_2574FB49C(&qword_27F87B400, type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2574FB38C()
{
  sub_2574FB49C(&qword_27F87B400, type metadata accessor for Proto_MILSpec_DictionaryValue.KeyValuePair);

  return sub_257743424();
}

uint64_t sub_2574FB49C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2574FD734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2574FD78C()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

unint64_t sub_2574FD7E0()
{
  result = qword_27F87B8B8;
  if (!qword_27F87B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87B8B8);
  }

  return result;
}

uint64_t sub_2574FD834(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_184_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return v4;
}

uint64_t sub_2574FD880(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_184_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_205();
  v9(v8);
  return v4;
}

uint64_t sub_2574FD8CC()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_205();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return sub_257743564();
}

uint64_t OUTLINED_FUNCTION_28_3(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return sub_257743194();
}

uint64_t OUTLINED_FUNCTION_47_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3)
{
  v7 = *(a1 + 56);

  return sub_2574FD880(v3, &a3 - a2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_51_1@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_2574FD880(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return sub_257743194();
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_77_1()
{

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_105_0()
{

  return sub_2574FD880(v0, v1 + v4, v2, v3);
}

uint64_t OUTLINED_FUNCTION_123_0()
{

  return sub_257743434();
}

uint64_t OUTLINED_FUNCTION_129_0()
{

  return sub_2574FD78C();
}

uint64_t OUTLINED_FUNCTION_143_0()
{

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_160_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_161_0(uint64_t a1, uint64_t a2)
{

  return sub_2574FD880(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_162_0()
{

  return sub_2577433C4();
}

uint64_t OUTLINED_FUNCTION_163_0(uint64_t a1, uint64_t a2)
{

  return sub_2574FD880(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_164_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 20);

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_167_0()
{

  return sub_2574FD78C();
}

uint64_t OUTLINED_FUNCTION_168_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2574FD834(v4, v5 + v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_169_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 20);

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_170_0()
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_171_0(uint64_t a1, uint64_t a2)
{

  return sub_2574FD880(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_172(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_173_0()
{
  result = *(v1 + 32);
  v3 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_182_0()
{
  result = *(v1 + 24);
  v3 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_184_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_185_0()
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_186_0()
{

  return sub_257743644();
}

uint64_t OUTLINED_FUNCTION_189_0(uint64_t a1)
{
  v2 = *(a1 + 32);

  return sub_2577431B4();
}

uint64_t OUTLINED_FUNCTION_190_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 32);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_191_0(uint64_t a1, uint64_t a2)
{

  return sub_2574FD880(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_192_0(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_193_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_2574FE460()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = *(type metadata accessor for Proto_Model(0) + 20);
  v9 = *(v0 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_71_0();
    sub_257505F58();
    *(v1 + v8) = v12;
  }

  OUTLINED_FUNCTION_38_1();
  sub_25751BA6C();
  v13 = type metadata accessor for Proto_ModelDescription(0);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v13);
  OUTLINED_FUNCTION_70_1();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2574FE574()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_376();
  v3 = *(type metadata accessor for Proto_Model(v2) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_71_0();
    sub_257505F58();
    *(v1 + v3) = v7;
  }

  OUTLINED_FUNCTION_70_1();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2574FE60C@<X0>(uint64_t a1@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v2 = *(type metadata accessor for Proto_Model(0) + 20);
  if (qword_281538010 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_281538018;
}

uint64_t sub_2574FE688@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = a1 + *(type metadata accessor for Proto_Pipeline(0) + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574FE6C8(uint64_t (*a1)(void))
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  LODWORD(a1) = *(a1(0) + 20);
  type metadata accessor for Proto_Pipeline(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_2574FE724@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_112_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Proto_FeatureDescription(0);
  v4 = v1 + *(v3 + 24);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v5 = *(v3 + 28);
  type metadata accessor for Proto_FeatureType(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_2574FE788@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_112_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  v1[8] = sub_2577435D4();
  v3 = v1 + *(type metadata accessor for Proto_Metadata(0) + 36);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574FE7EC@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_112_0(a1);
  v2 = MEMORY[0x277D84F90];
  v1[2] = MEMORY[0x277D84F90];
  v1[3] = v2;
  v1[4] = v2;
  v1[5] = 0;
  v1[6] = v3;
  v1[7] = 0;
  v1[8] = v3;
  v4 = v1 + *(type metadata accessor for Proto_FunctionDescription(0) + 40);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_2574FE838@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = v2;
  a1[4] = v2;
  a1[5] = v2;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  a1[10] = v2;
  v3 = type metadata accessor for Proto_ModelDescription(0);
  v4 = a1 + *(v3 + 48);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v5 = *(v3 + 52);
  type metadata accessor for Proto_Metadata(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_2574FE8BC@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_112_0(a1);
  *(v1 + 16) = xmmword_257745740;
  v2 = v1 + *(type metadata accessor for Proto_SerializedModel(0) + 24);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void sub_2574FE8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v20;
  a20 = v21;
  v484 = v23;
  v485 = v22;
  v24 = type metadata accessor for Proto_SerializedModel(0);
  v25 = OUTLINED_FUNCTION_6_13(v24, &v441);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_12_1();
  v29 = OUTLINED_FUNCTION_38_0(v28);
  v30 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(v29);
  v31 = OUTLINED_FUNCTION_13(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v34);
  v35 = type metadata accessor for Proto_CoreMLModels_WordEmbedding();
  v36 = OUTLINED_FUNCTION_6_13(v35, &v438);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_12_1();
  v40 = OUTLINED_FUNCTION_38_0(v39);
  v41 = type metadata accessor for Proto_CoreMLModels_Gazetteer(v40);
  v42 = OUTLINED_FUNCTION_13(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_12_1();
  v46 = OUTLINED_FUNCTION_38_0(v45);
  v47 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing(v46);
  v48 = OUTLINED_FUNCTION_13(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_12_1();
  v52 = OUTLINED_FUNCTION_38_0(v51);
  v53 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(v52);
  v54 = OUTLINED_FUNCTION_13(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_12_1();
  v58 = OUTLINED_FUNCTION_38_0(v57);
  v59 = type metadata accessor for Proto_CoreMLModels_WordTagger(v58);
  v60 = OUTLINED_FUNCTION_13(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_12_1();
  v64 = OUTLINED_FUNCTION_38_0(v63);
  v65 = type metadata accessor for Proto_CoreMLModels_TextClassifier(v64);
  v66 = OUTLINED_FUNCTION_13(v65);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v69);
  v70 = type metadata accessor for Proto_Identity();
  v71 = OUTLINED_FUNCTION_13(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_12_1();
  v75 = OUTLINED_FUNCTION_38_0(v74);
  v76 = type metadata accessor for Proto_NonMaximumSuppression(v75);
  v77 = OUTLINED_FUNCTION_13(v76);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v80);
  v81 = type metadata accessor for Proto_ArrayFeatureExtractor();
  v82 = OUTLINED_FUNCTION_6_13(v81, &v445);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v85);
  v86 = type metadata accessor for Proto_Normalizer();
  v87 = OUTLINED_FUNCTION_6_13(v86, &v442);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_12_1();
  v91 = OUTLINED_FUNCTION_38_0(v90);
  v92 = type metadata accessor for Proto_CategoricalMapping(v91);
  v93 = OUTLINED_FUNCTION_13(v92);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v96);
  v97 = type metadata accessor for Proto_Scaler();
  v98 = OUTLINED_FUNCTION_6_13(v97, &v440);
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_12_1();
  v102 = OUTLINED_FUNCTION_38_0(v101);
  v103 = type metadata accessor for Proto_DictVectorizer(v102);
  v104 = OUTLINED_FUNCTION_13(v103);
  v106 = *(v105 + 64);
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_12_1();
  v108 = OUTLINED_FUNCTION_38_0(v107);
  v109 = type metadata accessor for Proto_FeatureVectorizer(v108);
  v110 = OUTLINED_FUNCTION_6_13(v109, &v444);
  v112 = *(v111 + 64);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_12_1();
  v114 = OUTLINED_FUNCTION_38_0(v113);
  v115 = type metadata accessor for Proto_Imputer(v114);
  v116 = OUTLINED_FUNCTION_13(v115);
  v118 = *(v117 + 64);
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_12_1();
  v120 = OUTLINED_FUNCTION_38_0(v119);
  v121 = type metadata accessor for Proto_OneHotEncoder(v120);
  v122 = OUTLINED_FUNCTION_13(v121);
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v125);
  v126 = type metadata accessor for Proto_ClassConfidenceThresholding();
  v127 = OUTLINED_FUNCTION_6_13(v126, &v443);
  v129 = *(v128 + 64);
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_12_1();
  v131 = OUTLINED_FUNCTION_38_0(v130);
  v132 = type metadata accessor for Proto_LinkedModel(v131);
  v133 = OUTLINED_FUNCTION_13(v132);
  v135 = *(v134 + 64);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_12_1();
  v137 = OUTLINED_FUNCTION_38_0(v136);
  v138 = type metadata accessor for Proto_CustomModel(v137);
  v139 = OUTLINED_FUNCTION_13(v138);
  v141 = *(v140 + 64);
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_38_0(v142);
  v143 = type metadata accessor for Proto_Odie_Library();
  v144 = OUTLINED_FUNCTION_6_13(v143, &v447);
  v146 = *(v145 + 64);
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_12_1();
  v148 = OUTLINED_FUNCTION_38_0(v147);
  v149 = type metadata accessor for Proto_MILSpec_Program(v148);
  v150 = OUTLINED_FUNCTION_13(v149);
  v152 = *(v151 + 64);
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_12_1();
  v154 = OUTLINED_FUNCTION_38_0(v153);
  v155 = type metadata accessor for Proto_ItemSimilarityRecommender(v154);
  v156 = OUTLINED_FUNCTION_13(v155);
  v158 = *(v157 + 64);
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_12_1();
  v160 = OUTLINED_FUNCTION_38_0(v159);
  v161 = type metadata accessor for Proto_NeuralNetwork(v160);
  v162 = OUTLINED_FUNCTION_13(v161);
  v164 = *(v163 + 64);
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_12_1();
  v166 = OUTLINED_FUNCTION_38_0(v165);
  v167 = type metadata accessor for Proto_KNearestNeighborsClassifier(v166);
  v168 = OUTLINED_FUNCTION_13(v167);
  v170 = *(v169 + 64);
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_12_1();
  v172 = OUTLINED_FUNCTION_38_0(v171);
  v173 = type metadata accessor for Proto_NeuralNetworkClassifier(v172);
  v174 = OUTLINED_FUNCTION_13(v173);
  v176 = *(v175 + 64);
  MEMORY[0x28223BE20](v174);
  OUTLINED_FUNCTION_12_1();
  v178 = OUTLINED_FUNCTION_38_0(v177);
  v179 = type metadata accessor for Proto_TreeEnsembleClassifier(v178);
  v180 = OUTLINED_FUNCTION_13(v179);
  v182 = *(v181 + 64);
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_12_1();
  v184 = OUTLINED_FUNCTION_38_0(v183);
  v185 = type metadata accessor for Proto_SupportVectorClassifier(v184);
  v186 = OUTLINED_FUNCTION_13(v185);
  v188 = *(v187 + 64);
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_12_1();
  v190 = OUTLINED_FUNCTION_38_0(v189);
  v191 = type metadata accessor for Proto_GLMClassifier(v190);
  v192 = OUTLINED_FUNCTION_13(v191);
  v194 = *(v193 + 64);
  MEMORY[0x28223BE20](v192);
  OUTLINED_FUNCTION_12_1();
  v196 = OUTLINED_FUNCTION_38_0(v195);
  v197 = type metadata accessor for Proto_BayesianProbitRegressor(v196);
  v198 = OUTLINED_FUNCTION_13(v197);
  v200 = *(v199 + 64);
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_12_1();
  v202 = OUTLINED_FUNCTION_38_0(v201);
  v203 = type metadata accessor for Proto_NeuralNetworkRegressor(v202);
  v204 = OUTLINED_FUNCTION_13(v203);
  v206 = *(v205 + 64);
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_12_1();
  v208 = OUTLINED_FUNCTION_38_0(v207);
  v209 = type metadata accessor for Proto_TreeEnsembleRegressor(v208);
  v210 = OUTLINED_FUNCTION_13(v209);
  v212 = *(v211 + 64);
  MEMORY[0x28223BE20](v210);
  OUTLINED_FUNCTION_12_1();
  v214 = OUTLINED_FUNCTION_38_0(v213);
  v215 = type metadata accessor for Proto_SupportVectorRegressor(v214);
  v216 = OUTLINED_FUNCTION_13(v215);
  v218 = *(v217 + 64);
  MEMORY[0x28223BE20](v216);
  OUTLINED_FUNCTION_12_1();
  v220 = OUTLINED_FUNCTION_38_0(v219);
  v221 = type metadata accessor for Proto_GLMRegressor(v220);
  v222 = OUTLINED_FUNCTION_6_13(v221, &v437);
  v224 = *(v223 + 64);
  MEMORY[0x28223BE20](v222);
  OUTLINED_FUNCTION_12_1();
  v226 = OUTLINED_FUNCTION_38_0(v225);
  v227 = type metadata accessor for Proto_Pipeline(v226);
  v228 = OUTLINED_FUNCTION_6_13(v227, &v439);
  v230 = *(v229 + 64);
  MEMORY[0x28223BE20](v228);
  OUTLINED_FUNCTION_12_1();
  v232 = OUTLINED_FUNCTION_38_0(v231);
  v233 = type metadata accessor for Proto_PipelineRegressor(v232);
  v234 = OUTLINED_FUNCTION_13(v233);
  v236 = *(v235 + 64);
  MEMORY[0x28223BE20](v234);
  OUTLINED_FUNCTION_12_1();
  v238 = OUTLINED_FUNCTION_38_0(v237);
  v239 = type metadata accessor for Proto_PipelineClassifier(v238);
  v240 = OUTLINED_FUNCTION_13(v239);
  v242 = *(v241 + 64);
  MEMORY[0x28223BE20](v240);
  OUTLINED_FUNCTION_12_1();
  v244 = OUTLINED_FUNCTION_38_0(v243);
  v483 = type metadata accessor for Proto_Model.OneOf_Type(v244);
  v245 = OUTLINED_FUNCTION_4(v483);
  v247 = *(v246 + 64);
  MEMORY[0x28223BE20](v245);
  OUTLINED_FUNCTION_11();
  v482 = (v248 - v249);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v250);
  OUTLINED_FUNCTION_167();
  v480 = v251;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v252);
  OUTLINED_FUNCTION_167();
  v481 = v253;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v254);
  OUTLINED_FUNCTION_167();
  v478 = v255;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v256);
  OUTLINED_FUNCTION_167();
  v477 = v257;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v258);
  OUTLINED_FUNCTION_167();
  v475 = v259;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v260);
  OUTLINED_FUNCTION_167();
  v472 = v261;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v262);
  OUTLINED_FUNCTION_167();
  v471 = v263;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v264);
  OUTLINED_FUNCTION_167();
  v474 = v265;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v266);
  OUTLINED_FUNCTION_167();
  v470 = v267;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v268);
  OUTLINED_FUNCTION_167();
  v476 = v269;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v270);
  OUTLINED_FUNCTION_167();
  v479 = v271;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v272);
  OUTLINED_FUNCTION_167();
  v468 = v273;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v274);
  OUTLINED_FUNCTION_167();
  v473 = v275;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v276);
  OUTLINED_FUNCTION_167();
  v465 = v277;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v278);
  OUTLINED_FUNCTION_167();
  v469 = v279;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v280);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v281);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v282);
  OUTLINED_FUNCTION_167();
  v467 = v283;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v284);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v285);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v286);
  OUTLINED_FUNCTION_167();
  v466 = v287;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v288);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v289);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v290);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v291);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v292);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v293);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v294);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  v296 = MEMORY[0x28223BE20](v295);
  v298 = &v427 - v297;
  v299 = MEMORY[0x28223BE20](v296);
  v301 = &v427 - v300;
  v302 = MEMORY[0x28223BE20](v299);
  v304 = &v427 - v303;
  v305 = MEMORY[0x28223BE20](v302);
  v307 = (&v427 - v306);
  v308 = MEMORY[0x28223BE20](v305);
  v310 = &v427 - v309;
  MEMORY[0x28223BE20](v308);
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_70();
  MEMORY[0x28223BE20](v311);
  OUTLINED_FUNCTION_167();
  v313 = v312;
  OUTLINED_FUNCTION_158();
  v315 = MEMORY[0x28223BE20](v314);
  v317 = &v427 - v316;
  MEMORY[0x28223BE20](v315);
  v319 = &v427 - v318;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BCC8, &qword_257750388);
  OUTLINED_FUNCTION_13(v320);
  v322 = *(v321 + 64);
  OUTLINED_FUNCTION_29();
  v324 = MEMORY[0x28223BE20](v323);
  v326 = &v427 - v325;
  v327 = *(v324 + 56);
  sub_25751BAC4(v485, &v427 - v325);
  v485 = v327;
  sub_25751BAC4(v484, &v326[v327]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_25751BAC4(v326, v317);
      if (OUTLINED_FUNCTION_21_6() != 1)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v448);
      sub_257501828();
      sub_25751BA18();
      goto LABEL_138;
    case 2u:
      sub_25751BAC4(v326, v313);
      if (OUTLINED_FUNCTION_21_6() != 2)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180(&v450);
      sub_25751BA6C();
      v364 = OUTLINED_FUNCTION_53_0();
      if (sub_257482184(v364, v365) & 1) != 0 && (sub_257479C78(*(v313 + 8), *(v313 + 8)))
      {
        OUTLINED_FUNCTION_61_1(&v439);
        OUTLINED_FUNCTION_0_23();
        sub_25751B040(v366, v367);
        OUTLINED_FUNCTION_20_4();
      }

      goto LABEL_137;
    case 3u:
      v372 = v457;
      sub_25751BAC4(v326, v457);
      if (OUTLINED_FUNCTION_21_6() != 3)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180(&v453);
      sub_25751BA6C();
      OUTLINED_FUNCTION_53_0();
      sub_257480000();
      if (v373 & 1) != 0 && (sub_257479D04(*(v372 + 8), *(v313 + 8)))
      {
        v374 = *(v313 + 24);
        if (sub_257487360(*(v372 + 16), *(v372 + 24), *(v313 + 16)))
        {
          v375 = *(v427 + 28);
          sub_2577431B4();
          OUTLINED_FUNCTION_0_23();
          sub_25751B040(v376, v377);
          OUTLINED_FUNCTION_20_4();
        }
      }

      goto LABEL_137;
    case 4u:
      sub_25751BAC4(v326, v310);
      if (OUTLINED_FUNCTION_21_6() != 4)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v449);
      _s20MLModelSpecification35SupportVectorRegressorConfigurationV2eeoiySbAC_ACtFZ_0();
      goto LABEL_137;
    case 5u:
      sub_25751BAC4(v326, v307);
      if (OUTLINED_FUNCTION_21_6() != 5)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180(&v451);
      sub_25751BA6C();
      _s20MLModelSpecification34TreeEnsembleRegressorConfigurationV2eeoiySbAC_ACtFZ_0(v307, v313);
      sub_25751BA18();
      goto LABEL_138;
    case 6u:
      sub_25751BAC4(v326, v304);
      if (OUTLINED_FUNCTION_21_6() != 6)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v452);
      _s20MLModelSpecification22NeuralNetworkRegressorV2eeoiySbAC_ACtFZ_0();
      sub_25751BA18();
      goto LABEL_138;
    case 7u:
      sub_25751BAC4(v326, v301);
      if (OUTLINED_FUNCTION_21_6() == 7)
      {
        OUTLINED_FUNCTION_23_6();
        OUTLINED_FUNCTION_51_2(&v454);
        _s20MLModelSpecification36BayesianProbitRegressorConfigurationV2eeoiySbAC_ACtFZ_0(v301, v307);
        sub_25751BA18();
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_66_0();
LABEL_128:
      sub_25751BA18();
      sub_2574695E4(v326, &qword_27F87BCC8, &qword_257750388);
      goto LABEL_129;
    case 8u:
      sub_25751BAC4(v326, v298);
      if (OUTLINED_FUNCTION_21_6() != 8)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180(&v455);
      sub_25751BA6C();
      _s20MLModelSpecification29LinearClassifierConfigurationV2eeoiySbAC_ACtFZ_0();
      sub_25751BA18();
      goto LABEL_138;
    case 9u:
      OUTLINED_FUNCTION_180(&v485);
      sub_25751BAC4(v355, v356);
      if (OUTLINED_FUNCTION_21_6() != 9)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v456);
      OUTLINED_FUNCTION_173();
      _s20MLModelSpecification36SupportVectorClassifierConfigurationV2eeoiySbAC_ACtFZ_0();
      goto LABEL_137;
    case 0xAu:
      OUTLINED_FUNCTION_180(&v486);
      sub_25751BAC4(v396, v397);
      if (OUTLINED_FUNCTION_21_6() != 10)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v457);
      v398 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification35TreeEnsembleClassifierConfigurationV2eeoiySbAC_ACtFZ_0(v398, v399);
      goto LABEL_137;
    case 0xBu:
      OUTLINED_FUNCTION_180(&a9);
      sub_25751BAC4(v351, v352);
      if (OUTLINED_FUNCTION_21_6() != 11)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v458);
      OUTLINED_FUNCTION_173();
      _s20MLModelSpecification23NeuralNetworkClassifierV2eeoiySbAC_ACtFZ_0();
      goto LABEL_137;
    case 0xCu:
      OUTLINED_FUNCTION_180(&a10);
      sub_25751BAC4(v353, v354);
      if (OUTLINED_FUNCTION_21_6() != 12)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v459);
      OUTLINED_FUNCTION_173();
      _s20MLModelSpecification29NearestNeighborsConfigurationV2eeoiySbAC_ACtFZ_0();
      goto LABEL_137;
    case 0xDu:
      OUTLINED_FUNCTION_180(&a12);
      sub_25751BAC4(v392, v393);
      if (OUTLINED_FUNCTION_21_6() != 13)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v460);
      OUTLINED_FUNCTION_173();
      _s20MLModelSpecification13NeuralNetworkV2eeoiySbAC_ACtFZ_0();
      goto LABEL_137;
    case 0xEu:
      OUTLINED_FUNCTION_180(&a13);
      sub_25751BAC4(v347, v348);
      if (OUTLINED_FUNCTION_21_6() != 14)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v461);
      v349 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification38ItemSimilarityRecommenderConfigurationV2eeoiySbAC_ACtFZ_0(v349, v350);
      goto LABEL_137;
    case 0xFu:
      OUTLINED_FUNCTION_180(&a14);
      sub_25751BAC4(v368, v369);
      if (OUTLINED_FUNCTION_21_6() != 15)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v462);
      v370 = OUTLINED_FUNCTION_173();
      sub_2574E0FAC(v370, v371);
      goto LABEL_137;
    case 0x10u:
      v343 = v466;
      sub_25751BAC4(v326, v466);
      if (OUTLINED_FUNCTION_21_6() != 16)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180(&v465);
      sub_25751BA6C();
      v344 = *v343 == *v313 && v343[1] == *(v313 + 8);
      if (v344 || (sub_257743994() & 1) != 0)
      {
        OUTLINED_FUNCTION_49_0(&v447);
        OUTLINED_FUNCTION_0_23();
        sub_25751B040(v345, v346);
        OUTLINED_FUNCTION_20_4();
        OUTLINED_FUNCTION_42_2();
      }

      else
      {
        OUTLINED_FUNCTION_42_2();
      }

      goto LABEL_138;
    case 0x11u:
      OUTLINED_FUNCTION_180(&a15);
      sub_25751BAC4(v380, v381);
      if (OUTLINED_FUNCTION_21_6() != 17)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v463);
      v382 = OUTLINED_FUNCTION_173();
      sub_2574AEAC0(v382, v383);
      goto LABEL_137;
    case 0x12u:
      OUTLINED_FUNCTION_180(&a16);
      sub_25751BAC4(v394, v395);
      if (OUTLINED_FUNCTION_21_6() != 18)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v464);
      OUTLINED_FUNCTION_173();
      _s20MLModelSpecification24LinkedModelConfigurationV2eeoiySbAC_ACtFZ_0();
      goto LABEL_137;
    case 0x13u:
      sub_25751BAC4(v326, v467);
      if (OUTLINED_FUNCTION_21_6() != 19)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180(&v468);
      sub_25751BA6C();
      v405 = OUTLINED_FUNCTION_53_0();
      sub_257479510(v405, v406, v407, v408, v409, v410, v411, v412, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436);
      if (v413)
      {
        OUTLINED_FUNCTION_49_0(&v443);
        OUTLINED_FUNCTION_0_23();
        sub_25751B040(v414, v415);
        OUTLINED_FUNCTION_20_4();
      }

      goto LABEL_137;
    case 0x14u:
      OUTLINED_FUNCTION_180(&a17);
      sub_25751BAC4(v384, v385);
      if (OUTLINED_FUNCTION_21_6() != 20)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v466);
      v386 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification26OneHotEncoderConfigurationV2eeoiySbAC_ACtFZ_0(v386, v387);
      goto LABEL_137;
    case 0x15u:
      OUTLINED_FUNCTION_180(&a18);
      sub_25751BAC4(v388, v389);
      if (OUTLINED_FUNCTION_21_6() != 21)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v467);
      v390 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification20ImputerConfigurationV2eeoiySbAC_ACtFZ_0(v390, v391);
      goto LABEL_137;
    case 0x16u:
      sub_25751BAC4(v326, v469);
      if (OUTLINED_FUNCTION_21_6() != 22)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180(&v470);
      sub_25751BA6C();
      OUTLINED_FUNCTION_53_0();
      sub_257479344();
      if (v402)
      {
        OUTLINED_FUNCTION_49_0(&v444);
        OUTLINED_FUNCTION_0_23();
        sub_25751B040(v403, v404);
        OUTLINED_FUNCTION_20_4();
      }

      goto LABEL_137;
    case 0x17u:
      sub_25751BAC4(v326, v465);
      if (OUTLINED_FUNCTION_21_6() != 23)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v469);
      v416 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification33DictionaryVectorizerConfigurationV2eeoiySbAC_ACtFZ_0(v416, v417);
      goto LABEL_137;
    case 0x18u:
      v359 = v473;
      sub_25751BAC4(v326, v473);
      if (OUTLINED_FUNCTION_21_6() != 24)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180(&v472);
      sub_25751BA6C();
      v360 = OUTLINED_FUNCTION_53_0();
      if (sub_257479D04(v360, v361) & 1) != 0 && (sub_257479D04(*(v359 + 8), *(v313 + 8)))
      {
        OUTLINED_FUNCTION_61_1(&v440);
        OUTLINED_FUNCTION_0_23();
        sub_25751B040(v362, v363);
        OUTLINED_FUNCTION_20_4();
      }

      goto LABEL_137;
    case 0x19u:
      sub_25751BAC4(v326, v468);
      if (OUTLINED_FUNCTION_21_6() != 25)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v471);
      v357 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification31CategoricalMappingConfigurationV2eeoiySbAC_ACtFZ_0(v357, v358);
      goto LABEL_137;
    case 0x1Au:
      v422 = v479;
      sub_25751BAC4(v326, v479);
      if (OUTLINED_FUNCTION_21_6() != 26)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180(&v474);
      sub_25751BA6C();
      v423 = *v422;
      v424 = *v313;
      if (*(v313 + 8) == 1)
      {
        if (v424)
        {
          if (v424 == 1)
          {
            if (v423 != 1)
            {
              goto LABEL_143;
            }
          }

          else if (v423 != 2)
          {
            goto LABEL_143;
          }

LABEL_140:
          OUTLINED_FUNCTION_49_0(&v442);
          OUTLINED_FUNCTION_0_23();
          sub_25751B040(v425, v426);
          OUTLINED_FUNCTION_20_4();
          OUTLINED_FUNCTION_43_2();
          goto LABEL_138;
        }

        if (!v423)
        {
          goto LABEL_140;
        }
      }

      else if (v423 == v424)
      {
        goto LABEL_140;
      }

LABEL_143:
      OUTLINED_FUNCTION_43_2();
LABEL_138:
      sub_25751BA18();
      OUTLINED_FUNCTION_11_9();
LABEL_129:
      OUTLINED_FUNCTION_35();
      return;
    case 0x1Bu:
      sub_25751BAC4(v326, v476);
      if (OUTLINED_FUNCTION_21_6() != 27)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180(&v475);
      sub_25751BA6C();
      v337 = OUTLINED_FUNCTION_53_0();
      if (sub_257487374(v337, v338))
      {
        OUTLINED_FUNCTION_49_0(&v445);
        OUTLINED_FUNCTION_0_23();
        sub_25751B040(v339, v340);
        OUTLINED_FUNCTION_20_4();
      }

      goto LABEL_137;
    case 0x1Cu:
      sub_25751BAC4(v326, v470);
      if (OUTLINED_FUNCTION_21_6() != 28)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v473);
      v418 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification33NonMaximumSuppressorConfigurationV2eeoiySbAC_ACtFZ_0(v418, v419);
      goto LABEL_137;
    case 0x1Du:
      sub_25751BAC4(v326, v474);
      if (OUTLINED_FUNCTION_21_6() != 29)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180(&v477);
      sub_25751BA6C();
      sub_2577431B4();
      OUTLINED_FUNCTION_0_23();
      sub_25751B040(v420, v421);
      sub_257743644();
      goto LABEL_137;
    case 0x1Eu:
      sub_25751BAC4(v326, v471);
      if (OUTLINED_FUNCTION_21_6() != 30)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v476);
      v400 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification27TextClassifierConfigurationV2eeoiySbAC_ACtFZ_0(v400, v401);
      goto LABEL_137;
    case 0x1Fu:
      sub_25751BAC4(v326, v472);
      if (OUTLINED_FUNCTION_21_6() != 31)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v478);
      v378 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification23WordTaggerConfigurationV2eeoiySbAC_ACtFZ_0(v378, v379);
      goto LABEL_137;
    case 0x20u:
      sub_25751BAC4(v326, v475);
      if (OUTLINED_FUNCTION_21_6() != 32)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v479);
      OUTLINED_FUNCTION_173();
      sub_25763033C();
      goto LABEL_137;
    case 0x21u:
      sub_25751BAC4(v326, v477);
      if (OUTLINED_FUNCTION_21_6() != 33)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v480);
      OUTLINED_FUNCTION_173();
      sub_257618F3C();
      goto LABEL_137;
    case 0x22u:
      sub_25751BAC4(v326, v478);
      if (OUTLINED_FUNCTION_21_6() != 34)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v481);
      v341 = OUTLINED_FUNCTION_173();
      _s20MLModelSpecification22GazetteerConfigurationV2eeoiySbAC_ACtFZ_0(v341, v342);
      goto LABEL_137;
    case 0x23u:
      v332 = v481;
      sub_25751BAC4(v326, v481);
      if (OUTLINED_FUNCTION_21_6() != 35)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180(&v483);
      sub_25751BA6C();
      if (*v332 == *v313)
      {
        v333 = *(v332 + 8) == *(v313 + 8) && *(v332 + 16) == *(v313 + 16);
        if (v333 || (sub_257743994()) && (MEMORY[0x259C648D0](*(v332 + 24), *(v332 + 32), *(v313 + 24), *(v313 + 32)))
        {
          v334 = *(v428 + 28);
          sub_2577431B4();
          OUTLINED_FUNCTION_0_23();
          sub_25751B040(v335, v336);
          OUTLINED_FUNCTION_20_4();
        }
      }

      goto LABEL_137;
    case 0x24u:
      sub_25751BAC4(v326, v480);
      if (OUTLINED_FUNCTION_21_6() != 36)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_51_2(&v482);
      OUTLINED_FUNCTION_173();
      sub_2574A6564();
      goto LABEL_137;
    case 0x25u:
      v328 = v482;
      sub_25751BAC4(v326, v482);
      if (OUTLINED_FUNCTION_21_6() != 37)
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_23_6();
      OUTLINED_FUNCTION_180(&v484);
      sub_25751BA6C();
      v329 = *v328 == *v313 && v328[1] == *(v313 + 8);
      if (v329 || (sub_257743994()) && (MEMORY[0x259C648D0](v328[2], v328[3], *(v313 + 16), *(v313 + 24)))
      {
        OUTLINED_FUNCTION_61_1(&v441);
        OUTLINED_FUNCTION_0_23();
        sub_25751B040(v330, v331);
        OUTLINED_FUNCTION_20_4();
      }

LABEL_137:
      sub_25751BA18();
      goto LABEL_138;
    default:
      sub_25751BAC4(v326, v319);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_128;
      }

      OUTLINED_FUNCTION_180(&v446);
      sub_25751BA6C();
      sub_257501828();
      sub_25751BA18();
      OUTLINED_FUNCTION_205();
      goto LABEL_138;
  }
}

uint64_t sub_257500C64()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743344();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_6_8();
      sub_257504104(v3, v4, v5, v6, v7, &qword_281537FF0, v8);
    }
  }

  return result;
}

void sub_257500D1C()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  if (!*(*v1 + 16) || (type metadata accessor for Proto_Model(0), sub_25751B040(&qword_281537FF0, type metadata accessor for Proto_Model), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(), (v0 = v2) == 0))
  {
    if (!*(*(v3 + 8) + 16) || (OUTLINED_FUNCTION_11_6(), sub_257743514(), !v0))
    {
      v4 = *(type metadata accessor for Proto_Pipeline(0) + 24);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_257500DEC()
{
  OUTLINED_FUNCTION_267();
  if ((sub_257482184(*v2, *v3) & 1) == 0 || (sub_257479C78(*(v1 + 8), *(v0 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for Proto_Pipeline(0) + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_23();
  sub_25751B040(v5, v6);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_257500ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BC80, type metadata accessor for Proto_Pipeline);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257500F78(uint64_t a1)
{
  v2 = sub_25751B040(&qword_27F87BA78, type metadata accessor for Proto_Pipeline);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257501040()
{
  sub_25751B040(&qword_27F87BA78, type metadata accessor for Proto_Pipeline);

  return sub_257743424();
}

uint64_t sub_257501184(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BC88, type metadata accessor for Proto_PipelineClassifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257501224(uint64_t a1)
{
  v2 = sub_25751B040(&qword_27F87BA60, type metadata accessor for Proto_PipelineClassifier);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575012EC()
{
  sub_25751B040(&qword_27F87BA60, type metadata accessor for Proto_PipelineClassifier);

  return sub_257743424();
}

uint64_t sub_2575013A4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2577435B4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2577442B0;
  v8 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v8 = "pipeline";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21870];
  v10 = sub_257743584();
  OUTLINED_FUNCTION_4(v10);
  (*(v11 + 104))(v8, v9);
  return sub_257743594();
}

void sub_257501504()
{
  while (1)
  {
    v1 = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_25750157C();
    }
  }
}

void sub_25750157C()
{
  OUTLINED_FUNCTION_188_0();
  v0 = OUTLINED_FUNCTION_27_5();
  v2 = *(v1(v0) + 20);
  type metadata accessor for Proto_Pipeline(0);
  OUTLINED_FUNCTION_37_3();
  sub_25751B040(v3, v4);
  OUTLINED_FUNCTION_12_10();
  sub_2577433D4();
  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_257501600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_7();
  result = sub_257501654(v5, v6, v7, a3, v8);
  if (!v3)
  {
    OUTLINED_FUNCTION_222();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_257501654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v23[3] = a4;
  v23[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = type metadata accessor for Proto_Pipeline(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  v16 = *(a5(0) + 20);
  sub_257487308();
  OUTLINED_FUNCTION_65_1();
  if (__swift_getEnumTagSinglePayload(v17, v18, v19) == 1)
  {
    return sub_2574695E4(v11, &qword_27F87B9B0, &qword_257770B80);
  }

  sub_25751BA6C();
  OUTLINED_FUNCTION_37_3();
  sub_25751B040(v21, v22);
  sub_257743574();
  OUTLINED_FUNCTION_66_0();
  return sub_25751BA18();
}

void sub_257501828()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = type metadata accessor for Proto_Pipeline(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12_1();
  v31 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = (&v30 - v11);
  v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BCD0, &qword_257750398) - 8);
  v14 = *(*v13 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = *(v1(0) + 20);
  v19 = v13[14];
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_155(v17, 1, v2);
  if (!v22)
  {
    sub_257487308();
    OUTLINED_FUNCTION_155(&v17[v19], 1, v2);
    if (!v22)
    {
      v25 = v31;
      sub_25751BA6C();
      if (sub_257482184(*v12, *v25) & 1) != 0 && (sub_257479C78(v12[1], v25[1]))
      {
        v26 = *(v2 + 24);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_23();
        sub_25751B040(v27, v28);
        v29 = sub_257743644();
        sub_25751BA18();
        OUTLINED_FUNCTION_280();
        sub_25751BA18();
        sub_2574695E4(v17, &qword_27F87B9B0, &qword_257770B80);
        if ((v29 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_6;
      }

      sub_25751BA18();
      sub_25751BA18();
      v23 = &qword_27F87B9B0;
      v24 = &qword_257770B80;
LABEL_16:
      sub_2574695E4(v17, v23, v24);
      goto LABEL_17;
    }

    sub_25751BA18();
LABEL_10:
    v23 = &qword_27F87BCD0;
    v24 = &qword_257750398;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_155(&v17[v19], 1, v2);
  if (!v22)
  {
    goto LABEL_10;
  }

  sub_2574695E4(v17, &qword_27F87B9B0, &qword_257770B80);
LABEL_6:
  sub_2577431B4();
  OUTLINED_FUNCTION_0_23();
  sub_25751B040(v20, v21);
  sub_257743644();
LABEL_17:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257501C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BC90, type metadata accessor for Proto_PipelineRegressor);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257501CB8(uint64_t a1)
{
  v2 = sub_25751B040(&qword_27F87BA48, type metadata accessor for Proto_PipelineRegressor);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257501D80()
{
  sub_25751B040(&qword_27F87BA48, type metadata accessor for Proto_PipelineRegressor);

  return sub_257743424();
}

uint64_t sub_257501E2C()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8908);
  __swift_project_value_buffer(v0, qword_27F8E8908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2577442C0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shortDescription";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257502034()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_6_8();
      sub_2575020AC();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743394();
    }
  }

  return result;
}

uint64_t sub_2575020AC()
{
  v0 = *(type metadata accessor for Proto_FeatureDescription(0) + 28);
  type metadata accessor for Proto_FeatureType(0);
  sub_25751B040(&qword_281537E88, type metadata accessor for Proto_FeatureType);
  return sub_2577433D4();
}

uint64_t sub_257502160()
{
  OUTLINED_FUNCTION_2_7();
  v4 = *v1;
  v5 = v1[1];
  OUTLINED_FUNCTION_1_6();
  if (!v6 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v0 = v2) == 0))
  {
    v8 = *(v3 + 16);
    v9 = *(v3 + 24);
    OUTLINED_FUNCTION_1_6();
    if (!v10 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v0 = v2) == 0))
    {
      OUTLINED_FUNCTION_280();
      OUTLINED_FUNCTION_11_6();
      result = sub_257502200(v11, v12, v13, v14);
      if (!v0)
      {
        v15 = *(type metadata accessor for Proto_FeatureDescription(0) + 24);
        return OUTLINED_FUNCTION_7_5();
      }
    }
  }

  return result;
}

uint64_t sub_257502200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FeatureType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_FeatureDescription(0) + 28);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879C38, &qword_257744550);
  }

  sub_25751BA6C();
  sub_25751B040(&qword_281537E88, type metadata accessor for Proto_FeatureType);
  sub_257743574();
  return sub_25751BA18();
}

void _s20MLModelSpecification18FeatureDescriptionV2eeoiySbAC_ACtFZ_0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_267();
  v2 = type metadata accessor for Proto_FeatureType(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C38, &qword_257744550);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_75_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C40, &qword_257750390);
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = *v1 == *v0 && v1[1] == v0[1];
  if (!v16 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_23;
  }

  v17 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v17 && (sub_257743994() & 1) == 0)
  {
    goto LABEL_23;
  }

  v27 = type metadata accessor for Proto_FeatureDescription(0);
  v18 = *(v27 + 28);
  v19 = *(v10 + 48);
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_155(v15, 1, v2);
  if (v16)
  {
    OUTLINED_FUNCTION_155(&v15[v19], 1, v2);
    if (v16)
    {
      sub_2574695E4(v15, &qword_27F879C38, &qword_257744550);
LABEL_22:
      v23 = *(v27 + 24);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_23();
      sub_25751B040(v24, v25);
      OUTLINED_FUNCTION_4_2();
      goto LABEL_23;
    }

LABEL_19:
    sub_2574695E4(v15, &qword_27F879C40, &qword_257750390);
    goto LABEL_23;
  }

  sub_257487308();
  OUTLINED_FUNCTION_155(&v15[v19], 1, v2);
  if (v20)
  {
    sub_25751BA18();
    goto LABEL_19;
  }

  sub_25751BA6C();
  sub_2574C9990();
  v22 = v21;
  sub_25751BA18();
  sub_25751BA18();
  sub_2574695E4(v15, &qword_27F879C38, &qword_257744550);
  if (v22)
  {
    goto LABEL_22;
  }

LABEL_23:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25750270C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BC70, type metadata accessor for Proto_FeatureDescription);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575027AC(uint64_t a1)
{
  v2 = sub_25751B040(&qword_2815379E0, type metadata accessor for Proto_FeatureDescription);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257502874()
{
  sub_25751B040(&qword_2815379E0, type metadata accessor for Proto_FeatureDescription);

  return sub_257743424();
}

uint64_t sub_2575028F4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8920);
  __swift_project_value_buffer(v0, qword_27F8E8920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "shortDescription";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "versionString";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "author";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "license";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 100;
  *v16 = "userDefined";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_257502B78()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      default:
        if (result == 100)
        {
          OUTLINED_FUNCTION_6_8();
          sub_257502C1C();
        }

        break;
    }
  }

  return result;
}

uint64_t sub_257502C94()
{
  OUTLINED_FUNCTION_2_7();
  v4 = *v1;
  v5 = v1[1];
  OUTLINED_FUNCTION_1_6();
  if (!v6 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v0 = v2) == 0))
  {
    v8 = v3[2];
    v9 = v3[3];
    OUTLINED_FUNCTION_1_6();
    if (!v10 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v0 = v2) == 0))
    {
      v11 = v3[4];
      v12 = v3[5];
      OUTLINED_FUNCTION_1_6();
      if (!v13 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v0 = v2) == 0))
      {
        v14 = v3[6];
        v15 = v3[7];
        OUTLINED_FUNCTION_1_6();
        if (!v16 || (OUTLINED_FUNCTION_3_10(), result = sub_257743534(), (v0 = v2) == 0))
        {
          if (!*(v3[8] + 16) || (sub_257743184(), result = sub_257743444(), !v0))
          {
            v17 = *(type metadata accessor for Proto_Metadata(0) + 36);
            return OUTLINED_FUNCTION_7_5();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_257502DAC(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_26_2(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2] == v2[2] && v3[3] == v2[3];
  if (!v7 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v8 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v8 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v9 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v9 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  sub_2574769AC(v3[8], v2[8]);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for Proto_Metadata(0) + 36);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_23();
  sub_25751B040(v12, v13);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_257502EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BCA0, type metadata accessor for Proto_Metadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257502F9C(uint64_t a1)
{
  v2 = sub_25751B040(&qword_281537F48, type metadata accessor for Proto_Metadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257503064()
{
  sub_25751B040(&qword_281537F48, type metadata accessor for Proto_Metadata);

  return sub_257743424();
}

uint64_t sub_2575030E4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8938);
  __swift_project_value_buffer(v0, qword_27F8E8938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257745520;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_257743584();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "output";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "state";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "predictedFeatureName";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "predictedProbabilitiesName";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  return sub_257743594();
}

uint64_t sub_2575033A4()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 5:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      case 2:
        OUTLINED_FUNCTION_6_8();
        sub_257503458();
        break;
      case 3:
        OUTLINED_FUNCTION_6_8();
        sub_257503F7C();
        break;
      case 6:
        OUTLINED_FUNCTION_6_8();
        sub_257503FF0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_257503458()
{
  type metadata accessor for Proto_FeatureDescription(0);
  sub_25751B040(&qword_2815379E0, type metadata accessor for Proto_FeatureDescription);
  return sub_2577433C4();
}

void sub_2575034F8()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1_6();
  if (!v5 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v1))
  {
    if (!*(v2[2] + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v6, v7), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(), !v1))
    {
      if (!*(v2[3] + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v8, v9), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(), !v1))
      {
        v10 = v2[5];
        v11 = v2[6];
        OUTLINED_FUNCTION_1_6();
        if (!v12 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v1))
        {
          v13 = v2[7];
          v14 = v2[8];
          OUTLINED_FUNCTION_1_6();
          if (!v15 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v1))
          {
            if (!*(v2[4] + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v16, v17), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(), !v1))
            {
              v18 = *(type metadata accessor for Proto_FunctionDescription(0) + 40);
              OUTLINED_FUNCTION_7_5();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t _s20MLModelSpecification19FunctionDescriptionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_26_2(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2];
  v8 = v2[2];
  sub_25747EBD4();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v3[3];
  v11 = v2[3];
  sub_25747EBD4();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = v3[4];
  v14 = v2[4];
  sub_25747EBD4();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = v3[5] == v2[5] && v3[6] == v2[6];
  if (!v16 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v17 = v3[7] == v2[7] && v3[8] == v2[8];
  if (!v17 && (sub_257743994() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for Proto_FunctionDescription(0) + 40);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_23();
  sub_25751B040(v19, v20);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_257503790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_257503804(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_257503878(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_6;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_2575038CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BC98, type metadata accessor for Proto_FunctionDescription);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_25750396C(uint64_t a1)
{
  v2 = sub_25751B040(&qword_27F87BA18, type metadata accessor for Proto_FunctionDescription);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257503A34()
{
  sub_25751B040(&qword_27F87BA18, type metadata accessor for Proto_FunctionDescription);

  return sub_257743424();
}

uint64_t sub_257503AB4()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8950);
  __swift_project_value_buffer(v0, qword_27F8E8950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_257748730;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 20;
  *v4 = "functions";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 21;
  *v8 = "defaultFunctionName";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 100;
  *v10 = "metadata";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 1;
  *v12 = "input";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 10;
  *v14 = "output";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 13;
  *v16 = "state";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "predictedFeatureName";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "predictedProbabilitiesName";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 50;
  *v22 = "trainingInput";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_257503E30()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 10:
        OUTLINED_FUNCTION_6_8();
        sub_257503FF0();
        break;
      case 11:
      case 12:
      case 21:
        OUTLINED_FUNCTION_10_7();
        sub_257743394();
        break;
      case 13:
        OUTLINED_FUNCTION_6_8();
        sub_257504064();
        break;
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
        continue;
      case 20:
        v3 = OUTLINED_FUNCTION_6_8();
        sub_257504104(v3, v4, v5, v6, v7, &qword_27F87BA18, v8);
        break;
      default:
        switch(result)
        {
          case 100:
            OUTLINED_FUNCTION_6_8();
            sub_257504240();
            break;
          case 50:
            OUTLINED_FUNCTION_6_8();
            sub_2575041A0();
            break;
          case 1:
            OUTLINED_FUNCTION_6_8();
            sub_257503F7C();
            break;
        }

        break;
    }
  }
}

uint64_t sub_257503F7C()
{
  v0 = OUTLINED_FUNCTION_27_5();
  type metadata accessor for Proto_FeatureDescription(v0);
  OUTLINED_FUNCTION_1_14();
  sub_25751B040(v1, v2);
  OUTLINED_FUNCTION_12_10();
  return sub_2577433C4();
}

uint64_t sub_257503FF0()
{
  v0 = OUTLINED_FUNCTION_27_5();
  type metadata accessor for Proto_FeatureDescription(v0);
  OUTLINED_FUNCTION_1_14();
  sub_25751B040(v1, v2);
  OUTLINED_FUNCTION_12_10();
  return sub_2577433C4();
}

uint64_t sub_257504064()
{
  type metadata accessor for Proto_FeatureDescription(0);
  sub_25751B040(&qword_2815379E0, type metadata accessor for Proto_FeatureDescription);
  return sub_2577433C4();
}

uint64_t sub_257504104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  a5(0);
  sub_25751B040(a6, a7);
  return sub_2577433C4();
}

uint64_t sub_2575041A0()
{
  type metadata accessor for Proto_FeatureDescription(0);
  sub_25751B040(&qword_2815379E0, type metadata accessor for Proto_FeatureDescription);
  return sub_2577433C4();
}

uint64_t sub_257504240()
{
  v0 = *(type metadata accessor for Proto_ModelDescription(0) + 52);
  type metadata accessor for Proto_Metadata(0);
  sub_25751B040(&qword_281537F48, type metadata accessor for Proto_Metadata);
  return sub_2577433D4();
}

void sub_2575042F4()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  if (!*(*(v1 + 24) + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v4, v5), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(), (v0 = v2) == 0))
  {
    if (!*(v3[4] + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v6, v7), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(), (v0 = v2) == 0))
    {
      v8 = v3[6];
      v9 = v3[7];
      OUTLINED_FUNCTION_1_6();
      if (!v10 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), (v0 = v2) == 0))
      {
        v11 = v3[8];
        v12 = v3[9];
        OUTLINED_FUNCTION_1_6();
        if (!v13 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), (v0 = v2) == 0))
        {
          if (!*(v3[5] + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v14, v15), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(), (v0 = v2) == 0))
          {
            if (!*(*v3 + 16) || (type metadata accessor for Proto_FunctionDescription(0), sub_25751B040(&qword_27F87BA18, type metadata accessor for Proto_FunctionDescription), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(), (v0 = v2) == 0))
            {
              v16 = v3[1];
              v17 = v3[2];
              OUTLINED_FUNCTION_1_6();
              if (!v18 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), (v0 = v2) == 0))
              {
                if (!*(v3[10] + 16) || (OUTLINED_FUNCTION_46_2(), OUTLINED_FUNCTION_1_14(), sub_25751B040(v19, v20), OUTLINED_FUNCTION_55_0(), OUTLINED_FUNCTION_15_3(), (v0 = v2) == 0))
                {
                  OUTLINED_FUNCTION_280();
                  OUTLINED_FUNCTION_11_6();
                  sub_257504534(v21, v22, v23, v24);
                  if (!v0)
                  {
                    v25 = *(type metadata accessor for Proto_ModelDescription(0) + 48);
                    OUTLINED_FUNCTION_7_5();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_257504534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD0, &unk_257744360);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Metadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for Proto_ModelDescription(0) + 52);
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879BD0, &unk_257744360);
  }

  sub_25751BA6C();
  sub_25751B040(&qword_281537F48, type metadata accessor for Proto_Metadata);
  sub_257743574();
  return sub_25751BA18();
}

uint64_t sub_257504A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_257504AE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_2577431B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_257504B5C(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_6;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_257504BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BCA8, type metadata accessor for Proto_ModelDescription);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_257504C50(uint64_t a1)
{
  v2 = sub_25751B040(&qword_281537B00, type metadata accessor for Proto_ModelDescription);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_257504D18()
{
  sub_25751B040(&qword_281537B00, type metadata accessor for Proto_ModelDescription);

  return sub_257743424();
}

uint64_t sub_257504DB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2577435B4();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257743FF0;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = sub_257743584();
  OUTLINED_FUNCTION_4(v16);
  v18 = *(v17 + 104);
  (v18)(v14, v15, v16);
  v19 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v19 = a5;
  *(v19 + 1) = 5;
  v19[16] = 2;
  v18();
  return sub_257743594();
}

uint64_t sub_257504F70()
{
  OUTLINED_FUNCTION_5_9();
  while (1)
  {
    OUTLINED_FUNCTION_222();
    result = sub_257743234();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_10_7();
      sub_2577432D4();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_10_7();
      sub_257743394();
    }
  }

  return result;
}

void sub_257504FDC()
{
  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_2_7();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1_6();
  if (!v5 || (OUTLINED_FUNCTION_3_10(), sub_257743534(), !v1))
  {
    if (sub_2576FF394(*(v2 + 16), *(v2 + 24)) || (OUTLINED_FUNCTION_3_10(), sub_2577434D4(), !v1))
    {
      v6 = *(type metadata accessor for Proto_SerializedModel(0) + 24);
      OUTLINED_FUNCTION_7_5();
    }
  }

  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_257505074(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_26_2(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_257743994() & 1) == 0 || (MEMORY[0x259C648D0](*(v3 + 16), *(v3 + 24), *(v2 + 16), *(v2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Proto_SerializedModel(0) + 24);
  sub_2577431B4();
  OUTLINED_FUNCTION_0_23();
  sub_25751B040(v8, v9);
  return OUTLINED_FUNCTION_4_2() & 1;
}

uint64_t sub_25750515C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25751B040(&qword_27F87BC78, type metadata accessor for Proto_SerializedModel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2575051FC(uint64_t a1)
{
  v2 = sub_25751B040(&qword_27F87B9F8, type metadata accessor for Proto_SerializedModel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2575052C4()
{
  sub_25751B040(&qword_27F87B9F8, type metadata accessor for Proto_SerializedModel);

  return sub_257743424();
}

uint64_t sub_257505344()
{
  v0 = sub_2577435B4();
  __swift_allocate_value_buffer(v0, qword_27F8E8980);
  __swift_project_value_buffer(v0, qword_27F8E8980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A378, &unk_257746410);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A380, &unk_257745F40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_25774F430;
  v4 = v88 + v3 + v1[14];
  *(v88 + v3) = 1;
  *v4 = "specificationVersion";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_257743584();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v88 + v3 + v2 + v1[14];
  *(v88 + v3 + v2) = 2;
  *v8 = "description";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v88 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 10;
  *v10 = "isUpdatable";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v88 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 200;
  *v12 = "pipelineClassifier";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v88 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 201;
  *v14 = "pipelineRegressor";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v7();
  v15 = (v88 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 202;
  *v16 = "pipeline";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v88 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 300;
  *v18 = "glmRegressor";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v7();
  v19 = (v88 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 301;
  *v20 = "supportVectorRegressor";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v7();
  v21 = (v88 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 302;
  *v22 = "treeEnsembleRegressor";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v7();
  v23 = (v88 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 303;
  *v24 = "neuralNetworkRegressor";
  *(v24 + 1) = 22;
  v24[16] = 2;
  v7();
  v25 = (v88 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 304;
  *v26 = "bayesianProbitRegressor";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v7();
  v27 = (v88 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 400;
  *v28 = "glmClassifier";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v88 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 401;
  *v30 = "supportVectorClassifier";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v88 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 402;
  *v32 = "treeEnsembleClassifier";
  *(v32 + 1) = 22;
  v32[16] = 2;
  v7();
  v33 = (v88 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 403;
  *v34 = "neuralNetworkClassifier";
  *(v34 + 1) = 23;
  v34[16] = 2;
  v7();
  v35 = (v88 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 404;
  *v36 = "kNearestNeighborsClassifier";
  *(v36 + 1) = 27;
  v36[16] = 2;
  v7();
  v37 = (v88 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 500;
  *v38 = "neuralNetwork";
  *(v38 + 1) = 13;
  v38[16] = 2;
  v7();
  v39 = (v88 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 501;
  *v40 = "itemSimilarityRecommender";
  *(v40 + 1) = 25;
  v40[16] = 2;
  v7();
  v41 = (v88 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 502;
  *v42 = "mlProgram";
  *(v42 + 1) = 9;
  v42[16] = 2;
  v7();
  v43 = (v88 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 503;
  *v44 = "odieLibrary";
  *(v44 + 1) = 11;
  v44[16] = 2;
  v7();
  v45 = (v88 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 555;
  *v46 = "customModel";
  *(v46 + 1) = 11;
  v46[16] = 2;
  v7();
  v47 = (v88 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 556;
  *v48 = "linkedModel";
  *(v48 + 1) = 11;
  v48[16] = 2;
  v7();
  v49 = (v88 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 560;
  *v50 = "classConfidenceThresholding";
  *(v50 + 1) = 27;
  v50[16] = 2;
  v7();
  v51 = (v88 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 600;
  *v52 = "oneHotEncoder";
  *(v52 + 1) = 13;
  v52[16] = 2;
  v7();
  v53 = (v88 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 601;
  *v54 = "imputer";
  *(v54 + 1) = 7;
  v54[16] = 2;
  v7();
  v55 = (v88 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 602;
  *v56 = "featureVectorizer";
  *(v56 + 1) = 17;
  v56[16] = 2;
  v7();
  v57 = (v88 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 603;
  *v58 = "dictVectorizer";
  *(v58 + 1) = 14;
  v58[16] = 2;
  v7();
  v59 = (v88 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 604;
  *v60 = "scaler";
  *(v60 + 1) = 6;
  v60[16] = 2;
  v7();
  v61 = (v88 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 606;
  *v62 = "categoricalMapping";
  *(v62 + 1) = 18;
  v62[16] = 2;
  v7();
  v63 = (v88 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 607;
  *v64 = "normalizer";
  *(v64 + 1) = 10;
  v64[16] = 2;
  v7();
  v65 = (v88 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 609;
  *v66 = "arrayFeatureExtractor";
  *(v66 + 1) = 21;
  v66[16] = 2;
  v7();
  v67 = (v88 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 610;
  *v68 = "nonMaximumSuppression";
  *(v68 + 1) = 21;
  v68[16] = 2;
  v7();
  v69 = (v88 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 900;
  *v70 = "identity";
  *(v70 + 1) = 8;
  v70[16] = 2;
  v7();
  v71 = (v88 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 2000;
  *v72 = "textClassifier";
  *(v72 + 1) = 14;
  v72[16] = 2;
  v7();
  v73 = (v88 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 2001;
  *v74 = "wordTagger";
  *(v74 + 1) = 10;
  v74[16] = 2;
  v7();
  v75 = (v88 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 2002;
  *v76 = "visionFeaturePrint";
  *(v76 + 1) = 18;
  v76[16] = 2;
  v7();
  v77 = (v88 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 2003;
  *v78 = "soundAnalysisPreprocessing";
  *(v78 + 1) = 26;
  v78[16] = 2;
  v7();
  v79 = (v88 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 2004;
  *v80 = "gazetteer";
  *(v80 + 1) = 9;
  v80[16] = 2;
  v7();
  v81 = (v88 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 2005;
  *v82 = "wordEmbedding";
  *(v82 + 1) = 13;
  v82[16] = 2;
  v7();
  v83 = (v88 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 2006;
  *v84 = "audioFeaturePrint";
  *(v84 + 1) = 17;
  v84[16] = 2;
  v7();
  v85 = (v88 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 3000;
  *v86 = "serializedModel";
  *(v86 + 1) = 15;
  v86[16] = 2;
  v7();
  return sub_257743594();
}

uint64_t sub_257505EB0()
{
  OUTLINED_FUNCTION_64_0();
  result = sub_257505EE0();
  qword_281538018 = result;
  return result;
}

uint64_t sub_257505EE0()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p;
  v2 = type metadata accessor for Proto_ModelDescription(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable) = 0;
  v3 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  v4 = type metadata accessor for Proto_Model.OneOf_Type(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  return v0;
}

void sub_257505F58()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_75_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20]();
  *(v0 + 16) = 0;
  type metadata accessor for Proto_ModelDescription(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
  *(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable) = 0;
  type metadata accessor for Proto_Model.OneOf_Type(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_296();
  v18 = *(v2 + 16);
  swift_beginAccess();
  *(v0 + 16) = v18;
  OUTLINED_FUNCTION_296();
  sub_257487308();
  OUTLINED_FUNCTION_70_1();
  sub_25751BB28();
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
  OUTLINED_FUNCTION_296();
  LOBYTE(v19) = *(v2 + v19);
  swift_beginAccess();
  *(v0 + v13) = v19;
  OUTLINED_FUNCTION_296();
  sub_257487308();

  OUTLINED_FUNCTION_70_1();
  sub_25751BB28();
  swift_endAccess();
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257506184()
{
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__description_p, &qword_27F879BD8, &qword_257750240);
  sub_2574695E4(v0 + OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type, &qword_27F879BE0, &qword_257744370);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_257506240()
{
  sub_2575063A0(319, &qword_281537AE0, type metadata accessor for Proto_ModelDescription, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2575063A0(319, &qword_281538030, type metadata accessor for Proto_Model.OneOf_Type, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2575063A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25750646C()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_23Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2577431B4();
  v7 = OUTLINED_FUNCTION_18_3(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t __swift_store_extra_inhabitant_index_24Tm()
{
  v4 = OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_18_3(v4);
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_55_0();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
    v6 = v1 + *(v2 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v6, v0, v0, v7);
}

void sub_2575066D8()
{
  sub_2577431B4();
  if (v0 <= 0x3F)
  {
    sub_2575063A0(319, &qword_281537F10, type metadata accessor for Proto_Pipeline, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2575067B4()
{
  sub_2575063A0(319, &qword_27F87B9B8, type metadata accessor for Proto_Model, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2575068A0();
    if (v1 <= 0x3F)
    {
      sub_2577431B4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2575068A0()
{
  if (!qword_27F87A680)
  {
    v0 = sub_257743774();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87A680);
    }
  }
}

void sub_257506938()
{
  sub_2575063A0(319, &qword_27F87B9D0, type metadata accessor for Proto_FeatureDescription, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_257506A28()
{
  result = type metadata accessor for Proto_PipelineClassifier(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_PipelineRegressor(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Proto_Pipeline(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Proto_GLMRegressor(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Proto_SupportVectorRegressor(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Proto_TreeEnsembleRegressor(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Proto_NeuralNetworkRegressor(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Proto_BayesianProbitRegressor(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Proto_GLMClassifier(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Proto_SupportVectorClassifier(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for Proto_TreeEnsembleClassifier(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for Proto_NeuralNetworkClassifier(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for Proto_KNearestNeighborsClassifier(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for Proto_NeuralNetwork(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for Proto_ItemSimilarityRecommender(319);
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for Proto_MILSpec_Program(319);
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for Proto_Odie_Library();
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for Proto_CustomModel(319);
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for Proto_LinkedModel(319);
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for Proto_ClassConfidenceThresholding();
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for Proto_OneHotEncoder(319);
                                          if (v21 <= 0x3F)
                                          {
                                            result = type metadata accessor for Proto_Imputer(319);
                                            if (v22 <= 0x3F)
                                            {
                                              result = type metadata accessor for Proto_FeatureVectorizer(319);
                                              if (v23 <= 0x3F)
                                              {
                                                result = type metadata accessor for Proto_DictVectorizer(319);
                                                if (v24 <= 0x3F)
                                                {
                                                  result = type metadata accessor for Proto_Scaler();
                                                  if (v25 <= 0x3F)
                                                  {
                                                    result = type metadata accessor for Proto_CategoricalMapping(319);
                                                    if (v26 <= 0x3F)
                                                    {
                                                      result = type metadata accessor for Proto_Normalizer();
                                                      if (v27 <= 0x3F)
                                                      {
                                                        result = type metadata accessor for Proto_ArrayFeatureExtractor();
                                                        if (v28 <= 0x3F)
                                                        {
                                                          result = type metadata accessor for Proto_NonMaximumSuppression(319);
                                                          if (v29 <= 0x3F)
                                                          {
                                                            result = type metadata accessor for Proto_Identity();
                                                            if (v30 <= 0x3F)
                                                            {
                                                              result = type metadata accessor for Proto_CoreMLModels_TextClassifier(319);
                                                              if (v31 <= 0x3F)
                                                              {
                                                                result = type metadata accessor for Proto_CoreMLModels_WordTagger(319);
                                                                if (v32 <= 0x3F)
                                                                {
                                                                  result = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(319);
                                                                  if (v33 <= 0x3F)
                                                                  {
                                                                    result = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing(319);
                                                                    if (v34 <= 0x3F)
                                                                    {
                                                                      result = type metadata accessor for Proto_CoreMLModels_Gazetteer(319);
                                                                      if (v35 <= 0x3F)
                                                                      {
                                                                        result = type metadata accessor for Proto_CoreMLModels_WordEmbedding();
                                                                        if (v36 <= 0x3F)
                                                                        {
                                                                          result = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(319);
                                                                          if (v37 <= 0x3F)
                                                                          {
                                                                            result = type metadata accessor for Proto_SerializedModel(319);
                                                                            if (v38 <= 0x3F)
                                                                            {
                                                                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                                                              return 0;
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_257506D94()
{
  sub_2577431B4();
  if (v0 <= 0x3F)
  {
    sub_2575063A0(319, &qword_281537E68, type metadata accessor for Proto_FeatureType, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257506E80()
{
  sub_2575063A0(319, &qword_27F87B9D8, type metadata accessor for Proto_FunctionDescription, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2575063A0(319, &qword_27F87B9D0, type metadata accessor for Proto_FeatureDescription, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2577431B4();
      if (v2 <= 0x3F)
      {
        sub_2575063A0(319, &qword_281537F28, type metadata accessor for Proto_Metadata, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_257507020()
{
  sub_2575070B8();
  if (v0 <= 0x3F)
  {
    sub_2577431B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2575070B8()
{
  if (!qword_27F87B9E0)
  {
    v0 = sub_2577435E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F87B9E0);
    }
  }
}

uint64_t sub_25750713C()
{
  result = sub_2577431B4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Proto_Model._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2575071C0()
{
  OUTLINED_FUNCTION_188_0();
  v1 = v0;
  v2 = *(type metadata accessor for Proto_Model(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Proto_Model._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    OUTLINED_FUNCTION_71_0();
    sub_257505F58();
    *(v1 + v2) = v9;
  }

  OUTLINED_FUNCTION_11_6();
  sub_257507254(v10, v11, v12, v13);
  OUTLINED_FUNCTION_187_0();
}

uint64_t sub_257507254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_257743234();
    if (v4 || (v12 & 1) != 0)
    {
      return result;
    }

    if (!v10 & v9)
    {
      switch(result)
      {
        case 3000:
          sub_257514348(a1, a2, a3, a4);
          break;
        case 2:
          sub_2575078CC();
          break;
        case 10:
          sub_2575079A8();
          break;
        case 200:
          sub_257507A34(a1, a2, a3, a4);
          break;
        case 201:
          sub_257507F88(a1, a2, a3, a4);
          break;
        case 202:
          sub_2575084F8(a1, a2, a3, a4);
          break;
        case 555:
          sub_25750D688(a1, a2, a3, a4);
          break;
        case 556:
          sub_25750DBF8(a1, a2, a3, a4);
          break;
        case 560:
          sub_25750E168(a1, a2, a3, a4);
          break;
        case 900:
          sub_2575117C8(a1, a2, a3, a4);
          break;
        case 1:
          sub_257507848();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 600:
          sub_25750E6D8(a1, a2, a3, a4);
          break;
        case 601:
          sub_25750EC48(a1, a2, a3, a4);
          break;
        case 602:
          sub_25750F1B8(a1, a2, a3, a4);
          break;
        case 603:
          sub_25750F728(a1, a2, a3, a4);
          break;
        case 604:
          sub_25750FC98(a1, a2, a3, a4);
          break;
        case 605:
        case 608:
          continue;
        case 606:
          sub_257510208(a1, a2, a3, a4);
          break;
        case 607:
          sub_257510778(a1, a2, a3, a4);
          break;
        case 609:
          sub_257510CE8(a1, a2, a3, a4);
          break;
        case 610:
          sub_257511258(a1, a2, a3, a4);
          break;
        default:
          JUMPOUT(0);
      }
    }
  }
}

uint64_t sub_257507848()
{
  swift_beginAccess();
  sub_257743304();
  return swift_endAccess();
}

uint64_t sub_2575078CC()
{
  swift_beginAccess();
  type metadata accessor for Proto_ModelDescription(0);
  sub_25751B040(&qword_281537B00, type metadata accessor for Proto_ModelDescription);
  sub_2577433D4();
  return swift_endAccess();
}

uint64_t sub_2575079A8()
{
  swift_beginAccess();
  sub_257743274();
  return swift_endAccess();
}

uint64_t sub_257507A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for Proto_PipelineClassifier(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB50, &qword_257750248);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v32 - v24;
  __swift_storeEnumTagSinglePayload(&v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v34 = a1;
  v32 = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_25751BA18();
    }

    else
    {
      sub_2574695E4(v25, &qword_27F87BB50, &qword_257750248);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_25751B040(&qword_27F87BA60, type metadata accessor for Proto_PipelineClassifier);
  v28 = v37;
  sub_2577433D4();
  if (v28)
  {
    v29 = v25;
    return sub_2574695E4(v29, &qword_27F87BB50, &qword_257750248);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BB50, &qword_257750248);
    v29 = v23;
    return sub_2574695E4(v29, &qword_27F87BB50, &qword_257750248);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  sub_2574695E4(v25, &qword_27F87BB50, &qword_257750248);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v16);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257507F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_PipelineRegressor(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB58, &qword_257750250);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2574695E4(v25, &qword_27F87BB58, &qword_257750250);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BA48, type metadata accessor for Proto_PipelineRegressor);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BB58, &qword_257750250);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BB58, &qword_257750250);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BB58, &qword_257750250);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BB58, &qword_257750250);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575084F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_Pipeline(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87B9B0, &qword_257770B80);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2574695E4(v25, &qword_27F87B9B0, &qword_257770B80);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BA78, type metadata accessor for Proto_Pipeline);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87B9B0, &qword_257770B80);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87B9B0, &qword_257770B80);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87B9B0, &qword_257770B80);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87B9B0, &qword_257770B80);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257508A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_GLMRegressor(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB60, &qword_257750258);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2574695E4(v25, &qword_27F87BB60, &qword_257750258);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87AE28, type metadata accessor for Proto_GLMRegressor);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BB60, &qword_257750258);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BB60, &qword_257750258);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BB60, &qword_257750258);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BB60, &qword_257750258);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257508FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SupportVectorRegressor(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB68, &qword_257750260);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2574695E4(v25, &qword_27F87BB68, &qword_257750260);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BAD0, type metadata accessor for Proto_SupportVectorRegressor);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BB68, &qword_257750260);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BB68, &qword_257750260);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BB68, &qword_257750260);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BB68, &qword_257750260);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257509548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_TreeEnsembleRegressor(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB70, &qword_257750268);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2574695E4(v25, &qword_27F87BB70, &qword_257750268);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BAD8, type metadata accessor for Proto_TreeEnsembleRegressor);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BB70, &qword_257750268);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BB70, &qword_257750268);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BB70, &qword_257750268);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BB70, &qword_257750268);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257509AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_NeuralNetworkRegressor(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB78, &qword_257750270);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2574695E4(v25, &qword_27F87BB78, &qword_257750270);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BAE0, type metadata accessor for Proto_NeuralNetworkRegressor);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BB78, &qword_257750270);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BB78, &qword_257750270);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BB78, &qword_257750270);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BB78, &qword_257750270);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750A028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_BayesianProbitRegressor(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB80, &qword_257750278);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_2574695E4(v25, &qword_27F87BB80, &qword_257750278);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A490, type metadata accessor for Proto_BayesianProbitRegressor);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BB80, &qword_257750278);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BB80, &qword_257750278);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BB80, &qword_257750278);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BB80, &qword_257750278);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750A598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_GLMClassifier(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB88, &qword_257750280);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_2574695E4(v25, &qword_27F87BB88, &qword_257750280);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_281537D78, type metadata accessor for Proto_GLMClassifier);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BB88, &qword_257750280);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BB88, &qword_257750280);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BB88, &qword_257750280);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BB88, &qword_257750280);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750AB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SupportVectorClassifier(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB90, &qword_257750288);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_2574695E4(v25, &qword_27F87BB90, &qword_257750288);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BAE8, type metadata accessor for Proto_SupportVectorClassifier);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BB90, &qword_257750288);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BB90, &qword_257750288);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BB90, &qword_257750288);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BB90, &qword_257750288);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750B078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BB98, &qword_257750290);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_2574695E4(v25, &qword_27F87BB98, &qword_257750290);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BAF0, type metadata accessor for Proto_TreeEnsembleClassifier);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BB98, &qword_257750290);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BB98, &qword_257750290);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BB98, &qword_257750290);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BB98, &qword_257750290);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750B5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBA0, &qword_257750298);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_2574695E4(v25, &qword_27F87BBA0, &qword_257750298);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BAF8, type metadata accessor for Proto_NeuralNetworkClassifier);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BBA0, &qword_257750298);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BBA0, &qword_257750298);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BBA0, &qword_257750298);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BBA0, &qword_257750298);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750BB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBA8, &unk_2577502A0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_2574695E4(v25, &qword_27F87BBA8, &unk_2577502A0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB00, type metadata accessor for Proto_KNearestNeighborsClassifier);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BBA8, &unk_2577502A0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BBA8, &unk_2577502A0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BBA8, &unk_2577502A0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BBA8, &unk_2577502A0);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750C0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_NeuralNetwork(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A328, &unk_257752BB0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_2574695E4(v25, &qword_27F87A328, &unk_257752BB0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87A328, &unk_257752BB0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87A328, &unk_257752BB0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87A328, &unk_257752BB0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87A328, &unk_257752BB0);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750C638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ItemSimilarityRecommender(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBB0, &qword_2577502B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_2574695E4(v25, &qword_27F87BBB0, &qword_2577502B0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87AF58, type metadata accessor for Proto_ItemSimilarityRecommender);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BBB0, &qword_2577502B0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BBB0, &qword_2577502B0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BBB0, &qword_2577502B0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BBB0, &qword_2577502B0);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750CBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_MILSpec_Program(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBB8, &qword_2577502B8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_2574695E4(v25, &qword_27F87BBB8, &qword_2577502B8);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87B6B8, type metadata accessor for Proto_MILSpec_Program);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BBB8, &qword_2577502B8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BBB8, &qword_2577502B8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BBB8, &qword_2577502B8);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BBB8, &qword_2577502B8);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750D118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_Odie_Library();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBC0, &qword_2577502C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_2574695E4(v25, &qword_27F87BBC0, &qword_2577502C0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB08, type metadata accessor for Proto_Odie_Library);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BBC0, &qword_2577502C0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BBC0, &qword_2577502C0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BBC0, &qword_2577502C0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BBC0, &qword_2577502C0);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750D688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CustomModel(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBC8, &qword_2577502C8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_2574695E4(v25, &qword_27F87BBC8, &qword_2577502C8);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A5D8, type metadata accessor for Proto_CustomModel);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BBC8, &qword_2577502C8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BBC8, &qword_2577502C8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BBC8, &qword_2577502C8);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BBC8, &qword_2577502C8);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750DBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_LinkedModel(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBD0, &qword_2577502D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_2574695E4(v25, &qword_27F87BBD0, &qword_2577502D0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87AFE0, type metadata accessor for Proto_LinkedModel);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BBD0, &qword_2577502D0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BBD0, &qword_2577502D0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BBD0, &qword_2577502D0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BBD0, &qword_2577502D0);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750E168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ClassConfidenceThresholding();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBD8, &qword_2577502D8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_2574695E4(v25, &qword_27F87BBD8, &qword_2577502D8);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A568, type metadata accessor for Proto_ClassConfidenceThresholding);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BBD8, &qword_2577502D8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BBD8, &qword_2577502D8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BBD8, &qword_2577502D8);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BBD8, &qword_2577502D8);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750E6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_OneHotEncoder(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBE0, &qword_2577502E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_2574695E4(v25, &qword_27F87BBE0, &qword_2577502E0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB10, type metadata accessor for Proto_OneHotEncoder);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BBE0, &qword_2577502E0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BBE0, &qword_2577502E0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BBE0, &qword_2577502E0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BBE0, &qword_2577502E0);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750EC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_Imputer(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBE8, &qword_2577502E8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_2574695E4(v25, &qword_27F87BBE8, &qword_2577502E8);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87AEB0, type metadata accessor for Proto_Imputer);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BBE8, &qword_2577502E8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BBE8, &qword_2577502E8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BBE8, &qword_2577502E8);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BBE8, &qword_2577502E8);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750F1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_FeatureVectorizer(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBF0, &qword_2577502F0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_2574695E4(v25, &qword_27F87BBF0, &qword_2577502F0);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87AC98, type metadata accessor for Proto_FeatureVectorizer);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BBF0, &qword_2577502F0);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BBF0, &qword_2577502F0);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BBF0, &qword_2577502F0);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BBF0, &qword_2577502F0);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750F728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_DictVectorizer(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BBF8, &qword_2577502F8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_2574695E4(v25, &qword_27F87BBF8, &qword_2577502F8);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A850, type metadata accessor for Proto_DictVectorizer);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BBF8, &qword_2577502F8);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BBF8, &qword_2577502F8);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BBF8, &qword_2577502F8);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BBF8, &qword_2577502F8);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_25750FC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_Scaler();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC00, &qword_257750300);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_2574695E4(v25, &qword_27F87BC00, &qword_257750300);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB18, type metadata accessor for Proto_Scaler);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC00, &qword_257750300);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC00, &qword_257750300);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC00, &qword_257750300);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC00, &qword_257750300);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257510208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CategoricalMapping(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC08, &qword_257750308);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_2574695E4(v25, &qword_27F87BC08, &qword_257750308);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A510, type metadata accessor for Proto_CategoricalMapping);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC08, &qword_257750308);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC08, &qword_257750308);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC08, &qword_257750308);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC08, &qword_257750308);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257510778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_Normalizer();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC10, &qword_257750310);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_2574695E4(v25, &qword_27F87BC10, &qword_257750310);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A130, type metadata accessor for Proto_Normalizer);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC10, &qword_257750310);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC10, &qword_257750310);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC10, &qword_257750310);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC10, &qword_257750310);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257510CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_ArrayFeatureExtractor();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC18, &qword_257750318);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_2574695E4(v25, &qword_27F87BC18, &qword_257750318);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A358, type metadata accessor for Proto_ArrayFeatureExtractor);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC18, &qword_257750318);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC18, &qword_257750318);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC18, &qword_257750318);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC18, &qword_257750318);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257511258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_NonMaximumSuppression(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC20, &qword_257750320);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_2574695E4(v25, &qword_27F87BC20, &qword_257750320);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB20, type metadata accessor for Proto_NonMaximumSuppression);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC20, &qword_257750320);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC20, &qword_257750320);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC20, &qword_257750320);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC20, &qword_257750320);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575117C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_Identity();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC28, &qword_257750328);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_2574695E4(v25, &qword_27F87BC28, &qword_257750328);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87AE70, type metadata accessor for Proto_Identity);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC28, &qword_257750328);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC28, &qword_257750328);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC28, &qword_257750328);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC28, &qword_257750328);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257511D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC30, &qword_257750330);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_2574695E4(v25, &qword_27F87BC30, &qword_257750330);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB28, type metadata accessor for Proto_CoreMLModels_TextClassifier);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC30, &qword_257750330);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC30, &qword_257750330);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC30, &qword_257750330);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC30, &qword_257750330);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575122A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC38, &qword_257750338);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_2574695E4(v25, &qword_27F87BC38, &qword_257750338);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB30, type metadata accessor for Proto_CoreMLModels_WordTagger);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC38, &qword_257750338);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC38, &qword_257750338);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC38, &qword_257750338);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC38, &qword_257750338);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257512818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC40, &qword_257750340);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_2574695E4(v25, &qword_27F87BC40, &qword_257750340);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB38, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC40, &qword_257750340);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC40, &qword_257750340);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC40, &qword_257750340);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC40, &qword_257750340);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257512D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC48, &qword_257750348);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_2574695E4(v25, &qword_27F87BC48, &qword_257750348);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB40, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC48, &qword_257750348);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC48, &qword_257750348);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC48, &qword_257750348);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC48, &qword_257750348);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575132F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC50, &qword_257750350);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_2574695E4(v25, &qword_27F87BC50, &qword_257750350);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87ACE8, type metadata accessor for Proto_CoreMLModels_Gazetteer);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC50, &qword_257750350);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC50, &qword_257750350);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC50, &qword_257750350);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC50, &qword_257750350);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257513868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_WordEmbedding();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC58, &qword_257750358);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_2574695E4(v25, &qword_27F87BC58, &qword_257750358);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87BB48, type metadata accessor for Proto_CoreMLModels_WordEmbedding);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC58, &qword_257750358);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC58, &qword_257750358);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC58, &qword_257750358);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC58, &qword_257750358);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257513DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC60, &qword_257750360);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_2574695E4(v25, &qword_27F87BC60, &qword_257750360);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87A3D0, type metadata accessor for Proto_CoreMLModels_AudioFeaturePrint);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC60, &qword_257750360);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC60, &qword_257750360);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC60, &qword_257750360);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC60, &qword_257750360);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257514348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Proto_SerializedModel(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Proto_Model.OneOf_Type(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87BC68, &qword_257750368);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__type;
  swift_beginAccess();
  v32[1] = v26;
  sub_257487308();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_2574695E4(v15, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    v32[0] = a1;
    sub_25751BA6C();
    sub_25751BA6C();
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_2574695E4(v25, &qword_27F87BC68, &qword_257750368);
      sub_25751BA6C();
      sub_25751BA6C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_25751BA18();
    }
  }

  sub_25751B040(&qword_27F87B9F8, type metadata accessor for Proto_SerializedModel);
  v27 = v38;
  sub_2577433D4();
  if (v27)
  {
    v28 = v25;
    return sub_2574695E4(v28, &qword_27F87BC68, &qword_257750368);
  }

  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_2574695E4(v25, &qword_27F87BC68, &qword_257750368);
    v28 = v23;
    return sub_2574695E4(v28, &qword_27F87BC68, &qword_257750368);
  }

  sub_25751BA6C();
  if (EnumTagSinglePayload != 1)
  {
    sub_257743244();
  }

  v30 = v35;
  sub_2574695E4(v25, &qword_27F87BC68, &qword_257750368);
  v31 = v33;
  sub_25751BA6C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_2575148B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for Proto_Model(0) + 20));
  OUTLINED_FUNCTION_10_7();
  result = sub_25751491C(v7, v8, v9, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_222();
    return sub_257743194();
  }

  return result;
}

uint64_t sub_25751491C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_2577434F4(), !v4))
  {
    result = sub_257514F30(a1, a2, a3, a4);
    if (!v4)
    {
      v14 = OBJC_IVAR____TtCV20MLModelSpecification11Proto_ModelP33_4FEECBA670118D43FC092AB089C2CE4C13_StorageClass__isUpdatable;
      swift_beginAccess();
      if (*(a1 + v14) == 1)
      {
        sub_2577434B4();
      }

      swift_beginAccess();
      sub_257487308();
      v15 = type metadata accessor for Proto_Model.OneOf_Type(0);
      result = __swift_getEnumTagSinglePayload(v12, 1, v15);
      if (result != 1)
      {
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            sub_257515354(a1, a2, a3, a4);
            break;
          case 2u:
            sub_257515588(a1, a2, a3, a4);
            break;
          case 3u:
            sub_2575157BC(a1, a2, a3, a4);
            break;
          case 4u:
            sub_2575159F0(a1, a2, a3, a4);
            break;
          case 5u:
            sub_257515C24(a1, a2, a3, a4);
            break;
          case 6u:
            sub_257515E58(a1, a2, a3, a4);
            break;
          case 7u:
            sub_25751608C(a1, a2, a3, a4);
            break;
          case 8u:
            sub_2575162C0(a1, a2, a3, a4);
            break;
          case 9u:
            sub_2575164F4(a1, a2, a3, a4);
            break;
          case 0xAu:
            sub_257516728(a1, a2, a3, a4);
            break;
          case 0xBu:
            sub_25751695C(a1, a2, a3, a4);
            break;
          case 0xCu:
            sub_257516B90(a1, a2, a3, a4);
            break;
          case 0xDu:
            sub_257516DC4(a1, a2, a3, a4);
            break;
          case 0xEu:
            sub_257516FF8(a1, a2, a3, a4);
            break;
          case 0xFu:
            sub_25751722C(a1, a2, a3, a4);
            break;
          case 0x10u:
            sub_257517460(a1, a2, a3, a4);
            break;
          case 0x11u:
            sub_257517694(a1, a2, a3, a4);
            break;
          case 0x12u:
            sub_2575178C8(a1, a2, a3, a4);
            break;
          case 0x13u:
            sub_257517AFC(a1, a2, a3, a4);
            break;
          case 0x14u:
            sub_257517D30(a1, a2, a3, a4);
            break;
          case 0x15u:
            sub_257517F64(a1, a2, a3, a4);
            break;
          case 0x16u:
            sub_257518198(a1, a2, a3, a4);
            break;
          case 0x17u:
            sub_2575183CC(a1, a2, a3, a4);
            break;
          case 0x18u:
            sub_257518600(a1, a2, a3, a4);
            break;
          case 0x19u:
            sub_257518834(a1, a2, a3, a4);
            break;
          case 0x1Au:
            sub_257518A68(a1, a2, a3, a4);
            break;
          case 0x1Bu:
            sub_257518C9C(a1, a2, a3, a4);
            break;
          case 0x1Cu:
            sub_257518ED0(a1, a2, a3, a4);
            break;
          case 0x1Du:
            sub_257519104(a1, a2, a3, a4);
            break;
          case 0x1Eu:
            sub_257519338(a1, a2, a3, a4);
            break;
          case 0x1Fu:
            sub_25751956C(a1, a2, a3, a4);
            break;
          case 0x20u:
            sub_2575197A0(a1, a2, a3, a4);
            break;
          case 0x21u:
            sub_2575199D4(a1, a2, a3, a4);
            break;
          case 0x22u:
            sub_257519C08(a1, a2, a3, a4);
            break;
          case 0x23u:
            sub_257519E3C(a1, a2, a3, a4);
            break;
          case 0x24u:
            sub_25751A070(a1, a2, a3, a4);
            break;
          case 0x25u:
            sub_25751A2A4(a1, a2, a3, a4);
            break;
          default:
            sub_257515124(a1, a2, a3, a4);
            break;
        }

        return sub_25751BA18();
      }
    }
  }

  return result;
}

uint64_t sub_257514F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BD8, &qword_257750240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Proto_ModelDescription(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_2574695E4(v7, &qword_27F879BD8, &qword_257750240);
  }

  sub_25751BA6C();
  sub_25751B040(&qword_281537B00, type metadata accessor for Proto_ModelDescription);
  sub_257743574();
  return sub_25751BA18();
}

uint64_t sub_257515124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_PipelineClassifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BA60, type metadata accessor for Proto_PipelineClassifier);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257515354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_PipelineRegressor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BA48, type metadata accessor for Proto_PipelineRegressor);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257515588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Pipeline(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BA78, type metadata accessor for Proto_Pipeline);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575157BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GLMRegressor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87AE28, type metadata accessor for Proto_GLMRegressor);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575159F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SupportVectorRegressor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BAD0, type metadata accessor for Proto_SupportVectorRegressor);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257515C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TreeEnsembleRegressor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BAD8, type metadata accessor for Proto_TreeEnsembleRegressor);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257515E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NeuralNetworkRegressor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BAE0, type metadata accessor for Proto_NeuralNetworkRegressor);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_25751608C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_BayesianProbitRegressor(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A490, type metadata accessor for Proto_BayesianProbitRegressor);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575162C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_GLMClassifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_281537D78, type metadata accessor for Proto_GLMClassifier);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575164F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_SupportVectorClassifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BAE8, type metadata accessor for Proto_SupportVectorClassifier);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257516728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_TreeEnsembleClassifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BAF0, type metadata accessor for Proto_TreeEnsembleClassifier);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_25751695C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NeuralNetworkClassifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BAF8, type metadata accessor for Proto_NeuralNetworkClassifier);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257516B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_KNearestNeighborsClassifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB00, type metadata accessor for Proto_KNearestNeighborsClassifier);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257516DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NeuralNetwork(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A0A8, type metadata accessor for Proto_NeuralNetwork);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257516FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ItemSimilarityRecommender(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87AF58, type metadata accessor for Proto_ItemSimilarityRecommender);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_25751722C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_MILSpec_Program(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87B6B8, type metadata accessor for Proto_MILSpec_Program);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257517460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Odie_Library();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB08, type metadata accessor for Proto_Odie_Library);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257517694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CustomModel(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A5D8, type metadata accessor for Proto_CustomModel);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575178C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_LinkedModel(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87AFE0, type metadata accessor for Proto_LinkedModel);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257517AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ClassConfidenceThresholding();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A568, type metadata accessor for Proto_ClassConfidenceThresholding);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257517D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_OneHotEncoder(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB10, type metadata accessor for Proto_OneHotEncoder);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257517F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Imputer(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87AEB0, type metadata accessor for Proto_Imputer);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257518198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_FeatureVectorizer(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87AC98, type metadata accessor for Proto_FeatureVectorizer);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575183CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_DictVectorizer(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A850, type metadata accessor for Proto_DictVectorizer);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257518600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Scaler();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB18, type metadata accessor for Proto_Scaler);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257518834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CategoricalMapping(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A510, type metadata accessor for Proto_CategoricalMapping);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257518A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Normalizer();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A130, type metadata accessor for Proto_Normalizer);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257518C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_ArrayFeatureExtractor();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87A358, type metadata accessor for Proto_ArrayFeatureExtractor);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257518ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_NonMaximumSuppression(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB20, type metadata accessor for Proto_NonMaximumSuppression);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257519104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_Identity();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87AE70, type metadata accessor for Proto_Identity);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257519338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_TextClassifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB28, type metadata accessor for Proto_CoreMLModels_TextClassifier);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_25751956C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_WordTagger(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB30, type metadata accessor for Proto_CoreMLModels_WordTagger);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575197A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB38, type metadata accessor for Proto_CoreMLModels_VisionFeaturePrint);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_2575199D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87BB40, type metadata accessor for Proto_CoreMLModels_SoundAnalysisPreprocessing);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}

uint64_t sub_257519C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879BE0, &qword_257744370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  swift_beginAccess();
  sub_257487308();
  v10 = type metadata accessor for Proto_Model.OneOf_Type(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_2574695E4(v7, &qword_27F879BE0, &qword_257744370);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_25751BA6C();
      sub_25751B040(&qword_27F87ACE8, type metadata accessor for Proto_CoreMLModels_Gazetteer);
      sub_257743574();
      return sub_25751BA18();
    }

    result = sub_25751BA18();
  }

  __break(1u);
  return result;
}