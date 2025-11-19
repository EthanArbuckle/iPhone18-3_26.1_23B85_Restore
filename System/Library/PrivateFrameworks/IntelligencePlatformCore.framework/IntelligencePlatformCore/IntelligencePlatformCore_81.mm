unint64_t SourceIngestionError.description.getter()
{
  if (*v0)
  {
    result = 0xD000000000000023;
  }

  else
  {
    result = 0xD00000000000001DLL;
  }

  *v0;
  return result;
}

uint64_t SourceIngestionError.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

unint64_t sub_1C4B42B3C()
{
  result = qword_1EC0C3990;
  if (!qword_1EC0C3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3990);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SourceIngestionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of SourceIngestor.ingestSource()()
{
  sub_1C43FEAEC();
  v1 = v0;
  v3 = v2;
  sub_1C441CD2C(v0);
  v11 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = sub_1C43FC218(v7);
  *v8 = v9;
  v8[1] = sub_1C442E8C4;

  return v11(v3, v1);
}

uint64_t sub_1C4B42D70()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F53030);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B42DF0()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F53040);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B42E70()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F53090);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B42EF0()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(&unk_1C4F530A0);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B42F70()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F53070);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B42FF0()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F53080);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B43070()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F53050);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_1C4B430F0()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014(dword_1C4F53060);
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v10 = sub_1C441A538(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t SourceProviderError.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Source();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C43FBCC4();
  v6 = (v5 - v4);
  v7 = type metadata accessor for SourceProviderError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  sub_1C4B43374(v1, v10 - v9);
  v12 = sub_1C456902C(&qword_1EC0C3998, &unk_1C4F53120);
  v13 = sub_1C44157D4(v11, 2, v12);
  if (v13)
  {
    if (v13 == 1)
    {
      return 0x206E776F6E6B6E55;
    }

    else
    {
      return 0xD000000000000047;
    }
  }

  else
  {
    v15 = (v11 + *(v12 + 48));
    v17 = *v15;
    v16 = v15[1];
    sub_1C448B210(v11, v6);
    sub_1C4F02248();

    MEMORY[0x1C6940010](*v6, v6[1]);
    MEMORY[0x1C6940010](8250, 0xE200000000000000);
    MEMORY[0x1C6940010](v17, v16);

    v14 = 0xD000000000000021;
    sub_1C448D818(v6);
  }

  return v14;
}

uint64_t type metadata accessor for SourceProviderError()
{
  result = qword_1EC0C39A8;
  if (!qword_1EC0C39A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B43374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SourceProviderError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SourceProviderError.errorCode.getter()
{
  v1 = type metadata accessor for SourceProviderError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C43FBCC4();
  v5 = v4 - v3;
  sub_1C4B43374(v0, v4 - v3);
  v6 = sub_1C456902C(&qword_1EC0C3998, &unk_1C4F53120);
  v7 = sub_1C44157D4(v5, 2, v6);
  if (v7)
  {
    return v7 != 1;
  }

  v9 = *(v5 + *(v6 + 48) + 8);

  sub_1C448D818(v5);
  return 2;
}

uint64_t SourceProviderError.errorUserInfo.getter()
{
  sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v1 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1C4F01138();
  *(inited + 40) = v2;
  v3 = SourceProviderError.description.getter();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  return sub_1C4F00F28();
}

uint64_t sub_1C4B43554(uint64_t a1)
{
  v2 = sub_1C4B43750(&qword_1EC0C39C0);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C4B435AC(uint64_t a1)
{
  v2 = sub_1C4B43750(&qword_1EC0C39C0);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C4B4368C()
{
  sub_1C4B436E4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1C4B436E4()
{
  if (!qword_1EC0C39B8)
  {
    type metadata accessor for Source();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0C39B8);
    }
  }
}

uint64_t sub_1C4B43750(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SourceProviderError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SourceSet.remove(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(result + 16);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = 1;
    v8 = v6 > 0x40;
    if (v6 >= 0x40)
    {
      v9 = 0;
    }

    else
    {
      v9 = 1 << v6;
    }

    if (v8)
    {
      v9 = 0;
    }

    if ((*v2 & v9) != 0)
    {
      *v2 &= ~v9;
      sub_1C449ED64(result, a2);
      v7 = 0;
    }

    v10 = type metadata accessor for Source();

    return sub_1C440BAA8(a2, v7, 1, v10);
  }

  return result;
}

uint64_t sub_1C4B4383C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a3 ^ result;
  a5[1] = a4 ^ a2;
  return result;
}

uint64_t sub_1C4B4384C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a3 & ~result;
  a5[1] = a4 & ~a2;
  return result;
}

uint64_t sub_1C4B43874(uint64_t result, uint64_t a2)
{
  v3 = v2[1] & ~a2;
  *v2 &= ~result;
  v2[1] = v3;
  return result;
}

void _s24IntelligencePlatformCore9SourceSetV12arrayLiteralAcA0D0Vd_tcfC_0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Source();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = *(v1 + 16);
  if (!v10)
  {

    v12 = 0;
LABEL_16:
    *v3 = v12;
    sub_1C43FE9F0();
    return;
  }

  v11 = 0;
  v12 = 0;
  v13 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  while (v11++ < *(v1 + 16))
  {
    sub_1C449ED64(v13 + *(v5 + 72) * (v11 - 1), v9);
    v14 = *(v9 + 16);
    sub_1C448D818(v9);
    v15 = v14 - 1;
    if (__OFSUB__(v14, 1))
    {
      goto LABEL_18;
    }

    if (v15 > -65 && v15 <= 64)
    {
      if (v15 < 0)
      {
        if (v14 == -63)
        {
          goto LABEL_11;
        }

        v16 = 0;
        goto LABEL_10;
      }

      if (v14 != 65)
      {
        v16 = 1 << v15;
LABEL_10:
        v12 |= v16;
      }
    }

LABEL_11:
    if (v10 == v11)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t SourceSet.insert(_:)(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 > 0x40;
    if (v5 >= 0x40)
    {
      v7 = 0;
    }

    else
    {
      v7 = 1 << v5;
    }

    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = *v2 & v8;
    if (!v9)
    {
      *v2 |= v8;
    }

    v10 = v9 == 0;
    sub_1C449ED64(a2, result);
    return v10;
  }

  return result;
}

void SourceSet.init(source:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_1C448D818(a1);
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C4405EEC();
    if (!v6 & v5)
    {
      v4 = 0;
    }

    *a2 = v4;
  }
}

void sub_1C4B43B20(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Source();
  v8 = sub_1C43FBCE0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  if (*a2 != -1)
  {
    swift_once();
  }

  v14 = sub_1C442B738(v7, a3);
  sub_1C449ED64(v14, v13);
  v15 = *(v13 + 16);
  sub_1C448D818(v13);
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C4405EEC();
    if (!v18 & v17)
    {
      v16 = 0;
    }

    *a4 = v16;
  }
}

uint64_t Source.sourceSetBitValue.getter()
{
  if (__OFSUB__(*(v0 + 16), 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C4405EEC();
    if (!v3 & v2)
    {
      return 0;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

uint64_t SourceSet.update(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C456902C(&qword_1EC0BA998, &qword_1C4F53200);
  v5 = sub_1C43FBCE0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  *(&v21 - v11) = SourceSet.insert(_:)(&v21 + *(v13 + 48) - v11, a1) & 1;
  v14 = sub_1C43FE99C();
  sub_1C4B43D58(v14, v15);
  v16 = *v9;
  sub_1C448D818(&v9[*(v4 + 48)]);
  if (v16 == 1)
  {
    sub_1C4420C3C(v12, &qword_1EC0BA998, &qword_1C4F53200);
  }

  else
  {
    v17 = sub_1C43FE99C();
    sub_1C4B43DC8(v17, v18);
    sub_1C448B210(&v9[*(v4 + 48)], a2);
    v16 = 0;
  }

  v19 = type metadata accessor for Source();
  return sub_1C440BAA8(a2, v16, 1, v19);
}

uint64_t sub_1C4B43D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BA998, &qword_1C4F53200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B43DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BA998, &qword_1C4F53200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B43F20(uint64_t a1, uint64_t a2)
{
  v3 = SourceSet.insert(_:)(a1, a2);
  sub_1C448D818(a2);
  return v3 & 1;
}

uint64_t sub_1C4B43F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  SourceSet.update(with:)(a1, a2);

  return sub_1C448D818(a1);
}

uint64_t sub_1C4B43FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SourceSet.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C4B44000@<X0>(uint64_t *a1@<X8>)
{
  result = SourceSet.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C4B44034(uint64_t a1)
{
  v2 = sub_1C493EB98();

  return MEMORY[0x1EEE09B08](a1, v2);
}

uint64_t sub_1C4B44080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C493EB98();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

Swift::String __swiftcall SourceSet.csvString()()
{
  sub_1C43FBD3C();
  v1 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v29 - v3;
  v5 = type metadata accessor for Source();
  v6 = sub_1C43FBCE0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v32 = (&v29 - v12);
  v13 = *v0;
  v34 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v33 = v34;
  v14 = 1;
  while (1)
  {
    while (1)
    {
      if (qword_1EDDFA6A8 != -1)
      {
        swift_once();
      }

      if (qword_1EDE2DCF0 < v14)
      {
        v34 = v33;
        sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
        sub_1C443D694();
        sub_1C4F01048();

        sub_1C43FE9F0();
        goto LABEL_25;
      }

      sub_1C449E530(v14, v4);
      if (sub_1C44157D4(v4, 1, v5) != 1)
      {
        break;
      }

      v15 = sub_1C4420C3C(v4, &unk_1EC0C0760, &qword_1C4F170D0);
      v17 = __OFADD__(v14++, 1);
      if (v17)
      {
        goto LABEL_23;
      }
    }

    v15 = sub_1C448B210(v4, v10);
    v18 = v14 - 1;
    if (__OFSUB__(v14, 1))
    {
      break;
    }

    v17 = __OFADD__(v14++, 1);
    if (v17)
    {
      goto LABEL_24;
    }

    v19 = v18 > 0x40;
    if (v18 >= 0x40)
    {
      v20 = 0;
    }

    else
    {
      v20 = 1 << v18;
    }

    if (v19)
    {
      v20 = 0;
    }

    if ((v20 & v13) >= 1)
    {
      v21 = v32;
      sub_1C448B210(v10, v32);
      v22 = v21[1];
      v30 = *v21;
      v31 = v22;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C448D818(v21);
      v23 = v33;
      v34 = v33;
      v24 = *(v33 + 16);
      v25 = v24 + 1;
      if (v24 >= *(v33 + 24) >> 1)
      {
        v33 = v24 + 1;
        sub_1C44CD9C0();
        v25 = v33;
        v23 = v34;
      }

      *(v23 + 16) = v25;
      v33 = v23;
      v26 = v23 + 16 * v24;
      v27 = v31;
      *(v26 + 32) = v30;
      *(v26 + 40) = v27;
    }

    else
    {
      sub_1C448D818(v10);
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

void SourceSet.SourceSetIterator.next()()
{
  sub_1C43FBD3C();
  v21 = v1;
  v2 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for Source();
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  for (i = v11 - v10; ; sub_1C448D818(i))
  {
    while (1)
    {
      v13 = *v0;
      if (qword_1EDDFA6A8 != -1)
      {
        swift_once();
      }

      if (qword_1EDE2DCF0 < v13)
      {
        v18 = 1;
        v19 = v21;
LABEL_19:
        sub_1C440BAA8(v19, v18, 1, v6);
        sub_1C43FE9F0();
        return;
      }

      sub_1C449E530(v13, v5);
      if (sub_1C44157D4(v5, 1, v6) != 1)
      {
        break;
      }

      sub_1C4420C3C(v5, &unk_1EC0C0760, &qword_1C4F170D0);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      *v0 = v13 + 1;
    }

    sub_1C448B210(v5, i);
    v14 = v13 - 1;
    if (__OFSUB__(v13, 1))
    {
      break;
    }

    if (__OFADD__(v13, 1))
    {
      goto LABEL_22;
    }

    v15 = v14 > 0x40;
    if (v14 >= 0x40)
    {
      v16 = 0;
    }

    else
    {
      v16 = 1 << v14;
    }

    if (v15)
    {
      v16 = 0;
    }

    v17 = v0[1] & v16;
    *v0 = v13 + 1;
    if (v17 >= 1)
    {
      v19 = v21;
      sub_1C448B210(i, v21);
      v18 = 0;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void SourceSet.makeIterator()(void *a1@<X8>)
{
  v2 = *v1;
  *a1 = 1;
  a1[1] = v2;
}

unint64_t sub_1C4B445B0()
{
  result = qword_1EC0C39C8;
  if (!qword_1EC0C39C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C39C8);
  }

  return result;
}

unint64_t sub_1C4B44608()
{
  result = qword_1EC0C39D0;
  if (!qword_1EC0C39D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C39D0);
  }

  return result;
}

unint64_t sub_1C4B4465C()
{
  result = qword_1EC0C39D8;
  if (!qword_1EC0C39D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C39D8);
  }

  return result;
}

unint64_t sub_1C4B446B4()
{
  result = qword_1EC0C39E0;
  if (!qword_1EC0C39E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C39E0);
  }

  return result;
}

unint64_t sub_1C4B4470C()
{
  result = qword_1EDDFCF18[0];
  if (!qword_1EDDFCF18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFCF18);
  }

  return result;
}

unint64_t sub_1C4B44764()
{
  result = qword_1EDDFA600;
  if (!qword_1EDDFA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA600);
  }

  return result;
}

unint64_t sub_1C4B447BC()
{
  result = qword_1EC0C39E8;
  if (!qword_1EC0C39E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C39E8);
  }

  return result;
}

uint64_t sub_1C4B44868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C4F00978();
  v5 = sub_1C43FCDF8(v4);
  v35 = v6;
  v36 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C4EFB5A8();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = sub_1C4EFB5F8();
  v22 = sub_1C43FCDF8(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v29 = v28 - v27;
  sub_1C4EFB5E8();
  (*(v15 + 104))(v20, *MEMORY[0x1E699FE90], v12);
  sub_1C4EFB5C8();
  (*(v15 + 8))(v20, v12);
  v30 = *(a3 + 16);
  sub_1C44FAFAC(&qword_1EDDFEDB0, type metadata accessor for ErrorHandlingDatabasePool);
  sub_1C4EFB5D8();
  if (v37)
  {
    return (*(v24 + 8))(v29, v21);
  }

  (*(v24 + 8))(v29, v21);
  sub_1C4F00178();
  v32 = sub_1C4F00968();
  v33 = sub_1C4F01CB8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1C43F8000, v32, v33, "SportsSchedulesDatabaseTable: finished database migration.", v34, 2u);
    MEMORY[0x1C6942830](v34, -1, -1);
  }

  return (*(v35 + 8))(v11, v36);
}

uint64_t sub_1C4B44BB4()
{
  sub_1C448DE08(&unk_1F43DC3A8);
  sub_1C46A9F14(v0);
}

uint64_t sub_1C4B44C08()
{
  v15 = sub_1C4EFB078();
  v13 = *(v15 - 8);
  v1 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v14 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C4EFB0B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16[0] = MEMORY[0x1E69E7CC0];
  sub_1C44FAFAC(&unk_1EDDFCD18, MEMORY[0x1E699FE00]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4A54BDC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  if (v0)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v9 = v13;
  (*(v4 + 8))(v7, v3);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v18 = MEMORY[0x1E69E7CC0];
  sub_1C44FAFAC(&qword_1EDDFCD40, MEMORY[0x1E699FDD0]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4A54BDC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520);
  v11 = v14;
  v10 = v15;
  sub_1C4F020C8();
  sub_1C4EFBFB8();
  (*(v9 + 8))(v11, v10);
  return sub_1C4423A0C(v16, &qword_1EC0C5040, &qword_1C4F0F950);
}

uint64_t sub_1C4B44F84()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1C4EFBE08();
  v8 = sub_1C4EFBE38();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v9 = sub_1C4EFBF38();
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDE8();
  sub_1C440BAA8(v7, 0, 1, v8);
  sub_1C4EFB498();
  sub_1C4423A0C(v7, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB538();

  sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C440BAA8(v3, 1, 1, v9);
  sub_1C4EFB478();
  return sub_1C4423A0C(v3, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t static SQLConnection.createConnection(for:config:)(void *a1)
{
  v2 = a1;
  v3 = sub_1C4F00668();
  if (!v1)
  {
    sub_1C4F00618();
    sub_1C4F00608();
    sub_1C4408D00();
    SQLConnection.installStableGraph(config:)();

    sub_1C4408D00();
    SQLConnection.installEventGraph(config:)();

    sub_1C4408D00();
    SQLConnection.installGlobalKnowledge(config:)();

    sub_1C4408D00();
    SQLConnection.installStaticAssets(config:)();
  }

  return v3;
}

void SQLConnection.installStableGraph(config:)()
{
  sub_1C44137A0();
  v2 = sub_1C4426034();
  v3 = sub_1C4403200(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440A89C();
  sub_1C4403730();
  sub_1C44202EC(35, "edgeGraph.StaticAssets");
  if (v0)
  {
    v8 = *(v5 + 8);
    v9 = sub_1C43FFE3C();
  }

  else
  {
    sub_1C44124E8();
    sub_1C4F02248();
    sub_1C441121C();
    sub_1C44337B8();
    sub_1C440D83C();
    MEMORY[0x1C6940010](47, v1);
    MEMORY[0x1C6940010](69, 0x80000001C4FB2520);
    sub_1C440B308();
    sub_1C440E790();

    v9 = sub_1C4407B54();
  }

  v10(v9);
  sub_1C4432A00();
}

void SQLConnection.installEventGraph(config:)()
{
  sub_1C44137A0();
  v2 = sub_1C4426034();
  v3 = sub_1C4403200(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440A89C();
  sub_1C4403730();
  sub_1C44202EC(35, "edgeGraph.StaticAssets");
  if (v0)
  {
    v8 = *(v5 + 8);
    v9 = sub_1C43FFE3C();
  }

  else
  {
    sub_1C44124E8();
    sub_1C4F02248();
    sub_1C441121C();
    sub_1C44337B8();
    sub_1C440D83C();
    MEMORY[0x1C6940010](46, v1);
    MEMORY[0x1C6940010](68, 0x80000001C4FB2570);
    sub_1C440B308();
    sub_1C440E790();

    v9 = sub_1C4407B54();
  }

  v10(v9);
  sub_1C4432A00();
}

void SQLConnection.installGlobalKnowledge(config:)()
{
  sub_1C44137A0();
  v2 = sub_1C4426034();
  v3 = sub_1C4403200(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440A89C();
  sub_1C4417804();
  sub_1C44202EC(41, "geGraph.event_graph");
  if (v0)
  {
    v8 = *(v5 + 8);
    v9 = sub_1C43FFE3C();
  }

  else
  {
    sub_1C44124E8();
    sub_1C4F02248();
    sub_1C441121C();
    MEMORY[0x1C6940010](22, 0x80000001C4FB2500);
    sub_1C440D83C();
    MEMORY[0x1C6940010](53, v1);
    MEMORY[0x1C6940010](75, 0x80000001C4FB25F0);
    sub_1C440B308();
    sub_1C440E790();

    v9 = sub_1C4407B54();
  }

  v10(v9);
  sub_1C4432A00();
}

void SQLConnection.installStaticAssets(config:)()
{
  sub_1C44137A0();
  v2 = sub_1C4426034();
  v3 = sub_1C4403200(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C440A89C();
  sub_1C4417804();
  sub_1C44202EC(41, "geGraph.event_graph");
  if (v0)
  {
    v8 = *(v5 + 8);
    v9 = sub_1C43FFE3C();
  }

  else
  {
    sub_1C44124E8();
    sub_1C4F02248();
    sub_1C441121C();
    MEMORY[0x1C6940010](22, 0x80000001C4FB2500);
    sub_1C440D83C();
    MEMORY[0x1C6940010](54, v1);
    MEMORY[0x1C6940010](76, 0x80000001C4FB2640);
    sub_1C440B308();
    sub_1C440E790();

    v9 = sub_1C4407B54();
  }

  v10(v9);
  sub_1C4432A00();
}

uint64_t sub_1C4B45B18(uint64_t *a1)
{
  if (!a1[26])
  {
    v14 = *a1;
    v13 = a1[1];
    sub_1C450B034();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = v13;
    *(v15 + 16) = 0xD000000000000041;
    *(v15 + 24) = 0x80000001C4FB2690;
    v16 = v45;
    *(v15 + 32) = v44;
    *(v15 + 48) = v16;
    *(v15 + 64) = 3;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return v14;
  }

  v48 = MEMORY[0x1E69E7CD0];
  v47 = MEMORY[0x1E69E7CD0];
  v1 = a1[33];
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v4 = (v2 + 72);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *v4;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFA598();
      v8 = sub_1C4EFA538();

      if (v8)
      {
        sub_1C4EFA6E8();
        v10 = *(v9 + 8);
        v11 = sub_1C4EFA558();
        sub_1C44869B4(&v44, v11, v12);
      }

      v4 += 7;
      --v3;
    }

    while (v3);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  v17 = a1;
  if (a1[31])
  {
    v18 = a1[31];
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v18 + 16);
  if (!v19)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

LABEL_26:
    v37 = v47;
    *(&v45 + 1) = sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    v46 = sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50);
    *&v44 = v37;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870);
    v38 = *MEMORY[0x1E698E928];
    sub_1C4EFA598();
    v14 = v40;
    v39 = sub_1C4F005D8();
    if (!v41)
    {
      v14 = v39;
      sub_1C4F00618();
      sub_1C4F00608();
      if (v17[29])
      {
        sub_1C43FF5E8();
        SQLConnection.installStableGraph(config:)();

        sub_1C43FF5E8();
        SQLConnection.installEventGraph(config:)();
      }

      if (v17[30])
      {
        sub_1C43FF5E8();
        SQLConnection.installGlobalKnowledge(config:)();

        sub_1C43FF5E8();
        SQLConnection.installStaticAssets(config:)();
      }
    }

    return v14;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4415EA8();
  v20 = (v18 + 48);
  sub_1C440FC00();
  while (1)
  {
    v22 = *(v20 - 1);
    v21 = *v20;
    v23 = v20[2];
    v24 = v20[5];
    *&v44 = v22;
    *(&v44 + 1) = v21;
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v25 = sub_1C4F02058();
    if (v25[2] != 2)
    {

      goto LABEL_23;
    }

    if (!v25[2])
    {
      break;
    }

    v27 = v25[4];
    v28 = v25[5];
    v29 = v25[6];
    v30 = v25[7];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = MEMORY[0x1C693FEF0](v27, v28, v29, v30);
    v32 = v31;

    if (v25[2] < 2uLL)
    {
      goto LABEL_33;
    }

    v33 = v25[8];
    v34 = v25[9];
    v43 = v32;
    v36 = v25[10];
    v35 = v25[11];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C440FC00();
    MEMORY[0x1C693FEF0]();

    v21 = v43;
LABEL_23:
    v20 += 8;
    sub_1C44869B4(&v44, v22, v21);

    if (!--v19)
    {

      v17 = a1;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Stage.checkCancellation()()
{
  v3 = v1;
  v4 = v0;
  v5 = sub_1C43FCDF8(v0);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  if (sub_1C4F01948())
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDE2DE10);
    v17 = *(v7 + 16);
    v17(v15, v2, v4);
    v18 = sub_1C4F00968();
    v19 = sub_1C4F01CF8();
    if (os_log_type_enabled(v18, v19))
    {
      sub_1C43FECF0();
      v20 = swift_slowAlloc();
      v30 = v19;
      v21 = v3;
      v22 = v20;
      sub_1C43FEC60();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v22 = 136315138;
      v17(v12, v15, v4);
      v23 = *(v7 + 8);
      v23(v15, v4);
      v24 = *(v21 + 8);
      sub_1C442E564();
      v25 = sub_1C4F02858();
      v27 = v26;
      v23(v12, v4);
      v28 = sub_1C441D828(v25, v27, &v31);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_1C43F8000, v18, v30, "%s going to defer", v22, 0xCu);
      sub_1C440962C(v29);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
      (*(v7 + 8))(v15, v4);
    }

    sub_1C4F01828();
    sub_1C4472550(&qword_1EDDFCF00, MEMORY[0x1E69E8550]);
    swift_allocError();
    sub_1C4F00EA8();
    swift_willThrow();
  }
}

void Stage.description.getter()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C4EFD548();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = type metadata accessor for Source();
  v14 = sub_1C43FBD18(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v19 = (v18 - v17);
  sub_1C4F02248();
  MEMORY[0x1C6940010](60, 0xE100000000000000);
  swift_getMetatypeMetadata();
  v20 = sub_1C4F01198();
  MEMORY[0x1C6940010](v20);

  MEMORY[0x1C6940010](0x203A67747320, 0xE600000000000000);
  v21 = v1[4];
  v22 = sub_1C43FF5F4();
  v23(v22);
  v24 = StageName.description.getter();
  MEMORY[0x1C6940010](v24);

  MEMORY[0x1C6940010](0x203A637273202CLL, 0xE700000000000000);
  v25 = v1[3];
  v26 = sub_1C43FF5F4();
  v27(v26);
  MEMORY[0x1C6940010](*v19, v19[1]);
  sub_1C447EBE4(v19, type metadata accessor for Source);
  MEMORY[0x1C6940010](0x203A65202CLL, 0xE500000000000000);
  v28 = v1[2];
  v29 = sub_1C43FF5F4();
  v30(v29);
  v31 = sub_1C4EFD3D8();
  v33 = v32;
  (*(v7 + 8))(v12, v4);
  MEMORY[0x1C6940010](v31, v33);

  MEMORY[0x1C6940010](0x203A70202CLL, 0xE500000000000000);
  v34 = v1[6];
  v35 = sub_1C43FF5F4();
  v36(v35);
  sub_1C448D934(v3);
  sub_1C43FE9F0();
}

void ResumableStage.token()()
{
  sub_1C43FBD3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C43FCDF8(v4);
  v98 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v90 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v90 - v15;
  v16 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v95 = &v90 - v20;
  v21 = sub_1C43FBE44();
  v94 = type metadata accessor for ConstructionProgressTokens(v21);
  v22 = sub_1C43FBCE0(v94);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v91 = v26 - v25;
  sub_1C43FBE44();
  v27 = type metadata accessor for PhaseStores();
  v28 = sub_1C43FBCE0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  v34 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v34);
  v36 = *(v35 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  v38 = sub_1C4413644();
  v97 = type metadata accessor for ProgressTokens(v38);
  v39 = sub_1C43FBCE0(v97);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBCC4();
  v92 = v43 - v42;
  swift_getAssociatedTypeWitness();
  sub_1C4404C28();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C4404C28();
  swift_getAssociatedConformanceWitness();
  v45 = type metadata accessor for ProgressToken();
  v96 = v7;
  sub_1C440BAA8(v7, 1, 1, v45);
  v46 = *(v3 + 8);
  v47 = v46[6];
  v99 = v0;
  v48 = sub_1C442E564();
  v49(v48, v46);
  switch(LOBYTE(v100[0]))
  {
    case 2:

      goto LABEL_5;
    case 3:
      sub_1C44133C0();
      break;
    default:
      break;
  }

  sub_1C4426E50();
  AssociatedConformanceWitness = sub_1C4F02938();

  if ((AssociatedConformanceWitness & 1) == 0)
  {
    v59 = v46[5];
    v60 = sub_1C442E564();
    v61(v60, v46);
    v62 = *(v33 + *(v27 + 24));

    sub_1C441A548();
    sub_1C447EBE4(v33, v63);
    v101 = v5;
    v102 = v3;
    sub_1C4422F90(v100);
    sub_1C444FFCC();
    (AssociatedConformanceWitness)();
    sub_1C4403758();
    v64 = v95;
    sub_1C4492704(v100, 0, v65, sub_1C449277C);

    sub_1C440962C(v100);
    if (sub_1C44157D4(v64, 1, v94) == 1)
    {
      v56 = &unk_1EC0BAC20;
      v57 = &unk_1C4F141E0;
      v58 = v64;
      goto LABEL_9;
    }

    v66 = v91;
    sub_1C449F390();
    v70 = objc_autoreleasePoolPush();
    sub_1C440535C();
    if (v3)
    {
      v68 = v100[0];
      objc_autoreleasePoolPop(v70);
      v69 = type metadata accessor for ConstructionProgressTokens;
      goto LABEL_14;
    }

    objc_autoreleasePoolPop(v70);
    v89 = type metadata accessor for ConstructionProgressTokens;
LABEL_22:
    sub_1C447EBE4(v66, v89);
    goto LABEL_23;
  }

LABEL_5:
  v50 = v46[5];
  v51 = sub_1C442E564();
  v52(v51, v46);
  v53 = *(v33 + *(v27 + 24));

  sub_1C441A548();
  sub_1C447EBE4(v33, v54);
  v101 = v5;
  v102 = v3;
  sub_1C4422F90(v100);
  sub_1C444FFCC();
  (AssociatedConformanceWitness)();
  sub_1C4417828();
  sub_1C4492704(v100, 1, v55, sub_1C44FEF60);

  sub_1C440962C(v100);
  if (sub_1C44157D4(v1, 1, v97) == 1)
  {
    v56 = &unk_1EC0BA4B8;
    v57 = &unk_1C4F16F60;
    v58 = v1;
LABEL_9:
    sub_1C4420C3C(v58, v56, v57);
    goto LABEL_23;
  }

  v66 = v92;
  sub_1C449F390();
  v67 = objc_autoreleasePoolPush();
  sub_1C440535C();
  if (!v3)
  {
    objc_autoreleasePoolPop(v67);
    v89 = type metadata accessor for ProgressTokens;
    goto LABEL_22;
  }

  v68 = v100[0];
  objc_autoreleasePoolPop(v67);
  v69 = type metadata accessor for ProgressTokens;
LABEL_14:
  sub_1C447EBE4(v66, v69);
  v71 = v93;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v72 = sub_1C4F00978();
  sub_1C442B738(v72, qword_1EDE2DE10);
  (AssociatedConformanceWitness)(v71, v99, v5);
  v73 = sub_1C4F00968();
  v74 = sub_1C4F01CF8();
  if (os_log_type_enabled(v73, v74))
  {
    sub_1C43FECF0();
    v75 = swift_slowAlloc();
    v99 = v68;
    v76 = v75;
    sub_1C43FEC60();
    v98 = swift_slowAlloc();
    v100[0] = v98;
    *v76 = 136315138;
    (AssociatedConformanceWitness)(v90, v71, v5);
    v77 = *(v33 + 8);
    v78 = sub_1C4404C28();
    v77(v78);
    v79 = v46[1];
    v80 = sub_1C4F02858();
    v82 = v81;
    v83 = sub_1C4402120();
    v77(v83);
    v84 = sub_1C441D828(v80, v82, v100);

    *(v76 + 4) = v84;
    _os_log_impl(&dword_1C43F8000, v73, v74, "No progress token for %s", v76, 0xCu);
    sub_1C440962C(v98);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v85 = v99;
  }

  else
  {
    v86 = *(v33 + 8);
    v87 = sub_1C4404C28();
    v88(v87);
    v85 = v68;
  }

LABEL_23:
  sub_1C43FE9F0();
}

uint64_t sub_1C4B46E8C()
{
  v1 = v0[44];
  sub_1C4407B64();
  sub_1C447EBE4(v2, v3);
  v4 = v0[46];
  v5 = v0[44];
  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[39];
  v9 = v0[37];

  sub_1C43FBDA0();

  return v10();
}

void sub_1C4B47054()
{
  sub_1C440A0CC();
  v8 = *(v0 + 48);
  sub_1C4460410();
  v2 = *(v1 + 8);
  v3 = sub_1C4402120();
  v4(v3);

  sub_1C43FBDA0();
  v5 = *(v0 + 232);
  sub_1C43FD0C0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C4B47180(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = a1[3];
  if (v9)
  {
    v10 = a1[4];
    LOBYTE(v15[0]) = a2 & 1;

    v9(v5, a1, v15, a3, a4);
    return sub_1C44239FC(v9);
  }

  else
  {
    v13 = *a1;
    v12 = a1[1];
    if (a4)
    {
      v15[0] = a3;
      v15[1] = a4;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](46, 0xE100000000000000);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v13, v12);
    }

    else
    {
      v14 = a1[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C495C064();
  }
}

uint64_t sub_1C4B47350(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_1C4EF93D8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1C4EF93C8();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ProgressToken();
  swift_getWitnessTable();
  v10 = sub_1C4EF93B8();
  v12 = v11;

  if (v5)
  {
    *a5 = v5;
  }

  else
  {
    v14 = *a1;
    v15 = a1[1];
    *a1 = v10;
    a1[1] = v12;
    return sub_1C441DFEC(v14, v15);
  }

  return result;
}

uint64_t sub_1C4B474A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  swift_getAssociatedTypeWitness();
  sub_1C446927C();
  sub_1C446927C();
  v10 = type metadata accessor for ProgressToken();
  v11 = sub_1C4F01F48();
  sub_1C43FCDF8(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FE94C();
  result = a6(0);
  v18 = (a1 + *(result + 28));
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    v20 = *v18;
    v21 = sub_1C4EF9348();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_1C44344B8(v20, v19);
    sub_1C4EF9338();
    swift_getWitnessTable();
    sub_1C4EF9328();
    sub_1C441DFEC(v20, v19);

    if (v6)
    {
      *a5 = v6;
    }

    else
    {
      sub_1C440BAA8(&protocol requirements base descriptor for ResumableStage, 0, 1, v10);
      return (*(v13 + 40))(a2, &protocol requirements base descriptor for ResumableStage, v11);
    }
  }

  return result;
}

uint64_t dispatch thunk of Stage.execute()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C4707B70;
  v6 = sub_1C4404C28();

  return v8(v6);
}

uint64_t LinkingSubStageName.rawValue.getter()
{
  result = 0x676E696B636F6C62;
  switch(*v0)
  {
    case 1:
      result = sub_1C43FF604();
      break;
    case 2:
      v2 = 0x69686374616DLL;
      goto LABEL_6;
    case 3:
      v2 = 0x697075646564;
LABEL_6:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 4:
      result = sub_1C4409050();
      break;
    case 5:
      result = sub_1C4411228();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static StageName.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 6:
      if (v2 == 6)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 7:
      if (v2 == 7)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    case 0xA:
      if (v2 != 10)
      {
        goto LABEL_13;
      }

LABEL_11:
      result = 1;
      break;
    default:
      if ((v2 - 6) >= 5)
      {
        result = sub_1C4684D64();
      }

      else
      {
LABEL_13:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_1C4B47BD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696372756F73 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F66736E617274 && a2 == 0xEC000000676E696DLL;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E697070616DLL && a2 == 0xE700000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E49656372756F73 && a2 == 0xEF6E6F6974736567;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E696B6E696CLL && a2 == 0xE700000000000000;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E6F69737566 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4B47DC4(char a1)
{
  result = 0x676E696372756F73;
  switch(a1)
  {
    case 1:
      result = 0x726F66736E617274;
      break;
    case 2:
      v3 = 1886413165;
      goto LABEL_5;
    case 3:
      result = 0x6E49656372756F73;
      break;
    case 4:
      v3 = 1802398060;
LABEL_5:
      result = v3 | 0x676E6900000000;
      break;
    case 5:
      result = 0x6E6F69737566;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B47E80(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6567617453627573 && a2 == 0xEC000000656D614ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4B47F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B47BD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B47F4C(uint64_t a1)
{
  v2 = sub_1C4B49278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B47F88(uint64_t a1)
{
  v2 = sub_1C4B49278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B47FC4(uint64_t a1)
{
  v2 = sub_1C4B492CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B48000(uint64_t a1)
{
  v2 = sub_1C4B492CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B48040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B47E80(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4B4806C(uint64_t a1)
{
  v2 = sub_1C4B49320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B480A8(uint64_t a1)
{
  v2 = sub_1C4B49320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B480E4(uint64_t a1)
{
  v2 = sub_1C4B4941C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B48120(uint64_t a1)
{
  v2 = sub_1C4B4941C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B4815C(uint64_t a1)
{
  v2 = sub_1C4B493C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B48198(uint64_t a1)
{
  v2 = sub_1C4B493C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B481D4(uint64_t a1)
{
  v2 = sub_1C4B494C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B48210(uint64_t a1)
{
  v2 = sub_1C4B494C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B4824C(uint64_t a1)
{
  v2 = sub_1C4B49470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B48288(uint64_t a1)
{
  v2 = sub_1C4B49470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StageName.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C3A00, &qword_1C4F536A0);
  v4 = sub_1C43FCDF8(v3);
  v77 = v5;
  v78 = v4;
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v74 = v9;
  v10 = sub_1C456902C(&qword_1EC0C3A08, &qword_1C4F536A8);
  v11 = sub_1C43FCDF8(v10);
  v75 = v12;
  v76 = v11;
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  v73 = v16;
  v17 = sub_1C456902C(&qword_1EC0C3A10, &qword_1C4F536B0);
  v18 = sub_1C43FCDF8(v17);
  v71 = v19;
  v72 = v18;
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBC74();
  v70 = v23;
  v24 = sub_1C456902C(&qword_1EC0C3A18, &qword_1C4F536B8);
  v25 = sub_1C43FCDF8(v24);
  v68 = v26;
  v69 = v25;
  v28 = *(v27 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBC74();
  v67 = v30;
  v31 = sub_1C456902C(&qword_1EC0C3A20, &qword_1C4F536C0);
  v32 = sub_1C43FCDF8(v31);
  v65 = v33;
  v66 = v32;
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v64 - v37;
  v39 = sub_1C456902C(&qword_1EC0C3A28, &qword_1C4F536C8);
  sub_1C43FCDF8(v39);
  v64 = v40;
  v42 = *(v41 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  v44 = sub_1C456902C(&qword_1EC0C3A30, &qword_1C4F536D0);
  v45 = sub_1C43FCDF8(v44);
  v79 = v46;
  v80 = v45;
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v64 - v50;
  v52 = *v1;
  v53 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B49278();
  sub_1C4F02BF8();
  switch(v52)
  {
    case 6:
      v81 = 0;
      sub_1C4B494C4();
      sub_1C4400DF4();
      v54 = sub_1C4417840();
      v56 = v39;
      goto LABEL_8;
    case 7:
      v82 = 1;
      sub_1C4B49470();
      sub_1C4400DF4();
      v56 = v66;
      v55 = *(v65 + 8);
      v54 = v38;
LABEL_8:
      v55(v54, v56);
      goto LABEL_9;
    case 8:
      v83 = 2;
      sub_1C4B4941C();
      v57 = v67;
      sub_1C4400DF4();
      v59 = v68;
      v58 = v69;
      goto LABEL_6;
    case 9:
      v84 = 3;
      sub_1C4B493C8();
      v57 = v70;
      sub_1C4400DF4();
      v59 = v71;
      v58 = v72;
      goto LABEL_6;
    case 10:
      v87 = 5;
      sub_1C4B492CC();
      v57 = v74;
      sub_1C4400DF4();
      v59 = v77;
      v58 = v78;
LABEL_6:
      (*(v59 + 8))(v57, v58);
LABEL_9:
      result = (*(v79 + 8))(v51, v53);
      break;
    default:
      v86 = 4;
      sub_1C4B49320();
      v61 = v73;
      v62 = v80;
      sub_1C4F02718();
      v85 = v52;
      sub_1C4B49374();
      v63 = v76;
      sub_1C4F027E8();
      (*(v75 + 8))(v61, v63);
      result = (*(v79 + 8))(v51, v62);
      break;
  }

  return result;
}

uint64_t StageName.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v110 = a2;
  v3 = sub_1C456902C(&qword_1EC0C3A78, &qword_1C4F536D8);
  v105 = sub_1C43FCDF8(v3);
  v106 = v4;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  v109 = v8;
  v103 = sub_1C456902C(&qword_1EC0C3A80, &qword_1C4F536E0);
  sub_1C43FCDF8(v103);
  v107 = v9;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v113 = v13;
  v112 = sub_1C456902C(&qword_1EC0C3A88, &qword_1C4F536E8);
  sub_1C43FCDF8(v112);
  v104 = v14;
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v111 = v18;
  v19 = sub_1C456902C(&qword_1EC0C3A90, &qword_1C4F536F0);
  v20 = sub_1C43FCDF8(v19);
  v101 = v21;
  v102 = v20;
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBC74();
  v108 = v25;
  v26 = sub_1C456902C(&qword_1EC0C3A98, &qword_1C4F536F8);
  v27 = sub_1C43FCDF8(v26);
  v99 = v28;
  v100 = v27;
  v30 = *(v29 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v93 - v32;
  v34 = sub_1C456902C(&qword_1EC0C3AA0, &qword_1C4F53700);
  sub_1C43FCDF8(v34);
  v98 = v35;
  v37 = *(v36 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v93 - v39;
  v41 = sub_1C456902C(&qword_1EC0C3AA8, &unk_1C4F53708);
  sub_1C43FCDF8(v41);
  v43 = v42;
  v45 = *(v44 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v93 - v47;
  v49 = a1[3];
  v50 = a1[4];
  v114 = a1;
  sub_1C4409678(a1, v49);
  sub_1C4B49278();
  v51 = v115;
  sub_1C4F02BC8();
  if (v51)
  {
    goto LABEL_9;
  }

  v95 = v34;
  v96 = v40;
  v97 = v33;
  v53 = v111;
  v52 = v112;
  v115 = v43;
  v54 = v48;
  v55 = sub_1C4F026E8();
  result = sub_1C4570934(v55, 0);
  if (v58 == v59 >> 1)
  {
LABEL_8:
    v70 = sub_1C4F022E8();
    swift_allocError();
    v72 = v71;
    v73 = *(sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90) + 48);
    *v72 = &type metadata for StageName;
    sub_1C4F025F8();
    sub_1C4F022D8();
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x1E69E6AF8], v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v115 + 8))(v54, v41);
LABEL_9:
    v74 = v114;
    return sub_1C440962C(v74);
  }

  if (v58 < (v59 >> 1))
  {
    v60 = v48;
    v94 = *(v57 + v58);
    sub_1C4570928(v58 + 1);
    v62 = v61;
    v64 = v63;
    swift_unknownObjectRelease();
    if (v62 == v64 >> 1)
    {
      switch(v94)
      {
        case 1:
          v117 = 1;
          sub_1C4B49470();
          sub_1C442D360();
          swift_unknownObjectRelease();
          v83 = sub_1C4417840();
          v84(v83);
          v85 = sub_1C4406450();
          v86(v85);
          v69 = 7;
          break;
        case 2:
          v118 = 2;
          sub_1C4B4941C();
          sub_1C442D360();
          swift_unknownObjectRelease();
          v77 = sub_1C4417840();
          v78(v77);
          v79 = sub_1C4406450();
          v80(v79);
          v69 = 8;
          break;
        case 3:
          v119 = 3;
          sub_1C4B493C8();
          sub_1C4F025E8();
          swift_unknownObjectRelease();
          (*(v104 + 8))(v53, v52);
          v81 = sub_1C4406450();
          v82(v81);
          v69 = 9;
          break;
        case 4:
          v121 = 4;
          sub_1C4B49320();
          sub_1C442D360();
          sub_1C4B49518();
          v75 = v103;
          sub_1C4F026C8();
          v76 = v115;
          swift_unknownObjectRelease();
          v91 = sub_1C4417840();
          v92(v91, v75);
          (*(v76 + 8))(v60, v41);
          v69 = v120;
          break;
        case 5:
          v122 = 5;
          sub_1C4B492CC();
          sub_1C442D360();
          swift_unknownObjectRelease();
          v87 = sub_1C4417840();
          v88(v87);
          v89 = sub_1C4406450();
          v90(v89);
          v69 = 10;
          break;
        default:
          v116 = 0;
          sub_1C4B494C4();
          sub_1C442D360();
          swift_unknownObjectRelease();
          v65 = sub_1C4417840();
          v66(v65, v95);
          v67 = sub_1C4406450();
          v68(v67);
          v69 = 6;
          break;
      }

      v74 = v114;
      *v110 = v69;
      return sub_1C440962C(v74);
    }

    v54 = v48;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B490C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4493320();

  return MEMORY[0x1EEE09B18](a1, a2, a3, v6);
}

IntelligencePlatformCore::LinkingSubStageName_optional __swiftcall LinkingSubStageName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C4F025D8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C4B49194@<X0>(uint64_t *a1@<X8>)
{
  result = LinkingSubStageName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C4B4926C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4684D64();
}

unint64_t sub_1C4B49278()
{
  result = qword_1EC0C3A38;
  if (!qword_1EC0C3A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3A38);
  }

  return result;
}

unint64_t sub_1C4B492CC()
{
  result = qword_1EC0C3A40;
  if (!qword_1EC0C3A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3A40);
  }

  return result;
}

unint64_t sub_1C4B49320()
{
  result = qword_1EC0C3A48;
  if (!qword_1EC0C3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3A48);
  }

  return result;
}

unint64_t sub_1C4B49374()
{
  result = qword_1EC0C3A50;
  if (!qword_1EC0C3A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3A50);
  }

  return result;
}

unint64_t sub_1C4B493C8()
{
  result = qword_1EC0C3A58;
  if (!qword_1EC0C3A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3A58);
  }

  return result;
}

unint64_t sub_1C4B4941C()
{
  result = qword_1EC0C3A60;
  if (!qword_1EC0C3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3A60);
  }

  return result;
}

unint64_t sub_1C4B49470()
{
  result = qword_1EC0C3A68;
  if (!qword_1EC0C3A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3A68);
  }

  return result;
}

unint64_t sub_1C4B494C4()
{
  result = qword_1EC0C3A70;
  if (!qword_1EC0C3A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3A70);
  }

  return result;
}

unint64_t sub_1C4B49518()
{
  result = qword_1EC0C3AB0;
  if (!qword_1EC0C3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3AB0);
  }

  return result;
}

unint64_t sub_1C4B49574()
{
  result = qword_1EDDF0758;
  if (!qword_1EDDF0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0758);
  }

  return result;
}

unint64_t sub_1C4B495CC()
{
  result = qword_1EC0C3AB8;
  if (!qword_1EC0C3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3AB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StageName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF6)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF5)
  {
    v7 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4B496F4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C4B49708(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

_BYTE *sub_1C4B49738(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StageName.LinkingCodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C4B49914()
{
  result = qword_1EC0C3AC0;
  if (!qword_1EC0C3AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3AC0);
  }

  return result;
}

unint64_t sub_1C4B4996C()
{
  result = qword_1EC0C3AC8;
  if (!qword_1EC0C3AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3AC8);
  }

  return result;
}

unint64_t sub_1C4B499C4()
{
  result = qword_1EC0C3AD0;
  if (!qword_1EC0C3AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3AD0);
  }

  return result;
}

unint64_t sub_1C4B49A1C()
{
  result = qword_1EC0C3AD8;
  if (!qword_1EC0C3AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3AD8);
  }

  return result;
}

unint64_t sub_1C4B49A74()
{
  result = qword_1EC0C3AE0;
  if (!qword_1EC0C3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3AE0);
  }

  return result;
}

unint64_t sub_1C4B49ACC()
{
  result = qword_1EC0C3AE8;
  if (!qword_1EC0C3AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3AE8);
  }

  return result;
}

unint64_t sub_1C4B49B24()
{
  result = qword_1EC0C3AF0;
  if (!qword_1EC0C3AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3AF0);
  }

  return result;
}

unint64_t sub_1C4B49B7C()
{
  result = qword_1EC0C3AF8;
  if (!qword_1EC0C3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3AF8);
  }

  return result;
}

unint64_t sub_1C4B49BD4()
{
  result = qword_1EC0C3B00;
  if (!qword_1EC0C3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3B00);
  }

  return result;
}

unint64_t sub_1C4B49C2C()
{
  result = qword_1EC0C3B08;
  if (!qword_1EC0C3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3B08);
  }

  return result;
}

unint64_t sub_1C4B49C84()
{
  result = qword_1EC0C3B10;
  if (!qword_1EC0C3B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3B10);
  }

  return result;
}

unint64_t sub_1C4B49CDC()
{
  result = qword_1EC0C3B18;
  if (!qword_1EC0C3B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3B18);
  }

  return result;
}

unint64_t sub_1C4B49D34()
{
  result = qword_1EC0C3B20;
  if (!qword_1EC0C3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3B20);
  }

  return result;
}

unint64_t sub_1C4B49D8C()
{
  result = qword_1EC0C3B28;
  if (!qword_1EC0C3B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3B28);
  }

  return result;
}

unint64_t sub_1C4B49DE4()
{
  result = qword_1EC0C3B30;
  if (!qword_1EC0C3B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3B30);
  }

  return result;
}

unint64_t sub_1C4B49E3C()
{
  result = qword_1EC0C3B38;
  if (!qword_1EC0C3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3B38);
  }

  return result;
}

unint64_t sub_1C4B49E90()
{
  result = qword_1EC0C3B40;
  if (!qword_1EC0C3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3B40);
  }

  return result;
}

uint64_t sub_1C4B49EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventTriple(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  while (v15 != v14)
  {
    v16 = *(type metadata accessor for TranslatedEntityTriple(0) - 8);
    v17 = v14 + 1;
    v18 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14;
    sub_1C44EC3C8(a2, type metadata accessor for EventTriple);
    sub_1C4471BAC(v13, v8);
    sub_1C483CC80();
    sub_1C44BCC4C(v11, type metadata accessor for EventTriple);
    sub_1C44BCC4C(v13, type metadata accessor for EventTriple);
    v14 = v17;
  }
}

uint64_t sub_1C4B4A0BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphTriple(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  while (v15 != v14)
  {
    v16 = *(type metadata accessor for TranslatedEntityTriple(0) - 8);
    v17 = v14 + 1;
    v18 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14;
    sub_1C44EC3C8(a2, type metadata accessor for GraphTriple);
    sub_1C4471BAC(v13, v8);
    sub_1C483CF08();
    sub_1C44BCC4C(v11, type metadata accessor for GraphTriple);
    sub_1C44BCC4C(v13, type metadata accessor for GraphTriple);
    v14 = v17;
  }
}

uint64_t sub_1C4B4A28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConstructionEventTriple(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  while (v15 != v14)
  {
    v16 = *(type metadata accessor for TranslatedEntityTriple(0) - 8);
    v17 = v14 + 1;
    v18 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14;
    sub_1C44EC3C8(a2, type metadata accessor for ConstructionEventTriple);
    sub_1C4471BAC(v13, v8);
    sub_1C483D190();
    sub_1C44BCC4C(v11, type metadata accessor for ConstructionEventTriple);
    sub_1C44BCC4C(v13, type metadata accessor for ConstructionEventTriple);
    v14 = v17;
  }
}

uint64_t sub_1C4B4A45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConstructionGraphTriple(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v20 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = 0;
  v15 = *(a1 + 16);
  while (v15 != v14)
  {
    v16 = *(type metadata accessor for TranslatedEntityTriple(0) - 8);
    v17 = v14 + 1;
    v18 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14;
    sub_1C44EC3C8(a2, type metadata accessor for ConstructionGraphTriple);
    sub_1C4471BAC(v13, v8);
    sub_1C483D418();
    sub_1C44BCC4C(v11, type metadata accessor for ConstructionGraphTriple);
    sub_1C44BCC4C(v13, type metadata accessor for ConstructionGraphTriple);
    v14 = v17;
  }
}

uint64_t sub_1C4B4A62C(uint64_t *a1)
{
  v2 = *(type metadata accessor for TranslatedEntityTriple(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B0D8(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1C4B58678(v7, type metadata accessor for TranslatedEntityTriple, sub_1C4B58ECC, sub_1C4B58E54);
  *a1 = v3;
  return result;
}

uint64_t sub_1C4B4A710(uint64_t *a1)
{
  v2 = *(type metadata accessor for EventTriple(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B0F0(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1C4B58678(v7, type metadata accessor for EventTriple, sub_1C4B58EE4, sub_1C4B58E6C);
  *a1 = v3;
  return result;
}

uint64_t sub_1C4B4A7F4(uint64_t *a1)
{
  v2 = *(type metadata accessor for GraphTriple(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B108(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1C4B58678(v7, type metadata accessor for GraphTriple, sub_1C4B58EFC, sub_1C4B58E84);
  *a1 = v3;
  return result;
}

uint64_t sub_1C4B4A8D8(uint64_t *a1)
{
  v2 = *(type metadata accessor for ConstructionEventTriple(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B120(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1C4B58678(v7, type metadata accessor for ConstructionEventTriple, sub_1C4B58F14, sub_1C4B58E9C);
  *a1 = v3;
  return result;
}

uint64_t sub_1C4B4A9BC(uint64_t *a1)
{
  v2 = *(type metadata accessor for ConstructionGraphTriple(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B138(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1C4B58678(v7, type metadata accessor for ConstructionGraphTriple, sub_1C4B58F2C, sub_1C4B58EB4);
  *a1 = v3;
  return result;
}

unint64_t sub_1C4B4AAA0(char a1)
{
  result = 0xD00000000000001ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000046;
      break;
    case 2:
      result = 0xD0000000000000D5;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000080;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4B4ABB0()
{
  sub_1C43FEC28();
  v69 = v1;
  v72 = v2;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v65 = v14;
  v15 = sub_1C43FBE44();
  v16 = v4(v15);
  v17 = (v5 + v16[11]);
  v18 = *v17;
  v19 = v17[1];
  v87[0] = v7;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v20 = objc_autoreleasePoolPush();
  sub_1C4464BB4();
  v83 = v21;
  v84 = v22;
  sub_1C4415EA8();
  sub_1C4F01FC8();

  objc_autoreleasePoolPop(v20);
  sub_1C4B34660();
  v23 = objc_autoreleasePoolPush();
  v24 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4499940(v24, v25, v26, v27, v28, v29, v30, v31, v65, 0, v69, v72, v75, v76, v77, v78, v79, v80, v87, v82, v83, v84);
  sub_1C44EC90C(v32, v33, v34, v35, v36, v37, v38, v39, v66, v68, v70, v73, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v18, v19, v87[0], v87[1]);

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C44134BC();
  sub_1C4401CBC(v40, &unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4B59088();
  v41 = sub_1C4F01048();
  v43 = v42;

  objc_autoreleasePoolPop(v23);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v44 = objc_autoreleasePoolPush();
  v85 = v41;
  v86 = v43;
  v83 = 30;
  v84 = 0xE100000000000000;
  v45 = sub_1C4F01FC8();

  objc_autoreleasePoolPop(v44);
  v77 = v71;
  sub_1C4BABC84(v74, &v75, v45);
  v47 = v46;

  v85 = *(v5 + v16[9]);
  if (v47)
  {
  }

  else
  {
    SourceSet.remove(_:)(v71, v67);
    sub_1C4420C3C(v67, &unk_1EC0C0760, &qword_1C4F170D0);
  }

  v48 = sub_1C4EFF0C8();
  sub_1C43FCE50(v48);
  (*(v49 + 16))(v9, v5);
  v50 = v16[5];
  v51 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v51);
  v53 = *(v52 + 16);
  v53(v9 + v50, v5 + v50, v51);
  v54 = v16[6];
  v55 = sub_1C4EFF8A8();
  sub_1C43FCE50(v55);
  (*(v56 + 16))(v9 + v54, v5 + v54);
  v53(v9 + v16[7], v5 + v16[7], v51);
  v57 = (v5 + v16[8]);
  v59 = *v57;
  v58 = v57[1];
  v60 = v85;
  v61 = *(v5 + v16[10]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  v62 = (v9 + v16[8]);
  *v62 = v59;
  v62[1] = v58;
  *(v9 + v16[9]) = v60;
  *(v9 + v16[10]) = v61;
  v63 = (v9 + v16[11]);
  *v63 = v41;
  v63[1] = v43;
  *(v9 + v16[12]) = v64;
  sub_1C44086C4();
}

void sub_1C4B4AF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_1C456902C(v27, v25);
  sub_1C43FBCE0(v29);
  v31 = *(v30 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&a9 - v33);
  v36 = *v20;
  v35 = v20[1];
  v37 = *(*v20 + 16);
  if (v35 == v37)
  {
    sub_1C4401E28();
    sub_1C43FE9F0();

    sub_1C440BAA8(v38, v39, v40, v41);
  }

  else
  {
    if (v35 >= v37)
    {
      __break(1u);
    }

    else
    {
      v43 = *(v24(0) - 8);
      v44 = v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v35;
      v20[1] = v35 + 1;
      v45 = *(v29 + 48);
      v46 = v20[2];
      *v34 = v46;
      sub_1C4471BAC(v44, v34 + v45);
      if (!__OFADD__(v46, 1))
      {
        v20[2] = v46 + 1;
        v47 = sub_1C44089C8();
        sub_1C4B58D70(v47, v48, v28, v26);
        sub_1C4401E28();
        sub_1C440BAA8(v49, v50, v51, v52);
        sub_1C43FE9F0();
        return;
      }
    }

    __break(1u);
  }
}

uint64_t StandardEntityFusion.init(stores:entityClass:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  sub_1C44856C8(a1, a5);
  v9 = type metadata accessor for StandardEntityFusion();
  v10 = v9[5];
  v11 = sub_1C4EFD548();
  sub_1C43FCE50(v11);
  (*(v12 + 32))(a5 + v10, a2);
  result = sub_1C44856C8(a3, a5 + v9[6]);
  *(a5 + v9[7]) = v8;
  return result;
}

uint64_t sub_1C4B4B1BC(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v59 = a7;
  v68 = a6;
  v57 = type metadata accessor for ConstructionPhaseStatus(0);
  v12 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v55 - v16;
  v63 = sub_1C456902C(&qword_1EC0C39F0, &unk_1C4F54110);
  v66 = *(v63 - 8);
  v18 = *(v66 + 64);
  v19 = MEMORY[0x1EEE9AC00](v63);
  v65 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v62 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v67 = &v55 - v23;
  v24 = type metadata accessor for ProgressTokens(0);
  v25 = *(*(v24 - 1) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1C4EFD548();
  v29 = *(*(v28 - 8) + 16);
  v61 = a2;
  v60 = v29;
  v29(v27, a2, v28);
  v30 = &v27[v24[6]];
  v64 = a3;
  sub_1C4471BAC(a3, v30);
  v27[v24[5]] = 10;
  v31 = &v27[v24[7]];
  *v31 = a4;
  v31[1] = a5;
  *&v27[v24[8]] = v68;
  v27[v24[9]] = 1;
  sub_1C44344B8(a4, a5);
  sub_1C44B95C0(&qword_1EDDF7A80, type metadata accessor for ProgressTokens);
  v68 = a1;
  v32 = v78;
  sub_1C4EFB6A8();
  if (!v32)
  {
    v55 = v17;
    v73 = &type metadata for ProgressTokenColumn;
    v74 = sub_1C4492FAC();
    v33 = v74;
    LOBYTE(v72[0]) = 0;
    v70 = type metadata accessor for Source();
    v71 = sub_1C44B95C0(qword_1EDDF0D80, type metadata accessor for Source);
    v34 = sub_1C4422F90(v69);
    sub_1C4471BAC(v64, v34);
    v76 = sub_1C4EFB298();
    v77 = MEMORY[0x1E699FE60];
    v35 = v76;
    v56 = v76;
    sub_1C4422F90(v75);
    sub_1C4EFBB28();
    sub_1C4420C3C(v69, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v72);
    sub_1C44B95C0(&qword_1EDDF7A98, type metadata accessor for ProgressTokens);
    v78 = 0;
    v36 = v62;
    sub_1C4EFAE28();
    sub_1C440962C(v75);
    v73 = &type metadata for ProgressTokenColumn;
    v74 = v33;
    LOBYTE(v72[0]) = 1;
    v70 = v28;
    v71 = sub_1C44B95C0(&qword_1EDDFA240, MEMORY[0x1E69A92C8]);
    v37 = sub_1C4422F90(v69);
    v60(v37, v61, v28);
    v76 = v35;
    v77 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v75);
    sub_1C4EFBB28();
    sub_1C4420C3C(v69, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v72);
    sub_1C4401CBC(&qword_1EDDFA2A8, &qword_1EC0C39F0, &unk_1C4F54110);
    v38 = v63;
    sub_1C4EFB438();
    v39 = v66 + 8;
    v61 = *(v66 + 8);
    v61(v36, v38);
    sub_1C440962C(v75);
    v73 = &type metadata for ProgressTokenColumn;
    v74 = v33;
    LOBYTE(v72[0]) = 2;
    v40 = v56;
    v76 = v56;
    v77 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v75);
    sub_1C4EFBB38();
    sub_1C440962C(v72);
    sub_1C4EFB438();
    sub_1C440962C(v75);
    v73 = &type metadata for ProgressTokenColumn;
    v74 = v33;
    LOBYTE(v72[0]) = 3;
    v70 = &type metadata for StageName;
    v71 = sub_1C4493280();
    LOBYTE(v69[0]) = 9;
    v76 = v40;
    v77 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v75);
    sub_1C4EFBB68();
    sub_1C4420C3C(v69, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v72);
    v41 = v65;
    v42 = v61;
    sub_1C4EFB438();
    v42(v36, v38);
    sub_1C440962C(v75);
    v43 = v78;
    sub_1C4EFB898();
    v44 = v39;
    if (v43)
    {
      v42(v41, v38);
      v42(v67, v38);
    }

    else
    {
      v45 = v42;
      v66 = v44;
      v46 = sub_1C4EFBF38();
      v47 = v55;
      sub_1C440BAA8(v55, 1, 1, v46);
      sub_1C456902C(&qword_1EC0BDCC8, &qword_1C4F31978);
      v48 = *(sub_1C4EFB4E8() - 8);
      v49 = *(v48 + 72);
      v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      *(swift_allocObject() + 16) = xmmword_1C4F0D130;
      LOBYTE(v72[0]) = 2;
      v76 = MEMORY[0x1E69E6370];
      v77 = MEMORY[0x1E69A0148];
      LOBYTE(v75[0]) = 1;
      sub_1C44930A4();
      v51 = v47;
      sub_1C4EFB568();
      sub_1C4420C3C(v75, &qword_1EC0C5040, &qword_1C4F0F950);
      v52 = v67;
      sub_1C4EFB8A8();
      sub_1C4420C3C(v51, &unk_1EC0BCAB0, &unk_1C4F111A0);

      if (v59)
      {
        v53 = v58;
        sub_1C4471BAC(v64, v58);
        *(v53 + *(v57 + 20)) = 3;
        sub_1C44B95C0(&qword_1EDDE25F0, type metadata accessor for ConstructionPhaseStatus);
        sub_1C4EFB6C8();
        sub_1C44BCC4C(v53, type metadata accessor for ConstructionPhaseStatus);
      }

      v45(v65, v38);
      v45(v52, v38);
    }
  }

  return sub_1C44BCC4C(v27, type metadata accessor for ProgressTokens);
}

void sub_1C4B4BB78()
{
  sub_1C43FBD3C();
  v7 = sub_1C4423CA4(v1, v2, v3, v4, v5, v6);
  v8 = sub_1C43FCDF8(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v12 = sub_1C43FCDF8(v11);
  v54 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  sub_1C43FBE44();
  v19 = sub_1C4EFBD38();
  v20 = sub_1C4B59094(v19, MEMORY[0x1E69A0050]);
  sub_1C4422F90(v20);
  sub_1C4440DD4();
  sub_1C4EFEBB8();
  sub_1C4EFEB68();
  v21 = sub_1C44EB8F8();
  v22(v21);
  v23 = MEMORY[0x1E69E6158];
  v24 = sub_1C4B59030();
  v60 = v24;
  v61 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v59);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(v55, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v56);
  sub_1C43FC300();
  sub_1C4401CBC(v25, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C446286C();
  sub_1C440962C(v59);
  v57 = v19;
  v26 = sub_1C445AC14(MEMORY[0x1E69A0050]);
  sub_1C4422F90(v26);
  sub_1C4B58F44();
  v27 = sub_1C4EFD2F8();
  sub_1C4475624(v27, v28);
  sub_1C440C4CC();
  sub_1C4EFBB28();
  sub_1C4420C3C(v55, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C442A9D8();
  sub_1C44CD080();
  v29 = sub_1C441B504();
  v23(v29);
  sub_1C440962C(v59);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v30 = sub_1C44331AC();
  v31 = sub_1C44F0930(v30, xmmword_1C4F0D130);
  sub_1C442A644(v31, MEMORY[0x1E69A0038]);
  sub_1C44C04A4();
  sub_1C442F3C0();
  sub_1C4401CBC(v32, &unk_1EC0C0800, &qword_1C4F0F948);
  sub_1C44E7704();

  v33 = v0;
  v34 = MEMORY[0x1E699FE60];
  (v23)(v33, v11);
  sub_1C444C04C();
  if (!v35)
  {
    v57 = v19;
    v36 = sub_1C445AC14(MEMORY[0x1E69A0050]);
    sub_1C4422F90(v36);
    sub_1C4462064();
    sub_1C447FA24();
    switch(v38)
    {
      case 1:
        sub_1C4426D3C();
        break;
      case 2:
        sub_1C44336F0();
        break;
      case 3:
        sub_1C447CC4C();
        break;
      default:
        break;
    }

    v55[3] = MEMORY[0x1E69E6158];
    sub_1C4485AA8(v37);
    sub_1C440C4CC();
    sub_1C4EFBB28();
    sub_1C4420C3C(v55, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C442A9D8();
    sub_1C4460AF8();
    v39 = sub_1C446070C();
    v40(v39);
    sub_1C440962C(v59);
    v41 = *(v54 + 32);
    v42 = sub_1C44BBEDC();
    v43(v42);
  }

  if ((v53 & 1) == 0)
  {
    v57 = v19;
    v44 = sub_1C445AC14(MEMORY[0x1E69A0050]);
    sub_1C4422F90(v44);
    sub_1C44513D8();
    sub_1C442F988(MEMORY[0x1E69E63B0]);
    sub_1C440C4CC();
    sub_1C4EFB808();
    sub_1C440962C(v55);
    sub_1C442A9D8();
    sub_1C4460AF8();
    v45 = sub_1C446070C();
    v46(v45);
    sub_1C440962C(v59);
    v47 = *(v54 + 32);
    v48 = sub_1C44BBEDC();
    v49(v48);
  }

  v57 = v19;
  v58 = MEMORY[0x1E69A0040];
  sub_1C4422F90(v56);
  sub_1C44D3FFC();
  v60 = v24;
  v61 = v34;
  sub_1C4422F90(v59);
  sub_1C4441550(&qword_1EDDF00F0);
  sub_1C446BD00();
  sub_1C442A9D8();
  sub_1C44A1DD0();
  sub_1C440962C(v59);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v50 = sub_1C44331AC();
  sub_1C4457964(v50);
  sub_1C442A644(v51, MEMORY[0x1E69A0048]);
  sub_1C44D3FFC();
  sub_1C44507CC(&qword_1EDDF0108);
  sub_1C4475DD4();

  v52 = sub_1C4B58F6C();
  v23(v52);
  (v23)(v34, v11);
  sub_1C43FE9F0();
}

uint64_t sub_1C4B4C078@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v55 = a5;
  v52 = a4;
  v59 = a2;
  v60 = a1;
  v56 = a6;
  v50 = a3;
  v54 = a3;
  v6 = sub_1C4EFEEF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0BE558, &unk_1C4F54060);
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v49 - v21;
  v22 = sub_1C4EFBD38();
  v67 = v22;
  v68 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v66);
  sub_1C4EFBD48();
  sub_1C4EFEBB8();
  v23 = sub_1C4EFEB68();
  v25 = v24;
  (*(v7 + 8))(v10, v6);
  v26 = MEMORY[0x1E69E6158];
  v27 = MEMORY[0x1E69A0130];
  v64 = MEMORY[0x1E69E6158];
  v65 = MEMORY[0x1E69A0130];
  v62 = v23;
  v63 = v25;
  v28 = sub_1C4EFB298();
  v29 = MEMORY[0x1E699FE60];
  v70 = v28;
  v71 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v69);
  sub_1C4EFBB28();
  sub_1C4420C3C(&v62, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v66);
  sub_1C4401CBC(&qword_1EDDFA288, &qword_1EC0BE558, &unk_1C4F54060);
  sub_1C4EFB438();
  sub_1C440962C(v69);
  v67 = v22;
  v68 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v66);
  sub_1C4EFBD48();
  v30 = sub_1C4EFD2F8();
  v64 = v26;
  v65 = v27;
  v62 = v30;
  v63 = v31;
  v70 = v28;
  v71 = v29;
  sub_1C4422F90(v69);
  sub_1C4EFBB28();
  sub_1C4420C3C(&v62, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v66);
  sub_1C4EFB438();
  v32 = *(v58 + 8);
  v32(v17, v11);
  sub_1C440962C(v69);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v33 = swift_allocObject();
  v53 = xmmword_1C4F0D130;
  *(v33 + 16) = xmmword_1C4F0D130;
  v34 = MEMORY[0x1E69A0038];
  *(v33 + 56) = v22;
  *(v33 + 64) = v34;
  sub_1C4422F90((v33 + 32));
  sub_1C4EFBD48();
  sub_1C4401CBC(&qword_1EDDFA280, &qword_1EC0BE558, &unk_1C4F54060);
  sub_1C4EFB688();

  v57 = v20;
  v35 = v20;
  v36 = MEMORY[0x1E699FE60];
  v59 = v32;
  v32(v35, v11);
  if (v54 != 4)
  {
    v67 = v22;
    v68 = MEMORY[0x1E69A0050];
    sub_1C4422F90(v66);
    sub_1C4EFBD48();
    v37 = 0xE700000000000000;
    v38 = 0x6E776F6E6B6E75;
    switch(v50)
    {
      case 1:
        v37 = 0xE400000000000000;
        v38 = 1819047270;
        break;
      case 2:
        v37 = 0xE500000000000000;
        v38 = 0x61746C6564;
        break;
      case 3:
        v37 = 0xEA0000000000676ELL;
        v38 = 0x69686374614D6F74;
        break;
      default:
        break;
    }

    v64 = MEMORY[0x1E69E6158];
    v65 = MEMORY[0x1E69A0130];
    v62 = v38;
    v63 = v37;
    v70 = v28;
    v71 = v36;
    sub_1C4422F90(v69);
    sub_1C4EFBB28();
    sub_1C4420C3C(&v62, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v66);
    v39 = v51;
    v40 = v61;
    sub_1C4EFB438();
    v59(v40, v11);
    sub_1C440962C(v69);
    (*(v58 + 32))(v40, v39, v11);
  }

  if ((v55 & 1) == 0)
  {
    v67 = v22;
    v68 = MEMORY[0x1E69A0050];
    sub_1C4422F90(v66);
    sub_1C4EFBD48();
    v64 = MEMORY[0x1E69E63B0];
    v65 = MEMORY[0x1E69A0160];
    v62 = v52;
    v70 = v28;
    v71 = v36;
    sub_1C4422F90(v69);
    sub_1C4EFB808();
    sub_1C440962C(&v62);
    sub_1C440962C(v66);
    v41 = v57;
    v42 = v61;
    sub_1C4EFB438();
    v59(v42, v11);
    sub_1C440962C(v69);
    (*(v58 + 32))(v42, v41, v11);
  }

  v67 = v22;
  v68 = MEMORY[0x1E69A0040];
  sub_1C4422F90(v66);
  sub_1C4EFBD48();
  v70 = v28;
  v71 = v36;
  sub_1C4422F90(v69);
  sub_1C4401CBC(&qword_1EDDFA278, &qword_1EC0BE558, &unk_1C4F54060);
  v43 = v61;
  sub_1C4EFB448();
  sub_1C440962C(v66);
  v44 = v57;
  sub_1C4EFB438();
  sub_1C440962C(v69);
  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v45 = swift_allocObject();
  *(v45 + 16) = v53;
  v46 = MEMORY[0x1E69A0048];
  *(v45 + 56) = v22;
  *(v45 + 64) = v46;
  sub_1C4422F90((v45 + 32));
  sub_1C4EFBD48();
  sub_1C4401CBC(&qword_1EDDFA290, &qword_1EC0BE558, &unk_1C4F54060);
  sub_1C4EFB2F8();

  v47 = v59;
  v59(v44, v11);
  return v47(v43, v11);
}

uint64_t sub_1C4B4C914(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v25 = a5;
  v23 = a1;
  v26 = sub_1C456902C(&qword_1EC0BDFD0, &qword_1C4F324F8);
  v24 = *(v26 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v22 - v9;
  v11 = sub_1C456902C(&qword_1EC0BE558, &unk_1C4F54060);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  type metadata accessor for TranslatedEntityTriple(0);
  sub_1C44B95C0(&qword_1EDDF3A48, type metadata accessor for TranslatedEntityTriple);
  sub_1C4EFADF8();
  sub_1C4B4C078(v16, a3, a4, 0, 1, v18);
  v19 = *(v12 + 8);
  v19(v16, v11);
  type metadata accessor for EventTriple(0);
  sub_1C44B95C0(&qword_1EDDFE2E8, type metadata accessor for EventTriple);
  sub_1C4EFADF8();
  sub_1C44B9974(v23, v18, v10, v25, v27, &qword_1EC0BDFD0, &qword_1C4F324F8, &qword_1EDDFE878, &unk_1EDDFF9D0, &unk_1EDDFC2C8, type metadata accessor for EventTriple, &protocol conformance descriptor for EventTriple, sub_1C4B4CF3C, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  (*(v24 + 8))(v10, v26);
  return (v19)(v18, v11);
}

uint64_t sub_1C4B4CC28(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a6;
  v25 = a5;
  v23 = a1;
  v26 = sub_1C456902C(&qword_1EC0BDFD8, &unk_1C4F32500);
  v24 = *(v26 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v22 - v9;
  v11 = sub_1C456902C(&qword_1EC0BE558, &unk_1C4F54060);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  type metadata accessor for TranslatedEntityTriple(0);
  sub_1C44B95C0(&qword_1EDDF3A48, type metadata accessor for TranslatedEntityTriple);
  sub_1C4EFADF8();
  sub_1C4B4C078(v16, a3, a4, 0, 1, v18);
  v19 = *(v12 + 8);
  v19(v16, v11);
  type metadata accessor for ConstructionEventTriple(0);
  sub_1C44B95C0(&qword_1EDDE2778, type metadata accessor for ConstructionEventTriple);
  sub_1C4EFADF8();
  sub_1C44B9974(v23, v18, v10, v25, v27, &qword_1EC0BDFD8, &unk_1C4F32500, &unk_1EDDF00B8, &unk_1EDDF00C0, &unk_1EDDE2768, type metadata accessor for ConstructionEventTriple, &protocol conformance descriptor for ConstructionEventTriple, sub_1C4B4D63C, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  (*(v24 + 8))(v10, v26);
  return (v19)(v18, v11);
}

uint64_t sub_1C4B4CF3C(uint64_t (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v66 = a4;
  v67 = a1;
  v70 = type metadata accessor for ExpiredEventTriple(0);
  v7 = *(*(v70 - 1) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EventTriple(0);
  v68 = *(v10 - 1);
  v11 = *(v68 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v59 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v59 - v21);
  v23 = v69;
  result = v67(a3, v66);
  if (!v23)
  {
    v66 = v17;
    v67 = v22;
    v65 = v26;
    v60 = result;
    v61 = v14;
    if (v25)
    {
      v27 = 0;
      v28 = *(v25 + 16);
      v63 = a5;
      v64 = v28;
      v29 = v66;
      v30 = v67;
      for (i = v25; ; v25 = i)
      {
        if (v64 == v27)
        {

          result = v65;
          goto LABEL_9;
        }

        if (v27 >= *(v25 + 16))
        {
          break;
        }

        v31 = v25 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
        v32 = *(v68 + 72);
        v69 = v27;
        sub_1C4471BAC(v31 + v32 * v27, v30);
        sub_1C4471BAC(v30, v20);
        v33 = sub_1C4EFF0C8();
        (*(*(v33 - 8) + 16))(v9, v20, v33);
        v34 = v10[5];
        v35 = v70[5];
        v36 = sub_1C4EFEEF8();
        v37 = *(*(v36 - 8) + 16);
        v37(&v9[v35], &v20[v34], v36);
        v38 = v10[6];
        v39 = v70[6];
        v40 = sub_1C4EFF8A8();
        (*(*(v40 - 8) + 16))(&v9[v39], &v20[v38], v40);
        v37(&v9[v70[7]], &v20[v10[7]], v36);
        v41 = &v20[v10[8]];
        v43 = *v41;
        v42 = *(v41 + 1);
        v44 = *&v20[v10[9]];
        v45 = v10[11];
        v46 = *&v20[v10[10]];
        v47 = *&v20[v45];
        v48 = *&v20[v45 + 8];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v49 = &v9[v70[8]];
        *v49 = v43;
        *(v49 + 1) = v42;
        *&v9[v70[9]] = v44;
        *&v9[v70[10]] = v46;
        v50 = &v9[v70[11]];
        *v50 = v47;
        *(v50 + 1) = v48;
        *&v9[v70[12]] = v51;
        sub_1C44B95C0(&qword_1EDDE5BF8, type metadata accessor for ExpiredEventTriple);
        sub_1C4EFB6C8();
        sub_1C44BCC4C(v9, type metadata accessor for ExpiredEventTriple);
        sub_1C44B95C0(&qword_1EDDEBC18, type metadata accessor for EventTriple);
        sub_1C4EFBA98();
        sub_1C44BCC4C(v20, type metadata accessor for EventTriple);
        v30 = v67;
        result = sub_1C44BCC4C(v67, type metadata accessor for EventTriple);
        v27 = v69 + 1;
        v29 = v66;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }

    else
    {
      result = v65;
      v29 = v66;
LABEL_9:
      v52 = v60;
      v53 = v68;
      if (result)
      {
        v54 = 0;
        v55 = *(result + 16);
        while (v55 != v54)
        {
          if (v54 >= *(result + 16))
          {
            goto LABEL_23;
          }

          sub_1C4471BAC(result + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v54, v29);
          sub_1C44B95C0(&qword_1EDDEBC18, type metadata accessor for EventTriple);
          sub_1C4EFBA58();
          ++v54;
          sub_1C44BCC4C(v29, type metadata accessor for EventTriple);
          result = v65;
        }
      }

      if (v52)
      {
        v56 = 0;
        v57 = *(v52 + 16);
        while (v57 != v56)
        {
          if (v56 >= *(v52 + 16))
          {
            goto LABEL_24;
          }

          v58 = v61;
          sub_1C4471BAC(v52 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v56, v61);
          sub_1C44B95C0(&qword_1EDDEBC20, type metadata accessor for EventTriple);
          sub_1C4EFB6A8();
          ++v56;
          result = sub_1C44BCC4C(v58, type metadata accessor for EventTriple);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C4B4D63C(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v9 = type metadata accessor for ConstructionEventTriple(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  result = a1(a3, a4);
  if (!v5)
  {
    v20 = result;
    v21 = v19;
    v28 = v9;
    if (v18)
    {
    }

    v27 = v20;
    if (v21)
    {
      v22 = 0;
      v23 = *(v21 + 16);
      while (1)
      {
        if (v23 == v22)
        {

          v20 = v27;
          goto LABEL_10;
        }

        if (v22 >= *(v21 + 16))
        {
          break;
        }

        sub_1C4471BAC(v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v22, v16);
        sub_1C44B95C0(&qword_1EDDE2758, type metadata accessor for ConstructionEventTriple);
        sub_1C4EFBA58();
        ++v22;
        result = sub_1C44BCC4C(v16, type metadata accessor for ConstructionEventTriple);
      }

      __break(1u);
LABEL_18:
      __break(1u);
    }

    else
    {
LABEL_10:
      if (v20)
      {
        v24 = 0;
        v25 = *(v20 + 16);
        while (v25 != v24)
        {
          if (v24 >= *(v27 + 16))
          {
            goto LABEL_18;
          }

          sub_1C4471BAC(v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24, v14);
          sub_1C44B95C0(&qword_1EDDE2760, type metadata accessor for ConstructionEventTriple);
          sub_1C4EFB6A8();
          ++v24;
          result = sub_1C44BCC4C(v14, type metadata accessor for ConstructionEventTriple);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C4B4D974(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = (*(a3 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v10)))));
    if (*v13 != v5 || v13[1] != a2)
    {
      v10 &= v10 - 1;
      result = sub_1C4F02938();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      return 1;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1C4B4DA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    if (*(v5 - 1) == a1 && *v5 == a2)
    {
      break;
    }

    v5 += 2;
  }

  while ((sub_1C4F02938() & 1) == 0);
  return v6 == 0;
}

uint64_t sub_1C4B4DAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConstructionEventTriple(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v52 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v58 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - v14;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4598944();
  v57 = v16;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v56 = a2;
  sub_1C4598944();
  v18 = v17;
  v19 = 0;
  v20 = *(a1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  while (v20 != v19)
  {
    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = *(v5 + 72);
    sub_1C4471BAC(a1 + v22 + v23 * v19, v15);
    sub_1C4836848();
    if (v24)
    {
      sub_1C44BCC4C(v15, type metadata accessor for ConstructionEventTriple);
      ++v19;
    }

    else
    {
      sub_1C44856C8(v15, v58);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = *(v21 + 16);
        sub_1C459E630();
        v21 = v59;
      }

      v27 = *(v21 + 16);
      v28 = v27 + 1;
      if (v27 >= *(v21 + 24) >> 1)
      {
        v53 = *(v21 + 16);
        v54 = v27 + 1;
        sub_1C459E630();
        v27 = v53;
        v28 = v54;
        v21 = v59;
      }

      ++v19;
      *(v21 + 16) = v28;
      sub_1C44856C8(v58, v21 + v22 + v27 * v23);
    }
  }

  v29 = 0;
  v31 = v56;
  v30 = v57;
  v32 = *(v56 + 16);
  v58 = MEMORY[0x1E69E7CC0];
  v54 = v21;
  while (v32 != v29)
  {
    v33 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v34 = *(v5 + 72);
    sub_1C4471BAC(v31 + v33 + v34 * v29, v11);
    sub_1C4836848();
    if (v35)
    {
      sub_1C44BCC4C(v11, type metadata accessor for ConstructionEventTriple);
      ++v29;
    }

    else
    {
      sub_1C44856C8(v11, v55);
      v36 = v58;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v59 = v36;
      if ((v37 & 1) == 0)
      {
        v38 = *(v36 + 16);
        sub_1C459E630();
        v36 = v59;
      }

      v39 = *(v36 + 16);
      if (v39 >= *(v36 + 24) >> 1)
      {
        sub_1C459E630();
        v36 = v59;
      }

      ++v29;
      *(v36 + 16) = v39 + 1;
      v58 = v36;
      sub_1C44856C8(v55, v36 + v33 + v39 * v34);
      v31 = v56;
      v30 = v57;
    }
  }

  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v40 = sub_1C4F00978();
  sub_1C442B738(v40, qword_1EDE2DE10);
  v41 = v54;
  swift_retain_n();
  v42 = v58;
  swift_retain_n();
  v43 = v18;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v44 = sub_1C4F00968();
  v45 = sub_1C4F01CB8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134218752;
    v47 = *(v43 + 16);

    *(v46 + 4) = v47;

    *(v46 + 12) = 2048;
    v48 = *(v30 + 16);

    *(v46 + 14) = v48;

    *(v46 + 22) = 2048;
    v49 = *(v41 + 16);

    *(v46 + 24) = v49;

    *(v46 + 32) = 2048;
    v50 = *(v42 + 16);

    *(v46 + 34) = v50;

    _os_log_impl(&dword_1C43F8000, v44, v45, "StandardEntityFusion: dbChanges: %ld existing, %ld fused, %ld inserted, %ld deleted", v46, 0x2Au);
    MEMORY[0x1C6942830](v46, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  return v41;
}

uint64_t sub_1C4B4E04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConstructionGraphTriple(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v52 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v58 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - v14;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4598A84();
  v57 = v16;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v56 = a2;
  sub_1C4598A84();
  v18 = v17;
  v19 = 0;
  v20 = *(a1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  while (v20 != v19)
  {
    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = *(v5 + 72);
    sub_1C4471BAC(a1 + v22 + v23 * v19, v15);
    sub_1C4836888();
    if (v24)
    {
      sub_1C44BCC4C(v15, type metadata accessor for ConstructionGraphTriple);
      ++v19;
    }

    else
    {
      sub_1C44856C8(v15, v58);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = *(v21 + 16);
        sub_1C459DC78();
        v21 = v59;
      }

      v27 = *(v21 + 16);
      v28 = v27 + 1;
      if (v27 >= *(v21 + 24) >> 1)
      {
        v53 = *(v21 + 16);
        v54 = v27 + 1;
        sub_1C459DC78();
        v27 = v53;
        v28 = v54;
        v21 = v59;
      }

      ++v19;
      *(v21 + 16) = v28;
      sub_1C44856C8(v58, v21 + v22 + v27 * v23);
    }
  }

  v29 = 0;
  v31 = v56;
  v30 = v57;
  v32 = *(v56 + 16);
  v58 = MEMORY[0x1E69E7CC0];
  v54 = v21;
  while (v32 != v29)
  {
    v33 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v34 = *(v5 + 72);
    sub_1C4471BAC(v31 + v33 + v34 * v29, v11);
    sub_1C4836888();
    if (v35)
    {
      sub_1C44BCC4C(v11, type metadata accessor for ConstructionGraphTriple);
      ++v29;
    }

    else
    {
      sub_1C44856C8(v11, v55);
      v36 = v58;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v59 = v36;
      if ((v37 & 1) == 0)
      {
        v38 = *(v36 + 16);
        sub_1C459DC78();
        v36 = v59;
      }

      v39 = *(v36 + 16);
      if (v39 >= *(v36 + 24) >> 1)
      {
        sub_1C459DC78();
        v36 = v59;
      }

      ++v29;
      *(v36 + 16) = v39 + 1;
      v58 = v36;
      sub_1C44856C8(v55, v36 + v33 + v39 * v34);
      v31 = v56;
      v30 = v57;
    }
  }

  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v40 = sub_1C4F00978();
  sub_1C442B738(v40, qword_1EDE2DE10);
  v41 = v54;
  swift_retain_n();
  v42 = v58;
  swift_retain_n();
  v43 = v18;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v44 = sub_1C4F00968();
  v45 = sub_1C4F01CB8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134218752;
    v47 = *(v43 + 16);

    *(v46 + 4) = v47;

    *(v46 + 12) = 2048;
    v48 = *(v30 + 16);

    *(v46 + 14) = v48;

    *(v46 + 22) = 2048;
    v49 = *(v41 + 16);

    *(v46 + 24) = v49;

    *(v46 + 32) = 2048;
    v50 = *(v42 + 16);

    *(v46 + 34) = v50;

    _os_log_impl(&dword_1C43F8000, v44, v45, "StandardEntityFusion: dbChanges: %ld existing, %ld fused, %ld inserted, %ld deleted", v46, 0x2Au);
    MEMORY[0x1C6942830](v46, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  return v41;
}

uint64_t sub_1C4B4E5B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v71 = a3;
  v70 = a2;
  v11 = sub_1C456902C(&unk_1EC0BC8E0, &qword_1C4F29AC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v69 = &v66 - v13;
  v14 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v66 - v16;
  v18 = type metadata accessor for Source();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v66 - v23);
  v82 = type metadata accessor for EventTriple(0);
  v25 = *(v82 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v82);
  v73 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v75 = &v66 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v77 = &v66 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v84 = &v66 - v33;
  v78 = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45985A0();
  v87 = v34;
  v80 = *(a6 + 16);
  if (v80)
  {
    v67 = a7;
    v74 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v79 = a6 + v74;
    v83 = *(v25 + 72);
    v66 = a6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v35 = 0;
    v81 = MEMORY[0x1E69E7CC0];
    a7 = &dword_1EDE2D000;
    v68 = xmmword_1C4F0D130;
    v36 = v84;
    v76 = a1;
    while (2)
    {
      v85 = v35 + 1;
      sub_1C4471BAC(v79 + v83 * v35, v36);
      v37 = *(v36 + *(v82 + 36));
      v38 = 1;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (qword_1EDDFA6A8 != -1)
            {
              swift_once();
            }

            if (qword_1EDE2DCF0 < v38)
            {
              v36 = v84;
              sub_1C44BCC4C(v84, type metadata accessor for EventTriple);
              goto LABEL_39;
            }

            sub_1C449E530(v38, v17);
            if (sub_1C44157D4(v17, 1, v18) != 1)
            {
              break;
            }

            sub_1C4420C3C(v17, &unk_1EC0C0760, &qword_1C4F170D0);
            v39 = __OFADD__(v38++, 1);
            if (v39)
            {
              goto LABEL_48;
            }
          }

          sub_1C44856C8(v17, v22);
          v40 = v38 - 1;
          if (__OFSUB__(v38, 1))
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v39 = __OFADD__(v38++, 1);
          if (v39)
          {
            goto LABEL_49;
          }

          v41 = v40 > 0x40;
          if (v40 >= 0x40)
          {
            v42 = 0;
          }

          else
          {
            v42 = 1 << v40;
          }

          if (v41)
          {
            v42 = 0;
          }

          if ((v42 & v37) >= 1)
          {
            break;
          }

          sub_1C44BCC4C(v22, type metadata accessor for Source);
        }

        sub_1C44856C8(v22, v24);
        if (*v24 == *a1 && v24[1] == a1[1])
        {
          break;
        }

        v44 = sub_1C4F02938();
        sub_1C44BCC4C(v24, type metadata accessor for Source);
        if (v44)
        {
          goto LABEL_28;
        }
      }

      sub_1C44BCC4C(v24, type metadata accessor for Source);
LABEL_28:
      sub_1C4471BAC(v84, v77);
      v45 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458BAC8(0, *(v45 + 16) + 1, 1, v45);
        v45 = v55;
      }

      v46 = v75;
      v48 = *(v45 + 16);
      v47 = *(v45 + 24);
      v81 = v45;
      if (v48 >= v47 >> 1)
      {
        sub_1C458BAC8(v47 > 1, v48 + 1, 1, v81);
        v81 = v56;
      }

      v49 = v81;
      *(v81 + 16) = v48 + 1;
      sub_1C44856C8(v77, v49 + v74 + v48 * v83);
      v50 = v69;
      sub_1C4A7ECE4();
      sub_1C4420C3C(v50, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = v68;
      *(inited + 32) = v70;
      *(inited + 40) = v71;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4B4ABB0();
      swift_setDeallocating();
      sub_1C44DEE40();
      if (*(v46 + *(v82 + 36)))
      {
        sub_1C4471BAC(v46, v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458BAC8(0, *(v78 + 16) + 1, 1, v78);
          v78 = v57;
        }

        a1 = v76;
        v53 = *(v78 + 16);
        v52 = *(v78 + 24);
        v72 = v53 + 1;
        if (v53 >= v52 >> 1)
        {
          sub_1C458BAC8(v52 > 1, v53 + 1, 1, v78);
          v78 = v58;
        }

        sub_1C44BCC4C(v75, type metadata accessor for EventTriple);
        v36 = v84;
        sub_1C44BCC4C(v84, type metadata accessor for EventTriple);
        v54 = v78;
        *(v78 + 16) = v72;
        sub_1C44856C8(v73, v54 + v74 + v53 * v83);
      }

      else
      {
        sub_1C44BCC4C(v46, type metadata accessor for EventTriple);
        v36 = v84;
        sub_1C44BCC4C(v84, type metadata accessor for EventTriple);
        a1 = v76;
      }

LABEL_39:
      v35 = v85;
      if (v85 != v80)
      {
        continue;
      }

      break;
    }

    v34 = v87;
    a7 = v67;
  }

  else
  {
    v81 = MEMORY[0x1E69E7CC0];
  }

  v59 = sub_1C482FE48(v34);
  v86 = v78;
  sub_1C49D466C(v59);
  v18 = v86;
  if (qword_1EDDFD028 != -1)
  {
LABEL_50:
    swift_once();
  }

  v60 = sub_1C4F00978();
  sub_1C442B738(v60, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v61 = v81;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v62 = sub_1C4F00968();
  v63 = sub_1C4F01CB8();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 134218496;
    *(v64 + 4) = *(v18 + 16);

    *(v64 + 12) = 2048;
    *(v64 + 14) = *(v61 + 16);

    *(v64 + 22) = 2048;
    *(v64 + 24) = *(a7 + 2);

    _os_log_impl(&dword_1C43F8000, v62, v63, "StandardEntityFusion: dbChanges: %ld inserted, %ld expired, %ld deleted", v64, 0x20u);
    MEMORY[0x1C6942830](v64, -1, -1);
  }

  else
  {
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v18;
}

uint64_t sub_1C4B4EEEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v71 = a3;
  v70 = a2;
  v11 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v69 = &v66 - v13;
  v14 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v66 - v16;
  v18 = type metadata accessor for Source();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v66 - v23);
  v82 = type metadata accessor for GraphTriple(0);
  v25 = *(v82 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v82);
  v73 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v75 = &v66 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v77 = &v66 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v84 = &v66 - v33;
  v78 = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4598804();
  v87 = v34;
  v80 = *(a6 + 16);
  if (v80)
  {
    v67 = a7;
    v74 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v79 = a6 + v74;
    v83 = *(v25 + 72);
    v66 = a6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v35 = 0;
    v81 = MEMORY[0x1E69E7CC0];
    a7 = &dword_1EDE2D000;
    v68 = xmmword_1C4F0D130;
    v36 = v84;
    v76 = a1;
    while (2)
    {
      v85 = v35 + 1;
      sub_1C4471BAC(v79 + v83 * v35, v36);
      v37 = *(v36 + *(v82 + 36));
      v38 = 1;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            if (qword_1EDDFA6A8 != -1)
            {
              swift_once();
            }

            if (qword_1EDE2DCF0 < v38)
            {
              v36 = v84;
              sub_1C44BCC4C(v84, type metadata accessor for GraphTriple);
              goto LABEL_39;
            }

            sub_1C449E530(v38, v17);
            if (sub_1C44157D4(v17, 1, v18) != 1)
            {
              break;
            }

            sub_1C4420C3C(v17, &unk_1EC0C0760, &qword_1C4F170D0);
            v39 = __OFADD__(v38++, 1);
            if (v39)
            {
              goto LABEL_48;
            }
          }

          sub_1C44856C8(v17, v22);
          v40 = v38 - 1;
          if (__OFSUB__(v38, 1))
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          v39 = __OFADD__(v38++, 1);
          if (v39)
          {
            goto LABEL_49;
          }

          v41 = v40 > 0x40;
          if (v40 >= 0x40)
          {
            v42 = 0;
          }

          else
          {
            v42 = 1 << v40;
          }

          if (v41)
          {
            v42 = 0;
          }

          if ((v42 & v37) >= 1)
          {
            break;
          }

          sub_1C44BCC4C(v22, type metadata accessor for Source);
        }

        sub_1C44856C8(v22, v24);
        if (*v24 == *a1 && v24[1] == a1[1])
        {
          break;
        }

        v44 = sub_1C4F02938();
        sub_1C44BCC4C(v24, type metadata accessor for Source);
        if (v44)
        {
          goto LABEL_28;
        }
      }

      sub_1C44BCC4C(v24, type metadata accessor for Source);
LABEL_28:
      sub_1C4471BAC(v84, v77);
      v45 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44F1730(0, *(v45 + 16) + 1, 1, v45);
        v45 = v55;
      }

      v46 = v75;
      v48 = *(v45 + 16);
      v47 = *(v45 + 24);
      v81 = v45;
      if (v48 >= v47 >> 1)
      {
        sub_1C44F1730(v47 > 1, v48 + 1, 1, v81);
        v81 = v56;
      }

      v49 = v81;
      *(v81 + 16) = v48 + 1;
      sub_1C44856C8(v77, v49 + v74 + v48 * v83);
      v50 = v69;
      sub_1C4A7EF60();
      sub_1C4420C3C(v50, &unk_1EC0BC900, &unk_1C4F142D0);
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = v68;
      *(inited + 32) = v70;
      *(inited + 40) = v71;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4B4ABB0();
      swift_setDeallocating();
      sub_1C44DEE40();
      if (*(v46 + *(v82 + 36)))
      {
        sub_1C4471BAC(v46, v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44F1730(0, *(v78 + 16) + 1, 1, v78);
          v78 = v57;
        }

        a1 = v76;
        v53 = *(v78 + 16);
        v52 = *(v78 + 24);
        v72 = v53 + 1;
        if (v53 >= v52 >> 1)
        {
          sub_1C44F1730(v52 > 1, v53 + 1, 1, v78);
          v78 = v58;
        }

        sub_1C44BCC4C(v75, type metadata accessor for GraphTriple);
        v36 = v84;
        sub_1C44BCC4C(v84, type metadata accessor for GraphTriple);
        v54 = v78;
        *(v78 + 16) = v72;
        sub_1C44856C8(v73, v54 + v74 + v53 * v83);
      }

      else
      {
        sub_1C44BCC4C(v46, type metadata accessor for GraphTriple);
        v36 = v84;
        sub_1C44BCC4C(v84, type metadata accessor for GraphTriple);
        a1 = v76;
      }

LABEL_39:
      v35 = v85;
      if (v85 != v80)
      {
        continue;
      }

      break;
    }

    v34 = v87;
    a7 = v67;
  }

  else
  {
    v81 = MEMORY[0x1E69E7CC0];
  }

  v59 = sub_1C482FE88(v34);
  v86 = v78;
  sub_1C49D4614(v59);
  v18 = v86;
  if (qword_1EDDFD028 != -1)
  {
LABEL_50:
    swift_once();
  }

  v60 = sub_1C4F00978();
  sub_1C442B738(v60, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v61 = v81;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v62 = sub_1C4F00968();
  v63 = sub_1C4F01CB8();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 134218496;
    *(v64 + 4) = *(v18 + 16);

    *(v64 + 12) = 2048;
    *(v64 + 14) = *(v61 + 16);

    *(v64 + 22) = 2048;
    *(v64 + 24) = *(a7 + 2);

    _os_log_impl(&dword_1C43F8000, v62, v63, "StandardEntityFusion: dbChanges: %ld inserted, %ld expired, %ld deleted", v64, 0x20u);
    MEMORY[0x1C6942830](v64, -1, -1);
  }

  else
  {
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v18;
}

uint64_t sub_1C4B4F828(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = a1;
  MEMORY[0x1C6940330]();
  sub_1C4427EF0(*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1C4F01748();
  return swift_endAccess();
}

uint64_t sub_1C4B4F8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = sub_1C456902C(&unk_1EC0BC9C8, &qword_1C4F29B58);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v210 = &v188 - v14;
  v15 = sub_1C456902C(&unk_1EC0BC8E0, &qword_1C4F29AC0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v215 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v224 = &v188 - v19;
  v20 = type metadata accessor for EventTriple(0);
  v229 = *(v20 - 8);
  v21 = *(v229 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v231 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v230 = &v188 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v188 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v223 = &v188 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v222 = &v188 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v221 = &v188 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v213 = &v188 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v212 = &v188 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v214 = &v188 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v227 = &v188 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v226 = &v188 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v225 = &v188 - v45;
  v209 = type metadata accessor for TranslatedEntityTriple(0);
  v216 = *(v209 - 8);
  v46 = *(v216 + 64);
  v47 = MEMORY[0x1EEE9AC00](v209);
  v232 = &v188 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v211 = &v188 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v233 = &v188 - v51;
  v52 = sub_1C456902C(&qword_1EC0C3B48, &qword_1C4F54078);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v219 = &v188 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v228 = &v188 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v220 = &v188 - v58;
  v59 = sub_1C4EFEEF8();
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x1EEE9AC00](v59);
  if (!*(a2 + 16))
  {
    sub_1C44EB5BC(a4, a1, sub_1C4B57B5C, sub_1C458BAC8, type metadata accessor for EventTriple);
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(a1 + 16))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return MEMORY[0x1E69E7CC0];
  }

  v217 = v63;
  v205 = &v188 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = v61;
  v203 = a5;
  v235 = a4;
  v204 = a3;
  v202 = v20;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45985A0();
  v234 = v64;
  v239 = v64;
  v218 = v6;
  sub_1C4B54800();
  v208 = v65;
  sub_1C4B54E88();
  v67 = v66;
  p_isa = a1;
  MEMORY[0x1EEE9AC00](v66);
  sub_1C456902C(&qword_1EC0C3B50, &qword_1C4F54080);
  v68 = sub_1C4401CBC(&qword_1EDDF0640, &qword_1EC0C3B50, &qword_1C4F54080);
  sub_1C44B95C0(&unk_1EDDF3A50, type metadata accessor for TranslatedEntityTriple);
  v69 = v218;
  v70 = sub_1C4F014A8();
  if (v69)
  {

LABEL_9:

    return v68;
  }

  v207 = v70;
  v200 = v67;
  p_isa = v234;
  MEMORY[0x1EEE9AC00](v70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C3BA8, &qword_1C4F540E8);
  sub_1C4401CBC(&qword_1EC0C3BB0, &qword_1EC0C3BA8, &qword_1C4F540E8);
  sub_1C44B95C0(&qword_1EDDFE2F0, type metadata accessor for EventTriple);
  v71 = 0;
  v72 = 0;
  v201 = sub_1C4F014A8();
  v198 = v5;
  v218 = 0;
  v193 = 0x6E776F6E6B6E75;

  v68 = v207;
  v74 = *(v207 + 64);
  v195 = v207 + 64;
  v75 = 1 << *(v207 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & v74;
  v194 = (v75 + 63) >> 6;
  v196 = (v217 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v234 = MEMORY[0x1E69E7CC0];
  v79 = v230;
  v78 = v231;
  while (v77)
  {
LABEL_19:
    v81 = (v72 << 9) | (8 * __clz(__rbit64(v77)));
    v82 = v68[7];
    v199 = *(v68[6] + v81);
    v83 = *(v82 + v81);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v71 = v218;
    sub_1C44B8118();
    v218 = v71;
    if (v71)
    {

      goto LABEL_9;
    }

    v77 &= v77 - 1;
    if ((sub_1C4B56DC0(v83) & 1) != 0 && (v84 = v205, sub_1C4EFE828(), v85 = sub_1C4B57000(v84, v83), v87 = v86, (*v196)(v84, v206), v87))
    {
      v88 = *(v198 + *(type metadata accessor for PhaseStores() + 32));
      v89 = VisionKeyValueStore.needToInsertVisualIdentifierTriple(for:associatedIdentifiers:associatedNames:autonamingRejectionPersons:)(v85, v87, v208, v200, v203);
      v90 = sub_1C4663240(v199, v201);
      if (v90)
      {
        v68 = v207;
        if ((v89 & 1) == 0)
        {

          goto LABEL_48;
        }

        v199 = v90;
        p_isa = v83;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v71 = v218;
        sub_1C4B4A62C(&p_isa);
        if (v71)
        {
          goto LABEL_113;
        }

        v191 = v87;
        v192 = v83;
        v197 = v77;
        v91 = p_isa;
        p_isa = v199;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4B4A710(&p_isa);
        v218 = 0;
        v217 = p_isa;
        p_isa = v91;
        v237 = 0;
        v238 = 0;
        v190 = v91;

        while (1)
        {
          v96 = v220;
          v97 = v228;
          sub_1C4B4AF84(&qword_1EC0C3B68, &qword_1C4F54090, type metadata accessor for TranslatedEntityTriple, type metadata accessor for TranslatedEntityTriple, v92, v93, v94, v95, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199);
          sub_1C4B58D70(v97, v96, &qword_1EC0C3B48, &qword_1C4F54078);
          v98 = sub_1C456902C(&qword_1EC0C3B68, &qword_1C4F54090);
          if (sub_1C44157D4(v96, 1, v98) == 1)
          {
            break;
          }

          v99 = *v96;
          sub_1C44856C8(v96 + *(v98 + 48), v233);
          if (v99 >= *(v217 + 16))
          {
            goto LABEL_112;
          }

          if (v99 < 0)
          {
            goto LABEL_106;
          }

          v100 = (*(v229 + 80) + 32) & ~*(v229 + 80);
          v101 = *(v229 + 72);
          sub_1C4471BAC(v217 + v100 + v101 * v99, v225);
          v102 = v224;
          sub_1C4A7ECE4();
          sub_1C4420C3C(v102, &unk_1EC0BC8E0, &qword_1C4F29AC0);
          v103 = v226;
          sub_1C4B5722C();
          sub_1C4471BAC(v103, v227);
          v104 = v234;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458BAC8(0, *(v104 + 16) + 1, 1, v104);
            v104 = v108;
          }

          v106 = *(v104 + 16);
          v105 = *(v104 + 24);
          v234 = v104;
          if (v106 >= v105 >> 1)
          {
            sub_1C458BAC8(v105 > 1, v106 + 1, 1, v234);
            v234 = v109;
          }

          sub_1C44BCC4C(v226, type metadata accessor for EventTriple);
          sub_1C44BCC4C(v225, type metadata accessor for EventTriple);
          sub_1C44BCC4C(v233, type metadata accessor for TranslatedEntityTriple);
          v107 = v234;
          v234[2] = v106 + 1;
          sub_1C44856C8(v227, v107 + v100 + v106 * v101);
          v79 = v230;
          v78 = v231;
        }

LABEL_44:

        v68 = v207;
        v77 = v197;
      }

      else
      {

        v68 = v207;
        if (v89)
        {
          v126 = v235;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v127 = v126;
          v71 = v218;
          sub_1C4B49EEC(v83, v127);
          v218 = v71;
        }

LABEL_48:
      }
    }

    else
    {
      v110 = v201;
      v111 = *(v201 + 16);
      v197 = v77;
      if (!v111 || (v112 = sub_1C457B350(v199), (v113 & 1) == 0) || (v114 = *(*(v110 + 56) + 8 * v112), v115 = *(v114 + 16), v115 != *(v83 + 16)))
      {
        v121 = 0;
        v122 = *(v83 + 16);
        v123 = v216;
        while (v122 != v121)
        {
          v124 = v121 + 1;
          v125 = v83 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v121;
          sub_1C44EC3C8(v235, type metadata accessor for EventTriple);
          sub_1C4471BAC(v28, v78);
          sub_1C483CC80();
          sub_1C44BCC4C(v79, type metadata accessor for EventTriple);
          sub_1C44BCC4C(v28, type metadata accessor for EventTriple);
          v121 = v124;
        }

        goto LABEL_44;
      }

      v191 = *(*(v110 + 56) + 8 * v112);
      if (v115 == 1)
      {
        v116 = v215;
        sub_1C4868760(v114, v215);
        v117 = sub_1C44157D4(v116, 1, v202);
        v128 = v219;
        if (v117 == 1)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v118 = v116;
          v119 = &unk_1EC0BC8E0;
          v120 = &qword_1C4F29AC0;
        }

        else
        {
          v129 = v214;
          sub_1C44856C8(v116, v214);
          v130 = v210;
          sub_1C450B008(v83, v210);
          if (sub_1C44157D4(v130, 1, v209) != 1)
          {

            sub_1C44856C8(v130, v211);
            v158 = v224;
            sub_1C4A7ECE4();
            sub_1C4420C3C(v158, &unk_1EC0BC8E0, &qword_1C4F29AC0);
            v159 = v212;
            sub_1C4B5722C();
            sub_1C4471BAC(v159, v213);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C458BAC8(0, v234[2] + 1, 1, v234);
              v234 = v163;
            }

            v161 = v234[2];
            v160 = v234[3];
            if (v161 >= v160 >> 1)
            {
              sub_1C458BAC8(v160 > 1, v161 + 1, 1, v234);
              v234 = v164;
            }

            sub_1C44BCC4C(v212, type metadata accessor for EventTriple);
            sub_1C44BCC4C(v211, type metadata accessor for TranslatedEntityTriple);
            sub_1C44BCC4C(v214, type metadata accessor for EventTriple);
            v162 = v234;
            v234[2] = v161 + 1;
            sub_1C44856C8(v213, v162 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v161);
            goto LABEL_64;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44BCC4C(v129, type metadata accessor for EventTriple);
          v118 = v130;
          v119 = &unk_1EC0BC9C8;
          v120 = &qword_1C4F29B58;
        }

        sub_1C4420C3C(v118, v119, v120);
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v128 = v219;
      }

      p_isa = v83;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v71 = v218;
      sub_1C4B4A62C(&p_isa);
      if (v71)
      {
        goto LABEL_113;
      }

      v192 = v83;
      v131 = p_isa;
      p_isa = &v191->isa;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4B4A710(&p_isa);
      v218 = 0;
      v190 = v28;
      v217 = p_isa;
      p_isa = v131;
      v237 = 0;
      v238 = 0;
      v189 = v131;

      while (1)
      {
        v136 = v228;
        sub_1C4B4AF84(&qword_1EC0C3B68, &qword_1C4F54090, type metadata accessor for TranslatedEntityTriple, type metadata accessor for TranslatedEntityTriple, v132, v133, v134, v135, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199);
        sub_1C4B58D70(v136, v128, &qword_1EC0C3B48, &qword_1C4F54078);
        v137 = sub_1C456902C(&qword_1EC0C3B68, &qword_1C4F54090);
        if (sub_1C44157D4(v128, 1, v137) == 1)
        {
          break;
        }

        v138 = v128;
        v139 = *v128;
        sub_1C44856C8(v138 + *(v137 + 48), v232);
        if (v139 >= *(v217 + 16))
        {
          goto LABEL_112;
        }

        if (v139 < 0)
        {
          goto LABEL_108;
        }

        v140 = (*(v229 + 80) + 32) & ~*(v229 + 80);
        v141 = *(v229 + 72);
        sub_1C4471BAC(v217 + v140 + v141 * v139, v221);
        v142 = v224;
        sub_1C4A7ECE4();
        sub_1C4420C3C(v142, &unk_1EC0BC8E0, &qword_1C4F29AC0);
        v143 = v222;
        sub_1C4B5722C();
        sub_1C4471BAC(v143, v223);
        v144 = v234;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458BAC8(0, *(v144 + 16) + 1, 1, v144);
          v144 = v148;
        }

        v146 = *(v144 + 16);
        v145 = *(v144 + 24);
        v234 = v144;
        if (v146 >= v145 >> 1)
        {
          sub_1C458BAC8(v145 > 1, v146 + 1, 1, v234);
          v234 = v149;
        }

        sub_1C44BCC4C(v222, type metadata accessor for EventTriple);
        sub_1C44BCC4C(v221, type metadata accessor for EventTriple);
        sub_1C44BCC4C(v232, type metadata accessor for TranslatedEntityTriple);
        v147 = v234;
        v234[2] = v146 + 1;
        sub_1C44856C8(v223, v147 + v140 + v146 * v141);
        v79 = v230;
        v78 = v231;
        v128 = v219;
      }

      v77 = v197;
      v28 = v190;
LABEL_64:
      v68 = v207;
      switch(v204)
      {
        case 2:

          goto LABEL_67;
        default:
          v150 = sub_1C4F02938();

          if (v150)
          {
LABEL_67:
            v151 = sub_1C457B350(v199);
            if (v152)
            {
              v153 = v151;
              v154 = v201;
              swift_isUniquelyReferenced_nonNull_native();
              p_isa = v154;
              v155 = *(v154 + 24);
              sub_1C456902C(&qword_1EC0BDFF8, &unk_1C4F32520);
              v77 = v197;
              sub_1C4F02458();
              v156 = p_isa;
              v157 = *(p_isa[7] + 8 * v153);
              sub_1C456902C(&qword_1EC0BD3F8, &unk_1C4F5B800);
              v201 = v156;
              v68 = v207;
              sub_1C4F02478();
            }
          }

          break;
      }
    }
  }

  while (1)
  {
    v80 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (v80 >= v194)
    {
      break;
    }

    v77 = *(v195 + 8 * v80);
    ++v72;
    if (v77)
    {
      v72 = v80;
      goto LABEL_19;
    }
  }

  v165 = v201;
  v68 = v234;
  switch(v204)
  {
    case 1:
      v193 = 1819047270;
      goto LABEL_78;
    case 2:

      goto LABEL_79;
    case 3:
      v193 = 0x69686374614D6F74;
      goto LABEL_78;
    default:
LABEL_78:
      v166 = sub_1C4F02938();

      if ((v166 & 1) == 0)
      {
        goto LABEL_102;
      }

LABEL_79:
      if (!*(v165 + 16))
      {
        goto LABEL_102;
      }

      v167 = v165 + 64;
      v168 = 1 << *(v165 + 32);
      v169 = -1;
      if (v168 < 64)
      {
        v169 = ~(-1 << v168);
      }

      v170 = v169 & *(v165 + 64);
      v171 = (v168 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v172 = 0;
      v173 = MEMORY[0x1E69E7CC0];
      break;
  }

  while (v170)
  {
LABEL_88:
    v68 = *(*(v165 + 56) + ((v172 << 9) | (8 * __clz(__rbit64(v170)))));
    v175 = v68[2];
    v176 = *(v173 + 16);
    v177 = v176 + v175;
    if (__OFADD__(v176, v175))
    {
      goto LABEL_109;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v177 > *(v173 + 24) >> 1)
    {
      if (v176 <= v177)
      {
        v179 = v176 + v175;
      }

      else
      {
        v179 = v176;
      }

      sub_1C458BAC8(isUniquelyReferenced_nonNull_native, v179, 1, v173);
      v173 = v180;
    }

    v165 = v201;
    v170 &= v170 - 1;
    if (v68[2])
    {
      v181 = *(v173 + 16);
      if ((*(v173 + 24) >> 1) - v181 < v175)
      {
        goto LABEL_110;
      }

      v182 = v173 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v181;
      swift_arrayInitWithCopy();

      if (v175)
      {
        v183 = *(v173 + 16);
        v184 = __OFADD__(v183, v175);
        v185 = v183 + v175;
        if (v184)
        {
          goto LABEL_111;
        }

        *(v173 + 16) = v185;
      }
    }

    else
    {

      if (v175)
      {
        __break(1u);
LABEL_102:
        v186 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C482FE48(v186);

        return v68;
      }
    }
  }

  while (1)
  {
    v174 = v172 + 1;
    if (__OFADD__(v172, 1))
    {
      break;
    }

    if (v174 >= v171)
    {

      v187 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C482FE48(v187);

      return v234;
    }

    v170 = *(v167 + 8 * v174);
    ++v172;
    if (v170)
    {
      v172 = v174;
      goto LABEL_88;
    }
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  sub_1C4F024A8();
  __break(1u);
LABEL_113:

  __break(1u);
  return result;
}

uint64_t sub_1C4B51320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = sub_1C456902C(&unk_1EC0BC9C8, &qword_1C4F29B58);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v210 = &v188 - v14;
  v15 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v215 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v224 = &v188 - v19;
  v20 = type metadata accessor for GraphTriple(0);
  v229 = *(v20 - 8);
  v21 = *(v229 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v231 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v230 = &v188 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v188 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v223 = &v188 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v222 = &v188 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v221 = &v188 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v213 = &v188 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v212 = &v188 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v214 = &v188 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v227 = &v188 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v226 = &v188 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v225 = &v188 - v45;
  v209 = type metadata accessor for TranslatedEntityTriple(0);
  v216 = *(v209 - 8);
  v46 = *(v216 + 64);
  v47 = MEMORY[0x1EEE9AC00](v209);
  v232 = &v188 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v211 = &v188 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v233 = &v188 - v51;
  v52 = sub_1C456902C(&qword_1EC0C3B48, &qword_1C4F54078);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v219 = &v188 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v228 = &v188 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v220 = &v188 - v58;
  v59 = sub_1C4EFEEF8();
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x1EEE9AC00](v59);
  if (!*(a2 + 16))
  {
    sub_1C44EB5BC(a4, a1, sub_1C4B57ED0, sub_1C44F1730, type metadata accessor for GraphTriple);
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(a1 + 16))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return MEMORY[0x1E69E7CC0];
  }

  v217 = v63;
  v205 = &v188 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = v61;
  v203 = a5;
  v235 = a4;
  v204 = a3;
  v202 = v20;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4598804();
  v234 = v64;
  v239 = v64;
  v218 = v6;
  sub_1C4B54800();
  v208 = v65;
  sub_1C4B54E88();
  v67 = v66;
  p_isa = a1;
  MEMORY[0x1EEE9AC00](v66);
  sub_1C456902C(&qword_1EC0C3B50, &qword_1C4F54080);
  v68 = sub_1C4401CBC(&qword_1EDDF0640, &qword_1EC0C3B50, &qword_1C4F54080);
  sub_1C44B95C0(&unk_1EDDF3A50, type metadata accessor for TranslatedEntityTriple);
  v69 = v218;
  v70 = sub_1C4F014A8();
  if (v69)
  {

LABEL_9:

    return v68;
  }

  v207 = v70;
  v200 = v67;
  p_isa = v234;
  MEMORY[0x1EEE9AC00](v70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C3BC8, &qword_1C4F54128);
  sub_1C4401CBC(&qword_1EDDDBB70, &qword_1EC0C3BC8, &qword_1C4F54128);
  sub_1C44B95C0(&qword_1EDDFE218, type metadata accessor for GraphTriple);
  v71 = 0;
  v72 = 0;
  v201 = sub_1C4F014A8();
  v198 = v5;
  v218 = 0;
  v193 = 0x6E776F6E6B6E75;

  v68 = v207;
  v74 = *(v207 + 64);
  v195 = v207 + 64;
  v75 = 1 << *(v207 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & v74;
  v194 = (v75 + 63) >> 6;
  v196 = (v217 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v234 = MEMORY[0x1E69E7CC0];
  v79 = v230;
  v78 = v231;
  while (v77)
  {
LABEL_19:
    v81 = (v72 << 9) | (8 * __clz(__rbit64(v77)));
    v82 = v68[7];
    v199 = *(v68[6] + v81);
    v83 = *(v82 + v81);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v71 = v218;
    sub_1C44B8118();
    v218 = v71;
    if (v71)
    {

      goto LABEL_9;
    }

    v77 &= v77 - 1;
    if ((sub_1C4B56DC0(v83) & 1) != 0 && (v84 = v205, sub_1C4EFE828(), v85 = sub_1C4B57000(v84, v83), v87 = v86, (*v196)(v84, v206), v87))
    {
      v88 = *(v198 + *(type metadata accessor for PhaseStores() + 32));
      v89 = VisionKeyValueStore.needToInsertVisualIdentifierTriple(for:associatedIdentifiers:associatedNames:autonamingRejectionPersons:)(v85, v87, v208, v200, v203);
      v90 = sub_1C4663240(v199, v201);
      if (v90)
      {
        v68 = v207;
        if ((v89 & 1) == 0)
        {

          goto LABEL_48;
        }

        v199 = v90;
        p_isa = v83;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v71 = v218;
        sub_1C4B4A62C(&p_isa);
        if (v71)
        {
          goto LABEL_113;
        }

        v191 = v87;
        v192 = v83;
        v197 = v77;
        v91 = p_isa;
        p_isa = v199;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4B4A7F4(&p_isa);
        v218 = 0;
        v217 = p_isa;
        p_isa = v91;
        v237 = 0;
        v238 = 0;
        v190 = v91;

        while (1)
        {
          v96 = v220;
          v97 = v228;
          sub_1C4B4AF84(&qword_1EC0C3B68, &qword_1C4F54090, type metadata accessor for TranslatedEntityTriple, type metadata accessor for TranslatedEntityTriple, v92, v93, v94, v95, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199);
          sub_1C4B58D70(v97, v96, &qword_1EC0C3B48, &qword_1C4F54078);
          v98 = sub_1C456902C(&qword_1EC0C3B68, &qword_1C4F54090);
          if (sub_1C44157D4(v96, 1, v98) == 1)
          {
            break;
          }

          v99 = *v96;
          sub_1C44856C8(v96 + *(v98 + 48), v233);
          if (v99 >= *(v217 + 16))
          {
            goto LABEL_112;
          }

          if (v99 < 0)
          {
            goto LABEL_106;
          }

          v100 = (*(v229 + 80) + 32) & ~*(v229 + 80);
          v101 = *(v229 + 72);
          sub_1C4471BAC(v217 + v100 + v101 * v99, v225);
          v102 = v224;
          sub_1C4A7EF60();
          sub_1C4420C3C(v102, &unk_1EC0BC900, &unk_1C4F142D0);
          v103 = v226;
          sub_1C4B5722C();
          sub_1C4471BAC(v103, v227);
          v104 = v234;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C44F1730(0, *(v104 + 16) + 1, 1, v104);
            v104 = v108;
          }

          v106 = *(v104 + 16);
          v105 = *(v104 + 24);
          v234 = v104;
          if (v106 >= v105 >> 1)
          {
            sub_1C44F1730(v105 > 1, v106 + 1, 1, v234);
            v234 = v109;
          }

          sub_1C44BCC4C(v226, type metadata accessor for GraphTriple);
          sub_1C44BCC4C(v225, type metadata accessor for GraphTriple);
          sub_1C44BCC4C(v233, type metadata accessor for TranslatedEntityTriple);
          v107 = v234;
          v234[2] = v106 + 1;
          sub_1C44856C8(v227, v107 + v100 + v106 * v101);
          v79 = v230;
          v78 = v231;
        }

LABEL_44:

        v68 = v207;
        v77 = v197;
      }

      else
      {

        v68 = v207;
        if (v89)
        {
          v126 = v235;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v127 = v126;
          v71 = v218;
          sub_1C4B4A0BC(v83, v127);
          v218 = v71;
        }

LABEL_48:
      }
    }

    else
    {
      v110 = v201;
      v111 = *(v201 + 16);
      v197 = v77;
      if (!v111 || (v112 = sub_1C457B350(v199), (v113 & 1) == 0) || (v114 = *(*(v110 + 56) + 8 * v112), v115 = *(v114 + 16), v115 != *(v83 + 16)))
      {
        v121 = 0;
        v122 = *(v83 + 16);
        v123 = v216;
        while (v122 != v121)
        {
          v124 = v121 + 1;
          v125 = v83 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v121;
          sub_1C44EC3C8(v235, type metadata accessor for GraphTriple);
          sub_1C4471BAC(v28, v78);
          sub_1C483CF08();
          sub_1C44BCC4C(v79, type metadata accessor for GraphTriple);
          sub_1C44BCC4C(v28, type metadata accessor for GraphTriple);
          v121 = v124;
        }

        goto LABEL_44;
      }

      v191 = *(*(v110 + 56) + 8 * v112);
      if (v115 == 1)
      {
        v116 = v215;
        sub_1C44F1938(v114, v215);
        v117 = sub_1C44157D4(v116, 1, v202);
        v128 = v219;
        if (v117 == 1)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v118 = v116;
          v119 = &unk_1EC0BC900;
          v120 = &unk_1C4F142D0;
        }

        else
        {
          v129 = v214;
          sub_1C44856C8(v116, v214);
          v130 = v210;
          sub_1C450B008(v83, v210);
          if (sub_1C44157D4(v130, 1, v209) != 1)
          {

            sub_1C44856C8(v130, v211);
            v158 = v224;
            sub_1C4A7EF60();
            sub_1C4420C3C(v158, &unk_1EC0BC900, &unk_1C4F142D0);
            v159 = v212;
            sub_1C4B5722C();
            sub_1C4471BAC(v159, v213);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C44F1730(0, v234[2] + 1, 1, v234);
              v234 = v163;
            }

            v161 = v234[2];
            v160 = v234[3];
            if (v161 >= v160 >> 1)
            {
              sub_1C44F1730(v160 > 1, v161 + 1, 1, v234);
              v234 = v164;
            }

            sub_1C44BCC4C(v212, type metadata accessor for GraphTriple);
            sub_1C44BCC4C(v211, type metadata accessor for TranslatedEntityTriple);
            sub_1C44BCC4C(v214, type metadata accessor for GraphTriple);
            v162 = v234;
            v234[2] = v161 + 1;
            sub_1C44856C8(v213, v162 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v161);
            goto LABEL_64;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44BCC4C(v129, type metadata accessor for GraphTriple);
          v118 = v130;
          v119 = &unk_1EC0BC9C8;
          v120 = &qword_1C4F29B58;
        }

        sub_1C4420C3C(v118, v119, v120);
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v128 = v219;
      }

      p_isa = v83;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v71 = v218;
      sub_1C4B4A62C(&p_isa);
      if (v71)
      {
        goto LABEL_113;
      }

      v192 = v83;
      v131 = p_isa;
      p_isa = &v191->isa;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4B4A7F4(&p_isa);
      v218 = 0;
      v190 = v28;
      v217 = p_isa;
      p_isa = v131;
      v237 = 0;
      v238 = 0;
      v189 = v131;

      while (1)
      {
        v136 = v228;
        sub_1C4B4AF84(&qword_1EC0C3B68, &qword_1C4F54090, type metadata accessor for TranslatedEntityTriple, type metadata accessor for TranslatedEntityTriple, v132, v133, v134, v135, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199);
        sub_1C4B58D70(v136, v128, &qword_1EC0C3B48, &qword_1C4F54078);
        v137 = sub_1C456902C(&qword_1EC0C3B68, &qword_1C4F54090);
        if (sub_1C44157D4(v128, 1, v137) == 1)
        {
          break;
        }

        v138 = v128;
        v139 = *v128;
        sub_1C44856C8(v138 + *(v137 + 48), v232);
        if (v139 >= *(v217 + 16))
        {
          goto LABEL_112;
        }

        if (v139 < 0)
        {
          goto LABEL_108;
        }

        v140 = (*(v229 + 80) + 32) & ~*(v229 + 80);
        v141 = *(v229 + 72);
        sub_1C4471BAC(v217 + v140 + v141 * v139, v221);
        v142 = v224;
        sub_1C4A7EF60();
        sub_1C4420C3C(v142, &unk_1EC0BC900, &unk_1C4F142D0);
        v143 = v222;
        sub_1C4B5722C();
        sub_1C4471BAC(v143, v223);
        v144 = v234;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C44F1730(0, *(v144 + 16) + 1, 1, v144);
          v144 = v148;
        }

        v146 = *(v144 + 16);
        v145 = *(v144 + 24);
        v234 = v144;
        if (v146 >= v145 >> 1)
        {
          sub_1C44F1730(v145 > 1, v146 + 1, 1, v234);
          v234 = v149;
        }

        sub_1C44BCC4C(v222, type metadata accessor for GraphTriple);
        sub_1C44BCC4C(v221, type metadata accessor for GraphTriple);
        sub_1C44BCC4C(v232, type metadata accessor for TranslatedEntityTriple);
        v147 = v234;
        v234[2] = v146 + 1;
        sub_1C44856C8(v223, v147 + v140 + v146 * v141);
        v79 = v230;
        v78 = v231;
        v128 = v219;
      }

      v77 = v197;
      v28 = v190;
LABEL_64:
      v68 = v207;
      switch(v204)
      {
        case 2:

          goto LABEL_67;
        default:
          v150 = sub_1C4F02938();

          if (v150)
          {
LABEL_67:
            v151 = sub_1C457B350(v199);
            if (v152)
            {
              v153 = v151;
              v154 = v201;
              swift_isUniquelyReferenced_nonNull_native();
              p_isa = v154;
              v155 = *(v154 + 24);
              sub_1C456902C(&qword_1EC0BE000, &unk_1C4F54130);
              v77 = v197;
              sub_1C4F02458();
              v156 = p_isa;
              v157 = *(p_isa[7] + 8 * v153);
              sub_1C456902C(&qword_1EC0BD400, &qword_1C4F2DBE0);
              v201 = v156;
              v68 = v207;
              sub_1C4F02478();
            }
          }

          break;
      }
    }
  }

  while (1)
  {
    v80 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (v80 >= v194)
    {
      break;
    }

    v77 = *(v195 + 8 * v80);
    ++v72;
    if (v77)
    {
      v72 = v80;
      goto LABEL_19;
    }
  }

  v165 = v201;
  v68 = v234;
  switch(v204)
  {
    case 1:
      v193 = 1819047270;
      goto LABEL_78;
    case 2:

      goto LABEL_79;
    case 3:
      v193 = 0x69686374614D6F74;
      goto LABEL_78;
    default:
LABEL_78:
      v166 = sub_1C4F02938();

      if ((v166 & 1) == 0)
      {
        goto LABEL_102;
      }

LABEL_79:
      if (!*(v165 + 16))
      {
        goto LABEL_102;
      }

      v167 = v165 + 64;
      v168 = 1 << *(v165 + 32);
      v169 = -1;
      if (v168 < 64)
      {
        v169 = ~(-1 << v168);
      }

      v170 = v169 & *(v165 + 64);
      v171 = (v168 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v172 = 0;
      v173 = MEMORY[0x1E69E7CC0];
      break;
  }

  while (v170)
  {
LABEL_88:
    v68 = *(*(v165 + 56) + ((v172 << 9) | (8 * __clz(__rbit64(v170)))));
    v175 = v68[2];
    v176 = *(v173 + 16);
    v177 = v176 + v175;
    if (__OFADD__(v176, v175))
    {
      goto LABEL_109;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v177 > *(v173 + 24) >> 1)
    {
      if (v176 <= v177)
      {
        v179 = v176 + v175;
      }

      else
      {
        v179 = v176;
      }

      sub_1C44F1730(isUniquelyReferenced_nonNull_native, v179, 1, v173);
      v173 = v180;
    }

    v165 = v201;
    v170 &= v170 - 1;
    if (v68[2])
    {
      v181 = *(v173 + 16);
      if ((*(v173 + 24) >> 1) - v181 < v175)
      {
        goto LABEL_110;
      }

      v182 = v173 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v181;
      swift_arrayInitWithCopy();

      if (v175)
      {
        v183 = *(v173 + 16);
        v184 = __OFADD__(v183, v175);
        v185 = v183 + v175;
        if (v184)
        {
          goto LABEL_111;
        }

        *(v173 + 16) = v185;
      }
    }

    else
    {

      if (v175)
      {
        __break(1u);
LABEL_102:
        v186 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C482FE88(v186);

        return v68;
      }
    }
  }

  while (1)
  {
    v174 = v172 + 1;
    if (__OFADD__(v172, 1))
    {
      break;
    }

    if (v174 >= v171)
    {

      v187 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C482FE88(v187);

      return v234;
    }

    v170 = *(v167 + 8 * v174);
    ++v172;
    if (v170)
    {
      v172 = v174;
      goto LABEL_88;
    }
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  sub_1C4F024A8();
  __break(1u);
LABEL_113:

  __break(1u);
  return result;
}

uint64_t sub_1C4B52D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = sub_1C456902C(&unk_1EC0BC9C8, &qword_1C4F29B58);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v210 = &v188 - v14;
  v15 = sub_1C456902C(&qword_1EC0BDFE8, &qword_1C4F54070);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v215 = &v188 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v224 = &v188 - v19;
  v20 = type metadata accessor for ConstructionEventTriple(0);
  v229 = *(v20 - 8);
  v21 = *(v229 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v231 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v230 = &v188 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v188 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v223 = &v188 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v222 = &v188 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v221 = &v188 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v213 = &v188 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v212 = &v188 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v214 = &v188 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v227 = &v188 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v226 = &v188 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v225 = &v188 - v45;
  v209 = type metadata accessor for TranslatedEntityTriple(0);
  v216 = *(v209 - 8);
  v46 = *(v216 + 64);
  v47 = MEMORY[0x1EEE9AC00](v209);
  v232 = &v188 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v211 = &v188 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v233 = &v188 - v51;
  v52 = sub_1C456902C(&qword_1EC0C3B48, &qword_1C4F54078);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v219 = &v188 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v228 = &v188 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v220 = &v188 - v58;
  v59 = sub_1C4EFEEF8();
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x1EEE9AC00](v59);
  if (!*(a2 + 16))
  {
    sub_1C44EB5BC(a4, a1, sub_1C4B58244, sub_1C458DA98, type metadata accessor for ConstructionEventTriple);
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(a1 + 16))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return MEMORY[0x1E69E7CC0];
  }

  v217 = v63;
  v205 = &v188 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = v61;
  v203 = a5;
  v235 = a4;
  v204 = a3;
  v202 = v20;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4598944();
  v234 = v64;
  v239 = v64;
  v218 = v6;
  sub_1C4B54800();
  v208 = v65;
  sub_1C4B54E88();
  v67 = v66;
  p_isa = a1;
  MEMORY[0x1EEE9AC00](v66);
  sub_1C456902C(&qword_1EC0C3B50, &qword_1C4F54080);
  v68 = sub_1C4401CBC(&qword_1EDDF0640, &qword_1EC0C3B50, &qword_1C4F54080);
  sub_1C44B95C0(&unk_1EDDF3A50, type metadata accessor for TranslatedEntityTriple);
  v69 = v218;
  v70 = sub_1C4F014A8();
  if (v69)
  {

LABEL_9:

    return v68;
  }

  v207 = v70;
  v200 = v67;
  p_isa = v234;
  MEMORY[0x1EEE9AC00](v70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C3B58, &qword_1C4F54088);
  sub_1C4401CBC(&qword_1EC0C3B60, &qword_1EC0C3B58, &qword_1C4F54088);
  sub_1C44B95C0(&unk_1EDDE2780, type metadata accessor for ConstructionEventTriple);
  v71 = 0;
  v72 = 0;
  v201 = sub_1C4F014A8();
  v198 = v5;
  v218 = 0;
  v193 = 0x6E776F6E6B6E75;

  v68 = v207;
  v74 = *(v207 + 64);
  v195 = v207 + 64;
  v75 = 1 << *(v207 + 32);
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & v74;
  v194 = (v75 + 63) >> 6;
  v196 = (v217 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v234 = MEMORY[0x1E69E7CC0];
  v79 = v230;
  v78 = v231;
  while (v77)
  {
LABEL_19:
    v81 = (v72 << 9) | (8 * __clz(__rbit64(v77)));
    v82 = v68[7];
    v199 = *(v68[6] + v81);
    v83 = *(v82 + v81);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v71 = v218;
    sub_1C44B8118();
    v218 = v71;
    if (v71)
    {

      goto LABEL_9;
    }

    v77 &= v77 - 1;
    if ((sub_1C4B56DC0(v83) & 1) != 0 && (v84 = v205, sub_1C4EFE828(), v85 = sub_1C4B57000(v84, v83), v87 = v86, (*v196)(v84, v206), v87))
    {
      v88 = *(v198 + *(type metadata accessor for PhaseStores() + 32));
      v89 = VisionKeyValueStore.needToInsertVisualIdentifierTriple(for:associatedIdentifiers:associatedNames:autonamingRejectionPersons:)(v85, v87, v208, v200, v203);
      v90 = sub_1C4663240(v199, v201);
      if (v90)
      {
        v68 = v207;
        if ((v89 & 1) == 0)
        {

          goto LABEL_48;
        }

        v199 = v90;
        p_isa = v83;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v71 = v218;
        sub_1C4B4A62C(&p_isa);
        if (v71)
        {
          goto LABEL_113;
        }

        v191 = v87;
        v192 = v83;
        v197 = v77;
        v91 = p_isa;
        p_isa = v199;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4B4A8D8(&p_isa);
        v218 = 0;
        v217 = p_isa;
        p_isa = v91;
        v237 = 0;
        v238 = 0;
        v190 = v91;

        while (1)
        {
          v96 = v220;
          v97 = v228;
          sub_1C4B4AF84(&qword_1EC0C3B68, &qword_1C4F54090, type metadata accessor for TranslatedEntityTriple, type metadata accessor for TranslatedEntityTriple, v92, v93, v94, v95, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199);
          sub_1C4B58D70(v97, v96, &qword_1EC0C3B48, &qword_1C4F54078);
          v98 = sub_1C456902C(&qword_1EC0C3B68, &qword_1C4F54090);
          if (sub_1C44157D4(v96, 1, v98) == 1)
          {
            break;
          }

          v99 = *v96;
          sub_1C44856C8(v96 + *(v98 + 48), v233);
          if (v99 >= *(v217 + 16))
          {
            goto LABEL_112;
          }

          if (v99 < 0)
          {
            goto LABEL_106;
          }

          v100 = (*(v229 + 80) + 32) & ~*(v229 + 80);
          v101 = *(v229 + 72);
          sub_1C4471BAC(v217 + v100 + v101 * v99, v225);
          v102 = v224;
          sub_1C4A7F1DC();
          sub_1C4420C3C(v102, &qword_1EC0BDFE8, &qword_1C4F54070);
          v103 = v226;
          sub_1C4B5722C();
          sub_1C4471BAC(v103, v227);
          v104 = v234;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458DA98(0, *(v104 + 16) + 1, 1, v104);
            v104 = v108;
          }

          v106 = *(v104 + 16);
          v105 = *(v104 + 24);
          v234 = v104;
          if (v106 >= v105 >> 1)
          {
            sub_1C458DA98(v105 > 1, v106 + 1, 1, v234);
            v234 = v109;
          }

          sub_1C44BCC4C(v226, type metadata accessor for ConstructionEventTriple);
          sub_1C44BCC4C(v225, type metadata accessor for ConstructionEventTriple);
          sub_1C44BCC4C(v233, type metadata accessor for TranslatedEntityTriple);
          v107 = v234;
          v234[2] = v106 + 1;
          sub_1C44856C8(v227, v107 + v100 + v106 * v101);
          v79 = v230;
          v78 = v231;
        }

LABEL_44:

        v68 = v207;
        v77 = v197;
      }

      else
      {

        v68 = v207;
        if (v89)
        {
          v126 = v235;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v127 = v126;
          v71 = v218;
          sub_1C4B4A28C(v83, v127);
          v218 = v71;
        }

LABEL_48:
      }
    }

    else
    {
      v110 = v201;
      v111 = *(v201 + 16);
      v197 = v77;
      if (!v111 || (v112 = sub_1C457B350(v199), (v113 & 1) == 0) || (v114 = *(*(v110 + 56) + 8 * v112), v115 = *(v114 + 16), v115 != *(v83 + 16)))
      {
        v121 = 0;
        v122 = *(v83 + 16);
        v123 = v216;
        while (v122 != v121)
        {
          v124 = v121 + 1;
          v125 = v83 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v121;
          sub_1C44EC3C8(v235, type metadata accessor for ConstructionEventTriple);
          sub_1C4471BAC(v28, v78);
          sub_1C483D190();
          sub_1C44BCC4C(v79, type metadata accessor for ConstructionEventTriple);
          sub_1C44BCC4C(v28, type metadata accessor for ConstructionEventTriple);
          v121 = v124;
        }

        goto LABEL_44;
      }

      v191 = *(*(v110 + 56) + 8 * v112);
      if (v115 == 1)
      {
        v116 = v215;
        sub_1C486878C(v114, v215);
        v117 = sub_1C44157D4(v116, 1, v202);
        v128 = v219;
        if (v117 == 1)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v118 = v116;
          v119 = &qword_1EC0BDFE8;
          v120 = &qword_1C4F54070;
        }

        else
        {
          v129 = v214;
          sub_1C44856C8(v116, v214);
          v130 = v210;
          sub_1C450B008(v83, v210);
          if (sub_1C44157D4(v130, 1, v209) != 1)
          {

            sub_1C44856C8(v130, v211);
            v158 = v224;
            sub_1C4A7F1DC();
            sub_1C4420C3C(v158, &qword_1EC0BDFE8, &qword_1C4F54070);
            v159 = v212;
            sub_1C4B5722C();
            sub_1C4471BAC(v159, v213);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C458DA98(0, v234[2] + 1, 1, v234);
              v234 = v163;
            }

            v161 = v234[2];
            v160 = v234[3];
            if (v161 >= v160 >> 1)
            {
              sub_1C458DA98(v160 > 1, v161 + 1, 1, v234);
              v234 = v164;
            }

            sub_1C44BCC4C(v212, type metadata accessor for ConstructionEventTriple);
            sub_1C44BCC4C(v211, type metadata accessor for TranslatedEntityTriple);
            sub_1C44BCC4C(v214, type metadata accessor for ConstructionEventTriple);
            v162 = v234;
            v234[2] = v161 + 1;
            sub_1C44856C8(v213, v162 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v161);
            goto LABEL_64;
          }

          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44BCC4C(v129, type metadata accessor for ConstructionEventTriple);
          v118 = v130;
          v119 = &unk_1EC0BC9C8;
          v120 = &qword_1C4F29B58;
        }

        sub_1C4420C3C(v118, v119, v120);
      }

      else
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v128 = v219;
      }

      p_isa = v83;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v71 = v218;
      sub_1C4B4A62C(&p_isa);
      if (v71)
      {
        goto LABEL_113;
      }

      v192 = v83;
      v131 = p_isa;
      p_isa = &v191->isa;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4B4A8D8(&p_isa);
      v218 = 0;
      v190 = v28;
      v217 = p_isa;
      p_isa = v131;
      v237 = 0;
      v238 = 0;
      v189 = v131;

      while (1)
      {
        v136 = v228;
        sub_1C4B4AF84(&qword_1EC0C3B68, &qword_1C4F54090, type metadata accessor for TranslatedEntityTriple, type metadata accessor for TranslatedEntityTriple, v132, v133, v134, v135, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199);
        sub_1C4B58D70(v136, v128, &qword_1EC0C3B48, &qword_1C4F54078);
        v137 = sub_1C456902C(&qword_1EC0C3B68, &qword_1C4F54090);
        if (sub_1C44157D4(v128, 1, v137) == 1)
        {
          break;
        }

        v138 = v128;
        v139 = *v128;
        sub_1C44856C8(v138 + *(v137 + 48), v232);
        if (v139 >= *(v217 + 16))
        {
          goto LABEL_112;
        }

        if (v139 < 0)
        {
          goto LABEL_108;
        }

        v140 = (*(v229 + 80) + 32) & ~*(v229 + 80);
        v141 = *(v229 + 72);
        sub_1C4471BAC(v217 + v140 + v141 * v139, v221);
        v142 = v224;
        sub_1C4A7F1DC();
        sub_1C4420C3C(v142, &qword_1EC0BDFE8, &qword_1C4F54070);
        v143 = v222;
        sub_1C4B5722C();
        sub_1C4471BAC(v143, v223);
        v144 = v234;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458DA98(0, *(v144 + 16) + 1, 1, v144);
          v144 = v148;
        }

        v146 = *(v144 + 16);
        v145 = *(v144 + 24);
        v234 = v144;
        if (v146 >= v145 >> 1)
        {
          sub_1C458DA98(v145 > 1, v146 + 1, 1, v234);
          v234 = v149;
        }

        sub_1C44BCC4C(v222, type metadata accessor for ConstructionEventTriple);
        sub_1C44BCC4C(v221, type metadata accessor for ConstructionEventTriple);
        sub_1C44BCC4C(v232, type metadata accessor for TranslatedEntityTriple);
        v147 = v234;
        v234[2] = v146 + 1;
        sub_1C44856C8(v223, v147 + v140 + v146 * v141);
        v79 = v230;
        v78 = v231;
        v128 = v219;
      }

      v77 = v197;
      v28 = v190;
LABEL_64:
      v68 = v207;
      switch(v204)
      {
        case 2:

          goto LABEL_67;
        default:
          v150 = sub_1C4F02938();

          if (v150)
          {
LABEL_67:
            v151 = sub_1C457B350(v199);
            if (v152)
            {
              v153 = v151;
              v154 = v201;
              swift_isUniquelyReferenced_nonNull_native();
              p_isa = v154;
              v155 = *(v154 + 24);
              sub_1C456902C(&qword_1EC0C3B70, &qword_1C4F54098);
              v77 = v197;
              sub_1C4F02458();
              v156 = p_isa;
              v157 = *(p_isa[7] + 8 * v153);
              sub_1C456902C(&qword_1EC0BDFF0, &unk_1C4F32510);
              v201 = v156;
              v68 = v207;
              sub_1C4F02478();
            }
          }

          break;
      }
    }
  }

  while (1)
  {
    v80 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (v80 >= v194)
    {
      break;
    }

    v77 = *(v195 + 8 * v80);
    ++v72;
    if (v77)
    {
      v72 = v80;
      goto LABEL_19;
    }
  }

  v165 = v201;
  v68 = v234;
  switch(v204)
  {
    case 1:
      v193 = 1819047270;
      goto LABEL_78;
    case 2:

      goto LABEL_79;
    case 3:
      v193 = 0x69686374614D6F74;
      goto LABEL_78;
    default:
LABEL_78:
      v166 = sub_1C4F02938();

      if ((v166 & 1) == 0)
      {
        goto LABEL_102;
      }

LABEL_79:
      if (!*(v165 + 16))
      {
        goto LABEL_102;
      }

      v167 = v165 + 64;
      v168 = 1 << *(v165 + 32);
      v169 = -1;
      if (v168 < 64)
      {
        v169 = ~(-1 << v168);
      }

      v170 = v169 & *(v165 + 64);
      v171 = (v168 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v172 = 0;
      v173 = MEMORY[0x1E69E7CC0];
      break;
  }

  while (v170)
  {
LABEL_88:
    v68 = *(*(v165 + 56) + ((v172 << 9) | (8 * __clz(__rbit64(v170)))));
    v175 = v68[2];
    v176 = *(v173 + 16);
    v177 = v176 + v175;
    if (__OFADD__(v176, v175))
    {
      goto LABEL_109;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v177 > *(v173 + 24) >> 1)
    {
      if (v176 <= v177)
      {
        v179 = v176 + v175;
      }

      else
      {
        v179 = v176;
      }

      sub_1C458DA98(isUniquelyReferenced_nonNull_native, v179, 1, v173);
      v173 = v180;
    }

    v165 = v201;
    v170 &= v170 - 1;
    if (v68[2])
    {
      v181 = *(v173 + 16);
      if ((*(v173 + 24) >> 1) - v181 < v175)
      {
        goto LABEL_110;
      }

      v182 = v173 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v181;
      swift_arrayInitWithCopy();

      if (v175)
      {
        v183 = *(v173 + 16);
        v184 = __OFADD__(v183, v175);
        v185 = v183 + v175;
        if (v184)
        {
          goto LABEL_111;
        }

        *(v173 + 16) = v185;
      }
    }

    else
    {

      if (v175)
      {
        __break(1u);
LABEL_102:
        v186 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C482FEC8(v186);

        return v68;
      }
    }
  }

  while (1)
  {
    v174 = v172 + 1;
    if (__OFADD__(v172, 1))
    {
      break;
    }

    if (v174 >= v171)
    {

      v187 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C482FEC8(v187);

      return v234;
    }

    v170 = *(v167 + 8 * v174);
    ++v172;
    if (v170)
    {
      v172 = v174;
      goto LABEL_88;
    }
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  sub_1C4F024A8();
  __break(1u);
LABEL_113:

  __break(1u);
  return result;
}

void sub_1C4B54800()
{
  sub_1C43FBD3C();
  v93 = v1;
  v3 = v2;
  v87 = v4;
  v5 = sub_1C43FBE94();
  v6 = type metadata accessor for TranslatedEntityTriple(v5);
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C4EFEEF8();
  v16 = sub_1C43FCDF8(v15);
  v88 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v89 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  v94 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  v97 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  v90 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  v95 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD230();
  v100 = v30;
  v31 = sub_1C43FBE44();
  v96 = v3(v31);
  sub_1C43FCDF8(v96);
  v86 = v32;
  v34 = *(v33 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBC74();
  v99 = v36;
  v103 = MEMORY[0x1E69E7CD0];
  v37 = *(v0 + 16);
  if (v37)
  {
    v38 = *(v9 + 80);
    sub_1C43FC354();
    v40 = v0 + v39;
    v91 = *(v9 + 72);
    v41 = (v88 + 8);
    v92 = v6;
    while (1)
    {
      sub_1C4471BAC(v40, v14);
      v42 = v14 + *(v6 + 28);
      if (sub_1C4EFED18())
      {
        v43 = v14 + *(v6 + 20);
      }

      v44 = *(v88 + 16);
      v45 = sub_1C441E0C0();
      v46(v45);
      sub_1C4EFE558();
      sub_1C442D384();
      sub_1C44B95C0(&off_1EDDFCCA8, v47);
      sub_1C4404B44();
      sub_1C4F01578();
      sub_1C4404B44();
      sub_1C4F01578();
      v48 = v102;
      sub_1C441CAA0();
      v49 = v49 && v48 == v94;
      if (v49)
      {
        v50 = 1;
      }

      else
      {
        v50 = sub_1C43FBEC0();
      }

      v51 = *v41;
      (*v41)(v94, v15);

      if (v50)
      {
        goto LABEL_19;
      }

      sub_1C4EFE828();
      sub_1C4404B44();
      sub_1C4F01578();
      sub_1C4404B44();
      sub_1C4F01578();
      v52 = v102;
      sub_1C441CAA0();
      if (v49 && v52 == v89)
      {
        break;
      }

      v54 = sub_1C43FBEC0();
      v55 = sub_1C43FD7E0();
      v51(v55);

      if (v54)
      {
        goto LABEL_19;
      }

      (v51)(v97, v15);
      sub_1C4407B7C();
      sub_1C44BCC4C(v14, v56);
      v6 = v92;
LABEL_20:
      v40 += v91;
      if (!--v37)
      {
        goto LABEL_21;
      }
    }

    v57 = sub_1C43FD7E0();
    v51(v57);

LABEL_19:
    v6 = v92;
    v58 = (v14 + *(v92 + 32));
    v59 = *v58;
    v60 = v58[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44869B4(&v101, v59, v60);

    (v51)(v97, v15);
    sub_1C4407B7C();
    sub_1C44BCC4C(v14, v61);
    goto LABEL_20;
  }

LABEL_21:
  v62 = *(v87 + 16);
  if (v62)
  {
    v63 = *(v86 + 80);
    sub_1C43FC354();
    v66 = v65 + v64;
    v98 = *(v67 + 72);
    v68 = (v88 + 8);
    while (1)
    {
      sub_1C4471BAC(v66, v99);
      v69 = v99 + v96[7];
      if (sub_1C4EFED18())
      {
        v70 = v99 + v96[5];
      }

      v71 = *(v88 + 16);
      v72 = sub_1C440DE0C();
      v73(v72);
      sub_1C4EFE558();
      sub_1C442D384();
      sub_1C44B95C0(&off_1EDDFCCA8, v74);
      sub_1C4404BB0();
      sub_1C4F01578();
      sub_1C4404BB0();
      sub_1C4F01578();
      v75 = v102;
      sub_1C441CAA0();
      if (v49 && v75 == v95)
      {
        v77 = 1;
      }

      else
      {
        v77 = sub_1C43FBEC0();
      }

      v78 = *v68;
      (*v68)(v95, v15);

      if (v77)
      {
        goto LABEL_39;
      }

      sub_1C4EFE828();
      sub_1C4404BB0();
      sub_1C4F01578();
      sub_1C4404BB0();
      sub_1C4F01578();
      v79 = v102;
      sub_1C441CAA0();
      if (v49 && v79 == v90)
      {
        break;
      }

      v81 = sub_1C43FBEC0();
      v78(v90, v15);

      if (v81)
      {
        goto LABEL_39;
      }

      v78(v100, v15);
      v82 = v99;
LABEL_40:
      sub_1C44BCC4C(v82, v93);
      v66 += v98;
      if (!--v62)
      {
        goto LABEL_41;
      }
    }

    v78(v90, v15);

LABEL_39:
    v83 = (v99 + v96[8]);
    v84 = *v83;
    v85 = v83[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44869B4(&v101, v84, v85);

    v78(v100, v15);
    v82 = v99;
    goto LABEL_40;
  }

LABEL_41:
  sub_1C43FE9F0();
}

void sub_1C4B54E88()
{
  sub_1C43FBD3C();
  v76 = v1;
  v3 = v2;
  v68 = v4;
  v5 = sub_1C43FBE94();
  v70 = type metadata accessor for TranslatedEntityTriple(v5);
  v6 = sub_1C43FCDF8(v70);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v81 = v12 - v11;
  sub_1C43FBE44();
  v13 = sub_1C4EFEEF8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD230();
  v82 = v20;
  v21 = sub_1C43FBE44();
  v77 = v3(v21);
  sub_1C43FCDF8(v77);
  v67 = v22;
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBC74();
  v80 = v26;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v27 = *(v14 + 72);
  v69 = v14;
  v28 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0C890;
  sub_1C4EFEBF8();
  sub_1C4EFEE68();
  v83 = v27;
  sub_1C4EFE2C8();
  sub_1C4D504A4();
  v30 = v29;
  v84[2] = MEMORY[0x1E69E7CD0];
  v74 = *(v0 + 16);
  if (v74)
  {
    v31 = *(v8 + 80);
    sub_1C43FC354();
    v71 = *(v8 + 72);
    do
    {
      v78 = v32;
      sub_1C441D754();
      sub_1C4471BAC(v33, v81);
      if (*(v30 + 16))
      {
        v34 = *(v70 + 20);
        v35 = *(v30 + 40);
        sub_1C442D384();
        sub_1C44B95C0(&qword_1EDDFCCB8, v36);
        v37 = sub_1C4F00FD8();
        v38 = ~(-1 << *(v30 + 32));
        while (1)
        {
          v39 = v37 & v38;
          if (((*(v30 + 56 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
          {
            break;
          }

          (*(v69 + 16))(v18, *(v30 + 48) + v39 * v27, v13);
          sub_1C442D384();
          sub_1C44B95C0(&qword_1EDDFCCB0, v40);
          v41 = sub_1C4F010B8();
          (*(v69 + 8))(v18, v13);
          v37 = v39 + 1;
          if (v41)
          {
            v42 = (v81 + *(v70 + 32));
            v43 = *v42;
            v44 = v42[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C44869B4(v84, v43, v44);

            sub_1C4407B7C();
            v46 = v81;
            goto LABEL_9;
          }
        }
      }

      v45 = type metadata accessor for TranslatedEntityTriple;
      v46 = v81;
LABEL_9:
      sub_1C44BCC4C(v46, v45);
      v32 = v78 + 1;
    }

    while (v78 + 1 != v74);
  }

  v75 = *(v68 + 16);
  if (v75)
  {
    v47 = *(v67 + 80);
    sub_1C43FC354();
    v73 = v50 + v49;
    v51 = (v69 + 16);
    v52 = (v69 + 8);
    v72 = *(v53 + 72);
    do
    {
      v79 = v48;
      sub_1C4471BAC(v73 + v72 * v48, v80);
      v54 = *v51;
      (*v51)(v82, v80 + *(v77 + 20), v13);
      if (*(v30 + 16))
      {
        v55 = *(v30 + 40);
        sub_1C442D384();
        sub_1C44B95C0(&qword_1EDDFCCB8, v56);
        v57 = sub_1C4F00FD8();
        v58 = ~(-1 << *(v30 + 32));
        while (1)
        {
          v59 = v57 & v58;
          if (((*(v30 + 56 + (((v57 & v58) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v57 & v58)) & 1) == 0)
          {
            break;
          }

          v54(v18, *(v30 + 48) + v59 * v83, v13);
          sub_1C442D384();
          sub_1C44B95C0(&qword_1EDDFCCB0, v60);
          v61 = sub_1C4F010B8();
          v62 = *v52;
          (*v52)(v18, v13);
          v57 = v59 + 1;
          if (v61)
          {
            v62(v82, v13);
            v63 = (v80 + *(v77 + 32));
            v64 = *v63;
            v65 = v63[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C44869B4(v84, v64, v65);

            v66 = v80;
            goto LABEL_18;
          }
        }
      }

      (*v52)(v82, v13);
      v66 = v80;
LABEL_18:
      sub_1C44BCC4C(v66, v76);
      v48 = v79 + 1;
    }

    while (v79 + 1 != v75);
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C4B55480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v66 = a3;
  v4 = type metadata accessor for TranslatedEntityTriple(0);
  v67 = *(v4 - 1);
  v5 = *(v67 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v73 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - v8;
  v10 = sub_1C456902C(&qword_1EC0C3B68, &qword_1C4F54090);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v59 = (&v59 - v12);
  v13 = sub_1C456902C(&qword_1EC0C3B48, &qword_1C4F54078);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v59 - v19);
  v21 = 0;
  v60 = a1;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  v63 = v17;
  v64 = v10;
  v61 = v22;
  v62 = &v59 - v19;
  while (1)
  {
    if (v21 == v22)
    {
      v24 = 1;
      v69 = v22;
    }

    else
    {
      if (v21 >= v22)
      {
        goto LABEL_20;
      }

      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_21;
      }

      v26 = v59;
      v27 = v60 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v21;
      v28 = *(v10 + 48);
      *v59 = v21;
      sub_1C4471BAC(v27, v26 + v28);
      sub_1C4B58D70(v26, v17, &qword_1EC0C3B68, &qword_1C4F54090);
      v24 = 0;
      v69 = v25;
    }

    sub_1C440BAA8(v17, v24, 1, v10);
    sub_1C4B58D70(v17, v20, &qword_1EC0C3B48, &qword_1C4F54078);
    if (sub_1C44157D4(v20, 1, v10) == 1)
    {
      return v23;
    }

    v29 = *v20;
    sub_1C44856C8(v20 + *(v10 + 48), v9);
    v30 = v70;
    sub_1C44B8118();
    v70 = v30;
    if (v30)
    {

      sub_1C44BCC4C(v9, type metadata accessor for TranslatedEntityTriple);
      return v23;
    }

    v68 = v23;
    v31 = sub_1C4EFF0C8();
    v32 = v73;
    (*(*(v31 - 8) + 16))(v73, v9, v31);
    v33 = v4[5];
    v34 = sub_1C4EFEEF8();
    v35 = *(*(v34 - 8) + 16);
    v35(v32 + v33, &v9[v33], v34);
    v36 = v4[6];
    v37 = sub_1C4EFF8A8();
    (*(*(v37 - 8) + 16))(v32 + v36, &v9[v36], v37);
    v35(v32 + v4[7], &v9[v4[7]], v34);
    v38 = &v9[v4[8]];
    v40 = *v38;
    v39 = *(v38 + 1);
    sub_1C4471BAC(&v9[v4[9]], v32 + v4[9]);
    v41 = &v9[v4[10]];
    v42 = *(v41 + 1);
    v71 = *v41;
    v72 = v42;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    result = MEMORY[0x1C6940010](30, 0xE100000000000000);
    if ((v29 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v29 >= *(v65 + 16))
    {
      goto LABEL_19;
    }

    v43 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v44 = *(v67 + 72);
    v45 = (v65 + v43 + v44 * v29 + v4[10]);
    v47 = *v45;
    v46 = v45[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v47, v46);

    v48 = v71;
    v49 = v72;
    v50 = *&v9[v4[11]];
    v51 = v9[v4[12]];
    v52 = v73;
    v53 = (v73 + v4[8]);
    *v53 = v40;
    v53[1] = v39;
    v54 = (v52 + v4[10]);
    *v54 = v48;
    v54[1] = v49;
    *(v52 + v4[11]) = v50;
    *(v52 + v4[12]) = v51;
    v23 = v68;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C44E6488(0, *(v23 + 16) + 1, 1, v23);
      v23 = v57;
    }

    v17 = v63;
    v22 = v61;
    v56 = *(v23 + 16);
    v55 = *(v23 + 24);
    if (v56 >= v55 >> 1)
    {
      sub_1C44E6488(v55 > 1, v56 + 1, 1, v23);
      v23 = v58;
    }

    *(v23 + 16) = v56 + 1;
    sub_1C44856C8(v73, v23 + v43 + v56 * v44);
    result = sub_1C44BCC4C(v9, type metadata accessor for TranslatedEntityTriple);
    v10 = v64;
    v20 = v62;
    v21 = v69;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1C4B55A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(void), uint64_t a13)
{
  v216 = a8;
  v215 = a7;
  v17 = v13;
  v209 = a3;
  v208 = a2;
  v198 = a13;
  v231 = a12;
  v227 = a11;
  v212 = a9;
  v19 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  sub_1C43FBD18(v19);
  v21 = *(v20 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBC74();
  v203 = v23;
  sub_1C43FBE44();
  v219 = type metadata accessor for Source();
  v24 = sub_1C43FCDF8(v219);
  v218 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  v233 = v28;
  sub_1C43FD1D0();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v198 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v198 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v198 - v37;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v205 = v39;
  v40 = sub_1C43FBE44();
  v234 = a4(v40);
  v41 = sub_1C43FCDF8(v234);
  v207 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  v226 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  v232 = v49;
  v213 = a5;
  v50 = a5;
  v51 = a10;
  v214 = a6;
  v52 = sub_1C456902C(v50, a6);
  v53 = sub_1C43FBD18(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FD230();
  v210 = v57;
  v240 = 0;
  v241 = 0;
  v239 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v228 = MEMORY[0x1E69E7CC0];
  v225 = a10;
  v201 = v32;
  v199 = v35;
  v206 = v38;
  while (1)
  {
    v62 = v211;
    v63 = v215;
    v64 = v216;
    sub_1C4B4AF84(v215, v216, v212, v51, v58, v59, v60, v61, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209);
    v65 = v210;
    sub_1C4B58D70(v62, v210, v213, v214);
    v66 = sub_1C456902C(v63, v64);
    if (sub_1C44157D4(v65, 1, v66) == 1)
    {

      return;
    }

    v67 = *v65;
    sub_1C44856C8(v65 + *(v66 + 48), v232);
    sub_1C44B8118();
    if (v17)
    {

      sub_1C44BCC4C(v232, v231);

      return;
    }

    if ((v67 & 0x8000000000000000) != 0)
    {
      goto LABEL_155;
    }

    if (v67 >= *(v208 + 16))
    {
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v68 = v234;
    v69 = *(v232 + v234[9]);
    v70 = (*(v207 + 80) + 32) & ~*(v207 + 80);
    v222 = *(v207 + 72);
    v71 = v208 + v70 + v222 * v67;
    v72 = v226;
    sub_1C4471BAC(v71, v226);
    v73 = *(v72 + v68[9]);
    v74 = v72;
    v75 = v231;
    sub_1C44BCC4C(v74, v231);
    v230 = v69;
    v221 = 0;
    v223 = v70;
    if (v69 == v73)
    {
      goto LABEL_145;
    }

    v204 = v71;
    sub_1C4B5907C(&v232);
    sub_1C4471BAC(v76, v77);
    v78 = *(v73 + v68[9]);
    sub_1C44BCC4C(v73, v75);
    v79 = 0;
    sub_1C44250F4();
    v202 = *(v80 + 80);
    v217 = (v202 + 32) & ~v202;
    v220 = (MEMORY[0x1E69E7CC0] + v217);
    v229 = MEMORY[0x1E69E7CC0];
    v81 = 1;
    v82 = v203;
    v83 = v201;
    v84 = v199;
LABEL_8:
    v85 = v219;
    while (1)
    {
      if (qword_1EDDFA6A8 != -1)
      {
        swift_once();
      }

      if (qword_1EDE2DCF0 < v81)
      {
        break;
      }

      switch(v81)
      {
        case 1:
          if (qword_1EDDFED28 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = &unk_1EDDFD088;
          goto LABEL_87;
        case 2:
          if (qword_1EDDFD0D0 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFD0D8;
          goto LABEL_87;
        case 6:
          if (qword_1EDDFD0A8 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFD0B0;
          goto LABEL_87;
        case 9:
          if (qword_1EDDFD150 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFD158;
          goto LABEL_87;
        case 11:
          if (qword_1EDDFD068 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFD070;
          goto LABEL_87;
        case 12:
          if (qword_1EDDFD110 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFD118;
          goto LABEL_87;
        case 14:
          if (qword_1EDDFED38 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFD0F0;
          goto LABEL_87;
        case 16:
          if (qword_1EDDFD2F0 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFD2F8;
          goto LABEL_87;
        case 17:
          if (qword_1EDDFED08 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFED10;
          goto LABEL_87;
        case 18:
          if (qword_1EDDFD040 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFD048;
          goto LABEL_87;
        case 19:
          if (qword_1EDDFD268 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = &qword_1EDDFD270;
          goto LABEL_87;
        case 21:
          if (qword_1EDDFD130 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFD138;
          goto LABEL_87;
        case 22:
          if (qword_1EDDFD178 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = &qword_1EDDFD180;
          goto LABEL_87;
        case 23:
          if (qword_1EDDFED40 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFD2A8;
          goto LABEL_87;
        case 24:
          if (qword_1EDDFD218 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = &qword_1EDDFD220;
          goto LABEL_87;
        case 25:
          if (qword_1EDDFD240 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = &qword_1EDDFD248;
          goto LABEL_87;
        case 27:
          if (qword_1EDDFD318 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFD320;
          goto LABEL_87;
        case 28:
          if (qword_1EDDFD340 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFD348;
          goto LABEL_87;
        case 29:
          if (qword_1EDDFD2C8 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = qword_1EDDFD2D0;
          goto LABEL_87;
        case 31:
          if (qword_1EDDFD1F0 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = &qword_1EDDFD1F8;
          goto LABEL_87;
        case 32:
          if (qword_1EDDFD288 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = &qword_1EDDFD290;
          goto LABEL_87;
        case 33:
          if (qword_1EDDFD1A0 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = &qword_1EDDFD1A8;
          goto LABEL_87;
        case 34:
          if (qword_1EDDFD1C8 != -1)
          {
            swift_once();
          }

          v86 = v85;
          v87 = &qword_1EDDFD1D0;
LABEL_87:
          sub_1C442B738(v86, v87);
          sub_1C440CD94();
          sub_1C4471BAC(v92, v83);
          goto LABEL_88;
        default:
          if (qword_1EDDFDCF8 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (!qword_1EDDFF3C8)
          {
            sub_1C43FF010();
            sub_1C440BAA8(v98, v99, v100, v101);
LABEL_98:
            sub_1C4420C3C(v82, &unk_1EC0C0760, &qword_1C4F170D0);
            v95 = __OFADD__(v81++, 1);
            if (v95)
            {
              goto LABEL_158;
            }

            continue;
          }

          (*(off_1EDDFF3D0 + 2))();
          v89 = *(v88 + 16);
          v90 = sub_1C440DE0C();
          v91(v90);
          v85 = v219;
          if (sub_1C44157D4(v82, 1, v219) == 1)
          {
            goto LABEL_98;
          }

          sub_1C44856C8(v82, v83);
LABEL_88:
          v93 = type metadata accessor for Source;
          sub_1C44856C8(v83, v84);
          sub_1C44856C8(v84, v38);
          v94 = v81 - 1;
          if (__OFSUB__(v81, 1))
          {
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          v95 = __OFADD__(v81++, 1);
          if (v95)
          {
            goto LABEL_153;
          }

          v96 = v94 > 0x40;
          if (v94 >= 0x40)
          {
            v97 = 0;
          }

          else
          {
            v97 = 1 << v94;
          }

          if (v96)
          {
            v97 = 0;
          }

          if ((v97 & v78) >= 1)
          {
            sub_1C44856C8(v38, v205);
            if (v79)
            {
              v102 = v229;
              goto LABEL_124;
            }

            v103 = v229[3];
            if (((v103 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_160;
            }

            v104 = v103 & 0xFFFFFFFFFFFFFFFELL;
            if (v104 <= 1)
            {
              v105 = 1;
            }

            else
            {
              v105 = v104;
            }

            sub_1C456902C(&unk_1EC0BAC00, &unk_1C4F11680);
            sub_1C44250F4();
            v107 = *(v106 + 72);
            v108 = v217;
            v102 = swift_allocObject();
            v109 = j__malloc_size(v102);
            if (!v107)
            {
              goto LABEL_161;
            }

            v110 = v109 - v108;
            if (v109 - v108 == 0x8000000000000000 && v107 == -1)
            {
              goto LABEL_162;
            }

            v112 = v110 / v107;
            v102[2] = v105;
            v102[3] = 2 * (v110 / v107);
            v93 = (v102 + v108);
            v113 = v229[3];
            v114 = (v113 >> 1) * v107;
            if (v229[2])
            {
              if (v102 < v229 || v93 >= (v229 + v217 + v114))
              {
                sub_1C4B59000();
                swift_arrayInitWithTakeFrontToBack();
                goto LABEL_121;
              }

              if (v102 != v229)
              {
                sub_1C4B59000();
                swift_arrayInitWithTakeBackToFront();
LABEL_121:
                v112 = v220;
              }

              v229[2] = 0;
            }

            v220 = v93 + v114;
            v79 = (v112 & 0x7FFFFFFFFFFFFFFFLL) - (v113 >> 1);

            v82 = v203;
LABEL_124:
            v95 = __OFSUB__(v79--, 1);
            if (v95)
            {
              goto LABEL_157;
            }

            sub_1C4B5907C(&v242);
            sub_1C44856C8(v116, v117);
            sub_1C44250F4();
            v220 = v93 + *(v118 + 72);
            v229 = v102;
            goto LABEL_8;
          }

          sub_1C44BCC4C(v38, type metadata accessor for Source);
          break;
      }
    }

    v119 = v229;
    v120 = v229[3];
    if (v120 >= 2)
    {
      break;
    }

    v121 = v229[2];
    v122 = v230;
    v71 = v204;
    v123 = v217;
    if (v121)
    {
      goto LABEL_131;
    }

LABEL_144:

LABEL_145:
    v133 = v71;
    v134 = sub_1C4EFF0C8();
    sub_1C43FCE50(v134);
    v136 = v224;
    v137 = v232;
    (*(v135 + 16))(v224, v232);
    v138 = v234[5];
    v139 = sub_1C4EFEEF8();
    sub_1C43FBCE0(v139);
    v141 = *(v140 + 16);
    v141(v136 + v138, v137 + v138, v139);
    v142 = v234[6];
    v143 = sub_1C4EFF8A8();
    sub_1C43FCE50(v143);
    (*(v144 + 16))(v136 + v142, v137 + v142);
    v141(v136 + v234[7], v137 + v234[7], v139);
    v145 = (v137 + v234[8]);
    v146 = v145[1];
    v229 = *v145;
    v147 = *(v137 + v234[10]);
    v148 = v226;
    sub_1C4471BAC(v71, v226);
    v149 = *(v148 + v234[10]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v150 = v231;
    sub_1C44BCC4C(v148, v231);
    v151 = (v137 + v234[11]);
    v153 = *v151;
    v152 = v151[1];
    sub_1C4471BAC(v133, v148);
    v154 = (v148 + v234[11]);
    v156 = *v154;
    v155 = v154[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44BCC4C(v148, v150);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v157 = objc_autoreleasePoolPush();
    v237 = v153;
    v238 = v152;
    v235 = 30;
    v236 = 0xE100000000000000;
    sub_1C4415EA8();
    v158 = sub_1C4F01FC8();

    objc_autoreleasePoolPop(v157);
    sub_1C4499940(v158, v159, v160, v161, v162, v163, v164, v165, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211);
    v167 = v166;
    v168 = sub_1C45986E0(v156, v155);
    sub_1C44999E0(v168, v167);
    v170 = v169;
    v171 = objc_autoreleasePoolPush();
    sub_1C44EC90C(v170, v172, v173, v174, v175, v176, v177, v178, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
    v237 = v179;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C44134BC();
    sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4B59088();
    v180 = sub_1C4F01048();
    v182 = v181;

    objc_autoreleasePoolPop(v171);

    v183 = *(v137 + v234[12]);
    v184 = (v136 + v234[8]);
    v185 = v230;
    *v184 = v229;
    v184[1] = v146;
    *(v136 + v234[9]) = v185;
    *(v136 + v234[10]) = (v147 + v149) * 0.5;
    v186 = (v136 + v234[11]);
    *v186 = v180;
    v186[1] = v182;
    *(v136 + v234[12]) = v183;
    v187 = v228;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v191 = *(v187 + 16);
      sub_1C4B590B4();
      v187 = v192();
    }

    v17 = v221;
    v38 = v206;
    v188 = *(v187 + 16);
    v189 = v231;
    v51 = v225;
    v190 = v223;
    if (v188 >= *(v187 + 24) >> 1)
    {
      v193 = v221;
      v194 = v225;
      v195 = v231;
      sub_1C4B590B4();
      v197 = v196();
      v189 = v195;
      v51 = v194;
      v17 = v193;
      v187 = v197;
    }

    sub_1C44BCC4C(v232, v189);
    *(v187 + 16) = v188 + 1;
    v228 = v187;
    sub_1C44856C8(v224, v187 + v190 + v188 * v222);
  }

  v124 = v120 >> 1;
  v95 = __OFSUB__(v124, v79);
  v121 = v124 - v79;
  v122 = v230;
  v71 = v204;
  v123 = v217;
  if (!v95)
  {
    v229[2] = v121;
    if (!v121)
    {
      goto LABEL_144;
    }

LABEL_131:
    v125 = v119 + v123;
    sub_1C44250F4();
    v127 = *(v126 + 72);
    while (2)
    {
      v128 = v233;
      sub_1C4471BAC(v125, v233);
      v129 = *(v128 + 16);
      sub_1C441D3C8();
      sub_1C44BCC4C(v128, v130);
      v131 = v129 - 1;
      if (__OFSUB__(v129, 1))
      {
        goto LABEL_154;
      }

      if ((v129 - 66) < 0xFFFFFFFFFFFFFF7FLL)
      {
LABEL_134:
        v132 = 0;
        goto LABEL_139;
      }

      if ((v131 & 0x8000000000000000) == 0)
      {
        if (v131 > 0x3F)
        {
          goto LABEL_134;
        }

        v132 = 1 << v131;
LABEL_138:
        if ((v132 & v122) == 0)
        {
LABEL_139:
          v122 |= v132;
        }

        v125 += v127;
        if (!--v121)
        {
          v230 = v122;
          goto LABEL_144;
        }

        continue;
      }

      break;
    }

    v132 = 0;
    if (v131 > 0xFFFFFFFFFFFFFFC0)
    {
      goto LABEL_138;
    }

    goto LABEL_139;
  }

LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
}

uint64_t sub_1C4B56DC0(uint64_t a1)
{
  v2 = sub_1C4EFEEF8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != 3)
  {
    return 0;
  }

  v7 = 0;
  v8 = (v4 + 8);
  do
  {
    v9 = v7 != 3;
    if (v7 == 3)
    {
      break;
    }

    v10 = type metadata accessor for TranslatedEntityTriple(0);
    v11 = a1 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v7;
    v12 = *(v10 + 20);
    sub_1C4EFE968();
    sub_1C44B95C0(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v16[2] == v16[0] && v16[3] == v16[1])
    {
      (*v8)(v6, v2);

      return 1;
    }

    ++v7;
    v14 = sub_1C4F02938();
    (*v8)(v6, v2);
  }

  while ((v14 & 1) == 0);
  return v9;
}

uint64_t sub_1C4B57000(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TranslatedEntityTriple(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a2 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      return 0;
    }

    sub_1C4471BAC(a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, v7);
    v10 = *(v3 + 28);
    sub_1C4EFEEF8();
    sub_1C44B95C0(&off_1EDDFCCA8, MEMORY[0x1E69A9748]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v17[2] == v17[0] && v17[3] == v17[1])
    {
      break;
    }

    v12 = sub_1C4F02938();

    if (v12)
    {
      goto LABEL_11;
    }

    sub_1C44BCC4C(v7, type metadata accessor for TranslatedEntityTriple);
    ++v8;
  }

LABEL_11:
  v14 = &v7[*(v3 + 32)];
  v13 = *v14;
  v15 = *(v14 + 1);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44BCC4C(v7, type metadata accessor for TranslatedEntityTriple);
  return v13;
}

void sub_1C4B5722C()
{
  sub_1C43FEC28();
  v142 = v2;
  v4 = v3;
  v151 = v5;
  v7 = v6;
  v9 = v8;
  v155 = sub_1C4EFFB98();
  v10 = sub_1C43FCDF8(v155);
  v152 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v154 = v15 - v14;
  sub_1C43FBE44();
  v150 = sub_1C4EF9488();
  v16 = sub_1C43FCDF8(v150);
  v147 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v149 = v21 - v20;
  v22 = sub_1C456902C(&qword_1EC0C3960, &qword_1C4F52CC0);
  sub_1C43FBD18(v22);
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  v26 = sub_1C44F0C58();
  v27 = sub_1C43FBD18(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v32 = v31 - v30;
  v33 = v4(0);
  v162 = *(v0 + *(v33 + 36));
  v34 = type metadata accessor for TranslatedEntityTriple(0);
  SourceSet.insert(_:)(v32, v7 + *(v34 + 36));
  sub_1C441D3C8();
  sub_1C44BCC4C(v32, v35);
  v145 = v33;
  v36 = *(v33 + 44);
  v146 = v0;
  v37 = (v0 + v36);
  v38 = *v37;
  v39 = v37[1];
  v139 = v37;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  v41 = (v7 + *(v34 + 40));
  v42 = v41[1];
  v141 = *v41;
  *(inited + 32) = v141;
  *(inited + 40) = v42;
  v140 = v42;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v43 = objc_autoreleasePoolPush();
  sub_1C4464BB4();
  v158 = v44;
  v159 = v45;
  v46 = sub_1C4415EA8();
  v47 = sub_1C4F01FC8();

  objc_autoreleasePoolPop(v43);
  sub_1C4499940(v47, v48, v49, v50, v51, v52, v53, v54, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  v56 = v55;
  sub_1C4499940(inited, v57, v58, v59, v60, v61, v62, v63, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  sub_1C44999E0(v64, v56);
  v66 = v65;
  v67 = objc_autoreleasePoolPush();
  sub_1C44EC90C(v66, v68, v69, v70, v71, v72, v73, v74, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C44134BC();
  sub_1C4401CBC(v75, &unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4B59088();
  v76 = sub_1C4F01048();
  v78 = v77;

  objc_autoreleasePoolPop(v67);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v79 = objc_autoreleasePoolPush();
  v144 = v76;
  v160 = v76;
  v161 = v78;
  sub_1C4475294(30);
  v156 = v46;
  v80 = sub_1C4F01FC8();
  v143 = v78;

  objc_autoreleasePoolPop(v79);
  v81 = *(v80 + 16);
  if (v81)
  {
    v138 = v9;
    v157 = MEMORY[0x1E69E7CC0];
    sub_1C459D100();
    v82 = 0;
    v83 = v157;
    sub_1C44A3CE0();
    v84 = v151;
    v152 += 8;
    v85 = (v80 + 40);
    v86 = v80;
    v148 = v80;
    v153 = v81;
    while (1)
    {
      if (v82 >= *(v86 + 16))
      {
        __break(1u);
        return;
      }

      v87 = *(v85 - 1);
      v88 = *v85;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v89 = objc_autoreleasePoolPush();
      v160 = v87;
      v161 = v88;
      sub_1C4475294(58);
      if ((sub_1C4F02048() & 1) == 0)
      {
        goto LABEL_8;
      }

      v160 = v87;
      v161 = v88;
      v158 = &unk_1F43D23D8;
      sub_1C44B95C0(&qword_1EDDFCD90, MEMORY[0x1E69680B8]);
      sub_1C456902C(&qword_1EC0C3978, &unk_1C4F540A0);
      sub_1C4400184();
      sub_1C4401CBC(&qword_1EDDFA558, &qword_1EC0C3978, &unk_1C4F540A0);
      sub_1C4F020C8();
      v90 = sub_1C4F01FB8();
      sub_1C441739C();
      v91(v149, v150);
      if (!v90[2])
      {
        break;
      }

      v93 = v90[4];
      v92 = v90[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      SourceIdPrefix.init(rawValue:)();
      v84 = v151;
      v86 = v148;
LABEL_9:
      objc_autoreleasePoolPop(v89);
      v95 = type metadata accessor for SourceIdPrefix();
      if (sub_1C44157D4(v1, 1, v95) == 1)
      {
        sub_1C4420C3C(v1, &qword_1EC0C3960, &qword_1C4F52CC0);
      }

      else
      {
        v96 = *v1;
        v97 = v1[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44AE0B0();
      }

      sub_1C4EFFBA8();
      if (*(v84 + 16) && (sub_1C44EE7B4(), (v99 & 1) != 0))
      {
        v100 = *(*(v84 + 56) + 8 * v98);

        v101 = sub_1C4473DA8();
        v102(v101);
      }

      else
      {
        v103 = sub_1C4473DA8();
        v104(v103);

        v100 = 0x3FE999999999999ALL;
      }

      v157 = v83;
      v105 = *(v83 + 16);
      if (v105 >= *(v83 + 24) >> 1)
      {
        sub_1C459D100();
        v83 = v157;
      }

      ++v82;
      *(v83 + 16) = v105 + 1;
      *(v83 + 8 * v105 + 32) = v100;
      v85 += 2;
      if (v153 == v82)
      {

        v9 = v138;
        goto LABEL_21;
      }
    }

    v84 = v151;
    v86 = v148;
LABEL_8:
    v94 = type metadata accessor for SourceIdPrefix();
    sub_1C440BAA8(v1, 1, 1, v94);
    goto LABEL_9;
  }

  v83 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v106 = *(v83 + 16);
  v107 = v146;
  v108 = v145;
  if (v106)
  {
    v109 = (v83 + 32);
    v110 = 0.0;
    do
    {
      v111 = *v109++;
      v110 = v110 + v111 - v110 * v111;
      --v106;
    }

    while (v106);
  }

  else
  {
    v110 = 0.0;
  }

  if (v110 != *(v146 + v145[10]))
  {
    goto LABEL_29;
  }

  v113 = *v139;
  v112 = v139[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v114 = objc_autoreleasePoolPush();
  v160 = v113;
  v161 = v112;
  sub_1C4464BB4();
  v158 = v115;
  v159 = v116;
  v117 = sub_1C4F01FC8();
  objc_autoreleasePoolPop(v114);
  v160 = v141;
  v161 = v140;
  MEMORY[0x1EEE9AC00](v118);
  *(&v137 - 2) = &v160;
  LOBYTE(v114) = sub_1C44CE068(v142, (&v137 - 4), v117);

  if (v114)
  {
    v119 = *(v107 + v108[12]);
  }

  else
  {
LABEL_29:
    sub_1C4EF9AE8();
    v119 = v120;
  }

  v121 = sub_1C4EFF0C8();
  sub_1C43FCE50(v121);
  (*(v122 + 16))(v9, v107);
  v123 = v108[5];
  v124 = sub_1C4EFEEF8();
  sub_1C43FBCE0(v124);
  v126 = *(v125 + 16);
  v126(v9 + v123, v107 + v123, v124);
  v127 = v108[6];
  v128 = sub_1C4EFF8A8();
  sub_1C43FCE50(v128);
  (*(v129 + 16))(v9 + v127, v107 + v127);
  v126(v9 + v108[7], v107 + v108[7], v124);
  v130 = v108[8];
  v132 = *(v107 + v130);
  v131 = *(v107 + v130 + 8);
  v133 = v162;
  v134 = (v9 + v130);
  *v134 = v132;
  v134[1] = v131;
  *(v9 + v108[9]) = v133;
  *(v9 + v108[10]) = v110;
  v135 = (v9 + v108[11]);
  v136 = v143;
  *v135 = v144;
  v135[1] = v136;
  *(v9 + v108[12]) = v119;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44086C4();
}

uint64_t sub_1C4B57B5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C456902C(&unk_1EC0BC8E0, &qword_1C4F29AC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for EventTriple(0);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v35 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v30 - v14;
  v15 = type metadata accessor for TranslatedEntityTriple(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = *(a1 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  while (v21 != v20)
  {
    sub_1C4471BAC(a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v20, v19);
    sub_1C44EC3C8(a2, type metadata accessor for EventTriple);
    sub_1C440BAA8(v9, 0, 1, v10);
    sub_1C44BCC4C(v19, type metadata accessor for TranslatedEntityTriple);
    if (sub_1C44157D4(v9, 1, v10) == 1)
    {
      sub_1C4420C3C(v9, &unk_1EC0BC8E0, &qword_1C4F29AC0);
      ++v20;
    }

    else
    {
      v31 = type metadata accessor for EventTriple;
      v32 = v3;
      v22 = v33;
      sub_1C44856C8(v9, v33);
      sub_1C44856C8(v22, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458BAC8(0, *(v36 + 16) + 1, 1, v36);
        v36 = v27;
      }

      v24 = *(v36 + 16);
      v23 = *(v36 + 24);
      v25 = (v24 + 1);
      if (v24 >= v23 >> 1)
      {
        v31 = (v24 + 1);
        sub_1C458BAC8(v23 > 1, v24 + 1, 1, v36);
        v25 = v31;
        v36 = v28;
      }

      ++v20;
      v26 = v36;
      *(v36 + 16) = v25;
      sub_1C44856C8(v35, v26 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v24);
      v3 = v32;
    }
  }

  return v36;
}

uint64_t sub_1C4B57ED0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C456902C(&unk_1EC0BC900, &unk_1C4F142D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for GraphTriple(0);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v35 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v30 - v14;
  v15 = type metadata accessor for TranslatedEntityTriple(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = *(a1 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  while (v21 != v20)
  {
    sub_1C4471BAC(a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v20, v19);
    sub_1C44EC3C8(a2, type metadata accessor for GraphTriple);
    sub_1C440BAA8(v9, 0, 1, v10);
    sub_1C44BCC4C(v19, type metadata accessor for TranslatedEntityTriple);
    if (sub_1C44157D4(v9, 1, v10) == 1)
    {
      sub_1C4420C3C(v9, &unk_1EC0BC900, &unk_1C4F142D0);
      ++v20;
    }

    else
    {
      v31 = type metadata accessor for GraphTriple;
      v32 = v3;
      v22 = v33;
      sub_1C44856C8(v9, v33);
      sub_1C44856C8(v22, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C44F1730(0, *(v36 + 16) + 1, 1, v36);
        v36 = v27;
      }

      v24 = *(v36 + 16);
      v23 = *(v36 + 24);
      v25 = (v24 + 1);
      if (v24 >= v23 >> 1)
      {
        v31 = (v24 + 1);
        sub_1C44F1730(v23 > 1, v24 + 1, 1, v36);
        v25 = v31;
        v36 = v28;
      }

      ++v20;
      v26 = v36;
      *(v36 + 16) = v25;
      sub_1C44856C8(v35, v26 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v24);
      v3 = v32;
    }
  }

  return v36;
}

uint64_t sub_1C4B58244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C456902C(&qword_1EC0BDFE8, &qword_1C4F54070);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for ConstructionEventTriple(0);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v35 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v30 - v14;
  v15 = type metadata accessor for TranslatedEntityTriple(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = *(a1 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  while (v21 != v20)
  {
    sub_1C4471BAC(a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v20, v19);
    sub_1C44EC3C8(a2, type metadata accessor for ConstructionEventTriple);
    sub_1C440BAA8(v9, 0, 1, v10);
    sub_1C44BCC4C(v19, type metadata accessor for TranslatedEntityTriple);
    if (sub_1C44157D4(v9, 1, v10) == 1)
    {
      sub_1C4420C3C(v9, &qword_1EC0BDFE8, &qword_1C4F54070);
      ++v20;
    }

    else
    {
      v31 = type metadata accessor for ConstructionEventTriple;
      v32 = v3;
      v22 = v33;
      sub_1C44856C8(v9, v33);
      sub_1C44856C8(v22, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458DA98(0, *(v36 + 16) + 1, 1, v36);
        v36 = v27;
      }

      v24 = *(v36 + 16);
      v23 = *(v36 + 24);
      v25 = (v24 + 1);
      if (v24 >= v23 >> 1)
      {
        v31 = (v24 + 1);
        sub_1C458DA98(v23 > 1, v24 + 1, 1, v36);
        v25 = v31;
        v36 = v28;
      }

      ++v20;
      v26 = v36;
      *(v36 + 16) = v25;
      sub_1C44856C8(v35, v26 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v24);
      v3 = v32;
    }
  }

  return v36;
}

uint64_t sub_1C4B58678(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = sub_1C4F02828();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a2(0);
        v12 = sub_1C4F01728();
        *(v12 + 16) = v11;
      }

      v13 = (a2)(0);
      sub_1C43FBD18(v13);
      v15 = *(v14 + 80);
      sub_1C43FC354();
      v17[0] = v12 + v16;
      v17[1] = v11;
      a3(v17, v18, a1, v10);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

uint64_t sub_1C4B587CC(uint64_t a1)
{
  result = sub_1C44B95C0(&qword_1EDDF4650, type metadata accessor for StandardEntityFusion);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B58824(uint64_t a1)
{
  result = sub_1C44B95C0(&qword_1EDDF4660, type metadata accessor for StandardEntityFusion);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B588A4()
{
  result = type metadata accessor for PhaseStores();
  if (v1 <= 0x3F)
  {
    result = sub_1C4EFD548();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Source();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4B58D70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1C456902C(a3, a4);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return a2;
}

uint64_t sub_1C4B58F44()
{

  return sub_1C4EFBD48();
}

uint64_t sub_1C4B58F6C()
{
  result = v0;
  v3 = *(v1 - 232);
  return result;
}

void sub_1C4B58FD0()
{
  v1 = *(v0 - 176);
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);
}

uint64_t sub_1C4B59000()
{
  result = v1;
  v4 = *(v2 - 312);
  *(v2 - 304) = v0;
  return result;
}

uint64_t sub_1C4B59030()
{
  *(v4 - 184) = v0;
  *(v4 - 176) = v3;
  *(v4 - 208) = v1;
  *(v4 - 200) = v2;

  return sub_1C4EFB298();
}

uint64_t sub_1C4B5904C()
{
  v4 = *(v2 - 192);

  return sub_1C44856C8(v4, v1 + v0);
}

uint64_t sub_1C4B59064()
{
  v3 = *(v1 - 192);

  return sub_1C44856C8(v0, v3);
}

uint64_t sub_1C4B59094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 144) = a1;
  *(v2 - 136) = a2;
  return v2 - 168;
}

uint64_t sub_1C4B590DC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v247 = a4;
  v230 = sub_1C456902C(&qword_1EC0B8A60, &unk_1C4F0DE80);
  v9 = sub_1C43FCDF8(v230);
  v229 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  sub_1C43FCE30(v15);
  v16 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v17 = sub_1C43FBD18(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  sub_1C43FD2C8(v24);
  v234 = sub_1C4EFD548();
  v25 = sub_1C43FCDF8(v234);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD230();
  sub_1C43FCE30(v31);
  v32 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v33 = sub_1C43FBD18(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  sub_1C43FD2C8(v40);
  v239 = sub_1C4EFEEF8();
  v41 = sub_1C43FCDF8(v239);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FD230();
  v238 = v47;
  sub_1C43FBE44();
  v48 = sub_1C4EF97E8();
  v49 = sub_1C43FCDF8(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FD2D8();
  v237 = v54;
  v232 = a2;
  *&v243[0] = a2;
  *(&v243[0] + 1) = a3;
  v235 = a3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v55 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v55)
  {
    sub_1C4F02078();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v243, 0, sizeof(v243));
  }

  sub_1C4441540();
  v56 = v247;
  if (v57)
  {
    sub_1C4461BB8(0, &unk_1EDDF0380, 0x1E695DEC8);
    if (swift_dynamicCast())
    {
      v211 = v48;
      v58 = v237;
      v212 = v241;
      sub_1C4F01E58();
      v216 = (v43 + 4);
      v213 = (v43 + 2);
      v236 = MEMORY[0x1E69E7CC0];
      v214 = (v43 + 1);
      v59 = v233;
      v60 = &off_1E81F1000;
      while (1)
      {
        v61 = v58;
        sub_1C4EF97D8();
        if (!v245)
        {
LABEL_65:
          sub_1C43FFB20(&v237);
          v167(v58, v211);

          return v236;
        }

        sub_1C44482AC(&v244, v243);
        sub_1C4461BB8(0, &qword_1EC0C3548, 0x1E695DF20);
        if (!swift_dynamicCast())
        {

          if (qword_1EDDFD028 != -1)
          {
            goto LABEL_88;
          }

          goto LABEL_67;
        }

        v62 = v241;
        *&v241 = 0x6F697469646E6F63;
        *(&v241 + 1) = 0xE90000000000006ELL;
        v63 = sub_1C4F029C8();
        v64 = sub_1C4413F98(v63);
        sub_1C441D28C();
        swift_unknownObjectRelease();
        if (v58)
        {
          sub_1C4F02078();
          swift_unknownObjectRelease();
        }

        else
        {
          v241 = 0u;
          v242 = 0u;
        }

        sub_1C441DE78();
        if (!v65)
        {
          break;
        }

        sub_1C445FEB0();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_19;
        }

        v61 = *(&v240 + 1);
        if (!a5)
        {

          goto LABEL_19;
        }

        v43 = sub_1C4B5BC4C(v240, *(&v240 + 1), v56, a5);

        if (v43)
        {
          v66 = 1;
LABEL_21:
          strcpy(&v241, "targetProperty");
          HIBYTE(v241) = -18;
          v67 = sub_1C4F029C8();
          v68 = sub_1C4413F98(v67);
          sub_1C441D28C();
          swift_unknownObjectRelease();
          if (v61)
          {
            sub_1C4F02078();
            swift_unknownObjectRelease();
          }

          else
          {
            v241 = 0u;
            v242 = 0u;
          }

          sub_1C441DE78();
          if (!v69)
          {
            sub_1C4420C3C(v243, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_71:

            v59 = v211;
            v56 = v51;
            if (qword_1EDDFD028 != -1)
            {
              sub_1C4419274();
              swift_once();
            }

            v182 = sub_1C4F00978();
            sub_1C43FCEE8(v182, qword_1EDE2DE10);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v183 = sub_1C4F00968();
            sub_1C4F01CD8();

            if (sub_1C43FD09C())
            {
LABEL_78:
              sub_1C43FECF0();
              v186 = swift_slowAlloc();
              sub_1C43FEC60();
              v187 = swift_slowAlloc();
              sub_1C442A9F4(v187);
              *v186 = 136315138;
              *(v186 + 4) = sub_1C4415C88();
              sub_1C441253C();
              _os_log_impl(v188, v189, v190, v191, v186, 0xCu);
              sub_1C440962C(v43);
              v192 = sub_1C43FEDE8();
              MEMORY[0x1C6942830](v192);
              v193 = sub_1C43FEF7C();
              MEMORY[0x1C6942830](v193);
            }

LABEL_79:

            v179 = v212;
            sub_1C45CF650();
            sub_1C441C114();
            v194 = swift_allocError();
            sub_1C44060DC(v194, v195);
            swift_willThrow();

            goto LABEL_80;
          }

          sub_1C445FEB0();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_71;
          }

          v215 = v66;
          v56 = *(&v240 + 1);
          v243[0] = v240;
          *&v241 = 47;
          *(&v241 + 1) = 0xE100000000000000;
          sub_1C4415EA8();
          v43 = sub_1C4F01FC8();
          *&v243[0] = 0x6156746567726174;
          *(&v243[0] + 1) = 0xEB0000000065756CLL;
          v70 = [v62 v60[139]];
          swift_unknownObjectRelease();
          if (v70)
          {
            sub_1C4F02078();
            swift_unknownObjectRelease();
          }

          else
          {
            v241 = 0u;
            v242 = 0u;
          }

          v71 = v234;
          sub_1C441DE78();
          if (v72)
          {
            sub_1C445FEB0();
            swift_dynamicCast();
          }

          else
          {
            sub_1C4420C3C(v243, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          }

          if (!v43[2])
          {
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            sub_1C4419274();
            swift_once();
LABEL_67:
            v168 = sub_1C4F00978();
            sub_1C43FCEE8(v168, qword_1EDE2DE10);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v169 = sub_1C4F00968();
            sub_1C4F01CD8();

            sub_1C43FD09C();
            sub_1C440C75C();
            if (v170)
            {
              sub_1C43FECF0();
              v171 = swift_slowAlloc();
              sub_1C43FEC60();
              v172 = swift_slowAlloc();
              sub_1C442A9F4(v172);
              *v171 = 136315138;
              *(v171 + 4) = sub_1C4415C88();
              sub_1C441253C();
              _os_log_impl(v173, v174, v175, v176, v171, 0xCu);
              sub_1C440962C(v43);
              v177 = sub_1C43FEDE8();
              MEMORY[0x1C6942830](v177);
              v178 = sub_1C43FEF7C();
              MEMORY[0x1C6942830](v178);
            }

            v179 = v212;
            sub_1C45CF650();
            sub_1C441C114();
            v180 = swift_allocError();
            sub_1C44046C4(v180, v181);
            swift_willThrow();
LABEL_80:

            return (*(v56 + 8))(v237, v59);
          }

          v74 = v43[4];
          v73 = v43[5];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v75 = sub_1C4404C28();
          MEMORY[0x1C693D840](v75);
          v76 = v239;
          sub_1C440175C(v59, 1, v239);
          if (v77)
          {

            sub_1C4420C3C(v59, &qword_1EC0B9A08, &unk_1C4F107B0);
            if (qword_1EDDFD028 != -1)
            {
              sub_1C4419274();
              swift_once();
            }

            v184 = sub_1C4F00978();
            sub_1C43FCEE8(v184, qword_1EDE2DE10);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v183 = sub_1C4F00968();
            sub_1C4F01CD8();

            sub_1C43FD09C();
            sub_1C440C75C();
            if (v185)
            {
              goto LABEL_78;
            }

            goto LABEL_79;
          }

          v78 = *v216;
          (*v216)(v238, v59, v76);
          v79 = v43[2];
          if (v79 == 2)
          {
            v108 = v43[6];
            v107 = v43[7];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C445140C(&v245);
            sub_1C4404C28();
            sub_1C4EFD2E8();
            sub_1C440175C(v78, 1, v71);
            if (v77)
            {
              sub_1C4420C3C(v78, &qword_1EC0B8568, &unk_1C4F319B0);
              sub_1C44185A0();
              sub_1C4F02248();
              sub_1C4458568();
              MEMORY[0x1C6940380](v43, MEMORY[0x1E69E6158]);
              sub_1C4440AAC();
              v209 = sub_1C4402CD0();
              MEMORY[0x1C6940010](v209);

              sub_1C4435CD4();
              goto LABEL_92;
            }

            sub_1C4402C08(&v236);
            v79 = v227;
            v109 = sub_1C43FBC98();
            v110(v109);
            sub_1C4402C08(&v235);
            v111 = sub_1C43FD024();
            v112(v111);
            sub_1C43FBD94();
            sub_1C440BAA8(v113, v114, v115, v71);
            sub_1C43FCF64();
            v116 = v239;
            sub_1C440BAA8(v117, v118, v119, v239);
            sub_1C4422BB4();
            v120 = v228;
            v43 = (v228 + v121);
            sub_1C4402C08(&v240);
            v122(v120, v238, v116);
            sub_1C44CDA30(v223, v120 + v79, &qword_1EC0B8568, &unk_1C4F319B0);
            sub_1C44CDA30(v222, v78 + v120, &qword_1EC0B9A08, &unk_1C4F107B0);
            sub_1C440BF8C();
            *v43 = v124;
            v43[1] = v123;
            v103 = v236;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v146 = *(v103 + 16);
              sub_1C43FCEC0();
              sub_1C458AE00();
              v103 = v147;
            }

            v56 = v247;
            v60 = &off_1E81F1000;
            sub_1C4418BF0();
            v59 = v233;
            if (v104)
            {
              sub_1C443F384();
              sub_1C458AE00();
              v236 = v148;
            }

            sub_1C4402C08(&v234);
            v125(v227, v234);
            sub_1C4402C08(&v240 + 8);
            v126(v238, v239);
            v127 = &v248;
            goto LABEL_56;
          }

          if (v79 != 3)
          {

            if (v79 != 1)
            {

              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v196 = sub_1C4F00978();
              sub_1C43FCEE8(v196, qword_1EDE2DE10);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v197 = sub_1C4F00968();
              v198 = sub_1C4F01CD8();

              os_log_type_enabled(v197, v198);
              sub_1C440C75C();
              if (v199)
              {
                sub_1C43FECF0();
                v200 = swift_slowAlloc();
                sub_1C43FEC60();
                v201 = swift_slowAlloc();
                sub_1C442A9F4(v201);
                *v200 = 136315138;
                *(v200 + 4) = sub_1C4415C88();
                _os_log_impl(&dword_1C43F8000, v197, v198, "Mapping error no predicates for %s", v200, 0xCu);
                sub_1C440962C(v43);
                v202 = sub_1C43FEDE8();
                MEMORY[0x1C6942830](v202);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              v203 = v237;
              sub_1C45CF650();
              sub_1C441C114();
              v204 = swift_allocError();
              sub_1C44046C4(v204, v205);
              swift_willThrow();

              sub_1C4402C08(&v240 + 8);
              v206(v238, v239);
              return (*(v56 + 8))(v203, v59);
            }

            sub_1C43FCF64();
            sub_1C440BAA8(v128, v129, v130, v71);
            sub_1C43FCF64();
            v131 = v239;
            sub_1C440BAA8(v132, v133, v134, v239);
            sub_1C4422BB4();
            v135 = v224;
            v43 = (v224 + v136);
            sub_1C4402C08(&v240);
            v137(v135, v238, v131);
            sub_1C44CDA30(v218, v135 + 1, &qword_1EC0B8568, &unk_1C4F319B0);
            sub_1C44CDA30(v217, v78 + v135, &qword_1EC0B9A08, &unk_1C4F107B0);
            sub_1C440BF8C();
            *v43 = v139;
            v43[1] = v138;
            v103 = v236;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v152 = *(v103 + 16);
              sub_1C43FCEC0();
              sub_1C458AE00();
              v103 = v153;
            }

            v56 = v247;
            v60 = &off_1E81F1000;
            sub_1C4418BF0();
            v59 = v233;
            if (v104)
            {
              sub_1C443F384();
              sub_1C458AE00();
              v236 = v154;
            }

            sub_1C4402C08(&v240 + 8);
            v140(v238, v239);
            v127 = &v246;
LABEL_56:
            v141 = *(v127 - 32);
            goto LABEL_57;
          }

          v81 = v43[6];
          v80 = v43[7];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4404C28();
          v83 = v82;
          sub_1C4EFD2E8();
          sub_1C440175C(v83, 1, v71);
          if (v77)
          {
            sub_1C4420C3C(v83, &qword_1EC0B8568, &unk_1C4F319B0);
            sub_1C44185A0();
            sub_1C4F02248();
            sub_1C4458568();
            MEMORY[0x1C6940380](v43, MEMORY[0x1E69E6158]);
            sub_1C4440AAC();
            v208 = sub_1C4402CD0();
            MEMORY[0x1C6940010](v208);

            sub_1C4435CD4();
LABEL_92:
            result = sub_1C4F024A8();
            __break(1u);
            return result;
          }

          sub_1C4402C08(&v236);
          v84(v231, v83, v71);
          if (v43[2] < 3)
          {
            goto LABEL_87;
          }

          v86 = v43[8];
          v85 = v43[9];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v87 = sub_1C4404C28();
          MEMORY[0x1C693D840](v87);
          v79 = v239;
          sub_1C440175C(v219, 1, v239);
          if (v77)
          {
            sub_1C4420C3C(v219, &qword_1EC0B9A08, &unk_1C4F107B0);
            sub_1C44185A0();
            sub_1C4F02248();
            MEMORY[0x1C6940010](0xD000000000000047, 0x80000001C4FB2B50);
            MEMORY[0x1C6940380](v43, MEMORY[0x1E69E6158]);
            sub_1C4440AAC();
            v207 = sub_1C4402CD0();
            MEMORY[0x1C6940010](v207);

            sub_1C4435CD4();
            goto LABEL_92;
          }

          v88 = v225;
          v78(v225, v219, v79);
          sub_1C4402C08(&v235);
          v89 = v234;
          v90(v221, v231, v234);
          sub_1C43FBD94();
          sub_1C440BAA8(v91, v92, v93, v89);
          v94 = *v213;
          (*v213)(v220, v88, v79);
          sub_1C43FBD94();
          sub_1C440BAA8(v95, v96, v97, v79);
          v98 = v230[12];
          v210 = v230[16];
          v99 = v226;
          v100 = (v226 + v230[20]);
          v94(v226, v238, v79);
          sub_1C44CDA30(v221, v99 + v98, &qword_1EC0B8568, &unk_1C4F319B0);
          sub_1C44CDA30(v220, v99 + v210, &qword_1EC0B9A08, &unk_1C4F107B0);
          sub_1C440BF8C();
          *v100 = v102;
          v100[1] = v101;
          v103 = v236;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v149 = *(v103 + 16);
            sub_1C43FCEC0();
            sub_1C458AE00();
            v103 = v150;
          }

          v56 = v247;
          sub_1C4418BF0();
          v59 = v233;
          if (v104)
          {
            sub_1C443F384();
            sub_1C458AE00();
            v236 = v151;
          }

          v43 = *v214;
          v105 = v239;
          (*v214)(v225, v239);
          sub_1C4402C08(&v234);
          v106(v231, v234);
          (v43)(v238, v105);
          v60 = &off_1E81F1000;
LABEL_57:
          *(v236 + 16) = v103;
          sub_1C43FBF6C();
          sub_1C44CDA30(v145, v143 + v142 + *(v144 + 72) * v79, &qword_1EC0B8A60, &unk_1C4F0DE80);
          v58 = v237;
          if (v215)
          {
            goto LABEL_65;
          }
        }

        else
        {
        }
      }

      sub_1C4420C3C(v243, &qword_1EC0BCD10, &qword_1C4F0C8C0);
LABEL_19:
      v66 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1C4420C3C(&v244, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  v155 = v235;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v156 = sub_1C4F00978();
  sub_1C442B738(v156, qword_1EDE2DE10);
  sub_1C441D28C();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v157 = sub_1C4F00968();
  sub_1C4F01CD8();

  if (sub_1C43FD09C())
  {
    sub_1C43FECF0();
    swift_slowAlloc();
    sub_1C443019C();
    v158 = swift_slowAlloc();
    sub_1C442A4E4(v158);
    *a3 = 136315138;
    *(a3 + 4) = sub_1C441D828(v232, v155, &v244);
    sub_1C441253C();
    _os_log_impl(v159, v160, v161, v162, a3, 0xCu);
    sub_1C440962C(v27);
    v163 = sub_1C43FEF7C();
    MEMORY[0x1C6942830](v163);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  sub_1C45CF650();
  sub_1C441C114();
  v164 = swift_allocError();
  sub_1C44046C4(v164, v165);
  return swift_willThrow();
}