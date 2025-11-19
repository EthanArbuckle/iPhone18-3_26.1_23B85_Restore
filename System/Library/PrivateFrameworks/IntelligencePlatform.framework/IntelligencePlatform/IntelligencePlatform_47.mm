uint64_t sub_1ABDF2020(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v11 = *(v10 + 16);
  v13 = *a2;
  return a10(a1, &v13, a3, a4 & 1, a5, a6, a7, *(a8 + 8), a9);
}

uint64_t sub_1ABDF20E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = sub_1ABA8C3AC();
  sub_1ABA8F8D8();
  v15 = sub_1ABDF2A2C(v13, v14);
  return a6(v12, a1, a2 & 1, a3, a4, v12, v15, a5);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:block:)()
{
  sub_1ABA7D018();
  return CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7D018();
  return CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7D018();
  return CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7D018();
  return CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

{
  sub_1ABA7D018();
  return CustomLifeEventContext.enumerateActivityEvents<>(overlapping:order:using:)(v0, v1, v2, v3, v4);
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<A>(of:overlapping:order:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1ABA7F7A0(a1, a2, a3, a4, a5, a6, a7);
  return sub_1ABC27234();
}

{
  sub_1ABA7F7A0(a1, a2, a3, a4, a5, a6, a7);
  return sub_1ABC27268();
}

{
  sub_1ABA7F7A0(a1, a2, a3, a4, a5, a6, a7);
  return sub_1ABC2729C();
}

{
  sub_1ABA7F7A0(a1, a2, a3, a4, a5, a6, a7);
  return sub_1ABC272D0();
}

{
  sub_1ABA7F7A0(a1, a2, a3, a4, a5, a6, a7);
  return sub_1ABC27304();
}

uint64_t CustomLifeEventContext.enumerateActivityEvents<A>(of:overlapping:order:block:)()
{
  return sub_1ABDF263C();
}

{
  return sub_1ABDF263C();
}

{
  return sub_1ABDF263C();
}

{
  return sub_1ABDF263C();
}

{
  return sub_1ABDF263C();
}

uint64_t sub_1ABDF24E0(uint64_t a1, BOOL *a2, uint64_t (*a3)(char *))
{
  v7 = sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  sub_1ABC47DD4(a1, v13 - v9);
  swift_storeEnumTagMultiPayload();
  v11 = a3(v10);
  result = sub_1ABC47E38(v10);
  if (!v3)
  {
    *a2 = (v11 & 1) == 0;
  }

  return result;
}

uint64_t sub_1ABDF263C()
{
  v1 = *v0;
  sub_1ABA90AB8();
  v11 = *(v2 + 80);
  v12 = v3;
  sub_1ABA90AB8();
  v13 = *(v4 + 88);
  v14 = v5;
  v15 = v7;
  v16 = v6;
  v17 = v8;
  return v9();
}

uint64_t sub_1ABDF26A4(uint64_t a1, BOOL *a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v11 = sub_1ABF252B4();
  sub_1ABA7BD7C();
  v13 = v12;
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v23 - v18;
  (*(*(a6 - 8) + 16))(v23 - v18, a1, a6, v17);
  swift_storeEnumTagMultiPayload();
  v20 = a3(v19);
  if (v6)
  {
    return (*(v13 + 8))(v19, v11);
  }

  v22 = v20;
  result = (*(v13 + 8))(v19, v11);
  *a2 = (v22 & 1) == 0;
  return result;
}

void CustomLifeEventContext.latestActivityEvent<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(a3 + 8);
  sub_1ABC274B0();
}

void CustomLifeEventContext.earliestActivityEvent<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(a3 + 8);
  sub_1ABC274DC();
}

uint64_t sub_1ABDF2880(uint64_t a1, BOOL *a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v6 = *(v2 + 48);
  return sub_1ABDF26A4(a1, a2, *(v2 + 56), *(v2 + 64), *(v2 + 16), *(v2 + 24));
}

uint64_t sub_1ABDF2930(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABDF2A2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LifeEventEntry.startDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1ABF21EB4();
  v6 = sub_1ABA7BBB0(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t LifeEventEntry.endDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1ABF21EB4();
  v6 = sub_1ABA7BBB0(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

void LifeEventEntry.entityClass.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  EntityClass.init(intValue:)(*(v2 + 7), &v13);
  v5 = v14;
  if (v14)
  {
    v6 = v17;
    v8 = v15;
    v7 = v16;
    *a2 = v13;
    *(a2 + 8) = v5;
    *(a2 + 16) = v8;
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
  }

  else
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v9 = sub_1ABF237F4();
    sub_1ABA7AA24(v9, qword_1ED871B40);
    v10 = sub_1ABF237D4();
    v11 = sub_1ABF24674();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1ABA78000, v10, v11, "LifeEventEntry: entityClass: id.untyped.entityClass is nil.", v12, 2u);
      MEMORY[0x1AC5AB8B0](v12, -1, -1);
    }

    static GraphObjectBase.entityClass.getter(*(a1 + 16), *(*(a1 + 24) + 8));
  }
}

uint64_t LifeEventEntry.cast<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, char *a4@<X8>)
{
  v24[0] = a4;
  v8 = sub_1ABF21EB4();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  v25 = *v4;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  type metadata accessor for TypedEntityIdentifier();
  v24[1] = a3;
  v21 = v24[2];
  result = TypedEntityIdentifier.cast<A>(as:)(a2, a3, &v26);
  if (!v21)
  {
    v25 = v26;
    v23 = *(v11 + 16);
    v23(v18, &v4[*(a1 + 36)], v8);
    v23(v15, &v4[*(a1 + 40)], v8);
    return sub_1ABDF2E40(&v25, v18, v15, v24[0]);
  }

  return result;
}

uint64_t sub_1ABDF2E40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for LifeEventEntry();
  v8 = *(v7 + 36);
  v9 = sub_1ABF21EB4();
  sub_1ABA7BBB0(v9);
  v13 = *(v10 + 32);
  v13(&a4[v8], a2, v9);
  v11 = &a4[*(v7 + 40)];

  return (v13)(v11, a3, v9);
}

uint64_t sub_1ABDF2F0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABDF2F60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t static LifeEventEntry.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v7 = *a2;
  v8 = v2;
  if (!static TypedEntityIdentifier.== infix(_:_:)(&v8, &v7))
  {
    return 0;
  }

  v3 = type metadata accessor for LifeEventEntry();
  v4 = *(v3 + 36);
  if ((sub_1ABF21E54() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v3 + 40);

  return sub_1ABF21E54();
}

uint64_t LifeEventEntry.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v21 = a2;
  v22 = v3;
  type metadata accessor for LifeEventEntry.CodingKeys();
  sub_1ABA7DDA8();
  swift_getWitnessTable();
  v5 = sub_1ABF24FC4();
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  v14 = v23;
  sub_1ABF252E4();
  v28 = *v14;
  v27 = 0;
  type metadata accessor for TypedEntityIdentifier();
  swift_getWitnessTable();
  v15 = v24;
  sub_1ABF24F84();
  if (!v15)
  {
    v16 = v21;
    v17 = *(v21 + 36);
    v26 = 1;
    sub_1ABF21EB4();
    sub_1ABAE849C(&qword_1ED86B860);
    sub_1ABA7C254();
    v18 = *(v16 + 40);
    v25 = 2;
    sub_1ABA7C254();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t LifeEventEntry.init(from:)@<X0>(uint64_t *a1@<X0>, void (*a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v46 = sub_1ABF21EB4();
  v7 = sub_1ABA7BB64(v46);
  v43 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v39 - v13;
  type metadata accessor for LifeEventEntry.CodingKeys();
  sub_1ABA7DDA8();
  swift_getWitnessTable();
  v49 = sub_1ABF24EB4();
  sub_1ABA7BB64(v49);
  v44 = v14;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v47 = a2;
  v48 = a3;
  v20 = type metadata accessor for LifeEventEntry();
  sub_1ABA7BB64(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v39 - v26;
  v28 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  v50 = v19;
  v29 = v51;
  sub_1ABF252C4();
  if (v29)
  {
    return sub_1ABA84B54(a1);
  }

  v31 = v44;
  v30 = v45;
  v40 = v22;
  v32 = v27;
  v51 = v20;
  v33 = v46;
  type metadata accessor for TypedEntityIdentifier();
  v54 = 0;
  swift_getWitnessTable();
  sub_1ABF24E64();
  *v32 = v55;
  v53 = 1;
  sub_1ABAE849C(&qword_1ED870CD0);
  sub_1ABF24E64();
  v34 = *(v51 + 36);
  v47 = *(v43 + 32);
  v48 = v34;
  v47(&v32[v34], v30, v33);
  v52 = 2;
  v35 = v50;
  sub_1ABF24E64();
  (*(v31 + 8))(v35, v49);
  v36 = v51;
  v47(&v32[*(v51 + 40)], v42, v33);
  v37 = v40;
  (*(v40 + 16))(v41, v32, v36);
  sub_1ABA84B54(a1);
  return (*(v37 + 8))(v32, v36);
}

uint64_t sub_1ABDF36D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = *a1;
  v6 = *(a4 + 16);
  v5 = *(a4 + 24);
  return sub_1ABDF2E40(&v8, a2, a3, a5);
}

uint64_t sub_1ABDF373C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static LifeEventEntry.== infix(_:_:)(a1, a2);
}

uint64_t sub_1ABDF3748(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4DA0E0, &qword_1ABF64798);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10];
  v12 = *v1;
  v14 = v1[1];
  v13 = v1[2];
  v15 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABDF3FE8();
  sub_1ABF252E4();
  v18 = v12;
  v17[15] = 0;
  sub_1ABAE8BC8();
  sub_1ABF24F84();
  if (!v2)
  {
    v17[14] = 1;
    sub_1ABF24F54();
    v17[13] = 2;
    sub_1ABF24F54();
  }

  return (*(v6 + 8))(v11, v4);
}

uint64_t sub_1ABDF38EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DA0D8, &qword_1ABF64790);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABDF3FE8();
  sub_1ABF252C4();
  if (!v2)
  {
    v20[15] = 0;
    sub_1ABAE8B74();
    sub_1ABF24E64();
    v14 = v21;
    v20[14] = 1;
    sub_1ABF24E34();
    v17 = v16;
    v20[13] = 2;
    sub_1ABF24E34();
    v19 = v18;
    (*(v7 + 8))(v12, v5);
    *a2 = v14;
    a2[1] = v17;
    a2[2] = v19;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABDF3ACC(uint64_t a1)
{
  v2 = sub_1ABDF3FE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDF3B08(uint64_t a1)
{
  v2 = sub_1ABDF3FE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABDF3B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABDF3E8C();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

unint64_t sub_1ABDF3C30()
{
  result = qword_1EB4DA048;
  if (!qword_1EB4DA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA048);
  }

  return result;
}

uint64_t sub_1ABDF3C84(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABDF3CC4()
{
  result = qword_1EB4DA050[0];
  if (!qword_1EB4DA050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4DA050);
  }

  return result;
}

uint64_t sub_1ABDF3D18(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

unint64_t sub_1ABDF3DF0()
{
  result = qword_1EB4CFDB0;
  if (!qword_1EB4CFDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFDB0);
  }

  return result;
}

unint64_t sub_1ABDF3E44(void *a1)
{
  a1[1] = sub_1ABAEFBB0();
  a1[2] = sub_1ABAEFA70();
  a1[3] = sub_1ABDF3E8C();
  a1[4] = sub_1ABDF3EE0();
  result = sub_1ABDF3F34();
  a1[5] = result;
  return result;
}

unint64_t sub_1ABDF3E8C()
{
  result = qword_1EB4CFDA8;
  if (!qword_1EB4CFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFDA8);
  }

  return result;
}

unint64_t sub_1ABDF3EE0()
{
  result = qword_1EB4CFDC0;
  if (!qword_1EB4CFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFDC0);
  }

  return result;
}

unint64_t sub_1ABDF3F34()
{
  result = qword_1EB4CFDB8;
  if (!qword_1EB4CFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFDB8);
  }

  return result;
}

unint64_t sub_1ABDF3F88(uint64_t a1)
{
  result = sub_1ABDF3CC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABDF3FE8()
{
  result = qword_1EB4CF120[0];
  if (!qword_1EB4CF120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CF120);
  }

  return result;
}

_BYTE *sub_1ABDF403C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABDF411C()
{
  result = qword_1EB4DA0E8;
  if (!qword_1EB4DA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA0E8);
  }

  return result;
}

unint64_t sub_1ABDF4174()
{
  result = qword_1EB4CF110;
  if (!qword_1EB4CF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF110);
  }

  return result;
}

unint64_t sub_1ABDF41CC()
{
  result = qword_1EB4CF118;
  if (!qword_1EB4CF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF118);
  }

  return result;
}

uint64_t sub_1ABDF427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v4 + 16);
  v7 = *(a3 + 8);
  v8 = type metadata accessor for LifeEventEntry();
  sub_1ABA8F8F0();
  WitnessTable = swift_getWitnessTable();
  return a4(v8, v8, WitnessTable);
}

uint64_t LifeEventEntryView.enumerateActivityEventEntries<A>(of:overlapping:order:using:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_1ABDF4DA0(a1, a2, a3, a4, a5, a6, a7, sub_1ABC29B28);
}

{
  return sub_1ABDF4DA0(a1, a2, a3, a4, a5, a6, a7, sub_1ABC29AE4);
}

{
  return sub_1ABDF4DA0(a1, a2, a3, a4, a5, a6, a7, sub_1ABC29BD4);
}

{
  return sub_1ABDF4DA0(a1, a2, a3, a4, a5, a6, a7, sub_1ABC29C30);
}

{
  return sub_1ABDF4DA0(a1, a2, a3, a4, a5, a6, a7, sub_1ABC29CBC);
}

uint64_t LifeEventEntryView.enumerateActivityEventEntries<A>(of:whose:in:order:using:)(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_1ABDF4B90(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC296B0);
}

{
  return sub_1ABDF4B90(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC29500);
}

{
  return sub_1ABDF4B90(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC29860);
}

{
  return sub_1ABDF4B90(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC29894);
}

{
  return sub_1ABDF4B90(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC29AB0);
}

uint64_t LifeEventEntryView.enumerateActivityEventEntries<A>(of:order:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1ABA8EC40(a1, a2, a3, a4, a5, a6);
  sub_1ABA8F8F0();
  swift_getWitnessTable();
  return sub_1ABC29498();
}

uint64_t ViewService.lifeEventEntryView()()
{
  type metadata accessor for LifeEventEntryView();
  v1 = swift_allocObject();
  LifeEventEntryView.init(viewService:)(v0);
  return v1;
}

uint64_t LifeEventEntryView.__allocating_init(viewService:)()
{
  sub_1ABA7E2D8();
  v1 = swift_allocObject();
  LifeEventEntryView.init(viewService:)(v0);
  return v1;
}

uint64_t *LifeEventEntryView.init(viewService:)(void *a1)
{
  v4 = *v1;
  v5 = sub_1ABAE933C(0x6E6576456566696CLL, 0xEC00000070614D74);

  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = v5;
  }

  return v1;
}

uint64_t LifeEventEntryView.activityEventEntries<A>(of:order:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(a4 + 8);
  type metadata accessor for LifeEventEntry();
  sub_1ABA8F8F0();
  swift_getWitnessTable();
  return sub_1ABC28D04();
}

uint64_t LifeEventEntryView.activityEventEntries(whose:in:order:)(unsigned __int8 *a1)
{
  sub_1ABA7DDC0(a1);
  return sub_1ABAE962C();
}

{
  sub_1ABA7DDC0(a1);
  return sub_1ABAE97D4();
}

{
  sub_1ABA7DDC0(a1);
  return sub_1ABAE9994();
}

{
  sub_1ABA7DDC0(a1);
  return sub_1ABAE9B88();
}

{
  sub_1ABA7DDC0(a1);
  return sub_1ABAE9BF8();
}

uint64_t LifeEventEntryView.activityEventEntries<A>(of:whose:in:order:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABDF4754(a1, a2, a3, a4, a5, a6, sub_1ABC28D64);
}

{
  return sub_1ABDF4754(a1, a2, a3, a4, a5, a6, sub_1ABC28EF8);
}

{
  return sub_1ABDF4754(a1, a2, a3, a4, a5, a6, sub_1ABC2908C);
}

{
  return sub_1ABDF4754(a1, a2, a3, a4, a5, a6, sub_1ABC290A8);
}

{
  return sub_1ABDF4754(a1, a2, a3, a4, a5, a6, sub_1ABC29280);
}

uint64_t sub_1ABDF4754(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t))
{
  v8 = a4;
  v10 = *a2;
  v11 = sub_1ABA8EC40(a1, a2, a3, a4, a5, a6);
  v14 = v10;
  sub_1ABA8F8F0();
  WitnessTable = swift_getWitnessTable();
  return a7(v11, &v14, a3, v8 & 1, v11, WitnessTable);
}

uint64_t LifeEventEntryView.activityEventEntries(overlapping:order:)()
{
  sub_1ABA7F7B0();
  return sub_1ABAE9C68();
}

{
  sub_1ABA7F7B0();
  return sub_1ABAE9D58();
}

{
  sub_1ABA7F7B0();
  return sub_1ABAE9DC8();
}

{
  sub_1ABA7F7B0();
  return sub_1ABAE9E38();
}

{
  sub_1ABA7F7B0();
  return sub_1ABAE9EA8();
}

uint64_t LifeEventEntryView.activityEventEntries<A>(of:overlapping:order:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  return sub_1ABDF4968(a1, a2, a3, a4, a5, sub_1ABC2929C);
}

{
  return sub_1ABDF4968(a1, a2, a3, a4, a5, sub_1ABC292C8);
}

{
  return sub_1ABDF4968(a1, a2, a3, a4, a5, sub_1ABC29374);
}

{
  return sub_1ABDF4968(a1, a2, a3, a4, a5, sub_1ABC293E8);
}

{
  return sub_1ABDF4968(a1, a2, a3, a4, a5, sub_1ABC2947C);
}

uint64_t sub_1ABDF4968(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  v10 = *(v6 + 16);
  v11 = *(a5 + 8);
  v12 = type metadata accessor for LifeEventEntry();
  sub_1ABA8F8F0();
  WitnessTable = swift_getWitnessTable();
  return a6(v12, a2, a3 & 1, v12, WitnessTable);
}

uint64_t LifeEventEntryView.enumerateActivityEventEntries(whose:in:order:using:)(unsigned __int8 *a1)
{
  v1 = sub_1ABA7DDC0(a1);
  return sub_1ABAEA218(v1);
}

{
  v1 = sub_1ABA7DDC0(a1);
  return sub_1ABAEA510(v1, v2, v3, v4, v5);
}

{
  sub_1ABA7DDC0(a1);
  return sub_1ABAEA6B8();
}

{
  sub_1ABA7DDC0(a1);
  return sub_1ABAEA8DC();
}

{
  sub_1ABA7DDC0(a1);
  return sub_1ABAEA94C();
}

uint64_t sub_1ABDF4B90(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *a2;
  v15 = *(v9 + 16);
  v16 = *(a8 + 8);
  v17 = type metadata accessor for LifeEventEntry();
  v20 = v14;
  sub_1ABA8F8F0();
  WitnessTable = swift_getWitnessTable();
  return a9(v17, &v20, a3, a4 & 1, a5, a6, v17, WitnessTable);
}

uint64_t LifeEventEntryView.enumerateActivityEventEntries(overlapping:order:using:)()
{
  sub_1ABA7F7B0();
  return sub_1ABAEA9BC();
}

{
  sub_1ABA7F7B0();
  return sub_1ABAEAAFC();
}

{
  sub_1ABA7F7B0();
  return sub_1ABAEAB6C();
}

{
  sub_1ABA7F7B0();
  return sub_1ABAEABDC();
}

{
  sub_1ABA7F7B0();
  return sub_1ABAEAC4C();
}

uint64_t sub_1ABDF4DA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *(v8 + 16);
  v15 = *(a7 + 8);
  v16 = type metadata accessor for LifeEventEntry();
  sub_1ABA8F8F0();
  WitnessTable = swift_getWitnessTable();
  return a8(v16, a2, a3 & 1, a4, a5, v16, WitnessTable);
}

uint64_t LifeEventEntryView.activityEventIds(order:)(char a1)
{
  sub_1ABA7D88C(a1);
  result = sub_1ABAEE908();
  if (!v1)
  {
    sub_1ABAEF5A4(result);
    sub_1ABA7E2D8();

    return v2;
  }

  return result;
}

uint64_t LifeEventEntryView.activityEventIds<A>(of:order:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(a4 + 8);
  return sub_1ABC29D28();
}

uint64_t LifeEventEntryView.activityEventIds(whose:in:order:)(unsigned __int8 *a1)
{
  return sub_1ABDF508C(a1);
}

{
  return sub_1ABDF508C(a1);
}

{
  return sub_1ABDF508C(a1);
}

{
  return sub_1ABDF508C(a1);
}

{
  return sub_1ABDF508C(a1);
}

uint64_t LifeEventEntryView.activityEventIds<A>(of:whose:in:order:)(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABDF5108(a1, a2, a3, a4, a5, a6, sub_1ABC29D9C);
}

{
  return sub_1ABDF5108(a1, a2, a3, a4, a5, a6, sub_1ABC29DC8);
}

{
  return sub_1ABDF5108(a1, a2, a3, a4, a5, a6, sub_1ABC29E44);
}

{
  return sub_1ABDF5108(a1, a2, a3, a4, a5, a6, sub_1ABC29E60);
}

{
  return sub_1ABDF5108(a1, a2, a3, a4, a5, a6, sub_1ABC29E7C);
}

uint64_t sub_1ABDF508C(unsigned __int8 *a1)
{
  v3 = sub_1ABA7DDC0(a1);
  result = v4(v3);
  if (!v1)
  {
    sub_1ABAEF5A4(result);
    sub_1ABA7E2D8();

    return v2;
  }

  return result;
}

uint64_t sub_1ABDF5108(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, char *, uint64_t, void, uint64_t, void))
{
  v8 = *(v7 + 16);
  v10 = *a2;
  return a7(a1, &v10, a3, a4 & 1, a5, *(a6 + 8));
}

uint64_t LifeEventEntryView.activityEventIds(overlapping:order:)()
{
  return sub_1ABDF52B0();
}

{
  return sub_1ABDF52B0();
}

{
  return sub_1ABDF52B0();
}

{
  return sub_1ABDF52B0();
}

{
  return sub_1ABDF52B0();
}

uint64_t LifeEventEntryView.activityEventIds<A>(of:overlapping:order:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ABA7C5FC(a1, a2, a3, a4, a5);
  return sub_1ABC29EE8();
}

{
  sub_1ABA7C5FC(a1, a2, a3, a4, a5);
  return sub_1ABC29F14();
}

{
  sub_1ABA7C5FC(a1, a2, a3, a4, a5);
  return sub_1ABC29F98(v5, v6);
}

{
  sub_1ABA7C5FC(a1, a2, a3, a4, a5);
  return sub_1ABC29FE4();
}

{
  sub_1ABA7C5FC(a1, a2, a3, a4, a5);
  return sub_1ABC2A000();
}

uint64_t sub_1ABDF52B0()
{
  sub_1ABA7F7B0();
  result = v2();
  if (!v0)
  {
    sub_1ABAEF5A4(result);
    sub_1ABA7E2D8();

    return v1;
  }

  return result;
}

uint64_t LifeEventEntryView.enumerateActivityEventIds<A>(of:order:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v8 = *(a6 + 8);
  return sub_1ABC2A06C();
}

uint64_t LifeEventEntryView.enumerateActivityEventIds(whose:in:order:using:)(unsigned __int8 *a1)
{
  sub_1ABA7DDC0(a1);
  return sub_1ABAEB11C();
}

{
  sub_1ABA7DDC0(a1);
  return sub_1ABAEB1AC();
}

{
  sub_1ABA7DDC0(a1);
  return sub_1ABAEB2A0();
}

{
  sub_1ABA7DDC0(a1);
  return sub_1ABAEB358();
}

{
  sub_1ABA7DDC0(a1);
  return sub_1ABAEB410();
}

uint64_t LifeEventEntryView.enumerateActivityEventIds<A>(of:whose:in:order:using:)(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_1ABDF552C(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2A108);
}

{
  return sub_1ABDF552C(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2A150);
}

{
  return sub_1ABDF552C(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2A234);
}

{
  return sub_1ABDF552C(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2A27C);
}

{
  return sub_1ABDF552C(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2A2C4);
}

uint64_t sub_1ABDF552C(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, char *, uint64_t, void, uint64_t, uint64_t, uint64_t, void))
{
  v10 = *(v9 + 16);
  v12 = *a2;
  return a9(a1, &v12, a3, a4 & 1, a5, a6, a7, *(a8 + 8));
}

uint64_t LifeEventEntryView.enumerateActivityEventIds(overlapping:order:using:)()
{
  sub_1ABA7F7B0();
  return sub_1ABAEB51C();
}

{
  sub_1ABA7F7B0();
  return sub_1ABAEB5D4();
}

{
  sub_1ABA7F7B0();
  return sub_1ABAEB68C();
}

{
  sub_1ABA7F7B0();
  return sub_1ABAEB744();
}

{
  sub_1ABA7F7B0();
  return sub_1ABAEB7FC();
}

uint64_t LifeEventEntryView.enumerateActivityEventIds<A>(of:overlapping:order:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1ABA7F7A0(a1, a2, a3, a4, a5, a6, a7);
  return sub_1ABC2A3A8();
}

{
  sub_1ABA7F7A0(a1, a2, a3, a4, a5, a6, a7);
  return sub_1ABC2A404();
}

{
  sub_1ABA7F7A0(a1, a2, a3, a4, a5, a6, a7);
  return sub_1ABC2A4FC();
}

{
  sub_1ABA7F7A0(a1, a2, a3, a4, a5, a6, a7);
  return sub_1ABC2A59C();
}

{
  sub_1ABA7F7A0(a1, a2, a3, a4, a5, a6, a7);
  return sub_1ABC2A5E4();
}

uint64_t LifeEventEntryView.latestActivityEventId<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(a3 + 8);
  return sub_1ABC2A6BC();
}

uint64_t LifeEventEntryView.earliestActivityEventId<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(a3 + 8);
  return sub_1ABC2A6DC();
}

uint64_t LifeEventEntryView.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t LifeEventEntryView.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABDF5830(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001ABF917C0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABDF58D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDF5830(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABDF58FC(uint64_t a1)
{
  v2 = sub_1ABDF5AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDF5938(uint64_t a1)
{
  v2 = sub_1ABDF5AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LifeEventsInferenceInterface.Input.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_1ABAD219C(&qword_1EB4DA0F0, &unk_1ABF64910);
  sub_1ABA7BB64(v25);
  v27 = v26;
  v29 = *(v28 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = *v20;
  v34 = v24[3];
  v35 = v24[4];
  sub_1ABA80908(v24);
  sub_1ABDF5AE8();

  sub_1ABA8177C();
  sub_1ABF252E4();
  a10 = v33;
  sub_1ABAD219C(&qword_1EB4D3E68, &qword_1ABF40BF8);
  sub_1ABB99B30(&qword_1EB4D3E70);
  sub_1ABF24F84();

  (*(v27 + 8))(v32, v25);
  sub_1ABA7BC90();
}

unint64_t sub_1ABDF5AE8()
{
  result = qword_1EB4DA0F8;
  if (!qword_1EB4DA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA0F8);
  }

  return result;
}

void LifeEventsInferenceInterface.Input.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v13 = v12;
  v15 = v14;
  v16 = sub_1ABAD219C(&qword_1EB4DA100, &qword_1ABF64920);
  sub_1ABA7BB64(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7ED98();
  v22 = v13[3];
  v23 = v13[4];
  sub_1ABA80908(v13);
  sub_1ABDF5AE8();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (!v10)
  {
    sub_1ABAD219C(&qword_1EB4D3E68, &qword_1ABF40BF8);
    sub_1ABB99B30(&qword_1EB4D3E80);
    sub_1ABF24E64();
    (*(v18 + 8))(v11, v16);
    *v15 = a10;
  }

  sub_1ABA84B54(v13);
  sub_1ABA7BC90();
}

uint64_t sub_1ABDF5CEC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABDF5D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDF5CEC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABDF5DB8(uint64_t a1)
{
  v2 = sub_1ABDF5F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDF5DF4(uint64_t a1)
{
  v2 = sub_1ABDF5F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LifeEventsInferenceInterface.Output.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4DA108, &qword_1ABF64928);
  sub_1ABA7BB64(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7ED98();
  v10 = *v1;
  v11 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABDF5F50();
  sub_1ABF252E4();
  sub_1ABF24F54();
  return (*(v6 + 8))(v2, v4);
}

unint64_t sub_1ABDF5F50()
{
  result = qword_1EB4DA110;
  if (!qword_1EB4DA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA110);
  }

  return result;
}

uint64_t LifeEventsInferenceInterface.Output.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = sub_1ABAD219C(&qword_1EB4DA118, &qword_1ABF64930);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BCE0();
  v12 = a1[3];
  v13 = a1[4];
  sub_1ABA80908(a1);
  sub_1ABDF5F50();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (!v2)
  {
    sub_1ABF24E34();
    v15 = v14;
    (*(v8 + 8))(v3, v6);
    *a2 = v15;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABDF6114(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4D64696C61766E69 && a2 == 0xEC0000006C65646FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABDF61B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDF6114(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABDF61E0(uint64_t a1)
{
  v2 = sub_1ABDF6464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDF621C(uint64_t a1)
{
  v2 = sub_1ABDF6464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABDF6258(uint64_t a1)
{
  v2 = sub_1ABDF64B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDF6294(uint64_t a1)
{
  v2 = sub_1ABDF64B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LifeEventsInferenceInterface.Errors.InitError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v26 = sub_1ABAD219C(&qword_1EB4DA120, &qword_1ABF64938);
  sub_1ABA7BB64(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = sub_1ABAD219C(&qword_1EB4DA128, &qword_1ABF64940);
  sub_1ABA7BB64(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA7BCE0();
  v40 = v25[3];
  v41 = v25[4];
  sub_1ABA80908(v25);
  sub_1ABDF6464();
  sub_1ABA8177C();
  sub_1ABF252E4();
  sub_1ABDF64B8();
  sub_1ABF24EC4();
  (*(v28 + 8))(v33, v26);
  (*(v36 + 8))(v21, v34);
  sub_1ABA7BC90();
}

unint64_t sub_1ABDF6464()
{
  result = qword_1EB4DA130;
  if (!qword_1EB4DA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA130);
  }

  return result;
}

unint64_t sub_1ABDF64B8()
{
  result = qword_1EB4DA138;
  if (!qword_1EB4DA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA138);
  }

  return result;
}

uint64_t LifeEventsInferenceInterface.Errors.InitError.hashValue.getter()
{
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](0);
  return sub_1ABF25294();
}

void LifeEventsInferenceInterface.Errors.InitError.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4DA140, &qword_1ABF64948);
  sub_1ABA7BB64(v3);
  v42 = v4;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4DA148, &unk_1ABF64950);
  sub_1ABA7BB64(v10);
  v43 = v11;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = v2[3];
  v18 = v2[4];
  sub_1ABA80908(v2);
  sub_1ABDF6464();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_9;
  }

  v40 = v9;
  v41 = v2;
  v19 = sub_1ABF24EA4();
  v20 = sub_1ABAD4EA4(v19, 0);
  v23 = v16;
  if (v21 == v22 >> 1)
  {
    v42 = v20;
LABEL_8:
    v33 = v10;
    v34 = sub_1ABF24B44();
    swift_allocError();
    v36 = v35;
    v37 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v36 = &type metadata for LifeEventsInferenceInterface.Errors.InitError;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v23, v33);
    v2 = v41;
LABEL_9:
    v38 = v2;
    goto LABEL_10;
  }

  if (v21 < (v22 >> 1))
  {
    v24 = sub_1ABAD4E90(v21 + 1);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    v29 = v26 == v28 >> 1;
    v30 = v41;
    v31 = v42;
    if (v29)
    {
      sub_1ABDF64B8();
      v32 = v40;
      sub_1ABF24D94();
      swift_unknownObjectRelease();
      (*(v31 + 8))(v32, v3);
      (*(v43 + 8))(v23, v10);
      v38 = v30;
LABEL_10:
      sub_1ABA84B54(v38);
      sub_1ABA7BC90();
      return;
    }

    v42 = v24;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1ABDF6954(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001ABF917E0 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABF91800 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1ABDF6A2C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1ABDF6A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDF6954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABDF6A90(uint64_t a1)
{
  v2 = sub_1ABDF7370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDF6ACC(uint64_t a1)
{
  v2 = sub_1ABDF7370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABDF6B08(uint64_t a1)
{
  v2 = sub_1ABDF7418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDF6B44(uint64_t a1)
{
  v2 = sub_1ABDF7418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABDF6B80(uint64_t a1)
{
  v2 = sub_1ABDF73C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDF6BBC(uint64_t a1)
{
  v2 = sub_1ABDF73C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LifeEventsInferenceInterface.Errors.RunError.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4DA150, &qword_1ABF64960);
  v4 = sub_1ABA7BB64(v3);
  v33 = v5;
  v34 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - v9;
  v10 = sub_1ABAD219C(&qword_1EB4DA158, &qword_1ABF64968);
  v11 = sub_1ABA7BB64(v10);
  v30 = v12;
  v31 = v11;
  v14 = *(v13 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = sub_1ABAD219C(&qword_1EB4DA160, &qword_1ABF64970);
  sub_1ABA7BB64(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  v26 = *v0;
  v27 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABDF7370();
  sub_1ABF252E4();
  v28 = (v20 + 8);
  if (v26)
  {
    sub_1ABDF73C4();
    v29 = v32;
    sub_1ABF24EC4();
    (*(v33 + 8))(v29, v34);
  }

  else
  {
    sub_1ABDF7418();
    sub_1ABF24EC4();
    (*(v30 + 8))(v17, v31);
  }

  (*v28)(v25, v18);
  sub_1ABA7BC90();
}

uint64_t LifeEventsInferenceInterface.Errors.RunError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void LifeEventsInferenceInterface.Errors.RunError.init(from:)()
{
  sub_1ABA7BCA8();
  v53 = v0;
  v4 = v3;
  v50 = v5;
  v52 = sub_1ABAD219C(&qword_1EB4DA180, &qword_1ABF64978);
  sub_1ABA7BB64(v52);
  v49 = v6;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v45 - v10;
  v12 = sub_1ABAD219C(&qword_1EB4DA188, &qword_1ABF64980);
  sub_1ABA7BB64(v12);
  v48 = v13;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BCE0();
  v17 = sub_1ABAD219C(&qword_1EB4DA190, &qword_1ABF64988);
  sub_1ABA7BB64(v17);
  v51 = v18;
  v20 = *(v19 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7ED98();
  v23 = v4[3];
  v22 = v4[4];
  sub_1ABA80908(v4);
  sub_1ABDF7370();
  v24 = v53;
  sub_1ABF252C4();
  if (v24)
  {
    goto LABEL_10;
  }

  v46 = v12;
  v47 = v2;
  v53 = v4;
  v25 = v52;
  v26 = sub_1ABF24EA4();
  v27 = sub_1ABAD4EA4(v26, 0);
  if (v29 == v30 >> 1)
  {
    v52 = v27;
LABEL_9:
    v40 = sub_1ABF24B44();
    swift_allocError();
    v42 = v41;
    v43 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v42 = &type metadata for LifeEventsInferenceInterface.Errors.RunError;
    sub_1ABF24DA4();
    sub_1ABA835CC();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v1, v17);
    v4 = v53;
LABEL_10:
    sub_1ABA84B54(v4);
LABEL_11:
    sub_1ABA7BC90();
    return;
  }

  v45[1] = 0;
  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    v32 = sub_1ABAD4E90(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      if (v31)
      {
        sub_1ABDF73C4();
        v37 = v11;
        sub_1ABA7E518();
        v38 = v50;
        v39 = v51;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v37, v25);
      }

      else
      {
        sub_1ABDF7418();
        v44 = v47;
        sub_1ABA7E518();
        v38 = v50;
        v39 = v51;
        swift_unknownObjectRelease();
        (*(v48 + 8))(v44, v46);
      }

      (*(v39 + 8))(v1, v34);
      *v38 = v31;
      sub_1ABA84B54(v53);
      goto LABEL_11;
    }

    v52 = v32;
    goto LABEL_9;
  }

  __break(1u);
}

unint64_t sub_1ABDF7370()
{
  result = qword_1EB4DA168;
  if (!qword_1EB4DA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA168);
  }

  return result;
}

unint64_t sub_1ABDF73C4()
{
  result = qword_1EB4DA170;
  if (!qword_1EB4DA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA170);
  }

  return result;
}

unint64_t sub_1ABDF7418()
{
  result = qword_1EB4DA178;
  if (!qword_1EB4DA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA178);
  }

  return result;
}

unint64_t sub_1ABDF7470()
{
  result = qword_1EB4DA198;
  if (!qword_1EB4DA198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA198);
  }

  return result;
}

unint64_t sub_1ABDF74C8()
{
  result = qword_1EB4DA1A0;
  if (!qword_1EB4DA1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA1A0);
  }

  return result;
}

unint64_t sub_1ABDF7520()
{
  result = qword_1EB4DA1A8;
  if (!qword_1EB4DA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA1A8);
  }

  return result;
}

unint64_t sub_1ABDF7578()
{
  result = qword_1EB4DA1B0;
  if (!qword_1EB4DA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA1B0);
  }

  return result;
}

unint64_t sub_1ABDF75D0()
{
  result = qword_1EB4DA1B8;
  if (!qword_1EB4DA1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA1B8);
  }

  return result;
}

_BYTE *sub_1ABDF766C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1ABDF7798(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABDF7848()
{
  result = qword_1EB4DA1C0;
  if (!qword_1EB4DA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA1C0);
  }

  return result;
}

unint64_t sub_1ABDF78A0()
{
  result = qword_1EB4DA1C8;
  if (!qword_1EB4DA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA1C8);
  }

  return result;
}

unint64_t sub_1ABDF78F8()
{
  result = qword_1EB4DA1D0;
  if (!qword_1EB4DA1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA1D0);
  }

  return result;
}

unint64_t sub_1ABDF7950()
{
  result = qword_1EB4DA1D8;
  if (!qword_1EB4DA1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA1D8);
  }

  return result;
}

unint64_t sub_1ABDF79A8()
{
  result = qword_1EB4DA1E0;
  if (!qword_1EB4DA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA1E0);
  }

  return result;
}

unint64_t sub_1ABDF7A00()
{
  result = qword_1EB4DA1E8;
  if (!qword_1EB4DA1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA1E8);
  }

  return result;
}

unint64_t sub_1ABDF7A58()
{
  result = qword_1EB4DA1F0;
  if (!qword_1EB4DA1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA1F0);
  }

  return result;
}

unint64_t sub_1ABDF7AB0()
{
  result = qword_1EB4DA1F8;
  if (!qword_1EB4DA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA1F8);
  }

  return result;
}

unint64_t sub_1ABDF7B08()
{
  result = qword_1EB4DA200;
  if (!qword_1EB4DA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA200);
  }

  return result;
}

unint64_t sub_1ABDF7B60()
{
  result = qword_1EB4DA208;
  if (!qword_1EB4DA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA208);
  }

  return result;
}

unint64_t sub_1ABDF7BB8()
{
  result = qword_1EB4DA210;
  if (!qword_1EB4DA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA210);
  }

  return result;
}

unint64_t sub_1ABDF7C10()
{
  result = qword_1EB4DA218;
  if (!qword_1EB4DA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA218);
  }

  return result;
}

unint64_t sub_1ABDF7C68()
{
  result = qword_1EB4DA220;
  if (!qword_1EB4DA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA220);
  }

  return result;
}

unint64_t sub_1ABDF7CC0()
{
  result = qword_1EB4DA228;
  if (!qword_1EB4DA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA228);
  }

  return result;
}

unint64_t sub_1ABDF7D18()
{
  result = qword_1EB4DA230;
  if (!qword_1EB4DA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA230);
  }

  return result;
}

unint64_t sub_1ABDF7D70()
{
  result = qword_1EB4DA238;
  if (!qword_1EB4DA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA238);
  }

  return result;
}

unint64_t sub_1ABDF7DC8()
{
  result = qword_1EB4DA240;
  if (!qword_1EB4DA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA240);
  }

  return result;
}

unint64_t sub_1ABDF7E20()
{
  result = qword_1EB4DA248;
  if (!qword_1EB4DA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA248);
  }

  return result;
}

uint64_t sub_1ABDF7E7C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABDF7E90()
{
  sub_1ABA7BBF8();
  v1 = *(v0[3] + 16);
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v0[4] = v2;
  v3 = *(MEMORY[0x1E695FD68] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1ABDF7F50;
  v5 = v0[2];

  return MEMORY[0x1EEDBB398](v5, v2);
}

uint64_t sub_1ABDF7F50()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D4E0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_1ABA7D4E0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {

    v9 = *(v7 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABD31054, 0, 0);
}

unint64_t sub_1ABDF80AC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    sub_1ABAD219C(&qword_1EB4DA2D8, &qword_1ABF65678);
    v4 = sub_1ABF24D54();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_12:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(a1 + 56) + 8 * v13);
    sub_1ABAFF390(0, a2, a3);

    v18 = v17;
    swift_dynamicCast();
    sub_1ABAFF238(&v30, v32);
    sub_1ABAFF238(v32, v33);
    sub_1ABAFF238(v33, &v31);
    result = sub_1ABA94FC8(v16, v15);
    v19 = result;
    if (v20)
    {
      v21 = (v4[6] + 16 * result);
      v22 = v21[1];
      *v21 = v16;
      v21[1] = v15;

      v23 = (v4[7] + 32 * v19);
      sub_1ABA84B54(v23);
      result = sub_1ABAFF238(&v31, v23);
      v10 = v11;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_19;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v24 = (v4[6] + 16 * result);
      *v24 = v16;
      v24[1] = v15;
      result = sub_1ABAFF238(&v31, (v4[7] + 32 * result));
      v25 = v4[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_20;
      }

      v4[2] = v27;
      v10 = v11;
    }
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

      return v4;
    }

    v7 = *(a1 + 64 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1ABDF8320(uint64_t a1)
{
  v2 = sub_1ABDF8508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDF835C(uint64_t a1)
{
  v2 = sub_1ABDF8508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LifeEventsMLModelInferenceServiceDefinition.ConfigParameters.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4DA250, &qword_1ABF65360);
  v5 = sub_1ABA7BB64(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v16[1] = v1[3];
  v16[2] = v13;
  v14 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABDF8508();
  sub_1ABF252E4();
  v19 = 0;
  sub_1ABF24F34();
  if (!v2)
  {
    v18 = 1;
    sub_1ABF24F34();
  }

  return (*(v17 + 8))(v10, v4);
}

unint64_t sub_1ABDF8508()
{
  result = qword_1EB4DA258;
  if (!qword_1EB4DA258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA258);
  }

  return result;
}

uint64_t LifeEventsMLModelInferenceServiceDefinition.ConfigParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DA260, &qword_1ABF65368);
  v6 = sub_1ABA7BB64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABDF8508();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v25 = 0;
  v14 = sub_1ABF24E14();
  v16 = v15;
  v24 = 1;
  v17 = sub_1ABF24E14();
  v19 = v18;
  v20 = *(v8 + 8);
  v23 = v17;
  v20(v12, v5);
  *a2 = v14;
  a2[1] = v16;
  a2[2] = v23;
  a2[3] = v19;

  sub_1ABA84B54(a1);
}

void LifeEventsMLModelInferenceServiceDefinition.Runner.cost.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
}

uint64_t sub_1ABDF8794(uint64_t *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  v4 = *a1;
  *(v3 + 32) = *v2;
  *(v3 + 40) = v4;
  *(v3 + 48) = *(a1 + 1);
  *(v3 + 64) = a1[3];
  return sub_1ABA8C014();
}

uint64_t sub_1ABDF87E4()
{
  sub_1ABA7BBF8();
  v1 = v0[3];
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1ABDF88AC;
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[2];

  return sub_1ABC20104(v4, v3, v5, v6, 0);
}

uint64_t sub_1ABDF88AC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D4E0();
  *v4 = v3;
  v6 = *(v5 + 72);
  *v4 = *v1;
  v3[10] = v7;
  v3[11] = v0;

  if (v0)
  {
    v8 = sub_1ABDF8ABC;
  }

  else
  {
    v9 = v3[8];
    v10 = v3[6];

    v8 = sub_1ABDF89C8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1ABDF89C8()
{
  v1 = v0[10];
  if (!v1)
  {
    sub_1ABDF7520();
    swift_allocError();
    swift_willThrow();
    v3 = v0[3];
    v2 = v0[4];
    v4 = v0[2];
    swift_defaultActor_destroy();

    sub_1ABA837B4();
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  *(v0[3] + 128) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1ABC16718);
}

uint64_t sub_1ABDF8ABC()
{
  sub_1ABA7BC04();
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[11];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  swift_defaultActor_destroy();

  sub_1ABA837B4();
  sub_1ABA7BBE0();

  return v7();
}

uint64_t LifeEventsMLModelInferenceServiceDefinition.Runner.run(input:context:)()
{
  sub_1ABA7BBF8();
  v1[3] = v2;
  v1[4] = v0;
  v1[5] = *v3;

  return MEMORY[0x1EEE6DFA0](sub_1ABDF8BB8, v0, 0);
}

void sub_1ABDF8BB8()
{
  v1 = v0[5];
  sub_1ABAFF390(0, &qword_1EB4DA268, 0x1E695FED0);
  v2 = sub_1ABF239C4();
  v3 = 0;
  v5 = v1 + 64;
  v4 = *(v1 + 64);
  v6 = -1;
  v7 = -1 << *(v1 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v4;
  v9 = (63 - v7) >> 6;
  v39 = v0;
  if ((v6 & v4) != 0)
  {
    while (1)
    {
      v41 = v2;
LABEL_9:
      v11 = __clz(__rbit64(v8)) | (v3 << 6);
      v12 = (*(v1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(v1 + 56) + 8 * v11);
      sub_1ABAD219C(&qword_1EB4D1150, &qword_1ABF332D8);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1ABF34740;
      *(v16 + 32) = v15;
      v0[2] = v16;

      sub_1ABAD219C(&qword_1EB4DA270, &qword_1ABF65380);
      sub_1ABAB47C4(&qword_1EB4DA278, &qword_1EB4DA270, &qword_1ABF65380);
      v40 = sub_1ABF24624();
      swift_isUniquelyReferenced_nonNull_native();
      v17 = v13;
      v18 = sub_1ABA94FC8(v13, v14);
      if (__OFADD__(v41[2], (v19 & 1) == 0))
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      sub_1ABAD219C(&qword_1EB4DA280, &qword_1ABF65388);
      if (sub_1ABF24C64())
      {
        v22 = sub_1ABA94FC8(v13, v14);
        if ((v21 & 1) != (v23 & 1))
        {
          sub_1ABA938C0();

          sub_1ABF25104();
          return;
        }

        v20 = v22;
      }

      if (v21)
      {

        v2 = v41;
        v24 = v41[7];
        v25 = *(v24 + 8 * v20);
        *(v24 + 8 * v20) = v40;
      }

      else
      {
        v2 = v41;
        v41[(v20 >> 6) + 8] |= 1 << v20;
        v26 = (v41[6] + 16 * v20);
        *v26 = v17;
        v26[1] = v14;
        *(v41[7] + 8 * v20) = v40;
        v27 = v41[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_27;
        }

        v41[2] = v29;
      }

      v8 &= v8 - 1;
      v0 = v39;
      v5 = v1 + 64;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        v30 = v0[5];

        sub_1ABDF80AC(v2, &qword_1EB4DA268, 0x1E695FED0);

        v31 = objc_allocWithZone(MEMORY[0x1E695FE48]);
        v32 = sub_1ABDF9974();
        v0[6] = v32;
        v33 = *(v0[4] + 128);
        v34 = v32;
        v35 = swift_task_alloc();
        v0[7] = v35;
        *v35 = v0;
        v35[1] = sub_1ABDF9004;
        sub_1ABA938C0();

        __asm { BR              X1 }
      }

      v8 = *(v5 + 8 * v10);
      ++v3;
      if (v8)
      {
        v41 = v2;
        v3 = v10;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1ABDF9004()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D4E0();
  *v4 = v3;
  v5 = v2[7];
  v6 = *v1;
  sub_1ABA7D4E0();
  *v7 = v6;
  *(v9 + 64) = v8;
  *(v9 + 72) = v0;

  v10 = v2[6];
  v11 = v2[4];

  if (v0)
  {
    v12 = sub_1ABDF92D8;
  }

  else
  {
    v12 = sub_1ABDF9148;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1ABDF9148()
{
  v1 = v0[8];
  v2 = sub_1ABF23BD4();
  v3 = [v1 featureValueForName_];

  if (v3 && (v4 = [v3 multiArrayValue], v3, v4) && (v5 = objc_msgSend(v4, sel_objectAtIndexedSubscript_, 0), v4, v5))
  {
    v6 = v0[8];
    v7 = v0[6];
    v8 = v0[3];
    [v5 doubleValue];
    v10 = v9;

    swift_unknownObjectRelease();
    *v8 = v10;
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
    sub_1ABA7BBE0();
  }

  else
  {
    v12 = v0[8];
    v13 = v0[6];
    sub_1ABDF7578();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_1ABA7BBE0();
  }

  return v11();
}

uint64_t sub_1ABDF92D8()
{
  sub_1ABA7BBF8();

  v1 = *(v0 + 72);
  sub_1ABA7BBE0();

  return v2();
}

uint64_t LifeEventsMLModelInferenceServiceDefinition.Runner.deinit()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LifeEventsMLModelInferenceServiceDefinition.Runner.__deallocating_deinit()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1ABDF93E0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1ABDF948C;

  return LifeEventsMLModelInferenceServiceDefinition.Runner.run(input:context:)();
}

uint64_t sub_1ABDF948C()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1ABA7D4E0();
  *v4 = v3;

  sub_1ABA7BBE0();

  return v5();
}

uint64_t static LifeEventsMLModelInferenceServiceDefinition.buildRunner(config:context:)(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v2[2] = a1[5];
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v6;
  type metadata accessor for LifeEventsMLModelInferenceServiceDefinition.Runner();
  swift_allocObject();

  v7 = swift_task_alloc();
  v2[6] = v7;
  *v7 = v2;
  v7[1] = sub_1ABDF9664;

  return sub_1ABDF8794(v2 + 2, a2);
}

uint64_t sub_1ABDF9664()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_1ABA7D4E0();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (!v0)
  {
    v9 = *(v6 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABDF9790, 0, 0);
}

uint64_t sub_1ABDF9790()
{
  sub_1ABA7BBE0();
  v1 = *(v0 + 56);
  return v2();
}

uint64_t sub_1ABDF97D4(uint64_t a1, void *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1ABDF9874;

  return static LifeEventsMLModelInferenceServiceDefinition.buildRunner(config:context:)(a2, a3);
}

uint64_t sub_1ABDF9874()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_1ABA7D4E0();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

id sub_1ABDF9974()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1ABF23954();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

unint64_t sub_1ABDF9A80(uint64_t a1)
{
  *(a1 + 8) = sub_1ABDF9AB0();
  result = sub_1ABDF9B04();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABDF9AB0()
{
  result = qword_1EB4DA288;
  if (!qword_1EB4DA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA288);
  }

  return result;
}

unint64_t sub_1ABDF9B04()
{
  result = qword_1EB4DA290;
  if (!qword_1EB4DA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA290);
  }

  return result;
}

unint64_t sub_1ABDF9B58(uint64_t a1)
{
  result = sub_1ABDF9B80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABDF9B80()
{
  result = qword_1EB4DA298;
  if (!qword_1EB4DA298)
  {
    type metadata accessor for LifeEventsMLModelInferenceServiceDefinition.Runner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA298);
  }

  return result;
}

unint64_t sub_1ABDF9C1C()
{
  result = qword_1EB4DA2B0;
  if (!qword_1EB4DA2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA2B0);
  }

  return result;
}

unint64_t sub_1ABDF9C74()
{
  result = qword_1EB4DA2B8;
  if (!qword_1EB4DA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA2B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LifeEventsMLModelInferenceServiceDefinition(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LifeEventsMLModelInferenceServiceDefinition.ConfigParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABDF9E80()
{
  result = qword_1EB4DA2C0;
  if (!qword_1EB4DA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA2C0);
  }

  return result;
}

unint64_t sub_1ABDF9ED8()
{
  result = qword_1EB4DA2C8;
  if (!qword_1EB4DA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA2C8);
  }

  return result;
}

unint64_t sub_1ABDF9F30()
{
  result = qword_1EB4DA2D0;
  if (!qword_1EB4DA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA2D0);
  }

  return result;
}

uint64_t ViewService.lifeEventView()()
{
  type metadata accessor for LifeEventView();
  sub_1ABA7D028();
  v1 = swift_allocObject();
  LifeEventView.init(viewService:)(v0);
  return v1;
}

uint64_t LifeEventView.__allocating_init(viewService:)(void *a1)
{
  sub_1ABA7D028();
  v2 = swift_allocObject();
  LifeEventView.init(viewService:)(a1);
  return v2;
}

uint64_t *LifeEventView.init(viewService:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  type metadata accessor for LifeEventEntryView();
  sub_1ABA7D028();
  swift_allocObject();
  v6 = LifeEventEntryView.init(viewService:)(a1);
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = v6;
    sub_1ABAD219C(&qword_1EB4DA2E0, &qword_1ABF65680);
    sub_1ABA7D028();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v3[2] = v8;
  }

  return v3;
}

uint64_t LifeEventView.activityEvents<A>(from:order:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1ABA8C3AC();
  sub_1ABA8F908();
  v11 = sub_1ABDFB000(v9, v10);
  return sub_1ABC2D7B8(v8, a1, a2 & 1, v8, a3, v11, a4);
}

uint64_t LifeEventView.activityEvents<A>(whose:in:from:order:)(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  return sub_1ABDFA274(a1, a2, a3, a4, a5, a6, sub_1ABC2D880);
}

{
  return sub_1ABDFA274(a1, a2, a3, a4, a5, a6, sub_1ABC2D8B8);
}

{
  return sub_1ABDFA274(a1, a2, a3, a4, a5, a6, sub_1ABC2D8F0);
}

{
  return sub_1ABDFA274(a1, a2, a3, a4, a5, a6, sub_1ABC2D928);
}

{
  return sub_1ABDFA274(a1, a2, a3, a4, a5, a6, sub_1ABC2D960);
}

uint64_t LifeEventView.activityEvents<A, B>(of:whose:in:from:order:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return sub_1ABDFA4A0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2D880);
}

{
  return sub_1ABDFA4A0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2D8B8);
}

{
  return sub_1ABDFA4A0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2D8F0);
}

{
  return sub_1ABDFA4A0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2D928);
}

{
  return sub_1ABDFA4A0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2D960);
}

uint64_t sub_1ABDFA274(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, char *, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *a1;
  v13 = sub_1ABA8C3AC();
  v19 = v12;
  sub_1ABA8F908();
  v16 = sub_1ABDFB000(v14, v15);
  return a7(v13, &v19, a2, a3, a4 & 1, v13, a5, v16, a6);
}

uint64_t sub_1ABDFA4A0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, char *, uint64_t, uint64_t, void, uint64_t, uint64_t, void, uint64_t))
{
  v11 = *(v10 + 16);
  v13 = *a2;
  return a10(a1, &v13, a3, a4, a5 & 1, a6, a7, *(a8 + 8), a9);
}

uint64_t LifeEventView.activityEvents<A>(overlapping:from:order:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  return sub_1ABDFA568(a1, a2, a3, a4, a5, sub_1ABC2DA70);
}

{
  return sub_1ABDFA568(a1, a2, a3, a4, a5, sub_1ABC2DAA4);
}

{
  return sub_1ABDFA568(a1, a2, a3, a4, a5, sub_1ABC2DAD8);
}

{
  return sub_1ABDFA568(a1, a2, a3, a4, a5, sub_1ABC2DB0C);
}

{
  return sub_1ABDFA568(a1, a2, a3, a4, a5, sub_1ABC2DB40);
}

void LifeEventView.activityEvents<A, B>(of:overlapping:from:order:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1ABA7F7BC(a1, a2, a3, a4, a5, a6, a7);
  sub_1ABC2DA70(v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  sub_1ABA7F7BC(a1, a2, a3, a4, a5, a6, a7);
  sub_1ABC2DAA4(v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  sub_1ABA7F7BC(a1, a2, a3, a4, a5, a6, a7);
  sub_1ABC2DAD8(v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  sub_1ABA7F7BC(a1, a2, a3, a4, a5, a6, a7);
  sub_1ABC2DB0C(v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  sub_1ABA7F7BC(a1, a2, a3, a4, a5, a6, a7);
  sub_1ABC2DB40(v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1ABDFA568(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = sub_1ABA8C3AC();
  sub_1ABA8F908();
  v14 = sub_1ABDFB000(v12, v13);
  return a6(v11, a1, a2, a3 & 1, v11, a4, v14, a5);
}

uint64_t LifeEventView.enumerateActivityEvents<A>(from:order:using:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1ABA8C3AC();
  sub_1ABA8F908();
  v17 = sub_1ABDFB000(v15, v16);
  return sub_1ABC2DC44(v14, a1, a2 & 1, a3, a4, v14, a5, v17, a6, a7);
}

uint64_t LifeEventView.enumerateActivityEvents<A>(whose:in:from:order:using:)(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return sub_1ABDFA8D0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DD20);
}

{
  return sub_1ABDFA8D0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DD54);
}

{
  return sub_1ABDFA8D0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DD88);
}

{
  return sub_1ABDFA8D0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DDBC);
}

{
  return sub_1ABDFA8D0(a1, a2, a3, a4, a5, a6, a7, a8, a9, sub_1ABC2DDF0);
}

uint64_t LifeEventView.enumerateActivityEvents<A, B>(of:whose:in:from:order:using:)()
{
  v0 = sub_1ABA80B34();
  return sub_1ABA7EA90(v1, v2, v3, v4, v5, v6, v7, v8, v9, v0);
}

{
  v0 = sub_1ABA80B34();
  return sub_1ABA7EA90(v1, v2, v3, v4, v5, v6, v7, v8, v9, v0);
}

{
  v0 = sub_1ABA80B34();
  return sub_1ABA7EA90(v1, v2, v3, v4, v5, v6, v7, v8, v9, v0);
}

{
  v0 = sub_1ABA80B34();
  return sub_1ABA7EA90(v1, v2, v3, v4, v5, v6, v7, v8, v9, v0);
}

{
  v0 = sub_1ABA80B34();
  return sub_1ABA7EA90(v1, v2, v3, v4, v5, v6, v7, v8, v9, v0);
}

uint64_t sub_1ABDFA8D0(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, char *, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = *a1;
  v16 = sub_1ABA8C3AC();
  v23 = v15;
  sub_1ABA8F908();
  v19 = sub_1ABDFB000(v17, v18);
  return a10(v16, &v23, a2, a3, a4 & 1, a5, a6, v16, a7, v19, a8, a9);
}

uint64_t sub_1ABDFAB18(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, char *, uint64_t, uint64_t, void))
{
  v14 = *(v13 + 16);
  v17 = *a2;
  v16 = *(a10 + 8);
  return a13(a1, &v17, a3, a4, a5 & 1);
}

uint64_t LifeEventView.enumerateActivityEvents<A>(overlapping:from:order:using:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_1ABDFAC04(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DF10);
}

{
  return sub_1ABDFAC04(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DF44);
}

{
  return sub_1ABDFAC04(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DF78);
}

{
  return sub_1ABDFAC04(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DFAC);
}

{
  return sub_1ABDFAC04(a1, a2, a3, a4, a5, a6, a7, a8, sub_1ABC2DFE0);
}

void LifeEventView.enumerateActivityEvents<A, B>(of:overlapping:from:order:using:)()
{
  sub_1ABA7DDD0();
  sub_1ABC2DF10();
}

{
  sub_1ABA7DDD0();
  sub_1ABC2DF44();
}

{
  sub_1ABA7DDD0();
  sub_1ABC2DF78();
}

{
  sub_1ABA7DDD0();
  sub_1ABC2DFAC();
}

{
  sub_1ABA7DDD0();
  sub_1ABC2DFE0();
}

uint64_t sub_1ABDFAC04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = sub_1ABA8C3AC();
  sub_1ABA8F908();
  v19 = sub_1ABDFB000(v17, v18);
  return a9(v16, a1, a2, a3 & 1, a4, a5, v16, a6, v19, a7, a8);
}

uint64_t sub_1ABDFAE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1ABA8C3AC();
  sub_1ABA8F908();
  v11 = sub_1ABDFB000(v9, v10);
  return a4(v8, a1, v8, a2, v11, a3);
}

uint64_t LifeEventView.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t LifeEventView.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_1ABA7D028();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABDFB000(unint64_t *a1, void (*a2)(uint64_t))
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

IntelligencePlatform::LiveGlobalKnowledge::ExternalIdentifierType_optional __swiftcall LiveGlobalKnowledge.ExternalIdentifierType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LiveGlobalKnowledge.ExternalIdentifierType.rawValue.getter()
{
  result = 0x44495F474BLL;
  switch(*v0)
  {
    case 1:
      result = 0x61746164696B6957;
      break;
    case 2:
      result = 0x44495F6D616441;
      break;
    case 3:
      result = 0x44495F434D55;
      break;
    case 4:
      result = 0x44495F7374617453;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABDFB188(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1ABAD0400();
}

uint64_t sub_1ABDFB1B8@<X0>(uint64_t *a1@<X8>)
{
  result = LiveGlobalKnowledge.ExternalIdentifierType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t LiveGlobalKnowledge.ExternalIdentifier.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LiveGlobalKnowledge.ExternalIdentifier.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0xE500000000000000;
  v4 = 0x44495F474BLL;
  switch(*(v0 + 16))
  {
    case 1:
      v3 = 0xEB0000000044495FLL;
      v4 = 0x61746164696B6957;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v4 = 0x44495F6D616441;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v4 = 0x44495F434D55;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v4 = 0x44495F7374617453;
      break;
    default:
      break;
  }

  MEMORY[0x1AC5A9410](v4, v3);

  MEMORY[0x1AC5A9410](58, 0xE100000000000000);
  MEMORY[0x1AC5A9410](v1, v2);
  return 0;
}

IntelligencePlatform::LiveGlobalKnowledge::ExternalIdentifier_optional __swiftcall LiveGlobalKnowledge.ExternalIdentifier.init(id:idTypeValue:)(Swift::String id, Swift::String idTypeValue)
{
  object = id._object;
  countAndFlagsBits = id._countAndFlagsBits;
  v5 = v2;
  LOBYTE(v6) = LiveGlobalKnowledge.ExternalIdentifierType.init(rawValue:)(idTypeValue);
  v10 = v11;
  if (v11 == 5)
  {

    countAndFlagsBits = 0;
    object = 0;
    v10 = 0;
  }

  *v5 = countAndFlagsBits;
  *(v5 + 8) = object;
  *(v5 + 16) = v10;
  result.value.id._object = v7;
  result.value.id._countAndFlagsBits = v6;
  result.is_nil = v9.value;
  result.value.idType = v8.value;
  return result;
}

IntelligencePlatform::LiveGlobalKnowledge::ExternalIdentifier_optional __swiftcall LiveGlobalKnowledge.ExternalIdentifier.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  sub_1ABAE28EC();
  v3 = sub_1ABF248E4();

  if (v3[2] == 2)
  {
    v4 = v3[8];
    v5 = v3[9];
    v6 = v3[10];
    v7 = v3[11];

    v8 = MEMORY[0x1AC5A9330](v4, v5, v6, v7);
    v10 = v9;

    if (!v3[2])
    {
      __break(1u);
      goto LABEL_8;
    }

    v15 = v3[4];
    v16 = v3[5];
    v17 = v3[6];
    v18 = v3[7];

    v19 = MEMORY[0x1AC5A9330](v15, v16, v17, v18);
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    LOBYTE(v11) = LiveGlobalKnowledge.ExternalIdentifierType.init(rawValue:)(v22);
    if (countAndFlagsBits != 5)
    {
      *v2 = v8;
      *(v2 + 8) = v10;
      *(v2 + 16) = countAndFlagsBits;
      goto LABEL_8;
    }
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
LABEL_8:
  result.value.id._object = v12;
  result.value.id._countAndFlagsBits = v11;
  result.is_nil = v14;
  result.value.idType = v13;
  return result;
}

uint64_t LiveGlobalKnowledge.ExternalIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF918E0);
  MEMORY[0x1AC5A9410](v1, v2);
  MEMORY[0x1AC5A9410](0x203A65707974202CLL, 0xE800000000000000);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0;
}

uint64_t static LiveGlobalKnowledge.ExternalIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  return sub_1ABAD0400();
}

uint64_t sub_1ABDFB6F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657079546469 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABDFB7B0(char a1)
{
  if (a1)
  {
    return 0x657079546469;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1ABDFB7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDFB6F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABDFB808(uint64_t a1)
{
  v2 = sub_1ABDFCA80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDFB844(uint64_t a1)
{
  v2 = sub_1ABDFCA80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LiveGlobalKnowledge.ExternalIdentifier.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DA2E8, &qword_1ABF656E0);
  sub_1ABA7BB64(v4);
  v15 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *v0;
  v12 = v0[1];
  v16 = *(v0 + 16);
  v13 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABDFCA80();
  sub_1ABF252E4();
  sub_1ABA7BF34();
  sub_1ABF24F34();
  if (!v1)
  {
    sub_1ABDFCAD4();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  (*(v15 + 8))(v10, v4);
  sub_1ABA7BC90();
}

uint64_t LiveGlobalKnowledge.ExternalIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1ABF23D34();

  return sub_1ABBB5B70();
}

uint64_t LiveGlobalKnowledge.ExternalIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1ABF25234();
  sub_1ABF23D34();
  sub_1ABBB5B70();
  return sub_1ABF25294();
}

void LiveGlobalKnowledge.ExternalIdentifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  sub_1ABA7BCA8();
  v14 = v13;
  v16 = v15;
  v17 = sub_1ABAD219C(&qword_1EB4DA300, &qword_1ABF656E8);
  sub_1ABA7BB64(v17);
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v14[4];
  sub_1ABA93E20(v14, v14[3]);
  sub_1ABDFCA80();
  sub_1ABF252C4();
  if (v12)
  {
    sub_1ABA84B54(v14);
  }

  else
  {
    v22 = sub_1ABF24E14();
    v24 = v23;
    sub_1ABDFCB28();
    sub_1ABA7C63C();
    sub_1ABF24E64();
    v25 = sub_1ABA8E0A8();
    v26(v25);
    *v16 = v22;
    *(v16 + 8) = v24;
    *(v16 + 16) = a12;

    sub_1ABA84B54(v14);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABDFBC50()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  sub_1ABF25234();
  LiveGlobalKnowledge.ExternalIdentifier.hash(into:)();
  return sub_1ABF25294();
}

IntelligencePlatform::LiveGlobalKnowledge::Client_optional __swiftcall LiveGlobalKnowledge.Client.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t LiveGlobalKnowledge.Client.rawValue.getter()
{
  result = 0x6B5A7374726F7073;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6C6F6F747069;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1ABDFBDFC@<X0>(unint64_t *a1@<X8>)
{
  result = LiveGlobalKnowledge.Client.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t LiveGlobalKnowledge.IdSearchRequest.clientIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_1ABB3F4DC(v2, v3, v4);
}

__n128 LiveGlobalKnowledge.IdSearchRequest.init(subRequests:clientIdentifier:client:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1].n128_u8[0];
  v5 = *a3;
  *a4 = a1;
  result = *a2;
  *(a4 + 8) = *a2;
  *(a4 + 24) = v4;
  *(a4 + 25) = v5;
  return result;
}

uint64_t LiveGlobalKnowledge.IdSearchRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000020, 0x80000001ABF91900);
  sub_1ABAD219C(&qword_1EB4DA310, &qword_1ABF656F0);
  sub_1ABDFCB7C();
  v6 = sub_1ABF23984();
  MEMORY[0x1AC5A9410](v6);

  MEMORY[0x1AC5A9410](0xD000000000000015, 0x80000001ABF91930);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](0x746E65696C63202CLL, 0xEA0000000000203ALL);
  v7 = 0xE900000000000077;
  v8 = 0x6B5A7374726F7073;
  switch(v5)
  {
    case 1:
      v7 = 0x80000001ABF86030;
      v8 = 0xD000000000000013;
      break;
    case 2:
      v7 = 0x80000001ABF86050;
      v8 = 0xD000000000000011;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v8 = 0x6C6F6F747069;
      break;
    default:
      break;
  }

  MEMORY[0x1AC5A9410](v8, v7);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0;
}

uint64_t static LiveGlobalKnowledge.IdSearchRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  v11 = *(a2 + 25);
  sub_1ABB5C07C();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v18 = v3;
  v19 = v4;
  v20 = v5;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  sub_1ABB3F4DC(v3, v4, v5);
  sub_1ABB3F4DC(v8, v9, v10);
  v13 = static ClientProcessIdentifier.== infix(_:_:)(&v18, &v15);
  sub_1ABB3F860(v15, v16, v17);
  sub_1ABB3F860(v18, v19, v20);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  return sub_1ABAD02C8(v6, v11);
}

uint64_t sub_1ABDFC210(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6575716552627573 && a2 == 0xEB00000000737473;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001ABF91950 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABDFC328(char a1)
{
  if (!a1)
  {
    return 0x6575716552627573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x746E65696C63;
}

uint64_t sub_1ABDFC390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDFC210(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABDFC3B8(uint64_t a1)
{
  v2 = sub_1ABDFCBD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDFC3F4(uint64_t a1)
{
  v2 = sub_1ABDFCBD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LiveGlobalKnowledge.IdSearchRequest.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4DA320, &qword_1ABF656F8);
  sub_1ABA7BB64(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v12 = *v0;
  v11 = *(v0 + 8);
  v17 = *(v0 + 16);
  v18 = v11;
  v22 = *(v0 + 24);
  HIDWORD(v16) = *(v0 + 25);
  v13 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  v14 = sub_1ABDFCBD0();

  sub_1ABF252E4();
  v19 = v12;
  sub_1ABAD219C(&qword_1EB4DA330, &qword_1ABF65700);
  sub_1ABDFCC24();
  sub_1ABA80C2C();
  sub_1ABA7BF34();
  sub_1ABF24F84();

  if (!v14)
  {
    v15 = BYTE4(v16);
    v19 = v18;
    v20 = v17;
    v21 = v22;
    sub_1ABB3F4DC(v18, v17, v22);
    sub_1ABDFCD34();
    sub_1ABA80C2C();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    sub_1ABB3F860(v19, v20, v21);
    LOBYTE(v19) = v15;
    sub_1ABDFCD88();
    sub_1ABA80C2C();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  (*(v5 + 8))(v10, v3);
  sub_1ABA7BC90();
}

uint64_t LiveGlobalKnowledge.IdSearchRequest.hash(into:)(const void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 25);
  sub_1ABD8F534(a1, *v1);
  if (!v5)
  {
    v7 = 1;
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v7 = 2;
LABEL_5:
    MEMORY[0x1AC5AA8A0](v7);
    sub_1ABF23D34();
    goto LABEL_7;
  }

  MEMORY[0x1AC5AA8A0](0);
LABEL_7:

  return sub_1ABBB5AB4(a1, v6);
}

uint64_t LiveGlobalKnowledge.IdSearchRequest.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  sub_1ABF25234();
  sub_1ABD8F534(v8, v2);
  if (v4)
  {
    if (v4 != 1)
    {
      MEMORY[0x1AC5AA8A0](0);
      goto LABEL_7;
    }

    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  MEMORY[0x1AC5AA8A0](v6);
  sub_1ABF23D34();
LABEL_7:
  sub_1ABBB5AB4(v8, v5);
  return sub_1ABF25294();
}

void LiveGlobalKnowledge.IdSearchRequest.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4DA360, &qword_1ABF65708);
  sub_1ABA7BB64(v5);
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v9 = v2[4];
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABDFCBD0();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DA330, &qword_1ABF65700);
    sub_1ABDFCDDC();
    sub_1ABF24E64();
    sub_1ABDFCF64();
    sub_1ABA7C63C();
    sub_1ABF24E64();
    sub_1ABDFCFB8();
    sub_1ABA7C63C();
    sub_1ABF24E64();
    v10 = sub_1ABA8E0A8();
    v11(v10);
    *v4 = v12;
    *(v4 + 8) = v12;
    *(v4 + 16) = v13;
    *(v4 + 24) = v14;
    *(v4 + 25) = v12;

    sub_1ABB3F4DC(v12, v13, v14);
    sub_1ABA84B54(v2);

    sub_1ABB3F860(v12, v13, v14);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABDFC9F0()
{
  v1 = *(v0 + 12);
  v4 = *v0;
  v5 = *(v0 + 1);
  v6 = v1;
  sub_1ABF25234();
  LiveGlobalKnowledge.IdSearchRequest.hash(into:)(v3);
  return sub_1ABF25294();
}

unint64_t sub_1ABDFCA80()
{
  result = qword_1EB4DA2F0;
  if (!qword_1EB4DA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA2F0);
  }

  return result;
}

unint64_t sub_1ABDFCAD4()
{
  result = qword_1EB4DA2F8;
  if (!qword_1EB4DA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA2F8);
  }

  return result;
}

unint64_t sub_1ABDFCB28()
{
  result = qword_1EB4DA308;
  if (!qword_1EB4DA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA308);
  }

  return result;
}

unint64_t sub_1ABDFCB7C()
{
  result = qword_1EB4DA318;
  if (!qword_1EB4DA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA318);
  }

  return result;
}

unint64_t sub_1ABDFCBD0()
{
  result = qword_1EB4DA328;
  if (!qword_1EB4DA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA328);
  }

  return result;
}

unint64_t sub_1ABDFCC24()
{
  result = qword_1EB4DA338;
  if (!qword_1EB4DA338)
  {
    sub_1ABAE2850(&qword_1EB4DA330, &qword_1ABF65700);
    sub_1ABDFCCE0();
    sub_1ABDFCEEC(&qword_1EB4DA348, sub_1ABAA68CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA338);
  }

  return result;
}

unint64_t sub_1ABDFCCE0()
{
  result = qword_1EB4DA340;
  if (!qword_1EB4DA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA340);
  }

  return result;
}

unint64_t sub_1ABDFCD34()
{
  result = qword_1EB4DA350;
  if (!qword_1EB4DA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA350);
  }

  return result;
}

unint64_t sub_1ABDFCD88()
{
  result = qword_1EB4DA358;
  if (!qword_1EB4DA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA358);
  }

  return result;
}

unint64_t sub_1ABDFCDDC()
{
  result = qword_1EB4DA368;
  if (!qword_1EB4DA368)
  {
    sub_1ABAE2850(&qword_1EB4DA330, &qword_1ABF65700);
    sub_1ABDFCE98();
    sub_1ABDFCEEC(&qword_1EB4DA378, sub_1ABAA6FE4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA368);
  }

  return result;
}

unint64_t sub_1ABDFCE98()
{
  result = qword_1EB4DA370;
  if (!qword_1EB4DA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA370);
  }

  return result;
}

uint64_t sub_1ABDFCEEC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4DA310, &qword_1ABF656F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABDFCF64()
{
  result = qword_1EB4DA380;
  if (!qword_1EB4DA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA380);
  }

  return result;
}

unint64_t sub_1ABDFCFB8()
{
  result = qword_1EB4DA388;
  if (!qword_1EB4DA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA388);
  }

  return result;
}

unint64_t sub_1ABDFD010()
{
  result = qword_1EB4DA390;
  if (!qword_1EB4DA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA390);
  }

  return result;
}

unint64_t sub_1ABDFD098()
{
  result = qword_1EB4CFDE8[0];
  if (!qword_1EB4CFDE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CFDE8);
  }

  return result;
}

unint64_t sub_1ABDFD0F0()
{
  result = qword_1EB4DA3A8;
  if (!qword_1EB4DA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA3A8);
  }

  return result;
}

unint64_t sub_1ABDFD178()
{
  result = qword_1EB4DA3C0;
  if (!qword_1EB4DA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA3C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LiveGlobalKnowledge(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LiveGlobalKnowledge.ExternalIdentifierType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LiveGlobalKnowledge.Client(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1ABDFD430(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1ABDFD444(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABDFD484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LiveGlobalKnowledge.IdSearchRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LiveGlobalKnowledge.ExternalIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABDFD690()
{
  result = qword_1EB4DA3C8;
  if (!qword_1EB4DA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA3C8);
  }

  return result;
}

unint64_t sub_1ABDFD6E8()
{
  result = qword_1EB4DA3D0;
  if (!qword_1EB4DA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA3D0);
  }

  return result;
}

unint64_t sub_1ABDFD740()
{
  result = qword_1EB4DA3D8;
  if (!qword_1EB4DA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA3D8);
  }

  return result;
}

unint64_t sub_1ABDFD798()
{
  result = qword_1EB4DA3E0;
  if (!qword_1EB4DA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA3E0);
  }

  return result;
}

unint64_t sub_1ABDFD7F0()
{
  result = qword_1EB4DA3E8;
  if (!qword_1EB4DA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA3E8);
  }

  return result;
}

unint64_t sub_1ABDFD848()
{
  result = qword_1EB4DA3F0;
  if (!qword_1EB4DA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA3F0);
  }

  return result;
}

unint64_t sub_1ABDFD89C()
{
  result = qword_1EB4DA3F8;
  if (!qword_1EB4DA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA3F8);
  }

  return result;
}

unint64_t sub_1ABDFD8F0()
{
  result = qword_1EB4DA400;
  if (!qword_1EB4DA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA400);
  }

  return result;
}

uint64_t sub_1ABDFD990(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1ABDFD9DC, 0, 0);
}

uint64_t sub_1ABDFD9DC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = sub_1ABA93E20(v1 + 8, v1[11]);
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v0[2] = v1[2];
  v0[3] = v4;
  v0[4] = v5;
  v0[5] = v6;
  v0[6] = v7;
  v0[7] = v8;
  v9 = *(v2 + 80);
  v10 = *v3;

  v11 = swift_task_alloc();
  v0[12] = v11;
  v12 = *(v2 + 88);
  *v11 = v0;
  v11[1] = sub_1ABDFDAEC;
  v13 = v0[8];
  v14 = v0[9];

  return sub_1ABD3303C(v13, v0 + 2, v9, v14, v9, v12);
}

uint64_t sub_1ABDFDAEC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = v2[3];
  v6 = v2[5];
  v7 = v2[7];

  if (!v0)
  {
    v8 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABDFDC80, 0, 0);
}

void *sub_1ABDFDC98()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[7];

  sub_1ABA84B54(v0 + 8);
  return v0;
}

uint64_t sub_1ABDFDCE8()
{
  sub_1ABDFDC98();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABDFDD1C@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 16);
  v2 = *(*v1 + 24);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 56);
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t sub_1ABDFDD74(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1ABB385FC;

  return sub_1ABDFD990(a1, a2);
}

uint64_t CodableLocation.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CodableLocation() + 44);
  v4 = sub_1ABF21EB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CodableLocation()
{
  result = qword_1EB4DA430;
  if (!qword_1EB4DA430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static CodableLocation.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5] || a1[6] != a2[6])
  {
    return 0;
  }

  v2 = *(type metadata accessor for CodableLocation() + 44);

  return sub_1ABF21E54();
}

uint64_t sub_1ABDFDFE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6564757469746C61 && a2 == 0xE800000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001ABF7EEE0 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001ABF7EF00 == a2;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6465657073 && a2 == 0xE500000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x657372756F63 && a2 == 0xE600000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
              {

                return 7;
              }

              else
              {
                v13 = sub_1ABF25054();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABDFE264(char a1)
{
  result = 0x656475746974616CLL;
  switch(a1)
  {
    case 1:
      result = 0x64757469676E6F6CLL;
      break;
    case 2:
      result = 0x6564757469746C61;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6465657073;
      break;
    case 6:
      result = 0x657372756F63;
      break;
    case 7:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABDFE350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDFDFE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABDFE378(uint64_t a1)
{
  v2 = sub_1ABDFE628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDFE3B4(uint64_t a1)
{
  v2 = sub_1ABDFE628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4DA408, &qword_1ABF65F60);
  v6 = sub_1ABA7BB64(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v25[-v11];
  v13 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABDFE628();
  sub_1ABF252E4();
  v14 = *v3;
  v25[15] = 0;
  sub_1ABA7DDF0();
  if (!v2)
  {
    v15 = v3[1];
    v25[14] = 1;
    sub_1ABA7DDF0();
    v16 = v3[2];
    v25[13] = 2;
    sub_1ABA7DDF0();
    v17 = v3[3];
    v25[12] = 3;
    sub_1ABA7DDF0();
    v18 = v3[4];
    v25[11] = 4;
    sub_1ABA7DDF0();
    v19 = v3[5];
    v25[10] = 5;
    sub_1ABA7DDF0();
    v20 = v3[6];
    v25[9] = 6;
    sub_1ABA7DDF0();
    v21 = *(type metadata accessor for CodableLocation() + 44);
    v25[8] = 7;
    sub_1ABF21EB4();
    sub_1ABA8F920();
    sub_1ABDFEBD4(v22, v23);
    sub_1ABF24F84();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1ABDFE628()
{
  result = qword_1EB4DA410;
  if (!qword_1EB4DA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA410);
  }

  return result;
}

uint64_t CodableLocation.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1AC5AA8D0](*&v1);
  v2 = *(v0 + 8);
  sub_1ABA7C64C();
  v3 = *(v0 + 16);
  sub_1ABA7C64C();
  v4 = *(v0 + 24);
  sub_1ABA7C64C();
  v5 = *(v0 + 32);
  sub_1ABA7C64C();
  v6 = *(v0 + 40);
  sub_1ABA7C64C();
  v7 = *(v0 + 48);
  sub_1ABA7C64C();
  v8 = *(type metadata accessor for CodableLocation() + 44);
  sub_1ABF21EB4();
  sub_1ABA8F920();
  sub_1ABDFEBD4(v9, v10);
  return sub_1ABF23A94();
}

uint64_t CodableLocation.hashValue.getter()
{
  sub_1ABF25234();
  CodableLocation.hash(into:)();
  return sub_1ABF25294();
}

uint64_t CodableLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_1ABF21EB4();
  v5 = sub_1ABA7BB64(v4);
  v40 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1ABAD219C(&qword_1EB4DA420, &qword_1ABF65F68);
  v12 = sub_1ABA7BB64(v11);
  v42 = v13;
  v43 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v38 - v16;
  v18 = type metadata accessor for CodableLocation();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  v45 = a1;
  sub_1ABA93E20(a1, v22);
  sub_1ABDFE628();
  v44 = v17;
  sub_1ABF252C4();
  if (!v2)
  {
    v39 = v18;
    v24 = v10;
    v25 = v42;
    v26 = v43;
    v53 = 0;
    sub_1ABA81004();
    *v21 = v27;
    v52 = 1;
    sub_1ABF24E34();
    *(v21 + 1) = v28;
    v51 = 2;
    sub_1ABA81004();
    *(v21 + 2) = v29;
    v50 = 3;
    sub_1ABA81004();
    *(v21 + 3) = v30;
    v49 = 4;
    sub_1ABA81004();
    *(v21 + 4) = v31;
    v48 = 5;
    sub_1ABA81004();
    *(v21 + 5) = v32;
    v47 = 6;
    sub_1ABA81004();
    *(v21 + 6) = v34;
    v46 = 7;
    sub_1ABA8F920();
    sub_1ABDFEBD4(v35, v36);
    v37 = v44;
    sub_1ABF24E64();
    (*(v25 + 8))(v37, v26);
    (*(v40 + 32))(&v21[*(v39 + 44)], v24, v4);
    sub_1ABB5E1C0(v21, v41);
  }

  return sub_1ABA84B54(v45);
}

uint64_t sub_1ABDFEB50()
{
  sub_1ABF25234();
  CodableLocation.hash(into:)();
  return sub_1ABF25294();
}

uint64_t sub_1ABDFEBD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1ABDFEC48()
{
  result = sub_1ABF21EB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABDFEDB8()
{
  result = qword_1EB4DA440;
  if (!qword_1EB4DA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA440);
  }

  return result;
}

unint64_t sub_1ABDFEE10()
{
  result = qword_1EB4DA448;
  if (!qword_1EB4DA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA448);
  }

  return result;
}

unint64_t sub_1ABDFEE68()
{
  result = qword_1EB4DA450;
  if (!qword_1EB4DA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA450);
  }

  return result;
}

uint64_t LocationEmbedderInferenceInterface.Input.init(charArray:bpeArray:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1ABDFEEE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6172724172616863 && a2 == 0xE900000000000079;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7961727241657062 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABDFEFB0(char a1)
{
  if (a1)
  {
    return 0x7961727241657062;
  }

  else
  {
    return 0x6172724172616863;
  }
}

uint64_t sub_1ABDFEFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDFEEE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABDFF01C(uint64_t a1)
{
  v2 = sub_1ABDFF21C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDFF058(uint64_t a1)
{
  v2 = sub_1ABDFF21C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LocationEmbedderInferenceInterface.Input.encode(to:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4DA458, &qword_1ABF66180);
  sub_1ABA7BB64(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = *v0;
  v15 = v0[1];
  v12 = v2[3];
  v13 = v2[4];
  sub_1ABA80908(v2);
  v14 = sub_1ABDFF21C();

  sub_1ABA8177C();
  sub_1ABF252E4();
  v16 = 0;
  sub_1ABAD219C(&qword_1EB4DA468, &qword_1ABF66188);
  sub_1ABDFF440(&qword_1EB4DA470, &qword_1EB4DA478);
  sub_1ABA7EAAC();

  if (!v14)
  {
    v16 = 1;
    sub_1ABA7EAAC();
  }

  (*(v5 + 8))(v10, v3);
  sub_1ABA7BC90();
}

unint64_t sub_1ABDFF21C()
{
  result = qword_1EB4DA460;
  if (!qword_1EB4DA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA460);
  }

  return result;
}

void LocationEmbedderInferenceInterface.Input.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v12 = v11;
  v14 = v13;
  v15 = sub_1ABAD219C(&qword_1EB4DA480, &qword_1ABF66198);
  sub_1ABA7BB64(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BCE0();
  v21 = v12[3];
  v22 = v12[4];
  sub_1ABA80908(v12);
  sub_1ABDFF21C();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (v10)
  {
    sub_1ABA84B54(v12);
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DA468, &qword_1ABF66188);
    sub_1ABDFF440(&qword_1EB4DA488, &qword_1EB4DA490);
    sub_1ABA7C668();
    sub_1ABA7C668();
    v23 = *(v17 + 8);
    v24 = sub_1ABA8C53C();
    v25(v24);
    *v14 = a10;
    v14[1] = a10;

    sub_1ABA84B54(v12);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABDFF440(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4DA468, &qword_1ABF66188);
    sub_1ABDFF4CC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABDFF4CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D1A98, &qword_1ABF66190);
    result = sub_1ABA83BEC();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LocationEmbedderInferenceInterface.Output.embedding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1ABDFF5CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E69646465626D65 && a2 == 0xE900000000000067)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABDFF66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDFF5CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABDFF698(uint64_t a1)
{
  v2 = sub_1ABDFF878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDFF6D4(uint64_t a1)
{
  v2 = sub_1ABDFF878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationEmbedderInferenceInterface.Output.encode(to:)(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DA498, &qword_1ABF661A8);
  sub_1ABA7BB64(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABDFF878();
  sub_1ABF252E4();
  sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABDFF8CC(&qword_1EB4DA4A8);
  sub_1ABF24F84();
  return (*(v4 + 8))(v9, v2);
}

unint64_t sub_1ABDFF878()
{
  result = qword_1EB4DA4A0;
  if (!qword_1EB4DA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA4A0);
  }

  return result;
}

uint64_t sub_1ABDFF8CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D1AA8, &qword_1ABF661A0);
    result = sub_1ABA83BEC();
    atomic_store(result, a1);
  }

  return result;
}

void LocationEmbedderInferenceInterface.Output.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v24 = v4;
  v5 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  sub_1ABA7BB64(v5);
  v25 = v6;
  v8 = *(v7 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v26 = &v23 - v10;
  v11 = sub_1ABAD219C(&qword_1EB4DA4B0, &qword_1ABF661B0);
  sub_1ABA7BB64(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7E358();
  v17 = type metadata accessor for LocationEmbedderInferenceInterface.Output();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABDFF878();
  sub_1ABF252C4();
  if (!v0)
  {
    v22 = v25;
    sub_1ABDFF8CC(&qword_1EB4DA4B8);
    sub_1ABF24E64();
    (*(v13 + 8))(v1, v11);
    (*(v22 + 32))(v20, v26, v5);
    sub_1ABAE2D60(v20, v24);
  }

  sub_1ABA84B54(v3);
  sub_1ABA7BC90();
}

uint64_t type metadata accessor for LocationEmbedderInferenceInterface.Output()
{
  result = qword_1EB4CEA50;
  if (!qword_1EB4CEA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABDFFBF0(uint64_t a1)
{
  v2 = sub_1ABDFFE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDFFC2C(uint64_t a1)
{
  v2 = sub_1ABDFFE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABDFFC68(uint64_t a1)
{
  v2 = sub_1ABDFFEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDFFCA4(uint64_t a1)
{
  v2 = sub_1ABDFFEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LocationEmbedderInferenceInterface.Errors.InitError.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4DA4C0, &qword_1ABF661B8);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1ABAD219C(&qword_1EB4DA4C8, &qword_1ABF661C0);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BCE0();
  v12 = v1[3];
  v13 = v1[4];
  sub_1ABA80908(v1);
  sub_1ABDFFE58();
  sub_1ABA8177C();
  sub_1ABF252E4();
  sub_1ABDFFEAC();
  sub_1ABAA5A1C();
  v14 = sub_1ABA7F7CC();
  v15(v14);
  v16 = *(v8 + 8);
  v17 = sub_1ABA8C53C();
  v18(v17);
  sub_1ABA7BC90();
}

unint64_t sub_1ABDFFE58()
{
  result = qword_1EB4DA4D0;
  if (!qword_1EB4DA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA4D0);
  }

  return result;
}

unint64_t sub_1ABDFFEAC()
{
  result = qword_1EB4DA4D8;
  if (!qword_1EB4DA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA4D8);
  }

  return result;
}

void LocationEmbedderInferenceInterface.Errors.InitError.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DA4E0, &qword_1ABF661C8);
  sub_1ABA7BB64(v4);
  v39 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4DA4E8, &unk_1ABF661D0);
  sub_1ABA7BB64(v11);
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7E358();
  v15 = v3[3];
  v16 = v3[4];
  sub_1ABA80908(v3);
  sub_1ABDFFE58();
  sub_1ABA90AC4();
  if (v0)
  {
    goto LABEL_10;
  }

  v37[1] = v10;
  v38 = v3;
  v17 = sub_1ABF24EA4();
  v18 = sub_1ABAD4EA4(v17, 0);
  if (v20 == v19 >> 1)
  {
    v39 = v18;
LABEL_9:
    v28 = sub_1ABF24B44();
    swift_allocError();
    v30 = v29;
    v31 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v30 = &type metadata for LocationEmbedderInferenceInterface.Errors.InitError;
    sub_1ABF24DA4();
    sub_1ABA81B6C();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v32 = sub_1ABA7F7CC();
    v33(v32);
    v3 = v38;
LABEL_10:
    v36 = v3;
    goto LABEL_11;
  }

  sub_1ABA94CE0();
  if (v22 == v23)
  {
    __break(1u);
    return;
  }

  v24 = sub_1ABA8E438(v21);
  sub_1ABAD4E90(v24);
  sub_1ABA97D50();
  v25 = v16 == v15 >> 1;
  v26 = v38;
  v27 = v39;
  if (!v25)
  {
    v39 = v1;
    goto LABEL_9;
  }

  sub_1ABDFFEAC();
  sub_1ABA83BC4();
  swift_unknownObjectRelease();
  (*(v27 + 8))(v16, v4);
  v34 = sub_1ABA81020();
  v35(v34);
  v36 = v26;
LABEL_11:
  sub_1ABA84B54(v36);
  sub_1ABA7BC90();
}

uint64_t sub_1ABE0021C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABF91980 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABE002BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE0021C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE002E8(uint64_t a1)
{
  v2 = sub_1ABE008B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE00324(uint64_t a1)
{
  v2 = sub_1ABE008B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABE00360(uint64_t a1)
{
  v2 = sub_1ABE00904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE0039C(uint64_t a1)
{
  v2 = sub_1ABE00904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LocationEmbedderInferenceInterface.Errors.RunError.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4DA4F0, &qword_1ABF661E0);
  sub_1ABA7BB64(v2);
  v4 = *(v3 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1ABAD219C(&qword_1EB4DA4F8, &qword_1ABF661E8);
  sub_1ABA7BB64(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BCE0();
  v12 = v1[3];
  v13 = v1[4];
  sub_1ABA80908(v1);
  sub_1ABE008B0();
  sub_1ABA8177C();
  sub_1ABF252E4();
  sub_1ABE00904();
  sub_1ABAA5A1C();
  v14 = sub_1ABA7F7CC();
  v15(v14);
  v16 = *(v8 + 8);
  v17 = sub_1ABA8C53C();
  v18(v17);
  sub_1ABA7BC90();
}

void LocationEmbedderInferenceInterface.Errors.RunError.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DA510, &qword_1ABF661F0);
  sub_1ABA7BB64(v4);
  v39 = v5;
  v7 = *(v6 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4DA518, &qword_1ABF661F8);
  sub_1ABA7BB64(v11);
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7E358();
  v15 = v3[3];
  v16 = v3[4];
  sub_1ABA80908(v3);
  sub_1ABE008B0();
  sub_1ABA90AC4();
  if (v0)
  {
    goto LABEL_10;
  }

  v37[1] = v10;
  v38 = v3;
  v17 = sub_1ABF24EA4();
  v18 = sub_1ABAD4EA4(v17, 0);
  if (v20 == v19 >> 1)
  {
    v39 = v18;
LABEL_9:
    v28 = sub_1ABF24B44();
    swift_allocError();
    v30 = v29;
    v31 = *(sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050) + 48);
    *v30 = &type metadata for LocationEmbedderInferenceInterface.Errors.RunError;
    sub_1ABF24DA4();
    sub_1ABA81B6C();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v32 = sub_1ABA7F7CC();
    v33(v32);
    v3 = v38;
LABEL_10:
    v36 = v3;
    goto LABEL_11;
  }

  sub_1ABA94CE0();
  if (v22 == v23)
  {
    __break(1u);
    return;
  }

  v24 = sub_1ABA8E438(v21);
  sub_1ABAD4E90(v24);
  sub_1ABA97D50();
  v25 = v16 == v15 >> 1;
  v26 = v38;
  v27 = v39;
  if (!v25)
  {
    v39 = v1;
    goto LABEL_9;
  }

  sub_1ABE00904();
  sub_1ABA83BC4();
  swift_unknownObjectRelease();
  (*(v27 + 8))(v16, v4);
  v34 = sub_1ABA81020();
  v35(v34);
  v36 = v26;
LABEL_11:
  sub_1ABA84B54(v36);
  sub_1ABA7BC90();
}

unint64_t sub_1ABE008B0()
{
  result = qword_1EB4DA500;
  if (!qword_1EB4DA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA500);
  }

  return result;
}

unint64_t sub_1ABE00904()
{
  result = qword_1EB4DA508;
  if (!qword_1EB4DA508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA508);
  }

  return result;
}

unint64_t sub_1ABE0095C()
{
  result = qword_1EB4DA520;
  if (!qword_1EB4DA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA520);
  }

  return result;
}

unint64_t sub_1ABE009B4()
{
  result = qword_1EB4DA528;
  if (!qword_1EB4DA528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA528);
  }

  return result;
}

unint64_t sub_1ABE00A0C()
{
  result = qword_1EB4DA530;
  if (!qword_1EB4DA530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA530);
  }

  return result;
}

unint64_t sub_1ABE00A64()
{
  result = qword_1EB4DA538;
  if (!qword_1EB4DA538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA538);
  }

  return result;
}

unint64_t sub_1ABE00ABC()
{
  result = qword_1EB4DA540;
  if (!qword_1EB4DA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA540);
  }

  return result;
}

void sub_1ABE00B58()
{
  sub_1ABE00BC4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1ABE00BC4()
{
  if (!qword_1EB4CE770)
  {
    v0 = sub_1ABF23824();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4CE770);
    }
  }
}

_BYTE *sub_1ABE00C8C(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LocationEmbedderInferenceInterface.Input.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABE00E18()
{
  result = qword_1EB4DA548;
  if (!qword_1EB4DA548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA548);
  }

  return result;
}

unint64_t sub_1ABE00E70()
{
  result = qword_1EB4DA550;
  if (!qword_1EB4DA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA550);
  }

  return result;
}

unint64_t sub_1ABE00EC8()
{
  result = qword_1EB4DA558;
  if (!qword_1EB4DA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA558);
  }

  return result;
}

unint64_t sub_1ABE00F20()
{
  result = qword_1EB4DA560;
  if (!qword_1EB4DA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA560);
  }

  return result;
}

unint64_t sub_1ABE00F78()
{
  result = qword_1EB4DA568;
  if (!qword_1EB4DA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA568);
  }

  return result;
}

unint64_t sub_1ABE00FD0()
{
  result = qword_1EB4DA570;
  if (!qword_1EB4DA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA570);
  }

  return result;
}

unint64_t sub_1ABE01028()
{
  result = qword_1EB4DA578;
  if (!qword_1EB4DA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA578);
  }

  return result;
}

unint64_t sub_1ABE01080()
{
  result = qword_1EB4DA580;
  if (!qword_1EB4DA580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA580);
  }

  return result;
}

unint64_t sub_1ABE010D8()
{
  result = qword_1EB4DA588;
  if (!qword_1EB4DA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA588);
  }

  return result;
}

unint64_t sub_1ABE01130()
{
  result = qword_1EB4DA590;
  if (!qword_1EB4DA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA590);
  }

  return result;
}

unint64_t sub_1ABE01188()
{
  result = qword_1EB4DA598;
  if (!qword_1EB4DA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA598);
  }

  return result;
}

unint64_t sub_1ABE011E0()
{
  result = qword_1EB4DA5A0;
  if (!qword_1EB4DA5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA5A0);
  }

  return result;
}

unint64_t sub_1ABE01238()
{
  result = qword_1EB4DA5A8;
  if (!qword_1EB4DA5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA5A8);
  }

  return result;
}

unint64_t sub_1ABE01290()
{
  result = qword_1EB4DA5B0;
  if (!qword_1EB4DA5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA5B0);
  }

  return result;
}

unint64_t sub_1ABE012E8()
{
  result = qword_1EB4DA5B8;
  if (!qword_1EB4DA5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA5B8);
  }

  return result;
}

unint64_t sub_1ABE01340()
{
  result = qword_1EB4DA5C0;
  if (!qword_1EB4DA5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA5C0);
  }

  return result;
}

uint64_t sub_1ABE01420(uint64_t a1, uint64_t a2)
{
  v5 = sub_1ABAD219C(&qword_1EB4DA5E0, &qword_1ABF66B28);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v18 = a1 == 0x307475706E69 && a2 == 0xE600000000000000;
  if (v18 || (sub_1ABA805B4(), (sub_1ABF25054() & 1) != 0))
  {
    v19 = OBJC_IVAR____TtC20IntelligencePlatform13EmbedderInput_encoderCharInput;
    swift_beginAccess();
    sub_1ABE03920(v2 + v19, v17);
    v20 = sub_1ABAD219C(&qword_1EB4DA5E8, &unk_1ABF66B30);
    v21 = sub_1ABA7E1E0(v17, 1, v20);
    sub_1ABA925A4(v17, &qword_1EB4DA5E0, &qword_1ABF66B28);
    if (v21 == 1)
    {
      return 0;
    }

    sub_1ABE03920(v2 + v19, v14);
    result = sub_1ABA7E1E0(v14, 1, v20);
    if (result != 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (a1 != 0x317475706E69 || a2 != 0xE600000000000000)
    {
      sub_1ABA805B4();
      if ((sub_1ABF25054() & 1) == 0)
      {
        return 0;
      }
    }

    v24 = OBJC_IVAR____TtC20IntelligencePlatform13EmbedderInput_encoderBPEInput;
    swift_beginAccess();
    sub_1ABE03920(v2 + v24, v11);
    v25 = sub_1ABAD219C(&qword_1EB4DA5E8, &unk_1ABF66B30);
    v26 = sub_1ABA7E1E0(v11, 1, v25);
    sub_1ABA925A4(v11, &qword_1EB4DA5E0, &qword_1ABF66B28);
    if (v26 == 1)
    {
      return 0;
    }

    sub_1ABE03920(v2 + v24, v8);
    result = sub_1ABA7E1E0(v8, 1, v25);
    if (result != 1)
    {
LABEL_9:
      sub_1ABBA043C();
      return sub_1ABF246A4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABE0175C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC20IntelligencePlatform13EmbedderInput_encoderCharInput;
  v6 = sub_1ABAD219C(&qword_1EB4DA5E8, &unk_1ABF66B30);
  sub_1ABA7B9B4(v2 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC20IntelligencePlatform13EmbedderInput_encoderBPEInput;
  sub_1ABA7B9B4(v2 + OBJC_IVAR____TtC20IntelligencePlatform13EmbedderInput_encoderBPEInput, 1, 1, v6);
  swift_beginAccess();
  sub_1ABE03990(a1, v2 + v5);
  swift_endAccess();
  swift_beginAccess();
  sub_1ABE03990(a2, v2 + v7);
  swift_endAccess();
  return v2;
}

uint64_t sub_1ABE0183C()
{
  sub_1ABA925A4(v0 + OBJC_IVAR____TtC20IntelligencePlatform13EmbedderInput_encoderCharInput, &qword_1EB4DA5E0, &qword_1ABF66B28);
  sub_1ABA925A4(v0 + OBJC_IVAR____TtC20IntelligencePlatform13EmbedderInput_encoderBPEInput, &qword_1EB4DA5E0, &qword_1ABF66B28);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE018FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7079546C65646F6DLL && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABE0199C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE018FC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABE019C8(uint64_t a1)
{
  v2 = sub_1ABE01B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE01A04(uint64_t a1)
{
  v2 = sub_1ABE01B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationEmbedderInferenceServiceDefinition.ConfigParameters.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4DA5C8, &qword_1ABF66B10);
  v4 = sub_1ABA938E0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE01B68();
  sub_1ABF252E4();
  sub_1ABF24F34();
  v12 = *(v6 + 8);
  v13 = sub_1ABA805B4();
  return v14(v13);
}

unint64_t sub_1ABE01B68()
{
  result = qword_1EB4DA5D0;
  if (!qword_1EB4DA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA5D0);
  }

  return result;
}

uint64_t LocationEmbedderInferenceServiceDefinition.ConfigParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DA5D8, &qword_1ABF66B18);
  v6 = sub_1ABA938E0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE01B68();
  sub_1ABF252C4();
  if (!v2)
  {
    v12 = sub_1ABF24E14();
    v14 = v13;
    v15 = *(v8 + 8);
    v16 = sub_1ABA805B4();
    v17(v16);
    *a2 = v12;
    a2[1] = v14;
  }

  return sub_1ABA84B54(a1);
}

void LocationEmbedderInferenceServiceDefinition.Runner.cost.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
}

uint64_t sub_1ABE01D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1ABE01DA8, 0, 0);
}

uint64_t sub_1ABE01DA8()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  swift_defaultActor_initialize();
  *(v1 + 128) = v3;
  *(v1 + 136) = v2;
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;
  v4 = objc_allocWithZone(MEMORY[0x1E695FEB0]);

  v5 = [v4 init];
  v0[7] = v5;
  [v5 setComputeUnits_];
  [v5 setAllowBackgroundGPUCompute_];
  v6 = v5;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1ABE01EF8;
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_1ABC20104(v10, v8, 0xD000000000000010, 0x80000001ABF91B00, v5);
}

uint64_t sub_1ABE01EF8()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D4E0();
  *v4 = v3;
  v5 = v2[8];
  v6 = *v1;
  sub_1ABA7D4E0();
  *v7 = v6;
  *(v9 + 72) = v8;
  *(v9 + 80) = v0;

  v10 = v2[7];
  v11 = v2[3];
  if (v0)
  {

    v12 = sub_1ABE021DC;
  }

  else
  {

    v12 = sub_1ABE02050;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1ABE02050()
{
  v1 = v0[9];
  if (!v1)
  {
    v3 = v0[7];
    sub_1ABE00A0C();
    swift_allocError();
    swift_willThrow();

    v4 = v0[6];
    v5 = v0[4];
    v6 = *(v0[5] + 136);

    swift_defaultActor_destroy();

    sub_1ABA83C0C();
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[5];
  *(v2 + 144) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1ABE02160, v2, 0);
}

uint64_t sub_1ABE02160()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);
  v4 = *(v0 + 40);

  return v3(v4);
}

uint64_t sub_1ABE021DC()
{
  sub_1ABA7BC04();

  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(*(v0 + 40) + 136);

  swift_defaultActor_destroy();

  sub_1ABA83C0C();
  sub_1ABA7BBE0();

  return v5();
}

uint64_t LocationEmbedderInferenceServiceDefinition.Runner.run(input:context:)()
{
  sub_1ABA7BC04();
  v3 = v2;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  v5 = *(*(sub_1ABAD219C(&qword_1EB4D4C90, &unk_1ABF479F0) - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  v6 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  *(v1 + 56) = v6;
  v7 = *(v6 - 8);
  *(v1 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  v9 = *(*(sub_1ABAD219C(&qword_1EB4DA5E0, &qword_1ABF66B28) - 8) + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  v10 = sub_1ABAD219C(&qword_1EB4DA5E8, &unk_1ABF66B30);
  *(v1 + 96) = v10;
  v11 = *(v10 - 8);
  *(v1 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = *v3;

  return MEMORY[0x1EEE6DFA0](sub_1ABE02430, v0, 0);
}

void sub_1ABE02430()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v6 = *(v1 + 16);
    while (1)
    {
      v7 = *(*v4 + 16);
      if (v7)
      {
        break;
      }

LABEL_12:
      if (++v3 == v2)
      {
        goto LABEL_16;
      }

      v6 = *(v1 + 16);
      if (!v6)
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    if (v3 >= v6)
    {
      goto LABEL_36;
    }

    v8 = 0;
    while (1)
    {
      v9 = *(v4 + 8 * v3);
      if (v8 >= *(v9 + 16))
      {
        break;
      }

      v10 = *(v9 + 4 * v8 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = *(v5 + 16);
        sub_1ABAD9278();
        v5 = v13;
      }

      v11 = *(v5 + 16);
      if (v11 >= *(v5 + 24) >> 1)
      {
        sub_1ABAD9278();
        v5 = v14;
      }

      ++v8;
      *(v5 + 16) = v11 + 1;
      *(v5 + 4 * v11 + 32) = v10;
      if (v7 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v5 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v42[18] = v5;
    v15 = v42[17];
    v16 = *(v15 + 16);
    if (!v16)
    {
LABEL_30:
      v19 = MEMORY[0x1E69E7CC0];
LABEL_31:
      v42[19] = v19;
      v29 = v42[15];
      v31 = v42[12];
      v30 = v42[13];
      v39 = v42[14];
      v40 = v42[11];
      v41 = v42[10];
      v44 = v42[5];
      v42[2] = v5;

      sub_1ABAD219C(&qword_1EB4D1A98, &qword_1ABF66190);
      sub_1ABAB47C4(&qword_1EB4DA5F0, &qword_1EB4D1A98, &qword_1ABF66190);
      sub_1ABF23814();
      v42[3] = v19;

      sub_1ABF23814();
      v32 = *(v30 + 16);
      v32(v40, v29, v31);
      sub_1ABA7B9B4(v40, 0, 1, v31);
      v32(v41, v39, v31);
      sub_1ABA7B9B4(v41, 0, 1, v31);
      v33 = type metadata accessor for EmbedderInput();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      v36 = swift_allocObject();
      v42[20] = v36;
      sub_1ABE0175C(v40, v41);
      v37 = *(v44 + 144);

      v38 = swift_task_alloc();
      v42[21] = v38;
      *v38 = v42;
      v38[1] = sub_1ABE02884;

      sub_1ABDF7E7C(v36);
      return;
    }

    v17 = 0;
    v18 = v15 + 32;
    v19 = MEMORY[0x1E69E7CC0];
    v20 = *(v15 + 16);
    v43 = v42[17];
    while (1)
    {
      v21 = *(*v18 + 16);
      if (v21)
      {
        break;
      }

LABEL_27:
      if (++v17 == v16)
      {
        goto LABEL_31;
      }

      v20 = *(v43 + 16);
      if (!v20)
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    if (v17 >= v20)
    {
      goto LABEL_37;
    }

    v22 = 0;
    while (1)
    {
      v23 = *(v18 + 8 * v17);
      if (v22 >= *(v23 + 16))
      {
        break;
      }

      v24 = *(v23 + 4 * v22 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = *(v19 + 16);
        sub_1ABAD9278();
        v19 = v27;
      }

      v25 = *(v19 + 16);
      if (v25 >= *(v19 + 24) >> 1)
      {
        sub_1ABAD9278();
        v19 = v28;
      }

      ++v22;
      *(v19 + 16) = v25 + 1;
      *(v19 + 4 * v25 + 32) = v24;
      if (v21 == v22)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1ABE02884()
{
  sub_1ABA7BC04();
  v2 = *v1;
  v3 = *v1;
  sub_1ABA7BBC0();
  *v4 = v3;
  v5 = v2[21];
  v6 = *v1;
  sub_1ABA7D4E0();
  *v7 = v6;
  v3[22] = v8;
  v3[23] = v0;

  v9 = v2[20];
  if (v0)
  {
    v11 = v3[18];
    v10 = v3[19];
    v12 = v3[5];

    v13 = sub_1ABE02C6C;
    v14 = v12;
  }

  else
  {
    v15 = v3[5];

    v13 = sub_1ABE029DC;
    v14 = v15;
  }

  return MEMORY[0x1EEE6DFA0](v13, v14, 0);
}

uint64_t sub_1ABE029DC()
{
  v1 = v0[22];
  v2 = sub_1ABF23BD4();
  v3 = [v1 featureValueForName_];

  v5 = v0[6];
  v4 = v0[7];
  if (!v3)
  {
    sub_1ABA7B9B4(v0[6], 1, 1, v0[7]);
    goto LABEL_7;
  }

  v6 = v0[6];
  sub_1ABF24694();

  if (sub_1ABA7E1E0(v5, 1, v4) == 1)
  {
LABEL_7:
    sub_1ABA925A4(v0[6], &qword_1EB4D4C90, &unk_1ABF479F0);
    return sub_1ABF24CD4();
  }

  v7 = v0[22];
  v8 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  v25 = v0[11];
  v26 = v0[10];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  v22 = v0[6];
  v16 = v0[4];
  swift_unknownObjectRelease();

  v17 = *(v12 + 8);
  v17(v10, v11);
  v17(v9, v11);

  v18 = *(v14 + 32);
  v18(v13, v22, v15);
  v18(v16, v13, v15);
  v19 = v16 + *(sub_1ABAD219C(&qword_1EB4DA5F8, &qword_1ABF66B40) + 28);
  *v19 = 0;
  *(v19 + 8) = 1;

  sub_1ABA7BBE0();

  return v20();
}

uint64_t sub_1ABE02C6C()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = v0[6];

  v10 = *(v5 + 8);
  v10(v2, v4);
  v10(v3, v4);

  sub_1ABA7BBE0();
  v12 = v0[23];

  return v11();
}

uint64_t LocationEmbedderInferenceServiceDefinition.Runner.deinit()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LocationEmbedderInferenceServiceDefinition.Runner.__deallocating_deinit()
{
  LocationEmbedderInferenceServiceDefinition.Runner.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1ABE02E04()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1ABE02EB0;

  return LocationEmbedderInferenceServiceDefinition.Runner.run(input:context:)();
}

uint64_t sub_1ABE02EB0()
{
  sub_1ABA7BBF8();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1ABA7BBC0();
  *v3 = v2;

  sub_1ABA7BBE0();

  return v4();
}

uint64_t static LocationEmbedderInferenceServiceDefinition.buildRunner(config:context:)()
{
  sub_1ABA7BBF8();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v0[2] = v4;
  v0[3] = v2;
  v0[4] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1ABE03004, 0, 0);
}

uint64_t sub_1ABE03004()
{
  sub_1ABA7BC04();
  v1 = v0[2];
  type metadata accessor for LocationEmbedderInferenceServiceDefinition.Runner();
  swift_allocObject();

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1ABE030C8;
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  return sub_1ABE01D5C(v4, v3, v5);
}

uint64_t sub_1ABE030C8()
{
  sub_1ABA7BBF8();
  v3 = v2;
  v4 = *(*v1 + 40);
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_1ABE031DC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1ABE0327C;

  return static LocationEmbedderInferenceServiceDefinition.buildRunner(config:context:)();
}

uint64_t sub_1ABE0327C()
{
  sub_1ABA7BC04();
  v3 = v2;
  v4 = *v1;
  sub_1ABA7D4E0();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v1;
  sub_1ABA7BBC0();
  *v9 = v8;

  if (!v0)
  {
    **(v4 + 16) = v3;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t type metadata accessor for EmbedderInput()
{
  result = qword_1EB4DA630;
  if (!qword_1EB4DA630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1ABE033EC(uint64_t a1)
{
  *(a1 + 8) = sub_1ABE0341C();
  result = sub_1ABE03470();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABE0341C()
{
  result = qword_1EB4DA600;
  if (!qword_1EB4DA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA600);
  }

  return result;
}

unint64_t sub_1ABE03470()
{
  result = qword_1EB4DA608;
  if (!qword_1EB4DA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA608);
  }

  return result;
}

unint64_t sub_1ABE034C4(uint64_t a1)
{
  result = sub_1ABE034EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABE034EC()
{
  result = qword_1EB4DA610;
  if (!qword_1EB4DA610)
  {
    type metadata accessor for LocationEmbedderInferenceServiceDefinition.Runner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA610);
  }

  return result;
}

unint64_t sub_1ABE03588()
{
  result = qword_1EB4DA620;
  if (!qword_1EB4DA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA620);
  }

  return result;
}

unint64_t sub_1ABE035E0()
{
  result = qword_1EB4DA628;
  if (!qword_1EB4DA628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA628);
  }

  return result;
}

void sub_1ABE03640()
{
  sub_1ABE036D0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1ABE036D0()
{
  if (!qword_1EB4DA640)
  {
    sub_1ABAE2850(&qword_1EB4DA5E8, &unk_1ABF66B30);
    v0 = sub_1ABF247E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4DA640);
    }
  }
}

_BYTE *sub_1ABE0376C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABE0381C()
{
  result = qword_1EB4DA648;
  if (!qword_1EB4DA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA648);
  }

  return result;
}

unint64_t sub_1ABE03874()
{
  result = qword_1EB4DA650;
  if (!qword_1EB4DA650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA650);
  }

  return result;
}

unint64_t sub_1ABE038CC()
{
  result = qword_1EB4DA658;
  if (!qword_1EB4DA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA658);
  }

  return result;
}

uint64_t sub_1ABE03920(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DA5E0, &qword_1ABF66B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABE03990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DA5E0, &qword_1ABF66B28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LocationEntityCard.summaryInfos.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summaryInfos.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t LocationEntityCard.summary7Days.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summary7Days.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t LocationEntityCard.summary7DaysWithPeople.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summary7DaysWithPeople.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t LocationEntityCard.summaryAllTime.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summaryAllTime.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t LocationEntityCard.summaryAllTimeWithPeople.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summaryAllTimeWithPeople.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t LocationEntityCard.name.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.name.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t LocationEntityCard.city.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.city.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t LocationEntityCard.summary7DaysActivities.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summary7DaysActivities.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 128);

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t LocationEntityCard.summary7DaysSpantext.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summary7DaysSpantext.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 144);

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t LocationEntityCard.summary7DaysWithPeopleActivities.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summary7DaysWithPeopleActivities.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 160);

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t LocationEntityCard.summary7DaysWithPeopleSpantext.getter()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summary7DaysWithPeopleSpantext.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 176);

  *(v1 + 168) = v2;
  *(v1 + 176) = v0;
  return result;
}

uint64_t LocationEntityCard.summary7DaysWithPeoplePeople.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summary7DaysWithPeoplePeople.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 192);

  *(v1 + 184) = v2;
  *(v1 + 192) = v0;
  return result;
}

uint64_t LocationEntityCard.summary7DaysWithPeoplePeopleNames.getter()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summary7DaysWithPeoplePeopleNames.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 208);

  *(v1 + 200) = v2;
  *(v1 + 208) = v0;
  return result;
}

uint64_t LocationEntityCard.summaryAllTimeActivities.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summaryAllTimeActivities.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 224);

  *(v1 + 216) = v2;
  *(v1 + 224) = v0;
  return result;
}

uint64_t LocationEntityCard.summaryAllTimeSpantext.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summaryAllTimeSpantext.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 240);

  *(v1 + 232) = v2;
  *(v1 + 240) = v0;
  return result;
}

uint64_t LocationEntityCard.summaryAllTimeWithPeopleActivities.getter()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summaryAllTimeWithPeopleActivities.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 256);

  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  return result;
}

uint64_t LocationEntityCard.summaryAllTimeWithPeopleSpantext.getter()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summaryAllTimeWithPeopleSpantext.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 272);

  *(v1 + 264) = v2;
  *(v1 + 272) = v0;
  return result;
}

uint64_t LocationEntityCard.summaryAllTimeWithPeoplePeople.getter()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summaryAllTimeWithPeoplePeople.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 288);

  *(v1 + 280) = v2;
  *(v1 + 288) = v0;
  return result;
}

uint64_t LocationEntityCard.summaryAllTimeWithPeoplePeopleNames.getter()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return sub_1ABA7D000();
}

uint64_t LocationEntityCard.summaryAllTimeWithPeoplePeopleNames.setter()
{
  sub_1ABA7FC9C();
  v3 = *(v1 + 304);

  *(v1 + 296) = v2;
  *(v1 + 304) = v0;
  return result;
}

uint64_t sub_1ABE043B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x497972616D6D7573 && a2 == 0xEC000000736F666ELL;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x377972616D6D7573 && a2 == 0xEC00000073796144;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001ABF91B40 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x417972616D6D7573 && a2 == 0xEE00656D69546C6CLL;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000001ABF91B60 == a2;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1701667182 && a2 == 0xE400000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 2037672291 && a2 == 0xE400000000000000;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000016 && 0x80000001ABF91B80 == a2;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000014 && 0x80000001ABF91BA0 == a2;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000020 && 0x80000001ABF91BC0 == a2;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001ELL && 0x80000001ABF91BF0 == a2;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001CLL && 0x80000001ABF91C10 == a2;
                          if (v17 || (sub_1ABF25054() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000021 && 0x80000001ABF91C30 == a2;
                            if (v18 || (sub_1ABF25054() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000018 && 0x80000001ABF91C60 == a2;
                              if (v19 || (sub_1ABF25054() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000016 && 0x80000001ABF91C80 == a2;
                                if (v20 || (sub_1ABF25054() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000022 && 0x80000001ABF91CA0 == a2;
                                  if (v21 || (sub_1ABF25054() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000020 && 0x80000001ABF91CD0 == a2;
                                    if (v22 || (sub_1ABF25054() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD00000000000001ELL && 0x80000001ABF91D00 == a2;
                                      if (v23 || (sub_1ABF25054() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0xD000000000000023 && 0x80000001ABF91D20 == a2)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_1ABF25054();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
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

unint64_t sub_1ABE049A4(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = 0x497972616D6D7573;
      break;
    case 2:
      result = 0x377972616D6D7573;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x417972616D6D7573;
      break;
    case 5:
    case 14:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 2037672291;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
    case 17:
      result = 0xD000000000000020;
      break;
    case 11:
    case 18:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 13:
      result = 0xD000000000000021;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000022;
      break;
    case 19:
      result = 0xD000000000000023;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABE04BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABE043B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABE04BFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABE0499C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABE04C24(uint64_t a1)
{
  v2 = sub_1ABE0514C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABE04C60(uint64_t a1)
{
  v2 = sub_1ABE0514C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationEntityCard.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4DA660, &qword_1ABF66E30);
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v42 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[3];
  v43[1] = v1[2];
  v44 = v11;
  v14 = v1[5];
  v42[34] = v1[4];
  v43[0] = v13;
  v15 = v1[7];
  v42[32] = v1[6];
  v42[33] = v14;
  v16 = v1[8];
  v17 = v1[9];
  v42[30] = v15;
  v42[31] = v16;
  v18 = v1[10];
  v19 = v1[11];
  v42[28] = v17;
  v42[29] = v18;
  v20 = v1[12];
  v21 = v1[13];
  v42[26] = v19;
  v42[27] = v20;
  v22 = v1[14];
  v23 = v1[15];
  v42[24] = v21;
  v42[25] = v22;
  v24 = v1[16];
  v25 = v1[17];
  v42[22] = v23;
  v42[23] = v24;
  v26 = v1[18];
  v27 = v1[19];
  v42[20] = v25;
  v42[21] = v26;
  v29 = v1[20];
  v28 = v1[21];
  v42[18] = v27;
  v42[19] = v29;
  v42[16] = v28;
  v30 = v1[23];
  v42[17] = v1[22];
  v42[14] = v30;
  v31 = v1[25];
  v42[15] = v1[24];
  v42[12] = v31;
  v32 = v1[27];
  v42[13] = v1[26];
  v42[10] = v32;
  v33 = v1[29];
  v42[11] = v1[28];
  v42[8] = v33;
  v34 = v1[31];
  v42[9] = v1[30];
  v42[6] = v34;
  v35 = v1[33];
  v42[7] = v1[32];
  v42[2] = v35;
  v36 = v1[35];
  v42[3] = v1[34];
  v42[4] = v36;
  v37 = v1[37];
  v42[5] = v1[36];
  v42[1] = v37;
  v38 = v1[38];
  v39 = a1[4];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE0514C();
  sub_1ABF252E4();
  v47[7] = 0;
  v40 = v45;
  sub_1ABF24FA4();
  if (!v40)
  {
    v45 = v38;
    sub_1ABA81B94(1);
    sub_1ABA9038C();
    sub_1ABA81B94(2);
    sub_1ABA9038C();
    sub_1ABA81B94(3);
    sub_1ABA9038C();
    sub_1ABA81B94(4);
    sub_1ABA9038C();
    sub_1ABA81B94(5);
    sub_1ABA9038C();
    sub_1ABA81B94(6);
    sub_1ABA9038C();
    sub_1ABA81B94(7);
    sub_1ABA9038C();
    sub_1ABA81B94(8);
    sub_1ABA9038C();
    sub_1ABA81B94(9);
    sub_1ABA9038C();
    sub_1ABA81B94(10);
    sub_1ABF24ED4();
    sub_1ABA81B94(11);
    sub_1ABA938F8(&v51);
    sub_1ABA81B94(12);
    sub_1ABA938F8(&v50);
    sub_1ABA81B94(13);
    sub_1ABA938F8(&v49);
    sub_1ABA81B94(14);
    sub_1ABA938F8(&v48);
    sub_1ABA81B94(15);
    sub_1ABA938F8(v47);
    sub_1ABA81B94(16);
    sub_1ABA938F8(v46);
    sub_1ABA81B94(17);
    sub_1ABA938F8(v43);
    sub_1ABA81B94(18);
    sub_1ABA938F8(&v44);
    sub_1ABA81B94(19);
    sub_1ABF24ED4();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_1ABE0514C()
{
  result = qword_1EB4DA668;
  if (!qword_1EB4DA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA668);
  }

  return result;
}

uint64_t LocationEntityCard.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4DA670, &qword_1ABF66E38);
  v6 = sub_1ABA7BB64(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  v68 = a1;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABE0514C();
  sub_1ABF252C4();
  if (v2)
  {
    sub_1ABA8F938();
    sub_1ABA8C3D0();
    sub_1ABA84B54(a1);
  }

  else
  {
    LOBYTE(v76[0]) = 0;
    v10 = sub_1ABF24E84();
    sub_1ABA7DE0C(1);
    v11 = sub_1ABF24DB4();
    v63 = v12;
    sub_1ABA7DE0C(2);
    v13 = sub_1ABF24DB4();
    v62 = v14;
    sub_1ABA7DE0C(3);
    v60 = sub_1ABF24DB4();
    v61 = v15;
    sub_1ABA7DE0C(4);
    v58 = sub_1ABF24DB4();
    v59 = v16;
    sub_1ABA7DE0C(5);
    v56 = sub_1ABF24DB4();
    v57 = v17;
    sub_1ABA7DE0C(6);
    v54 = sub_1ABF24DB4();
    v55 = v18;
    sub_1ABA7DE0C(7);
    v51 = sub_1ABF24DB4();
    v53 = v19;
    sub_1ABA7DE0C(8);
    v50 = sub_1ABF24DB4();
    v52 = v20;
    v49 = a2;
    sub_1ABA7DE0C(9);
    v21 = sub_1ABF24DB4();
    v74 = v22;
    v23 = v21;
    sub_1ABA7DE0C(10);
    v48 = sub_1ABF24DB4();
    v73 = v24;
    sub_1ABA7DE0C(11);
    v47 = sub_1ABF24DB4();
    v72 = v25;
    sub_1ABA7DE0C(12);
    v46 = sub_1ABF24DB4();
    v71 = v26;
    sub_1ABA7DE0C(13);
    v45 = sub_1ABF24DB4();
    v70 = v27;
    sub_1ABA7DE0C(14);
    v44 = sub_1ABF24DB4();
    v69 = v28;
    sub_1ABA7DE0C(15);
    v43 = sub_1ABF24DB4();
    v67 = v29;
    sub_1ABA7DE0C(16);
    v42 = sub_1ABF24DB4();
    v65 = v30;
    sub_1ABA7DE0C(17);
    v41 = sub_1ABF24DB4();
    v66 = v31;
    sub_1ABA7DE0C(18);
    v40 = sub_1ABF24DB4();
    v64 = v32;
    v77 = 19;
    v33 = sub_1ABF24DB4();
    v39 = v34;
    v35 = v33;
    v36 = sub_1ABA7C698();
    v37(v36);
    v75[0] = v10;
    v75[1] = v11;
    v75[2] = v63;
    v75[3] = v13;
    v75[4] = v62;
    v75[5] = v60;
    v75[6] = v61;
    v75[7] = v58;
    v75[8] = v59;
    v75[9] = v56;
    v75[10] = v57;
    v75[11] = v54;
    v75[12] = v55;
    v75[13] = v51;
    v75[14] = v53;
    v75[15] = v50;
    v75[16] = v52;
    v75[17] = v23;
    v75[18] = v74;
    v75[19] = v48;
    v75[20] = v73;
    v75[21] = v47;
    v75[22] = v72;
    v75[23] = v46;
    v75[24] = v71;
    v75[25] = v45;
    v75[26] = v70;
    v75[27] = v44;
    v75[28] = v69;
    v75[29] = v43;
    v75[30] = v67;
    v75[31] = v42;
    v75[32] = v65;
    v75[33] = v41;
    v75[34] = v66;
    v75[35] = v40;
    v75[36] = v64;
    v75[37] = v35;
    v75[38] = v39;
    memcpy(v49, v75, 0x138uLL);
    sub_1ABE05A28(v75, v76);
    sub_1ABA84B54(v68);
    v76[0] = v10;
    v76[1] = v11;
    v76[2] = v63;
    v76[3] = v13;
    v76[4] = v62;
    v76[5] = v60;
    v76[6] = v61;
    v76[7] = v58;
    v76[8] = v59;
    v76[9] = v56;
    v76[10] = v57;
    v76[11] = v54;
    v76[12] = v55;
    v76[13] = v51;
    v76[14] = v53;
    v76[15] = v50;
    v76[16] = v52;
    v76[17] = v23;
    v76[18] = v74;
    v76[19] = v48;
    v76[20] = v73;
    v76[21] = v47;
    v76[22] = v72;
    v76[23] = v46;
    v76[24] = v71;
    v76[25] = v45;
    v76[26] = v70;
    v76[27] = v44;
    v76[28] = v69;
    v76[29] = v43;
    v76[30] = v67;
    v76[31] = v42;
    v76[32] = v65;
    v76[33] = v41;
    v76[34] = v66;
    v76[35] = v40;
    v76[36] = v64;
    v76[37] = v35;
    v76[38] = v39;
    return sub_1ABE05A60(v76);
  }
}

uint64_t sub_1ABE05AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE06B6C();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1ABE05B5C()
{
  sub_1ABE06B18();

  return sub_1ABF22804();
}

uint64_t sub_1ABE05C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABE06AC4();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

void ViewService.locationEntityCardsView.getter(void *a1@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v5 = sub_1ABF23BD4();
  v17[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v17];

  v7 = v17[0];
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v8[5];
    v10 = v8[6];
    sub_1ABA93E20(v8 + 2, v9);
    v11 = *(v10 + 8);
    v12 = v7;
    v13 = v11(v6, v9, v10);
    if (v2)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1ABE05E40(v6, v13, v14, a1);
    }
  }

  else
  {
    v15 = v17[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1ABE05E40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1ABF23C04();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = 0x80000001ABF91D80;
    v10 = 0xD000000000000018;
  }

  *a4 = a1;
  a4[1] = v10;
  a4[2] = v12;
  a4[3] = a2;
  a4[4] = a3;
}

uint64_t ViewService.LocationEntityCardsView.getEntityCard(locationId:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  swift_getObjectType();
  return sub_1ABF22464();
}

void *sub_1ABE05F8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v24[1] = a1;
  v24[0] = a4;
  v6 = sub_1ABAD219C(&qword_1EB4DA6C8, &qword_1ABF67298);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v24 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4DA6D0, &qword_1ABF672A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v24 - v14;
  v17 = *(a2 + 8);
  v16 = *(a2 + 16);

  sub_1ABF22D04();
  v27[0] = a3;
  LOBYTE(v27[1]) = 0;
  sub_1ABF22C84();
  sub_1ABAB47C4(&qword_1EB4DA6E8, &qword_1EB4DA6C8, &qword_1ABF67298);
  sub_1ABE06BC0();
  v18 = v24[2];
  sub_1ABF22244();
  if (v18)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    memcpy(v27, v28, sizeof(v27));
    if (sub_1ABE06C14(v27) != 1)
    {
      (*(v12 + 8))(v15, v11);
      return memcpy(v24[0], v27, 0x138uLL);
    }

    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1ABF24AB4();

    v25 = 0xD000000000000021;
    v26 = 0x80000001ABF91D50;
    v29 = a3;
    v19 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v19);

    v20 = v25;
    v21 = v26;
    sub_1ABB93C20();
    swift_allocError();
    *v22 = v20;
    *(v22 + 8) = v21;
    *(v22 + 16) = 1;
    swift_willThrow();
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t ViewService.LocationEntityCardsView.getEntityCards(locationIds:)()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 4);
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4DA678, &qword_1ABF66E40);
  result = sub_1ABF22464();
  if (!v1)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1ABE0639C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v23 = a1;
  v21 = a4;
  v22 = sub_1ABAD219C(&qword_1EB4DA6C8, &qword_1ABF67298);
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v21 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4DA6D0, &qword_1ABF672A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);

  sub_1ABF22D04();
  v26[6] = a3;
  v25[3] = sub_1ABF22D14();
  v25[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v25);
  sub_1ABF22D24();
  v26[3] = sub_1ABF22424();
  v26[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v26);
  sub_1ABAD219C(&qword_1EB4DA6D8, &qword_1ABF672A8);
  sub_1ABAB47C4(&qword_1EB4DA6E0, &qword_1EB4DA6D8, &qword_1ABF672A8);
  sub_1ABF23EE4();
  sub_1ABA84B54(v25);
  sub_1ABF22CA4();
  sub_1ABA84B54(v26);
  sub_1ABAB47C4(&qword_1EB4DA6E8, &qword_1EB4DA6C8, &qword_1ABF67298);
  sub_1ABE06BC0();
  v17 = v22;
  v18 = v24;
  v19 = sub_1ABF22234();
  (*(v6 + 8))(v9, v17);
  result = (*(v11 + 8))(v14, v10);
  if (!v18)
  {
    *v21 = v19;
  }

  return result;
}

unint64_t sub_1ABE066BC()
{
  result = qword_1EB4DA680;
  if (!qword_1EB4DA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA680);
  }

  return result;
}

unint64_t sub_1ABE06714()
{
  result = qword_1EB4DA688;
  if (!qword_1EB4DA688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA688);
  }

  return result;
}

unint64_t sub_1ABE0676C()
{
  result = qword_1EB4DA690;
  if (!qword_1EB4DA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA690);
  }

  return result;
}

uint64_t sub_1ABE067C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 312))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABE0681C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 312) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationEntityCard.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABE069C0()
{
  result = qword_1EB4DA698;
  if (!qword_1EB4DA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA698);
  }

  return result;
}

unint64_t sub_1ABE06A18()
{
  result = qword_1EB4DA6A0;
  if (!qword_1EB4DA6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA6A0);
  }

  return result;
}

unint64_t sub_1ABE06A70()
{
  result = qword_1EB4DA6A8;
  if (!qword_1EB4DA6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA6A8);
  }

  return result;
}

unint64_t sub_1ABE06AC4()
{
  result = qword_1EB4DA6B0;
  if (!qword_1EB4DA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA6B0);
  }

  return result;
}

unint64_t sub_1ABE06B18()
{
  result = qword_1EB4DA6B8;
  if (!qword_1EB4DA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA6B8);
  }

  return result;
}

unint64_t sub_1ABE06B6C()
{
  result = qword_1EB4DA6C0;
  if (!qword_1EB4DA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA6C0);
  }

  return result;
}

unint64_t sub_1ABE06BC0()
{
  result = qword_1EB4DA6F0;
  if (!qword_1EB4DA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DA6F0);
  }

  return result;
}

uint64_t sub_1ABE06C14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_DWORD *UnsafeMutablePointer<A>.init()()
{
  result = swift_slowAlloc();
  *result = 0;
  return result;
}

void *UnsafeMutablePointer<A>.init()()
{
  result = swift_slowAlloc();
  *result = 0;
  return result;
}

uint64_t UnfairLockedBox.init(contents:)()
{
  sub_1ABA8F958();
  v4 = *(v3 + 96);
  v5 = swift_slowAlloc();
  *(v1 + v4) = v5;
  *v5 = 0;
  sub_1ABA7D5F0();
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(v6 + 88), v0);
  return v1;
}

uint64_t UnfairLockedBox.access<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v14 = a3;
  v5 = *(*v3 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - v8;
  os_unfair_lock_lock(*(v3 + *(v10 + 96)));
  v11 = *(*v3 + 88);
  swift_beginAccess();
  (*(v6 + 16))(v9, v3 + v11, v5);
  a1(v9);
  (*(v6 + 8))(v9, v5);
  return sub_1ABAAABF0(v3, v14, MEMORY[0x1E69E9B80]);
}

void UnfairLockedBox.replace(contents:)()
{
  sub_1ABA8F958();
  v4 = *(v1 + *(v3 + 96));
  os_unfair_lock_lock(v4);
  sub_1ABA7D5F0();
  v6 = *(v5 + 88);
  swift_beginAccess();
  (*(*(*(v2 + 80) - 8) + 24))(v1 + v6, v0);
  swift_endAccess();
  os_unfair_lock_unlock(v4);
}

void UnfairLockedBox.replace(_:)(void (*a1)(void))
{
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  os_unfair_lock_lock(*(v1 + *(v9 + 96)));
  a1();
  if (!v2)
  {
    v10 = *(*v1 + 88);
    swift_beginAccess();
    (*(v5 + 40))(v1 + v10, v8, v4);
    swift_endAccess();
  }

  sub_1ABE07158(v1);
}

uint64_t sub_1ABE0718C(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

uint64_t UnfairRecursiveLockedBox.init(contents:)()
{
  sub_1ABA8F958();
  v4 = *(v3 + 96);
  v5 = swift_slowAlloc();
  *(v1 + v4) = v5;
  *v5 = 0;
  sub_1ABA7D5F0();
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(v6 + 88), v0);
  return v1;
}

uint64_t *_s20IntelligencePlatform15UnfairLockedBoxCfd_0()
{
  v1 = *v0;
  MEMORY[0x1AC5AB8B0](*(v0 + *(*v0 + 96)), -1, -1);
  sub_1ABA7D5F0();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 88));
  return v0;
}

uint64_t sub_1ABE0732C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1ABE073CC(uint64_t a1)
{
  v1 = *(a1 + 80);
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