uint64_t sub_1B0B4A410(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v4 = sub_1B0E46E18();
  if (v4 == sub_1B0E46E28())
  {
    return 0;
  }

  result = sub_1B0E46E28();
  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v6 < v7 || v6 >= result)
  {
    goto LABEL_9;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MessageIdentifierSet.RangeView.subscript.getter(v8, &v9);
  return v9;
}

uint64_t sub_1B0B4A4F4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4980, &qword_1B0EC6BA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - v6;
  v8 = _s15MissingMessagesO8ProgressVMa(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s15MissingMessagesO10IncompleteVMa(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s15MissingMessagesOMa(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3DBC(v2, v20, _s15MissingMessagesOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1B03D3F5C(v2, _s15MissingMessagesOMa);
      sub_1B03D3E8C(v20, v16, _s15MissingMessagesO10IncompleteVMa);
      sub_1B0B4C674(a1, v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_1B0398EFC(v7, &qword_1EB6E4980, &qword_1B0EC6BA0);
        v22 = v13[6];
        v23 = &v16[v13[5]];
        v24 = *v23;
        v25 = v23[4];
        v26 = _s15MissingMessagesO8CompleteVMa(0);
        sub_1B03D3DBC(&v16[v22], v2 + *(v26 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
        v27 = v16[v13[7]];
        sub_1B03D3F5C(v16, _s15MissingMessagesO10IncompleteVMa);
        *v2 = v24;
        *(v2 + 4) = v25;
        *(v2 + *(v26 + 24)) = v27;
      }

      else
      {
        sub_1B03D3E8C(v7, v12, _s15MissingMessagesO8ProgressVMa);
        sub_1B0B4BE48();
        if (v28)
        {
          v29 = &v16[v13[5]];
          v30 = *v29;
          LOBYTE(v29) = v29[4];
          v31 = &v12[*(v8 + 24)];
          *v31 = v30;
          v31[4] = v29;
        }

        sub_1B03D3E8C(v12, v2, _s15MissingMessagesO8ProgressVMa);
        v32 = &v16[v13[5]];
        v33 = *v32;
        v34 = v32[4];
        sub_1B03D3DBC(&v16[v13[6]], v2 + v13[6], _s15MissingMessagesO11QueriedUIDsVMa);
        v35 = v16[v13[7]];
        sub_1B03D3F5C(v16, _s15MissingMessagesO10IncompleteVMa);
        v36 = v2 + v13[5];
        *v36 = v33;
        *(v36 + 4) = v34;
        *(v2 + v13[7]) = v35;
      }

      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      return sub_1B03D3F5C(v20, _s15MissingMessagesOMa);
    }
  }

  return result;
}

uint64_t sub_1B0B4A8E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = _s15MissingMessagesO10IncompleteVMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s15MissingMessagesOMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3DBC(v1, v13, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B03D3E8C(v13, v9, _s15MissingMessagesO10IncompleteVMa);
    sub_1B03B5C80(v9, v5, &unk_1EB6E26C0, &unk_1B0E9DE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v15 = MessageIdentifierSet.count.getter();
    sub_1B03D3F5C(v9, _s15MissingMessagesO10IncompleteVMa);
    sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return v15;
  }

  else
  {
    sub_1B03D3F5C(v13, _s15MissingMessagesOMa);
    return 0;
  }
}

unint64_t sub_1B0B4AAF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v4 = sub_1B0E46E18();
  v5 = sub_1B0E46E28();
  if (v4 == v5)
  {
    sub_1B0398EFC(v3, &unk_1EB6E2780, &unk_1B0E9C5E0);
    v6 = 0;
  }

  else
  {
    MessageIdentifierSet.RangeView.subscript.getter(v0, &v9);
    sub_1B0398EFC(v3, &unk_1EB6E2780, &unk_1B0E9C5E0);
    v6 = v9;
  }

  return v6 | ((v4 == v5) << 32);
}

unint64_t sub_1B0B4AC30()
{
  v1 = v0;
  v2 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = _s15MissingMessagesOMa(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = _s15MissingMessagesO8CompleteVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B03D3DBC(v1, v9, _s15MissingMessagesOMa);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v17 = _s15MissingMessagesOMa;
    v18 = v9;
LABEL_8:
    sub_1B03D3F5C(v18, v17);
    v15 = 0;
    v16 = 1;
    return v15 | (v16 << 32);
  }

  sub_1B03D3E8C(v9, v13, _s15MissingMessagesO8CompleteVMa);
  if (v13[*(v10 + 24)] != 1)
  {
    v17 = _s15MissingMessagesO8CompleteVMa;
    v18 = v13;
    goto LABEL_8;
  }

  sub_1B03D3DBC(&v13[*(v10 + 20)], v5, _s15MissingMessagesO11QueriedUIDsVMa);
  v14 = sub_1B0B4AAF0();
  sub_1B03D3F5C(v13, _s15MissingMessagesO8CompleteVMa);
  sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v15 = 0;
  v16 = 1;
  if ((v14 & 0x100000000) == 0 && (v14 & 0xFFFFFFFE) != 0)
  {
    v16 = 0;
    v15 = (v14 - 1);
  }

  return v15 | (v16 << 32);
}

uint64_t sub_1B0B4AE74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = _s15MissingMessagesO8ProgressVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s15MissingMessagesO10IncompleteVMa(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s15MissingMessagesOMa(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3DBC(v2, v19, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03D3E8C(v19, v15, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03D3DBC(v15, v11, _s15MissingMessagesO8ProgressVMa);
      sub_1B03D3F5C(v15, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03B5C80(v11, v7, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D3F5C(v11, _s15MissingMessagesO8ProgressVMa);
      return sub_1B03C60A4(v7, a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    sub_1B03D3F5C(v19, _s15MissingMessagesOMa);
  }

  sub_1B03D06F8();
  return sub_1B0E46EE8();
}

uint64_t sub_1B0B4B0F4(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4970, &unk_1B0EC6B40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v8 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v31 - v15;
  v17 = _s15MissingMessagesO10IncompleteVMa(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s15MissingMessagesOMa(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3DBC(v2, v24, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03D3E8C(v24, v20, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03B5C80(v20, v16, &unk_1EB6E26C0, &unk_1B0E9DE10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v26 = MessageIdentifierSet.count.getter();
      sub_1B03D3F5C(v20, _s15MissingMessagesO10IncompleteVMa);
      sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    else
    {
      sub_1B03D3F5C(v24, _s15MissingMessagesOMa);
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  if (v26 >= v31 / 2)
  {
    goto LABEL_13;
  }

  sub_1B0B4BAC0(v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1B03D3E8C(v7, v12, _s15MissingMessagesO11QueriedUIDsVMa);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    if ((sub_1B0E46E98() & 1) == 0 && (a2 & 0x100000000) == 0)
    {
      v32 = a2;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v29 = MessageIdentifierSet.contains(_:)(&v32, v28);
      sub_1B03D3F5C(v12, _s15MissingMessagesO11QueriedUIDsVMa);
      v27 = v29 ^ 1;
      return v27 & 1;
    }

    sub_1B03D3F5C(v12, _s15MissingMessagesO11QueriedUIDsVMa);
LABEL_13:
    v27 = 0;
    return v27 & 1;
  }

  sub_1B0398EFC(v7, &qword_1EB6E4970, &unk_1B0EC6B40);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_1B0B4B4F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s15MissingMessagesO8CompleteVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s15MissingMessagesO10IncompleteVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s15MissingMessagesOMa(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3DBC(v2, v15, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03D3E8C(v15, v11, _s15MissingMessagesO10IncompleteVMa);
      v17 = *(v8 + 24);
      v18 = &v11[*(v8 + 20)];
      v19 = *v18;
      v20 = v18[4];
      v21 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
      sub_1B03D3DBC(&v11[v17], a1 + *(v21 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1B03D3F5C(v11, _s15MissingMessagesO10IncompleteVMa);
      *a1 = v19;
      *(a1 + 4) = v20;
    }

    else
    {
      sub_1B03D3E8C(v15, v7, _s15MissingMessagesO8CompleteVMa);
      v24 = *v7;
      v25 = v7[4];
      v26 = *(v4 + 20);
      v21 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
      sub_1B03D3E8C(&v7[v26], a1 + *(v21 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
      *a1 = v24;
      *(a1 + 4) = v25;
    }

    return (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
  }

  else
  {
    v22 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
    return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  }
}

uint64_t sub_1B0B4B7A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - v4;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  return sub_1B03C60A4(v5, a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0B4B854()
{
  v1 = _s15MissingMessagesO8CompleteVMa(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15MissingMessagesO10IncompleteVMa(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s15MissingMessagesOMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3E8C(v0, v12, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03D3E8C(v12, v8, _s15MissingMessagesO10IncompleteVMa);
      v14 = *(v5 + 28);
      if (v8[v14])
      {
        v15 = 3;
      }

      else
      {
        v15 = 1;
        v8[v14] = 1;
      }

      sub_1B03D3E8C(v8, v0, _s15MissingMessagesO10IncompleteVMa);
    }

    else
    {
      sub_1B03D3E8C(v12, v4, _s15MissingMessagesO8CompleteVMa);
      v16 = *(v1 + 24);
      if (v4[v16])
      {
        v15 = 3;
      }

      else
      {
        v4[v16] = 1;
        v15 = 2;
      }

      sub_1B03D3E8C(v4, v0, _s15MissingMessagesO8CompleteVMa);
    }
  }

  else
  {
    if (*v12)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    *v0 = 1;
  }

  swift_storeEnumTagMultiPayload();
  return v15;
}

uint64_t sub_1B0B4BAC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s15MissingMessagesO8CompleteVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s15MissingMessagesO10IncompleteVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s15MissingMessagesOMa(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3DBC(v2, v15, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03D3E8C(v15, v11, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03D3DBC(&v11[*(v8 + 24)], a1, _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1B03D3F5C(v11, _s15MissingMessagesO10IncompleteVMa);
    }

    else
    {
      sub_1B03D3E8C(v15, v7, _s15MissingMessagesO8CompleteVMa);
      sub_1B03D3E8C(&v7[*(v4 + 20)], a1, _s15MissingMessagesO11QueriedUIDsVMa);
    }

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  return (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
}

uint64_t sub_1B0B4BD10()
{
  sub_1B03D06F8();

  return sub_1B0E46E08();
}

uint64_t sub_1B0B4BD5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0E46508();
  return 0;
}

uint64_t sub_1B0B4BDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a2 != *a1)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v5 = *(a3 + 20);
  sub_1B03D06F8();

  return sub_1B0E46E08();
}

uint64_t sub_1B0B4BE48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  sub_1B0B4C04C();
  sub_1B03B5C80(v0, v4, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessageIdentifierSet.intersection(_:)(v11, v9);
  sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = v0 + *(_s15MissingMessagesO8ProgressVMa(0) + 20);
    MessageIdentifierSet.intersection(_:)(v11, v9);
    MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v14 = v12;
  }

  sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return v14;
}

uint64_t sub_1B0B4C04C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = _s15MissingMessagesO8ProgressVMa(0);
  v17 = v1 + *(v16 + 24);
  if ((*(v17 + 4) & 1) == 0)
  {
    v18 = *v17;
    if (v18 != -1)
    {
      LODWORD(v34) = v18 + 1;
LABEL_14:
      LODWORD(v33) = -1;
      v30 = sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v34, &v33, &type metadata for UID, v30, &v35);
      v34 = v35;
      v33 = Range<>.init<A>(_:)(&v34, &type metadata for UID, v30);
      sub_1B03D06F8();
      return sub_1B0E46F08();
    }
  }

  sub_1B03B5C80(v1, v8, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessageIdentifierSet.union(_:)(v1 + *(v16 + 20), v13);
  sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.suffix(_:)(3000, v9, v15);
  sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v19 = MessageIdentifierSet.startIndex.getter(v9);
  v21 = v20;
  if (v19 != MessageIdentifierSet.endIndex.getter(v9) || v21 != v22)
  {
    MessageIdentifierSet.subscript.getter(v21, v9, &v35);
    sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    LODWORD(v34) = v35;
    goto LABEL_14;
  }

  sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v1, v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v24 = MessageIdentifierSet.startIndex.getter(v9);
  v26 = v25;
  if (v24 != MessageIdentifierSet.endIndex.getter(v9) || v26 != v27)
  {
    MessageIdentifierSet.subscript.getter(v26, v9, &v35);
    v29 = v35;
    sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    LODWORD(v34) = v29;
    goto LABEL_14;
  }

  result = sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  __break(1u);
  return result;
}

uint64_t sub_1B0B4C3A4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v23 - v18;
  sub_1B03B5C80(v2, v11, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v23[1] = a1;
  MessageIdentifierSet.union(_:)(a1, v15);
  sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v20 = 1;
  }

  else
  {
    sub_1B03C60A4(v15, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v8, v19, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v20 = 0;
  }

  (*(v5 + 56))(v19, v20, 1, v4);
  result = (*(v5 + 48))(v19, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B0B4E054(v19, v2);
    v22 = *(_s15MissingMessagesO8ProgressVMa(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    return sub_1B0E46EC8();
  }

  return result;
}

uint64_t sub_1B0B4C674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a1;
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v43 = &v39 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v42 = *(v45 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  sub_1B03B5C80(v3, v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessageIdentifierSet.intersection(_:)(v44, v23);
  sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v44 = v3;
  sub_1B03B5C80(v3, v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessageIdentifierSet.subtracting(_:)(v23, v20);
  sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v20, v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v26 = 1;
    v25 = v43;
  }

  else
  {
    v24 = v41;
    sub_1B03C60A4(v17, v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v25 = v43;
    sub_1B03C60A4(v24, v43, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v26 = 0;
  }

  v27 = v42;
  v28 = v45;
  (*(v42 + 56))(v25, v26, 1, v45);
  if ((*(v27 + 48))(v25, 1, v28) == 1)
  {
    sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v25, &unk_1EB6E3670, &unk_1B0E9B260);
    v29 = _s15MissingMessagesO8ProgressVMa(0);
    return (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
  }

  else
  {
    v31 = v40;
    sub_1B03C60A4(v25, v40, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v32 = v46;
    sub_1B03B5C80(v31, v46, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v33 = _s15MissingMessagesO8ProgressVMa(0);
    v34 = v44;
    MessageIdentifierSet.union(_:)(v23, v32 + *(v33 + 20));
    sub_1B0398EFC(v31, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v35 = *(v33 + 24);
    v36 = *(v34 + v35);
    v37 = *(v34 + v35 + 4);
    v38 = v32 + v35;
    *v38 = v36;
    *(v38 + 4) = v37;
    return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  }
}

uint64_t sub_1B0B4CBCC()
{
  v1 = _s15MissingMessagesO8CompleteVMa(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _s15MissingMessagesO10IncompleteVMa(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = _s15MissingMessagesOMa(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B03D3DBC(v0, v12, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0x6E776F6E6B6E75;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B03D3E8C(v12, v8, _s15MissingMessagesO10IncompleteVMa);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000016, 0x80000001B0F2B4C0);
    v14 = sub_1B0B4D06C();
    MEMORY[0x1B2726E80](v14);

    MEMORY[0x1B2726E80](0xD000000000000015, 0x80000001B0F2B4E0);
    v15 = &v8[*(v5 + 20)];
    if (v15[4])
    {
      v16 = 7104878;
      v17 = 0xE300000000000000;
    }

    else
    {
      v21 = *v15;
      v34 = 0;
      v35 = 0xE000000000000000;
      v33 = v21;
      sub_1B0E46508();
      v16 = v34;
      v17 = v35;
    }

    MEMORY[0x1B2726E80](v16, v17);

    MEMORY[0x1B2726E80](0x656972657571202CLL, 0xEF203A7344495564);
    v22 = *(v5 + 24);
    _s15MissingMessagesO11QueriedUIDsVMa(0);
    sub_1B0B4DB1C();
    v23 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v23);

    MEMORY[0x1B2726E80](41, 0xE100000000000000);
    v18 = v36;
    v24 = _s15MissingMessagesO10IncompleteVMa;
    v25 = v8;
  }

  else
  {
    sub_1B03D3E8C(v12, v4, _s15MissingMessagesO8CompleteVMa);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD00000000000001BLL, 0x80000001B0F2B4A0);
    if (v4[4])
    {
      v19 = 7104878;
      v20 = 0xE300000000000000;
    }

    else
    {
      v26 = *v4;
      v34 = 0;
      v35 = 0xE000000000000000;
      v33 = v26;
      sub_1B0E46508();
      v19 = v34;
      v20 = v35;
    }

    MEMORY[0x1B2726E80](v19, v20);

    MEMORY[0x1B2726E80](0x656972657571202CLL, 0xEF203A7344495564);
    v27 = *(v1 + 20);
    _s15MissingMessagesO11QueriedUIDsVMa(0);
    sub_1B0B4DB1C();
    v28 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v28);

    MEMORY[0x1B2726E80](0x646C756F6873202CLL, 0xEF203A776F726720);
    if (v4[*(v1 + 24)])
    {
      v29 = 1702195828;
    }

    else
    {
      v29 = 0x65736C6166;
    }

    if (v4[*(v1 + 24)])
    {
      v30 = 0xE400000000000000;
    }

    else
    {
      v30 = 0xE500000000000000;
    }

    MEMORY[0x1B2726E80](v29, v30);

    MEMORY[0x1B2726E80](41, 0xE100000000000000);
    v18 = v36;
    v24 = _s15MissingMessagesO8CompleteVMa;
    v25 = v4;
  }

  sub_1B03D3F5C(v25, v24);
  return v18;
}

uint64_t sub_1B0B4D06C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  sub_1B03B5C80(v0, &v42 - v7, &unk_1EB6E26C0, &unk_1B0E9DE10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = _s15MissingMessagesO8ProgressVMa(0);
  v11 = *(v10 + 20);
  v12 = MessageIdentifierSet.count.getter();
  if (v9 <= 0xA && v12 <= 0xA)
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0x20676E697373696DLL, 0xE800000000000000);
    sub_1B03B5C80(v0, v5, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v24 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v44 = v24;
    v42 = v10;
    v25 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v25);

    MEMORY[0x1B2726E80](0x207344495520, 0xE600000000000000);
    sub_1B03B5C80(v1, v5, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0E46508();
    sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1B2726E80](0x203A656E6F64202CLL, 0xE800000000000000);
    v44 = MessageIdentifierSet.count.getter();
    v26 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v26);

    MEMORY[0x1B2726E80](0x207344495520, 0xE600000000000000);
    sub_1B0E46508();
    MEMORY[0x1B2726E80](0xD000000000000023, 0x80000001B0F2B500);
    v27 = v1 + *(v42 + 24);
    if ((*(v27 + 4) & 1) == 0)
    {
      v28 = *v27;
      v44 = 0;
LABEL_20:
      v45 = 0xE000000000000000;
      v43 = v28;
      sub_1B0E46508();
      v40 = v44;
      v41 = v45;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v12 <= 0xA)
  {
    v42 = v11;
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0x20676E697373696DLL, 0xE800000000000000);
    sub_1B03B5C80(v0, v5, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v29 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v44 = v29;
    v30 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v30);

    MEMORY[0x1B2726E80](0x6E69207344495520, 0xEF2065676E617220);
    sub_1B03B5C80(v1, v5, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v31 = sub_1B0B4D9F0();
    v33 = v32;
    result = sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (v33)
    {
      __break(1u);
      goto LABEL_23;
    }

    v44 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    sub_1B0E46508();
    MEMORY[0x1B2726E80](0x203A656E6F64202CLL, 0xE800000000000000);
    v44 = MessageIdentifierSet.count.getter();
    v34 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v34);

    MEMORY[0x1B2726E80](0x207344495520, 0xE600000000000000);
    sub_1B0E46508();
    MEMORY[0x1B2726E80](0xD000000000000023, 0x80000001B0F2B500);
    v23 = *(v10 + 24);
LABEL_17:
    v39 = (v1 + v23);
    if ((v39[1] & 1) == 0)
    {
      v28 = *v39;
      v44 = 0;
      goto LABEL_20;
    }

LABEL_18:
    v40 = 7104878;
    v41 = 0xE300000000000000;
LABEL_21:
    MEMORY[0x1B2726E80](v40, v41);

    return v46;
  }

  v42 = v10;
  if (v9 <= 0xA)
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0x20676E697373696DLL, 0xE800000000000000);
    sub_1B03B5C80(v0, v5, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v35 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v44 = v35;
    v36 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v36);

    MEMORY[0x1B2726E80](0x207344495520, 0xE600000000000000);
    sub_1B03B5C80(v1, v5, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0E46508();
    sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1B2726E80](0x203A656E6F64202CLL, 0xE800000000000000);
    v44 = MessageIdentifierSet.count.getter();
    v37 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v37);

    MEMORY[0x1B2726E80](0x6E69207344495520, 0xEF2065676E617220);
    result = sub_1B0B4D9F0();
    if (v38)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v44 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    sub_1B0E46508();
    MEMORY[0x1B2726E80](0xD000000000000023, 0x80000001B0F2B500);
    v23 = *(v42 + 24);
    goto LABEL_17;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0x20676E697373696DLL, 0xE800000000000000);
  sub_1B03B5C80(v0, v5, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v14 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v44 = v14;
  v15 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v15);

  MEMORY[0x1B2726E80](0x6E69207344495520, 0xEF2065676E617220);
  sub_1B03B5C80(v1, v5, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v16 = sub_1B0B4D9F0();
  v18 = v17;
  result = sub_1B0398EFC(v5, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v44 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](0x203A656E6F64202CLL, 0xE800000000000000);
  v44 = MessageIdentifierSet.count.getter();
  v20 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v20);

  MEMORY[0x1B2726E80](0x6E69207344495520, 0xEF2065676E617220);
  result = sub_1B0B4D9F0();
  v21 = v42;
  if ((v22 & 1) == 0)
  {
    v44 = result;
    sub_1B0E46508();
    MEMORY[0x1B2726E80](0xD000000000000023, 0x80000001B0F2B500);
    v23 = *(v21 + 24);
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B0B4D9F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1B0B4AAF0();
  if ((v4 & 0x100000000) != 0)
  {
    return 0;
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v3);
  v6 = sub_1B0B4A410(&unk_1EB6E2780, &unk_1B0E9C5E0) >> 32;
  v8 = v7;
  sub_1B0398EFC(v3, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v8)
  {
    return 0;
  }

  v11 = v6;
  v12 = v5;
  v10 = sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(&v12, &v11, &type metadata for UID, v10, &v13);
  return v13;
}

unint64_t sub_1B0B4DB1C()
{
  result = qword_1EB6E4960;
  if (!qword_1EB6E4960)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4960);
  }

  return result;
}

uint64_t sub_1B0B4DB74(uint64_t a1, uint64_t a2)
{
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v4 = _s15MissingMessagesO10NewMissingVMa(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = *(a1 + v5 + 8);
  v9 = *(a1 + v5 + 12);
  v10 = *(a1 + v5 + 16);
  v11 = *(a1 + v5 + 20);
  v12 = (a2 + v5);
  v13 = *(a2 + v5 + 4);
  v14 = *(a2 + v5 + 8);
  v15 = *(a2 + v5 + 12);
  v16 = *(a2 + v5 + 16);
  v17 = *(a2 + v5 + 20);
  if (v7)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 == *v6)
    {
      v18 = v13;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == v8)
    {
      v19 = v15;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (v16 == v10)
    {
      v21 = v17;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = *(v4 + 24);

  return sub_1B0E46E08();
}

uint64_t sub_1B0B4DC88(uint64_t a1, uint64_t a2)
{
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    goto LABEL_17;
  }

  v4 = _s15MissingMessagesO8ProgressVMa(0);
  v5 = *(v4 + 20);
  if ((sub_1B0E46E08() & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *(v4 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if (!v10)
    {
      return v10 & 1;
    }
  }

  else
  {
    if (*v9 != *v7)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      goto LABEL_17;
    }
  }

  v11 = _s15MissingMessagesO10IncompleteVMa(0);
  v12 = v11;
  v13 = *(v11 + 20);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v10 = *(a2 + v13 + 4);
  if ((v15 & 1) == 0)
  {
    if (*v16 != *v14)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v10)
  {
LABEL_15:
    v17 = *(v11 + 24);
    if (sub_1B0E46E08())
    {
      LOBYTE(v10) = *(a1 + *(v12 + 28)) ^ *(a2 + *(v12 + 28)) ^ 1;
      return v10 & 1;
    }

LABEL_17:
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

BOOL sub_1B0B4DDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else if ((a4 & 0x100000000) != 0 || a4 != a1)
  {
    return 0;
  }

  if ((a2 & 0x100000000) != 0)
  {
    if ((a5 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else if ((a5 & 0x100000000) != 0 || a5 != a2)
  {
    return 0;
  }

  if ((a3 & 0x100000000) != 0)
  {
    return (a6 & 0x100000000) != 0;
  }

  return (a6 & 0x100000000) == 0 && a6 == a3;
}

uint64_t sub_1B0B4DE0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return v4 & 1;
    }
  }

  else
  {
    if (*a2 != *a1)
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_9;
    }
  }

  v5 = _s15MissingMessagesO8CompleteVMa(0);
  v6 = *(v5 + 20);
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  v4 = *(a1 + *(v5 + 24)) ^ *(a2 + *(v5 + 24)) ^ 1;
  return v4 & 1;
}

uint64_t sub_1B0B4DEB0(uint64_t a1, uint64_t a2)
{
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v4 = _s15MissingMessagesO8ProgressVMa(0);
  v5 = *(v4 + 20);
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v7)
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1B0B4DFB0()
{
  sub_1B0AA967C();
  if (v0 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B0B4E054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B0B4E0EC()
{
  sub_1B0B493C0(319, &qword_1EB6DE3E0, type metadata accessor for MessageIdentifierSet);
  if (v0 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t _s15MissingMessagesO12WindowUpdateVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15MissingMessagesO12WindowUpdateVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t sub_1B0B4E208(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B00A7C(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = sub_1B0B00A7C((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 24 * v10;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  *v3 = v7;
  return result;
}

uint64_t sub_1B0B4E2C4@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a2;
  v116 = a1;
  v108 = a3;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v103 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v104 = &v103 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v103 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v103 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v132 = &v103 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v122 = &v103 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v124 = &v103 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v127 = &v103 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49E0, &qword_1B0EC6FE8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v109 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v112 = &v103 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v117 = &v103 - v30;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v103 - v33;
  v35 = *(v5 + 56);
  v111 = v5 + 56;
  v110 = v35;
  (v35)(&v103 - v33, 1, 1, v4, v32);
  v130 = v3;
  v36 = *v3;
  v133 = v4;
  v121 = sub_1B0B5C4EC(&qword_1EB6DD960);
  v134 = v121;
  KeyPath = swift_getKeyPath();

  v38 = 0;
  v39 = sub_1B0B582AC(v36, KeyPath);

  v40 = sub_1B0B3876C(v39);

  v42 = 0;
  v43 = v40 + 56;
  v44 = 1 << *(v40 + 32);
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & *(v40 + 56);
  v47 = (v44 + 63) >> 6;
  v128 = (v5 + 48);
  v129 = v5;
  v113 = MEMORY[0x1E69E7CC0];
  v119 = v34;
  v120 = v4;
  v125 = v47;
  v126 = v40 + 56;
  v118 = v40;
  while (1)
  {
    while (1)
    {
      v48 = v124;
      if (!v46)
      {
        goto LABEL_10;
      }

LABEL_14:
      while (1)
      {
        v50 = __clz(__rbit64(v46));
        v46 &= v46 - 1;
        v51 = *(v40 + 48);
        v131 = *(v129 + 72);
        v52 = v127;
        sub_1B0B5E6D0(v51 + v131 * (v50 | (v42 << 6)), v127, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0B5E798(v52, v48, type metadata accessor for MoveAndCopyMessages.CommandID);
        v53 = v130[2];
        v54 = v130[3];
        if (!*(v54 + 16))
        {
          break;
        }

        v55 = v130[3];
        sub_1B0AE0058(v48);
        if ((v56 & 1) == 0)
        {
          break;
        }

LABEL_9:
        result = sub_1B0B5E738(v48, type metadata accessor for MoveAndCopyMessages.CommandID);
        v47 = v125;
        v43 = v126;
        if (!v46)
        {
          goto LABEL_10;
        }
      }

      v57 = v122;
      sub_1B0B5E6D0(v48, v122, type metadata accessor for MoveAndCopyMessages.CommandID);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      v59 = *(v58 + 48);
      v60 = *(v58 + 52);
      v61 = swift_allocObject();
      sub_1B0B5E798(v57, v61 + *(*v61 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
      if (!*(v53 + 16))
      {
        goto LABEL_19;
      }

      v62 = sub_1B0AE00C4(v61);
      if (v63)
      {
        v64 = *(*(v53 + 56) + 8 * v62);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      else
      {
LABEL_19:
        v64 = MEMORY[0x1E69E7CD0];
      }

      MEMORY[0x1EEE9AC00](v65);
      v66 = v121;
      *(&v103 - 2) = v4;
      *(&v103 - 1) = v66;
      v67 = swift_getKeyPath();

      v68 = sub_1B0B582AC(v64, v67);

      v69 = sub_1B0B3876C(v68);

      v70 = 1 << *(v69 + 32);
      v71 = v70 < 64 ? ~(-1 << v70) : -1;
      v72 = v71 & *(v69 + 56);
      v73 = (v70 + 63) >> 6;
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v74 = 0;
      while (v72)
      {
        v75 = v132;
LABEL_31:
        sub_1B0B5E6D0(*(v69 + 48) + (__clz(__rbit64(v72)) | (v74 << 6)) * v131, v75, type metadata accessor for MoveAndCopyMessages.CommandID);
        if (!*(v54 + 16) || (v77 = sub_1B0AE0058(v75), v75 = v132, (v78 & 1) == 0))
        {
          sub_1B0B5E738(v75, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_8:

          v34 = v119;
          v4 = v120;
          v48 = v124;
          v40 = v118;
          goto LABEL_9;
        }

        v72 &= v72 - 1;
        v79 = *(*(v54 + 56) + v77);
        result = sub_1B0B5E738(v132, type metadata accessor for MoveAndCopyMessages.CommandID);
        if ((v79 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v75 = v132;
      while (1)
      {
        v76 = v74 + 1;
        if (__OFADD__(v74, 1))
        {
          __break(1u);
          goto LABEL_58;
        }

        if (v76 >= v73)
        {
          break;
        }

        v72 = *(v69 + 56 + 8 * v76);
        ++v74;
        if (v72)
        {
          v74 = v76;
          goto LABEL_31;
        }
      }

      v34 = v119;
      v80 = v117;
      sub_1B03B5C80(v119, v117, &qword_1EB6E49E0, &qword_1B0EC6FE8);
      v81 = *v128;
      v4 = v120;
      if ((*v128)(v80, 1, v120) != 1)
      {
        break;
      }

      sub_1B0398EFC(v34, &qword_1EB6E49E0, &qword_1B0EC6FE8);
      sub_1B0398EFC(v80, &qword_1EB6E49E0, &qword_1B0EC6FE8);
      v86 = v124;
      sub_1B0B5E6D0(v124, v34, type metadata accessor for MoveAndCopyMessages.CommandID);
      v110(v34, 0, 1, v4);
      sub_1B0B5E6D0(v86, v106, type metadata accessor for MoveAndCopyMessages.CommandID);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v116;
      v40 = v118;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v113 = sub_1B0B00934(0, v113[2] + 1, 1, v113);
      }

      v47 = v125;
      v90 = v113[2];
      v89 = v113[3];
      if (v90 >= v89 >> 1)
      {
        v113 = sub_1B0B00934(v89 > 1, v90 + 1, 1, v113);
      }

      sub_1B0B5E738(v124, type metadata accessor for MoveAndCopyMessages.CommandID);
      v91 = v113;
      v113[2] = v90 + 1;
      result = sub_1B0B5E798(v106, v91 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + v90 * v131, type metadata accessor for MoveAndCopyMessages.CommandID);
      v43 = v126;
      if (!v88)
      {
LABEL_53:

        v96 = v109;
        sub_1B03B5C80(v34, v109, &qword_1EB6E49E0, &qword_1B0EC6FE8);
        if ((*v128)(v96, 1, v4) == 1)
        {
          sub_1B0398EFC(v34, &qword_1EB6E49E0, &qword_1B0EC6FE8);

          sub_1B0398EFC(v96, &qword_1EB6E49E0, &qword_1B0EC6FE8);
          v97 = 1;
          v98 = v108;
        }

        else
        {
          v98 = v108;
          sub_1B0B5E798(v96, v108, type metadata accessor for MoveAndCopyMessages.CommandID);
          v99 = v130;
          sub_1B0B4F05C(v113, v98);

          v100 = v107;
          sub_1B0B5E6D0(v98, v107, type metadata accessor for MoveAndCopyMessages.CommandID);
          v101 = v99[3];
          v102 = swift_isUniquelyReferenced_nonNull_native();
          v135 = v99[3];
          sub_1B0A9C6C4(0, v100, v102);
          sub_1B0B5E738(v100, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1B0398EFC(v34, &qword_1EB6E49E0, &qword_1B0EC6FE8);
          v97 = 0;
          v99[3] = v135;
        }

        return v110(v98, v97, 1, v4);
      }
    }

    v123 = v38;
    v82 = v34;
    v83 = v115;
    sub_1B0B5E798(v80, v115, type metadata accessor for MoveAndCopyMessages.CommandID);
    v84 = v116;
    v48 = v124;
    if (!v116)
    {
      break;
    }

    v85 = v112;
    v84(v83, v48);
    if (v81(v85, 1, v4) == 1)
    {
      sub_1B03B1AF0(v84);
      sub_1B0B5E738(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E738(v48, type metadata accessor for MoveAndCopyMessages.CommandID);
      result = sub_1B0398EFC(v85, &qword_1EB6E49E0, &qword_1B0EC6FE8);
      goto LABEL_40;
    }

    v34 = v82;
    sub_1B0398EFC(v82, &qword_1EB6E49E0, &qword_1B0EC6FE8);
    v92 = v104;
    sub_1B0B5E798(v85, v104, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E6D0(v92, v82, type metadata accessor for MoveAndCopyMessages.CommandID);
    v110(v82, 0, 1, v4);
    sub_1B0B5E6D0(v124, v105, type metadata accessor for MoveAndCopyMessages.CommandID);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = sub_1B0B00934(0, v113[2] + 1, 1, v113);
    }

    v40 = v118;
    v38 = v123;
    v94 = v113[2];
    v93 = v113[3];
    if (v94 >= v93 >> 1)
    {
      v113 = sub_1B0B00934(v93 > 1, v94 + 1, 1, v113);
    }

    sub_1B03B1AF0(v84);
    sub_1B0B5E738(v104, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E738(v115, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E738(v124, type metadata accessor for MoveAndCopyMessages.CommandID);
    v95 = v113;
    v113[2] = v94 + 1;
    result = sub_1B0B5E798(v105, v95 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + v94 * v131, type metadata accessor for MoveAndCopyMessages.CommandID);
    v47 = v125;
    v43 = v126;
  }

  sub_1B0B5E738(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
  result = sub_1B0B5E738(v48, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_40:
  v40 = v118;
  v47 = v125;
  v43 = v126;
  v34 = v82;
  v38 = v123;
  if (v46)
  {
    goto LABEL_14;
  }

LABEL_10:
  while (1)
  {
    v49 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v49 >= v47)
    {
      goto LABEL_53;
    }

    v46 = *(v43 + 8 * v49);
    ++v42;
    if (v46)
    {
      v42 = v49;
      goto LABEL_14;
    }
  }

LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_1B0B4F05C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49E0, &qword_1B0EC6FE8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v39 - v7;
  v9 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - v18;
  v20 = MEMORY[0x1E69E7CD0];
  v45 = MEMORY[0x1E69E7CD0];
  v46 = MEMORY[0x1E69E7CD0];
  v21 = *(a1 + 16);
  if (v21)
  {
    v39 = v12;
    v40 = a2;
    v22 = *(v2 + 8);
    v42 = *(v2 + 16);
    v43 = v22;
    v41 = v2;
    v23 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v24 = *(v17 + 72);
    v25 = v23;
    v26 = v21;
    do
    {
      sub_1B0B5E6D0(v25, v19, type metadata accessor for MoveAndCopyMessages.CommandID);
      v27 = sub_1B0B5BD58(v19, v43);
      sub_1B0AFBB0C(v27);
      v28 = sub_1B0B5BD58(v19, v42);
      sub_1B0B5E738(v19, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0AFBB0C(v28);
      v25 += v24;
      --v26;
    }

    while (v26);
    if (*(v46 + 16))
    {
      v29 = v23;
      v30 = v21;
      do
      {
        sub_1B0B92E1C(v29, v8);
        sub_1B0398EFC(v8, &qword_1EB6E49E0, &qword_1B0EC6FE8);
        v29 += v24;
        --v30;
      }

      while (v30);
    }

    if (*(v45 + 16))
    {
      v31 = v23;
      v32 = v21;
      do
      {
        sub_1B0B92E1C(v31, v8);
        sub_1B0398EFC(v8, &qword_1EB6E49E0, &qword_1B0EC6FE8);
        v31 += v24;
        --v32;
      }

      while (v32);
    }

    do
    {
      sub_1B0B5E6D0(v23, v15, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B4F5AC(v15);
      sub_1B0B5E738(v15, type metadata accessor for MoveAndCopyMessages.CommandID);
      v23 += v24;
      --v21;
    }

    while (v21);
    v20 = v45;
    v33 = v46;
    v12 = v39;
    a2 = v40;
  }

  else
  {
    v33 = MEMORY[0x1E69E7CD0];
  }

  sub_1B0B5E6D0(a2, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  sub_1B0B5E798(v12, v37 + *(*v37 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B028E4(&v44, v37);

  sub_1B0B4FB20(v33, a2);

  sub_1B0B4F414(a2, v20);
}

uint64_t sub_1B0B4F414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 56);
  v12 = (v9 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  for (i = 0; v11; result = sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_1B0B5E6D0(*(a2 + 48) + *(v5 + 72) * (v16 | (v15 << 6)), v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B4FD48(a1, v8);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(a2 + 56 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B4F5AC(uint64_t a1)
{
  v3 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B5E6D0(a1, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v55[1] = v7;
  v10 = swift_allocObject();
  sub_1B0B5E798(v6, v10 + *(*v10 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B92B34(v10);

  v56 = v1;
  v11 = v1 + 8;
  v12 = *(v1 + 8);
  v55[2] = v11;
  v13 = *(v12 + 16);

  if (v13 && (v14 = sub_1B0AE00C4(v10), (v15 & 1) != 0))
  {
    v16 = *(*(v12 + 56) + 8 * v14);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    sub_1B0E460F8();
    sub_1B039E3F8(&qword_1EB6E49B8, &qword_1EB6E43B8, &unk_1B0EC5100);
    result = sub_1B0E45518();
    v16 = v58[4];
    v18 = v58[5];
    v19 = v58[6];
    v20 = v58[7];
    v21 = v58[8];
  }

  else
  {
    v20 = 0;
    v22 = -1 << *(v16 + 32);
    v18 = (v16 + 56);
    v19 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = (v24 & *(v16 + 56));
  }

  v55[0] = v19;
  v25 = (v19 + 64) >> 6;
  while ((v16 & 0x8000000000000000) != 0)
  {
    v31 = sub_1B0E46168();
    if (!v31 || (v58[0] = v31, swift_dynamicCast(), v30 = v59[0], v28 = v20, v29 = v21, !v59[0]))
    {
LABEL_24:
      sub_1B03D91F8();
      sub_1B0B8FE8C(v10);

      v34 = *(v56 + 16);
      v35 = *(v34 + 16);

      if (v35 && (v36 = sub_1B0AE00C4(v10), (v37 & 1) != 0))
      {
        v38 = *(*(v34 + 56) + 8 * v36);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      else
      {
        v38 = MEMORY[0x1E69E7CD0];
      }

      if ((v38 & 0xC000000000000001) != 0)
      {
        sub_1B0E460F8();
        sub_1B039E3F8(&qword_1EB6E49B8, &qword_1EB6E43B8, &unk_1B0EC5100);
        result = sub_1B0E45518();
        v38 = v59[0];
        v39 = v59[1];
        v40 = v59[2];
        v41 = v59[3];
        v42 = v59[4];
      }

      else
      {
        v41 = 0;
        v43 = -1 << *(v38 + 32);
        v39 = (v38 + 56);
        v40 = ~v43;
        v44 = -v43;
        if (v44 < 64)
        {
          v45 = ~(-1 << v44);
        }

        else
        {
          v45 = -1;
        }

        v42 = (v45 & *(v38 + 56));
      }

      v55[0] = v40;
      v46 = (v40 + 64) >> 6;
      while (1)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          v52 = sub_1B0E46168();
          if (!v52 || (v57 = v52, swift_dynamicCast(), v51 = v58[0], v49 = v41, v50 = v42, !v58[0]))
          {
LABEL_47:
            sub_1B03D91F8();
            sub_1B0B8FE8C(v10);
          }
        }

        else
        {
          v47 = v41;
          v48 = v42;
          v49 = v41;
          if (!v42)
          {
            do
            {
              v49 = (v47 + 1);
              if (__OFADD__(v47, 1))
              {
                goto LABEL_49;
              }

              if (v49 >= v46)
              {
                goto LABEL_47;
              }

              v48 = v39[v49];
              v47 = (v47 + 1);
            }

            while (!v48);
          }

          v50 = (v48 - 1) & v48;
          v51 = *(*(v38 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v48)))));

          if (!v51)
          {
            goto LABEL_47;
          }
        }

        v53 = sub_1B0B6C0C4(v58, v51);
        if (*v54)
        {
          sub_1B0B92B34(v10);
        }

        (v53)(v58, 0);

        v41 = v49;
        v42 = v50;
      }
    }

LABEL_22:
    v32 = sub_1B0B6C0C4(v59, v30);
    if (*v33)
    {
      sub_1B0B92B34(v10);
    }

    (v32)(v59, 0);

    v20 = v28;
    v21 = v29;
  }

  v26 = v20;
  v27 = v21;
  v28 = v20;
  if (v21)
  {
LABEL_18:
    v29 = (v27 - 1) & v27;
    v30 = *(*(v16 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));

    if (!v30)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v28 = (v26 + 1);
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      goto LABEL_24;
    }

    v27 = v18[v28];
    v26 = (v26 + 1);
    if (v27)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1B0B4FB20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  for (i = 0; v11; result = sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_1B0B5E6D0(*(a1 + 48) + *(v5 + 72) * (v16 | (v15 << 6)), v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B4FD48(v8, a2);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(a1 + 56 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0B4FCB8()
{
  v1 = *v0;
  if (!(*v0 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1B0B57CF8();
    if (result)
    {
      return result;
    }

    v3 = *v0;
    if (*v0 >> 62)
    {
      if (v3 < 0)
      {
        v7 = *v0;
      }

      v8 = sub_1B0E46138();
      v5 = __OFSUB__(v8, 1);
      result = v8 - 1;
      if (!v5)
      {
        return sub_1B0BAFFF0(result);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_1B0BAFFF0(result);
      }
    }

    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v6 = *v0;
  }

  result = sub_1B0E46138();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1B0B4FD48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MoveAndCopyMessages.CommandID;
  sub_1B0B5E6D0(a1, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  sub_1B0B5E798(v9, v14 + *(*v14 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B5E6D0(a2, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  v15 = *(v11 + 48);
  v16 = *(v11 + 52);
  v17 = swift_allocObject();
  sub_1B0B5E798(v9, v17 + *(*v17 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  v18 = sub_1B0B58DF4(v17, v14, *(v3 + 16));
  if (v18)
  {
    __break(1u);
    goto LABEL_18;
  }

  v19 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v3 + 16);
  v21 = v41;
  v18 = sub_1B0AE00C4(v14);
  v23 = v21[2];
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(v10) = v22;
  if (v21[3] >= v26)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_1B0B325B0(v26, isUniquelyReferenced_nonNull_native);
    v21 = v41;
    v18 = sub_1B0AE00C4(v14);
    if ((v10 & 1) != (v27 & 1))
    {
LABEL_12:
      v18 = sub_1B0E46BA8();
      __break(1u);
      goto LABEL_13;
    }
  }

  *(v3 + 16) = v21;
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_8:
  v10 = v18;
  sub_1B0A9BD3C(v18, v14, MEMORY[0x1E69E7CD0], v21);

  v18 = v10;
LABEL_9:
  while (1)
  {
    v28 = v21[7] + 8 * v18;

    sub_1B0B028E4(&v41, v17);

    v29 = *(v3 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v3 + 8);
    v21 = v41;
    v18 = sub_1B0AE00C4(v17);
    v31 = v21[2];
    v32 = (v30 & 1) == 0;
    v25 = __OFADD__(v31, v32);
    v33 = v31 + v32;
    if (!v25)
    {
      break;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    v38 = v18;
    sub_1B0B8E9DC();
    v18 = v38;
    v21 = v41;
    *(v3 + 16) = v41;
    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  LOBYTE(v10) = v30;
  if (v21[3] < v33)
  {
    sub_1B0B325B0(v33, isUniquelyReferenced_nonNull_native);
    v21 = v41;
    v18 = sub_1B0AE00C4(v17);
    if ((v10 & 1) == (v34 & 1))
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_13:
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = v18;
    sub_1B0B8E9DC();
    v18 = v39;
    v21 = v41;
    *(v3 + 8) = v41;
    if (v10)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v3 + 8) = v21;
  if ((v10 & 1) == 0)
  {
LABEL_15:
    v35 = v18;
    sub_1B0A9BD3C(v18, v17, MEMORY[0x1E69E7CD0], v21);

    v18 = v35;
  }

LABEL_16:
  v36 = v21[7] + 8 * v18;

  sub_1B0B028E4(&v41, v14);
}

uint64_t *sub_1B0B500B0@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 96) = sub_1B03D0770(&unk_1F2711218);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(a3 + 128) = sub_1B0B5BF38(MEMORY[0x1E69E7CC0]);
  *(a3 + 136) = v7;
  *(a3 + 144) = v8;
  *(a3 + 152) = v9;
  *(a3 + 160) = 0;
  *(a3 + 168) = v6;
  *(a3 + 176) = v6;
  *(a3 + 184) = MEMORY[0x1E69E7CD0];
  v11 = a1[1];
  v20 = *a1;
  v10 = v20;
  v18 = *(a1 + 3);
  v19 = *(a1 + 8);
  *(a3 + 40) = v19;
  *(a3 + 24) = v11;
  *(a3 + 8) = v10;
  v16 = *(a1 + 3);
  v17 = *(a1 + 8);
  *(a3 + 48) = &type metadata for MoveAndCopyMessages;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08A6A60(&v18, &v14);
  sub_1B03D091C(&v20, &v14);
  sub_1B0451F2C();
  sub_1B0E461E8();
  *(a3 + 105) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B0EC1E70;
  v14 = v18;
  v15 = v19;
  *(v12 + 32) = type metadata accessor for NotifyMessagesVanished();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  sub_1B039E440(&v20);
  result = sub_1B039E440(&v18);
  *a3 = v12;
  return result;
}

uint64_t sub_1B0B50244(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B5E6D0(v2, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B03C60A4(v11, v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      MEMORY[0x1B2728D70](0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      sub_1B0B0D328();
      sub_1B0E447C8();
      return sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    v17 = *v11;
    v18 = *(v11 + 2);
    v19 = *(v11 + 2);
    MEMORY[0x1B2728D70](2);
    MEMORY[0x1B2728D70](v18 | (v18 << 32));
    sub_1B0B0A9B8(a1, v19);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v14 = *v11;
    v15 = *(v11 + 2);
    v16 = *(v11 + 2);
    MEMORY[0x1B2728D70](3);
    MEMORY[0x1B2728D70](v15 | (v15 << 32));
    sub_1B0B0A854(a1, v16);
LABEL_7:
  }

  return MEMORY[0x1B2728D70](1);
}

uint64_t sub_1B0B50434()
{
  sub_1B0E46C28();
  sub_1B0B50244(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B50478()
{
  sub_1B0E46C28();
  sub_1B0B50244(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B504B8()
{
  result = sub_1B03D0770(&unk_1F27111F0);
  qword_1EB737D68 = result;
  return result;
}

void sub_1B0B504E0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  sub_1B0B5E6D0(a1, &v24 - v9, type metadata accessor for MailboxTaskLogger);
  sub_1B0B5E6D0(a1, v7, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B23DC4(v2, v27);
  v11 = sub_1B0E43988();
  v12 = sub_1B0E45908();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 68159491;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v15 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v15;
    *(v13 + 11) = 2082;
    v16 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_1B0399D64(*(v16 + 1), *(v16 + 2), &v26);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    v17 = *(v15 + 12);
    sub_1B0B5E738(v7, type metadata accessor for MailboxTaskLogger);
    *(v13 + 29) = v17;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v18 = *(v16 + 4);
    v19 = *(v16 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B5E738(v10, type metadata accessor for MailboxTaskLogger);
    v24 = v18;
    v25 = v19;
    v20 = sub_1B0E44BA8();
    v22 = sub_1B0399D64(v20, v21, &v26);

    *(v13 + 43) = v22;
    *(v13 + 51) = 1024;
    v23 = (v27[105] & 1) == 0;
    sub_1B0B23E20(v27);
    *(v13 + 53) = v23;
    _os_log_impl(&dword_1B0389000, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Server supports move: %{BOOL}d", v13, 0x39u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v14, -1, -1);
    MEMORY[0x1B272C230](v13, -1, -1);
  }

  else
  {
    sub_1B0B23E20(v27);
    sub_1B0B5E738(v7, type metadata accessor for MailboxTaskLogger);

    sub_1B0B5E738(v10, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_1B0B507F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v59 = a4;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49E0, &qword_1B0EC6FE8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v57 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49E8, &qword_1B0EC6FF0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  if (sub_1B0B126CC(0, a1, a2, a3))
  {
    v54 = v4;
    sub_1B0B4E2C4(sub_1B0B50E20, 0, v22);
    sub_1B03B5C80(v22, v19, &qword_1EB6E49E0, &qword_1B0EC6FE8);
    v30 = *(v58 + 48);
    v31 = 1;
    v55 = v8;
    v32 = v30(v19, 1, v8);
    v33 = v29;
    if (v32 != 1)
    {
      sub_1B0B5E798(v19, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B515F4(v13, v29);
      sub_1B0B5E738(v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      v31 = 0;
    }

    sub_1B0398EFC(v22, &qword_1EB6E49E0, &qword_1B0EC6FE8);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F0, &qword_1B0EC6FF8);
    (*(*(v34 - 8) + 56))(v29, v31, 1, v34);
    sub_1B03B5C80(v29, v26, &qword_1EB6E49E8, &qword_1B0EC6FF0);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F0, &qword_1B0EC6FF8);
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v26, 1, v35) == 1)
    {
      sub_1B0398EFC(v26, &qword_1EB6E49E8, &qword_1B0EC6FF0);
      (*(v58 + 56))(v57, 1, 1, v55);
      v37 = v59;
      return sub_1B03C60A4(v33, v37, &qword_1EB6E49E8, &qword_1B0EC6FF0);
    }

    v43 = *(v35 + 48);
    v44 = v57;
    sub_1B0B5E798(v26, v57, type metadata accessor for MoveAndCopyMessages.CommandID);
    v45 = v55;
    (*(v58 + 56))(v44, 0, 1, v55);
    sub_1B0B5E738(&v26[v43], type metadata accessor for ClientCommand);
    v46 = v30(v44, 1, v45);
    v37 = v59;
    if (v46 == 1)
    {
      return sub_1B03C60A4(v33, v37, &qword_1EB6E49E8, &qword_1B0EC6FF0);
    }

    v47 = v59;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        *(v54 + 160) = 1;
      }

      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 2)
    {
LABEL_14:
      sub_1B0B5E738(v44, type metadata accessor for MoveAndCopyMessages.CommandID);
      v37 = v47;
      return sub_1B03C60A4(v33, v37, &qword_1EB6E49E8, &qword_1B0EC6FF0);
    }

    v37 = v47;
    if (*(v54 + 160))
    {
      return sub_1B03C60A4(v33, v37, &qword_1EB6E49E8, &qword_1B0EC6FF0);
    }

    v49 = v33;
    v50 = v56;
    swift_storeEnumTagMultiPayload();
    v51 = v54;
    v52 = *(v54 + 152);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v51 + 152);
    sub_1B0A9C6C4(1, v50, isUniquelyReferenced_nonNull_native);
    sub_1B0B5E738(v50, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0398EFC(v49, &qword_1EB6E49E8, &qword_1B0EC6FF0);
    *(v51 + 152) = v60;
    return (*(v36 + 56))(v47, 1, 1, v35);
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F0, &qword_1B0EC6FF8);
    v39 = *(*(v38 - 8) + 56);
    v40 = v38;
    v41 = v59;

    return v39(v41, 1, 1, v40);
  }
}

uint64_t sub_1B0B50E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v73 = a3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v68 - v8;
  v9 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v72 = *(v9 - 8);
  v10 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4990, &unk_1B0EC6D30);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = *(v27 + 56);
  v29 = a1;
  v31 = &v68 - v30;
  sub_1B0B5E6D0(v29, &v68 - v30, type metadata accessor for MoveAndCopyMessages.CommandID);
  v71 = v28;
  v32 = v9;
  sub_1B0B5E6D0(a2, &v31[v28], type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B0B5E6D0(v31, v18, type metadata accessor for MoveAndCopyMessages.CommandID);
      v34 = v71;
      if (!swift_getEnumCaseMultiPayload())
      {
        v64 = v68;
        sub_1B03C60A4(v18, v68, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v65 = v69;
        sub_1B03C60A4(&v31[v34], v69, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v66 = v73;
        MessageIdentifierSet.union(_:)(v65, v73);
        sub_1B0398EFC(v65, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v64, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_storeEnumTagMultiPayload();
        (*(v72 + 56))(v66, 0, 1, v9);
        return sub_1B0B5E738(v31, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      sub_1B0398EFC(v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      goto LABEL_21;
    }

    sub_1B0B5E6D0(v31, v24, type metadata accessor for MoveAndCopyMessages.CommandID);
    v50 = *v24;
    v51 = *(v24 + 2);
    v52 = *(v24 + 2);
    v53 = v71;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0B5E6D0(&v31[v53], v21, type metadata accessor for MoveAndCopyMessages.CommandID);
      v54 = *v21;
      v55 = *(v21 + 2);
      if (v51 | (v51 << 32)) == (*(v21 + 2) | (*(v21 + 2) << 32)) && (sub_1B04520BC(v50, *v21))
      {
        v56 = v32;
        v57 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v58 = sub_1B0B38B4C(v57);
        v59 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v60 = sub_1B0A94674(v59, v58);

        if (v60)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v52;
          sub_1B0B5E800(v55, sub_1B0B57D74, 0, isUniquelyReferenced_nonNull_native, &v74);

          swift_bridgeObjectRelease_n();
          v62 = v74;

          v63 = v73;
          *v73 = v50;
          *(v63 + 2) = v51;
          v63[2] = v62;
          swift_storeEnumTagMultiPayload();
          (*(v72 + 56))(v63, 0, 1, v56);
          goto LABEL_25;
        }

        (*(v72 + 56))(v73, 1, 1, v56);

LABEL_24:

        goto LABEL_25;
      }
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_21:
    (*(v72 + 56))(v73, 1, 1, v32);
    return sub_1B0398EFC(v31, &qword_1EB6E4990, &unk_1B0EC6D30);
  }

  sub_1B0B5E6D0(v31, v15, type metadata accessor for MoveAndCopyMessages.CommandID);
  v35 = *v15;
  v36 = *(v15 + 2);
  v37 = *(v15 + 2);
  v38 = v71;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_1B0B5E6D0(&v31[v38], v12, type metadata accessor for MoveAndCopyMessages.CommandID);
  v39 = *v12;
  v40 = *(v12 + 2);
  v41 = *(v12 + 2);
  if ((v36 | (v36 << 32)) != (v40 | (v40 << 32)) || (sub_1B04520BC(v35, v39) & 1) == 0)
  {

    goto LABEL_20;
  }

  v42 = v32;
  v43 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v44 = sub_1B0B38B4C(v43);
  v45 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v46 = sub_1B0A94674(v45, v44);

  if ((v46 & 1) == 0)
  {
    (*(v72 + 56))(v73, 1, 1, v42);

    goto LABEL_24;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v37;
  sub_1B0B5EAA8(v41, sub_1B0B57D5C, 0, v47, &v74);

  swift_bridgeObjectRelease_n();
  v48 = v74;

  v49 = v73;
  *v73 = v35;
  *(v49 + 2) = v36;
  v49[2] = v48;
  swift_storeEnumTagMultiPayload();
  (*(v72 + 56))(v49, 0, 1, v42);
LABEL_25:
  sub_1B0B5E738(&v31[v71], type metadata accessor for MoveAndCopyMessages.CommandID);
  return sub_1B0B5E738(v31, type metadata accessor for MoveAndCopyMessages.CommandID);
}

uint64_t sub_1B0B515F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ClientCommand(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B5E6D0(a1, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *v12;
      v36 = v2;
      v24 = *(v12 + 2);
      v25 = *(v12 + 2);
      v26 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B24198(v26);
      v27 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48)];
      sub_1B03C60A4(v8, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);

      *v27 = v23;
      *(v27 + 2) = v24;
    }
  }

  else
  {
    v36 = v2;
    if (EnumCaseMultiPayload)
    {
      v28 = *v12;
      v29 = *(v12 + 2);
      v30 = *(v12 + 2);
      v31 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B24198(v31);
      v32 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48)];
      sub_1B03C60A4(v8, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);

      *v32 = v28;
      *(v32 + 2) = v29;
    }

    else
    {
      sub_1B03C60A4(v12, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v18 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48)];
      sub_1B03B5C80(v8, v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1B0EC1E70;
      v20 = Flag.deleted.unsafeMutableAddressor();
      v22 = *v20;
      v21 = *(v20 + 1);
      *(v19 + 32) = v22;
      *(v19 + 40) = v21;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *v18 = 256;
      *(v18 + 1) = v19;
    }
  }

  swift_storeEnumTagMultiPayload();
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F0, &qword_1B0EC6FF8) + 48);
  sub_1B0B5E6D0(a1, a2, type metadata accessor for MoveAndCopyMessages.CommandID);
  return sub_1B0B5E798(v16, a2 + v33, type metadata accessor for ClientCommand);
}

uint64_t sub_1B0B51974(uint64_t a1, unint64_t a2, uint64_t a3, NSObject *a4, int a5, uint64_t a6, uint64_t a7)
{
  v397 = a7;
  LODWORD(v390) = a5;
  v393 = a4;
  v376 = a3;
  v394 = a2;
  v389 = type metadata accessor for MailboxTaskLogger(0);
  v9 = *(*(v389 - 8) + 64);
  MEMORY[0x1EEE9AC00](v389);
  v391 = &v360[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v374 = &v360[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v366 = &v360[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v371 = &v360[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v381 = &v360[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v380 = &v360[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v360[-v22];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v360[-v25];
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v27 = *(*(v387 - 8) + 64);
  MEMORY[0x1EEE9AC00](v387);
  v386 = &v360[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v377 = &v360[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v369 = &v360[-v32];
  MEMORY[0x1EEE9AC00](v33);
  v370 = &v360[-v34];
  MEMORY[0x1EEE9AC00](v35);
  v400 = &v360[-v36];
  MEMORY[0x1EEE9AC00](v37);
  v384 = &v360[-v38];
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v360[-v40];
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v360[-v43];
  v45 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v378 = *(v45 - 8);
  v46 = *(v378 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v395 = &v360[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v48);
  v383 = &v360[-v49];
  MEMORY[0x1EEE9AC00](v50);
  v382 = &v360[-v51];
  MEMORY[0x1EEE9AC00](v52);
  v375 = &v360[-v53];
  MEMORY[0x1EEE9AC00](v54);
  v385 = &v360[-v55];
  MEMORY[0x1EEE9AC00](v56);
  v388 = &v360[-v57];
  MEMORY[0x1EEE9AC00](v58);
  v367 = &v360[-v59];
  MEMORY[0x1EEE9AC00](v60);
  v368 = &v360[-v61];
  MEMORY[0x1EEE9AC00](v62);
  v379 = &v360[-v63];
  MEMORY[0x1EEE9AC00](v64);
  v373 = &v360[-v65];
  MEMORY[0x1EEE9AC00](v66);
  v364 = &v360[-v67];
  MEMORY[0x1EEE9AC00](v68);
  v365 = &v360[-v69];
  MEMORY[0x1EEE9AC00](v70);
  v372 = &v360[-v71];
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v360[-v73];
  v75 = *(v7 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v402 = *(v7 + 152);
  sub_1B0A9C6C4(1, a1, isUniquelyReferenced_nonNull_native);
  v392 = v7;
  *(v7 + 152) = v402;
  v396 = a1;
  sub_1B0B5E6D0(a1, v74, type metadata accessor for MoveAndCopyMessages.CommandID);
  v399 = v45;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B03C60A4(v74, v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0B5E6D0(v397, v26, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B03B5C80(v44, v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v78 = sub_1B0E43988();
      v79 = sub_1B0E45908();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v384 = swift_slowAlloc();
        v404 = v384;
        *v80 = 68159491;
        *(v80 + 4) = 2;
        *(v80 + 8) = 256;
        v81 = &v26[*(v389 + 20)];
        *(v80 + 10) = *v81;
        *(v80 + 11) = 2082;
        v83 = *(v81 + 1);
        v82 = *(v81 + 2);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v84 = sub_1B0399D64(v83, v82, &v404);

        *(v80 + 13) = v84;
        *(v80 + 21) = 1040;
        *(v80 + 23) = 2;
        *(v80 + 27) = 512;
        *(v80 + 29) = *(v81 + 12);
        *(v80 + 31) = 2160;
        *(v80 + 33) = 0x786F626C69616DLL;
        *(v80 + 41) = 2085;
        v85 = *(v81 + 10);
        v402 = *(v81 + 4);
        v403 = v85;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v86 = sub_1B0E44BA8();
        v88 = sub_1B0399D64(v86, v87, &v404);

        *(v80 + 43) = v88;
        sub_1B0B5E738(v26, type metadata accessor for MailboxTaskLogger);
        *(v80 + 51) = 2082;
        v89 = MessageIdentifierSet.debugDescription.getter(v387);
        v91 = sub_1B0399D64(v89, v90, &v404);

        *(v80 + 53) = v91;
        sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        _os_log_impl(&dword_1B0389000, v78, v79, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did mark source messages %{public}s as deleted.", v80, 0x3Du);
        v92 = v384;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v92, -1, -1);
        MEMORY[0x1B272C230](v80, -1, -1);
      }

      else
      {
        sub_1B0B5E738(v26, type metadata accessor for MailboxTaskLogger);
        sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      sub_1B0398EFC(v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      goto LABEL_19;
    }

    v123 = *v74;
    v124 = *(v74 + 2);
    v125 = *(v74 + 2);
    v126 = v380;
    sub_1B0B5E6D0(v397, v380, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v127 = sub_1B0E43988();
    v128 = sub_1B0E45908();
    v129 = os_log_type_enabled(v127, v128);
    v100 = v400;
    if (v129)
    {
      v130 = swift_slowAlloc();
      v361 = v124;
      v102 = v130;
      v381 = swift_slowAlloc();
      v404 = v381;
      *v102 = 68160003;
      *(v102 + 4) = 2;
      *(v102 + 8) = 256;
      v131 = *(v389 + 20);
      v363 = v128;
      v132 = &v126[v131];
      *(v102 + 10) = v126[v131];
      *(v102 + 11) = 2082;
      v362 = v127;
      v134 = *&v126[v131 + 8];
      v133 = *&v126[v131 + 16];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v135 = sub_1B0399D64(v134, v133, &v404);

      *(v102 + 13) = v135;
      *(v102 + 21) = 1040;
      *(v102 + 23) = 2;
      *(v102 + 27) = 512;
      *(v102 + 29) = *(v132 + 12);
      *(v102 + 31) = 2160;
      *(v102 + 33) = 0x786F626C69616DLL;
      *(v102 + 41) = 2085;
      v136 = *(v132 + 10);
      v402 = *(v132 + 4);
      v403 = v136;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v137 = sub_1B0E44BA8();
      v139 = sub_1B0399D64(v137, v138, &v404);

      *(v102 + 43) = v139;
      sub_1B0B5E738(v126, type metadata accessor for MailboxTaskLogger);
      *(v102 + 51) = 2160;
      *(v102 + 53) = 0x786F626C69616DLL;
      *(v102 + 61) = 2085;
      v402 = v123;
      v403 = v361;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v140 = sub_1B0E44BA8();
      v142 = sub_1B0399D64(v140, v141, &v404);

      *(v102 + 63) = v142;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      *(v102 + 71) = 2082;
      v143 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v144 = v384;
      sub_1B0B24198(v143);
      v145 = MessageIdentifierSet.debugDescription.getter(v387);
      v147 = v146;
      sub_1B0398EFC(v144, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v148 = sub_1B0399D64(v145, v147, &v404);

      *(v102 + 73) = v148;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v121 = v362;
      _os_log_impl(&dword_1B0389000, v362, v363, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] [%{sensitive,mask.mailbox}s] Did copy messages %{public}s.", v102, 0x51u);
      v122 = &v406;
      goto LABEL_10;
    }

    sub_1B0B5E738(v126, type metadata accessor for MailboxTaskLogger);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v93 = *v74;
    v94 = *(v74 + 2);
    v95 = *(v74 + 2);
    v96 = v381;
    sub_1B0B5E6D0(v397, v381, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v97 = sub_1B0E43988();
    v98 = sub_1B0E45908();
    v99 = os_log_type_enabled(v97, v98);
    v100 = v400;
    if (v99)
    {
      v101 = swift_slowAlloc();
      v361 = v94;
      v102 = v101;
      v380 = swift_slowAlloc();
      v404 = v380;
      *v102 = 68160003;
      *(v102 + 4) = 2;
      *(v102 + 8) = 256;
      v103 = *(v389 + 20);
      v363 = v98;
      v104 = &v96[v103];
      *(v102 + 10) = v96[v103];
      *(v102 + 11) = 2082;
      v362 = v97;
      v106 = *&v96[v103 + 8];
      v105 = *&v96[v103 + 16];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v107 = sub_1B0399D64(v106, v105, &v404);

      *(v102 + 13) = v107;
      *(v102 + 21) = 1040;
      *(v102 + 23) = 2;
      *(v102 + 27) = 512;
      *(v102 + 29) = *(v104 + 12);
      *(v102 + 31) = 2160;
      *(v102 + 33) = 0x786F626C69616DLL;
      *(v102 + 41) = 2085;
      v108 = *(v104 + 10);
      v402 = *(v104 + 4);
      v403 = v108;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v109 = sub_1B0E44BA8();
      v111 = sub_1B0399D64(v109, v110, &v404);

      *(v102 + 43) = v111;
      sub_1B0B5E738(v96, type metadata accessor for MailboxTaskLogger);
      *(v102 + 51) = 2160;
      *(v102 + 53) = 0x786F626C69616DLL;
      *(v102 + 61) = 2085;
      v402 = v93;
      v403 = v361;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v112 = sub_1B0E44BA8();
      v114 = sub_1B0399D64(v112, v113, &v404);

      *(v102 + 63) = v114;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      *(v102 + 71) = 2082;
      v115 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v116 = v384;
      sub_1B0B24198(v115);
      v117 = MessageIdentifierSet.debugDescription.getter(v387);
      v119 = v118;
      sub_1B0398EFC(v116, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v120 = sub_1B0399D64(v117, v119, &v404);

      *(v102 + 73) = v120;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v121 = v362;
      _os_log_impl(&dword_1B0389000, v362, v363, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] [%{sensitive,mask.mailbox}s] Did move messages %{public}s.", v102, 0x51u);
      v122 = &v405;
LABEL_10:
      v149 = *(v122 - 32);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v149, -1, -1);
      MEMORY[0x1B272C230](v102, -1, -1);

      goto LABEL_20;
    }

    sub_1B0B5E738(v96, type metadata accessor for MailboxTaskLogger);
LABEL_17:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_20;
  }

  sub_1B0B5E6D0(v397, v23, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v150 = sub_1B0E43988();
  v151 = sub_1B0E45908();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v404 = v153;
    *v152 = 68159235;
    *(v152 + 4) = 2;
    *(v152 + 8) = 256;
    v154 = &v23[*(v389 + 20)];
    *(v152 + 10) = *v154;
    *(v152 + 11) = 2082;
    v155 = *(v154 + 1);
    v156 = *(v154 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v157 = sub_1B0399D64(v155, v156, &v404);

    *(v152 + 13) = v157;
    *(v152 + 21) = 1040;
    *(v152 + 23) = 2;
    *(v152 + 27) = 512;
    *(v152 + 29) = *(v154 + 12);
    *(v152 + 31) = 2160;
    *(v152 + 33) = 0x786F626C69616DLL;
    *(v152 + 41) = 2085;
    v158 = *(v154 + 10);
    v402 = *(v154 + 4);
    v403 = v158;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v159 = sub_1B0E44BA8();
    v161 = sub_1B0399D64(v159, v160, &v404);

    *(v152 + 43) = v161;
    sub_1B0B5E738(v23, type metadata accessor for MailboxTaskLogger);
    _os_log_impl(&dword_1B0389000, v150, v151, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did expunge deleted messages.", v152, 0x33u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v153, -1, -1);
    MEMORY[0x1B272C230](v152, -1, -1);
  }

  else
  {

    sub_1B0B5E738(v23, type metadata accessor for MailboxTaskLogger);
  }

LABEL_19:
  v100 = v400;
LABEL_20:
  v162 = v396;
  v163 = v394;
  result = sub_1B0B54500();
  v167 = v391;
  v168 = v390;
  if (!result)
  {
    return result;
  }

  v169 = result;
  v170 = v165;
  v171 = v166;
  v172 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B24198(v172);
  v384 = v169;
  v381 = v170;
  if (!v168)
  {
    if ((~v163 & 0xF000000000000007) != 0 && ((v163 >> 59) & 0x1E | (v163 >> 2) & 1) == 8)
    {
      LODWORD(v395) = *((v163 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v195 = *((v163 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v196 = *((v163 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      sub_1B0B5E6D0(v397, v371, type metadata accessor for MailboxTaskLogger);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0B5E6D0(v162, v372, type metadata accessor for MoveAndCopyMessages.CommandID);
      v197 = v370;
      sub_1B03B5C80(v100, v370, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1B0394868();
      sub_1B0394868();
      v198 = sub_1B0E43988();
      v199 = sub_1B0E458D8();
      v200 = os_log_type_enabled(v198, v199);
      v396 = v196;
      if (!v200)
      {

        sub_1B0B5E738(v371, type metadata accessor for MailboxTaskLogger);
        sub_1B0B5E738(v372, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0398EFC(v197, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v325 = v395;
LABEL_125:
        v358 = v398;
        v359 = sub_1B0B5DC34(v325, v195, v196, v171);
        if (v358)
        {
          goto LABEL_126;
        }

        v290 = v359;
        v398 = 0;

LABEL_107:

LABEL_108:
        sub_1B0B4E208(v169, v170, v290);
        return sub_1B0398EFC(v100, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      LODWORD(v391) = v199;
      v393 = v198;
      v394 = v195;
      v201 = swift_slowAlloc();
      v390 = swift_slowAlloc();
      v404 = v390;
      *v201 = 68160259;
      *(v201 + 4) = 2;
      *(v201 + 8) = 256;
      v202 = v371;
      v203 = &v371[*(v389 + 20)];
      *(v201 + 10) = *v203;
      *(v201 + 11) = 2082;
      v205 = *(v203 + 1);
      v204 = *(v203 + 2);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v206 = sub_1B0399D64(v205, v204, &v404);

      *(v201 + 13) = v206;
      *(v201 + 21) = 1040;
      *(v201 + 23) = 2;
      *(v201 + 27) = 512;
      *(v201 + 29) = *(v203 + 12);
      *(v201 + 31) = 2160;
      *(v201 + 33) = 0x786F626C69616DLL;
      *(v201 + 41) = 2085;
      v207 = *(v203 + 10);
      v402 = *(v203 + 4);
      v403 = v207;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v208 = sub_1B0E44BA8();
      v210 = sub_1B0399D64(v208, v209, &v404);

      *(v201 + 43) = v210;
      sub_1B0B5E738(v202, type metadata accessor for MailboxTaskLogger);
      *(v201 + 51) = 2082;
      v211 = v365;
      sub_1B0B5E6D0(v372, v365, type metadata accessor for MoveAndCopyMessages.CommandID);
      v212 = v364;
      sub_1B0B5E6D0(v211, v364, type metadata accessor for MoveAndCopyMessages.CommandID);
      v213 = swift_getEnumCaseMultiPayload();
      if (v213 > 1)
      {
        v214 = v370;
        if (v213 != 2)
        {
          v216 = 0x45474E55505845;
          v215 = 0xE700000000000000;
          goto LABEL_117;
        }

        v215 = 0xE400000000000000;
        v216 = 1163284301;
      }

      else
      {
        v214 = v370;
        if (!v213)
        {
          v215 = 0xE600000000000000;
          v216 = 0x4554454C4544;
          v217 = v211;
          v211 = v212;
LABEL_115:
          sub_1B0B5E738(v217, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_117:
          sub_1B0B5E738(v211, type metadata accessor for MoveAndCopyMessages.CommandID);
          v338 = sub_1B0399D64(v216, v215, &v404);

          *(v201 + 53) = v338;
          sub_1B0B5E738(v372, type metadata accessor for MoveAndCopyMessages.CommandID);
          *(v201 + 61) = 2082;
          v339 = MessageIdentifierSet.debugDescription.getter(v387);
          v341 = sub_1B0399D64(v339, v340, &v404);

          *(v201 + 63) = v341;
          sub_1B0398EFC(v214, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v399 = v201;
          *(v201 + 71) = 2082;
          v342 = *(v396 + 16);
          v343 = MEMORY[0x1E69E7CC0];
          if (v342)
          {
            v397 = v171;
            v402 = MEMORY[0x1E69E7CC0];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            sub_1B0A18B88(0, v342, 0);
            v344 = v396;
            v345 = 32;
            v343 = v402;
            do
            {
              v401 = *(v344 + v345);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
              v346 = sub_1B0E44B88();
              v348 = v347;
              v402 = v343;
              v350 = v343[2];
              v349 = v343[3];
              if (v350 >= v349 >> 1)
              {
                sub_1B0A18B88(v349 > 1, v350 + 1, 1);
                v344 = v396;
                v343 = v402;
              }

              v343[2] = v350 + 1;
              v351 = &v343[2 * v350];
              v351[4] = v346;
              v351[5] = v348;
              v345 += 8;
              --v342;
            }

            while (v342);

            v100 = v400;
            v171 = v397;
            v196 = v344;
          }

          else
          {
            v196 = v396;
          }

          v402 = v343;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
          sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
          v352 = sub_1B0E448E8();
          v354 = v353;

          v355 = sub_1B0399D64(v352, v354, &v404);

          v170 = v399;
          *(v399 + 73) = v355;
          swift_bridgeObjectRelease_n();
          v195 = v394;
          swift_bridgeObjectRelease_n();
          *(v170 + 81) = 1024;

          v325 = v395;
          *(v170 + 83) = v395;

          v356 = v393;
          _os_log_impl(&dword_1B0389000, v393, v391, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server completed %{public}s of messages %{public}s with destination UIDs %{public}s and UIDValidity 0x%x", v170, 0x57u);
          v357 = v390;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v357, -1, -1);
          MEMORY[0x1B272C230](v170, -1, -1);

          v169 = v384;
          LODWORD(v170) = v381;
          goto LABEL_125;
        }

        v216 = 1498435395;
        v215 = 0xE400000000000000;
      }

      v217 = v212;
      goto LABEL_115;
    }

    v219 = v373;
    sub_1B0B5E6D0(v162, v373, type metadata accessor for MoveAndCopyMessages.CommandID);
    v220 = swift_getEnumCaseMultiPayload();
    v221 = sub_1B0B5E738(v219, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (v220 == 2)
    {
      v222 = *(v392 + 168);
      MEMORY[0x1EEE9AC00](v221);
      *&v360[-16] = v100;
      v223 = v398;
      v225 = sub_1B0BA70C0(sub_1B0B5EF3C, &v360[-32], v224);
      v398 = v223;
      v226 = v374;
      v227 = v379;
      if ((v228 & 1) == 0)
      {
        v399 = v225;
        v229 = v366;
        sub_1B0B5E6D0(v397, v366, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v230 = v369;
        sub_1B03B5C80(v100, v369, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v231 = sub_1B0E43988();
        v232 = sub_1B0E458D8();
        if (os_log_type_enabled(v231, v232))
        {
          v233 = swift_slowAlloc();
          v396 = swift_slowAlloc();
          v397 = v171;
          v404 = v396;
          *v233 = 68159491;
          *(v233 + 4) = 2;
          *(v233 + 8) = 256;
          v234 = &v229[*(v389 + 20)];
          *(v233 + 10) = *v234;
          *(v233 + 11) = 2082;
          v236 = *(v234 + 1);
          v235 = *(v234 + 2);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v237 = v229;
          v238 = sub_1B0399D64(v236, v235, &v404);

          *(v233 + 13) = v238;
          *(v233 + 21) = 1040;
          *(v233 + 23) = 2;
          *(v233 + 27) = 512;
          *(v233 + 29) = *(v234 + 12);
          *(v233 + 31) = 2160;
          *(v233 + 33) = 0x786F626C69616DLL;
          *(v233 + 41) = 2085;
          v239 = *(v234 + 4);
          v240 = *(v234 + 10);
          v100 = v400;
          v402 = v239;
          v403 = v240;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v241 = sub_1B0E44BA8();
          v243 = sub_1B0399D64(v241, v242, &v404);

          *(v233 + 43) = v243;
          sub_1B0B5E738(v237, type metadata accessor for MailboxTaskLogger);
          *(v233 + 51) = 2082;
          v244 = v369;
          v245 = MessageIdentifierSet.debugDescription.getter(v387);
          v247 = sub_1B0399D64(v245, v246, &v404);

          *(v233 + 53) = v247;
          sub_1B0398EFC(v244, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          _os_log_impl(&dword_1B0389000, v231, v232, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server completed move of messages %{public}s with destination UIDs", v233, 0x3Du);
          v248 = v396;
          swift_arrayDestroy();
          v171 = v397;
          MEMORY[0x1B272C230](v248, -1, -1);
          MEMORY[0x1B272C230](v233, -1, -1);
        }

        else
        {

          sub_1B0B5E738(v229, type metadata accessor for MailboxTaskLogger);
          sub_1B0398EFC(v230, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        }

        v326 = sub_1B0BB0080(v399);
        v328 = v327;
        v329 = v398;
        v331 = sub_1B0B5DC34(v326, v330, v327, v171);
        LODWORD(v170) = v381;
        if (!v329)
        {
          v290 = v331;
          v398 = 0;

          v169 = v384;
          goto LABEL_108;
        }

        v396 = v328;
LABEL_126:

        return sub_1B0398EFC(v100, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }
    }

    else
    {
      v226 = v374;
      v227 = v379;
    }

    sub_1B0B5E6D0(v397, v226, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0B5E6D0(v162, v227, type metadata accessor for MoveAndCopyMessages.CommandID);
    v249 = v377;
    sub_1B03B5C80(v100, v377, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v250 = sub_1B0E43988();
    v251 = sub_1B0E458D8();
    if (!os_log_type_enabled(v250, v251))
    {

      sub_1B0B5E738(v226, type metadata accessor for MailboxTaskLogger);
      sub_1B0B5E738(v227, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0398EFC(v249, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_106:
      v290 = sub_1B0B5DF14(1, 1, v171);
      v169 = v384;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      LODWORD(v170) = v381;
      sub_1B03AB2E0(&v402, v169, v381);

      goto LABEL_107;
    }

    v397 = v171;
    v252 = swift_slowAlloc();
    v396 = swift_slowAlloc();
    v404 = v396;
    *v252 = 68159747;
    *(v252 + 4) = 2;
    *(v252 + 8) = 256;
    v253 = v226 + *(v389 + 20);
    *(v252 + 10) = *v253;
    *(v252 + 11) = 2082;
    v255 = *(v253 + 8);
    v254 = *(v253 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v256 = v226;
    v257 = sub_1B0399D64(v255, v254, &v404);

    *(v252 + 13) = v257;
    *(v252 + 21) = 1040;
    *(v252 + 23) = 2;
    v258 = v379;
    *(v252 + 27) = 512;
    *(v252 + 29) = *(v253 + 24);
    *(v252 + 31) = 2160;
    *(v252 + 33) = 0x786F626C69616DLL;
    *(v252 + 41) = 2085;
    v259 = *(v253 + 40);
    v402 = *(v253 + 32);
    v403 = v259;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v260 = sub_1B0E44BA8();
    v262 = sub_1B0399D64(v260, v261, &v404);

    *(v252 + 43) = v262;
    sub_1B0B5E738(v256, type metadata accessor for MailboxTaskLogger);
    *(v252 + 51) = 2082;
    v263 = v368;
    sub_1B0B5E6D0(v258, v368, type metadata accessor for MoveAndCopyMessages.CommandID);
    v264 = v367;
    sub_1B0B5E6D0(v263, v367, type metadata accessor for MoveAndCopyMessages.CommandID);
    v265 = swift_getEnumCaseMultiPayload();
    if (v265 > 1)
    {
      if (v265 != 2)
      {
        v267 = 0x45474E55505845;
        v268 = 0xE700000000000000;
        v100 = v400;
        goto LABEL_105;
      }

      v268 = 0xE400000000000000;
      v267 = 1163284301;
    }

    else
    {
      if (v265)
      {
        v266 = v264;
      }

      else
      {
        v266 = v263;
      }

      if (v265)
      {
        v267 = 1498435395;
      }

      else
      {
        v263 = v264;
        v267 = 0x4554454C4544;
      }

      if (v265)
      {
        v268 = 0xE400000000000000;
      }

      else
      {
        v268 = 0xE600000000000000;
      }

      v264 = v266;
    }

    v100 = v400;
    sub_1B0B5E738(v264, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_105:
    sub_1B0B5E738(v263, type metadata accessor for MoveAndCopyMessages.CommandID);
    v332 = sub_1B0399D64(v267, v268, &v404);

    *(v252 + 53) = v332;
    sub_1B0B5E738(v258, type metadata accessor for MoveAndCopyMessages.CommandID);
    *(v252 + 61) = 2082;
    v333 = v377;
    v334 = MessageIdentifierSet.debugDescription.getter(v387);
    v336 = sub_1B0399D64(v334, v335, &v404);

    *(v252 + 63) = v336;
    sub_1B0398EFC(v333, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    _os_log_impl(&dword_1B0389000, v250, v251, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server completed %{public}s of messages %{public}s without destination UIDs", v252, 0x47u);
    v337 = v396;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v337, -1, -1);
    MEMORY[0x1B272C230](v252, -1, -1);

    v171 = v397;
    goto LABEL_106;
  }

  sub_1B0B5E6D0(v397, v167, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B5E6D0(v162, v388, type metadata accessor for MoveAndCopyMessages.CommandID);
  v173 = v100;
  v174 = v386;
  sub_1B03B5C80(v173, v386, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B04420D8(v163);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v175 = 20302;
  if (v168 == 2)
  {
    v175 = 4473154;
  }

  v390 = v175;
  if (v168 == 2)
  {
    v176 = 0xE300000000000000;
  }

  else
  {
    v176 = 0xE200000000000000;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B04420D8(v163);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B04420D8(v163);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B04420D8(v163);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v177 = sub_1B0E43988();
  v178 = sub_1B0E458E8();
  if (os_log_type_enabled(v177, v178))
  {
    LODWORD(v380) = v178;
    v397 = v171;
    v170 = swift_slowAlloc();
    v379 = swift_slowAlloc();
    v404 = v379;
    *v170 = 68160259;
    *(v170 + 1) = 2;
    *(v170 + 4) = 256;
    v179 = v167 + *(v389 + 20);
    v170[10] = *v179;
    *(v170 + 11) = 2082;
    v181 = *(v179 + 8);
    v180 = *(v179 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v182 = sub_1B0399D64(v181, v180, &v404);

    *(v170 + 13) = v182;
    *(v170 + 21) = 1040;
    *(v170 + 23) = 2;
    *(v170 + 27) = 512;
    *(v170 + 29) = *(v179 + 24);
    *(v170 + 31) = 2160;
    *(v170 + 33) = 0x786F626C69616DLL;
    *(v170 + 41) = 2085;
    v183 = *(v179 + 40);
    v402 = *(v179 + 32);
    v403 = v183;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v184 = sub_1B0E44BA8();
    v186 = sub_1B0399D64(v184, v185, &v404);

    *(v170 + 43) = v186;
    sub_1B0B5E738(v167, type metadata accessor for MailboxTaskLogger);
    *(v170 + 51) = 2082;
    v187 = v388;
    v188 = v385;
    sub_1B0B5E6D0(v388, v385, type metadata accessor for MoveAndCopyMessages.CommandID);
    v189 = v375;
    sub_1B0B5E6D0(v188, v375, type metadata accessor for MoveAndCopyMessages.CommandID);
    v190 = swift_getEnumCaseMultiPayload();
    if (v190 > 1)
    {
      v194 = v386;
      if (v190 != 2)
      {
        v192 = 0x45474E55505845;
        v193 = 0xE700000000000000;
        v171 = v397;
        goto LABEL_70;
      }

      v193 = 0xE400000000000000;
      v192 = 1163284301;
      v171 = v397;
    }

    else
    {
      if (v190)
      {
        v191 = v189;
      }

      else
      {
        v191 = v188;
      }

      if (!v190)
      {
        v188 = v189;
      }

      v385 = v188;
      if (v190)
      {
        v192 = 1498435395;
      }

      else
      {
        v192 = 0x4554454C4544;
      }

      if (v190)
      {
        v193 = 0xE400000000000000;
      }

      else
      {
        v193 = 0xE600000000000000;
      }

      v189 = v191;
      v171 = v397;
      v194 = v386;
    }

    sub_1B0B5E738(v189, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_70:
    sub_1B0B5E738(v385, type metadata accessor for MoveAndCopyMessages.CommandID);
    v269 = sub_1B0399D64(v192, v193, &v404);

    *(v170 + 53) = v269;
    sub_1B0B5E738(v187, type metadata accessor for MoveAndCopyMessages.CommandID);
    *(v170 + 61) = 2082;
    v270 = MessageIdentifierSet.debugDescription.getter(v387);
    v272 = sub_1B0399D64(v270, v271, &v404);

    *(v170 + 63) = v272;
    sub_1B0398EFC(v194, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *(v170 + 71) = 2082;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v273 = sub_1B0399D64(v390, v176, &v404);

    *(v170 + 73) = v273;

    v274 = v394;
    sub_1B0447F00(v394);

    v275 = v393;

    sub_1B0447F00(v274);

    *(v170 + 81) = 2082;
    sub_1B04420D8(v274);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v276 = ResponseText.debugDescription.getter(v274, v376, v275);
    v278 = v277;
    sub_1B0447F00(v274);

    v279 = sub_1B0399D64(v276, v278, &v404);

    *(v170 + 83) = v279;

    sub_1B0447F00(v274);

    sub_1B0447F00(v274);

    _os_log_impl(&dword_1B0389000, v177, v380, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server failed to %{public}s messages %{public}s: %{public}s %{public}s", v170, 0x5Bu);
    v280 = v379;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v280, -1, -1);
    MEMORY[0x1B272C230](v170, -1, -1);

    v218 = v392;
    v169 = v384;
    LODWORD(v170) = v381;
    v100 = v400;
    goto LABEL_71;
  }

  sub_1B0B5E738(v167, type metadata accessor for MailboxTaskLogger);
  sub_1B0B5E738(v388, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0398EFC(v174, &unk_1EB6E1AF0, &unk_1B0E9AF40);

  sub_1B0447F00(v163);

  sub_1B0447F00(v163);

  sub_1B0447F00(v163);

  sub_1B0447F00(v163);

  v100 = v400;
  v218 = v392;
  v169 = v384;
LABEL_71:
  v281 = v396;
  v282 = v382;
  sub_1B0B5E6D0(v396, v382, type metadata accessor for MoveAndCopyMessages.CommandID);
  v283 = swift_getEnumCaseMultiPayload();
  v284 = sub_1B0B5E738(v282, type metadata accessor for MoveAndCopyMessages.CommandID);
  if (v283 == 2)
  {
    v285 = *(v218 + 168);
    MEMORY[0x1EEE9AC00](v284);
    *&v360[-16] = v100;
    v286 = v398;
    v288 = sub_1B0BA70C0(sub_1B0B5E65C, &v360[-32], v287);
    v398 = v286;
    if ((v289 & 1) == 0)
    {
      sub_1B0BB0080(v288);
    }
  }

  v290 = sub_1B0B5DF14(0, 1, v171);
  v291 = v383;
  sub_1B0B5E6D0(v281, v383, type metadata accessor for MoveAndCopyMessages.CommandID);
  v292 = swift_getEnumCaseMultiPayload();
  sub_1B0B5E738(v291, type metadata accessor for MoveAndCopyMessages.CommandID);
  if (v292 != 1)
  {
    goto LABEL_107;
  }

  v396 = v290;
  v293 = v171 + 64;
  v294 = 1 << *(v171 + 32);
  v295 = -1;
  if (v294 < 64)
  {
    v295 = ~(-1 << v294);
  }

  v296 = v295 & *(v171 + 64);
  v297 = (v294 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v298 = 0;
  while (v296)
  {
LABEL_85:
    v300 = __clz(__rbit64(v296));
    v296 &= v296 - 1;
    v301 = v300 | (v298 << 6);
    v302 = *(v171 + 56) + 24 * v301;
    if ((*v302 & 1) == 0)
    {
      v303 = *(v302 + 8);
      v304 = *(v302 + 16);
      v305 = v171;
      LODWORD(v402) = *(*(v171 + 48) + 4 * v301);
      v397 = v303;
      sub_1B03B2000(v303, v304);
      v306 = sub_1B041C1E8();
      v307 = v218;
      v308 = v395;
      MessageIdentifierSet.init(_:)(&v402, &type metadata for UID, v306);
      swift_storeEnumTagMultiPayload();
      v309 = *(v307 + 152);
      v310 = swift_isUniquelyReferenced_nonNull_native();
      v311 = *(v307 + 152);
      v402 = v311;
      v312 = sub_1B0AE0058(v308);
      v314 = v311[2];
      v315 = (v313 & 1) == 0;
      v316 = __OFADD__(v314, v315);
      v317 = v314 + v315;
      if (v316)
      {
        goto LABEL_129;
      }

      v318 = v313;
      if (v311[3] >= v317)
      {
        if ((v310 & 1) == 0)
        {
          v324 = v312;
          sub_1B0B8E7A4();
          v312 = v324;
        }
      }

      else
      {
        sub_1B0B31D20(v317, v310);
        v312 = sub_1B0AE0058(v395);
        if ((v318 & 1) != (v319 & 1))
        {
          goto LABEL_131;
        }
      }

      v171 = v305;
      v320 = v402;
      if (v318)
      {
        *(v402[7] + v312) = 1;
      }

      else
      {
        v402[(v312 >> 6) + 8] |= 1 << v312;
        v321 = v312;
        sub_1B0B5E6D0(v395, v320[6] + *(v378 + 72) * v312, type metadata accessor for MoveAndCopyMessages.CommandID);
        *(v320[7] + v321) = 1;
        v322 = v320[2];
        v316 = __OFADD__(v322, 1);
        v323 = v322 + 1;
        if (v316)
        {
          goto LABEL_130;
        }

        v320[2] = v323;
      }

      v218 = v392;
      sub_1B0391D50(v397, v304);
      sub_1B0B5E738(v395, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v218 + 152) = v320;
    }
  }

  while (1)
  {
    v299 = v298 + 1;
    if (__OFADD__(v298, 1))
    {
      break;
    }

    if (v299 >= v297)
    {

      v100 = v400;
      v169 = v384;
      LODWORD(v170) = v381;
      v290 = v396;
      goto LABEL_108;
    }

    v296 = *(v293 + 8 * v299);
    ++v298;
    if (v296)
    {
      v298 = v299;
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

uint64_t sub_1B0B54500()
{
  v1 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B5E6D0(v0, v4, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return 0;
    }

    v30 = *v4;
    v6 = *(v4 + 2);
    v7 = *(v4 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4848, &qword_1B0EC6FB0);
    result = sub_1B0E46688();
    v9 = result;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v7 + 48) + 4 * v19);
        v21 = v9[6];
        v22 = *(*(v7 + 56) + 16 * v19);
        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(v21 + 4 * v19) = v20;
        v23 = v9[7] + 24 * v19;
        *v23 = 0;
        *(v23 + 8) = v22;
        v24 = v9[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          break;
        }

        v9[2] = v26;
        result = sub_1B03B2000(v22, *(&v22 + 1));
        if (!v13)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v17 = v10;
      while (1)
      {
        v10 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v10 >= v14)
        {

          return v30;
        }

        v18 = *(v7 + 64 + 8 * v10);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B0B5E738(v4, type metadata accessor for MoveAndCopyMessages.CommandID);
      return 0;
    }

    result = *v4;
    v27 = *(v4 + 2);
    v28 = *(v4 + 2);
  }

  return result;
}

uint64_t sub_1B0B54748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B0E43908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B0E43808();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1B0E437D8();
  sub_1B0507508();
  sub_1B0E43888();
  sub_1B0B5E738(v7, MEMORY[0x1E69E93F0]);
  sub_1B0B5E738(v11, MEMORY[0x1E69E93B0]);
}

unint64_t sub_1B0B548AC(uint64_t a1, uint64_t a2)
{
  v14[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v14 - v5;
  v7 = *(a1 + 8);
  v14[1] = sub_1B03D06F8();
  result = sub_1B0E46EE8();
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    while (v10 < *(v7 + 16))
    {
      v15[0] = *(v7 + 32 + 8 * v10);
      v11 = sub_1B041C1E8();
      result = Range<>.init<A>(_:)(v15, &type metadata for UID, v11);
      v15[5] = result;
      if (HIDWORD(result) != result)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        v12 = sub_1B0E46E88();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
        sub_1B0E46E38();
        result = v12(v15, 0);
      }

      if (v9 == ++v10)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v13 = sub_1B0E46E08();
    sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return v13 & 1;
  }

  return result;
}

BOOL sub_1B0B54A6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v30 - v16);
  sub_1B0B5E6D0(a1, &v30 - v16, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v31 = a2;
      sub_1B03C60A4(v17, v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03B5C80(v10, v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v19 = sub_1B0B37EEC(v7);
      a2 = v31;
      sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v20 = *v17;
    v21 = v17[2];
    v22 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = sub_1B0B38B4C(v22);

    goto LABEL_7;
  }

  v19 = MEMORY[0x1E69E7CD0];
LABEL_7:
  sub_1B0B5E6D0(a2, v14, type metadata accessor for MoveAndCopyMessages.CommandID);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      v24 = MEMORY[0x1E69E7CD0];
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v23)
  {
LABEL_11:
    v25 = *v14;
    v26 = v14[2];
    v27 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v24 = sub_1B0B38B4C(v27);

    goto LABEL_13;
  }

  sub_1B03C60A4(v14, v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v10, v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v24 = sub_1B0B37EEC(v7);
  sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_13:
  v28 = sub_1B0B87438(v24, v19);

  return (v28 & 1) == 0;
}

uint64_t sub_1B0B54D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v79 = a1;
  v80 = a2;
  v75 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v67[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v67[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v67[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67[-v12];
  v14 = sub_1B0B58B98(v2[16], v2[19]);
  if ((v14 & 1) == 0 || *(v2[22] + 16))
  {
    v15 = v80;
    sub_1B0B5E6D0(v80, v13, type metadata accessor for MailboxTaskLogger);
    sub_1B0B5E6D0(v15, v10, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v16 = sub_1B0E43988();
    v17 = sub_1B0E458E8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v81[0] = v19;
      *v18 = 68159235;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v20 = v75;
      v21 = &v10[*(v75 + 20)];
      *(v18 + 10) = *v21;
      *(v18 + 11) = 2082;
      v22 = &v13[*(v20 + 20)];
      *(v18 + 13) = sub_1B0399D64(*(v22 + 1), *(v22 + 2), v81);
      *(v18 + 21) = 1040;
      *(v18 + 23) = 2;
      *(v18 + 27) = 512;
      LOWORD(v21) = *(v21 + 12);
      sub_1B0B5E738(v10, type metadata accessor for MailboxTaskLogger);
      *(v18 + 29) = v21;
      *(v18 + 31) = 2160;
      *(v18 + 33) = 0x786F626C69616DLL;
      *(v18 + 41) = 2085;
      v23 = *(v22 + 4);
      LODWORD(v22) = *(v22 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B5E738(v13, type metadata accessor for MailboxTaskLogger);
      *&v82[0] = v23;
      DWORD2(v82[0]) = v22;
      v24 = sub_1B0E44BA8();
      v26 = sub_1B0399D64(v24, v25, v81);

      *(v18 + 43) = v26;
      _os_log_impl(&dword_1B0389000, v16, v17, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Task is completing, but not done.", v18, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v19, -1, -1);
      MEMORY[0x1B272C230](v18, -1, -1);
    }

    else
    {
      sub_1B0B5E738(v10, type metadata accessor for MailboxTaskLogger);

      v14 = sub_1B0B5E738(v13, type metadata accessor for MailboxTaskLogger);
    }
  }

  v27 = v3[4];
  v28 = *(v3 + 10);
  MEMORY[0x1EEE9AC00](v14);
  v29 = v3;
  v31 = v79;
  v30 = v80;
  *&v67[-16] = v3;
  *&v67[-8] = v30;
  v34 = *(v31 + 176);
  v32 = v31 + 176;
  v33 = v34;
  v35 = *(v32 - 8);
  v36 = *(v32 + 8);
  v74 = *(v32 + 16);
  v78 = v27;
  if (v74 == 1)
  {
    *&v82[0] = v35;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(v82, v27, v28, 0, sub_1B0B5C4C4);
    sub_1B03BB638(v35, v33, v36, 1);
    v73 = 0;
    v72 = 0;
    v35 = *&v82[0];
    v37 = v79;
    *(v79 + 168) = *&v82[0];
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v37 + 192) = 1;
  }

  else
  {
    v72 = v36;
    v73 = v33;
  }

  v38 = v28;
  v39 = v29;
  if (*(v29 + 120) == 1)
  {
    v71 = v35;
    v40 = v80;
    sub_1B0B5E6D0(v80, v77, type metadata accessor for MailboxTaskLogger);
    sub_1B0B5E6D0(v40, v76, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v41 = sub_1B0E43988();
    v42 = sub_1B0E45908();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v68 = v42;
      v44 = v43;
      v69 = swift_slowAlloc();
      v81[0] = v69;
      *v44 = 68159235;
      v70 = v28;
      v46 = v76;
      v45 = v77;
      *(v44 + 4) = 2;
      *(v44 + 8) = 256;
      v47 = v75;
      v48 = &v46[*(v75 + 20)];
      *(v44 + 10) = *v48;
      *(v44 + 11) = 2082;
      v49 = &v45[*(v47 + 20)];
      *(v44 + 13) = sub_1B0399D64(*(v49 + 1), *(v49 + 2), v81);
      *(v44 + 21) = 1040;
      *(v44 + 23) = 2;
      *(v44 + 27) = 512;
      v50 = *(v48 + 12);
      v51 = v46;
      v38 = v70;
      sub_1B0B5E738(v51, type metadata accessor for MailboxTaskLogger);
      *(v44 + 29) = v50;
      *(v44 + 31) = 2160;
      *(v44 + 33) = 0x786F626C69616DLL;
      *(v44 + 41) = 2085;
      v52 = *(v49 + 4);
      LODWORD(v49) = *(v49 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B5E738(v45, type metadata accessor for MailboxTaskLogger);
      *&v82[0] = v52;
      DWORD2(v82[0]) = v49;
      v53 = sub_1B0E44BA8();
      v55 = sub_1B0399D64(v53, v54, v81);

      *(v44 + 43) = v55;
      _os_log_impl(&dword_1B0389000, v41, v68, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence has more messages to move/copy. Will mark as needing to re-run.", v44, 0x33u);
      v56 = v69;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v56, -1, -1);
      MEMORY[0x1B272C230](v44, -1, -1);
    }

    else
    {
      sub_1B0B5E738(v76, type metadata accessor for MailboxTaskLogger);

      sub_1B0B5E738(v77, type metadata accessor for MailboxTaskLogger);
    }

    v57 = v71;
    if (v74)
    {
      *&v82[0] = v71;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B2B7B4(v82, v78, v38, 0);
      sub_1B03BB638(v57, v73, v72, 1);
      v58 = v79;
      *(v79 + 168) = *&v82[0];
      *v32 = 0;
      *(v32 + 8) = 0;
      *(v58 + 192) = 1;
    }
  }

  v59 = *(v32 + 40);
  v82[2] = *(v32 + 24);
  v83[0] = v59;
  *(v83 + 12) = *(v32 + 52);
  v60 = *(v32 + 8);
  v82[0] = *(v32 - 8);
  v82[1] = v60;
  v61 = sub_1B0B294B8(v78, v38);
  v62 = v39[23];
  MEMORY[0x1EEE9AC00](v61);
  v63 = v79;
  *&v67[-32] = v80;
  *&v67[-24] = v63;
  *&v67[-16] = v64;
  sub_1B0B12B64(sub_1B0B5C4CC, &v67[-48], v65);
}

void sub_1B0B55510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  if ((*(a2 + 120) & 1) == 0)
  {
    sub_1B0B5E6D0(a3, v25 - v11, type metadata accessor for MailboxTaskLogger);
    sub_1B0B5E6D0(a3, v9, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v13 = sub_1B0E43988();
    v14 = sub_1B0E45908();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 68159235;
      *(v15 + 4) = 2;
      *(v15 + 8) = 256;
      v17 = &v9[*(v6 + 20)];
      *(v15 + 10) = *v17;
      *(v15 + 11) = 2082;
      v18 = *(v6 + 20);
      v25[0] = a1;
      v19 = &v12[v18];
      *(v15 + 13) = sub_1B0399D64(*&v12[v18 + 8], *&v12[v18 + 16], &v27);
      *(v15 + 21) = 1040;
      *(v15 + 23) = 2;
      *(v15 + 27) = 512;
      v20 = *(v17 + 12);
      sub_1B0B5E738(v9, type metadata accessor for MailboxTaskLogger);
      *(v15 + 29) = v20;
      *(v15 + 31) = 2160;
      *(v15 + 33) = 0x786F626C69616DLL;
      *(v15 + 41) = 2085;
      v21 = *(v19 + 4);
      LODWORD(v19) = *(v19 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B5E738(v12, type metadata accessor for MailboxTaskLogger);
      v25[1] = v21;
      v26 = v19;
      a1 = v25[0];
      v22 = sub_1B0E44BA8();
      v24 = sub_1B0399D64(v22, v23, &v27);

      *(v15 + 43) = v24;
      _os_log_impl(&dword_1B0389000, v13, v14, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking no more messages needing move or copy.", v15, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v16, -1, -1);
      MEMORY[0x1B272C230](v15, -1, -1);
    }

    else
    {
      sub_1B0B5E738(v9, type metadata accessor for MailboxTaskLogger);

      sub_1B0B5E738(v12, type metadata accessor for MailboxTaskLogger);
    }

    *(a1 + *(type metadata accessor for MailboxSyncState() + 52) + 2) = 0;
  }
}

void sub_1B0B55810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for MailboxTaskLogger(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34[-v14];
  v16 = *a1;
  v40 = *(a1 + 8);
  sub_1B0B5E6D0(a2, &v34[-v14], type metadata accessor for MailboxTaskLogger);
  sub_1B0B5E6D0(a2, v12, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0E43988();
  v18 = sub_1B0E45908();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = a4;
    v20 = v19;
    v36 = swift_slowAlloc();
    v43 = v36;
    *v20 = 68159747;
    v39 = v4;
    *(v20 + 4) = 2;
    *(v20 + 8) = 256;
    v21 = *(v9 + 20);
    v35 = v18;
    v22 = &v12[v21];
    *(v20 + 10) = v12[v21];
    *(v20 + 11) = 2082;
    v23 = *(v9 + 20);
    v37 = a3;
    v24 = &v15[v23];
    *(v20 + 13) = sub_1B0399D64(*&v15[v23 + 8], *&v15[v23 + 16], &v43);
    *(v20 + 21) = 1040;
    *(v20 + 23) = 2;
    *(v20 + 27) = 512;
    LOWORD(v22) = *(v22 + 12);
    sub_1B0B5E738(v12, type metadata accessor for MailboxTaskLogger);
    *(v20 + 29) = v22;
    *(v20 + 31) = 2160;
    *(v20 + 33) = 0x786F626C69616DLL;
    *(v20 + 41) = 2085;
    v25 = *(v24 + 4);
    LODWORD(v24) = *(v24 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B5E738(v15, type metadata accessor for MailboxTaskLogger);
    v41 = v25;
    v42 = v24;
    v26 = sub_1B0E44BA8();
    v28 = sub_1B0399D64(v26, v27, &v43);

    *(v20 + 43) = v28;
    *(v20 + 51) = 2160;
    *(v20 + 53) = 0x786F626C69616DLL;
    *(v20 + 61) = 2085;
    v41 = v16;
    LODWORD(v22) = v40;
    v42 = v40;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v29 = sub_1B0E44BA8();
    v31 = sub_1B0399D64(v29, v30, &v43);

    *(v20 + 63) = v31;
    _os_log_impl(&dword_1B0389000, v17, v35, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking mailbox '%{sensitive,mask.mailbox}s' as needing to run find-missing-messages.", v20, 0x47u);
    v32 = v36;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v32, -1, -1);
    MEMORY[0x1B272C230](v20, -1, -1);

    v33 = v22;
  }

  else
  {
    sub_1B0B5E738(v12, type metadata accessor for MailboxTaskLogger);

    sub_1B0B5E738(v15, type metadata accessor for MailboxTaskLogger);
    v33 = v40;
  }

  sub_1B0B28CA4(v16, v33, 12);
}

uint64_t sub_1B0B55BA4()
{
  if (qword_1EB6DD970 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0B55C08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = sub_1B0B5C530(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B0B55CB0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E42F48();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B55D14()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x1B2728D70](*v0);

  return sub_1B0E42F48();
}

uint64_t sub_1B0B55D68()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E42F48();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B55DC8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1B0AB8858(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0B55E64(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v5 | (v5 << 32));
  a3(v8, v6);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B55EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(v4 + 16);
  MEMORY[0x1B2728D70](*(v4 + 8) | (*(v4 + 8) << 32));

  return a4(a1, v6);
}

uint64_t sub_1B0B55F64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v6 | (v6 << 32));
  a4(v9, v7);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B55FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if ((*(a1 + 8) | (*(a1 + 8) << 32)) != (*(a2 + 8) | (*(a2 + 8) << 32)))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if ((sub_1B04520BC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return a5(v5, v6);
}

uint64_t sub_1B0B5606C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[32];
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E42F48();
  if (v5 == 1)
  {
    MEMORY[0x1B2728D70](v4 != 0);
  }

  else
  {
    MEMORY[0x1B2728D70](2);
    sub_1B0E46C88();
    sub_1B0E46C88();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0B5612C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[32];
  MEMORY[0x1B2728D70](*v0);
  sub_1B0E42F48();
  if (v4 == 1)
  {
    return MEMORY[0x1B2728D70](v3 != 0);
  }

  MEMORY[0x1B2728D70](2);
  sub_1B0E46C88();
  return sub_1B0E46C88();
}

uint64_t sub_1B0B561C0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[32];
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E42F48();
  if (v5 == 1)
  {
    MEMORY[0x1B2728D70](v4 != 0);
  }

  else
  {
    MEMORY[0x1B2728D70](2);
    sub_1B0E46C88();
    sub_1B0E46C88();
  }

  return sub_1B0E46CB8();
}

uint64_t sub_1B0B5627C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1B0B57D94(v5, v7) & 1;
}

uint64_t sub_1B0B562C8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = result + 32;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = (v4 + 8 * v2);
    v8 = *v6;
    v7 = v6[1];
    if (v7 < v8)
    {
      goto LABEL_34;
    }

    v9 = v7 - v8;
    v10 = v3;
    if (v7 - v8 != -1)
    {
      break;
    }

LABEL_7:
    v11 = v10[2];
    v12 = *(v5 + 16);
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      goto LABEL_35;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v13 <= *(v5 + 24) >> 1)
    {
      if (v10[2])
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v18 = v12 + v11;
      }

      else
      {
        v18 = v12;
      }

      result = sub_1B0AFF0B0(result, v18, 1, v5);
      v5 = result;
      if (v10[2])
      {
LABEL_27:
        v19 = *(v5 + 16);
        if ((*(v5 + 24) >> 1) - v19 < v11)
        {
          goto LABEL_37;
        }

        memcpy((v5 + 4 * v19 + 32), v10 + 4, 4 * v11);

        if (v11)
        {
          v20 = *(v5 + 16);
          v21 = __OFADD__(v20, v11);
          v22 = v20 + v11;
          if (v21)
          {
            goto LABEL_38;
          }

          *(v5 + 16) = v22;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_36;
    }

LABEL_4:
    if (++v2 == v1)
    {
      return v5;
    }
  }

  if (v9 < 0)
  {
    goto LABEL_40;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4548, &qword_1B0EC52E0);
  v10 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v10);
  v14 = result - 32;
  if (result < 32)
  {
    v14 = result - 29;
  }

  v10[2] = v7 - v8 + 1;
  v10[3] = 2 * (v14 >> 2);
  v15 = 32;
  while (2)
  {
    if (v7 == v8)
    {
      v16 = 0;
      goto LABEL_19;
    }

    v16 = v8 + 1;
    if (v8 != -1)
    {
LABEL_19:
      *(v10 + v15) = v8;
      if (!v9)
      {
        goto LABEL_7;
      }

      --v9;
      v15 += 4;
      v17 = v7 == v8;
      LODWORD(v8) = v16;
      if (v17)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B0B564A8(void (*a1)(double))
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  a1(v7);
  sub_1B0B5E6D0(v9, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v13 = 0x45474E55505845;
      goto LABEL_12;
    }

    v13 = 1163284301;
    v12 = v5;
  }

  else
  {
    v11 = EnumCaseMultiPayload == 0;
    if (EnumCaseMultiPayload)
    {
      v12 = v5;
    }

    else
    {
      v12 = v9;
    }

    if (v11)
    {
      v9 = v5;
      v13 = 0x4554454C4544;
    }

    else
    {
      v13 = 1498435395;
    }
  }

  sub_1B0B5E738(v12, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_12:
  sub_1B0B5E738(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  return v13;
}

unint64_t sub_1B0B56634()
{
  result = qword_1EB6E4988;
  if (!qword_1EB6E4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4988);
  }

  return result;
}

void sub_1B0B56688(uint64_t a1, char a2, void *a3)
{
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_17:

    return;
  }

  v3 = 0;
  v39 = 32;
  while (1)
  {
    if (v3 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1B0E46BA8();
      __break(1u);
      goto LABEL_23;
    }

    v4 = *(a1 + v39 + 16);
    v41 = *(a1 + v39);
    v42 = v4;
    v43 = *(a1 + v39 + 32);
    v35 = *(a1 + v39 + 48);
    v44 = v35;
    v5 = v41;
    v6 = BYTE7(v41);
    v7 = *(&v41 + 5);
    v8 = *(&v41 + 1);
    v9 = *(&v41 + 1);
    v10 = v4;
    v11 = v43;
    sub_1B03B5C80(&v41, v40, &qword_1EB6E49D8, &unk_1B0EC6FD8);
    if (!v9)
    {
      goto LABEL_17;
    }

    v12 = (v8 | ((v7 | (v6 << 16)) << 32)) >> 24;
    v13 = v5 & 1;
    LOBYTE(v41) = v5 & 1;
    DWORD1(v41) = v12;
    *(&v41 + 1) = v9;
    LODWORD(v42) = v10;
    *(&v42 + 1) = *(&v10 + 1);
    *&v43 = v11;
    v14 = *a3;
    v48 = v11;
    v47[0] = v41;
    v47[1] = v42;
    v15 = sub_1B0AE0250(v47);
    v17 = v14[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_20;
    }

    v21 = v16;
    if (v14[3] >= v20)
    {
      break;
    }

    sub_1B0B330F0(v20, a2 & 1);
    v22 = *a3;
    v45[0] = v41;
    v45[1] = v42;
    v46 = v43;
    v15 = sub_1B0AE0250(v45);
    if ((v21 & 1) != (v23 & 1))
    {
      goto LABEL_22;
    }

LABEL_10:
    if (v21)
    {
      goto LABEL_15;
    }

LABEL_11:
    v24 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    v25 = v24[6] + 40 * v15;
    *v25 = v13;
    *(v25 + 4) = v12;
    *(v25 + 8) = v9;
    *(v25 + 16) = v10;
    *(v25 + 24) = *(&v10 + 1);
    *(v25 + 32) = v11;
    v26 = v24[7] + 12 * v15;
    *v26 = *(&v11 + 1);
    *(v26 + 8) = v35 & 1;
    v27 = v24[2];
    v19 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    ++v3;
    v24[2] = v28;
    v39 += 56;
    a2 = 1;
    if (v33 == v3)
    {
      goto LABEL_17;
    }
  }

  if (a2)
  {
    goto LABEL_10;
  }

  v37 = v15;
  sub_1B0B8EC9C();
  v15 = v37;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v29 = swift_allocError();
  swift_willThrow();

  v49 = v29;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = *(&v42 + 1);
    v32 = v43;

    sub_1B0391D50(v31, v32);

    return;
  }

LABEL_23:
  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0xD00000000000001BLL, 0x80000001B0F2B570);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](39, 0xE100000000000000);
  sub_1B0E465B8();
  __break(1u);
}

void *sub_1B0B56A30(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_1B0B56AB8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1B0B57AE0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1B0B56B48(uint64_t a1)
{
  v2 = v1;
  v36 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = *(a1 + 32);
  v13 = ((1 << v12) + 63) >> 6;
  if ((v12 & 0x3Fu) > 0xD)
  {
    goto LABEL_24;
  }

  while (2)
  {
    v30 = v13;
    v31 = v2;
    v29 = &v29;
    MEMORY[0x1EEE9AC00](v9);
    v32 = &v29 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v14);
    v33 = 0;
    v15 = 0;
    v2 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v13 = v20 | (v15 << 6);
      sub_1B0B5E6D0(*(a1 + 48) + *(v34 + 72) * v13, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E6D0(v11, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          goto LABEL_6;
        }

        sub_1B0B5E738(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0B5E738(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        *&v32[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_21:
          result = sub_1B0BAAB2C(v32, v30, v33, a1);
          goto LABEL_22;
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
LABEL_6:
          sub_1B0B5E738(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
        }

        sub_1B0B5E738(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      }
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        goto LABEL_21;
      }

      v22 = *(v2 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v27 = swift_slowAlloc();
  v28 = sub_1B0B56A30(v27, v13, a1, sub_1B0B57854);

  result = MEMORY[0x1B272C230](v27, -1, -1);
  if (!v2)
  {
    result = v28;
  }

LABEL_22:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0B56EF0(uint64_t a1)
{
  v2 = v1;
  v36 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = *(a1 + 32);
  v13 = ((1 << v12) + 63) >> 6;
  if ((v12 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v30 = v13;
    v31 = v2;
    v29 = &v29;
    MEMORY[0x1EEE9AC00](v9);
    v32 = &v29 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v14);
    v33 = 0;
    v15 = 0;
    v2 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(a1 + 56);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_14:
      v13 = v20 | (v15 << 6);
      sub_1B0B5E6D0(*(a1 + 48) + *(v34 + 72) * v13, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E6D0(v11, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) < 2)
      {
        sub_1B0B5E738(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
        goto LABEL_6;
      }

      if (EnumCaseMultiPayload == 3)
      {
LABEL_6:
        sub_1B0B5E738(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      else
      {
        sub_1B0B5E738(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0B5E738(v11, type metadata accessor for MoveAndCopyMessages.CommandID);
        *&v32[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_19:
          result = sub_1B0BAAB2C(v32, v30, v33, a1);
          goto LABEL_20;
        }
      }
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {
        goto LABEL_19;
      }

      v22 = *(v2 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v27 = swift_slowAlloc();
  v28 = sub_1B0B56A30(v27, v13, a1, sub_1B0B575CC);

  result = MEMORY[0x1B272C230](v27, -1, -1);
  if (!v2)
  {
    result = v28;
  }

LABEL_20:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B0B57294(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v35 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a3 + 32);
  v10 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v28 = v10;
    v30 = &v28;
    MEMORY[0x1EEE9AC00](v7);
    v29 = &v28 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v11);
    v31 = 0;
    v10 = 0;
    v34 = a3;
    v13 = *(a3 + 56);
    a3 += 56;
    v12 = v13;
    v14 = 1 << *(a3 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v21 = v18 | (v10 << 6);
      sub_1B0B5E6D0(*(v34 + 48) + *(v32 + 72) * v21, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      v22 = v33(v9);
      sub_1B0B5E738(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      if (v3)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      if (v22)
      {
        *&v29[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_1B0BAAB2C(v29, v28, v31, v34);
          goto LABEL_18;
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_17;
      }

      v20 = *(a3 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = sub_1B0B56AB8(v26, v10, a3, v33);

  result = MEMORY[0x1B272C230](v26, -1, -1);
  if (!v3)
  {
    result = v27;
  }

LABEL_18:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B0B575CC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v26 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v25 = *(v26 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v24 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_13:
    v18 = v15 | (v10 << 6);
    sub_1B0B5E6D0(*(a3 + 48) + *(v25 + 72) * v18, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E6D0(v9, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_1B0B5E738(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 3)
    {
LABEL_5:
      sub_1B0B5E738(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    }

    else
    {
      sub_1B0B5E738(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E738(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_18:

        sub_1B0BAAB2C(v23, v22, v24, a3);
        return;
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      goto LABEL_18;
    }

    v17 = *(a3 + 56 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1B0B57854(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v26 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v25 = *(v26 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v24 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v18 = v15 | (v10 << 6);
    sub_1B0B5E6D0(*(a3 + 48) + *(v25 + 72) * v18, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E6D0(v9, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_5;
      }

      sub_1B0B5E738(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E738(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_20:

        sub_1B0BAAB2C(v23, v22, v24, a3);
        return;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
LABEL_5:
        sub_1B0B5E738(v6, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      sub_1B0B5E738(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      goto LABEL_20;
    }

    v17 = *(a3 + 56 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_1B0B57AE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  v10 = 0;
  v31 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    sub_1B0B5E6D0(*(v31 + 48) + *(v29 + 72) * v21, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    v22 = v30(v9);
    sub_1B0B5E738(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (v4)
    {
      return;
    }

    if (v22)
    {
      *(v27 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        v24 = v31;

        sub_1B0BAAB2C(v27, v26, v28, v24);
        return;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1B0B57CF8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_1B0B8C9A0(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B57D5C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *a2 = v2;
  return sub_1B03B2000(v4, v3);
}

uint64_t sub_1B0B57D74@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 2);
  v3 = *(a1 + 3);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *a2 = v2;
  return sub_1B03B2000(v4, v3);
}

uint64_t sub_1B0B57D94(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_1B0AB8858(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)))
  {
    v5 = *(a1 + 3);
    v7 = *(a2 + 6);
    v6 = *(a2 + 7);
    v8 = a2[32];
    if (a1[32])
    {
      if (v5)
      {
        if (a2[32])
        {
          return (v7 | v6) != 0;
        }
      }

      else if (a2[32])
      {
        return (v7 | v6) == 0;
      }
    }

    else if ((a2[32] & 1) == 0 && __PAIR64__(v6, v7) == v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B0B57E4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4990, &unk_1B0EC6D30);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v39 - v21;
  v23 = &v39 + *(v20 + 56) - v21;
  sub_1B0B5E6D0(a1, &v39 - v21, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B5E6D0(a2, v23, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_17;
      }

LABEL_19:
      sub_1B0398EFC(v22, &qword_1EB6E4990, &unk_1B0EC6D30);
LABEL_22:
      v37 = 0;
      return v37 & 1;
    }

    sub_1B0B5E6D0(v22, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
    v25 = *v12;
    v26 = *(v12 + 2);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v27 = *v23;
      v28 = *(v23 + 2);
      v29 = *(v23 + 2);
      if (*(v12 + 2) | (*(v12 + 2) << 32)) == (v28 | (v28 << 32)) && (sub_1B04520BC(v25, v27))
      {
        v30 = sub_1B0B74018(v26, v29);
        goto LABEL_14;
      }

LABEL_20:

LABEL_21:
      sub_1B0B5E738(v22, type metadata accessor for MoveAndCopyMessages.CommandID);
      goto LABEL_22;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1B0B5E6D0(v22, v17, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B03C60A4(v23, v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03D06F8();
      v37 = sub_1B0E46E08();
      sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0B5E738(v22, type metadata accessor for MoveAndCopyMessages.CommandID);
      return v37 & 1;
    }

    sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_19;
  }

  sub_1B0B5E6D0(v22, v15, type metadata accessor for MoveAndCopyMessages.CommandID);
  v31 = *v15;
  v32 = *(v15 + 2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_18;
  }

  v33 = *v23;
  v34 = *(v23 + 2);
  v35 = *(v23 + 2);
  if ((*(v15 + 2) | (*(v15 + 2) << 32)) != (v34 | (v34 << 32)) || (sub_1B04520BC(v31, v33) & 1) == 0)
  {
    goto LABEL_20;
  }

  v30 = sub_1B0B73688(v32, v35);
LABEL_14:
  v36 = v30;

  if ((v36 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  sub_1B0B5E738(v22, type metadata accessor for MoveAndCopyMessages.CommandID);
  v37 = 1;
  return v37 & 1;
}

uint64_t sub_1B0B582AC(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_1B0E46138();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A484(0, v8 & ~(v8 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_1B0E460E8();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_1B0E460B8();
      v10 = *(a1 + 36);
    }

    v46 = result;
    v47 = v10;
    v48 = v43 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v38 = a1 + 56;
      v39 = v13;
      v36 = v2;
      v37 = a1 + 64;
      v40 = v8;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v46;
        v17 = v47;
        v18 = v48;
        v19 = a1;
        sub_1B0B94778(v46, v47, v48, a1);
        v45[0] = v20;
        swift_getAtKeyPath();

        v21 = v44;
        v49 = v44;
        v22 = v7;
        v24 = *(v44 + 16);
        v23 = *(v44 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1B0B0A484(v23 > 1, v24 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v24 + 1;
        v25 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v44 = v21;
        result = sub_1B0B5E798(v22, v21 + v25 + *(v41 + 72) * v24, type metadata accessor for MoveAndCopyMessages.CommandID);
        v7 = v22;
        if (v43)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_1B0E46108())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49A8, &qword_1B0EC6F98);
          v14 = sub_1B0E45498();
          sub_1B0E46188();
          result = v14(v45, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_1B0425168(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v26 = 1 << *(v19 + 32);
          if (v16 >= v26)
          {
            goto LABEL_38;
          }

          v27 = v16 >> 6;
          v28 = *(v38 + 8 * (v16 >> 6));
          if (((v28 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v29 = v28 & (-2 << (v16 & 0x3F));
          if (v29)
          {
            v26 = __clz(__rbit64(v29)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v37 + 8 * v27);
            while (v31 < (v26 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                result = sub_1B0425168(v16, v17, 0);
                v26 = __clz(__rbit64(v33)) + v30;
                goto LABEL_33;
              }
            }

            result = sub_1B0425168(v16, v17, 0);
          }

LABEL_33:
          v35 = *(v19 + 36);
          v46 = v26;
          v47 = v35;
          v48 = 0;
          v8 = v40;
          if (v12 == v40)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0B586B0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v6 = a1;
  v40 = MEMORY[0x1E69E7CC0];
  sub_1B0B0A544(0, v3, 0);
  v4 = v40;
  v7 = -1 << *(v6 + 32);
  v36 = v6 + 64;
  result = sub_1B0E460B8();
  if (result < 0 || (v9 = result, result >= 1 << *(v6 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v27 = v6 + 72;
    v28 = v3;
    v37 = *(v6 + 36);
    v10 = 1;
    v29 = v6;
    while (1)
    {
      v11 = v9 >> 6;
      if ((*(v36 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        break;
      }

      if (v37 != *(v6 + 36))
      {
        goto LABEL_26;
      }

      v31 = v10;
      v34 = *(*(v6 + 48) + 4 * v9);
      v12 = *(v6 + 56) + 40 * v9;
      v32 = *v12;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v33 = *(v12 + 24);
      v15 = *(v12 + 32);
      sub_1B03B2000(v13, v14);
      v17 = *(v40 + 16);
      v16 = *(v40 + 24);
      v35 = v17 + 1;
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (v17 >= v16 >> 1)
      {
        result = sub_1B0B0A544((v16 > 1), v35, 1);
      }

      *(v40 + 16) = v35;
      v18 = v40 + 56 * v17;
      *(v18 + 32) = v32;
      *(v18 + 35) = v39;
      *(v18 + 33) = v38;
      *(v18 + 36) = v34;
      *(v18 + 40) = a2;
      *(v18 + 48) = a3;
      *(v18 + 56) = v13;
      *(v18 + 64) = v14;
      *(v18 + 72) = v33;
      *(v18 + 80) = v15;
      v6 = v29;
      v19 = 1 << *(v29 + 32);
      if (v9 >= v19)
      {
        goto LABEL_27;
      }

      v20 = *(v36 + 8 * v11);
      if ((v20 & (1 << v9)) == 0)
      {
        goto LABEL_28;
      }

      if (v37 != *(v29 + 36))
      {
        goto LABEL_29;
      }

      v21 = v20 & (-2 << (v9 & 0x3F));
      if (v21)
      {
        v9 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v27 + 8 * v11);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1B0425168(v9, v37, 0);
            v9 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        result = sub_1B0425168(v9, v37, 0);
        v9 = v19;
      }

LABEL_19:
      if (v31 == v28)
      {
        return v4;
      }

      if ((v9 & 0x8000000000000000) == 0)
      {
        v10 = v31 + 1;
        if (v9 < 1 << *(v29 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1B0B58990(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1B0BAC1BC(MEMORY[0x1E69E7CC0]);
  sub_1B0BAC1BC(v10);
  result = MEMORY[0x1E69E7CD0];
  v22 = MEMORY[0x1E69E7CD0];
  v13 = *(a1 + 16);
  if (v13)
  {
    v20[1] = v11;
    v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    do
    {
      sub_1B0B5E6D0(v14, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E6D0(v9, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v19 = swift_allocObject();
      sub_1B0B5E798(v7, v19 + *(*v19 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B028E4(&v21, v19);
      sub_1B0B5E738(v9, type metadata accessor for MoveAndCopyMessages.CommandID);

      v14 += v15;
      --v13;
    }

    while (v13);
    return v22;
  }

  return result;
}

uint64_t sub_1B0B58B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = v9;
  v23[1] = sub_1B0B5C4EC(&qword_1EB6DD960);
  KeyPath = swift_getKeyPath();

  v11 = sub_1B0B582AC(a1, KeyPath);

  v12 = sub_1B0B3876C(v11);

  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v12 + 56);
  v16 = (v13 + 63) >> 6;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = 0;
  while (v15)
  {
LABEL_9:
    sub_1B0B5E6D0(*(v12 + 48) + *(v5 + 72) * (__clz(__rbit64(v15)) | (v18 << 6)), v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (!*(a2 + 16) || (v20 = sub_1B0AE0058(v8), (v21 & 1) == 0))
    {
      sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_15:

      return 0;
    }

    v15 &= v15 - 1;
    v22 = *(*(a2 + 56) + v20);
    result = sub_1B0B5E738(v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    if ((v22 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      return 1;
    }

    v15 = *(v12 + 56 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B58DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4990, &unk_1B0EC6D30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v389 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v413 = &v389 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v389 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v412 = &v389 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v395 = &v389 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v399 = &v389 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v393 = &v389 - v23;
  v443 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v24 = *(*(v443 - 8) + 64);
  MEMORY[0x1EEE9AC00](v443);
  v390 = &v389 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v391 = &v389 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v427 = &v389 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v426 = &v389 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v425 = &v389 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v389 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v389 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v407 = &v389 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v406 = &v389 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v405 = &v389 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v417 = &v389 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v434 = &v389 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v394 = &v389 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v397 = &v389 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v404 = (&v389 - v55);
  MEMORY[0x1EEE9AC00](v56);
  v411 = &v389 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v416 = &v389 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v415 = &v389 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v414 = &v389 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v436 = &v389 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v435 = &v389 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v403 = (&v389 - v69);
  MEMORY[0x1EEE9AC00](v70);
  v410 = &v389 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v421 = &v389 - v73;
  MEMORY[0x1EEE9AC00](v74);
  v420 = &v389 - v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1B0EC6C30;
  *(v76 + 32) = a1;
  v455 = v76;
  v419 = *(*a2 + 96);

  v77 = sub_1B0B4FCB8();
  if (v77)
  {
    v78 = v77;
    v418 = a2;
    v439 = v6;
    v440 = v39;
    v441 = MEMORY[0x1E69E7CD0];
    v400 = MEMORY[0x1E69E7CD0];
    v428 = v14;
    v396 = a3;
    v432 = v36;
    v433 = v9;
    while (1)
    {
      if (*(a3 + 16))
      {

        v80 = sub_1B0AE00C4(v79);
        v81 = MEMORY[0x1E69E7CD0];
        if (v82)
        {
          v81 = *(*(a3 + 56) + 8 * v80);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        }

        v83 = v81;
        if ((v81 & 0xC000000000000001) == 0)
        {
LABEL_9:
          v86 = 0;
          v88 = -1 << *(v83 + 32);
          v84 = v83 + 56;
          v85 = ~v88;
          v89 = -v88;
          if (v89 < 64)
          {
            v90 = ~(-1 << v89);
          }

          else
          {
            v90 = -1;
          }

          v87 = v90 & *(v83 + 56);
          goto LABEL_13;
        }
      }

      else
      {
        v83 = MEMORY[0x1E69E7CD0];
        if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) == 0)
        {
          goto LABEL_9;
        }
      }

      sub_1B0E460F8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      sub_1B039E3F8(&qword_1EB6E49B8, &qword_1EB6E43B8, &unk_1B0EC5100);
      sub_1B0E45518();
      v83 = v456;
      v84 = v457;
      v85 = v458;
      v86 = v459;
      v87 = v460;
LABEL_13:
      v401 = v85;
      v402 = v78;
      v91 = (v85 + 64) >> 6;
      v423 = v84;
      v424 = v83;
      v92 = v441;
      v422 = v91;
      while (1)
      {
        v431 = v92 & 0xC000000000000001;
        v93 = v92 < 0 ? v92 : v92 & 0xFFFFFFFFFFFFFF8;
        v441 = v92;
        v438 = v92 + 56;
        v94 = v87;
LABEL_18:
        if ((v83 & 0x8000000000000000) == 0)
        {
          break;
        }

        v99 = sub_1B0E46168();
        if (!v99)
        {
          goto LABEL_295;
        }

        *&v444 = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
        swift_dynamicCast();
        v98 = v449;
        v97 = v86;
        v430 = v94;
        if (!v449)
        {
          goto LABEL_295;
        }

LABEL_27:
        v429 = v97;
        v100 = *(*v98 + 96);
        swift_beginAccess();
        v437 = v98;
        v442 = v100;
        v101 = v420;
        sub_1B0B5E6D0(v98 + v100, v420, type metadata accessor for MoveAndCopyMessages.CommandID);
        v103 = v418;
        v102 = v419;
        swift_beginAccess();
        v104 = v103 + v102;
        v105 = v421;
        sub_1B0B5E6D0(v104, v421, type metadata accessor for MoveAndCopyMessages.CommandID);
        v106 = sub_1B0B57E4C(v101, v105);
        sub_1B0B5E738(v105, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0B5E738(v101, type metadata accessor for MoveAndCopyMessages.CommandID);
        if (v106)
        {

          sub_1B03D91F8();
          v387 = 1;
          goto LABEL_300;
        }

        if (!v431)
        {
          v109 = v441;
          v86 = v428;
          v107 = v437;
          if (!*(v441 + 16))
          {
            goto LABEL_100;
          }

          v110 = *(v441 + 40);
          sub_1B0E46C28();
          v111 = v410;
          sub_1B0B5E6D0(v107 + v442, v410, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1B0B5E6D0(v111, v403, type metadata accessor for MoveAndCopyMessages.CommandID);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              v409 = v93;
              v398 = *v403;
              v114 = *(v403 + 2);
              v115 = v403[2];
              MEMORY[0x1B2728D70](3);
              MEMORY[0x1B2728D70](v114 | (v114 << 32));
              v116 = v115 + 64;
              v117 = 1 << *(v115 + 32);
              if (v117 < 64)
              {
                v118 = ~(-1 << v117);
              }

              else
              {
                v118 = -1;
              }

              v119 = v118 & *(v115 + 64);
              v120 = (v117 + 63) >> 6;
              v408 = v115;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v121 = 0;
              v122 = 0;
              if (v119)
              {
                while (1)
                {
                  v123 = v122;
LABEL_44:
                  v124 = __clz(__rbit64(v119)) | (v123 << 6);
                  v125 = *(*(v408 + 48) + 4 * v124);
                  v126 = (*(v408 + 56) + 16 * v124);
                  v127 = *v126;
                  v86 = v126[1];
                  sub_1B03B2000(*v126, v86);
                  if (v86 >> 60 == 15)
                  {
                    break;
                  }

                  v119 &= v119 - 1;
                  v446 = v451;
                  v447 = v452;
                  v448 = v453;
                  v444 = v449;
                  v445 = v450;
                  sub_1B0E46C88();
                  sub_1B0E42F48();
                  sub_1B0391D50(v127, v86);
                  v121 ^= sub_1B0E46CB8();
                  v122 = v123;
                  if (!v119)
                  {
                    goto LABEL_41;
                  }
                }
              }

              else
              {
                while (1)
                {
LABEL_41:
                  v123 = v122 + 1;
                  if (__OFADD__(v122, 1))
                  {
                    goto LABEL_305;
                  }

                  if (v123 >= v120)
                  {
                    break;
                  }

                  v119 = *(v116 + 8 * v123);
                  ++v122;
                  if (v119)
                  {
                    goto LABEL_44;
                  }
                }
              }

              MEMORY[0x1B2728D70](v121);

              v86 = v428;
              goto LABEL_61;
            }

            MEMORY[0x1B2728D70](1);
          }

          else
          {
            if (!EnumCaseMultiPayload)
            {
              v113 = v393;
              sub_1B03C60A4(v403, v393, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              MEMORY[0x1B2728D70](0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
              sub_1B0B0D328();
              sub_1B0E447C8();
              sub_1B0398EFC(v113, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v107 = v437;
              goto LABEL_62;
            }

            v409 = v93;
            v392 = *v403;
            v128 = *(v403 + 2);
            v129 = v403[2];
            MEMORY[0x1B2728D70](2);
            MEMORY[0x1B2728D70](v128 | (v128 << 32));
            v130 = v129 + 64;
            v131 = 1 << *(v129 + 32);
            if (v131 < 64)
            {
              v132 = ~(-1 << v131);
            }

            else
            {
              v132 = -1;
            }

            v133 = v132 & *(v129 + 64);
            v134 = (v131 + 63) >> 6;
            v398 = v129;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v135 = 0;
            v136 = 0;
            if (v133)
            {
              while (1)
              {
                v408 = v135;
                v137 = v136;
LABEL_56:
                v138 = __clz(__rbit64(v133));
                v133 &= v133 - 1;
                v139 = v138 | (v137 << 6);
                v140 = *(*(v398 + 48) + 4 * v139);
                v141 = (*(v398 + 56) + 24 * v139);
                v142 = *v141;
                v144 = *(v141 + 1);
                v143 = *(v141 + 2);
                sub_1B03B2000(v144, v143);
                v446 = v451;
                v447 = v452;
                v448 = v453;
                v444 = v449;
                v445 = v450;
                sub_1B0E46C88();
                MEMORY[0x1B2728D70](v142);
                sub_1B03B2000(v144, v143);
                sub_1B0E42F48();
                sub_1B0391D50(v144, v143);
                sub_1B0391D50(v144, v143);
                v135 = sub_1B0E46CB8() ^ v408;
                v86 = v428;
                if (!v133)
                {
                  goto LABEL_52;
                }
              }
            }

            while (1)
            {
LABEL_52:
              v137 = v136 + 1;
              if (__OFADD__(v136, 1))
              {
                goto LABEL_303;
              }

              if (v137 >= v134)
              {
                break;
              }

              v133 = *(v130 + 8 * v137);
              ++v136;
              if (v133)
              {
                v408 = v135;
                v136 = v137;
                goto LABEL_56;
              }
            }

            MEMORY[0x1B2728D70](v135);

LABEL_61:
            v107 = v437;
            v109 = v441;
            v93 = v409;
          }

LABEL_62:
          sub_1B0B5E738(v410, type metadata accessor for MoveAndCopyMessages.CommandID);
          v145 = sub_1B0E46CB8();
          v146 = -1 << *(v109 + 32);
          v147 = v145 & ~v146;
          if (((*(v438 + ((v147 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v147) & 1) == 0)
          {
            goto LABEL_100;
          }

          v148 = ~v146;
          while (2)
          {
            v149 = *(*(v109 + 48) + 8 * v147);
            v150 = *(*v149 + 96);
            swift_beginAccess();
            v151 = v435;
            sub_1B0B5E6D0(v149 + v150, v435, type metadata accessor for MoveAndCopyMessages.CommandID);
            v152 = v107 + v442;
            v153 = v436;
            sub_1B0B5E6D0(v152, v436, type metadata accessor for MoveAndCopyMessages.CommandID);
            v154 = v86 + *(v439 + 48);
            sub_1B0B5E6D0(v151, v86, type metadata accessor for MoveAndCopyMessages.CommandID);
            sub_1B0B5E6D0(v153, v154, type metadata accessor for MoveAndCopyMessages.CommandID);
            v155 = swift_getEnumCaseMultiPayload();
            if (v155 > 1)
            {
              if (v155 != 2)
              {
                sub_1B0B5E738(v436, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v435, type metadata accessor for MoveAndCopyMessages.CommandID);
                v177 = swift_getEnumCaseMultiPayload();
                v107 = v437;
                if (v177 == 3)
                {
LABEL_175:
                  sub_1B0B5E738(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_30:

                  v86 = v429;
                  v94 = v430;
                  v84 = v423;
                  v83 = v424;
                  v91 = v422;
                  goto LABEL_18;
                }

                goto LABEL_92;
              }

              v158 = v416;
              sub_1B0B5E6D0(v86, v416, type metadata accessor for MoveAndCopyMessages.CommandID);
              v159 = *v158;
              v160 = *(v158 + 16);
              if (swift_getEnumCaseMultiPayload() != 2)
              {
                goto LABEL_91;
              }

              v161 = *v154;
              v162 = *(v154 + 8);
              v163 = *(v154 + 16);
              if ((*(v158 + 8) | (*(v158 + 8) << 32)) != (v162 | (v162 << 32)))
              {
                goto LABEL_93;
              }

              v164 = *(v159 + 16);
              v107 = v437;
              if (v164 != *(v161 + 16))
              {
                goto LABEL_96;
              }

              if (!v164 || v159 == v161)
              {
LABEL_77:

                v167 = sub_1B0B74018(v160, v163);
                goto LABEL_87;
              }

              v165 = (v159 + 32);
              v166 = (v161 + 32);
              while (*v165 == *v166)
              {
                ++v165;
                ++v166;
                if (!--v164)
                {
                  goto LABEL_77;
                }
              }

LABEL_96:
              sub_1B0B5E738(v436, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E738(v435, type metadata accessor for MoveAndCopyMessages.CommandID);

              v86 = v428;
LABEL_97:
              sub_1B0B5E738(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
            }

            else
            {
              if (!v155)
              {
                v156 = v414;
                sub_1B0B5E6D0(v86, v414, type metadata accessor for MoveAndCopyMessages.CommandID);
                v157 = swift_getEnumCaseMultiPayload();
                v107 = v437;
                if (v157)
                {
                  sub_1B0B5E738(v436, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v435, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0398EFC(v156, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  goto LABEL_92;
                }

                v178 = v154;
                v179 = v156;
                v180 = v399;
                sub_1B03C60A4(v178, v399, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                sub_1B03D06F8();
                v181 = sub_1B0E46E08();
                sub_1B0398EFC(v180, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                sub_1B0B5E738(v436, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v435, type metadata accessor for MoveAndCopyMessages.CommandID);
                v107 = v437;
                sub_1B0398EFC(v179, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                sub_1B0B5E738(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
                v109 = v441;
                if (v181)
                {
                  goto LABEL_30;
                }

LABEL_99:
                v147 = (v147 + 1) & v148;
                if (((*(v438 + ((v147 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v147) & 1) == 0)
                {
                  goto LABEL_100;
                }

                continue;
              }

              v168 = v415;
              sub_1B0B5E6D0(v86, v415, type metadata accessor for MoveAndCopyMessages.CommandID);
              v169 = *v168;
              v170 = *(v168 + 16);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v171 = *v154;
                v172 = *(v154 + 8);
                v173 = *(v154 + 16);
                if ((*(v168 + 8) | (*(v168 + 8) << 32)) == (v172 | (v172 << 32)))
                {
                  v174 = *(v169 + 16);
                  v107 = v437;
                  if (v174 != *(v171 + 16))
                  {
                    goto LABEL_96;
                  }

                  if (v174 && v169 != v171)
                  {
                    v175 = (v169 + 32);
                    v176 = (v171 + 32);
                    while (*v175 == *v176)
                    {
                      ++v175;
                      ++v176;
                      if (!--v174)
                      {
                        goto LABEL_86;
                      }
                    }

                    goto LABEL_96;
                  }

LABEL_86:

                  v167 = sub_1B0B73688(v170, v173);
LABEL_87:
                  LODWORD(v408) = v167;

                  sub_1B0B5E738(v436, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v435, type metadata accessor for MoveAndCopyMessages.CommandID);

                  v86 = v428;
                  if (v408)
                  {
                    goto LABEL_175;
                  }

                  goto LABEL_97;
                }

LABEL_93:
                sub_1B0B5E738(v436, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v435, type metadata accessor for MoveAndCopyMessages.CommandID);

                v86 = v428;
                v107 = v437;
                goto LABEL_97;
              }

LABEL_91:

              sub_1B0B5E738(v436, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E738(v435, type metadata accessor for MoveAndCopyMessages.CommandID);
              v107 = v437;
LABEL_92:
              sub_1B0398EFC(v86, &qword_1EB6E4990, &unk_1B0EC6D30);
            }

            break;
          }

          v109 = v441;
          goto LABEL_99;
        }

        v107 = v437;

        v108 = sub_1B0E46178();

        v109 = v441;
        if (v108)
        {
          goto LABEL_30;
        }

LABEL_100:

        MEMORY[0x1B27272B0](v182);
        if (*((v455 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v455 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v257 = *((v455 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1B0E45218();
        }

        sub_1B0E45298();
        if (v431)
        {

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v183 = sub_1B0E46148();

          v91 = v422;
          if (v183)
          {

            *&v444 = v183;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
            swift_dynamicCast();

            v86 = v429;
            v94 = v430;
            v84 = v423;
            v83 = v424;
            goto LABEL_18;
          }

          v340 = sub_1B0E46138();
          if (__OFADD__(v340, 1))
          {
            goto LABEL_312;
          }

          v86 = sub_1B0B02EE4(v93, v340 + 1);
          v454 = v86;
          v341 = *(v86 + 16);
          if (*(v86 + 24) <= v341)
          {
            sub_1B0B044D0(v341 + 1);
            v86 = v454;
          }

          v342 = *(v86 + 40);
          sub_1B0E46C28();
          v343 = v391;
          sub_1B0B5E6D0(v107 + v442, v391, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1B0B5E6D0(v343, v390, type metadata accessor for MoveAndCopyMessages.CommandID);
          v344 = swift_getEnumCaseMultiPayload();
          v400 = v86;
          if (v344 > 1)
          {
            if (v344 == 2)
            {
              v438 = *v390;
              v346 = *(v390 + 8);
              v347 = *(v390 + 16);
              MEMORY[0x1B2728D70](3);
              MEMORY[0x1B2728D70](v346 | (v346 << 32));
              v348 = v347 + 64;
              v349 = 1 << *(v347 + 32);
              if (v349 < 64)
              {
                v350 = ~(-1 << v349);
              }

              else
              {
                v350 = -1;
              }

              v351 = v350 & *(v347 + 64);
              v352 = (v349 + 63) >> 6;

              v442 = v347;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v353 = 0;
              v354 = 0;
              if (v351)
              {
                while (1)
                {
                  v355 = v354;
LABEL_267:
                  v356 = __clz(__rbit64(v351)) | (v355 << 6);
                  v357 = *(*(v442 + 48) + 4 * v356);
                  v358 = (*(v442 + 56) + 16 * v356);
                  v359 = *v358;
                  v86 = v358[1];
                  sub_1B03B2000(*v358, v86);
                  if (v86 >> 60 == 15)
                  {
                    break;
                  }

                  v351 &= v351 - 1;
                  v446 = v451;
                  v447 = v452;
                  v448 = v453;
                  v444 = v449;
                  v445 = v450;
                  sub_1B0E46C88();
                  sub_1B0E42F48();
                  sub_1B0391D50(v359, v86);
                  v353 ^= sub_1B0E46CB8();
                  v354 = v355;
                  if (!v351)
                  {
                    goto LABEL_264;
                  }
                }
              }

              else
              {
                while (1)
                {
LABEL_264:
                  v355 = v354 + 1;
                  if (__OFADD__(v354, 1))
                  {
                    goto LABEL_310;
                  }

                  if (v355 >= v352)
                  {
                    break;
                  }

                  v351 = *(v348 + 8 * v355);
                  ++v354;
                  if (v351)
                  {
                    goto LABEL_267;
                  }
                }
              }

              MEMORY[0x1B2728D70](v353);

              v91 = v422;
              v107 = v437;
              v86 = v400;
            }

            else
            {
              MEMORY[0x1B2728D70](1);
            }
          }

          else
          {
            if (v344)
            {
              v431 = *v390;
              v360 = *(v390 + 8);
              v361 = *(v390 + 16);
              MEMORY[0x1B2728D70](2);
              MEMORY[0x1B2728D70](v360 | (v360 << 32));
              v362 = v361 + 64;
              v363 = 1 << *(v361 + 32);
              if (v363 < 64)
              {
                v364 = ~(-1 << v363);
              }

              else
              {
                v364 = -1;
              }

              v365 = v364 & *(v361 + 64);
              v366 = (v363 + 63) >> 6;

              v438 = v361;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v367 = 0;
              for (i = 0; v365; v86 = v400)
              {
                v369 = i;
LABEL_279:
                v370 = __clz(__rbit64(v365));
                v365 &= v365 - 1;
                v371 = v370 | (v369 << 6);
                v372 = *(*(v438 + 48) + 4 * v371);
                v373 = (*(v438 + 56) + 24 * v371);
                v442 = *v373;
                v375 = *(v373 + 1);
                v374 = *(v373 + 2);
                sub_1B03B2000(v375, v374);
                v446 = v451;
                v447 = v452;
                v448 = v453;
                v444 = v449;
                v445 = v450;
                sub_1B0E46C88();
                MEMORY[0x1B2728D70](v442);
                sub_1B03B2000(v375, v374);
                sub_1B0E42F48();
                sub_1B0391D50(v375, v374);
                sub_1B0391D50(v375, v374);
                v367 ^= sub_1B0E46CB8();
              }

              while (1)
              {
                v369 = i + 1;
                if (__OFADD__(i, 1))
                {
                  goto LABEL_309;
                }

                if (v369 >= v366)
                {

                  MEMORY[0x1B2728D70](v367);

                  v91 = v422;
                  v107 = v437;
                  goto LABEL_284;
                }

                v365 = *(v362 + 8 * v369);
                ++i;
                if (v365)
                {
                  i = v369;
                  goto LABEL_279;
                }
              }
            }

            v345 = v393;
            sub_1B03C60A4(v390, v393, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            MEMORY[0x1B2728D70](0);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
            sub_1B0B0D328();
            sub_1B0E447C8();
            v107 = v437;
            sub_1B0398EFC(v345, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v91 = v422;
          }

LABEL_284:
          sub_1B0B5E738(v391, type metadata accessor for MoveAndCopyMessages.CommandID);
          v376 = sub_1B0E46CB8();
          v377 = v86 + 56;
          v378 = -1 << *(v86 + 32);
          v379 = v376 & ~v378;
          v380 = v379 >> 6;
          if (((-1 << v379) & ~*(v86 + 56 + 8 * (v379 >> 6))) == 0)
          {
            v382 = 0;
            v383 = (63 - v378) >> 6;
            v86 = v429;
            while (++v380 != v383 || (v382 & 1) == 0)
            {
              v384 = v380 == v383;
              if (v380 == v383)
              {
                v380 = 0;
              }

              v382 |= v384;
              v385 = *(v377 + 8 * v380);
              if (v385 != -1)
              {
                v381 = __clz(__rbit64(~v385)) + (v380 << 6);
                goto LABEL_294;
              }
            }

            goto LABEL_311;
          }

          v381 = __clz(__rbit64((-1 << v379) & ~*(v86 + 56 + 8 * (v379 >> 6)))) | v379 & 0x7FFFFFFFFFFFFFC0;
          v86 = v429;
LABEL_294:
          *(v377 + ((v381 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v381;
          v386 = v400;
          *(*(v400 + 48) + 8 * v381) = v107;
          ++*(v386 + 16);

          v92 = v386;
          v84 = v423;
          v83 = v424;
          v87 = v430;
        }

        else
        {
          v184 = *(v109 + 40);
          sub_1B0E46C28();
          v185 = v411;
          sub_1B0B5E6D0(v107 + v442, v411, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1B0B5E6D0(v185, v404, type metadata accessor for MoveAndCopyMessages.CommandID);
          v186 = swift_getEnumCaseMultiPayload();
          v409 = v93;
          if (v186 <= 1)
          {
            if (v186)
            {
              v392 = *v404;
              v202 = *(v404 + 2);
              v203 = v404[2];
              MEMORY[0x1B2728D70](2);
              MEMORY[0x1B2728D70](v202 | (v202 << 32));
              v204 = v203 + 64;
              v205 = 1 << *(v203 + 32);
              if (v205 < 64)
              {
                v206 = ~(-1 << v205);
              }

              else
              {
                v206 = -1;
              }

              v207 = v206 & *(v203 + 64);
              v208 = (v205 + 63) >> 6;
              v398 = v203;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v209 = 0;
              v210 = 0;
              if (v207)
              {
                while (1)
                {
                  v408 = v209;
                  v211 = v210;
LABEL_129:
                  v212 = __clz(__rbit64(v207));
                  v207 &= v207 - 1;
                  v213 = v212 | (v211 << 6);
                  v214 = *(*(v398 + 48) + 4 * v213);
                  v215 = (*(v398 + 56) + 24 * v213);
                  v216 = *v215;
                  v86 = *(v215 + 1);
                  v217 = *(v215 + 2);
                  sub_1B03B2000(v86, v217);
                  v446 = v451;
                  v447 = v452;
                  v448 = v453;
                  v444 = v449;
                  v445 = v450;
                  sub_1B0E46C88();
                  MEMORY[0x1B2728D70](v216);
                  sub_1B03B2000(v86, v217);
                  sub_1B0E42F48();
                  sub_1B0391D50(v86, v217);
                  sub_1B0391D50(v86, v217);
                  v209 = sub_1B0E46CB8() ^ v408;
                  if (!v207)
                  {
                    goto LABEL_125;
                  }
                }
              }

              while (1)
              {
LABEL_125:
                v211 = v210 + 1;
                if (__OFADD__(v210, 1))
                {
                  goto LABEL_302;
                }

                if (v211 >= v208)
                {
                  break;
                }

                v207 = *(v204 + 8 * v211);
                ++v210;
                if (v207)
                {
                  v408 = v209;
                  v210 = v211;
                  goto LABEL_129;
                }
              }

              MEMORY[0x1B2728D70](v209);

              goto LABEL_134;
            }

            v187 = v393;
            sub_1B03C60A4(v404, v393, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            MEMORY[0x1B2728D70](0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
            sub_1B0B0D328();
            sub_1B0E447C8();
            sub_1B0398EFC(v187, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_135:
            v218 = v432;
            v86 = v433;
            v107 = v437;
            goto LABEL_136;
          }

          if (v186 == 2)
          {
            v398 = *v404;
            v188 = *(v404 + 2);
            v189 = v404[2];
            MEMORY[0x1B2728D70](3);
            MEMORY[0x1B2728D70](v188 | (v188 << 32));
            v190 = v189 + 64;
            v191 = 1 << *(v189 + 32);
            if (v191 < 64)
            {
              v192 = ~(-1 << v191);
            }

            else
            {
              v192 = -1;
            }

            v193 = v192 & *(v189 + 64);
            v194 = (v191 + 63) >> 6;
            v408 = v189;
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v195 = 0;
            v196 = 0;
            if (v193)
            {
              while (1)
              {
                v197 = v196;
LABEL_117:
                v198 = __clz(__rbit64(v193)) | (v197 << 6);
                v199 = *(*(v408 + 48) + 4 * v198);
                v200 = (*(v408 + 56) + 16 * v198);
                v201 = *v200;
                v86 = v200[1];
                sub_1B03B2000(*v200, v86);
                if (v86 >> 60 == 15)
                {
                  break;
                }

                v193 &= v193 - 1;
                v446 = v451;
                v447 = v452;
                v448 = v453;
                v444 = v449;
                v445 = v450;
                sub_1B0E46C88();
                sub_1B0E42F48();
                sub_1B0391D50(v201, v86);
                v195 ^= sub_1B0E46CB8();
                v196 = v197;
                if (!v193)
                {
                  goto LABEL_114;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_114:
                v197 = v196 + 1;
                if (__OFADD__(v196, 1))
                {
                  goto LABEL_304;
                }

                if (v197 >= v194)
                {
                  break;
                }

                v193 = *(v190 + 8 * v197);
                ++v196;
                if (v193)
                {
                  goto LABEL_117;
                }
              }
            }

            MEMORY[0x1B2728D70](v195);

LABEL_134:

            goto LABEL_135;
          }

          MEMORY[0x1B2728D70](1);
          v218 = v432;
          v86 = v433;
LABEL_136:
          sub_1B0B5E738(v411, type metadata accessor for MoveAndCopyMessages.CommandID);
          v219 = sub_1B0E46CB8();
          v220 = ~(-1 << *(v441 + 32));
          v221 = v219 & v220;
          while (2)
          {
            if ((*(v438 + ((v221 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v221))
            {
              v222 = *(*(v441 + 48) + 8 * v221);
              v223 = *(*v222 + 96);
              swift_beginAccess();
              v224 = v440;
              sub_1B0B5E6D0(v222 + v223, v440, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E6D0(v107 + v442, v218, type metadata accessor for MoveAndCopyMessages.CommandID);
              v225 = v86 + *(v439 + 48);
              sub_1B0B5E6D0(v224, v86, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E6D0(v218, v225, type metadata accessor for MoveAndCopyMessages.CommandID);
              v226 = swift_getEnumCaseMultiPayload();
              if (v226 > 1)
              {
                if (v226 != 2)
                {
                  sub_1B0B5E738(v218, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v440, type metadata accessor for MoveAndCopyMessages.CommandID);
                  if (swift_getEnumCaseMultiPayload() == 3)
                  {
                    goto LABEL_173;
                  }

                  goto LABEL_138;
                }

                v228 = v86;
                v229 = v427;
                sub_1B0B5E6D0(v228, v427, type metadata accessor for MoveAndCopyMessages.CommandID);
                v230 = *v229;
                v231 = *(v229 + 16);
                if (swift_getEnumCaseMultiPayload() != 2)
                {

                  v218 = v432;
                  sub_1B0B5E738(v432, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v440, type metadata accessor for MoveAndCopyMessages.CommandID);
                  v86 = v433;
                  goto LABEL_138;
                }

                v232 = *(v229 + 8);
                v233 = *v225;
                v234 = *(v225 + 8);
                v235 = *(v225 + 16);
                if ((v232 | (v232 << 32)) == (v234 | (v234 << 32)))
                {
                  v236 = *(v230 + 16);
                  if (v236 == *(v233 + 16))
                  {
                    if (!v236 || v230 == v233)
                    {
LABEL_154:

                      LODWORD(v408) = sub_1B0B74018(v231, v235);

                      v239 = v432;
                      sub_1B0B5E738(v432, type metadata accessor for MoveAndCopyMessages.CommandID);
                      sub_1B0B5E738(v440, type metadata accessor for MoveAndCopyMessages.CommandID);

                      v218 = v239;

                      v86 = v433;
                      if (v408)
                      {
                        goto LABEL_173;
                      }

                      goto LABEL_170;
                    }

                    v237 = (v230 + 32);
                    v238 = (v233 + 32);
                    while (*v237 == *v238)
                    {
                      ++v237;
                      ++v238;
                      if (!--v236)
                      {
                        goto LABEL_154;
                      }
                    }
                  }
                }

                v252 = v432;
                sub_1B0B5E738(v432, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v440, type metadata accessor for MoveAndCopyMessages.CommandID);

                v218 = v252;

                v86 = v433;
LABEL_170:
                sub_1B0B5E738(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
                goto LABEL_139;
              }

              if (!v226)
              {
                v227 = v425;
                sub_1B0B5E6D0(v86, v425, type metadata accessor for MoveAndCopyMessages.CommandID);
                if (swift_getEnumCaseMultiPayload())
                {
                  sub_1B0B5E738(v218, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v440, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0398EFC(v227, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_138:
                  sub_1B0398EFC(v86, &qword_1EB6E4990, &unk_1B0EC6D30);
                  goto LABEL_139;
                }

                v253 = v225;
                v254 = v227;
                v255 = v412;
                sub_1B03C60A4(v253, v412, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                sub_1B03D06F8();
                v256 = sub_1B0E46E08();
                sub_1B0398EFC(v255, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                sub_1B0B5E738(v218, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v440, type metadata accessor for MoveAndCopyMessages.CommandID);
                v107 = v437;
                sub_1B0398EFC(v254, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                sub_1B0B5E738(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
                if (v256)
                {
                  goto LABEL_174;
                }

LABEL_139:
                v221 = (v221 + 1) & v220;
                continue;
              }

              v240 = v86;
              v241 = v426;
              sub_1B0B5E6D0(v240, v426, type metadata accessor for MoveAndCopyMessages.CommandID);
              v242 = *v241;
              v243 = *(v241 + 16);
              if (swift_getEnumCaseMultiPayload() != 1)
              {

                v218 = v432;
                sub_1B0B5E738(v432, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v440, type metadata accessor for MoveAndCopyMessages.CommandID);
                v86 = v433;
                v107 = v437;
                goto LABEL_138;
              }

              v244 = *(v241 + 8);
              v245 = *v225;
              v246 = *(v225 + 8);
              v247 = *(v225 + 16);
              if ((v244 | (v244 << 32)) != (v246 | (v246 << 32)) || (v248 = *(v242 + 16), v248 != *(v245 + 16)))
              {
LABEL_169:
                v218 = v432;
                sub_1B0B5E738(v432, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v440, type metadata accessor for MoveAndCopyMessages.CommandID);

                v86 = v433;
                v107 = v437;
                goto LABEL_170;
              }

              if (v248 && v242 != v245)
              {
                v249 = (v242 + 32);
                v250 = (v245 + 32);
                while (*v249 == *v250)
                {
                  ++v249;
                  ++v250;
                  if (!--v248)
                  {
                    goto LABEL_164;
                  }
                }

                goto LABEL_169;
              }

LABEL_164:

              v251 = sub_1B0B73688(v243, v247);

              v218 = v432;
              sub_1B0B5E738(v432, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E738(v440, type metadata accessor for MoveAndCopyMessages.CommandID);

              v86 = v433;
              v107 = v437;
              if ((v251 & 1) == 0)
              {
                goto LABEL_170;
              }

LABEL_173:
              sub_1B0B5E738(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_174:

              v86 = v429;
              v94 = v430;
              v84 = v423;
              v83 = v424;
              v91 = v422;
              v93 = v409;
              goto LABEL_18;
            }

            break;
          }

          v258 = v400;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v454 = v258;
          v260 = *(v258 + 16);
          v261 = *(v258 + 24);

          if (v261 <= v260)
          {
            v86 = v413;
            v262 = v417;
            v263 = v260 + 1;
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_1B0B044D0(v263);
            }

            else
            {
              sub_1B0B08B60(v263);
            }

            v264 = v454;
            v265 = *(v454 + 40);
            sub_1B0E46C28();
            v266 = v397;
            sub_1B0B5E6D0(v107 + v442, v397, type metadata accessor for MoveAndCopyMessages.CommandID);
            sub_1B0B5E6D0(v266, v394, type metadata accessor for MoveAndCopyMessages.CommandID);
            v267 = swift_getEnumCaseMultiPayload();
            if (v267 > 1)
            {
              if (v267 == 2)
              {
                v431 = v264;
                v438 = *v394;
                v269 = *(v394 + 8);
                v270 = *(v394 + 16);
                MEMORY[0x1B2728D70](3);
                MEMORY[0x1B2728D70](v269 | (v269 << 32));
                v271 = v270 + 64;
                v272 = 1 << *(v270 + 32);
                if (v272 < 64)
                {
                  v273 = ~(-1 << v272);
                }

                else
                {
                  v273 = -1;
                }

                v274 = v273 & *(v270 + 64);
                v275 = (v272 + 63) >> 6;
                v441 = v270;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v276 = 0;
                v277 = 0;
                if (v274)
                {
                  while (1)
                  {
                    v278 = v277;
LABEL_194:
                    v279 = __clz(__rbit64(v274)) | (v278 << 6);
                    v86 = *(*(v441 + 48) + 4 * v279);
                    v280 = (*(v441 + 56) + 16 * v279);
                    v281 = *v280;
                    v282 = v280[1];
                    sub_1B03B2000(*v280, v282);
                    if (v282 >> 60 == 15)
                    {
                      break;
                    }

                    v274 &= v274 - 1;
                    v446 = v451;
                    v447 = v452;
                    v448 = v453;
                    v444 = v449;
                    v445 = v450;
                    sub_1B0E46C88();
                    sub_1B0E42F48();
                    sub_1B0391D50(v281, v282);
                    v276 ^= sub_1B0E46CB8();
                    v277 = v278;
                    if (!v274)
                    {
                      goto LABEL_191;
                    }
                  }
                }

                else
                {
                  while (1)
                  {
LABEL_191:
                    v278 = v277 + 1;
                    if (__OFADD__(v277, 1))
                    {
                      goto LABEL_307;
                    }

                    if (v278 >= v275)
                    {
                      break;
                    }

                    v274 = *(v271 + 8 * v278);
                    ++v277;
                    if (v274)
                    {
                      goto LABEL_194;
                    }
                  }
                }

                MEMORY[0x1B2728D70](v276);

                v86 = v413;
                goto LABEL_211;
              }

              MEMORY[0x1B2728D70](1);
            }

            else
            {
              if (!v267)
              {
                v268 = v393;
                sub_1B03C60A4(v394, v393, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                MEMORY[0x1B2728D70](0);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
                sub_1B0B0D328();
                sub_1B0E447C8();
                sub_1B0398EFC(v268, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                v107 = v437;
                goto LABEL_212;
              }

              v431 = v264;
              v409 = *v394;
              v283 = *(v394 + 8);
              v284 = *(v394 + 16);
              MEMORY[0x1B2728D70](2);
              MEMORY[0x1B2728D70](v283 | (v283 << 32));
              v285 = v284 + 64;
              v286 = 1 << *(v284 + 32);
              if (v286 < 64)
              {
                v287 = ~(-1 << v286);
              }

              else
              {
                v287 = -1;
              }

              v288 = v287 & *(v284 + 64);
              v289 = (v286 + 63) >> 6;
              v438 = v284;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v290 = 0;
              v291 = 0;
              if (v288)
              {
                while (1)
                {
                  v441 = v290;
                  v292 = v291;
LABEL_206:
                  v293 = __clz(__rbit64(v288));
                  v288 &= v288 - 1;
                  v294 = v293 | (v292 << 6);
                  v295 = *(*(v438 + 48) + 4 * v294);
                  v296 = (*(v438 + 56) + 24 * v294);
                  v297 = *v296;
                  v299 = *(v296 + 1);
                  v298 = *(v296 + 2);
                  sub_1B03B2000(v299, v298);
                  v446 = v451;
                  v447 = v452;
                  v448 = v453;
                  v444 = v449;
                  v445 = v450;
                  sub_1B0E46C88();
                  MEMORY[0x1B2728D70](v297);
                  sub_1B03B2000(v299, v298);
                  sub_1B0E42F48();
                  sub_1B0391D50(v299, v298);
                  sub_1B0391D50(v299, v298);
                  v290 = sub_1B0E46CB8() ^ v441;
                  v86 = v413;
                  if (!v288)
                  {
                    goto LABEL_202;
                  }
                }
              }

              while (1)
              {
LABEL_202:
                v292 = v291 + 1;
                if (__OFADD__(v291, 1))
                {
                  goto LABEL_306;
                }

                if (v292 >= v289)
                {
                  break;
                }

                v288 = *(v285 + 8 * v292);
                ++v291;
                if (v288)
                {
                  v441 = v290;
                  v291 = v292;
                  goto LABEL_206;
                }
              }

              MEMORY[0x1B2728D70](v290);

LABEL_211:
              v262 = v417;
              v107 = v437;
              v264 = v431;
            }

LABEL_212:
            sub_1B0B5E738(v397, type metadata accessor for MoveAndCopyMessages.CommandID);
            v300 = sub_1B0E46CB8();
            v301 = -1 << *(v264 + 32);
            v221 = v300 & ~v301;
            v441 = v264 + 56;
            if (((*(v264 + 56 + ((v221 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v221) & 1) == 0)
            {
              goto LABEL_250;
            }

            v438 = ~v301;
            v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
            while (2)
            {
              v302 = *(*(v264 + 48) + 8 * v221);
              v303 = *(*v302 + 96);
              swift_beginAccess();
              v304 = v302 + v303;
              v305 = v434;
              sub_1B0B5E6D0(v304, v434, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E6D0(v107 + v442, v262, type metadata accessor for MoveAndCopyMessages.CommandID);
              v306 = v86 + *(v439 + 48);
              sub_1B0B5E6D0(v305, v86, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E6D0(v262, v306, type metadata accessor for MoveAndCopyMessages.CommandID);
              v307 = swift_getEnumCaseMultiPayload();
              if (v307 <= 1)
              {
                if (!v307)
                {
                  v308 = v405;
                  sub_1B0B5E6D0(v86, v405, type metadata accessor for MoveAndCopyMessages.CommandID);
                  if (swift_getEnumCaseMultiPayload())
                  {
                    sub_1B0B5E738(v262, type metadata accessor for MoveAndCopyMessages.CommandID);
                    sub_1B0B5E738(v434, type metadata accessor for MoveAndCopyMessages.CommandID);
                    sub_1B0398EFC(v308, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                    goto LABEL_215;
                  }

                  v331 = v308;
                  v332 = v395;
                  sub_1B03C60A4(v306, v395, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  sub_1B03D06F8();
                  v333 = sub_1B0E46E08();
                  sub_1B0398EFC(v332, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  sub_1B0B5E738(v262, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v434, type metadata accessor for MoveAndCopyMessages.CommandID);
                  v334 = v331;
                  v107 = v437;
                  sub_1B0398EFC(v334, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  if (v333)
                  {
                    goto LABEL_313;
                  }

LABEL_249:
                  sub_1B0B5E738(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_216:
                  v221 = (v221 + 1) & v438;
                  if (((*(v441 + ((v221 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v221) & 1) == 0)
                  {
                    goto LABEL_250;
                  }

                  continue;
                }

                v319 = v406;
                sub_1B0B5E6D0(v86, v406, type metadata accessor for MoveAndCopyMessages.CommandID);
                v320 = *v319;
                v321 = *(v319 + 16);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  v322 = *v306;
                  v323 = *(v306 + 8);
                  v324 = *(v306 + 16);
                  if ((*(v319 + 8) | (*(v319 + 8) << 32)) == (v323 | (v323 << 32)))
                  {
                    v325 = *(v320 + 16);
                    if (v325 != *(v322 + 16))
                    {
                      goto LABEL_242;
                    }

                    if (v325 && v320 != v322)
                    {
                      v326 = (v320 + 32);
                      v327 = (v322 + 32);
                      while (*v326 == *v327)
                      {
                        ++v326;
                        ++v327;
                        if (!--v325)
                        {
                          goto LABEL_239;
                        }
                      }

                      goto LABEL_242;
                    }

LABEL_239:

                    v318 = sub_1B0B73688(v321, v324);
LABEL_240:
                    v328 = v318;

                    v329 = v417;
                    sub_1B0B5E738(v417, type metadata accessor for MoveAndCopyMessages.CommandID);
                    sub_1B0B5E738(v434, type metadata accessor for MoveAndCopyMessages.CommandID);

                    v262 = v329;
                    v107 = v437;

                    v86 = v413;
                    if (v328)
                    {
                      goto LABEL_313;
                    }

                    goto LABEL_249;
                  }

                  v335 = v417;
                  sub_1B0B5E738(v417, type metadata accessor for MoveAndCopyMessages.CommandID);
                  sub_1B0B5E738(v434, type metadata accessor for MoveAndCopyMessages.CommandID);

                  v262 = v335;
                  goto LABEL_248;
                }

                goto LABEL_243;
              }

              break;
            }

            if (v307 == 2)
            {
              v309 = v407;
              sub_1B0B5E6D0(v86, v407, type metadata accessor for MoveAndCopyMessages.CommandID);
              v310 = *v309;
              v311 = *(v309 + 16);
              if (swift_getEnumCaseMultiPayload() == 2)
              {
                v312 = *v306;
                v313 = *(v306 + 8);
                v314 = *(v306 + 16);
                if ((*(v309 + 8) | (*(v309 + 8) << 32)) != (v313 | (v313 << 32)))
                {
                  goto LABEL_242;
                }

                v315 = *(v310 + 16);
                if (v315 != *(v312 + 16))
                {
                  goto LABEL_242;
                }

                if (!v315 || v310 == v312)
                {
LABEL_230:

                  v318 = sub_1B0B74018(v311, v314);
                  goto LABEL_240;
                }

                v316 = (v310 + 32);
                v317 = (v312 + 32);
                while (*v316 == *v317)
                {
                  ++v316;
                  ++v317;
                  if (!--v315)
                  {
                    goto LABEL_230;
                  }
                }

LABEL_242:
                v330 = v417;
                sub_1B0B5E738(v417, type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B5E738(v434, type metadata accessor for MoveAndCopyMessages.CommandID);

                v262 = v330;
                v107 = v437;
LABEL_248:

                v86 = v413;
                goto LABEL_249;
              }

LABEL_243:

              v262 = v417;
              sub_1B0B5E738(v417, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E738(v434, type metadata accessor for MoveAndCopyMessages.CommandID);
            }

            else
            {
              sub_1B0B5E738(v262, type metadata accessor for MoveAndCopyMessages.CommandID);
              sub_1B0B5E738(v434, type metadata accessor for MoveAndCopyMessages.CommandID);
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                goto LABEL_313;
              }
            }

LABEL_215:
            sub_1B0398EFC(v86, &qword_1EB6E4990, &unk_1B0EC6D30);
            goto LABEL_216;
          }

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0B077AC();
          }

LABEL_250:
          v336 = v454;
          *(v454 + ((v221 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v221;
          *(*(v336 + 48) + 8 * v221) = v107;
          v337 = *(v336 + 16);
          v338 = __OFADD__(v337, 1);
          v339 = v337 + 1;
          if (v338)
          {
            goto LABEL_308;
          }

          *(v336 + 16) = v339;

          v400 = v336;
          v92 = v336;
          v84 = v423;
          v83 = v424;
          v91 = v422;
          v86 = v429;
          v87 = v430;
        }
      }

      v95 = v86;
      v96 = v94;
      v97 = v86;
      if (v94)
      {
LABEL_23:
        v430 = (v96 - 1) & v96;
        v98 = *(*(v83 + 48) + ((v97 << 9) | (8 * __clz(__rbit64(v96)))));

        if (!v98)
        {
          goto LABEL_295;
        }

        goto LABEL_27;
      }

      while (1)
      {
        v97 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_306:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_307:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          sub_1B0B5E738(v86, type metadata accessor for MoveAndCopyMessages.CommandID);
          result = sub_1B0E46B98();
          __break(1u);
          return result;
        }

        if (v97 >= v91)
        {
          break;
        }

        v96 = *(v84 + 8 * v97);
        ++v95;
        if (v96)
        {
          goto LABEL_23;
        }
      }

LABEL_295:
      sub_1B03D91F8();

      v78 = sub_1B0B4FCB8();
      a3 = v396;
      if (!v78)
      {
        goto LABEL_299;
      }
    }
  }

  v441 = MEMORY[0x1E69E7CD0];
LABEL_299:

  v387 = 0;
LABEL_300:

  return v387;
}

uint64_t sub_1B0B5BD58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0B5E6D0(a1, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  sub_1B0B5E798(v7, v11 + *(*v11 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  if (*(a2 + 16) && (v12 = sub_1B0AE00C4(v11), (v13 & 1) != 0))
  {
    v14 = *(*(a2 + 56) + 8 * v12);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CD0];
  }

  MEMORY[0x1EEE9AC00](v15);
  *&v20[-16] = v4;
  *&v20[-8] = sub_1B0B5C4EC(&qword_1EB6DD960);
  KeyPath = swift_getKeyPath();

  v17 = sub_1B0B582AC(v14, KeyPath);

  v18 = sub_1B0B3876C(v17);

  return v18;
}

uint64_t sub_1B0B5BF38(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - v8;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1B0B58990(MEMORY[0x1E69E7CC0]);
  v13 = v12;
  v15 = v14;
  sub_1B0BABFD8(v10);
  v26 = v11;
  v16 = *(a1 + 16);
  if (v16)
  {
    v24[0] = v15;
    v24[1] = v13;
    v17 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v18 = *(v3 + 72);
    do
    {
      sub_1B0B5E6D0(v17, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E6D0(v9, v7, type metadata accessor for MoveAndCopyMessages.CommandID);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      v22 = swift_allocObject();
      sub_1B0B5E798(v7, v22 + *(*v22 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B028E4(&v25, v22);
      sub_1B0B5E738(v9, type metadata accessor for MoveAndCopyMessages.CommandID);

      v17 += v18;
      --v16;
    }

    while (v16);
    return v26;
  }

  return v11;
}

uint64_t type metadata accessor for MoveAndCopyMessages.CommandID()
{
  result = qword_1EB6DD948;
  if (!qword_1EB6DD948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1B0B5C208(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_1B0B5C250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B5C2D0()
{
  result = sub_1B043B29C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B0B5C344()
{
  result = qword_1EB6DD968;
  if (!qword_1EB6DD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD968);
  }

  return result;
}

unint64_t sub_1B0B5C398(uint64_t a1)
{
  result = sub_1B0B5C3C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0B5C3C0()
{
  result = qword_1EB6DD940;
  if (!qword_1EB6DD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD940);
  }

  return result;
}

unint64_t sub_1B0B5C418()
{
  result = qword_1EB6E4998;
  if (!qword_1EB6E4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4998);
  }

  return result;
}

unint64_t sub_1B0B5C470()
{
  result = qword_1EB6E49A0;
  if (!qword_1EB6E49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E49A0);
  }

  return result;
}

uint64_t sub_1B0B5C4EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MoveAndCopyMessages.CommandID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B0B5C530(uint64_t a1, uint64_t a2)
{
  if (sub_1B0A9F914(0, a1, a2))
  {
    v3 = *(v2 + 176);
    if (*(v3 + 16))
    {
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);
      v6 = *(v3 + 48);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0BAD508(0, 1);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v7 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v8 = sub_1B0B586B0(v7, v4, v5);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v9 = swift_allocObject();
      v10 = *(v2 + 40);
      *(v9 + 16) = *(v2 + 32);
      *(v9 + 24) = v10;
      if (*(v8 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4840, &qword_1B0EC6FD0);
        v11 = sub_1B0E466A8();
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC8];
      }

      v15 = v11;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B56688(v8, 1, &v15);
      *(v9 + 32) = v15;
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v12 = swift_allocObject();
    v13 = *(v2 + 40);
    *(v12 + 16) = *(v2 + 32);
    *(v12 + 24) = v13;
    *(v12 + 32) = 257;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return 0;
  }
}

uint64_t sub_1B0B5C6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v73 - v11;
  v13 = type metadata accessor for UntaggedResponse(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0B5E6D0(a1, v16, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1B0B5E738(v16, type metadata accessor for UntaggedResponse);
  }

  v18 = *v16;
  v19 = v16[2];
  if ((~*v16 & 0xF000000000000007) == 0)
  {
  }

  if (((v18 >> 59) & 0x1E | (v18 >> 2) & 1) != 8)
  {
    sub_1B0447F00(*v16);
  }

  v81 = v3;
  v80 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v20 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
  v21 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
  sub_1B0B5E6D0(a3, v12, type metadata accessor for MailboxTaskLogger);
  sub_1B0B5E6D0(a3, v9, type metadata accessor for MailboxTaskLogger);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1B0394868();
  sub_1B0394868();
  v22 = sub_1B0E43988();
  v23 = sub_1B0E458D8();

  v24 = os_log_type_enabled(v22, v23);
  v82 = v21;
  v83 = v20;
  if (v24)
  {
    v77 = v23;
    v78 = v22;
    v25 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v87 = v76;
    *v25 = 68160003;
    *(v25 + 4) = 2;
    *(v25 + 8) = 256;
    v26 = &v9[*(v6 + 20)];
    *(v25 + 10) = *v26;
    *(v25 + 11) = 2082;
    v27 = &v12[*(v6 + 20)];
    *(v25 + 13) = sub_1B0399D64(*(v27 + 1), *(v27 + 2), &v87);
    *(v25 + 21) = 1040;
    *(v25 + 23) = 2;
    *(v25 + 27) = 512;
    LOWORD(v26) = *(v26 + 12);
    sub_1B0B5E738(v9, type metadata accessor for MailboxTaskLogger);
    *(v25 + 29) = v26;
    *(v25 + 31) = 2160;
    *(v25 + 33) = 0x786F626C69616DLL;
    *(v25 + 41) = 2085;
    v28 = *(v27 + 4);
    LODWORD(v27) = *(v27 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B5E738(v12, type metadata accessor for MailboxTaskLogger);
    v85 = v28;
    v86 = v27;
    v29 = sub_1B0E44BA8();
    v31 = sub_1B0399D64(v29, v30, &v87);

    *(v25 + 43) = v31;
    v32 = v83;
    *(v25 + 51) = 2082;
    v33 = *(v32 + 16);
    v34 = MEMORY[0x1E69E7CC0];
    v79 = v25;
    if (v33)
    {
      v74 = v19;
      v75 = v18;
      v85 = MEMORY[0x1E69E7CC0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A18B88(0, v33, 0);
      v35 = v83;
      v36 = 32;
      v34 = v85;
      do
      {
        v84 = *(v35 + v36);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v37 = sub_1B0E44B88();
        v39 = v38;
        v85 = v34;
        v41 = *(v34 + 16);
        v40 = *(v34 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1B0A18B88(v40 > 1, v41 + 1, 1);
          v35 = v83;
          v34 = v85;
        }

        *(v34 + 16) = v41 + 1;
        v42 = v34 + 16 * v41;
        *(v42 + 32) = v37;
        *(v42 + 40) = v39;
        v36 += 8;
        --v33;
      }

      while (v33);

      v18 = v75;
      v25 = v79;
    }

    v85 = v34;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    v46 = sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0);
    v47 = sub_1B0E448E8();
    v49 = v48;

    v50 = sub_1B0399D64(v47, v49, &v87);

    *(v25 + 53) = v50;
    *(v25 + 61) = 2082;
    v51 = *(v82 + 16);
    v52 = MEMORY[0x1E69E7CC0];
    if (v51)
    {
      v73[1] = v46;
      v74 = v45;
      v85 = MEMORY[0x1E69E7CC0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0A18B88(0, v51, 0);
      v53 = v82;
      v54 = 32;
      v52 = v85;
      do
      {
        v84 = *(v53 + v54);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
        v55 = sub_1B0E44B88();
        v85 = v52;
        v58 = *(v52 + 16);
        v57 = *(v52 + 24);
        if (v58 >= v57 >> 1)
        {
          v75 = v18;
          v60 = v55;
          v61 = v56;
          sub_1B0A18B88(v57 > 1, v58 + 1, 1);
          v53 = v82;
          v56 = v61;
          v55 = v60;
          v18 = v75;
          v52 = v85;
        }

        *(v52 + 16) = v58 + 1;
        v59 = v52 + 16 * v58;
        *(v59 + 32) = v55;
        *(v59 + 40) = v56;
        v54 += 8;
        --v51;
      }

      while (v51);

      v25 = v79;
    }

    v85 = v52;
    v62 = sub_1B0E448E8();
    v64 = v63;

    v65 = sub_1B0399D64(v62, v64, &v87);

    *(v25 + 63) = v65;
    *(v25 + 71) = 1024;

    v44 = v80;
    *(v25 + 73) = v80;

    v66 = v78;
    _os_log_impl(&dword_1B0389000, v78, v77, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server moved messages %{public}s with destination UIDs %{public}s and UIDValidity 0x%x", v25, 0x4Du);
    v67 = v76;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v67, -1, -1);
    MEMORY[0x1B272C230](v25, -1, -1);

    v43 = v81;
  }

  else
  {

    sub_1B0B5E738(v9, type metadata accessor for MailboxTaskLogger);

    sub_1B0B5E738(v12, type metadata accessor for MailboxTaskLogger);
    v43 = v81;
    v44 = v80;
  }

  v68 = *(v43 + 168);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v68 = sub_1B0B00B9C(0, *(v68 + 2) + 1, 1, v68);
  }

  v70 = *(v68 + 2);
  v69 = *(v68 + 3);
  if (v70 >= v69 >> 1)
  {
    v68 = sub_1B0B00B9C((v69 > 1), v70 + 1, 1, v68);
  }

  sub_1B0447F00(v18);

  *(v68 + 2) = v70 + 1;
  v71 = &v68[24 * v70];
  *(v71 + 8) = v44;
  v72 = v82;
  *(v71 + 5) = v83;
  *(v71 + 6) = v72;
  *(v43 + 168) = v68;
  return result;
}

void sub_1B0B5CED8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v122 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v121 = (&v113 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v120 = (&v113 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v125 = &v113 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v124 = (&v113 - v21);
  v22 = type metadata accessor for MailboxTaskLogger(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v113 - v28;
  if (((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 0x12 && (*(v5 + 40) | (*(v5 + 40) << 32)) == (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18) << 32)))
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    LODWORD(v123) = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v31 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v32 = v27;
    if (sub_1B04520BC(*(v5 + 32), v31))
    {
      v117 = v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      if (sub_1B0AEC7DC(0, a2, a3, a4))
      {
        sub_1B0B5E6D0(a5, v29, type metadata accessor for MailboxTaskLogger);
        sub_1B0B5E6D0(a5, v25, type metadata accessor for MailboxTaskLogger);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        swift_bridgeObjectRetain_n();
        v33 = sub_1B0E43988();
        v34 = sub_1B0E45908();
        v35 = os_log_type_enabled(v33, v34);
        v118 = v30;
        if (v35)
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v128 = v37;
          *v36 = 68159491;
          *(v36 + 4) = 2;
          *(v36 + 8) = 256;
          v38 = &v25[*(v32 + 20)];
          *(v36 + 10) = *v38;
          *(v36 + 11) = 2082;
          v39 = &v29[*(v32 + 20)];
          *(v36 + 13) = sub_1B0399D64(*(v39 + 1), *(v39 + 2), &v128);
          *(v36 + 21) = 1040;
          *(v36 + 23) = 2;
          *(v36 + 27) = 512;
          LOWORD(v38) = *(v38 + 12);
          sub_1B0B5E738(v25, type metadata accessor for MailboxTaskLogger);
          *(v36 + 29) = v38;
          *(v36 + 31) = 2160;
          *(v36 + 33) = 0x786F626C69616DLL;
          *(v36 + 41) = 2085;
          v40 = *(v39 + 4);
          LODWORD(v39) = *(v39 + 10);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0B5E738(v29, type metadata accessor for MailboxTaskLogger);
          v126 = v40;
          v127 = v39;
          v41 = sub_1B0E44BA8();
          v43 = sub_1B0399D64(v41, v42, &v128);

          *(v36 + 43) = v43;
          *(v36 + 51) = 2048;
          v44 = *(v118 + 16);

          *(v36 + 53) = v44;

          _os_log_impl(&dword_1B0389000, v33, v34, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned %ld moves / copies.", v36, 0x3Du);
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v37, -1, -1);
          v45 = v118;
          MEMORY[0x1B272C230](v36, -1, -1);
        }

        else
        {
          v45 = v30;

          sub_1B0B5E738(v25, type metadata accessor for MailboxTaskLogger);

          sub_1B0B5E738(v29, type metadata accessor for MailboxTaskLogger);
        }

        v46 = v117;
        v119 = v11;
        if ((v123 & 1) == 0)
        {
          *(v117 + 120) = 1;
        }

        v116 = *(v45 + 16);
        if (v116)
        {
          v47 = 0;
          v48 = (v45 + 64);
          while (v47 < *(v45 + 16))
          {
            v62 = *(v46 + 112);
            if (v62 >= 257)
            {

              *(v46 + 120) = 1;
              return;
            }

            v63 = *(v48 - 7);
            v64 = *(v48 - 3);
            LODWORD(v123) = *(v48 - 4);
            v65 = *(v48 - 1);
            v66 = *v48;
            v67 = *(v48 - 32);
            *(v46 + 112) = v62 + 1;
            if (v67 == 1)
            {
              v115 = v47;
              v129 = v63;
              v130 = 1;
              v131 = v65;
              v132 = v66;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4848, &qword_1B0EC6FB0);
              v68 = sub_1B0E466A8();
              v69 = v129;
              v70 = v130;
              v71 = v131;
              v72 = v132;
              v73 = sub_1B03FE284(v129);
              if (v74)
              {
                goto LABEL_33;
              }

              v68[(v73 >> 6) + 8] |= 1 << v73;
              *(v68[6] + 4 * v73) = v69;
              v75 = v68[7] + 24 * v73;
              *v75 = v70;
              *(v75 + 8) = v71;
              *(v75 + 16) = v72;
              v76 = v68[2];
              v77 = __OFADD__(v76, 1);
              v78 = v76 + 1;
              if (v77)
              {
                goto LABEL_34;
              }

              v68[2] = v78;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B03B2000(v65, v66);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B03B2000(v65, v66);
              sub_1B03B2000(v71, v72);
              sub_1B0398EFC(&v129, &qword_1EB6E49C8, &qword_1B0EC6FB8);
              v79 = v124;
              *v124 = v64;
              *(v79 + 8) = v123;
              *(v79 + 16) = v68;
              swift_storeEnumTagMultiPayload();
              v80 = v125;
              sub_1B0B5E6D0(v79, v125, type metadata accessor for MoveAndCopyMessages.CommandID);
              v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
              v82 = *(v81 + 48);
              v83 = *(v81 + 52);
              v84 = swift_allocObject();
              sub_1B0B5E798(v80, v84 + *(*v84 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
              v85 = v117;
              sub_1B0B028E4(&v126, v84);

              v46 = v85;
              sub_1B0391D50(v65, v66);

              sub_1B0B5E738(v79, type metadata accessor for MoveAndCopyMessages.CommandID);
              v47 = v115;
            }

            else
            {
              if (*(v46 + 105))
              {
                LODWORD(v115) = v63;
                v136 = v63;
                v137 = 0;
                v86 = v65;
                v138 = v65;
                v139 = v66;
                v87 = v66;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4848, &qword_1B0EC6FB0);
                v88 = sub_1B0E466A8();
                v89 = v136;
                v90 = v137;
                v91 = v138;
                v92 = v139;
                v93 = sub_1B03FE284(v136);
                if (v94)
                {
                  goto LABEL_36;
                }

                v88[(v93 >> 6) + 8] |= 1 << v93;
                *(v88[6] + 4 * v93) = v89;
                v95 = v88[7] + 24 * v93;
                *v95 = v90;
                *(v95 + 8) = v91;
                *(v95 + 16) = v92;
                v96 = v88[2];
                v77 = __OFADD__(v96, 1);
                v97 = v96 + 1;
                if (v77)
                {
                  goto LABEL_37;
                }

                v88[2] = v97;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                v114 = v86;
                sub_1B03B2000(v86, v87);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B03B2000(v86, v87);
                sub_1B03B2000(v91, v92);
                sub_1B0398EFC(&v136, &qword_1EB6E49C8, &qword_1B0EC6FB8);
                v49 = v121;
                *v121 = v64;
                *(v49 + 8) = v123;
                *(v49 + 16) = v88;
                swift_storeEnumTagMultiPayload();
                v123 = type metadata accessor for MoveAndCopyMessages.CommandID;
                v50 = v125;
                sub_1B0B5E6D0(v49, v125, type metadata accessor for MoveAndCopyMessages.CommandID);
                v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
                v52 = *(v51 + 48);
                v53 = *(v51 + 52);
                v54 = swift_allocObject();
                v55 = *(*v54 + 96);
                v113 = type metadata accessor for MoveAndCopyMessages.CommandID;
                sub_1B0B5E798(v50, v54 + v55, type metadata accessor for MoveAndCopyMessages.CommandID);
                v46 = v117;
                sub_1B0B028E4(&v126, v54);

                sub_1B0B5E738(v49, type metadata accessor for MoveAndCopyMessages.CommandID);
                LODWORD(v126) = v115;
                v56 = sub_1B041C1E8();
                MessageIdentifierSet.init(_:)(&v126, &type metadata for UID, v56);
                swift_storeEnumTagMultiPayload();
                v57 = v122;
                sub_1B0B5E6D0(v50, v122, v123);
                v58 = *(v51 + 48);
                v59 = *(v51 + 52);
                v60 = swift_allocObject();
                sub_1B0B5E798(v57, v60 + *(*v60 + 96), v113);
                sub_1B0B028E4(&v126, v60);

                sub_1B0391D50(v114, v87);

                v61 = v50;
              }

              else
              {
                v133 = v63;
                v134 = v65;
                v135 = v66;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4850, &qword_1B0EC6FC0);
                v98 = sub_1B0E466A8();
                v99 = v133;
                v100 = v134;
                v101 = v135;
                v102 = sub_1B03FE284(v133);
                if (v103)
                {
                  goto LABEL_35;
                }

                v98[(v102 >> 6) + 8] |= 1 << v102;
                *(v98[6] + 4 * v102) = v99;
                v104 = (v98[7] + 16 * v102);
                *v104 = v100;
                v104[1] = v101;
                v105 = v98[2];
                v77 = __OFADD__(v105, 1);
                v106 = v105 + 1;
                if (v77)
                {
                  goto LABEL_38;
                }

                v98[2] = v106;
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B03B2000(v65, v66);
                _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                sub_1B03B2000(v65, v66);
                sub_1B03B2000(v100, v101);
                sub_1B0398EFC(&v133, &qword_1EB6E49D0, &qword_1B0EC6FC8);
                v107 = v120;
                *v120 = v64;
                *(v107 + 8) = v123;
                *(v107 + 16) = v98;
                swift_storeEnumTagMultiPayload();
                v108 = v125;
                sub_1B0B5E6D0(v107, v125, type metadata accessor for MoveAndCopyMessages.CommandID);
                v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
                v110 = *(v109 + 48);
                v111 = *(v109 + 52);
                v112 = swift_allocObject();
                sub_1B0B5E798(v108, v112 + *(*v112 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
                sub_1B0B028E4(&v126, v112);

                sub_1B0391D50(v65, v66);

                v61 = v107;
              }

              sub_1B0B5E738(v61, type metadata accessor for MoveAndCopyMessages.CommandID);
            }

            v45 = v118;
            ++v47;
            v48 += 5;
            if (v116 == v47)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
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

        else
        {
LABEL_29:
        }
      }

      else
      {

        *(v117 + 120) = 1;
      }
    }
  }
}