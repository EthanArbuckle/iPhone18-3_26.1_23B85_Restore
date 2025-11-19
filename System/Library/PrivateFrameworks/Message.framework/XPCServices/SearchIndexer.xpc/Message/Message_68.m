uint64_t sub_10044CFBC(__int128 *a1)
{
  v1 = a1[1];
  v3 = *a1;
  v4[0] = v1;
  *(v4 + 15) = *(a1 + 31);
  return sub_1004A320C(&v3);
}

uint64_t sub_10044CFFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 6);
  v14 = *(a2 + 14);
  v15 = *(a2 + 30);
  v23[2] = a2[2];
  v16 = *(a2 + 2);
  v19 = *(a2 + 12);
  v17 = a2 + 6;
  v18 = v19;
  LOWORD(v19) = *(v17 + 2);
  v20 = *a1;
  v21 = *a6;
  v23[0] = v11;
  v23[1] = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v18;
  v29 = v19;
  v30 = *(v17 + 6);
  result = sub_100492A08(v20, v23, a3, a4, a5, v21, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore211MessageDataO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for MessageData();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v40 - v14);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  __chkstk_darwin(v19);
  v21 = &v40 - v20;
  __chkstk_darwin(v22);
  v24 = (&v40 - v23);
  v25 = sub_10000C9C0(&qword_1005DCC50, &qword_100507CD8);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v40 - v27;
  v30 = *(v29 + 56);
  sub_10044D504(a1, &v40 - v27);
  sub_10044D504(v41, &v28[v30]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_10044D504(v28, v15);
        v32 = *v15;
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v33 = sub_1003A370C(v32, *&v28[v30]);
LABEL_13:
          v34 = v33;

          goto LABEL_18;
        }
      }

      else
      {
        sub_10044D504(v28, v12);
        v37 = *v12;
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v33 = sub_10039F5E8(v37, *&v28[v30]);
          goto LABEL_13;
        }
      }

LABEL_22:
      sub_100025F40(v28, &qword_1005DCC50, &qword_100507CD8);
      v34 = 0;
      return v34 & 1;
    }

    sub_10044D504(v28, v18);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v35 = v40;
      sub_100020950(&v28[v30], v40);
      sub_100016D2C();
      v34 = sub_1004A7034();
      sub_100025F40(v35, &unk_1005D91B0, &unk_1004CF400);
      v36 = v18;
LABEL_17:
      sub_100025F40(v36, &unk_1005D91B0, &unk_1004CF400);
      goto LABEL_18;
    }

    v38 = v18;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload)
  {
    sub_10044D504(v28, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100020950(&v28[v30], v8);
      sub_100016D2C();
      v34 = sub_1004A7034();
      sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
      v36 = v21;
      goto LABEL_17;
    }

    v38 = v21;
LABEL_21:
    sub_100025F40(v38, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_22;
  }

  sub_10044D504(v28, v24);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_22;
  }

  v34 = *&v28[v30] == *v24;
LABEL_18:
  sub_10044D6C0(v28);
  return v34 & 1;
}

uint64_t type metadata accessor for MessageData()
{
  result = qword_1005DCC10;
  if (!qword_1005DCC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10044D504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10044D56C()
{
  result = qword_1005DCB98;
  if (!qword_1005DCB98)
  {
    type metadata accessor for MessageData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCB98);
  }

  return result;
}

void sub_10044D5C4()
{
  sub_100050DB8();
  if (v0 <= 0x3F)
  {
    sub_100050E14(319, &qword_1005DC2B0);
    if (v1 <= 0x3F)
    {
      sub_100050E14(319, &unk_1005DCC20);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_10044D6C0(uint64_t a1)
{
  v2 = type metadata accessor for MessageData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10044D720()
{
  result = qword_1005DCC58;
  if (!qword_1005DCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCC58);
  }

  return result;
}

unint64_t sub_10044D778()
{
  result = qword_1005DCC60;
  if (!qword_1005DCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCC60);
  }

  return result;
}

unint64_t sub_10044D7D0()
{
  result = qword_1005DCC68;
  if (!qword_1005DCC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCC68);
  }

  return result;
}

uint64_t MessageIdentifier.init<A>(exactly:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a4;
  v42 = a6;
  v43 = a2;
  v40[1] = *(*(a5 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = __chkstk_darwin(AssociatedTypeWitness);
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v40 - v17;
  v19 = sub_1004A64B4();
  v20 = sub_1004A64A4();
  v44 = a1;
  if (v19)
  {
    if (v20 > 64)
    {
      goto LABEL_3;
    }
  }

  else if (v20 > 63)
  {
LABEL_3:
    v45 = 0;
    sub_1001C08B0();
    sub_1004A6474();
    v21 = *(*(a5 + 32) + 8);
    v22 = sub_1004A5634();
    v23 = *(v12 + 8);
    v23(v18, a3);
    if ((v22 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  (*(v12 + 16))(v18, a1, a3);
  v24 = sub_1004A6494();
  v23 = *(v12 + 8);
  v23(v18, a3);
  if (v24 <= 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  (*(v12 + 16))(v16, v44, a3);
  if ((sub_1004A64B4() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_1004A6DE4(), sub_1004A6D04(), v25 = *(*(a5 + 32) + 8), v26 = sub_1004A5634(), v23(v18, a3), (v26 & 1) == 0))
  {
    if (sub_1004A64A4() < 32)
    {
      goto LABEL_19;
    }

    LODWORD(v45) = -1;
    v27 = sub_1004A64B4();
    v28 = sub_1004A64A4();
    if (v27)
    {
      if (v28 <= 32)
      {
        swift_getAssociatedConformanceWitness();
        sub_1004A6DE4();
        sub_1004A6D04();
        v29 = *(*(a5 + 32) + 8);
        v30 = sub_1004A5624();
        v23(v18, a3);
        if ((v30 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else if (v28 < 33)
    {
LABEL_18:
      sub_1004A6494();
      goto LABEL_19;
    }

    sub_1000D40AC();
    sub_1004A6474();
    v31 = *(*(a5 + 32) + 8);
    v32 = sub_1004A5634();
    v23(v18, a3);
    if ((v32 & 1) == 0)
    {
LABEL_19:
      v36 = sub_1004A6494();
      v23(v16, a3);
      v37 = v42;
      v38 = v36;
      v33 = v43;
      (*(v41 + 80))(v38, v43);
      v23(v44, a3);
      v35 = v37;
      v34 = 0;
      return (*(*(v33 - 8) + 56))(v35, v34, 1, v33);
    }
  }

  v23(v16, a3);
LABEL_17:
  v33 = v43;
  v23(v44, a3);
  v34 = 1;
  v35 = v42;
  return (*(*(v33 - 8) + 56))(v35, v34, 1, v33);
}

uint64_t BinaryInteger.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 56))(a3, a5);
  sub_1000D40AC();
  sub_1004A64D4();
  return (*(*(a3 - 8) + 8))(a1, a3);
}

BOOL static MessageIdentifier.<= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  v7 = v6(a3, a4);
  return v6(a3, a4) >= v7;
}

uint64_t sub_10044DEF4(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v7 = *(a2 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 80))(0xFFFFFFFFLL);
  v12 = *(*(a3 + 40) + 8);
  v13 = sub_1004A5724();
  (*(v7 + 8))(v10, v6);
  if (v13)
  {
    v15 = v4[5];
    v4 += 5;
    v14 = v15;
    v6 = v4 - 3;
    a3 = 0;
    result = sub_1002F178C(42, 0xE100000000000000, (v4 - 3), v15);
    if (v17)
    {
      v18._countAndFlagsBits = 42;
      v18._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v14);
    }

    v19 = *v4 + result;
    if (!__CFADD__(*v4, result))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v29[3] = (*(a3 + 56))(v6, a3);
  v20 = sub_1004A6CE4();
  v22 = v21;
  v24 = v4[5];
  v4 += 5;
  v23 = v24;
  v25 = sub_1002F178C(v20, v21, (v4 - 3), v24);
  if (v26)
  {
    v27._countAndFlagsBits = v20;
    v27._object = v22;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v23);
  }

  v28 = v25;

  result = v28;
  v19 = *v4 + v28;
  if (!__CFADD__(*v4, v28))
  {
LABEL_10:
    *v4 = v19;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_10044E10C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1004A6374();
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8 - 8);
  v12 = &v15 - v11;
  if (a1 == -1)
  {
    __break(1u);
  }

  else
  {
    v16 = a1 + 1;
    v13 = sub_1000D40AC();
    MessageIdentifier.init<A>(exactly:)(&v16, a2, &type metadata for UInt32, a3, v13, v12);
    v14 = *(a2 - 8);
    result = (*(v14 + 48))(v12, 1, a2);
    if (result != 1)
    {
      return (*(v14 + 32))(a4, v12, a2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10044E2A8(uint64_t a1)
{
  v2 = sub_10044EB38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10044E2E4(uint64_t a1)
{
  v2 = sub_10044EB38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UnknownMessageIdentifier.encode(to:)(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005DCC70, &qword_100507E40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10044EB38();
  sub_1004A6FA4();
  sub_1004A6C94();
  return (*(v3 + 8))(v6, v2);
}

uint64_t UnknownMessageIdentifier.init(from:)(uint64_t *a1)
{
  v3 = sub_10000C9C0(&qword_1005DCC80, &qword_100507E48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_10002587C(a1, a1[3]);
  sub_10044EB38();
  sub_1004A6F84();
  if (!v1)
  {
    v9 = sub_1004A6BB4();
    (*(v4 + 8))(v7, v3);
  }

  sub_1000197E0(a1);
  return v9;
}

uint64_t sub_10044E5AC@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005DCC80, &qword_100507E48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10044EB38();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v11 = sub_1004A6BB4();
  (*(v6 + 8))(v9, v5);
  result = sub_1000197E0(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_10044E70C(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005DCC70, &qword_100507E40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_10002587C(a1, a1[3]);
  sub_10044EB38();
  sub_1004A6FA4();
  sub_1004A6C94();
  return (*(v4 + 8))(v7, v3);
}

unint64_t MessageIdentifier.distance(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  v6 = v5(a2, a3);
  return v6 - v5(a2, a3);
}

uint64_t *sub_10044E8E4@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  if (*result > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *result + *v2;
  if (v3 < 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v3))
  {
    *a2 = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void MessageIdentifier.advanced(by:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1004A6374();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v15 - v11;
  if (a1 > 0xFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v16 = a1 + (*(a3 + 56))(a2, a3, v10);
    v13 = sub_10044EB8C();
    MessageIdentifier.init<A>(exactly:)(&v16, a2, &type metadata for Int64, a3, v13, v12);
    v14 = *(a2 - 8);
    if ((*(v14 + 48))(v12, 1, a2) != 1)
    {
      (*(v14 + 32))(a4, v12, a2);
      return;
    }
  }

  __break(1u);
}

_DWORD *sub_10044EA70(_DWORD *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t *a6)
{
  if (*a6 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *a6 + *a4;
  if (v6 < 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v6))
  {
    *result = v6;
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL static MessageIdentifier.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  v7 = v6(a3, a4);
  return v7 < v6(a3, a4);
}

unint64_t sub_10044EB38()
{
  result = qword_1005DCC78;
  if (!qword_1005DCC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCC78);
  }

  return result;
}

unint64_t sub_10044EB8C()
{
  result = qword_1005DCC88;
  if (!qword_1005DCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCC88);
  }

  return result;
}

unint64_t sub_10044EBE0(void *a1)
{
  a1[1] = sub_10044EC30();
  a1[2] = sub_10044EC84();
  a1[3] = sub_10044ECD8();
  a1[4] = sub_10044ED2C();
  a1[5] = sub_10044ED80();
  result = sub_10044EDD4();
  a1[6] = result;
  return result;
}

unint64_t sub_10044EC30()
{
  result = qword_1005DCC90;
  if (!qword_1005DCC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCC90);
  }

  return result;
}

unint64_t sub_10044EC84()
{
  result = qword_1005DCC98;
  if (!qword_1005DCC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCC98);
  }

  return result;
}

unint64_t sub_10044ECD8()
{
  result = qword_1005DCCA0;
  if (!qword_1005DCCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCCA0);
  }

  return result;
}

unint64_t sub_10044ED2C()
{
  result = qword_1005DCCA8;
  if (!qword_1005DCCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCCA8);
  }

  return result;
}

unint64_t sub_10044ED80()
{
  result = qword_1005DCCB0;
  if (!qword_1005DCCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCCB0);
  }

  return result;
}

unint64_t sub_10044EDD4()
{
  result = qword_1005DCCB8;
  if (!qword_1005DCCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCCB8);
  }

  return result;
}

unint64_t sub_10044EE2C()
{
  result = qword_1005DCCC0;
  if (!qword_1005DCCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCCC0);
  }

  return result;
}

unint64_t sub_10044EE84()
{
  result = qword_1005DCCC8;
  if (!qword_1005DCCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCCC8);
  }

  return result;
}

unint64_t sub_10044EF14()
{
  result = qword_1005DCCD0;
  if (!qword_1005DCCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCCD0);
  }

  return result;
}

unint64_t sub_10044EF6C()
{
  result = qword_1005DCCD8;
  if (!qword_1005DCCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCCD8);
  }

  return result;
}

unint64_t sub_10044EFC4()
{
  result = qword_1005DCCE0;
  if (!qword_1005DCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCCE0);
  }

  return result;
}

uint64_t static MessageIdentifier.... infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v36 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v34 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = *(*(a4 + 48) + 8);
  v16 = sub_1004A5704();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v31 - v19;
  v21 = a1;
  v22 = v36;
  result = sub_1004A5654();
  if (result)
  {
    v24 = *(a3 - 8);
    v25 = v24;
    v33 = v17;
    v26 = *(v24 + 16);
    v32 = v16;
    v26(v14, v21, a3);
    v26(&v14[*(TupleTypeMetadata2 + 48)], v22, a3);
    v27 = v34;
    (*(v9 + 16))(v34, v14, TupleTypeMetadata2);
    v36 = *(TupleTypeMetadata2 + 48);
    v28 = *(v25 + 32);
    v28(v20, v27, a3);
    v29 = *(v25 + 8);
    v29(&v27[v36], a3);
    (*(v9 + 32))(v27, v14, TupleTypeMetadata2);
    v30 = v32;
    v28(&v20[*(v32 + 36)], &v27[*(TupleTypeMetadata2 + 48)], a3);
    v29(v27, a3);
    return (*(v33 + 32))(v35, v20, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10044F32C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v7 = *(a3 - 1);
  v8 = v7[8];
  v9 = __chkstk_darwin(a1);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v30 - v12;
  if (v14)
  {
    v15 = *(*(a4 + 48) + 8);
    v16 = sub_1004A5704();
    v17 = v7[2];
    v17(v13, a1 + *(v16 + 36), a3);
    v18 = v11;
    v19 = a1;
  }

  else
  {
    v17 = v7[2];
    v17(v30 - v12, a1, a3);
    v20 = *(*(a4 + 48) + 8);
    v16 = sub_1004A5704();
    v19 = a1 + *(v16 + 36);
    v18 = v11;
  }

  v17(v18, v19, a3);
  v30[0] = a4;
  v21 = a4;
  v22 = v30[1];
  v23 = sub_10044DEF4(v13, a3, v21);
  sub_1004A5704();
  v24 = *(v16 + 36);
  v25 = 0;
  if (sub_1004A5634())
  {
    v25 = sub_100451320(v22, v11, a3, v30[0]);
  }

  v26 = v7[1];
  result = v26(v13, a3);
  v28 = __OFADD__(v23, v25);
  v29 = v23 + v25;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    v26(v11, a3);
    return v29;
  }

  return result;
}

uint64_t MessageIdentifierRange.upperBound.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(*(*(a1 + 24) + 48) + 8);
  v6 = sub_1004A5704();
  v7 = *(*(v4 - 8) + 16);
  v8 = v2 + *(v6 + 36);

  return v7(a2, v8, v4);
}

uint64_t MessageIdentifierRange.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 + 48) + 8);
  v6 = sub_1004A5704();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3, a1, v6);
}

uint64_t MessageIdentifierRange.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v32 - v14;
  v16 = *(*(a3 + 48) + 8);
  v17 = sub_1004A5704();
  v37 = *(v17 - 8);
  v18 = *(v37 + 64);
  __chkstk_darwin(v17);
  v20 = &v32 - v19;
  result = sub_1004A5654();
  if (result)
  {
    v22 = *(a2 - 8);
    v35 = v17;
    v23 = v22;
    (*(v22 + 16))(v15, a1, a2);
    v24 = *(TupleTypeMetadata2 + 48);
    v36 = a4;
    v25 = *(v23 + 32);
    v25(&v15[v24], a1, a2);
    (*(v9 + 16))(v12, v15, TupleTypeMetadata2);
    v34 = *(TupleTypeMetadata2 + 48);
    v26 = v20;
    v25(v20, v12, a2);
    v27 = v9;
    v28 = v37;
    v33 = v15;
    v29 = *(v23 + 8);
    v29(&v12[v34], a2);
    (*(v27 + 32))(v12, v33, TupleTypeMetadata2);
    v30 = *(TupleTypeMetadata2 + 48);
    v31 = v35;
    v25(&v26[*(v35 + 36)], &v12[v30], a2);
    v29(v12, a2);
    return (*(v28 + 32))(v36, v26, v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v42 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v38 = TupleTypeMetadata2;
  v39 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v37 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  v22 = *(*(a3 + 48) + 8);
  v23 = sub_1004A5704();
  v40 = *(v23 - 8);
  v41 = v23;
  v24 = *(v40 + 64);
  __chkstk_darwin(v23);
  v26 = &v35 - v25;
  static MessageIdentifier.min.getter(a2, a3);
  (*(v14 + 16))(v18, a1, a2);
  LOBYTE(a3) = sub_1004A5654();
  v27 = sub_1004A6A94();
  result = (*(*(v27 - 8) + 8))(a1, v27);
  if (a3)
  {
    v29 = *(v14 + 32);
    v29(v13, v21, a2);
    v30 = v38;
    v29(&v13[*(v38 + 48)], v18, a2);
    v31 = v39;
    v32 = v37;
    (*(v39 + 16))(v37, v13, v30);
    v33 = *(v30 + 48);
    v29(v26, v32, a2);
    v36 = *(v14 + 8);
    v36(&v32[v33], a2);
    (*(v31 + 32))(v32, v13, v30);
    v34 = v41;
    v29(&v26[*(v41 + 36)], &v32[*(v30 + 48)], a2);
    v36(v32, a2);
    return (*(v40 + 32))(v42, v26, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v43 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v39 = TupleTypeMetadata2;
  v40 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  v22 = *(*(a3 + 48) + 8);
  v23 = sub_1004A5704();
  v41 = *(v23 - 8);
  v42 = v23;
  v24 = *(v41 + 64);
  v25 = __chkstk_darwin(v23);
  v27 = &v36 - v26;
  (*(v14 + 16))(v21, a1, a2, v25);
  static MessageIdentifier.max.getter(a2, a3);
  LOBYTE(a3) = sub_1004A5654();
  v28 = sub_1004A6954();
  result = (*(*(v28 - 8) + 8))(a1, v28);
  if (a3)
  {
    v30 = *(v14 + 32);
    v30(v13, v21, a2);
    v31 = v39;
    v30(&v13[*(v39 + 48)], v18, a2);
    v32 = v40;
    v33 = v38;
    (*(v40 + 16))(v38, v13, v31);
    v34 = *(v31 + 48);
    v30(v27, v33, a2);
    v37 = *(v14 + 8);
    v37(&v33[v34], a2);
    (*(v32 + 32))(v33, v13, v31);
    v35 = v42;
    v30(&v27[*(v42 + 36)], &v33[*(v31 + 48)], a2);
    v37(v33, a2);
    return (*(v41 + 32))(v43, v27, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MessageIdentifierRange.range.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(*(*(a1 + 24) + 48) + 8);
  v6 = sub_1004A5704();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t MessageIdentifierRange.range.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(*(a2 + 24) + 48) + 8);
  v6 = sub_1004A5704();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2, a1, v6);
}

uint64_t MessageIdentifierRange.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(*(v4 + 48) + 8);
  v6 = sub_1004A5704();
  v7 = *(v4 + 40);

  return ClosedRange<>.hash(into:)(a1, v6, v7);
}

Swift::Int MessageIdentifierRange.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  MessageIdentifierRange.hash(into:)(v3, a1);
  return sub_1004A6F14();
}

Swift::Int sub_1004502C4(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  MessageIdentifierRange.hash(into:)(v4, a2);
  return sub_1004A6F14();
}

uint64_t MessageIdentifierRange.init(integerLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessageIdentifier.init(integerLiteral:)(v10, v11, v12);
  return MessageIdentifierRange.init(_:)(v9, a2, a3, a4);
}

uint64_t static MessageIdentifierRange.all.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(TupleTypeMetadata2);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v13 = *(a1 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v10);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  v20 = *(*(a2 + 48) + 8);
  v21 = sub_1004A5704();
  v34 = *(v21 - 8);
  v35 = v21;
  v22 = *(v34 + 64);
  __chkstk_darwin(v21);
  v24 = &v31 - v23;
  static MessageIdentifier.min.getter(a1, a2);
  static MessageIdentifier.max.getter(a1, a2);
  result = sub_1004A5654();
  if (result)
  {
    v26 = v13[4];
    v26(v12, v19, a1);
    v26(&v12[*(TupleTypeMetadata2 + 48)], v17, a1);
    v27 = v33;
    (*(v6 + 16))(v33, v12, TupleTypeMetadata2);
    v32 = *(TupleTypeMetadata2 + 48);
    v26(v24, v27, a1);
    v28 = v13[1];
    v28(&v27[v32], a1);
    (*(v6 + 32))(v27, v12, TupleTypeMetadata2);
    v29 = *(TupleTypeMetadata2 + 48);
    v30 = v35;
    v26(&v24[*(v35 + 36)], &v27[v29], a1);
    v28(v27, a1);
    return (*(v34 + 32))(v36, v24, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static MessageIdentifier.... prefix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(a3 + 48) + 8);
  v20 = sub_1004A5704();
  v35 = *(v20 - 8);
  v36 = v20;
  v21 = *(v35 + 64);
  __chkstk_darwin(v20);
  v32 = &v31 - v22;
  static MessageIdentifier.min.getter(a2, a3);
  v23 = a1;
  result = sub_1004A5654();
  if (result)
  {
    v25 = TupleTypeMetadata2;
    v26 = *(v14 + 32);
    v26(v13, v18, a2);
    v31 = v26;
    (*(v14 + 16))(&v13[*(v25 + 48)], v23, a2);
    (*(v7 + 16))(v10, v13, v25);
    v27 = *(v25 + 48);
    v28 = v32;
    v26(v32, v10, a2);
    v29 = *(v14 + 8);
    v29(&v10[v27], a2);
    (*(v7 + 32))(v10, v13, v25);
    v30 = v36;
    v31(&v28[*(v36 + 36)], &v10[*(v25 + 48)], a2);
    v29(v10, a2);
    return (*(v35 + 32))(v34, v28, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static MessageIdentifier.... postfix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(a3 + 48) + 8);
  v20 = sub_1004A5704();
  v33 = *(v20 - 8);
  v34 = v20;
  v21 = *(v33 + 64);
  __chkstk_darwin(v20);
  v23 = &v29 - v22;
  static MessageIdentifier.max.getter(a2, a3);
  result = sub_1004A5654();
  if (result)
  {
    (*(v14 + 16))(v13, a1, a2);
    v25 = *(v14 + 32);
    v25(&v13[*(TupleTypeMetadata2 + 48)], v18, a2);
    v26 = v31;
    (*(v8 + 16))(v31, v13, TupleTypeMetadata2);
    v30 = *(TupleTypeMetadata2 + 48);
    v25(v23, v26, a2);
    v27 = *(v14 + 8);
    v27(&v26[v30], a2);
    (*(v8 + 32))(v26, v13, TupleTypeMetadata2);
    v28 = v34;
    v25(&v23[*(v34 + 36)], &v26[*(TupleTypeMetadata2 + 48)], a2);
    v27(v26, a2);
    return (*(v33 + 32))(v32, v23, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MessageIdentifierRange.count.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(*(a1 + 24) + 48) + 8);
  sub_1004A5704();
  sub_1004513D8();
  swift_getWitnessTable();
  return sub_1004A5EE4();
}

uint64_t MessageIdentifierRange.clamped(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v52 = a3;
  v7 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  v9 = *(v51 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v48 = &v45 - v12;
  v13 = *(v7 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  v45 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v20 = *(*(*(a2 + 24) + 48) + 8);
  v21 = sub_1004A5704();
  v49 = *(v21 - 8);
  v22 = *(v49 + 64);
  __chkstk_darwin(v21);
  v46 = &v45 - v23;
  if (sub_1004A5624())
  {
    v24 = v13;
    v25 = *(v13 + 16);
    v26 = v19;
    v25(v19, a1, v7);
  }

  else
  {
    v26 = v19;
    v27 = *(v21 + 36);
    v28 = sub_1004A5634();
    v24 = v13;
    v29 = v4;
    v25 = *(v13 + 16);
    if (v28)
    {
      v29 = a1 + v27;
    }

    v25(v26, v29, v7);
  }

  v30 = *(v21 + 36);
  v31 = sub_1004A5634();
  v50 = v21;
  if (v31)
  {
    v32 = v24;
    v33 = v45;
    v25(v45, a1 + v30, v7);
  }

  else
  {
    if (sub_1004A5624())
    {
      v33 = v45;
      v34 = v45;
      v35 = a1;
    }

    else
    {
      v35 = v4 + v30;
      v33 = v45;
      v34 = v45;
    }

    v25(v34, v35, v7);
    v32 = v24;
  }

  v36 = *(v32 + 32);
  v37 = v48;
  v36(v48, v26, v7);
  v36(&v37[*(TupleTypeMetadata2 + 48)], v33, v7);
  v38 = v51;
  v39 = v47;
  (*(v51 + 16))(v47, v37, TupleTypeMetadata2);
  v45 = *(TupleTypeMetadata2 + 48);
  v40 = v46;
  v36(v46, v39, v7);
  v41 = *(v32 + 8);
  v41(&v45[v39], v7);
  (*(v38 + 32))(v39, v37, TupleTypeMetadata2);
  v42 = *(TupleTypeMetadata2 + 48);
  v43 = v50;
  v36(&v40[*(v50 + 36)], &v39[v42], v7);
  v41(v39, v7);
  return (*(v49 + 32))(v52, v40, v43);
}

uint64_t sub_1004512BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(a2 + 16);
  v5 = *(*(*(a2 + 24) + 48) + 8);
  v6 = sub_1004A5704();

  return a3(a1, v6);
}

uint64_t sub_100451320(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v8 = *(a1 + 20);
  result = sub_1002F178C(58, 0xE100000000000000, (a1 + 8), v8);
  if (v10)
  {
    v11._countAndFlagsBits = 58;
    v11._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = result;
  v13 = *(a1 + 20);
  v14 = __CFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(a1 + 20) = v15;
  v16 = sub_10044DEF4(a2, a3, a4);
  v17 = __OFADD__(v12, v16);
  result = v12 + v16;
  if (v17)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_1004513D8()
{
  result = qword_1005DCCE8[0];
  if (!qword_1005DCCE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005DCCE8);
  }

  return result;
}

uint64_t sub_100451448(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(*(a1 + 24) + 48) + 8);
  result = sub_1004A5704();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004514C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_100451610(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
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

uint64_t sub_100451840(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v6 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_10000C9C0(&qword_1005DCD70, &unk_100508290);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v27 - v13;
  v15 = sub_10000C9C0(&qword_1005DCF28, &qword_100508A88);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v33 = a1;
  sub_10045935C(v3, v14);
  (*(v7 + 32))(v10, v14, v6);
  sub_1003DAA44(&qword_1005DC2F8);
  sub_1004A5AC4();
  v28 = *(v16 + 44);
  v20 = *(sub_10000C9C0(&qword_1005DC2F0, &qword_100500E20) + 36);
  sub_1003DAA44(&qword_1005DC300);
  sub_1004A5EA4();
  if (*&v19[v20] == v32[0])
  {
    v21 = 0;
LABEL_7:
    *&v19[v28] = v21;
    sub_100025F40(v19, &qword_1005DCF28, &qword_100508A88);
    return a1;
  }

  else
  {
    v22 = 0;
    while (1)
    {
      v23 = sub_1004A5F34();
      v25 = *v24;
      v23(v32, 0);
      result = sub_1004A5EB4();
      v21 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v32[0] = v22;
      v32[1] = v25;
      v29(&v31, &v33, v32);
      if (!v4)
      {
        a1 = v31;
        v33 = v31;
        sub_1004A5EA4();
        ++v22;
        if (*&v19[v20] != v32[0])
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100451B60(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v20 = a1;
  v6 = a4[2];
  if (v6)
  {
    v9 = a4[4];
    v10 = a4[5];
    v17 = 0;
    v18 = v9;
    v19 = v10;

    a2(&v16, &v20, &v17);
    if (v4)
    {
    }

    else
    {
      v11 = a4 + 7;
      for (i = 1; ; ++i)
      {

        v5 = v16;
        v20 = v16;
        if (v6 == i)
        {
          break;
        }

        v13 = *(v11 - 1);
        v14 = *v11;
        v17 = i;
        v18 = v13;
        v19 = v14;

        a2(&v16, &v20, &v17);
        v11 += 2;
      }
    }
  }

  return v5;
}

uint64_t sub_100451C5C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v17 = a1;
  v6 = a4[2];
  if (v6)
  {
    v9 = a4[4];
    v15 = 0;
    v16 = v9;

    a2(&v14, &v17, &v15);
    if (v4)
    {
    }

    else
    {
      v10 = a4 + 5;
      for (i = 1; ; ++i)
      {

        v5 = v14;
        v17 = v14;
        if (v6 == i)
        {
          break;
        }

        v12 = *v10++;
        v15 = i;
        v16 = v12;

        a2(&v14, &v17, &v15);
      }
    }
  }

  return v5;
}

uint64_t sub_100451D54(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v18 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 56); ; i += 32)
    {
      v10 = *i;
      v12 = *(i - 2);
      v11 = *(i - 1);
      v13 = *(i - 3);
      v16[0] = v8;
      v16[1] = v13;
      v16[2] = v12;
      v16[3] = v11;
      v17 = v10;

      a2(&v15, &v18, v16);
      if (v4)
      {
        break;
      }

      ++v8;

      v5 = v15;
      v18 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_100451EC8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v33 = a5;
  v34 = a6;
  v14 = sub_10000C9C0(a5, a6);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v30 - v16);
  v36 = a1;
  v30 = a4;
  v32 = *(a4 + 16);
  if (v32)
  {
    v18 = *(a7(0) - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = *(v18 + 72);
    v21 = *(v14 + 48);
    *v17 = 0;
    sub_1004593CC(v30 + v19, v17 + v21, a8);
    a2(&v35, &v36, v17);
    if (v8)
    {
      sub_100025F40(v17, v33, v34);
    }

    else
    {
      v22 = a8;
      v23 = v14;
      v31 = a2;
      v24 = v22;
      v25 = v20;
      v26 = v30 + v20 + v19;
      for (i = 1; ; ++i)
      {
        sub_100025F40(v17, v33, v34);
        a1 = v35;
        v36 = v35;
        if (v32 == i)
        {
          break;
        }

        v28 = *(v23 + 48);
        *v17 = i;
        sub_1004593CC(v26, v17 + v28, v24);
        v31(&v35, &v36, v17);
        v26 += v25;
      }
    }
  }

  return a1;
}

uint64_t sub_1004520C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = (a4 + 54);
    while (1)
    {
      v10 = *v9;
      v11 = *(v9 - 1);
      v12 = *(v9 - 6);
      v13 = *(v9 - 22);
      v16[0] = v8;
      v16[1] = v13;
      v16[2] = *(v9 - 14);
      v17 = v12;
      v18 = v11;
      v19 = v10;

      a2(&v15, &v20, v16);
      if (v4)
      {
        break;
      }

      v9 += 24;
      ++v8;

      v5 = v15;
      v20 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_100452214(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, _BYTE *), uint64_t a3, uint64_t a4, void (*a5)(_OWORD *, __int128 *), uint64_t *a6, uint64_t *a7)
{
  v31 = a7;
  v8 = a1;
  v30[0] = a1;
  v9 = *(a4 + 16);
  if (v9)
  {
    v12 = 0;
    for (i = (a4 + 32); ; i += 4)
    {
      v14 = i[1];
      v27[0] = *i;
      v27[1] = v14;
      v15 = i[3];
      v17 = *i;
      v16 = i[1];
      v28 = i[2];
      v29 = v15;
      *&v26[8] = v17;
      *&v26[24] = v16;
      *&v26[40] = v28;
      *&v26[56] = i[3];
      *v26 = v12;
      a5(v27, &v20);
      a2(&v25, v30, v26);
      if (v7)
      {
        break;
      }

      ++v12;
      v22 = *&v26[32];
      v23 = *&v26[48];
      v24 = *&v26[64];
      v20 = *v26;
      v21 = *&v26[16];
      sub_100025F40(&v20, a6, v31);
      v8 = v25;
      v30[0] = v25;
      if (v9 == v12)
      {
        return v8;
      }
    }

    v22 = *&v26[32];
    v23 = *&v26[48];
    v24 = *&v26[64];
    v20 = *v26;
    v21 = *&v26[16];
    sub_100025F40(&v20, a6, v31);
  }

  return v8;
}

uint64_t sub_100452370(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v17 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(a4 + 32);
    v15 = 0;
    v16 = v9;
    a2(&v14, &v17, &v15);
    if (!v4)
    {
      v10 = (a4 + 33);
      for (i = 1; ; ++i)
      {
        v5 = v14;
        v17 = v14;
        if (v6 == i)
        {
          break;
        }

        v12 = *v10++;
        v15 = i;
        v16 = v12;
        a2(&v14, &v17, &v15);
      }
    }
  }

  return v5;
}

uint64_t sub_100452428(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v22 = a1;
  v15 = *(a4 + 16);
  if (v15)
  {
    v5 = 0;
    for (i = (a4 + 64); ; i += 10)
    {
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *(i + 4);
      v12 = *i;
      v13 = v12 | (v11 << 32);
      v19[0] = v5;
      v19[1] = v7;
      v19[2] = v8;
      v19[3] = v9;
      v19[4] = v10;
      v21 = v11;
      v20 = v12;
      sub_100447BE8(v7, v8, v9, v10, v13);
      a2(&v18, &v22, v19);
      if (v17)
      {
        break;
      }

      ++v5;
      sub_1001FC9B4(v7, v8, v9, v10, v13);
      v4 = v18;
      v22 = v18;
      if (v15 == v5)
      {
        return v4;
      }
    }

    sub_1001FC9B4(v7, v8, v9, v10, v13);
  }

  return v4;
}

uint64_t sub_100452600(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v16 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = (a4 + 48);
    while (1)
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v9 - 2);
      v15[0] = v8;
      v15[1] = v12;
      v15[2] = v11;
      v15[3] = v10;

      a2(&v14, &v16, v15);
      if (v4)
      {
        break;
      }

      v9 += 3;
      ++v8;

      v5 = v14;
      v16 = v14;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_100452734(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, _BYTE *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v19 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = a4 + 32; ; i += 40)
    {
      v10 = *(i + 16);
      v17[0] = *i;
      v17[1] = v10;
      v18 = *(i + 32);
      *&v16[8] = v17[0];
      *&v16[24] = *(i + 16);
      *&v16[40] = *(i + 32);
      *v16 = v8;
      sub_1003A365C(v17, &v12);
      a2(&v15, &v19, v16);
      if (v4)
      {
        break;
      }

      ++v8;
      v12 = *v16;
      v13 = *&v16[16];
      v14 = *&v16[32];
      sub_100025F40(&v12, qword_1005DCF78, &unk_10050C820);
      v5 = v15;
      v19 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }

    v12 = *v16;
    v13 = *&v16[16];
    v14 = *&v16[32];
    sub_100025F40(&v12, qword_1005DCF78, &unk_10050C820);
  }

  return v5;
}

uint64_t sub_100452870(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 48); ; i += 6)
    {
      v10 = *(i + 6);
      v11 = *(i + 2);
      v12 = *i;
      v13 = *(i - 2);
      v14 = *(i - 1);
      v17[0] = v8;
      v17[1] = v13;
      v17[2] = v14;
      v18 = v12;
      v20 = v10;
      v19 = v11;
      sub_10045945C();
      a2(&v16, &v21, v17);
      if (v4)
      {
        break;
      }

      ++v8;
      sub_100020D08();
      v5 = v16;
      v21 = v16;
      if (v6 == v8)
      {
        return v5;
      }
    }

    sub_100020D08();
  }

  return v5;
}

uint64_t sub_1004529B8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 55); ; i += 24)
    {
      v10 = *i;
      v11 = *(i - 7);
      v12 = *(i - 1);
      v13 = *(i - 3) | (v12 << 16);
      v14 = *(i - 15);
      v15 = *(i - 23);
      v18 = v8;
      v19 = v15;
      v20 = v14;
      v21 = v11;
      v23 = v12;
      v22 = v13;
      v24 = v10;
      sub_1003A30E8(v15, v14, v11 | (v13 << 32), v10);
      a2(&v17, &v25, &v18);
      if (v4)
      {
        break;
      }

      ++v8;
      sub_1003A30F4(v19, v20, v21 | ((v22 | (v23 << 16)) << 32), v24);
      v5 = v17;
      v25 = v17;
      if (v6 == v8)
      {
        return v5;
      }
    }

    sub_1003A30F4(v19, v20, v21 | ((v22 | (v23 << 16)) << 32), v24);
  }

  return v5;
}

uint64_t sub_100452B28(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = (a4 + 40);
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v14[0] = v8;
      v14[1] = v10;
      v15 = v11;
      sub_100459434(v10, v11);
      a2(&v13, &v16, v14);
      if (v4)
      {
        break;
      }

      v9 += 16;
      ++v8;
      sub_100459448(v10, v11);
      v5 = v13;
      v16 = v13;
      if (v6 == v8)
      {
        return v5;
      }
    }

    sub_100459448(v10, v11);
  }

  return v5;
}

uint64_t sub_100452C54(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v16 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = (a4 + 40);
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v14[0] = v8;
      v14[1] = v10;
      v15 = v11;

      a2(&v13, &v16, v14);
      if (v4)
      {
        break;
      }

      v9 += 4;
      ++v8;

      v5 = v13;
      v16 = v13;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_100452D20(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v17 = a1;
  v6 = a4[2];
  if (v6)
  {
    v9 = a4[4];
    v15 = 0;
    v16 = v9;
    a2(&v14, &v17, &v15);
    if (!v4)
    {
      v10 = a4 + 5;
      for (i = 1; ; ++i)
      {
        v5 = v14;
        v17 = v14;
        if (v6 == i)
        {
          break;
        }

        v12 = *v10++;
        v15 = i;
        v16 = v12;
        a2(&v14, &v17, &v15);
      }
    }
  }

  return v5;
}

uint64_t sub_100452DD0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 56); ; i += 4)
    {
      v10 = *(i - 1);
      v11 = *i;
      v12 = *(i - 3);
      v13 = *(i - 2);
      v16[0] = v8;
      v16[1] = v12;
      v16[2] = v13;
      v16[3] = v10;
      v16[4] = v11;

      a2(&v15, &v17, v16);
      if (v4)
      {
        break;
      }

      ++v8;

      v5 = v15;
      v17 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_100452EBC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v17 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(a4 + 32);
    v15 = 0;
    v16 = v9;
    a2(&v14, &v17, &v15);
    if (!v4)
    {
      v10 = (a4 + 36);
      for (i = 1; ; ++i)
      {
        v5 = v14;
        v17 = v14;
        if (v6 == i)
        {
          break;
        }

        v12 = *v10++;
        v15 = i;
        v16 = v12;
        a2(&v14, &v17, &v15);
      }
    }
  }

  return v5;
}

uint64_t sub_100452F74(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, _BYTE *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v25[0] = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 32); ; i += 4)
    {
      v10 = i[1];
      v22[0] = *i;
      v22[1] = v10;
      v11 = i[3];
      v13 = *i;
      v12 = i[1];
      v23 = i[2];
      v24 = v11;
      *&v21[8] = v13;
      *&v21[24] = v12;
      *&v21[40] = v23;
      *&v21[56] = i[3];
      *v21 = v8;
      sub_1003A3310(v22, &v15);
      a2(&v20, v25, v21);
      if (v4)
      {
        break;
      }

      ++v8;
      v17 = *&v21[32];
      v18 = *&v21[48];
      v19 = *&v21[64];
      v15 = *v21;
      v16 = *&v21[16];
      sub_100025F40(&v15, &qword_1005DCF18, &unk_10050C7D0);
      v5 = v20;
      v25[0] = v20;
      if (v6 == v8)
      {
        return v5;
      }
    }

    v17 = *&v21[32];
    v18 = *&v21[48];
    v19 = *&v21[64];
    v15 = *v21;
    v16 = *&v21[16];
    sub_100025F40(&v15, &qword_1005DCF18, &unk_10050C7D0);
  }

  return v5;
}

uint64_t sub_1004530D4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v16 = a1;
  v6 = a4[2];
  if (v6)
  {
    v14 = 0;
    v15 = a4[4];
    a2(&v13, &v16, &v14);
    if (!v4)
    {
      v9 = a4 + 5;
      for (i = 1; ; ++i)
      {
        v5 = v13;
        v16 = v13;
        if (v6 == i)
        {
          break;
        }

        v14 = i;
        v11 = *v9++;
        v15 = v11;
        a2(&v13, &v16, &v14);
      }
    }
  }

  return v5;
}

uint64_t sub_10045318C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, _BYTE *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v19 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 32); ; i += 3)
    {
      v10 = i[1];
      v17 = *i;
      v18[0] = v10;
      *(v18 + 15) = *(i + 31);
      *&v16[8] = v17;
      *&v16[24] = i[1];
      *&v16[39] = *(i + 31);
      *v16 = v8;
      sub_1003A3100(&v17, &v12);
      a2(&v15, &v19, v16);
      if (v4)
      {
        break;
      }

      ++v8;
      v12 = *v16;
      v13 = *&v16[16];
      v14[0] = *&v16[32];
      *(v14 + 15) = *&v16[47];
      sub_100025F40(&v12, &qword_1005DCF20, &qword_100508A80);
      v5 = v15;
      v19 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }

    v12 = *v16;
    v13 = *&v16[16];
    v14[0] = *&v16[32];
    *(v14 + 15) = *&v16[47];
    sub_100025F40(&v12, &qword_1005DCF20, &qword_100508A80);
  }

  return v5;
}

uint64_t sub_1004532E0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v18 = a1;
  v6 = a4[2];
  if (v6)
  {
    v9 = a4[4];
    v10 = a4[5];
    v16 = 0;
    *&v17 = v9;
    *(&v17 + 1) = v10;

    a2(&v15, &v18, &v16);
    if (v4)
    {
    }

    else
    {
      v11 = (a4 + 6);
      for (i = 1; ; ++i)
      {

        v5 = v15;
        v18 = v15;
        if (v6 == i)
        {
          break;
        }

        v16 = i;
        v13 = *v11++;
        v17 = v13;

        a2(&v15, &v18, &v16);
      }
    }
  }

  return v5;
}

uint64_t sub_1004533DC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v23 = a1;
  v7 = *(a4 + 16);
  if (v7)
  {
    v9 = 0;
    for (i = (a4 + 64); ; i += 10)
    {
      v11 = *(i + 2);
      v12 = *i;
      v13 = *(i - 4);
      v14 = *(i - 3);
      v15 = *(i + 6);
      v18[0] = v9;
      v18[1] = v13;
      v18[2] = v14;
      v19 = *(i - 1);
      v22 = v15;
      v21 = v11;
      v20 = v12;

      a2(&v17, &v23, v18);
      if (v5)
      {
        break;
      }

      ++v9;

      v6 = v17;
      v23 = v17;
      if (v7 == v9)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t MessageIdentifierSet.init(arrayLiteral:)(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  type metadata accessor for MessageIdentifierRange();
  v3 = sub_1004A5CD4();
  swift_getWitnessTable();
  return MessageIdentifierSet.init<A>(_:)(&v5, a2, v3);
}

uint64_t MessageIdentifierSet.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100016D2C();
  sub_1004A7114();
  sub_1004A5B84();
  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t MessageIdentifierSet.isEmpty.getter()
{
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return sub_1004A70C4();
}

uint64_t static MessageIdentifierSet.__derived_struct_equals(_:_:)()
{
  sub_100016D2C();

  return sub_1004A7034();
}

uint64_t static MessageIdentifierSet.all.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageIdentifierRange();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  static MessageIdentifierRange.all.getter(a1, a2, &v9 - v6);
  return MessageIdentifierSet.init(_:)(v7, a1, a2);
}

uint64_t MessageIdentifierSet.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100458C20(a1, a2, a3);
  sub_100016D2C();
  sub_1004A7124();
  v4 = type metadata accessor for MessageIdentifierRange();
  return (*(*(v4 - 8) + 8))(a1, v4);
}

{
  v6 = *(a3 + 56);
  result = v6(a2, a3);
  v8 = result - 1;
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v6(a2, a3);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 <= result)
  {
    sub_100016D2C();
    sub_1004A7124();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  return sub_100455454(a1, a2, a3, &type metadata accessor for ClosedRange, MessageIdentifierRange.init(_:));
}

{
  return sub_100455454(a1, a2, a3, &type metadata accessor for PartialRangeThrough, MessageIdentifierRange.init(_:));
}

{
  return sub_100455454(a1, a2, a3, &type metadata accessor for PartialRangeFrom, MessageIdentifierRange.init(_:));
}

{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MessageIdentifierRange();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v19 - v12;
  v14 = *(*(a3 + 48) + 8);
  v15 = sub_1004A5FD4();
  if (sub_1004A5FC4())
  {
    sub_100016D2C();
    sub_1004A7114();
    v16 = *(*(v15 - 8) + 8);

    return v16(a1, v15);
  }

  else
  {
    v18 = *(v15 + 36);
    v19[1] = -1;
    sub_1004A6424();
    static MessageIdentifier.... infix(_:_:)(a1, v9, a2, a3, v13);
    (*(v6 + 8))(v9, a2);
    MessageIdentifierSet.init(_:)(v13, a2, a3);
    return (*(*(v15 - 8) + 8))(a1, v15);
  }
}

uint64_t static MessageIdentifierSet.empty.getter()
{
  sub_100016D2C();

  return sub_1004A7114();
}

uint64_t MessageIdentifierSet._ranges.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessageIdentifierSet._ranges.setter(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t sub_10045396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_100458C20(a1, a3, a5);
  v8 = result;
  if (HIDWORD(result) != result)
  {
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v6 = sub_1004A70B4();
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    sub_1004A7064();
    return v6(v7, 0);
  }

  return result;
}

unint64_t Range<>.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100458C20(a1, a2, a3);
  v5 = type metadata accessor for MessageIdentifierRange();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

NIOIMAPCore2::MessageIdentificationShiftWrapper __swiftcall MessageIdentificationShiftWrapper.advanced(by:)(Swift::Int64 by)
{
  v2 = __OFADD__(by, v1);
  v3 = by + v1;
  if (v2)
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v3))
    {
      return v3;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return v3;
}

uint64_t MessageIdentifierSet.hash(into:)()
{
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();

  return sub_1004A5564();
}

Swift::Int MessageIdentifierSet.hashValue.getter()
{
  sub_1004A6E94();
  MessageIdentifierSet.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_100453C80()
{
  sub_1004A6E94();
  MessageIdentifierSet.hash(into:)();
  return sub_1004A6F14();
}

void *sub_100453CCC@<X0>(void *result@<X0>, _DWORD *a2@<X8>)
{
  v3 = *v2;
  v4 = v3 + *result;
  if (__OFADD__(v3, *result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v4))
  {
    *a2 = v4;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

_DWORD *sub_100453CFC(_DWORD *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, void *a6)
{
  v6 = *a4;
  v7 = __OFADD__(v6, *a6);
  v8 = v6 + *a6;
  if (v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v8))
  {
    *result = v8;
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100453D84@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = *(TupleTypeMetadata2 - 8);
  v8 = *(v33 + 64);
  v9 = __chkstk_darwin(TupleTypeMetadata2);
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v31 - v12;
  v14 = *(a2 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v11);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v31 - v19;
  v21 = *(*(a3 + 48) + 8);
  v34 = sub_1004A5704();
  v22 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v24 = &v31 - v23;
  result = sub_10044E10C(a1, a2, a3, v20);
  if (HIDWORD(a1))
  {
    sub_10044E10C(HIDWORD(a1) - 1, a2, a3, v18);
    result = sub_1004A5654();
    if (result)
    {
      v32 = a3;
      v26 = v14[4];
      v26(v13, v20, a2);
      v27 = TupleTypeMetadata2;
      v26(&v13[*(TupleTypeMetadata2 + 48)], v18, a2);
      v28 = v33;
      v29 = v35;
      (*(v33 + 16))(v35, v13, v27);
      v31 = *(v27 + 48);
      v26(v24, v29, a2);
      v30 = v14[1];
      v30(&v29[v31], a2);
      (*(v28 + 32))(v29, v13, v27);
      v26(&v24[*(v34 + 36)], &v29[*(v27 + 48)], a2);
      v30(v29, a2);
      return MessageIdentifierRange.init(_:)(v24, v32, v36);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MessageIdentifierSet.min()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v2 = *(a1 + 16);
  v3 = *(*(*(a1 + 24) + 48) + 8);
  v4 = sub_1004A5704();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = type metadata accessor for MessageIdentifierSet.RangeView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for MessageIdentifierRange();
  v14 = sub_1004A6374();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  MessageIdentifierSet.ranges.getter(v12);
  swift_getWitnessTable();
  sub_1004A5EF4();
  (*(v9 + 8))(v12, v8);
  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v20 = *(v2 - 8);
    v21 = 1;
    v22 = v30;
  }

  else
  {
    v24 = v28;
    v23 = v29;
    (*(v28 + 16))(v7, v18, v29);
    (*(v19 + 8))(v18, v13);
    v20 = *(v2 - 8);
    v25 = v30;
    (*(v20 + 16))(v30, v7, v2);
    (*(v24 + 8))(v7, v23);
    v21 = 0;
    v22 = v25;
  }

  return (*(v20 + 56))(v22, v21, 1, v2);
}

uint64_t MessageIdentifierSet.ranges.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - v4;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  v6 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  return (*(*(v6 - 8) + 32))(a1, v5, v6);
}

uint64_t MessageIdentifierSet.max()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v2 = *(a1 + 16);
  v3 = *(*(*(a1 + 24) + 48) + 8);
  v4 = sub_1004A5704();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = type metadata accessor for MessageIdentifierSet.RangeView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for MessageIdentifierRange();
  v14 = sub_1004A6374();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  MessageIdentifierSet.ranges.getter(v12);
  swift_getWitnessTable();
  sub_1004A55D4();
  (*(v9 + 8))(v12, v8);
  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v20 = *(v2 - 8);
    v21 = 1;
    v22 = v30;
  }

  else
  {
    v24 = v28;
    v23 = v29;
    (*(v28 + 16))(v7, v18, v29);
    (*(v19 + 8))(v18, v13);
    v20 = *(v2 - 8);
    v25 = v30;
    (*(v20 + 16))(v30, &v7[*(v23 + 36)], v2);
    (*(v24 + 8))(v7, v23);
    v21 = 0;
    v22 = v25;
  }

  return (*(v20 + 56))(v22, v21, 1, v2);
}

BOOL MessageIdentifierSet.isContiguous.getter()
{
  v0 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - v3;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  v5 = sub_1004A7054();
  (*(v1 + 8))(v4, v0);
  return v5 < 2;
}

uint64_t MessageIdentifierSet.RangeView.startIndex.getter()
{
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);

  return sub_1004A7044();
}

uint64_t MessageIdentifierSet.RangeView.endIndex.getter()
{
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);

  return sub_1004A7074();
}

uint64_t MessageIdentifierSet.RangeView.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  sub_1004A7084();
  return sub_100453D84(v5, *(a1 + 16), *(a1 + 24), a2);
}

uint64_t sub_100454A98()
{
  swift_getWitnessTable();

  return sub_1004A5E24();
}

uint64_t sub_100454B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_100454BA4()
{
  swift_getWitnessTable();

  return sub_1004A5E04();
}

uint64_t sub_100454C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_100454C9C@<X0>(uint64_t *a1@<X8>)
{
  result = MessageIdentifierSet.RangeView.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100454CC4@<X0>(uint64_t *a1@<X8>)
{
  result = MessageIdentifierSet.RangeView.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_100454CEC(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100454D78(v6, *a2, a3);
  return sub_100454D74;
}

void (*sub_100454D78(uint64_t *a1, uint64_t a2, uint64_t a3))(void *)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for MessageIdentifierRange();
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  MessageIdentifierSet.RangeView.subscript.getter(a3, v9);
  return sub_100454E50;
}

uint64_t sub_100454E58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_100454F60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RandomAccessCollection<>.index(after:)(a1, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_100454FE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void *))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_100455060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = *(sub_1004A6944() + 36);
  v7 = MessageIdentifierSet.RangeView.startIndex.getter();
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_100455148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t MessageIdentifierSet.RangeView.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MessageIdentifierSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v14 = a1;
  type metadata accessor for MessageIdentifierRange();
  v11 = sub_1004A5CD4();
  swift_getWitnessTable();
  MessageIdentifierSet.init<A>(_:)(&v14, a2, v11);
  MessageIdentifierSet.ranges.getter(a3);
  return (*(v7 + 8))(v10, v6);
}

uint64_t static MessageIdentifierSet.RangeView.== infix(_:_:)()
{
  type metadata accessor for MessageIdentifierSet.RangeView();
  swift_getWitnessTable();
  type metadata accessor for MessageIdentifierRange();
  swift_getWitnessTable();
  return sub_1004A5BA4() & 1;
}

uint64_t sub_1004553C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static MessageIdentifierSet.RangeView.== infix(_:_:)();
}

uint64_t sub_100455454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void), void (*a5)(char *, uint64_t, uint64_t))
{
  v9 = a4(0, a2, *(*(a3 + 48) + 8));
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  v14 = type metadata accessor for MessageIdentifierRange();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v20 - v17;
  (*(v10 + 16))(v13, a1, v9, v16);
  a5(v13, a2, a3);
  MessageIdentifierSet.init(_:)(v18, a2, a3);
  return (*(v10 + 8))(a1, v9);
}

uint64_t sub_100455808(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for MessageIdentifierSet();
  return MessageIdentifierSet.writeIntoBuffer(_:)(a1, v6);
}

uint64_t MessageIdentifierSet.writeIntoBuffer(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DCD70, &unk_100508290);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31[-v6];
  v8 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31[-v11];
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  v32 = *(a2 + 16);
  sub_1003DAA44(&qword_1005DC300);
  if (sub_1004A5E84() < 1)
  {
    v17 = 0;
  }

  else
  {
    v13 = *(a1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, (a1 + 8), *(a1 + 20));
    if (v15)
    {
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
    }

    v17 = result;
    v18 = *(a1 + 20);
    v19 = __CFADD__(v18, result);
    v20 = v18 + result;
    if (v19)
    {
      goto LABEL_17;
    }

    *(a1 + 20) = v20;
  }

  v21 = (*(v9 + 16))(v7, v12, v8);
  __chkstk_darwin(v21);
  *&v31[-48] = sub_100458D00;
  *&v31[-40] = v31;
  *&v31[-32] = a1;
  *&v31[-24] = v12;
  *&v31[-16] = 44;
  *&v31[-8] = 0xE100000000000000;
  v22 = sub_100451840(0, sub_100458D08, &v31[-64]);
  result = sub_100025F40(v7, &qword_1005DCD70, &unk_100508290);
  v23 = __OFADD__(v17, v22);
  v24 = v17 + v22;
  if (v23)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1004A5E84() < 1)
  {
    v30 = v24;
    goto LABEL_13;
  }

  v25 = *(a1 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (a1 + 8), *(a1 + 20));
  if (v26)
  {
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
  }

  v28 = *(a1 + 20);
  v19 = __CFADD__(v28, result);
  v29 = v28 + result;
  if (!v19)
  {
    *(a1 + 20) = v29;
    v30 = v24 + result;
    if (!__OFADD__(v24, result))
    {
LABEL_13:
      (*(v9 + 8))(v12, v8);
      return v30;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100455B9C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  v8 = a2(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t MessageIdentifierSet.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v8 = *(*(v7 - 8) + 64);
  result = __chkstk_darwin(v7);
  v12 = &v23 - v11;
  v23 = v3;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v13 = (v10 + 8);
    while (a3 >= 1)
    {
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1004A7094();
      v16 = sub_1004A7074();
      v17 = *v13;
      (*v13)(v12, v7);
      if (a1 >= v16)
      {
        goto LABEL_26;
      }

      sub_1004A7094();
      sub_1004A7084();
      result = (v17)(v12, v7);
      if (__OFADD__(a2, a3))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (a2 + a3 < (HIDWORD(v26) - v26))
      {
        return a1;
      }

      sub_1004A7094();
      v28 = a1;
      sub_1003DAA44(&qword_1005DC300);
      sub_1004A5E64();
      sub_1004A5EA4();
      v26 = v25;
      v27 = v24;
      sub_1004A5E74();
      v17(v12, v7);
      sub_1004A7094();
      sub_1004A7084();
      result = (v17)(v12, v7);
      v18 = HIDWORD(v26) - v26;
      if ((v18 ^ a2) < 0)
      {
        if (a2 >= 0)
        {
          v19 = a2;
        }

        else
        {
          v19 = -a2;
        }

        if (v18 < 0)
        {
          v18 = v26 - HIDWORD(v26);
        }

        v15 = v18 + v19;
        if (v15 < 0)
        {
          goto LABEL_33;
        }

        if (a2 >= 0)
        {
          v15 = -v15;
        }
      }

      else
      {
        v14 = __OFSUB__(v18, a2);
        v15 = v18 - a2;
        if (v14)
        {
          goto LABEL_32;
        }
      }

      a2 = 0;
      ++a1;
      v14 = __OFSUB__(a3, v15);
      a3 -= v15;
      if (v14)
      {
        goto LABEL_31;
      }
    }

    return a1;
  }

  v14 = __OFADD__(a2, a3);
  a2 += a3;
  if (!v14)
  {
    a3 = v10 + 8;
    while (a2 < 0)
    {
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1004A7094();
      v20 = sub_1004A7044();
      v21 = *a3;
      (*a3)(v12, v7);
      if (v20 >= a1)
      {
        break;
      }

      sub_1004A7094();
      v28 = --a1;
      sub_1003DAA44(&qword_1005DC300);
      sub_1004A5E64();
      sub_1004A5EA4();
      v26 = v25;
      v27 = v24;
      sub_1004A5E74();
      v21(v12, v7);
      sub_1004A7094();
      sub_1004A7084();
      v21(v12, v7);
      v22 = HIDWORD(v26) - v26;
      v14 = __OFADD__(a2, v22);
      a2 += v22;
      if (v14)
      {
        __break(1u);
LABEL_26:
        if (__OFADD__(a2, a3))
        {
          __break(1u);
        }

        return a1;
      }
    }

    return a1;
  }

LABEL_34:
  __break(1u);
  return result;
}

void MessageIdentifierSet.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = a1 < a3;
  if (a1 == a3)
  {
    if ((a4 ^ a2) < 0)
    {
      goto LABEL_15;
    }

    v16 = a4 < a2;
    if (!__OFSUB__(a4, a2))
    {
      return;
    }

    __break(1u);
  }

  if (v16)
  {
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v29 = v5;
    sub_1004A7094();
    sub_1004A7084();
    v17 = *(v12 + 8);
    v17(v15, v11);
    v18 = HIDWORD(v31) - v31;
    v19 = __OFSUB__(v18, a2);
    v20 = v18 - a2;
    if (v19)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v27 = v17;
    v28 = v20;
    a2 = v29;
    sub_1004A7094();
    v32 = a1;
    sub_1003DAA44(&qword_1005DC300);
    sub_1004A5E64();
    sub_1004A5EA4();
    v31 = v30;
    sub_1004A5E74();
    v27(v15, v11);
    v21 = MessageIdentifierSet.distance(from:to:)(a1 + 1, 0, a3, a4, a5);
    if (!__OFADD__(v28, v21))
    {
      return;
    }

    __break(1u);
  }

  if (!__OFSUB__(0, MessageIdentifierSet.distance(from:to:)(a3, a4, a1, a2, a5)))
  {
    return;
  }

  __break(1u);
LABEL_15:
  if (a2 >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = -a2;
  }

  if (a4 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = -a4;
  }

  v24 = __CFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    goto LABEL_25;
  }

  if (v25 < 0)
  {
LABEL_26:
    __break(1u);
  }
}

uint64_t MessageIdentifierSet.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v19 - v9;
  v11 = *(a2 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  sub_1004A7084();
  (*(v6 + 8))(v10, v5);
  v16 = *(a2 + 24);
  sub_10044E10C(v20, v11, v16, v15);
  v20 = a1;
  v17 = *(v16 + 48);
  sub_1004A6424();
  return (*(v12 + 8))(v15, v11);
}

uint64_t MessageIdentifierSet.count.getter()
{
  v0 = sub_10000C9C0(&qword_1005DC2F0, &qword_100500E20);
  v1 = v0 - 8;
  v2 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v4 = &v21 - v3;
  v5 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  v22 = v6;
  (*(v6 + 16))(v10, v12, v5);
  sub_1003DAA44(&qword_1005DC2F8);
  sub_1004A5AC4();
  v13 = *(v1 + 44);
  sub_1003DAA44(&qword_1005DC300);
  v14 = 0;
  while (1)
  {
    sub_1004A5EA4();
    if (*&v4[v13] == v23[0])
    {
      break;
    }

    v15 = sub_1004A5F34();
    v18 = *v16;
    v17 = v16[1];
    v15(v23, 0);
    sub_1004A5EB4();
    v19 = __OFADD__(v14, v17 - v18);
    v14 += v17 - v18;
    if (v19)
    {
      __break(1u);
      break;
    }
  }

  sub_100025F40(v4, &qword_1005DC2F0, &qword_100500E20);
  (*(v22 + 8))(v12, v5);
  return v14;
}

uint64_t sub_1004567A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MessageIdentifierSet.index(before:)(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1004567D0(uint64_t *a1)
{
  result = MessageIdentifierSet.index(before:)(*a1, a1[1]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100456800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MessageIdentifierSet.index(_:offsetBy:)(*a1, a1[1], a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_100456850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MessageIdentifierSet.startIndex.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100456878@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MessageIdentifierSet.endIndex.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1004568A0(void *a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100456928(v6, *a2, a2[1], a3);
  return sub_1004594CC;
}

void (*sub_100456928(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  v7 = *(a4 + 16);
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  a1[2] = v10;
  MessageIdentifierSet.subscript.getter(a3, a4, v10);
  return sub_1004594D0;
}

void sub_100456A08(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t sub_100456A18()
{
  swift_getWitnessTable();

  return sub_1004A55E4();
}

uint64_t sub_100456A9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MessageIdentifierSet.index(after:)(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100456AD0(uint64_t *a1)
{
  result = MessageIdentifierSet.index(after:)(*a1, a1[1]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100456B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = sub_1004A6944();
  v7 = (a2 + *(v6 + 36));
  v8 = MessageIdentifierSet.startIndex.getter(v6);
  v10 = v9;
  result = (*(v5 + 8))(v2, a1);
  *v7 = v8;
  v7[1] = v10;
  return result;
}

uint64_t sub_100456BF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_100456C60(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_100458B50();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

BOOL static MessageIdentifierSet.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return a2 < a4;
  }

  else
  {
    return a1 < a3;
  }
}

BOOL static MessageIdentifierSet.Index.> infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return a4 < a2;
  }

  else
  {
    return a3 < a1;
  }
}

uint64_t MessageIdentifierSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 24) + 56))(*(a2 + 16));
  if (result)
  {
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    return sub_1004A70D4() & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100456E14@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v21 - v14;
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  v18 = *(v8 + 16);
  v18(v15, v3, v7);
  v18(v12, a1, v7);
  a2(v12, v7);
  v19 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  return (*(*(v19 - 8) + 32))(a3, v17, v19);
}

BOOL MessageIdentifierSet.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MessageIdentifierSet.contains(_:)(a2, a3);
  v7 = *(a3 + 16);
  if ((v6 & 1) == 0)
  {
    v11 = sub_100458ABC(a2, *(a3 + 16), *(a3 + 24));
    if (HIDWORD(v11) != v11)
    {
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v8 = sub_1004A70B4();
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      sub_1004A7064();
      v8(v10, 0);
    }
  }

  (*(*(v7 - 8) + 16))(a1, a2, v7);
  return (v6 & 1) == 0;
}

uint64_t MessageIdentifierSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (MessageIdentifierSet.contains(_:)(a1, a2))
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 16);
    sub_100458ABC(a1, v7, v6);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_1004A70A4();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a3, a1, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  else
  {
    v10 = *(*(*(a2 + 16) - 8) + 56);

    return v10(a3, 1, 1);
  }
}

uint64_t MessageIdentifierSet.update(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MessageIdentifierSet.contains(_:)(a1, a2);
  v7 = *(a2 + 16);
  if (v6)
  {
    v11 = *(v7 - 8);
    (*(v11 + 16))(a3, a1, v7);
    v8 = *(v11 + 56);

    return v8(a3, 0, 1, v7);
  }

  else
  {
    v13 = sub_100458ABC(a1, *(a2 + 16), *(a2 + 24));
    if (HIDWORD(v13) != v13)
    {
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v10 = sub_1004A70B4();
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      sub_1004A7064();
      v10(v12, 0);
    }

    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }
}

uint64_t MessageIdentifierSet.formIntersection(_:)(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return RangeSet.formIntersection(_:)(a1, v2);
}

uint64_t sub_100457434(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t))
{
  v5 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v5);
  return a3(v8, v5);
}

uint64_t sub_100457530@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  (*(v14 + 16))(v11, v3, v7);
  a2(a1, v7);
  v15 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  return (*(*(v15 - 8) + 32))(a3, v13, v15);
}

uint64_t MessageIdentifierSet.isSubset(of:)()
{
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return sub_1004A70E4();
}

uint64_t MessageIdentifierSet.isSuperset(of:)(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return RangeSet.isSuperset(of:)(a1, v2);
}

uint64_t MessageIdentifierSet.subtract(_:)()
{
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return sub_1004A70F4();
}

uint64_t MessageIdentifierSet.isStrictSuperset(of:)(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return RangeSet.isStrictSuperset(of:)(a1, v2);
}

uint64_t MessageIdentifierSet.isStrictSubset(of:)(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return RangeSet.isStrictSubset(of:)(a1, v2);
}

uint64_t sub_100457868(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v8 = *(*(a2 - 8) + 8);
  v8(v4, a2);

  return (v8)(a1, a2);
}

BOOL sub_100457900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MessageIdentifierSet.insert(_:)(a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 8))(a2);
  return v5;
}

uint64_t sub_10045796C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MessageIdentifierSet.update(with:)(a1, a2, a3);
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t sub_100457A0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t sub_100457A94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v6 = *(*(a2 - 8) + 8);

  return v6(v4, a2);
}

uint64_t MessageIdentifierSet.suffix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a3;
  v5 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v100 = *(TupleTypeMetadata2 - 8);
  v6 = *(v100 + 64);
  v7 = __chkstk_darwin(TupleTypeMetadata2);
  v101 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v99 = &v96 - v9;
  v10 = sub_1004A6374();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v110 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v112 = &v96 - v14;
  v15 = *(a2 + 24);
  v16 = *(v15 + 48);
  v103 = *(v16 + 8);
  v17 = sub_1004A5704();
  v105 = *(v17 - 8);
  v18 = *(v105 + 64);
  v19 = __chkstk_darwin(v17);
  v109 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v106 = &v96 - v21;
  v22 = sub_1004513D8();
  v107 = v16;
  v135 = v16;
  v136 = v22;
  v104 = v22;
  WitnessTable = swift_getWitnessTable();
  v130 = v17;
  v24 = a1;
  v111 = sub_1004A6E74();
  v98 = *(v111 - 8);
  v25 = *(v98 + 64);
  __chkstk_darwin(v111);
  v113 = &v96 - v26;
  v129 = type metadata accessor for MessageIdentifierRange();
  v119 = *(v129 - 8);
  v27 = *(v119 + 64);
  v28 = __chkstk_darwin(v129);
  v97 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v123 = &v96 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v96 - v33;
  __chkstk_darwin(v32);
  v124 = v15;
  v125 = &v96 - v35;
  v36 = type metadata accessor for MessageIdentifierSet.RangeView();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v40 = &v96 - v39;
  v41 = swift_getWitnessTable();
  v42 = sub_1004A6A24();
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v45 = &v96 - v44;
  v127 = v36;
  v118 = v41;
  v116 = sub_1004A6A14();
  v46 = *(*(v116 - 8) + 64);
  v47 = __chkstk_darwin(v116);
  v49 = &v96 - v48;
  v126 = a2;
  v115 = *(a2 - 8);
  v50 = *(v115 + 64);
  v51 = __chkstk_darwin(v47);
  v122 = &v96 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v51);
  v128 = &v96 - v55;
  if (v24 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v108 = v54;
    sub_100016D2C();
    if (!v24)
    {
      return sub_1004A7114();
    }

    v120 = v5;
    sub_1004A7114();
    MessageIdentifierSet.ranges.getter(v40);
    v56 = v127;
    sub_1004A5604();
    (*(v37 + 16))(v49, v45, v56);
    v57 = *(v116 + 36);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v58 = sub_1004A7074();
    v121 = v57;
    *&v49[v57] = v58;
    (*(v37 + 8))(v45, v56);
    v59 = 0;
    v60 = (v119 + 32);
    v117 = (v119 + 16);
    v118 = (v115 + 8);
    v119 += 8;
    while (1)
    {
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      if (v58 == sub_1004A7044())
      {
        goto LABEL_16;
      }

      v134 = v58;
      v61 = v127;
      swift_getWitnessTable();
      v62 = v121;
      sub_1004A5E24();
      v58 = *&v49[v62];
      v63 = v125;
      MessageIdentifierSet.RangeView.subscript.getter(v61, v125);
      (*v60)(v34, v63, v129);
      result = sub_1004A5EE4();
      if (__OFADD__(v59, result))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v59 + result > v24)
      {
        break;
      }

      result = sub_1004A5EE4();
      v64 = __OFADD__(v59, result);
      v59 += result;
      if (v64)
      {
        goto LABEL_19;
      }

      v65 = v123;
      v66 = WitnessTable;
      v67 = v24;
      v68 = v129;
      (*v117)(v123, v34, v129);
      v69 = v49;
      v70 = v34;
      v71 = v122;
      MessageIdentifierSet.init(_:)(v65, v120, v124);
      MessageIdentifierSet.formUnion(_:)(v71, v72);
      v73 = v71;
      v34 = v70;
      v49 = v69;
      (*v118)(v73, v126);
      v74 = v68;
      v24 = v67;
      WitnessTable = v66;
      (*v119)(v34, v74);
      if (v59 >= v24)
      {
        goto LABEL_16;
      }
    }

    if (__OFSUB__(v24, v59))
    {
      goto LABEL_21;
    }

    (*(v105 + 16))(v106, v34, v130);
    v132 = v107;
    v133 = v104;
    v75 = swift_getWitnessTable();
    sub_1004A55F4();
    swift_getWitnessTable();
    v76 = v112;
    sub_1004A5EF4();
    v77 = v120;
    v78 = *(v120 - 8);
    v79 = v78[6];
    result = v79(v76, 1, v120);
    if (result == 1)
    {
      goto LABEL_23;
    }

    v131 = v75;
    swift_getWitnessTable();
    v80 = v110;
    sub_1004A55D4();
    result = v79(v80, 1, v77);
    if (result == 1)
    {
      goto LABEL_24;
    }

    result = sub_1004A5654();
    if (result)
    {
      v81 = v78[2];
      v82 = v99;
      v81(v99, v76, v77);
      v83 = TupleTypeMetadata2;
      v81(&v82[*(TupleTypeMetadata2 + 48)], v80, v77);
      v84 = v100;
      v85 = v101;
      (*(v100 + 16))(v101, v82, v83);
      v125 = *(v83 + 48);
      v127 = v78[4];
      v127(v109, v85, v77);
      v86 = v78[1];
      v86(&v85[v125], v77);
      (*(v84 + 32))(v85, v82, v83);
      v87 = v109;
      v127(&v109[*(v130 + 36)], &v85[*(v83 + 48)], v77);
      v86(v85, v77);
      v86(v110, v77);
      v86(v112, v77);
      v88 = v97;
      v89 = v87;
      v90 = v124;
      MessageIdentifierRange.init(_:)(v89, v124, v97);
      v91 = v123;
      v92 = v129;
      (*v117)(v123, v88, v129);
      v93 = v122;
      MessageIdentifierSet.init(_:)(v91, v77, v90);
      MessageIdentifierSet.formUnion(_:)(v93, v94);
      (*v118)(v93, v126);
      v95 = *v119;
      (*v119)(v88, v92);
      (*(v98 + 8))(v113, v111);
      v95(v34, v92);
LABEL_16:
      (*(v108 + 8))(v49, v116);
      return (*(v115 + 32))(v114, v128, v126);
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1004587F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_10045886C(unint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v7 = type metadata accessor for MessageIdentifierRange();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  sub_100453D84(*a1, a3, a4, &v14 - v10);
  v12 = sub_10044F32C(v11, 0, a3, a4);
  (*(v8 + 8))(v11, v7);
  return v12;
}

uint64_t sub_10045897C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100490EA4(*a1, *a2, a2[1], a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1004589D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1004A5654();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_100458ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  result = v5(a2, a3);
  v7 = (result - 1);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v5(a2, a3);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 <= result)
  {
    return v7 | (result << 32);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100458B54()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1004A5654();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_1004A5FD4() + 36);
  result = sub_1004A5654();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_100458C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  result = v5(a2, a3);
  v7 = (result - 1);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = *(*(a3 + 48) + 8);
  v9 = *(sub_1004A5704() + 36);
  result = v5(a2, a3);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 <= result)
  {
    return v7 | (result << 32);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100458D08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100490EA4(*a1, *a2, a2[1], *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_100458D78()
{
  result = qword_1005DCD78;
  if (!qword_1005DCD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DCD78);
  }

  return result;
}

void sub_1004590FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, ValueMetadata *, unint64_t))
{
  sub_1004592A4(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100459198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_10000C9C0(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_100459230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_10000C9C0(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_1004592A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100016D2C();
    v7 = a3(a1, &type metadata for MessageIdentificationShiftWrapper, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100459308()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10045935C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DCD70, &unk_100508290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004593CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100459434(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t sub_100459448(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t MessageIdentifierSetNonEmpty.init(set:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MessageIdentifierSetNonEmpty();
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = type metadata accessor for MessageIdentifierSet();
  v9 = MessageIdentifierSet.count.getter();
  v10 = *(v8 - 8);
  if (v9 < 1)
  {
    (*(v10 + 8))(a1, v8);
    v12 = *(v14 + 56);

    return v12(a2, 1, 1, v4);
  }

  else
  {
    (*(v10 + 32))(v7, a1, v8);
    (*(v14 + 32))(a2, v7, v4);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }
}

uint64_t MessageIdentifierSetNonEmpty.init(range:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MessageIdentifierRange();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v13 - v10;
  (*(v7 + 16))(&v13 - v10, a1, v6, v9);
  MessageIdentifierSet.init(_:)(v11, a2, a3);
  return (*(v7 + 8))(a1, v6);
}

uint64_t MessageIdentifierSetNonEmpty.writeIntoBuffer(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v5 = type metadata accessor for MessageIdentifierSet();

  return MessageIdentifierSet.writeIntoBuffer(_:)(a1, v5);
}

uint64_t static MessageIdentifierSetNonEmpty.all.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MessageIdentifierSet();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for MessageIdentifierSetNonEmpty();
  v11 = sub_1004A6374();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v17 - v13;
  static MessageIdentifierSet.all.getter(a1, a2);
  MessageIdentifierSetNonEmpty.init(set:)(v9, v14);
  v15 = *(v10 - 8);
  result = (*(v15 + 48))(v14, 1, v10);
  if (result != 1)
  {
    return (*(v15 + 32))(a3, v14, v10);
  }

  __break(1u);
  return result;
}

uint64_t MessageIdentifierSetNonEmpty.set.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for MessageIdentifierSet();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2, v6);
}

uint64_t MessageIdentifierSetNonEmpty.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  type metadata accessor for MessageIdentifierSet();

  return MessageIdentifierSet.hash(into:)();
}

Swift::Int MessageIdentifierSetNonEmpty.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for MessageIdentifierSet();
  MessageIdentifierSet.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_100459AA0(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  MessageIdentifierSetNonEmpty.hash(into:)(v4, a2);
  return sub_1004A6F14();
}

uint64_t MessageIdentifierSetNonEmpty.debugDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = type metadata accessor for MessageIdentifierSet();

  return MessageIdentifierSet.debugDescription.getter(v3);
}

uint64_t MessageIdentifierSetNonEmpty.init(arrayLiteral:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MessageIdentifierRange();
  result = sub_1004A5C94();
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v6 = a1;
    v5 = sub_1004A5CD4();
    swift_getWitnessTable();
    return MessageIdentifierSet.init<A>(_:)(&v6, a2, v5);
  }

  return result;
}

uint64_t sub_100459C14@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = sub_1004A6374();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  v11 = *(a1 + 24);
  v12 = type metadata accessor for MessageIdentifierSet();
  a2(v12);
  v13 = *(v6 - 8);
  result = (*(v13 + 48))(v10, 1, v6);
  if (result != 1)
  {
    return (*(v13 + 32))(a3, v10, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_100459D40(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for MessageIdentifierSet();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100459DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for MessageIdentifierSet();
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_100459E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  v8 = type metadata accessor for MessageIdentifierSet();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

__n128 MessagePath.init(mailboxReference:iUID:section:range:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int32 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int16 a10)
{
  v13[68] = BYTE4(a3) & 1;
  v13[67] = HIBYTE(a10) & 1;
  *&v14 = a1;
  *(&v14 + 1) = a2;
  v15.n128_u32[0] = a3;
  v15.n128_u8[4] = BYTE4(a3) & 1;
  v15.n128_u32[2] = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18 = a10 & 0x1FF;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  v21 = BYTE4(a3) & 1;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a10 & 0x1FF;
  sub_1004308A4(&v14, v13);
  sub_10042ED74(v19);
  v11 = v17;
  *(a9 + 32) = v16;
  *(a9 + 48) = v11;
  *(a9 + 64) = v18;
  result = v15;
  *a9 = v14;
  *(a9 + 16) = result;
  return result;
}

uint64_t MessagePath.range.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64) | (*(v0 + 65) << 8);
  return result;
}

uint64_t MessagePath.range.setter(uint64_t result, uint64_t a2, __int16 a3)
{
  *(v3 + 48) = result;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 65) = HIBYTE(a3) & 1;
  return result;
}

void MessagePath.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v4)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v3);
  }

  sub_1004A6EE4(*(v0 + 6));
  if (v0[5])
  {
    v5 = v0[4];
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  if (*(v0 + 65) == 1 || (v6 = *(v0 + 64), v7 = v0[6], v8 = v0[7], sub_1004A6EC4(1u), sub_1004A6EB4(v7), (v6 & 1) != 0))
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v8);
  }
}

Swift::Int MessagePath.hashValue.getter()
{
  sub_1004A6E94();
  MessagePath.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_10045A0C8()
{
  sub_1004A6E94();
  MessagePath.hash(into:)();
  return sub_1004A6F14();
}

BOOL sub_10045A104(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore211MessagePathV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9);
}

uint64_t sub_10045A160(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004480DC(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32));
  v5 = *(a1 + 24);
  result = sub_100434480();
  v7 = v4 + result;
  if (__OFADD__(v4, result))
  {
    goto LABEL_17;
  }

  v8._object = *(a1 + 40);
  if (v8._object)
  {
    v8._countAndFlagsBits = *(a1 + 32);
    sub_1004A5994(v8);
    v9 = *(v1 + 20);
    v10 = sub_1002F178C(0x4F49544345533B2FLL, 0xEA00000000003D4ELL, (v1 + 8), *(v1 + 20));
    if (v11)
    {
      v12._countAndFlagsBits = 0x4F49544345533B2FLL;
      v12._object = 0xEA00000000003D4ELL;
      v10 = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
    }

    v13 = v10;

    v14 = *(v2 + 20);
    v15 = __CFADD__(v14, v13);
    v16 = v14 + v13;
    if (v15)
    {
      goto LABEL_19;
    }

    *(v2 + 20) = v16;
    v17 = __OFADD__(v7, v13);
    v7 += v13;
    if (v17)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  if (*(a1 + 65))
  {
    v18 = 0;
  }

  else
  {
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v22 = *(v2 + 20);
    result = sub_1002F178C(0x4149545241503B2FLL, 0xEA00000000003D4CLL, (v2 + 8), *(v2 + 20));
    if (v23)
    {
      v24._countAndFlagsBits = 0x4149545241503B2FLL;
      v24._object = 0xEA00000000003D4CLL;
      result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
    }

    v25 = result;
    v26 = *(v2 + 20);
    v15 = __CFADD__(v26, result);
    v27 = v26 + result;
    if (v15)
    {
      goto LABEL_20;
    }

    *(v2 + 20) = v27;
    result = sub_1003BE414(v19, v20, v21 & 1);
    v18 = v25 + result;
    if (__OFADD__(v25, result))
    {
LABEL_21:
      __break(1u);
      return result;
    }
  }

  result = v7 + v18;
  if (__OFADD__(v7, v18))
  {
    goto LABEL_18;
  }

  return result;
}

BOOL _s12NIOIMAPCore211MessagePathV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    if (*(a2 + 24) == *(a1 + 24))
    {
      v10 = *(a1 + 40);
      v11 = *(a2 + 40);
      if (v10)
      {
        if (!v11 || (*(a1 + 32) != *(a2 + 32) || v10 != v11) && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      v12 = *(a2 + 65);
      if ((*(a1 + 65) & 1) == 0)
      {
        if ((*(a2 + 65) & 1) != 0 || *(a1 + 48) != *(a2 + 48))
        {
          return 0;
        }

        v12 = *(a2 + 64);
        if ((*(a1 + 64) & 1) == 0)
        {
          return (*(a2 + 64) & 1) == 0 && *(a1 + 56) == *(a2 + 56);
        }
      }

      if (v12)
      {
        return 1;
      }
    }

    return 0;
  }

  result = 0;
  if ((v7 & 1) == 0 && v4 == v6)
  {
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_10045A450()
{
  result = qword_1005DD000;
  if (!qword_1005DD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD000);
  }

  return result;
}

uint64_t sub_10045A4A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10045A4EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MessagePath.ByteRange.range.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

unint64_t sub_10045A564()
{
  result = qword_1005DD008;
  if (!qword_1005DD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD008);
  }

  return result;
}

uint64_t String.init(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
  v6 = sub_1004A58D4();

  return v6;
}

uint64_t sub_10045A660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = ByteBufferAllocator.buffer(string:)(*a1, *(a1 + 8), j__malloc, j__realloc, sub_100127C74, sub_100127C84);
  v5 = v4;
  v7 = v6;

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 20) = WORD2(v7);
  *(a2 + 22) = BYTE6(v7);
  return result;
}

unint64_t sub_10045A718()
{
  result = qword_1005DD010;
  if (!qword_1005DD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD010);
  }

  return result;
}

unint64_t sub_10045A770()
{
  result = qword_1005DD018;
  if (!qword_1005DD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD018);
  }

  return result;
}

unint64_t sub_10045A7C8()
{
  result = qword_1005DD020;
  if (!qword_1005DD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD020);
  }

  return result;
}

void MetadataOption.hash(into:)()
{
  v1 = type metadata accessor for ParameterValue();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v23 - v12);
  v14 = type metadata accessor for MetadataOption();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10045B1E4(v0, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v17;
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1003E05A4(v17, v13);
      sub_1004A6EB4(2uLL);
      v21 = *v13;
      v22 = v13[1];
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1003E0614(v13 + *(v10 + 52), v9);
      if ((*(v2 + 48))(v9, 1, v1) == 1)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1002FC114(v9, v5);
        sub_1004A6EC4(1u);
        ParameterValue.hash(into:)();
        sub_10045B34C(v5, type metadata accessor for ParameterValue);
      }

      sub_100025F40(v13, &qword_1005DBCA8, &unk_100504BF0);
    }
  }

  else
  {
    v20 = *v17;
    sub_1004A6EB4(0);
    sub_1004A6EB4(v20);
  }
}

Swift::Int MetadataOption.hashValue.getter()
{
  sub_1004A6E94();
  MetadataOption.hash(into:)();
  return sub_1004A6F14();
}

Swift::Int sub_10045AB74()
{
  sub_1004A6E94();
  MetadataOption.hash(into:)();
  return sub_1004A6F14();
}

uint64_t sub_10045ABB0(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = (v26 - v5);
  v7 = type metadata accessor for MetadataOption();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10045B1E4(a1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return sub_100487C1C(*v10);
    }

    else
    {
      sub_1003E05A4(v10, v6);
      v25 = sub_10049EB14(v6);
      sub_100025F40(v6, &qword_1005DBCA8, &unk_100504BF0);
      return v25;
    }
  }

  else
  {
    v13 = *v10;
    v27 = 0x20455A495358414DLL;
    v28 = 0xE800000000000000;
    v26[1] = v13;
    v29._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v29);
    v14 = v1;

    v16 = v27;
    v15 = v28;
    v17 = *(v1 + 20);
    v18 = sub_1002F178C(v27, v28, (v14 + 8), *(v14 + 20));
    if (v19)
    {
      v20._countAndFlagsBits = v16;
      v20._object = v15;
      v18 = ByteBuffer._setStringSlowpath(_:at:)(v20, v17);
      v14 = v1;
    }

    v21 = v18;

    v22 = *(v14 + 20);
    result = v21;
    v23 = __CFADD__(v22, v21);
    v24 = v22 + v21;
    if (v23)
    {
      __break(1u);
    }

    else
    {
      *(v14 + 20) = v24;
    }
  }

  return result;
}

BOOL _s12NIOIMAPCore214MetadataOptionO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v31 - v6);
  v8 = type metadata accessor for MetadataOption();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  __chkstk_darwin(v15);
  v17 = (&v31 - v16);
  v18 = sub_10000C9C0(&qword_1005DD0D8, &qword_100508F18);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v31 - v20;
  v23 = *(v22 + 56);
  sub_10045B1E4(a1, &v31 - v20);
  sub_10045B1E4(a2, &v21[v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10045B1E4(v21, v14);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (*v14)
        {
          if (*v14 == 1)
          {
            v25 = 0xE100000000000000;
            v26 = 49;
            if (!v21[v23])
            {
LABEL_22:
              v29 = 0xE100000000000000;
              if (v26 != 48)
              {
                goto LABEL_27;
              }

LABEL_25:
              if (v25 == v29)
              {

LABEL_28:
                sub_10045B34C(v21, type metadata accessor for MetadataOption);
                return 1;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v25 = 0xE800000000000000;
            v26 = 0x7974696E69666E69;
            if (!v21[v23])
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          v25 = 0xE100000000000000;
          v26 = 48;
          if (!v21[v23])
          {
            goto LABEL_22;
          }
        }

        if (v21[v23] == 1)
        {
          v29 = 0xE100000000000000;
          if (v26 == 49)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v29 = 0xE800000000000000;
          if (v26 == 0x7974696E69666E69)
          {
            goto LABEL_25;
          }
        }

LABEL_27:
        v30 = sub_1004A6D34();

        if (v30)
        {
          goto LABEL_28;
        }

        sub_10045B34C(v21, type metadata accessor for MetadataOption);
        return 0;
      }

LABEL_14:
      sub_100025F40(v21, &qword_1005DD0D8, &qword_100508F18);
      return 0;
    }

    sub_10045B1E4(v21, v11);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100025F40(v11, &qword_1005DBCA8, &unk_100504BF0);
      goto LABEL_14;
    }

    sub_1003E05A4(&v21[v23], v7);
    v27 = sub_100436BFC(v11, v7);
    sub_100025F40(v7, &qword_1005DBCA8, &unk_100504BF0);
    sub_100025F40(v11, &qword_1005DBCA8, &unk_100504BF0);
  }

  else
  {
    sub_10045B1E4(v21, v17);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_14;
    }

    v27 = *v17 == *&v21[v23];
  }

  sub_10045B34C(v21, type metadata accessor for MetadataOption);
  return v27;
}

uint64_t type metadata accessor for MetadataOption()
{
  result = qword_1005DD0A0;
  if (!qword_1005DD0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10045B1E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataOption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10045B290()
{
  sub_1003E0740();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_10045B304(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10045B34C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void MetadataResponse.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[2];
  if (v4 < 0)
  {
    v8 = *v2;
    sub_1004A6EB4(1uLL);
    v9 = *(v8 + 16);
    sub_1004A6EB4(v9);
    if (v9)
    {
      v10 = (v8 + 54);
      do
      {
        v11 = *(v10 - 22);
        v12 = *(v10 - 14);
        v13 = *(v10 - 10);
        v14 = *(v10 - 1);
        v15 = *v10;
        v10 += 24;
        swift_beginAccess();
        v16 = *(v11 + 24) + (v15 | (v14 << 8));
        sub_1004A6EA4();
        --v9;
      }

      while (v9);
    }

    v7 = v4 | (v4 << 32);
  }

  else
  {
    v5 = *(v2 + 8);
    v6 = v2[1];
    sub_1004A6EB4(0);
    sub_1003A1460(a1, v6, v4);
    v7 = v5 | (v5 << 32);
  }

  sub_1004A6EB4(v7);
}

Swift::Int MetadataResponse.hashValue.getter()
{
  sub_1004A6E94();
  v1 = v0[2];
  if (v1 < 0)
  {
    v5 = *v0;
    sub_1004A6EB4(1uLL);
    v6 = *(v5 + 16);
    sub_1004A6EB4(v6);
    if (v6)
    {
      v7 = (v5 + 54);
      do
      {
        v8 = *(v7 - 22);
        v9 = *(v7 - 14);
        v10 = *(v7 - 10);
        v11 = *(v7 - 1);
        v12 = *v7;
        v7 += 24;
        swift_beginAccess();
        v13 = *(v8 + 24) + (v12 | (v11 << 8));
        sub_1004A6EA4();
        --v6;
      }

      while (v6);
    }

    v4 = v1 | (v1 << 32);
  }

  else
  {
    v2 = *(v0 + 8);
    v3 = v0[1];
    sub_1004A6EB4(0);
    sub_1003A1460(v15, v3, v1);
    v4 = v2 | (v2 << 32);
  }

  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

Swift::Int sub_10045B5B0()
{
  sub_1004A6E94();
  MetadataResponse.hash(into:)(v1);
  return sub_1004A6F14();
}

uint64_t sub_10045B5EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s12NIOIMAPCore216MetadataResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t sub_10045B638(uint64_t *a1)
{
  v2 = 0x415441444154454DLL;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  if (v5 < 0)
  {
    goto LABEL_13;
  }

  v6 = a1[3];
  v7 = *(v1 + 20);
  result = sub_1002F178C(0x415441444154454DLL, 0xE900000000000020, (v1 + 8), *(v1 + 20));
  if (v9)
  {
    v10._countAndFlagsBits = 0x415441444154454DLL;
    v10._object = 0xE900000000000020;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v1 + 20);
  v13 = __CFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
    __break(1u);
    goto LABEL_24;
  }

  *(v1 + 20) = v14;
  result = sub_100441F24(v6);
  v15 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v2 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v16)
  {
    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v2);
  }

  v18 = *(v1 + 20);
  v13 = __CFADD__(v18, result);
  v19 = v18 + result;
  if (v13)
  {
    goto LABEL_25;
  }

  *(v1 + 20) = v19;
  v20 = v15 + result;
  if (__OFADD__(v15, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = sub_1003E6AB8(v3, v4, v5);
  v22 = __OFADD__(v20, v21);
  result = v20 + v21;
  if (!v22)
  {
    return result;
  }

  __break(1u);
LABEL_13:
  v23 = *(v1 + 20);
  result = sub_1002F178C(v2, 0xE900000000000020, (v1 + 8), *(v1 + 20));
  if (v24)
  {
    v25._countAndFlagsBits = v2;
    v25._object = 0xE900000000000020;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = result;
  v27 = *(v1 + 20);
  v13 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v13)
  {
    goto LABEL_27;
  }

  *(v1 + 20) = v28;
  result = sub_100441F24(v4);
  v22 = __OFADD__(v26, result);
  v29 = v26 + result;
  if (v22)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v30 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v31)
  {
    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
  }

  v33 = *(v1 + 20);
  v13 = __CFADD__(v33, result);
  v34 = v33 + result;
  if (v13)
  {
    goto LABEL_29;
  }

  *(v1 + 20) = v34;
  v35 = v29 + result;
  if (__OFADD__(v29, result))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v36 = sub_1003E7120(v3);
  v22 = __OFADD__(v35, v36);
  result = v35 + v36;
  if (v22)
  {
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t _s12NIOIMAPCore216MetadataResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 < 0)
  {
    v10 = *(a2 + 16);
    if (v10 < 0)
    {
      v11 = v3;
      v12 = *(a2 + 8);
      if (sub_1003A370C(*a1, *a2) & 1) != 0 && v4 == v10 && (sub_1000FFC98(v11, v12))
      {
        return 1;
      }
    }
  }

  else
  {
    v5 = *(a2 + 16);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 24);
      v8 = *(a2 + 32);
      v9 = *(a2 + 24);
      if (sub_1003A0868(v3, *(a2 + 8)) & 1) != 0 && (sub_1003A09B0(v4, v5) & 1) != 0 && (v6 | (v6 << 32)) == (v8 | (v8 << 32)) && (sub_1000FFC98(v7, v9))
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_10045B928()
{
  result = qword_1005DD0E0;
  if (!qword_1005DD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD0E0);
  }

  return result;
}

uint64_t sub_10045B988(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 36))
  {
    return (*a1 + 15);
  }

  v3 = (((*(a1 + 16) >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*(a1 + 16) >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10045B9DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 15;
    *(result + 8) = 0;
    if (a3 >= 0xF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 1) & 7) - 8 * a2) << 60;
      *(result + 24) = 0;
      *(result + 32) = 0;
    }
  }

  return result;
}

uint64_t sub_10045BA6C(uint64_t *a1)
{
  v12 = a1[4] - a1[3];
  v13._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v13);

  v14._countAndFlagsBits = 658813;
  v14._object = 0xE300000000000000;
  sub_1004A5994(v14);
  v3 = *(v1 + 20);
  v4 = sub_1002F178C(31614, 0xE200000000000000, (v1 + 8), *(v1 + 20));
  if (v5)
  {
    v6._countAndFlagsBits = 31614;
    v6._object = 0xE200000000000000;
    v4 = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = v4;

  v8 = *(v1 + 20);
  result = (v8 + v7);
  if (__CFADD__(v8, v7))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  *(v1 + 20) = result;
  if (((*(v1 + 1) | (*(v1 + 5) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(result);
  }

  sub_1003E0BCC(a1);
  v11 = __OFADD__(v7, v10);
  result = v7 + v10;
  if (v11)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10045BB90(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (HIDWORD(a2) < a2)
    {
      __break(1u);
    }

    else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= HIDWORD(a2))
    {
      v11[0] = result;
      v11[1] = a2;
      v12 = a3;
      v13 = WORD2(a3);
      v14 = BYTE6(a3);
      v15 = a2;
      v16 = HIDWORD(a2);

      v4 = sub_10045BA6C(v11);
      sub_1003A52D0(v11);
      return v4;
    }

    __break(1u);
    goto LABEL_12;
  }

  v5 = *(v3 + 20);
  result = sub_1002F178C(4999502, 0xE300000000000000, (v3 + 8), *(v3 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 4999502;
    v7._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
  }

  v8 = *(v3 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *(v3 + 20) = v10;
  return result;
}

void MetadataValue.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    sub_1004A6EC4(1u);
    swift_beginAccess();
    v6 = *(a2 + 24) + ((a4 >> 24) & 0xFFFF00 | BYTE6(a4));
    sub_1004A6EA4();
  }

  else
  {
    sub_1004A6EC4(0);
  }
}

Swift::Int MetadataValue.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1004A6E94();
  if (a1)
  {
    sub_1004A6EC4(1u);
    swift_beginAccess();
    v5 = *(a1 + 24) + ((a3 >> 24) & 0xFFFF00 | BYTE6(a3));
    sub_1004A6EA4();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1004A6F14();
}

Swift::Int sub_10045BDF0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | ((*(v0 + 20) | (*(v0 + 22) << 16)) << 32);
  sub_1004A6E94();
  MetadataValue.hash(into:)(v5, v1, v2, v3);
  return sub_1004A6F14();
}

void sub_10045BE94(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  *(a1 + 15) = 0;
}

uint64_t sub_10045BEA0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (a4)
    {

      LOBYTE(a6) = sub_10020FBD0(v11, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);

      if (a6)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_10045BF40()
{
  result = qword_1005DD0E8;
  if (!qword_1005DD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD0E8);
  }

  return result;
}

uint64_t sub_10045BF94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 23))
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

uint64_t sub_10045BFF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 23) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 23) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t ModificationSequenceValue.init<A>(exactly:)(char *a1, uint64_t a2, uint64_t a3)
{
  v38[2] = *(*(a3 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v38[1] = v38 - v8;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v38 - v15;
  if (sub_1004A64B4())
  {
    if (sub_1004A64A4() < 64)
    {
LABEL_9:
      (*(v9 + 16))(v16, a1, a2);
      v22 = sub_1004A6494();
      v21 = *(v9 + 8);
      v21(v16, a2);
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_17:
      v21(a1, a2);
      return 0;
    }

    goto LABEL_6;
  }

  v17 = sub_1004A64B4();
  v18 = sub_1004A64A4();
  if (v17)
  {
    if (v18 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_1004A6DE4();
      sub_1004A6D04();
      v30 = *(*(a3 + 32) + 8);
      v31 = sub_1004A5634();
      v38[0] = a1;
      v21 = *(v9 + 8);
      v21(v16, a2);
      if (v31)
      {
        a1 = v38[0];
      }

      else
      {
        (*(v9 + 16))(v16, v38[0], a2);
        v37 = sub_1004A6494();
        v21(v16, a2);
        a1 = v38[0];
        if ((v37 & 0x8000000000000000) == 0)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_17;
    }

LABEL_6:
    v39 = 0;
    sub_1001C08B0();
    sub_1004A6474();
    v19 = *(*(a3 + 32) + 8);
    v20 = sub_1004A5634();
    v21 = *(v9 + 8);
    v21(v16, a2);
    if (v20)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (v18 < 64)
  {
    goto LABEL_9;
  }

LABEL_10:
  (*(v9 + 16))(v13, a1, a2);
  if (sub_1004A64B4())
  {
    swift_getAssociatedConformanceWitness();
    sub_1004A6DE4();
    sub_1004A6D04();
    v23 = *(*(a3 + 32) + 8);
    v24 = sub_1004A5634();
    v25 = *(v9 + 8);
    v25(v16, a2);
    if (v24)
    {
      goto LABEL_22;
    }
  }

  if (sub_1004A64A4() < 64)
  {
    goto LABEL_24;
  }

  v39 = -1;
  v26 = sub_1004A64B4();
  v27 = sub_1004A64A4();
  if (v26)
  {
    if (v27 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      sub_1004A6DE4();
      sub_1004A6D04();
      v28 = *(*(a3 + 32) + 8);
      v29 = sub_1004A5624();
      (*(v9 + 8))(v16, a2);
      if ((v29 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v27 >= 65)
  {
LABEL_21:
    sub_100433888();
    sub_1004A6474();
    v32 = *(*(a3 + 32) + 8);
    v33 = sub_1004A5634();
    v25 = *(v9 + 8);
    v25(v16, a2);
    if ((v33 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_22:
    v25(a1, a2);
    v25(v13, a2);
    return 0;
  }

LABEL_23:
  sub_1004A6494();
LABEL_24:
  v34 = sub_1004A6494();
  v35 = *(v9 + 8);
  v35(a1, a2);
  v35(v13, a2);
  if ((v34 & 0x8000000000000000) == 0)
  {
    return v34;
  }

  return 0;
}

uint64_t BinaryInteger.init(_:)()
{
  sub_100433888();
  return sub_1004A64D4();
}

{
  sub_1000D40AC();
  return sub_1004A64D4();
}

NIOIMAPCore2::ModificationSequenceValue __swiftcall ModificationSequenceValue.init(_:)(NIOIMAPCore2::ModificationSequenceValue result)
{
  if ((result.value & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

Swift::Int64 __swiftcall ModificationSequenceValue.distance(to:)(Swift::Int64 to)
{
  if ((v1 | to) < 0)
  {
    __break(1u);
  }

  else
  {
    to -= v1;
  }

  return to;
}

NIOIMAPCore2::ModificationSequenceValue __swiftcall ModificationSequenceValue.advanced(by:)(NIOIMAPCore2::ModificationSequenceValue by)
{
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = __OFADD__(v1, by.value);
  by.value += v1;
  if (v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((by.value & 0x8000000000000000) != 0)
  {
LABEL_7:
    __break(1u);
  }

  return by;
}

unint64_t sub_10045C788()
{
  result = qword_1005DD0F0;
  if (!qword_1005DD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD0F0);
  }

  return result;
}

unint64_t sub_10045C7EC()
{
  result = qword_1005DD0F8;
  if (!qword_1005DD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD0F8);
  }

  return result;
}

void *sub_10045C840@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (((*v2 | *result) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *sub_10045C860@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  if (*v2 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = __OFADD__(v3, *result);
  v5 = v3 + *result;
  if (v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    *a2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_10045C88C(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v6 = *a4;
  if (*a4 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = __OFADD__(v6, *a6);
  v8 = v6 + *a6;
  if (v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    *result = v8;
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_10045C954(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = HIDWORD(a2);
  v6 = a2;
  sub_1004A5874((HIDWORD(a2) - a2));
  v7 = v5;
  v8 = v6;

  v50 = a1;
  swift_beginAccess();
  if (v6 == v7)
  {
LABEL_2:
  }

  else
  {
    v47 = v7;
    v48 = (a3 >> 24) & 0xFFFF00 | BYTE6(a3);
    v49 = -v7;
    while (1)
    {
      v9 = v8 + 1;
      if (v8 == -1)
      {
        break;
      }

      v10 = *(v50 + 24) + v48;
      if (*(v10 + v8) == 38)
      {
        if (v9 == v7)
        {
          LODWORD(v11) = v7;
          v12 = _swiftEmptyArrayStorage;
LABEL_29:
          v19 = *(v12 + 2);
          v45 = v11;
          if ((v19 & 3) != 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_10015BF20(0, v19 + 1, 1, v12);
            }

            v21 = *(v12 + 2);
            v20 = *(v12 + 3);
            v22 = v21 + 1;
            if (v21 >= v20 >> 1)
            {
              v12 = sub_10015BF20((v20 > 1), v21 + 1, 1, v12);
            }

            *(v12 + 2) = v22;
            v12[v21 + 32] = 61;
            if ((v22 & 3) != 0)
            {
              v23 = *(v12 + 3);
              v24 = v21 + 2;
              if (v22 >= v23 >> 1)
              {
                v12 = sub_10015BF20((v23 > 1), v21 + 2, 1, v12);
              }

              *(v12 + 2) = v24;
              v12[v22 + 32] = 61;
              if ((v24 & 3) != 0)
              {
                v25 = *(v12 + 3);
                v26 = v21 + 3;
                if (v24 >= v25 >> 1)
                {
                  v12 = sub_10015BF20((v25 > 1), v21 + 3, 1, v12);
                }

                *(v12 + 2) = v26;
                v12[v24 + 32] = 61;
                if ((v26 & 3) != 0)
                {
                  v27 = *(v12 + 3);
                  if (v26 >= v27 >> 1)
                  {
                    v12 = sub_10015BF20((v27 > 1), v21 + 4, 1, v12);
                  }

                  *(v12 + 2) = v21 + 4;
                  v12[v26 + 32] = 61;
                }
              }
            }
          }

          v28 = sub_1003C5A60(v12, 0);
          if (v46)
          {

            return;
          }

          v29 = v28;

          v30 = v29[2];
          if (v30)
          {

            sub_10045D8C0();
            swift_allocError();
            *v44 = v30;
            swift_willThrow();

            return;
          }

          if (v30)
          {
            v31 = 0;
            v32 = v29 + 33;
            v33 = _swiftEmptyArrayStorage;
            while (1)
            {
              v34 = v29[2];
              if (v31 >= v34)
              {
                break;
              }

              v35 = v31 + 1;
              if (v31 + 1 == v30)
              {
                goto LABEL_56;
              }

              if (v35 >= v34)
              {
                goto LABEL_61;
              }

              v36 = *(v32 - 1);
              v37 = *v32;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v33 = sub_100460EE4(0, *(v33 + 2) + 1, 1, v33);
              }

              v39 = *(v33 + 2);
              v38 = *(v33 + 3);
              if (v39 >= v38 >> 1)
              {
                v33 = sub_100460EE4((v38 > 1), v39 + 1, 1, v33);
              }

              *(v33 + 2) = v39 + 1;
              *&v33[2 * v39 + 32] = v37 | (v36 << 8);
              v32 += 2;
              v31 = v35 + 1;
              if (v35 + 1 == v30)
              {
                goto LABEL_56;
              }
            }

            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            break;
          }

LABEL_56:

          sub_10000C9C0(&qword_1005DD108, &qword_1005093D8);
          sub_10045D914();
          sub_1002A73D8();
          v40 = sub_1004A5854();
          if (!v41)
          {
            goto LABEL_66;
          }

          v42 = v40;
          v43 = v41;

          v53._countAndFlagsBits = v42;
          v53._object = v43;
          sub_1004A5994(v53);

          v8 = v45;
        }

        else
        {
          if (*(v10 + v9) != 45)
          {
            v11 = v9 - 0xFFFFFFFFLL;
            v13 = v48 + v9;
            v12 = _swiftEmptyArrayStorage;
            while (v11)
            {
              v14 = *(*(v50 + 24) + v13);
              if (v14 == 44)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v12 = sub_10015BF20(0, *(v12 + 2) + 1, 1, v12);
                }

                v16 = *(v12 + 2);
                v18 = *(v12 + 3);
                v17 = v16 + 1;
                if (v16 >= v18 >> 1)
                {
                  v12 = sub_10015BF20((v18 > 1), v16 + 1, 1, v12);
                }

                LOBYTE(v14) = 47;
              }

              else
              {
                if (v14 == 45)
                {
                  goto LABEL_29;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v12 = sub_10015BF20(0, *(v12 + 2) + 1, 1, v12);
                }

                v16 = *(v12 + 2);
                v15 = *(v12 + 3);
                v17 = v16 + 1;
                if (v16 >= v15 >> 1)
                {
                  v12 = sub_10015BF20((v15 > 1), v16 + 1, 1, v12);
                }
              }

              *(v12 + 2) = v17;
              v12[v16 + 32] = v14;
              ++v11;
              ++v13;
              if (v49 + v11 == 1)
              {
                LODWORD(v11) = v47;
                goto LABEL_29;
              }
            }

            goto LABEL_62;
          }

          v8 += 2;
          if (v9 == -1)
          {
            goto LABEL_64;
          }

          if (v8 > v7)
          {
            goto LABEL_65;
          }

          v52._countAndFlagsBits = 38;
          v52._object = 0xE100000000000000;
          sub_1004A5994(v52);
        }
      }

      else
      {
        v51._countAndFlagsBits = sub_1004A58E4();
        sub_1004A5984(v51);

        ++v8;
      }

      v7 = v47;
      if (v8 == v47)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }
}

uint64_t sub_10045CF70(uint64_t a1, unint64_t a2)
{
  if (qword_1005DB9D0 != -1)
  {
    goto LABEL_135;
  }

  while (1)
  {
    v4 = dword_1005DE398;
    v5 = word_1005DE39C;
    v6 = byte_1005DE39E;
    v80 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v81 = HIDWORD(qword_1005DE390);
    v82 = dword_1005DE398;
    v83 = word_1005DE39C;
    v84 = byte_1005DE39E;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v7 = sub_1004A59E4();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v7 <= v4 - (v6 | (v5 << 8)))
    {
    }

    else
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        ByteBuffer._ensureAvailableCapacity(_:at:)(v7, 0);
      }

      else
      {
        v8 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v7, v8 & 1);
      }
    }

    v9 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a2) & 0xF;
    }

    if (!v9)
    {
      return v80;
    }

    v79 = 4 * v9;
    v10 = 15;
    v76 = a1;
    v77 = a2;
    while (1)
    {
      while (1)
      {
        v11 = v10;
        v13 = sub_1004A5A94();
        v14 = v12;
        if (v13 == 2573 && v12 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
        {
          goto LABEL_51;
        }

        if ((v14 & 0x2000000000000000) != 0)
        {
          v15 = HIBYTE(v14) & 0xF;
        }

        else
        {
          v15 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (!v15)
        {
          goto LABEL_131;
        }

        v16 = (v14 & 0x1000000000000000) != 0 ? sub_1004A5884() : sub_1004A6704(0) << 16;
        if (v16 >> 14 != 4 * v15)
        {
          goto LABEL_51;
        }

        v17 = sub_1001E11BC(v13, v14);
        if ((v17 & 0x100000000) != 0)
        {
          __break(1u);
LABEL_138:
          __break(1u);
        }

        if ((v17 & 0xFFFFFF80) != 0)
        {
LABEL_51:

          break;
        }

        v18 = sub_1001E11BC(v13, v14);
        if ((v18 & 0x100000000) != 0)
        {
          goto LABEL_138;
        }

        v19 = v18;

        if ((v19 & 0xFFFFFF00) != 0)
        {
          goto LABEL_132;
        }

        v20 = v19;
        if (v19 - 32 > 0x5E)
        {
          break;
        }

        v21 = v81 + 1;
        if (v81 == -1)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          if (v21 >= v82)
          {
            v22 = v21 - v82;
          }

          else
          {
            v22 = 0;
          }

          v23 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v22, v23 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v81);
        swift_beginAccess();
        v24 = v84 | (v83 << 8);
        v25 = v82 - v24;
        if (v82 - v24 >= v81)
        {
          v25 = v81;
        }

        if (!v81)
        {
          v25 = 0;
        }

        *(*(v80 + 24) + v24 + v25) = v20;
        v26 = ++v81;
        if (v20 == 38)
        {
          v27 = v26 + 1;
          if (v26 == -1)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            if (v27 >= v82)
            {
              v28 = v27 - v82;
            }

            else
            {
              v28 = 0;
            }

            v29 = variable initialization expression of Engine.isProcessingUpdates();
            ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v28, v29 & 1);
          }

          ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v26);
          swift_beginAccess();
          v30 = sub_1003B7140(v26, *(v80 + 24) + (v84 | (v83 << 8)), *(v80 + 24) + (v84 | (v83 << 8)) + v82 - (v84 | (v83 << 8)));
          if (v31)
          {
            *(v31 + v30) = 45;
          }

          v81 = v26 + 1;
        }

        v10 = sub_1004A5934();
        if (v79 <= v10 >> 14)
        {
          return v80;
        }
      }

      v32 = v11;
      if (v79 <= v11 >> 14)
      {
        v33 = _swiftEmptyArrayStorage;
      }

      else
      {
        v33 = _swiftEmptyArrayStorage;
        while (1)
        {
          v34 = v32;
          v35 = sub_1004A5A94();
          v37 = v36;
          v38 = sub_1004A5584();
          if ((v38 & 0x100) == 0 && v38 - 127 >= 0xFFFFFFA1)
          {
            break;
          }

          v39 = HIBYTE(v37) & 0xF;
          v85[0] = v35;
          v85[1] = v37;
          if ((v37 & 0x2000000000000000) == 0)
          {
            v39 = v35 & 0xFFFFFFFFFFFFLL;
          }

          v85[2] = 0;
          v85[3] = v39;
          v86 = 0;
          v87 = 1;
          v40 = sub_1004A5A44();
          if ((v40 & 0x10000) == 0)
          {
            LOWORD(v41) = v40;
            do
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v33 = sub_10015BF20(0, *(v33 + 2) + 1, 1, v33);
              }

              v43 = *(v33 + 2);
              v42 = *(v33 + 3);
              v44 = v42 >> 1;
              v45 = v43 + 1;
              if (v42 >> 1 <= v43)
              {
                v33 = sub_10015BF20((v42 > 1), v43 + 1, 1, v33);
                v42 = *(v33 + 3);
                v44 = v42 >> 1;
              }

              *(v33 + 2) = v45;
              v33[v43 + 32] = BYTE1(v41);
              if (v44 < (v43 + 2))
              {
                v33 = sub_10015BF20((v42 > 1), v43 + 2, 1, v33);
              }

              *(v33 + 2) = v43 + 2;
              v33[v45 + 32] = v41;
              v41 = sub_1004A5A44();
            }

            while ((v41 & 0x10000) == 0);
          }

          v32 = sub_1004A5934();
          if (v79 <= v32 >> 14)
          {
            goto LABEL_71;
          }
        }

        v32 = v34;
      }

LABEL_71:
      v46 = *(v33 + 2);
      v47 = v46 + 2;
      if (__OFADD__(v46, 2))
      {
        break;
      }

      v48 = v47 / 3;
      if ((v47 / 3 - 0x2000000000000000) >> 62 != 3)
      {
        goto LABEL_122;
      }

      v49 = 4 * v48;
      if (((4 * v48) & 0x8000000000000000) != 0)
      {
        goto LABEL_123;
      }

      v78 = v32;
      a1 = _swiftEmptyArrayStorage;
      if (v47 >= 3)
      {
        a1 = sub_1004A5C64();
        *(a1 + 16) = v49;
      }

      v85[0] = 0;
      sub_1003C511C(&unk_1005BB228, 256, &unk_1005BB348, 256, (v33 + 32), v46, a1 + 32, v49, 0, v85);
      v50 = v85[0];
      if (v49 < v85[0])
      {
        goto LABEL_124;
      }

      *(a1 + 16) = v85[0];
      if (v50)
      {
        v85[0] = _swiftEmptyArrayStorage;
        sub_1001D606C(0, v50 & ~(v50 >> 63), 0);
        if (v50 < 1)
        {
          goto LABEL_130;
        }

        v51 = v85[0];
        v52 = *(v85[0] + 16);
        v53 = 32;
        do
        {
          if (*(a1 + v53) == 47)
          {
            v54 = 44;
          }

          else
          {
            v54 = *(a1 + v53);
          }

          v85[0] = v51;
          v55 = v51[3];
          if (v52 >= v55 >> 1)
          {
            sub_1001D606C((v55 > 1), v52 + 1, 1);
            v51 = v85[0];
          }

          v51[2] = v52 + 1;
          *(v51 + v52 + 32) = v54;
          ++v53;
          ++v52;
          --v50;
        }

        while (v50);

        a2 = v51[2];
        if (!a2)
        {
LABEL_96:
          a1 = _swiftEmptyArrayStorage;
          goto LABEL_97;
        }
      }

      else
      {

        v51 = _swiftEmptyArrayStorage;
        a2 = _swiftEmptyArrayStorage[2];
        if (!a2)
        {
          goto LABEL_96;
        }
      }

      v56 = (v51 + 4);
      a1 = _swiftEmptyArrayStorage;
      do
      {
        v60 = *v56++;
        v59 = v60;
        if (v60 != 61)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85[0] = a1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001D606C(0, *(a1 + 16) + 1, 1);
            a1 = v85[0];
          }

          v58 = *(a1 + 16);
          v57 = *(a1 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_1001D606C((v57 > 1), v58 + 1, 1);
            a1 = v85[0];
          }

          *(a1 + 16) = v58 + 1;
          *(a1 + v58 + 32) = v59;
        }

        --a2;
      }

      while (a2);
LABEL_97:

      LOBYTE(v85[0]) = 38;
      v62 = v81 + 1;
      if (v81 == -1)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v62 >= v82)
        {
          v63 = v62 - v82;
        }

        else
        {
          v63 = 0;
        }

        v64 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v63, v64 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v81);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v85, v85 + 1, v81);
      v65 = v81 + 1;
      v66 = *(a1 + 16);
      v67 = v81 + 1 + v66;
      if (__CFADD__(v81 + 1, v66))
      {
        goto LABEL_126;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v67 >= v82)
        {
          v68 = v67 - v82;
        }

        else
        {
          v68 = 0;
        }

        v69 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v68, v69 & 1);
      }

      if (HIDWORD(v66))
      {
        goto LABEL_127;
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(v66, v65);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((a1 + 32), a1 + 32 + v66, v65);

      v70 = __CFADD__(v65, v66);
      v71 = v65 + v66;
      if (v70)
      {
        goto LABEL_128;
      }

      LOBYTE(v85[0]) = 45;
      v72 = v71 + 1;
      if (v71 == -1)
      {
        goto LABEL_129;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v72 >= v82)
        {
          v73 = v72 - v82;
        }

        else
        {
          v73 = 0;
        }

        v74 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v73, v74 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(1u, v71);
      ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v85, v85 + 1, v71);
      a1 = v76;
      a2 = v77;
      v81 = v71 + 1;
      v10 = v78;
      if (v79 <= v78 >> 14)
      {
        return v80;
      }
    }

    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    __break(1u);
LABEL_134:
    __break(1u);
    __break(1u);
LABEL_135:
    swift_once();
  }
}

unint64_t sub_10045D8C0()
{
  result = qword_1005DD100;
  if (!qword_1005DD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD100);
  }

  return result;
}

unint64_t sub_10045D914()
{
  result = qword_1005DD110;
  if (!qword_1005DD110)
  {
    sub_10000DEFC(&qword_1005DD108, &qword_1005093D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD110);
  }

  return result;
}

unint64_t sub_10045D97C(uint64_t a1)
{
  v3 = sub_10045DD28(0, *a1, v1);
  v4 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 32;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
    goto LABEL_22;
  }

  *(v1 + 20) = v10;
  v11 = __OFADD__(v3, result);
  v12 = v3 + result;
  if (v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  result = sub_1004499A8();
  v15 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(a1 + 24);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v36 = *(a1 + 72);
    v37 = *(a1 + 56);
    v20 = *(v1 + 20);
    result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
    if (v21)
    {
      v22._countAndFlagsBits = 32;
      v22._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
    }

    v23 = result;
    v24 = *(v1 + 20);
    v9 = __CFADD__(v24, result);
    v25 = v24 + result;
    if (v9)
    {
      goto LABEL_25;
    }

    *(v1 + 20) = v25;
    result = sub_1004633BC(v17, v16, v18);
    v26 = result;
    if (v37 == 1)
    {
      v27 = 0;
    }

    else
    {
      v29 = *(v1 + 20);
      result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
      if (v30)
      {
        v31._countAndFlagsBits = 32;
        v31._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
      }

      v32 = result;
      v33 = *(v1 + 20);
      v9 = __CFADD__(v33, result);
      v34 = v33 + result;
      if (v9)
      {
        goto LABEL_28;
      }

      *(v1 + 20) = v34;
      v38 = v19;
      v39 = v37;
      v40 = v36;
      result = sub_1003E2110(&v38);
      v27 = v32 + result;
      if (__OFADD__(v32, result))
      {
LABEL_29:
        __break(1u);
        return result;
      }
    }

    v11 = __OFADD__(v26, v27);
    v35 = v26 + v27;
    if (v11)
    {
      goto LABEL_26;
    }

    v11 = __OFADD__(v23, v35);
    v28 = v23 + v35;
    if (v11)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {
    v28 = 0;
  }

  result = v15 + v28;
  if (__OFADD__(v15, v28))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return result;
}

double BodyStructure.Multipart.Extension.init(parameters:dispositionAndLanguage:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  *&v12[8] = xmmword_1004B1230;
  memset(&v12[24], 0, 56);
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *v12 = a3;
  sub_10027F8A8(a4, &v12[8], &qword_1005DBCD8, &qword_1004FE5F0);
  v15 = *&v12[16];
  v16 = *&v12[32];
  v17 = *&v12[48];
  v18 = *&v12[64];
  v13 = v11;
  v14 = *v12;
  v19[2] = *&v12[16];
  v19[3] = *&v12[32];
  v19[4] = *&v12[48];
  v19[5] = *&v12[64];
  v19[0] = v11;
  v19[1] = *v12;
  sub_100400058(&v13, &v10);
  sub_1004000B4(v19);
  v6 = v16;
  a5[2] = v15;
  a5[3] = v6;
  v7 = v18;
  a5[4] = v17;
  a5[5] = v7;
  result = *&v13;
  v9 = v14;
  *a5 = v13;
  a5[1] = v9;
  return result;
}

double BodyStructure.Multipart.init(parts:mediaSubtype:extension:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  memset(&v12[8], 0, 96);
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *v12 = a3;
  sub_10027F8A8(a4, &v12[8], &qword_1005DBCC8, &qword_1004FE5E0);
  v17 = *&v12[48];
  v18 = *&v12[64];
  v19 = *&v12[80];
  v20 = *&v12[96];
  v13 = v11;
  v14 = *v12;
  v15 = *&v12[16];
  v16 = *&v12[32];
  v22 = *&v12[96];
  v21[5] = *&v12[64];
  v21[6] = *&v12[80];
  v21[3] = *&v12[32];
  v21[4] = *&v12[48];
  v21[1] = *v12;
  v21[2] = *&v12[16];
  v21[0] = v11;
  sub_100259A40(&v13, &v10);
  sub_100267AA8(v21);
  v6 = v18;
  *(a5 + 64) = v17;
  *(a5 + 80) = v6;
  *(a5 + 96) = v19;
  *(a5 + 112) = v20;
  v7 = v14;
  *a5 = v13;
  *(a5 + 16) = v7;
  result = *&v15;
  v9 = v16;
  *(a5 + 32) = v15;
  *(a5 + 48) = v9;
  return result;
}

uint64_t sub_10045DD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a2 + 16);
  if (!v6)
  {
    return a1;
  }

  for (i = (a2 + 32); ; i = (i + 184))
  {
    v9 = i[9];
    v101 = i[8];
    v102 = v9;
    v103 = i[10];
    v104 = *(i + 176);
    v10 = i[5];
    v97 = i[4];
    v98 = v10;
    v11 = i[7];
    v99 = i[6];
    v100 = v11;
    v12 = i[1];
    v93 = *i;
    v94 = v12;
    v13 = i[3];
    v95 = i[2];
    v96 = v13;
    v14 = *(a3 + 20);
    sub_1000510B4(&v93, v88);
    v15 = v4;
    result = sub_1002F178C(40, 0xE100000000000000, (a3 + 8), v14);
    v17 = v4;
    if (v18)
    {
      v19._countAndFlagsBits = 40;
      v19._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v14);
    }

    v20 = result;
    v21 = *(a3 + 20);
    v22 = __CFADD__(v21, result);
    v23 = v21 + result;
    if (v22)
    {
      break;
    }

    *(a3 + 20) = v23;
    v91[8] = v101;
    v91[9] = v102;
    v91[10] = v103;
    v92 = v104;
    v91[4] = v97;
    v91[5] = v98;
    v91[6] = v99;
    v91[7] = v100;
    v91[0] = v93;
    v91[1] = v94;
    v91[2] = v95;
    v91[3] = v96;
    if (sub_10000FE88(v91) == 1)
    {
      v24 = UInt32.init(_:)(v91);
      v25 = *(v24 + 80);
      v115[4] = *(v24 + 64);
      v115[5] = v25;
      v115[6] = *(v24 + 96);
      v116 = *(v24 + 112);
      v26 = *(v24 + 16);
      v115[0] = *v24;
      v115[1] = v26;
      v27 = *(v24 + 48);
      v115[2] = *(v24 + 32);
      v115[3] = v27;
      result = sub_10045D97C(v115);
      v28 = v20 + result;
      if (__OFADD__(v20, result))
      {
        goto LABEL_44;
      }
    }

    else
    {
      v117 = v15;
      v29 = UInt32.init(_:)(v91);
      v30 = v29;
      v31 = *v29;
      v32 = *v29 >> 62;
      if (v32)
      {
        v33 = (v31 & 0x3FFFFFFFFFFFFFFFLL);
        if (v32 == 1)
        {
          memcpy(__dst, v33 + 2, sizeof(__dst));
          v34 = *(v30 + 24);
          v35 = *(v30 + 56);
          v113[2] = *(v30 + 40);
          v113[3] = v35;
          v113[4] = *(v30 + 72);
          v36 = *(v30 + 8);
          v113[1] = v34;
          v113[0] = v36;
          sub_100259990(__dst, v88);
          v37 = sub_10049AF5C(__dst, v113);
          result = sub_1002599EC(__dst);
        }

        else
        {
          v61 = v33[2];
          v62 = v33[3];
          v63 = v33[4];
          v64 = *(v29 + 24);
          v65 = *(v29 + 56);
          v114[2] = *(v29 + 40);
          v114[3] = v65;
          v114[4] = *(v29 + 72);
          v66 = *(v29 + 8);
          v114[1] = v64;
          v114[0] = v66;

          v37 = sub_10049B274(v61, v62, v63, v114);
        }
      }

      else
      {
        v39 = *(v31 + 16);
        v38 = *(v31 + 24);
        v40 = *(v31 + 40);
        v87 = *(v31 + 32);
        v41 = *(v29 + 24);
        v42 = *(v29 + 56);
        v111[2] = *(v29 + 40);
        v111[3] = v42;
        v111[4] = *(v29 + 72);
        v111[0] = *(v29 + 8);
        v111[1] = v41;

        v43 = sub_1004498E0();
        v44 = *(a3 + 20);
        v45 = v117;
        result = sub_1002F178C(32, 0xE100000000000000, (a3 + 8), *(a3 + 20));
        v117 = v45;
        if (v46)
        {
          v47._countAndFlagsBits = 32;
          v47._object = 0xE100000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v47, v44);
        }

        v48 = *(a3 + 20);
        v22 = __CFADD__(v48, result);
        v49 = v48 + result;
        if (v22)
        {
          goto LABEL_49;
        }

        *(a3 + 20) = v49;
        v50 = v43 + result;
        if (__OFADD__(v43, result))
        {
          goto LABEL_50;
        }

        result = sub_1004499A8();
        v51 = __OFADD__(v50, result);
        v52 = v50 + result;
        if (v51)
        {
          goto LABEL_51;
        }

        v53 = *(a3 + 20);
        v54 = v117;
        result = sub_1002F178C(32, 0xE100000000000000, (a3 + 8), *(a3 + 20));
        v117 = v54;
        if (v55)
        {
          v56._countAndFlagsBits = 32;
          v56._object = 0xE100000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v56, v53);
        }

        v57 = *(a3 + 20);
        v22 = __CFADD__(v57, result);
        v58 = v57 + result;
        if (v22)
        {
          goto LABEL_52;
        }

        *(a3 + 20) = v58;
        v51 = __OFADD__(v52, result);
        v59 = v52 + result;
        if (v51)
        {
          goto LABEL_53;
        }

        v60 = sub_1003F0B84(v111);

        v51 = __OFADD__(v59, v60);
        v37 = v59 + v60;
        if (v51)
        {
          goto LABEL_54;
        }
      }

      v67 = *(v30 + 96);
      if (v67 != 1)
      {
        v105[0] = *(v30 + 88);
        v105[1] = v67;
        v68 = *(v30 + 120);
        v69 = *(v30 + 152);
        v108 = *(v30 + 136);
        v109 = v69;
        v110 = *(v30 + 168);
        v106 = *(v30 + 104);
        v107 = v68;
        v70 = *(a3 + 20);
        v71 = *(v30 + 136);
        v88[2] = *(v30 + 120);
        v88[3] = v71;
        v88[4] = *(v30 + 152);
        v89 = *(v30 + 168);
        v72 = *(v30 + 104);
        v88[0] = *(v30 + 88);
        v88[1] = v72;
        sub_1003FF7C8(v88, v90);
        v73 = v117;
        result = sub_1002F178C(32, 0xE100000000000000, (a3 + 8), v70);
        v117 = v73;
        if (v74)
        {
          v75._countAndFlagsBits = 32;
          v75._object = 0xE100000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v75, v70);
        }

        v76 = *(a3 + 20);
        v22 = __CFADD__(v76, result);
        v77 = v76 + result;
        if (v22)
        {
          goto LABEL_46;
        }

        *(a3 + 20) = v77;
        v51 = __OFADD__(v37, result);
        v78 = v37 + result;
        if (v51)
        {
          goto LABEL_47;
        }

        v79 = sub_10049B448(v105);
        result = sub_100025F40(v30 + 88, &qword_1005DBCE8, &qword_1004FE600);
        v51 = __OFADD__(v78, v79);
        v37 = v78 + v79;
        if (v51)
        {
          goto LABEL_48;
        }
      }

      v28 = v20 + v37;
      v17 = v117;
      if (__OFADD__(v20, v37))
      {
        goto LABEL_45;
      }
    }

    v80 = *(a3 + 20);
    result = sub_1002F178C(41, 0xE100000000000000, (a3 + 8), *(a3 + 20));
    v4 = v17;
    if (v81)
    {
      v82._countAndFlagsBits = 41;
      v82._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v82, v80);
    }

    v83 = result;
    v84 = *(a3 + 20);
    v22 = __CFADD__(v84, result);
    v85 = v84 + result;
    if (v22)
    {
      goto LABEL_41;
    }

    *(a3 + 20) = v85;
    result = sub_100051110(&v93);
    v86 = v28 + v83;
    if (__OFADD__(v28, v83))
    {
      goto LABEL_42;
    }

    v51 = __OFADD__(a1, v86);
    a1 += v86;
    if (v51)
    {
      goto LABEL_43;
    }

    if (!--v6)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void BodyStructure.Multipart.hash(into:)(uint64_t a1)
{
  sub_1003AF454(a1, *v1);
  v3 = v1[1];
  v4 = v1[2];
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v5 = v1[4];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v1[5];
  v30 = v1[9];
  v23 = v1[6];
  v24 = v1[10];
  v28 = v1[11];
  v29 = v1[7];
  v26 = v1[13];
  v27 = v1[12];
  v25 = v1[14];
  sub_1004A6EC4(1u);
  v7 = *(v6 + 16);
  sub_1004A6EB4(v7);

  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 40);
    v10 = (v5 + 40);
    while (v8 < *(v5 + 16))
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      ++v8;
      v13 = *(v9 - 1);
      v14 = *v9;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v9 += 2;
      v10 += 2;
      if (v7 == v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_6:

  if (v29 == 1)
  {
LABEL_7:
    sub_1004A6EC4(0);
    return;
  }

  sub_1004A6EC4(1u);
  if (v29)
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v15 = *(v24 + 16);
    sub_1004A6EB4(v15);

    if (v15)
    {
      v16 = 0;
      v17 = (v24 + 40);
      v18 = (v30 + 40);
      while (v16 < *(v30 + 16))
      {
        v19 = *(v18 - 1);
        v20 = *v18;
        ++v16;
        v21 = *(v17 - 1);
        v22 = *v17;

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v17 += 2;
        v18 += 2;
        if (v15 == v16)
        {
          goto LABEL_13;
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

LABEL_13:
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003B0794(a1, v28, v27, v26, v25);
}

Swift::Int BodyStructure.Multipart.hashValue.getter()
{
  sub_1004A6E94();
  BodyStructure.Multipart.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10045E580()
{
  sub_1004A6E94();
  BodyStructure.Multipart.hash(into:)(v1);
  return sub_1004A6F14();
}

BOOL sub_10045E5BC(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(v12, v14);
}

void BodyStructure.Multipart.Extension.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v34 = v2;
  v4 = *(v2 + 16);
  sub_1004A6EB4(v4);

  if (v4)
  {
    v6 = 0;
    v7 = (v2 + 40);
    v8 = (v3 + 40);
    while (v6 < *(v3 + 16))
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      ++v6;
      v11 = *(v7 - 1);
      v12 = *v7;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v7 += 2;
      v8 += 2;
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  sub_100025F40(&v34, &qword_1005D3FD0, &qword_1004DF4C0);
  v13 = v31[4];
  if (v13 == 1)
  {
    sub_1004A6EC4(0);
    return;
  }

  v14 = v31[3];
  v15 = v31[7];
  v33 = v31[6];
  v16 = v31[8];
  v17 = v31[9];
  v18 = v31[10];
  v19 = v31[11];
  sub_1004A6EC4(1u);
  if (v13)
  {
    v28 = v19;
    v29 = v18;
    v30 = v17;
    v32 = v16;
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v20 = *(v15 + 16);
    sub_1004A6EB4(v20);

    if (v20)
    {
      v21 = 0;
      v22 = (v15 + 40);
      v23 = (v33 + 40);
      while (v21 < *(v33 + 16))
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        ++v21;
        v27 = *(v22 - 1);
        v26 = *v22;

        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v22 += 2;
        v23 += 2;
        if (v20 == v21)
        {
          goto LABEL_12;
        }
      }

LABEL_17:
      __break(1u);
      return;
    }

LABEL_12:

    v17 = v30;
    v16 = v32;
    v19 = v28;
    v18 = v29;
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003B0794(a1, v16, v17, v18, v19);
}

uint64_t BodyStructure.Multipart.Extension.hashValue.getter()
{
  v1 = v0;
  sub_1004A6E94();
  v3 = v0[1];
  v2 = v0[2];
  v34 = v2;
  v4 = *(v2 + 16);
  sub_1004A6EB4(v4);

  if (v4)
  {
    v6 = 0;
    v7 = (v2 + 40);
    v8 = (v3 + 40);
    while (v6 < *(v3 + 16))
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      ++v6;
      v11 = *(v7 - 1);
      v12 = *v7;

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v7 += 2;
      v8 += 2;
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  sub_100025F40(&v34, &qword_1005D3FD0, &qword_1004DF4C0);
  v13 = v1[4];
  if (v13 == 1)
  {
    sub_1004A6EC4(0);
    return sub_1004A6F14();
  }

  v14 = v1[3];
  v15 = v1[6];
  v16 = v1[7];
  v17 = v1[8];
  v18 = v1[9];
  v20 = v1[10];
  v19 = v1[11];
  sub_1004A6EC4(1u);
  if (!v13)
  {
    sub_1004A6EC4(0);
    goto LABEL_14;
  }

  v29 = v19;
  v30 = v20;
  v31 = v18;
  v32 = v17;
  sub_1004A6EC4(1u);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v21 = *(v16 + 16);
  sub_1004A6EB4(v21);

  if (!v21)
  {
LABEL_12:

    v18 = v31;
    v17 = v32;
    v19 = v29;
    v20 = v30;
LABEL_14:
    sub_1003B0794(v33, v17, v18, v20, v19);
    return sub_1004A6F14();
  }

  v22 = 0;
  v23 = (v16 + 40);
  v24 = (v15 + 40);
  while (v22 < *(v15 + 16))
  {
    v25 = *(v24 - 1);
    v26 = *v24;
    ++v22;
    v27 = *(v23 - 1);
    v28 = *v23;

    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v23 += 2;
    v24 += 2;
    if (v21 == v22)
    {
      goto LABEL_12;
    }
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_10045EB08(uint64_t a1)
{
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  sub_1003A1364(a1, v1[1], v1[2]);
  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    if (v3)
    {
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1003A1364(a1, v5, v6);
    }

    else
    {
      sub_1004A6EC4(0);
    }

    sub_1003B0794(a1, v7, v8, v9, v10);
  }
}

Swift::Int sub_10045EC00()
{
  v2 = v0[1];
  v1 = v0[2];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[9];
  v11 = v0[8];
  v8 = v0[10];
  v9 = v0[11];
  sub_1004A6E94();
  sub_1003A1364(v12, v2, v1);
  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    if (v3)
    {
      sub_1004A6EC4(1u);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1003A1364(v12, v5, v6);
    }

    else
    {
      sub_1004A6EC4(0);
    }

    sub_1003B0794(v12, v11, v7, v8, v9);
  }

  return sub_1004A6F14();
}

BOOL sub_10045ECF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v9, v10);
}

BOOL _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (sub_10020FB40(*(a1 + 8), *(a2 + 8)) & 1) != 0 && (sub_10020FB40(v4, v5))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 72);
    v40[2] = *(a1 + 56);
    v40[3] = v7;
    v41 = *(a1 + 88);
    v40[0] = *(a1 + 24);
    v40[1] = v6;
    v8 = *(a2 + 40);
    v9 = *(a2 + 72);
    v38[2] = *(a2 + 56);
    v38[3] = v9;
    v39 = *(a2 + 88);
    v38[0] = *(a2 + 24);
    v38[1] = v8;
    v10 = v40[0];
    if (*(&v40[0] + 1) == 1)
    {
      if (*(&v38[0] + 1) == 1)
      {
        v11 = 1;
        *&v28 = *&v40[0];
        *(&v28 + 1) = 1;
        v12 = *(a1 + 56);
        v29 = *(a1 + 40);
        v30 = v12;
        v31 = *(a1 + 72);
        v32 = *(a1 + 88);
        sub_10000E268(v40, v42, &qword_1005DBCD8, &qword_1004FE5F0);
        sub_10000E268(v38, v42, &qword_1005DBCD8, &qword_1004FE5F0);
        v13 = &v28;
LABEL_11:
        sub_100025F40(v13, &qword_1005DBCD8, &qword_1004FE5F0);
        return v11;
      }
    }

    else if (*(&v38[0] + 1) != 1)
    {
      v21 = v38[0];
      v16 = *(a2 + 56);
      v22 = *(a2 + 40);
      v23 = v16;
      v24 = *(a2 + 72);
      v25 = *(a2 + 88);
      v32 = v25;
      v30 = v16;
      v31 = v24;
      v28 = v38[0];
      v29 = v22;
      v17 = *(a1 + 40);
      v18 = *(a1 + 56);
      v19 = *(a1 + 72);
      v43 = *(a1 + 88);
      v42[2] = v18;
      v42[3] = v19;
      v42[1] = v17;
      v42[0] = v40[0];
      sub_10000E268(v40, v26, &qword_1005DBCD8, &qword_1004FE5F0);
      sub_10000E268(v38, v26, &qword_1005DBCD8, &qword_1004FE5F0);
      v11 = _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v42, &v28);
      sub_100025F40(&v21, &qword_1005DBCD8, &qword_1004FE5F0);
      v26[0] = v10;
      v20 = *(a1 + 56);
      v26[1] = *(a1 + 40);
      v26[2] = v20;
      v26[3] = *(a1 + 72);
      v27 = *(a1 + 88);
      v13 = v26;
      goto LABEL_11;
    }

    v28 = v40[0];
    v15 = *(a1 + 56);
    v29 = *(a1 + 40);
    v30 = v15;
    v31 = *(a1 + 72);
    v32 = *(a1 + 88);
    v33 = v38[0];
    v34 = *(a2 + 40);
    v35 = *(a2 + 56);
    v36 = *(a2 + 72);
    v37 = *(a2 + 88);
    sub_10000E268(v40, v42, &qword_1005DBCD8, &qword_1004FE5F0);
    sub_10000E268(v38, v42, &qword_1005DBCD8, &qword_1004FE5F0);
    sub_100025F40(&v28, &qword_1005DBCE0, &qword_1004FE5F8);
    return 0;
  }

  else
  {
    return 0;
  }
}

BOOL _s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if ((sub_10039C870(*a1) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 8) == a2[1] && *(a1 + 16) == a2[2];
  if (!v5 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 72);
  v50[2] = *(a1 + 56);
  v50[3] = v6;
  v7 = *(a1 + 104);
  v50[4] = *(a1 + 88);
  v50[5] = v7;
  v8 = *(a1 + 40);
  v50[0] = *(a1 + 24);
  v50[1] = v8;
  v9 = *(a2 + 9);
  v49[2] = *(a2 + 7);
  v49[3] = v9;
  v10 = *(a2 + 13);
  v49[4] = *(a2 + 11);
  v49[5] = v10;
  v11 = *(a2 + 5);
  v49[0] = *(a2 + 3);
  v49[1] = v11;
  v12 = v50[0];
  if (!*(&v50[0] + 1))
  {
    if (!*(&v49[0] + 1))
    {
      v37 = *&v50[0];
      v28 = *(a1 + 56);
      v29 = *(a1 + 88);
      v40 = *(a1 + 72);
      v41 = v29;
      v42 = *(a1 + 104);
      v38 = *(a1 + 40);
      v39 = v28;
      sub_10000E268(v50, v51, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_10000E268(v49, v51, &qword_1005DBCC8, &qword_1004FE5E0);
      sub_100025F40(&v37, &qword_1005DBCC8, &qword_1004FE5E0);
      return 1;
    }

    goto LABEL_11;
  }

  if (!*(&v49[0] + 1))
  {
LABEL_11:
    v37 = v50[0];
    v22 = *(a1 + 56);
    v23 = *(a1 + 88);
    v40 = *(a1 + 72);
    v41 = v23;
    v42 = *(a1 + 104);
    v38 = *(a1 + 40);
    v39 = v22;
    v43 = v49[0];
    v24 = *(a2 + 13);
    v25 = *(a2 + 9);
    v47 = *(a2 + 11);
    v48 = v24;
    v26 = *(a2 + 5);
    v45 = *(a2 + 7);
    v46 = v25;
    v44 = v26;
    sub_10000E268(v50, v51, &qword_1005DBCC8, &qword_1004FE5E0);
    sub_10000E268(v49, v51, &qword_1005DBCC8, &qword_1004FE5E0);
    sub_100025F40(&v37, &qword_1005DBCD0, &qword_1004FE5E8);
    return 0;
  }

  v30 = v49[0];
  v13 = *(a2 + 7);
  v14 = *(a2 + 11);
  v33 = *(a2 + 9);
  v34 = v14;
  v35 = *(a2 + 13);
  v31 = *(a2 + 5);
  v32 = v13;
  v41 = v14;
  v42 = v35;
  v39 = v13;
  v40 = v33;
  v37 = v49[0];
  v38 = v31;
  v15 = *(a1 + 40);
  v16 = *(a1 + 104);
  v17 = *(a1 + 72);
  v51[4] = *(a1 + 88);
  v51[5] = v16;
  v18 = *(a1 + 56);
  v51[1] = v15;
  v51[2] = v18;
  v51[3] = v17;
  v51[0] = v50[0];
  sub_10000E268(v50, v36, &qword_1005DBCC8, &qword_1004FE5E0);
  sub_10000E268(v49, v36, &qword_1005DBCC8, &qword_1004FE5E0);
  v19 = _s12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionV23__derived_struct_equalsySbAG_AGtFZ_0(v51, &v37);
  sub_100025F40(&v30, &qword_1005DBCC8, &qword_1004FE5E0);
  v36[0] = v12;
  v20 = *(a1 + 56);
  v21 = *(a1 + 88);
  v36[3] = *(a1 + 72);
  v36[4] = v21;
  v36[5] = *(a1 + 104);
  v36[1] = *(a1 + 40);
  v36[2] = v20;
  sub_100025F40(v36, &qword_1005DBCC8, &qword_1004FE5E0);
  return v19;
}

unint64_t sub_10045F2E0()
{
  result = qword_1005DD118;
  if (!qword_1005DD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD118);
  }

  return result;
}

unint64_t sub_10045F338()
{
  result = qword_1005DD120;
  if (!qword_1005DD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD120);
  }

  return result;
}

uint64_t sub_10045F39C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10045F3E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10045F44C(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

  v35 = a1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v1 + 20) = v10;
  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), v10);
  if (v11)
  {
    v12._countAndFlagsBits = 40;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = *(v1 + 20);
  v14 = __CFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    goto LABEL_26;
  }

  *(v1 + 20) = v15;
  v16 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __chkstk_darwin(result);
  v34[2] = sub_10045F690;
  v34[3] = 0;
  v34[4] = v2;
  v34[5] = &v35;
  v34[6] = 0;
  v34[7] = 0xE000000000000000;
  result = sub_100452F74(0, sub_10045F750, v34, a1);
  v17 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v18 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v19)
  {
    v20._countAndFlagsBits = 41;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = *(v2 + 20);
  v22 = (v21 + result);
  if (__CFADD__(v21, result))
  {
    goto LABEL_29;
  }

  *(v2 + 20) = v22;
  v23 = __OFADD__(v17, result);
  v24 = v17 + result;
  if (v23)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (v2 + 8), v22);
  if (v25)
  {
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v22);
  }

  v27 = *(v2 + 20);
  v14 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v14)
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v28;
  v23 = __OFADD__(v24, result);
  result += v24;
  if (!v23)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  v29 = *(v2 + 20);
  result = sub_1002F178C(4999502, 0xE300000000000000, (v2 + 8), *(v2 + 20));
  if (v30)
  {
    v31._countAndFlagsBits = 4999502;
    v31._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v29);
  }

  v32 = *(v2 + 20);
  v14 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v14)
  {
    goto LABEL_32;
  }

  *(v2 + 20) = v33;
  return result;
}

uint64_t sub_10045F690(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return sub_10045F80C(v4);
}

uint64_t sub_10045F6D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v11 = *a1;
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  v14 = *(a2 + 28);
  v15 = *(a2 + 30);
  v16 = *(a2 + 48);
  v17 = *a6;
  v19[0] = *a2;
  v19[1] = v12;
  v19[2] = *(a2 + 16);
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = *(a2 + 32);
  v24 = v16;
  v25 = *(a2 + 56);
  result = sub_100492868(v11, v19, a3, a4, a5, v17, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

double NamespaceDescription.init(string:char:responseExtensions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  LODWORD(v15) = a3;
  WORD2(v15) = WORD2(a3);
  BYTE6(v15) = BYTE6(a3);
  *(&v15 + 1) = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18[0] = a1;
  v18[1] = a2;
  v19 = a3;
  v20 = WORD2(a3);
  v21 = BYTE6(a3);
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  sub_1003A3310(&v14, &v13);
  sub_1002EED64(v18);
  v10 = v15;
  *a9 = v14;
  a9[1] = v10;
  result = *&v16;
  v12 = v17;
  a9[2] = v16;
  a9[3] = v12;
  return result;
}

uint64_t sub_10045F80C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(40, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
    goto LABEL_27;
  }

  *(v1 + 20) = v11;
  result = sub_1003B1E70(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48));
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = *(v1 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v1 + 8), *(v1 + 20));
  if (v14)
  {
    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v17 = (v16 + result);
  if (__CFADD__(v16, result))
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v17;
  v18 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!*(a1 + 32))
  {
LABEL_16:
    result = sub_1002F178C(4999502, 0xE300000000000000, (v2 + 8), v17);
    if (v28)
    {
      v29._countAndFlagsBits = 4999502;
      v29._object = 0xE300000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v29, v17);
    }

    v30 = *(v2 + 20);
    v10 = __CFADD__(v30, result);
    v31 = v30 + result;
    if (v10)
    {
      goto LABEL_34;
    }

    *(v2 + 20) = v31;
    v27 = v18 + result;
    if (__OFADD__(v18, result))
    {
LABEL_35:
      __break(1u);
      return result;
    }

    goto LABEL_20;
  }

  v19 = *(a1 + 24);
  v38._countAndFlagsBits = 34;
  v38._object = 0xE100000000000000;
  sub_1004A5994(v38);
  sub_1004A55C4();
  v39._countAndFlagsBits = 34;
  v39._object = 0xE100000000000000;
  sub_1004A5994(v39);
  v20 = sub_1002F178C(0, 0xE000000000000000, (v1 + 8), v17);
  if (v21)
  {
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v17);
  }

  v23 = v20;

  v24 = *(v2 + 20);
  v10 = __CFADD__(v24, v23);
  v25 = v24 + v23;
  if (v10)
  {
    goto LABEL_33;
  }

  *(v2 + 20) = v25;
  v26 = __OFADD__(v18, v23);
  v27 = v18 + v23;
  if (v26)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_20:
  result = sub_10045FE78(0, *(a1 + 48), *(a1 + 56), v2);
  v32 = v27 + result;
  if (__OFADD__(v27, result))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = *(v2 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (v2 + 8), *(v2 + 20));
  if (v34)
  {
    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v35, v33);
  }

  v36 = *(v2 + 20);
  v10 = __CFADD__(v36, result);
  v37 = v36 + result;
  if (v10)
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v37;
  v26 = __OFADD__(v32, result);
  result += v32;
  if (v26)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  return result;
}

uint64_t NamespaceDescription.responseExtensions.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];

  return v1;
}

uint64_t NamespaceDescription.responseExtensions.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];

  v8 = v3[6];

  v9 = v3[7];

  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  return result;
}

uint64_t NamespaceDescription.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(v2 + 10);
  v8 = *(v2 + 22);
  swift_beginAccess();
  v9 = *(v4 + 24) + (v8 | (v7 << 8));
  sub_1004A6EA4();
  if (v2[4])
  {
    v10 = v2[3];
    sub_1004A6EC4(1u);
    sub_1004A55B4();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1003A15DC(a1, v2[6], v2[7]);
}

Swift::Int NamespaceDescription.hashValue.getter()
{
  v1 = v0;
  sub_1004A6E94();
  v2 = *v0;
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 10);
  v6 = *(v1 + 22);
  swift_beginAccess();
  v7 = *(v2 + 24) + (v6 | (v5 << 8));
  sub_1004A6EA4();
  if (v1[4])
  {
    v8 = v1[3];
    sub_1004A6EC4(1u);
    sub_1004A55B4();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003A15DC(v10, v1[6], v1[7]);
  return sub_1004A6F14();
}

Swift::Int sub_10045FCC0()
{
  sub_1004A6E94();
  NamespaceDescription.hash(into:)(v1);
  return sub_1004A6F14();
}

BOOL sub_10045FCFC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s12NIOIMAPCore220NamespaceDescriptionV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

BOOL _s12NIOIMAPCore220NamespaceDescriptionV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_10020FBD0(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (!v5 || (*(a1 + 24) != *(a2 + 24) || v4 != v5) && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  return (sub_1003A0868(v6, v8) & 1) != 0 && (sub_1003A06A0(v7, v9) & 1) != 0;
}

unint64_t sub_10045FE14()
{
  result = qword_1005DD128;
  if (!qword_1005DD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD128);
  }

  return result;
}

uint64_t sub_10045FE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v5 = v4;
  v9 = a1;
  v10 = *(a3 + 16);

  if (v10)
  {
    v12 = 0;
    v13 = (a2 + 54);
    while (v12 < *(a2 + 16))
    {
      v14 = *(v13 - 6);
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(a3 + 32 + 8 * v12);
      v18[0] = *(v13 - 22);
      v18[1] = *(v13 - 14);
      v19 = v14;
      v20 = v15;
      v21 = v16;
      v22 = v17;

      sub_1004604A8(&v23, v18, a4);
      if (v5)
      {

        return v9;
      }

      ++v12;
      v9 = v18[0];

      v13 += 24;
      if (v10 == v12)
      {
        v9 = v23;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return v9;
  }

  return result;
}

uint64_t static NamespaceResponse.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_10039EF50(a1, a4) & 1) == 0 || (sub_10039EF50(a2, a5) & 1) == 0)
  {
    return 0;
  }

  return sub_10039EF50(a3, a6);
}

uint64_t sub_10046002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 20);
  result = sub_1002F178C(0x43415053454D414ELL, 0xEA00000000002045, (v3 + 8), *(v3 + 20));
  if (v9)
  {
    v10._countAndFlagsBits = 0x43415053454D414ELL;
    v10._object = 0xEA00000000002045;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v3 + 20);
  v13 = __CFADD__(v12, result);
  v14 = v12 + result;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v3 + 20) = v14;
  result = sub_10045F44C(a1);
  v15 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = *(v3 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
  }

  v19 = *(v3 + 20);
  v13 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v13)
  {
    goto LABEL_18;
  }

  *(v3 + 20) = v20;
  v21 = v15 + result;
  if (__OFADD__(v15, result))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = sub_10045F44C(a2);
  v22 = __OFADD__(v21, result);
  v23 = v21 + result;
  if (v22)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = *(v3 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (v3 + 8), *(v3 + 20));
  if (v25)
  {
    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v24);
  }

  v27 = *(v3 + 20);
  v13 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v13)
  {
    goto LABEL_21;
  }

  *(v3 + 20) = v28;
  v29 = v23 + result;
  if (__OFADD__(v23, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = sub_10045F44C(a3);
  v22 = __OFADD__(v29, v30);
  result = v29 + v30;
  if (v22)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

void NamespaceResponse.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1003AF0EC(a1, a2);
  sub_1003AF0EC(a1, a3);

  sub_1003AF0EC(a1, a4);
}

Swift::Int NamespaceResponse.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  sub_1003AF0EC(v7, a1);
  sub_1003AF0EC(v7, a2);
  sub_1003AF0EC(v7, a3);
  return sub_1004A6F14();
}

Swift::Int sub_100460294()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  sub_1003AF0EC(v5, v1);
  sub_1003AF0EC(v5, v2);
  sub_1003AF0EC(v5, v3);
  return sub_1004A6F14();
}

void sub_100460300(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_1003AF0EC(a1, v3);
  sub_1003AF0EC(a1, v4);

  sub_1003AF0EC(a1, v5);
}

Swift::Int sub_100460358()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1004A6E94();
  sub_1003AF0EC(v5, v1);
  sub_1003AF0EC(v5, v2);
  sub_1003AF0EC(v5, v3);
  return sub_1004A6F14();
}

uint64_t sub_1004603C0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_10039EF50(*a1, *a2) & 1) == 0 || (sub_10039EF50(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_10039EF50(v3, v5);
}

unint64_t sub_100460444()
{
  result = qword_1005DD130;
  if (!qword_1005DD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005DD130);
  }

  return result;
}

uint64_t sub_1004604A8(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  v8 = *(a2 + 22);
  v51 = *(a2 + 24);
  v9 = *(a3 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (a3 + 8), v9);
  if (v11)
  {
    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v9);
  }

  v13 = result;
  v14 = *(a3 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    goto LABEL_34;
  }

  *(a3 + 20) = v16;
  result = sub_1003B1E70(v4, v5, v6 | (v7 << 32) | (v8 << 48));
  v17 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v18 = *(a3 + 20);
  result = sub_1002F178C(32, 0xE100000000000000, (a3 + 8), *(a3 + 20));
  if (v19)
  {
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v20, v18);
  }

  v21 = v51;
  v22 = *(a3 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_36;
  }

  *(a3 + 20) = v23;
  v24 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v52 = v21;
  if (*(v21 + 16))
  {
    result = sub_1002F178C(0, 0xE000000000000000, (a3 + 8), v23);
    if (v25)
    {
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
    }

    v27 = result;
    v28 = *(a3 + 20);
    LODWORD(v23) = v28 + result;
    if (__CFADD__(v28, result))
    {
      goto LABEL_45;
    }

    *(a3 + 20) = v23;
  }

  else
  {
    v27 = 0;
  }

  result = sub_1002F178C(40, 0xE100000000000000, (a3 + 8), v23);
  if (v29)
  {
    v30._countAndFlagsBits = 40;
    v30._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v30, v23);
  }

  v31 = *(a3 + 20);
  v15 = __CFADD__(v31, result);
  v32 = v31 + result;
  if (v15)
  {
    goto LABEL_38;
  }

  *(a3 + 20) = v32;
  v33 = v27 + result;
  if (__OFADD__(v27, result))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  __chkstk_darwin(result);
  v49[2] = sub_10044CF7C;
  v49[3] = 0;
  v49[4] = a3;
  v49[5] = &v52;
  v49[6] = 32;
  v49[7] = 0xE100000000000000;
  result = sub_1004520C0(0, sub_10044D69C, v49, v21);
  v34 = __OFADD__(v33, result);
  v35 = v33 + result;
  if (v34)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v36 = *(a3 + 20);
  result = sub_1002F178C(41, 0xE100000000000000, (a3 + 8), *(a3 + 20));
  if (v37)
  {
    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v38, v36);
  }

  v39 = *(a3 + 20);
  v40 = (v39 + result);
  if (__CFADD__(v39, result))
  {
    goto LABEL_41;
  }

  *(a3 + 20) = v40;
  v41 = v35 + result;
  if (__OFADD__(v35, result))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!*(v21 + 16))
  {
    result = 0;
    v46 = v41;
    goto LABEL_29;
  }

  result = sub_1002F178C(0, 0xE000000000000000, (a3 + 8), v40);
  if (v42)
  {
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v43, v40);
  }

  v44 = *(a3 + 20);
  v15 = __CFADD__(v44, result);
  v45 = v44 + result;
  if (v15)
  {
    goto LABEL_46;
  }

  *(a3 + 20) = v45;
  v46 = v41 + result;
  if (__OFADD__(v41, result))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_29:
  v34 = __OFADD__(v24, v46);
  v47 = v24 + v46;
  if (!v34)
  {
    v34 = __OFADD__(*v50, v47);
    v48 = *v50 + v47;
    if (!v34)
    {
      *v50 = v48;
      return result;
    }

    goto LABEL_44;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}