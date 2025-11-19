uint64_t sub_1000DA9B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_100014D40(a2, a3);
  }

  return result;
}

uint64_t sub_1000DAA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000DAAD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000DAB4C()
{
  sub_100050DB8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1000DABC4()
{
  result = qword_1005CFC30;
  if (!qword_1005CFC30)
  {
    type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CFC30);
  }

  return result;
}

uint64_t sub_1000DAC1C(uint64_t a1)
{
  v2 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DAC78(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CFC38, &qword_1004D3370);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v41 - v4;
  v41[0] = sub_10000C9C0(&qword_1005CFC40, &qword_1004D3378);
  v6 = *(*(v41[0] - 8) + 64);
  __chkstk_darwin(v41[0]);
  v8 = v41 - v7;
  v41[1] = a1;
  sub_10000E268(a1, v5, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v5, v8, &unk_1005D91B0, &unk_1004CF400);
  v9 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v10 = MessageIdentifierSet.endIndex.getter(v9);
  v12 = v11;
  sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
  if (v10 == MessageIdentifierSet.startIndex.getter(v9) && v12 == v13)
  {
    goto LABEL_25;
  }

  v15 = 0;
  v16 = 1;
  v17 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = MessageIdentifierSet.index(_:offsetBy:)(v10, v12, -1);
    v12 = v18;
    MessageIdentifierSet.subscript.getter(v18, v9, &v44);
    v19 = v44;
    if (v16)
    {
      if (v10 == MessageIdentifierSet.startIndex.getter(v9) && v12 == v20)
      {
        goto LABEL_26;
      }

      v10 = MessageIdentifierSet.index(_:offsetBy:)(v10, v12, -1);
      v12 = v21;
      MessageIdentifierSet.subscript.getter(v21, v9, &v44);
      v22 = v44;
    }

    else
    {
      v22 = v44;
      v19 = v15;
    }

    v23 = MessageIdentifierSet.startIndex.getter(v9);
    v25 = v24;
    if (v23 == MessageIdentifierSet.endIndex.getter(v9) && v25 == v26)
    {
      break;
    }

    MessageIdentifierSet.subscript.getter(v25, v9, &v44);
    if (v44 != v22)
    {
      break;
    }

    v43 = v22;
LABEL_17:
    v42 = v19;
    v27 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(&v43, &v42, &type metadata for UID, v27, &v44);
    v28 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_100085898(0, *(v17 + 2) + 1, 1, v17);
    }

    v30 = *(v17 + 2);
    v29 = *(v17 + 3);
    if (v30 >= v29 >> 1)
    {
      v17 = sub_100085898((v29 > 1), v30 + 1, 1, v17);
    }

    *(v17 + 2) = v30 + 1;
    *&v17[8 * v30 + 32] = v28;
    v16 = 0;
    v15 = v22;
    if (v10 == MessageIdentifierSet.startIndex.getter(v9))
    {
      v15 = v22;
      if (v12 == v31)
      {
        goto LABEL_26;
      }
    }
  }

  if (v22 != -1)
  {
    v43 = v22 + 1;
    goto LABEL_17;
  }

  __break(1u);
LABEL_25:
  v17 = _swiftEmptyArrayStorage;
LABEL_26:
  v32 = &v8[*(v41[0] + 36)];
  *v32 = v10;
  v32[1] = v12;
  sub_100025F40(v8, &qword_1005CFC40, &qword_1004D3378);
  if (*(v17 + 2))
  {
    return sub_1000B0058(v17);
  }

  v33 = MessageIdentifierSet.startIndex.getter(v9);
  v35 = v34;
  if (v33 == MessageIdentifierSet.endIndex.getter(v9) && v35 == v36)
  {
    return sub_1000B0058(v17);
  }

  MessageIdentifierSet.subscript.getter(v35, v9, &v44);

  v38 = v44;
  sub_10000C9C0(&qword_1005CEC18, &unk_1004D2690);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1004CEAA0;
  v43 = v38;
  LODWORD(v44) = v38;
  v40 = sub_100016948();
  static MessageIdentifier.... infix(_:_:)(&v44, &v43, &type metadata for UID, v40, v39 + 32);
  return v39;
}

uint64_t sub_1000DB0C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000DB190(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MessagesPendingDownload()
{
  result = qword_1005CFCA8;
  if (!qword_1005CFCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DB28C()
{
  sub_1000DB310();
  if (v0 <= 0x3F)
  {
    sub_100050DB8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000DB310()
{
  if (!qword_1005CFCB8)
  {
    sub_100050D64();
    v0 = sub_1004A5524();
    if (!v1)
    {
      atomic_store(v0, &qword_1005CFCB8);
    }
  }
}

unint64_t sub_1000DB374()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v27[-v7];
  v9 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v27[-v11];
  v13 = *v0;

  sub_1000B492C(v14);
  MessageIdentifierSet.ranges.getter(v8);
  v15 = sub_1000E4C0C();
  v17 = v16;
  sub_100025F40(v8, &qword_1005CD7A0, &unk_1004CF590);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = HIDWORD(v15);
  }

  v19 = v1 + *(type metadata accessor for MessagesPendingDownload() + 20);
  MessageIdentifierSet.ranges.getter(v6);
  v20 = sub_1000E4C0C();
  v22 = v21;
  v23 = HIDWORD(v20);
  if (v21)
  {
    LODWORD(v23) = 0;
  }

  if (v23 <= v18)
  {
    v24 = v18;
  }

  else
  {
    v24 = v23;
  }

  if (v21)
  {
    v24 = v18;
  }

  if (v17)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  sub_100025F40(v6, &qword_1005CD7A0, &unk_1004CF590);
  sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
  return v25 | ((v17 & v22 & 1) << 32);
}

uint64_t sub_1000DB55C(uint64_t result)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  for (i = (result + 49); ; i += 24)
  {
    v8 = *(i - 17);
    v9 = *(i - 9);
    v10 = *(i - 1);
    v11 = *i;
    v12 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v3;
    v14 = v29;
    v15 = sub_100067004(v8);
    v17 = v14[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v14[3] < v20)
    {
      sub_1000C447C(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_100067004(v8);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v23 = v29;
      if (v21)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v27 = v15;
    sub_10013ADF0();
    v15 = v27;
    v23 = v29;
    if (v21)
    {
LABEL_3:
      v5 = v23[7] + 24 * v15;
      *v5 = v8;
      *(v5 + 8) = v9;
      *(v5 + 16) = v10;
      *(v5 + 17) = v11;
      goto LABEL_4;
    }

LABEL_11:
    v23[(v15 >> 6) + 8] |= 1 << v15;
    *(v23[6] + 4 * v15) = v8;
    v24 = v23[7] + 24 * v15;
    *v24 = v8;
    *(v24 + 8) = v9;
    *(v24 + 16) = v10;
    *(v24 + 17) = v11;
    v25 = v23[2];
    v19 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v19)
    {
      goto LABEL_17;
    }

    v23[2] = v26;
LABEL_4:
    *v3 = v23;
    v28 = v8;
    v6 = *(type metadata accessor for MessagesPendingDownload() + 20);
    v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    result = MessageIdentifierSet.remove(_:)(&v28, v7, &v29);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

void sub_1000DB72C()
{
  v1 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v7 - v3;
  if (!*(*v0 + 16))
  {
    v5 = sub_100163144(_swiftEmptyArrayStorage);

    *v0 = v5;
    sub_100016D2C();
    sub_1004A7114();
    v6 = type metadata accessor for MessagesPendingDownload();
    sub_1000DC240(v4, v0 + *(v6 + 20));
  }
}

uint64_t sub_1000DB7F8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1001145B4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_100016D2C();

  return sub_1004A7034();
}

uint64_t sub_1000DB878(int a1)
{
  v3 = a1;
  v1 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  return MessageIdentifierSet.contains(_:)(&v3, v1) & 1;
}

uint64_t sub_1000DB8D4(int *a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = *(a1 + 18);
  v7 = *a1;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  return (v4 == a3) & ~MessageIdentifierSet.contains(_:)(&v7, v5);
}

uint64_t sub_1000DB94C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = *(result + 32), result = sub_100063DD8(*(result + 8), *(result + 16)), (v6 & 1) != 0))
  {
    v7 = (*(a2 + 56) + 24 * result);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = *(v7 + 16);
    if (*(v7 + 17))
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 | v10;
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 18) = v5;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 18) = 0;
    v12 = 512;
  }

  *(a3 + 16) = v12;
  return result;
}

uint64_t sub_1000DB9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v27 = a3;
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = *(a2 + 16);
  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v25 = a1;
    v29 = _swiftEmptyArrayStorage;
    sub_100091DA8(0, v13, 0);
    v14 = v29;
    v15 = (a2 + 32);
    v16 = v29[2];
    do
    {
      v18 = *v15;
      v15 += 6;
      v17 = v18;
      v29 = v14;
      v19 = v14[3];
      if (v16 >= v19 >> 1)
      {
        sub_100091DA8((v19 > 1), v16 + 1, 1);
        v14 = v29;
      }

      v14[2] = v16 + 1;
      *(v14 + v16++ + 8) = v17;
      --v13;
    }

    while (v13);
    a1 = v25;
  }

  sub_100016D2C();
  sub_1004A7114();
  v20 = v14[2];
  if (v20)
  {
    v21 = (v14 + 4);
    do
    {
      v22 = *v21++;
      v28 = v22;
      MessageIdentifierSet.insert(_:)(&v29, &v28, v6);
      --v20;
    }

    while (v20);
  }

  sub_100020950(v10, v12);
  if ((v27 & 0x100000000) != 0)
  {
    sub_1000DBC2C(a1, v26);
  }

  else
  {
    sub_1000DBED4(a1, v27, v26);
  }

  return sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_1000DBBD0(int *a1)
{
  v3 = *a1;
  v1 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  return MessageIdentifierSet.contains(_:)(&v3, v1) & 1;
}

uint64_t sub_1000DBC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  sub_100016D2C();
  sub_1004A7114();
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  if (sub_1004A70C4())
  {
    sub_1004A7114();
    return sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
  }

  else
  {
    v9 = MessageIdentifierSet.endIndex.getter(v4);
    v11 = MessageIdentifierSet.index(_:offsetBy:)(v9, v10, -1);
    v13 = v12;
    v14 = MessageIdentifierSet.startIndex.getter(v4);
    v16 = v13 < v15;
    if (v11 != v14)
    {
      v16 = v11 < v14;
    }

    if (!v16)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v13, v4, &v34);
        HIDWORD(v33) = v34;
        MessageIdentifierSet.insert(_:)(v35, &v33 + 4, v4);
        v11 = MessageIdentifierSet.index(_:offsetBy:)(v11, v13, -2);
        v13 = v17;
        v18 = MessageIdentifierSet.startIndex.getter(v4);
        v20 = v13 < v19;
        if (v11 != v18)
        {
          v20 = v11 < v18;
        }
      }

      while (!v20);
    }

    v21 = MessageIdentifierSet.endIndex.getter(v4);
    v23 = MessageIdentifierSet.index(_:offsetBy:)(v21, v22, -2);
    v25 = v24;
    v26 = MessageIdentifierSet.startIndex.getter(v4);
    v28 = v25 < v27;
    if (v23 != v26)
    {
      v28 = v23 < v26;
    }

    if (!v28)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v25, v4, &v34);
        HIDWORD(v33) = v34;
        MessageIdentifierSet.insert(_:)(v35, &v33 + 4, v4);
        v23 = MessageIdentifierSet.index(_:offsetBy:)(v23, v25, -2);
        v25 = v29;
        v30 = MessageIdentifierSet.startIndex.getter(v4);
        v32 = v25 < v31;
        if (v23 != v30)
        {
          v32 = v23 < v30;
        }
      }

      while (!v32);
    }

    return sub_100020950(v7, a2);
  }
}

uint64_t sub_1000DBED4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v42 - v8;
  sub_100016D2C();
  sub_1004A7114();
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  if (sub_1004A70C4())
  {
    sub_1004A7114();
    return sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
  }

  else
  {
    v11 = MessageIdentifierSet.endIndex.getter(v6);
    v13 = MessageIdentifierSet.index(_:offsetBy:)(v11, v12, -1);
    v15 = v14;
    v16 = MessageIdentifierSet.startIndex.getter(v6);
    v18 = v17 < v15;
    if (v16 != v13)
    {
      v18 = v16 < v13;
    }

    if (v18)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v15, v6, &v44);
        if (v44 <= a2)
        {
          break;
        }

        v43 = v44;
        MessageIdentifierSet.insert(_:)(&v44, &v43, v6);
        v13 = MessageIdentifierSet.index(_:offsetBy:)(v13, v15, -1);
        v15 = v19;
        v20 = MessageIdentifierSet.startIndex.getter(v6);
        v22 = v21 < v15;
        if (v20 != v13)
        {
          v22 = v20 < v13;
        }
      }

      while (v22);
    }

    v23 = MessageIdentifierSet.startIndex.getter(v6);
    v25 = v15 < v24;
    if (v13 != v23)
    {
      v25 = v13 < v23;
    }

    if (!v25)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v15, v6, &v43);
        HIDWORD(v42) = v43;
        MessageIdentifierSet.insert(_:)(&v44, &v42 + 4, v6);
        v13 = MessageIdentifierSet.index(_:offsetBy:)(v13, v15, -2);
        v15 = v26;
        v27 = MessageIdentifierSet.startIndex.getter(v6);
        v29 = v15 < v28;
        if (v13 != v27)
        {
          v29 = v13 < v27;
        }
      }

      while (!v29);
    }

    v30 = MessageIdentifierSet.endIndex.getter(v6);
    v32 = MessageIdentifierSet.index(_:offsetBy:)(v30, v31, -2);
    v34 = v33;
    v35 = MessageIdentifierSet.startIndex.getter(v6);
    v37 = v34 < v36;
    if (v32 != v35)
    {
      v37 = v32 < v35;
    }

    if (!v37)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v34, v6, &v43);
        HIDWORD(v42) = v43;
        MessageIdentifierSet.insert(_:)(&v44, &v42 + 4, v6);
        v32 = MessageIdentifierSet.index(_:offsetBy:)(v32, v34, -2);
        v34 = v38;
        v39 = MessageIdentifierSet.startIndex.getter(v6);
        v41 = v34 < v40;
        if (v32 != v39)
        {
          v41 = v32 < v39;
        }
      }

      while (!v41);
    }

    return sub_100020950(v9, a3);
  }
}

uint64_t sub_1000DC240(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC2C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownload();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000DC344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MessagesPendingDownloadPerPass()
{
  result = qword_1005CFD40;
  if (!qword_1005CFD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000DC400()
{
  result = type metadata accessor for MessagesPendingDownload();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1000DC46C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = 0;
  if (sub_1001145B4(*a1, *a2))
  {
    v6 = type metadata accessor for MessagesPendingDownload();
    v7 = *(v6 + 20);
    sub_100016D2C();
    if (sub_1004A7034() & 1) != 0 && (sub_1001145B4(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))))
    {
      v8 = *(v6 + 20);
      if (sub_1004A7034())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1000DC530(int a1, uint64_t a2)
{
  v47 = a1;
  v3 = type metadata accessor for MessagesPendingDownload();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v42 - v10;
  v12 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  v19 = type metadata accessor for NewestMessages();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v42 - v25;
  v27 = a2;
  sub_1000DCB7C(a2, v18);
  v28 = *(v20 + 48);
  v29 = v28(v18, 1, v19);
  v45 = v19;
  v46 = v28;
  if (v29 == 1)
  {
    sub_100016D2C();
    sub_1004A7114();
    v43 = v24;
    v30 = v11;
    v31 = *(v19 + 20);
    v32 = *(v19 + 24);
    sub_100020950(v30, v26);
    *&v26[v31] = 0;
    *&v26[v32] = 0;
    v24 = v43;
    if (v28(v18, 1, v19) != 1)
    {
      sub_1000DCBEC(v18);
    }
  }

  else
  {
    sub_1000DCCB4(v18, v26);
  }

  v33 = v48;
  sub_1000DCABC(v49, v48);
  v34 = *(*v33 + 16);
  sub_1000DCC54(v33, type metadata accessor for MessagesPendingDownload);
  sub_1000DCC54(v26, type metadata accessor for NewestMessages);
  if (v34)
  {
    v35 = 1;
  }

  else
  {
    sub_1000DCB7C(v27, v16);
    v37 = v45;
    v36 = v46;
    if (v46(v16, 1, v45) == 1)
    {
      sub_100016D2C();
      v38 = v44;
      sub_1004A7114();
      v39 = *(v37 + 20);
      v40 = *(v37 + 24);
      sub_100020950(v38, v24);
      *&v24[v39] = 0;
      *&v24[v40] = 0;
      if (v36(v16, 1, v37) != 1)
      {
        sub_1000DCBEC(v16);
      }
    }

    else
    {
      sub_1000DCCB4(v16, v24);
    }

    v35 = sub_1000DC920(1, v47, v24);
    sub_1000DCC54(v24, type metadata accessor for NewestMessages);
  }

  return v35 & 1;
}

uint64_t sub_1000DC920(char a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for MessagesPendingDownload();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a1 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (!a2)
  {
    v11 = 0;
    return v11 & 1;
  }

  if (a2 == 1)
  {
    v3 += *(type metadata accessor for MessagesPendingDownloadPerPass() + 20);
LABEL_5:
    sub_1000DCABC(v3, v10);
    v11 = *(*v10 + 16) != 0;
    sub_1000DCC54(v10, type metadata accessor for MessagesPendingDownload);
    return v11 & 1;
  }

  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v13 = sub_1004A70C4();
  v14 = type metadata accessor for MessagesPendingDownloadPerPass();
  v15 = *(v3 + *(v14 + 20));
  if (v13)
  {
    v11 = *(v15 + 16) != 0;
  }

  else
  {
    __chkstk_darwin(v14);
    *&v16[-16] = a3;

    v11 = sub_1000CC4A4(sub_1000DCB20, &v16[-32], v15);
  }

  return v11 & 1;
}

uint64_t sub_1000DCABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownload();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DCB20(int *a1)
{
  v2 = *(v1 + 16);
  v5 = *a1;
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  return MessageIdentifierSet.contains(_:)(&v5, v3) & 1;
}

uint64_t sub_1000DCB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DCBEC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CDC18, &qword_1004CF9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DCC54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000DCCB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewestMessages();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DCD18(uint64_t a1, uint64_t (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for MessagesToRemoveHelper.Range() - 8);
    result = a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
      return result;
    }
  }

  return v11;
}

uint64_t sub_1000DCDF4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, int *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      v17 = __clz(__rbit64(v12)) | (v16 << 6);
      v18 = *(*(a3 + 48) + 4 * v17);
      v19 = *(a3 + 56) + 16 * v17;
      v20 = *v19;
      v21 = *(v19 + 8);
      LOBYTE(v19) = *(v19 + 9);
      v22 = v18;
      v23 = v20;
      v24 = v21;
      v25 = v19;
      result = a2(a1, &v22);
      if (v4)
      {
        break;
      }

      v12 &= v12 - 1;
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    sub_100025F40(a1, &unk_1005D91B0, &unk_1004CF400);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        return sub_100025FDC(a1, a4, &unk_1005D91B0, &unk_1004CF400);
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000DCF64(uint64_t a1)
{
  v49 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v2 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v45 - v5;
  v50 = type metadata accessor for MessagesToRemoveHelper.Range();
  v7 = *(v50 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v50);
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 32123;
  }

  if (v13 >= 0xA)
  {
    v23 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v24 = -1;
    v25 = *(v7 + 72);
    v47 = v10;
    v48 = v25;
    v26 = v23;
    v27 = v13;
    do
    {
      sub_1000E300C(v26, v12, type metadata accessor for MessagesToRemoveHelper.Range);
      v28 = *(v50 + 20);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      MessageIdentifierSet.ranges.getter(v6);
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      v29 = v6;
      v30 = sub_1004A7044();
      if (v30 == sub_1004A7074())
      {
LABEL_26:
        sub_100025F40(v6, &qword_1005CD7A0, &unk_1004CF590);
        __break(1u);
        goto LABEL_27;
      }

      MessageIdentifierSet.RangeView.subscript.getter(v49, &v52);
      sub_100025F40(v6, &qword_1005CD7A0, &unk_1004CF590);
      v31 = v52;
      sub_1000E3074(v12, type metadata accessor for MessagesToRemoveHelper.Range);
      if (v31 < v24)
      {
        v24 = v31;
      }

      v26 += v48;
      --v27;
    }

    while (v27);
    v32 = 1;
    v34 = v46;
    v33 = v47;
    while (1)
    {
      sub_1000E300C(v23, v33, type metadata accessor for MessagesToRemoveHelper.Range);
      v35 = *(v50 + 20);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      MessageIdentifierSet.ranges.getter(v34);
      v6 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      v29 = v34;
      v36 = sub_1004A7044();
      if (v36 == sub_1004A7074())
      {
        break;
      }

      v37 = sub_1004A7074();
      v38 = v37 - 1;
      if (__OFSUB__(v37, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v39 = sub_1004A7044();
      v40 = sub_1004A7074();
      if (v38 < v39 || v38 >= v40)
      {
        goto LABEL_25;
      }

      MessageIdentifierSet.RangeView.subscript.getter(v49, &v52);
      sub_100025F40(v29, &qword_1005CD7A0, &unk_1004CF590);
      v34 = v29;
      v41 = HIDWORD(v52);
      v33 = v47;
      sub_1000E3074(v47, type metadata accessor for MessagesToRemoveHelper.Range);
      if (v41 < v32)
      {
        v32 = v41;
      }

      v23 += v48;
      if (!--v13)
      {
        v52 = 0;
        v53 = 0xE000000000000000;
        LODWORD(v51) = v24;
        sub_1004A6934();
        v54._countAndFlagsBits = 58;
        v54._object = 0xE100000000000000;
        sub_1004A5994(v54);
        LODWORD(v51) = v32;
        sub_1004A6934();
        return v52;
      }
    }

LABEL_27:
    result = sub_100025F40(v29, &qword_1005CD7A0, &unk_1004CF590);
    __break(1u);
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v13, 0);
    v14 = v51;
    v15 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v16 = *(v7 + 72);
    do
    {
      sub_1000E0974(v15, &v52);
      v17 = v52;
      v18 = v53;
      v51 = v14;
      v20 = v14[2];
      v19 = v14[3];
      if (v20 >= v19 >> 1)
      {
        sub_100091A08((v19 > 1), v20 + 1, 1);
        v14 = v51;
      }

      v14[2] = v20 + 1;
      v21 = &v14[2 * v20];
      v21[4] = v17;
      v21[5] = v18;
      v15 += v16;
      --v13;
    }

    while (v13);
    v52 = v14;
    sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
    sub_100031CDC();
    v42 = sub_1004A5614();
    v44 = v43;

    v52 = 123;
    v53 = 0xE100000000000000;
    v55._countAndFlagsBits = v42;
    v55._object = v44;
    sub_1004A5994(v55);

    v56._countAndFlagsBits = 125;
    v56._object = 0xE100000000000000;
    sub_1004A5994(v56);

    return v52;
  }

  return result;
}

uint64_t sub_1000DD4DC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v134 = a7;
  v131 = a5;
  v129 = a3;
  v130 = a4;
  v128 = a2;
  v11 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v117 - v13;
  v15 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v133 = &v117 - v17;
  v123 = type metadata accessor for MailboxTaskLogger(0);
  v18 = *(*(v123 - 8) + 64);
  __chkstk_darwin(v123);
  v120 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v122 = &v117 - v21;
  __chkstk_darwin(v22);
  v132 = &v117 - v23;
  __chkstk_darwin(v24);
  v121 = &v117 - v25;
  __chkstk_darwin(v26);
  v28 = &v117 - v27;
  __chkstk_darwin(v29);
  v31 = &v117 - v30;
  v32 = sub_10000C9C0(&qword_1005CD4F0, &unk_1004CF2B0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v35 = &v117 - v34;
  v36 = type metadata accessor for MessagesToRemoveHelper.Range();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  v125 = &v117 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v127 = (&v117 - v41);
  __chkstk_darwin(v42);
  v126 = &v117 - v43;
  __chkstk_darwin(v44);
  v46 = &v117 - v45;
  v124 = a1;
  v47 = a1;
  v49 = v48;
  sub_1000E0D70(v47, a8, v35);
  if ((*(v37 + 48))(v35, 1, v49) == 1)
  {
    return sub_100025F40(v35, &qword_1005CD4F0, &unk_1004CF2B0);
  }

  sub_1000E2FA4(v35, v46, type metadata accessor for MessagesToRemoveHelper.Range);
  v51 = v46;
  v52 = v132;
  if ((a6 & 1) != 0 && (*(v51 + v49[8]) & 1) == 0)
  {
    v53 = v134;
    sub_1000E300C(v134, v31, type metadata accessor for MailboxTaskLogger);
    sub_1000E300C(v53, v28, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v54 = sub_1004A4A54();
    v55 = sub_1004A6014();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v137 = v119;
      *v56 = 68159491;
      v118 = v55;
      *(v56 + 4) = 2;
      *(v56 + 8) = 256;
      v57 = v123;
      v58 = v51;
      v59 = &v28[*(v123 + 20)];
      *(v56 + 10) = *v59;
      *(v56 + 11) = 2082;
      v60 = *(v57 + 20);
      v117 = v54;
      v61 = &v31[v60];
      *(v56 + 13) = sub_10015BA6C(*&v31[v60 + 8], *&v31[v60 + 16], &v137);
      *(v56 + 21) = 1040;
      *(v56 + 23) = 2;
      *(v56 + 27) = 512;
      LOWORD(v59) = *(v59 + 12);
      sub_1000E3074(v28, type metadata accessor for MailboxTaskLogger);
      *(v56 + 29) = v59;
      v51 = v58;
      v52 = v132;
      *(v56 + 31) = 2160;
      *(v56 + 33) = 0x786F626C69616DLL;
      *(v56 + 41) = 2085;
      v62 = *(v61 + 4);
      LODWORD(v61) = *(v61 + 10);

      sub_1000E3074(v31, type metadata accessor for MailboxTaskLogger);
      v135 = v62;
      v136 = v61;
      v63 = sub_1004A5824();
      v65 = sub_10015BA6C(v63, v64, &v137);

      *(v56 + 43) = v65;
      *(v56 + 51) = 2048;
      *(v56 + 53) = v124;
      v66 = v117;
      _os_log_impl(&_mh_execute_header, v117, v118, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search completed for range #%ld, but server never sent a response. rdar://127003347", v56, 0x3Du);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000E3074(v28, type metadata accessor for MailboxTaskLogger);

      sub_1000E3074(v31, type metadata accessor for MailboxTaskLogger);
    }
  }

  v67 = v133;
  sub_10000E268(v51 + v49[5], v133, &qword_1005CD1D0, &unk_1004CF2C0);
  v132 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.ranges.getter(v14);
  sub_100025F40(v67, &unk_1005D91B0, &unk_1004CF400);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v68 = sub_1004A7044();
  v69 = sub_1004A7074();
  v70 = sub_1004A7044();
  result = sub_1004A7074();
  if (v68 < v70 || result < v68)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v71 = sub_1004A7044();
  v72 = sub_1004A7074();
  result = sub_100025F40(v14, &qword_1005CD7A0, &unk_1004CF590);
  if (v69 < v71 || v72 < v69)
  {
    goto LABEL_25;
  }

  if (__OFSUB__(v69, v68))
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (v69 - v68 > 9)
  {
    v73 = v134;
    v99 = v122;
    sub_1000E300C(v134, v122, type metadata accessor for MailboxTaskLogger);
    v100 = v120;
    sub_1000E300C(v73, v120, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v101 = v125;
    sub_1000E300C(v51, v125, type metadata accessor for MessagesToRemoveHelper.Range);
    v78 = sub_1004A4A54();
    v102 = sub_1004A6034();
    if (os_log_type_enabled(v78, v102))
    {
      v103 = swift_slowAlloc();
      v127 = v49;
      v104 = v103;
      v133 = swift_slowAlloc();
      v137 = v133;
      *v104 = 68159747;
      *(v104 + 4) = 2;
      *(v104 + 8) = 256;
      v105 = v123;
      v106 = v100 + *(v123 + 20);
      *(v104 + 10) = *v106;
      *(v104 + 11) = 2082;
      v107 = *(v105 + 20);
      v119 = v51;
      v108 = v99 + v107;
      *(v104 + 13) = sub_10015BA6C(*(v99 + v107 + 8), *(v99 + v107 + 16), &v137);
      *(v104 + 21) = 1040;
      *(v104 + 23) = 2;
      *(v104 + 27) = 512;
      LOWORD(v106) = *(v106 + 24);
      sub_1000E3074(v100, type metadata accessor for MailboxTaskLogger);
      *(v104 + 29) = v106;
      *(v104 + 31) = 2160;
      *(v104 + 33) = 0x786F626C69616DLL;
      *(v104 + 41) = 2085;
      v109 = *(v108 + 32);
      LODWORD(v108) = *(v108 + 40);

      sub_1000E3074(v99, type metadata accessor for MailboxTaskLogger);
      v135 = v109;
      v136 = v108;
      v51 = v119;
      v110 = sub_1004A5824();
      v112 = sub_10015BA6C(v110, v111, &v137);

      *(v104 + 43) = v112;
      *(v104 + 51) = 2048;
      v113 = v125;
      *(v104 + 53) = v124;
      *(v104 + 61) = 2048;
      v114 = v113 + v127[6];
      v115 = MessageIdentifierSet.count.getter();
      sub_1000E3074(v113, type metadata accessor for MessagesToRemoveHelper.Range);
      *(v104 + 63) = v115;
      _os_log_impl(&_mh_execute_header, v78, v102, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search completed for range #%ld. Got %ld UIDs.", v104, 0x47u);
      swift_arrayDestroy();

      goto LABEL_18;
    }

    sub_1000E3074(v101, type metadata accessor for MessagesToRemoveHelper.Range);
    sub_1000E3074(v100, type metadata accessor for MailboxTaskLogger);

    v116 = v99;
LABEL_21:
    sub_1000E3074(v116, type metadata accessor for MailboxTaskLogger);
    goto LABEL_22;
  }

  v73 = v134;
  v74 = v121;
  sub_1000E300C(v134, v121, type metadata accessor for MailboxTaskLogger);
  sub_1000E300C(v73, v52, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v75 = v126;
  sub_1000E300C(v51, v126, type metadata accessor for MessagesToRemoveHelper.Range);
  v76 = v52;
  v77 = v127;
  sub_1000E300C(v51, v127, type metadata accessor for MessagesToRemoveHelper.Range);
  v78 = sub_1004A4A54();
  v79 = sub_1004A6034();
  if (!os_log_type_enabled(v78, v79))
  {
    sub_1000E3074(v77, type metadata accessor for MessagesToRemoveHelper.Range);
    sub_1000E3074(v76, type metadata accessor for MailboxTaskLogger);

    sub_1000E3074(v75, type metadata accessor for MessagesToRemoveHelper.Range);
    v116 = v74;
    goto LABEL_21;
  }

  v80 = swift_slowAlloc();
  v125 = swift_slowAlloc();
  v137 = v125;
  *v80 = 68160003;
  LODWORD(v122) = v79;
  *(v80 + 4) = 2;
  *(v80 + 8) = 256;
  v81 = v123;
  v82 = *(v123 + 20);
  v119 = v51;
  v83 = v76 + v82;
  *(v80 + 10) = *(v76 + v82);
  *(v80 + 11) = 2082;
  v84 = v74;
  v85 = v74 + *(v81 + 20);
  *(v80 + 13) = sub_10015BA6C(*(v85 + 8), *(v85 + 16), &v137);
  *(v80 + 21) = 1040;
  *(v80 + 23) = 2;
  *(v80 + 27) = 512;
  LOWORD(v83) = *(v83 + 24);
  sub_1000E3074(v76, type metadata accessor for MailboxTaskLogger);
  *(v80 + 29) = v83;
  *(v80 + 31) = 2160;
  *(v80 + 33) = 0x786F626C69616DLL;
  *(v80 + 41) = 2085;
  v86 = *(v85 + 32);
  LODWORD(v85) = *(v85 + 40);

  sub_1000E3074(v84, type metadata accessor for MailboxTaskLogger);
  v135 = v86;
  v136 = v85;
  v87 = sub_1004A5824();
  v89 = sub_10015BA6C(v87, v88, &v137);

  *(v80 + 43) = v89;
  *(v80 + 51) = 2048;
  *(v80 + 53) = v124;
  *(v80 + 61) = 2082;
  v90 = v126;
  v91 = v133;
  sub_10000E268(v126 + v49[5], v133, &qword_1005CD1D0, &unk_1004CF2C0);
  v92 = MessageIdentifierSet.debugDescription.getter(v132);
  v94 = v93;
  sub_1000E3074(v90, type metadata accessor for MessagesToRemoveHelper.Range);
  sub_100025F40(v91, &unk_1005D91B0, &unk_1004CF400);
  v95 = sub_10015BA6C(v92, v94, &v137);
  v73 = v134;

  *(v80 + 63) = v95;
  *(v80 + 71) = 2048;
  v51 = v119;
  v96 = v127;
  v97 = v127 + v49[6];
  v98 = MessageIdentifierSet.count.getter();
  sub_1000E3074(v96, type metadata accessor for MessagesToRemoveHelper.Range);
  *(v80 + 73) = v98;
  _os_log_impl(&_mh_execute_header, v78, v122, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search completed for range #%ld %{public}s. Got %ld UIDs.", v80, 0x51u);
  swift_arrayDestroy();

LABEL_18:

LABEL_22:
  sub_1000112D4(v73, v128, v129, v130, v131);
  return sub_1000E3074(v51, type metadata accessor for MessagesToRemoveHelper.Range);
}

void sub_1000DE294(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v242 = a6;
  v248 = a4;
  v243 = a3;
  v240 = a2;
  v8 = sub_10000C9C0(&qword_1005CD798, &unk_1004D3640);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v238 = &v218 - v10;
  v11 = _s15MissingMessagesO10NewMissingVMa(0);
  v236 = *(v11 - 8);
  v237 = v11;
  v12 = *(v236 + 64);
  __chkstk_darwin(v11);
  v228 = &v218 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v227 = &v218 - v15;
  __chkstk_darwin(v16);
  v226 = &v218 - v17;
  __chkstk_darwin(v18);
  v233 = &v218 - v19;
  v247 = type metadata accessor for MailboxTaskLogger(0);
  v20 = *(*(v247 - 8) + 64);
  __chkstk_darwin(v247);
  v22 = &v218 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v218 - v24;
  __chkstk_darwin(v26);
  v244 = &v218 - v27;
  __chkstk_darwin(v28);
  v245 = &v218 - v29;
  __chkstk_darwin(v30);
  v234 = &v218 - v31;
  __chkstk_darwin(v32);
  v34 = &v218 - v33;
  __chkstk_darwin(v35);
  v225 = &v218 - v36;
  __chkstk_darwin(v37);
  v232 = &v218 - v38;
  __chkstk_darwin(v39);
  v223 = &v218 - v40;
  __chkstk_darwin(v41);
  v224 = &v218 - v42;
  __chkstk_darwin(v43);
  v229 = &v218 - v44;
  __chkstk_darwin(v45);
  v231 = &v218 - v46;
  __chkstk_darwin(v47);
  v49 = &v218 - v48;
  __chkstk_darwin(v50);
  v230 = &v218 - v51;
  v52 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v53 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52 - 8);
  v55 = &v218 - v54;
  v241 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v56 = *(*(v241 - 8) + 64);
  __chkstk_darwin(v241);
  v246 = &v218 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  __chkstk_darwin(v59);
  v61 = &v218 - v60;
  __chkstk_darwin(v62);
  __chkstk_darwin(v63);
  v65 = &v218 - v64;
  __chkstk_darwin(v66);
  v70 = &v218 - v67;
  if (*(a5 + 16))
  {
    v220 = v69;
    v221 = v68;
    v235 = a1;
    v222 = v34;
    sub_1000DFE98(a5, &v218 - v67);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v71 = sub_1004A70C4();
    v72 = v70;
    v73 = a5;
    v239 = v70;
    if (v71)
    {
      goto LABEL_22;
    }

    v219 = a5;
    MessageIdentifierSet.ranges.getter(v55);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v74 = sub_1004A7044();
    v75 = sub_1004A7074();
    v76 = sub_1004A7044();
    v77 = sub_1004A7074();
    if (v74 < v76 || v77 < v74)
    {
      __break(1u);
    }

    else
    {
      v78 = sub_1004A7044();
      v79 = sub_1004A7074();
      sub_100025F40(v55, &qword_1005CD7A0, &unk_1004CF590);
      if (v75 >= v78 && v79 >= v75)
      {
        if (!__OFSUB__(v75, v74))
        {
          if (v75 - v74 > 19)
          {
            v113 = v248;
            v114 = v231;
            sub_1000E300C(v248, v231, type metadata accessor for MailboxTaskLogger);
            v115 = v229;
            sub_1000E300C(v113, v229, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v72 = v239;
            sub_10000E268(v239, v61, &unk_1005D91B0, &unk_1004CF400);
            v116 = v221;
            sub_10000E268(v72, v221, &unk_1005D91B0, &unk_1004CF400);
            v117 = sub_1004A4A54();
            v118 = sub_1004A6034();
            if (os_log_type_enabled(v117, v118))
            {
              v119 = v115;
              v120 = swift_slowAlloc();
              v230 = swift_slowAlloc();
              v251 = v230;
              *v120 = 68159747;
              *(v120 + 4) = 2;
              *(v120 + 8) = 256;
              v121 = v247;
              v122 = v119 + *(v247 + 20);
              *(v120 + 10) = *v122;
              *(v120 + 11) = 2082;
              v123 = v114 + *(v121 + 20);
              *(v120 + 13) = sub_10015BA6C(*(v123 + 8), *(v123 + 16), &v251);
              *(v120 + 21) = 1040;
              *(v120 + 23) = 2;
              *(v120 + 27) = 512;
              LOWORD(v122) = *(v122 + 24);
              sub_1000E3074(v119, type metadata accessor for MailboxTaskLogger);
              *(v120 + 29) = v122;
              *(v120 + 31) = 2160;
              *(v120 + 33) = 0x786F626C69616DLL;
              *(v120 + 41) = 2085;
              v124 = *(v123 + 32);
              LODWORD(v123) = *(v123 + 40);

              sub_1000E3074(v114, type metadata accessor for MailboxTaskLogger);
              v249 = v124;
              v250 = v123;
              v125 = sub_1004A5824();
              v127 = sub_10015BA6C(v125, v126, &v251);

              *(v120 + 43) = v127;
              *(v120 + 51) = 2048;
              v128 = v241;
              v129 = MessageIdentifierSet.count.getter();
              sub_100025F40(v61, &unk_1005D91B0, &unk_1004CF400);
              *(v120 + 53) = v129;
              *(v120 + 61) = 2082;
              v130 = v246;
              MessageIdentifierSet.suffix(_:)(20, v128, v246);
              v131 = MessageIdentifierSet.debugDescription.getter(v128);
              v133 = v132;
              sub_100025F40(v130, &unk_1005D91B0, &unk_1004CF400);
              v72 = v239;
              sub_100025F40(v116, &unk_1005D91B0, &unk_1004CF400);
              v134 = sub_10015BA6C(v131, v133, &v251);

              *(v120 + 63) = v134;
              _os_log_impl(&_mh_execute_header, v117, v118, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: ... %{public}s", v120, 0x47u);
              swift_arrayDestroy();

              goto LABEL_21;
            }

            sub_100025F40(v61, &unk_1005D91B0, &unk_1004CF400);
            sub_1000E3074(v115, type metadata accessor for MailboxTaskLogger);

            sub_100025F40(v116, &unk_1005D91B0, &unk_1004CF400);
            v135 = v114;
          }

          else
          {
            v80 = v248;
            v81 = v230;
            sub_1000E300C(v248, v230, type metadata accessor for MailboxTaskLogger);
            sub_1000E300C(v80, v49, type metadata accessor for MailboxTaskLogger);
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            variable initialization expression of Engine.isProcessingUpdates();
            v72 = v239;
            sub_10000E268(v239, v65, &unk_1005D91B0, &unk_1004CF400);
            v82 = v220;
            sub_10000E268(v72, v220, &unk_1005D91B0, &unk_1004CF400);
            v83 = sub_1004A4A54();
            v84 = sub_1004A6034();
            if (os_log_type_enabled(v83, v84))
            {
              v85 = swift_slowAlloc();
              v231 = swift_slowAlloc();
              v251 = v231;
              *v85 = 68159747;
              *(v85 + 4) = 2;
              *(v85 + 8) = 256;
              v86 = v247;
              v87 = &v49[*(v247 + 20)];
              *(v85 + 10) = *v87;
              *(v85 + 11) = 2082;
              v88 = v81 + *(v86 + 20);
              *(v85 + 13) = sub_10015BA6C(*(v88 + 8), *(v88 + 16), &v251);
              *(v85 + 21) = 1040;
              *(v85 + 23) = 2;
              *(v85 + 27) = 512;
              LOWORD(v87) = *(v87 + 12);
              sub_1000E3074(v49, type metadata accessor for MailboxTaskLogger);
              *(v85 + 29) = v87;
              *(v85 + 31) = 2160;
              *(v85 + 33) = 0x786F626C69616DLL;
              *(v85 + 41) = 2085;
              v89 = *(v88 + 32);
              LODWORD(v87) = *(v88 + 40);

              sub_1000E3074(v81, type metadata accessor for MailboxTaskLogger);
              v249 = v89;
              v250 = v87;
              v90 = sub_1004A5824();
              v92 = sub_10015BA6C(v90, v91, &v251);

              *(v85 + 43) = v92;
              *(v85 + 51) = 2048;
              v93 = v241;
              v94 = MessageIdentifierSet.count.getter();
              sub_100025F40(v65, &unk_1005D91B0, &unk_1004CF400);
              *(v85 + 53) = v94;
              *(v85 + 61) = 2082;
              v95 = MessageIdentifierSet.debugDescription.getter(v93);
              v97 = v96;
              v72 = v239;
              sub_100025F40(v82, &unk_1005D91B0, &unk_1004CF400);
              v98 = sub_10015BA6C(v95, v97, &v251);

              *(v85 + 63) = v98;
              _os_log_impl(&_mh_execute_header, v83, v84, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: %{public}s", v85, 0x47u);
              swift_arrayDestroy();

LABEL_21:
              v73 = v219;
LABEL_22:
              v136 = v242;
              v137 = HIDWORD(v242) & 1;
              v138 = v246;
              v139 = sub_1000E1570(v73, v242 | (v137 << 32));
              __chkstk_darwin(v139);
              *(&v218 - 2) = v138;
              v140 = sub_1000DCD18(0, sub_10002A5BC, (&v218 - 4), v73);
              sub_100025F40(v138, &unk_1005D91B0, &unk_1004CF400);
              v142 = v244;
              v141 = v245;
              v143 = v235;
              if (v140 < 1)
              {
                goto LABEL_25;
              }

              v144 = v136 | (v137 << 32);
              v145 = v238;
              sub_1000E0110(0x455, v73, v144, v238);
              if ((*(v236 + 48))(v145, 1, v237) == 1)
              {
                sub_100025F40(v145, &qword_1005CD798, &unk_1004D3640);
LABEL_25:
                if (v243)
                {
LABEL_26:
                  v146 = v248;
                  sub_1000E300C(v248, v141, type metadata accessor for MailboxTaskLogger);
                  sub_1000E300C(v146, v142, type metadata accessor for MailboxTaskLogger);
                  variable initialization expression of Engine.isProcessingUpdates();
                  variable initialization expression of Engine.isProcessingUpdates();
                  variable initialization expression of Engine.isProcessingUpdates();
                  variable initialization expression of Engine.isProcessingUpdates();
                  variable initialization expression of Engine.isProcessingUpdates();
                  variable initialization expression of Engine.isProcessingUpdates();
                  v147 = sub_1004A4A54();
                  v148 = sub_1004A6034();
                  if (os_log_type_enabled(v147, v148))
                  {
                    v149 = swift_slowAlloc();
                    v251 = swift_slowAlloc();
                    *v149 = 68159235;
                    *(v149 + 4) = 2;
                    *(v149 + 8) = 256;
                    v150 = v247;
                    v151 = v142 + *(v247 + 20);
                    *(v149 + 10) = *v151;
                    *(v149 + 11) = 2082;
                    v152 = v141 + *(v150 + 20);
                    *(v149 + 13) = sub_10015BA6C(*(v152 + 8), *(v152 + 16), &v251);
                    *(v149 + 21) = 1040;
                    *(v149 + 23) = 2;
                    *(v149 + 27) = 512;
                    LOWORD(v151) = *(v151 + 24);
                    sub_1000E3074(v142, type metadata accessor for MailboxTaskLogger);
                    *(v149 + 29) = v151;
                    *(v149 + 31) = 2160;
                    *(v149 + 33) = 0x786F626C69616DLL;
                    *(v149 + 41) = 2085;
                    v153 = *(v152 + 32);
                    LODWORD(v152) = *(v152 + 40);

                    sub_1000E3074(v141, type metadata accessor for MailboxTaskLogger);
                    v249 = v153;
                    v250 = v152;
                    v154 = sub_1004A5824();
                    v156 = sub_10015BA6C(v154, v155, &v251);

                    *(v149 + 43) = v156;
                    _os_log_impl(&_mh_execute_header, v147, v148, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did not remove any pending expunge.", v149, 0x33u);
                    swift_arrayDestroy();

LABEL_45:
                    v217 = v72;
                    goto LABEL_46;
                  }

                  sub_1000E3074(v142, type metadata accessor for MailboxTaskLogger);

                  v177 = v141;
LABEL_44:
                  sub_1000E3074(v177, type metadata accessor for MailboxTaskLogger);
                  goto LABEL_45;
                }

LABEL_39:
                v202 = v143 + *(type metadata accessor for MailboxSyncState() + 48);
                sub_1000FFB58(v240);
                v203 = *(v202 + 40);
                if ((*(v202 + 48) & 1) == 0)
                {
                  v203 = *(v203 + 16);
                }

                v204 = v234;
                v205 = v248;
                v206 = v222;
                sub_1000E300C(v248, v222, type metadata accessor for MailboxTaskLogger);
                sub_1000E300C(v205, v204, type metadata accessor for MailboxTaskLogger);
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                v207 = sub_1004A4A54();
                v208 = sub_1004A6034();
                if (os_log_type_enabled(v207, v208))
                {
                  v209 = swift_slowAlloc();
                  v251 = swift_slowAlloc();
                  *v209 = 68159747;
                  *(v209 + 4) = 2;
                  *(v209 + 8) = 256;
                  v210 = v247;
                  v211 = v204 + *(v247 + 20);
                  *(v209 + 10) = *v211;
                  *(v209 + 11) = 2082;
                  v212 = v206 + *(v210 + 20);
                  *(v209 + 13) = sub_10015BA6C(*(v212 + 8), *(v212 + 16), &v251);
                  *(v209 + 21) = 1040;
                  *(v209 + 23) = 2;
                  *(v209 + 27) = 512;
                  LOWORD(v211) = *(v211 + 24);
                  sub_1000E3074(v204, type metadata accessor for MailboxTaskLogger);
                  *(v209 + 29) = v211;
                  *(v209 + 31) = 2160;
                  *(v209 + 33) = 0x786F626C69616DLL;
                  *(v209 + 41) = 2085;
                  v213 = *(v212 + 32);
                  LODWORD(v212) = *(v212 + 40);

                  sub_1000E3074(v206, type metadata accessor for MailboxTaskLogger);
                  v249 = v213;
                  v250 = v212;
                  v214 = sub_1004A5824();
                  v216 = sub_10015BA6C(v214, v215, &v251);

                  *(v209 + 43) = v216;
                  *(v209 + 51) = 2048;
                  *(v209 + 53) = v240;
                  *(v209 + 61) = 2048;
                  *(v209 + 63) = v203;
                  _os_log_impl(&_mh_execute_header, v207, v208, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld pending expunge, %ld remaining.", v209, 0x47u);
                  swift_arrayDestroy();

                  v217 = v239;
LABEL_46:
                  sub_100025F40(v217, &unk_1005D91B0, &unk_1004CF400);
                  return;
                }

                sub_1000E3074(v204, type metadata accessor for MailboxTaskLogger);

                v177 = v206;
                goto LABEL_44;
              }

              v157 = v233;
              sub_1000E2FA4(v145, v233, _s15MissingMessagesO10NewMissingVMa);
              if (v140 > 0x13)
              {
                v178 = v248;
                sub_1000E300C(v248, v232, type metadata accessor for MailboxTaskLogger);
                v179 = v225;
                sub_1000E300C(v178, v225, type metadata accessor for MailboxTaskLogger);
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                v180 = v227;
                sub_1000E300C(v157, v227, _s15MissingMessagesO10NewMissingVMa);
                v181 = v228;
                sub_1000E300C(v157, v228, _s15MissingMessagesO10NewMissingVMa);
                v162 = sub_1004A4A54();
                v182 = sub_1004A6014();
                if (os_log_type_enabled(v162, v182))
                {
                  v183 = swift_slowAlloc();
                  v242 = swift_slowAlloc();
                  v251 = v242;
                  *v183 = 68160003;
                  LODWORD(v238) = v182;
                  *(v183 + 4) = 2;
                  *(v183 + 8) = 256;
                  v184 = v247;
                  v185 = v180;
                  v186 = v179 + *(v247 + 20);
                  *(v183 + 10) = *v186;
                  *(v183 + 11) = 2082;
                  v187 = v232;
                  v188 = v232 + *(v184 + 20);
                  *(v183 + 13) = sub_10015BA6C(*(v188 + 8), *(v188 + 16), &v251);
                  *(v183 + 21) = 1040;
                  *(v183 + 23) = 2;
                  *(v183 + 27) = 512;
                  LOWORD(v186) = *(v186 + 24);
                  sub_1000E3074(v179, type metadata accessor for MailboxTaskLogger);
                  *(v183 + 29) = v186;
                  *(v183 + 31) = 2160;
                  *(v183 + 33) = 0x786F626C69616DLL;
                  *(v183 + 41) = 2085;
                  v189 = *(v188 + 32);
                  LODWORD(v188) = *(v188 + 40);

                  sub_1000E3074(v187, type metadata accessor for MailboxTaskLogger);
                  v249 = v189;
                  v250 = v188;
                  v141 = v245;
                  v190 = sub_1004A5824();
                  v192 = sub_10015BA6C(v190, v191, &v251);

                  *(v183 + 43) = v192;
                  *(v183 + 51) = 2048;
                  *(v183 + 53) = v140;
                  *(v183 + 61) = 2048;
                  v193 = v241;
                  v194 = MessageIdentifierSet.count.getter();
                  sub_1000E3074(v185, _s15MissingMessagesO10NewMissingVMa);
                  *(v183 + 63) = v194;
                  *(v183 + 71) = 2082;
                  v142 = v244;
                  v195 = v246;
                  MessageIdentifierSet.suffix(_:)(20, v193, v246);
                  v196 = MessageIdentifierSet.debugDescription.getter(v193);
                  v198 = v197;
                  sub_100025F40(v195, &unk_1005D91B0, &unk_1004CF400);
                  sub_1000E3074(v181, _s15MissingMessagesO10NewMissingVMa);
                  v199 = sub_10015BA6C(v196, v198, &v251);

                  *(v183 + 73) = v199;
                  _os_log_impl(&_mh_execute_header, v162, v238, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs, adding %ld UIDs as missing: ... %{public}s", v183, 0x51u);
                  swift_arrayDestroy();
                  goto LABEL_34;
                }

                sub_1000E3074(v180, _s15MissingMessagesO10NewMissingVMa);
                sub_1000E3074(v179, type metadata accessor for MailboxTaskLogger);

                sub_1000E3074(v181, _s15MissingMessagesO10NewMissingVMa);
                v200 = v232;
              }

              else
              {
                v158 = v248;
                v159 = v224;
                sub_1000E300C(v248, v224, type metadata accessor for MailboxTaskLogger);
                v160 = v223;
                sub_1000E300C(v158, v223, type metadata accessor for MailboxTaskLogger);
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                variable initialization expression of Engine.isProcessingUpdates();
                v161 = v226;
                sub_1000E300C(v157, v226, _s15MissingMessagesO10NewMissingVMa);
                v162 = sub_1004A4A54();
                v163 = sub_1004A6014();
                if (os_log_type_enabled(v162, v163))
                {
                  v164 = swift_slowAlloc();
                  v251 = swift_slowAlloc();
                  *v164 = 68159747;
                  LODWORD(v246) = v163;
                  *(v164 + 4) = 2;
                  *(v164 + 8) = 256;
                  v165 = v247;
                  v166 = v159;
                  v167 = v160 + *(v247 + 20);
                  *(v164 + 10) = *v167;
                  *(v164 + 11) = 2082;
                  v168 = v166 + *(v165 + 20);
                  *(v164 + 13) = sub_10015BA6C(*(v168 + 8), *(v168 + 16), &v251);
                  *(v164 + 21) = 1040;
                  *(v164 + 23) = 2;
                  *(v164 + 27) = 512;
                  LOWORD(v167) = *(v167 + 24);
                  sub_1000E3074(v160, type metadata accessor for MailboxTaskLogger);
                  *(v164 + 29) = v167;
                  *(v164 + 31) = 2160;
                  *(v164 + 33) = 0x786F626C69616DLL;
                  *(v164 + 41) = 2085;
                  v169 = *(v168 + 32);
                  LODWORD(v168) = *(v168 + 40);

                  sub_1000E3074(v166, type metadata accessor for MailboxTaskLogger);
                  v249 = v169;
                  v250 = v168;
                  v141 = v245;
                  v170 = sub_1004A5824();
                  v172 = sub_10015BA6C(v170, v171, &v251);

                  *(v164 + 43) = v172;
                  *(v164 + 51) = 2048;
                  *(v164 + 53) = v140;
                  *(v164 + 61) = 2082;
                  v142 = v244;
                  v173 = MessageIdentifierSet.debugDescription.getter(v241);
                  v175 = v174;
                  sub_1000E3074(v161, _s15MissingMessagesO10NewMissingVMa);
                  v176 = sub_10015BA6C(v173, v175, &v251);

                  *(v164 + 63) = v176;
                  _os_log_impl(&_mh_execute_header, v162, v246, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs: %{public}s", v164, 0x47u);
                  swift_arrayDestroy();
LABEL_34:
                  v157 = v233;

                  v143 = v235;

                  goto LABEL_38;
                }

                sub_1000E3074(v160, type metadata accessor for MailboxTaskLogger);

                sub_1000E3074(v161, _s15MissingMessagesO10NewMissingVMa);
                v200 = v159;
              }

              sub_1000E3074(v200, type metadata accessor for MailboxTaskLogger);
LABEL_38:
              v201 = v143 + *(type metadata accessor for MailboxSyncState() + 68);
              sub_1000E3CF8(v157);
              sub_1000E3074(v157, _s15MissingMessagesO10NewMissingVMa);
              v72 = v239;
              if (v243)
              {
                goto LABEL_26;
              }

              goto LABEL_39;
            }

            sub_100025F40(v65, &unk_1005D91B0, &unk_1004CF400);
            sub_1000E3074(v49, type metadata accessor for MailboxTaskLogger);

            sub_100025F40(v82, &unk_1005D91B0, &unk_1004CF400);
            v135 = v81;
          }

          sub_1000E3074(v135, type metadata accessor for MailboxTaskLogger);
          goto LABEL_21;
        }

LABEL_50:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v99 = a1 + *(type metadata accessor for MailboxSyncState() + 48);
  v100 = *(v99 + 40);
  v101 = v100;
  if ((*(v99 + 48) & 1) == 0)
  {
    v101 = *(v100 + 16);
  }

  sub_10002A758(v100, *(v99 + 48));
  *(v99 + 40) = _swiftEmptyArrayStorage;
  *(v99 + 48) = 0;
  v102 = v248;
  sub_1000E300C(v248, v25, type metadata accessor for MailboxTaskLogger);
  sub_1000E300C(v102, v22, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v103 = sub_1004A4A54();
  v104 = sub_1004A6034();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    *v105 = 68159491;
    *(v105 + 4) = 2;
    *(v105 + 8) = 256;
    v106 = v247;
    v107 = &v22[*(v247 + 20)];
    *(v105 + 10) = *v107;
    *(v105 + 11) = 2082;
    v108 = &v25[*(v106 + 20)];
    *(v105 + 13) = sub_10015BA6C(*(v108 + 1), *(v108 + 2), &v251);
    *(v105 + 21) = 1040;
    *(v105 + 23) = 2;
    *(v105 + 27) = 512;
    LOWORD(v107) = *(v107 + 12);
    sub_1000E3074(v22, type metadata accessor for MailboxTaskLogger);
    *(v105 + 29) = v107;
    *(v105 + 31) = 2160;
    *(v105 + 33) = 0x786F626C69616DLL;
    *(v105 + 41) = 2085;
    v109 = *(v108 + 4);
    LODWORD(v107) = *(v108 + 10);

    sub_1000E3074(v25, type metadata accessor for MailboxTaskLogger);
    v249 = v109;
    v250 = v107;
    v110 = sub_1004A5824();
    v112 = sub_10015BA6C(v110, v111, &v251);

    *(v105 + 43) = v112;
    *(v105 + 51) = 2048;
    *(v105 + 53) = v101;
    _os_log_impl(&_mh_execute_header, v103, v104, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Local mailbox is empty. Removed %ld pending expunge.", v105, 0x3Du);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000E3074(v22, type metadata accessor for MailboxTaskLogger);

    sub_1000E3074(v25, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_1000DFE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v24 - v7;
  v25 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v11 = v24 - v10;
  v12 = type metadata accessor for MessagesToRemoveHelper.Range();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016D2C();
  v26 = a2;
  result = sub_1004A7114();
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v12 + 28);
    v24[0] = *(v12 + 24);
    v24[1] = v19;
    v20 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v21 = v5;
    v22 = *(v13 + 72);
    v23 = (v21 + 16);
    do
    {
      sub_1000E300C(v20, v16, type metadata accessor for MessagesToRemoveHelper.Range);
      MessageIdentifierSet.subtracting(_:)(&v16[v24[0]], v11);
      (*v23)(v8, v11, v4);
      sub_1004A7104();
      sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
      result = sub_1000E3074(v16, type metadata accessor for MessagesToRemoveHelper.Range);
      v20 += v22;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_1000E0110@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s15MissingMessagesO10NewMissingVMa(0);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v31 - v20;
  __chkstk_darwin(v22);
  v24 = &v31 - v23;
  sub_1000E1570(a2, a3 | ((HIDWORD(a3) & 1) << 32));
  sub_100016D2C();
  sub_1004A7114();
  sub_1004A7114();
  sub_100025FDC(v18, v10, &unk_1005D91B0, &unk_1004CF400);
  sub_100025FDC(v21, v14, &unk_1005D91B0, &unk_1004CF400);
  v25 = &v14[*(v11 + 20)];
  *v25 = 0;
  v25[4] = 1;
  *(v25 + 2) = 0;
  v25[12] = 1;
  *(v25 + 4) = 0;
  v25[20] = 1;
  sub_1000E2FA4(v10, &v14[*(v11 + 24)], _s15MissingMessagesO11QueriedUIDsVMa);
  v26 = 0;
  v27 = *(a2 + 16);
  while (v27 != v26)
  {
    v28 = *(type metadata accessor for MessagesToRemoveHelper.Range() - 8);
    sub_1000E186C(v14, a2 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v26++, a1, v24);
  }

  v29 = v32;
  sub_1000E2FA4(v14, v32, _s15MissingMessagesO10NewMissingVMa);
  (*(v31 + 56))(v29, 0, 1, v11);
  return sub_100025F40(v24, &unk_1005D91B0, &unk_1004CF400);
}

Swift::Int sub_1000E0488(int *a1)
{
  v3 = v1;
  sub_1004A6E94();
  sub_1004A6EB4(*v1);
  v4 = a1[5];
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  v5 = v3 + a1[6];
  sub_1004A5564();
  v6 = v3 + a1[7];
  sub_1004A5564();
  sub_1004A6EC4(*(v3 + a1[8]));
  return sub_1004A6F14();
}

void sub_1000E055C(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1004A6EB4(*v2);
  v5 = a2[5];
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  v6 = v4 + a2[6];
  sub_1004A5564();
  v7 = v4 + a2[7];
  sub_1004A5564();
  sub_1004A6EC4(*(v4 + a2[8]));
}

Swift::Int sub_1000E0618(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1004A6E94();
  sub_1004A6EB4(*v2);
  v5 = a2[5];
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  v6 = v4 + a2[6];
  sub_1004A5564();
  v7 = v4 + a2[7];
  sub_1004A5564();
  sub_1004A6EC4(*(v4 + a2[8]));
  return sub_1004A6F14();
}

void *sub_1000E06EC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_1000E06FC()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1000E0770()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  return sub_1004A6F14();
}

uint64_t sub_1000E07B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v19 - v15;
  sub_10000E268(a2, &v19 - v15, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100016D2C();
  sub_1004A7114();
  sub_1004A7114();
  *a3 = a1;
  v17 = type metadata accessor for MessagesToRemoveHelper.Range();
  sub_100025FDC(v16, a3 + v17[5], &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100025FDC(v12, a3 + v17[6], &unk_1005D91B0, &unk_1004CF400);
  result = sub_100025FDC(v10, a3 + v17[7], &unk_1005D91B0, &unk_1004CF400);
  *(a3 + v17[8]) = 0;
  return result;
}

int64_t sub_1000E0974@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  v35 = *(type metadata accessor for MessagesToRemoveHelper.Range() + 20);
  v36 = a1;
  sub_10000E268(a1 + v35, v12, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_100025FDC(v12, v16, &unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.ranges.getter(v8);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v17 = sub_1004A7044();
  v18 = sub_1004A7074();
  v19 = sub_1004A7044();
  result = sub_1004A7074();
  if (v17 < v19 || result < v17)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = sub_1004A7044();
  v23 = sub_1004A7074();
  result = sub_100025F40(v8, &qword_1005CD7A0, &unk_1004CF590);
  if (v18 < v22 || v23 < v18)
  {
    goto LABEL_17;
  }

  if (__OFSUB__(v18, v17))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v18 - v17 <= 1)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
LABEL_15:
    sub_1004A6934();
    v30 = v38;
    v31 = v39;
    v32 = v37;
    result = sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
    *v32 = v30;
    v32[1] = v31;
    return result;
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_10000E268(v36 + v35, v12, &qword_1005CD1D0, &unk_1004CF2C0);
  v25 = MessageIdentifierSet.count.getter();
  sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
  v40 = v25;
  v41._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v41);

  v42._countAndFlagsBits = 544106784;
  v42._object = 0xE400000000000000;
  sub_1004A5994(v42);
  result = sub_1000E5314();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_19;
  }

  LODWORD(v40) = result;
  sub_1004A6934();
  v43._countAndFlagsBits = 58;
  v43._object = 0xE100000000000000;
  sub_1004A5994(v43);
  v26 = v34;
  MessageIdentifierSet.ranges.getter(v34);
  v27 = sub_1000E4C0C();
  v29 = v28;
  result = sub_100025F40(v26, &qword_1005CD7A0, &unk_1004CF590);
  if ((v29 & 1) == 0)
  {
    LODWORD(v40) = HIDWORD(v27);
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000E0D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MessagesToRemoveHelper.Range();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v14 = *(v7 + 72);
    while (1)
    {
      sub_1000E300C(v13, v11, type metadata accessor for MessagesToRemoveHelper.Range);
      v15 = *v11;
      sub_1000E3074(v11, type metadata accessor for MessagesToRemoveHelper.Range);
      if (v15 == a1)
      {
        break;
      }

      v13 += v14;
      if (!--v12)
      {
        goto LABEL_5;
      }
    }

    sub_1000E300C(v13, a3, type metadata accessor for MessagesToRemoveHelper.Range);
    v16 = 0;
  }

  else
  {
LABEL_5:
    v16 = 1;
  }

  return (*(v7 + 56))(a3, v16, 1, v6, v9);
}

uint64_t sub_1000E0EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = type metadata accessor for MessagesToRemoveHelper.Range();
  *(a1 + *(v9 + 32)) = 1;
  v10 = *(v9 + 24);
  (*(v5 + 16))(v8, a2, v4);
  return sub_1004A7104();
}

uint64_t sub_1000E0FDC(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for MessagesToRemoveHelper.Range();
  sub_10000E268(a1 + *(v6 + 20), v5, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v7 = sub_1004A70E4();
  sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
  return v7 & 1;
}

uint64_t sub_1000E10D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  v20 = type metadata accessor for MessagesToRemoveHelper.Range();
  v21 = a1 + *(v20 + 28);
  MessageIdentifierSet.subtracting(_:)(a1 + *(v20 + 24), v7);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
    v22 = 1;
  }

  else
  {
    sub_100025FDC(v7, v16, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v16, v11, &qword_1005CD1D0, &unk_1004CF2C0);
    v22 = 0;
  }

  (*(v13 + 56))(v11, v22, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100025F40(v11, &qword_1005CD518, &qword_1004CF2F0);
    v23 = sub_10000C9C0(&qword_1005CD528, &unk_1004CF300);
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }

  else
  {
    sub_100025FDC(v11, v19, &qword_1005CD1D0, &unk_1004CF2C0);
    v25 = sub_10000C9C0(&qword_1005CD528, &unk_1004CF300);
    v26 = *(v25 + 48);
    *a2 = *a1;
    sub_100025FDC(v19, a2 + v26, &qword_1005CD1D0, &unk_1004CF2C0);
    return (*(*(v25 - 8) + 56))(a2, 0, 1, v25);
  }
}

uint64_t sub_1000E1420()
{
  v0 = *(type metadata accessor for MessagesToRemoveHelper.Range() + 20);
  sub_100016D2C();
  return sub_1004A7034() & 1;
}

uint64_t sub_1000E1480(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = *(type metadata accessor for MessagesToRemoveHelper.Range() + 28);
  (*(v4 + 16))(v7, a2, v3);
  return sub_1004A7104();
}

unint64_t sub_1000E1570(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(v7[0]) = 1;
    LODWORD(v8) = -1;
    v3 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(v7, &v8, &type metadata for UID, v3, &v9);
    sub_100016D2C();
    sub_1004A7114();
    v4 = v9;
  }

  else
  {
    if (a2 == -1)
    {
      sub_100016D2C();

      return sub_1004A7114();
    }

    LODWORD(v7[0]) = a2 + 1;
    LODWORD(v8) = -1;
    v3 = sub_100016948();
    static MessageIdentifier.... infix(_:_:)(v7, &v8, &type metadata for UID, v3, &v6);
    sub_100016D2C();
    sub_1004A7114();
    v4 = v6;
  }

  v7[0] = v4;
  result = Range<>.init<A>(_:)(v7, &type metadata for UID, v3);
  v8 = result;
  if (HIDWORD(result) != result)
  {
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v5 = sub_1004A70B4();
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    sub_1004A7064();
    return v5(v7, 0);
  }

  return result;
}

uint64_t sub_1000E1720(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  v13 = type metadata accessor for MessagesToRemoveHelper.Range();
  v14 = *(v13 + 24);
  MessageIdentifierSet.subtracting(_:)(a2 + *(v13 + 28), v9);
  MessageIdentifierSet.subtracting(_:)(a3, v12);
  sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
  v15 = MessageIdentifierSet.count.getter();
  result = sub_100025F40(v12, &unk_1005D91B0, &unk_1004CF400);
  if (__OFADD__(*a1, v15))
  {
    __break(1u);
  }

  else
  {
    *a1 += v15;
  }

  return result;
}

uint64_t sub_1000E186C(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  v63 = a4;
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v60 = &v50 - v10;
  v11 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v15 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v56 = &v50 - v19;
  __chkstk_darwin(v20);
  v59 = &v50 - v21;
  __chkstk_darwin(v22);
  v24 = &v50 - v23;
  __chkstk_darwin(v25);
  v27 = &v50 - v26;
  result = MessageIdentifierSet.count.getter();
  v62 = a3;
  if (result < a3)
  {
    v54 = v14;
    v58 = a1;
    v29 = type metadata accessor for MessagesToRemoveHelper.Range();
    v30 = v29[6];
    v31 = a2 + v29[7];
    v53 = a2;
    MessageIdentifierSet.subtracting(_:)(v31, v24);
    MessageIdentifierSet.subtracting(_:)(v63, v27);
    sub_100025F40(v24, &unk_1005D91B0, &unk_1004CF400);
    v55 = v11;
    if (sub_1004A70C4())
    {
      return sub_100025F40(v27, &unk_1005D91B0, &unk_1004CF400);
    }

    v32 = v24;
    v52 = v4;
    v33 = MessageIdentifierSet.count.getter();
    result = MessageIdentifierSet.count.getter();
    if (__OFADD__(v33, result))
    {
      __break(1u);
    }

    else
    {
      v34 = v62;
      if (v33 + result <= v62)
      {
        v62 = *(v61 + 16);
        v47 = v54;
        v46 = v55;
        v62(v54, v27, v55);
        sub_1004A7104();
        v48 = v60;
        sub_10000E268(v53 + v29[5], v60, &qword_1005CD1D0, &unk_1004CF2C0);
        MessageIdentifierSet.subtracting(_:)(v63, v32);
        sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
        v49 = *(_s15MissingMessagesO10NewMissingVMa(0) + 24);
        v62(v47, v32, v46);
        sub_1004A7104();
        v37 = v32;
LABEL_10:
        sub_100025F40(v37, &unk_1005D91B0, &unk_1004CF400);
        return sub_100025F40(v27, &unk_1005D91B0, &unk_1004CF400);
      }

      v35 = MessageIdentifierSet.count.getter();
      result = MessageIdentifierSet.count.getter();
      v36 = v35 + result;
      if (!__OFADD__(v35, result))
      {
        v51 = v32;
        result = v36 - v34;
        v37 = v59;
        if (!__OFSUB__(v36, v34))
        {
          MessageIdentifierSet.suffix(_:)(result, v15, v59);
          v38 = sub_1000E5314();
          if ((v38 & 0x100000000) == 0)
          {
            v39 = v38;
            v62 = *(v61 + 16);
            v40 = v54;
            v62(v54, v37, v55);
            sub_1004A7104();
            v41 = v60;
            sub_10000E268(v53 + v29[5], v60, &qword_1005CD1D0, &unk_1004CF2C0);
            v42 = v56;
            MessageIdentifierSet.subtracting(_:)(v63, v56);
            sub_100025F40(v41, &unk_1005D91B0, &unk_1004CF400);
            LODWORD(v65) = v39;
            LODWORD(v64) = -1;
            v43 = sub_100016948();
            static MessageIdentifier.... infix(_:_:)(&v65, &v64, &type metadata for UID, v43, &v66);
            v65 = v66;
            v64 = Range<>.init<A>(_:)(&v65, &type metadata for UID, v43);
            sub_100016D2C();
            v44 = v57;
            sub_1004A7124();
            v45 = v51;
            MessageIdentifierSet.intersection(_:)(v44, v51);
            sub_100025F40(v44, &unk_1005D91B0, &unk_1004CF400);
            sub_100025F40(v42, &unk_1005D91B0, &unk_1004CF400);
            LODWORD(v44) = *(_s15MissingMessagesO10NewMissingVMa(0) + 24);
            v62(v40, v45, v55);
            sub_1004A7104();
            sub_100025F40(v45, &unk_1005D91B0, &unk_1004CF400);
          }

          goto LABEL_10;
        }

LABEL_15:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1000E1E38(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for MessagesToRemoveHelper.Range();
  v5 = v4[5];
  sub_100016D2C();
  if (sub_1004A7034() & 1) != 0 && (v6 = v4[6], (sub_1004A7034()) && (v7 = v4[7], (sub_1004A7034()))
  {
    v8 = *(a1 + v4[8]) ^ *(a2 + v4[8]) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void *sub_1000E1F1C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = type metadata accessor for MessageBatches(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v27[-v11];
  v13 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v27[-v15];
  v17 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v27[-v19];
  if (!*(*(a1 + 8) + 16))
  {
    sub_10000E268(a1 + *(v6 + 24), v20, &qword_1005CD518, &qword_1004CF2F0);
    v24 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    if ((*(*(v24 - 8) + 48))(v20, 1, v24) == 1)
    {
      sub_100025F40(v20, &qword_1005CD518, &qword_1004CF2F0);
    }

    else
    {
      sub_10000E268(v20, v16, &unk_1005D91B0, &unk_1004CF400);
      sub_100025F40(v20, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v25 = sub_1004A70C4();
      sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
      if ((v25 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_2:
  sub_1000E300C(a1, v10, type metadata accessor for MessageBatches);
  v21 = a3 & 1;
  v27[12] = v21;
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = HIDWORD(a2);
  }

  if (v21)
  {
    a2 = 0;
  }

  else
  {
    a2 = a2;
  }

  sub_1000D7F2C(v22 | (v21 << 32));
  v27[8] = v21;
  sub_1000D9360(a2 | (v21 << 32), v12);
  sub_1000E3074(v10, type metadata accessor for MessageBatches);
  v23 = sub_1000D87C8();
  sub_1000E3074(v12, type metadata accessor for MessageBatches);
  return v23;
}

uint64_t sub_1000E2208(uint64_t a1, unint64_t a2, int a3)
{
  v39 = sub_10000C9C0(&qword_1005CFD78, &qword_1004D3468);
  v6 = *(*(v39 - 8) + 64);
  v7 = __chkstk_darwin(v39);
  v36 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v38 = &v28 - v9;
  v10 = type metadata accessor for MessagesToRemoveHelper.Range();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000E1F1C(a1, a2, a3 & 1);
  v15 = v14[2];
  if (v15)
  {
    v29 = a1;
    v30 = a2;
    v31 = a3;
    v41 = _swiftEmptyArrayStorage;
    sub_100091C88(0, v15, 0);
    v16 = v41;
    v35 = v14[2];
    v17 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
    v18 = 0;
    v20 = *(v17 - 8);
    result = v17 - 8;
    v32 = v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v33 = v20;
    v34 = v14;
    while (v35 != v18)
    {
      if (v18 >= v14[2])
      {
        goto LABEL_12;
      }

      v21 = v38;
      v22 = v39;
      v23 = *(v39 + 48);
      sub_10000E268(&v32[*(v33 + 72) * v18], &v38[v23], &qword_1005CD1D0, &unk_1004CF2C0);
      v24 = v36;
      *v36 = v18;
      v25 = *(v22 + 48);
      sub_100025FDC(&v21[v23], v24 + v25, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_1000E07B4(v18, v24 + v25, v13);
      sub_100025F40(v24, &qword_1005CFD78, &qword_1004D3468);
      v41 = v16;
      v27 = v16[2];
      v26 = v16[3];
      if (v27 >= v26 >> 1)
      {
        sub_100091C88(v26 > 1, v27 + 1, 1);
        v16 = v41;
      }

      ++v18;
      v16[2] = v27 + 1;
      result = sub_1000E2FA4(v13, v16 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v27, type metadata accessor for MessagesToRemoveHelper.Range);
      v14 = v34;
      if (v15 == v18)
      {

        sub_1000E3074(v29, type metadata accessor for MessageBatches);
        LOBYTE(a3) = v31;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    sub_1000E3074(a1, type metadata accessor for MessageBatches);
    v16 = _swiftEmptyArrayStorage;
LABEL_10:
    v40 = a3 & 1;
    return v16;
  }

  return result;
}

uint64_t type metadata accessor for MessagesToRemoveHelper.Range()
{
  result = qword_1005CFDD8;
  if (!qword_1005CFDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1000E25D0(uint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v46 - v10;
  v11 = type metadata accessor for MessageBatches(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = (&v46 - v16);
  v18 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v46 - v20;
  v22 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v47 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v48 = &v46 - v27;
  sub_1000E300C(a1, v15, type metadata accessor for MessageBatches);
  v51 = a3;
  v29 = a3 & 1;
  v28 = (a3 & 1) == 0;
  LOBYTE(v53) = a3 & 1;
  v30 = a3 & 1;
  if (a3)
  {
    v31 = 0;
  }

  else
  {
    v31 = HIDWORD(a2);
  }

  if (v28)
  {
    a2 = a2;
  }

  else
  {
    a2 = 0;
  }

  sub_1000D7F2C(v31 | (v30 << 32));
  LOBYTE(v53) = v29;
  sub_1000D9360(a2 | (v29 << 32), v17);
  sub_1000E3074(v15, type metadata accessor for MessageBatches);
  v32 = v17[1];

  sub_1000E3074(v17, type metadata accessor for MessageBatches);
  if (*(v32 + 16))
  {
    v33 = *(v32 + 32);

    v53 = v33;
    v34 = sub_100016948();
    v52 = Range<>.init<A>(_:)(&v53, &type metadata for UID, v34);
    sub_100016D2C();
    sub_1004A7124();
    v35 = 0;
  }

  else
  {

    v35 = 1;
  }

  (*(v23 + 56))(v21, v35, 1, v22);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100025F40(v21, &qword_1005CD518, &qword_1004CF2F0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v37 = v48;
    sub_100025FDC(v21, v48, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10000C9C0(&qword_1005CF068, &qword_1004D1F58);
    v38 = (type metadata accessor for MessagesToRemoveHelper.Range() - 8);
    v39 = *(*v38 + 72);
    v40 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1004CEAA0;
    v42 = (v41 + v40);
    v43 = v47;
    sub_10000E268(v37, v47, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100016D2C();
    v44 = v49;
    sub_1004A7114();
    v45 = v50;
    sub_1004A7114();
    *v42 = 0;
    sub_100025FDC(v43, v42 + v38[7], &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025FDC(v44, v42 + v38[8], &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v45, v42 + v38[9], &unk_1005D91B0, &unk_1004CF400);
    *(v42 + v38[10]) = 0;
    sub_100025F40(v37, &qword_1005CD1D0, &unk_1004CF2C0);
    return v41;
  }
}

uint64_t sub_1000E2B10(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
  }

  else
  {
    v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[8]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_1000E2C54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_1000E2D70()
{
  sub_1000E2E4C(319, &qword_1005CE2B8, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v0 <= 0x3F)
  {
    sub_1000E2E4C(319, &qword_1005CDDC0, type metadata accessor for MessageIdentifierSet);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000E2E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100016948();
    v7 = a3(a1, &type metadata for UID, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1000E2EF4()
{
  result = qword_1005CFE20;
  if (!qword_1005CFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CFE20);
  }

  return result;
}

unint64_t sub_1000E2F4C()
{
  result = qword_1005CFE28;
  if (!qword_1005CFE28)
  {
    type metadata accessor for MessagesToRemoveHelper.Range();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005CFE28);
  }

  return result;
}

uint64_t sub_1000E2FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E300C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E3074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000E30F8()
{
  result = _s15MissingMessagesO10IncompleteVMa(319);
  if (v1 <= 0x3F)
  {
    result = _s15MissingMessagesO8CompleteVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E31CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000E32D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_1000E338C()
{
  sub_10002ABD0();
  if (v0 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000E342C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000E34B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000E3534()
{
  sub_1000E3BE4(319, &qword_1005CDDC0, type metadata accessor for MessageIdentifierSet);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000E35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s15MissingMessagesO8ProgressVMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = _s15MissingMessagesO11QueriedUIDsVMa(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1000E3720(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = _s15MissingMessagesO8ProgressVMa(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s15MissingMessagesO11QueriedUIDsVMa(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000E3828()
{
  _s15MissingMessagesO8ProgressVMa(319);
  if (v0 <= 0x3F)
  {
    sub_10002ABD0();
    if (v1 <= 0x3F)
    {
      _s15MissingMessagesO11QueriedUIDsVMa(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000E38E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000E39FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000E3B10()
{
  sub_1000E3BE4(319, &qword_1005CE2B8, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v0 <= 0x3F)
  {
    sub_1000E3BE4(319, &qword_1005CDDC0, type metadata accessor for MessageIdentifierSet);
    if (v1 <= 0x3F)
    {
      sub_10002ABD0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000E3BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100016948();
    v7 = a3(a1, &type metadata for UID, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t _s15MissingMessagesO7UnknownVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000E3CF8(uint64_t a1)
{
  v200 = a1;
  v198 = _s15MissingMessagesO10IncompleteVMa(0);
  v1 = *(*(v198 - 8) + 64);
  __chkstk_darwin(v198);
  v191 = &v177 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v192 = &v177 - v4;
  v195 = _s15MissingMessagesO8CompleteVMa(0);
  v5 = *(*(v195 - 8) + 64);
  __chkstk_darwin(v195);
  v183 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v190 = &v177 - v8;
  v197 = _s15MissingMessagesO8ProgressVMa(0);
  v9 = *(*(v197 - 8) + 64);
  __chkstk_darwin(v197);
  v188 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v185 = &v177 - v12;
  __chkstk_darwin(v13);
  v189 = &v177 - v14;
  __chkstk_darwin(v15);
  v186 = &v177 - v16;
  __chkstk_darwin(v17);
  v187 = &v177 - v18;
  __chkstk_darwin(v19);
  v184 = &v177 - v20;
  __chkstk_darwin(v21);
  v182 = &v177 - v22;
  v199 = sub_10000C9C0(&qword_1005D01D8, &qword_1004D3898);
  v23 = *(*(v199 - 8) + 64);
  __chkstk_darwin(v199);
  v25 = &v177 - v24;
  v26 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v194 = &v177 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v181 = &v177 - v31;
  __chkstk_darwin(v32);
  v193 = &v177 - v33;
  __chkstk_darwin(v34);
  v180 = &v177 - v35;
  __chkstk_darwin(v36);
  v177 = &v177 - v37;
  __chkstk_darwin(v38);
  v40 = &v177 - v39;
  v41 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v179 = &v177 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v178 = &v177 - v45;
  __chkstk_darwin(v46);
  v48 = &v177 - v47;
  v49 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v52 = &v177 - v51;
  v53 = _s15MissingMessagesOMa(0);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v56 = &v177 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8398(v201, v56, _s15MissingMessagesOMa);
  sub_10000E268(v200, v48, &unk_1005D91B0, &unk_1004CF400);
  v196 = v41;
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v48, &unk_1005D91B0, &unk_1004CF400);
    v57 = 1;
  }

  else
  {
    sub_100025FDC(v48, v40, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v40, v52, &qword_1005CD1D0, &unk_1004CF2C0);
    v57 = 0;
  }

  (*(v27 + 56))(v52, v57, 1, v26);
  v58 = *(v199 + 48);
  sub_1000E8398(v56, v25, _s15MissingMessagesOMa);
  sub_100025FDC(v52, &v25[v58], &qword_1005CD518, &qword_1004CF2F0);
  v199 = v53;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v86 = *v25;
    if ((*(v27 + 48))(&v25[v58], 1, v26) == 1)
    {
      v87 = _s15MissingMessagesO10NewMissingVMa(0);
      v88 = v201;
      v89 = v200 + *(v87 + 20);
      v90 = *(v89 + 16);
      v91 = *(v89 + 20);
      v92 = v195;
      sub_1000E8D38(v200 + *(v87 + 24), v201 + *(v195 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
      *v88 = v90;
      *(v88 + 4) = v91;
      *(v88 + *(v92 + 24)) = v86;
    }

    else
    {
      v132 = v177;
      sub_100025FDC(&v25[v58], v177, &qword_1005CD1D0, &unk_1004CF2C0);
      v133 = v180;
      sub_10000E268(v132, v180, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_100016D2C();
      v134 = v178;
      sub_1004A7114();
      sub_100025F40(v132, &qword_1005CD1D0, &unk_1004CF2C0);
      v135 = _s15MissingMessagesO10NewMissingVMa(0);
      v136 = v200;
      v137 = (v200 + *(v135 + 20));
      v138 = *v137;
      v139 = v137[2];
      if (*v137 <= v139)
      {
        v140 = v137[2];
      }

      else
      {
        v140 = *v137;
      }

      if (*(v137 + 4))
      {
        v138 = v137[2];
      }

      else
      {
        v139 = v140;
      }

      if (*(v137 + 12))
      {
        v141 = v138;
      }

      else
      {
        v141 = v139;
      }

      v142 = v137[3] & v137[1];
      v143 = v133;
      v144 = v182;
      sub_100025FDC(v143, v182, &qword_1005CD1D0, &unk_1004CF2C0);
      v145 = v197;
      sub_100025FDC(v134, v144 + *(v197 + 20), &unk_1005D91B0, &unk_1004CF400);
      v146 = v144 + *(v145 + 24);
      *v146 = v141;
      *(v146 + 4) = v142;
      LODWORD(v145) = v137[4];
      v147 = *(v137 + 20);
      v148 = v198;
      v149 = v136 + *(v135 + 24);
      v150 = v201;
      sub_1000E8D38(v149, v201 + *(v198 + 24), _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1000E8398(v144, v150, _s15MissingMessagesO8ProgressVMa);
      v151 = v150 + *(v148 + 20);
      *v151 = v145;
      *(v151 + 4) = v147;
      *(v150 + *(v148 + 28)) = v86;
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 1)
  {
    if ((*(v27 + 48))(&v25[v58], 1, v26) == 1)
    {
      v60 = v191;
      sub_1000E8398(v25, v191, _s15MissingMessagesO10IncompleteVMa);
      v61 = v185;
      sub_1000E8D38(v60, v185, _s15MissingMessagesO8ProgressVMa);
      v62 = v61 + *(v197 + 24);
      v63 = *v62;
      v64 = *(v62 + 4);
      v65 = _s15MissingMessagesO10NewMissingVMa(0);
      v66 = v200;
      v67 = (v200 + *(v65 + 20));
      v68 = *v67;
      v69 = v67[2];
      if (*v67 <= v69)
      {
        v70 = v67[2];
      }

      else
      {
        v70 = *v67;
      }

      if (*(v67 + 4))
      {
        v68 = v67[2];
      }

      else
      {
        v69 = v70;
      }

      if (!*(v67 + 12))
      {
        v68 = v69;
      }

      v71 = v67[3] & v67[1];
      if (v68 >= v63)
      {
        v72 = v63;
      }

      else
      {
        v72 = v68;
      }

      if (v67[3] & v67[1])
      {
        v68 = v63;
        v72 = v63;
      }

      if (!v64)
      {
        v68 = v72;
      }

      *v62 = v68;
      *(v62 + 4) = v64 & v71;
      v73 = v188;
      sub_1000E8D38(v61, v188, _s15MissingMessagesO8ProgressVMa);
      v74 = v198;
      v75 = v60 + *(v198 + 20);
      v76 = *v75;
      v77 = v67[4];
      v78 = *(v67 + 20);
      if (v77 <= *v75)
      {
        v79 = *v75;
      }

      else
      {
        v79 = v67[4];
      }

      if (*(v67 + 20))
      {
        v77 = *v75;
      }

      else
      {
        v76 = v79;
      }

      v80 = *(v75 + 4);
      if (v80)
      {
        v81 = v77;
      }

      else
      {
        v81 = v76;
      }

      v82 = v80 & v78;
      v83 = v201;
      MessageIdentifierSet.union(_:)(v66 + *(v65 + 24), v201 + *(v198 + 24));
      sub_1000E8400(v61, _s15MissingMessagesO8ProgressVMa);
      v84 = *(v60 + *(v74 + 28));
      sub_1000E8400(v60, _s15MissingMessagesO10IncompleteVMa);
      sub_1000E8398(v73, v83, _s15MissingMessagesO8ProgressVMa);
      v85 = v83 + *(v74 + 20);
      *v85 = v81;
      *(v85 + 4) = v82;
      *(v83 + *(v74 + 28)) = v84;
      return swift_storeEnumTagMultiPayload();
    }

    v106 = v192;
    sub_1000E8398(v25, v192, _s15MissingMessagesO10IncompleteVMa);
    v107 = v194;
    sub_100025FDC(&v25[v58], v194, &qword_1005CD1D0, &unk_1004CF2C0);
    v108 = v186;
    sub_1000E8D38(v106, v186, _s15MissingMessagesO8ProgressVMa);
    sub_1000E6BC8(v107);
    v109 = v108 + *(v197 + 24);
    v110 = *v109;
    v111 = *(v109 + 4);
    v112 = _s15MissingMessagesO10NewMissingVMa(0);
    v113 = v200;
    v114 = (v200 + *(v112 + 20));
    v115 = *v114;
    v116 = v114[2];
    if (*v114 <= v116)
    {
      v117 = v114[2];
    }

    else
    {
      v117 = *v114;
    }

    if (*(v114 + 4))
    {
      v115 = v114[2];
    }

    else
    {
      v116 = v117;
    }

    if (!*(v114 + 12))
    {
      v115 = v116;
    }

    v118 = v114[3] & v114[1];
    if (v115 >= v110)
    {
      v119 = v110;
    }

    else
    {
      v119 = v115;
    }

    if (v114[3] & v114[1])
    {
      v115 = v110;
      v119 = v110;
    }

    if (!v111)
    {
      v115 = v119;
    }

    *v109 = v115;
    *(v109 + 4) = v111 & v118;
    v120 = v189;
    sub_1000E8D38(v108, v189, _s15MissingMessagesO8ProgressVMa);
    v121 = v198;
    v122 = v106 + *(v198 + 20);
    v123 = *v122;
    v124 = v114[4];
    if (v124 <= *v122)
    {
      v125 = *v122;
    }

    else
    {
      v125 = v114[4];
    }

    if (*(v114 + 20))
    {
      v124 = *v122;
    }

    else
    {
      v123 = v125;
    }

    v126 = *(v122 + 4);
    if (v126)
    {
      v127 = v124;
    }

    else
    {
      v127 = v123;
    }

    v128 = v126 & v114[5];
    v129 = v201;
    MessageIdentifierSet.union(_:)(v113 + *(v112 + 24), v201 + *(v198 + 24));
    sub_1000E8400(v108, _s15MissingMessagesO8ProgressVMa);
    sub_100025F40(v194, &qword_1005CD1D0, &unk_1004CF2C0);
    v130 = *(v106 + *(v121 + 28));
    v131 = _s15MissingMessagesO10IncompleteVMa;
LABEL_98:
    sub_1000E8400(v106, v131);
    sub_1000E8398(v120, v129, _s15MissingMessagesO8ProgressVMa);
    v175 = v129 + *(v121 + 20);
    *v175 = v127;
    *(v175 + 4) = v128;
    *(v129 + *(v121 + 28)) = v130;
    return swift_storeEnumTagMultiPayload();
  }

  if ((*(v27 + 48))(&v25[v58], 1, v26) != 1)
  {
    v106 = v190;
    sub_1000E8398(v25, v190, _s15MissingMessagesO8CompleteVMa);
    v152 = v193;
    sub_100025FDC(&v25[v58], v193, &qword_1005CD1D0, &unk_1004CF2C0);
    v153 = v152;
    v154 = v181;
    sub_10000E268(v153, v181, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100016D2C();
    v155 = v179;
    sub_1004A7114();
    v156 = _s15MissingMessagesO10NewMissingVMa(0);
    v157 = v200;
    v158 = (v200 + *(v156 + 20));
    v159 = *v158;
    v160 = v158[2];
    if (*v158 <= v160)
    {
      v161 = v158[2];
    }

    else
    {
      v161 = *v158;
    }

    if (*(v158 + 4))
    {
      v159 = v158[2];
    }

    else
    {
      v160 = v161;
    }

    if (*(v158 + 12))
    {
      v162 = v159;
    }

    else
    {
      v162 = v160;
    }

    v163 = v158[3] & v158[1];
    v164 = v154;
    v165 = v184;
    sub_100025FDC(v164, v184, &qword_1005CD1D0, &unk_1004CF2C0);
    v166 = v197;
    sub_100025FDC(v155, v165 + *(v197 + 20), &unk_1005D91B0, &unk_1004CF400);
    v167 = v165 + *(v166 + 24);
    *v167 = v162;
    *(v167 + 4) = v163;
    v120 = v187;
    sub_1000E8D38(v165, v187, _s15MissingMessagesO8ProgressVMa);
    v168 = *v106;
    v169 = v158[4];
    v170 = *(v158 + 20);
    if (v169 <= *v106)
    {
      v171 = *v106;
    }

    else
    {
      v171 = v158[4];
    }

    if (*(v158 + 20))
    {
      v169 = *v106;
    }

    else
    {
      v168 = v171;
    }

    if (*(v106 + 4))
    {
      v127 = v169;
    }

    else
    {
      v127 = v168;
    }

    v128 = *(v106 + 4) & v170;
    v172 = v195;
    v121 = v198;
    v129 = v201;
    v173 = v157 + *(v156 + 24);
    v174 = v106 + *(v195 + 20);
    MessageIdentifierSet.union(_:)(v173, v201 + *(v198 + 24));
    sub_1000E8400(v165, _s15MissingMessagesO8ProgressVMa);
    sub_100025F40(v193, &qword_1005CD1D0, &unk_1004CF2C0);
    v130 = *(v106 + *(v172 + 24));
    v131 = _s15MissingMessagesO8CompleteVMa;
    goto LABEL_98;
  }

  v93 = v183;
  sub_1000E8398(v25, v183, _s15MissingMessagesO8CompleteVMa);
  v94 = *v93;
  v95 = *(v93 + 4);
  v96 = _s15MissingMessagesO10NewMissingVMa(0);
  v97 = v201;
  v98 = v200 + *(v96 + 20);
  v99 = *(v98 + 16);
  v100 = *(v98 + 20);
  if (v99 <= v94)
  {
    v101 = v94;
  }

  else
  {
    v101 = v99;
  }

  if (v100)
  {
    v99 = v94;
    v101 = v94;
  }

  if (v95)
  {
    v102 = v99;
  }

  else
  {
    v102 = v101;
  }

  v103 = v95 & v100;
  v104 = v195;
  MessageIdentifierSet.union(_:)(v200 + *(v96 + 24), v201 + *(v195 + 20));
  v105 = *(v93 + *(v104 + 24));
  sub_1000E8400(v93, _s15MissingMessagesO8CompleteVMa);
  *v97 = v102;
  *(v97 + 4) = v103;
  *(v97 + *(v104 + 24)) = v105;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000E4C34(uint64_t *a1, uint64_t *a2)
{
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v4 = sub_1004A7044();
  if (v4 == sub_1004A7074())
  {
    return 0;
  }

  result = sub_1004A7074();
  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = sub_1004A7044();
  result = sub_1004A7074();
  if (v6 < v7 || v6 >= result)
  {
    goto LABEL_9;
  }

  v8 = sub_10000C9C0(a1, a2);
  MessageIdentifierSet.RangeView.subscript.getter(v8, &v9);
  return v9;
}

uint64_t sub_1000E4D18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005D01E0, &qword_1004D38A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v37 - v6;
  v8 = _s15MissingMessagesO8ProgressVMa(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s15MissingMessagesO10IncompleteVMa(0);
  v14 = *(*(v13 - 1) + 64);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s15MissingMessagesOMa(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8D38(v2, v20, _s15MissingMessagesOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1000E8400(v2, _s15MissingMessagesOMa);
      sub_1000E8398(v20, v16, _s15MissingMessagesO10IncompleteVMa);
      sub_1000E6E98(a1, v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_100025F40(v7, &qword_1005D01E0, &qword_1004D38A0);
        v22 = v13[6];
        v23 = &v16[v13[5]];
        v24 = *v23;
        v25 = v23[4];
        v26 = _s15MissingMessagesO8CompleteVMa(0);
        sub_1000E8D38(&v16[v22], v2 + *(v26 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
        v27 = v16[v13[7]];
        sub_1000E8400(v16, _s15MissingMessagesO10IncompleteVMa);
        *v2 = v24;
        *(v2 + 4) = v25;
        *(v2 + *(v26 + 24)) = v27;
      }

      else
      {
        sub_1000E8398(v7, v12, _s15MissingMessagesO8ProgressVMa);
        sub_1000E666C();
        if (v28)
        {
          v29 = &v16[v13[5]];
          v30 = *v29;
          LOBYTE(v29) = v29[4];
          v31 = &v12[*(v8 + 24)];
          *v31 = v30;
          v31[4] = v29;
        }

        sub_1000E8398(v12, v2, _s15MissingMessagesO8ProgressVMa);
        v32 = &v16[v13[5]];
        v33 = *v32;
        v34 = v32[4];
        sub_1000E8D38(&v16[v13[6]], v2 + v13[6], _s15MissingMessagesO11QueriedUIDsVMa);
        v35 = v16[v13[7]];
        sub_1000E8400(v16, _s15MissingMessagesO10IncompleteVMa);
        v36 = v2 + v13[5];
        *v36 = v33;
        *(v36 + 4) = v34;
        *(v2 + v13[7]) = v35;
      }

      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      return sub_1000E8400(v20, _s15MissingMessagesOMa);
    }
  }

  return result;
}

uint64_t sub_1000E5108()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v17 - v4;
  v6 = _s15MissingMessagesO10IncompleteVMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s15MissingMessagesOMa(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8D38(v1, v13, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1000E8398(v13, v9, _s15MissingMessagesO10IncompleteVMa);
    sub_10000E268(v9, v5, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v15 = MessageIdentifierSet.count.getter();
    sub_1000E8400(v9, _s15MissingMessagesO10IncompleteVMa);
    sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
    return v15;
  }

  else
  {
    sub_1000E8400(v13, _s15MissingMessagesOMa);
    return 0;
  }
}

unint64_t sub_1000E5314()
{
  v0 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.ranges.getter(v3);
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v4 = sub_1004A7044();
  v5 = sub_1004A7074();
  if (v4 == v5)
  {
    sub_100025F40(v3, &qword_1005CD7A0, &unk_1004CF590);
    v6 = 0;
  }

  else
  {
    MessageIdentifierSet.RangeView.subscript.getter(v0, &v9);
    sub_100025F40(v3, &qword_1005CD7A0, &unk_1004CF590);
    v6 = v9;
  }

  return v6 | ((v4 == v5) << 32);
}

unint64_t sub_1000E5454()
{
  v1 = v0;
  v2 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = _s15MissingMessagesOMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = _s15MissingMessagesO8CompleteVMa(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000E8D38(v1, v9, _s15MissingMessagesOMa);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v17 = _s15MissingMessagesOMa;
    v18 = v9;
LABEL_8:
    sub_1000E8400(v18, v17);
    v15 = 0;
    v16 = 1;
    return v15 | (v16 << 32);
  }

  sub_1000E8398(v9, v13, _s15MissingMessagesO8CompleteVMa);
  if (v13[*(v10 + 24)] != 1)
  {
    v17 = _s15MissingMessagesO8CompleteVMa;
    v18 = v13;
    goto LABEL_8;
  }

  sub_1000E8D38(&v13[*(v10 + 20)], v5, _s15MissingMessagesO11QueriedUIDsVMa);
  v14 = sub_1000E5314();
  sub_1000E8400(v13, _s15MissingMessagesO8CompleteVMa);
  sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
  v15 = 0;
  v16 = 1;
  if ((v14 & 0x100000000) == 0 && (v14 & 0xFFFFFFFE) != 0)
  {
    v16 = 0;
    v15 = (v14 - 1);
  }

  return v15 | (v16 << 32);
}

uint64_t sub_1000E5698@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22 - v6;
  v8 = _s15MissingMessagesO8ProgressVMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s15MissingMessagesO10IncompleteVMa(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s15MissingMessagesOMa(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8D38(v2, v19, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000E8398(v19, v15, _s15MissingMessagesO10IncompleteVMa);
      sub_1000E8D38(v15, v11, _s15MissingMessagesO8ProgressVMa);
      sub_1000E8400(v15, _s15MissingMessagesO10IncompleteVMa);
      sub_10000E268(v11, v7, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_1000E8400(v11, _s15MissingMessagesO8ProgressVMa);
      return sub_100025FDC(v7, a1, &unk_1005D91B0, &unk_1004CF400);
    }

    sub_1000E8400(v19, _s15MissingMessagesOMa);
  }

  sub_100016D2C();
  return sub_1004A7114();
}

uint64_t sub_1000E5918(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = sub_10000C9C0(&qword_1005D0140, &unk_1004D3840);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  v8 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v31 - v15;
  v17 = _s15MissingMessagesO10IncompleteVMa(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s15MissingMessagesOMa(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8D38(v2, v24, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000E8398(v24, v20, _s15MissingMessagesO10IncompleteVMa);
      sub_10000E268(v20, v16, &qword_1005CD1D0, &unk_1004CF2C0);
      sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v26 = MessageIdentifierSet.count.getter();
      sub_1000E8400(v20, _s15MissingMessagesO10IncompleteVMa);
      sub_100025F40(v16, &unk_1005D91B0, &unk_1004CF400);
    }

    else
    {
      sub_1000E8400(v24, _s15MissingMessagesOMa);
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

  sub_1000E62E4(v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1000E8398(v7, v12, _s15MissingMessagesO11QueriedUIDsVMa);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    if ((sub_1004A70C4() & 1) == 0 && (a2 & 0x100000000) == 0)
    {
      v32 = a2;
      v28 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v29 = MessageIdentifierSet.contains(_:)(&v32, v28);
      sub_1000E8400(v12, _s15MissingMessagesO11QueriedUIDsVMa);
      v27 = v29 ^ 1;
      return v27 & 1;
    }

    sub_1000E8400(v12, _s15MissingMessagesO11QueriedUIDsVMa);
LABEL_13:
    v27 = 0;
    return v27 & 1;
  }

  sub_100025F40(v7, &qword_1005D0140, &unk_1004D3840);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_1000E5D14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s15MissingMessagesO8CompleteVMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s15MissingMessagesO10IncompleteVMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s15MissingMessagesOMa(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8D38(v2, v15, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000E8398(v15, v11, _s15MissingMessagesO10IncompleteVMa);
      v17 = *(v8 + 24);
      v18 = &v11[*(v8 + 20)];
      v19 = *v18;
      v20 = v18[4];
      v21 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
      sub_1000E8D38(&v11[v17], a1 + *(v21 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1000E8400(v11, _s15MissingMessagesO10IncompleteVMa);
      *a1 = v19;
      *(a1 + 4) = v20;
    }

    else
    {
      sub_1000E8398(v15, v7, _s15MissingMessagesO8CompleteVMa);
      v24 = *v7;
      v25 = v7[4];
      v26 = *(v4 + 20);
      v21 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
      sub_1000E8398(&v7[v26], a1 + *(v21 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
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

uint64_t sub_1000E5FCC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v7 - v4;
  sub_100016D2C();
  sub_1004A7114();
  return sub_100025FDC(v5, a1, &unk_1005D91B0, &unk_1004CF400);
}

uint64_t sub_1000E6078()
{
  v1 = _s15MissingMessagesO8CompleteVMa(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s15MissingMessagesO10IncompleteVMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s15MissingMessagesOMa(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8398(v0, v12, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000E8398(v12, v8, _s15MissingMessagesO10IncompleteVMa);
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

      sub_1000E8398(v8, v0, _s15MissingMessagesO10IncompleteVMa);
    }

    else
    {
      sub_1000E8398(v12, v4, _s15MissingMessagesO8CompleteVMa);
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

      sub_1000E8398(v4, v0, _s15MissingMessagesO8CompleteVMa);
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

uint64_t sub_1000E62E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s15MissingMessagesO8CompleteVMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s15MissingMessagesO10IncompleteVMa(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s15MissingMessagesOMa(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8D38(v2, v15, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000E8398(v15, v11, _s15MissingMessagesO10IncompleteVMa);
      sub_1000E8D38(&v11[*(v8 + 24)], a1, _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1000E8400(v11, _s15MissingMessagesO10IncompleteVMa);
    }

    else
    {
      sub_1000E8398(v15, v7, _s15MissingMessagesO8CompleteVMa);
      sub_1000E8398(&v7[*(v4 + 20)], a1, _s15MissingMessagesO11QueriedUIDsVMa);
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

uint64_t sub_1000E6534()
{
  sub_100016D2C();

  return sub_1004A7034();
}

uint64_t sub_1000E6580()
{
  sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  sub_1004A6934();
  return 0;
}

uint64_t sub_1000E65DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_100016D2C();

  return sub_1004A7034();
}

uint64_t sub_1000E666C()
{
  v1 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  sub_1000E6870();
  sub_10000E268(v0, v4, &qword_1005CD1D0, &unk_1004CF2C0);
  MessageIdentifierSet.intersection(_:)(v11, v9);
  sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
  v12 = MessageIdentifierSet.count.getter();
  sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = v0 + *(_s15MissingMessagesO8ProgressVMa(0) + 20);
    MessageIdentifierSet.intersection(_:)(v11, v9);
    MessageIdentifierSet.count.getter();
    sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
    v14 = v12;
  }

  sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
  return v14;
}

uint64_t sub_1000E6870()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
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
      v30 = sub_100016948();
      static MessageIdentifier.... infix(_:_:)(&v34, &v33, &type metadata for UID, v30, &v35);
      v34 = v35;
      v33 = Range<>.init<A>(_:)(&v34, &type metadata for UID, v30);
      sub_100016D2C();
      return sub_1004A7124();
    }
  }

  sub_10000E268(v1, v8, &qword_1005CD1D0, &unk_1004CF2C0);
  MessageIdentifierSet.union(_:)(v1 + *(v16 + 20), v13);
  sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.suffix(_:)(3000, v9, v15);
  sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
  v19 = MessageIdentifierSet.startIndex.getter(v9);
  v21 = v20;
  if (v19 != MessageIdentifierSet.endIndex.getter(v9) || v21 != v22)
  {
    MessageIdentifierSet.subscript.getter(v21, v9, &v35);
    sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
    LODWORD(v34) = v35;
    goto LABEL_14;
  }

  sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v1, v6, &qword_1005CD1D0, &unk_1004CF2C0);
  v24 = MessageIdentifierSet.startIndex.getter(v9);
  v26 = v25;
  if (v24 != MessageIdentifierSet.endIndex.getter(v9) || v26 != v27)
  {
    MessageIdentifierSet.subscript.getter(v26, v9, &v35);
    v29 = v35;
    sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
    LODWORD(v34) = v29;
    goto LABEL_14;
  }

  result = sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
  __break(1u);
  return result;
}

uint64_t sub_1000E6BC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  v12 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v23 - v14;
  v16 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = v23 - v18;
  sub_10000E268(v2, v11, &qword_1005CD1D0, &unk_1004CF2C0);
  v23[1] = a1;
  MessageIdentifierSet.union(_:)(a1, v15);
  sub_100025F40(v11, &unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v15, &unk_1005D91B0, &unk_1004CF400);
    v20 = 1;
  }

  else
  {
    sub_100025FDC(v15, v8, &unk_1005D91B0, &unk_1004CF400);
    sub_100025FDC(v8, v19, &qword_1005CD1D0, &unk_1004CF2C0);
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
    sub_1000E8F80(v19, v2);
    v22 = *(_s15MissingMessagesO8ProgressVMa(0) + 20);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    return sub_1004A70F4();
  }

  return result;
}

uint64_t sub_1000E6E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a1;
  v46 = a2;
  v4 = sub_10000C9C0(&qword_1005CD518, &qword_1004CF2F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v43 = &v39 - v6;
  v45 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v42 = *(v45 - 8);
  v7 = *(v42 + 64);
  __chkstk_darwin(v45);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v39 - v10;
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v39 - v19;
  __chkstk_darwin(v21);
  v23 = &v39 - v22;
  sub_10000E268(v3, v13, &qword_1005CD1D0, &unk_1004CF2C0);
  MessageIdentifierSet.intersection(_:)(v44, v23);
  sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
  v44 = v3;
  sub_10000E268(v3, v13, &qword_1005CD1D0, &unk_1004CF2C0);
  MessageIdentifierSet.subtracting(_:)(v23, v20);
  sub_100025F40(v13, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v20, v17, &unk_1005D91B0, &unk_1004CF400);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_100025F40(v17, &unk_1005D91B0, &unk_1004CF400);
    v26 = 1;
    v25 = v43;
  }

  else
  {
    v24 = v41;
    sub_100025FDC(v17, v41, &unk_1005D91B0, &unk_1004CF400);
    v25 = v43;
    sub_100025FDC(v24, v43, &qword_1005CD1D0, &unk_1004CF2C0);
    v26 = 0;
  }

  v27 = v42;
  v28 = v45;
  (*(v42 + 56))(v25, v26, 1, v45);
  if ((*(v27 + 48))(v25, 1, v28) == 1)
  {
    sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v25, &qword_1005CD518, &qword_1004CF2F0);
    v29 = _s15MissingMessagesO8ProgressVMa(0);
    return (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
  }

  else
  {
    v31 = v40;
    sub_100025FDC(v25, v40, &qword_1005CD1D0, &unk_1004CF2C0);
    v32 = v46;
    sub_10000E268(v31, v46, &qword_1005CD1D0, &unk_1004CF2C0);
    v33 = _s15MissingMessagesO8ProgressVMa(0);
    v34 = v44;
    MessageIdentifierSet.union(_:)(v23, v32 + *(v33 + 20));
    sub_100025F40(v31, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_100025F40(v20, &unk_1005D91B0, &unk_1004CF400);
    sub_100025F40(v23, &unk_1005D91B0, &unk_1004CF400);
    v35 = *(v33 + 24);
    v36 = *(v34 + v35);
    v37 = *(v34 + v35 + 4);
    v38 = v32 + v35;
    *v38 = v36;
    *(v38 + 4) = v37;
    return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  }
}

uint64_t sub_1000E73F0()
{
  v1 = _s15MissingMessagesO8CompleteVMa(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v29[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _s15MissingMessagesO10IncompleteVMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = _s15MissingMessagesOMa(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000E8D38(v0, v12, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0x6E776F6E6B6E75;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1000E8398(v12, v8, _s15MissingMessagesO10IncompleteVMa);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1004A6724(65);
    v35._countAndFlagsBits = 0xD000000000000016;
    v35._object = 0x80000001004AA2D0;
    sub_1004A5994(v35);
    v36._countAndFlagsBits = sub_1000E7890();
    sub_1004A5994(v36);

    v37._object = 0x80000001004AA2F0;
    v37._countAndFlagsBits = 0xD000000000000015;
    sub_1004A5994(v37);
    v14 = &v8[*(v5 + 20)];
    if (v14[4])
    {
      v15._countAndFlagsBits = 7104878;
      v16 = 0xE300000000000000;
    }

    else
    {
      v20 = *v14;
      v31 = 0;
      v32 = 0xE000000000000000;
      v30 = v20;
      sub_1004A6934();
      v15._countAndFlagsBits = v31;
      v16 = v32;
    }

    v15._object = v16;
    sub_1004A5994(v15);

    v39._countAndFlagsBits = 0x656972657571202CLL;
    v39._object = 0xEF203A7344495564;
    sub_1004A5994(v39);
    v21 = *(v5 + 24);
    _s15MissingMessagesO11QueriedUIDsVMa(0);
    sub_1000E8340();
    v40._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v40);

    v41._countAndFlagsBits = 41;
    v41._object = 0xE100000000000000;
    sub_1004A5994(v41);
    v17 = v33;
    v22 = _s15MissingMessagesO10IncompleteVMa;
    v23 = v8;
  }

  else
  {
    sub_1000E8398(v12, v4, _s15MissingMessagesO8CompleteVMa);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1004A6724(64);
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    v38._object = 0x80000001004AA2B0;
    sub_1004A5994(v38);
    if (v4[4])
    {
      v18._countAndFlagsBits = 7104878;
      v19 = 0xE300000000000000;
    }

    else
    {
      v24 = *v4;
      v31 = 0;
      v32 = 0xE000000000000000;
      v30 = v24;
      sub_1004A6934();
      v18._countAndFlagsBits = v31;
      v19 = v32;
    }

    v18._object = v19;
    sub_1004A5994(v18);

    v42._countAndFlagsBits = 0x656972657571202CLL;
    v42._object = 0xEF203A7344495564;
    sub_1004A5994(v42);
    v25 = *(v1 + 20);
    _s15MissingMessagesO11QueriedUIDsVMa(0);
    sub_1000E8340();
    v43._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v43);

    v44._countAndFlagsBits = 0x646C756F6873202CLL;
    v44._object = 0xEF203A776F726720;
    sub_1004A5994(v44);
    if (v4[*(v1 + 24)])
    {
      v26._countAndFlagsBits = 1702195828;
    }

    else
    {
      v26._countAndFlagsBits = 0x65736C6166;
    }

    if (v4[*(v1 + 24)])
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v26._object = v27;
    sub_1004A5994(v26);

    v45._countAndFlagsBits = 41;
    v45._object = 0xE100000000000000;
    sub_1004A5994(v45);
    v17 = v33;
    v22 = _s15MissingMessagesO8CompleteVMa;
    v23 = v4;
  }

  sub_1000E8400(v23, v22);
  return v17;
}

uint64_t sub_1000E7890()
{
  v1 = v0;
  v2 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  sub_10000E268(v0, &v34 - v7, &qword_1005CD1D0, &unk_1004CF2C0);
  sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = MessageIdentifierSet.count.getter();
  sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
  v10 = _s15MissingMessagesO8ProgressVMa(0);
  v11 = *(v10 + 20);
  v12 = MessageIdentifierSet.count.getter();
  if (v9 <= 0xA && v12 <= 0xA)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1004A6724(73);
    v47._countAndFlagsBits = 0x20676E697373696DLL;
    v47._object = 0xE800000000000000;
    sub_1004A5994(v47);
    sub_10000E268(v0, v5, &qword_1005CD1D0, &unk_1004CF2C0);
    v22 = MessageIdentifierSet.count.getter();
    sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
    v36 = v22;
    v34 = v10;
    v48._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v48);

    v49._countAndFlagsBits = 0x207344495520;
    v49._object = 0xE600000000000000;
    sub_1004A5994(v49);
    sub_10000E268(v1, v5, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_1004A6934();
    sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
    v50._countAndFlagsBits = 0x203A656E6F64202CLL;
    v50._object = 0xE800000000000000;
    sub_1004A5994(v50);
    v36 = MessageIdentifierSet.count.getter();
    v51._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v51);

    v52._countAndFlagsBits = 0x207344495520;
    v52._object = 0xE600000000000000;
    sub_1004A5994(v52);
    sub_1004A6934();
    v53._object = 0x80000001004AA310;
    v53._countAndFlagsBits = 0xD000000000000023;
    sub_1004A5994(v53);
    v23 = v1 + *(v34 + 24);
    if ((*(v23 + 4) & 1) == 0)
    {
      v24 = *v23;
      v36 = 0;
LABEL_20:
      v37 = 0xE000000000000000;
      v35 = v24;
      sub_1004A6934();
      v32._countAndFlagsBits = v36;
      v33 = v37;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v12 <= 0xA)
  {
    v34 = v11;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1004A6724(82);
    v54._countAndFlagsBits = 0x20676E697373696DLL;
    v54._object = 0xE800000000000000;
    sub_1004A5994(v54);
    sub_10000E268(v0, v5, &qword_1005CD1D0, &unk_1004CF2C0);
    v25 = MessageIdentifierSet.count.getter();
    sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
    v36 = v25;
    v55._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v55);

    v56._countAndFlagsBits = 0x6E69207344495520;
    v56._object = 0xEF2065676E617220;
    sub_1004A5994(v56);
    sub_10000E268(v1, v5, &qword_1005CD1D0, &unk_1004CF2C0);
    v26 = sub_1000E8214();
    v28 = v27;
    result = sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
    if (v28)
    {
      __break(1u);
      goto LABEL_23;
    }

    v36 = v26;
    sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
    sub_1004A6934();
    v57._countAndFlagsBits = 0x203A656E6F64202CLL;
    v57._object = 0xE800000000000000;
    sub_1004A5994(v57);
    v36 = MessageIdentifierSet.count.getter();
    v58._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v58);

    v59._countAndFlagsBits = 0x207344495520;
    v59._object = 0xE600000000000000;
    sub_1004A5994(v59);
    sub_1004A6934();
    v60._object = 0x80000001004AA310;
    v60._countAndFlagsBits = 0xD000000000000023;
    sub_1004A5994(v60);
    v21 = *(v10 + 24);
LABEL_17:
    v31 = (v1 + v21);
    if ((v31[1] & 1) == 0)
    {
      v24 = *v31;
      v36 = 0;
      goto LABEL_20;
    }

LABEL_18:
    v32._countAndFlagsBits = 7104878;
    v33 = 0xE300000000000000;
LABEL_21:
    v32._object = v33;
    sub_1004A5994(v32);

    return v38;
  }

  v34 = v10;
  if (v9 <= 0xA)
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1004A6724(82);
    v61._countAndFlagsBits = 0x20676E697373696DLL;
    v61._object = 0xE800000000000000;
    sub_1004A5994(v61);
    sub_10000E268(v0, v5, &qword_1005CD1D0, &unk_1004CF2C0);
    v29 = MessageIdentifierSet.count.getter();
    sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
    v36 = v29;
    v62._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v62);

    v63._countAndFlagsBits = 0x207344495520;
    v63._object = 0xE600000000000000;
    sub_1004A5994(v63);
    sub_10000E268(v1, v5, &qword_1005CD1D0, &unk_1004CF2C0);
    sub_1004A6934();
    sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
    v64._countAndFlagsBits = 0x203A656E6F64202CLL;
    v64._object = 0xE800000000000000;
    sub_1004A5994(v64);
    v36 = MessageIdentifierSet.count.getter();
    v65._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v65);

    v66._countAndFlagsBits = 0x6E69207344495520;
    v66._object = 0xEF2065676E617220;
    sub_1004A5994(v66);
    result = sub_1000E8214();
    if (v30)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v36 = result;
    sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
    sub_1004A6934();
    v67._object = 0x80000001004AA310;
    v67._countAndFlagsBits = 0xD000000000000023;
    sub_1004A5994(v67);
    v21 = *(v34 + 24);
    goto LABEL_17;
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1004A6724(91);
  v40._countAndFlagsBits = 0x20676E697373696DLL;
  v40._object = 0xE800000000000000;
  sub_1004A5994(v40);
  sub_10000E268(v0, v5, &qword_1005CD1D0, &unk_1004CF2C0);
  v14 = MessageIdentifierSet.count.getter();
  sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
  v36 = v14;
  v41._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v41);

  v42._countAndFlagsBits = 0x6E69207344495520;
  v42._object = 0xEF2065676E617220;
  sub_1004A5994(v42);
  sub_10000E268(v1, v5, &qword_1005CD1D0, &unk_1004CF2C0);
  v15 = sub_1000E8214();
  v17 = v16;
  result = sub_100025F40(v5, &unk_1005D91B0, &unk_1004CF400);
  if (v17)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v36 = v15;
  sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
  sub_1004A6934();
  v43._countAndFlagsBits = 0x203A656E6F64202CLL;
  v43._object = 0xE800000000000000;
  sub_1004A5994(v43);
  v36 = MessageIdentifierSet.count.getter();
  v44._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v44);

  v45._countAndFlagsBits = 0x6E69207344495520;
  v45._object = 0xEF2065676E617220;
  sub_1004A5994(v45);
  result = sub_1000E8214();
  v19 = v34;
  if ((v20 & 1) == 0)
  {
    v36 = result;
    sub_1004A6934();
    v46._object = 0x80000001004AA310;
    v46._countAndFlagsBits = 0xD000000000000023;
    sub_1004A5994(v46);
    v21 = *(v19 + 24);
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000E8214()
{
  v0 = sub_10000C9C0(&qword_1005CD7A0, &unk_1004CF590);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1000E5314();
  if ((v4 & 0x100000000) != 0)
  {
    return 0;
  }

  v5 = v4;
  sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  MessageIdentifierSet.ranges.getter(v3);
  v6 = sub_1000E4C34(&qword_1005CD7A0, &unk_1004CF590) >> 32;
  v8 = v7;
  sub_100025F40(v3, &qword_1005CD7A0, &unk_1004CF590);
  if (v8)
  {
    return 0;
  }

  v11 = v6;
  v12 = v5;
  v10 = sub_100016948();
  static MessageIdentifier.... infix(_:_:)(&v12, &v11, &type metadata for UID, v10, &v13);
  return v13;
}

unint64_t sub_1000E8340()
{
  result = qword_1005D0130;
  if (!qword_1005D0130)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005D0130);
  }

  return result;
}

uint64_t sub_1000E8398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E8400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000E8460(uint64_t a1, uint64_t a2)
{
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
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

  return sub_1004A7034();
}

uint64_t sub_1000E8574(uint64_t a1, uint64_t a2)
{
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
    goto LABEL_17;
  }

  v4 = _s15MissingMessagesO8ProgressVMa(0);
  v5 = *(v4 + 20);
  if ((sub_1004A7034() & 1) == 0)
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
    if (sub_1004A7034())
    {
      LOBYTE(v10) = *(a1 + *(v12 + 28)) ^ *(a2 + *(v12 + 28)) ^ 1;
      return v10 & 1;
    }

LABEL_17:
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

BOOL sub_1000E86A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t sub_1000E86F8(uint64_t a1, uint64_t a2)
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
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  v4 = *(a1 + *(v5 + 24)) ^ *(a2 + *(v5 + 24)) ^ 1;
  return v4 & 1;
}

uint64_t sub_1000E879C(uint64_t a1, uint64_t a2)
{
  sub_100016D2C();
  if ((sub_1004A7034() & 1) == 0)
  {
    return 0;
  }

  v4 = _s15MissingMessagesO8ProgressVMa(0);
  v5 = *(v4 + 20);
  if ((sub_1004A7034() & 1) == 0)
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

uint64_t sub_1000E8854(uint64_t a1, uint64_t a2)
{
  v38 = _s15MissingMessagesO8CompleteVMa(0);
  v4 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s15MissingMessagesO10IncompleteVMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s15MissingMessagesOMa(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_10000C9C0(&qword_1005D0138, &qword_1004D3838);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v38 - v23;
  v25 = *(v22 + 56);
  sub_1000E8D38(a1, &v38 - v23, _s15MissingMessagesOMa);
  sub_1000E8D38(a2, &v24[v25], _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1000E8D38(v24, v19, _s15MissingMessagesOMa);
    if (!swift_getEnumCaseMultiPayload())
    {
      v28 = *v19 ^ v24[v25];
      sub_1000E8400(v24, _s15MissingMessagesOMa);
      v27 = v28 ^ 1;
      return v27 & 1;
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1000E8D38(v24, v14, _s15MissingMessagesOMa);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v31 = _s15MissingMessagesO8CompleteVMa;
      v32 = v14;
      goto LABEL_13;
    }

    v29 = v39;
    sub_1000E8398(&v24[v25], v39, _s15MissingMessagesO8CompleteVMa);
    v30 = *(v29 + 4);
    if (v14[4])
    {
      if (!*(v29 + 4))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (*v29 != *v14)
      {
        v30 = 1;
      }

      if (v30)
      {
        goto LABEL_21;
      }
    }

    v33 = *(v38 + 20);
    sub_100016D2C();
    if (sub_1004A7034())
    {
      v34 = *(v38 + 24);
      v35 = v14[v34];
      v36 = *(v29 + v34);
      sub_1000E8400(v29, _s15MissingMessagesO8CompleteVMa);
      if (v35 == v36)
      {
        sub_1000E8400(v14, _s15MissingMessagesO8CompleteVMa);
        sub_1000E8400(v24, _s15MissingMessagesOMa);
        v27 = 1;
        return v27 & 1;
      }

      goto LABEL_22;
    }

LABEL_21:
    sub_1000E8400(v29, _s15MissingMessagesO8CompleteVMa);
LABEL_22:
    sub_1000E8400(v14, _s15MissingMessagesO8CompleteVMa);
    sub_1000E8400(v24, _s15MissingMessagesOMa);
    goto LABEL_23;
  }

  sub_1000E8D38(v24, v17, _s15MissingMessagesOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v31 = _s15MissingMessagesO10IncompleteVMa;
    v32 = v17;
LABEL_13:
    sub_1000E8400(v32, v31);
LABEL_14:
    sub_100025F40(v24, &qword_1005D0138, &qword_1004D3838);
LABEL_23:
    v27 = 0;
    return v27 & 1;
  }

  sub_1000E8398(&v24[v25], v9, _s15MissingMessagesO10IncompleteVMa);
  v27 = sub_1000E8574(v17, v9);
  sub_1000E8400(v9, _s15MissingMessagesO10IncompleteVMa);
  sub_1000E8400(v17, _s15MissingMessagesO10IncompleteVMa);
  sub_1000E8400(v24, _s15MissingMessagesOMa);
  return v27 & 1;
}

uint64_t sub_1000E8D38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E8DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1000E8E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_1000E8EDC()
{
  sub_10002ABD0();
  if (v0 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000E8F80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005CD1D0, &unk_1004CF2C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E9004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = _s15MissingMessagesO11QueriedUIDsVMa(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000E9114(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = _s15MissingMessagesO11QueriedUIDsVMa(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000E921C()
{
  sub_1000E3BE4(319, &qword_1005CDDC0, type metadata accessor for MessageIdentifierSet);
  if (v0 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 _s15MissingMessagesO12WindowUpdateVwCP(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000E9338(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100086ED4(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = sub_100086ED4((v9 > 1), v10 + 1, 1, v7);
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

uint64_t sub_1000E93F4@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v114 = a2;
  v116 = a1;
  v108 = a3;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v107 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = &v103 - v9;
  __chkstk_darwin(v10);
  v104 = &v103 - v11;
  __chkstk_darwin(v12);
  v106 = &v103 - v13;
  __chkstk_darwin(v14);
  v115 = &v103 - v15;
  __chkstk_darwin(v16);
  v132 = &v103 - v17;
  __chkstk_darwin(v18);
  v122 = &v103 - v19;
  __chkstk_darwin(v20);
  v124 = &v103 - v21;
  __chkstk_darwin(v22);
  v127 = &v103 - v23;
  v24 = sub_10000C9C0(&qword_1005D0468, &qword_1004D3CE8);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v109 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v112 = &v103 - v28;
  __chkstk_darwin(v29);
  v117 = &v103 - v30;
  v32 = __chkstk_darwin(v31);
  v34 = &v103 - v33;
  v35 = *(v5 + 56);
  v111 = v5 + 56;
  v110 = v35;
  (v35)(&v103 - v33, 1, 1, v4, v32);
  v130 = v3;
  v36 = *v3;
  v133 = v4;
  v121 = sub_1000F7764(&qword_1005CF830);
  v134 = v121;
  KeyPath = swift_getKeyPath();

  v38 = 0;
  v39 = sub_1000F342C(v36, KeyPath);

  v40 = sub_1000CE800(v39);

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
  v113 = _swiftEmptyArrayStorage;
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
        sub_1000F9948(v51 + v131 * (v50 | (v42 << 6)), v127, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1000F9A88(v52, v48, type metadata accessor for MoveAndCopyMessages.CommandID);
        v53 = v130[2];
        v54 = v130[3];
        if (!*(v54 + 16))
        {
          break;
        }

        v55 = v130[3];
        sub_100063E04(v48);
        if ((v56 & 1) == 0)
        {
          break;
        }

LABEL_9:
        result = sub_1000F9A28(v48, type metadata accessor for MoveAndCopyMessages.CommandID);
        v47 = v125;
        v43 = v126;
        if (!v46)
        {
          goto LABEL_10;
        }
      }

      v57 = v122;
      sub_1000F9948(v48, v122, type metadata accessor for MoveAndCopyMessages.CommandID);
      v58 = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
      v59 = *(v58 + 48);
      v60 = *(v58 + 52);
      v61 = swift_allocObject();
      sub_1000F9A88(v57, v61 + *(*v61 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
      if (!*(v53 + 16))
      {
        goto LABEL_19;
      }

      v62 = sub_100063E70(v61);
      if (v63)
      {
        v64 = *(*(v53 + 56) + 8 * v62);
      }

      else
      {
LABEL_19:
        v64 = _swiftEmptySetSingleton;
      }

      __chkstk_darwin(v65);
      v66 = v121;
      *(&v103 - 2) = v4;
      *(&v103 - 1) = v66;
      v67 = swift_getKeyPath();

      v68 = sub_1000F342C(v64, v67);

      v69 = sub_1000CE800(v68);

      v70 = 1 << *(v69 + 32);
      v71 = v70 < 64 ? ~(-1 << v70) : -1;
      v72 = v71 & *(v69 + 56);
      v73 = (v70 + 63) >> 6;

      v74 = 0;
      while (v72)
      {
        v75 = v132;
LABEL_31:
        sub_1000F9948(*(v69 + 48) + (__clz(__rbit64(v72)) | (v74 << 6)) * v131, v75, type metadata accessor for MoveAndCopyMessages.CommandID);
        if (!*(v54 + 16) || (v77 = sub_100063E04(v75), v75 = v132, (v78 & 1) == 0))
        {
          sub_1000F9A28(v75, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_8:

          v34 = v119;
          v4 = v120;
          v48 = v124;
          v40 = v118;
          goto LABEL_9;
        }

        v72 &= v72 - 1;
        v79 = *(*(v54 + 56) + v77);
        result = sub_1000F9A28(v132, type metadata accessor for MoveAndCopyMessages.CommandID);
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
      sub_10000E268(v119, v117, &qword_1005D0468, &qword_1004D3CE8);
      v81 = *v128;
      v4 = v120;
      if ((*v128)(v80, 1, v120) != 1)
      {
        break;
      }

      sub_100025F40(v34, &qword_1005D0468, &qword_1004D3CE8);
      sub_100025F40(v80, &qword_1005D0468, &qword_1004D3CE8);
      v86 = v124;
      sub_1000F9948(v124, v34, type metadata accessor for MoveAndCopyMessages.CommandID);
      v110(v34, 0, 1, v4);
      sub_1000F9948(v86, v106, type metadata accessor for MoveAndCopyMessages.CommandID);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v116;
      v40 = v118;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v113 = sub_100086D8C(0, v113[2] + 1, 1, v113);
      }

      v47 = v125;
      v90 = v113[2];
      v89 = v113[3];
      if (v90 >= v89 >> 1)
      {
        v113 = sub_100086D8C(v89 > 1, v90 + 1, 1, v113);
      }

      sub_1000F9A28(v124, type metadata accessor for MoveAndCopyMessages.CommandID);
      v91 = v113;
      v113[2] = v90 + 1;
      result = sub_1000F9A88(v106, v91 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + v90 * v131, type metadata accessor for MoveAndCopyMessages.CommandID);
      v43 = v126;
      if (!v88)
      {
LABEL_53:

        v96 = v109;
        sub_10000E268(v34, v109, &qword_1005D0468, &qword_1004D3CE8);
        if ((*v128)(v96, 1, v4) == 1)
        {
          sub_100025F40(v34, &qword_1005D0468, &qword_1004D3CE8);

          sub_100025F40(v96, &qword_1005D0468, &qword_1004D3CE8);
          v97 = 1;
          v98 = v108;
        }

        else
        {
          v98 = v108;
          sub_1000F9A88(v96, v108, type metadata accessor for MoveAndCopyMessages.CommandID);
          v99 = v130;
          sub_1000EA18C(v113, v98);

          v100 = v107;
          sub_1000F9948(v98, v107, type metadata accessor for MoveAndCopyMessages.CommandID);
          v101 = v99[3];
          v102 = swift_isUniquelyReferenced_nonNull_native();
          v135 = v99[3];
          sub_10001D19C(0, v100, v102);
          sub_1000F9A28(v100, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_100025F40(v34, &qword_1005D0468, &qword_1004D3CE8);
          v97 = 0;
          v99[3] = v135;
        }

        return v110(v98, v97, 1, v4);
      }
    }

    v123 = v38;
    v82 = v34;
    v83 = v115;
    sub_1000F9A88(v80, v115, type metadata accessor for MoveAndCopyMessages.CommandID);
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
      sub_1000B5158(v84);
      sub_1000F9A28(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000F9A28(v48, type metadata accessor for MoveAndCopyMessages.CommandID);
      result = sub_100025F40(v85, &qword_1005D0468, &qword_1004D3CE8);
      goto LABEL_40;
    }

    v34 = v82;
    sub_100025F40(v82, &qword_1005D0468, &qword_1004D3CE8);
    v92 = v104;
    sub_1000F9A88(v85, v104, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9948(v92, v82, type metadata accessor for MoveAndCopyMessages.CommandID);
    v110(v82, 0, 1, v4);
    sub_1000F9948(v124, v105, type metadata accessor for MoveAndCopyMessages.CommandID);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = sub_100086D8C(0, v113[2] + 1, 1, v113);
    }

    v40 = v118;
    v38 = v123;
    v94 = v113[2];
    v93 = v113[3];
    if (v94 >= v93 >> 1)
    {
      v113 = sub_100086D8C(v93 > 1, v94 + 1, 1, v113);
    }

    sub_1000B5158(v84);
    sub_1000F9A28(v104, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9A28(v115, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000F9A28(v124, type metadata accessor for MoveAndCopyMessages.CommandID);
    v95 = v113;
    v113[2] = v94 + 1;
    result = sub_1000F9A88(v105, v95 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + v94 * v131, type metadata accessor for MoveAndCopyMessages.CommandID);
    v47 = v125;
    v43 = v126;
  }

  sub_1000F9A28(v83, type metadata accessor for MoveAndCopyMessages.CommandID);
  result = sub_1000F9A28(v48, type metadata accessor for MoveAndCopyMessages.CommandID);
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

uint64_t sub_1000EA18C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000C9C0(&qword_1005D0468, &qword_1004D3CE8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v39 - v7;
  v9 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  __chkstk_darwin(v16);
  v19 = &v39 - v18;
  v20 = _swiftEmptySetSingleton;
  v45 = _swiftEmptySetSingleton;
  v46 = _swiftEmptySetSingleton;
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
      sub_1000F9948(v25, v19, type metadata accessor for MoveAndCopyMessages.CommandID);
      v27 = sub_1000F6ED8(v19, v43);
      sub_100080ADC(v27);
      v28 = sub_1000F6ED8(v19, v42);
      sub_1000F9A28(v19, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100080ADC(v28);
      v25 += v24;
      --v26;
    }

    while (v26);
    if (v46[2])
    {
      v29 = v23;
      v30 = v21;
      do
      {
        sub_1001401F0(v29, v8);
        sub_100025F40(v8, &qword_1005D0468, &qword_1004D3CE8);
        v29 += v24;
        --v30;
      }

      while (v30);
    }

    if (v45[2])
    {
      v31 = v23;
      v32 = v21;
      do
      {
        sub_1001401F0(v31, v8);
        sub_100025F40(v8, &qword_1005D0468, &qword_1004D3CE8);
        v31 += v24;
        --v32;
      }

      while (v32);
    }

    do
    {
      sub_1000F9948(v23, v15, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000EA6DC(v15);
      sub_1000F9A28(v15, type metadata accessor for MoveAndCopyMessages.CommandID);
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
    v33 = _swiftEmptySetSingleton;
  }

  sub_1000F9948(a2, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
  v34 = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  sub_1000F9A88(v12, v37 + *(*v37 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000893BC(&v44, v37);

  sub_1000EAC50(v33, a2);

  sub_1000EA544(a2, v20);
}

uint64_t sub_1000EA544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 56);
  v12 = (v9 + 63) >> 6;

  for (i = 0; v11; result = sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_1000F9948(*(a2 + 48) + *(v5 + 72) * (v16 | (v15 << 6)), v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000EAE90(a1, v8);
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

uint64_t sub_1000EA6DC(uint64_t a1)
{
  v3 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F9948(a1, v6, type metadata accessor for MoveAndCopyMessages.CommandID);
  v7 = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v55[1] = v7;
  v10 = swift_allocObject();
  sub_1000F9A88(v6, v10 + *(*v10 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_10013FF08(v10);

  v56 = v1;
  v11 = v1 + 8;
  v12 = *(v1 + 8);
  v55[2] = v11;
  v13 = *(v12 + 16);

  if (v13 && (v14 = sub_100063E70(v10), (v15 & 1) != 0))
  {
    v16 = *(*(v12 + 56) + 8 * v14);
  }

  else
  {
    v16 = _swiftEmptySetSingleton;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    sub_1004A6594();
    sub_10000DF44(&qword_1005D0438, &qword_1005CEF30, &unk_1004D1E00);
    result = sub_1004A5DB4();
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
    v31 = sub_1004A6604();
    if (!v31 || (v58[0] = v31, swift_dynamicCast(), v30 = v59[0], v28 = v20, v29 = v21, !v59[0]))
    {
LABEL_24:
      sub_100020D08();
      sub_10013CFB0(v10);

      v34 = *(v56 + 16);
      v35 = *(v34 + 16);

      if (v35 && (v36 = sub_100063E70(v10), (v37 & 1) != 0))
      {
        v38 = *(*(v34 + 56) + 8 * v36);
      }

      else
      {
        v38 = _swiftEmptySetSingleton;
      }

      if ((v38 & 0xC000000000000001) != 0)
      {
        sub_1004A6594();
        sub_10000DF44(&qword_1005D0438, &qword_1005CEF30, &unk_1004D1E00);
        result = sub_1004A5DB4();
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
          v52 = sub_1004A6604();
          if (!v52 || (v57 = v52, swift_dynamicCast(), v51 = v58[0], v49 = v41, v50 = v42, !v58[0]))
          {
LABEL_47:
            sub_100020D08();
            sub_10013CFB0(v10);
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

        v53 = sub_10010ACA8(v58, v51);
        if (*v54)
        {
          sub_10013FF08(v10);
        }

        (v53)(v58, 0);

        v41 = v49;
        v42 = v50;
      }
    }

LABEL_22:
    v32 = sub_10010ACA8(v59, v30);
    if (*v33)
    {
      sub_10013FF08(v10);
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

uint64_t sub_1000EAC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  for (i = 0; v11; result = sub_1000F9A28(v8, type metadata accessor for MoveAndCopyMessages.CommandID))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_1000F9948(*(a1 + 48) + *(v5 + 72) * (v16 | (v15 << 6)), v8, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1000EAE90(v8, a2);
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

unint64_t sub_1000EAE00()
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
    result = sub_1000F2E78();
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

      v8 = sub_1004A6A34();
      v5 = __OFSUB__(v8, 1);
      result = v8 - 1;
      if (!v5)
      {
        return sub_100169180(result);
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_100169180(result);
      }
    }

    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v6 = *v0;
  }

  result = sub_1004A6A34();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1000EAE90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MoveAndCopyMessages.CommandID;
  sub_1000F9948(a1, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  v11 = sub_10000C9C0(&qword_1005CEF30, &unk_1004D1E00);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  sub_1000F9A88(v9, v14 + *(*v14 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1000F9948(a2, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  v15 = *(v11 + 48);
  v16 = *(v11 + 52);
  v17 = swift_allocObject();
  sub_1000F9A88(v9, v17 + *(*v17 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  v18 = sub_1000F3F74(v17, v14, *(v3 + 16));
  if (v18)
  {
    __break(1u);
    goto LABEL_18;
  }

  v19 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v3 + 16);
  v21 = v41;
  v18 = sub_100063E70(v14);
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
    sub_1000C6184(v26, isUniquelyReferenced_nonNull_native);
    v21 = v41;
    v18 = sub_100063E70(v14);
    if ((v10 & 1) != (v27 & 1))
    {
LABEL_12:
      v18 = sub_1004A6E24();
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
  sub_10001C814(v18, v14, _swiftEmptySetSingleton, v21);

  v18 = v10;
LABEL_9:
  while (1)
  {
    v28 = v21[7] + 8 * v18;

    sub_1000893BC(&v41, v17);

    v29 = *(v3 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v3 + 8);
    v21 = v41;
    v18 = sub_100063E70(v17);
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
    sub_10013BB00();
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
    sub_1000C6184(v33, isUniquelyReferenced_nonNull_native);
    v21 = v41;
    v18 = sub_100063E70(v17);
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
    sub_10013BB00();
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
    sub_10001C814(v18, v17, _swiftEmptySetSingleton, v21);

    v18 = v35;
  }

LABEL_16:
  v36 = v21[7] + 8 * v18;

  sub_1000893BC(&v41, v14);
}

uint64_t sub_1000EB1F8@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 96) = sub_100093190(&off_100599350);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = sub_1000F70B8(_swiftEmptyArrayStorage);
  *(a3 + 136) = v6;
  *(a3 + 144) = v7;
  *(a3 + 152) = v8;
  *(a3 + 160) = 0;
  *(a3 + 168) = _swiftEmptyArrayStorage;
  *(a3 + 176) = _swiftEmptyArrayStorage;
  *(a3 + 184) = _swiftEmptySetSingleton;
  v10 = a1[1];
  v19 = *a1;
  v9 = v19;
  v17 = *(a1 + 3);
  v18 = *(a1 + 8);
  *(a3 + 40) = v18;
  *(a3 + 24) = v10;
  *(a3 + 8) = v9;
  v15 = *(a1 + 3);
  v16 = *(a1 + 8);
  *(a3 + 48) = &type metadata for MoveAndCopyMessages;

  sub_1000F72C8(&v17, &v13);
  sub_1000F7324(&v19, &v13);
  sub_100026044();
  sub_1004A6674();
  *(a3 + 105) = a2 & 1;
  sub_10000C9C0(&qword_1005CD560, &unk_1004CF410);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004CEAA0;
  v13 = v17;
  v14 = v18;
  *(v11 + 32) = type metadata accessor for NotifyMessagesVanished();

  sub_1004A6674();
  sub_1000D69D0(&v19);
  result = sub_10009DA94(&v17);
  *a3 = v11;
  return result;
}

void sub_1000EB38C(__int128 *a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F9948(v2, v11, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100025FDC(v11, v7, &unk_1005D91B0, &unk_1004CF400);
      sub_1004A6EB4(0);
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1000956A0();
      sub_1004A5564();
      sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
      return;
    }

    v16 = *v11;
    v17 = *(v11 + 2);
    v18 = *(v11 + 2);
    sub_1004A6EB4(2uLL);
    sub_1004A6EB4(v17 | (v17 << 32));
    sub_1000927DC(a1, v18);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v13 = *v11;
    v14 = *(v11 + 2);
    v15 = *(v11 + 2);
    sub_1004A6EB4(3uLL);
    sub_1004A6EB4(v14 | (v14 << 32));
    sub_100092678(a1, v15);
LABEL_7:

    return;
  }

  sub_1004A6EB4(1uLL);
}

Swift::Int sub_1000EB57C()
{
  sub_1004A6E94();
  sub_1000EB38C(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1000EB5C0()
{
  sub_1004A6E94();
  sub_1000EB38C(v1);
  return sub_1004A6F14();
}

Swift::Int sub_1000EB600()
{
  result = sub_100093190(&off_100599328);
  qword_1005DDF60 = result;
  return result;
}

void sub_1000EB628(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_1000F9948(a1, &v23 - v9, type metadata accessor for MailboxTaskLogger);
  sub_1000F9948(a1, v7, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000B40DC(v2, v26);
  v11 = sub_1004A4A54();
  v12 = sub_1004A6034();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v13 = 68159491;
    *(v13 + 4) = 2;
    *(v13 + 8) = 256;
    v14 = &v7[*(v4 + 20)];
    *(v13 + 10) = *v14;
    *(v13 + 11) = 2082;
    v15 = &v10[*(v4 + 20)];
    *(v13 + 13) = sub_10015BA6C(*(v15 + 1), *(v15 + 2), &v25);
    *(v13 + 21) = 1040;
    *(v13 + 23) = 2;
    *(v13 + 27) = 512;
    v16 = *(v14 + 12);
    sub_1000F9A28(v7, type metadata accessor for MailboxTaskLogger);
    *(v13 + 29) = v16;
    *(v13 + 31) = 2160;
    *(v13 + 33) = 0x786F626C69616DLL;
    *(v13 + 41) = 2085;
    v17 = *(v15 + 4);
    v18 = *(v15 + 10);

    sub_1000F9A28(v10, type metadata accessor for MailboxTaskLogger);
    v23 = v17;
    v24 = v18;
    v19 = sub_1004A5824();
    v21 = sub_10015BA6C(v19, v20, &v25);

    *(v13 + 43) = v21;
    *(v13 + 51) = 1024;
    v22 = (v26[105] & 1) == 0;
    sub_1000B4138(v26);
    *(v13 + 53) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Server supports move: %{BOOL}d", v13, 0x39u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1000B4138(v26);
    sub_1000F9A28(v7, type metadata accessor for MailboxTaskLogger);

    sub_1000F9A28(v10, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_1000EB940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v59 = a4;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v56 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  v14 = sub_10000C9C0(&qword_1005D0468, &qword_1004D3CE8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v57 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  v23 = sub_10000C9C0(&qword_1005D0470, &qword_1004D3CF0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v54 - v28;
  if (sub_10009AD04(0, a1, a2, a3))
  {
    v54 = v4;
    sub_1000E93F4(sub_1000EBF68, 0, v22);
    sub_10000E268(v22, v19, &qword_1005D0468, &qword_1004D3CE8);
    v30 = *(v58 + 48);
    v31 = 1;
    v55 = v8;
    v32 = v30(v19, 1, v8);
    v33 = v29;
    if (v32 != 1)
    {
      sub_1000F9A88(v19, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1000EC73C(v13, v29);
      sub_1000F9A28(v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      v31 = 0;
    }

    sub_100025F40(v22, &qword_1005D0468, &qword_1004D3CE8);
    v34 = sub_10000C9C0(&qword_1005D0478, &qword_1004D3CF8);
    (*(*(v34 - 8) + 56))(v29, v31, 1, v34);
    sub_10000E268(v29, v26, &qword_1005D0470, &qword_1004D3CF0);
    v35 = sub_10000C9C0(&qword_1005D0478, &qword_1004D3CF8);
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v26, 1, v35) == 1)
    {
      sub_100025F40(v26, &qword_1005D0470, &qword_1004D3CF0);
      (*(v58 + 56))(v57, 1, 1, v55);
      v37 = v59;
      return sub_100025FDC(v33, v37, &qword_1005D0470, &qword_1004D3CF0);
    }

    v43 = *(v35 + 48);
    v44 = v57;
    sub_1000F9A88(v26, v57, type metadata accessor for MoveAndCopyMessages.CommandID);
    v45 = v55;
    (*(v58 + 56))(v44, 0, 1, v55);
    sub_1000F9A28(&v26[v43], type metadata accessor for ClientCommand);
    v46 = v30(v44, 1, v45);
    v37 = v59;
    if (v46 == 1)
    {
      return sub_100025FDC(v33, v37, &qword_1005D0470, &qword_1004D3CF0);
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
      sub_1000F9A28(v44, type metadata accessor for MoveAndCopyMessages.CommandID);
      v37 = v47;
      return sub_100025FDC(v33, v37, &qword_1005D0470, &qword_1004D3CF0);
    }

    v37 = v47;
    if (*(v54 + 160))
    {
      return sub_100025FDC(v33, v37, &qword_1005D0470, &qword_1004D3CF0);
    }

    v49 = v33;
    v50 = v56;
    swift_storeEnumTagMultiPayload();
    v51 = v54;
    v52 = *(v54 + 152);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v51 + 152);
    sub_10001D19C(1, v50, isUniquelyReferenced_nonNull_native);
    sub_1000F9A28(v50, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_100025F40(v49, &qword_1005D0470, &qword_1004D3CF0);
    *(v51 + 152) = v60;
    return (*(v36 + 56))(v47, 1, 1, v35);
  }

  else
  {
    v38 = sub_10000C9C0(&qword_1005D0478, &qword_1004D3CF8);
    v39 = *(*(v38 - 8) + 56);
    v40 = v38;
    v41 = v59;

    return v39(v41, 1, 1, v40);
  }
}

uint64_t sub_1000EBF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v73 = a3;
  v70 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v68 - v8;
  v9 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v72 = *(v9 - 8);
  v10 = *(v72 + 64);
  __chkstk_darwin(v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  __chkstk_darwin(v16);
  v18 = &v68 - v17;
  __chkstk_darwin(v19);
  v21 = &v68 - v20;
  __chkstk_darwin(v22);
  v24 = &v68 - v23;
  v25 = sub_10000C9C0(&qword_1005D02A8, &unk_1004D3A30);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = *(v27 + 56);
  v29 = a1;
  v31 = &v68 - v30;
  sub_1000F9948(v29, &v68 - v30, type metadata accessor for MoveAndCopyMessages.CommandID);
  v71 = v28;
  v32 = v9;
  sub_1000F9948(a2, &v31[v28], type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1000F9948(v31, v18, type metadata accessor for MoveAndCopyMessages.CommandID);
      v34 = v71;
      if (!swift_getEnumCaseMultiPayload())
      {
        v64 = v68;
        sub_100025FDC(v18, v68, &unk_1005D91B0, &unk_1004CF400);
        v65 = v69;
        sub_100025FDC(&v31[v34], v69, &unk_1005D91B0, &unk_1004CF400);
        v66 = v73;
        MessageIdentifierSet.union(_:)(v65, v73);
        sub_100025F40(v65, &unk_1005D91B0, &unk_1004CF400);
        sub_100025F40(v64, &unk_1005D91B0, &unk_1004CF400);
        swift_storeEnumTagMultiPayload();
        (*(v72 + 56))(v66, 0, 1, v9);
        return sub_1000F9A28(v31, type metadata accessor for MoveAndCopyMessages.CommandID);
      }

      sub_100025F40(v18, &unk_1005D91B0, &unk_1004CF400);
      goto LABEL_21;
    }

    sub_1000F9948(v31, v24, type metadata accessor for MoveAndCopyMessages.CommandID);
    v50 = *v24;
    v51 = *(v24 + 2);
    v52 = *(v24 + 2);
    v53 = v71;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000F9948(&v31[v53], v21, type metadata accessor for MoveAndCopyMessages.CommandID);
      v54 = *v21;
      v55 = *(v21 + 2);
      if (v51 | (v51 << 32)) == (*(v21 + 2) | (*(v21 + 2) << 32)) && (sub_1000FFC98(v50, *v21))
      {
        v56 = v32;

        v58 = sub_1000CF018(v57);

        v60 = sub_100014D98(v59, v58);

        if (v60)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v52;
          sub_1000F9AF0(v55, sub_1000F2EF4, 0, isUniquelyReferenced_nonNull_native, &v74);

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
    return sub_100025F40(v31, &qword_1005D02A8, &unk_1004D3A30);
  }

  sub_1000F9948(v31, v15, type metadata accessor for MoveAndCopyMessages.CommandID);
  v35 = *v15;
  v36 = *(v15 + 2);
  v37 = *(v15 + 2);
  v38 = v71;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_1000F9948(&v31[v38], v12, type metadata accessor for MoveAndCopyMessages.CommandID);
  v39 = *v12;
  v40 = *(v12 + 2);
  v41 = *(v12 + 2);
  if ((v36 | (v36 << 32)) != (v40 | (v40 << 32)) || (sub_1000FFC98(v35, v39) & 1) == 0)
  {

    goto LABEL_20;
  }

  v42 = v32;

  v44 = sub_1000CF018(v43);

  v46 = sub_100014D98(v45, v44);

  if ((v46 & 1) == 0)
  {
    (*(v72 + 56))(v73, 1, 1, v42);

    goto LABEL_24;
  }

  v47 = swift_isUniquelyReferenced_nonNull_native();
  v74 = v37;
  sub_1000F9D98(v41, sub_1000F2EDC, 0, v47, &v74);

  swift_bridgeObjectRelease_n();
  v48 = v74;

  v49 = v73;
  *v73 = v35;
  *(v49 + 2) = v36;
  v49[2] = v48;
  swift_storeEnumTagMultiPayload();
  (*(v72 + 56))(v49, 0, 1, v42);
LABEL_25:
  sub_1000F9A28(&v31[v71], type metadata accessor for MoveAndCopyMessages.CommandID);
  return sub_1000F9A28(v31, type metadata accessor for MoveAndCopyMessages.CommandID);
}

uint64_t sub_1000EC73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ClientCommand(0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F9948(a1, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *v12;
      v36 = v2;
      v24 = *(v12 + 2);
      v25 = *(v12 + 2);

      sub_1000B492C(v26);
      v27 = &v16[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48)];
      sub_100025FDC(v8, v16, &unk_1005D91B0, &unk_1004CF400);

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

      sub_1000B492C(v31);
      v32 = &v16[*(sub_10000C9C0(&qword_1005D0480, &qword_1004D3D00) + 48)];
      sub_100025FDC(v8, v16, &unk_1005D91B0, &unk_1004CF400);

      *v32 = v28;
      *(v32 + 2) = v29;
    }

    else
    {
      sub_100025FDC(v12, v8, &unk_1005D91B0, &unk_1004CF400);
      v18 = &v16[*(sub_10000C9C0(&qword_1005D0488, &qword_1004DA4C0) + 48)];
      sub_10000E268(v8, v16, &unk_1005D91B0, &unk_1004CF400);
      sub_10000C9C0(&qword_1005CEE68, &unk_1004D1B40);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1004CEAA0;
      v20 = Flag.deleted.unsafeMutableAddressor();
      v22 = *v20;
      v21 = *(v20 + 1);
      *(v19 + 32) = v22;
      *(v19 + 40) = v21;

      sub_100025F40(v8, &unk_1005D91B0, &unk_1004CF400);
      *v18 = 256;
      *(v18 + 1) = v19;
    }
  }

  swift_storeEnumTagMultiPayload();
  v33 = *(sub_10000C9C0(&qword_1005D0478, &qword_1004D3CF8) + 48);
  sub_1000F9948(a1, a2, type metadata accessor for MoveAndCopyMessages.CommandID);
  return sub_1000F9A88(v16, a2 + v33, type metadata accessor for ClientCommand);
}

uint64_t sub_1000ECABC(uint64_t a1, unint64_t a2, uint64_t a3, NSObject *a4, int a5, uint64_t a6, uint64_t a7)
{
  v392 = a7;
  LODWORD(v385) = a5;
  v388 = a4;
  v371 = a3;
  v389 = a2;
  v384 = type metadata accessor for MailboxTaskLogger(0);
  v9 = *(*(v384 - 8) + 64);
  __chkstk_darwin(v384);
  v386 = &v355[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v369 = &v355[-v12];
  __chkstk_darwin(v13);
  v361 = &v355[-v14];
  __chkstk_darwin(v15);
  v366 = &v355[-v16];
  __chkstk_darwin(v17);
  v376 = &v355[-v18];
  __chkstk_darwin(v19);
  v375 = &v355[-v20];
  __chkstk_darwin(v21);
  v23 = &v355[-v22];
  __chkstk_darwin(v24);
  v26 = &v355[-v25];
  v382 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v27 = *(*(v382 - 8) + 64);
  __chkstk_darwin(v382);
  v381 = &v355[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v372 = &v355[-v30];
  __chkstk_darwin(v31);
  v364 = &v355[-v32];
  __chkstk_darwin(v33);
  v365 = &v355[-v34];
  __chkstk_darwin(v35);
  v395 = &v355[-v36];
  __chkstk_darwin(v37);
  v379 = &v355[-v38];
  __chkstk_darwin(v39);
  v41 = &v355[-v40];
  __chkstk_darwin(v42);
  v44 = &v355[-v43];
  v45 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v373 = *(v45 - 8);
  v46 = *(v373 + 64);
  __chkstk_darwin(v45);
  v390 = &v355[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v48);
  v378 = &v355[-v49];
  __chkstk_darwin(v50);
  v377 = &v355[-v51];
  __chkstk_darwin(v52);
  v370 = &v355[-v53];
  __chkstk_darwin(v54);
  v380 = &v355[-v55];
  __chkstk_darwin(v56);
  v383 = &v355[-v57];
  __chkstk_darwin(v58);
  v362 = &v355[-v59];
  __chkstk_darwin(v60);
  v363 = &v355[-v61];
  __chkstk_darwin(v62);
  v374 = &v355[-v63];
  __chkstk_darwin(v64);
  v368 = &v355[-v65];
  __chkstk_darwin(v66);
  v359 = &v355[-v67];
  __chkstk_darwin(v68);
  v360 = &v355[-v69];
  __chkstk_darwin(v70);
  v367 = &v355[-v71];
  __chkstk_darwin(v72);
  v74 = &v355[-v73];
  v75 = *(v7 + 152);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v397 = *(v7 + 152);
  sub_10001D19C(1, a1, isUniquelyReferenced_nonNull_native);
  v387 = v7;
  *(v7 + 152) = v397;
  v391 = a1;
  sub_1000F9948(a1, v74, type metadata accessor for MoveAndCopyMessages.CommandID);
  v394 = v45;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100025FDC(v74, v44, &unk_1005D91B0, &unk_1004CF400);
      sub_1000F9948(v392, v26, type metadata accessor for MailboxTaskLogger);
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_10000E268(v44, v41, &unk_1005D91B0, &unk_1004CF400);
      v78 = sub_1004A4A54();
      v79 = sub_1004A6034();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v379 = swift_slowAlloc();
        v399 = v379;
        *v80 = 68159491;
        *(v80 + 4) = 2;
        *(v80 + 8) = 256;
        v81 = &v26[*(v384 + 20)];
        *(v80 + 10) = *v81;
        *(v80 + 11) = 2082;
        v83 = *(v81 + 1);
        v82 = *(v81 + 2);

        v84 = sub_10015BA6C(v83, v82, &v399);

        *(v80 + 13) = v84;
        *(v80 + 21) = 1040;
        *(v80 + 23) = 2;
        *(v80 + 27) = 512;
        *(v80 + 29) = *(v81 + 12);
        *(v80 + 31) = 2160;
        *(v80 + 33) = 0x786F626C69616DLL;
        *(v80 + 41) = 2085;
        v85 = *(v81 + 10);
        v397 = *(v81 + 4);
        v398 = v85;

        v86 = sub_1004A5824();
        v88 = sub_10015BA6C(v86, v87, &v399);

        *(v80 + 43) = v88;
        sub_1000F9A28(v26, type metadata accessor for MailboxTaskLogger);
        *(v80 + 51) = 2082;
        v89 = MessageIdentifierSet.debugDescription.getter(v382);
        v91 = sub_10015BA6C(v89, v90, &v399);

        *(v80 + 53) = v91;
        sub_100025F40(v41, &unk_1005D91B0, &unk_1004CF400);
        _os_log_impl(&_mh_execute_header, v78, v79, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did mark source messages %{public}s as deleted.", v80, 0x3Du);
        swift_arrayDestroy();
      }

      else
      {
        sub_1000F9A28(v26, type metadata accessor for MailboxTaskLogger);
        sub_100025F40(v41, &unk_1005D91B0, &unk_1004CF400);
      }

      sub_100025F40(v44, &unk_1005D91B0, &unk_1004CF400);
      goto LABEL_19;
    }

    v122 = *v74;
    v123 = *(v74 + 2);
    v124 = *(v74 + 2);
    v125 = v375;
    sub_1000F9948(v392, v375, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v126 = sub_1004A4A54();
    v127 = sub_1004A6034();
    v128 = os_log_type_enabled(v126, v127);
    v99 = v395;
    if (v128)
    {
      v129 = swift_slowAlloc();
      v356 = v123;
      v130 = v129;
      v376 = swift_slowAlloc();
      v399 = v376;
      *v130 = 68160003;
      *(v130 + 4) = 2;
      *(v130 + 8) = 256;
      v131 = *(v384 + 20);
      v358 = v127;
      v132 = &v125[v131];
      *(v130 + 10) = v125[v131];
      *(v130 + 11) = 2082;
      v357 = v126;
      v134 = *&v125[v131 + 8];
      v133 = *&v125[v131 + 16];

      v135 = sub_10015BA6C(v134, v133, &v399);

      *(v130 + 13) = v135;
      *(v130 + 21) = 1040;
      *(v130 + 23) = 2;
      *(v130 + 27) = 512;
      *(v130 + 29) = *(v132 + 12);
      *(v130 + 31) = 2160;
      *(v130 + 33) = 0x786F626C69616DLL;
      *(v130 + 41) = 2085;
      v136 = *(v132 + 10);
      v397 = *(v132 + 4);
      v398 = v136;

      v137 = sub_1004A5824();
      v139 = sub_10015BA6C(v137, v138, &v399);

      *(v130 + 43) = v139;
      sub_1000F9A28(v125, type metadata accessor for MailboxTaskLogger);
      *(v130 + 51) = 2160;
      *(v130 + 53) = 0x786F626C69616DLL;
      *(v130 + 61) = 2085;
      v397 = v122;
      v398 = v356;

      v140 = sub_1004A5824();
      v142 = sub_10015BA6C(v140, v141, &v399);

      *(v130 + 63) = v142;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      *(v130 + 71) = 2082;

      v144 = v379;
      sub_1000B492C(v143);
      v145 = MessageIdentifierSet.debugDescription.getter(v382);
      v147 = v146;
      sub_100025F40(v144, &unk_1005D91B0, &unk_1004CF400);
      v148 = sub_10015BA6C(v145, v147, &v399);

      *(v130 + 73) = v148;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v120 = v357;
      _os_log_impl(&_mh_execute_header, v357, v358, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] [%{sensitive,mask.mailbox}s] Did copy messages %{public}s.", v130, 0x51u);
      v121 = &v401;
      goto LABEL_10;
    }

    sub_1000F9A28(v125, type metadata accessor for MailboxTaskLogger);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v92 = *v74;
    v93 = *(v74 + 2);
    v94 = *(v74 + 2);
    v95 = v376;
    sub_1000F9948(v392, v376, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v96 = sub_1004A4A54();
    v97 = sub_1004A6034();
    v98 = os_log_type_enabled(v96, v97);
    v99 = v395;
    if (v98)
    {
      v100 = swift_slowAlloc();
      v356 = v93;
      v101 = v100;
      v375 = swift_slowAlloc();
      v399 = v375;
      *v101 = 68160003;
      *(v101 + 4) = 2;
      *(v101 + 8) = 256;
      v102 = *(v384 + 20);
      v358 = v97;
      v103 = &v95[v102];
      *(v101 + 10) = v95[v102];
      *(v101 + 11) = 2082;
      v357 = v96;
      v105 = *&v95[v102 + 8];
      v104 = *&v95[v102 + 16];

      v106 = sub_10015BA6C(v105, v104, &v399);

      *(v101 + 13) = v106;
      *(v101 + 21) = 1040;
      *(v101 + 23) = 2;
      *(v101 + 27) = 512;
      *(v101 + 29) = *(v103 + 12);
      *(v101 + 31) = 2160;
      *(v101 + 33) = 0x786F626C69616DLL;
      *(v101 + 41) = 2085;
      v107 = *(v103 + 10);
      v397 = *(v103 + 4);
      v398 = v107;

      v108 = sub_1004A5824();
      v110 = sub_10015BA6C(v108, v109, &v399);

      *(v101 + 43) = v110;
      sub_1000F9A28(v95, type metadata accessor for MailboxTaskLogger);
      *(v101 + 51) = 2160;
      *(v101 + 53) = 0x786F626C69616DLL;
      *(v101 + 61) = 2085;
      v397 = v92;
      v398 = v356;

      v111 = sub_1004A5824();
      v113 = sub_10015BA6C(v111, v112, &v399);

      *(v101 + 63) = v113;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      *(v101 + 71) = 2082;

      v115 = v379;
      sub_1000B492C(v114);
      v116 = MessageIdentifierSet.debugDescription.getter(v382);
      v118 = v117;
      sub_100025F40(v115, &unk_1005D91B0, &unk_1004CF400);
      v119 = sub_10015BA6C(v116, v118, &v399);

      *(v101 + 73) = v119;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v120 = v357;
      _os_log_impl(&_mh_execute_header, v357, v358, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] [%{sensitive,mask.mailbox}s] Did move messages %{public}s.", v101, 0x51u);
      v121 = &v400;
LABEL_10:
      v149 = *(v121 - 32);
      swift_arrayDestroy();

      goto LABEL_20;
    }

    sub_1000F9A28(v95, type metadata accessor for MailboxTaskLogger);
LABEL_17:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_20;
  }

  sub_1000F9948(v392, v23, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v150 = sub_1004A4A54();
  v151 = sub_1004A6034();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    v399 = swift_slowAlloc();
    *v152 = 68159235;
    *(v152 + 4) = 2;
    *(v152 + 8) = 256;
    v153 = &v23[*(v384 + 20)];
    *(v152 + 10) = *v153;
    *(v152 + 11) = 2082;
    v154 = *(v153 + 1);
    v155 = *(v153 + 2);

    v156 = sub_10015BA6C(v154, v155, &v399);

    *(v152 + 13) = v156;
    *(v152 + 21) = 1040;
    *(v152 + 23) = 2;
    *(v152 + 27) = 512;
    *(v152 + 29) = *(v153 + 12);
    *(v152 + 31) = 2160;
    *(v152 + 33) = 0x786F626C69616DLL;
    *(v152 + 41) = 2085;
    v157 = *(v153 + 10);
    v397 = *(v153 + 4);
    v398 = v157;

    v158 = sub_1004A5824();
    v160 = sub_10015BA6C(v158, v159, &v399);

    *(v152 + 43) = v160;
    sub_1000F9A28(v23, type metadata accessor for MailboxTaskLogger);
    _os_log_impl(&_mh_execute_header, v150, v151, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did expunge deleted messages.", v152, 0x33u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000F9A28(v23, type metadata accessor for MailboxTaskLogger);
  }

LABEL_19:
  v99 = v395;
LABEL_20:
  v161 = v391;
  v162 = v389;
  result = sub_1000EF648();
  v166 = v386;
  v167 = v385;
  if (!result)
  {
    return result;
  }

  v168 = result;
  v169 = v164;
  v170 = v165;

  sub_1000B492C(v171);
  v379 = v168;
  v376 = v169;
  if (!v167)
  {
    if ((~v162 & 0xF000000000000007) != 0 && ((v162 >> 59) & 0x1E | (v162 >> 2) & 1) == 8)
    {
      LODWORD(v390) = *((v162 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v194 = *((v162 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v195 = *((v162 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      sub_1000F9948(v392, v366, type metadata accessor for MailboxTaskLogger);

      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      sub_1000F9948(v161, v367, type metadata accessor for MoveAndCopyMessages.CommandID);
      v196 = v365;
      sub_10000E268(v99, v365, &unk_1005D91B0, &unk_1004CF400);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      variable initialization expression of Engine.isProcessingUpdates();
      variable initialization expression of Engine.isProcessingUpdates();
      v197 = sub_1004A4A54();
      v198 = sub_1004A6004();
      v199 = os_log_type_enabled(v197, v198);
      v391 = v195;
      if (!v199)
      {

        sub_1000F9A28(v366, type metadata accessor for MailboxTaskLogger);
        sub_1000F9A28(v367, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_100025F40(v196, &unk_1005D91B0, &unk_1004CF400);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v322 = v390;
LABEL_125:
        v353 = v393;
        v354 = sub_1000F8EAC(v322, v194, v195, v170);
        if (v353)
        {
          goto LABEL_126;
        }

        v287 = v354;
        v393 = 0;

LABEL_107:

LABEL_108:
        sub_1000E9338(v168, v169, v287);
        return sub_100025F40(v99, &unk_1005D91B0, &unk_1004CF400);
      }

      LODWORD(v386) = v198;
      v388 = v197;
      v389 = v194;
      v200 = swift_slowAlloc();
      v385 = swift_slowAlloc();
      v399 = v385;
      *v200 = 68160259;
      *(v200 + 4) = 2;
      *(v200 + 8) = 256;
      v201 = v366;
      v202 = &v366[*(v384 + 20)];
      *(v200 + 10) = *v202;
      *(v200 + 11) = 2082;
      v204 = *(v202 + 1);
      v203 = *(v202 + 2);

      v205 = sub_10015BA6C(v204, v203, &v399);

      *(v200 + 13) = v205;
      *(v200 + 21) = 1040;
      *(v200 + 23) = 2;
      *(v200 + 27) = 512;
      *(v200 + 29) = *(v202 + 12);
      *(v200 + 31) = 2160;
      *(v200 + 33) = 0x786F626C69616DLL;
      *(v200 + 41) = 2085;
      v206 = *(v202 + 10);
      v397 = *(v202 + 4);
      v398 = v206;

      v207 = sub_1004A5824();
      v209 = sub_10015BA6C(v207, v208, &v399);

      *(v200 + 43) = v209;
      sub_1000F9A28(v201, type metadata accessor for MailboxTaskLogger);
      *(v200 + 51) = 2082;
      v210 = v360;
      sub_1000F9948(v367, v360, type metadata accessor for MoveAndCopyMessages.CommandID);
      v211 = v359;
      sub_1000F9948(v210, v359, type metadata accessor for MoveAndCopyMessages.CommandID);
      v212 = swift_getEnumCaseMultiPayload();
      if (v212 > 1)
      {
        v213 = v365;
        if (v212 != 2)
        {
          v215 = 0x45474E55505845;
          v214 = 0xE700000000000000;
          goto LABEL_117;
        }

        v214 = 0xE400000000000000;
        v215 = 1163284301;
      }

      else
      {
        v213 = v365;
        if (!v212)
        {
          v214 = 0xE600000000000000;
          v215 = 0x4554454C4544;
          v216 = v210;
          v210 = v211;
LABEL_115:
          sub_1000F9A28(v216, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_117:
          sub_1000F9A28(v210, type metadata accessor for MoveAndCopyMessages.CommandID);
          v334 = sub_10015BA6C(v215, v214, &v399);

          *(v200 + 53) = v334;
          sub_1000F9A28(v367, type metadata accessor for MoveAndCopyMessages.CommandID);
          *(v200 + 61) = 2082;
          v335 = MessageIdentifierSet.debugDescription.getter(v382);
          v337 = sub_10015BA6C(v335, v336, &v399);

          *(v200 + 63) = v337;
          sub_100025F40(v213, &unk_1005D91B0, &unk_1004CF400);
          v394 = v200;
          *(v200 + 71) = 2082;
          v338 = *(v391 + 16);
          v339 = _swiftEmptyArrayStorage;
          if (v338)
          {
            v392 = v170;
            v397 = _swiftEmptyArrayStorage;

            sub_100134BC4(0, v338, 0);
            v340 = v391;
            v341 = 32;
            v339 = v397;
            do
            {
              v396 = *(v340 + v341);
              sub_10000C9C0(&qword_1005CD198, &qword_1004CEC20);
              v342 = sub_1004A5804();
              v344 = v343;
              v397 = v339;
              v346 = v339[2];
              v345 = v339[3];
              if (v346 >= v345 >> 1)
              {
                sub_100134BC4((v345 > 1), v346 + 1, 1);
                v340 = v391;
                v339 = v397;
              }

              v339[2] = v346 + 1;
              v347 = &v339[2 * v346];
              v347[4] = v342;
              v347[5] = v344;
              v341 += 8;
              --v338;
            }

            while (v338);

            v99 = v395;
            v170 = v392;
            v195 = v340;
          }

          else
          {
            v195 = v391;
          }

          v397 = v339;
          sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
          sub_10000DF44(&qword_1005CDA18, &unk_1005DA9A0, &unk_1004CF770);
          v348 = sub_1004A5614();
          v350 = v349;

          v351 = sub_10015BA6C(v348, v350, &v399);

          v169 = v394;
          *(v394 + 73) = v351;
          swift_bridgeObjectRelease_n();
          v194 = v389;
          swift_bridgeObjectRelease_n();
          *(v169 + 81) = 1024;

          v322 = v390;
          *(v169 + 83) = v390;

          v352 = v388;
          _os_log_impl(&_mh_execute_header, v388, v386, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server completed %{public}s of messages %{public}s with destination UIDs %{public}s and UIDValidity 0x%x", v169, 0x57u);
          swift_arrayDestroy();

          v168 = v379;
          LODWORD(v169) = v376;
          goto LABEL_125;
        }

        v215 = 1498435395;
        v214 = 0xE400000000000000;
      }

      v216 = v211;
      goto LABEL_115;
    }

    v218 = v368;
    sub_1000F9948(v161, v368, type metadata accessor for MoveAndCopyMessages.CommandID);
    v219 = swift_getEnumCaseMultiPayload();
    v220 = sub_1000F9A28(v218, type metadata accessor for MoveAndCopyMessages.CommandID);
    if (v219 == 2)
    {
      v221 = *(v387 + 168);
      __chkstk_darwin(v220);
      *&v355[-16] = v99;
      v222 = v393;
      v224 = sub_100154CCC(sub_1000FA230, &v355[-32], v223);
      v393 = v222;
      v225 = v369;
      v226 = v374;
      if ((v227 & 1) == 0)
      {
        v394 = v224;
        v228 = v361;
        sub_1000F9948(v392, v361, type metadata accessor for MailboxTaskLogger);
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        variable initialization expression of Engine.isProcessingUpdates();
        v229 = v364;
        sub_10000E268(v99, v364, &unk_1005D91B0, &unk_1004CF400);
        v230 = sub_1004A4A54();
        v231 = sub_1004A6004();
        if (os_log_type_enabled(v230, v231))
        {
          v232 = swift_slowAlloc();
          v391 = swift_slowAlloc();
          v392 = v170;
          v399 = v391;
          *v232 = 68159491;
          *(v232 + 4) = 2;
          *(v232 + 8) = 256;
          v233 = &v228[*(v384 + 20)];
          *(v232 + 10) = *v233;
          *(v232 + 11) = 2082;
          v235 = *(v233 + 1);
          v234 = *(v233 + 2);

          v236 = v228;
          v237 = sub_10015BA6C(v235, v234, &v399);

          *(v232 + 13) = v237;
          *(v232 + 21) = 1040;
          *(v232 + 23) = 2;
          *(v232 + 27) = 512;
          *(v232 + 29) = *(v233 + 12);
          *(v232 + 31) = 2160;
          *(v232 + 33) = 0x786F626C69616DLL;
          *(v232 + 41) = 2085;
          v238 = *(v233 + 4);
          v239 = *(v233 + 10);
          v99 = v395;
          v397 = v238;
          v398 = v239;

          v240 = sub_1004A5824();
          v242 = sub_10015BA6C(v240, v241, &v399);

          *(v232 + 43) = v242;
          sub_1000F9A28(v236, type metadata accessor for MailboxTaskLogger);
          *(v232 + 51) = 2082;
          v243 = v364;
          v244 = MessageIdentifierSet.debugDescription.getter(v382);
          v246 = sub_10015BA6C(v244, v245, &v399);

          *(v232 + 53) = v246;
          sub_100025F40(v243, &unk_1005D91B0, &unk_1004CF400);
          _os_log_impl(&_mh_execute_header, v230, v231, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server completed move of messages %{public}s with destination UIDs", v232, 0x3Du);
          swift_arrayDestroy();
          v170 = v392;
        }

        else
        {

          sub_1000F9A28(v228, type metadata accessor for MailboxTaskLogger);
          sub_100025F40(v229, &unk_1005D91B0, &unk_1004CF400);
        }

        v323 = sub_100169210(v394);
        v325 = v324;
        v326 = v393;
        v328 = sub_1000F8EAC(v323, v327, v324, v170);
        LODWORD(v169) = v376;
        if (!v326)
        {
          v287 = v328;
          v393 = 0;

          v168 = v379;
          goto LABEL_108;
        }

        v391 = v325;
LABEL_126:

        return sub_100025F40(v99, &unk_1005D91B0, &unk_1004CF400);
      }
    }

    else
    {
      v225 = v369;
      v226 = v374;
    }

    sub_1000F9948(v392, v225, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    sub_1000F9948(v161, v226, type metadata accessor for MoveAndCopyMessages.CommandID);
    v247 = v372;
    sub_10000E268(v99, v372, &unk_1005D91B0, &unk_1004CF400);
    v248 = sub_1004A4A54();
    v249 = sub_1004A6004();
    if (!os_log_type_enabled(v248, v249))
    {

      sub_1000F9A28(v225, type metadata accessor for MailboxTaskLogger);
      sub_1000F9A28(v226, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_100025F40(v247, &unk_1005D91B0, &unk_1004CF400);
LABEL_106:
      v287 = sub_1000F918C(1, 1, v170);
      v168 = v379;

      LODWORD(v169) = v376;
      sub_100088220(&v397, v168, v376);

      goto LABEL_107;
    }

    v392 = v170;
    v250 = swift_slowAlloc();
    v391 = swift_slowAlloc();
    v399 = v391;
    *v250 = 68159747;
    *(v250 + 4) = 2;
    *(v250 + 8) = 256;
    v251 = v225 + *(v384 + 20);
    *(v250 + 10) = *v251;
    *(v250 + 11) = 2082;
    v253 = *(v251 + 8);
    v252 = *(v251 + 16);

    v254 = v225;
    v255 = sub_10015BA6C(v253, v252, &v399);

    *(v250 + 13) = v255;
    *(v250 + 21) = 1040;
    *(v250 + 23) = 2;
    v256 = v374;
    *(v250 + 27) = 512;
    *(v250 + 29) = *(v251 + 24);
    *(v250 + 31) = 2160;
    *(v250 + 33) = 0x786F626C69616DLL;
    *(v250 + 41) = 2085;
    v257 = *(v251 + 40);
    v397 = *(v251 + 32);
    v398 = v257;

    v258 = sub_1004A5824();
    v260 = sub_10015BA6C(v258, v259, &v399);

    *(v250 + 43) = v260;
    sub_1000F9A28(v254, type metadata accessor for MailboxTaskLogger);
    *(v250 + 51) = 2082;
    v261 = v363;
    sub_1000F9948(v256, v363, type metadata accessor for MoveAndCopyMessages.CommandID);
    v262 = v362;
    sub_1000F9948(v261, v362, type metadata accessor for MoveAndCopyMessages.CommandID);
    v263 = swift_getEnumCaseMultiPayload();
    if (v263 > 1)
    {
      if (v263 != 2)
      {
        v265 = 0x45474E55505845;
        v266 = 0xE700000000000000;
        v99 = v395;
        goto LABEL_105;
      }

      v266 = 0xE400000000000000;
      v265 = 1163284301;
    }

    else
    {
      if (v263)
      {
        v264 = v262;
      }

      else
      {
        v264 = v261;
      }

      if (v263)
      {
        v265 = 1498435395;
      }

      else
      {
        v261 = v262;
        v265 = 0x4554454C4544;
      }

      if (v263)
      {
        v266 = 0xE400000000000000;
      }

      else
      {
        v266 = 0xE600000000000000;
      }

      v262 = v264;
    }

    v99 = v395;
    sub_1000F9A28(v262, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_105:
    sub_1000F9A28(v261, type metadata accessor for MoveAndCopyMessages.CommandID);
    v329 = sub_10015BA6C(v265, v266, &v399);

    *(v250 + 53) = v329;
    sub_1000F9A28(v256, type metadata accessor for MoveAndCopyMessages.CommandID);
    *(v250 + 61) = 2082;
    v330 = v372;
    v331 = MessageIdentifierSet.debugDescription.getter(v382);
    v333 = sub_10015BA6C(v331, v332, &v399);

    *(v250 + 63) = v333;
    sub_100025F40(v330, &unk_1005D91B0, &unk_1004CF400);
    _os_log_impl(&_mh_execute_header, v248, v249, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server completed %{public}s of messages %{public}s without destination UIDs", v250, 0x47u);
    swift_arrayDestroy();

    v170 = v392;
    goto LABEL_106;
  }

  sub_1000F9948(v392, v166, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  sub_1000F9948(v161, v383, type metadata accessor for MoveAndCopyMessages.CommandID);
  v172 = v99;
  v173 = v381;
  sub_10000E268(v172, v381, &unk_1005D91B0, &unk_1004CF400);
  sub_1000110B0(v162);

  v174 = 20302;
  if (v167 == 2)
  {
    v174 = 4473154;
  }

  v385 = v174;
  if (v167 == 2)
  {
    v175 = 0xE300000000000000;
  }

  else
  {
    v175 = 0xE200000000000000;
  }

  sub_1000110B0(v162);

  sub_1000110B0(v162);

  sub_1000110B0(v162);

  v176 = sub_1004A4A54();
  v177 = sub_1004A6014();
  if (os_log_type_enabled(v176, v177))
  {
    LODWORD(v375) = v177;
    v392 = v170;
    v169 = swift_slowAlloc();
    v374 = swift_slowAlloc();
    v399 = v374;
    *v169 = 68160259;
    *(v169 + 1) = 2;
    *(v169 + 4) = 256;
    v178 = v166 + *(v384 + 20);
    v169[10] = *v178;
    *(v169 + 11) = 2082;
    v180 = *(v178 + 8);
    v179 = *(v178 + 16);

    v181 = sub_10015BA6C(v180, v179, &v399);

    *(v169 + 13) = v181;
    *(v169 + 21) = 1040;
    *(v169 + 23) = 2;
    *(v169 + 27) = 512;
    *(v169 + 29) = *(v178 + 24);
    *(v169 + 31) = 2160;
    *(v169 + 33) = 0x786F626C69616DLL;
    *(v169 + 41) = 2085;
    v182 = *(v178 + 40);
    v397 = *(v178 + 32);
    v398 = v182;

    v183 = sub_1004A5824();
    v185 = sub_10015BA6C(v183, v184, &v399);

    *(v169 + 43) = v185;
    sub_1000F9A28(v166, type metadata accessor for MailboxTaskLogger);
    *(v169 + 51) = 2082;
    v186 = v383;
    v187 = v380;
    sub_1000F9948(v383, v380, type metadata accessor for MoveAndCopyMessages.CommandID);
    v188 = v370;
    sub_1000F9948(v187, v370, type metadata accessor for MoveAndCopyMessages.CommandID);
    v189 = swift_getEnumCaseMultiPayload();
    if (v189 > 1)
    {
      v193 = v381;
      if (v189 != 2)
      {
        v191 = 0x45474E55505845;
        v192 = 0xE700000000000000;
        v170 = v392;
        goto LABEL_70;
      }

      v192 = 0xE400000000000000;
      v191 = 1163284301;
      v170 = v392;
    }

    else
    {
      if (v189)
      {
        v190 = v188;
      }

      else
      {
        v190 = v187;
      }

      if (!v189)
      {
        v187 = v188;
      }

      v380 = v187;
      if (v189)
      {
        v191 = 1498435395;
      }

      else
      {
        v191 = 0x4554454C4544;
      }

      if (v189)
      {
        v192 = 0xE400000000000000;
      }

      else
      {
        v192 = 0xE600000000000000;
      }

      v188 = v190;
      v170 = v392;
      v193 = v381;
    }

    sub_1000F9A28(v188, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_70:
    sub_1000F9A28(v380, type metadata accessor for MoveAndCopyMessages.CommandID);
    v267 = sub_10015BA6C(v191, v192, &v399);

    *(v169 + 53) = v267;
    sub_1000F9A28(v186, type metadata accessor for MoveAndCopyMessages.CommandID);
    *(v169 + 61) = 2082;
    v268 = MessageIdentifierSet.debugDescription.getter(v382);
    v270 = sub_10015BA6C(v268, v269, &v399);

    *(v169 + 63) = v270;
    sub_100025F40(v193, &unk_1005D91B0, &unk_1004CF400);
    *(v169 + 71) = 2082;

    v271 = sub_10015BA6C(v385, v175, &v399);

    *(v169 + 73) = v271;

    v272 = v389;
    sub_10001114C(v389);

    v273 = v388;

    sub_10001114C(v272);

    *(v169 + 81) = 2082;
    sub_1000110B0(v272);

    v274 = ResponseText.debugDescription.getter(v272, v371, v273);
    v276 = v275;
    sub_10001114C(v272);

    v277 = sub_10015BA6C(v274, v276, &v399);

    *(v169 + 83) = v277;

    sub_10001114C(v272);

    sub_10001114C(v272);

    _os_log_impl(&_mh_execute_header, v176, v375, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Server failed to %{public}s messages %{public}s: %{public}s %{public}s", v169, 0x5Bu);
    swift_arrayDestroy();

    v217 = v387;
    v168 = v379;
    LODWORD(v169) = v376;
    v99 = v395;
    goto LABEL_71;
  }

  sub_1000F9A28(v166, type metadata accessor for MailboxTaskLogger);
  sub_1000F9A28(v383, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_100025F40(v173, &unk_1005D91B0, &unk_1004CF400);

  sub_10001114C(v162);

  sub_10001114C(v162);

  sub_10001114C(v162);

  sub_10001114C(v162);

  v99 = v395;
  v217 = v387;
  v168 = v379;
LABEL_71:
  v278 = v391;
  v279 = v377;
  sub_1000F9948(v391, v377, type metadata accessor for MoveAndCopyMessages.CommandID);
  v280 = swift_getEnumCaseMultiPayload();
  v281 = sub_1000F9A28(v279, type metadata accessor for MoveAndCopyMessages.CommandID);
  if (v280 == 2)
  {
    v282 = *(v217 + 168);
    __chkstk_darwin(v281);
    *&v355[-16] = v99;
    v283 = v393;
    v285 = sub_100154CCC(sub_1000F98D4, &v355[-32], v284);
    v393 = v283;
    if ((v286 & 1) == 0)
    {
      sub_100169210(v285);
    }
  }

  v287 = sub_1000F918C(0, 1, v170);
  v288 = v378;
  sub_1000F9948(v278, v378, type metadata accessor for MoveAndCopyMessages.CommandID);
  v289 = swift_getEnumCaseMultiPayload();
  sub_1000F9A28(v288, type metadata accessor for MoveAndCopyMessages.CommandID);
  if (v289 != 1)
  {
    goto LABEL_107;
  }

  v391 = v287;
  v290 = v170 + 64;
  v291 = 1 << *(v170 + 32);
  v292 = -1;
  if (v291 < 64)
  {
    v292 = ~(-1 << v291);
  }

  v293 = v292 & *(v170 + 64);
  v294 = (v291 + 63) >> 6;

  v295 = 0;
  while (v293)
  {
LABEL_85:
    v297 = __clz(__rbit64(v293));
    v293 &= v293 - 1;
    v298 = v297 | (v295 << 6);
    v299 = *(v170 + 56) + 24 * v298;
    if ((*v299 & 1) == 0)
    {
      v300 = *(v299 + 8);
      v301 = *(v299 + 16);
      v302 = v170;
      LODWORD(v397) = *(*(v170 + 48) + 4 * v298);
      v392 = v300;
      sub_100014CEC(v300, v301);
      v303 = sub_100016948();
      v304 = v217;
      v305 = v390;
      MessageIdentifierSet.init(_:)(&v397, &type metadata for UID, v303);
      swift_storeEnumTagMultiPayload();
      v306 = *(v304 + 152);
      v307 = swift_isUniquelyReferenced_nonNull_native();
      v308 = *(v304 + 152);
      v397 = v308;
      v309 = sub_100063E04(v305);
      v311 = v308[2];
      v312 = (v310 & 1) == 0;
      v313 = __OFADD__(v311, v312);
      v314 = v311 + v312;
      if (v313)
      {
        goto LABEL_129;
      }

      v315 = v310;
      if (v308[3] >= v314)
      {
        if ((v307 & 1) == 0)
        {
          v321 = v309;
          sub_10013B8C8();
          v309 = v321;
        }
      }

      else
      {
        sub_1000C58F4(v314, v307);
        v309 = sub_100063E04(v390);
        if ((v315 & 1) != (v316 & 1))
        {
          goto LABEL_131;
        }
      }

      v170 = v302;
      v317 = v397;
      if (v315)
      {
        *(v397[7] + v309) = 1;
      }

      else
      {
        v397[(v309 >> 6) + 8] |= 1 << v309;
        v318 = v309;
        sub_1000F9948(v390, v317[6] + *(v373 + 72) * v309, type metadata accessor for MoveAndCopyMessages.CommandID);
        *(v317[7] + v318) = 1;
        v319 = v317[2];
        v313 = __OFADD__(v319, 1);
        v320 = v319 + 1;
        if (v313)
        {
          goto LABEL_130;
        }

        v317[2] = v320;
      }

      v217 = v387;
      sub_100014D40(v392, v301);
      sub_1000F9A28(v390, type metadata accessor for MoveAndCopyMessages.CommandID);
      *(v217 + 152) = v317;
    }
  }

  while (1)
  {
    v296 = v295 + 1;
    if (__OFADD__(v295, 1))
    {
      break;
    }

    if (v296 >= v294)
    {

      v99 = v395;
      v168 = v379;
      LODWORD(v169) = v376;
      v287 = v391;
      goto LABEL_108;
    }

    v293 = *(v290 + 8 * v296);
    ++v295;
    if (v293)
    {
      v295 = v296;
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_1000EF648()
{
  v1 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F9948(v0, v4, type metadata accessor for MoveAndCopyMessages.CommandID);
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
    sub_10000C9C0(&qword_1005CF7D0, &qword_1004D3CB0);
    result = sub_1004A6A54();
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
        result = sub_100014CEC(v22, *(&v22 + 1));
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
      sub_1000F9A28(v4, type metadata accessor for MoveAndCopyMessages.CommandID);
      return 0;
    }

    result = *v4;
    v27 = *(v4 + 2);
    v28 = *(v4 + 2);
  }

  return result;
}

uint64_t sub_1000EF890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A49D4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004A48E4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_1004A48B4();
  sub_1000EADE8();
  sub_1004A4964();
  sub_1000F9A28(v7, &type metadata accessor for OSLogStringAlignment);
  sub_1000F9A28(v11, &type metadata accessor for OSLogPrivacy);
}

unint64_t sub_1000EF9F4(uint64_t a1, uint64_t a2)
{
  v14[2] = a2;
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v14 - v5;
  v7 = *(a1 + 8);
  v14[1] = sub_100016D2C();
  result = sub_1004A7114();
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    while (v10 < *(v7 + 16))
    {
      v15[0] = *(v7 + 32 + 8 * v10);
      v11 = sub_100016948();
      result = Range<>.init<A>(_:)(v15, &type metadata for UID, v11);
      v15[5] = result;
      if (HIDWORD(result) != result)
      {
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        v12 = sub_1004A70B4();
        sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
        sub_1004A7064();
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
    v13 = sub_1004A7034();
    sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
    return v13 & 1;
  }

  return result;
}

BOOL sub_1000EFBB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v30 - v16);
  sub_1000F9948(a1, &v30 - v16, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v31 = a2;
      sub_100025FDC(v17, v10, &unk_1005D91B0, &unk_1004CF400);
      sub_10000E268(v10, v7, &unk_1005D91B0, &unk_1004CF400);
      v19 = sub_1000CC2E4(v7);
      a2 = v31;
      sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v20 = *v17;
    v21 = v17[2];

    v19 = sub_1000CF018(v22);

    goto LABEL_7;
  }

  v19 = _swiftEmptySetSingleton;
LABEL_7:
  sub_1000F9948(a2, v14, type metadata accessor for MoveAndCopyMessages.CommandID);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      v24 = _swiftEmptySetSingleton;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v23)
  {
LABEL_11:
    v25 = *v14;
    v26 = v14[2];

    v24 = sub_1000CF018(v27);

    goto LABEL_13;
  }

  sub_100025FDC(v14, v10, &unk_1005D91B0, &unk_1004CF400);
  sub_10000E268(v10, v7, &unk_1005D91B0, &unk_1004CF400);
  v24 = sub_1000CC2E4(v7);
  sub_100025F40(v10, &unk_1005D91B0, &unk_1004CF400);
LABEL_13:
  v28 = sub_10012E098(v24, v19);

  return (v28 & 1) == 0;
}

uint64_t sub_1000EFED8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v77 = a1;
  v78 = a2;
  v73 = type metadata accessor for MailboxTaskLogger(0);
  v4 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v74 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v75 = &v65[-v7];
  __chkstk_darwin(v8);
  v10 = &v65[-v9];
  __chkstk_darwin(v11);
  v13 = &v65[-v12];
  v14 = sub_1000F3D18(v2[16], v2[19]);
  if ((v14 & 1) == 0 || *(v2[22] + 16))
  {
    v15 = v78;
    sub_1000F9948(v78, v13, type metadata accessor for MailboxTaskLogger);
    sub_1000F9948(v15, v10, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v16 = sub_1004A4A54();
    v17 = sub_1004A6014();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v79[0] = swift_slowAlloc();
      *v18 = 68159235;
      *(v18 + 4) = 2;
      *(v18 + 8) = 256;
      v19 = v73;
      v20 = &v10[*(v73 + 20)];
      *(v18 + 10) = *v20;
      *(v18 + 11) = 2082;
      v21 = &v13[*(v19 + 20)];
      *(v18 + 13) = sub_10015BA6C(*(v21 + 1), *(v21 + 2), v79);
      *(v18 + 21) = 1040;
      *(v18 + 23) = 2;
      *(v18 + 27) = 512;
      LOWORD(v20) = *(v20 + 12);
      sub_1000F9A28(v10, type metadata accessor for MailboxTaskLogger);
      *(v18 + 29) = v20;
      *(v18 + 31) = 2160;
      *(v18 + 33) = 0x786F626C69616DLL;
      *(v18 + 41) = 2085;
      v22 = *(v21 + 4);
      LODWORD(v21) = *(v21 + 10);

      sub_1000F9A28(v13, type metadata accessor for MailboxTaskLogger);
      *&v80[0] = v22;
      DWORD2(v80[0]) = v21;
      v23 = sub_1004A5824();
      v25 = sub_10015BA6C(v23, v24, v79);

      *(v18 + 43) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Task is completing, but not done.", v18, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000F9A28(v10, type metadata accessor for MailboxTaskLogger);

      v14 = sub_1000F9A28(v13, type metadata accessor for MailboxTaskLogger);
    }
  }

  v26 = v3[4];
  v27 = *(v3 + 10);
  __chkstk_darwin(v14);
  v28 = v3;
  v30 = v77;
  v29 = v78;
  *&v65[-16] = v3;
  *&v65[-8] = v29;
  v33 = *(v30 + 176);
  v31 = v30 + 176;
  v32 = v33;
  v34 = *(v31 - 8);
  v35 = *(v31 + 8);
  v72 = *(v31 + 16);
  v76 = v26;
  if (v72 == 1)
  {
    *&v80[0] = v34;

    sub_1000BE940(v80, v26, v27, 0, sub_1000F773C);
    sub_100020D58(v34, v32, v35, 1);
    v71 = 0;
    v70 = 0;
    v34 = *&v80[0];
    v36 = v77;
    *(v77 + 168) = *&v80[0];
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v36 + 192) = 1;
  }

  else
  {
    v70 = v35;
    v71 = v32;
  }

  v37 = v27;
  v38 = v28;
  if (*(v28 + 120) == 1)
  {
    v69 = v34;
    v39 = v78;
    sub_1000F9948(v78, v75, type metadata accessor for MailboxTaskLogger);
    sub_1000F9948(v39, v74, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v40 = sub_1004A4A54();
    v41 = sub_1004A6034();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v66 = v41;
      v43 = v42;
      v67 = swift_slowAlloc();
      v79[0] = v67;
      *v43 = 68159235;
      v68 = v27;
      v45 = v74;
      v44 = v75;
      *(v43 + 4) = 2;
      *(v43 + 8) = 256;
      v46 = v73;
      v47 = &v45[*(v73 + 20)];
      *(v43 + 10) = *v47;
      *(v43 + 11) = 2082;
      v48 = &v44[*(v46 + 20)];
      *(v43 + 13) = sub_10015BA6C(*(v48 + 1), *(v48 + 2), v79);
      *(v43 + 21) = 1040;
      *(v43 + 23) = 2;
      *(v43 + 27) = 512;
      v49 = *(v47 + 12);
      v50 = v45;
      v37 = v68;
      sub_1000F9A28(v50, type metadata accessor for MailboxTaskLogger);
      *(v43 + 29) = v49;
      *(v43 + 31) = 2160;
      *(v43 + 33) = 0x786F626C69616DLL;
      *(v43 + 41) = 2085;
      v51 = *(v48 + 4);
      LODWORD(v48) = *(v48 + 10);

      sub_1000F9A28(v44, type metadata accessor for MailboxTaskLogger);
      *&v80[0] = v51;
      DWORD2(v80[0]) = v48;
      v52 = sub_1004A5824();
      v54 = sub_10015BA6C(v52, v53, v79);

      *(v43 + 43) = v54;
      _os_log_impl(&_mh_execute_header, v40, v66, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence has more messages to move/copy. Will mark as needing to re-run.", v43, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000F9A28(v74, type metadata accessor for MailboxTaskLogger);

      sub_1000F9A28(v75, type metadata accessor for MailboxTaskLogger);
    }

    v55 = v69;
    if (v72)
    {
      *&v80[0] = v69;

      sub_1000BE2F4(v80, v76, v37, 0);
      sub_100020D58(v55, v71, v70, 1);
      v56 = v77;
      *(v77 + 168) = *&v80[0];
      *v31 = 0;
      *(v31 + 8) = 0;
      *(v56 + 192) = 1;
    }
  }

  v57 = *(v31 + 40);
  v80[2] = *(v31 + 24);
  v81[0] = v57;
  *(v81 + 12) = *(v31 + 52);
  v58 = *(v31 + 8);
  v80[0] = *(v31 - 8);
  v80[1] = v58;
  v59 = sub_1000BAC28(v76, v37);
  v60 = v38[23];
  __chkstk_darwin(v59);
  v61 = v77;
  *&v65[-32] = v78;
  *&v65[-24] = v61;
  *&v65[-16] = v62;
  sub_10009B290(sub_1000F7744, &v65[-48], v63);
}

void sub_1000F0658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v24 - v11;
  if ((*(a2 + 120) & 1) == 0)
  {
    sub_1000F9948(a3, v24 - v11, type metadata accessor for MailboxTaskLogger);
    sub_1000F9948(a3, v9, type metadata accessor for MailboxTaskLogger);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v13 = sub_1004A4A54();
    v14 = sub_1004A6034();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v15 = 68159235;
      *(v15 + 4) = 2;
      *(v15 + 8) = 256;
      v16 = &v9[*(v6 + 20)];
      *(v15 + 10) = *v16;
      *(v15 + 11) = 2082;
      v17 = *(v6 + 20);
      v24[0] = a1;
      v18 = &v12[v17];
      *(v15 + 13) = sub_10015BA6C(*&v12[v17 + 8], *&v12[v17 + 16], &v26);
      *(v15 + 21) = 1040;
      *(v15 + 23) = 2;
      *(v15 + 27) = 512;
      v19 = *(v16 + 12);
      sub_1000F9A28(v9, type metadata accessor for MailboxTaskLogger);
      *(v15 + 29) = v19;
      *(v15 + 31) = 2160;
      *(v15 + 33) = 0x786F626C69616DLL;
      *(v15 + 41) = 2085;
      v20 = *(v18 + 4);
      LODWORD(v18) = *(v18 + 10);

      sub_1000F9A28(v12, type metadata accessor for MailboxTaskLogger);
      v24[1] = v20;
      v25 = v18;
      a1 = v24[0];
      v21 = sub_1004A5824();
      v23 = sub_10015BA6C(v21, v22, &v26);

      *(v15 + 43) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking no more messages needing move or copy.", v15, 0x33u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000F9A28(v9, type metadata accessor for MailboxTaskLogger);

      sub_1000F9A28(v12, type metadata accessor for MailboxTaskLogger);
    }

    *(a1 + *(type metadata accessor for MailboxSyncState() + 52) + 2) = 0;
  }
}

void sub_1000F0958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for MailboxTaskLogger(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  v16 = *a1;
  v39 = *(a1 + 8);
  sub_1000F9948(a2, &v33[-v14], type metadata accessor for MailboxTaskLogger);
  sub_1000F9948(a2, v12, type metadata accessor for MailboxTaskLogger);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();

  v17 = sub_1004A4A54();
  v18 = sub_1004A6034();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = a4;
    v20 = v19;
    v35 = swift_slowAlloc();
    v42 = v35;
    *v20 = 68159747;
    v38 = v4;
    *(v20 + 4) = 2;
    *(v20 + 8) = 256;
    v21 = *(v9 + 20);
    v34 = v18;
    v22 = &v12[v21];
    *(v20 + 10) = v12[v21];
    *(v20 + 11) = 2082;
    v23 = *(v9 + 20);
    v36 = a3;
    v24 = &v15[v23];
    *(v20 + 13) = sub_10015BA6C(*&v15[v23 + 8], *&v15[v23 + 16], &v42);
    *(v20 + 21) = 1040;
    *(v20 + 23) = 2;
    *(v20 + 27) = 512;
    LOWORD(v22) = *(v22 + 12);
    sub_1000F9A28(v12, type metadata accessor for MailboxTaskLogger);
    *(v20 + 29) = v22;
    *(v20 + 31) = 2160;
    *(v20 + 33) = 0x786F626C69616DLL;
    *(v20 + 41) = 2085;
    v25 = *(v24 + 4);
    LODWORD(v24) = *(v24 + 10);

    sub_1000F9A28(v15, type metadata accessor for MailboxTaskLogger);
    v40 = v25;
    v41 = v24;
    v26 = sub_1004A5824();
    v28 = sub_10015BA6C(v26, v27, &v42);

    *(v20 + 43) = v28;
    *(v20 + 51) = 2160;
    *(v20 + 53) = 0x786F626C69616DLL;
    *(v20 + 61) = 2085;
    v40 = v16;
    LODWORD(v22) = v39;
    v41 = v39;

    v29 = sub_1004A5824();
    v31 = sub_10015BA6C(v29, v30, &v42);

    *(v20 + 63) = v31;
    _os_log_impl(&_mh_execute_header, v17, v34, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Marking mailbox '%{sensitive,mask.mailbox}s' as needing to run find-missing-messages.", v20, 0x47u);
    swift_arrayDestroy();

    v32 = v22;
  }

  else
  {
    sub_1000F9A28(v12, type metadata accessor for MailboxTaskLogger);

    sub_1000F9A28(v15, type metadata accessor for MailboxTaskLogger);
    v32 = v39;
  }

  sub_1000BA414(v16, v32, 12);
}

uint64_t sub_1000F0CEC()
{
  if (qword_1005CCE68 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000F0D50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  result = sub_1000F77A8(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

Swift::Int sub_1000F0DF8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A4424();
  return sub_1004A6F14();
}

uint64_t sub_1000F0E5C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  sub_1004A6EB4(*v0);

  return sub_1004A4424();
}

Swift::Int sub_1000F0EB0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A4424();
  return sub_1004A6F14();
}

uint64_t sub_1000F0F10(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_10003A194(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_1000F0FAC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v5 | (v5 << 32));
  a3(v8, v6);
  return sub_1004A6F14();
}

uint64_t sub_1000F102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(v4 + 16);
  sub_1004A6EB4(*(v4 + 8) | (*(v4 + 8) << 32));

  return a4(a1, v6);
}

Swift::Int sub_1000F10AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  sub_1004A6E94();
  sub_1004A6EB4(v6 | (v6 << 32));
  a4(v9, v7);
  return sub_1004A6F14();
}

uint64_t sub_1000F1128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if ((*(a1 + 8) | (*(a1 + 8) << 32)) != (*(a2 + 8) | (*(a2 + 8) << 32)))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if ((sub_1000FFC98(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return a5(v5, v6);
}

Swift::Int sub_1000F11B4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[32];
  sub_1004A6E94();
  sub_1004A6EB4(v1);
  sub_1004A4424();
  if (v5 == 1)
  {
    sub_1004A6EB4(v4 != 0);
  }

  else
  {
    sub_1004A6EB4(2uLL);
    sub_1004A6EE4(v4);
    sub_1004A6EE4(HIDWORD(v4));
  }

  return sub_1004A6F14();
}

void sub_1000F1274()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[32];
  sub_1004A6EB4(*v0);
  sub_1004A4424();
  if (v4 == 1)
  {
    sub_1004A6EB4(v3 != 0);
  }

  else
  {
    sub_1004A6EB4(2uLL);
    sub_1004A6EE4(v3);
    sub_1004A6EE4(HIDWORD(v3));
  }
}