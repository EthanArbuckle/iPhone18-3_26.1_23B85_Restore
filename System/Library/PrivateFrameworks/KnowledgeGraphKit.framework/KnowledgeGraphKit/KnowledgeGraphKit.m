void __swiftcall MAProgressReporter.split(splitPoints:_:_:)(Swift::tuple_MAProgressReporter_MAProgressReporter_MAProgressReporter_MAProgressReporter *__return_ptr retstr, Swift::Double splitPoints, Swift::Double _, Swift::Double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6460, &qword_25596FD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255970590;
  *(inited + 32) = splitPoints;
  *(inited + 40) = _;
  *(inited + 48) = a4;
  v8 = MAProgressReporter.split(splitPoints:)(inited);
  swift_setDeallocating();
  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C43770](0, v8);
    MEMORY[0x259C43770](1, v8);
    MEMORY[0x259C43770](2, v8);
    MEMORY[0x259C43770](3, v8);
    goto LABEL_7;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 < 3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 != 3)
  {
    v10 = *(v8 + 40);
    v11 = *(v8 + 48);
    v12 = *(v8 + 56);
    *(v8 + 32);
    v10;
    v11;
    v13 = v12;
LABEL_7:

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t MAProgressReporter.split(splitPoints:)(uint64_t a1)
{
  v12 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_255871DB0(v3 + 1);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = 0.0;
    do
    {
      v6 = v5;
      v5 = *v4;
      v7 = [v1 childProgressReporterFromStart:v6 toEnd:*v4];
      MEMORY[0x259C43240]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2559654F0();
      }

      sub_255965560();
      ++v4;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = 0.0;
  }

  v9 = [v1 childProgressReporterFromStart:v5 toEnd:1.0];
  MEMORY[0x259C43240]();
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2559654F0();
  }

  sub_255965560();
  return v12;
}

uint64_t sub_255871DB0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_2559659E0();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_255965B60();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

Swift::Int sub_255871E54@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X8>)
{
  result = SparseValues.index(_:offsetBy:)(*a1, a2);
  *a3 = result;
  return result;
}

Swift::Int sub_255871E80@<X0>(Swift::Int *a1@<X0>, Swift::Int a2@<X1>, Swift::Int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = SparseValues.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = v6.value;
  *(a4 + 8) = v6.is_nil;
  return v6.value;
}

uint64_t sub_255871EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_255871F6C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_255871FC4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25587201C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a3;
  v8 = type metadata accessor for SparseArray();
  return sub_255891CD4(a1, v7, v8);
}

__n128 sub_25587207C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25587208C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v7[1] = *a1;
  v6 = v4;
  result = ElementIdentifierTupleSet.subscript.getter(&v6, v7);
  *a3 = v7[0];
  return result;
}

unint64_t sub_2558720DC(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v5 = *a3;
  v6 = v3;

  return ElementIdentifierTupleSet.subscript.setter(&v6, &v5);
}

uint64_t sub_255872164(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_255872180@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t sub_255872198@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_255899C90(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_2558721D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_255872244(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 8);
  v4 = *a2;
  v7 = *a1;
  v5 = type metadata accessor for Vector();
  return Vector.subscript.getter(v4, v5);
}

void sub_255872300(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

void sub_25587233C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t sub_255872364()
{
  v1 = sub_2559651D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255872438()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255872480()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2558724BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_255872500@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_255872534()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255872574()
{
  v0 = sub_2558725AC();

  return v0;
}

uint64_t sub_2558725AC()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_2558725DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255872650()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_255872694()
{
  sub_255891CC4();
}

uint64_t sub_2558726BC()
{
  sub_255891CCC();
}

uint64_t SparseValues.startIndex.getter(uint64_t a1)
{
  (*(*(a1 + 24) + 32))(*(a1 + 16));

  return 0;
}

uint64_t SparseValues.isEmpty.getter(uint64_t a1)
{
  (*(*(a1 + 24) + 32))(*(a1 + 16), *(a1 + 24));
  swift_getAssociatedTypeWitness();
  sub_2559655E0();
  swift_getWitnessTable();
  v1 = sub_255965780();

  return v1 & 1;
}

uint64_t sub_25587283C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = (*(*(a1 + 24) + 32))(*(a1 + 16), *(a1 + 24));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = a2(v3, AssociatedTypeWitness);

  return v5;
}

Swift::Int __swiftcall SparseValues.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  (*(*(v2 + 24) + 32))(*(v2 + 16));

  result = _ + offsetBy;
  if (__OFADD__(_, offsetBy))
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall SparseValues.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  (*(*(v3 + 24) + 32))(*(v3 + 16));

  v9 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (offsetBy < 1)
  {
    if (v9 > 0 || v9 <= offsetBy)
    {
LABEL_9:
      v7 = _ + offsetBy;
      if (!__OFADD__(_, offsetBy))
      {
        v8 = 0;
        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v9 < 0 || v9 >= offsetBy)
  {
    goto LABEL_9;
  }

  v7 = 0;
  v8 = 1;
LABEL_13:
  result.value = v7;
  result.is_nil = v8;
  return result;
}

uint64_t SparseValues.subscript.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  result = (*(v4 + 40))(v5, v4);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a2)
  {
    v7 = *(result + 8 * a2 + 32);

    (*(v4 + 32))(v5, v4);
    swift_getAssociatedTypeWitness();
    sub_255965640();

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_255872AC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = SparseValues.startIndex.getter(a1);
  *a2 = 0;
  return result;
}

uint64_t sub_255872AEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SparseValues.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_255872B14(uint64_t *a1, unint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  v8[5] = v13;
  if (v6)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  v15 = v14;
  v8[6] = v14;
  v8[7] = sub_255872D04(v8, *a2, a3);
  *v15 = v16;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v15[*(TupleTypeMetadata2 + 48)], v17, AssociatedTypeWitness);
  return sub_255872C8C;
}

void sub_255872C8C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_255872D04(uint64_t *a1, unint64_t a2, uint64_t a3))(void *a1)
{
  v8 = a3 + 16;
  v7 = *(a3 + 16);
  v6 = *(v8 + 8);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  a1[1] = v10;
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  a1[2] = v11;
  *v11 = SparseValues.subscript.getter(v11 + *(TupleTypeMetadata2 + 48), a2, a3);
  return sub_255872E1C;
}

void sub_255872E1C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_255872E6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_255872F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_255965AC0() + 36);
  SparseValues.startIndex.getter(a1);
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = 0;
  return result;
}

uint64_t sub_255872FF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_255873050(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_2558B5970();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t SparseArrayProtocol.reduce<A>(into:update:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = a1;
  v8[7] = a2;
  v8[8] = a3;
  return (*(a6 + 24))(sub_255873264, v8, a5, a4, a6);
}

uint64_t sub_255873170@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, char *)@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for SparseBuffer();
  return SparseBuffer.reduce<A>(into:update:)(a2, a3, v7, a4);
}

uint64_t sub_255873264@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 64);
  return sub_255873170(a1, *(v2 + 48), *(v2 + 56), a2);
}

uint64_t SparseArrayProtocol.union<A>(with:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v12[6] = a1;
  v12[7] = a2;
  v12[8] = a3;
  v9 = *(a6 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for SparseArray();
  return v9(sub_25587348C, v12, v10, a4, a6);
}

uint64_t sub_255873370(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[1];
  v23[0] = *a1;
  v23[1] = v10;
  v11 = a1[3];
  v23[2] = a1[2];
  v23[3] = v11;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v23;
  v21 = a3;
  v22 = a4;
  v12 = *(a8 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for SparseArray();
  return v12(sub_255877178, v15, v13, a6, a8);
}

uint64_t sub_2558734B4@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = a1[1];
  v14[0] = *a1;
  v14[1] = v8;
  v9 = a1[3];
  v14[2] = a1[2];
  v14[3] = v9;
  v10 = a2[1];
  v14[4] = *a2;
  v14[5] = v10;
  v11 = a2[3];
  v14[6] = a2[2];
  v14[7] = v11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for SparseBuffer();
  return SparseBuffer.union(with:combine:)(v14, a3, a4, v12, a5);
}

uint64_t SparseArrayProtocol.intersection<A, B>(with:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a8;
  v14[7] = a9;
  v14[8] = a1;
  v14[9] = a2;
  v14[10] = a3;
  v11 = *(a7 + 24);
  v12 = type metadata accessor for SparseArray();
  return v11(sub_255873644, v14, v12, a4, a7);
}

uint64_t sub_255873644(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 48);
  v4 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = a1[1];
  v18[0] = *a1;
  v18[1] = v7;
  v8 = a1[3];
  v18[2] = a1[2];
  v18[3] = v8;
  v12[2] = v2;
  v12[3] = v3;
  v13 = *(v1 + 32);
  v14 = v5;
  v15 = v4;
  v16 = v18;
  v17 = *(v1 + 72);
  v9 = *(v5 + 24);
  v10 = type metadata accessor for SparseArray();
  return v9(sub_25587710C, v12, v10, v3, v5);
}

uint64_t sub_255873714@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, void *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v9 = a1[1];
  v20[0] = *a1;
  v20[1] = v9;
  v10 = a1[3];
  v20[2] = a1[2];
  v20[3] = v10;
  v11 = a2[1];
  v20[4] = *a2;
  v20[5] = v11;
  v12 = a2[3];
  v20[6] = a2[2];
  v20[7] = v12;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for SparseBuffer();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return SparseBuffer.intersection<A, B>(with:combine:)(v20, a3, a4, v13, AssociatedTypeWitness, a5, AssociatedConformanceWitness, a8, a6);
}

uint64_t SparseArrayProtocol.mapSparseValues<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = a1;
  v11[7] = a2;
  v8 = *(a5 + 24);
  v9 = type metadata accessor for SparseArray();
  return v8(sub_2558739E4, v11, v9, a3, a5);
}

uint64_t sub_2558738FC@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for SparseBuffer();
  return sub_2558A65D0(v3, a2);
}

uint64_t sub_2558739E4@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  return sub_2558738FC(a1, a2);
}

uint64_t SparseArrayProtocol<>.transposed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v102 = a4;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v134 = *(AssociatedTypeWitness - 8);
  v8 = v134[8];
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v132 = &v99 - v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(*(TupleTypeMetadata2 - 8) + 64);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v122 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v121 = &v99 - v13;
  v14 = swift_checkMetadataState();
  v133 = *(v14 - 8);
  v15 = *(v133 + 64);
  MEMORY[0x28223BE20](v14);
  v113 = &v99 - v16;
  v17 = type metadata accessor for SparseValues();
  v130 = *(v17 - 8);
  v18 = *(v130 + 64);
  MEMORY[0x28223BE20](v17);
  v112 = &v99 - v19;
  swift_getWitnessTable();
  v125 = v17;
  v117 = sub_255965AC0();
  v127 = *(v117 - 8);
  v20 = *(v127 + 64);
  MEMORY[0x28223BE20](v117);
  v131 = &v99 - v21;
  v115 = swift_getTupleTypeMetadata2();
  v22 = *(*(v115 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v115);
  v111 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v110 = &v99 - v26;
  v126 = a1;
  v27 = *(a1 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a2;
  v31 = type metadata accessor for SparseValues();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v99 - v34;
  swift_getWitnessTable();
  v36 = sub_255965AC0();
  v100 = *(v36 - 8);
  v37 = *(v100 + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v99 - v38;
  v124 = a3;
  v114 = v14;
  swift_getAssociatedConformanceWitness();
  v128 = AssociatedTypeWitness;
  v40 = type metadata accessor for SparseArray();
  v41 = MEMORY[0x277D84A28];
  swift_getTupleTypeMetadata2();
  v42 = sub_255965520();
  v136 = v40;
  v43 = sub_2558761AC(v42, v41, v40, MEMORY[0x277D84A38]);

  v44 = v126;
  (*(v27 + 16))(v30, v135, v126);
  (*(v27 + 32))(v35, v30, v44);
  (*(v32 + 16))(v39, v35, v31);
  v101 = v36;
  v45 = *(v36 + 36);
  (*(*(v31 + 24) + 32))(*(v31 + 16));

  v46 = v39;
  (*(v32 + 8))(v35, v31);
  v47 = v31;
  *&v39[v45] = 0;
  if (!SparseValues.endIndex.getter(v31))
  {
    v48 = 0;
    goto LABEL_18;
  }

  v99 = v45;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v109 = *(v115 + 48);
  v108 = (v133 + 32);
  v107 = (v130 + 16);
  v106 = (v130 + 8);
  v119 = (v134 + 1);
  v120 = (v134 + 4);
  v103 = (v127 + 8);
  v51 = v125;
  v52 = v115;
  v105 = v31;
  v104 = v39;
  while (1)
  {
    v57 = *(v52 + 48);
    v58 = v111;
    v118 = v50;
    v130 = SparseValues.subscript.getter(&v111[v57], v50, v47);
    v59 = *v108;
    v60 = v110;
    v61 = v109;
    v62 = &v58[v57];
    v63 = v114;
    (*v108)(&v110[v109], v62, v114);
    v64 = &v60[v61];
    v65 = v113;
    v59(v113, v64, v63);
    v66 = v112;
    v67 = v65;
    v54 = v117;
    v59(v112, v67, v63);
    v68 = v131;
    (*v107)(v131, v66, v51);
    v69 = *(v54 + 36);
    (*(*(v51 + 24) + 32))(*(v51 + 16));

    (*v106)(v66, v51);
    *&v68[v69] = 0;
    if (SparseValues.endIndex.getter(v51))
    {
      break;
    }

    v53 = v131;
LABEL_4:
    v55 = v118 + 1;
    (*v103)(v53, v54);
    v47 = v105;
    v46 = v104;
    v56 = SparseValues.endIndex.getter(v105);
    v50 = v55;
    v52 = v115;
    if (v55 == v56)
    {
      *&v46[v99] = v55;
LABEL_18:
      (*(v100 + 8))(v46, v101);
      v96 = v136;
      WitnessTable = swift_getWitnessTable();
      SparseArray.init(_:)(v43, v96, WitnessTable, v102);
      return sub_2558764A4(v48);
    }
  }

  v116 = v69;
  v70 = 0;
  v71 = v128;
  v127 = *(TupleTypeMetadata2 + 48);
  v72 = v132;
  while (1)
  {
    v133 = v70;
    v134 = v49;
    v75 = *(TupleTypeMetadata2 + 48);
    v76 = v122;
    v135 = SparseValues.subscript.getter(&v122[v75], v70, v51);
    v77 = v121;
    v78 = *v120;
    v79 = v127;
    (*v120)(&v121[v127], &v76[v75], v71);
    v78(v72, &v77[v79], v71);
    v80 = swift_allocObject();
    v82 = v123;
    v81 = v124;
    v80[2] = v126;
    v80[3] = v82;
    v80[4] = v81;
    sub_2558764A4(v48);
    swift_isUniquelyReferenced_nonNull_native();
    *&v138 = v43;
    v83 = v135;
    v84 = sub_255875BB8(v135);
    if (__OFADD__(*(v43 + 16), (v85 & 1) == 0))
    {
      break;
    }

    v86 = v84;
    v87 = v85;
    sub_255965AF0();
    v88 = sub_255965AD0();
    v43 = v138;
    if (v88)
    {
      v89 = sub_255875BB8(v83);
      v71 = v128;
      v91 = v133;
      if ((v87 & 1) != (v90 & 1))
      {
        goto LABEL_20;
      }

      v86 = v89;
      v72 = v132;
      v92 = v136;
      if ((v87 & 1) == 0)
      {
LABEL_14:
        v93 = v80[2];
        v94 = v80[3];
        v95 = v80[4];
        sub_2558745B4(&v138);
        v137 = v83;
        sub_255965AE0();
        v72 = v132;
      }
    }

    else
    {
      v71 = v128;
      v72 = v132;
      v91 = v133;
      v92 = v136;
      if ((v87 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v70 = v91 + 1;
    v73 = *(v43 + 56) + 16 * v86;
    SparseArray.append(offset:value:)(v130, v72, v92);
    (*v119)(v72, v71);
    v51 = v125;
    v74 = v131;
    v48 = sub_255876498;
    v49 = v80;
    if (v70 == SparseValues.endIndex.getter(v125))
    {
      *&v74[v116] = v70;
      v48 = sub_255876498;
      v49 = v80;
      v53 = v74;
      v54 = v117;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_20:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

double sub_2558745B4@<D0>(_OWORD *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_255965520();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return SparseArray.init(arrayLiteral:)(v3, AssociatedTypeWitness, AssociatedConformanceWitness, a1);
}

uint64_t sub_2558746A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return SparseArrayProtocol.union<A>(with:combine:)(a2, a8, &v11, v12, v13, v14, v15);
}

uint64_t SparseArrayProtocol<>.sum()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v14[-v10];
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v20 = a1;
  v21 = AssociatedTypeWitness;
  v22 = a2;
  v23 = AssociatedConformanceWitness;
  v24 = v11;
  v25 = sub_2558764CC;
  v26 = v14;
  (*(a2 + 24))(sub_255873264, v19, AssociatedTypeWitness, a1, a2);
  return (*(v7 + 8))(v11, AssociatedTypeWitness);
}

uint64_t SparseArrayProtocol<>.sum(along:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a1 == 1)
    {
      SparseArrayProtocol<>.transposed()(a2, a3, a4, &v18);
      v17 = v18;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for SparseArray();
      swift_getWitnessTable();
      v13 = type metadata accessor for SparseArray();
      WitnessTable = swift_getWitnessTable();
      v15 = swift_getWitnessTable();
      SparseArrayProtocol<>.sum(along:)(0, v13, WitnessTable, v15, a5);
    }

    else
    {
      type metadata accessor for MatrixAxis(0);
      result = sub_255965C30();
      __break(1u);
    }
  }

  else
  {
    MEMORY[0x28223BE20](0);
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a4;
    v16[5] = v8;
    swift_getAssociatedTypeWitness();
    v19 = a2;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = a3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23 = sub_255876540;
    v24 = v16;
    v9 = *(a3 + 24);
    v10 = type metadata accessor for SparseArray();
    return v9(sub_2558739E4, &v18, v10, a2, a3);
  }

  return result;
}

uint64_t * infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return SparseArrayProtocol.intersection<A, B>(with:combine:)(a2, sub_2558771D0, v10, v11, v12, AssociatedTypeWitness, v13, v14, AssociatedConformanceWitness);
}

void * infix<A>(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v25[1] = a1;
  v26 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = v25 - v13;
  v25[0] = a5;
  v15 = *(a5 + 16);
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v18 = a2;
  swift_getAssociatedConformanceWitness();
  sub_255965C40();
  sub_255965BF0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = *(AssociatedConformanceWitness + 8);
  LOBYTE(v15) = sub_255965390();
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  if (v15)
  {
    v21 = sub_255965520();
    SparseArray.init(arrayLiteral:)(v21, AssociatedTypeWitness, AssociatedConformanceWitness, v26);
  }

  else
  {
    v22 = (*(a4 + 32))(a3, a4);
    Vector.init(elements:)(&v27, v22, AssociatedTypeWitness);
    static Vector<A>.*= infix(_:_:)(&v27, v18, AssociatedTypeWitness, v25[0]);
    v23 = v27;
    v24 = (*(a4 + 40))(a3, a4);
    SparseArray.init(values:offsets:)(v23, v24, v26);
  }
}

double *= infix<A>(_:_:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for SparseArray();
  WitnessTable = swift_getWitnessTable();
  * infix<A, B>(_:_:)(&v13, a2, v10, a3, WitnessTable, a4, a5);

  result = *&v14;
  *a1 = v14;
  return result;
}

uint64_t SparseArrayProtocol<>.scalingRows(with:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for SparseArray();
  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  return SparseArrayProtocol.intersection<A, B>(with:combine:)(&v16, sub_2558765B0, v11, a2, v7, v7, a3, WitnessTable, v9);
}

uint64_t SparseArrayProtocol<>.scalingColumns(with:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  SparseArrayProtocol<>.transposed()(a2, a3, a4, v14);
  v13[0] = *a1;
  v13[1] = v14[0];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SparseArray();
  swift_getWitnessTable();
  v9 = type metadata accessor for SparseArray();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  SparseArrayProtocol<>.scalingRows(with:)(v13, v9, WitnessTable, v11, a5);

  v14[0] = v14[1];
  SparseArrayProtocol<>.transposed()(v9, WitnessTable, v11, a6);
}

uint64_t SparseArrayProtocol.mapIntersection<A, B>(with:initialValue:update:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12[2] = a7;
  v12[3] = a8;
  v12[4] = a9;
  v12[5] = a10;
  v12[6] = a11;
  v12[7] = a1;
  v12[8] = a2;
  v12[9] = a3;
  v12[10] = a4;
  v12[11] = a5;
  v12[12] = a6;
  return (*(a10 + 24))(sub_255876630, v12, a9, a7, a10);
}

uint64_t sub_255875370@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t, char *)@<X3>, uint64_t a4@<X4>, void (*a5)(char *, char *)@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v10 = a1[1];
  v18[0] = *a1;
  v18[1] = v10;
  v11 = a1[3];
  v18[2] = a1[2];
  v18[3] = v11;
  v12 = a2[1];
  v18[4] = *a2;
  v18[5] = v12;
  v13 = a2[3];
  v18[6] = a2[2];
  v18[7] = v13;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for SparseBuffer();
  return SparseBuffer.mapIntersection<A>(with:initialValue:update:combine:)(v18, a3, a4, a5, a6, v14, a7);
}

uint64_t SparseArrayProtocol.dotProduct<A>(with:add:multiply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a8;
  v14[5] = a9;
  v14[6] = a1;
  v14[7] = a2;
  v14[8] = a3;
  v14[9] = a4;
  v14[10] = a5;
  v11 = *(a8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v11(sub_2558766C4, v14, AssociatedTypeWitness, a6, a8);
}

uint64_t sub_255875528(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  v12 = a1[3];
  v17[2] = a1[2];
  v17[3] = v12;
  v16[2] = a7;
  v16[3] = a8;
  v16[4] = a9;
  v16[5] = a10;
  v16[6] = v17;
  v16[7] = a3;
  v16[8] = a4;
  v16[9] = a5;
  v16[10] = a6;
  v13 = *(a10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v13(sub_255877094, v16, AssociatedTypeWitness, a8, a10);
}

uint64_t sub_2558755FC@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t, char *)@<X2>, uint64_t a4@<X3>, void (*a5)(char *, char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = a1[1];
  v18[0] = *a1;
  v18[1] = v12;
  v13 = a1[3];
  v18[2] = a1[2];
  v18[3] = v13;
  v14 = a2[1];
  v18[4] = *a2;
  v18[5] = v14;
  v15 = a2[3];
  v18[6] = a2[2];
  v18[7] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for SparseBuffer();
  return SparseBuffer.dotProduct(with:add:multiply:)(v18, a3, a4, a5, a6, v16, a7);
}

uint64_t SparseArrayProtocol<>.dotProduct<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  v13 = v20;
  v14 = AssociatedTypeWitness;
  return SparseArrayProtocol.dotProduct<A>(with:add:multiply:)(a1, sub_2558766FC, v15, sub_255876788, v8, v16, v17, v18, v19);
}

uint64_t SparseArrayProtocol.sparseKroneckerMap<A, B>(with:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a8;
  v14[7] = a9;
  v14[8] = a1;
  v14[9] = a2;
  v14[10] = a3;
  v11 = *(a7 + 24);
  type metadata accessor for SparseArray();
  swift_getWitnessTable();
  v12 = type metadata accessor for SparseArray();
  return v11(sub_255876800, v14, v12, a4, a7);
}

uint64_t sub_2558758B8(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  v12 = a1[3];
  v17[2] = a1[2];
  v17[3] = v12;
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a9;
  v16[7] = a10;
  v16[8] = v17;
  v16[9] = a3;
  v16[10] = a4;
  v13 = *(a9 + 24);
  type metadata accessor for SparseArray();
  swift_getWitnessTable();
  v14 = type metadata accessor for SparseArray();
  return v13(sub_255877068, v16, v14, a6, a9);
}

uint64_t sub_2558759B0@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v10[0] = *a1;
  v10[1] = v4;
  v5 = a1[3];
  v10[2] = a1[2];
  v10[3] = v5;
  v6 = a2[1];
  v10[4] = *a2;
  v10[5] = v6;
  v7 = a2[3];
  v10[6] = a2[2];
  v10[7] = v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for SparseBuffer();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return SparseBuffer.sparseKroneckerMap<A, B>(with:combine:)(v10, v8, a3);
}

uint64_t *sub_255875AF8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *a2 - *result;
  if (*a2 >= *result)
  {
    if (*a2 - *result >= 0)
    {
      return (v4 == 0);
    }
  }

  else
  {
    if (v2 - v3 >= 0)
    {
      v4 = v3 - v2;
      return (v4 == 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_255875B30@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_255875B4C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_255965D50();
  MEMORY[0x259C43B00](a1);
  v4 = sub_255965D90();

  return sub_255875D54(a1, v4);
}

unint64_t sub_255875BB8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_255965D40();

  return sub_255875D54(a1, v4);
}

unint64_t sub_255875BFC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2559651D0();
  sub_255877024(&qword_27F7D60C0);
  v5 = sub_255965310();

  return sub_255875DC0(a1, v5);
}

unint64_t sub_255875C80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_255965D50();
  sub_255965400();
  v6 = sub_255965D90();

  return sub_255875F6C(a1, a2, v6);
}

unint64_t sub_255875CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_255965310();

  return sub_255876024(a1, v9, a2, a3);
}

unint64_t sub_255875D54(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_255875DC0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_2559651D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      sub_255877024(&qword_27F7D60C8);
      v17 = sub_255965390();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_255875F6C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_255965C10())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_255876024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
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
      v21 = sub_255965390();
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

uint64_t sub_2558761AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_255965570())
  {
    sub_255965BA0();
    v13 = sub_255965B90();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_255965570();
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
        if (sub_255965550())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2559659C0();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_255875CF8(v12, a2, v27);
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

double sub_255876498@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2558745B4(a1);
}

uint64_t sub_2558764A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2558764CC()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  swift_getAssociatedTypeWitness();
  return sub_255965B30();
}

uint64_t sub_255876540()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return SparseArrayProtocol<>.sum()(AssociatedTypeWitness, v4, v3);
}

void sub_2558765B0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = v3[2];
  v7 = v3[3];
  v10 = v3[4];
  v9 = v3[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  * infix<A>(_:_:)(a1, a2, AssociatedTypeWitness, v10, v9, a3);
}

uint64_t sub_255876630(_OWORD *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 96);
  v7 = a1[1];
  v18[0] = *a1;
  v18[1] = v7;
  v8 = a1[3];
  v18[2] = a1[2];
  v18[3] = v8;
  v11[2] = v3;
  v11[3] = v2;
  v12 = *(v1 + 32);
  v13 = v4;
  v14 = v18;
  v9 = *(v1 + 80);
  v15 = *(v1 + 64);
  v16 = v9;
  v17 = v6;
  return (*(v4 + 24))(sub_2558770CC, v11, v12);
}

uint64_t sub_255876714(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  v7 = v3[2];
  v8 = v3[4];
  v10 = v3[6];
  v9 = v3[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return a3(a1, a2, AssociatedTypeWitness, *(v10 + 8));
}

uint64_t sub_25587678C()
{
  v1 = v0[2];
  v2 = v0[4];
  v4 = v0[6];
  v3 = v0[7];
  swift_getAssociatedTypeWitness();
  return sub_2559656C0();
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

unint64_t sub_2558768D0()
{
  result = qword_27F7D6018;
  if (!qword_27F7D6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D6018);
  }

  return result;
}

uint64_t sub_255876A98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D6010, &qword_25596E000);
    sub_2558768D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255876BA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_255876C10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_255876D50(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
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
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SeededRandomNumberGenerator(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SeededRandomNumberGenerator(uint64_t result, int a2, int a3)
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

void sub_255876FD8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_255877024(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2559651D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255877094@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  return sub_2558755FC(a1, *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), a2);
}

uint64_t sub_2558770CC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 64);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v6 = *(v2 + 24);
  return sub_255875370(a1, *(v2 + 56), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), a2);
}

uint64_t sub_255877178@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  return sub_2558734B4(a1, *(v2 + 48), *(v2 + 56), *(v2 + 64), a2);
}

uint64_t getEnumTagSinglePayload for AnyNode(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AnyNode(_WORD *result, int a2, int a3)
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

KnowledgeGraphKit::DirectedBinaryAdjacency __swiftcall DirectedBinaryAdjacency.init()()
{
  v1 = v0;
  result.adjacency.targetsBySource._rawValue = sub_255879DA8(MEMORY[0x277D84F90]);
  v1->adjacency.targetsBySource._rawValue = result.adjacency.targetsBySource._rawValue;
  return result;
}

void DirectedBinaryAdjacency.sources.getter(uint64_t *a1@<X8>)
{
  v3 = *v1;

  sub_255879018(v4, a1);
}

uint64_t DirectedBinaryAdjacency.targets.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *a1 = v5;
  v7 = v3;
  return sub_2558773D4(&v7, a1);
}

uint64_t sub_2558773D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
LABEL_10:
    v12 = *(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));

    v13 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v15 + 16);
      [v16 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_25587AF08();
      swift_dynamicCast();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
      v15 = swift_allocObject();
      *(v15 + 16) = v18;
      v17 = *a2;

      *a2 = v15;
    }

    v7 &= v7 - 1;
    [*(v15 + 16) unionWithIdentifierSet_];
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t DirectedBinaryAdjacency.enumerateTargetsBySource(with:)(void (*a1)(uint64_t *, uint64_t *, char *))
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v16 = 0;
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_10:
    v10 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
    v11 = *(*(v3 + 48) + v10);
    v6 &= v6 - 1;
    v14 = *(*(v3 + 56) + v10);
    v15 = v11;

    a1(&v15, &v14, &v16);

    if (v16 == 1)
    {
      goto LABEL_11;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2558776CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v2 = *a1;
  v3 = sub_255879DA8(MEMORY[0x277D84F90]);
  v4 = *(v2 + 16);

  v5 = [v4 startIndex];
  v7 = v6;
  if (v5 == [*(v2 + 16) endIndex])
  {
LABEL_2:

    *v41 = v3;
  }

  else
  {
    v9 = v5;
    while (1)
    {
      v9 = [*(v2 + 16) indexAfterIndex_];
      v7 = v12;
      if (v3[2])
      {
        v13 = sub_255875B4C(v5);
        if (v14)
        {
          [*(*(v3[7] + 8 * v13) + 16) containsIdentifier_];
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_255875B4C(v5);
      v18 = v3[2];
      v19 = (v16 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        break;
      }

      v21 = v16;
      if (v3[3] >= v20)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2558966B4();
        }
      }

      else
      {
        sub_255895430(v20, isUniquelyReferenced_nonNull_native);
        v22 = sub_255875B4C(v5);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_30;
        }

        v17 = v22;
      }

      if ((v21 & 1) == 0)
      {
        v24 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v25 = swift_allocObject();
        *(v25 + 16) = v24;
        v3[(v17 >> 6) + 8] |= 1 << v17;
        *(v3[6] + 8 * v17) = v5;
        *(v3[7] + 8 * v17) = v25;
        v26 = v3[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_29;
        }

        v3[2] = v28;
      }

      v29 = v3[7];
      v30 = *(v29 + 8 * v17);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v29 + 8 * v17);
      if ((v31 & 1) == 0)
      {
        v33 = *(v32 + 16);
        [v33 mutableCopy];
        sub_2559658F0();
        swift_unknownObjectRelease();

        sub_25587AF08();
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v32 = swift_allocObject();
        *(v32 + 16) = v42;
        v34 = *(v29 + 8 * v17);

        *(v29 + 8 * v17) = v32;
      }

      v35 = *(v32 + 16);
      [v35 containsIdentifier_];
      [v35 addIdentifier_];

      if (!v3[2])
      {
        goto LABEL_27;
      }

      v36 = sub_255875B4C(v5);
      if ((v37 & 1) == 0)
      {
        goto LABEL_28;
      }

      if ([*(*(v3[7] + 8 * v36) + 16) isEmpty])
      {
        v38 = sub_255875B4C(v5);
        if (v39)
        {
          v40 = v38;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_2558966B4();
          }

          v10 = v40;
          v11 = *(v3[7] + 8 * v40);
          sub_255879214(v10, v3);
        }
      }

      v5 = v9;
      if (v9 == [*(v2 + 16) endIndex])
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_255965CA0();
    __break(1u);
  }

  return result;
}

unint64_t DirectedBinaryAdjacency.setTargets(_:for:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  return ElementIdentifierTupleSet.subscript.setter(&v5, &v4);
}

uint64_t DirectedBinaryAdjacency.intersectingSources(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = sub_255879DA8(MEMORY[0x277D84F90]);
  v43 = v6;
  if ([*(v4 + 16) count] >= *(v5 + 16))
  {
    v42 = v5;

    sub_25587A388(&v42, v4, &v43);

    v6 = v43;
LABEL_34:
    *a2 = v6;
    return result;
  }

  v7 = *(v4 + 16);

  v8 = [v7 startIndex];
  v10 = v9;
  while (1)
  {
LABEL_3:
    if (v8 == [*(v4 + 16) endIndex])
    {
LABEL_33:

      goto LABEL_34;
    }

    v11 = v8;
LABEL_6:
    v8 = [*(v4 + 16) indexAfterIndex_];
    v10 = v12;
    if (*(v5 + 16) && (v13 = sub_255875B4C(v11), (v14 & 1) != 0))
    {
      v15 = *(*(v5 + 56) + 8 * v13);
      v16 = *(v15 + 16);
    }

    else
    {
      v16 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
      v15 = swift_allocObject();
      *(v15 + 16) = v16;
    }

    v17 = [v16 isEmpty];
    v18 = v17;
    if (!v6[2])
    {
      break;
    }

    sub_255875B4C(v11);
    if ((v18 & 1) == 0)
    {
      goto LABEL_17;
    }

    v20 = v19;

    if ((v20 & 1) == 0 || (v21 = sub_255875B4C(v11), (v22 & 1) == 0))
    {
LABEL_5:

      v11 = v8;
      if (v8 == [*(v4 + 16) endIndex])
      {
        goto LABEL_33;
      }

      goto LABEL_6;
    }

    v37 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2558966B4();
      v6 = v42;
    }

    v39 = *(v6[7] + 8 * v37);

    sub_255879214(v37, v6);
  }

  if (v17)
  {

    goto LABEL_5;
  }

LABEL_17:
  v41 = a2;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v42 = v6;
  v25 = sub_255875B4C(v11);
  v26 = v6[2];
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v6[3] >= v28)
  {
    if ((v23 & 1) == 0)
    {
      v29 = v24;
      sub_2558966B4();
LABEL_21:
      v24 = v29;
    }

    v6 = v42;
    if (v24)
    {
      v32 = v42[7];
      v33 = *(v32 + 8 * v25);
      *(v32 + 8 * v25) = v15;

LABEL_27:
      a2 = v41;

      goto LABEL_3;
    }

    v42[(v25 >> 6) + 8] |= 1 << v25;
    *(v6[6] + 8 * v25) = v11;
    *(v6[7] + 8 * v25) = v15;

    v34 = v6[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (!v35)
    {
      v6[2] = v36;
      goto LABEL_27;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v29 = v24;
  sub_255895430(v28, v23);
  v30 = sub_255875B4C(v11);
  if ((v29 & 1) == (v31 & 1))
  {
    v25 = v30;
    goto LABEL_21;
  }

LABEL_37:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

uint64_t DirectedBinaryAdjacency.targets(forSourceIdentifier:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_255875B4C(*a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v8 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    result = swift_allocObject();
    *(result + 16) = v8;
    *a2 = result;
  }

  return result;
}

uint64_t sub_255877F00@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *, void *, uint64_t)@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  *a3 = sub_255879DA8(MEMORY[0x277D84F90]);
  v9 = v7;

  a2(&v9, a3, v6);
}

uint64_t DirectedBinaryAdjacency.subtractingSources(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  *a2 = sub_255879DA8(MEMORY[0x277D84F90]);
  v7 = v5;

  sub_25587AA1C(&v7, v4, a2);
}

KnowledgeGraphKit::DirectedBinaryAdjacency __swiftcall DirectedBinaryAdjacency.joinOnTargets(_:)(KnowledgeGraphKit::DirectedBinaryAdjacency a1)
{
  v3 = v1;
  v4 = *v2;
  v6 = *a1.adjacency.targetsBySource._rawValue;
  v7 = v4;

  static ElementIdentifierTupleSet.joinOnTargets(_:_:)(&v7, &v6, &v8);

  *v3 = v8;
  return result;
}

Swift::Bool __swiftcall DirectedBinaryAdjacency.contains(source:target:)(KnowledgeGraphKit::ElementIdentifier source, KnowledgeGraphKit::ElementIdentifier target)
{
  v3 = *v2;
  if (*(v3 + 16) && (v4 = *target.rawValue, v5 = sub_255875B4C(*source.rawValue), (v6 & 1) != 0))
  {
    return [*(*(*(v3 + 56) + 8 * v5) + 16) containsIdentifier_];
  }

  else
  {
    return 0;
  }
}

void *DirectedBinaryAdjacency.targets(forSources:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if ([*(*a1 + 16) count] == 1)
  {
    v6 = [*(v4 + 16) startIndex];
    result = [*(v4 + 16) endIndex];
    if (v6 == result)
    {
      __break(1u);
    }

    else if (*(v5 + 16) && (v8 = sub_255875B4C(v6), (v9 & 1) != 0))
    {
      *a2 = *(*(v5 + 56) + 8 * v8);
    }

    else
    {
      v16 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
      result = swift_allocObject();
      result[2] = v16;
      *a2 = result;
    }
  }

  else
  {
    v10 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v26 = v11;
    if ([*(v4 + 16) count] >= *(v5 + 16))
    {
      v25[0] = v5;

      sub_25587AD30(v25, v4, &v26);

      v11 = v26;
    }

    else
    {
      v23 = a2;
      v12 = *(v4 + 16);

      v13 = [v12 startIndex];
      v15 = v14;
      if (v13 != [*(v4 + 16) endIndex])
      {
        v17 = v13;
        do
        {
          v17 = [*(v4 + 16) indexAfterIndex_];
          v15 = v19;
          if (*(v5 + 16))
          {
            v20 = sub_255875B4C(v13);
            if (v21)
            {
              v22 = *(*(v5 + 56) + 8 * v20);

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v11 = v26;
              }

              else
              {
                v18 = *(v11 + 16);
                [v18 mutableCopy];
                sub_2559658F0();
                swift_unknownObjectRelease();

                sub_25587AF08();
                swift_dynamicCast();
                v11 = swift_allocObject();
                *(v11 + 16) = v24;

                v26 = v11;
              }

              [*(v11 + 16) unionWithIdentifierSet_];
            }
          }

          v13 = v17;
        }

        while (v17 != [*(v4 + 16) endIndex]);
      }

      a2 = v23;
    }

    *a2 = v11;
  }

  return result;
}

KnowledgeGraphKit::DirectedBinaryAdjacency __swiftcall DirectedBinaryAdjacency.transposed()()
{
  v53 = v0;
  v2 = *v1;
  v3 = sub_255879DA8(MEMORY[0x277D84F90]);
  v4 = v2 + 64;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  v56 = v2;

  v9 = 0;
  v10 = v3;
  v54 = v8;
  v55 = v2 + 64;
  while (v7)
  {
LABEL_11:
    v13 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
    v57 = v7;
    v58 = *(*(v56 + 48) + v13);
    v14 = *(*(v56 + 56) + v13);
    v15 = *(v14 + 16);
    swift_retain_n();
    v16 = [v15 startIndex];
    v18 = v17;
    if (v16 != [*(v14 + 16) endIndex])
    {
      v11 = v10;
      v19 = v16;
      while (1)
      {
        v22 = v14;
        v19 = [*(v14 + 16) indexAfterIndex_];
        v18 = v23;
        if (*(v11 + 16))
        {
          v24 = sub_255875B4C(v16);
          if (v25)
          {
            [*(*(*(v11 + 56) + 8 * v24) + 16) containsIdentifier_];
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v3;
        v28 = sub_255875B4C(v16);
        v29 = v3[2];
        v30 = (v27 & 1) == 0;
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          break;
        }

        v32 = v27;
        if (v3[3] >= v31)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2558966B4();
          }
        }

        else
        {
          sub_255895430(v31, isUniquelyReferenced_nonNull_native);
          v33 = sub_255875B4C(v16);
          if ((v32 & 1) != (v34 & 1))
          {
            goto LABEL_41;
          }

          v28 = v33;
        }

        v11 = v3;

        if ((v32 & 1) == 0)
        {
          v35 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
          v36 = swift_allocObject();
          *(v36 + 16) = v35;
          v60[(v28 >> 6) + 8] |= 1 << v28;
          *(v60[6] + 8 * v28) = v16;
          *(v60[7] + 8 * v28) = v36;
          v37 = v60[2];
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            goto LABEL_39;
          }

          v60[2] = v39;
        }

        v40 = v60[7];
        v41 = *(v40 + 8 * v28);
        v42 = swift_isUniquelyReferenced_nonNull_native();
        v43 = *(v40 + 8 * v28);
        if ((v42 & 1) == 0)
        {
          v44 = *(v43 + 16);
          [v44 mutableCopy];
          sub_2559658F0();
          swift_unknownObjectRelease();

          sub_25587AF08();
          swift_dynamicCast();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
          v43 = swift_allocObject();
          *(v43 + 16) = v59;
          v45 = *(v40 + 8 * v28);

          *(v40 + 8 * v28) = v43;
        }

        v14 = v22;
        v46 = *(v43 + 16);
        [v46 containsIdentifier_];
        [v46 addIdentifier_];

        if (!v60[2])
        {
          goto LABEL_37;
        }

        v47 = sub_255875B4C(v16);
        if ((v48 & 1) == 0)
        {
          goto LABEL_38;
        }

        if ([*(*(v60[7] + 8 * v47) + 16) isEmpty])
        {
          v49 = sub_255875B4C(v16);
          if (v50)
          {
            v51 = v49;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_2558966B4();
            }

            v20 = v51;
            v21 = *(*(v11 + 56) + 8 * v51);
            sub_255879214(v20, v11);
          }
        }

        v16 = v19;
        v3 = v11;
        v10 = v11;
        if (v19 == [*(v22 + 16) endIndex])
        {
          goto LABEL_5;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v11 = v3;
LABEL_5:
    v7 = (v57 - 1) & v57;

    v3 = v11;
    v8 = v54;
    v4 = v55;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      *v53 = v3;
      return result;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  result.adjacency.targetsBySource._rawValue = sub_255965CA0();
  __break(1u);
  return result;
}

KnowledgeGraphKit::DirectedBinaryAdjacency __swiftcall DirectedBinaryAdjacency.subtracting(_:)(KnowledgeGraphKit::DirectedBinaryAdjacency a1)
{
  v3 = v1;
  v4 = *a1.adjacency.targetsBySource._rawValue;
  v5 = *v2;
  v7 = v4;
  v8 = v5;

  ElementIdentifierTupleSet.subtract(_:)(&v7);
  *v3 = v8;
  return result;
}

KnowledgeGraphKit::DirectedBinaryAdjacency __swiftcall DirectedBinaryAdjacency.union(with:)(KnowledgeGraphKit::DirectedBinaryAdjacency with)
{
  v3 = v1;
  v4 = *v2;
  v6 = *with.adjacency.targetsBySource._rawValue;
  v7 = v4;

  result.adjacency.targetsBySource._rawValue = ElementIdentifierTupleSet.formUnion(_:)(&v6);
  *v3 = v7;
  return result;
}

uint64_t DirectedBinaryAdjacency.targets(minCount:)@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *v2;
  v4 = *v2 + 64;
  v5 = 1 << *(*v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v71 = v3;
  v72 = v8;
  while (2)
  {
    if (v7)
    {
      goto LABEL_11;
    }

    do
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_54;
      }

      if (v12 >= v8)
      {
        v73 = v9;

        v53 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v54 = swift_allocObject();
        v55 = 0;
        *(v54 + 16) = v53;
        v56 = 1 << *(v11 + 32);
        v57 = -1;
        if (v56 < 64)
        {
          v57 = ~(-1 << v56);
        }

        v58 = v57 & *(v11 + 64);
        v59 = (v56 + 63) >> 6;
        v60 = a1;
        if (!v58)
        {
          goto LABEL_43;
        }

        do
        {
LABEL_41:
          while (1)
          {
            v61 = __clz(__rbit64(v58));
            v58 &= v58 - 1;
            v62 = v61 | (v55 << 6);
            if (*(*(v11 + 56) + 8 * v62) >= v60)
            {
              break;
            }

            if (!v58)
            {
              goto LABEL_43;
            }
          }

          v64 = *(*(v11 + 48) + 8 * v62);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = *(v54 + 16);
            [v65 mutableCopy];
            sub_2559658F0();
            swift_unknownObjectRelease();

            sub_25587AF08();
            swift_dynamicCast();
            v66 = swift_allocObject();
            *(v66 + 16) = v74;
            v60 = a1;

            v54 = v66;
          }

          v67 = *(v54 + 16);
          [v67 containsIdentifier_];
          [v67 addIdentifier_];
        }

        while (v58);
LABEL_43:
        while (1)
        {
          v63 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            break;
          }

          if (v63 >= v59)
          {

            result = sub_2558764A4(v73);
            *a2 = v54;
            return result;
          }

          v58 = *(v11 + 64 + 8 * v63);
          ++v55;
          if (v58)
          {
            v55 = v63;
            goto LABEL_41;
          }
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
    }

    while (!v7);
    v10 = v12;
LABEL_11:
    v13 = *(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    v14 = *(v13 + 16);
    swift_retain_n();
    v15 = [v14 startIndex];
    v17 = v16;
    if (v15 == [*(v13 + 16) endIndex])
    {
LABEL_5:
      v7 &= v7 - 1;

      v8 = v72;
      continue;
    }

    break;
  }

  v18 = [*(v13 + 16) indexAfterIndex_];
  v20 = v19;
  sub_2558764A4(v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = sub_255875B4C(v15);
  v24 = *(v11 + 16);
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v28 = v23;
  if (*(v11 + 24) < v27)
  {
    sub_2558956C0(v27, isUniquelyReferenced_nonNull_native);
    v22 = sub_255875B4C(v15);
    if ((v28 & 1) != (v29 & 1))
    {
      goto LABEL_57;
    }

LABEL_17:
    if ((v28 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_20:
    v32 = *(v11 + 56);
    v33 = *(v32 + 8 * v22);
    v34 = __CFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_53;
    }

    *(v32 + 8 * v22) = v35;
    if (v18 != [*(v13 + 16) endIndex])
    {
      v36 = v18;
      while (1)
      {
        v36 = [*(v13 + 16) indexAfterIndex_];
        v20 = v37;
        sub_2558764A4(sub_255878EA0);
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v39 = sub_255875B4C(v18);
        v41 = *(v11 + 16);
        v42 = (v40 & 1) == 0;
        v26 = __OFADD__(v41, v42);
        v43 = v41 + v42;
        if (v26)
        {
          goto LABEL_52;
        }

        v44 = v40;
        if (*(v11 + 24) < v43)
        {
          break;
        }

        if (v38)
        {
          goto LABEL_28;
        }

        v51 = v39;
        sub_255896810();
        v39 = v51;
        if ((v44 & 1) == 0)
        {
LABEL_29:
          *(v11 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          *(*(v11 + 48) + 8 * v39) = v18;
          *(*(v11 + 56) + 8 * v39) = 0;
          v46 = *(v11 + 16);
          v26 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v26)
          {
            goto LABEL_56;
          }

          *(v11 + 16) = v47;
        }

LABEL_31:
        v48 = *(v11 + 56);
        v49 = *(v48 + 8 * v39);
        v34 = __CFADD__(v49, 1);
        v50 = v49 + 1;
        if (v34)
        {
          goto LABEL_53;
        }

        *(v48 + 8 * v39) = v50;
        v18 = v36;
        if (v36 == [*(v13 + 16) endIndex])
        {
          goto LABEL_4;
        }
      }

      sub_2558956C0(v43, v38);
      v39 = sub_255875B4C(v18);
      if ((v44 & 1) != (v45 & 1))
      {
        goto LABEL_57;
      }

LABEL_28:
      if ((v44 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

LABEL_4:
    v9 = sub_255878EA0;
    v3 = v71;
    goto LABEL_5;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_17;
  }

  v52 = v22;
  sub_255896810();
  v22 = v52;
  if (v28)
  {
    goto LABEL_20;
  }

LABEL_18:
  *(v11 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  *(*(v11 + 48) + 8 * v22) = v15;
  *(*(v11 + 56) + 8 * v22) = 0;
  v30 = *(v11 + 16);
  v26 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v26)
  {
    *(v11 + 16) = v31;
    goto LABEL_20;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

Swift::Void __swiftcall DirectedBinaryAdjacency.insert(source:target:)(KnowledgeGraphKit::ElementIdentifier source, KnowledgeGraphKit::ElementIdentifier target)
{
  v2 = *source.rawValue;
  v3 = *target.rawValue;
  v4 = v2;
  ElementIdentifierTupleSet.insert(_:)(&v6, &v5, &v4, &v3);
}

Swift::Void __swiftcall DirectedBinaryAdjacency.remove(source:target:)(KnowledgeGraphKit::ElementIdentifier source, KnowledgeGraphKit::ElementIdentifier target)
{
  v2 = *source.rawValue;
  v4 = *target.rawValue;
  v5 = v2;
  v3._0.rawValue = &v5;
  v3._1.rawValue = &v4;
  ElementIdentifierTupleSet.remove(_:)(v3);
}

Swift::Void __swiftcall DirectedBinaryAdjacency.formUnion(_:)(KnowledgeGraphKit::DirectedBinaryAdjacency a1)
{
  v1 = *a1.adjacency.targetsBySource._rawValue;

  ElementIdentifierTupleSet.formUnion(_:)(&v1);
}

Swift::Void __swiftcall DirectedBinaryAdjacency.subtract(_:)(KnowledgeGraphKit::DirectedBinaryAdjacency a1)
{
  v1 = *a1.adjacency.targetsBySource._rawValue;

  ElementIdentifierTupleSet.subtract(_:)(&v1);
}

Swift::Void __swiftcall DirectedBinaryAdjacency.removeTargets(for:)(KnowledgeGraphKit::ElementIdentifier a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_255875B4C(*a1.rawValue);
  if (v5)
  {
    v6 = v4;
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2558966B4();
      v9 = v12;
    }

    v10 = v6;
    v11 = *(*(v9 + 56) + 8 * v6);
    sub_255879214(v10, v9);

    *v2 = v9;
  }
}

void sub_255879018(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_allocWithZone(KGMutableElementIdentifierSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
  v4 = swift_allocObject();
  v5 = 0;
  *(v4 + 16) = v3;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v17 = a1;
  while (v9)
  {
LABEL_10:
    v13 = *(*(a1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v9)))));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = *(v4 + 16);
      [v14 mutableCopy];
      sub_2559658F0();
      swift_unknownObjectRelease();

      sub_25587AF08();
      swift_dynamicCast();
      v15 = swift_allocObject();
      *(v15 + 16) = v18;
      a1 = v17;

      v4 = v15;
    }

    v9 &= v9 - 1;
    v11 = *(v4 + 16);
    [v11 containsIdentifier_];
    [v11 addIdentifier_];
  }

  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      *a2 = v4;
      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v5;
    if (v9)
    {
      v5 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_255879214(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_255965940() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_255965D50();
      MEMORY[0x259C43B00](v10);
      result = sub_255965D90();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2558793A8(int64_t a1, uint64_t a2)
{
  v4 = sub_2559651D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_255965940();
    v14 = v12;
    v39 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = v16;
    do
    {
      v17 = v9;
      v18 = v40 * v11;
      v19 = v14;
      v20 = v15;
      v38(v8, *(a2 + 48) + v40 * v11, v4);
      v21 = *(a2 + 40);
      sub_25587AFF4();
      v22 = sub_255965310();
      (*v37)(v8, v4);
      v14 = v19;
      v23 = v22 & v19;
      if (a1 >= v39)
      {
        if (v23 >= v39 && a1 >= v23)
        {
LABEL_15:
          v26 = *(a2 + 48);
          v27 = v26 + v40 * a1;
          v28 = v26 + v18 + v40;
          v29 = v40 * a1 < v18 || v27 >= v28;
          v15 = v20;
          if (v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v30 = v40 * a1 == v18;
            v9 = v17;
            if (!v30)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v39 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

uint64_t sub_255879660(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_255965940() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_255965D50();

      sub_255965400();
      v14 = sub_255965D90();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_255879810(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_255875B4C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2558966B4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_255895430(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_255875B4C(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_255965CA0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_2558964FC(v9, a2, a1, v20);
  }
}

uint64_t sub_255879934(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_2559651D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_255875BFC(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_25589695C();
      goto LABEL_9;
    }

    sub_255895940(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_255875BFC(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_255965CA0();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = *v27;
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_255896540(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_255879B10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_255875C80(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_255896BE8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_255895CF8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_255875C80(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_255965CA0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_255896600(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_255879C58(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_255875C80(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_255896EC0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_255896244(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_255875C80(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_255965CA0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_25587B098(a1, v23);
  }

  else
  {
    sub_255896648(v11, a2, a3, a1, v22);
  }
}

void *sub_255879DA8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60E0, &unk_25596E400);
  v3 = sub_255965B90();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_255875B4C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_255875B4C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
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

unint64_t sub_255879EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D8, &qword_25596F030);
    v3 = sub_255965B90();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255875C80(v5, v6);
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

uint64_t sub_255879FFC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v52 = v3;

  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v9 << 9) | (8 * v11);
    v13 = *(*(v52 + 48) + v12);
    v14 = *(*(*(v52 + 56) + v12) + 16);
    v15 = *(a3 + 16);
    swift_retain_n();
    v16 = v14;
    v17 = v15;
    v18 = [v16 identifierSetByIntersectingIdentifierSet_];
    [v18 mutableCopy];
    sub_2559658F0();
    swift_unknownObjectRelease();

    sub_25587AF08();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    v19 = swift_allocObject();
    *(v19 + 16) = v54;

    v20 = [*(v19 + 16) isEmpty];
    v21 = v20;
    if (*(*a2 + 16))
    {
      sub_255875B4C(v13);
      if ((v21 & 1) == 0)
      {
        v33 = *a2;
LABEL_19:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *a2;
        v56 = *a2;
        *a2 = 0x8000000000000000;
        v36 = sub_255875B4C(v13);
        v38 = *(v35 + 16);
        v39 = (v37 & 1) == 0;
        v40 = __OFADD__(v38, v39);
        v41 = v38 + v39;
        if (v40)
        {
          goto LABEL_33;
        }

        v42 = v37;
        if (*(v35 + 24) >= v41)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_24;
          }

          v47 = v36;
          sub_2558966B4();
          v36 = v47;
          v44 = v56;
          if ((v42 & 1) == 0)
          {
            goto LABEL_27;
          }

LABEL_25:
          v45 = v44[7];
          v46 = *(v45 + 8 * v36);
          *(v45 + 8 * v36) = v19;
        }

        else
        {
          sub_255895430(v41, isUniquelyReferenced_nonNull_native);
          v36 = sub_255875B4C(v13);
          if ((v42 & 1) != (v43 & 1))
          {
            goto LABEL_35;
          }

LABEL_24:
          v44 = v56;
          if (v42)
          {
            goto LABEL_25;
          }

LABEL_27:
          v44[(v36 >> 6) + 8] |= 1 << v36;
          *(v44[6] + 8 * v36) = v13;
          *(v44[7] + 8 * v36) = v19;
          v48 = v44[2];
          v40 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v40)
          {
            goto LABEL_34;
          }

          v44[2] = v49;
        }

        *a2 = v44;
        goto LABEL_30;
      }

      v23 = v22;

      if (v23 & 1) != 0 && (v24 = *a2, v25 = sub_255875B4C(v13), (v26))
      {
        v27 = v25;
        v28 = *a2;
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v30 = *a2;
        v55 = *a2;
        if ((v29 & 1) == 0)
        {
          sub_2558966B4();
          v30 = v55;
        }

        v31 = v27;
        v32 = *(*(v30 + 56) + 8 * v27);
        sub_255879214(v31, v30);
        *a2 = v30;
      }

      else
      {
LABEL_30:
      }
    }

    else
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

uint64_t sub_25587A388(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *a1 + 64;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v52 = a2;
  v53 = v5;
  while (v9)
  {
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (v11 << 9) | (8 * v13);
    v15 = *(*(v5 + 48) + v14);
    v16 = *(*(v5 + 56) + v14);
    v17 = *(a2 + 16);

    if (![v17 containsIdentifier_])
    {
      goto LABEL_4;
    }

    v18 = *(v16 + 16);

    v19 = [v18 isEmpty];
    v20 = v19;
    if (*(*a3 + 16))
    {
      sub_255875B4C(v15);
      if (v20)
      {
        v22 = v21;

        v5 = v53;
        if (v22 & 1) != 0 && (v23 = *a3, v24 = sub_255875B4C(v15), (v25))
        {
          v26 = v24;
          v27 = *a3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = *a3;
          v54 = *a3;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2558966B4();
            v29 = v54;
          }

          v30 = v26;
          v31 = *(*(v29 + 56) + 8 * v26);
          sub_255879214(v30, v29);
          *a3 = v29;
        }

        else
        {
LABEL_4:
        }
      }

      else
      {
        v32 = *a3;
LABEL_21:
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v34 = a3;
        v35 = v33;
        v36 = *v34;
        v55 = *v34;
        v37 = v34;
        *v34 = 0x8000000000000000;
        v38 = sub_255875B4C(v15);
        v40 = v36[2];
        v41 = (v39 & 1) == 0;
        v42 = __OFADD__(v40, v41);
        v43 = v40 + v41;
        if (v42)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          result = sub_255965CA0();
          __break(1u);
          return result;
        }

        v44 = v39;
        if (v36[3] >= v43)
        {
          if ((v35 & 1) == 0)
          {
            v50 = v38;
            sub_2558966B4();
            v38 = v50;
          }
        }

        else
        {
          sub_255895430(v43, v35);
          v38 = sub_255875B4C(v15);
          if ((v44 & 1) != (v45 & 1))
          {
            goto LABEL_38;
          }
        }

        a3 = v37;
        a2 = v52;
        if (v44)
        {
          v46 = v55[7];
          v47 = *(v46 + 8 * v38);
          *(v46 + 8 * v38) = v16;
        }

        else
        {
          v55[(v38 >> 6) + 8] |= 1 << v38;
          *(v55[6] + 8 * v38) = v15;
          *(v55[7] + 8 * v38) = v16;
          v48 = v55[2];
          v42 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v42)
          {
            goto LABEL_37;
          }

          v55[2] = v49;
        }

        *a3 = v55;

        v5 = v53;
      }
    }

    else
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_21;
      }

      v5 = v53;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_25587A69C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v52 = v3;

  v9 = 0;
  while (v7)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v9 << 9) | (8 * v11);
    v13 = *(*(v52 + 48) + v12);
    v14 = *(*(*(v52 + 56) + v12) + 16);
    v15 = *(a3 + 16);

    v16 = v14;
    v17 = v15;
    v18 = [v16 identifierSetBySubtractingIdentifierSet_];
    [v18 mutableCopy];
    sub_2559658F0();
    swift_unknownObjectRelease();

    sub_25587AF08();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
    v19 = swift_allocObject();
    *(v19 + 16) = v54;
    v20 = [v54 isEmpty];
    v21 = v20;
    if (*(*a2 + 16))
    {
      sub_255875B4C(v13);
      if ((v21 & 1) == 0)
      {
        v33 = *a2;
LABEL_19:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *a2;
        v56 = *a2;
        *a2 = 0x8000000000000000;
        v36 = sub_255875B4C(v13);
        v38 = *(v35 + 16);
        v39 = (v37 & 1) == 0;
        v40 = __OFADD__(v38, v39);
        v41 = v38 + v39;
        if (v40)
        {
          goto LABEL_33;
        }

        v42 = v37;
        if (*(v35 + 24) >= v41)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_24;
          }

          v47 = v36;
          sub_2558966B4();
          v36 = v47;
          v44 = v56;
          if ((v42 & 1) == 0)
          {
            goto LABEL_27;
          }

LABEL_25:
          v45 = v44[7];
          v46 = *(v45 + 8 * v36);
          *(v45 + 8 * v36) = v19;
        }

        else
        {
          sub_255895430(v41, isUniquelyReferenced_nonNull_native);
          v36 = sub_255875B4C(v13);
          if ((v42 & 1) != (v43 & 1))
          {
            goto LABEL_35;
          }

LABEL_24:
          v44 = v56;
          if (v42)
          {
            goto LABEL_25;
          }

LABEL_27:
          v44[(v36 >> 6) + 8] |= 1 << v36;
          *(v44[6] + 8 * v36) = v13;
          *(v44[7] + 8 * v36) = v19;
          v48 = v44[2];
          v40 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v40)
          {
            goto LABEL_34;
          }

          v44[2] = v49;
        }

        *a2 = v44;
        goto LABEL_30;
      }

      v23 = v22;

      if (v23 & 1) != 0 && (v24 = *a2, v25 = sub_255875B4C(v13), (v26))
      {
        v27 = v25;
        v28 = *a2;
        v29 = swift_isUniquelyReferenced_nonNull_native();
        v30 = *a2;
        v55 = *a2;
        if ((v29 & 1) == 0)
        {
          sub_2558966B4();
          v30 = v55;
        }

        v31 = v27;
        v32 = *(*(v30 + 56) + 8 * v27);
        sub_255879214(v31, v30);
        *a2 = v30;
      }

      else
      {
LABEL_30:
      }
    }

    else
    {
      if ((v20 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_255965CA0();
  __break(1u);
  return result;
}

uint64_t sub_25587AA1C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *a1 + 64;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v52 = a2;
  v53 = v5;
  while (v9)
  {
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (v11 << 9) | (8 * v13);
    v15 = *(*(v5 + 48) + v14);
    v16 = *(*(v5 + 56) + v14);
    v17 = *(a2 + 16);

    if ([v17 containsIdentifier_])
    {
      goto LABEL_4;
    }

    v18 = *(v16 + 16);

    v19 = [v18 isEmpty];
    v20 = v19;
    if (*(*a3 + 16))
    {
      sub_255875B4C(v15);
      if (v20)
      {
        v22 = v21;

        v5 = v53;
        if (v22 & 1) != 0 && (v23 = *a3, v24 = sub_255875B4C(v15), (v25))
        {
          v26 = v24;
          v27 = *a3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = *a3;
          v54 = *a3;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2558966B4();
            v29 = v54;
          }

          v30 = v26;
          v31 = *(*(v29 + 56) + 8 * v26);
          sub_255879214(v30, v29);
          *a3 = v29;
        }

        else
        {
LABEL_4:
        }
      }

      else
      {
        v32 = *a3;
LABEL_21:
        v33 = swift_isUniquelyReferenced_nonNull_native();
        v34 = a3;
        v35 = v33;
        v36 = *v34;
        v55 = *v34;
        v37 = v34;
        *v34 = 0x8000000000000000;
        v38 = sub_255875B4C(v15);
        v40 = v36[2];
        v41 = (v39 & 1) == 0;
        v42 = __OFADD__(v40, v41);
        v43 = v40 + v41;
        if (v42)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          result = sub_255965CA0();
          __break(1u);
          return result;
        }

        v44 = v39;
        if (v36[3] >= v43)
        {
          if ((v35 & 1) == 0)
          {
            v50 = v38;
            sub_2558966B4();
            v38 = v50;
          }
        }

        else
        {
          sub_255895430(v43, v35);
          v38 = sub_255875B4C(v15);
          if ((v44 & 1) != (v45 & 1))
          {
            goto LABEL_38;
          }
        }

        a3 = v37;
        a2 = v52;
        if (v44)
        {
          v46 = v55[7];
          v47 = *(v46 + 8 * v38);
          *(v46 + 8 * v38) = v16;
        }

        else
        {
          v55[(v38 >> 6) + 8] |= 1 << v38;
          *(v55[6] + 8 * v38) = v15;
          *(v55[7] + 8 * v38) = v16;
          v48 = v55[2];
          v42 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v42)
          {
            goto LABEL_37;
          }

          v55[2] = v49;
        }

        *a3 = v55;

        v5 = v53;
      }
    }

    else
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_21;
      }

      v5 = v53;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_25587AD30(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *a1 + 64;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
LABEL_11:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v15 = *(*(v5 + 48) + v14);
    v16 = *(*(v5 + 56) + v14);
    v17 = *(a2 + 16);

    if ([v17 containsIdentifier_])
    {

      v18 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *a3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v20 + 16);
        [v21 mutableCopy];
        sub_2559658F0();
        swift_unknownObjectRelease();

        sub_25587AF08();
        swift_dynamicCast();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60D0, &qword_25596E3B0);
        v20 = swift_allocObject();
        *(v20 + 16) = v23;
        v22 = *a3;

        *a3 = v20;
      }

      [*(v20 + 16) unionWithIdentifierSet_];
    }

    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25587AF08()
{
  result = qword_2810B7360;
  if (!qword_2810B7360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810B7360);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElementIdentifierSet(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ElementIdentifierSet(uint64_t result, int a2, int a3)
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

unint64_t sub_25587AFF4()
{
  result = qword_27F7D60C0;
  if (!qword_27F7D60C0)
  {
    sub_2559651D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D60C0);
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

_OWORD *sub_25587B098(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25587B0A8(uint64_t *a1, float a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v13 = MEMORY[0x277D84F90];
    result = sub_2558A54D0(0, v4, 0);
    v7 = 0;
    v8 = v13;
    while (v7 < *(v3 + 16))
    {
      v9 = *(v3 + 4 * v7 + 32);
      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_2558A54D0((v10 > 1), v11 + 1, 1);
      }

      ++v7;
      *(v13 + 16) = v11 + 1;
      *(v13 + 4 * v11 + 32) = v9 * a2;
      if (v4 == v7)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = *a1;

    v8 = MEMORY[0x277D84F90];
LABEL_9:
    *a1 = v8;
  }

  return result;
}

uint64_t sub_25587B1B4(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v13 = MEMORY[0x277D84F90];
    result = sub_2558A5784(0, v4, 0);
    v7 = 0;
    v8 = v13;
    while (v7 < *(v3 + 16))
    {
      v9 = *(v3 + 8 * v7 + 32);
      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_2558A5784((v10 > 1), v11 + 1, 1);
      }

      ++v7;
      *(v13 + 16) = v11 + 1;
      *(v13 + 8 * v11 + 32) = v9 * a2;
      if (v4 == v7)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = *a1;

    v8 = MEMORY[0x277D84F90];
LABEL_9:
    *a1 = v8;
  }

  return result;
}

id MAFloatVectorWrapper.__allocating_init(floatVector:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MAFloatVectorWrapper.__allocating_init(array:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MAFloatVectorWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAFloatVectorWrapper.init()()
{
  *&v0[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = MEMORY[0x277D84F90];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MAFloatVectorWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MAMutableFloatVectorWrapper.floatVector.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector) = v2;
}

uint64_t (*MAMutableFloatVectorWrapper.floatVector.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  a1[2] = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_25587B528;
}

uint64_t sub_25587B528(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  v4 = *(v2 + v1);
  *(v2 + v1) = v3;
}

id MAMutableFloatVectorWrapper.__allocating_init(floatVector:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = *a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

id _s17KnowledgeGraphKit20MAFloatVectorWrapperC05floatE0AcA0E0VySfG_tcfc_0(void *a1)
{
  *&v1[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

id MAMutableFloatVectorWrapper.__allocating_init(array:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v5, sel_init);
}

id _s17KnowledgeGraphKit20MAFloatVectorWrapperC5arrayACSaySfG_tcfc_0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_25587B674(char *a1)
{
  *&a1[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = sub_2559654C0();
  v3.receiver = a1;
  v3.super_class = type metadata accessor for MAFloatVectorWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

id MAMutableFloatVectorWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MAMutableFloatVectorWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MAFloatVectorWrapper.__allocating_init(floats:count:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithFloats:a1 count:a2];
}

uint64_t MAFloatVectorWrapper.init(floats:count:)(const void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_2558801D8(a2, 0);
    memcpy(v5 + 4, a1, 4 * a2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v8 = v5;
  v6 = (*(ObjectType + 120))(&v8);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t static MAFloatVectorWrapper.zeros(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v2 = result;
      v3 = sub_255965530();
      *(v3 + 16) = v2;
      bzero((v3 + 32), 4 * v2);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    v4 = v3;
    return (*(v1 + 120))(&v4);
  }

  return result;
}

uint64_t static MAFloatVectorWrapper.ones(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v2 = result;
      v3 = sub_255965530();
      *(v3 + 16) = v2;
      memset_pattern16((v3 + 32), &unk_25596E4C0, 4 * v2);
    }

    else
    {
      v3 = MEMORY[0x277D84F90];
    }

    v4 = v3;
    return (*(v1 + 120))(&v4);
  }

  return result;
}

uint64_t static MAFloatVectorWrapper.repeating(float:count:)(uint64_t result, int32x2_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = result;
    if (result)
    {
      v4 = sub_255965530();
      *(v4 + 16) = v3;
      v5 = (v4 + 32);
      if (v3 > 7)
      {
        v6 = v3 & 0x7FFFFFFFFFFFFFF8;
        v5 += v3 & 0x7FFFFFFFFFFFFFF8;
        v7 = a2.i32[0];
        v8 = vdupq_lane_s32(a2, 0);
        v9 = (v4 + 48);
        v10 = v3 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v9[-1] = v8;
          *v9 = v8;
          v9 += 2;
          v10 -= 8;
        }

        while (v10);
        if (v6 == v3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v6 = 0;
        v7 = a2.i32[0];
      }

      v11 = v3 - v6;
      do
      {
        *v5++ = v7;
        --v11;
      }

      while (v11);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

LABEL_11:
    v13 = v4;
    return (*(v2 + 120))(&v13);
  }

  __break(1u);
  return result;
}

id MAFloatVectorWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for MAFloatVectorWrapper();
  *a1 = v3;

  return v3;
}

id MAFloatVectorWrapper.mutableCopy(with:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v4 = type metadata accessor for MAMutableFloatVectorWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v3;
  v7.receiver = v5;
  v7.super_class = type metadata accessor for MAFloatVectorWrapper();

  result = objc_msgSendSuper2(&v7, sel_init);
  a1[3] = v4;
  *a1 = result;
  return result;
}

id MAMutableFloatVectorWrapper.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v4 = type metadata accessor for MAFloatVectorWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v3;
  v7.receiver = v5;
  v7.super_class = v4;

  result = objc_msgSendSuper2(&v7, sel_init);
  a1[3] = v4;
  *a1 = result;
  return result;
}

Swift::Float __swiftcall MAFloatVectorWrapper.float(at:)(Swift::Int at)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(&v5);
  if (at < 0)
  {
    __break(1u);
  }

  else if (*(v5 + 16) > at)
  {
    v4 = *(v5 + 4 * at + 32);

    return v4;
  }

  __break(1u);
  return result;
}

id MAFloatVectorWrapper.vectorBySubtractingScalar(_:)()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(&v9);
  v1 = v9;
  v8 = v9;
  v2 = sub_2558802E0(*(v9 + 16), sub_255880594);
  v3 = *(v1 + 16);

  if (v3 == *(v2 + 16))
  {
    v5 = type metadata accessor for MAFloatVectorWrapper();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v2;
    v7.receiver = v6;
    v7.super_class = v5;
    return objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25587C178(uint64_t (*a1)(void *, uint64_t *))
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(&v11);
  v3 = v11;
  v10 = v11;
  v4 = sub_2558802E0(*(v11 + 16), a1);
  v5 = *(v3 + 16);

  if (v5 == *(v4 + 16))
  {
    v7 = type metadata accessor for MAFloatVectorWrapper();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v4;
    v9.receiver = v8;
    v9.super_class = v7;
    return objc_msgSendSuper2(&v9, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MAFloatVectorWrapper.vectorByDividingByScalar(_:)()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(&v9);
  v1 = v9;
  v8 = v9;
  v2 = sub_2558802E0(*(v9 + 16), sub_2558806AC);
  v3 = *(v1 + 16);

  if (v3 == *(v2 + 16))
  {
    v5 = type metadata accessor for MAFloatVectorWrapper();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v2;
    v7.receiver = v6;
    v7.super_class = v5;
    return objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_25587C414(void *a1, uint64_t (*a2)(void *, uint64_t *))
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x70))(&v18);
  v7 = v18;
  result = (*((*v5 & *a1) + 0x70))(&v17, v6);
  v9 = *(v7 + 16);
  if (v9 == *(v17 + 16))
  {
    v15 = v17;
    v16 = v7;
    MEMORY[0x28223BE20](result);
    v10 = sub_2558802E0(v9, a2);
    v11 = *(v10 + 16);

    if (v9 == v11)
    {
      v12 = type metadata accessor for MAFloatVectorWrapper();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v10;
      v14.receiver = v13;
      v14.super_class = v12;
      return objc_msgSendSuper2(&v14, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id MAFloatVectorWrapper.vectorByElementwiseRaisingToExponent(_:)(float a1)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(&v8);
  sub_25587F068(&v8, a1);
  v3 = v8;
  v4 = type metadata accessor for MAFloatVectorWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

float MAFloatVectorWrapper.dotProductWithWrapper(_:)(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v12);
  v5 = v12[0];
  (*((*v3 & *a1) + 0x70))(&v11, v4);
  v6 = *(v5 + 16);
  if (v6 != *(v11 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_dotpr((v5 + 32), 1, (v11 + 32), 1, &__C, v6);
  v7 = __C;

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

id MAFloatVectorWrapper.slice(from:to:)(uint64_t a1, uint64_t a2)
{
  (*((*MEMORY[0x277D85000] & *v3) + 0x70))(&v14);
  if (a2 < a1)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a1 < 0)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = v14;
  v6 = *(v14 + 16);
  if (v6 < a1 || v6 < a2)
  {
    goto LABEL_11;
  }

  if (v6 != a2 - a1)
  {
LABEL_12:
    sub_255880084(v2, v2 + 32, a1, (2 * a2) | 1);
    v12 = v11;

    v2 = v12;
  }

  v8 = type metadata accessor for MAFloatVectorWrapper();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v2;
  v13.receiver = v9;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t MAFloatVectorWrapper.count.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(&v3);
  v1 = *(v3 + 16);

  return v1;
}

Swift::Float __swiftcall MAFloatVectorWrapper.sum()()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CB8788];

  return sub_25587CE0C(v1);
}

Swift::Float __swiftcall MAFloatVectorWrapper.sumOfSquares()()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CB8798];

  return sub_25587CE0C(v1);
}

Swift::Float __swiftcall MAFloatVectorWrapper.mean()()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CB8768];

  return sub_25587CE0C(v1);
}

float sub_25587CE0C(void (*a1)(uint64_t, uint64_t, int *, uint64_t))
{
  v8[1] = *MEMORY[0x277D85DE8];
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v8);
  v3 = *(v8[0] + 16);
  v7 = 2143289344;
  a1(v8[0] + 32, 1, &v7, v3);
  v4 = *&v7;

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

float sub_25587CF40(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, int *, uint64_t))
{
  v12[1] = *MEMORY[0x277D85DE8];
  (*((*MEMORY[0x277D85000] & *a1) + 0x70))(v12);
  v5 = v12[0];
  v6 = *(v12[0] + 16);
  v11 = 2143289344;
  v7 = a1;
  a3(v5 + 32, 1, &v11, v6);
  v8 = *&v11;

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

Swift::Float __swiftcall MAFloatVectorWrapper.standardDeviation()()
{
  v5[1] = *MEMORY[0x277D85DE8];
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v5);
  __StandardDeviation = 0;
  vDSP_normalize((v5[0] + 32), 1, 0, 1, &__StandardDeviation + 1, &__StandardDeviation, *(v5[0] + 16));
  v1 = *&__StandardDeviation;

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

void *MAFloatVectorWrapper.data()()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x70))(&v4);
  v2 = *(v4 + 16);
  if (v2 >> 61)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_25587D358(v4 + 32, v4 + 32 + 4 * v2);

    return v3;
  }

  return result;
}

uint64_t sub_25587D358(uint64_t a1, uint64_t a2)
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
      v6 = sub_255880910(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_255880A4C(v3, v4);
    }

    else
    {
      v6 = sub_2558809C8(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

id sub_25587D4C8(void *a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x70))(&v9);
  v5 = v9;
  v6 = a1;
  a3(v5, MEMORY[0x277D83A90]);

  v7 = sub_2559653D0();

  return v7;
}

uint64_t sub_25587D5AC(uint64_t (*a1)(uint64_t, void))
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(&v5);
  v3 = a1(v5, MEMORY[0x277D83A90]);

  return v3;
}

id MAFloatVectorWrapper.naturalLogarithm()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(&v6);
  sub_25587D6E8(v6, &v7);

  v1 = v7;
  v2 = type metadata accessor for MAFloatVectorWrapper();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_25587D6E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2558A54D0(0, v3, 0);
    v4 = v12;
    v6 = (a1 + 32);
    v7 = v3;
    do
    {
      v8 = logf(*v6);
      v10 = *(v12 + 16);
      v9 = *(v12 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = v8;
        sub_2558A54D0((v9 > 1), v10 + 1, 1);
        v8 = v11;
      }

      *(v12 + 16) = v10 + 1;
      *(v12 + 4 * v10 + 32) = v8;
      ++v6;
      --v7;
    }

    while (v7);
  }

  *a2 = v4;
  if (v3 != *(v4 + 16))
  {
    __break(1u);
  }
}

id MAFloatVectorWrapper.naturalLogarithmIfPositive()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v1(&v17);
  sub_25587D6E8(v17, &v18);

  v3 = v18;
  v4 = *(v18 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v15 = v1;
    v17 = MEMORY[0x277D84F90];
    v2 = sub_2558A5724(0, v4, 0);
    v5 = v17;
    v6 = (v3 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      v17 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        v2 = sub_2558A5724((v9 > 1), v10 + 1, 1);
        v5 = v17;
      }

      *(v5 + 16) = v10 + 1;
      *(v5 + v10 + 32) = (~v7 & 0x7F800000) == 0;
      --v4;
    }

    while (v4);
    v1 = v15;
  }

  (v1)(&v17, v2);
  sub_25587DA48(v5, v17);

  v11 = v18;
  v12 = type metadata accessor for MAFloatVectorWrapper();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector] = v11;
  v16.receiver = v13;
  v16.super_class = v12;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_25587DA48(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  v6 = *v2;
  if (v5 != *(*v2 + 16))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = a2;
  if (*(a2 + 16) != v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = a1;
  v7 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if (result)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

LABEL_11:
  result = sub_2558803F4(v6);
  v6 = result;
  *v2 = result;
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_5:
  v9 = (v6 + 32);
  v10 = (v4 + 32);
  v11 = (v3 + 32);
  do
  {
    if (*v11 == 1)
    {
      *v9 = *v10;
    }

    ++v9;
    ++v10;
    ++v11;
    --v5;
  }

  while (v5);
LABEL_12:
  *v2 = v6;
  return result;
}

Swift::Void __swiftcall MAMutableFloatVectorWrapper.append(float:)(Swift::Float a1)
{
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_2558913D4(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_2558913D4((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  *&v4[4 * v6 + 32] = a1;
  v7 = *(v1 + v3);
  *(v1 + v3) = v4;
}

uint64_t MAMutableFloatVectorWrapper.append(floats:count:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);

  sub_25587DD74(a1, a2);
  v6 = *(v2 + v5);
  *(v2 + v5) = v8;
}

uint64_t sub_25587DD74(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v8 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v9 = *(v4 + 24) >> 1, v9 < v6))
    {
      if (v5 <= v6)
      {
        v10 = v6;
      }

      else
      {
        v10 = v5;
      }

      result = sub_2558913D4(result, v10, 1, v4);
      v4 = result;
      v9 = *(result + 24) >> 1;
    }

    v11 = *(v4 + 16);
    v12 = v9 - v11;
    if (!a2 || v9 == v11)
    {
      if (v3)
      {
        v5 = &v3[a2];
      }

      else
      {
        v5 = 0;
      }

      if (a2 <= 0)
      {
        v13 = 0;
LABEL_23:
        if (v13 != v12 || v3 == 0 || v3 == v5)
        {
          goto LABEL_31;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (a2 >= v12)
      {
        v13 = v9 - v11;
      }

      else
      {
        v13 = a2;
      }

      v5 = 4 * v13;
      result = memcpy((v4 + 4 * v11 + 32), v3, 4 * v13);
      if (v12 >= a2)
      {
        v14 = (v3 + v5);
        v5 = &v3[a2];
        if (v13 >= 1)
        {
          v15 = *(v4 + 16);
          v16 = __OFADD__(v15, v13);
          v17 = v15 + v13;
          if (v16)
          {
            __break(1u);
            return result;
          }

          *(v4 + 16) = v17;
        }

        v3 = v14;
        goto LABEL_23;
      }
    }
  }

  __break(1u);
LABEL_34:
  v20 = *(v4 + 16);
  v23 = *v3;
  v21 = v3 + 1;
  v22 = v23;
  while (1)
  {
    v24 = *(v4 + 24);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v20 + 1)
    {
      break;
    }

    if (v20 < v25)
    {
      goto LABEL_38;
    }

LABEL_35:
    *(v4 + 16) = v20;
  }

  v28 = v4;
  v29 = v20;
  result = sub_2558913D4((v24 > 1), v20 + 1, 1, v28);
  v20 = v29;
  v4 = result;
  v25 = *(result + 24) >> 1;
  if (v20 >= v25)
  {
    goto LABEL_35;
  }

LABEL_38:
  v26 = v20 + 8;
  while (1)
  {
    *(v4 + 4 * v26) = v22;
    if (v21 == v5)
    {
      break;
    }

    v27 = *v21++;
    v22 = v27;
    if (++v26 - v25 == 8)
    {
      v20 = v25;
      goto LABEL_35;
    }
  }

  *(v4 + 16) = v26 - 7;
LABEL_31:
  *v2 = v4;
  return result;
}

uint64_t sub_25587DF30(uint64_t result)
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

  result = sub_2558913D4(result, v12, 1, v3);
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

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

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

uint64_t sub_25587E01C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2558915E8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t MAMutableFloatVectorWrapper.append(doubles:count:)(uint64_t result, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v4 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v5 = *(v4 + 2);
  v6 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v6 > *(v4 + 3) >> 1)
    {
      if (*(v4 + 2) <= v6)
      {
        v11 = v6;
      }

      else
      {
        v11 = *(v4 + 2);
      }

      v4 = sub_2558913D4(isUniquelyReferenced_nonNull_native, v11, 0, v4);
    }

    v12 = *(v2 + v3);
    *(v2 + v3) = v4;

    if (a2)
    {
      v13 = 8 * a2;
      do
      {
        v14 = *v8;
        v15 = *(v2 + v3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_2558913D4(0, *(v15 + 2) + 1, 1, v15);
        }

        v17 = *(v15 + 2);
        v16 = *(v15 + 3);
        if (v17 >= v16 >> 1)
        {
          v15 = sub_2558913D4((v16 > 1), v17 + 1, 1, v15);
        }

        ++v8;
        v18 = v14;
        *(v15 + 2) = v17 + 1;
        *&v15[4 * v17 + 32] = v18;
        v19 = *(v2 + v3);
        *(v2 + v3) = v15;

        v13 -= 8;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t MAMutableFloatVectorWrapper.append(vector:)(void *a1)
{
  (*((*MEMORY[0x277D85000] & *a1) + 0x70))(&v7);
  v2 = v7;
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v6 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);

  sub_25587DF30(v2);
  v4 = *(v1 + v3);
  *(v1 + v3) = v6;
}

Swift::Void __swiftcall MAMutableFloatVectorWrapper.append(array:)(Swift::OpaquePointer array)
{
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v5 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);

  sub_25587DF30(array._rawValue);
  v4 = *(v1 + v3);
  *(v1 + v3) = v5;
}

Swift::Void __swiftcall MAMutableFloatVectorWrapper.setFloat(_:at:)(Swift::Float _, Swift::Int at)
{
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v6 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((at & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_2558803F4(v6);
  if (at < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v6 + 2) <= at)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *&v6[4 * at + 32] = _;
  v7 = *(v2 + v5);
  *(v2 + v5) = v6;
}

void *MAMutableFloatVectorWrapper.subtract(_:)(void *a1)
{
  v2 = v1;
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x70))(&v9);
  v4 = v9;
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v6 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v8 = v6;
  if (*(v6 + 16) == *(v9 + 16))
  {
    swift_bridgeObjectRetain_n();
    sub_25587FACC(v6, v4, &v8);

    v7 = *(v2 + v5);
    *(v2 + v5) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *MAMutableFloatVectorWrapper.add(_:)(void *a1)
{
  v2 = v1;
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x70))(&v9);
  v4 = v9;
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v6 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v8 = v6;
  if (*(v6 + 16) == *(v9 + 16))
  {
    swift_bridgeObjectRetain_n();
    sub_25587FCB4(v6, v4, &v8, MEMORY[0x277CB87A0]);

    v7 = *(v2 + v5);
    *(v2 + v5) = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall MAMutableFloatVectorWrapper.subtract(_:)(Swift::Float a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v5 = *(v4 + 16);
  swift_bridgeObjectRetain_n();
  v6 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_2558803F4(v4);
  }

  v9 = -a1;
  MEMORY[0x259C450A0](v4 + 32, 1, &v9, v6 + 32, 1, v5);

  v7 = *(v1 + v3);
  *(v1 + v3) = v6;

  v8 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall MAMutableFloatVectorWrapper.add(_:)(Swift::Float a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  v5 = *(v4 + 16);
  swift_bridgeObjectRetain_n();
  v6 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_2558803F4(v4);
  }

  v9 = a1;
  MEMORY[0x259C450A0](v4 + 32, 1, &v9, v6 + 32, 1, v5);

  v7 = *(v1 + v3);
  *(v1 + v3) = v6;

  v8 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall MAMutableFloatVectorWrapper.divide(_:)(Swift::Float a1)
{
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v5 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  swift_bridgeObjectRetain_n();
  sub_25587FF4C(v5, &v5, a1);

  v4 = *(v1 + v3);
  *(v1 + v3) = v5;
}

uint64_t MAMutableFloatVectorWrapper.elementwiseMultiplyByWrapper(_:)(void *a1)
{
  v2 = v1;
  (*((*MEMORY[0x277D85000] & *a1) + 0x70))(&v8);
  v3 = v8;
  v4 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v7 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);
  swift_bridgeObjectRetain_n();
  sub_25587FCB4(v7, v3, &v7, MEMORY[0x277CB87D0]);

  v5 = *(v2 + v4);
  *(v2 + v4) = v7;
}

uint64_t sub_25587EFEC(void (*a1)(uint64_t *, float), float a2)
{
  v5 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v8 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector);

  a1(&v8, a2);
  v6 = *(v2 + v5);
  *(v2 + v5) = v8;
}

void sub_25587F068(char **a1, float a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*(*a1 + 2) >> 31)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = a1;
  v7 = *(*a1 + 2);
  v6 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_5:
    v3 = sub_2558803F4(v3);
    *v2 = v3;
  }

  vvpowsf(v3 + 8, &v6, v3 + 8, &v7);
  *v2 = v3;
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25587F12C(char *a1, float a2, uint64_t a3, void (*a4)(uint64_t *, float))
{
  v7 = OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector;
  v11 = *&a1[OBJC_IVAR____TtC17KnowledgeGraphKit20MAFloatVectorWrapper__floatVector];
  v8 = a1;

  a4(&v11, a2);
  v9 = *&a1[v7];
  *&a1[v7] = v11;
}

uint64_t MAFloatVectorWrapper.isApproximatelyEqual(to:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))(&v9);
  v5 = v9;
  (*((*v3 & *a1) + 0x70))(&v8, v4);
  v6 = sub_25587F448(v8, v5, 0.00000011921, 0.00000011921);

  return v6 & 1;
}

uint64_t MAFloatVectorWrapper.isApproximatelyEqual(to:epsilon:)(void *a1, float a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x70))(&v11);
  v7 = v11;
  (*((*v5 & *a1) + 0x70))(&v10, v6);
  v8 = sub_25587F448(v10, v7, 0.0, a2);

  return v8 & 1;
}

uint64_t sub_25587F448(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v4 = *(a2 + 16);
  if (v4 != *(a1 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = (a2 + 32);
    v6 = (a1 + 32);
    do
    {
      v7 = vabds_f32(*v5, *v6);
      if (*v5 != *v6 && v7 > a3)
      {
        v9 = fabsf(*v5) + fabsf(*v6);
        if (v9 <= 3.4028e38)
        {
          if (v9 <= 1.1755e-38)
          {
            if ((v7 * 8.5071e37) > a4)
            {
              return 0;
            }

            goto LABEL_11;
          }
        }

        else
        {
          v9 = 3.4028e38;
        }

        if ((v7 / v9) > a4)
        {
          return 0;
        }
      }

LABEL_11:
      ++v5;
      ++v6;
      --v4;
    }

    while (v4);
  }

  return 1;
}

uint64_t sub_25587F4FC(uint64_t a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 16);
  if (v6 != *(a1 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = (a6 + 32);
    v8 = (a1 + 32);
    do
    {
      v9 = vabds_f32(*v7, *v8);
      if (*v7 != *v8 && v9 > a2)
      {
        v11 = fabsf(*v7) + fabsf(*v8);
        if (v11 <= 3.4028e38)
        {
          if (v11 <= 1.1755e-38)
          {
            if ((v9 * 8.5071e37) > a3)
            {
              return 0;
            }

            goto LABEL_11;
          }
        }

        else
        {
          v11 = 3.4028e38;
        }

        if ((v9 / v11) > a3)
        {
          return 0;
        }
      }

LABEL_11:
      ++v7;
      ++v8;
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t MAFloatVectorWrapper.isEqual(_:)(uint64_t a1)
{
  sub_255880728(a1, v9);
  if (!v9[3])
  {
    sub_255880798(v9);
    goto LABEL_6;
  }

  type metadata accessor for MAFloatVectorWrapper();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v6 = 0;
    return v6 & 1;
  }

  v2 = v8;
  if (v8 == v1)
  {

    v6 = 1;
  }

  else
  {
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v9);
    v5 = v9[0];
    (*((*v3 & *v8) + 0x70))(&v8, v4);
    v6 = sub_25587F9BC(v5, v8);
  }

  return v6 & 1;
}

uint64_t MAFloatVectorWrapper.hash.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(&v4);
  v1 = v4;
  sub_255965D50();
  sub_25587FA18(&v3, v1);

  return sub_255965D90();
}

uint64_t sub_25587F960(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25587F9BC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25587FA18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x259C43B00](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = sub_255965D70();
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_25587FA80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[1];
  if (*(a1 + 16) == v3)
  {
    if (*(a2 + 16) == v3)
    {
      if (*a3)
      {
LABEL_8:
        JUMPOUT(0x259C450D0);
      }

LABEL_7:
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  goto LABEL_7;
}

uint64_t sub_25587FACC(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = *a3;
  v7 = *(*a3 + 2);
  if (*(a1 + 16) != v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = a2;
  if (*(a2 + 16) != v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3;
  v4 = a1;
  v8 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_7:
    v6 = sub_2558803F4(v6);
    *v3 = v6;
  }

  result = MEMORY[0x259C450D0](v5 + 32, 1, v4 + 32, 1, v6 + 32, 1, v7);
  *v3 = v6;
  return result;
}

void sub_25587FB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = a7[1];
  if (*(a1 + 16) == v8)
  {
    if (*(a4 + 16) == v8)
    {
      if (*a7)
      {
LABEL_8:
        JUMPOUT(0x259C450D0);
      }

LABEL_7:
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  goto LABEL_7;
}

uint64_t sub_25587FBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  v10 = *a7;
  v11 = *(*a7 + 2);
  if (*(a1 + 16) != v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = a4;
  if (*(a4 + 16) != v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a7;
  v8 = a1;
  v12 = *a7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v10 = sub_2558803F4(v10);
  }

  result = MEMORY[0x259C450D0](v9 + 32, 1, v8 + 32, 1, v10 + 32, 1, v11);
  *v7 = v10;
  return result;
}

uint64_t sub_25587FC64(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v4 = a3[1];
  if (*(result + 16) != v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) != v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*a3)
  {
    return a4(result + 32, 1, a2 + 32, 1, *a3, 1);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25587FCB4(uint64_t a1, uint64_t a2, char **a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t))
{
  v8 = *a3;
  v9 = *(*a3 + 2);
  if (*(a1 + 16) != v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a2;
  if (*(a2 + 16) != v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a4;
  v4 = a3;
  v7 = a1;
  v10 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_7:
    v8 = sub_2558803F4(v8);
    *v4 = v8;
  }

  result = v5(v7 + 32, 1, v6 + 32, 1, v8 + 32, 1, v9);
  *v4 = v8;
  return result;
}

uint64_t sub_25587FD64(uint64_t a1, char **a2, float a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(*a2 + 2);
  if (*(a1 + 16) != v7)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = a2;
  v4 = a1;
  v5 = a3;
  v8 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_5:
    v6 = sub_2558803F4(v6);
    *v3 = v6;
  }

  v12 = v5;
  result = MEMORY[0x259C450A0](v4 + 32, 1, &v12, v6 + 32, 1, v7);
  *v3 = v6;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25587FE30(uint64_t a1, float a2, uint64_t a3, uint64_t a4, char **a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = *a5;
  v9 = *(*a5 + 2);
  if (*(a1 + 16) != v9)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = a5;
  v6 = a1;
  v7 = a2;
  v10 = *a5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_5:
    v8 = sub_2558803F4(v8);
  }

  v13 = v7;
  result = MEMORY[0x259C450A0](v6 + 32, 1, &v13, v8 + 32, 1, v9);
  *v5 = v8;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25587FEF4(uint64_t a1, uint64_t a2, float a3)
{
  v3 = *(a2 + 8);
  if (*(a1 + 16) == v3)
  {
    v4 = a3;
    if (*a2)
    {
      vDSP_vsdiv((a1 + 32), 1, &v4, *a2, 1, v3);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_25587FF4C(uint64_t a1, char **a2, float a3)
{
  v6 = *a2;
  v7 = *(*a2 + 2);
  if (*(a1 + 16) != v7)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = a2;
  v5 = a3;
  v4 = a1;
  v8 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_5:
    v6 = sub_2558803F4(v6);
    *v3 = v6;
  }

  v10 = v5;
  vDSP_vsdiv((v4 + 32), 1, &v10, v6 + 8, 1, v7);
  *v3 = v6;
}

void *sub_25587FFF0(__objc2_class *a1)
{
  v2 = [a1->cache count];
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v4 = sub_255880154(v2, 0);

  v5 = sub_2558AA194(&v7, (v4 + 4), v3, a1);

  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

void sub_255880084(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C8, &unk_25596E4B0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_255880154(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61B8, &unk_25596E4A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_2558801D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C8, &unk_25596E4B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_25588025C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D61C0, &unk_25596EE30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2558802E0(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_255965530();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

char *sub_255880430(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
}

uint64_t sub_255880540(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v5 = *(v3 + 24);
  v6 = **(v3 + 16);
  result = sub_25587FC64(v6, *v5, a1, a3);
  *a2 = *(v6 + 16);
  return result;
}

uint64_t sub_2558805C8(void *a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, float *, void, uint64_t), float a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (*(*a3 + 16) != a1[1])
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v9 = a5;
  if (!*a1)
  {
    goto LABEL_5;
  }

  result = a4(v5 + 32, 1, &v9, *a1, 1);
  *a2 = *(v5 + 16);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2558806AC(uint64_t a1, void *a2)
{
  v4 = *(v2 + 24);
  v5 = **(v2 + 16);
  sub_25587FEF4(v5, a1, v4);
  *a2 = *(v5 + 16);
}

uint64_t sub_255880728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60F0, &qword_25596E410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255880798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D60F0, &qword_25596E410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_255880874(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_255880910(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2558809C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_255965170();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_255965130();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_255880A4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_255965170();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_255965130();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2559651E0();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_255880AF8()
{
  type metadata accessor for GraphStoreManager.GraphStoreManagerRepository();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  qword_27F7D61D0 = v0;
  return result;
}

uint64_t sub_255880B58()
{
  v1 = *v0;
  sub_255965D50();
  MEMORY[0x259C43B00](v1);
  return sub_255965D90();
}

uint64_t sub_255880BCC()
{
  v1 = *v0;
  sub_255965D50();
  MEMORY[0x259C43B00](v1);
  return sub_255965D90();
}

uint64_t sub_255880C20(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  v4 = sub_255965260();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_255965850();
  v43 = *(v41 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v31 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255965840();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  swift_defaultActor_initialize();
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readRunningCount) = 0;
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) = 1;
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_closed) = 0;
  v12 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking;
  v13 = sub_255965530();
  *(v13 + 16) = 4;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v2 + v12) = v13;
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readWriteStore) = 0;
  v14 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_url;
  v32 = sub_2559651D0();
  v34 = *(v32 - 8);
  (*(v34 + 16))(v2 + v14, a1, v32);
  v15 = sub_255888134(0, &qword_27F7D62E8, 0x277D85C78);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62F0, &qword_25596E748);
  v16 = *(v10 + 72);
  v40 = *(v10 + 80);
  v30 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25596E4D0;
  sub_255965820();
  sub_255965830();
  v44 = v17;
  v38 = sub_2558881D0(&qword_27F7D62F8, MEMORY[0x277D85230]);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D6300, &qword_25596E750);
  v18 = sub_25588817C(&qword_27F7D6308, &qword_27F7D6300, &qword_25596E750);
  v28 = v9;
  v29 = v18;
  sub_255965930();
  v36 = *MEMORY[0x277D85268];
  v19 = *(v43 + 104);
  v43 += 104;
  v35 = v19;
  v20 = v31;
  v21 = v41;
  v19(v31);
  sub_255965250();
  v27 = v15;
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_executionQueue) = sub_255965870();
  v25[1] = ".knowledgegraph.execution";
  v22 = swift_allocObject();
  v26 = xmmword_25596E4E0;
  *(v22 + 16) = xmmword_25596E4E0;
  sub_255965830();
  v44 = v22;
  sub_255965930();
  v35(v20, v36, v21);
  sub_255965250();
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue) = sub_255965870();
  v23 = swift_allocObject();
  *(v23 + 16) = v26;
  sub_255965830();
  v44 = v23;
  sub_255965930();
  v35(v20, v36, v41);
  sub_255965250();
  *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_writeFeederQueue) = sub_255965870();
  dispatch_activate(*(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_executionQueue));
  dispatch_activate(*(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue));
  dispatch_activate(*(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_writeFeederQueue));
  (*(v34 + 8))(v33, v32);
  return v2;
}

uint64_t sub_255881208()
{
  if ((*(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) & 1) == 0)
  {
    dispatch_resume(*(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue));
  }

  v1 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_url;
  v2 = sub_2559651D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking);

  v4 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2558812F4()
{
  sub_255881208();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for GraphStoreManager()
{
  result = qword_27F7D6290;
  if (!qword_27F7D6290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255881374()
{
  result = sub_2559651D0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_255881454()
{
  v3 = v0;
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = &qword_27F7D6000;
  if (*(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_closed) == 1)
  {
    *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_closed) = 0;
    v5 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores);
    *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores) = MEMORY[0x277D84F90];

    v1 = 4;
    v6 = sub_255965530();
    *(v6 + 16) = 4;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    v7 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking);
    *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking) = v6;
  }

  v8 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking;
  v9 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking);
  v10 = v9[2];
  if (!v10)
  {
    goto LABEL_22;
  }

  if (!v9[4])
  {
    v4 = 0;
    goto LABEL_16;
  }

  if (v10 == 1)
  {
    goto LABEL_22;
  }

  if (!v9[5])
  {
    v4 = 1;
    goto LABEL_16;
  }

  if (v10 == 2)
  {
    goto LABEL_22;
  }

  if (!v9[6])
  {
    v4 = 2;
    goto LABEL_16;
  }

  if (v10 == 3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v9[7])
  {
    sub_255887B10();
    swift_allocError();
    *v11 = 0;
LABEL_33:
    swift_willThrow();
    goto LABEL_35;
  }

  v4 = 3;
LABEL_16:
  v2 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores;
  v12 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores);
  if (!(v12 >> 62))
  {
    if (v4 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

LABEL_24:
    v1 = objc_allocWithZone(KGDegasGraphStore);
    v15 = sub_2559651B0();
    v16 = [v1 initWithURL_];

    if (!v16)
    {
      sub_255887B10();
      swift_allocError();
      *v21 = 1;
      goto LABEL_33;
    }

    v25[0] = 0;
    v17 = [v16 openWithMode:1 error:v25];
    v1 = v25[0];
    if (!v17)
    {
      v22 = v25[0];
      sub_255965180();

      swift_willThrow();
      goto LABEL_35;
    }

    v18 = v25[0];
    v1 = v16;
    MEMORY[0x259C43240]();
    if (*((*(v3 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v3 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_27:
      sub_255965560();
      goto LABEL_28;
    }

LABEL_39:
    sub_2559654F0();
    goto LABEL_27;
  }

LABEL_23:
  if (v4 >= sub_255965B60())
  {
    goto LABEL_24;
  }

LABEL_18:
  v13 = *(v0 + v2);
  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_37;
  }

  if (v4 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_39;
  }

  for (i = *(v13 + 8 * v4 + 32); ; i = MEMORY[0x259C43770](v4))
  {
    v1 = i;
LABEL_28:
    v19 = *(v3 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v8) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_255880408(v19);
    }

    if (v4 < *(v19 + 2))
    {
      break;
    }

    __break(1u);
LABEL_37:
    ;
  }

  *&v19[8 * v4 + 32] = 1;
  *(v3 + v8) = v19;
LABEL_35:
  v23 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_2558817A4(uint64_t a1)
{
  v4 = v1;
  v6 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores;
  v7 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores);
  if (v7 >> 62)
  {
LABEL_17:
    v12 = sub_255965B60();
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_19;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v12)
  {
    v2 = 0;
    do
    {
      if (i == v2)
      {
        goto LABEL_21;
      }

      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(v4 + v6);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x259C43770](v2);
      }

      else
      {
        if (v2 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v9 = *(v8 + 8 * v2 + 32);
      }

      v10 = v9;
      sub_255888134(0, &unk_27F7D62D0, 0x277D82BB8);
      v1 = sub_255965880();

      ++v2;
    }

    while ((v1 & 1) == 0);
    a1 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking;
    v1 = *(v4 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + a1) = v1;
    i = v2 - 1;
    if ((result & 1) == 0)
    {
LABEL_19:
      result = sub_255880408(v1);
      v1 = result;
    }

    if (i < *(v1 + 16))
    {
      break;
    }

    __break(1u);
LABEL_21:
    v12 = sub_255965B00();
    __break(1u);
LABEL_22:
    ;
  }

  *(v1 + 8 * v2 + 24) = 0;
  *(v4 + a1) = v1;
  return result;
}

void sub_25588195C()
{
  v1 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readWriteStore;
  v2 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readWriteStore);
  if (v2)
  {
    [v2 close];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores;
  v5 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v15 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readOnlyStores);
    }

    v6 = sub_255965B60();
    if (!v6)
    {
LABEL_12:
      v10 = *(v0 + v4);
      *(v0 + v4) = MEMORY[0x277D84F90];

      v11 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking;
      v12 = *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readStoreBooking);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + v11) = v12;
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = *(v12 + 2);
        if (v14)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = sub_255880408(v12);
        v14 = *(v12 + 2);
        if (v14)
        {
LABEL_14:
          *(v12 + 4) = 0;
          if (v14 != 1)
          {
            *(v12 + 5) = 0;
            if (v14 >= 3)
            {
              *(v12 + 6) = 0;
              if (v14 != 3)
              {
                *(v12 + 7) = 0;
                *(v0 + v11) = v12;
                *(v0 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_closed) = 1;
                return;
              }

              goto LABEL_26;
            }

LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_24;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (v6 >= 1)
  {

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C43770](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 close];
    }

    goto LABEL_12;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_255881B08()
{
  v1 = *(v0 + 16);
  sub_25588195C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_255881B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_255881B94, 0, 0);
}

uint64_t sub_255881B94()
{
  v1 = *(v0 + 48);
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_255881C70;
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_2558867D4(v6, &unk_25596E648, v2, v4, v7, v5);
}

uint64_t sub_255881C70()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_255881E18;
  }

  else
  {
    v3 = sub_255881D84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_255881D84()
{
  v1 = *(v0 + 64);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_255881E18()
{
  v1 = v0[8];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v4 = v0[1];
    v5 = v0[10];

    return v4();
  }

  return result;
}

uint64_t sub_255881EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_255881F38, a2, 0);
}

uint64_t sub_255881F38()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  sub_25588195C();
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_255881FCC, 0, 0);
}

uint64_t sub_255881FCC()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[4];
  v2 = v0[3] + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_url;
  v3 = sub_2559651B0();
  v0[2] = 0;
  LODWORD(v1) = [v1 copyToURL:v3 error:v0 + 2];

  v4 = v0[2];
  if (v1)
  {
    v11 = v0[1];
    v5 = v4;
    v6 = *MEMORY[0x277D85DE8];
    v7 = v11;
  }

  else
  {
    v8 = v4;
    sub_255965180();

    swift_willThrow();
    v7 = v0[1];
    v9 = *MEMORY[0x277D85DE8];
  }

  return v7();
}

uint64_t sub_2558820F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_255965240();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2558821BC, v4, 0);
}

uint64_t sub_2558821BC()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v6;
  sub_255882FD8();
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_2558822B8;
  v8 = *(v0 + 72);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);

  return sub_255881B6C(v10, v8, &unk_25596E6C0, v5, v9);
}

uint64_t sub_2558822B8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  v6[12] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[6];

    return MEMORY[0x2822009F8](sub_25588246C, v7, 0);
  }

  else
  {
    v9 = v6[9];
    v8 = v6[10];

    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_25588246C()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_2558824D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_255888484;

  return sub_255882658(a1, a3, a4);
}

uint64_t sub_255882590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_255888484;

  return sub_255882AB8(a1, a3, a4, a5);
}

uint64_t sub_255882658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_255965240();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25588271C, v3, 0);
}

void sub_25588271C()
{
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readRunningCount;
  *(v0 + 80) = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readRunningCount;
  v4 = *(v2 + v3);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v3) = v6;
    v7 = *(v0 + 48);
    if (v6 == 4 && *(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) == 1)
    {
      *(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) = 0;
      dispatch_suspend(*(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue));
      v7 = *(v0 + 48);
    }

    v8 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = *(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_executionQueue);
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    v12 = *(v0 + 32);
    *(v11 + 16) = v7;
    *(v11 + 24) = v12;
    *(v0 + 16) = MEMORY[0x277D84F90];
    sub_2558881D0(&qword_27F7D62B8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62C0, &qword_25596E698);
    sub_25588817C(&qword_27F7D62C8, &qword_27F7D62C0, &qword_25596E698);
    sub_255965930();
    v13 = swift_task_alloc();
    *(v0 + 96) = v13;
    *v13 = v0;
    v13[1] = sub_25588292C;
    v14 = *(v0 + 72);
    v15 = *(v0 + 24);

    sub_2558AA784(v15, v14, &unk_25596E728, v11);
  }
}

uint64_t sub_25588292C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v12 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = *(v2 + 48);
    v8 = sub_255888488;
  }

  else
  {
    v9 = *(v2 + 88);
    v10 = *(v2 + 48);

    v8 = sub_25588847C;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_255882AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_255965240();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255882B80, v4, 0);
}

void sub_255882B80()
{
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readRunningCount;
  *(v0 + 80) = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readRunningCount;
  v4 = *(v2 + v3);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v3) = v6;
    v7 = *(v0 + 48);
    if (v6 == 4 && *(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) == 1)
    {
      *(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) = 0;
      dispatch_suspend(*(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue));
      v7 = *(v0 + 48);
    }

    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    v10 = *(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_executionQueue);
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    v12 = *(v0 + 24);
    *(v11 + 16) = v9;
    *(v11 + 24) = v7;
    *(v11 + 32) = v12;
    sub_255882FD8();
    v13 = swift_task_alloc();
    *(v0 + 96) = v13;
    *v13 = v0;
    v13[1] = sub_255882CD8;
    v14 = *(v0 + 72);
    v15 = *(v0 + 40);
    v16 = *(v0 + 16);

    sub_255881B6C(v16, v14, &unk_25596E6D8, v11, v15);
  }
}

uint64_t sub_255882CD8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v12 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = *(v2 + 48);
    v8 = sub_255882F18;
  }

  else
  {
    v9 = *(v2 + 88);
    v10 = *(v2 + 48);

    v8 = sub_255882E64;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_255882E64()
{
  v2 = v0[10];
  v3 = v0[6];
  v4 = *(v3 + v2);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v2) = v6;
    if ((*(v3 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) & 1) == 0 && v6 < 4)
    {
      v7 = v0[6];
      *(v3 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) = 1;
      dispatch_resume(*(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue));
    }

    v8 = v0[9];

    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_255882F18()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];

  v5 = *(v3 + v2);
  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = v0[6];
    *(v7 + v0[10]) = v6;
    if ((*(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) & 1) == 0 && v6 < 4)
    {
      v8 = v0[6];
      *(v7 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeeding) = 1;
      dispatch_resume(*(v8 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readFeederQueue));
    }

    v9 = v0[9];

    v10 = v0[1];
    v11 = v0[13];

    return v10();
  }

  return result;
}

uint64_t sub_255882FD8()
{
  sub_255965240();
  sub_2558881D0(&qword_27F7D62B8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D62C0, &qword_25596E698);
  sub_25588817C(&qword_27F7D62C8, &qword_27F7D62C0, &qword_25596E698);
  return sub_255965930();
}

uint64_t sub_2558830B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[6] = a3;
  v4[7] = v3;
  v4[5] = a2;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_255883144, v3, 0);
}

uint64_t sub_255883144()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v2 = sub_255881454();
  *(v0 + 64) = v2;
  v3 = v2;
  *(v0 + 16) = 0;
  v4 = [v2 beginTransactionWithError_];
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = *(v0 + 40);
    v3;
    v15 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_255883334;
    v9 = *(v0 + 48);
    v10 = *MEMORY[0x277D85DE8];

    return v15();
  }

  else
  {
    v12 = v5;
    sub_255965180();

    swift_willThrow();
    v13 = *(v0 + 8);
    v14 = *MEMORY[0x277D85DE8];

    return v13();
  }
}

uint64_t sub_255883334()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 72);
  v11 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = *MEMORY[0x277D85DE8];
    v6 = sub_2558835C8;
  }

  else
  {
    v7 = *(v2 + 56);

    v8 = *MEMORY[0x277D85DE8];
    v6 = sub_2558834A4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_2558834A4()
{
  v10 = *MEMORY[0x277D85DE8];
  *(v0 + 32) = 0;
  v1 = [*(v0 + 64) commitTransactionWithError_];
  v2 = *(v0 + 32);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v8 = v2;
    sub_255965180();

    swift_willThrow();
  }

  sub_2558817A4(v3);

  v6 = *(v0 + 8);
  v7 = *MEMORY[0x277D85DE8];

  return v6();
}

uint64_t sub_2558835C8()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = v0[8];

  v0[3] = 0;
  v2 = [v1 rollbackTransactionWithError_];
  v3 = v0[3];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[7];
  if (v2)
  {
    v7 = v0[10];
    swift_willThrow();
    v8 = v3;
    sub_2558817A4(v5);

    v9 = v0[10];
  }

  else
  {
    v10 = v3;
    sub_255965180();

    swift_willThrow();
    sub_2558817A4(v5);
  }

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_2558836EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(a4 - 8);
  v5[10] = v6;
  v7 = *(v6 + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2558837E8, v4, 0);
}

uint64_t sub_2558837E8()
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 72);
  v2 = sub_255881454();
  *(v0 + 104) = v2;
  v3 = v2;
  *(v0 + 16) = 0;
  v4 = [v2 beginTransactionWithError_];
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = *(v0 + 48);
    v7 = v3;
    v19 = (v6 + *v6);
    v8 = v6[1];
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_2558839F0;
    v10 = *(v0 + 88);
    v11 = *(v0 + 56);
    v12 = *MEMORY[0x277D85DE8];

    return (v19)(v10, v7, &off_2867A7550);
  }

  else
  {
    v14 = v5;
    sub_255965180();

    swift_willThrow();
    v16 = *(v0 + 88);
    v15 = *(v0 + 96);

    v17 = *(v0 + 8);
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }
}

uint64_t sub_2558839F0()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 112);
  v11 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 72);
    v5 = *MEMORY[0x277D85DE8];
    v6 = sub_255883D14;
  }

  else
  {
    v7 = *(v2 + 72);

    v8 = *MEMORY[0x277D85DE8];
    v6 = sub_255883B64;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_255883B64()
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = v0[13];
  v2 = *(v0[10] + 32);
  v2(v0[12], v0[11], v0[8]);
  v0[4] = 0;
  v3 = [v1 commitTransactionWithError_];
  v4 = v0[4];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[9];
  v8 = v0[8];
  if (v3)
  {
    v9 = v0[11];
    v2(v0[5], v0[12], v0[8]);
    v10 = v4;
    sub_2558817A4(v5);
  }

  else
  {
    v13 = v0[10];
    v14 = v4;
    sub_255965180();

    swift_willThrow();
    (*(v13 + 8))(v6, v8);
    sub_2558817A4(v5);

    v16 = v0[11];
    v15 = v0[12];
  }

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_255883D14()
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[13];

  v0[3] = 0;
  v2 = [v1 rollbackTransactionWithError_];
  v3 = v0[3];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[9];
  if (v2)
  {
    v7 = v0[15];
    swift_willThrow();
    v8 = v3;
    sub_2558817A4(v5);

    v9 = v0[15];
  }

  else
  {
    v10 = v3;
    sub_255965180();

    swift_willThrow();
    sub_2558817A4(v5);
  }

  v12 = v0[11];
  v11 = v0[12];

  v13 = v0[1];
  v14 = *MEMORY[0x277D85DE8];

  return v13();
}

uint64_t sub_255883E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_255888484;

  return sub_2558830B0(a1, a3, a4);
}

uint64_t sub_255883F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_255883FC8;

  return sub_2558836EC(a1, a3, a4, a5);
}

uint64_t sub_255883FC8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2558840BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_255965240();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255884184, v4, 0);
}

uint64_t sub_255884184()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_writeFeederQueue);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v6;
  sub_255882FD8();
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_255884280;
  v8 = *(v0 + 72);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);

  return sub_255881B6C(v10, v8, &unk_25596E690, v5, v9);
}

uint64_t sub_255884280()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  v6[12] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[6];

    return MEMORY[0x2822009F8](sub_255888480, v7, 0);
  }

  else
  {
    v9 = v6[9];
    v8 = v6[10];

    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_255884434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_255965240();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2558844FC, 0, 0);
}

uint64_t sub_2558844FC()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_executionQueue;
  v5 = swift_task_alloc();
  v6 = *(v0 + 24);
  v7 = *(*(v0 + 24) + v4);
  *(v0 + 80) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v3;
  sub_255882FD8();
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_255884600;
  v9 = *(v0 + 72);
  v10 = *(v0 + 48);
  v11 = *(v0 + 16);

  return sub_255881B6C(v11, v9, &unk_25596E6A8, v5, v10);
}

uint64_t sub_255884600()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *v1;
  v6[12] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_255888480, 0, 0);
  }

  else
  {
    v8 = v6[9];
    v7 = v6[10];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_2558847B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_255888484;

  return sub_25588487C(a1, a3, a4, a5);
}

uint64_t sub_25588487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = *(a4 - 8);
  v5[11] = v6;
  v7 = *(v6 + 64) + 15;
  v5[12] = swift_task_alloc();
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_255884964, v4, 0);
}

uint64_t sub_255884964()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 80);
  if (*(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_closed) == 1)
  {
    *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_closed) = 0;
    v1 = *(v0 + 80);
  }

  v2 = OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readWriteStore;
  v3 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readWriteStore);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_readWriteStore);
    goto LABEL_5;
  }

  v16 = objc_allocWithZone(KGDegasGraphStore);
  v17 = sub_2559651B0();
  v4 = [v16 initWithURL_];

  if (v4)
  {
    *(v0 + 16) = 0;
    v18 = [v4 openWithMode:134 error:v0 + 16];
    v19 = *(v0 + 16);
    if ((v18 & 1) == 0)
    {
      v22 = v19;
LABEL_15:
      sub_255965180();

      swift_willThrow();
      goto LABEL_16;
    }

    v20 = *(v1 + v2);
    *(v1 + v2) = v4;
    v21 = v19;
    v4 = v4;

    v3 = 0;
LABEL_5:
    *(v0 + 104) = v4;
    *(v0 + 24) = 0;
    v5 = v3;
    v6 = [v4 beginTransactionWithError_];
    v7 = *(v0 + 24);
    if (v6)
    {
      v8 = *(v0 + 56);
      v9 = v4;
      v27 = (v8 + *v8);
      v10 = v8[1];
      v11 = swift_task_alloc();
      *(v0 + 112) = v11;
      *v11 = v0;
      v11[1] = sub_255884C50;
      v12 = *(v0 + 96);
      v13 = *(v0 + 64);
      v14 = *MEMORY[0x277D85DE8];

      return (v27)(v12, v9, &off_2867A7550);
    }

    v22 = v7;
    goto LABEL_15;
  }

  sub_255887B10();
  swift_allocError();
  *v23 = 1;
  swift_willThrow();
LABEL_16:
  v24 = *(v0 + 96);

  v25 = *(v0 + 8);
  v26 = *MEMORY[0x277D85DE8];

  return v25();
}

uint64_t sub_255884C50()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 112);
  v11 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = *MEMORY[0x277D85DE8];
    v6 = sub_255884F34;
  }

  else
  {
    v7 = *(v2 + 80);

    v8 = *MEMORY[0x277D85DE8];
    v6 = sub_255884DC4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_255884DC4()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = v0[13];
  (*(v0[11] + 32))(v0[6], v0[12], v0[9]);
  v0[5] = 0;
  v2 = [v1 commitTransactionWithError_];
  v3 = v0[5];
  v4 = v0[13];
  if (v2)
  {
    v5 = v0[12];
    v6 = v3;
  }

  else
  {
    v9 = v0[11];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v3;
    sub_255965180();

    swift_willThrow();
    (*(v9 + 8))(v11, v10);
    v13 = v0[12];
  }

  v7 = v0[1];
  v8 = *MEMORY[0x277D85DE8];

  return v7();
}

uint64_t sub_255884F34()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[13];

  v0[4] = 0;
  v2 = [v1 rollbackTransactionWithError_];
  v3 = v0[4];
  v4 = v0[15];
  v5 = v0[13];
  if (v2)
  {
    swift_willThrow();
    v6 = v3;

    v7 = v0[15];
  }

  else
  {
    v8 = v3;
    sub_255965180();

    swift_willThrow();
  }

  v9 = v0[12];

  v10 = v0[1];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_255885048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_255965240();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255885110, v4, 0);
}

uint64_t sub_255885110()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v2 + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_executionQueue);
  v11 = *(v0 + 24);
  sub_255965230();
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v11;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_255885210;
  v7 = *(v0 + 72);
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);

  return sub_255881B6C(v9, v7, &unk_25596E630, v5, v8);
}

uint64_t sub_255885210()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v9 = *(v2 + 48);

    return MEMORY[0x2822009F8](sub_2558853E8, v9, 0);
  }

  else
  {
    v10 = *(v2 + 72);

    v11 = *(v8 + 8);

    return v11();
  }
}

uint64_t sub_2558853E8()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

unint64_t sub_25588544C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2559651D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7.n128_f64[0] = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 112);
  if (!*(v10 + 16) || (result = sub_255875BFC(a1), (v12 & 1) == 0))
  {
    (*(v5 + 16))(v9, a1, v4, v7);
    v17 = type metadata accessor for GraphStoreManager();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_255880C20(v9);
    v15 = 1;
    goto LABEL_6;
  }

  v13 = (*(v10 + 56) + 16 * result);
  v14 = v13[1];
  v15 = v14 + 1;
  if (!__OFADD__(v14, 1))
  {
    v16 = *v13;
    swift_retain_n();
LABEL_6:

    v20 = *(v2 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v2 + 112);
    *(v2 + 112) = 0x8000000000000000;
    sub_255879934(v16, v15, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 112) = v23;

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2558855DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_255965240();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25588569C, v1, 0);
}

uint64_t sub_25588569C()
{
  v1 = v0[3];
  v4 = *(v1 + 112);
  v2 = (v1 + 112);
  v3 = v4;
  if (*(v4 + 16) && (v5 = sub_255875BFC(v0[2]), (v6 & 1) != 0))
  {
    v7 = (*(v3 + 56) + 16 * v5);
    v8 = *v7;
    v0[7] = *v7;
    v9 = v7[1];
    v10 = v0[2];
    if (v9 < 2)
    {

      sub_25588718C(v10);

      return MEMORY[0x2822009F8](sub_2558858D0, v8, 0);
    }

    else
    {
      v11 = v9 - 1;

      v12 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v2;
      *v2 = 0x8000000000000000;
      sub_255879934(v8, v11, v10, isUniquelyReferenced_nonNull_native);
      *v2 = v19;
      v14 = v0[6];

      v15 = v0[1];

      return v15();
    }
  }

  else
  {
    v17 = v0[2];
    sub_255965990();

    sub_2559651D0();
    sub_2558881D0(&qword_27F7D6310, MEMORY[0x277CC9260]);
    v18 = sub_255965BC0();
    MEMORY[0x259C431B0](v18);

    return sub_255965B00();
  }
}

uint64_t sub_2558858D0()
{
  v1 = v0[6];
  v2 = *(v0[7] + OBJC_IVAR____TtC17KnowledgeGraphKit17GraphStoreManager_executionQueue);
  sub_255965230();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_25588599C;
  v4 = v0[6];
  v5 = v0[7];

  return sub_2558AA784(sub_2558AA784, v4, &unk_25596E760, v5);
}

void sub_25588599C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[7];
    (*(v2[5] + 8))(v2[6], v2[4]);

    MEMORY[0x2822009F8](sub_255885AE8, v5, 0);
  }
}