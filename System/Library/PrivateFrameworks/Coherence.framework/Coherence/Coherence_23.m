uint64_t sub_1ADFB9C24(uint64_t a1, uint64_t a2)
{
  result = sub_1ADDFCC74();
  if (!v2)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v18 = MEMORY[0x1E69E7CC0];
      v17 = result;

      sub_1ADE6F07C(0, v5, 0);
      v6 = v18;
      v7 = (a2 + 56);
      do
      {
        v8 = *(v7 - 3);
        v9 = *(v7 - 1);
        v10 = *v7;
        sub_1ADE42C78(v8);
        sub_1ADDD86D8(v9, v10);
        sub_1ADDD86D8(v9, v10);
        sub_1ADDCC35C(0, 0xC000000000000000);
        if (v8)
        {
          v11 = sub_1ADDF5C7C(*(v17 + 16));
          v13 = v12;
          sub_1ADE42CB8(0);
          sub_1ADE42CB8(v8);
          sub_1ADDCC35C(v9, v10);
        }

        else
        {
          sub_1ADE42CB8(0);
          sub_1ADDCC35C(v9, v10);
          v11 = 0;
          v13 = 0;
        }

        v15 = *(v18 + 16);
        v14 = *(v18 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1ADE6F07C((v14 > 1), v15 + 1, 1);
        }

        v7 += 4;
        *(v18 + 16) = v15 + 1;
        v16 = (v18 + 32 * v15);
        v16[4] = v9;
        v16[5] = v10;
        v16[6] = v11;
        v16[7] = v13;
        --v5;
      }

      while (v5);
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    sub_1AE1B6F64(v6);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1ADFB9E50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ADFBA168(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1ADFB9E88(uint64_t a1)
{
  result = sub_1ADFB9EB0();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1ADFB9EB0()
{
  result = qword_1EB5BBDA8;
  if (!qword_1EB5BBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBDA8);
  }

  return result;
}

uint64_t sub_1ADFB9F04(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1AE23BB7C();
  v8 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1AE23BB9C();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_1ADFB9FBC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (*a1)
  {
    v10 = *a1;
    if (v7)
    {
      sub_1ADE42C78(v10);
      sub_1ADE42C78(v7);
      sub_1ADE42C78(v3);
      sub_1ADF64C74(v2, v6);
      if (v11)
      {
        sub_1ADF64C74(v3, v7);
        v13 = v12;
        sub_1ADE42CB8(v7);

        sub_1ADE42CB8(v3);
        if (v13)
        {
          goto LABEL_14;
        }

        return 0;
      }

      sub_1ADE42CB8(v7);

      v14 = v3;
LABEL_11:
      sub_1ADE42CB8(v14);
      return 0;
    }

    sub_1ADE42C78(v10);
    sub_1ADE42C78(0);
    sub_1ADE42C78(v3);

LABEL_9:
    sub_1ADE42CB8(v3);
    v14 = v7;
    goto LABEL_11;
  }

  sub_1ADE42C78(0);
  if (v7)
  {
    sub_1ADE42C78(v7);
    goto LABEL_9;
  }

  sub_1ADE42C78(0);
  sub_1ADE42CB8(0);
LABEL_14:

  return sub_1ADDD6F8C(v4, v5, v8, v9);
}

uint64_t sub_1ADFBA168(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v22 = 0xD000000000000014;
    *(v22 + 8) = 0x80000001AE25FB50;
    *(v22 + 16) = 0;
    swift_willThrow();

    return v1;
  }

  type metadata accessor for CRDecoder.CRDTContainer();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = 0;
  *(inited + 32) = 1;

  v5 = *(sub_1ADDE78C8() + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v7 = (~v5 & 0xF000000000000007) != 0 && (v5 & 0xF000000000000000) == 0x9000000000000000;
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  v9 = *(v8 + 16);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v23 = a1;
  v27 = v6;
  result = sub_1ADE6F09C(0, v9, 0);
  v11 = 0;
  v1 = v6;
  v12 = (v8 + 56);
  v24 = v9;
  v25 = v8;
  while (v11 < *(v8 + 16))
  {
    v14 = *(v12 - 3);
    v13 = *(v12 - 2);
    v16 = *(v12 - 1);
    v15 = *v12;
    if (v16)
    {

      sub_1ADDD86D8(v14, v13);
      sub_1ADE42C78(v16);
      sub_1ADE42C78(v16);
      sub_1ADDD6748(v16, v15, v23, v26);
      if (v2)
      {

        sub_1ADDCC35C(v14, v13);
        sub_1ADE42CB8(v16);

        return v1;
      }

      v18 = v26[0];
      v17 = v26[1];
    }

    else
    {
      sub_1ADDD86D8(*(v12 - 3), *(v12 - 2));
      sub_1ADE42C78(0);
      v18 = 0;
      v17 = 0;
    }

    sub_1ADDD86D8(v14, v13);
    sub_1ADDCC35C(v14, v13);
    result = sub_1ADE42CB8(v16);
    v27 = v1;
    v20 = *(v1 + 16);
    v19 = *(v1 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_1ADE6F09C((v19 > 1), v20 + 1, 1);
      v1 = v27;
    }

    ++v11;
    *(v1 + 16) = v20 + 1;
    v21 = (v1 + 32 * v20);
    v21[4] = v18;
    v21[5] = v17;
    v21[6] = v14;
    v21[7] = v13;
    v12 += 4;
    v8 = v25;
    if (v24 == v11)
    {

      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1ADFBA458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA458, &qword_1AE251E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ADFBA4D8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1ADFBA534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1ADFBA59C()
{
  result = qword_1EB5BBDB0[0];
  if (!qword_1EB5BBDB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5BBDB0);
  }

  return result;
}

uint64_t sub_1ADFBA670@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = Array<A>.init(defaultState:)();
  *a2 = result;
  return result;
}

uint64_t Array<A>.isDefaultState.getter()
{
  sub_1AE23D11C();
  swift_getWitnessTable();
  return sub_1AE23D4CC() & 1;
}

uint64_t sub_1ADFBA714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Set<>.init(defaultState:)(*(a1 + 16), a2, *(a1 + 24));
  *a3 = result;
  return result;
}

uint64_t Set<>.init(defaultState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v6 = sub_1AE18F13C(v5, a1, a3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  return v6;
}

BOOL String.isDefaultState.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 == 0;
}

BOOL sub_1ADFBA82C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      v7 = *(v1 + 16);
      v6 = *(v1 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    v5 = v1;
    v6 = v1 >> 32;
    if (v3)
    {
      v7 = v5;
    }

    else
    {
      v6 = v4;
      v7 = 0;
    }
  }

  return v7 == v6;
}

BOOL Data.isDefaultState.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2)
    {
      v5 = *(a1 + 16);
      v4 = *(a1 + 24);
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }
  }

  else
  {
    v3 = v2 == 0;
    if (v2)
    {
      v4 = a1 >> 32;
    }

    else
    {
      v4 = BYTE6(a2);
    }

    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = a1;
    }
  }

  return v5 == v4;
}

uint64_t sub_1ADFBA91C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = Array<A>.init(defaultState:)();
  *a2 = result;
  return result;
}

uint64_t CRExtensible<>.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v16 - v13;
  (*(*(*(a3 + 8) + 8) + 40))(v12);
  return CRExtensible.init(rawValue:)(v14, a1, a2, a3, a4, a5);
}

uint64_t CRExtensible.isDefaultState.getter(uint64_t a1)
{
  v1 = a1;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  CRExtensible.rawValue.getter(v1, &v10 - v7);
  LOBYTE(v1) = (*(*(*(*(v1 + 32) + 8) + 8) + 48))(AssociatedTypeWitness);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v1 & 1;
}

uint64_t RawRepresentable<>.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = sub_1AE23D7CC();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v15 - v11;
  (*(a2 + 16))(AssociatedTypeWitness, a2, v10);
  sub_1AE23CF7C();
  v13 = *(a1 - 8);
  result = (*(v13 + 48))(v12, 1, a1);
  if (result != 1)
  {
    return (*(v13 + 32))(a3, v12, a1);
  }

  __break(1u);
  return result;
}

{
  v25 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v23 - v12;
  result = (*(a2 + 40))(AssociatedTypeWitness, a2, v11);
  if (!v3)
  {
    v15 = v25;
    sub_1AE23CF7C();
    v16 = *(a1 - 8);
    if ((*(v16 + 48))(v13, 1, a1) == 1)
    {
      (*(v9 + 8))(v13, v8);
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1AE23DA2C();
      v17 = sub_1AE23E40C();
      v19 = v18;

      v23 = v17;
      v24 = v19;
      MEMORY[0x1B26FB670](0xD000000000000025, 0x80000001AE261D30);
      v20 = v23;
      v21 = v24;
      sub_1ADE42E40();
      swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v21;
      *(v22 + 16) = 0;
      return swift_willThrow();
    }

    else
    {
      return (*(v16 + 32))(v15, v13, a1);
    }
  }

  return result;
}

uint64_t Dictionary<>.init(defaultState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getTupleTypeMetadata2();
  v7 = sub_1AE23D05C();
  v8 = sub_1ADDEAF38(v7, a1, a2, a4);

  return v8;
}

uint64_t RawRepresentable<>.isDefaultState.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  sub_1AE23CF6C();
  LOBYTE(a4) = (*(a4 + 48))(AssociatedTypeWitness, a4);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  return a4 & 1;
}

uint64_t CRExtensible.init(defaultState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v17 - v14;
  result = (*(*(*(a3 + 8) + 8) + 40))(v13);
  if (!v5)
  {
    return CRExtensible.init(rawValue:)(v15, a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1ADFBB260@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = Dictionary<>.init(defaultState:)(a1[2], a1[3], a2, a1[4]);
  *a3 = result;
  return result;
}

void sub_1ADFBB29C(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  Dictionary<>.isDefaultState.getter();
}

uint64_t sub_1ADFBB2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();
  v4 = *(a1 + 16);
  sub_1AE23D7CC();
  v7 = *(a1 + 24);
  WitnessTable = swift_getWitnessTable();
  return RawRepresentable<>.init(defaultState:)(a1, WitnessTable, a2);
}

uint64_t sub_1ADFBB354(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = *(a1 + 16);
  sub_1AE23D7CC();
  v7 = *(a1 + 24);
  v4 = swift_getWitnessTable();
  return RawRepresentable<>.isDefaultState.getter(a1, v5, WitnessTable, v4) & 1;
}

uint64_t CRValue<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v13 - v10;
  sub_1AE23CF6C();
  (*(a5 + 16))(a1, AssociatedTypeWitness, a5);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t CRValue<>.minEncodingVersion.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  sub_1AE23CF6C();
  (*(a4 + 24))(AssociatedTypeWitness, a4);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t CRExtensible.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for CRExtensible();
  return swift_storeEnumTagMultiPayload();
}

uint64_t CRExtensible.minEncodingVersion.getter(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  CRExtensible.rawValue.getter(a1, &v10 - v7);
  (*(*(*(a1[4] + 8) + 8) + 24))(AssociatedTypeWitness);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t sub_1ADFBB828(uint64_t a1)
{
  swift_getWitnessTable();
  v2 = *(a1 + 40);

  return sub_1AE23CF8C();
}

uint64_t sub_1ADFBB890(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  v3 = *(a2 + 40);

  return sub_1AE23CF9C();
}

uint64_t CRExtensible<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, char *a6@<X8>)
{
  v19 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v18[-v14 - 8];
  sub_1ADF4E010(a1, v18);
  sub_1AE23D2BC();
  if (!v6)
  {
    CRExtensible.init(rawValue:)(v15, a2, a3, a4, v19, a6);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CRExtensible<>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  CRExtensible.rawValue.getter(a2, &v11 - v8);
  sub_1AE23CBAC();
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_1ADFBBBDC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 254) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = *(a1 + v8);
      if (v15 >= 2)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 255;
}

void sub_1ADFBBD4C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= v8)
  {
    v9 = v8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 254) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v9] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1ADFBBF38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = *(a2 + 16);
  sub_1AE23D7CC();
  v9 = *(a2 + 24);
  v6 = swift_getWitnessTable();
  return CRValue<>.encode(to:)(a1, a2, v7, WitnessTable, v6);
}

uint64_t sub_1ADFBBFD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = *(a1 + 16);
  sub_1AE23D7CC();
  v7 = *(a1 + 24);
  v4 = swift_getWitnessTable();
  return CRValue<>.minEncodingVersion.getter(a1, v5, WitnessTable, v4);
}

uint64_t sub_1ADFBC390(uint64_t a1)
{
  v1 = *(a1 + 192);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ADFBC424(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = *(*v14 + 216);
    v16 = v14;
    swift_beginAccess();
    v23 = v2;
    v17 = *(v4 + 16);
    v17(v10, v16 + v15, v3);
    (*(v4 + 32))(v13, v10, v3);
    v18 = *(*v1 + 216);
    swift_beginAccess();
    v17(v7, v1 + v18, v3);
    v19 = (*(*(v23 + 200) + 16))(v13, v3);
    v20 = *(v4 + 8);
    v20(v7, v3);
    v20(v13, v3);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1ADFBC674(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 192) - 8) + 32))(v5 + *(*v5 + 216), a1);
  return v5;
}

uint64_t sub_1ADFBC708@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  swift_beginAccess();
  v5 = *(v3 + 192);
  a1[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v1 + v4, v5);
}

uint64_t sub_1ADFBC7B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v12 = *(v3 + 216);
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v12, v4);
  (*(*(*(v3 + 208) + 8) + 24))(a1, v4);
  (*(v5 + 8))(v8, v4);
  return sub_1ADFBC674(v11);
}

uint64_t sub_1ADFBC970(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  v9 = *(v3 + 216);
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  (*(*(*(v3 + 208) + 8) + 48))(a1, v4);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1ADFBCAC8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v8 = *(v2 + 216);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  v9 = (*(*(*(v2 + 208) + 8) + 56))(v3);
  (*(v4 + 8))(v7, v3);
  return v9 & 1;
}

uint64_t sub_1ADFBCC18(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 216);
  swift_beginAccess();
  (*(*(*(v3 + 208) + 8) + 64))(a1, *(v3 + 192));
  return swift_endAccess();
}

uint64_t sub_1ADFBCCC4(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  v8 = *(v7 + 216);
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  return sub_1ADFBC674(v6);
}

uint64_t sub_1ADFBCDF0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 192);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  v9 = *(v3 + 216);
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  (*(*(*(*(v3 + 208) + 8) + 8) + 16))(a1, v4);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1ADFBCF5C(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  v8 = *(v7 + 216);
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB390, &unk_1AE24FCE0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    v9 = sub_1AE23DD9C();
    __swift_destroy_boxed_opaque_existential_1(&v12);
    return v9;
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1ADDCEDE0(&v12, &unk_1EB5BEB20, &qword_1AE24C510);
    return 0x6D6F435243796E41;
  }
}

uint64_t sub_1ADFBD104(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  v8 = *(v7 + 216);
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE68, &unk_1AE24FCD0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    v9 = sub_1AE23E02C();
    __swift_destroy_boxed_opaque_existential_1(&v12);
    return v9;
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1ADDCEDE0(&v12, qword_1EB5BBE70, &unk_1AE25AA00);
    return 0x6D6F435243796E41;
  }
}

uint64_t sub_1ADFBD2AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20[-v9];
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = *(v2 + 216);
    swift_beginAccess();
    v14 = v4[2];
    v14(v10, &v1[v13], v3);
    v15 = *(*v12 + 216);
    swift_beginAccess();
    v14(v7, (v12 + v15), v3);
    v16 = *(*(v2 + 200) + 8);
    v17 = sub_1AE23CCBC();
    v18 = v4[1];
    v18(v7, v3);
    v18(v10, v3);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1ADFBD4F4()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 216));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ADFBD614()
{
  (*(**v0 + 80))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE40, &qword_1AE24FCF0);
  swift_dynamicCast();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1AE23CBAC();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1ADFBD7BC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t sub_1ADFBD808@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v5;
  v6 = *(*v4 + 96);

  v7 = v6(&v9);

  *a2 = v7;
  return result;
}

uint64_t sub_1ADFBD930(uint64_t a1)
{
  v2 = v1;
  result = (*(**v1 + 120))();
  if (result)
  {
    v5 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = (*(*v7 + 136))();

      *v2 = v8;
      v7 = v8;
    }

    return (*(*v7 + 128))(a1);
  }

  return result;
}

uint64_t sub_1ADFBD9F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1ADFBDAE4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1ADFBDA68(uint64_t a1)
{
  result = sub_1ADFBDA90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ADFBDA90()
{
  result = qword_1EB5BBE38;
  if (!qword_1EB5BBE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BBE38);
  }

  return result;
}

uint64_t sub_1ADFBDAE4(uint64_t a1)
{
  v1 = 0xD000000000000028;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(v2 + 16);
    if ((~v3 & 0xF000000000000007) != 0)
    {
      v4 = "Coherence/AnyCRComparable.swift";
      switch((v3 >> 59) & 0x1E | (v3 >> 2) & 1)
      {
        case 1uLL:

          v9 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1ADE51B48(v3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE50, &qword_1AE24FCB8);
          result = swift_allocObject();
          *(result + 16) = v9;
          return result;
        case 2uLL:
          goto LABEL_5;
        case 3uLL:
        case 5uLL:
          result = sub_1AE23DC5C();
          __break(1u);
          return result;
        case 4uLL:

          v10 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1ADE51B48(v3);
          v11 = &unk_1EB5BBE60;
          v12 = &unk_1AE24FCC8;
          goto LABEL_16;
        case 6uLL:
          v4 = "ference as AnyCRComparable.";
          v1 = 0xD000000000000029;
          goto LABEL_5;
        case 7uLL:
        case 0xFuLL:
        case 0x10uLL:
          v8 = "Cannot decode reference as AnyCRComparable.";
          goto LABEL_12;
        case 8uLL:
          v13 = "Cannot decode optional as AnyCRComparable.";
          goto LABEL_20;
        case 9uLL:
          v8 = "Cannot decode timestamp as AnyCRComparable.";
LABEL_12:
          v4 = (v8 - 32);
          v1 = 0xD00000000000002BLL;
          goto LABEL_5;
        case 0xAuLL:
          v13 = "Cannot decode repeated as AnyCRComparable.";
LABEL_20:
          v4 = (v13 - 32);
          v1 = 0xD00000000000002ALL;
          goto LABEL_5;
        case 0xBuLL:
          v4 = "set as AnyCRComparable.";
          goto LABEL_5;
        case 0xCuLL:
          v4 = "stom as AnyCRComparable.";
          v1 = 0xD000000000000027;
          goto LABEL_5;
        case 0xDuLL:
          v4 = "No value for AnyCRComparable.";
          goto LABEL_5;
        case 0xEuLL:

          v14 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          sub_1ADE51B48(v3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BBE48, &qword_1AE24FCB0);
          result = swift_allocObject();
          *(result + 16) = v14;
          return result;
        default:

          v10 = *(v3 + 16);
          sub_1ADE51B48(v3);
          v11 = &unk_1EB5BBE58;
          v12 = &unk_1AE24FCC0;
LABEL_16:
          __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
          result = swift_allocObject();
          *(result + 16) = v10;
          return result;
      }
    }

    v4 = "CRComparableBox";
    v1 = 0xD00000000000001DLL;
  }

  else
  {
    v4 = "Not decoding a CRDT.";
    v1 = 0xD000000000000017;
  }

LABEL_5:
  v5 = v4 | 0x8000000000000000;
  sub_1ADE42E40();
  swift_allocError();
  *v6 = v1;
  *(v6 + 8) = v5;
  *(v6 + 16) = 0;
  swift_willThrow();
}

BOOL TaggedValue_1.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  v7 = swift_getEnumCaseMultiPayload() == 2;
  (*(v2 + 8))(v6, a1);
  return v7;
}

uint64_t TaggedValue_1.taggedEnum.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for TaggedValue_1.TaggedEnum();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t TaggedValue_1.taggedEnum.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = type metadata accessor for TaggedValue_1.TaggedEnum();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2, a1, v6);
}

uint64_t TaggedValue_1.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_1.TaggedEnum();

  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_1.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  *a3 = a1;
  a3[1] = v4;
  type metadata accessor for TaggedValue_1.TaggedEnum();

  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_1.tagged1.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for TaggedValue_1.TaggedEnum();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  (*(v8 + 16))(&v16 - v11, v3, v7, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 8))(v12, v7);
    v13 = *(v6 - 8);
    v14 = 1;
  }

  else
  {
    v13 = *(v6 - 8);
    (*(v13 + 32))(a2, v12, v6);
    v14 = 0;
  }

  return (*(v13 + 56))(a2, v14, 1, v6);
}

uint64_t TaggedValue_1.unknown.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for TaggedValue_1.TaggedEnum();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - v11;
  (*(v8 + 16))(&v15 - v11, v3, v7, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v14 = *(v12 + 1);
  }

  else
  {
    result = (*(v8 + 8))(v12, v7);
    v14 = 0;
  }

  *a2 = v14;
  return result;
}

uint64_t TaggedValue_1.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for TaggedValue_1.TaggedEnum();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, v3, v12, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(**(v16 + 1) + 120))(a1);
  }

  else
  {
    (*(v6 + 32))(v9, v16, v5);
    (*(*(v11 + 8) + 48))(a1, v5);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t TaggedValue_1.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v16 = *(v15 + 24);
  v17 = type metadata accessor for TaggedValue_1.TaggedEnum();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  (*(v22 + 16))(&v26 - v20, v4, v17, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v21;
    v24 = (*(**(v21 + 1) + 104))(a1);

    *a3 = v23;
    a3[1] = v24;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v8 + 32))(v14, v21, v7);
    (*(*(v16 + 8) + 24))(a1, v7);
    (*(v8 + 8))(v14, v7);
    return TaggedValue_1.init(_:)(v11, v7, a3);
  }
}

uint64_t TaggedValue_1.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v72 = a1;
  v66 = a2;
  v74 = a4;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v65 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AE23D7CC();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v59 - v9;
  v68 = AssociatedTypeWitness;
  v64 = *(AssociatedTypeWitness - 8);
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v59 - v12;
  v69 = *(v5 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v59 - v17;
  v73 = v4;
  v18 = type metadata accessor for TaggedValue_1.TaggedEnum();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v31 = &v59 - v30;
  v33 = (&v59 + *(v32 + 48) - v30);
  v70 = v19;
  v34 = *(v19 + 16);
  v34(&v59 - v30, v71, v18, v29);
  (v34)(v33, v72, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v34)(v22, v31, v18);
    v35 = v22[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = *v22;
      v38 = *v33;
      v37 = v33[1];

      v39 = type metadata accessor for TaggedValue_1.ObservableDifference();
      v40 = v39;
      if (v36 == v38)
      {
        v41 = *(*(v39 - 8) + 56);
        v42 = v74;
        v43 = 1;
LABEL_14:
        v41(v42, v43, 1, v40);
        goto LABEL_15;
      }

      v55 = v74;
LABEL_13:
      swift_storeEnumTagMultiPayload();
      v41 = *(*(v40 - 8) + 56);
      v42 = v55;
      v43 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    (v34)(v25, v31, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v46 = v69;
      v47 = *(v69 + 32);
      v48 = v62;
      v47(v62, v25, v5);
      v49 = v63;
      v47(v63, v33, v5);
      v50 = v67;
      (*(v65 + 40))(v49, v66, v5);
      v51 = *(v46 + 8);
      v51(v49, v5);
      v51(v48, v5);
      v52 = v64;
      v53 = v68;
      if ((*(v64 + 48))(v50, 1, v68) == 1)
      {
        (*(v60 + 8))(v50, v61);
        v54 = type metadata accessor for TaggedValue_1.ObservableDifference();
        (*(*(v54 - 8) + 56))(v74, 1, 1, v54);
LABEL_15:
        v27 = v70;
        return (*(v27 + 8))(v31, v18);
      }

      v56 = *(v52 + 32);
      v57 = v59;
      v56(v59, v50, v53);
      v55 = v74;
      v56(v74, v57, v53);
      v40 = type metadata accessor for TaggedValue_1.ObservableDifference();
      goto LABEL_13;
    }

    (*(v69 + 8))(v25, v5);
  }

  v44 = type metadata accessor for TaggedValue_1.ObservableDifference();
  v45 = v74;
  swift_storeEnumTagMultiPayload();
  (*(*(v44 - 8) + 56))(v45, 0, 1, v44);
  v18 = TupleTypeMetadata2;
  return (*(v27 + 8))(v31, v18);
}

BOOL TaggedValue_2.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  v7 = swift_getEnumCaseMultiPayload() == 3;
  (*(v2 + 8))(v6, a1);
  return v7;
}

uint64_t TaggedValue_2.taggedEnum.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v4 = type metadata accessor for TaggedValue_2.TaggedEnum();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t TaggedValue_2.taggedEnum.setter(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  v4 = type metadata accessor for TaggedValue_2.TaggedEnum();
  return (*(*(v4 - 8) + 40))(v2, a1, v4);
}

uint64_t TaggedValue_2.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_2.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_2.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  type metadata accessor for TaggedValue_2.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_2.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  *a3 = a1;
  a3[1] = v4;
  type metadata accessor for TaggedValue_2.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_2.tagged1.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v16[0] = *(a1 + 16);
  v16[1] = v16[0];
  v16[2] = v5;
  v6 = type metadata accessor for TaggedValue_2.TaggedEnum();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v16 - v10;
  (*(v7 + 16))(v16 - v10, v3, v6, v9);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v7 + 8))(v11, v6);
    v12 = *&v16[0];
    v13 = *(*&v16[0] - 8);
    v14 = 1;
  }

  else
  {
    v13 = *(*&v16[0] - 8);
    (*(v13 + 32))(a2, v11);
    v12 = *&v16[0];
    v14 = 0;
  }

  return (*(v13 + 56))(a2, v14, 1, v12);
}

uint64_t TaggedValue_2.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 40);
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = v15;
  v18 = v5;
  v6 = type metadata accessor for TaggedValue_2.TaggedEnum();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, v3, v6, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_2.unknown.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 32);
  v14[0] = *(a1 + 16);
  v14[1] = v5;
  v6 = type metadata accessor for TaggedValue_2.TaggedEnum();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v14 - v10;
  (*(v7 + 16))(v14 - v10, v3, v6, v9);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v13 = *(v11 + 1);
  }

  else
  {
    result = (*(v7 + 8))(v11, v6);
    v13 = 0;
  }

  *a2 = v13;
  return result;
}

uint64_t TaggedValue_2.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = v11;
  *(&v18 + 1) = v5;
  v27[0] = *(v17 + 32);
  v27[1] = v18;
  v27[2] = v27[0];
  v19 = type metadata accessor for TaggedValue_2.TaggedEnum();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v27 - v22;
  (*(v24 + 16))(v27 - v22, v3, v19, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 32))(v9, v23, v5);
      (*(*(*(&v27[0] + 1) + 8) + 48))(a1, v5);
      return (*(v6 + 8))(v9, v5);
    }

    else
    {
      (*(**(v23 + 1) + 120))(a1);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v23, v11);
    (*(*(*&v27[0] + 8) + 48))(a1, v11);
    return (*(v12 + 8))(v16, v11);
  }
}

uint64_t TaggedValue_2.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v39 = a1;
  v40 = a3;
  v5 = *(a2 + 24);
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v23 = *(v22 + 32);
  *&v42 = v13;
  *(&v42 + 1) = v5;
  v41 = v23;
  v43 = v23;
  v24 = type metadata accessor for TaggedValue_2.TaggedEnum();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v37 - v27;
  (*(v29 + 16))(&v37 - v27, v4, v24, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v38;
      (*(v38 + 32))(v11, v28, v5);
      (*(*(*(&v41 + 1) + 8) + 24))(v39, v5);
      (*(v31 + 8))(v11, v5);
      return TaggedValue_2.init(_:)(v8, v5, v40);
    }

    else
    {
      v33 = *v28;
      v34 = (*(**(v28 + 1) + 104))(v39);

      v35 = v40;
      *v40 = v33;
      v35[1] = v34;
      *&v36 = v13;
      *(&v36 + 1) = v5;
      v42 = v36;
      v43 = v41;
      type metadata accessor for TaggedValue_2.TaggedEnum();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    (*(v14 + 32))(v21, v28, v13);
    (*(*(v41 + 8) + 24))(v39, v13);
    (*(v14 + 8))(v21, v13);
    return TaggedValue_2.init(_:)(v18, v13, v40);
  }
}

uint64_t TaggedValue_2.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v108 = a2;
  v119 = a4;
  v120 = a1;
  v5 = a3[5];
  v6 = a3[3];
  v105 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = sub_1AE23D7CC();
  v96 = *(v97 - 8);
  v8 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v106 = &v91 - v9;
  v107 = AssociatedTypeWitness;
  v104 = *(AssociatedTypeWitness - 8);
  v10 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v91 - v12;
  v109 = *(v6 - 8);
  v13 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v91 - v17;
  v18 = a3[4];
  v19 = a3[2];
  v99 = *(v18 + 8);
  v20 = swift_getAssociatedTypeWitness();
  v94 = sub_1AE23D7CC();
  v93 = *(v94 - 8);
  v21 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v98 = &v91 - v22;
  v101 = v20;
  v100 = *(v20 - 8);
  v23 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v92 = &v91 - v25;
  v113 = *(v19 - 8);
  v26 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v112 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v110 = v6;
  v111 = &v91 - v30;
  *&v31 = v19;
  *(&v31 + 1) = v6;
  *&v32 = v18;
  *(&v32 + 1) = v5;
  v117 = v32;
  v118 = v31;
  v122 = v32;
  v121 = v31;
  v33 = type metadata accessor for TaggedValue_2.TaggedEnum();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = (&v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v91 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v91 - v42;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v49 = &v91 - v48;
  v114 = v34;
  v115 = v50;
  v51 = (&v91 + *(v50 + 48) - v48);
  v52 = *(v34 + 16);
  v52(&v91 - v48, v116, v33, v47);
  (v52)(v51, v120, v33);
  v120 = v49;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v66 = v111;
    v67 = v112;
    v68 = v113;
    (v52)(v43, v120, v33);
    if (!swift_getEnumCaseMultiPayload())
    {
      v75 = *(v68 + 32);
      v76 = v66;
      v75(v66, v43, v19);
      v75(v67, v51, v19);
      v77 = v98;
      (*(v99 + 40))(v67, v108, v19);
      v78 = *(v68 + 8);
      v78(v67, v19);
      v78(v76, v19);
      v79 = v100;
      v80 = v101;
      if ((*(v100 + 48))(v77, 1, v101) == 1)
      {
        (*(v93 + 8))(v77, v94);
        v122 = v117;
        v121 = v118;
        goto LABEL_17;
      }

      v88 = *(v79 + 32);
      v89 = v92;
      v88(v92, v77, v80);
      v87 = v119;
      v88(v119, v89, v80);
      v122 = v117;
      v121 = v118;
      v86 = type metadata accessor for TaggedValue_2.ObservableDifference();
LABEL_22:
      swift_storeEnumTagMultiPayload();
      (*(*(v86 - 8) + 56))(v87, 0, 1, v86);
      goto LABEL_23;
    }

    (*(v68 + 8))(v43, v19);
LABEL_13:
    v73 = v119;
    v54 = v120;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (v52)(v37, v120, v33);
    v69 = v37[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v70 = *v37;
      v72 = *v51;
      v71 = v51[1];

      if (v70 == v72)
      {
        v121 = v118;
        v122 = v117;
LABEL_17:
        v81 = type metadata accessor for TaggedValue_2.ObservableDifference();
        (*(*(v81 - 8) + 56))(v119, 1, 1, v81);
LABEL_23:
        v45 = v114;
        v54 = v120;
        return (*(v45 + 8))(v54, v33);
      }

      v121 = v118;
      v122 = v117;
      v86 = type metadata accessor for TaggedValue_2.ObservableDifference();
      v87 = v119;
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v54 = v120;
  (v52)(v40, v120, v33);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v109 + 8))(v40, v110);
    v73 = v119;
LABEL_14:
    v121 = v118;
    v122 = v117;
    v74 = type metadata accessor for TaggedValue_2.ObservableDifference();
    swift_storeEnumTagMultiPayload();
    (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
    v33 = v115;
    return (*(v45 + 8))(v54, v33);
  }

  v55 = v109;
  v56 = *(v109 + 32);
  v57 = v102;
  v58 = v40;
  v59 = v110;
  v56(v102, v58, v110);
  v60 = v103;
  v56(v103, v51, v59);
  v61 = v106;
  (*(v105 + 40))(v60, v108, v59);
  v62 = *(v55 + 8);
  v62(v60, v59);
  v62(v57, v59);
  v63 = v104;
  v64 = v107;
  if ((*(v104 + 48))(v61, 1, v107) == 1)
  {
    (*(v96 + 8))(v61, v97);
    v122 = v117;
    v121 = v118;
    v65 = type metadata accessor for TaggedValue_2.ObservableDifference();
    (*(*(v65 - 8) + 56))(v119, 1, 1, v65);
  }

  else
  {
    v82 = *(v63 + 32);
    v83 = v95;
    v82(v95, v61, v64);
    v84 = v119;
    v82(v119, v83, v64);
    v122 = v117;
    v121 = v118;
    v85 = type metadata accessor for TaggedValue_2.ObservableDifference();
    swift_storeEnumTagMultiPayload();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  }

  v45 = v114;
  return (*(v45 + 8))(v54, v33);
}

BOOL TaggedValue_3.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  v7 = swift_getEnumCaseMultiPayload() == 4;
  (*(v2 + 8))(v6, a1);
  return v7;
}

uint64_t TaggedValue_3.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v4 = type metadata accessor for TaggedValue_3.TaggedEnum();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t TaggedValue_3.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v4 = type metadata accessor for TaggedValue_3.TaggedEnum();
  return (*(*(v4 - 8) + 40))(v2, a1, v4);
}

uint64_t TaggedValue_3.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_3.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_3.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  type metadata accessor for TaggedValue_3.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_3.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_3.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_3.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  *a3 = a1;
  a3[1] = v4;
  type metadata accessor for TaggedValue_3.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_3.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v17[0] = a1[1];
  v17[1] = v17[0];
  v6 = a1[3];
  v17[2] = v5;
  v17[3] = v6;
  v7 = type metadata accessor for TaggedValue_3.TaggedEnum();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v17 - v11;
  (*(v8 + 16))(v17 - v11, v3, v7, v10);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v8 + 8))(v12, v7);
    v13 = *&v17[0];
    v14 = *(*&v17[0] - 8);
    v15 = 1;
  }

  else
  {
    v14 = *(*&v17[0] - 8);
    (*(v14 + 32))(a2, v12);
    v13 = *&v17[0];
    v15 = 0;
  }

  return (*(v14 + 56))(a2, v15, 1, v13);
}

uint64_t TaggedValue_3.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 56);
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = v15;
  v18 = *(a1 + 40);
  v19 = v5;
  v6 = type metadata accessor for TaggedValue_3.TaggedEnum();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, v3, v6, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_3.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v16[0] = a1[2];
  v16[1] = v5;
  v6 = a1[3];
  v16[2] = v16[0];
  v16[3] = v6;
  v7 = type metadata accessor for TaggedValue_3.TaggedEnum();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, v3, v7, v10);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v13 = *(*&v16[0] - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v8 + 8))(v12, v7);
    v13 = *(*&v16[0] - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, *&v16[0]);
}

uint64_t TaggedValue_3.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v14[0] = a1[1];
  v14[1] = v5;
  v14[2] = a1[3];
  v6 = type metadata accessor for TaggedValue_3.TaggedEnum();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v14 - v10;
  (*(v7 + 16))(v14 - v10, v3, v6, v9);
  result = swift_getEnumCaseMultiPayload();
  if (result == 3)
  {
    v13 = *(v11 + 1);
  }

  else
  {
    result = (*(v7 + 8))(v11, v6);
    v13 = 0;
  }

  *a2 = v13;
  return result;
}

uint64_t TaggedValue_3.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v2 = *(a2 + 32);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 24);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v17[5];
  v18 = v17[6];
  v20 = v17[7];
  *&v21 = v12;
  *(&v21 + 1) = v6;
  *&v22 = v2;
  *(&v22 + 1) = v19;
  v41 = v21;
  v42 = v22;
  v43 = v18;
  v44 = v20;
  v23 = type metadata accessor for TaggedValue_3.TaggedEnum();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v35 - v26;
  (*(v28 + 16))(&v35 - v26, v39, v23, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v33 = v37;
      v32 = v38;
      (*(v38 + 32))(v37, v27, v2);
      (*(*(v20 + 8) + 48))(v40, v2);
      return (*(v32 + 8))(v33, v2);
    }

    else
    {
      (*(**(v27 + 1) + 120))(v40);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v34 = v36;
    (*(v36 + 32))(v10, v27, v6);
    (*(*(v18 + 8) + 48))(v40, v6);
    return (*(v34 + 8))(v10, v6);
  }

  else
  {
    v30 = v35;
    (*(v35 + 32))(v16, v27, v12);
    (*(*(v19 + 8) + 48))(v40, v12);
    return (*(v30 + 8))(v16, v12);
  }
}

uint64_t TaggedValue_3.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v57 = a1;
  v58 = a3;
  v3 = *(a2 + 32);
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  v10 = *(v9 + 24);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v19 = *(v18 + 16);
  v49 = *(v19 - 8);
  v20 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  v28 = v27[6];
  v29 = v27[7];
  *&v30 = v19;
  *(&v30 + 1) = v10;
  *&v31 = v3;
  v53 = v27[5];
  *(&v31 + 1) = v53;
  v47 = v31;
  v48 = v30;
  v60 = v31;
  v59 = v30;
  v55 = v28;
  v56 = v29;
  v61 = v28;
  v62 = v29;
  v32 = type metadata accessor for TaggedValue_3.TaggedEnum();
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v47 - v35;
  (*(v37 + 16))(&v47 - v35, v54, v32, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v41 = v52;
      (*(v52 + 32))(v8, v36, v3);
      v42 = v51;
      (*(*(v56 + 8) + 24))(v57, v3);
      (*(v41 + 8))(v8, v3);
      return TaggedValue_3.init(_:)(v42, v3, v58);
    }

    else
    {
      v44 = *v36;
      v45 = (*(**(v36 + 1) + 104))(v57);

      v46 = v58;
      *v58 = v44;
      v46[1] = v45;
      v60 = v47;
      v59 = v48;
      v61 = v55;
      v62 = v56;
      type metadata accessor for TaggedValue_3.TaggedEnum();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v43 = v50;
    (*(v50 + 32))(v17, v36, v10);
    (*(*(v55 + 8) + 24))(v57, v10);
    (*(v43 + 8))(v17, v10);
    return TaggedValue_3.init(_:)(v14, v10, v58);
  }

  else
  {
    v39 = v49;
    (*(v49 + 32))(v26, v36, v19);
    (*(*(v53 + 8) + 24))(v57, v19);
    (*(v39 + 8))(v26, v19);
    return TaggedValue_3.init(_:)(v23, v19, v58);
  }
}

uint64_t TaggedValue_3.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v153 = a2;
  v161 = a4;
  v162 = a1;
  v5 = a3[7];
  v6 = a3[4];
  v144 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v128 = sub_1AE23D7CC();
  v127 = *(v128 - 8);
  v8 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v145 = &v119 - v9;
  v146 = AssociatedTypeWitness;
  v143 = *(AssociatedTypeWitness - 8);
  v10 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v119 - v12;
  v151 = *(v6 - 8);
  v13 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v141 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v140 = &v119 - v17;
  v18 = a3[6];
  v19 = a3[3];
  v137 = *(v18 + 8);
  v20 = swift_getAssociatedTypeWitness();
  v125 = sub_1AE23D7CC();
  v124 = *(v125 - 8);
  v21 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v139 = &v119 - v22;
  v142 = v20;
  v138 = *(v20 - 8);
  v23 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v119 - v25;
  v149 = *(v19 - 8);
  v26 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v136 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v135 = &v119 - v30;
  v31 = a3[5];
  v32 = a3[2];
  v131 = *(v31 + 8);
  v33 = swift_getAssociatedTypeWitness();
  v122 = sub_1AE23D7CC();
  v121 = *(v122 - 8);
  v34 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v133 = &v119 - v35;
  v134 = v33;
  v132 = *(v33 - 8);
  v36 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v120 = &v119 - v38;
  v147 = *(v32 - 8);
  v39 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v130 = &v119 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v129 = &v119 - v43;
  v148 = v32;
  *&v44 = v32;
  v150 = v19;
  *(&v44 + 1) = v19;
  v152 = v6;
  *&v45 = v6;
  *(&v45 + 1) = v31;
  v157 = v45;
  v158 = v44;
  v164 = v45;
  v163 = v44;
  v159 = v18;
  v160 = v5;
  v165 = v18;
  v166 = v5;
  v46 = type metadata accessor for TaggedValue_3.TaggedEnum();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v50 = (&v119 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v119 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v119 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v119 - v58;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = *(TupleTypeMetadata2 - 8);
  v62 = *(v61 + 64);
  v63 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v65 = &v119 - v64;
  v154 = v47;
  v155 = v66;
  v67 = (&v119 + *(v66 + 48) - v64);
  v68 = *(v47 + 16);
  v68(&v119 - v64, v156, v46, v63);
  (v68)(v67, v162, v46);
  v162 = v65;
  v69 = v46;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v71 = v162;
      (v68)(v53, v162, v69);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v151 + 8))(v53, v152);
        goto LABEL_20;
      }

      v72 = v151;
      v73 = *(v151 + 32);
      v74 = v140;
      v75 = v53;
      v76 = v152;
      v73(v140, v75, v152);
      v77 = v141;
      v73(v141, v67, v76);
      v78 = v145;
      (*(v144 + 40))(v77, v153, v76);
      v79 = *(v72 + 8);
      v79(v77, v76);
      v79(v74, v76);
      v80 = v143;
      v81 = v146;
      if ((*(v143 + 48))(v78, 1, v146) == 1)
      {
        (*(v127 + 8))(v78, v128);
LABEL_12:
        v164 = v157;
        v163 = v158;
LABEL_16:
        v165 = v159;
        v166 = v160;
        v95 = type metadata accessor for TaggedValue_3.ObservableDifference();
        (*(*(v95 - 8) + 56))(v161, 1, 1, v95);
LABEL_27:
        v61 = v154;
        return (*(v61 + 8))(v71, v69);
      }

      v108 = *(v80 + 32);
      v109 = v126;
      v108(v126, v78, v81);
      v110 = v161;
      v108(v161, v109, v81);
      v164 = v157;
      v163 = v158;
      v165 = v159;
      v166 = v160;
      v111 = type metadata accessor for TaggedValue_3.ObservableDifference();
    }

    else
    {
      v71 = v162;
      (v68)(v50, v162, v69);
      v91 = v50[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_20;
      }

      v92 = *v50;
      v94 = *v67;
      v93 = v67[1];

      if (v92 == v94)
      {
        v163 = v158;
        v164 = v157;
        goto LABEL_16;
      }

      v163 = v158;
      v164 = v157;
      v165 = v159;
      v166 = v160;
      v111 = type metadata accessor for TaggedValue_3.ObservableDifference();
      v110 = v161;
    }

LABEL_26:
    swift_storeEnumTagMultiPayload();
    (*(*(v111 - 8) + 56))(v110, 0, 1, v111);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload)
  {
    v71 = v162;
    (v68)(v56, v162, v69);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v149 + 8))(v56, v150);
      goto LABEL_20;
    }

    v82 = v149;
    v83 = *(v149 + 32);
    v84 = v135;
    v85 = v150;
    v83(v135, v56, v150);
    v86 = v136;
    v83(v136, v67, v85);
    v87 = v139;
    (*(v137 + 40))(v86, v153, v85);
    v88 = *(v82 + 8);
    v88(v86, v85);
    v88(v84, v85);
    v89 = v138;
    v90 = v142;
    if ((*(v138 + 48))(v87, 1, v142) == 1)
    {
      (*(v124 + 8))(v87, v125);
      goto LABEL_12;
    }

    v112 = *(v89 + 32);
    v113 = v123;
    v112(v123, v87, v90);
    v110 = v161;
    v112(v161, v113, v90);
    v164 = v157;
    v163 = v158;
    v165 = v159;
    v166 = v160;
    v111 = type metadata accessor for TaggedValue_3.ObservableDifference();
    goto LABEL_26;
  }

  (v68)(v59, v162, v46);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v147 + 8))(v59, v148);
    v71 = v162;
LABEL_20:
    v163 = v158;
    v164 = v157;
    v165 = v159;
    v166 = v160;
    v96 = type metadata accessor for TaggedValue_3.ObservableDifference();
    v97 = v161;
    swift_storeEnumTagMultiPayload();
    (*(*(v96 - 8) + 56))(v97, 0, 1, v96);
    v69 = v155;
    return (*(v61 + 8))(v71, v69);
  }

  v98 = v147;
  v99 = *(v147 + 32);
  v100 = v129;
  v101 = v148;
  v99(v129, v59, v148);
  v102 = v130;
  v99(v130, v67, v101);
  v103 = v133;
  (*(v131 + 40))(v102, v153, v101);
  v104 = *(v98 + 8);
  v104(v102, v101);
  v104(v100, v101);
  v105 = v132;
  v106 = v134;
  if ((*(v132 + 48))(v103, 1, v134) == 1)
  {
    (*(v121 + 8))(v103, v122);
    v164 = v157;
    v163 = v158;
    v165 = v159;
    v166 = v160;
    v107 = type metadata accessor for TaggedValue_3.ObservableDifference();
    (*(*(v107 - 8) + 56))(v161, 1, 1, v107);
  }

  else
  {
    v115 = *(v105 + 32);
    v116 = v120;
    v115(v120, v103, v106);
    v117 = v161;
    v115(v161, v116, v106);
    v164 = v157;
    v163 = v158;
    v165 = v159;
    v166 = v160;
    v118 = type metadata accessor for TaggedValue_3.ObservableDifference();
    swift_storeEnumTagMultiPayload();
    (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
  }

  v61 = v154;
  v71 = v162;
  return (*(v61 + 8))(v71, v69);
}

BOOL TaggedValue_4.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  v7 = swift_getEnumCaseMultiPayload() == 5;
  (*(v2 + 8))(v6, a1);
  return v7;
}

uint64_t TaggedValue_4.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v4 = type metadata accessor for TaggedValue_4.TaggedEnum();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t TaggedValue_4.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v4 = type metadata accessor for TaggedValue_4.TaggedEnum();
  return (*(*(v4 - 8) + 40))(v2, a1, v4);
}

uint64_t TaggedValue_4.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_4.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_4.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  type metadata accessor for TaggedValue_4.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_4.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_4.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_4.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_4.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_4.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  a3[1] = v3;
  type metadata accessor for TaggedValue_4.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_4.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v18[0] = a1[1];
  v18[1] = v18[0];
  v6 = a1[3];
  v7 = a1[4];
  v18[2] = v5;
  v18[3] = v6;
  v18[4] = v7;
  v8 = type metadata accessor for TaggedValue_4.TaggedEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v18 - v12;
  (*(v9 + 16))(v18 - v12, v3, v8, v11);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v9 + 8))(v13, v8);
    v14 = *&v18[0];
    v15 = *(*&v18[0] - 8);
    v16 = 1;
  }

  else
  {
    v15 = *(*&v18[0] - 8);
    (*(v15 + 32))(a2, v13);
    v14 = *&v18[0];
    v16 = 0;
  }

  return (*(v15 + 56))(a2, v16, 1, v14);
}

uint64_t TaggedValue_4.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 72);
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = v15;
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = v5;
  v6 = type metadata accessor for TaggedValue_4.TaggedEnum();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, v3, v6, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_4.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v17[0] = a1[2];
  v17[1] = v5;
  v6 = a1[3];
  v7 = a1[4];
  v17[2] = v17[0];
  v17[3] = v6;
  v17[4] = v7;
  v8 = type metadata accessor for TaggedValue_4.TaggedEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, v3, v8, v11);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v14 = *(*&v17[0] - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v9 + 8))(v13, v8);
    v14 = *(*&v17[0] - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, *&v17[0]);
}

uint64_t TaggedValue_4.tagged4.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 72);
  v6 = *(a1 + 16);
  v17 = *(a1 + 32);
  v16[0] = *(a1 + 40);
  v16[1] = v6;
  v18 = v16[0];
  v19 = *(a1 + 56);
  v20 = v5;
  v7 = type metadata accessor for TaggedValue_4.TaggedEnum();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, v3, v7, v10);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = *(*&v16[0] - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v8 + 8))(v12, v7);
    v13 = *(*&v16[0] - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, *&v16[0]);
}

uint64_t TaggedValue_4.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v15[0] = a1[1];
  v15[1] = v5;
  v6 = a1[4];
  v15[2] = a1[3];
  v15[3] = v6;
  v7 = type metadata accessor for TaggedValue_4.TaggedEnum();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v15 - v11;
  (*(v8 + 16))(v15 - v11, v3, v7, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v14 = *(v12 + 1);
  }

  else
  {
    result = (*(v8 + 8))(v12, v7);
    v14 = 0;
  }

  *a2 = v14;
  return result;
}

uint64_t TaggedValue_4.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v52 = *(*(a2 + 40) - 8);
  v2 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(*(v4 + 32) - 8);
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v54 = *(v15 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v20[6];
  v21 = v20[7];
  v24 = v20[8];
  v23 = v20[9];
  *&v25 = v15;
  *(&v25 + 1) = v9;
  v48 = v26;
  *&v27 = v26;
  v53 = v28;
  *(&v27 + 1) = v28;
  v58 = v25;
  v59 = v27;
  v60 = v22;
  v61 = v21;
  v62 = v24;
  v63 = v23;
  v29 = type metadata accessor for TaggedValue_4.TaggedEnum();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v48 - v32;
  (*(v34 + 16))(&v48 - v32, v56, v29, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v41 = v13;
    v42 = v55;
    if (EnumCaseMultiPayload)
    {
      (*(v55 + 32))(v41, v33, v9);
      (*(*(v21 + 8) + 48))(v57, v9);
      return (*(v42 + 8))(v41, v9);
    }

    else
    {
      v43 = v54;
      (*(v54 + 32))(v19, v33, v15);
      (*(*(v22 + 8) + 48))(v57, v15);
      return (*(v43 + 8))(v19, v15);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v44 = v49;
    v45 = v50;
    v46 = v33;
    v47 = v48;
    (*(v50 + 32))(v49, v46, v48);
    (*(*(v24 + 8) + 48))(v57, v47);
    return (*(v45 + 8))(v44, v47);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v37 = v51;
    v36 = v52;
    v38 = v33;
    v39 = v53;
    (*(v52 + 32))(v51, v38, v53);
    (*(*(v23 + 8) + 48))(v57, v39);
    return (*(v36 + 8))(v37, v39);
  }

  else
  {
    (*(**(v33 + 1) + 120))(v57);
  }
}

uint64_t TaggedValue_4.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v76 = a1;
  v77 = a3;
  v67 = *(*(a2 + 40) - 8);
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v66 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v61 - v6;
  v8 = *(v7 + 32);
  v64 = *(v8 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  v16 = *(v15 + 24);
  v69 = *(v16 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v25 = *(v24 + 16);
  v68 = *(v25 - 8);
  v26 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v61 - v31;
  v35 = v33[6];
  v34 = v33[7];
  v36 = v33[8];
  v37 = v33[9];
  *&v38 = v25;
  *(&v38 + 1) = v16;
  *&v39 = v8;
  v70 = v40;
  *(&v39 + 1) = v40;
  v61 = v39;
  v79 = v39;
  v62 = v38;
  v78 = v38;
  v73 = v35;
  v74 = v34;
  v80 = v35;
  v81 = v34;
  v75 = v36;
  v82 = v36;
  v83 = v37;
  v72 = v37;
  v41 = type metadata accessor for TaggedValue_4.TaggedEnum();
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v61 - v44;
  (*(v46 + 16))(&v61 - v44, v71, v41, v43);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v54 = v69;
    if (EnumCaseMultiPayload)
    {
      (*(v69 + 32))(v23, v45, v16);
      (*(*(v74 + 8) + 24))(v76, v16);
      (*(v54 + 8))(v23, v16);
      return TaggedValue_4.init(_:)(v20, v16, v77);
    }

    else
    {
      v55 = v68;
      (*(v68 + 32))(v32, v45, v25);
      (*(*(v73 + 8) + 24))(v76, v25);
      (*(v55 + 8))(v32, v25);
      return TaggedValue_4.init(_:)(v29, v25, v77);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v56 = v64;
    (*(v64 + 32))(v14, v45, v8);
    v57 = v63;
    (*(*(v75 + 8) + 24))(v76, v8);
    (*(v56 + 8))(v14, v8);
    return TaggedValue_4.init(_:)(v57, v8, v77);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v48 = v67;
    v49 = v65;
    v50 = v45;
    v51 = v70;
    (*(v67 + 32))(v65, v50, v70);
    v52 = v66;
    (*(*(v72 + 8) + 24))(v76, v51);
    (*(v48 + 8))(v49, v51);
    return TaggedValue_4.init(_:)(v52, v51, v77);
  }

  else
  {
    v58 = *v45;
    v59 = (*(**(v45 + 1) + 104))(v76);

    v60 = v77;
    *v77 = v58;
    v60[1] = v59;
    v79 = v61;
    v78 = v62;
    v80 = v73;
    v81 = v74;
    v82 = v75;
    v83 = v72;
    type metadata accessor for TaggedValue_4.TaggedEnum();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t TaggedValue_4.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v191 = a2;
  v204 = a1;
  v201 = a4;
  v5 = a3[5];
  *&v202 = a3[9];
  v182 = *(v202 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v160 = sub_1AE23D7CC();
  v159 = *(v160 - 8);
  v7 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v183 = &v148 - v8;
  v184 = AssociatedTypeWitness;
  v181 = *(AssociatedTypeWitness - 8);
  v9 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v158 = &v148 - v11;
  v189 = *(v5 - 8);
  v12 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v179 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v178 = &v148 - v16;
  v17 = a3[8];
  v18 = a3[4];
  v175 = *(v17 + 8);
  v19 = swift_getAssociatedTypeWitness();
  v157 = sub_1AE23D7CC();
  v156 = *(v157 - 8);
  v20 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v177 = &v148 - v21;
  v180 = v19;
  v176 = *(v19 - 8);
  v22 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v155 = &v148 - v24;
  v187 = *(v18 - 8);
  v25 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v174 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v173 = &v148 - v29;
  v30 = a3[7];
  v31 = a3[3];
  v169 = *(v30 + 8);
  v32 = swift_getAssociatedTypeWitness();
  v154 = sub_1AE23D7CC();
  v153 = *(v154 - 8);
  v33 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v170 = &v148 - v34;
  v172 = v32;
  v171 = *(v32 - 8);
  v35 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v152 = &v148 - v37;
  v193 = *(v31 - 8);
  v38 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v168 = &v148 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v167 = &v148 - v42;
  v43 = a3[6];
  v44 = a3[2];
  v163 = *(v43 + 8);
  v45 = swift_getAssociatedTypeWitness();
  v151 = sub_1AE23D7CC();
  v150 = *(v151 - 8);
  v46 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v165 = &v148 - v47;
  v166 = v45;
  v164 = *(v45 - 8);
  v48 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v149 = &v148 - v50;
  v192 = *(v44 - 8);
  v51 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v162 = &v148 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v161 = &v148 - v55;
  *&v56 = v44;
  v194 = v31;
  *(&v56 + 1) = v31;
  v188 = v18;
  *&v57 = v18;
  v190 = v5;
  *(&v57 + 1) = v5;
  *&v58 = v43;
  *(&v58 + 1) = v30;
  v198 = v57;
  v199 = v56;
  v206 = v57;
  v205 = v56;
  *&v56 = v17;
  *(&v56 + 1) = v202;
  v200 = v56;
  v208 = v56;
  v202 = v58;
  v207 = v58;
  v59 = type metadata accessor for TaggedValue_4.TaggedEnum();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v63 = (&v148 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v64);
  v186 = &v148 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v185 = &v148 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v148 - v69;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v148 - v72;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v197 = *(TupleTypeMetadata2 - 8);
  v75 = *(v197 + 64);
  v76 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v78 = &v148 - v77;
  v196 = v79;
  v80 = &v148 + *(v79 + 48) - v77;
  v195 = v60;
  v81 = *(v60 + 16);
  v81(&v148 - v77, v203, v59, v76);
  v82 = v80;
  (v81)(v80, v204, v59);
  v203 = v59;
  v204 = v78;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v99 = v185;
      v84 = v203;
      (v81)(v185, v204, v203);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v100 = v187;
        v101 = *(v187 + 32);
        v102 = v173;
        v103 = v188;
        v101(v173, v99, v188);
        v104 = v174;
        v101(v174, v82, v103);
        v105 = v177;
        (*(v175 + 40))(v104, v191, v103);
        v106 = *(v100 + 8);
        v106(v104, v103);
        v106(v102, v103);
        v107 = v176;
        v108 = v180;
        if ((*(v176 + 48))(v105, 1, v180) == 1)
        {
          (*(v156 + 8))(v105, v157);
          goto LABEL_27;
        }

        v134 = *(v107 + 32);
        v135 = v155;
        v134(v155, v105, v108);
        v136 = v201;
        v134(v201, v135, v108);
        v206 = v198;
        v205 = v199;
        v208 = v200;
        v207 = v202;
        v137 = type metadata accessor for TaggedValue_4.ObservableDifference();
LABEL_35:
        swift_storeEnumTagMultiPayload();
        (*(*(v137 - 8) + 56))(v136, 0, 1, v137);
        goto LABEL_36;
      }

      (*(v187 + 8))(v99, v188);
    }

    else
    {
      v84 = v203;
      if (EnumCaseMultiPayload == 3)
      {
        v85 = v186;
        (v81)(v186, v204, v203);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v86 = v189;
          v87 = *(v189 + 32);
          v88 = v178;
          v89 = v190;
          v87(v178, v85, v190);
          v90 = v179;
          v87(v179, v82, v89);
          v91 = v183;
          (*(v182 + 40))(v90, v191, v89);
          v92 = *(v86 + 8);
          v92(v90, v89);
          v92(v88, v89);
          v93 = v181;
          v94 = v184;
          if ((*(v181 + 48))(v91, 1, v184) == 1)
          {
            (*(v159 + 8))(v91, v160);
LABEL_27:
            v206 = v198;
            v205 = v199;
            v208 = v200;
            v207 = v202;
            goto LABEL_28;
          }

          v138 = *(v93 + 32);
          v139 = v158;
          v138(v158, v91, v94);
          v136 = v201;
          v138(v201, v139, v94);
          v206 = v198;
          v205 = v199;
          v208 = v200;
          v207 = v202;
          v137 = type metadata accessor for TaggedValue_4.ObservableDifference();
          goto LABEL_35;
        }

        (*(v189 + 8))(v85, v190);
      }

      else
      {
        (v81)(v63, v204, v203);
        v109 = v63[1];
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v110 = *v63;
          v112 = *v80;
          v111 = *(v80 + 1);

          if (v110 == v112)
          {
            v205 = v199;
            v206 = v198;
            v207 = v202;
            v208 = v200;
LABEL_28:
            v133 = type metadata accessor for TaggedValue_4.ObservableDifference();
            (*(*(v133 - 8) + 56))(v201, 1, 1, v133);
LABEL_36:
            v124 = &v209;
            goto LABEL_37;
          }

          v205 = v199;
          v206 = v198;
          v207 = v202;
          v208 = v200;
          v137 = type metadata accessor for TaggedValue_4.ObservableDifference();
          v136 = v201;
          goto LABEL_35;
        }
      }
    }

LABEL_24:
    v122 = v201;
    v205 = v199;
    v206 = v198;
    v207 = v202;
    v208 = v200;
    v123 = type metadata accessor for TaggedValue_4.ObservableDifference();
    swift_storeEnumTagMultiPayload();
    (*(*(v123 - 8) + 56))(v122, 0, 1, v123);
    v84 = v196;
    v124 = &v210;
LABEL_37:
    v144 = *(v124 - 32);
    return (*(v144 + 8))(v204, v84);
  }

  v95 = v192;
  v96 = v193;
  v97 = v194;
  if (!EnumCaseMultiPayload)
  {
    v84 = v203;
    (v81)(v73, v204, v203);
    v98 = v82;
    if (!swift_getEnumCaseMultiPayload())
    {
      v125 = *(v95 + 32);
      v126 = v161;
      v127 = v44;
      v125(v161, v73, v44);
      v128 = v162;
      v125(v162, v98, v44);
      v129 = v165;
      (*(v163 + 40))(v128, v191, v44);
      v130 = *(v95 + 8);
      v130(v128, v127);
      v130(v126, v127);
      v131 = v164;
      v132 = v166;
      if ((*(v164 + 48))(v129, 1, v166) == 1)
      {
        (*(v150 + 8))(v129, v151);
        goto LABEL_27;
      }

      v145 = *(v131 + 32);
      v146 = v149;
      v145(v149, v129, v132);
      v136 = v201;
      v145(v201, v146, v132);
      v206 = v198;
      v205 = v199;
      v208 = v200;
      v207 = v202;
      v137 = type metadata accessor for TaggedValue_4.ObservableDifference();
      goto LABEL_35;
    }

    (*(v95 + 8))(v73, v44);
    goto LABEL_24;
  }

  (v81)(v70, v204, v203);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v96 + 8))(v70, v97);
    goto LABEL_24;
  }

  v113 = v96;
  v114 = *(v96 + 32);
  v115 = v167;
  v114(v167, v70, v97);
  v116 = v168;
  v114(v168, v82, v97);
  v117 = v170;
  (*(v169 + 40))(v116, v191, v97);
  v118 = *(v113 + 8);
  v118(v116, v97);
  v118(v115, v97);
  v119 = v171;
  v120 = v172;
  if ((*(v171 + 48))(v117, 1, v172) == 1)
  {
    (*(v153 + 8))(v117, v154);
    v206 = v198;
    v205 = v199;
    v208 = v200;
    v207 = v202;
    v121 = type metadata accessor for TaggedValue_4.ObservableDifference();
    (*(*(v121 - 8) + 56))(v201, 1, 1, v121);
  }

  else
  {
    v140 = *(v119 + 32);
    v141 = v152;
    v140(v152, v117, v120);
    v142 = v201;
    v140(v201, v141, v120);
    v206 = v198;
    v205 = v199;
    v208 = v200;
    v207 = v202;
    v143 = type metadata accessor for TaggedValue_4.ObservableDifference();
    swift_storeEnumTagMultiPayload();
    (*(*(v143 - 8) + 56))(v142, 0, 1, v143);
  }

  v144 = v195;
  v84 = v203;
  return (*(v144 + 8))(v204, v84);
}

BOOL TaggedValue_5.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  v7 = swift_getEnumCaseMultiPayload() == 6;
  (*(v2 + 8))(v6, a1);
  return v7;
}

uint64_t TaggedValue_5.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v4 = type metadata accessor for TaggedValue_5.TaggedEnum();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t TaggedValue_5.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v4 = type metadata accessor for TaggedValue_5.TaggedEnum();
  return (*(*(v4 - 8) + 40))(v2, a1, v4);
}

uint64_t TaggedValue_5.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_5.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_5.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  type metadata accessor for TaggedValue_5.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_5.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_5.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_5.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_5.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_5.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_5.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_5.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  a3[1] = v3;
  type metadata accessor for TaggedValue_5.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_5.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v19[0] = a1[1];
  v19[1] = v19[0];
  v6 = a1[3];
  v7 = a1[4];
  v19[2] = v5;
  v19[3] = v6;
  v8 = a1[5];
  v19[4] = v7;
  v19[5] = v8;
  v9 = type metadata accessor for TaggedValue_5.TaggedEnum();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v19 - v13;
  (*(v10 + 16))(v19 - v13, v3, v9, v12);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v10 + 8))(v14, v9);
    v15 = *&v19[0];
    v16 = *(*&v19[0] - 8);
    v17 = 1;
  }

  else
  {
    v16 = *(*&v19[0] - 8);
    (*(v16 + 32))(a2, v14);
    v15 = *&v19[0];
    v17 = 0;
  }

  return (*(v16 + 56))(a2, v17, 1, v15);
}

uint64_t TaggedValue_5.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 88);
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = v15;
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = v5;
  v6 = type metadata accessor for TaggedValue_5.TaggedEnum();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, v3, v6, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_5.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v18[0] = a1[2];
  v18[1] = v5;
  v6 = a1[3];
  v7 = a1[4];
  v18[2] = v18[0];
  v18[3] = v6;
  v8 = a1[5];
  v18[4] = v7;
  v18[5] = v8;
  v9 = type metadata accessor for TaggedValue_5.TaggedEnum();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - v13;
  (*(v10 + 16))(v18 - v13, v3, v9, v12);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v15 = *(*&v18[0] - 8);
    (*(v15 + 32))(a2, v14);
    v16 = 0;
  }

  else
  {
    (*(v10 + 8))(v14, v9);
    v15 = *(*&v18[0] - 8);
    v16 = 1;
  }

  return (*(v15 + 56))(a2, v16, 1, *&v18[0]);
}

uint64_t TaggedValue_5.tagged4.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 88);
  v6 = *(a1 + 16);
  v17 = *(a1 + 32);
  v16[0] = *(a1 + 40);
  v16[1] = v6;
  v18 = v16[0];
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = v5;
  v7 = type metadata accessor for TaggedValue_5.TaggedEnum();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, v3, v7, v10);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = *(*&v16[0] - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v8 + 8))(v12, v7);
    v13 = *(*&v16[0] - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, *&v16[0]);
}

uint64_t TaggedValue_5.tagged5.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v16[1] = a1[1];
  v16[2] = v5;
  v6 = a1[4];
  v16[0] = a1[3];
  v16[3] = v16[0];
  v16[4] = v6;
  v16[5] = a1[5];
  v7 = type metadata accessor for TaggedValue_5.TaggedEnum();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, v3, v7, v10);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v13 = *(*&v16[0] - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v8 + 8))(v12, v7);
    v13 = *(*&v16[0] - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, *&v16[0]);
}

uint64_t TaggedValue_5.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v15[0] = a1[1];
  v15[1] = v5;
  v6 = a1[4];
  v15[2] = a1[3];
  v15[3] = v6;
  v15[4] = a1[5];
  v7 = type metadata accessor for TaggedValue_5.TaggedEnum();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v15 - v11;
  (*(v8 + 16))(v15 - v11, v3, v7, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result == 5)
  {
    v14 = *(v12 + 1);
  }

  else
  {
    result = (*(v8 + 8))(v12, v7);
    v14 = 0;
  }

  *a2 = v14;
  return result;
}

uint64_t TaggedValue_5.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v59 = *(*(a2 + 48) - 8);
  v2 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v58 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 40);
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 32);
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 24);
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 16);
  v51 = *(v20 - 8);
  v21 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 + 56);
  v27 = *(v25 + 64);
  v29 = *(v25 + 80);
  v28 = *(v25 + 88);
  *&v30 = v20;
  *(&v30 + 1) = v15;
  *&v31 = v10;
  *(&v31 + 1) = v5;
  v65 = v31;
  v64 = v30;
  v60 = v32;
  *&v30 = v32;
  *(&v30 + 1) = v26;
  v61 = v27;
  v67 = v27;
  v66 = v30;
  v68 = v29;
  v69 = v28;
  v33 = type metadata accessor for TaggedValue_5.TaggedEnum();
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v51 - v36;
  (*(v38 + 16))(&v51 - v36, v63, v33, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v48 = v56;
      v47 = v57;
      (*(v57 + 32))(v56, v37, v5);
      (*(*(v29 + 8) + 48))(v62, v5);
      return (*(v47 + 8))(v48, v5);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v43 = v58;
      v44 = v59;
      v45 = v60;
      (*(v59 + 32))(v58, v37, v60);
      (*(*(v28 + 8) + 48))(v62, v45);
      return (*(v44 + 8))(v43, v45);
    }

    else
    {
      (*(**(v37 + 1) + 120))(v62);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v40 = v53;
      v41 = v52;
      (*(v53 + 32))(v52, v37, v15);
      (*(*(v61 + 8) + 48))(v62, v15);
      return (*(v40 + 8))(v41, v15);
    }

    else
    {
      v49 = v55;
      v50 = v54;
      (*(v55 + 32))(v54, v37, v10);
      (*(*(*(&v61 + 1) + 8) + 48))(v62, v10);
      return (*(v49 + 8))(v50, v10);
    }
  }

  else
  {
    v46 = v51;
    (*(v51 + 32))(v24, v37, v20);
    (*(*(v26 + 8) + 48))(v62, v20);
    return (*(v46 + 8))(v24, v20);
  }
}

uint64_t TaggedValue_5.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v88 = a1;
  v90 = a3;
  v83 = *(*(a2 + 48) - 8);
  v3 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v82 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v73 - v6;
  v80 = *(*(v7 + 40) - 8);
  v8 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v73 - v12;
  v78 = *(*(v14 + 32) - 8);
  v15 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  v22 = *(v21 + 24);
  v76 = *(v22 - 8);
  v23 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v73 - v28;
  v31 = *(v30 + 16);
  v75 = *(v31 - 8);
  v32 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v73 - v37;
  v40 = *(v39 + 56);
  v41 = *(v39 + 64);
  v42 = *(v39 + 80);
  v43 = *(v39 + 88);
  *&v44 = v31;
  *(&v44 + 1) = v22;
  v84 = v45;
  *&v46 = v45;
  v85 = v47;
  *(&v46 + 1) = v47;
  v73 = v46;
  v95 = v46;
  v74 = v44;
  v94 = v44;
  v91 = v48;
  *&v96 = v48;
  *(&v96 + 1) = v40;
  v89 = v40;
  v93 = v41;
  v97 = v41;
  v86 = v43;
  v87 = v42;
  v98 = v42;
  v99 = v43;
  v49 = type metadata accessor for TaggedValue_5.TaggedEnum();
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = &v73 - v52;
  (*(v54 + 16))(&v73 - v52, v92, v49, v51);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v63 = v80;
      v64 = v85;
      (*(v80 + 32))(v13, v53, v85);
      v65 = v79;
      (*(*(v87 + 8) + 24))(v88, v64);
      (*(v63 + 8))(v13, v64);
      return TaggedValue_5.init(_:)(v65, v64, v90);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v58 = v83;
      v59 = v81;
      v60 = v91;
      (*(v83 + 32))(v81, v53, v91);
      v61 = v82;
      (*(*(v86 + 8) + 24))(v88, v60);
      (*(v58 + 8))(v59, v60);
      return TaggedValue_5.init(_:)(v61, v60, v90);
    }

    else
    {
      v69 = *v53;
      v70 = (*(**(v53 + 1) + 104))(v88);

      v71 = v90;
      *v90 = v69;
      v71[1] = v70;
      v95 = v73;
      v94 = v74;
      *&v72 = v91;
      *(&v72 + 1) = v89;
      v97 = v93;
      v96 = v72;
      v98 = v87;
      v99 = v86;
      type metadata accessor for TaggedValue_5.TaggedEnum();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v56 = v76;
      (*(v76 + 32))(v29, v53, v22);
      (*(*(v93 + 8) + 24))(v88, v22);
      (*(v56 + 8))(v29, v22);
      return TaggedValue_5.init(_:)(v26, v22, v90);
    }

    else
    {
      v66 = v78;
      v67 = v84;
      (*(v78 + 32))(v20, v53, v84);
      v68 = v77;
      (*(*(*(&v93 + 1) + 8) + 24))(v88, v67);
      (*(v66 + 8))(v20, v67);
      return TaggedValue_5.init(_:)(v68, v67, v90);
    }
  }

  else
  {
    v62 = v75;
    (*(v75 + 32))(v38, v53, v31);
    (*(*(v89 + 8) + 24))(v88, v31);
    (*(v62 + 8))(v38, v31);
    return TaggedValue_5.init(_:)(v35, v31, v90);
  }
}

uint64_t TaggedValue_5.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v236 = a2;
  v245 = a4;
  v5 = a3[11];
  v247 = a1;
  v248 = v5;
  v6 = a3[6];
  v221 = *(v5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v193 = sub_1AE23D7CC();
  v192 = *(v193 - 8);
  v8 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v222 = &v178 - v9;
  v223 = AssociatedTypeWitness;
  v220 = *(AssociatedTypeWitness - 8);
  v10 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v191 = &v178 - v12;
  v234 = *(v6 - 8);
  v13 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v218 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v217 = &v178 - v17;
  v18 = a3[10];
  v19 = a3[5];
  v214 = *(v18 + 8);
  v20 = swift_getAssociatedTypeWitness();
  v190 = sub_1AE23D7CC();
  v189 = *(v190 - 8);
  v21 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v190);
  v216 = &v178 - v22;
  v219 = v20;
  v215 = *(v20 - 8);
  v23 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v188 = &v178 - v25;
  v232 = *(v19 - 8);
  v26 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v212 = &v178 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v211 = &v178 - v30;
  v31 = a3[9];
  v32 = a3[4];
  v208 = *(v31 + 8);
  v33 = swift_getAssociatedTypeWitness();
  v187 = sub_1AE23D7CC();
  v186 = *(v187 - 8);
  v34 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v210 = &v178 - v35;
  v213 = v33;
  v209 = *(v33 - 8);
  v36 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v185 = &v178 - v38;
  v230 = *(v32 - 8);
  v39 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v206 = &v178 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v205 = &v178 - v43;
  v44 = a3[8];
  v45 = a3[3];
  v202 = *(v44 + 8);
  v46 = swift_getAssociatedTypeWitness();
  v184 = sub_1AE23D7CC();
  v183 = *(v184 - 8);
  v47 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v204 = &v178 - v48;
  v207 = v46;
  v203 = *(v46 - 8);
  v49 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v182 = &v178 - v51;
  v228 = *(v45 - 8);
  v52 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v201 = &v178 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v200 = &v178 - v56;
  v57 = a3[7];
  v58 = a3[2];
  v196 = *(v57 + 8);
  v59 = swift_getAssociatedTypeWitness();
  v181 = sub_1AE23D7CC();
  v180 = *(v181 - 8);
  v60 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v198 = &v178 - v61;
  v199 = v59;
  v197 = *(v59 - 8);
  v62 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v179 = &v178 - v64;
  v226 = *(v58 - 8);
  v65 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v195 = &v178 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v194 = &v178 - v69;
  v227 = v58;
  *&v70 = v58;
  v229 = v45;
  *(&v70 + 1) = v45;
  v231 = v32;
  *&v71 = v32;
  v233 = v19;
  *(&v71 + 1) = v19;
  v240 = v71;
  v250 = v71;
  v241 = v70;
  v249 = v70;
  v235 = v6;
  *&v70 = v6;
  *(&v70 + 1) = v57;
  *&v71 = v44;
  *(&v71 + 1) = v31;
  v242 = v71;
  v243 = v70;
  v252 = v71;
  v251 = v70;
  v244 = v18;
  v253 = v18;
  v254 = v248;
  v72 = type metadata accessor for TaggedValue_5.TaggedEnum();
  v73 = *(v72 - 8);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v76 = (&v178 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v77);
  v225 = &v178 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v224 = &v178 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v178 - v82;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v178 - v85;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v178 - v88;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v239 = *(TupleTypeMetadata2 - 8);
  v91 = *(v239 + 64);
  v92 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v94 = &v178 - v93;
  v238 = v95;
  v96 = &v178 + *(v95 + 48) - v93;
  v237 = v73;
  v97 = *(v73 + 16);
  v97(&v178 - v93, v246, v72, v92);
  v98 = v96;
  (v97)(v96, v247, v72);
  v247 = v94;
  v99 = v72;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v101 = v247;
      if (EnumCaseMultiPayload == 1)
      {
        (v97)(v86, v247, v72);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v102 = v228;
          v103 = *(v228 + 32);
          v104 = v200;
          v105 = v86;
          v106 = v96;
          v107 = v229;
          v103(v200, v105, v229);
          v108 = v201;
          v103(v201, v106, v107);
          v109 = v204;
          (*(v202 + 40))(v108, v236, v107);
          v110 = *(v102 + 8);
          v110(v108, v107);
          v110(v104, v107);
          v111 = v203;
          v112 = v207;
          if ((*(v203 + 48))(v109, 1, v207) == 1)
          {
            (*(v183 + 8))(v109, v184);
LABEL_31:
            v250 = v240;
            v249 = v241;
            v252 = v242;
            v251 = v243;
            v253 = v244;
            v254 = v248;
            v161 = type metadata accessor for TaggedValue_5.ObservableDifference();
            (*(*(v161 - 8) + 56))(v245, 1, 1, v161);
LABEL_40:
            v151 = &v255;
            goto LABEL_41;
          }

          v166 = *(v111 + 32);
          v167 = v182;
          v166(v182, v109, v112);
          v164 = v245;
          v166(v245, v167, v112);
          v250 = v240;
          v249 = v241;
          v252 = v242;
          v251 = v243;
          v253 = v244;
          v254 = v248;
          v165 = type metadata accessor for TaggedValue_5.ObservableDifference();
          goto LABEL_39;
        }

        (*(v228 + 8))(v86, v229);
      }

      else
      {
        (v97)(v83, v247, v72);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v135 = v230;
          v136 = *(v230 + 32);
          v137 = v205;
          v138 = v231;
          v136(v205, v83, v231);
          v139 = v206;
          v136(v206, v98, v138);
          v140 = v210;
          (*(v208 + 40))(v139, v236, v138);
          v141 = *(v135 + 8);
          v141(v139, v138);
          v141(v137, v138);
          v142 = v209;
          v143 = v213;
          if ((*(v209 + 48))(v140, 1, v213) == 1)
          {
            (*(v186 + 8))(v140, v187);
            goto LABEL_31;
          }

          v170 = *(v142 + 32);
          v171 = v185;
          v170(v185, v140, v143);
          v164 = v245;
          v170(v245, v171, v143);
          v250 = v240;
          v249 = v241;
          v252 = v242;
          v251 = v243;
          v253 = v244;
          v254 = v248;
          v165 = type metadata accessor for TaggedValue_5.ObservableDifference();
          goto LABEL_39;
        }

        (*(v230 + 8))(v83, v231);
      }
    }

    else
    {
      v101 = v247;
      (v97)(v89, v247, v72);
      if (!swift_getEnumCaseMultiPayload())
      {
        v152 = v226;
        v153 = *(v226 + 32);
        v154 = v194;
        v155 = v227;
        v153(v194, v89, v227);
        v156 = v195;
        v153(v195, v98, v155);
        v157 = v198;
        (*(v196 + 40))(v156, v236, v155);
        v158 = *(v152 + 8);
        v158(v156, v155);
        v158(v154, v155);
        v159 = v197;
        v160 = v199;
        if ((*(v197 + 48))(v157, 1, v199) == 1)
        {
          (*(v180 + 8))(v157, v181);
          goto LABEL_31;
        }

        v175 = *(v159 + 32);
        v176 = v179;
        v175(v179, v157, v160);
        v164 = v245;
        v175(v245, v176, v160);
        v250 = v240;
        v249 = v241;
        v252 = v242;
        v251 = v243;
        v253 = v244;
        v254 = v248;
        v165 = type metadata accessor for TaggedValue_5.ObservableDifference();
        goto LABEL_39;
      }

      (*(v226 + 8))(v89, v227);
    }

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v124 = v224;
    v101 = v247;
    (v97)(v224, v247, v99);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v125 = v232;
      v126 = *(v232 + 32);
      v127 = v211;
      v128 = v124;
      v129 = v233;
      v126(v211, v128, v233);
      v130 = v212;
      v126(v212, v98, v129);
      v131 = v216;
      (*(v214 + 40))(v130, v236, v129);
      v132 = *(v125 + 8);
      v132(v130, v129);
      v132(v127, v129);
      v133 = v215;
      v134 = v219;
      if ((*(v215 + 48))(v131, 1, v219) == 1)
      {
        (*(v189 + 8))(v131, v190);
        goto LABEL_31;
      }

      v162 = *(v133 + 32);
      v163 = v188;
      v162(v188, v131, v134);
      v164 = v245;
      v162(v245, v163, v134);
      v250 = v240;
      v249 = v241;
      v252 = v242;
      v251 = v243;
      v253 = v244;
      v254 = v248;
      v165 = type metadata accessor for TaggedValue_5.ObservableDifference();
      goto LABEL_39;
    }

    (*(v232 + 8))(v124, v233);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v113 = v225;
    v101 = v247;
    (v97)(v225, v247, v99);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v114 = v234;
      v115 = *(v234 + 32);
      v116 = v217;
      v117 = v113;
      v118 = v235;
      v115(v217, v117, v235);
      v119 = v218;
      v115(v218, v96, v118);
      v120 = v222;
      (*(v221 + 40))(v119, v236, v118);
      v121 = *(v114 + 8);
      v121(v119, v118);
      v121(v116, v118);
      v122 = v220;
      v123 = v223;
      if ((*(v220 + 48))(v120, 1, v223) == 1)
      {
        (*(v192 + 8))(v120, v193);
        goto LABEL_31;
      }

      v168 = *(v122 + 32);
      v169 = v191;
      v168(v191, v120, v123);
      v164 = v245;
      v168(v245, v169, v123);
      v250 = v240;
      v249 = v241;
      v252 = v242;
      v251 = v243;
      v253 = v244;
      v254 = v248;
      v165 = type metadata accessor for TaggedValue_5.ObservableDifference();
LABEL_39:
      swift_storeEnumTagMultiPayload();
      (*(*(v165 - 8) + 56))(v164, 0, 1, v165);
      goto LABEL_40;
    }

    (*(v234 + 8))(v113, v235);
LABEL_27:
    v249 = v241;
    v250 = v240;
    v251 = v243;
    v252 = v242;
    v253 = v244;
    v254 = v248;
    v149 = type metadata accessor for TaggedValue_5.ObservableDifference();
    v150 = v245;
    swift_storeEnumTagMultiPayload();
    (*(*(v149 - 8) + 56))(v150, 0, 1, v149);
    v99 = v238;
    v151 = &v256;
LABEL_41:
    v174 = *(v151 - 32);
    return (*(v174 + 8))(v101, v99);
  }

  (v97)(v76, v247, v72);
  v144 = v76[1];
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    v101 = v247;
    goto LABEL_27;
  }

  v145 = *v76;
  v147 = *v96;
  v146 = *(v96 + 1);

  v249 = v241;
  v250 = v240;
  v251 = v243;
  v252 = v242;
  v253 = v244;
  v254 = v248;
  if (v145 == v147)
  {
    v148 = type metadata accessor for TaggedValue_5.ObservableDifference();
    (*(*(v148 - 8) + 56))(v245, 1, 1, v148);
  }

  else
  {
    v172 = type metadata accessor for TaggedValue_5.ObservableDifference();
    v173 = v245;
    swift_storeEnumTagMultiPayload();
    (*(*(v172 - 8) + 56))(v173, 0, 1, v172);
  }

  v174 = v237;
  v101 = v247;
  return (*(v174 + 8))(v101, v99);
}

BOOL TaggedValue_6.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  v7 = swift_getEnumCaseMultiPayload() == 7;
  (*(v2 + 8))(v6, a1);
  return v7;
}

uint64_t TaggedValue_6.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v4 = type metadata accessor for TaggedValue_6.TaggedEnum();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t TaggedValue_6.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v4 = type metadata accessor for TaggedValue_6.TaggedEnum();
  return (*(*(v4 - 8) + 40))(v2, a1, v4);
}

uint64_t TaggedValue_6.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_6.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_6.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  type metadata accessor for TaggedValue_6.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_6.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_6.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_6.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_6.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_6.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_6.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_6.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_6.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_6.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  a3[1] = v3;
  type metadata accessor for TaggedValue_6.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_6.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v20[0] = a1[1];
  v20[1] = v20[0];
  v6 = a1[3];
  v7 = a1[4];
  v20[2] = v5;
  v20[3] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v20[4] = v7;
  v20[5] = v8;
  v20[6] = v9;
  v10 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v20 - v14;
  (*(v11 + 16))(v20 - v14, v3, v10, v13);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v11 + 8))(v15, v10);
    v16 = *&v20[0];
    v17 = *(*&v20[0] - 8);
    v18 = 1;
  }

  else
  {
    v17 = *(*&v20[0] - 8);
    (*(v17 + 32))(a2, v15);
    v16 = *&v20[0];
    v18 = 0;
  }

  return (*(v17 + 56))(a2, v18, 1, v16);
}

uint64_t TaggedValue_6.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 104);
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = v15;
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = v5;
  v6 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, v3, v6, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_6.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v19[0] = a1[2];
  v19[1] = v5;
  v6 = a1[3];
  v7 = a1[4];
  v19[2] = v19[0];
  v19[3] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v19[4] = v7;
  v19[5] = v8;
  v19[6] = v9;
  v10 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v19 - v14;
  (*(v11 + 16))(v19 - v14, v3, v10, v13);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v16 = *(*&v19[0] - 8);
    (*(v16 + 32))(a2, v15);
    v17 = 0;
  }

  else
  {
    (*(v11 + 8))(v15, v10);
    v16 = *(*&v19[0] - 8);
    v17 = 1;
  }

  return (*(v16 + 56))(a2, v17, 1, *&v19[0]);
}

uint64_t TaggedValue_6.tagged4.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 104);
  v6 = *(a1 + 16);
  v17 = *(a1 + 32);
  v16[0] = *(a1 + 40);
  v16[1] = v6;
  v18 = v16[0];
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = v5;
  v7 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, v3, v7, v10);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = *(*&v16[0] - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v8 + 8))(v12, v7);
    v13 = *(*&v16[0] - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, *&v16[0]);
}

uint64_t TaggedValue_6.tagged5.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v17[1] = a1[1];
  v17[2] = v5;
  v6 = a1[4];
  v17[0] = a1[3];
  v17[3] = v17[0];
  v17[4] = v6;
  v7 = a1[6];
  v17[5] = a1[5];
  v17[6] = v7;
  v8 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, v3, v8, v11);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v14 = *(*&v17[0] - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v9 + 8))(v13, v8);
    v14 = *(*&v17[0] - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, *&v17[0]);
}

uint64_t TaggedValue_6.tagged6.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 104);
  v7 = *(a1 + 32);
  v17[1] = *(a1 + 16);
  v17[2] = v7;
  v18 = v5;
  v17[0] = *(a1 + 56);
  v19 = v17[0];
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = v6;
  v8 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, v3, v8, v11);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v14 = *(*&v17[0] - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v9 + 8))(v13, v8);
    v14 = *(*&v17[0] - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, *&v17[0]);
}

uint64_t TaggedValue_6.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v16[0] = a1[1];
  v16[1] = v5;
  v6 = a1[4];
  v16[2] = a1[3];
  v16[3] = v6;
  v7 = a1[6];
  v16[4] = a1[5];
  v16[5] = v7;
  v8 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v16 - v12;
  (*(v9 + 16))(v16 - v12, v3, v8, v11);
  result = swift_getEnumCaseMultiPayload();
  if (result == 6)
  {
    v15 = *(v13 + 1);
  }

  else
  {
    result = (*(v9 + 8))(v13, v8);
    v15 = 0;
  }

  *a2 = v15;
  return result;
}

uint64_t TaggedValue_6.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v64 = *(*(a2 + 56) - 8);
  v2 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(*(v4 + 48) - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(*(v8 + 40) - 8);
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 32);
  v70 = *(v13 - 8);
  v14 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 24);
  v68 = *(v18 - 8);
  v19 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 16);
  v67 = *(v24 - 8);
  v25 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v29 + 64);
  v32 = *(v29 + 80);
  v31 = *(v29 + 88);
  *&v33 = v24;
  *(&v33 + 1) = v18;
  *&v34 = v13;
  v59 = v35;
  *(&v34 + 1) = v35;
  v36 = *(v29 + 96);
  v37 = *(v29 + 104);
  v74 = v34;
  v73 = v33;
  v62 = v38;
  *&v33 = v38;
  v65 = v39;
  *(&v33 + 1) = v39;
  v66 = v30;
  v76 = v30;
  v75 = v33;
  v77 = v32;
  v78 = v31;
  v56 = v31;
  v79 = v36;
  v80 = v37;
  v40 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v56 - v43;
  (*(v45 + 16))(&v56 - v43, v71, v40, v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v51 = v68;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v68 + 32))(v22, v44, v18);
        (*(*(*(&v66 + 1) + 8) + 48))(v72, v18);
        return (*(v51 + 8))(v22, v18);
      }

      else
      {
        v54 = v70;
        v55 = v69;
        (*(v70 + 32))(v69, v44, v13);
        (*(*(v32 + 8) + 48))(v72, v13);
        return (*(v54 + 8))(v55, v13);
      }
    }

    else
    {
      v53 = v67;
      (*(v67 + 32))(v28, v44, v24);
      (*(*(v66 + 8) + 48))(v72, v24);
      return (*(v53 + 8))(v28, v24);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        (*(**(v44 + 1) + 120))(v72);
      }

      v47 = v64;
      v48 = v63;
      v49 = v65;
      (*(v64 + 32))(v63, v44, v65);
      v50 = *(v37 + 8);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v47 = v58;
      v48 = v57;
      v49 = v59;
      (*(v58 + 32))(v57, v44, v59);
      v50 = *(v56 + 8);
    }

    else
    {
      v47 = v61;
      v48 = v60;
      v49 = v62;
      (*(v61 + 32))(v60, v44, v62);
      v50 = *(v36 + 8);
    }

    (*(v50 + 48))(v72, v49);
    return (*(v47 + 8))(v48, v49);
  }
}

uint64_t TaggedValue_6.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v115 = a1;
  v117 = a3;
  v102 = *(*(a2 + 56) - 8);
  v3 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v103 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v101 = &v94 - v6;
  v99 = *(*(v7 + 48) - 8);
  v8 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v94 - v12;
  v96 = *(*(v13 + 40) - 8);
  v14 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v94 - v18;
  v21 = *(v20 + 32);
  v105 = *(v21 - 8);
  v22 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v94 - v26;
  v104 = *(*(v28 + 24) - 8);
  v29 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v94 - v34;
  v37 = *(*(v36 + 16) - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v94 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v94 - v43;
  v46 = *(v45 + 64);
  v47 = *(v45 + 80);
  v48 = *(v45 + 88);
  v49 = *(v45 + 96);
  v50 = *(v45 + 104);
  v106 = v51;
  *&v52 = v51;
  v107 = v53;
  *(&v52 + 1) = v53;
  v108 = v54;
  *&v55 = v54;
  v109 = v56;
  *(&v55 + 1) = v56;
  v94 = v55;
  v121 = v55;
  v95 = v52;
  v120 = v52;
  v116 = v57;
  *&v122 = v57;
  *(&v122 + 1) = v58;
  v118 = v58;
  v119 = v46;
  v123 = v46;
  v113 = v48;
  v114 = v47;
  v124 = v47;
  v125 = v48;
  v112 = v49;
  v126 = v49;
  v127 = v50;
  v111 = v50;
  v59 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v63 = &v94 - v62;
  (*(v64 + 16))(&v94 - v62, v110, v59, v61);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v71 = v104;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v72 = v63;
        v73 = v107;
        (*(v104 + 32))(v35, v72, v107);
        (*(*(*(&v119 + 1) + 8) + 24))(v115, v73);
        (*(v71 + 8))(v35, v73);
        return TaggedValue_6.init(_:)(v32, v73, v117);
      }

      else
      {
        v82 = v105;
        v83 = v63;
        v84 = v108;
        (*(v105 + 32))(v27, v83, v108);
        (*(*(v114 + 8) + 24))(v115, v84);
        (*(v82 + 8))(v27, v84);
        return TaggedValue_6.init(_:)(v24, v84, v117);
      }
    }

    else
    {
      v79 = v37;
      v80 = *(v37 + 32);
      v81 = v106;
      v80(v44, v63, v106);
      (*(*(v119 + 8) + 24))(v115, v81);
      (*(v79 + 8))(v44, v81);
      return TaggedValue_6.init(_:)(v41, v81, v117);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v74 = v102;
      v75 = v101;
      v76 = v63;
      v77 = v118;
      (*(v102 + 32))(v101, v76, v118);
      v78 = v103;
      (*(*(v111 + 8) + 24))(v115, v77);
      (*(v74 + 8))(v75, v77);
      return TaggedValue_6.init(_:)(v78, v77, v117);
    }

    else
    {
      v90 = *v63;
      v91 = (*(**(v63 + 1) + 104))(v115);

      v92 = v117;
      *v117 = v90;
      v92[1] = v91;
      v121 = v94;
      v120 = v95;
      *&v93 = v116;
      *(&v93 + 1) = v118;
      v123 = v119;
      v122 = v93;
      v124 = v114;
      v125 = v113;
      v126 = v112;
      v127 = v111;
      type metadata accessor for TaggedValue_6.TaggedEnum();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v66 = v96;
    v67 = v63;
    v68 = v109;
    (*(v96 + 32))(v19, v67, v109);
    v69 = v97;
    (*(*(v113 + 8) + 24))(v115, v68);
    (*(v66 + 8))(v19, v68);
    return TaggedValue_6.init(_:)(v69, v68, v117);
  }

  else
  {
    v85 = v99;
    v86 = v98;
    v87 = v63;
    v88 = v116;
    (*(v99 + 32))(v98, v87, v116);
    v89 = v100;
    (*(*(v112 + 8) + 24))(v115, v88);
    (*(v85 + 8))(v86, v88);
    return TaggedValue_6.init(_:)(v89, v88, v117);
  }
}

uint64_t TaggedValue_6.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v277 = a2;
  v289 = a4;
  v5 = a3[7];
  v293 = a3[13];
  v294 = a1;
  v264 = *(v293 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v230 = sub_1AE23D7CC();
  v229 = *(v230 - 8);
  v7 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v265 = &v213 - v8;
  v266 = AssociatedTypeWitness;
  v263 = *(AssociatedTypeWitness - 8);
  v9 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v228 = &v213 - v11;
  v272 = *(v5 - 8);
  v12 = *(v272 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v261 = &v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v260 = &v213 - v16;
  *&v291 = a3[12];
  v17 = a3[6];
  v257 = *(v291 + 8);
  v18 = swift_getAssociatedTypeWitness();
  v227 = sub_1AE23D7CC();
  v226 = *(v227 - 8);
  v19 = *(v226 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v259 = &v213 - v20;
  v262 = v18;
  v258 = *(v18 - 8);
  v21 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v225 = &v213 - v23;
  v270 = *(v17 - 8);
  v24 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v255 = &v213 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v254 = &v213 - v28;
  *&v290 = a3[11];
  v29 = a3[5];
  v251 = *(v290 + 8);
  v30 = swift_getAssociatedTypeWitness();
  v224 = sub_1AE23D7CC();
  v223 = *(v224 - 8);
  v31 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v253 = &v213 - v32;
  v256 = v30;
  v252 = *(v30 - 8);
  v33 = *(v252 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v222 = &v213 - v35;
  v268 = *(v29 - 8);
  v36 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v250 = &v213 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v249 = &v213 - v40;
  v41 = a3[10];
  v42 = a3[4];
  v245 = *(v41 + 8);
  v43 = swift_getAssociatedTypeWitness();
  v221 = sub_1AE23D7CC();
  v220 = *(v221 - 8);
  v44 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v244 = &v213 - v45;
  v248 = v43;
  v247 = *(v43 - 8);
  v46 = *(v247 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v219 = &v213 - v48;
  v280 = *(v42 - 8);
  v49 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v243 = &v213 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v239 = &v213 - v53;
  v54 = a3[9];
  v55 = a3[3];
  v240 = *(v54 + 8);
  v56 = swift_getAssociatedTypeWitness();
  v218 = sub_1AE23D7CC();
  v217 = *(v218 - 8);
  v57 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v242 = &v213 - v58;
  v246 = v56;
  v241 = *(v56 - 8);
  v59 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v216 = &v213 - v61;
  v279 = *(v55 - 8);
  v62 = *(v279 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v238 = &v213 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v237 = &v213 - v66;
  v67 = a3[8];
  v68 = a3[2];
  v233 = *(v67 + 8);
  v69 = swift_getAssociatedTypeWitness();
  v215 = sub_1AE23D7CC();
  v214 = *(v215 - 8);
  v70 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v235 = &v213 - v71;
  v236 = v69;
  v234 = *(v69 - 8);
  v72 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v213 = &v213 - v74;
  v278 = *(v68 - 1);
  v75 = *(v278 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v232 = &v213 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78);
  v231 = &v213 - v79;
  *&v80 = v68;
  v267 = v55;
  *(&v80 + 1) = v55;
  v281 = v42;
  *&v81 = v42;
  v269 = v29;
  *(&v81 + 1) = v29;
  v285 = v81;
  v296 = v81;
  v286 = v80;
  v295 = v80;
  v271 = v17;
  *&v81 = v17;
  v273 = v5;
  *(&v81 + 1) = v5;
  *&v82 = v67;
  *(&v82 + 1) = v54;
  *&v80 = v41;
  *(&v80 + 1) = v290;
  v287 = v82;
  v298 = v82;
  v288 = v81;
  v297 = v81;
  *&v81 = v291;
  *(&v81 + 1) = v293;
  v290 = v81;
  v291 = v80;
  v300 = v81;
  v299 = v80;
  v83 = type metadata accessor for TaggedValue_6.TaggedEnum();
  v84 = *(v83 - 8);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v274 = &v213 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v87);
  v276 = &v213 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v275 = &v213 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v213 - v92;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v213 - v95;
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v213 - v98;
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v213 - v101;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v284 = *(TupleTypeMetadata2 - 8);
  v104 = *(v284 + 64);
  v105 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v107 = &v213 - v106;
  v283 = v108;
  v109 = &v213 + *(v108 + 48) - v106;
  v282 = v84;
  v110 = *(v84 + 16);
  v110(&v213 - v106, v292, v83, v105);
  v292 = v109;
  (v110)(v109, v294, v83);
  v293 = v107;
  v294 = v83;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v139 = v276;
        v112 = v293;
        (v110)(v276, v293, v294);
        v140 = v292;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v141 = v272;
          v142 = *(v272 + 32);
          v143 = v260;
          v144 = v139;
          v145 = v273;
          v142(v260, v144, v273);
          v146 = v261;
          v142(v261, v140, v145);
          v147 = v265;
          (*(v264 + 40))(v146, v277, v145);
          v148 = *(v141 + 8);
          v148(v146, v145);
          v148(v143, v145);
          v149 = v263;
          v150 = v266;
          if ((*(v263 + 48))(v147, 1, v266) == 1)
          {
            (*(v229 + 8))(v147, v230);
            goto LABEL_38;
          }

          v206 = *(v149 + 32);
          v207 = v228;
          v206(v228, v147, v150);
          v204 = v289;
          v206(v289, v207, v150);
          v296 = v285;
          v295 = v286;
          v298 = v287;
          v297 = v288;
          v300 = v290;
          v299 = v291;
          v205 = type metadata accessor for TaggedValue_6.ObservableDifference();
LABEL_50:
          swift_storeEnumTagMultiPayload();
          (*(*(v205 - 8) + 56))(v204, 0, 1, v205);
          goto LABEL_51;
        }

        (*(v272 + 8))(v139, v273);
      }

      else
      {
        v174 = v274;
        v112 = v293;
        (v110)(v274, v293, v294);
        v175 = v174[1];
        v176 = v292;
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v177 = *v174;
          v179 = *v176;
          v178 = v176[1];

          if (v177 == v179)
          {
            v295 = v286;
            v296 = v285;
            v297 = v288;
            v298 = v287;
            v299 = v291;
            v300 = v290;
LABEL_39:
            v192 = type metadata accessor for TaggedValue_6.ObservableDifference();
            (*(*(v192 - 8) + 56))(v289, 1, 1, v192);
LABEL_51:
            v182 = &v301;
            goto LABEL_52;
          }

          v295 = v286;
          v296 = v285;
          v297 = v288;
          v298 = v287;
          v299 = v291;
          v300 = v290;
          v205 = type metadata accessor for TaggedValue_6.ObservableDifference();
          v204 = v289;
          goto LABEL_50;
        }
      }

LABEL_35:
      v295 = v286;
      v296 = v285;
      v297 = v288;
      v298 = v287;
      v299 = v291;
      v300 = v290;
      v180 = type metadata accessor for TaggedValue_6.ObservableDifference();
      v181 = v289;
      swift_storeEnumTagMultiPayload();
      (*(*(v180 - 8) + 56))(v181, 0, 1, v180);
      v294 = v283;
      v182 = &v302;
LABEL_52:
      v197 = *(v182 - 32);
      return (*(v197 + 8))(v112, v294);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v112 = v293;
      (v110)(v93, v293, v294);
      v113 = v292;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v114 = v268;
        v115 = *(v268 + 32);
        v116 = v249;
        v117 = v269;
        v115(v249, v93, v269);
        v118 = v250;
        v115(v250, v113, v117);
        v119 = v253;
        (*(v251 + 40))(v118, v277, v117);
        v120 = *(v114 + 8);
        v120(v118, v117);
        v120(v116, v117);
        v121 = v252;
        v122 = v256;
        if ((*(v252 + 48))(v119, 1, v256) == 1)
        {
          (*(v223 + 8))(v119, v224);
LABEL_38:
          v296 = v285;
          v295 = v286;
          v298 = v287;
          v297 = v288;
          v300 = v290;
          v299 = v291;
          goto LABEL_39;
        }

        v202 = *(v121 + 32);
        v203 = v222;
        v202(v222, v119, v122);
        v204 = v289;
        v202(v289, v203, v122);
        v296 = v285;
        v295 = v286;
        v298 = v287;
        v297 = v288;
        v300 = v290;
        v299 = v291;
        v205 = type metadata accessor for TaggedValue_6.ObservableDifference();
        goto LABEL_50;
      }

      (*(v268 + 8))(v93, v269);
      goto LABEL_35;
    }

    v161 = v275;
    (v110)(v275, v293, v294);
    v162 = v292;
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      (*(v270 + 8))(v161, v271);
      v112 = v293;
      goto LABEL_35;
    }

    v163 = v270;
    v164 = *(v270 + 32);
    v165 = v254;
    v166 = v161;
    v167 = v271;
    v164(v254, v166, v271);
    v168 = v255;
    v164(v255, v162, v167);
    v169 = v259;
    (*(v257 + 40))(v168, v277, v167);
    v170 = *(v163 + 8);
    v170(v168, v167);
    v170(v165, v167);
    v171 = v258;
    v172 = v262;
    if ((*(v258 + 48))(v169, 1, v262) == 1)
    {
      (*(v226 + 8))(v169, v227);
      goto LABEL_24;
    }

    v208 = *(v171 + 32);
    v209 = v225;
    v208(v225, v169, v172);
    v200 = v289;
    v208(v289, v209, v172);
    v296 = v285;
    v295 = v286;
    v298 = v287;
    v297 = v288;
    v300 = v290;
    v299 = v291;
    v201 = type metadata accessor for TaggedValue_6.ObservableDifference();
    goto LABEL_46;
  }

  v123 = v278;
  v276 = v68;
  v124 = v279;
  v125 = v280;
  v126 = v281;
  if (!EnumCaseMultiPayload)
  {
    v112 = v293;
    (v110)(v102, v293, v294);
    v151 = v292;
    if (!swift_getEnumCaseMultiPayload())
    {
      v183 = v123;
      v184 = *(v123 + 32);
      v185 = v231;
      v186 = v276;
      v184(v231, v102, v276);
      v187 = v232;
      v184(v232, v151, v186);
      v188 = v235;
      (*(v233 + 40))(v187, v277, v186);
      v189 = *(v183 + 8);
      v189(v187, v186);
      v189(v185, v186);
      v190 = v234;
      v191 = v236;
      if ((*(v234 + 48))(v188, 1, v236) == 1)
      {
        (*(v214 + 8))(v188, v215);
        goto LABEL_38;
      }

      v210 = *(v190 + 32);
      v211 = v213;
      v210(v213, v188, v191);
      v204 = v289;
      v210(v289, v211, v191);
      v296 = v285;
      v295 = v286;
      v298 = v287;
      v297 = v288;
      v300 = v290;
      v299 = v291;
      v205 = type metadata accessor for TaggedValue_6.ObservableDifference();
      goto LABEL_50;
    }

    (*(v123 + 8))(v102, v276);
    goto LABEL_35;
  }

  v127 = v293;
  if (EnumCaseMultiPayload != 1)
  {
    (v110)(v96, v293, v294);
    v152 = v292;
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v125 + 8))(v96, v126);
      v112 = v293;
      goto LABEL_35;
    }

    v153 = v125;
    v154 = *(v125 + 32);
    v155 = v239;
    v154(v239, v96, v126);
    v156 = v243;
    v154(v243, v152, v126);
    v157 = v244;
    (*(v245 + 40))(v156, v277, v126);
    v158 = *(v153 + 8);
    v158(v156, v126);
    v158(v155, v126);
    v159 = v247;
    v160 = v248;
    if ((*(v247 + 48))(v157, 1, v248) == 1)
    {
      (*(v220 + 8))(v157, v221);
LABEL_24:
      v296 = v285;
      v295 = v286;
      v298 = v287;
      v297 = v288;
      v300 = v290;
      v299 = v291;
      v173 = type metadata accessor for TaggedValue_6.ObservableDifference();
      (*(*(v173 - 8) + 56))(v289, 1, 1, v173);
LABEL_47:
      v197 = v282;
      v112 = v293;
      return (*(v197 + 8))(v112, v294);
    }

    v198 = *(v159 + 32);
    v199 = v219;
    v198(v219, v157, v160);
    v200 = v289;
    v198(v289, v199, v160);
    v296 = v285;
    v295 = v286;
    v298 = v287;
    v297 = v288;
    v300 = v290;
    v299 = v291;
    v201 = type metadata accessor for TaggedValue_6.ObservableDifference();
LABEL_46:
    swift_storeEnumTagMultiPayload();
    (*(*(v201 - 8) + 56))(v200, 0, 1, v201);
    goto LABEL_47;
  }

  (v110)(v99, v293, v294);
  v128 = v292;
  v112 = v127;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v124 + 8))(v99, v267);
    goto LABEL_35;
  }

  v129 = v127;
  v130 = *(v124 + 32);
  v131 = v237;
  v132 = v267;
  v130(v237, v99, v267);
  v133 = v238;
  v130(v238, v128, v132);
  v134 = v242;
  (*(v240 + 40))(v133, v277, v132);
  v135 = *(v124 + 8);
  v135(v133, v132);
  v135(v131, v132);
  v136 = v241;
  v137 = v246;
  if ((*(v241 + 48))(v134, 1, v246) == 1)
  {
    (*(v217 + 8))(v134, v218);
    v296 = v285;
    v295 = v286;
    v298 = v287;
    v297 = v288;
    v300 = v290;
    v299 = v291;
    v138 = type metadata accessor for TaggedValue_6.ObservableDifference();
    (*(*(v138 - 8) + 56))(v289, 1, 1, v138);
  }

  else
  {
    v193 = *(v136 + 32);
    v194 = v216;
    v193(v216, v134, v137);
    v195 = v289;
    v193(v289, v194, v137);
    v296 = v285;
    v295 = v286;
    v298 = v287;
    v297 = v288;
    v300 = v290;
    v299 = v291;
    v196 = type metadata accessor for TaggedValue_6.ObservableDifference();
    swift_storeEnumTagMultiPayload();
    (*(*(v196 - 8) + 56))(v195, 0, 1, v196);
  }

  v197 = v282;
  v112 = v129;
  return (*(v197 + 8))(v112, v294);
}

BOOL TaggedValue_7.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  v7 = swift_getEnumCaseMultiPayload() == 8;
  (*(v2 + 8))(v6, a1);
  return v7;
}

uint64_t TaggedValue_7.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  v4 = type metadata accessor for TaggedValue_7.TaggedEnum();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t TaggedValue_7.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v4 = type metadata accessor for TaggedValue_7.TaggedEnum();
  return (*(*(v4 - 8) + 40))(v2, a1, v4);
}

uint64_t TaggedValue_7.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_7.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_7.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  type metadata accessor for TaggedValue_7.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_7.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_7.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_7.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_7.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_7.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_7.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_7.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_7.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_7.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_7.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_7.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  a3[1] = v3;
  type metadata accessor for TaggedValue_7.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_7.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v21[0] = a1[1];
  v21[1] = v21[0];
  v6 = a1[3];
  v7 = a1[4];
  v21[2] = v5;
  v21[3] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v21[4] = v7;
  v21[5] = v8;
  v10 = a1[7];
  v21[6] = v9;
  v21[7] = v10;
  v11 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v21 - v15;
  (*(v12 + 16))(v21 - v15, v3, v11, v14);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v12 + 8))(v16, v11);
    v17 = *&v21[0];
    v18 = *(*&v21[0] - 8);
    v19 = 1;
  }

  else
  {
    v18 = *(*&v21[0] - 8);
    (*(v18 + 32))(a2, v16);
    v17 = *&v21[0];
    v19 = 0;
  }

  return (*(v18 + 56))(a2, v19, 1, v17);
}

uint64_t TaggedValue_7.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 120);
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = v15;
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = v5;
  v6 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, v3, v6, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_7.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v20[0] = a1[2];
  v20[1] = v5;
  v6 = a1[3];
  v7 = a1[4];
  v20[2] = v20[0];
  v20[3] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v20[4] = v7;
  v20[5] = v8;
  v10 = a1[7];
  v20[6] = v9;
  v20[7] = v10;
  v11 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v20 - v15;
  (*(v12 + 16))(v20 - v15, v3, v11, v14);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v17 = *(*&v20[0] - 8);
    (*(v17 + 32))(a2, v16);
    v18 = 0;
  }

  else
  {
    (*(v12 + 8))(v16, v11);
    v17 = *(*&v20[0] - 8);
    v18 = 1;
  }

  return (*(v17 + 56))(a2, v18, 1, *&v20[0]);
}

uint64_t TaggedValue_7.tagged4.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 120);
  v6 = *(a1 + 16);
  v17 = *(a1 + 32);
  v16[0] = *(a1 + 40);
  v16[1] = v6;
  v18 = v16[0];
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = v5;
  v7 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, v3, v7, v10);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = *(*&v16[0] - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v8 + 8))(v12, v7);
    v13 = *(*&v16[0] - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, *&v16[0]);
}

uint64_t TaggedValue_7.tagged5.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v17[1] = a1[1];
  v17[2] = v5;
  v6 = a1[4];
  v17[0] = a1[3];
  v17[3] = v17[0];
  v17[4] = v6;
  v7 = a1[6];
  v17[5] = a1[5];
  v17[6] = v7;
  v17[7] = a1[7];
  v8 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, v3, v8, v11);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v14 = *(*&v17[0] - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v9 + 8))(v13, v8);
    v14 = *(*&v17[0] - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, *&v17[0]);
}

uint64_t TaggedValue_7.tagged6.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 120);
  v7 = *(a1 + 32);
  v17[1] = *(a1 + 16);
  v17[2] = v7;
  v18 = v5;
  v17[0] = *(a1 + 56);
  v19 = v17[0];
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = v6;
  v8 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, v3, v8, v11);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v14 = *(*&v17[0] - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v9 + 8))(v13, v8);
    v14 = *(*&v17[0] - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, *&v17[0]);
}

uint64_t TaggedValue_7.tagged7.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v17[1] = a1[1];
  v17[2] = v5;
  v6 = a1[4];
  v17[3] = a1[3];
  v17[4] = v6;
  v17[0] = v6;
  v7 = a1[6];
  v17[5] = a1[5];
  v17[6] = v7;
  v17[7] = a1[7];
  v8 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, v3, v8, v11);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v14 = *(*&v17[0] - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v9 + 8))(v13, v8);
    v14 = *(*&v17[0] - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, *&v17[0]);
}

uint64_t TaggedValue_7.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v16[0] = a1[1];
  v16[1] = v5;
  v6 = a1[4];
  v16[2] = a1[3];
  v16[3] = v6;
  v7 = a1[6];
  v16[4] = a1[5];
  v16[5] = v7;
  v16[6] = a1[7];
  v8 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v16 - v12;
  (*(v9 + 16))(v16 - v12, v3, v8, v11);
  result = swift_getEnumCaseMultiPayload();
  if (result == 7)
  {
    v15 = *(v13 + 1);
  }

  else
  {
    result = (*(v9 + 8))(v13, v8);
    v15 = 0;
  }

  *a2 = v15;
  return result;
}

uint64_t TaggedValue_7.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v92 = a1;
  v89 = *(*(a2 + 64) - 8);
  v2 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v88 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = *(*(v4 + 56) - 8);
  v5 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(*(v8 + 48) - 8);
  v9 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *(*(v12 + 40) - 8);
  v13 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 32);
  v77 = *(v17 - 8);
  v18 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 24);
  v75 = *(v21 - 8);
  v22 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v74 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 + 16);
  v73 = *(v26 - 8);
  v27 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v72 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v30[9];
  v32 = v30[10];
  v34 = v30[11];
  v33 = v30[12];
  v36 = v30[13];
  v35 = v30[14];
  v37 = v30[15];
  *&v38 = v26;
  *(&v38 + 1) = v21;
  v78 = v39;
  *&v40 = v39;
  v81 = v41;
  *(&v40 + 1) = v41;
  v84 = v42;
  *&v43 = v42;
  v87 = v44;
  *(&v43 + 1) = v44;
  v94 = v40;
  v93 = v38;
  v90 = v45;
  *&v38 = v45;
  v71 = v31;
  *(&v38 + 1) = v31;
  v96 = v38;
  v95 = v43;
  v97 = v32;
  v98 = v34;
  v99 = v33;
  v100 = v36;
  v101 = v35;
  v102 = v37;
  v46 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v70 - v49;
  (*(v51 + 16))(&v70 - v49, v91, v46, v48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v66 = v86;
        v67 = v85;
        v68 = v50;
        v69 = v87;
        (*(v86 + 32))(v85, v68, v87);
        (*(*(v35 + 8) + 48))(v92, v69);
        return (*(v66 + 8))(v67, v69);
      }

      v56 = v83;
      v57 = v82;
      v58 = v84;
      (*(v83 + 32))(v82, v50, v84);
      (*(*(v36 + 8) + 48))(v92, v58);
      v59 = *(v56 + 8);
      v60 = v57;
      return v59(v60, v58);
    }

    if (EnumCaseMultiPayload != 6)
    {
      (*(**(v50 + 1) + 120))(v92);
    }

    v62 = v88;
    v61 = v89;
    v58 = v90;
    (*(v89 + 32))(v88, v50, v90);
    v63 = *(v37 + 8);
LABEL_15:
    (*(v63 + 48))(v92, v58);
    v59 = *(v61 + 8);
    v60 = v62;
    return v59(v60, v58);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v61 = v77;
      v62 = v76;
      v58 = v78;
      (*(v77 + 32))(v76, v50, v78);
      v63 = *(v34 + 8);
    }

    else
    {
      v61 = v80;
      v62 = v79;
      v58 = v81;
      (*(v80 + 32))(v79, v50, v81);
      v63 = *(v33 + 8);
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload)
  {
    v64 = v75;
    v65 = v74;
    (*(v75 + 32))(v74, v50, v21);
    (*(*(v32 + 8) + 48))(v92, v21);
    return (*(v64 + 8))(v65, v21);
  }

  else
  {
    v53 = v73;
    v54 = v72;
    (*(v73 + 32))(v72, v50, v26);
    (*(*(v71 + 8) + 48))(v92, v26);
    return (*(v53 + 8))(v54, v26);
  }
}

uint64_t TaggedValue_7.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v131 = a1;
  v132 = a3;
  v115 = *(*(a2 + 64) - 8);
  v3 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v116 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v114 = &v99 - v6;
  v112 = *(*(v7 + 56) - 8);
  v8 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v99 - v12;
  v109 = *(*(v13 + 48) - 8);
  v14 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v110 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v99 - v18;
  v20 = *(v19 + 40);
  v106 = *(v20 - 8);
  v21 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v99 - v24;
  v105 = *(*(v26 + 32) - 8);
  v27 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v99 - v32;
  v104 = *(*(v34 + 24) - 8);
  v35 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v99 - v40;
  v43 = *(v42 + 16);
  v103 = *(v43 - 8);
  v44 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v99 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v99 - v49;
  v53 = v51[9];
  v52 = v51[10];
  v54 = v51[11];
  v55 = v51[12];
  v56 = v51[13];
  v57 = v51[14];
  v58 = v51[15];
  *&v59 = v43;
  v118 = v60;
  *(&v59 + 1) = v60;
  v119 = v61;
  *&v62 = v61;
  v120 = v63;
  *(&v62 + 1) = v63;
  v121 = v64;
  *&v65 = v64;
  v122 = v66;
  *(&v65 + 1) = v66;
  v101 = v62;
  v134 = v62;
  v102 = v59;
  v133 = v59;
  v123 = v67;
  *&v59 = v67;
  v117 = v53;
  *(&v59 + 1) = v53;
  v99 = v59;
  v136 = v59;
  v100 = v65;
  v135 = v65;
  v129 = v54;
  v130 = v52;
  v137 = v52;
  v138 = v54;
  v127 = v56;
  v128 = v55;
  v139 = v55;
  v140 = v56;
  v126 = v57;
  v141 = v57;
  v142 = v58;
  v125 = v58;
  v68 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v69 = *(*(v68 - 8) + 64);
  v70 = MEMORY[0x1EEE9AC00](v68);
  v72 = &v99 - v71;
  (*(v73 + 16))(&v99 - v71, v124, v68, v70);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v83 = v115;
        v84 = v114;
        v85 = v123;
        (*(v115 + 32))(v114, v72, v123);
        v86 = v116;
        (*(*(v125 + 8) + 24))(v131, v85);
        (*(v83 + 8))(v84, v85);
        return TaggedValue_7.init(_:)(v86, v85, v132);
      }

      else
      {
        v96 = *v72;
        v97 = (*(**(v72 + 1) + 104))(v131);

        v98 = v132;
        *v132 = v96;
        v98[1] = v97;
        v134 = v101;
        v133 = v102;
        v136 = v99;
        v135 = v100;
        v137 = v130;
        v138 = v129;
        v139 = v128;
        v140 = v127;
        v141 = v126;
        v142 = v125;
        type metadata accessor for TaggedValue_7.TaggedEnum();
        return swift_storeEnumTagMultiPayload();
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v77 = v109;
      v78 = v108;
      v79 = v121;
      (*(v109 + 32))(v108, v72, v121);
      v80 = v110;
      (*(*(v127 + 8) + 24))(v131, v79);
      (*(v77 + 8))(v78, v79);
      return TaggedValue_7.init(_:)(v80, v79, v132);
    }

    else
    {
      v89 = v112;
      v90 = v111;
      v91 = v122;
      (*(v112 + 32))(v111, v72, v122);
      v92 = v113;
      (*(*(v126 + 8) + 24))(v131, v91);
      (*(v89 + 8))(v90, v91);
      return TaggedValue_7.init(_:)(v92, v91, v132);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v81 = v105;
      v82 = v119;
      (*(v105 + 32))(v33, v72, v119);
      (*(*(v129 + 8) + 24))(v131, v82);
      (*(v81 + 8))(v33, v82);
      return TaggedValue_7.init(_:)(v30, v82, v132);
    }

    else
    {
      v93 = v106;
      v94 = v120;
      (*(v106 + 32))(v25, v72, v120);
      v95 = v107;
      (*(*(v128 + 8) + 24))(v131, v94);
      (*(v93 + 8))(v25, v94);
      return TaggedValue_7.init(_:)(v95, v94, v132);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v87 = v104;
    v88 = v118;
    (*(v104 + 32))(v41, v72, v118);
    (*(*(v130 + 8) + 24))(v131, v88);
    (*(v87 + 8))(v41, v88);
    return TaggedValue_7.init(_:)(v38, v88, v132);
  }

  else
  {
    v75 = v103;
    (*(v103 + 32))(v50, v72, v43);
    (*(*(v117 + 8) + 24))(v131, v43);
    (*(v75 + 8))(v50, v43);
    return TaggedValue_7.init(_:)(v47, v43, v132);
  }
}

uint64_t TaggedValue_7.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v333 = a2;
  v347 = a1;
  v344 = a4;
  v349 = a3[15];
  v5 = a3[8];
  v314 = *(v349 + 8);
  v6 = v5;
  v346 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v274 = sub_1AE23D7CC();
  v273 = *(v274 - 8);
  v8 = *(v273 + 64);
  MEMORY[0x1EEE9AC00](v274);
  v315 = &v254 - v9;
  v316 = AssociatedTypeWitness;
  v313 = *(AssociatedTypeWitness - 8);
  v10 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v272 = &v254 - v12;
  v332 = *(v6 - 8);
  v13 = *(v332 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v311 = &v254 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v310 = &v254 - v17;
  v348 = a3[14];
  v18 = a3[7];
  v307 = *(v348 + 8);
  v19 = v18;
  v345 = v18;
  v20 = swift_getAssociatedTypeWitness();
  v271 = sub_1AE23D7CC();
  v270 = *(v271 - 8);
  v21 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v271);
  v309 = &v254 - v22;
  v312 = v20;
  v308 = *(v20 - 8);
  v23 = *(v308 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v269 = &v254 - v25;
  v331 = *(v19 - 8);
  v26 = *(v331 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v305 = &v254 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v304 = &v254 - v30;
  v31 = a3[6];
  *&v343 = a3[13];
  v301 = *(v343 + 8);
  v32 = swift_getAssociatedTypeWitness();
  v268 = sub_1AE23D7CC();
  v267 = *(v268 - 8);
  v33 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v268);
  v303 = &v254 - v34;
  v306 = v32;
  v302 = *(v32 - 8);
  v35 = *(v302 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v266 = &v254 - v37;
  v329 = *(v31 - 8);
  v38 = *(v329 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v299 = &v254 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v298 = &v254 - v42;
  *&v342 = a3[12];
  v43 = a3[5];
  v295 = *(v342 + 8);
  v44 = swift_getAssociatedTypeWitness();
  v265 = sub_1AE23D7CC();
  v264 = *(v265 - 8);
  v45 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v265);
  v297 = &v254 - v46;
  v300 = v44;
  v296 = *(v44 - 8);
  v47 = *(v296 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v263 = &v254 - v49;
  v327 = *(v43 - 8);
  v50 = v327[8];
  MEMORY[0x1EEE9AC00](v51);
  v293 = &v254 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v292 = &v254 - v54;
  v55 = a3[11];
  v56 = a3[4];
  v289 = *(v55 + 8);
  v57 = swift_getAssociatedTypeWitness();
  v262 = sub_1AE23D7CC();
  v261 = *(v262 - 8);
  v58 = *(v261 + 64);
  MEMORY[0x1EEE9AC00](v262);
  v291 = &v254 - v59;
  v294 = v57;
  v290 = *(v57 - 8);
  v60 = *(v290 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v260 = &v254 - v62;
  v325 = *(v56 - 8);
  v63 = v325[8];
  MEMORY[0x1EEE9AC00](v64);
  v287 = &v254 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v286 = &v254 - v67;
  v68 = a3[10];
  v69 = a3[3];
  v283 = *(v68 + 8);
  v70 = swift_getAssociatedTypeWitness();
  v259 = sub_1AE23D7CC();
  v258 = *(v259 - 8);
  v71 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v259);
  v285 = &v254 - v72;
  v288 = v70;
  v284 = *(v70 - 8);
  v73 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v257 = &v254 - v75;
  v323 = *(v69 - 8);
  v76 = v323[8];
  MEMORY[0x1EEE9AC00](v77);
  v282 = &v254 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v79);
  v281 = &v254 - v80;
  v81 = a3[9];
  v82 = a3[2];
  v277 = *(v81 + 8);
  v83 = swift_getAssociatedTypeWitness();
  v256 = sub_1AE23D7CC();
  v255 = *(v256 - 8);
  v84 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v256);
  v279 = &v254 - v85;
  v280 = v83;
  v278 = *(v83 - 8);
  v86 = *(v278 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v254 = &v254 - v88;
  v321 = *(v82 - 8);
  v89 = v321[8];
  MEMORY[0x1EEE9AC00](v90);
  v276 = &v254 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v275 = &v254 - v93;
  v322 = v82;
  *&v94 = v82;
  v324 = v69;
  *(&v94 + 1) = v69;
  v326 = v56;
  *&v95 = v56;
  v328 = v43;
  *(&v95 + 1) = v43;
  v338 = v95;
  v351 = v95;
  v339 = v94;
  v350 = v94;
  v330 = v31;
  *&v94 = v31;
  *(&v94 + 1) = v345;
  *&v95 = v346;
  *(&v95 + 1) = v81;
  v340 = v95;
  v353 = v95;
  v341 = v94;
  v352 = v94;
  *&v94 = v68;
  *(&v94 + 1) = v55;
  *&v95 = v342;
  *(&v95 + 1) = v343;
  v342 = v95;
  v355 = v95;
  v343 = v94;
  v354 = v94;
  v356 = v348;
  v357 = v349;
  v96 = type metadata accessor for TaggedValue_7.TaggedEnum();
  v97 = *(v96 - 8);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v318 = &v254 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100);
  v320 = &v254 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v319 = &v254 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v317 = &v254 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v254 - v107;
  MEMORY[0x1EEE9AC00](v109);
  v111 = &v254 - v110;
  MEMORY[0x1EEE9AC00](v112);
  v114 = &v254 - v113;
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v254 - v116;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v336 = *(TupleTypeMetadata2 - 8);
  v119 = *(v336 + 64);
  v120 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v122 = &v254 - v121;
  v335 = v123;
  v124 = &v254 + *(v123 + 48) - v121;
  v334 = v97;
  v125 = *(v97 + 16);
  v125(&v254 - v121, v337, v96, v120);
  v126 = v124;
  (v125)(v124, v347, v96);
  v347 = v122;
  v127 = v96;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v160 = v124;
      if (EnumCaseMultiPayload != 6)
      {
        v208 = v318;
        v129 = v347;
        (v125)(v318, v347, v127);
        v209 = v127;
        v210 = v208[1];
        v175 = v209;
        if (swift_getEnumCaseMultiPayload() != 7)
        {

          goto LABEL_39;
        }

        v211 = *v208;
        v213 = *v126;
        v212 = *(v126 + 1);

        if (v211 == v213)
        {
          v350 = v339;
          v351 = v338;
          v352 = v341;
          v353 = v340;
          v354 = v343;
          v355 = v342;
LABEL_44:
          v356 = v348;
          v357 = v349;
          v228 = type metadata accessor for TaggedValue_7.ObservableDifference();
          (*(*(v228 - 8) + 56))(v344, 1, 1, v228);
LABEL_59:
          v217 = v334;
          v216 = v175;
          return (*(v217 + 8))(v129, v216);
        }

        v350 = v339;
        v351 = v338;
        v352 = v341;
        v353 = v340;
        v354 = v343;
        v355 = v342;
        v356 = v348;
        v357 = v349;
        v244 = type metadata accessor for TaggedValue_7.ObservableDifference();
        v243 = v344;
        goto LABEL_58;
      }

      v161 = v320;
      v129 = v347;
      (v125)(v320, v347, v127);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v162 = v129;
        v163 = v127;
        v164 = v332;
        v165 = *(v332 + 32);
        v166 = v310;
        v167 = v160;
        v168 = v346;
        v165(v310, v161, v346);
        v169 = v311;
        v165(v311, v167, v168);
        v170 = v315;
        (*(v314 + 40))(v169, v333, v168);
        v171 = *(v164 + 8);
        v171(v169, v168);
        v171(v166, v168);
        v172 = v313;
        v173 = v316;
        if ((*(v313 + 48))(v170, 1, v316) == 1)
        {
          (*(v273 + 8))(v170, v274);
          v351 = v338;
          v350 = v339;
          v353 = v340;
          v352 = v341;
          v355 = v342;
          v354 = v343;
          v356 = v348;
          v357 = v349;
          v174 = type metadata accessor for TaggedValue_7.ObservableDifference();
          (*(*(v174 - 8) + 56))(v344, 1, 1, v174);
        }

        else
        {
          v237 = *(v172 + 32);
          v238 = v272;
          v237(v272, v170, v173);
          v239 = v344;
          v237(v344, v238, v173);
          v351 = v338;
          v350 = v339;
          v353 = v340;
          v352 = v341;
          v355 = v342;
          v354 = v343;
          v356 = v348;
          v357 = v349;
          v240 = type metadata accessor for TaggedValue_7.ObservableDifference();
          swift_storeEnumTagMultiPayload();
          (*(*(v240 - 8) + 56))(v239, 0, 1, v240);
        }

        v217 = v334;
        v216 = v163;
        v129 = v162;
        return (*(v217 + 8))(v129, v216);
      }

      (*(v332 + 8))(v161, v346);
    }

    else
    {
      v133 = v124;
      if (EnumCaseMultiPayload == 4)
      {
        v134 = v317;
        (v125)(v317, v347, v127);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v135 = v127;
          v136 = v329;
          v137 = *(v329 + 32);
          v138 = v298;
          v139 = v134;
          v140 = v330;
          v137(v298, v139, v330);
          v141 = v299;
          v137(v299, v124, v140);
          v142 = v303;
          (*(v301 + 40))(v141, v333, v140);
          v143 = *(v136 + 8);
          v143(v141, v140);
          v143(v138, v140);
          v144 = v302;
          v145 = v306;
          if ((*(v302 + 48))(v142, 1, v306) == 1)
          {
            (*(v267 + 8))(v142, v268);
            v351 = v338;
            v350 = v339;
            v353 = v340;
            v352 = v341;
            v355 = v342;
            v354 = v343;
            v356 = v348;
            v357 = v349;
            v146 = type metadata accessor for TaggedValue_7.ObservableDifference();
            (*(*(v146 - 8) + 56))(v344, 1, 1, v146);
          }

          else
          {
            v229 = *(v144 + 32);
            v230 = v266;
            v229(v266, v142, v145);
            v231 = v344;
            v229(v344, v230, v145);
            v351 = v338;
            v350 = v339;
            v353 = v340;
            v352 = v341;
            v355 = v342;
            v354 = v343;
            v356 = v348;
            v357 = v349;
            v232 = type metadata accessor for TaggedValue_7.ObservableDifference();
            swift_storeEnumTagMultiPayload();
            (*(*(v232 - 8) + 56))(v231, 0, 1, v232);
          }

          v217 = v334;
          v129 = v347;
          v216 = v135;
          return (*(v217 + 8))(v129, v216);
        }

        (*(v329 + 8))(v134, v330);
        v129 = v347;
      }

      else
      {
        v187 = v319;
        v129 = v347;
        (v125)(v319, v347, v127);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v188 = v127;
          v189 = v331;
          v190 = *(v331 + 32);
          v191 = v304;
          v192 = v345;
          v190(v304, v187, v345);
          v193 = v305;
          v190(v305, v133, v192);
          v194 = v309;
          (*(v307 + 40))(v193, v333, v192);
          v195 = *(v189 + 8);
          v195(v193, v192);
          v195(v191, v192);
          v196 = v308;
          v197 = v312;
          if ((*(v308 + 48))(v194, 1, v312) == 1)
          {
            (*(v270 + 8))(v194, v271);
LABEL_28:
            v351 = v338;
            v350 = v339;
            v353 = v340;
            v352 = v341;
            v355 = v342;
            v354 = v343;
            v356 = v348;
            v357 = v349;
            v207 = type metadata accessor for TaggedValue_7.ObservableDifference();
            (*(*(v207 - 8) + 56))(v344, 1, 1, v207);
LABEL_55:
            v217 = v334;
            v216 = v188;
            return (*(v217 + 8))(v129, v216);
          }

          v245 = *(v196 + 32);
          v246 = v269;
          v245(v269, v194, v197);
          v247 = v344;
          v245(v344, v246, v197);
          v351 = v338;
          v350 = v339;
          v353 = v340;
          v352 = v341;
          v355 = v342;
          v354 = v343;
          v356 = v348;
          v357 = v349;
          v248 = type metadata accessor for TaggedValue_7.ObservableDifference();
LABEL_54:
          swift_storeEnumTagMultiPayload();
          (*(*(v248 - 8) + 56))(v247, 0, 1, v248);
          goto LABEL_55;
        }

        (*(v331 + 8))(v187, v345);
      }
    }

LABEL_39:
    v350 = v339;
    v351 = v338;
    v352 = v341;
    v353 = v340;
    v354 = v343;
    v355 = v342;
    v356 = v348;
    v357 = v349;
    v214 = type metadata accessor for TaggedValue_7.ObservableDifference();
    v215 = v344;
    swift_storeEnumTagMultiPayload();
    (*(*(v214 - 8) + 56))(v215, 0, 1, v214);
    v216 = v335;
    v217 = v336;
    return (*(v217 + 8))(v129, v216);
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v129 = v347;
    if (EnumCaseMultiPayload)
    {
      (v125)(v114, v347, v96);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v130 = v323[1];
        v131 = v114;
        v132 = &v349;
        goto LABEL_38;
      }

      v175 = v96;
      v176 = v323;
      v177 = v323[4];
      v178 = v281;
      v179 = v114;
      v180 = v126;
      v181 = v324;
      v177(v281, v179, v324);
      v182 = v282;
      v177(v282, v180, v181);
      v183 = v285;
      (*(v283 + 40))(v182, v333, v181);
      v184 = v176[1];
      v184(v182, v181);
      v184(v178, v181);
      v185 = v284;
      v186 = v288;
      if ((*(v284 + 48))(v183, 1, v288) == 1)
      {
        (*(v258 + 8))(v183, v259);
LABEL_43:
        v351 = v338;
        v350 = v339;
        v353 = v340;
        v352 = v341;
        v355 = v342;
        v354 = v343;
        goto LABEL_44;
      }

      v241 = *(v185 + 32);
      v242 = v257;
      v241(v257, v183, v186);
      v243 = v344;
      v241(v344, v242, v186);
      v351 = v338;
      v350 = v339;
      v353 = v340;
      v352 = v341;
      v355 = v342;
      v354 = v343;
      v356 = v348;
      v357 = v349;
      v244 = type metadata accessor for TaggedValue_7.ObservableDifference();
    }

    else
    {
      (v125)(v117, v347, v96);
      if (swift_getEnumCaseMultiPayload())
      {
        v130 = v321[1];
        v131 = v117;
        v132 = &v347;
LABEL_38:
        v130(v131, *(v132 - 32));
        goto LABEL_39;
      }

      v175 = v96;
      v218 = v321;
      v219 = v321[4];
      v220 = v275;
      v221 = v117;
      v222 = v322;
      v219(v275, v221, v322);
      v223 = v276;
      v219(v276, v126, v222);
      v224 = v279;
      (*(v277 + 40))(v223, v333, v222);
      v225 = v218[1];
      v225(v223, v222);
      v225(v220, v222);
      v226 = v278;
      v227 = v280;
      if ((*(v278 + 48))(v224, 1, v280) == 1)
      {
        (*(v255 + 8))(v224, v256);
        goto LABEL_43;
      }

      v251 = *(v226 + 32);
      v252 = v254;
      v251(v254, v224, v227);
      v243 = v344;
      v251(v344, v252, v227);
      v351 = v338;
      v350 = v339;
      v353 = v340;
      v352 = v341;
      v355 = v342;
      v354 = v343;
      v356 = v348;
      v357 = v349;
      v244 = type metadata accessor for TaggedValue_7.ObservableDifference();
    }

LABEL_58:
    swift_storeEnumTagMultiPayload();
    (*(*(v244 - 8) + 56))(v243, 0, 1, v244);
    goto LABEL_59;
  }

  v129 = v347;
  v147 = v126;
  if (EnumCaseMultiPayload != 2)
  {
    (v125)(v108, v347, v127);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v130 = v327[1];
      v131 = v108;
      v132 = &v351 + 1;
      goto LABEL_38;
    }

    v188 = v127;
    v198 = v327;
    v199 = v327[4];
    v200 = v292;
    v201 = v328;
    v199(v292, v108, v328);
    v202 = v293;
    v199(v293, v126, v201);
    v203 = v297;
    (*(v295 + 40))(v202, v333, v201);
    v204 = v198[1];
    v204(v202, v201);
    v204(v200, v201);
    v205 = v296;
    v206 = v300;
    if ((*(v296 + 48))(v203, 1, v300) == 1)
    {
      (*(v264 + 8))(v203, v265);
      goto LABEL_28;
    }

    v249 = *(v205 + 32);
    v250 = v263;
    v249(v263, v203, v206);
    v247 = v344;
    v249(v344, v250, v206);
    v351 = v338;
    v350 = v339;
    v353 = v340;
    v352 = v341;
    v355 = v342;
    v354 = v343;
    v356 = v348;
    v357 = v349;
    v248 = type metadata accessor for TaggedValue_7.ObservableDifference();
    goto LABEL_54;
  }

  (v125)(v111, v347, v127);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v130 = v325[1];
    v131 = v111;
    v132 = &v350 + 1;
    goto LABEL_38;
  }

  v148 = v129;
  v149 = v127;
  v150 = v325;
  v151 = v325[4];
  v152 = v286;
  v153 = v326;
  v151(v286, v111, v326);
  v154 = v287;
  v151(v287, v147, v153);
  v155 = v291;
  (*(v289 + 40))(v154, v333, v153);
  v156 = v150[1];
  v156(v154, v153);
  v156(v152, v153);
  v157 = v290;
  v158 = v294;
  if ((*(v290 + 48))(v155, 1, v294) == 1)
  {
    (*(v261 + 8))(v155, v262);
    v351 = v338;
    v350 = v339;
    v353 = v340;
    v352 = v341;
    v355 = v342;
    v354 = v343;
    v356 = v348;
    v357 = v349;
    v159 = type metadata accessor for TaggedValue_7.ObservableDifference();
    (*(*(v159 - 8) + 56))(v344, 1, 1, v159);
  }

  else
  {
    v233 = *(v157 + 32);
    v234 = v260;
    v233(v260, v155, v158);
    v235 = v344;
    v233(v344, v234, v158);
    v351 = v338;
    v350 = v339;
    v353 = v340;
    v352 = v341;
    v355 = v342;
    v354 = v343;
    v356 = v348;
    v357 = v349;
    v236 = type metadata accessor for TaggedValue_7.ObservableDifference();
    swift_storeEnumTagMultiPayload();
    (*(*(v236 - 8) + 56))(v235, 0, 1, v236);
  }

  v217 = v334;
  v216 = v149;
  v129 = v148;
  return (*(v217 + 8))(v129, v216);
}

BOOL TaggedValue_8.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  v7 = swift_getEnumCaseMultiPayload() == 9;
  (*(v2 + 8))(v6, a1);
  return v7;
}

uint64_t TaggedValue_8.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[8];
  v4 = type metadata accessor for TaggedValue_8.TaggedEnum();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t TaggedValue_8.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  v4 = type metadata accessor for TaggedValue_8.TaggedEnum();
  return (*(*(v4 - 8) + 40))(v2, a1, v4);
}

uint64_t TaggedValue_8.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_8.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_8.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  type metadata accessor for TaggedValue_8.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_8.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_8.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_8.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_8.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_8.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_8.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_8.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_8.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_8.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_8.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_8.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(a2, a1, a3);
  type metadata accessor for TaggedValue_8.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_8.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  a3[1] = v3;
  type metadata accessor for TaggedValue_8.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_8.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v22[0] = a1[1];
  v22[1] = v22[0];
  v6 = a1[3];
  v7 = a1[4];
  v22[2] = v5;
  v22[3] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v22[4] = v7;
  v22[5] = v8;
  v10 = a1[7];
  v11 = a1[8];
  v22[6] = v9;
  v22[7] = v10;
  v22[8] = v11;
  v12 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v22 - v16;
  (*(v13 + 16))(v22 - v16, v3, v12, v15);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v13 + 8))(v17, v12);
    v18 = *&v22[0];
    v19 = *(*&v22[0] - 8);
    v20 = 1;
  }

  else
  {
    v19 = *(*&v22[0] - 8);
    (*(v19 + 32))(a2, v17);
    v18 = *&v22[0];
    v20 = 0;
  }

  return (*(v19 + 56))(a2, v20, 1, v18);
}

uint64_t TaggedValue_8.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 136);
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = v15;
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = *(a1 + 120);
  v24 = v5;
  v6 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, v3, v6, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_8.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v21[0] = a1[2];
  v21[1] = v5;
  v6 = a1[3];
  v7 = a1[4];
  v21[2] = v21[0];
  v21[3] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v21[4] = v7;
  v21[5] = v8;
  v10 = a1[7];
  v11 = a1[8];
  v21[6] = v9;
  v21[7] = v10;
  v21[8] = v11;
  v12 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v21 - v16;
  (*(v13 + 16))(v21 - v16, v3, v12, v15);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v18 = *(*&v21[0] - 8);
    (*(v18 + 32))(a2, v17);
    v19 = 0;
  }

  else
  {
    (*(v13 + 8))(v17, v12);
    v18 = *(*&v21[0] - 8);
    v19 = 1;
  }

  return (*(v18 + 56))(a2, v19, 1, *&v21[0]);
}

uint64_t TaggedValue_8.tagged4.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 136);
  v6 = *(a1 + 16);
  v17 = *(a1 + 32);
  v16[0] = *(a1 + 40);
  v16[1] = v6;
  v18 = v16[0];
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = *(a1 + 120);
  v24 = v5;
  v7 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, v3, v7, v10);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = *(*&v16[0] - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v8 + 8))(v12, v7);
    v13 = *(*&v16[0] - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, *&v16[0]);
}

uint64_t TaggedValue_8.tagged5.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v18[1] = a1[1];
  v18[2] = v5;
  v6 = a1[4];
  v18[0] = a1[3];
  v18[3] = v18[0];
  v18[4] = v6;
  v7 = a1[6];
  v18[5] = a1[5];
  v18[6] = v7;
  v8 = a1[8];
  v18[7] = a1[7];
  v18[8] = v8;
  v9 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - v13;
  (*(v10 + 16))(v18 - v13, v3, v9, v12);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v15 = *(*&v18[0] - 8);
    (*(v15 + 32))(a2, v14);
    v16 = 0;
  }

  else
  {
    (*(v10 + 8))(v14, v9);
    v15 = *(*&v18[0] - 8);
    v16 = 1;
  }

  return (*(v15 + 56))(a2, v16, 1, *&v18[0]);
}

uint64_t TaggedValue_8.tagged6.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 136);
  v7 = *(a1 + 32);
  v17[1] = *(a1 + 16);
  v17[2] = v7;
  v18 = v5;
  v17[0] = *(a1 + 56);
  v19 = v17[0];
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = *(a1 + 120);
  v24 = v6;
  v8 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, v3, v8, v11);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v14 = *(*&v17[0] - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v9 + 8))(v13, v8);
    v14 = *(*&v17[0] - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, *&v17[0]);
}

uint64_t TaggedValue_8.tagged7.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v18[1] = a1[1];
  v18[2] = v5;
  v6 = a1[4];
  v18[3] = a1[3];
  v18[4] = v6;
  v18[0] = v6;
  v7 = a1[6];
  v18[5] = a1[5];
  v18[6] = v7;
  v8 = a1[8];
  v18[7] = a1[7];
  v18[8] = v8;
  v9 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - v13;
  (*(v10 + 16))(v18 - v13, v3, v9, v12);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v15 = *(*&v18[0] - 8);
    (*(v15 + 32))(a2, v14);
    v16 = 0;
  }

  else
  {
    (*(v10 + 8))(v14, v9);
    v15 = *(*&v18[0] - 8);
    v16 = 1;
  }

  return (*(v15 + 56))(a2, v16, 1, *&v18[0]);
}

uint64_t TaggedValue_8.tagged8.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 64);
  v6 = *(a1 + 136);
  v7 = *(a1 + 32);
  v17[1] = *(a1 + 16);
  v17[2] = v7;
  v17[3] = *(a1 + 48);
  v18 = v5;
  v17[0] = *(a1 + 72);
  v19 = v17[0];
  v20 = *(a1 + 88);
  v21 = *(a1 + 104);
  v22 = *(a1 + 120);
  v23 = v6;
  v8 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, v3, v8, v11);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v14 = *(*&v17[0] - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v9 + 8))(v13, v8);
    v14 = *(*&v17[0] - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, *&v17[0]);
}

uint64_t TaggedValue_8.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v17[0] = a1[1];
  v17[1] = v5;
  v6 = a1[4];
  v17[2] = a1[3];
  v17[3] = v6;
  v7 = a1[6];
  v17[4] = a1[5];
  v17[5] = v7;
  v8 = a1[8];
  v17[6] = a1[7];
  v17[7] = v8;
  v9 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v17 - v13;
  (*(v10 + 16))(v17 - v13, v3, v9, v12);
  result = swift_getEnumCaseMultiPayload();
  if (result == 8)
  {
    v16 = *(v14 + 1);
  }

  else
  {
    result = (*(v10 + 8))(v14, v9);
    v16 = 0;
  }

  *a2 = v16;
  return result;
}

uint64_t TaggedValue_8.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v98 = a1;
  v87 = *(*(a2 + 72) - 8);
  v2 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v86 = v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(*(v4 + 64) - 8);
  v5 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v83 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(*(v8 + 56) - 8);
  v9 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v80 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *(*(v12 + 48) - 8);
  v13 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v77 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 40);
  v96 = *(v17 - 8);
  v18 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v95 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 32);
  v94 = *(v21 - 8);
  v22 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v93 = v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 + 24);
  v92 = *(v26 - 8);
  v27 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v90 = v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v30 + 16);
  v89 = *(v31 - 8);
  v32 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v36[10];
  v37 = v36[11];
  v40 = v36[12];
  v39 = v36[13];
  v41 = v36[14];
  v42 = v36[15];
  v44 = v36[16];
  v43 = v36[17];
  *&v45 = v31;
  *(&v45 + 1) = v26;
  *&v46 = v21;
  v91 = v47;
  *(&v46 + 1) = v47;
  v100 = v46;
  v99 = v45;
  v79 = v48;
  *&v45 = v48;
  v82 = v49;
  *(&v45 + 1) = v49;
  v85 = v50;
  *&v46 = v50;
  v88 = v51;
  *(&v46 + 1) = v51;
  v102 = v46;
  v101 = v45;
  v103[0] = v38;
  v103[1] = v37;
  v103[2] = v40;
  v103[3] = v39;
  v75[3] = v41;
  v103[4] = v41;
  v103[5] = v42;
  v75[2] = v42;
  v75[1] = v44;
  v103[6] = v44;
  v103[7] = v43;
  v76 = v43;
  v52 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v56 = v75 - v55;
  (*(v57 + 16))(v75 - v55, v97, v52, v54);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v68 = v78;
        v69 = v77;
        v21 = v79;
        (*(v78 + 32))(v77, v56, v79);
        v71 = v103;
      }

      else
      {
        v68 = v81;
        v69 = v80;
        v21 = v82;
        (*(v81 + 32))(v80, v56, v82);
        v71 = &v102 + 8;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v59 = v87;
          v60 = v86;
          v61 = v88;
          (*(v87 + 32))(v86, v56, v88);
          (*(*(v76 + 8) + 48))(v98, v61);
          return (*(v59 + 8))(v60, v61);
        }

        else
        {
          (*(**(v56 + 1) + 120))(v98);
        }
      }

      v68 = v84;
      v69 = v83;
      v21 = v85;
      (*(v84 + 32))(v83, v56, v85);
      v71 = &v102;
    }

    v70 = *(*(v71 - 32) + 8);
LABEL_20:
    (*(v70 + 48))(v98, v21);
    return (*(v68 + 8))(v69, v21);
  }

  v97 = v39;
  v63 = v26;
  v64 = v95;
  v65 = v96;
  v66 = v91;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v96 + 32))(v95, v56, v91);
      (*(*(v97 + 8) + 48))(v98, v66);
      return (*(v65 + 8))(v64, v66);
    }

    v68 = v94;
    v69 = v93;
    (*(v94 + 32))(v93, v56, v21);
    v70 = *(v40 + 8);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    v72 = v92;
    v73 = v90;
    v74 = v63;
    (*(v92 + 32))(v90, v56, v63);
    (*(*(v37 + 8) + 48))(v98, v74);
    return (*(v72 + 8))(v73, v74);
  }

  else
  {
    v67 = v89;
    (*(v89 + 32))(v35, v56, v31);
    (*(*(v38 + 8) + 48))(v98, v31);
    return (*(v67 + 8))(v35, v31);
  }
}

uint64_t TaggedValue_8.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v152 = a1;
  v153 = a3;
  v129 = *(*(a2 + 72) - 8);
  v3 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v130 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v128 = &v115 - v6;
  v126 = *(*(v7 + 64) - 8);
  v8 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v115 - v12;
  v123 = *(*(v13 + 56) - 8);
  v14 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v122 = &v115 - v18;
  v20 = *(v19 + 48);
  v120 = *(v20 - 8);
  v21 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v121 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v119 = &v115 - v24;
  v134 = *(*(v25 + 40) - 8);
  v26 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v132 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v115 - v30;
  v133 = *(*(v32 + 32) - 8);
  v33 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v115 - v38;
  v131 = *(*(v40 + 24) - 8);
  v41 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v115 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v115 - v46;
  v49 = *(*(v48 + 16) - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v115 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v115 - v55;
  v58 = v57[10];
  v59 = v57[11];
  v60 = v57[12];
  v61 = v57[13];
  v62 = v57[14];
  v63 = v57[15];
  v65 = v57[16];
  v64 = v57[17];
  v135 = v66;
  *&v67 = v66;
  v136 = v68;
  *(&v67 + 1) = v68;
  v137 = v69;
  *&v70 = v69;
  v138 = v71;
  *(&v70 + 1) = v71;
  v117 = v70;
  v155 = v70;
  v118 = v67;
  v154 = v67;
  v139 = v72;
  *&v67 = v72;
  v141 = v73;
  *(&v67 + 1) = v73;
  v142 = v74;
  *&v70 = v74;
  v140 = v75;
  *(&v70 + 1) = v75;
  v115 = v70;
  v157 = v70;
  v116 = v67;
  v156 = v67;
  v150 = v59;
  v151 = v58;
  v158 = v58;
  v159 = v59;
  v149 = v60;
  v160 = v60;
  v161 = v61;
  v148 = v61;
  v147 = v62;
  v162 = v62;
  v163 = v63;
  v146 = v63;
  v145 = v65;
  v164 = v65;
  v165 = v64;
  v144 = v64;
  v76 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v77 = *(*(v76 - 8) + 64);
  v78 = MEMORY[0x1EEE9AC00](v76);
  v80 = &v115 - v79;
  (*(v81 + 16))(&v115 - v79, v143, v76, v78);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v88 = v39;
    v89 = v133;
    v90 = v132;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v92 = v88;
        v93 = v137;
        (*(v133 + 32))(v88, v80, v137);
        (*(*(v149 + 8) + 24))(v152, v93);
        (*(v89 + 8))(v92, v93);
        return TaggedValue_8.init(_:)(v36, v93, v153);
      }

      else
      {
        v104 = v134;
        v105 = v31;
        v106 = v31;
        v107 = v138;
        (*(v134 + 32))(v106, v80, v138);
        (*(*(v148 + 8) + 24))(v152, v107);
        (*(v104 + 8))(v105, v107);
        return TaggedValue_8.init(_:)(v90, v107, v153);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v102 = v131;
      v103 = v136;
      (*(v131 + 32))(v47, v80, v136);
      (*(*(v150 + 8) + 24))(v152, v103);
      (*(v102 + 8))(v47, v103);
      return TaggedValue_8.init(_:)(v44, v103, v153);
    }

    else
    {
      v91 = v135;
      (*(v49 + 32))(v56, v80, v135);
      (*(*(v151 + 8) + 24))(v152, v91);
      (*(v49 + 8))(v56, v91);
      return TaggedValue_8.init(_:)(v53, v91, v153);
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v94 = v120;
      v95 = v119;
      v96 = v139;
      (*(v120 + 32))(v119, v80, v139);
      v97 = v121;
      (*(*(v147 + 8) + 24))(v152, v96);
      (*(v94 + 8))(v95, v96);
      return TaggedValue_8.init(_:)(v97, v96, v153);
    }

    else
    {
      v111 = v123;
      v112 = v122;
      v113 = v141;
      (*(v123 + 32))(v122, v80, v141);
      v114 = v124;
      (*(*(v146 + 8) + 24))(v152, v113);
      (*(v111 + 8))(v112, v113);
      return TaggedValue_8.init(_:)(v114, v113, v153);
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    v98 = v126;
    v99 = v125;
    v100 = v142;
    (*(v126 + 32))(v125, v80, v142);
    v101 = v127;
    (*(*(v145 + 8) + 24))(v152, v100);
    (*(v98 + 8))(v99, v100);
    return TaggedValue_8.init(_:)(v101, v100, v153);
  }

  else if (EnumCaseMultiPayload == 7)
  {
    v83 = v129;
    v84 = v128;
    v85 = v140;
    (*(v129 + 32))(v128, v80, v140);
    v86 = v130;
    (*(*(v144 + 8) + 24))(v152, v85);
    (*(v83 + 8))(v84, v85);
    return TaggedValue_8.init(_:)(v86, v153, v85);
  }

  else
  {
    v108 = *v80;
    v109 = (*(**(v80 + 1) + 104))(v152);

    v110 = v153;
    *v153 = v108;
    v110[1] = v109;
    v155 = v117;
    v154 = v118;
    v157 = v115;
    v156 = v116;
    v158 = v151;
    v159 = v150;
    v160 = v149;
    v161 = v148;
    v162 = v147;
    v163 = v146;
    v164 = v145;
    v165 = v144;
    type metadata accessor for TaggedValue_8.TaggedEnum();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t TaggedValue_8.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v353 = a2;
  v371 = a1;
  v367 = a4;
  v5 = a3[9];
  v368 = a3[17];
  v332 = *(v368 + 1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v286 = sub_1AE23D7CC();
  v285 = *(v286 - 8);
  v7 = *(v285 + 64);
  MEMORY[0x1EEE9AC00](v286);
  v333 = &v263 - v8;
  v334 = AssociatedTypeWitness;
  v331 = *(AssociatedTypeWitness - 8);
  v9 = *(v331 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v284 = &v263 - v11;
  v351 = *(v5 - 8);
  v12 = v351[8];
  MEMORY[0x1EEE9AC00](v13);
  v329 = &v263 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v328 = &v263 - v16;
  *&v366 = a3[16];
  v17 = a3[8];
  v325 = *(v366 + 8);
  v18 = swift_getAssociatedTypeWitness();
  v283 = sub_1AE23D7CC();
  v282 = *(v283 - 8);
  v19 = *(v282 + 64);
  MEMORY[0x1EEE9AC00](v283);
  v327 = &v263 - v20;
  v330 = v18;
  v326 = *(v18 - 8);
  v21 = *(v326 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v281 = &v263 - v23;
  v349 = *(v17 - 8);
  v24 = v349[8];
  MEMORY[0x1EEE9AC00](v25);
  v323 = &v263 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v322 = &v263 - v28;
  *&v365 = a3[15];
  v29 = a3[7];
  v319 = *(v365 + 8);
  v30 = swift_getAssociatedTypeWitness();
  v280 = sub_1AE23D7CC();
  v279 = *(v280 - 8);
  v31 = *(v279 + 64);
  MEMORY[0x1EEE9AC00](v280);
  v321 = &v263 - v32;
  v324 = v30;
  v320 = *(v30 - 8);
  v33 = *(v320 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v278 = &v263 - v35;
  v347 = *(v29 - 8);
  v36 = *(v347 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v317 = &v263 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v316 = &v263 - v40;
  *&v364 = a3[14];
  v41 = a3[6];
  v313 = *(v364 + 8);
  v42 = swift_getAssociatedTypeWitness();
  v277 = sub_1AE23D7CC();
  v276 = *(v277 - 8);
  v43 = *(v276 + 64);
  MEMORY[0x1EEE9AC00](v277);
  v315 = &v263 - v44;
  v318 = v42;
  v314 = *(v42 - 8);
  v45 = *(v314 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v275 = &v263 - v47;
  v345 = *(v41 - 8);
  v48 = v345[8];
  MEMORY[0x1EEE9AC00](v49);
  v312 = &v263 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v311 = &v263 - v52;
  v346 = v41;
  *&v53 = v41;
  v348 = v29;
  *(&v53 + 1) = v29;
  v370 = v53;
  v54 = a3[5];
  v350 = v17;
  *&v53 = v17;
  v352 = v5;
  *(&v53 + 1) = v5;
  v369 = v53;
  *&v363 = a3[13];
  v306 = *(v363 + 8);
  v55 = swift_getAssociatedTypeWitness();
  v274 = sub_1AE23D7CC();
  v273 = *(v274 - 8);
  v56 = *(v273 + 64);
  MEMORY[0x1EEE9AC00](v274);
  v308 = &v263 - v57;
  v310 = v55;
  v309 = *(v55 - 8);
  v58 = *(v309 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v272 = &v263 - v60;
  v356 = *(v54 - 8);
  v61 = *(v356 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v305 = &v263 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v304 = &v263 - v65;
  v66 = a3[12];
  v67 = a3[4];
  v301 = *(v66 + 8);
  v68 = swift_getAssociatedTypeWitness();
  v271 = sub_1AE23D7CC();
  v270 = *(v271 - 8);
  v69 = *(v270 + 64);
  MEMORY[0x1EEE9AC00](v271);
  v303 = &v263 - v70;
  v307 = v68;
  v302 = *(v68 - 8);
  v71 = *(v302 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v269 = &v263 - v73;
  v355 = *(v67 - 8);
  v74 = *(v355 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v299 = &v263 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v298 = &v263 - v78;
  v79 = a3[11];
  v80 = a3[3];
  v295 = *(v79 + 8);
  v81 = swift_getAssociatedTypeWitness();
  v268 = sub_1AE23D7CC();
  v267 = *(v268 - 8);
  v82 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v268);
  v297 = &v263 - v83;
  v300 = v81;
  v296 = *(v81 - 8);
  v84 = *(v296 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v266 = &v263 - v86;
  v341 = *(v80 - 8);
  v87 = v341[8];
  MEMORY[0x1EEE9AC00](v88);
  v294 = &v263 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v293 = &v263 - v91;
  v92 = a3[10];
  v93 = a3[2];
  v289 = *(v92 + 8);
  v94 = swift_getAssociatedTypeWitness();
  v265 = sub_1AE23D7CC();
  v264 = *(v265 - 8);
  v95 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v265);
  v291 = &v263 - v96;
  v292 = v94;
  v290 = *(v94 - 8);
  v97 = *(v290 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v263 = &v263 - v99;
  v335 = *(v93 - 8);
  v100 = *(v335 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v288 = &v263 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103);
  v287 = &v263 - v104;
  v354 = v93;
  *&v105 = v93;
  v342 = v80;
  *(&v105 + 1) = v80;
  v343 = v67;
  *&v106 = v67;
  v344 = v54;
  *(&v106 + 1) = v54;
  v361 = v106;
  v373 = v106;
  v362 = v105;
  v372 = v105;
  v375 = v369;
  v374 = v370;
  *&v106 = v92;
  *(&v106 + 1) = v79;
  *&v107 = v66;
  *(&v107 + 1) = v363;
  *&v105 = v364;
  *(&v105 + 1) = v365;
  v363 = v107;
  v377 = v107;
  v364 = v106;
  v376 = v106;
  *&v106 = v366;
  *(&v106 + 1) = v368;
  v365 = v106;
  v379 = v106;
  v366 = v105;
  v378 = v105;
  v108 = type metadata accessor for TaggedValue_8.TaggedEnum();
  v109 = *(v108 - 8);
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v339 = &v263 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v112);
  v340 = &v263 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v338 = &v263 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v337 = &v263 - v117;
  MEMORY[0x1EEE9AC00](v118);
  v336 = &v263 - v119;
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v263 - v121;
  MEMORY[0x1EEE9AC00](v123);
  v125 = &v263 - v124;
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v263 - v127;
  MEMORY[0x1EEE9AC00](v129);
  v131 = &v263 - v130;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v359 = *(TupleTypeMetadata2 - 8);
  v133 = *(v359 + 64);
  v134 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v136 = &v263 - v135;
  v358 = v137;
  v138 = &v263 + *(v137 + 48) - v135;
  v357 = v109;
  v139 = *(v109 + 16);
  v139(&v263 - v135, v360, v108, v134);
  v140 = v138;
  (v139)(v138, v371, v108);
  v368 = v136;
  v371 = v108;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v177 = v338;
        v142 = v368;
        (v139)(v338, v368, v371);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v178 = v349;
          v179 = v349[4];
          v180 = v322;
          v181 = v350;
          v179(v322, v177, v350);
          v182 = v323;
          v179(v323, v140, v181);
          v183 = v327;
          (*(v325 + 40))(v182, v353, v181);
          v184 = v178[1];
          v184(v182, v181);
          v184(v180, v181);
          v185 = v326;
          v186 = v330;
          if ((*(v326 + 48))(v183, 1, v330) == 1)
          {
            (*(v282 + 8))(v183, v283);
            goto LABEL_49;
          }

          v239 = *(v185 + 32);
          v240 = v281;
          v239(v281, v183, v186);
          v241 = v367;
          v239(v367, v240, v186);
          v373 = v361;
          v372 = v362;
          v375 = v369;
          v374 = v370;
          v377 = v363;
          v376 = v364;
          v379 = v365;
          v378 = v366;
          v242 = type metadata accessor for TaggedValue_8.ObservableDifference();
          goto LABEL_63;
        }

        v224 = v349[1];
        v225 = v177;
        v226 = &v373;
      }

      else
      {
        v142 = v368;
        if (EnumCaseMultiPayload != 7)
        {
          v208 = v339;
          (v139)(v339, v368, v371);
          v209 = v208[1];
          if (swift_getEnumCaseMultiPayload() == 8)
          {
            v210 = *v208;
            v212 = *v140;
            v211 = *(v140 + 1);

            if (v210 == v212)
            {
              v372 = v362;
              v373 = v361;
              v374 = v370;
              v375 = v369;
              v376 = v364;
              v377 = v363;
              v378 = v366;
              v379 = v365;
LABEL_50:
              v238 = type metadata accessor for TaggedValue_8.ObservableDifference();
              (*(*(v238 - 8) + 56))(v367, 1, 1, v238);
LABEL_64:
              v229 = &v376 + 8;
              goto LABEL_65;
            }

            v372 = v362;
            v373 = v361;
            v374 = v370;
            v375 = v369;
            v376 = v364;
            v377 = v363;
            v378 = v366;
            v379 = v365;
            v242 = type metadata accessor for TaggedValue_8.ObservableDifference();
            v241 = v367;
            goto LABEL_63;
          }

          goto LABEL_44;
        }

        v143 = v340;
        (v139)(v340, v368, v371);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v144 = v351;
          v145 = v351[4];
          v146 = v328;
          v147 = v352;
          v145(v328, v143, v352);
          v148 = v329;
          v145(v329, v140, v147);
          v149 = v333;
          (*(v332 + 40))(v148, v353, v147);
          v150 = v144[1];
          v150(v148, v147);
          v150(v146, v147);
          v151 = v331;
          v152 = v334;
          if ((*(v331 + 48))(v149, 1, v334) == 1)
          {
            (*(v285 + 8))(v149, v286);
LABEL_49:
            v373 = v361;
            v372 = v362;
            v375 = v369;
            v374 = v370;
            v377 = v363;
            v376 = v364;
            v379 = v365;
            v378 = v366;
            goto LABEL_50;
          }

          v254 = *(v151 + 32);
          v255 = v284;
          v254(v284, v149, v152);
          v241 = v367;
          v254(v367, v255, v152);
          v373 = v361;
          v372 = v362;
          v375 = v369;
          v374 = v370;
          v377 = v363;
          v376 = v364;
          v379 = v365;
          v378 = v366;
          v242 = type metadata accessor for TaggedValue_8.ObservableDifference();
          goto LABEL_63;
        }

        v224 = v351[1];
        v225 = v143;
        v226 = &v374;
      }

      goto LABEL_43;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v167 = v336;
      v142 = v368;
      (v139)(v336, v368, v371);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v168 = v345;
        v169 = v345[4];
        v170 = v311;
        v171 = v346;
        v169(v311, v167, v346);
        v172 = v312;
        v169(v312, v140, v171);
        v173 = v315;
        (*(v313 + 40))(v172, v353, v171);
        v174 = v168[1];
        v174(v172, v171);
        v174(v170, v171);
        v175 = v314;
        v176 = v318;
        if ((*(v314 + 48))(v173, 1, v318) == 1)
        {
          (*(v276 + 8))(v173, v277);
          goto LABEL_49;
        }

        v256 = *(v175 + 32);
        v257 = v275;
        v256(v275, v173, v176);
        v241 = v367;
        v256(v367, v257, v176);
        v373 = v361;
        v372 = v362;
        v375 = v369;
        v374 = v370;
        v377 = v363;
        v376 = v364;
        v379 = v365;
        v378 = v366;
        v242 = type metadata accessor for TaggedValue_8.ObservableDifference();
LABEL_63:
        swift_storeEnumTagMultiPayload();
        (*(*(v242 - 8) + 56))(v241, 0, 1, v242);
        goto LABEL_64;
      }

      v224 = v345[1];
      v225 = v167;
      v226 = &v370 + 1;
LABEL_43:
      v224(v225, *(v226 - 32));
      goto LABEL_44;
    }

    v213 = v337;
    (v139)(v337, v368, v371);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      (*(v347 + 8))(v213, v348);
      v227 = v367;
      v142 = v368;
      goto LABEL_45;
    }

    v214 = v347;
    v215 = *(v347 + 32);
    v216 = v316;
    v217 = v348;
    v215(v316, v213, v348);
    v218 = v317;
    v215(v317, v140, v217);
    v219 = v321;
    (*(v319 + 40))(v218, v353, v217);
    v220 = *(v214 + 8);
    v220(v218, v217);
    v220(v216, v217);
    v221 = v320;
    v222 = v324;
    if ((*(v320 + 48))(v219, 1, v324) == 1)
    {
      (*(v279 + 8))(v219, v280);
      goto LABEL_35;
    }

    v258 = *(v221 + 32);
    v259 = v278;
    v258(v278, v219, v222);
    v245 = v367;
    v258(v367, v259, v222);
    v373 = v361;
    v372 = v362;
    v375 = v369;
    v374 = v370;
    v377 = v363;
    v376 = v364;
    v379 = v365;
    v378 = v366;
    v246 = type metadata accessor for TaggedValue_8.ObservableDifference();
    goto LABEL_60;
  }

  v153 = v125;
  v154 = v354;
  v155 = v355;
  v156 = v356;
  if (EnumCaseMultiPayload <= 1)
  {
    v142 = v368;
    if (!EnumCaseMultiPayload)
    {
      (v139)(v131, v368, v371);
      if (!swift_getEnumCaseMultiPayload())
      {
        v230 = v335;
        v231 = *(v335 + 32);
        v232 = v287;
        v231(v287, v131, v154);
        v233 = v288;
        v231(v288, v140, v154);
        v234 = v291;
        (*(v289 + 40))(v233, v353, v154);
        v235 = *(v230 + 8);
        v235(v233, v154);
        v235(v232, v154);
        v236 = v290;
        v237 = v292;
        if ((*(v290 + 48))(v234, 1, v292) == 1)
        {
          (*(v264 + 8))(v234, v265);
          goto LABEL_49;
        }

        v260 = *(v236 + 32);
        v261 = v263;
        v260(v263, v234, v237);
        v241 = v367;
        v260(v367, v261, v237);
        v373 = v361;
        v372 = v362;
        v375 = v369;
        v374 = v370;
        v377 = v363;
        v376 = v364;
        v379 = v365;
        v378 = v366;
        v242 = type metadata accessor for TaggedValue_8.ObservableDifference();
        goto LABEL_63;
      }

      (*(v335 + 8))(v131, v154);
      goto LABEL_44;
    }

    (v139)(v128, v368, v371);
    v187 = v140;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v188 = v341;
      v189 = v341[4];
      v190 = v293;
      v191 = v342;
      v189(v293, v128, v342);
      v192 = v294;
      v189(v294, v187, v191);
      v193 = v297;
      (*(v295 + 40))(v192, v353, v191);
      v194 = v188[1];
      v194(v192, v191);
      v194(v190, v191);
      v195 = v296;
      v196 = v300;
      if ((*(v296 + 48))(v193, 1, v300) == 1)
      {
        (*(v267 + 8))(v193, v268);
        goto LABEL_49;
      }

      v247 = *(v195 + 32);
      v248 = v266;
      v247(v266, v193, v196);
      v241 = v367;
      v247(v367, v248, v196);
      v373 = v361;
      v372 = v362;
      v375 = v369;
      v374 = v370;
      v377 = v363;
      v376 = v364;
      v379 = v365;
      v378 = v366;
      v242 = type metadata accessor for TaggedValue_8.ObservableDifference();
      goto LABEL_63;
    }

    v224 = v341[1];
    v225 = v128;
    v226 = &v368;
    goto LABEL_43;
  }

  v157 = v368;
  if (EnumCaseMultiPayload == 2)
  {
    v158 = v153;
    (v139)(v153, v368, v371);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v142 = v157;
      (*(v155 + 8))(v158, v343);
LABEL_44:
      v227 = v367;
      goto LABEL_45;
    }

    v159 = *(v155 + 32);
    v160 = v298;
    v161 = v343;
    v159(v298, v158, v343);
    v162 = v299;
    v159(v299, v140, v161);
    v163 = v303;
    (*(v301 + 40))(v162, v353, v161);
    v164 = *(v155 + 8);
    v164(v162, v161);
    v164(v160, v161);
    v165 = v302;
    v166 = v307;
    if ((*(v302 + 48))(v163, 1, v307) == 1)
    {
      (*(v270 + 8))(v163, v271);
LABEL_35:
      v373 = v361;
      v372 = v362;
      v375 = v369;
      v374 = v370;
      v377 = v363;
      v376 = v364;
      v379 = v365;
      v378 = v366;
      v223 = type metadata accessor for TaggedValue_8.ObservableDifference();
      (*(*(v223 - 8) + 56))(v367, 1, 1, v223);
LABEL_61:
      v253 = v357;
      v142 = v368;
      return (*(v253 + 8))(v142, v371);
    }

    v243 = *(v165 + 32);
    v244 = v269;
    v243(v269, v163, v166);
    v245 = v367;
    v243(v367, v244, v166);
    v373 = v361;
    v372 = v362;
    v375 = v369;
    v374 = v370;
    v377 = v363;
    v376 = v364;
    v379 = v365;
    v378 = v366;
    v246 = type metadata accessor for TaggedValue_8.ObservableDifference();
LABEL_60:
    swift_storeEnumTagMultiPayload();
    (*(*(v246 - 8) + 56))(v245, 0, 1, v246);
    goto LABEL_61;
  }

  v197 = v368;
  (v139)(v122, v368, v371);
  v198 = v140;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v156 + 8))(v122, v344);
    v227 = v367;
    v142 = v197;
LABEL_45:
    v372 = v362;
    v373 = v361;
    v374 = v370;
    v375 = v369;
    v376 = v364;
    v377 = v363;
    v378 = v366;
    v379 = v365;
    v228 = type metadata accessor for TaggedValue_8.ObservableDifference();
    swift_storeEnumTagMultiPayload();
    (*(*(v228 - 8) + 56))(v227, 0, 1, v228);
    v371 = v358;
    v229 = &v377 + 8;
LABEL_65:
    v253 = *(v229 - 32);
    return (*(v253 + 8))(v142, v371);
  }

  v199 = *(v156 + 32);
  v200 = v304;
  v201 = v344;
  v199(v304, v122, v344);
  v202 = v305;
  v199(v305, v198, v201);
  v203 = v308;
  (*(v306 + 40))(v202, v353, v201);
  v204 = *(v156 + 8);
  v204(v202, v201);
  v204(v200, v201);
  v205 = v309;
  v206 = v310;
  if ((*(v309 + 48))(v203, 1, v310) == 1)
  {
    (*(v273 + 8))(v203, v274);
    v373 = v361;
    v372 = v362;
    v375 = v369;
    v374 = v370;
    v377 = v363;
    v376 = v364;
    v379 = v365;
    v378 = v366;
    v207 = type metadata accessor for TaggedValue_8.ObservableDifference();
    (*(*(v207 - 8) + 56))(v367, 1, 1, v207);
  }

  else
  {
    v249 = *(v205 + 32);
    v250 = v272;
    v249(v272, v203, v206);
    v251 = v367;
    v249(v367, v250, v206);
    v373 = v361;
    v372 = v362;
    v375 = v369;
    v374 = v370;
    v377 = v363;
    v376 = v364;
    v379 = v365;
    v378 = v366;
    v252 = type metadata accessor for TaggedValue_8.ObservableDifference();
    swift_storeEnumTagMultiPayload();
    (*(*(v252 - 8) + 56))(v251, 0, 1, v252);
  }

  v253 = v357;
  v142 = v197;
  return (*(v253 + 8))(v142, v371);
}

BOOL TaggedValue_9.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  v7 = swift_getEnumCaseMultiPayload() == 10;
  (*(v2 + 8))(v6, a1);
  return v7;
}

uint64_t TaggedValue_9.taggedEnum.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[8];
  v14 = a1[9];
  v4 = type metadata accessor for TaggedValue_9.TaggedEnum();
  return (*(*(v4 - 8) + 16))(a2, v2, v4);
}

uint64_t TaggedValue_9.taggedEnum.setter(uint64_t a1, _OWORD *a2)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  v14 = a2[9];
  v4 = type metadata accessor for TaggedValue_9.TaggedEnum();
  return (*(*(v4 - 8) + 40))(v2, a1, v4);
}

uint64_t TaggedValue_9.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_9.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1);
  type metadata accessor for TaggedValue_9.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_9.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_9.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_9.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_9.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for TaggedValue_9.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(a2, a1, a3);
  type metadata accessor for TaggedValue_9.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4)
{
  (*(*(a4 - 8) + 32))(a2, a1, a4);
  type metadata accessor for TaggedValue_9.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.init(tag:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  a3[1] = v3;
  type metadata accessor for TaggedValue_9.TaggedEnum();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TaggedValue_9.tagged1.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v23[0] = a1[1];
  v23[1] = v23[0];
  v6 = a1[3];
  v7 = a1[4];
  v23[2] = v5;
  v23[3] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v23[4] = v7;
  v23[5] = v8;
  v10 = a1[7];
  v11 = a1[8];
  v23[6] = v9;
  v23[7] = v10;
  v12 = a1[9];
  v23[8] = v11;
  v23[9] = v12;
  v13 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v23 - v17;
  (*(v14 + 16))(v23 - v17, v3, v13, v16);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v14 + 8))(v18, v13);
    v19 = *&v23[0];
    v20 = *(*&v23[0] - 8);
    v21 = 1;
  }

  else
  {
    v20 = *(*&v23[0] - 8);
    (*(v20 + 32))(a2, v18);
    v19 = *&v23[0];
    v21 = 0;
  }

  return (*(v20 + 56))(a2, v21, 1, v19);
}

uint64_t TaggedValue_9.tagged2.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 152);
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = v15;
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = *(a1 + 120);
  v24 = *(a1 + 136);
  v25 = v5;
  v6 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, v3, v6, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v15 - 8);
    (*(v12 + 32))(a2, v11);
    v13 = 0;
  }

  else
  {
    (*(v7 + 8))(v11, v6);
    v12 = *(v15 - 8);
    v13 = 1;
  }

  return (*(v12 + 56))(a2, v13, 1, v15);
}

uint64_t TaggedValue_9.tagged3.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[1];
  v22[0] = a1[2];
  v22[1] = v5;
  v6 = a1[3];
  v7 = a1[4];
  v22[2] = v22[0];
  v22[3] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v22[4] = v7;
  v22[5] = v8;
  v10 = a1[7];
  v11 = a1[8];
  v22[6] = v9;
  v22[7] = v10;
  v12 = a1[9];
  v22[8] = v11;
  v22[9] = v12;
  v13 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v22 - v17;
  (*(v14 + 16))(v22 - v17, v3, v13, v16);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v19 = *(*&v22[0] - 8);
    (*(v19 + 32))(a2, v18);
    v20 = 0;
  }

  else
  {
    (*(v14 + 8))(v18, v13);
    v19 = *(*&v22[0] - 8);
    v20 = 1;
  }

  return (*(v19 + 56))(a2, v20, 1, *&v22[0]);
}

uint64_t TaggedValue_9.tagged4.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 152);
  v6 = *(a1 + 16);
  v17 = *(a1 + 32);
  v16[0] = *(a1 + 40);
  v16[1] = v6;
  v18 = v16[0];
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = *(a1 + 120);
  v24 = *(a1 + 136);
  v25 = v5;
  v7 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, v3, v7, v10);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v13 = *(*&v16[0] - 8);
    (*(v13 + 32))(a2, v12);
    v14 = 0;
  }

  else
  {
    (*(v8 + 8))(v12, v7);
    v13 = *(*&v16[0] - 8);
    v14 = 1;
  }

  return (*(v13 + 56))(a2, v14, 1, *&v16[0]);
}

uint64_t TaggedValue_9.tagged5.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v18[1] = a1[1];
  v18[2] = v5;
  v6 = a1[4];
  v18[0] = a1[3];
  v18[3] = v18[0];
  v18[4] = v6;
  v7 = a1[6];
  v18[5] = a1[5];
  v18[6] = v7;
  v8 = a1[8];
  v18[7] = a1[7];
  v18[8] = v8;
  v18[9] = a1[9];
  v9 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - v13;
  (*(v10 + 16))(v18 - v13, v3, v9, v12);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v15 = *(*&v18[0] - 8);
    (*(v15 + 32))(a2, v14);
    v16 = 0;
  }

  else
  {
    (*(v10 + 8))(v14, v9);
    v15 = *(*&v18[0] - 8);
    v16 = 1;
  }

  return (*(v15 + 56))(a2, v16, 1, *&v18[0]);
}

uint64_t TaggedValue_9.tagged6.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 152);
  v7 = *(a1 + 32);
  v17[1] = *(a1 + 16);
  v17[2] = v7;
  v18 = v5;
  v17[0] = *(a1 + 56);
  v19 = v17[0];
  v20 = *(a1 + 72);
  v21 = *(a1 + 88);
  v22 = *(a1 + 104);
  v23 = *(a1 + 120);
  v24 = *(a1 + 136);
  v25 = v6;
  v8 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, v3, v8, v11);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v14 = *(*&v17[0] - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v9 + 8))(v13, v8);
    v14 = *(*&v17[0] - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, *&v17[0]);
}

uint64_t TaggedValue_9.tagged7.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v18[1] = a1[1];
  v18[2] = v5;
  v6 = a1[4];
  v18[3] = a1[3];
  v18[4] = v6;
  v18[0] = v6;
  v7 = a1[6];
  v18[5] = a1[5];
  v18[6] = v7;
  v8 = a1[8];
  v18[7] = a1[7];
  v18[8] = v8;
  v18[9] = a1[9];
  v9 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - v13;
  (*(v10 + 16))(v18 - v13, v3, v9, v12);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v15 = *(*&v18[0] - 8);
    (*(v15 + 32))(a2, v14);
    v16 = 0;
  }

  else
  {
    (*(v10 + 8))(v14, v9);
    v15 = *(*&v18[0] - 8);
    v16 = 1;
  }

  return (*(v15 + 56))(a2, v16, 1, *&v18[0]);
}

uint64_t TaggedValue_9.tagged8.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 64);
  v6 = *(a1 + 152);
  v7 = *(a1 + 32);
  v17[1] = *(a1 + 16);
  v17[2] = v7;
  v17[3] = *(a1 + 48);
  v18 = v5;
  v17[0] = *(a1 + 72);
  v19 = v17[0];
  v20 = *(a1 + 88);
  v21 = *(a1 + 104);
  v22 = *(a1 + 120);
  v23 = *(a1 + 136);
  v24 = v6;
  v8 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v17 - v12;
  (*(v9 + 16))(v17 - v12, v3, v8, v11);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v14 = *(*&v17[0] - 8);
    (*(v14 + 32))(a2, v13);
    v15 = 0;
  }

  else
  {
    (*(v9 + 8))(v13, v8);
    v14 = *(*&v17[0] - 8);
    v15 = 1;
  }

  return (*(v14 + 56))(a2, v15, 1, *&v17[0]);
}

uint64_t TaggedValue_9.tagged9.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v18[1] = a1[1];
  v18[2] = v5;
  v6 = a1[4];
  v18[3] = a1[3];
  v18[4] = v6;
  v7 = a1[6];
  v18[0] = a1[5];
  v18[5] = v18[0];
  v18[6] = v7;
  v8 = a1[8];
  v18[7] = a1[7];
  v18[8] = v8;
  v18[9] = a1[9];
  v9 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - v13;
  (*(v10 + 16))(v18 - v13, v3, v9, v12);
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    v15 = *(*&v18[0] - 8);
    (*(v15 + 32))(a2, v14);
    v16 = 0;
  }

  else
  {
    (*(v10 + 8))(v14, v9);
    v15 = *(*&v18[0] - 8);
    v16 = 1;
  }

  return (*(v15 + 56))(a2, v16, 1, *&v18[0]);
}

uint64_t TaggedValue_9.unknown.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = a1[2];
  v17[0] = a1[1];
  v17[1] = v5;
  v6 = a1[4];
  v17[2] = a1[3];
  v17[3] = v6;
  v7 = a1[6];
  v17[4] = a1[5];
  v17[5] = v7;
  v8 = a1[8];
  v17[6] = a1[7];
  v17[7] = v8;
  v17[8] = a1[9];
  v9 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v17 - v13;
  (*(v10 + 16))(v17 - v13, v3, v9, v12);
  result = swift_getEnumCaseMultiPayload();
  if (result == 9)
  {
    v16 = *(v14 + 1);
  }

  else
  {
    result = (*(v10 + 8))(v14, v9);
    v16 = 0;
  }

  *a2 = v16;
  return result;
}

uint64_t TaggedValue_9.visitReferences(_:)(uint64_t a1, uint64_t a2)
{
  v108 = a1;
  v104 = *(*(a2 + 80) - 8);
  v2 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v103 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = *(*(v4 + 72) - 8);
  v5 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v100 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = *(*(v8 + 64) - 8);
  v9 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v97 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(*(v12 + 56) - 8);
  v13 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v93 = v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 48);
  v92 = *(v17 - 8);
  v18 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v91 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *(*(v20 + 40) - 8);
  v21 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v88 = v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v24 + 32);
  v87 = *(v25 - 8);
  v26 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v86 = v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v29 + 24);
  v85 = *(v30 - 8);
  v31 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v84 = v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v34 + 16);
  v83 = *(v35 - 8);
  v36 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v82 = v81 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v39 + 88);
  v41 = *(v39 + 96);
  v42 = *(v39 + 112);
  v43 = *(v39 + 120);
  v44 = *(v39 + 128);
  v45 = *(v39 + 136);
  v47 = *(v39 + 144);
  v46 = *(v39 + 152);
  *&v48 = v35;
  *(&v48 + 1) = v30;
  *&v49 = v25;
  v90 = v50;
  *(&v49 + 1) = v50;
  v110[0] = v49;
  v109 = v48;
  v94 = v51;
  *&v48 = v51;
  v96 = v52;
  *(&v48 + 1) = v52;
  v99 = v53;
  *&v49 = v53;
  v102 = v54;
  *(&v49 + 1) = v54;
  v110[2] = v49;
  v110[1] = v48;
  v105 = v55;
  *&v48 = v55;
  *(&v48 + 1) = v40;
  v106 = v41;
  v110[4] = v41;
  v110[3] = v48;
  v81[1] = v42;
  v111 = v42;
  v112 = v43;
  v81[0] = v43;
  v113 = v44;
  v114 = v45;
  v115 = v47;
  v116 = v46;
  v56 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v60 = v81 - v59;
  (*(v61 + 16))(v81 - v59, v107, v56, v58);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v73 = v95;
        v74 = v93;
        v75 = v96;
        (*(v95 + 32))(v93, v60, v96);
        (*(*(v44 + 8) + 48))(v108, v75);
        return (*(v73 + 8))(v74, v75);
      }

      v63 = v98;
      v64 = v97;
      v65 = v99;
      (*(v98 + 32))(v97, v60, v99);
      v78 = *(v45 + 8);
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          v67 = v104;
          v68 = v103;
          v69 = v105;
          (*(v104 + 32))(v103, v60, v105);
          (*(*(v46 + 8) + 48))(v108, v69);
          return (*(v67 + 8))(v68, v69);
        }

        else
        {
          (*(**(v60 + 1) + 120))(v108);
        }
      }

      v63 = v101;
      v64 = v100;
      v65 = v102;
      (*(v101 + 32))(v100, v60, v102);
      v78 = *(v47 + 8);
    }

LABEL_21:
    (*(v78 + 48))(v108, v65);
    return (*(v63 + 8))(v64, v65);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v76 = v87;
      v77 = v86;
      (*(v87 + 32))(v86, v60, v25);
      (*(*(*(&v106 + 1) + 8) + 48))(v108, v25);
      return (*(v76 + 8))(v77, v25);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v63 = v89;
      v64 = v88;
      v65 = v90;
      (*(v89 + 32))(v88, v60, v90);
      v66 = v110;
    }

    else
    {
      v63 = v92;
      v64 = v91;
      v65 = v94;
      (*(v92 + 32))(v91, v60, v94);
      v66 = &v109 + 8;
    }

    v78 = *(*(v66 - 32) + 8);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload)
  {
    v79 = v85;
    v80 = v84;
    (*(v85 + 32))(v84, v60, v30);
    (*(*(v106 + 8) + 48))(v108, v30);
    return (*(v79 + 8))(v80, v30);
  }

  else
  {
    v71 = v83;
    v72 = v82;
    (*(v83 + 32))(v82, v60, v35);
    (*(*(v40 + 8) + 48))(v108, v35);
    return (*(v71 + 8))(v72, v35);
  }
}

uint64_t TaggedValue_9.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v165 = a1;
  v167 = a3;
  v147 = *(*(a2 + 80) - 8);
  v3 = *(v147 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v148 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v146 = &v126 - v6;
  v8 = *(v7 + 72);
  v144 = *(v8 - 8);
  v9 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v145 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v143 = &v126 - v12;
  v141 = *(*(v13 + 64) - 8);
  v14 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v142 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v140 = &v126 - v18;
  v138 = *(*(v19 + 56) - 8);
  v20 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v139 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v136 = &v126 - v24;
  v135 = *(*(v25 + 48) - 8);
  v26 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v137 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v126 - v30;
  v133 = *(*(v32 + 40) - 8);
  v33 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v134 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v126 - v37;
  v132 = *(*(v39 + 32) - 8);
  v40 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v126 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v126 - v45;
  v131 = *(*(v47 + 24) - 8);
  v48 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v126 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v126 - v53;
  v130 = *(*(v55 + 16) - 8);
  v56 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v126 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v126 - v61;
  v64 = *(v63 + 88);
  v65 = *(v63 + 96);
  v66 = *(v63 + 112);
  v67 = *(v63 + 120);
  v68 = *(v63 + 128);
  v69 = *(v63 + 136);
  v70 = *(v63 + 144);
  v71 = *(v63 + 152);
  v149 = v72;
  *&v73 = v72;
  v150 = v74;
  *(&v73 + 1) = v74;
  v151 = v75;
  *&v76 = v75;
  v152 = v77;
  *(&v76 + 1) = v77;
  v153 = v78;
  *&v79 = v78;
  v155 = v80;
  *(&v79 + 1) = v80;
  v156 = v81;
  *&v82 = v81;
  v154 = v83;
  *(&v82 + 1) = v83;
  v128 = v76;
  v170 = v76;
  v129 = v73;
  v169 = v73;
  v126 = v82;
  v172 = v82;
  v127 = v79;
  v171 = v79;
  v166 = v84;
  *&v173 = v84;
  *(&v173 + 1) = v64;
  v164 = v64;
  v168 = v65;
  v174 = v65;
  v163 = v66;
  v175 = v66;
  v176 = v67;
  v162 = v67;
  v161 = v68;
  v177 = v68;
  v178 = v69;
  v160 = v69;
  v159 = v70;
  v179 = v70;
  v180 = v71;
  v158 = v71;
  v85 = type metadata accessor for TaggedValue_9.TaggedEnum();
  v86 = *(*(v85 - 8) + 64);
  v87 = MEMORY[0x1EEE9AC00](v85);
  v89 = &v126 - v88;
  (*(v90 + 16))(&v126 - v88, v157, v85, v87);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v102 = v138;
        v103 = v136;
        v104 = v155;
        (*(v138 + 32))(v136, v89, v155);
        v105 = v139;
        (*(*(v161 + 8) + 24))(v165, v104);
        (*(v102 + 8))(v103, v104);
        return TaggedValue_9.init(_:)(v105, v104, v167);
      }

      else
      {
        v122 = v141;
        v123 = v140;
        v124 = v156;
        (*(v141 + 32))(v140, v89, v156);
        v125 = v142;
        (*(*(v160 + 8) + 24))(v165, v124);
        (*(v122 + 8))(v123, v124);
        return TaggedValue_9.init(_:)(v125, v124, v167);
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v109 = v144;
      v110 = v143;
      v111 = v154;
      (*(v144 + 32))(v143, v89, v154);
      v112 = v145;
      (*(*(v159 + 8) + 24))(v165, v111);
      (*(v109 + 8))(v110, v111);
      return TaggedValue_9.init(_:)(v112, v167, v111);
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v96 = v147;
      v97 = v146;
      v98 = v166;
      (*(v147 + 32))(v146, v89, v166);
      v99 = v148;
      (*(*(v158 + 8) + 24))(v165, v98);
      (*(v96 + 8))(v97, v98);
      return TaggedValue_9.init(_:)(v99, v167, v154, v98);
    }

    else
    {
      v116 = *v89;
      v117 = (*(**(v89 + 1) + 104))(v165);

      v118 = v167;
      *v167 = v116;
      v118[1] = v117;
      v170 = v128;
      v169 = v129;
      v172 = v126;
      v171 = v127;
      *&v119 = v166;
      *(&v119 + 1) = v164;
      v174 = v168;
      v173 = v119;
      v175 = v163;
      v176 = v162;
      v177 = v161;
      v178 = v160;
      v179 = v159;
      v180 = v158;
      type metadata accessor for TaggedValue_9.TaggedEnum();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v120 = v131;
      v121 = v150;
      (*(v131 + 32))(v54, v89, v150);
      (*(*(v168 + 8) + 24))(v165, v121);
      (*(v120 + 8))(v54, v121);
      return TaggedValue_9.init(_:)(v51, v121, v167);
    }

    else
    {
      v100 = v130;
      v101 = v149;
      (*(v130 + 32))(v62, v89, v149);
      (*(*(v164 + 8) + 24))(v165, v101);
      (*(v100 + 8))(v62, v101);
      return TaggedValue_9.init(_:)(v59, v101, v167);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v106 = v132;
    v107 = v89;
    v108 = v151;
    (*(v132 + 32))(v46, v107, v151);
    (*(*(*(&v168 + 1) + 8) + 24))(v165, v108);
    (*(v106 + 8))(v46, v108);
    return TaggedValue_9.init(_:)(v43, v108, v167);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v92 = v133;
    v93 = v152;
    (*(v133 + 32))(v38, v89, v152);
    v94 = v134;
    (*(*(v163 + 8) + 24))(v165, v93);
    (*(v92 + 8))(v38, v93);
    return TaggedValue_9.init(_:)(v94, v93, v167);
  }

  else
  {
    v113 = v135;
    v114 = v153;
    (*(v135 + 32))(v31, v89, v153);
    v115 = v137;
    (*(*(v162 + 8) + 24))(v165, v114);
    (*(v113 + 8))(v31, v114);
    return TaggedValue_9.init(_:)(v115, v114, v167);
  }
}