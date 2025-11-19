uint64_t CUJSONValue.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v4 == 1)
      {
        MEMORY[0x24C1B4F40](1);
        return sub_247BF7480();
      }

      else
      {
        MEMORY[0x24C1B4F40](2);

        return sub_247BC111C(a1, v3);
      }
    }

    else
    {
      MEMORY[0x24C1B4F40](0);
      result = MEMORY[0x24C1B4F40](*(v3 + 16));
      v8 = *(v3 + 16);
      if (v8)
      {
        v9 = (v3 + 48);
        do
        {
          v11 = *(v9 - 2);
          v12 = *(v9 - 1);
          v10 = *v9;
          v9 += 24;
          sub_247BC2D0C(v11, v12, v10);
          CUJSONValue.hash(into:)(a1);
          result = sub_247BC2D30(v11, v12, v10);
          --v8;
        }

        while (v8);
      }
    }
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v4 == 5)
    {
      v7 = *(v1 + 8);
      MEMORY[0x24C1B4F40](6);

      return sub_247BF6500();
    }

    else
    {
      return MEMORY[0x24C1B4F40](5);
    }
  }

  else if (v4 == 3)
  {
    MEMORY[0x24C1B4F40](3);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x24C1B4F60](v5);
  }

  else
  {
    MEMORY[0x24C1B4F40](4);
    return MEMORY[0x24C1B4F60](v3);
  }

  return result;
}

uint64_t CUJSONValue.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_247BF7460();
  CUJSONValue.hash(into:)(v3);
  return sub_247BF74A0();
}

uint64_t sub_247BA8AC4()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_247BF7460();
  CUJSONValue.hash(into:)(v3);
  return sub_247BF74A0();
}

uint64_t sub_247BA8B1C()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_247BF7460();
  CUJSONValue.hash(into:)(v3);
  return sub_247BF74A0();
}

uint64_t CUJSONValue.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 2)
  {
    if (*(v0 + 16))
    {
      if (v2 == 1)
      {
        if (v1)
        {
          return 1702195828;
        }

        else
        {
          return 0x65736C6166;
        }
      }

      else
      {
        return Dictionary<>.cuSortedDescription.getter(v1);
      }
    }

    else
    {
      return MEMORY[0x24C1B41A0](v1, &type metadata for CUJSONValue);
    }
  }

  else if (*(v0 + 16) > 4u)
  {
    if (v2 == 5)
    {
      MEMORY[0x24C1B4020](v1, *(v0 + 8));
      MEMORY[0x24C1B4020](34, 0xE100000000000000);
      return 34;
    }

    else
    {
      return 1819047278;
    }
  }

  else if (v2 == 3)
  {
    v3 = *v0;
    return sub_247BF68D0();
  }

  else
  {
    v5 = *v0;
    sub_247BC2D54();
    return sub_247BF6B90();
  }
}

uint64_t Dictionary<>.cuSortedDescription.getter(uint64_t a1)
{
  v29 = 91;
  v30 = 0xE100000000000000;
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_247BBE598(*(a1 + 16), 0);
  v4 = sub_247BC04E4(&v27, (v3 + 4), v1, a1);

  sub_247B9472C();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v27 = v3;
  v5 = 0;
  sub_247BBF974(&v27);
  v26 = v27;
  v6 = v27[2];
  if (!v6)
  {
LABEL_35:

    MEMORY[0x24C1B4020](93, 0xE100000000000000);
    return v29;
  }

  v7 = 0;
  v8 = (v27 + 8);
  while (v7 < v6)
  {
    v11 = *(v8 - 2);
    v12 = *(v8 - 1);
    v13 = *v8;
    v15 = *(v8 - 4);
    v14 = *(v8 - 3);
    if (v7)
    {
      v16 = 44;
    }

    else
    {
      v16 = 0;
    }

    if (v7)
    {
      v17 = 0xE100000000000000;
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    v27 = 0;
    v28 = 0xE000000000000000;

    sub_247BC2D0C(v11, v12, v13);
    MEMORY[0x24C1B4020](v16, v17);

    MEMORY[0x24C1B4020](34, 0xE100000000000000);
    MEMORY[0x24C1B4020](v15, v14);

    MEMORY[0x24C1B4020](14882, 0xE200000000000000);
    if (v13 <= 2)
    {
      if (v13)
      {
        if (v13 == 1)
        {
          if (v11)
          {
            v9 = 1702195828;
          }

          else
          {
            v9 = 0x65736C6166;
          }

          if (v11)
          {
            v10 = 0xE400000000000000;
          }

          else
          {
            v10 = 0xE500000000000000;
          }

          goto LABEL_13;
        }

        v19 = Dictionary<>.cuSortedDescription.getter(v11);
        v10 = v20;
        v21 = v11;
        v22 = v12;
        v23 = 2;
      }

      else
      {
        v19 = MEMORY[0x24C1B41A0](v11, &type metadata for CUJSONValue);
        v10 = v24;
        v21 = v11;
        v22 = v12;
        v23 = 0;
      }

      sub_247BC2D30(v21, v22, v23);
      v9 = v19;
    }

    else if (v13 > 4)
    {
      if (v13 == 5)
      {
        MEMORY[0x24C1B4020](v11, v12);
        MEMORY[0x24C1B4020](34, 0xE100000000000000);
        sub_247BC2D30(v11, v12, 5);
        v9 = 34;
        v10 = 0xE100000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
        v9 = 1819047278;
      }
    }

    else
    {
      if (v13 == 3)
      {
        v9 = sub_247BF68D0();
      }

      else
      {
        sub_247BC2D54();
        v9 = sub_247BF6B90();
      }

      v10 = v18;
    }

LABEL_13:
    ++v7;
    MEMORY[0x24C1B4020](v9, v10);

    v5 = v28;
    MEMORY[0x24C1B4020](v27, v28);

    v6 = v26[2];
    v8 += 40;
    if (v7 == v6)
    {
      goto LABEL_35;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t CUJSONValue.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = sub_247BBE27C(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = (a1 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      sub_247BC2D0C(v7, v8, *v6);
      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_247BBE27C((v10 > 1), v11 + 1, 1, v5);
      }

      v6 += 24;
      *(v5 + 2) = v11 + 1;
      v12 = &v5[24 * v11];
      *(v12 + 4) = v7;
      *(v12 + 5) = v8;
      v12[48] = v9;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t CUJSONValue.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

unsigned __int8 *sub_247BA90C0@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t CUJSONValue.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *(a1 + 16);
  if (!v32)
  {
    v4 = MEMORY[0x277D84F98];
LABEL_17:

    *a2 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
    return result;
  }

  v2 = 0;
  v3 = (a1 + 64);
  v4 = MEMORY[0x277D84F98];
  v31 = a1;
  while (v2 < *(a1 + 16))
  {
    v11 = *(v3 - 4);
    v10 = *(v3 - 3);
    v13 = *(v3 - 2);
    v12 = *(v3 - 1);
    v14 = *v3;

    sub_247BC2D0C(v13, v12, v14);

    sub_247BC2D0C(v13, v12, v14);
    sub_247BC2D30(v13, v12, v14);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_247B9B134(v11, v10);
    v18 = v4[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_19;
    }

    v22 = v17;
    if (v4[3] < v21)
    {
      sub_247BBEF44(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_247B9B134(v11, v10);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v28 = v16;
    sub_247BBF734();
    v16 = v28;
    if (v22)
    {
LABEL_3:
      v5 = v16;

      v6 = v4[7] + 24 * v5;
      v7 = *v6;
      v8 = *(v6 + 8);
      *v6 = v13;
      *(v6 + 8) = v12;
      v9 = *(v6 + 16);
      *(v6 + 16) = v14;
      sub_247BC2D30(v7, v8, v9);
      goto LABEL_4;
    }

LABEL_12:
    v4[(v16 >> 6) + 8] |= 1 << v16;
    v24 = (v4[6] + 16 * v16);
    *v24 = v11;
    v24[1] = v10;
    v25 = v4[7] + 24 * v16;
    *v25 = v13;
    *(v25 + 8) = v12;
    *(v25 + 16) = v14;
    v26 = v4[2];
    v20 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v4[2] = v27;
LABEL_4:
    ++v2;
    v3 += 40;
    a1 = v31;
    if (v32 == v2)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_247BF73C0();
  __break(1u);
  return result;
}

void CUJSONValue.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

void *sub_247BA931C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

uint64_t CUJSONValue.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  return result;
}

void *sub_247BA9340@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  return result;
}

void CUJSONValue.init(nilLiteral:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
}

void sub_247BA9364(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
}

uint64_t CUJSONValue.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 5;
  return result;
}

void *sub_247BA9384@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 5;
  return result;
}

uint64_t CUKeyPathModifiable.set<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = MEMORY[0x277D84308];
  v6 = *(*(*(*a1 + *MEMORY[0x277D84308] + 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(&v10 - v7);
  swift_setAtWritableKeyPath();
  return (*(*(*(v4 + *v5) - 8) + 32))(a2, v2);
}

uint64_t CUKeyPathModifiable.setIf<A>(_:_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = MEMORY[0x277D84308];
  v8 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v16 - v12;
  if (v14(v11))
  {
    (*(v9 + 16))(v13, a2, v8);
    swift_setAtWritableKeyPath();
  }

  return (*(*(*(v6 + *v7) - 8) + 32))(a3, v3);
}

uint64_t CUKeyPathModifiable.setIfNonNil<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = *(v8 + 16);
  v13(&v18 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD98, &qword_247BFA8E8);
  if (swift_dynamicCast())
  {
    v18 = a3;
    v19 = v3;
    sub_247B93B4C(v20, v22);
    v15 = v23;
    v16 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    if ((*(v16 + 8))(v15, v16))
    {
      (*(*(*(v6 + *MEMORY[0x277D84308]) - 8) + 32))(v18, v19);
      return __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    a3 = v18;
    v3 = v19;
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_247B9CAD0(v20, &qword_27EE5DDA0, &qword_247BFA8F0);
  }

  (v13)(v12, a2, v7);
  swift_setAtWritableKeyPath();
  return (*(*(*(v6 + *MEMORY[0x277D84308]) - 8) + 32))(a3, v3);
}

void CULogHandle.ulog(_:_:)(uint64_t a1)
{
  v3 = sub_247BF6470();
  [v1 ulog:a1 message:v3];
}

uint64_t CUOrderedDictionary.__allocating_init()()
{
  v0 = swift_allocObject();
  CUOrderedDictionary.init()();
  return v0;
}

void *CUOrderedDictionary.init()()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  type metadata accessor for CUOrderedDictionary.Node();
  v4 = sub_247BF62B0();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v4;
  return v0;
}

uint64_t CUOrderedDictionary.append(key:value:)(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v4 = *(*v2 + 88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v25 - v8;
  v11 = *(v10 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v7);
  v15 = &v25 - v14;
  v27 = *(v16 + 96);
  type metadata accessor for CUOrderedDictionary.Node();
  v17 = *(v12 + 16);
  v28 = a1;
  v17(v15, a1, v11);
  (*(v5 + 16))(v9, v26, v4);
  v18 = v2[4];
  v19 = sub_247BAA694(v15, v9, v18, 0);
  v20 = v19;
  if (!v2[3])
  {
    v2[3] = v19;
  }

  if (v18)
  {
    v21 = *(*v18 + 128);
    v22 = *(v18 + v21);
    *(v18 + v21) = v20;
  }

  v23 = v2[4];
  v2[4] = v20;
  swift_retain_n();

  v17(v15, v28, v11);
  v29 = v20;
  swift_beginAccess();
  sub_247BF6330();
  sub_247BF6350();
  swift_endAccess();
}

uint64_t sub_247BAA694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v5 + 48);
  v11 = *(v5 + 52);
  v12 = swift_allocObject();
  v13 = *v12;
  *(v12 + *(*v12 + 120)) = 0;
  *(v12 + *(*v12 + 128)) = 0;
  (*(*(*(v13 + 80) - 8) + 32))(v12 + *(*v12 + 104), a1);
  (*(*(*(v13 + 88) - 8) + 32))(v12 + *(*v12 + 112), a2);
  *(v12 + *(*v12 + 120)) = a3;
  *(v12 + *(*v12 + 128)) = a4;
  return v12;
}

uint64_t CUOrderedDictionary.remove(key:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[12];
  type metadata accessor for CUOrderedDictionary.Node();
  sub_247BF6330();
  sub_247BF6300();
  swift_endAccess();
  if (v18)
  {
    if (v1[3] == v18)
    {
      v1[3] = *(v18 + *(*v18 + 128));
    }

    if (v1[4] == v18)
    {
      v1[4] = *(v18 + *(*v18 + 120));
    }

    v9 = *v18;
    v10 = *(*v18 + 120);
    v11 = *(v18 + v10);
    if (v11)
    {
      v12 = *(*v11 + 128);
      v13 = *(v11 + v12);
      *(v11 + v12) = *(v18 + *(*v18 + 128));

      v9 = *v18;
    }

    v14 = *(v18 + *(v9 + 128));
    if (v14)
    {
      v15 = *(*v14 + 120);
      v16 = *(v14 + v15);
      *(v14 + v15) = *(v18 + v10);

      v9 = *v18;
    }

    v7 = *(v5 - 8);
    (*(v7 + 16))(a1, v18 + *(v9 + 112), v5);

    v8 = 0;
  }

  else
  {
    v7 = *(v5 - 8);
    v8 = 1;
  }

  return (*(v7 + 56))(a1, v8, 1, v5);
}

Swift::Void __swiftcall CUOrderedDictionary.removeAll()()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  type metadata accessor for CUOrderedDictionary.Node();
  sub_247BF6330();
  sub_247BF6320();
  swift_endAccess();
  v6 = v1[3];
  v1[3] = 0;

  v7 = v1[4];
  v1[4] = 0;
}

uint64_t CUOrderedDictionary.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v3[10];
  v6 = v3[11];
  v7 = v3[12];
  type metadata accessor for CUOrderedDictionary.Node();
  sub_247BF6340();
  swift_endAccess();
  if (!v10)
  {
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  v8 = *(v6 - 8);
  (*(v8 + 16))(a1, v10 + *(*v10 + 112), v6);

  return (*(v8 + 56))(a1, 0, 1, v6);
}

uint64_t sub_247BAADC4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v9 = sub_247BF6AC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - v13;
  v15 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v21 - v16;
  (*(v18 + 16))(&v21 - v16, a3, v8);
  (*(v10 + 16))(v14, a1, v9);
  v19 = *a2;
  return CUOrderedDictionary.subscript.setter(v14, v17);
}

uint64_t CUOrderedDictionary.subscript.setter(char *a1, uint64_t a2)
{
  v22 = *v2;
  v5 = *(v22 + 88);
  v6 = sub_247BF6AC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - v13;
  v15 = *(v5 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v21 - v17;
  (*(v7 + 16))(v14, a1, v6);
  if ((*(v15 + 48))(v14, 1, v5) == 1)
  {
    v19 = *(v7 + 8);
    v19(v14, v6);
    CUOrderedDictionary.remove(key:)(v11);
    (*(*(*(v22 + 80) - 8) + 8))(a2);
    v19(a1, v6);
    return (v19)(v11, v6);
  }

  else
  {
    (*(v15 + 32))(v18, v14, v5);
    CUOrderedDictionary.append(key:value:)(a2, v18);
    (*(*(*(v22 + 80) - 8) + 8))(a2);
    (*(v7 + 8))(a1, v6);
    return (*(v15 + 8))(v18, v5);
  }
}

void (*CUOrderedDictionary.subscript.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *v1;
  v7 = *(*v1 + 88);
  v8 = sub_247BF6AC0();
  v5[1] = v8;
  v9 = *(v8 - 8);
  v5[2] = v9;
  v10 = *(v9 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[4] = v11;
  v13 = *(v6 + 80);
  v5[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v5[6] = v14;
  v16 = *(v14 + 64);
  if (v3)
  {
    v5[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v5[7] = malloc(*(v14 + 64));
    v17 = malloc(v16);
  }

  v5[8] = v17;
  (*(v15 + 16))();
  CUOrderedDictionary.subscript.getter(v12);
  return sub_247BAB420;
}

void sub_247BAB420(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v10 = v2[2];
    v11 = *v2;
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v3, v4, v5);
    CUOrderedDictionary.subscript.setter(v8, v3);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    v12 = *v2;
    CUOrderedDictionary.subscript.setter(v7, v4);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t CUOrderedDictionary.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = *(v4 + *(*v4 + 128));
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v8 = *(TupleTypeMetadata2 + 48);
    (*(*(v5 - 8) + 16))(a2, v4 + *(*v4 + 104), v5);
    (*(*(v6 - 8) + 16))(a2 + v8, v4 + *(*v4 + 112), v6);

    v9 = *(*(TupleTypeMetadata2 - 8) + 56);
    v10 = a2;
    v11 = 0;
    v12 = TupleTypeMetadata2;
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    v15 = swift_getTupleTypeMetadata2();
    v9 = *(*(v15 - 8) + 56);
    v12 = v15;
    v10 = a2;
    v11 = 1;
  }

  return v9(v10, v11, 1, v12);
}

uint64_t sub_247BAB6C8()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 112));
  v2 = *(v0 + *(*v0 + 120));

  v3 = *(v0 + *(*v0 + 128));

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t CUOrderedSet.count.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[2];
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for CUOrderedSet.Node();

  v5 = sub_247BF6310();

  return v5;
}

uint64_t CUOrderedSet.__allocating_init()()
{
  v0 = swift_allocObject();
  CUOrderedSet.init()();
  return v0;
}

void *CUOrderedSet.init()()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for CUOrderedSet.Node();
  v3 = sub_247BF62B0();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v3;
  return v0;
}

uint64_t CUOrderedSet.append(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v21 - v7;
  v10 = *(v9 + 88);
  v11 = type metadata accessor for CUOrderedSet.Node();
  v12 = *(v5 + 16);
  v12(v8, v3, v4);
  v13 = *(v2 + 32);
  v21[1] = v11;
  v14 = sub_247BABB84(v8, v13, 0);
  v15 = v14;
  if (!*(v2 + 24))
  {
    *(v2 + 24) = v14;
  }

  if (v13)
  {
    v16 = *(*v13 + 112);
    v17 = v3;
    v18 = *(v13 + v16);
    *(v13 + v16) = v15;

    v3 = v17;
  }

  v19 = *(v2 + 32);
  *(v2 + 32) = v15;
  swift_retain_n();

  v12(v8, v3, v4);
  v21[5] = v15;
  swift_beginAccess();
  sub_247BF6330();
  sub_247BF6350();
  swift_endAccess();
}

uint64_t sub_247BABB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = *v9;
  *(v9 + *(*v9 + 104)) = 0;
  *(v9 + *(*v9 + 112)) = 0;
  (*(*(*(v10 + 80) - 8) + 32))(v9 + *(*v9 + 96), a1);
  *(v9 + *(*v9 + 104)) = a2;
  *(v9 + *(*v9 + 112)) = a3;
  return v9;
}

uint64_t CUOrderedSet.remove(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  type metadata accessor for CUOrderedSet.Node();
  sub_247BF6330();
  sub_247BF6300();
  swift_endAccess();
  if (v17)
  {
    if (v1[3] == v17)
    {
      v1[3] = *(v17 + *(*v17 + 112));
    }

    if (v1[4] == v17)
    {
      v1[4] = *(v17 + *(*v17 + 104));
    }

    v8 = *v17;
    v9 = *(*v17 + 104);
    v10 = *(v17 + v9);
    if (v10)
    {
      v11 = *(*v10 + 112);
      v12 = *(v10 + v11);
      *(v10 + v11) = *(v17 + *(*v17 + 112));

      v8 = *v17;
    }

    v13 = *(v17 + *(v8 + 112));
    if (v13)
    {
      v14 = *(*v13 + 104);
      v15 = *(v13 + v14);
      *(v13 + v14) = *(v17 + v9);

      v8 = *v17;
    }

    v6 = *(v4 - 8);
    (*(v6 + 16))(a1, v17 + *(v8 + 96), v4);

    v7 = 0;
  }

  else
  {
    v6 = *(v4 - 8);
    v7 = 1;
  }

  return (*(v6 + 56))(a1, v7, 1, v4);
}

Swift::Void __swiftcall CUOrderedSet.removeAll()()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for CUOrderedSet.Node();
  sub_247BF6330();
  sub_247BF6320();
  swift_endAccess();
  v5 = v1[3];
  v1[3] = 0;

  v6 = v1[4];
  v1[4] = 0;
}

uint64_t CUOrderedSet.removeFirst()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  if (v3)
  {
    v4 = *(*v3 + 96);
    v5 = v1[3];

    CUOrderedSet.remove(_:)(a1);
  }

  else
  {
    v7 = *(*(*(*v1 + 80) - 8) + 56);

    return v7(a1, 1, 1);
  }
}

uint64_t CUOrderedSet.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = *(v4 + *(*v4 + 112));
    v5 = *(*v4 + 96);
    v6 = *(a1 + 16);
    v13 = *(v6 - 8);
    v7 = *(v13 + 16);

    v7(a2, v4 + v5, v6);

    v8 = *(v13 + 56);
    v9 = a2;
    v10 = 0;
    v11 = v6;
  }

  else
  {
    v11 = *(a1 + 16);
    v8 = *(*(v11 - 8) + 56);
    v9 = a2;
    v10 = 1;
  }

  return v8(v9, v10, 1, v11);
}

uint64_t sub_247BAC274()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(v0 + *(*v0 + 104));

  v2 = *(v0 + *(*v0 + 112));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_247BAC35C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t CUOrderedSet.__deallocating_deinit()
{
  CUOrderedSet.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_247BAC3C0@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  CUOrderedSet.makeIterator()(a1);
}

uint64_t sub_247BAC3F8()
{
  v1 = sub_247BC3054();
  v2 = *v0;

  return v1;
}

uint64_t _s14CoreUtilsSwift21CUOSStateHandlerAsyncC5title13dispatchQueue6logger05stateE0ACSS_So03OS_H13_queue_serialC2os6LoggerVSSSgyYaYbYActcfC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v39 = a5;
  v44 = a4;
  v37 = a1;
  v38 = sub_247BF6A70();
  v12 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_247BF62A0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_247BF6A10();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v7 + 48);
  v22 = *(v7 + 52);
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__osStateHandler) = 0;
  *(v23 + 16) = a3;
  v24 = OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__logger;
  v25 = sub_247BF60B0();
  v42 = *(v25 - 8);
  v43 = v25;
  (*(v42 + 16))(v23 + v24, a4, v25);
  v26 = (v23 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__stateHandler);
  *v26 = v39;
  v26[1] = a6;
  v40 = a6;
  v27 = (v23 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__title);
  *v27 = v37;
  v27[1] = a2;
  v36[1] = sub_247BC3818(0, &qword_27EE5DD10, 0x277D85C90);
  (*(v17 + 104))(v20, *MEMORY[0x277D85268], v16);
  swift_bridgeObjectRetain_n();
  v39 = a3;

  sub_247BF6290();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_247BC2A28(&qword_27EE5DDC0, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDC8, &qword_247BFA910);
  sub_247BC34F4(&qword_27EE5DDD0, &qword_27EE5DDC8, &qword_247BFA910);
  sub_247BF6BD0();
  v28 = sub_247BF6A80();
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = objc_allocWithZone(MEMORY[0x277D028D0]);

  v31 = sub_247BF6470();

  aBlock[4] = sub_247BC2DD8;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247BBD9D4;
  aBlock[3] = &block_descriptor;
  v32 = _Block_copy(aBlock);
  v33 = [v30 initWithTitle:v31 dispatchQueue:v28 handler:v32];

  _Block_release(v32);

  (*(v42 + 8))(v44, v43);

  v34 = *(v23 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__osStateHandler);
  *(v23 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__osStateHandler) = v33;

  return v23;
}

uint64_t _s14CoreUtilsSwift21CUOSStateHandlerAsyncC5title13dispatchQueue6logger05stateE0ACSS_So03OS_H13_queue_serialC2os6LoggerVSSSgyYaYbYActcfc(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v39 = a4;
  v40 = a6;
  v35 = a5;
  v33[2] = a1;
  v37 = sub_247BF6A70();
  v12 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_247BF62A0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_247BF6A10();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__osStateHandler) = 0;
  *(v7 + 16) = a3;
  v21 = OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__logger;
  v38 = sub_247BF60B0();
  v34 = *(v38 - 8);
  (*(v34 + 16))(v7 + v21, a4, v38);
  v22 = (v7 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__stateHandler);
  v23 = v40;
  *v22 = v35;
  v22[1] = v23;
  v24 = (v7 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__title);
  *v24 = a1;
  v24[1] = a2;
  v33[1] = sub_247BC3818(0, &qword_27EE5DD10, 0x277D85C90);
  (*(v17 + 104))(v20, *MEMORY[0x277D85268], v16);
  swift_bridgeObjectRetain_n();
  v35 = a3;

  sub_247BF6290();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_247BC2A28(&qword_27EE5DDC0, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDC8, &qword_247BFA910);
  sub_247BC34F4(&qword_27EE5DDD0, &qword_27EE5DDC8, &qword_247BFA910);
  sub_247BF6BD0();
  v25 = sub_247BF6A80();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = objc_allocWithZone(MEMORY[0x277D028D0]);

  v28 = sub_247BF6470();

  aBlock[4] = sub_247BC5BD8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_247BBD9D4;
  aBlock[3] = &block_descriptor_24;
  v29 = _Block_copy(aBlock);
  v30 = [v27 initWithTitle:v28 dispatchQueue:v25 handler:v29];

  _Block_release(v29);

  (*(v34 + 8))(v39, v38);

  v31 = *(v7 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__osStateHandler);
  *(v7 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__osStateHandler) = v30;

  return v7;
}

uint64_t sub_247BACD60()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = CUOSStateHandlerAsync.generate()();

    if (v0.value._object)
    {
      return v0.value._countAndFlagsBits;
    }
  }

  return 7104878;
}

Swift::String_optional __swiftcall CUOSStateHandlerAsync.generate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32[-1] - v7;

  v9 = sub_247BF6090();
  v10 = sub_247BF6A00();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_247BBE628(*(v1 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__title), *(v1 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__title + 8), v32);
    _os_log_impl(&dword_247B92000, v9, v10, "Generating %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x24C1B5910](v12, -1, -1);
    MEMORY[0x24C1B5910](v11, -1, -1);
  }

  type metadata accessor for CUOSStateHandlerAsync.OutputWrapper();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = dispatch_semaphore_create(0);
  v15 = *(v1 + 16);
  v16 = sub_247BF67E0();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v8, 1, 1, v16);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = v13;
  v19[3] = v18;
  v19[4] = v14;
  sub_247BC5B0C(v8, v6, &qword_27EE5DD00, &qword_247BFA890);
  v20 = (*(v17 + 48))(v6, 1, v16);
  v21 = v15;

  v22 = v14;
  if (v20 == 1)
  {
    sub_247B9CAD0(v6, &qword_27EE5DD00, &qword_247BFA890);
  }

  else
  {
    sub_247BF67D0();
    (*(v17 + 8))(v6, v16);
  }

  v23 = sub_247BC2908();
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_247BFA920;
  *(v24 + 24) = v19;
  v32[1] = 6;
  v32[2] = 0;
  v32[3] = v21;
  v32[4] = v23;
  v25 = v21;

  swift_task_create();
  sub_247B9CAD0(v8, &qword_27EE5DD00, &qword_247BFA890);

  sub_247BF6A50();

  v26 = *(v13 + 16);
  v27 = *(v13 + 24);

  v28 = v26;
  v29 = v27;
  result.value._object = v29;
  result.value._countAndFlagsBits = v28;
  return result;
}

uint64_t sub_247BAD1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_247BAD1E8, 0, 0);
}

uint64_t sub_247BAD1E8()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__stateHandler);
    v0[8] = *(Strong + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__stateHandler + 8);

    v11 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_247BAD370;

    return v11();
  }

  else
  {
    v7 = v0[7];
    v8 = v0[5];
    v9 = *(v8 + 24);
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;

    sub_247BF6A60();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_247BAD370(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;

  return MEMORY[0x2822009F8](sub_247BAD490, 0, 0);
}

uint64_t sub_247BAD490()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v2 + 24);
  *(v2 + 16) = *(v0 + 80);

  sub_247BF6A60();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t CUOSStateHandlerAsync.deinit()
{
  v1 = OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__logger;
  v2 = sub_247BF60B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__stateHandler + 8);

  v4 = *(v0 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__title + 8);

  return v0;
}

uint64_t CUOSStateHandlerAsync.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__logger;
  v2 = sub_247BF60B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__stateHandler + 8);

  v4 = *(v0 + OBJC_IVAR____TtC14CoreUtilsSwift21CUOSStateHandlerAsync__title + 8);

  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t CUTask.__allocating_init(_:cancelOnDeinit:)(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a1;
  return result;
}

uint64_t CUTask.init(_:cancelOnDeinit:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t CUTask.deinit()
{
  v1 = *v0;
  if (*(v0 + 16) == 1)
  {
    v2 = *(v0 + 24);
    v3 = v1[10];
    v4 = v1[11];
    v5 = v1[12];

    sub_247BF67F0();
  }

  v6 = *(v0 + 24);

  return v0;
}

uint64_t CUTask.__deallocating_deinit()
{
  CUTask.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall CUTask.cancel()()
{
  v1 = v0[3];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  sub_247BF67F0();
}

uint64_t _s14CoreUtilsSwift6CUTaskCAAs5NeverORs_rlE8priority14cancelOnDeinit9operationACyxAEGScPSg_SbxyYaYbYActcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  sub_247BC5B0C(a1, &v14 - v10, &qword_27EE5DD00, &qword_247BFA890);
  v12 = sub_247BAD910(0, 0, v11, a3, a4, *(v4 + 80));
  sub_247B9CAD0(a1, &qword_27EE5DD00, &qword_247BFA890);
  result = swift_allocObject();
  *(result + 16) = 1;
  *(result + 24) = v12;
  return result;
}

uint64_t sub_247BAD910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29[-1] - v13;
  v30[0] = a4;
  v30[1] = a5;
  sub_247BC5B0C(a3, &v29[-1] - v13, &qword_27EE5DD00, &qword_247BFA890);
  v15 = sub_247BF67E0();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_247B9CAD0(v14, &qword_27EE5DD00, &qword_247BFA890);
  }

  else
  {
    sub_247BF67D0();
    (*(v16 + 8))(v14, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_247BF6740();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = sub_247BF64B0();
      v24 = *(v23 + 16);
      sub_247BBDB40(v23 + 32, v30, a6, v29);

      v25 = v29[0];
      sub_247B9CAD0(a3, &qword_27EE5DD00, &qword_247BFA890);

      return v25;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_247B9CAD0(a3, &qword_27EE5DD00, &qword_247BFA890);
  v26 = swift_allocObject();
  v26[2] = a6;
  v26[3] = a4;
  v26[4] = a5;
  if (v22 | v20)
  {
    v29[1] = 0;
    v29[2] = 0;
    v29[3] = v20;
    v29[4] = v22;
  }

  return swift_task_create();
}

uint64_t _s14CoreUtilsSwift6CUTaskCAAs5Error_pRs_rlE8priority14cancelOnDeinit9operationACyxsAD_pGScPSg_SbxyYaYbKYActcfC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  sub_247BC5B0C(a1, &v16 - v11, &qword_27EE5DD00, &qword_247BFA890);
  v13 = *(v4 + 80);
  v14 = sub_247BADCB8(0, 0, v12, a3, a4);
  sub_247B9CAD0(a1, &qword_27EE5DD00, &qword_247BFA890);
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = v14;
  return result;
}

uint64_t sub_247BADCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_247BC5B0C(a3, &v26[-1] - v11, &qword_27EE5DD00, &qword_247BFA890);
  v13 = sub_247BF67E0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_247B9CAD0(v12, &qword_27EE5DD00, &qword_247BFA890);
  }

  else
  {
    sub_247BF67D0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_247BF6740();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_247BF64B0();
      v22 = *(v21 + 16);
      sub_247BBDE1C(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_247B9CAD0(a3, &qword_27EE5DD00, &qword_247BFA890);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_247B9CAD0(a3, &qword_27EE5DD00, &qword_247BFA890);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t Task.cuTask.getter(uint64_t a1)
{
  type metadata accessor for CUTask();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *(v2 + 24) = a1;

  return v2;
}

id CUTrafficFlags.description.getter()
{
  result = CUTrafficFlagsToString();
  if (result)
  {
    v1 = result;
    v2 = sub_247BF6480();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_247BAE0F0()
{
  v1 = *v0;
  result = CUTrafficFlagsToString();
  if (result)
  {
    v3 = result;
    v4 = sub_247BF6480();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CUIPAddress.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDD8, &qword_247BFA930);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v51 - v5;
  v6 = sub_247BF6220();
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDE0, &qword_247BFA938);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v51 - v12;
  v14 = sub_247BF61E0();
  v57 = *(v14 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CUIPAddress(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v63;
  sub_247BF74C0();
  if (v24)
  {
    goto LABEL_3;
  }

  v52 = v17;
  v53 = v21;
  v63 = v18;
  v25 = v59;
  __swift_project_boxed_opaque_existential_1(&v60, v62);
  v26 = sub_247BF71A0();
  v28 = v27;
  __swift_destroy_boxed_opaque_existential_1Tm(&v60);
  v31 = v23;

  v32 = v13;
  sub_247BF6200();
  v33 = v57;
  v34 = v13;
  v35 = v14;
  if ((*(v57 + 48))(v34, 1, v14) != 1)
  {

    v46 = *(v33 + 32);
    v47 = v52;
    v46(v52, v32, v14);
    v48 = v53;
    v46(v53, v47, v35);
    v39 = v58;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_247BC2F38(v48, v39);
    v29 = v31;
    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  sub_247B9CAD0(v32, &qword_27EE5DDE0, &qword_247BFA938);

  sub_247BF6240();
  v36 = v55;
  v37 = v56;
  v38 = (*(v56 + 48))(v25, 1, v55);
  v39 = v58;
  if (v38 != 1)
  {

    v49 = *(v37 + 32);
    v50 = v54;
    v49(v54, v25, v36);
    v48 = v53;
    v49(v53, v50, v36);
    goto LABEL_10;
  }

  sub_247B9CAD0(v25, &qword_27EE5DDD8, &qword_247BFA930);
  v40 = sub_247BF6D40();
  swift_allocError();
  v42 = v41;
  v43 = v31;
  v44 = v31[3];
  v45 = v31[4];
  __swift_project_boxed_opaque_existential_1(v43, v44);
  sub_247BF74B0();
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_247BF6CF0();

  v60 = 0xD00000000000001ALL;
  v61 = 0x8000000247C00F60;
  MEMORY[0x24C1B4020](v26, v28);

  sub_247BF6D30();
  (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84168], v40);
  swift_willThrow();
  v23 = v43;
LABEL_3:
  v29 = v23;
  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

uint64_t CUIPAddress.encode(to:)(void *a1)
{
  v2 = sub_247BF6220();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - v7;
  v8 = sub_247BF61E0();
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = type metadata accessor for CUIPAddress(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74F0();
  sub_247BC2F9C(v29, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v26;
    v20 = v27;
    v22 = v28;
    (*(v27 + 32))(v26, v18, v28);
    (*(v20 + 16))(v6, v21, v22);
    sub_247BF6490();
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    sub_247BF7210();
    (*(v20 + 8))(v21, v22);
  }

  else
  {
    v23 = v25;
    (*(v25 + 32))(v14, v18, v8);
    (*(v23 + 16))(v12, v14, v8);
    sub_247BF6490();
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    sub_247BF7210();
    (*(v23 + 8))(v14, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v30);
}

uint64_t CUIPAddress.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDD8, &qword_247BFA930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - v7;
  v9 = sub_247BF6220();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDE0, &qword_247BFA938);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v16 = sub_247BF61E0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  v21 = a1;
  sub_247BF6200();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v22 = v41;
    sub_247B9CAD0(v15, &qword_27EE5DDE0, &qword_247BFA938);

    v23 = v21;
    sub_247BF6240();
    v24 = v38;
    if ((*(v38 + 48))(v8, 1, v9) == 1)
    {
      sub_247B9CAD0(v8, &qword_27EE5DDD8, &qword_247BFA930);
      v25 = *MEMORY[0x277CCA590];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDE8, &qword_247BFA940);
      inited = swift_initStackObject();
      *(inited + 32) = 0x4D726F7272457563;
      *(inited + 16) = xmmword_247BFA840;
      *(inited + 40) = 0xEA00000000006773;
      v39 = 0;
      v40 = 0xE000000000000000;
      v27 = v25;
      sub_247BF6CF0();

      v39 = 0xD00000000000001ALL;
      v40 = 0x8000000247C00F60;
      MEMORY[0x24C1B4020](v23, a2);

      v28 = v39;
      v29 = v40;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v28;
      *(inited + 56) = v29;
      sub_247BC1964(inited);
      swift_setDeallocating();
      sub_247B9CAD0(inited + 32, &qword_27EE5DDF0, &qword_247BFA948);
      v30 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v31 = sub_247BF62E0();

      [v30 initWithDomain:v27 code:-6705 userInfo:v31];

      return swift_willThrow();
    }

    v34 = *(v24 + 32);
    v35 = v37;
    v34(v37, v8, v9);
    v34(v22, v35, v9);
  }

  else
  {

    v33 = *(v17 + 32);
    v33(v20, v15, v16);
    v33(v41, v20, v16);
  }

  type metadata accessor for CUIPAddress(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t CUIPAddress.description.getter()
{
  v1 = v0;
  v2 = sub_247BF6220();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = sub_247BF61E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = type metadata accessor for CUIPAddress(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BC2F9C(v1, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v25;
    (*(v25 + 32))(v8, v20, v2);
    (*(v21 + 16))(v6, v8, v2);
    v22 = sub_247BF6490();
    (*(v21 + 8))(v8, v2);
  }

  else
  {
    (*(v10 + 32))(v16, v20, v9);
    (*(v10 + 16))(v14, v16, v9);
    v22 = sub_247BF6490();
    (*(v10 + 8))(v16, v9);
  }

  return v22;
}

uint64_t CUIPAddress.nwEndpointHost.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CUIPAddress(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BC2F9C(v2, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_247BF6220();
    v9 = MEMORY[0x277CD8AE0];
  }

  else
  {
    v8 = sub_247BF61E0();
    v9 = MEMORY[0x277CD8AD8];
  }

  (*(*(v8 - 8) + 32))(a1, v7);
  v10 = *v9;
  v11 = sub_247BF6160();
  return (*(*(v11 - 8) + 104))(a1, v10, v11);
}

uint64_t CUIPAddress.hash(into:)()
{
  v1 = sub_247BF6220();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247BF61E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CUIPAddress(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BC2F9C(v0, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v14, v1);
    MEMORY[0x24C1B4F40](1);
    sub_247BC2A28(&qword_27EE5DDF8, MEMORY[0x277CD8C88]);
    sub_247BF63A0();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    MEMORY[0x24C1B4F40](0);
    sub_247BC2A28(&unk_27EE5DE00, MEMORY[0x277CD8C70]);
    sub_247BF63A0();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t CUIPAddress.hashValue.getter()
{
  sub_247BF7460();
  CUIPAddress.hash(into:)();
  return sub_247BF74A0();
}

uint64_t sub_247BAF5DC()
{
  sub_247BF7460();
  CUIPAddress.hash(into:)();
  return sub_247BF74A0();
}

uint64_t sub_247BAF620()
{
  sub_247BF7460();
  CUIPAddress.hash(into:)();
  return sub_247BF74A0();
}

uint64_t CUMACAddress.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 6)
  {
    v3 = *(a1 + 36);
    v4 = *(a1 + 32);

    *a2 = v4;
    *(a2 + 4) = v3;
  }

  else
  {

    v6 = *MEMORY[0x277CCA590];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDE8, &qword_247BFA940);
    inited = swift_initStackObject();
    *(inited + 32) = 0x4D726F7272457563;
    *(inited + 16) = xmmword_247BFA840;
    *(inited + 40) = 0xEA00000000006773;
    v8 = v6;
    sub_247BF6CF0();

    v9 = sub_247BF6FD0();
    MEMORY[0x24C1B4020](v9);

    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD00000000000001ALL;
    *(inited + 56) = 0x8000000247C00F80;
    sub_247BC1964(inited);
    swift_setDeallocating();
    sub_247B9CAD0(inited + 32, &qword_27EE5DDF0, &qword_247BFA948);
    v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v11 = sub_247BF62E0();

    [v10 initWithDomain:v8 code:-6705 userInfo:v11];

    return swift_willThrow();
  }

  return result;
}

uint64_t CUMACAddress.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_247BC3000();
  v7 = MEMORY[0x277D837D0];
  v8 = StringProtocol.parseHex()(MEMORY[0x277D837D0], v6);
  if (*(v8 + 16) != 6)
  {

    v18 = *MEMORY[0x277CCA590];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDE8, &qword_247BFA940);
    inited = swift_initStackObject();
    *(inited + 32) = 0x4D726F7272457563;
    *(inited + 16) = xmmword_247BFA840;
    *(inited + 40) = 0xEA00000000006773;
    v20 = v18;
    sub_247BF6CF0();

    MEMORY[0x24C1B4020](a1, a2);

    *(inited + 72) = v7;
    *(inited + 48) = 0xD00000000000001CLL;
    *(inited + 56) = 0x8000000247C00FA0;
    sub_247BC1964(inited);
    swift_setDeallocating();
    sub_247B9CAD0(inited + 32, &qword_27EE5DDF0, &qword_247BFA948);
    v21 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v22 = sub_247BF62E0();

    [v21 initWithDomain:v20 code:-6705 userInfo:v22];

    return swift_willThrow();
  }

  v9 = v8;

  v11 = *(v9 + 16);
  if (!v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 == 1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11 < 3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v11 == 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v11 >= 5)
  {
    if (v11 != 5)
    {
      v12 = v9;
      v13 = *(v9 + 32);
      v14 = *(v12 + 33);
      v15 = *(v12 + 34);
      v16 = *(v12 + 35);
      v17 = *(v12 + 36);

      *a3 = v13;
      *(a3 + 1) = v14;
      *(a3 + 2) = v15;
      *(a3 + 3) = v16;
      *(a3 + 4) = v17;
      return result;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t CUMACAddress.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74C0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v6 = sub_247BF71A0();
    CUMACAddress.init(_:)(v6, v7, &v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    v8 = v12;
    *a2 = v11;
    *(a2 + 4) = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t CUMACAddress.encode(to:)(void *a1)
{
  v2 = *(v1 + 2);
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74F0();
  v5 = *v1;
  CUMACAddress.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_247BF7210();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t CUMACAddress.description.getter()
{
  v1 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_247BFA850;
  *(v2 + 32) = *v0;
  *(v2 + 36) = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE18, &qword_247BFA958);
  sub_247BC34F4(&unk_27EE5DE20, &qword_27EE5DE18, &qword_247BFA958);
  v4 = sub_247BC3C54();
  v5 = sub_247BE7230();
  v6 = sub_247BE7238();
  v8 = Sequence<>.hexString(separator:uppercase:maxBytes:truncator:)(58, 0xE100000000000000, v4 & 1, v5, v6, v7, v3);

  return v8;
}

double CUMACAddress.bytes.getter()
{
  v1 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
  v2 = swift_allocObject();
  *&result = 6;
  *(v2 + 16) = xmmword_247BFA850;
  *(v2 + 32) = *v0;
  *(v2 + 36) = v1;
  return result;
}

Swift::String __swiftcall CUMACAddress.description(separator:uppercase:)(Swift::String separator, Swift::Bool uppercase)
{
  object = separator._object;
  countAndFlagsBits = separator._countAndFlagsBits;
  v6 = *(v2 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_247BFA850;
  *(v7 + 32) = *v2;
  *(v7 + 36) = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE18, &qword_247BFA958);
  sub_247BC34F4(&unk_27EE5DE20, &qword_27EE5DE18, &qword_247BFA958);
  v9 = sub_247BE7230();
  v10 = sub_247BE7238();
  v12 = Sequence<>.hexString(separator:uppercase:maxBytes:truncator:)(countAndFlagsBits, object, uppercase, v9, v10, v11, v8);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

uint64_t CUMACAddress.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  return sub_247BF7480();
}

uint64_t CUMACAddress.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_247BF7460();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  return sub_247BF74A0();
}

uint64_t sub_247BB008C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_247BF7460();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  return sub_247BF74A0();
}

uint64_t sub_247BB013C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  return sub_247BF7480();
}

uint64_t sub_247BB01BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_247BF7460();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  sub_247BF7480();
  return sub_247BF74A0();
}

uint64_t sub_247BB02D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + a3 - 8);
  v7 = type metadata accessor for CUWeakBox();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a4 = Strong;
  return result;
}

uint64_t CUWeakBox.item.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*CUWeakBox.item.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_247BB0430;
}

uint64_t sub_247BB0430(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t CUWeakBox.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a2 + 8) = a1;
  return result;
}

uint64_t CUWeakBox.hashValue.getter()
{
  sub_247BF7460();
  MEMORY[0x24C1B4F40](*(v0 + 8));
  return sub_247BF74A0();
}

uint64_t sub_247BB0544()
{
  sub_247BF7460();
  CUWeakBox.hash(into:)();
  return sub_247BF74A0();
}

uint64_t CUXPCCoder.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_247BF5D40();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *a1 = sub_247BF5D30();
  v5 = sub_247BF5CC0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_247BF5CB0();
  a1[1] = result;
  return result;
}

xpc_object_t CUXPCCoder.encode<A>(message:)()
{
  v2 = *v0;
  empty = xpc_dictionary_create_empty();
  v4 = sub_247BF5D10();
  if (!v1)
  {
    v6 = v4;
    v7 = v5;
    v8 = Data.xpcObjectRepresentation.getter(v4, v5);
    sub_247BC2AC4(v6, v7);
    xpc_dictionary_set_value(empty, "data", v8);
  }

  swift_unknownObjectRelease();
  return empty;
}

xpc_object_t Data.xpcObjectRepresentation.getter(uint64_t a1, unint64_t a2)
{
  v2 = BYTE5(a2);
  bytes[2] = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(bytes, 0, 14);
      v4 = 0;
      goto LABEL_25;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    a1 = sub_247BF5DA0();
    v7 = a1;
    if (a1)
    {
      a1 = sub_247BF5DC0();
      if (__OFSUB__(v5, a1))
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v7 += v5 - a1;
    }

    v8 = __OFSUB__(v6, v5);
    v9 = v6 - v5;
    if (!v8)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v3)
  {
    bytes[0] = a1;
    LOWORD(bytes[1]) = a2;
    BYTE2(bytes[1]) = BYTE2(a2);
    BYTE3(bytes[1]) = BYTE3(a2);
    BYTE4(bytes[1]) = BYTE4(a2);
    v4 = BYTE6(a2);
    BYTE5(bytes[1]) = v2;
LABEL_25:
    result = xpc_data_create(bytes, v4);
    v17 = *MEMORY[0x277D85DE8];
    return result;
  }

  v10 = a1;
  v9 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v7 = sub_247BF5DA0();
  if (v7)
  {
    v11 = sub_247BF5DC0();
    if (!__OFSUB__(v10, v11))
    {
      v7 += v10 - v11;
      goto LABEL_15;
    }

LABEL_28:
    __break(1u);
  }

LABEL_15:
  v12 = sub_247BF5DB0();
  if (v12 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return xpc_data_create(v7, v14);
}

uint64_t CUXPCCoder.encode<A>(message:into:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  result = sub_247BF5D10();
  if (!v3)
  {
    v8 = result;
    v9 = v7;
    v10 = Data.xpcObjectRepresentation.getter(result, v7);
    sub_247BC2AC4(v8, v9);
    xpc_dictionary_set_value(a2, "data", v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void CUXPCCoder.encode(error:into:)(void *a1, void *a2)
{
  v6 = *v2;
  type metadata accessor for CUError();
  v7 = a1;
  v12 = CUError.__allocating_init(_:)(a1);
  sub_247BC2A28(&qword_27EE5DFF0, type metadata accessor for CUError);
  v8 = sub_247BF5D10();
  v10 = v9;

  if (!v3)
  {
    v11 = Data.xpcObjectRepresentation.getter(v8, v10);
    sub_247BC2AC4(v8, v10);
    xpc_dictionary_set_value(a2, "error", v11);
    swift_unknownObjectRelease();
  }
}

uint64_t CUXPCCoder.decode<A>(_:)(void *a1)
{
  length[1] = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 8);
  length[0] = 0;
  data = xpc_dictionary_get_data(a1, "data", length);
  if (data)
  {
    v6 = sub_247BC3110(data, length[0]);
    v8 = v7;
    sub_247BF5C90();
    result = sub_247BC2AC4(v6, v8);
  }

  else
  {
    v11 = xpc_dictionary_get_data(a1, "error", length);
    if (v11)
    {
      v12 = v11;
      type metadata accessor for CUError();
      v13 = sub_247BC3110(v12, length[0]);
      v15 = v14;
      sub_247BC2A28(&qword_27EE5DE30, type metadata accessor for CUError);
      sub_247BF5C90();
      result = sub_247BC2AC4(v13, v15);
      if (!v2)
      {
        result = swift_willThrow();
      }
    }

    else
    {
      v16 = sub_247BF6130();
      swift_unknownObjectRelease();
      if (v16 == a1)
      {
        type metadata accessor for CUError();
        v20 = 0x65746E6920435058;
        v18 = 0xEF64657470757272;
        v19 = -71142;
      }

      else
      {
        v17 = sub_247BF6120();
        swift_unknownObjectRelease();
        type metadata accessor for CUError();
        if (v17 == a1)
        {
          v20 = 0x61766E6920435058;
          v18 = 0xEF6465746164696CLL;
          v19 = -71148;
        }

        else
        {
          v18 = 0x8000000247C00FC0;
          v19 = -6700;
          v20 = 0xD000000000000012;
        }
      }

      CUError.__allocating_init(_:_:_:)(v19, v20, v18, 0);
      result = swift_willThrow();
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FNV1a<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = 2166136261;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v16[-v12];
  (*(v5 + 16))(v8, a1, a2);
  sub_247BF6610();
  swift_getAssociatedConformanceWitness();
  sub_247BF6AE0();
  if ((v18 & 1) == 0)
  {
    v14 = v17;
    do
    {
      v4 = 16777619 * (v4 ^ v14);
      sub_247BF6AE0();
      v14 = v17;
    }

    while (v18 != 1);
  }

  (*(v10 + 8))(v13, AssociatedTypeWitness);
  return v4;
}

uint64_t Actor.cuWithIsolation<A>(_:)(uint64_t a1, int *a2)
{
  v8 = (a2 + *a2);
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_247B96F0C;

  return v8(a1, v2);
}

uint64_t cuWithCheckedThrowingContinuation<A, B>(environment:timeout:isolation:onStart:onCancel:onTimeout:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v17;
  *(v8 + 104) = v18;
  *(v8 + 80) = v15;
  *(v8 + 88) = v16;
  *(v8 + 64) = v14;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 168) = a5;
  *(v8 + 32) = a4;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  v9 = *a2;
  *(v8 + 112) = v19;
  *(v8 + 120) = v9;
  v11 = sub_247BF6740();
  *(v8 + 128) = v11;
  *(v8 + 136) = v10;

  return MEMORY[0x2822009F8](sub_247BB1020, v11, v10);
}

uint64_t sub_247BB1020()
{
  v27 = v0;
  if (*(v0 + 168))
  {
    v1 = 0;
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v16[2] = *(v0 + 120);
    CUEnvironmentValues.clock.getter(&v17);
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    CUClock.now.getter();

    v26 = v25;
    CUClock.Instant.advanced(by:)(v16);
    v1 = v16[0];
    v2 = v16[1];
    v3 = *(v0 + 168);
  }

  v6 = *(v0 + 72);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  v8 = *(v0 + 112);
  v9 = *(v0 + 40);
  v10 = *(v0 + 56);
  v11 = *(v0 + 80);
  *(v7 + 16) = *(v0 + 96);
  *(v7 + 32) = v8;
  *(v7 + 48) = v9;
  *(v7 + 64) = v10;
  *(v7 + 80) = v6;
  *(v7 + 88) = v1;
  *(v7 + 96) = v2;
  *(v7 + 104) = v3 & 1;
  *(v7 + 112) = v11;
  v12 = *(MEMORY[0x277D859B8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 152) = v13;
  *v13 = v0;
  v13[1] = sub_247BB11FC;
  v14 = *(v0 + 16);
  v29 = *(v0 + 104);

  return MEMORY[0x282200740](v14);
}

uint64_t sub_247BB11FC()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {
    v4 = v3[16];
    v5 = v3[17];

    return MEMORY[0x2822009F8](sub_247BB1334, v4, v5);
  }

  else
  {
    v6 = v3[18];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_247BB1334()
{
  v1 = v0[18];

  v2 = v0[1];
  v3 = v0[20];

  return v2();
}

uint64_t sub_247BB1398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v22;
  *(v8 + 128) = v23;
  *(v8 + 104) = v20;
  *(v8 + 112) = v21;
  *(v8 + 96) = v19;
  *(v8 + 200) = v18;
  *(v8 + 80) = v17;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_247BF6AC0();
  *(v8 + 136) = v9;
  v10 = *(v9 - 8);
  *(v8 + 144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890) - 8) + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  v14 = sub_247BF6740();
  *(v8 + 168) = v14;
  *(v8 + 176) = v13;

  return MEMORY[0x2822009F8](sub_247BB14EC, v14, v13);
}

uint64_t sub_247BB14EC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v33 = *(v0 + 200);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 32);
  v31 = *(v0 + 24);
  v35 = *(v0 + 120);
  v29 = *(v0 + 40);
  v7 = CUEnvironmentValues.dispatchQueue.getter();
  v8 = sub_247BC2908();
  v9 = sub_247BF67E0();
  v27 = *(*(v9 - 8) + 56);
  v28 = v9;
  v27(v1, 1, 1);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v2;
  *(v10 + 40) = v35;
  *(v10 + 56) = v29;
  *(v10 + 72) = v5;
  *(v10 + 80) = v6;
  *(v10 + 88) = v3;
  *(v10 + 96) = v4;
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  v11 = sub_247BF6850();
  v36 = v8;
  sub_247BB27F0(v7, v8, v1, &unk_247BFBA88, v10, v11);

  sub_247B9CAD0(v1, &qword_27EE5DD00, &qword_247BFA890);
  if ((v33 & 1) == 0)
  {
    v12 = *(v0 + 160);
    v13 = *(v0 + 128);
    v14 = *(v0 + 104);
    v34 = *(v0 + 96);
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
    v17 = *(v0 + 24);
    v30 = *(v0 + 112);
    v32 = *(v0 + 80);
    v18 = CUEnvironmentValues.dispatchQueue.getter();
    (v27)(v12, 1, 1, v28);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v30;
    *(v19 + 48) = v13;
    *(v19 + 56) = v15;
    *(v19 + 64) = v32;
    *(v19 + 80) = v34;
    *(v19 + 88) = v14;
    *(v19 + 96) = v16;
    swift_unknownObjectRetain();

    sub_247BB27F0(v18, v36, v12, &unk_247BFBA98, v19, v11);

    sub_247B9CAD0(v12, &qword_27EE5DD00, &qword_247BFA890);
  }

  v20 = *(v0 + 128);
  v21 = *(v0 + 40);
  v22 = *(MEMORY[0x277D85818] + 4);
  v23 = swift_task_alloc();
  *(v0 + 184) = v23;
  *v23 = v0;
  v23[1] = sub_247BB1820;
  v24 = *(v0 + 152);
  v25 = *(v0 + 24);

  return MEMORY[0x2822004D0](v24, v21, v20, v11);
}

uint64_t sub_247BB1820()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = sub_247BB1B3C;
  }

  else
  {
    v7 = sub_247BB195C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_247BB195C()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[3];
    (*(v0[18] + 8))(v1, v0[17]);
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6723, 0xD00000000000001DLL, 0x8000000247C01380, 0);
    swift_willThrow();
    v5 = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
    sub_247BF6840();
    v7 = v0[19];
    v6 = v0[20];
  }

  else
  {
    v9 = v0[20];
    v10 = v0[3];
    (*(v3 + 32))(v0[2], v1, v2);
    v11 = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
    sub_247BF6840();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_247BB1B3C()
{
  v1 = *(v0 + 120);
  v2 = **(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
  sub_247BF6840();
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_247BB1BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v11;
  *(v8 + 88) = v12;
  *(v8 + 64) = v10;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  return MEMORY[0x2822009F8](sub_247BB1C1C, 0, 0);
}

uint64_t sub_247BB1C1C()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v14 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = *(v0 + 48);
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  *(v6 + 32) = v1;
  *(v6 + 40) = v14;
  *(v6 + 56) = v5;
  *(v0 + 104) = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  *(v7 + 32) = v1;
  *(v7 + 40) = v8;
  *(v7 + 56) = v4;
  *(v7 + 64) = v14;
  v9 = *(MEMORY[0x277D85A10] + 4);
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_247BB1D6C;
  v11 = *(v0 + 80);
  v12 = *(v0 + 16);

  return MEMORY[0x282200830](v12, &unk_247BFBAA8, v6, sub_247BC55E0, v7, v14, v1, v11);
}

uint64_t sub_247BB1D6C()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247BB1EB4, 0, 0);
  }

  else
  {
    v5 = v3[12];
    v4 = v3[13];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_247BB1EB4()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_247BB1F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_247BB1F4C, 0, 0);
}

uint64_t sub_247BB1F4C()
{
  if (sub_247BF6800())
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6723, 0xD00000000000001FLL, 0x8000000247C01400, 0);
    swift_willThrow();
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 40);
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    v6 = *(v0 + 48);
    v7 = *(v0 + 24);
    *(v5 + 40) = v7;
    v8 = v7;
    *(v5 + 16) = v6;
    *(v5 + 32) = v3;
    *(v5 + 56) = v4;
    v9 = *(MEMORY[0x277D85A40] + 4);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_247BB20F0;
    v11 = *(v0 + 56);
    v12 = *(v0 + 16);

    return MEMORY[0x2822008A0](v12, v8, v3, 0xD00000000000005CLL, 0x8000000247C013A0, sub_247BC569C, v5, v11);
  }
}

uint64_t sub_247BB20F0()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247BB222C, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_247BB222C()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_247BB2290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_247BF6740();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  sub_247BBDED8(sub_247BC57C8, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_247BF6CF0();
    MEMORY[0x24C1B4020](0xD00000000000003FLL, 0x8000000247C01450);
    sub_247BF7140();
    MEMORY[0x24C1B4020](46, 0xE100000000000000);
    result = sub_247BF6E80();
    __break(1u);
  }

  return result;
}

uint64_t sub_247BB2444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v36 = a1;
  v31 = CUEnvironmentValues.dispatchQueue.getter();
  v19 = sub_247BF67E0();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  v21 = swift_allocObject();
  v23 = v29;
  v22 = v30;
  v21[2] = a5;
  v21[3] = v23;
  v21[4] = v22;
  v21[5] = a2;
  v21[6] = a3;
  v21[7] = a4;
  sub_247BC5B0C(v18, v16, &qword_27EE5DD00, &qword_247BFA890);
  LODWORD(a1) = (*(v20 + 48))(v16, 1, v19);

  swift_unknownObjectRetain();
  if (a1 == 1)
  {
    sub_247B9CAD0(v16, &qword_27EE5DD00, &qword_247BFA890);
  }

  else
  {
    sub_247BF67D0();
    (*(v20 + 8))(v16, v19);
  }

  v24 = sub_247BC2908();
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_247BFBAB8;
  *(v25 + 24) = v21;
  v32 = 6;
  v33 = 0;
  v26 = v31;
  v34 = v31;
  v35 = v24;

  v27 = v26;
  swift_task_create();
  sub_247B9CAD0(v18, &qword_27EE5DD00, &qword_247BFA890);
}

uint64_t sub_247BB26F8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_247B95F40;

  return v9(a4);
}

uint64_t sub_247BB27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v29 - v14;
  v16 = *v6;
  v17 = swift_taskGroup_addPending();
  if (v17)
  {
    v29[0] = a2;
    sub_247BC5B0C(a3, v15, &qword_27EE5DD00, &qword_247BFA890);
    v18 = sub_247BF67E0();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v15, 1, v18) == 1)
    {
      sub_247B9CAD0(v15, &qword_27EE5DD00, &qword_247BFA890);
      if (*(a5 + 16))
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_247BF67D0();
      (*(v19 + 8))(v15, v18);
      if (*(a5 + 16))
      {
LABEL_4:
        v20 = *(a5 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v21 = sub_247BF6740();
        v23 = v22;
        swift_unknownObjectRelease();
        if (a1)
        {
LABEL_5:
          v24 = *(a6 + 16);
          swift_unknownObjectRetain();
          if (v23 | v21)
          {
            v31[0] = 0;
            v31[1] = 0;
            v25 = v31;
            v31[2] = v21;
            v31[3] = v23;
          }

          else
          {
            v25 = 0;
          }

          v30[0] = 1;
          v30[1] = v25;
          v30[2] = v16;
          if (a1 != 1)
          {
            v29[1] = 6;
            v29[2] = v30;
            v29[3] = a1;
            v29[4] = v29[0];
          }

LABEL_16:
          swift_task_create();
          goto LABEL_17;
        }

LABEL_10:
        v26 = *(a6 + 16);
        v27 = (v23 | v21);
        if (v23 | v21)
        {
          v33[0] = 0;
          v33[1] = 0;
          v27 = v33;
          v33[2] = v21;
          v33[3] = v23;
        }

        v32[0] = 1;
        v32[1] = v27;
        v32[2] = v16;
        v31[4] = 6;
        v31[5] = v32;
        v31[6] = 0;
        v31[7] = v29[0];
        goto LABEL_16;
      }
    }

    v21 = 0;
    v23 = 0;
    if (a1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_17:

  return v17 & 1;
}

uint64_t sub_247BB2A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a8;
  v8[22] = v10;
  v8[19] = a6;
  v8[20] = a7;
  v8[17] = a4;
  v8[18] = a5;
  return MEMORY[0x2822009F8](sub_247BB2AC8, 0, 0);
}

uint64_t sub_247BB2AC8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  *(v0 + 128) = *(v0 + 136);
  CUEnvironmentValues.clock.getter(v0 + 16);
  v3 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  v4 = *(v0 + 48);
  *(v0 + 80) = v3;
  *(v0 + 96) = v4;
  *(v0 + 112) = v2;
  *(v0 + 120) = v1;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_247BB2BA8;

  return CUClock.sleep(until:tolerance:)((v0 + 112), 0, 0, 1);
}

uint64_t sub_247BB2BA8()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {
    v4 = v3[9];
    v5 = v3[11];
    v6 = v3[13];

    return MEMORY[0x2822009F8](sub_247BB2F50, 0, 0);
  }

  else
  {
    v7 = v3[20];
    v8 = v3[9];
    v9 = v3[11];
    v10 = v3[13];

    v16 = (v7 + *v7);
    v11 = v7[1];
    v12 = swift_task_alloc();
    v3[25] = v12;
    *v12 = v3;
    v12[1] = sub_247BB2DC8;
    v13 = v3[21];
    v14 = v3[22];

    return v16(v14);
  }
}

uint64_t sub_247BB2DC8()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_247BB2EC4, 0, 0);
}

uint64_t sub_247BB2EC4()
{
  type metadata accessor for CUError();
  CUError.__allocating_init(_:_:_:)(-6722, 0, 0, 0);
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s14CoreUtilsSwift13cuWithTimeout11environment7timeout9isolation9operationxAA19CUEnvironmentValuesV_s8DurationVScA_pSgYixyYaYbKYActYaKs8SendableRzlF(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v14;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  v8[10] = *a2;
  if (a5)
  {
    swift_getObjectType();
    v9 = sub_247BF6740();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v8[11] = v9;
  v8[12] = v11;

  return MEMORY[0x2822009F8](sub_247BB3018, v9, v11);
}

uint64_t sub_247BB3018()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = *(v0 + 56);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v1;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;
  v7 = *(MEMORY[0x277D859B8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_247BB311C;
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 16);
  v14 = *(v0 + 72);

  return MEMORY[0x282200740](v11);
}

uint64_t sub_247BB311C()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[11];
    v5 = v3[12];

    return MEMORY[0x2822009F8](sub_247BB3254, v4, v5);
  }

  else
  {
    v6 = v3[13];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_247BB3254()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_247BB32B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_247BF6AC0();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247BB33C0, 0, 0);
}

uint64_t sub_247BB33C0()
{
  v1 = v0[13];
  v2 = v0[9];
  v16 = v0[7];
  v17 = v0[8];
  v15 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = sub_247BF67E0();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  v8 = sub_247BF6850();
  sub_247BB3970(v1, v4, v3, v8);
  sub_247B9CAD0(v1, &qword_27EE5DD00, &qword_247BFA890);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v15;
  v9[6] = v16;
  v9[7] = v17;

  sub_247BB3970(v1, &unk_247BFBA78, v9, v8);
  sub_247B9CAD0(v1, &qword_27EE5DD00, &qword_247BFA890);
  v10 = *(MEMORY[0x277D85818] + 4);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_247BB35D8;
  v12 = v0[12];
  v13 = v0[3];

  return MEMORY[0x2822004D0](v12, 0, 0, v8);
}

uint64_t sub_247BB35D8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_247BB38CC;
  }

  else
  {
    v3 = sub_247BB36EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247BB36EC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[3];
    (*(v0[11] + 8))(v1, v0[10]);
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6700, 0xD000000000000015, 0x8000000247C01360, 0);
    swift_willThrow();
    v5 = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
    sub_247BF6840();
    v7 = v0[12];
    v6 = v0[13];
  }

  else
  {
    v9 = v0[13];
    v10 = v0[3];
    (*(v3 + 32))(v0[2], v1, v2);
    v11 = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
    sub_247BF6840();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_247BB38CC()
{
  v1 = *(v0 + 72);
  v2 = **(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
  sub_247BF6840();
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_247BB3970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  v12 = *v4;
  v13 = swift_taskGroup_addPending();
  if ((v13 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_247BC5B0C(a1, v11, &qword_27EE5DD00, &qword_247BFA890);
  v14 = sub_247BF67E0();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    sub_247BF67D0();
    (*(v15 + 8))(v11, v14);
    if (*(a3 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  sub_247B9CAD0(v11, &qword_27EE5DD00, &qword_247BFA890);
  if (!*(a3 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  v16 = *(a3 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_247BF6740();
  v19 = v18;
  swift_unknownObjectRelease();
LABEL_8:
  v20 = *(a4 + 16);
  v21 = (v19 | v17);
  if (v19 | v17)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v17;
    v24[3] = v19;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v12;
  swift_task_create();
LABEL_11:

  return v13 & 1;
}

uint64_t sub_247BB3B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_247BB3BA8, 0, 0);
}

uint64_t sub_247BB3BA8()
{
  v0[8] = v0[9];
  CUEnvironmentValues.clock.getter((v0 + 2));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_247BB3C74;
  v3 = v0[10];
  v2 = v0[11];

  return sub_247BB3E40(v3, v2, 0, 0, 1);
}

uint64_t sub_247BB3C74()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(v2 + 104) = v0;

  sub_247BC520C(v2 + 16);
  if (v0)
  {
    v4 = sub_247BB3E28;
  }

  else
  {
    v4 = sub_247BB3D90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_247BB3D90()
{
  type metadata accessor for CUError();
  CUError.__allocating_init(_:_:_:)(-6722, 0x74756F656D6954, 0xE700000000000000, 0);
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_247BB3E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 88) = a1;
  *(v6 + 96) = a2;
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5 & 1;
  v7 = v5[1];
  *(v6 + 16) = *v5;
  *(v6 + 32) = v7;
  *(v6 + 48) = v5[2];
  return MEMORY[0x2822009F8](sub_247BB3E7C, 0, 0);
}

uint64_t sub_247BB3E7C()
{
  v1 = sub_247BC5260();
  sub_247BF73E0();
  sub_247B96584();
  sub_247BF6D80();
  v2 = *(MEMORY[0x277D85A58] + 4);
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_247BB3F70;

  return MEMORY[0x2822008C8](v0 + 104, v0 + 64, &type metadata for CUClock, v1);
}

uint64_t sub_247BB3F70()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  *(v3 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247BB40A4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t cuWithTimeoutIsolated<A, B>(environment:isolation:timeout:operation:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v14;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a1;
  v8[3] = a3;
  v9 = *a2;
  v8[10] = v15;
  v8[11] = v9;
  v11 = sub_247BF6740();
  v8[12] = v11;
  v8[13] = v10;

  return MEMORY[0x2822009F8](sub_247BB4154, v11, v10);
}

uint64_t sub_247BB4154()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = *(v0 + 48);
  *(v6 + 16) = *(v0 + 64);
  *(v6 + 32) = v1;
  *(v6 + 40) = v7;
  *(v6 + 56) = v5;
  *(v6 + 64) = v2;
  *(v6 + 72) = v4;
  *(v6 + 80) = v3;
  v8 = *(MEMORY[0x277D859B8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_247BB4264;
  v10 = *(v0 + 16);
  v13 = *(v0 + 72);

  return MEMORY[0x282200740](v10);
}

uint64_t sub_247BB4264()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {
    v4 = v3[12];
    v5 = v3[13];

    return MEMORY[0x2822009F8](sub_247BB439C, v4, v5);
  }

  else
  {
    v6 = v3[14];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_247BB439C()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_247BB4400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v18;
  v8[12] = v19;
  v8[9] = a8;
  v8[10] = v17;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = sub_247BF6AC0();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890) - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v14 = sub_247BF6740();
  v8[17] = v14;
  v8[18] = v13;

  return MEMORY[0x2822009F8](sub_247BB453C, v14, v13);
}

uint64_t sub_247BB453C()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v20 = v0[8];
  v21 = v0[9];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v18 = v0[3];
  v19 = v0[7];
  v8 = sub_247BF67E0();
  v17 = *(*(v8 - 8) + 56);
  v17(v1, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v2;
  v9[7] = v7;
  v9[8] = v6;
  v9[9] = v5;

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  v10 = sub_247BF6850();
  sub_247BB3970(v1, &unk_247BFBA50, v9, v10);
  sub_247B9CAD0(v1, &qword_27EE5DD00, &qword_247BFA890);
  v17(v1, 1, 1, v8);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v4;
  v11[5] = v3;
  v11[6] = v2;
  v11[7] = v19;
  v11[8] = v20;
  v11[9] = v21;

  sub_247BB3970(v1, &unk_247BFBA60, v11, v10);
  sub_247B9CAD0(v1, &qword_27EE5DD00, &qword_247BFA890);
  v12 = *(MEMORY[0x277D85818] + 4);
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_247BB47B0;
  v14 = v0[15];
  v15 = v0[3];

  return MEMORY[0x2822004D0](v14, v5, v2, v10);
}

uint64_t sub_247BB47B0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_247BB4ACC;
  }

  else
  {
    v7 = sub_247BB48EC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_247BB48EC()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[3];
    (*(v0[14] + 8))(v1, v0[13]);
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6700, 0xD000000000000015, 0x8000000247C01360, 0);
    swift_willThrow();
    v5 = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
    sub_247BF6840();
    v7 = v0[15];
    v6 = v0[16];
  }

  else
  {
    v9 = v0[16];
    v10 = v0[3];
    (*(v3 + 32))(v0[2], v1, v2);
    v11 = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
    sub_247BF6840();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_247BB4ACC()
{
  v1 = *(v0 + 88);
  v2 = **(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
  sub_247BF6840();
  v3 = *(v0 + 160);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_247BB4B70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v12 = (a4 + *a4);
  v9 = a4[1];
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_247B95F40;

  return v12(a1, a6);
}

uint64_t sub_247BB4C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  return MEMORY[0x2822009F8](sub_247BB4CA4, 0, 0);
}

uint64_t sub_247BB4CA4()
{
  v0[8] = v0[9];
  CUEnvironmentValues.clock.getter((v0 + 2));
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_247BB4D70;
  v3 = v0[10];
  v2 = v0[11];

  return sub_247BB3E40(v3, v2, 0, 0, 1);
}

uint64_t sub_247BB4D70()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(v2 + 104) = v0;

  sub_247BC520C(v2 + 16);
  if (v0)
  {
    v4 = sub_247BC5C24;
  }

  else
  {
    v4 = sub_247BC5C40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t Array.cuRemoveAll(keepingCapacity:)()
{
  v1 = *v0;

  sub_247BF6710();
  return v1;
}

uint64_t Set.cuRemoveAll(keepingCapacity:)()
{
  v1 = *v0;

  sub_247BF68F0();
  return v1;
}

uint64_t BidirectionalCollection<>.suffix(afterLastOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v26[1] = a1;
  v26[2] = a3;
  v28 = a4;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v27 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[3] = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26[0] = sub_247BF6AC0();
  v11 = *(v26[0] - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v26[0]);
  v15 = v26 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v26 - v21;
  sub_247BF63F0();
  v23 = (v6 + 16);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v15, v26[0]);
    (*v23)(v27, v4, a2);
    sub_247BF6940();
    sub_247BF69B0();
    return (*(v16 + 8))(v20, AssociatedTypeWitness);
  }

  else
  {
    (*(v16 + 32))(v22, v15, AssociatedTypeWitness);
    (*v23)(v27, v4, a2);
    sub_247BF6960();
    sub_247BF69B0();
    v25 = *(v16 + 8);
    v25(v20, AssociatedTypeWitness);
    return (v25)(v22, AssociatedTypeWitness);
  }
}

uint64_t BinaryFloatingPoint.map(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a2;
  v31 = a4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v28 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v20 = *(v19 + 16);
  v29 = *(*(v20 + 16) + 8);
  v21 = *(v29 + 8);
  sub_247BF6EA0();
  v22 = *(*(v20 + 24) + 8);
  v23 = sub_247BF6450();
  v24 = a1 + *(v23 + 36);
  sub_247BF6EA0();
  sub_247BF6370();
  v25 = *(v6 + 8);
  v25(v10, a3);
  v25(v13, a3);
  v26 = *(v23 + 36);
  sub_247BF6EA0();
  sub_247BF6900();
  v25(v13, a3);
  v25(v16, a3);
  sub_247BF6E90();
  return (v25)(v18, a3);
}

uint64_t Collection.penultimate()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v23[-v10];
  if (sub_247BF6950() >= 2)
  {
    sub_247BF69A0();
    sub_247BF6980();
    v16 = *(v5 + 8);
    v16(v9, AssociatedTypeWitness);
    v17 = sub_247BF69C0();
    v19 = v18;
    v20 = *(a1 + 8);
    v21 = swift_getAssociatedTypeWitness();
    v22 = *(v21 - 8);
    (*(v22 + 16))(a2, v19, v21);
    v17(v23, 0);
    v16(v11, AssociatedTypeWitness);
    return (*(v22 + 56))(a2, 0, 1, v21);
  }

  else
  {
    v12 = *(a1 + 8);
    v13 = swift_getAssociatedTypeWitness();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_247BF6AC0();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v42 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v47 = &v42 - v23;
  if (a1 < 0)
  {
    v25 = *(a2 + 8);
    v26 = swift_getAssociatedTypeWitness();
    v27 = *(*(v26 - 8) + 56);

    return v27(a3, 1, 1, v26);
  }

  else
  {
    v43 = v22;
    v44 = v21;
    v46 = a3;
    sub_247BF6940();
    sub_247BF69A0();
    v45 = v3;
    sub_247BF6970();
    v24 = *(v13 + 8);
    v24(v17, AssociatedTypeWitness);
    v24(v20, AssociatedTypeWitness);
    if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
    {
      (*(v43 + 8))(v12, v44);
    }

    else
    {
      v29 = v47;
      (*(v13 + 32))(v47, v12, AssociatedTypeWitness);
      sub_247BF69A0();
      swift_getAssociatedConformanceWitness();
      v30 = v24;
      v31 = sub_247BF6420();
      v30(v20, AssociatedTypeWitness);
      if (v31)
      {
        v32 = v30;
        v33 = sub_247BF69C0();
        v35 = v34;
        v36 = *(a2 + 8);
        v37 = swift_getAssociatedTypeWitness();
        v38 = *(v37 - 8);
        v39 = v46;
        (*(v38 + 16))(v46, v35, v37);
        v33(v48, 0);
        v32(v29, AssociatedTypeWitness);
        return (*(v38 + 56))(v39, 0, 1, v37);
      }

      v30(v29, AssociatedTypeWitness);
    }

    v40 = *(a2 + 8);
    v41 = swift_getAssociatedTypeWitness();
    return (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
  }
}

uint64_t Collection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a5;
  v51 = a2;
  v54 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_247BF6AC0();
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v48 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v48 - v23;
  v53 = (v16 + 8);
  v25 = (v16 + 48);
  if ((a1 & 0x8000000000000000) == 0)
  {
    sub_247BF69A0();
    sub_247BF6970();
    v26 = *v53;
    (*v53)(v21, AssociatedTypeWitness);
    if ((*v25)(v15, 1, AssociatedTypeWitness) == 1)
    {
      (*(v49 + 8))(v15, v50);
    }

    else
    {
      (*(v16 + 32))(v24, v15, AssociatedTypeWitness);
      sub_247BF69A0();
      swift_getAssociatedConformanceWitness();
      v29 = sub_247BF6420();
      v26(v21, AssociatedTypeWitness);
      if (v29)
      {
        v30 = sub_247BF69C0();
        v32 = v31;
        v33 = *(a4 + 8);
        v34 = swift_getAssociatedTypeWitness();
        v35 = *(v34 - 8);
        v36 = v52;
        (*(v35 + 16))(v52, v32, v34);
        v30(v55, 0);
        v26(v24, AssociatedTypeWitness);
        return (*(v35 + 56))(v36, 0, 1, v34);
      }

      v26(v24, AssociatedTypeWitness);
    }

    goto LABEL_14;
  }

  v27 = v22;
  sub_247BF6940();
  sub_247BF6970();
  v28 = *v53;
  (*v53)(v21, AssociatedTypeWitness);
  if ((*v25)(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v49 + 8))(v12, v50);
    goto LABEL_14;
  }

  (*(v16 + 32))(v27, v12, AssociatedTypeWitness);
  sub_247BF6940();
  swift_getAssociatedConformanceWitness();
  v38 = sub_247BF6430();
  v28(v21, AssociatedTypeWitness);
  if ((v38 & 1) == 0)
  {
    v28(v27, AssociatedTypeWitness);
LABEL_14:
    v46 = *(a4 + 8);
    v47 = swift_getAssociatedTypeWitness();
    return (*(*(v47 - 8) + 56))(v52, 1, 1, v47);
  }

  v39 = sub_247BF69C0();
  v41 = v40;
  v42 = *(a4 + 8);
  v43 = swift_getAssociatedTypeWitness();
  v44 = *(v43 - 8);
  v45 = v52;
  (*(v44 + 16))(v52, v41, v43);
  v39(v55, 0);
  v28(v27, AssociatedTypeWitness);
  return (*(v44 + 56))(v45, 0, 1, v43);
}

uint64_t Comparable.clamped(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(sub_247BF6450() + 36);
  sub_247BF73A0();
  sub_247BF7390();
  return (*(v4 + 8))(v7, a2);
}

uint64_t Comparable.clamped(to:)()
{
  return sub_247BF7390();
}

{
  return sub_247BF73A0();
}

uint64_t Data.init(xpcObject:)(void *a1)
{
  v2 = MEMORY[0x24C1B5CC0]();
  if (v2 == sub_247BF60C0())
  {
    length = xpc_data_get_length(a1);
    if (length < 1)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v9 = length;
    bytes_ptr = xpc_data_get_bytes_ptr(a1);
    if (bytes_ptr)
    {
      v3 = sub_247BC3110(bytes_ptr, v9);
      swift_unknownObjectRelease();
      return v3;
    }

    v3 = type metadata accessor for CUError();
    v5 = 0x8000000247C01010;
    v6 = -6700;
    v4 = 0xD000000000000020;
  }

  else
  {
    v3 = type metadata accessor for CUError();
    v4 = 0xD000000000000022;
    v5 = 0x8000000247C00FE0;
    v6 = -6705;
  }

  CUError.__allocating_init(_:_:_:)(v6, v4, v5, 0);
  swift_willThrow();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t Data.cuNormalizedJSONData.getter(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  v5 = sub_247BF5E70();
  v18[0] = 0;
  v6 = [v4 JSONObjectWithData:v5 options:0 error:v18];

  v7 = v18[0];
  if (v6)
  {
    sub_247BF6BB0();
    swift_unknownObjectRelease();
    sub_247B9471C(v17, v18);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v8 = sub_247BF7170();
    *&v17[0] = 0;
    v9 = [v4 dataWithJSONObject:v8 options:10 error:v17];
    swift_unknownObjectRelease();
    v10 = *&v17[0];
    if (v9)
    {
      a1 = sub_247BF5E80();
    }

    else
    {
      v13 = v10;
      v14 = sub_247BF5E10();

      swift_willThrow();
      sub_247BC2A70(a1, a2);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  else
  {
    v11 = v7;
    v12 = sub_247BF5E10();

    swift_willThrow();
    sub_247BC2A70(a1, a2);
  }

  v15 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t Data.cuNormalizedJSONString.getter(uint64_t a1, unint64_t a2)
{
  v2 = Data.cuNormalizedJSONData.getter(a1, a2);
  v4 = v3;
  v5 = sub_247BC1428(v2, v3);
  if (v6)
  {
    goto LABEL_8;
  }

  v11 = v2;
  v12 = v4;
  sub_247BC2A70(v2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD40, &qword_247BFA8C8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_247B9CAD0(v9, &qword_27EE5DD48, &qword_247BFA8D0);
LABEL_7:
    v5 = sub_247BBF8CC(v2, v4);
LABEL_8:
    v7 = v5;
    sub_247BC2AC4(v2, v4);
    return v7;
  }

  sub_247B93B4C(v9, v13);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  if ((sub_247BF6F00() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    goto LABEL_7;
  }

  sub_247BC2AC4(v2, v4);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_247BF6EF0();
  v7 = *&v9[0];
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v7;
}

uint64_t OS_dispatch_queue.serialDispatchQueue.getter()
{
  v1 = sub_247BF6A10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247BF6A70();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_247BF62A0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = v0;
    return v11;
  }

  else
  {
    v21 = sub_247BC3818(0, &qword_27EE5DD10, 0x277D85C90);
    v14 = sub_247BF6A40();
    v19 = v15;
    v20 = v14;
    sub_247BF6290();
    v22 = MEMORY[0x277D84F90];
    sub_247BC2A28(&qword_27EE5DDC0, MEMORY[0x277D852D8]);
    v18 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDC8, &qword_247BFA910);
    sub_247BC34F4(&qword_27EE5DDD0, &qword_27EE5DDC8, &qword_247BFA910);
    sub_247BF6BD0();
    (*(v2 + 104))(v5, *MEMORY[0x277D85268], v18);
    v16 = v0;
    return sub_247BF6A80();
  }
}

uint64_t static OS_dispatch_queue_serial.mainSerialQueue.getter()
{
  v0 = sub_247BF6A10();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_247BF6A70();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_247BF62A0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_247BF6A20();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    v16 = sub_247BC3818(0, &qword_27EE5DD10, 0x277D85C90);
    v10 = sub_247BF6A40();
    v14 = v11;
    v15 = v10;
    sub_247BF6290();
    v17 = MEMORY[0x277D84F90];
    sub_247BC2A28(&qword_27EE5DDC0, MEMORY[0x277D852D8]);
    v13 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDC8, &qword_247BFA910);
    sub_247BC34F4(&qword_27EE5DDD0, &qword_27EE5DDC8, &qword_247BFA910);
    sub_247BF6BD0();
    (*(v1 + 104))(v4, *MEMORY[0x277D85268], v13);
    return sub_247BF6A80();
  }

  return result;
}

void static DispatchTimeInterval.cuSeconds(_:)(void *a1@<X8>, double a2@<D0>)
{
  if (a2 < 0.0)
  {
    goto LABEL_2;
  }

  if (a2 < 9223372040.0)
  {
    v4 = a2 * 1000000000.0;
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        *a1 = v4;
        v3 = MEMORY[0x277D85168];
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (a2 < 9.22337204e12)
  {
    v5 = a2 * 1000000.0;
    if (*&v5 >> 52 <= 0x7FEuLL)
    {
      if (v5 > -9.22337204e18)
      {
        if (v5 < 9.22337204e18)
        {
          *a1 = v5;
          v3 = MEMORY[0x277D85170];
          goto LABEL_22;
        }

        goto LABEL_30;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a2 < 9.22337204e15)
  {
    v6 = a2 * 1000.0;
    if (*&v6 >> 52 <= 0x7FEuLL)
    {
      if (v6 > -9.22337204e18)
      {
        if (v6 < 9.22337204e18)
        {
          *a1 = v6;
          v3 = MEMORY[0x277D85178];
          goto LABEL_22;
        }

        goto LABEL_33;
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a2 < 9.22337204e18)
  {
    if (*&a2 >> 52 <= 0x7FEuLL)
    {
      if (a2 > -9.22337204e18)
      {
        *a1 = a2;
        v3 = MEMORY[0x277D85188];
        goto LABEL_22;
      }

LABEL_35:
      __break(1u);
      return;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_2:
  v3 = MEMORY[0x277D85180];
LABEL_22:
  v7 = *v3;
  v8 = sub_247BF6270();
  v9 = *(*(v8 - 8) + 104);

  v9(a1, v7, v8);
}

uint64_t Duration.cuAbsoluteValue.getter(uint64_t a1)
{
  sub_247BF7580();
  if (sub_247BF7520())
  {
    sub_247BF7580();
    return sub_247BF7550();
  }

  return a1;
}

double Duration.cuSeconds.getter()
{
  v0 = sub_247BF7510();
  sub_247BF7510();
  return v1 / 1.0e18 + v0;
}

BOOL Duration.cuWithin(fraction:of:)()
{
  sub_247BF7550();
  sub_247BF7580();
  if (sub_247BF7520())
  {
    sub_247BF7580();
    sub_247BF7550();
  }

  sub_247BF7530();
  sub_247BF7580();
  if (sub_247BF7520())
  {
    sub_247BF7580();
    sub_247BF7550();
  }

  return (sub_247BF7520() & 1) == 0;
}

uint64_t FixedWidthInteger.init<A>(bigEndianBytes:offset:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a1;
  v42 = a3;
  v37 = a8;
  v13 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v36 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(*(*(v15 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  result = sub_247BF6E30();
  if ((result & 7) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v19 = result;
  v34 = a2;
  v20 = v42;
  v21 = v38;
  result = sub_247BF6930();
  if (result < v19 >> 3)
  {
    sub_247BC353C();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();
    v23 = *(*(a7 + 8) + 8);
    v24 = swift_getAssociatedTypeWitness();
    (*(*(v24 - 8) + 8))(v20, v24);
    return (*(*(a5 - 8) + 8))(v21, a5);
  }

  v33 = a7;
  if (__OFSUB__(v19, 8))
  {
    goto LABEL_8;
  }

  v25 = sub_247BF6E30();
  v39 = 0;
  v40 = v25;
  v41 = 8;
  swift_getAssociatedConformanceWitness();
  sub_247BF7370();
  v26 = sub_247BF7160();
  v35 = &v33;
  MEMORY[0x28223BE20](v26);
  *(&v33 - 8) = a4;
  *(&v33 - 7) = a5;
  v27 = a5;
  v29 = v33;
  v28 = v34;
  *(&v33 - 6) = a6;
  *(&v33 - 5) = v29;
  v30 = v38;
  *(&v33 - 4) = v38;
  *(&v33 - 3) = v28;
  *(&v33 - 2) = v19 - 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE38, &qword_247BFA9B0);
  sub_247BC34F4(&qword_27EE5DE40, &qword_27EE5DE38, &qword_247BFA9B0);
  sub_247BF6640();
  v31 = *(*(v29 + 8) + 8);
  v32 = swift_getAssociatedTypeWitness();
  (*(*(v32 - 8) + 8))(v42, v32);
  return (*(*(v27 - 8) + 8))(v30, v27);
}

uint64_t sub_247BB74B4(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a8;
  v53 = a5;
  v54 = a7;
  v55 = a3;
  v51 = a2;
  v46 = a1;
  v11 = *(*(a9 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v44 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v43 - v18;
  v20 = *(a6 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v43 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v43 - v28;
  v51 = *v51;
  v30 = v13[2];
  v49 = a4;
  v43[0] = v30;
  v43[1] = v13 + 2;
  v30(v19, a4, AssociatedTypeWitness);
  v48 = v11;
  v31 = sub_247BF69C0();
  LOBYTE(a4) = *v32;
  v31(v56, 0);
  v47 = v13;
  v33 = v13[1];
  v45 = v19;
  v50 = AssociatedTypeWitness;
  v34 = AssociatedTypeWitness;
  v35 = v52;
  v33(v19, v34);
  LOBYTE(v56[0]) = a4;
  v36 = *(v35 + 8);
  sub_247BC5054();
  result = sub_247BF6B30();
  if (__OFSUB__(v53, v51))
  {
    __break(1u);
  }

  else
  {
    v56[0] = v53 - v51;
    sub_247BC360C();
    sub_247BF6B30();
    sub_247BF6E70();
    v53 = v33;
    v38 = v49;
    v39 = *(v20 + 8);
    v39(v24, a6);
    v39(v27, a6);
    sub_247BF6B50();
    v39(v29, a6);
    v40 = v44;
    v41 = v50;
    (v43[0])(v44, v38, v50);
    v42 = v45;
    sub_247BF6960();
    v53(v40, v41);
    return (v47[5])(v38, v42, v41);
  }

  return result;
}

uint64_t FixedWidthInteger.init<A>(littleEndianBytes:offset:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a2;
  v29 = a7;
  v30 = a3;
  v34 = a1;
  v27[2] = a8;
  v11 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v13 = *(*(*(v12 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  result = sub_247BF6E30();
  if ((result & 7) != 0)
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    if (sub_247BF6930() >= result >> 3)
    {
      v31 = 0;
      v32 = v17;
      v33 = 8;
      swift_getAssociatedConformanceWitness();
      sub_247BF7370();
      v21 = sub_247BF7160();
      v27[1] = v27;
      MEMORY[0x28223BE20](v21);
      v27[-6] = a4;
      v27[-5] = a5;
      v22 = v28;
      v23 = v29;
      v27[-4] = a6;
      v27[-3] = v23;
      v24 = v34;
      v27[-2] = v34;
      v27[-1] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE38, &qword_247BFA9B0);
      sub_247BC34F4(&qword_27EE5DE40, &qword_27EE5DE38, &qword_247BFA9B0);
      sub_247BF6640();
      v25 = *(*(v23 + 8) + 8);
      v26 = swift_getAssociatedTypeWitness();
      (*(*(v26 - 8) + 8))(v30, v26);
      return (*(*(a5 - 8) + 8))(v24, a5);
    }

    else
    {
      sub_247BC353C();
      swift_allocError();
      *v18 = 3;
      swift_willThrow();
      v19 = *(*(v29 + 8) + 8);
      v20 = swift_getAssociatedTypeWitness();
      (*(*(v20 - 8) + 8))(v30, v20);
      return (*(*(a5 - 8) + 8))(v34, a5);
    }
  }

  return result;
}

uint64_t sub_247BB7C0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a7;
  v9 = a4;
  v42 = a4;
  v48 = a1;
  v49 = *(*(a8 + 8) + 8);
  v50 = a3;
  v41 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v47 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v45 = *(a5 - 8);
  v18 = *(v45 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v37 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v37 - v25;
  v37 = *a2;
  v28 = v27;
  v40 = v27;
  v43 = *(v27 + 16);
  v44 = v27 + 16;
  v43(v17, v9, AssociatedTypeWitness);
  v38 = v17;
  v29 = sub_247BF69C0();
  LOBYTE(v9) = *v30;
  v29(v51, 0);
  v39 = *(v28 + 8);
  v39(v17, AssociatedTypeWitness);
  LOBYTE(v51[0]) = v9;
  v31 = *(v46 + 8);
  sub_247BC5054();
  sub_247BF6B30();
  v51[0] = v37;
  sub_247BC360C();
  sub_247BF6B30();
  sub_247BF6E70();
  v32 = *(v45 + 8);
  v32(v21, a5);
  v32(v24, a5);
  sub_247BF6B50();
  v32(v26, a5);
  v33 = v47;
  v34 = v42;
  v43(v47, v42, AssociatedTypeWitness);
  v35 = v38;
  sub_247BF6960();
  v39(v33, AssociatedTypeWitness);
  return (*(v40 + 40))(v34, v35, AssociatedTypeWitness);
}

uint64_t FixedWidthInteger.init<A>(bigEndianBytes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a3;
  v23 = a5;
  v19 = a1;
  v7 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = *(*(*(v8 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  result = sub_247BF6E30();
  v13 = result - 8;
  if (__OFSUB__(result, 8))
  {
    __break(1u);
  }

  else
  {
    v20 = 0;
    v21 = sub_247BF6E30();
    v22 = 8;
    swift_getAssociatedConformanceWitness();
    sub_247BF7370();
    v14 = sub_247BF7160();
    v17[1] = v17;
    MEMORY[0x28223BE20](v14);
    v15 = v18;
    v17[-6] = a2;
    v17[-5] = v15;
    v16 = v23;
    v17[-4] = a4;
    v17[-3] = v16;
    v17[-2] = v19;
    v17[-1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE38, &qword_247BFA9B0);
    sub_247BC34F4(&qword_27EE5DE40, &qword_27EE5DE38, &qword_247BFA9B0);
    return sub_247BF6640();
  }

  return result;
}

uint64_t sub_247BB8210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a4;
  v27 = a7;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v25 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  v20 = *v19;
  sub_247BF6AE0();
  if (v31)
  {
    sub_247BC353C();
    swift_allocError();
    *v21 = 3;
    return swift_willThrow();
  }

  else
  {
    v25 = a1;
    v29 = v30;
    v23 = *(v27 + 8);
    sub_247BC5054();
    result = sub_247BF6B30();
    if (__OFSUB__(v26, v20))
    {
      __break(1u);
    }

    else
    {
      v28 = v26 - v20;
      sub_247BC360C();
      sub_247BF6B30();
      sub_247BF6E70();
      v24 = *(v9 + 8);
      v24(v13, a5);
      v24(v16, a5);
      sub_247BF6B50();
      return (v24)(v18, a5);
    }
  }

  return result;
}

uint64_t FixedWidthInteger.init<A>(littleEndianBytes:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v4 = *(*(*(v3 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_247BF6E30();
  swift_getAssociatedConformanceWitness();
  sub_247BF7370();
  sub_247BF7160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE38, &qword_247BFA9B0);
  sub_247BC34F4(&qword_27EE5DE40, &qword_27EE5DE38, &qword_247BFA9B0);
  return sub_247BF6640();
}

uint64_t sub_247BB8658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v25 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v25 - v17;
  v20 = *v19;
  sub_247BF6AE0();
  if (v28)
  {
    sub_247BC353C();
    swift_allocError();
    *v21 = 3;
    return swift_willThrow();
  }

  else
  {
    v26 = v27;
    v25[1] = a1;
    v23 = *(a6 + 8);
    sub_247BC5054();
    sub_247BF6B30();
    v25[3] = v20;
    sub_247BC360C();
    sub_247BF6B30();
    sub_247BF6E70();
    v24 = *(v9 + 8);
    v24(v13, a4);
    v24(v16, a4);
    sub_247BF6B50();
    return (v24)(v18, a4);
  }
}

uint64_t sub_247BB88D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v24 = a5;
  v23 = a4;
  v21 = a6;
  v22 = a2;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v21 - v17;
  (*(v8 + 16))(v11, a1, a3);
  sub_247BF6610();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24(v18, v22, AssociatedTypeWitness, v23, AssociatedConformanceWitness);
  (*(v8 + 8))(a1, a3);
  return (*(v15 + 8))(v18, AssociatedTypeWitness);
}

char *sub_247BB8AD0(int a1)
{
  v2 = sub_247BBE398(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v5;
  v2[v4 + 32] = HIBYTE(a1);
  v6 = *(v2 + 3);
  v7 = v4 + 2;
  if (v5 >= v6 >> 1)
  {
    v2 = sub_247BBE398((v6 > 1), v4 + 2, 1, v2);
  }

  *(v2 + 2) = v7;
  v2[v5 + 32] = BYTE2(a1);
  v8 = *(v2 + 3);
  v9 = v4 + 3;
  if (v7 >= v8 >> 1)
  {
    v2 = sub_247BBE398((v8 > 1), v4 + 3, 1, v2);
  }

  *(v2 + 2) = v9;
  v2[v7 + 32] = BYTE1(a1);
  v10 = *(v2 + 3);
  if (v9 >= v10 >> 1)
  {
    v2 = sub_247BBE398((v10 > 1), v4 + 4, 1, v2);
  }

  *(v2 + 2) = v4 + 4;
  v2[v9 + 32] = a1;
  return v2;
}

char *sub_247BB8C04(uint64_t a1)
{
  v2 = sub_247BBE398(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v5;
  v2[v4 + 32] = HIBYTE(a1);
  v6 = *(v2 + 3);
  v7 = v4 + 2;
  if (v5 >= v6 >> 1)
  {
    v2 = sub_247BBE398((v6 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v7;
  v2[v5 + 32] = BYTE6(a1);
  v8 = *(v2 + 3);
  v9 = v5 + 2;
  if (v7 >= v8 >> 1)
  {
    v2 = sub_247BBE398((v8 > 1), v7 + 1, 1, v2);
  }

  *(v2 + 2) = v9;
  v2[v7 + 32] = BYTE5(a1);
  v10 = *(v2 + 3);
  v11 = v7 + 2;
  if (v9 >= v10 >> 1)
  {
    v2 = sub_247BBE398((v10 > 1), v9 + 1, 1, v2);
  }

  *(v2 + 2) = v11;
  v2[v9 + 32] = BYTE4(a1);
  v12 = *(v2 + 3);
  v13 = v9 + 2;
  if (v11 >= v12 >> 1)
  {
    v2 = sub_247BBE398((v12 > 1), v11 + 1, 1, v2);
  }

  *(v2 + 2) = v13;
  v2[v11 + 32] = BYTE3(a1);
  v14 = *(v2 + 3);
  v15 = v11 + 2;
  if (v13 >= v14 >> 1)
  {
    v2 = sub_247BBE398((v14 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v15;
  v2[v13 + 32] = BYTE2(a1);
  v16 = *(v2 + 3);
  v17 = v11 + 3;
  if (v15 >= v16 >> 1)
  {
    v2 = sub_247BBE398((v16 > 1), v15 + 1, 1, v2);
  }

  *(v2 + 2) = v17;
  v2[v15 + 32] = BYTE1(a1);
  v18 = *(v2 + 3);
  v19 = v13 + 3;
  if (v17 >= v18 >> 1)
  {
    v2 = sub_247BBE398((v18 > 1), v19, 1, v2);
  }

  *(v2 + 2) = v19;
  v2[v17 + 32] = a1;
  return v2;
}

uint64_t FixedWidthInteger.bigEndianBytes.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(v7 + 8) + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v10 = *(v28 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - v14;
  (*(v3 + 16))(v6, v1, a1);
  swift_getAssociatedConformanceWitness();
  v30 = v15;
  sub_247BF6B30();
  swift_getAssociatedConformanceWitness();
  result = sub_247BF6E30();
  v29 = result - 8;
  if (__OFSUB__(result, 8))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  result = sub_247BF6E30();
  v17 = (v28 + 8);
  v28 = result;
  if (result > 0)
  {
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v20 = __OFADD__(v18, 8) ? 0x7FFFFFFFFFFFFFFFLL : v18 + 8;
      v21 = __OFSUB__(v29, v18);
      v22 = v29 - v18;
      if (v21)
      {
        break;
      }

      v31 = v22;
      sub_247BC360C();
      sub_247BF6B40();
      v23 = sub_247BF6B60();
      v24 = *v17;
      (*v17)(v13, AssociatedTypeWitness);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_247BBE398(0, *(v19 + 16) + 1, 1, v19);
        v19 = result;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_247BBE398((v25 > 1), v26 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 16) = v26 + 1;
      *(v19 + v26 + 32) = v23;
      v18 = v20;
      if (v20 >= v28)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v24 = *v17;
  v19 = MEMORY[0x277D84F90];
LABEL_15:
  v24(v30, AssociatedTypeWitness);
  return v19;
}

char *sub_247BB9190(int a1)
{
  v2 = sub_247BBE398(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 1, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v6;
  v2[v4 + 32] = a1;
  v7 = v4 + 2;
  if (v5 <= v6)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 2, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v7;
  v2[v6 + 32] = BYTE1(a1);
  v8 = v4 + 3;
  if (v5 <= v7)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 3, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v8;
  v2[v7 + 32] = BYTE2(a1);
  if (v5 <= v8)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 4, 1, v2);
  }

  *(v2 + 2) = v4 + 4;
  v2[v8 + 32] = HIBYTE(a1);
  return v2;
}

char *sub_247BB92D4(uint64_t a1)
{
  v2 = sub_247BBE398(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 1, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v6;
  v2[v4 + 32] = a1;
  v7 = v4 + 2;
  if (v5 <= v6)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 2, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v7;
  v2[v6 + 32] = BYTE1(a1);
  v8 = v4 + 3;
  if (v5 <= v7)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 3, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v8;
  v2[v7 + 32] = BYTE2(a1);
  v9 = v4 + 4;
  if (v5 <= v8)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 4, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v9;
  v2[v8 + 32] = BYTE3(a1);
  v10 = v4 + 5;
  if (v5 <= v9)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 5, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v10;
  v2[v9 + 32] = BYTE4(a1);
  v11 = v4 + 6;
  if (v5 <= v10)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 6, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v11;
  v2[v10 + 32] = BYTE5(a1);
  v12 = v4 + 7;
  if (v5 <= v11)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 7, 1, v2);
    v3 = *(v2 + 3);
    v5 = v3 >> 1;
  }

  *(v2 + 2) = v12;
  v2[v11 + 32] = BYTE6(a1);
  if (v5 <= v12)
  {
    v2 = sub_247BBE398((v3 > 1), v4 + 8, 1, v2);
  }

  *(v2 + 2) = v4 + 8;
  v2[v12 + 32] = HIBYTE(a1);
  return v2;
}

char *FixedWidthInteger.littleEndianBytes.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 + 8) + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v27 - v16;
  (*(v4 + 16))(v7, v2, a1);
  swift_getAssociatedConformanceWitness();
  v29 = v17;
  sub_247BF6B30();
  swift_getAssociatedConformanceWitness();
  v28 = sub_247BF6E30();
  if (v28 <= 0)
  {
    v23 = *(v11 + 8);
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    v27[2] = sub_247BC360C();
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    v20 = (v11 + 8);
    v27[1] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    do
    {
      if (__OFADD__(v18, 8))
      {
        v21 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v18 + 8;
      }

      v30 = v18;
      sub_247BF6B40();
      v22 = sub_247BF6B60();
      v23 = *v20;
      (*v20)(v15, AssociatedTypeWitness);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_247BBE398(0, *(v19 + 2) + 1, 1, v19);
      }

      v25 = *(v19 + 2);
      v24 = *(v19 + 3);
      if (v25 >= v24 >> 1)
      {
        v19 = sub_247BBE398((v24 > 1), v25 + 1, 1, v19);
      }

      *(v19 + 2) = v25 + 1;
      v19[v25 + 32] = v22;
      v18 = v21;
    }

    while (v21 < v28);
  }

  v23(v29, AssociatedTypeWitness);
  return v19;
}

uint64_t FixedWidthInteger.init(exactlyThrowing:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v7 = sub_247BF6AC0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  (*(v17 + 16))(&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(*(a3 + 8) + 24);
  v19 = *(v12 + 8);
  sub_247BF6910();
  v20 = *(a2 - 8);
  if ((*(v20 + 48))(v11, 1, a2) == 1)
  {
    (*(v8 + 8))(v11, v7);
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6710, 0x65766F2074736143, 0xED0000776F6C6672, 0);
    swift_willThrow();
  }

  else
  {
    (*(v20 + 32))(v23, v11, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t FixedWidthInteger.addingThrowingOverflow(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_247BF6E40();
  if (result)
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6710, 0xD000000000000010, 0x8000000247C01040, 0);
    swift_willThrow();
    return (*(*(a1 - 8) + 8))(a2, a1);
  }

  return result;
}

float sub_247BB9BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, char *, uint64_t, char *, void, uint64_t, unint64_t, uint64_t))
{
  v27 = a6;
  v25 = a2;
  v10 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v24 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, a4);
  (*(v12 + 16))(v16, a3, AssociatedTypeWitness);
  v21 = sub_247BC3660();
  v22 = v26;
  v27(&v28, v20, v25, v16, MEMORY[0x277D84CC0], a4, v21, a5);
  (*(v12 + 8))(a3, AssociatedTypeWitness);
  (*(v17 + 8))(a1, a4);
  if (!v22)
  {
    return *&v28;
  }

  return result;
}

float Float.init<A>(bigEndianBytes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_247BB9E60(a1, a2, a3, FixedWidthInteger.init<A>(bigEndianBytes:));
}

{
  return sub_247BB9F30(a1, a2, a3, FixedWidthInteger.init<A>(bigEndianBytes:));
}

float Float.init<A>(littleEndianBytes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_247BB9E60(a1, a2, a3, FixedWidthInteger.init<A>(littleEndianBytes:));
}

{
  return sub_247BB9F30(a1, a2, a3, FixedWidthInteger.init<A>(littleEndianBytes:));
}

float sub_247BB9E60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, void, uint64_t, unint64_t, uint64_t))
{
  v9 = sub_247BC3660();
  a4(&v11, a1, MEMORY[0x277D84CC0], a2, v9, a3);
  if (!v4)
  {
    return *&v11;
  }

  return result;
}

float sub_247BB9F30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, char *, void, uint64_t, unint64_t, uint64_t))
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, a2);
  v13 = sub_247BC3660();
  a4(&v16, v12, MEMORY[0x277D84CC0], a2, v13, a3);
  (*(v9 + 8))(a1, a2);
  if (!v4)
  {
    return *&v16;
  }

  return result;
}

double sub_247BBA0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(double *__return_ptr, char *, uint64_t, char *, void, uint64_t, unint64_t, uint64_t))
{
  v27 = a6;
  v25 = a2;
  v10 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v24 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, a4);
  (*(v12 + 16))(v16, a3, AssociatedTypeWitness);
  v21 = sub_247BC36B4();
  v22 = v26;
  v27(&v28, v20, v25, v16, MEMORY[0x277D84D38], a4, v21, a5);
  (*(v12 + 8))(a3, AssociatedTypeWitness);
  (*(v17 + 8))(a1, a4);
  if (!v22)
  {
    return v28;
  }

  return result;
}

double Double.init<A>(bigEndianBytes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_247BBA360(a1, a2, a3, FixedWidthInteger.init<A>(bigEndianBytes:));
}

{
  return sub_247BBA430(a1, a2, a3, FixedWidthInteger.init<A>(bigEndianBytes:));
}

double Double.init<A>(littleEndianBytes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_247BBA360(a1, a2, a3, FixedWidthInteger.init<A>(littleEndianBytes:));
}

{
  return sub_247BBA430(a1, a2, a3, FixedWidthInteger.init<A>(littleEndianBytes:));
}

double sub_247BBA360(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(double *__return_ptr, uint64_t, void, uint64_t, unint64_t, uint64_t))
{
  v9 = sub_247BC36B4();
  a4(&v11, a1, MEMORY[0x277D84D38], a2, v9, a3);
  if (!v4)
  {
    return v11;
  }

  return result;
}

double sub_247BBA430(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(double *__return_ptr, char *, void, uint64_t, unint64_t, uint64_t))
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, a2);
  v13 = sub_247BC36B4();
  a4(&v16, v12, MEMORY[0x277D84D38], a2, v13, a3);
  (*(v9 + 8))(a1, a2);
  if (!v4)
  {
    return v16;
  }

  return result;
}

uint64_t Numeric<>.cuIsApproximatelyEqual(to:absoluteTolerance:relativeTolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v14 = a5;
  v15 = a6;
  KeyPath = swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = AdditiveArithmetic.cuIsApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(a1, a2, a3, sub_247BC3708, v13, a4, AssociatedTypeWitness, *(v14 + 8), v15);

  return v11 & 1;
}

uint64_t sub_247BBA650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + a3 - 24);
  v3 = *(a2 + a3 - 16);
  return sub_247BF6920();
}

uint64_t AdditiveArithmetic.cuIsApproximatelyEqual<A>(to:absoluteTolerance:relativeTolerance:norm:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v51 = a4;
  v53 = a3;
  v54 = a2;
  v12 = *(a6 - 8);
  v47 = a5;
  v48 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v17 - 8);
  v18 = *(v50 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v52 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v45 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v49 = &v45 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v45 - v29;
  v32 = *(v31 + 8);
  v34 = v33;
  if (sub_247BF6460())
  {
    v35 = 1;
  }

  else
  {
    v45 = a9;
    sub_247BF6EA0();
    v46 = v30;
    v36 = v51;
    v51(v16);
    (*(v48 + 8))(v16, a6);
    v36(v9);
    v37 = v46;
    v36(v34);
    v38 = v45;
    v39 = *(*(v45 + 24) + 8);
    v40 = v49;
    sub_247BF7390();
    v41 = *(v50 + 8);
    v41(v23, a7);
    v41(v26, a7);
    v42 = *(*(v38 + 16) + 8);
    sub_247BF6900();
    v43 = v52;
    sub_247BF7390();
    v41(v26, a7);
    if (sub_247BF6380())
    {
      v35 = sub_247BF6440();
    }

    else
    {
      v35 = 0;
    }

    v41(v43, a7);
    v41(v40, a7);
    v41(v37, a7);
  }

  return v35 & 1;
}

uint64_t NWEndpoint.init(_:defaultPort:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v96 = a3;
  v104 = a4;
  v112 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE68, &qword_247BFA9E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v95 = &v89 - v8;
  v9 = sub_247BF61A0();
  v102 = *(v9 - 8);
  v103 = v9;
  v10 = *(v102 + 64);
  MEMORY[0x28223BE20](v9);
  v101 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDD8, &qword_247BFA930);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v100 = &v89 - v14;
  v15 = sub_247BF6220();
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = *(v98 + 64);
  MEMORY[0x28223BE20](v15);
  v97 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE70, &qword_247BFA9F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v107 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v105 = &v89 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDE0, &qword_247BFA938);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v89 - v25;
  v27 = sub_247BF61E0();
  v106 = *(v27 - 8);
  v28 = *(v106 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_247BF6160();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v111, 0, 28);
  v36 = a1;
  v108 = a2;
  sub_247BF64B0();
  v37 = StringToSockAddr();

  if (!v37)
  {
    v89 = v30;
    v44 = v106;
    v90 = v27;
    v45 = v107;
    v91 = v35;
    v92 = v32;
    v93 = v31;
    v94 = v36;
    v46 = v108;
    v47 = v111[0];
    v48 = *(v111 + 2);
    if (BYTE1(v111[0]) == 30)
    {
      *(&v54 + 1) = WORD5(v111[1]);
      *&v54 = *(&v111[1] + 2);
      *&v110 = *(v111 + 2) >> 48;
      *(&v110 + 1) = *(v111 + 10) >> 48;
      v55 = sub_247BBB688(&v110, v111);
      v57 = v56;
      LOBYTE(v111[0]) = v47;
      BYTE1(v111[0]) = 30;
      WORD1(v111[0]) = v48;
      DWORD1(v111[0]) = v48 >> 16;
      *(v111 + 8) = v110;
      DWORD2(v111[1]) = v54 >> 48;
      if ((v54 >> 48))
      {
        v59 = v45;
        sub_247BF6260();
      }

      else
      {
        v58 = sub_247BF6250();
        v59 = v45;
        (*(*(v58 - 8) + 56))(v45, 1, 1, v58);
      }

      v64 = v94;
      v66 = v99;
      v65 = v100;
      sub_247BC5B0C(v59, v105, &qword_27EE5DE70, &qword_247BFA9F0);
      sub_247BC2A70(v55, v57);
      sub_247BF6230();
      v67 = v98;
      v68 = (*(v98 + 48))(v65, 1, v66);
      v69 = v97;
      if (v68 == 1)
      {
        sub_247B9CAD0(v65, &qword_27EE5DDD8, &qword_247BFA930);
        type metadata accessor for CUError();
        *&v110 = 0;
        *(&v110 + 1) = 0xE000000000000000;
        sub_247BF6CF0();

        *&v110 = 0xD00000000000001BLL;
        *(&v110 + 1) = 0x8000000247C01080;
        MEMORY[0x24C1B4020](v64, v46);

        CUError.__allocating_init(_:_:_:)(-6700, v110, *(&v110 + 1), 0);
        swift_willThrow();
        sub_247BC2AC4(v55, v57);
        result = sub_247B9CAD0(v59, &qword_27EE5DE70, &qword_247BFA9F0);
        goto LABEL_4;
      }

      sub_247B9CAD0(v59, &qword_27EE5DE70, &qword_247BFA9F0);
      sub_247BC2AC4(v55, v57);

      v70 = *(v67 + 32);
      v70(v69, v65, v66);
      v71 = v69;
      v62 = v91;
      v70(v91, v71, v66);
      v63 = MEMORY[0x277CD8AE0];
    }

    else
    {
      if (BYTE1(v111[0]) != 2)
      {
        type metadata accessor for CUError();
        *&v110 = 0;
        *(&v110 + 1) = 0xE000000000000000;
        sub_247BF6CF0();

        *&v110 = 0xD00000000000001ALL;
        *(&v110 + 1) = 0x8000000247C01060;
        MEMORY[0x24C1B4020](v94, v46);

        CUError.__allocating_init(_:_:_:)(-6735, v110, *(&v110 + 1), 0);
        goto LABEL_3;
      }

      LOBYTE(v110) = v111[0];
      BYTE1(v110) = 2;
      *(&v110 + 2) = *(v111 + 2);
      *(&v110 + 10) = *(v111 + 10);
      HIWORD(v110) = HIWORD(v111[0]);
      v49 = sub_247BBB688(&v110 + 4, &v110 + 8);
      v51 = v50;
      v111[0] = v110;
      v52 = sub_247BF6250();
      (*(*(v52 - 8) + 56))(v105, 1, 1, v52);
      sub_247BC2A70(v49, v51);
      sub_247BF61F0();
      v53 = v90;
      if ((*(v44 + 48))(v26, 1, v90) == 1)
      {
        sub_247B9CAD0(v26, &qword_27EE5DDE0, &qword_247BFA938);
        type metadata accessor for CUError();
        *&v110 = 0;
        *(&v110 + 1) = 0xE000000000000000;
        sub_247BF6CF0();

        *&v110 = 0xD00000000000001BLL;
        *(&v110 + 1) = 0x8000000247C010E0;
        MEMORY[0x24C1B4020](v94, v46);

        CUError.__allocating_init(_:_:_:)(-6700, v110, *(&v110 + 1), 0);
        swift_willThrow();
        result = sub_247BC2AC4(v49, v51);
        goto LABEL_4;
      }

      sub_247BC2AC4(v49, v51);

      v60 = *(v44 + 32);
      v61 = v89;
      v60(v89, v26, v53);
      v62 = v91;
      v60(v91, v61, v53);
      v63 = MEMORY[0x277CD8AD8];
    }

    v72 = v92;
    v73 = v93;
    (*(v92 + 104))(v62, *v63, v93);
    Port = SockAddrGetPort();
    v76 = v103;
    v75 = v104;
    v78 = v101;
    v77 = v102;
    if (Port < 1)
    {
      sub_247BF6170();
    }

    else
    {
      v79 = Port;
      if (Port >= 0x10000)
      {
        type metadata accessor for CUError();
        *&v110 = 0;
        *(&v110 + 1) = 0xE000000000000000;
        sub_247BF6CF0();

        *&v110 = 0xD000000000000013;
        *(&v110 + 1) = 0x8000000247C010C0;
        v109 = v79;
        v80 = sub_247BF6FD0();
        MEMORY[0x24C1B4020](v80);

        v82 = *(&v110 + 1);
        v81 = v110;
        v83 = -6705;
LABEL_23:
        CUError.__allocating_init(_:_:_:)(v83, v81, v82, 0);
        swift_willThrow();
        result = (*(v72 + 8))(v62, v73);
        goto LABEL_4;
      }

      v84 = v95;
      sub_247BF6180();
      if ((*(v77 + 48))(v84, 1, v76) == 1)
      {
        sub_247B9CAD0(v84, &qword_27EE5DE68, &qword_247BFA9E8);
        type metadata accessor for CUError();
        *&v110 = 0;
        *(&v110 + 1) = 0xE000000000000000;
        sub_247BF6CF0();

        *&v110 = 0xD000000000000017;
        *(&v110 + 1) = 0x8000000247C010A0;
        v109 = v79;
        v85 = sub_247BF6FD0();
        MEMORY[0x24C1B4020](v85);

        v82 = *(&v110 + 1);
        v81 = v110;
        v83 = -6700;
        goto LABEL_23;
      }

      (*(v77 + 32))(v78, v84, v76);
    }

    v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE78, &unk_247BFA9F8) + 48);
    (*(v72 + 32))(v75, v62, v73);
    (*(v77 + 32))(v75 + v86, v78, v76);
    v87 = *MEMORY[0x277CD8B08];
    v88 = sub_247BF61C0();
    result = (*(*(v88 - 8) + 104))(v75, v87, v88);
    goto LABEL_4;
  }

  type metadata accessor for CUError();
  v38 = *MEMORY[0x277CCA590];
  v39 = sub_247BF6480();
  v41 = v40;
  *&v110 = 0;
  *(&v110 + 1) = 0xE000000000000000;
  sub_247BF6CF0();

  *&v110 = 0x7320504920646142;
  *(&v110 + 1) = 0xEF203A676E697274;
  MEMORY[0x24C1B4020](v36, v108);

  CUError.__allocating_init(domain:code:message:underlying:)(v39, v41, v37, v110, *(&v110 + 1), 0);
LABEL_3:
  result = swift_willThrow();
LABEL_4:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_247BBB688(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_247BC3058(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_247BC4FD8(v3, v4);
    }

    else
    {
      v6 = sub_247BC4F54(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

uint64_t NWEndpoint.Port.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE68, &qword_247BFA9E8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25[-1] - v9;
  v11 = sub_247BF61A0();
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74C0();
  if (v2)
  {
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_247BF71F0();
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    sub_247BF6180();
    v16 = v27;
    if ((*(v27 + 48))(v10, 1, v11) != 1)
    {
LABEL_9:
      v23 = *(v16 + 32);
      v23(v14, v10, v11);
      v23(v24, v14, v11);
      return __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    sub_247B9CAD0(v10, &qword_27EE5DE68, &qword_247BFA9E8);
  }

  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74C0();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_247BF71A0();
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  sub_247BF61B0();
  v16 = v27;
  if ((*(v27 + 48))(v8, 1, v11) != 1)
  {
    v10 = v8;
    goto LABEL_9;
  }

  sub_247B9CAD0(v8, &qword_27EE5DE68, &qword_247BFA9E8);
  v18 = sub_247BF6D40();
  swift_allocError();
  v20 = v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74B0();
  sub_247BF6D30();
  (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84168], v18);
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t NWEndpoint.Port.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74F0();
  sub_247BF6190();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_247BF7260();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_247BBBBF4(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74F0();
  sub_247BF6190();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_247BF7260();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t Optional.unwrap(_:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v8 = v7;
  v24 = a5;
  v23 = a4;
  v22[1] = a3;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v8, v17);
  v18 = *(a6 + 16);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    v21 = (*(v13 + 8))(v16, a6);
    MEMORY[0x28223BE20](v21);
    v22[-4] = v18;
    v22[-3] = v8;
    v22[-2] = a1;
    v22[-1] = a2;
    fatalError(_:file:line:)(sub_247BC3710);
  }

  return (*(v19 + 32))(a7, v16, v18);
}

uint64_t PairingSetupCodeType.description.getter(unsigned int a1)
{
  if (a1 <= 8)
  {
    v1 = off_278EDBDD0[a1];
  }

  return sub_247BF6560();
}

uint64_t sub_247BBBFF0()
{
  CUPairingSetupCodeTypeToString(*v0);

  return sub_247BF6560();
}

uint64_t sub_247BBC0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = sub_247BF64B0();
  fputs((v4 + 32), v3);
}

uint64_t sub_247BBC138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a5();
  v6 = sub_247BF64B0();
  fputs((v6 + 32), v5);
}

uint64_t String.init(xpcObject:)(void *a1)
{
  if (xpc_string_get_string_ptr(a1))
  {
    v1 = sub_247BF6560();
    swift_unknownObjectRelease();
    return v1;
  }

  else
  {
    type metadata accessor for CUError();
    CUError.__allocating_init(_:_:_:)(-6756, 0xD000000000000026, 0x8000000247C01100, 0);
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t UInt8.init<A>(bytes:offset:end:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v21[-v14];
  if (sub_247BF6930() < 1)
  {
    sub_247BC353C();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
    (*(v12 + 8))(a3, AssociatedTypeWitness);
    (*(*(a4 - 8) + 8))(a1, a4);
  }

  else
  {
    v16 = sub_247BF69C0();
    v5 = *v17;
    v16(v21, 0);
    (*(v12 + 32))(v15, a2, AssociatedTypeWitness);
    sub_247BF6960();
    v18 = *(v12 + 8);
    v18(a3, AssociatedTypeWitness);
    (*(*(a4 - 8) + 8))(a1, a4);
    v18(v15, AssociatedTypeWitness);
  }

  return v5;
}

unint64_t static UInt64.randomRecognizableIdentifier.getter()
{
  result = sub_247BC0690(0xF4240uLL);
  if (is_mul_ok(result + 1, 0xF4240uLL))
  {
    return (1000000 * (result + 1)) | 1;
  }

  __break(1u);
  return result;
}

uint64_t static NSUserDefaults.allKeys(suiteName:)()
{
  v0 = sub_247BF6470();
  v1 = CFPreferencesCopyKeyList(v0, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  if (v1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_247BF66B0();
    }
  }

  return MEMORY[0x277D84F90];
}

Swift::Bool_optional __swiftcall NSUserDefaults.BOOLLike(forKey:)(Swift::String forKey)
{
  v2 = sub_247BF6470();
  v3 = [v1 objectForKey_];

  if (!v3)
  {
    return 2;
  }

  sub_247BF6BB0();
  swift_unknownObjectRelease();
  sub_247B9471C(v8, v9);
  sub_247B9B1AC(v9, v8);
  sub_247BC3818(0, &qword_27EE5DE80, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    v4.value = [v7 BOOLValue];

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return v4;
  }

  sub_247B9B1AC(v9, v8);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return 2;
  }

  v8[0] = v7;
  sub_247BC3000();
  if (StringProtocol.isTrue.getter())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);

    return 1;
  }

  else
  {
    v8[0] = v7;
    v6 = StringProtocol.isFalse.getter();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);

    if (v6)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int_optional __swiftcall NSUserDefaults.intLike(forKey:)(Swift::String forKey)
{
  v2 = sub_247BF6470();
  v3 = [v1 objectForKey_];

  if (!v3)
  {
    goto LABEL_26;
  }

  sub_247BF6BB0();
  swift_unknownObjectRelease();
  sub_247B9471C(v32, v33);
  sub_247B9B1AC(v33, v32);
  sub_247BC3818(0, &qword_27EE5DE80, 0x277CCABB0);
  if (!swift_dynamicCast())
  {
    sub_247B9B1AC(v33, v32);
    v5 = swift_dynamicCast();
    if (v5)
    {
      v7 = HIBYTE(*(&v31 + 1)) & 0xFLL;
      v8 = v31 & 0xFFFFFFFFFFFFLL;
      if ((*(&v31 + 1) & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(*(&v31 + 1)) & 0xFLL;
      }

      else
      {
        v9 = v31 & 0xFFFFFFFFFFFFLL;
      }

      if (!v9)
      {
        goto LABEL_71;
      }

      if ((*(&v31 + 1) & 0x1000000000000000) != 0)
      {

        v4 = sub_247BC071C(v31, *(&v31 + 1), 10);
        v30 = v29;

        if (v30)
        {
LABEL_71:
          v32[0] = v31;
          sub_247BC3000();
          if (StringProtocol.isTrue.getter())
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v33);

            v6 = 0;
            v5 = 1;
          }

          else
          {
            v32[0] = v31;
            v28 = StringProtocol.isFalse.getter();
            __swift_destroy_boxed_opaque_existential_1Tm(v33);

            v5 = 0;
            v6 = !v28;
          }

          goto LABEL_27;
        }

LABEL_75:

        goto LABEL_4;
      }

      if ((*(&v31 + 1) & 0x2000000000000000) != 0)
      {
        *&v32[0] = v31;
        *(&v32[0] + 1) = *(&v31 + 1) & 0xFFFFFFFFFFFFFFLL;
        if (v31 == 43)
        {
          if (v7)
          {
            if (--v7)
            {
              v4 = 0;
              v20 = v32 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v4;
                if ((v4 * 10) >> 64 != (10 * v4) >> 63)
                {
                  break;
                }

                v4 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  break;
                }

                ++v20;
                if (!--v7)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (v31 != 45)
        {
          if (v7)
          {
            v4 = 0;
            v25 = v32;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v4;
              if ((v4 * 10) >> 64 != (10 * v4) >> 63)
              {
                break;
              }

              v4 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v7)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

        if (v7)
        {
          if (--v7)
          {
            v4 = 0;
            v14 = v32 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              v16 = 10 * v4;
              if ((v4 * 10) >> 64 != (10 * v4) >> 63)
              {
                break;
              }

              v4 = v16 - v15;
              if (__OFSUB__(v16, v15))
              {
                break;
              }

              ++v14;
              if (!--v7)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }
      }

      else
      {
        if ((v31 & 0x1000000000000000) != 0)
        {
          v5 = (*(&v31 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v5 = sub_247BF6D70();
        }

        v10 = *v5;
        if (v10 == 43)
        {
          if (v8 >= 1)
          {
            v7 = v8 - 1;
            if (v8 != 1)
            {
              v4 = 0;
              if (v5)
              {
                v17 = (v5 + 1);
                while (1)
                {
                  v18 = *v17 - 48;
                  if (v18 > 9)
                  {
                    goto LABEL_69;
                  }

                  v19 = 10 * v4;
                  if ((v4 * 10) >> 64 != (10 * v4) >> 63)
                  {
                    goto LABEL_69;
                  }

                  v4 = v19 + v18;
                  if (__OFADD__(v19, v18))
                  {
                    goto LABEL_69;
                  }

                  ++v17;
                  if (!--v7)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_61;
            }

            goto LABEL_69;
          }

          goto LABEL_79;
        }

        if (v10 != 45)
        {
          if (v8)
          {
            v4 = 0;
            if (v5)
            {
              while (1)
              {
                v23 = *v5 - 48;
                if (v23 > 9)
                {
                  goto LABEL_69;
                }

                v24 = 10 * v4;
                if ((v4 * 10) >> 64 != (10 * v4) >> 63)
                {
                  goto LABEL_69;
                }

                v4 = v24 + v23;
                if (__OFADD__(v24, v23))
                {
                  goto LABEL_69;
                }

                ++v5;
                if (!--v8)
                {
                  goto LABEL_61;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_69:
          v4 = 0;
          LOBYTE(v7) = 1;
LABEL_70:
          if (v7)
          {
            goto LABEL_71;
          }

          goto LABEL_75;
        }

        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v4 = 0;
            if (v5)
            {
              v11 = (v5 + 1);
              while (1)
              {
                v12 = *v11 - 48;
                if (v12 > 9)
                {
                  goto LABEL_69;
                }

                v13 = 10 * v4;
                if ((v4 * 10) >> 64 != (10 * v4) >> 63)
                {
                  goto LABEL_69;
                }

                v4 = v13 - v12;
                if (__OFSUB__(v13, v12))
                {
                  goto LABEL_69;
                }

                ++v11;
                if (!--v7)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_61:
            LOBYTE(v7) = 0;
            goto LABEL_70;
          }

          goto LABEL_69;
        }

        __break(1u);
      }

      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v33);
LABEL_26:
    v5 = 0;
    v6 = 1;
    goto LABEL_27;
  }

  v4 = [v31 integerValue];

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  v5 = v4;
  v6 = 0;
LABEL_27:
  LOBYTE(v8) = v6 & 1;
LABEL_81:
  result.is_nil = v8;
  result.value = v5;
  return result;
}

uint64_t UUID.init(node:)()
{
  v0 = sub_247BF5F30();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BF5F20();
  return UUID.init(base:node:)(v3);
}

uint64_t UUID.init(base:node:)(uint64_t a1)
{
  sub_247BF5F10();
  sub_247BF5F00();
  v2 = sub_247BF5F30();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

double UUID.bytes.getter()
{
  v0 = sub_247BF5F10();
  v1 = v0;
  v3 = v2;
  v4 = v0 >> 8;
  v5 = v0 >> 16;
  v6 = v0 >> 24;
  v7 = HIDWORD(v0);
  v8 = v0 >> 40;
  v9 = HIWORD(v0);
  v10 = HIBYTE(v0);
  v11 = v2 >> 8;
  v14 = v2 >> 16;
  v15 = v2 >> 24;
  v16 = HIDWORD(v2);
  v17 = v2 >> 40;
  v18 = HIWORD(v2);
  v19 = HIBYTE(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
  v12 = swift_allocObject();
  *&result = 16;
  *(v12 + 16) = xmmword_247BFA860;
  *(v12 + 32) = v1;
  *(v12 + 33) = v4;
  *(v12 + 34) = v5;
  *(v12 + 35) = v6;
  *(v12 + 36) = v7;
  *(v12 + 37) = v8;
  *(v12 + 38) = v9;
  *(v12 + 39) = v10;
  *(v12 + 40) = v3;
  *(v12 + 41) = v11;
  *(v12 + 42) = v14;
  *(v12 + 43) = v15;
  *(v12 + 44) = v16;
  *(v12 + 45) = v17;
  *(v12 + 46) = v18;
  *(v12 + 47) = v19;
  return result;
}

double UUIDTtoBytes(_:)(char a1, char a2, char a3, char a4, char a5, char a6, char a7, char a8, int a9, int a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
  v18 = swift_allocObject();
  *&result = 16;
  *(v18 + 16) = xmmword_247BFA860;
  *(v18 + 32) = a1;
  *(v18 + 33) = a2;
  *(v18 + 34) = a3;
  *(v18 + 35) = a4;
  *(v18 + 36) = a5;
  *(v18 + 37) = a6;
  *(v18 + 38) = a7;
  *(v18 + 39) = a8;
  *(v18 + 40) = a9;
  *(v18 + 44) = a10;
  return result;
}

uint64_t OS_xpc_object.nestedDescription.getter()
{
  v1 = MEMORY[0x24C1B5BB0](v0);
  sub_247BF6560();
  free(v1);
  sub_247BC3000();
  v2 = sub_247BF6AF0();

  return v2;
}

uint64_t OS_xpc_object.cuData(_:)()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x24C1B5CC0](v0);
  if (v1 == sub_247BF6110() && (v6[0] = 0, v3 = sub_247BF64B0(), data = xpc_dictionary_get_data(v0, (v3 + 32), v6), , data))
  {
    result = sub_247BC3110(data, v6[0]);
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OS_xpc_object.cuDecodedObject<A, B>(key:decoder:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  v5 = OS_xpc_object.cuData(_:)();
  if (v6 >> 60 == 15)
  {
    return (*(*(a1 - 8) + 56))(a2, 1, 1, a1);
  }

  v8 = v6;
  v9 = v5;
  sub_247BF6140();
  result = sub_247BC3860(v9, v8);
  if (!v2)
  {
    return (*(*(a1 - 8) + 56))(a2, 0, 1, a1);
  }

  return result;
}

uint64_t OS_xpc_object.cuSetEncodedObject<A>(_:key:encoder:)(void *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_247BF6150();
  if (!v2)
  {
    v5 = Data.xpcObjectRepresentation.getter(v7, v8);
    sub_247BC2AC4(v7, v8);
    v6 = sub_247BF64B0();
    xpc_dictionary_set_value(v1, (v6 + 32), v5);
    swift_unknownObjectRelease();
  }

  return result;
}

Swift::Double __swiftcall OS_xpc_object.cuDouble(_:)(Swift::String a1)
{
  v2 = MEMORY[0x24C1B5CC0]();
  if (v2 != sub_247BF6110())
  {
    return NAN;
  }

  v4 = sub_247BF64B0();
  v5 = xpc_dictionary_get_double(v1, (v4 + 32));

  return v5;
}

Swift::String_optional __swiftcall OS_xpc_object.cuString(_:)(Swift::String a1)
{
  v2 = MEMORY[0x24C1B5CC0]();
  if (v2 == sub_247BF6110() && (v5 = sub_247BF64B0(), string = xpc_dictionary_get_string(v1, (v5 + 32)), , string))
  {
    v3 = sub_247BF6560();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::OpaquePointer_optional __swiftcall OS_xpc_object.cuStringArray(_:skipBadValues:)(Swift::String _, Swift::Bool skipBadValues)
{
  v4 = sub_247BF64B0();
  v5 = xpc_dictionary_get_array(v2, (v4 + 32));

  if (v5)
  {
    v14 = MEMORY[0x277D84F90];
    v7 = swift_allocObject();
    *(v7 + 16) = skipBadValues;
    *(v7 + 24) = &v14;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_247BC3874;
    *(v8 + 24) = v7;
    aBlock[4] = sub_247BC3940;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_247BBD744;
    aBlock[3] = &block_descriptor_54;
    v9 = _Block_copy(aBlock);

    v10 = xpc_array_apply(v5, v9);
    swift_unknownObjectRelease();
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_7;
    }

    v5 = v14;

    if (!v10)
    {

      v5 = 0;
    }
  }

  v12 = v5;
LABEL_7:
  result.value._rawValue = v12;
  result.is_nil = v6;
  return result;
}

uint64_t sub_247BBD744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

Swift::UInt64 __swiftcall OS_xpc_object.cuUInt64(_:)(Swift::String a1)
{
  v2 = MEMORY[0x24C1B5CC0]();
  if (v2 != sub_247BF6110())
  {
    return 0;
  }

  v4 = sub_247BF64B0();
  v5 = xpc_dictionary_get_value(v1, (v4 + 32));

  if (!v5)
  {
    return 0;
  }

  v6 = MEMORY[0x24C1B5CC0](v5);
  if (sub_247BF60E0() == v6)
  {
    value = xpc_uint64_get_value(v5);
LABEL_9:
    v7 = value;
    goto LABEL_10;
  }

  if (sub_247BF60D0() == v6)
  {
    value = xpc_int64_get_value(v5);
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:
  swift_unknownObjectRelease();
  return v7;
}

uint64_t OS_xpc_object.cuUUID(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_247BF64B0();
  v2 = CUXPCObjectGetUUID();

  if (v2)
  {
    sub_247BF5EF0();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_247BF5F30();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t OS_xpc_object.cuSetUUID(_:key:)()
{
  v0 = sub_247BF5EE0();
  sub_247BF64B0();
  CUXPCObjectSetUUID();
}

uint64_t sub_247BBD99C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_247BBD9D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  v4 = sub_247BF6470();

  return v4;
}

uint64_t sub_247BBDA48(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247BC5BDC;

  return v7(a1);
}

uint64_t sub_247BBDB40@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = v6;

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247BBDC2C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247BBDD24;

  return v7(a1);
}

uint64_t sub_247BBDD24()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_247BBDE1C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_247BBDED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  sub_247BC57F0(&v14);
}

size_t sub_247BBDF88(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF50, &qword_247BFBB30);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_247BBE178(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF28, &qword_247BFD270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_247BBE27C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF18, &qword_247BFBAF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_247BBE398(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
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

char *sub_247BBE48C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DDA8, &qword_247BFA8F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_247BBE598(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF30, &qword_247BFBB10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_247BBE628(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_247BBE6F4(v11, 0, 0, 1, a1, a2);
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
    sub_247B9B1AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_247BBE6F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_247BBE800(a5, a6);
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
    result = sub_247BF6D70();
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

uint64_t sub_247BBE800(uint64_t a1, unint64_t a2)
{
  v4 = sub_247BBE84C(a1, a2);
  sub_247BBE97C(&unk_2859CD230);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_247BBE84C(uint64_t a1, unint64_t a2)
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

  v6 = sub_247BBEA68(v5, 0);
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

  result = sub_247BF6D70();
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
        v10 = sub_247BF6570();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_247BBEA68(v10, 0);
        result = sub_247BF6CB0();
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

uint64_t sub_247BBE97C(uint64_t result)
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

  result = sub_247BBE398(result, v12, 1, v3);
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

void *sub_247BBEA68(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DE10, &qword_247BFA950);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_247BBEADC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_247BF6C50();

  return sub_247BBEB20(a1, v5);
}

unint64_t sub_247BBEB20(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_247BC5AB0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1B4730](v9, a1);
      sub_247BC5A5C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_247BBEBE8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_247BBEADC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BBF590();
      v11 = v13;
    }

    sub_247BC5A5C(*(v11 + 48) + 40 * v8);
    sub_247B9471C((*(v11 + 56) + 32 * v8), a2);
    sub_247BBF224(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_247BBEC8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF40, &qword_247BFBB20);
  result = sub_247BF6ED0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_247B9471C((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_247BC5AB0(v24, &v38);
        sub_247B9B1AC(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_247BF6C50();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_247B9471C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_247BBEF44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF10, &qword_247BFBAF0);
  v40 = a2;
  result = sub_247BF6ED0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = *(v5 + 56) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if ((v40 & 1) == 0)
      {

        sub_247BC2D0C(v26, v27, v28);
      }

      v29 = *(v8 + 40);
      sub_247BF7460();
      sub_247BF6500();
      result = sub_247BF74A0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_247BBF224(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247BF6BE0() + 1) & ~v5;
    do
    {
      sub_247BC5AB0(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_247BF6C50();
      result = sub_247BC5A5C(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_247BBF3C8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_247BBEADC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_247BBF590();
      goto LABEL_7;
    }

    sub_247BBEC8C(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_247BBEADC(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_247BC5AB0(a2, v22);
      return sub_247BBF514(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_247BF73C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_247B9471C(a1, v17);
}

_OWORD *sub_247BBF514(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_247B9471C(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_247BBF590()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF40, &qword_247BFBB20);
  v2 = *v0;
  v3 = sub_247BF6EC0();
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
        v18 = 40 * v17;
        sub_247BC5AB0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_247B9B1AC(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_247B9471C(v22, (*(v4 + 56) + v17));
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

void *sub_247BBF734()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF10, &qword_247BFBAF0);
  v2 = *v0;
  v3 = sub_247BF6EC0();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_247BC2D0C(v23, v24, v26);
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

uint64_t sub_247BBF8CC(uint64_t a1, unint64_t a2)
{
  sub_247BC2A70(a1, a2);
  v4 = *(sub_247BC12AC(a1, a2) + 16);
  v5 = sub_247BF64E0();

  return v5;
}

uint64_t sub_247BBF938@<X0>(uint64_t *a1@<X8>)
{
  result = sub_247BF64E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_247BBF974(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_247BC15D4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_247BBF9E0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_247BBF9E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_247BF6FC0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF20, &unk_247BFBB00);
        v5 = sub_247BF66E0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_247BBFBD8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_247BBFAE8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_247BBFAE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = v10 + 40;
      result = *(v10 + 40);
      v12 = result == *v10 && *(v10 + 48) == *(v10 + 8);
      if (v12 || (result = sub_247BF7180(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 40;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v10 + 40);
      v13 = *(v10 + 48);
      v15 = *(v10 + 72);
      v16 = *(v10 + 56);
      v17 = *(v10 + 16);
      v18 = *(v10 + 32);
      *v11 = *v10;
      *(v10 + 56) = v17;
      *v10 = v14;
      *(v10 + 8) = v13;
      *(v10 + 16) = v16;
      *(v10 + 32) = v15;
      v10 -= 40;
      *(v11 + 32) = v18;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_247BBFBD8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_106:
    v107 = *v107;
    if (!v107)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_247BC04D0(v9);
      v9 = result;
    }

    v97 = v9 + 16;
    v98 = *(v9 + 2);
    if (v98 >= 2)
    {
      while (1)
      {
        v99 = *v6;
        if (!*v6)
        {
          goto LABEL_142;
        }

        v100 = &v9[16 * v98];
        v6 = *v100;
        v101 = &v97[2 * v98];
        v102 = v101[1];
        sub_247BC01F4((v99 + 40 * *v100), (v99 + 40 * *v101), v99 + 40 * v102, v107);
        if (v5)
        {
        }

        if (v102 < v6)
        {
          goto LABEL_130;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_131;
        }

        *v100 = v6;
        *(v100 + 1) = v102;
        v103 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_132;
        }

        v98 = *v97 - 1;
        result = memmove(v101, v101 + 2, 16 * v103);
        *v97 = v98;
        v6 = a3;
        if (v98 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*v6 + 40 * v8);
      result = *v12;
      v13 = v12[1];
      v14 = (*v6 + 40 * v10);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_247BF7180();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = (v11 + 40 * v10 + 48);
        v18 = v17;
        do
        {
          result = v17[4];
          v20 = v18[5];
          v18 += 5;
          v19 = v20;
          if (result == *(v17 - 1) && v19 == *v17)
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_247BF7180();
            if ((v16 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v17 = v18;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v8 < v10)
        {
          goto LABEL_135;
        }

        if (v10 < v8)
        {
          v22 = 40 * v8 - 8;
          v23 = 40 * v10 + 32;
          v24 = v8;
          v25 = v10;
          do
          {
            if (v25 != --v24)
            {
              v34 = *v6;
              if (!*v6)
              {
                goto LABEL_141;
              }

              v26 = (v34 + v23);
              v27 = (v34 + v22);
              v28 = *(v26 - 4);
              v29 = *(v26 - 3);
              v30 = *v26;
              v31 = *(v26 - 1);
              v32 = *v27;
              v33 = *(v27 - 1);
              *(v26 - 2) = *(v27 - 2);
              *(v26 - 1) = v33;
              *v26 = v32;
              *(v27 - 4) = v28;
              *(v27 - 3) = v29;
              *(v27 - 1) = v31;
              *v27 = v30;
            }

            ++v25;
            v22 -= 40;
            v23 += 40;
          }

          while (v25 < v24);
        }
      }
    }

    v35 = v6[1];
    if (v8 < v35)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_134;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_247BBE178(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v51 = *(v9 + 2);
    v50 = *(v9 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      result = sub_247BBE178((v50 > 1), v51 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v52;
    v53 = &v9[16 * v51];
    *(v53 + 4) = v10;
    *(v53 + 5) = v8;
    v54 = *v107;
    if (!*v107)
    {
      goto LABEL_143;
    }

    if (v51)
    {
      while (1)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v56 = *(v9 + 4);
          v57 = *(v9 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_75:
          if (v59)
          {
            goto LABEL_121;
          }

          v72 = &v9[16 * v52];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_124;
          }

          v78 = &v9[16 * v55 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_128;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v52 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v82 = &v9[16 * v52];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_89:
        if (v77)
        {
          goto LABEL_123;
        }

        v85 = &v9[16 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_126;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_96:
        v93 = v55 - 1;
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
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
          goto LABEL_137;
        }

        if (!*v6)
        {
          goto LABEL_140;
        }

        v94 = *&v9[16 * v93 + 32];
        v95 = *&v9[16 * v55 + 40];
        sub_247BC01F4((*v6 + 40 * v94), (*v6 + 40 * *&v9[16 * v55 + 32]), *v6 + 40 * v95, v54);
        if (v5)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_247BC04D0(v9);
        }

        if (v93 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v96 = &v9[16 * v93];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        result = sub_247BC0444(v55);
        v52 = *(v9 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v9[16 * v52 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_119;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_120;
      }

      v67 = &v9[16 * v52];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_122;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_125;
      }

      if (v71 >= v63)
      {
        v89 = &v9[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_129;
        }

        if (v58 < v92)
        {
          v55 = v52 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_136;
  }

  v105 = v5;
  if (v10 + a4 >= v35)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v8 == v5)
  {
LABEL_54:
    v5 = v105;
    goto LABEL_55;
  }

  v36 = *v6;
  v37 = *v6 + 40 * v8 - 40;
  v104 = v10;
  v38 = v10 - v8;
LABEL_43:
  v39 = v38;
  v40 = v37;
  while (1)
  {
    v41 = v40 + 40;
    v42 = *(v40 + 40) == *v40 && *(v40 + 48) == *(v40 + 8);
    if (v42 || (result = sub_247BF7180(), (result & 1) == 0))
    {
LABEL_42:
      ++v8;
      v37 += 40;
      --v38;
      if (v8 != v5)
      {
        goto LABEL_43;
      }

      v8 = v5;
      v6 = a3;
      v10 = v104;
      goto LABEL_54;
    }

    if (!v36)
    {
      break;
    }

    v44 = *(v40 + 40);
    v43 = *(v40 + 48);
    v45 = *(v40 + 72);
    v46 = *(v40 + 56);
    v47 = *(v40 + 16);
    v48 = *(v40 + 32);
    *v41 = *v40;
    *(v40 + 56) = v47;
    *v40 = v44;
    *(v40 + 8) = v43;
    *(v40 + 16) = v46;
    *(v40 + 32) = v45;
    v40 -= 40;
    *(v41 + 32) = v48;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_247BC01F4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_247BF7180() & 1) != 0)
      {
        break;
      }

      v14 = v4;
      v17 = v7 == v4;
      v4 += 40;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v17 = v7 == v6;
    v6 += 40;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v14;
    v16 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  v18 = 40 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_24:
    v19 = v6 - 40;
    v5 -= 40;
    v20 = v13;
    do
    {
      v21 = *(v20 - 40);
      v22 = *(v20 - 32);
      v20 -= 40;
      v23 = v21 == *(v6 - 5) && v22 == *(v6 - 4);
      if (!v23 && (sub_247BF7180() & 1) != 0)
      {
        if ((v5 + 40) != v6)
        {
          v26 = *v19;
          v27 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v26;
          *(v5 + 16) = v27;
        }

        if (v13 <= v4 || (v6 -= 40, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 40) != v13)
      {
        v24 = *v20;
        v25 = *(v20 + 16);
        *(v5 + 32) = *(v20 + 32);
        *v5 = v24;
        *(v5 + 16) = v25;
      }

      v5 -= 40;
      v13 = v20;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_39:
  v28 = 40 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v28])
  {
    memmove(v6, v4, v28);
  }

  return 1;
}