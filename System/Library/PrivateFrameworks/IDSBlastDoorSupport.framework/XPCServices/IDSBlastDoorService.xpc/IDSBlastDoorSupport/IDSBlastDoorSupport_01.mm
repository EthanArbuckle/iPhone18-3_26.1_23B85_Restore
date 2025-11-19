unint64_t sub_10002B194()
{
  result = qword_1000D87C0;
  if (!qword_1000D87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D87C0);
  }

  return result;
}

unint64_t sub_10002B1EC()
{
  result = qword_1000D87C8;
  if (!qword_1000D87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D87C8);
  }

  return result;
}

unint64_t sub_10002B244()
{
  result = qword_1000D87D0;
  if (!qword_1000D87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D87D0);
  }

  return result;
}

uint64_t sub_10002B298(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB0E8;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002B2E4(char *a1, char *a2)
{
  if (qword_1000A7470[*a1] == qword_1000A7470[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10002B34C()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A7470[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002B3A8()
{
  v1 = qword_1000A7470[*v0];
  sub_1000A05B0();
}

Swift::Int sub_10002B3E8()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A7470[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002B440@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002BBF4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10002B4A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002BBF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002B4CC(uint64_t a1)
{
  v2 = sub_10002B708();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B508(uint64_t a1)
{
  v2 = sub_10002B708();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CirclesStoppedEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a5;
  v16[1] = a4;
  v9 = sub_1000017BC(&qword_1000D87D8, &qword_1000A7020);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10002B708();
  sub_1000A0CE0();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_1000A0B60();
    LOBYTE(v17) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_10002B708()
{
  result = qword_1000D87E0;
  if (!qword_1000D87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D87E0);
  }

  return result;
}

uint64_t CirclesStoppedEnvelopeV1Schema.init(from:)(uint64_t *a1)
{
  result = sub_10002BC40(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002B788@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002BC40(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

Swift::Int sub_10002B7D8()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_10002B84C()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_10002B8A0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB1B8;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10002B930@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB1F0;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10002B988(uint64_t a1)
{
  v2 = sub_10002BE80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B9C4(uint64_t a1)
{
  v2 = sub_10002BE80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CirclesStoppedEnvelopeV1PayloadSchema.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D87E8, &qword_1000A7028);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10002BE80();
  sub_1000A0CE0();
  v11[1] = a2;
  sub_1000017BC(&qword_1000D87F8, &qword_1000A7030);
  sub_10002C390(&qword_1000D8800, &qword_1000D8808);
  sub_1000A0B80();
  return (*(v5 + 8))(v8, v4);
}

void *sub_10002BBAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10002BED4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10002BBF4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB150;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002BC40(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D8858, &unk_1000A7460);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_10002B708();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v12 = 0;
    sub_100005424();
    sub_1000A0A20();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    sub_1000A0A00();
    LOBYTE(v11[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v7, v3);
    sub_1000054CC(v8, v10);
    sub_100002308(a1);
    sub_100005568(v8, v10);
  }

  return v8;
}

unint64_t sub_10002BE80()
{
  result = qword_1000D87F0;
  if (!qword_1000D87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D87F0);
  }

  return result;
}

void *sub_10002BED4(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D8840, &qword_1000A7458);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000022C4(a1, a1[3]);
  sub_10002BE80();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    sub_1000017BC(&qword_1000D87F8, &qword_1000A7030);
    sub_10002C390(&qword_1000D8848, &qword_1000D8850);
    sub_1000A0A20();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100002308(a1);
  }

  return v9;
}

__n128 sub_10002C090(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002C09C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10002C0F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_10002C184()
{
  result = qword_1000D8810;
  if (!qword_1000D8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8810);
  }

  return result;
}

unint64_t sub_10002C1DC()
{
  result = qword_1000D8818;
  if (!qword_1000D8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8818);
  }

  return result;
}

unint64_t sub_10002C234()
{
  result = qword_1000D8820;
  if (!qword_1000D8820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8820);
  }

  return result;
}

unint64_t sub_10002C28C()
{
  result = qword_1000D8828;
  if (!qword_1000D8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8828);
  }

  return result;
}

unint64_t sub_10002C2E4()
{
  result = qword_1000D8830;
  if (!qword_1000D8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8830);
  }

  return result;
}

unint64_t sub_10002C33C()
{
  result = qword_1000D8838;
  if (!qword_1000D8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8838);
  }

  return result;
}

uint64_t sub_10002C390(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000D87F8, &qword_1000A7030);
    sub_10002C418(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002C418(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10009F370();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002C45C(char *a1, char *a2)
{
  if (qword_1000A78E0[*a1] == qword_1000A78E0[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10002C4C4()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A78E0[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002C520()
{
  v1 = qword_1000A78E0[*v0];
  sub_1000A05B0();
}

Swift::Int sub_10002C560()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A78E0[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002C5B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002CC68(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10002C61C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002CC68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002C644(uint64_t a1)
{
  v2 = sub_10002C880();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002C680(uint64_t a1)
{
  v2 = sub_10002C880();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CirclesUpdatedEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a5;
  v16[1] = a4;
  v9 = sub_1000017BC(&qword_1000D8860, &qword_1000A7490);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10002C880();
  sub_1000A0CE0();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_1000A0B60();
    LOBYTE(v17) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_10002C880()
{
  result = qword_1000D8868;
  if (!qword_1000D8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8868);
  }

  return result;
}

uint64_t CirclesUpdatedEnvelopeV1Schema.init(from:)(uint64_t *a1)
{
  result = sub_10002CCB4(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002C900@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002CCB4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10002C950@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB290;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10002C9A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB2C8;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10002C9FC(uint64_t a1)
{
  v2 = sub_10002CEF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002CA38(uint64_t a1)
{
  v2 = sub_10002CEF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CirclesUpdatedEnvelopeV1PayloadSchema.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8870, &unk_1000A7498);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10002CEF4();
  sub_1000A0CE0();
  v11[1] = a2;
  sub_1000017BC(&qword_1000D87F8, &qword_1000A7030);
  sub_10002C390(&qword_1000D8800, &qword_1000D8808);
  sub_1000A0B80();
  return (*(v5 + 8))(v8, v4);
}

void *sub_10002CC20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10002CF48(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10002CC68(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB228;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002CCB4(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D88B8, &unk_1000A78D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_10002C880();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v12 = 0;
    sub_100005424();
    sub_1000A0A20();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    sub_1000A0A00();
    LOBYTE(v11[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v7, v3);
    sub_1000054CC(v8, v10);
    sub_100002308(a1);
    sub_100005568(v8, v10);
  }

  return v8;
}

unint64_t sub_10002CEF4()
{
  result = qword_1000D8878;
  if (!qword_1000D8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8878);
  }

  return result;
}

void *sub_10002CF48(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D88B0, &qword_1000A78C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000022C4(a1, a1[3]);
  sub_10002CEF4();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    sub_1000017BC(&qword_1000D87F8, &qword_1000A7030);
    sub_10002C390(&qword_1000D8848, &qword_1000D8850);
    sub_1000A0A20();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100002308(a1);
  }

  return v9;
}

unint64_t sub_10002D148()
{
  result = qword_1000D8880;
  if (!qword_1000D8880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8880);
  }

  return result;
}

unint64_t sub_10002D1A0()
{
  result = qword_1000D8888;
  if (!qword_1000D8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8888);
  }

  return result;
}

unint64_t sub_10002D1F8()
{
  result = qword_1000D8890;
  if (!qword_1000D8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8890);
  }

  return result;
}

unint64_t sub_10002D250()
{
  result = qword_1000D8898;
  if (!qword_1000D8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8898);
  }

  return result;
}

unint64_t sub_10002D2A8()
{
  result = qword_1000D88A0;
  if (!qword_1000D88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D88A0);
  }

  return result;
}

unint64_t sub_10002D300()
{
  result = qword_1000D88A8;
  if (!qword_1000D88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D88A8);
  }

  return result;
}

uint64_t sub_10002D354(char *a1, char *a2)
{
  if (qword_1000A7D38[*a1] == qword_1000A7D38[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10002D3BC()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A7D38[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002D418()
{
  v1 = qword_1000A7D38[*v0];
  sub_1000A05B0();
}

Swift::Int sub_10002D458()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A7D38[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002D4B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002DE80(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10002D514@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002DE80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002D53C(uint64_t a1)
{
  v2 = sub_10002D778();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002D578(uint64_t a1)
{
  v2 = sub_10002D778();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustAcceptEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a5;
  v16[1] = a4;
  v9 = sub_1000017BC(&qword_1000D88C0, &qword_1000A7900);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10002D778();
  sub_1000A0CE0();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_1000A0B60();
    LOBYTE(v17) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_10002D778()
{
  result = qword_1000D88C8;
  if (!qword_1000D88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D88C8);
  }

  return result;
}

uint64_t CircleTrustAcceptEnvelopeV1Schema.init(from:)(uint64_t *a1)
{
  result = sub_10002DECC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002D7F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002DECC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

Swift::Int sub_10002D848()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_10002D8CC()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_10002D928@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB368;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10002D9C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB3A0;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10002DA20(uint64_t a1)
{
  v2 = sub_10002E10C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002DA5C(uint64_t a1)
{
  v2 = sub_10002E10C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustAcceptEnvelopeV1PayloadSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D88D0, &qword_1000A7908);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10002E10C();
  sub_1000A0CE0();
  sub_10009F370();
  sub_10002C418(&qword_1000D8808);
  sub_1000A0B80();
  return (*(v3 + 8))(v6, v2);
}

uint64_t CircleTrustAcceptEnvelopeV1PayloadSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_10009F370();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017BC(&qword_1000D88E0, &qword_1000A7910);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CircleTrustAcceptEnvelopeV1PayloadSchema();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10002E10C();
  v16 = v23;
  sub_1000A0CD0();
  if (!v16)
  {
    v17 = v21;
    sub_10002C418(&qword_1000D8850);
    sub_1000A0A20();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_10002E1AC(v14, v20);
  }

  return sub_100002308(a1);
}

uint64_t sub_10002DE80(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB300;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002DECC(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D89A8, &unk_1000A7D28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_10002D778();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v12 = 0;
    sub_100005424();
    sub_1000A0A20();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    sub_1000A0A00();
    LOBYTE(v11[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v7, v3);
    sub_1000054CC(v8, v10);
    sub_100002308(a1);
    sub_100005568(v8, v10);
  }

  return v8;
}

unint64_t sub_10002E10C()
{
  result = qword_1000D88D8;
  if (!qword_1000D88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D88D8);
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustAcceptEnvelopeV1PayloadSchema()
{
  result = qword_1000D8940;
  if (!qword_1000D8940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleTrustAcceptEnvelopeV1PayloadSchema();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E234(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002E2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10002E324()
{
  result = sub_10009F370();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10002E3B4()
{
  result = qword_1000D8978;
  if (!qword_1000D8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8978);
  }

  return result;
}

unint64_t sub_10002E40C()
{
  result = qword_1000D8980;
  if (!qword_1000D8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8980);
  }

  return result;
}

unint64_t sub_10002E464()
{
  result = qword_1000D8988;
  if (!qword_1000D8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8988);
  }

  return result;
}

unint64_t sub_10002E4BC()
{
  result = qword_1000D8990;
  if (!qword_1000D8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8990);
  }

  return result;
}

unint64_t sub_10002E514()
{
  result = qword_1000D8998;
  if (!qword_1000D8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8998);
  }

  return result;
}

unint64_t sub_10002E56C()
{
  result = qword_1000D89A0;
  if (!qword_1000D89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D89A0);
  }

  return result;
}

uint64_t sub_10002E5C0(char *a1, char *a2)
{
  if (qword_1000A8178[*a1] == qword_1000A8178[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10002E628()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A8178[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002E684()
{
  v1 = qword_1000A8178[*v0];
  sub_1000A05B0();
}

Swift::Int sub_10002E6C4()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A8178[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002E71C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002EFC0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10002E780@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002EFC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002E7A8(uint64_t a1)
{
  v2 = sub_10002E9E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002E7E4(uint64_t a1)
{
  v2 = sub_10002E9E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustAckEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a5;
  v16[1] = a4;
  v9 = sub_1000017BC(&qword_1000D89B0, &qword_1000A7D50);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10002E9E4();
  sub_1000A0CE0();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_1000A0B60();
    LOBYTE(v17) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_10002E9E4()
{
  result = qword_1000D89B8;
  if (!qword_1000D89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D89B8);
  }

  return result;
}

uint64_t CircleTrustAckEnvelopeV1Schema.init(from:)(uint64_t *a1)
{
  result = sub_10002F00C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002EA64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002F00C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10002EAB4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB440;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10002EB08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB478;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10002EB60(uint64_t a1)
{
  v2 = sub_10002F24C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002EB9C(uint64_t a1)
{
  v2 = sub_10002F24C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustAckEnvelopeV1PayloadSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D89C0, &qword_1000A7D58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10002F24C();
  sub_1000A0CE0();
  sub_10009F370();
  sub_10002C418(&qword_1000D8808);
  sub_1000A0B80();
  return (*(v3 + 8))(v6, v2);
}

uint64_t CircleTrustAckEnvelopeV1PayloadSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_10009F370();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017BC(&qword_1000D89D0, &qword_1000A7D60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CircleTrustAckEnvelopeV1PayloadSchema();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10002F24C();
  v16 = v23;
  sub_1000A0CD0();
  if (!v16)
  {
    v17 = v21;
    sub_10002C418(&qword_1000D8850);
    sub_1000A0A20();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_10002F2EC(v14, v20);
  }

  return sub_100002308(a1);
}

uint64_t sub_10002EFC0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB3D8;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002F00C(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D8A98, &unk_1000A8168);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_10002E9E4();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v12 = 0;
    sub_100005424();
    sub_1000A0A20();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    sub_1000A0A00();
    LOBYTE(v11[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v7, v3);
    sub_1000054CC(v8, v10);
    sub_100002308(a1);
    sub_100005568(v8, v10);
  }

  return v8;
}

unint64_t sub_10002F24C()
{
  result = qword_1000D89C8;
  if (!qword_1000D89C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D89C8);
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustAckEnvelopeV1PayloadSchema()
{
  result = qword_1000D8A30;
  if (!qword_1000D8A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002F2EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleTrustAckEnvelopeV1PayloadSchema();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002F374(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002F3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_10002F488()
{
  result = qword_1000D8A68;
  if (!qword_1000D8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A68);
  }

  return result;
}

unint64_t sub_10002F4E0()
{
  result = qword_1000D8A70;
  if (!qword_1000D8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A70);
  }

  return result;
}

unint64_t sub_10002F538()
{
  result = qword_1000D8A78;
  if (!qword_1000D8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A78);
  }

  return result;
}

unint64_t sub_10002F590()
{
  result = qword_1000D8A80;
  if (!qword_1000D8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A80);
  }

  return result;
}

unint64_t sub_10002F5E8()
{
  result = qword_1000D8A88;
  if (!qword_1000D8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A88);
  }

  return result;
}

unint64_t sub_10002F640()
{
  result = qword_1000D8A90;
  if (!qword_1000D8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8A90);
  }

  return result;
}

uint64_t sub_10002F694(char *a1, char *a2)
{
  if (qword_1000A85C8[*a1] == qword_1000A85C8[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10002F6FC()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A85C8[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002F758()
{
  v1 = qword_1000A85C8[*v0];
  sub_1000A05B0();
}

Swift::Int sub_10002F798()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A85C8[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10002F7F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100030094(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10002F854@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100030094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10002F87C(uint64_t a1)
{
  v2 = sub_10002FAB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002F8B8(uint64_t a1)
{
  v2 = sub_10002FAB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustDeclineEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a5;
  v16[1] = a4;
  v9 = sub_1000017BC(&qword_1000D8AA0, &qword_1000A8190);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10002FAB8();
  sub_1000A0CE0();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_1000A0B60();
    LOBYTE(v17) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_10002FAB8()
{
  result = qword_1000D8AA8;
  if (!qword_1000D8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8AA8);
  }

  return result;
}

uint64_t CircleTrustDeclineEnvelopeV1Schema.init(from:)(uint64_t *a1)
{
  result = sub_1000300E0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10002FB38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000300E0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10002FB88@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB518;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10002FBDC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB550;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10002FC34(uint64_t a1)
{
  v2 = sub_100030320();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002FC70(uint64_t a1)
{
  v2 = sub_100030320();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustDeclineEnvelopeV1PayloadSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D8AB0, &qword_1000A8198);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100030320();
  sub_1000A0CE0();
  sub_10009F370();
  sub_10002C418(&qword_1000D8808);
  sub_1000A0B80();
  return (*(v3 + 8))(v6, v2);
}

uint64_t CircleTrustDeclineEnvelopeV1PayloadSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_10009F370();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017BC(&qword_1000D8AC0, &qword_1000A81A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for CircleTrustDeclineEnvelopeV1PayloadSchema();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100030320();
  v16 = v23;
  sub_1000A0CD0();
  if (!v16)
  {
    v17 = v21;
    sub_10002C418(&qword_1000D8850);
    sub_1000A0A20();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_1000303C0(v14, v20);
  }

  return sub_100002308(a1);
}

uint64_t sub_100030094(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB4B0;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000300E0(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D8B88, &unk_1000A85B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_10002FAB8();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v12 = 0;
    sub_100005424();
    sub_1000A0A20();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    sub_1000A0A00();
    LOBYTE(v11[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v7, v3);
    sub_1000054CC(v8, v10);
    sub_100002308(a1);
    sub_100005568(v8, v10);
  }

  return v8;
}

unint64_t sub_100030320()
{
  result = qword_1000D8AB8;
  if (!qword_1000D8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8AB8);
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustDeclineEnvelopeV1PayloadSchema()
{
  result = qword_1000D8B20;
  if (!qword_1000D8B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000303C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleTrustDeclineEnvelopeV1PayloadSchema();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030448(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000304C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_10003055C()
{
  result = qword_1000D8B58;
  if (!qword_1000D8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B58);
  }

  return result;
}

unint64_t sub_1000305B4()
{
  result = qword_1000D8B60;
  if (!qword_1000D8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B60);
  }

  return result;
}

unint64_t sub_10003060C()
{
  result = qword_1000D8B68;
  if (!qword_1000D8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B68);
  }

  return result;
}

unint64_t sub_100030664()
{
  result = qword_1000D8B70;
  if (!qword_1000D8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B70);
  }

  return result;
}

unint64_t sub_1000306BC()
{
  result = qword_1000D8B78;
  if (!qword_1000D8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B78);
  }

  return result;
}

unint64_t sub_100030714()
{
  result = qword_1000D8B80;
  if (!qword_1000D8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B80);
  }

  return result;
}

uint64_t sub_100030768(char *a1, char *a2)
{
  if (qword_1000A8A10[*a1] == qword_1000A8A10[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_1000307D0()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A8A10[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10003082C()
{
  v1 = qword_1000A8A10[*v0];
  sub_1000A05B0();
}

Swift::Int sub_10003086C()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A8A10[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000308C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100032038(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100030928@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100032038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100030950(uint64_t a1)
{
  v2 = sub_100030B8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003098C(uint64_t a1)
{
  v2 = sub_100030B8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a5;
  v16[1] = a4;
  v9 = sub_1000017BC(&qword_1000D8B90, &qword_1000A85E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100030B8C();
  sub_1000A0CE0();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_1000A0B60();
    LOBYTE(v17) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_100030B8C()
{
  result = qword_1000D8B98;
  if (!qword_1000D8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8B98);
  }

  return result;
}

uint64_t CircleTrustEnvelopeV1Schema.init(from:)(uint64_t *a1)
{
  result = sub_100032084(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

unint64_t sub_100030C0C(char a1)
{
  result = 0x6564496572616873;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6C65646F6DLL;
      break;
    case 5:
      result = 0x65566D6574737973;
      break;
    case 6:
      result = 0x6449726F646E6576;
      break;
    case 7:
      result = 0x49746375646F7270;
      break;
    case 8:
      result = 0x614E6E6F63616562;
      break;
    case 9:
      result = 1701605234;
      break;
    case 10:
      result = 0x696A6F6D65;
      break;
    case 11:
      result = 0x616B63615079656BLL;
      break;
    case 12:
      result = 0x5064657473757274;
      break;
    case 13:
      result = 0x7079546572616873;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100030DF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100032084(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100030E48(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100030C0C(*a1);
  v5 = v4;
  if (v3 == sub_100030C0C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_100030ED0()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_100030C0C(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100030F34()
{
  sub_100030C0C(*v0);
  sub_1000A05B0();
}

Swift::Int sub_100030F88()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_100030C0C(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100030FE8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100032D60(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100031018@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100030C0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100031060@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100032D60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100031094(uint64_t a1)
{
  v2 = sub_1000322C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000310D0(uint64_t a1)
{
  v2 = sub_1000322C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustEnvelopeV1PayloadSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D8BA0, &qword_1000A85E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000322C4();
  sub_1000A0CE0();
  LOBYTE(v34) = 0;
  sub_10009F370();
  sub_1000324D8(&qword_1000D8808, &type metadata accessor for UUID);
  sub_1000A0B80();
  if (!v2)
  {
    v11 = type metadata accessor for CircleTrustEnvelopeV1PayloadSchema();
    v12 = v11[5];
    LOBYTE(v34) = 1;
    sub_1000A0AD0();
    v13 = v11[6];
    LOBYTE(v34) = 2;
    sub_1000A0B80();
    v14 = v11[7];
    LOBYTE(v34) = 3;
    sub_1000A0AD0();
    v15 = (v3 + v11[8]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v34) = 4;
    sub_1000A0B30();
    v18 = (v3 + v11[9]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v34) = 5;
    sub_1000A0B30();
    v21 = *(v3 + v11[10]);
    LOBYTE(v34) = 6;
    sub_1000A0BA0();
    v22 = *(v3 + v11[11]);
    LOBYTE(v34) = 7;
    sub_1000A0BA0();
    v23 = (v3 + v11[12]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v34) = 8;
    sub_1000A0B30();
    v26 = *(v3 + v11[13]);
    LOBYTE(v34) = 9;
    sub_1000A0B60();
    v27 = (v3 + v11[14]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v34) = 10;
    sub_1000A0B30();
    v30 = (v3 + v11[15]);
    v31 = v30[1];
    v34 = *v30;
    v35 = v31;
    v36 = 11;
    sub_1000054CC(v34, v31);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v34, v35);
    v34 = *(v3 + v11[16]);
    v36 = 12;
    sub_1000017BC(&qword_1000D8BB0, &qword_1000A85F0);
    sub_10003243C(&qword_1000D8BB8, &qword_1000D8BC0);
    sub_1000A0B80();
    v32 = *(v3 + v11[17]);
    LOBYTE(v34) = 13;
    sub_1000A0B60();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CircleTrustEnvelopeV1PayloadSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v71 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v65 - v7;
  v8 = sub_10009F370();
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v65 - v13;
  v77 = sub_1000017BC(&qword_1000D8BD0, &qword_1000A8600);
  v75 = *(v77 - 8);
  v14 = *(v75 + 64);
  __chkstk_darwin(v77);
  v16 = &v65 - v15;
  v17 = type metadata accessor for CircleTrustEnvelopeV1PayloadSchema();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000322C4();
  v76 = v16;
  v22 = v78;
  sub_1000A0CD0();
  if (v22)
  {
    return sub_100002308(a1);
  }

  v67 = v12;
  v68 = v17;
  v78 = a1;
  v69 = v20;
  LOBYTE(v79) = 0;
  sub_1000324D8(&qword_1000D8850, &type metadata accessor for UUID);
  v23 = v74;
  sub_1000A0A20();
  v25 = v8;
  v26 = *(v73 + 32);
  v27 = v69;
  v26(v69, v23, v25);
  LOBYTE(v79) = 1;
  v28 = v72;
  sub_1000A0970();
  v66 = v25;
  v29 = v27;
  v30 = v68;
  sub_1000323CC(v28, &v29[v68[5]]);
  LOBYTE(v79) = 2;
  v31 = v67;
  v72 = 0;
  sub_1000A0A20();
  v26(&v69[v30[6]], v31, v25);
  LOBYTE(v79) = 3;
  v32 = v71;
  sub_1000A0970();
  sub_1000323CC(v32, &v69[v30[7]]);
  LOBYTE(v79) = 4;
  v33 = sub_1000A09D0();
  v34 = &v69[v30[8]];
  *v34 = v33;
  v34[1] = v35;
  LOBYTE(v79) = 5;
  v36 = sub_1000A09D0();
  v37 = &v69[v30[9]];
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v79) = 6;
  *&v69[v30[10]] = sub_1000A0A40();
  LOBYTE(v79) = 7;
  *&v69[v68[11]] = sub_1000A0A40();
  LOBYTE(v79) = 8;
  v48 = sub_1000A09D0();
  v74 = 0;
  v50 = &v69[v68[12]];
  *v50 = v48;
  v50[1] = v49;
  LOBYTE(v79) = 9;
  v51 = v74;
  v52 = sub_1000A0A00();
  v74 = v51;
  if (v51 || (*&v69[v68[13]] = v52, LOBYTE(v79) = 10, v53 = v74, v54 = sub_1000A09D0(), (v74 = v53) != 0))
  {
    (*(v75 + 8))(v76, v77);
    LODWORD(v75) = 0;
    LODWORD(v76) = 0;
    LODWORD(v77) = 0;
  }

  else
  {
    v58 = &v69[v68[14]];
    *v58 = v54;
    v58[1] = v55;
    v80 = 11;
    sub_100005424();
    v59 = v74;
    sub_1000A0A20();
    v74 = v59;
    if (v59)
    {
      (*(v75 + 8))(v76, v77);
      LODWORD(v76) = 0;
      LODWORD(v77) = 0;
      LODWORD(v75) = 1;
    }

    else
    {
      *&v69[v68[15]] = v79;
      sub_1000017BC(&qword_1000D8BB0, &qword_1000A85F0);
      v80 = 12;
      sub_10003243C(&qword_1000D8BD8, &qword_1000D8BE0);
      v60 = v74;
      sub_1000A0A20();
      v74 = v60;
      if (v60)
      {
        (*(v75 + 8))(v76, v77);
        LODWORD(v77) = 0;
        LODWORD(v75) = 1;
        LODWORD(v76) = 1;
      }

      else
      {
        *&v69[v68[16]] = v79;
        LOBYTE(v79) = 13;
        v61 = v74;
        v62 = sub_1000A0A00();
        v74 = v61;
        if (!v61)
        {
          v63 = v62;
          (*(v75 + 8))(v76, v77);
          v64 = v69;
          *&v69[v68[17]] = v63;
          sub_100032520(v64, v70);
          sub_100002308(v78);
          return sub_100032584(v64);
        }

        (*(v75 + 8))(v76, v77);
        LODWORD(v75) = 1;
        LODWORD(v76) = 1;
        LODWORD(v77) = 1;
      }
    }
  }

  v57 = v72;
  v56 = v73;
  sub_100002308(v78);
  v39 = *(v56 + 8);
  v40 = v69;
  v39(v69, v66);
  if (!v57)
  {
    sub_100032364(&v40[v68[5]]);
  }

  v42 = v68;
  v41 = v69;
  v39(&v69[v68[6]], v66);
  sub_100032364(&v41[v42[7]]);
  v43 = *&v41[v42[8] + 8];

  v45 = *&v41[v42[9] + 8];

  v44 = *&v41[v42[12] + 8];

  if (v75)
  {
    v46 = *&v41[v42[14] + 8];

    if (v76)
    {
LABEL_9:
      result = sub_100005568(*&v41[v42[15]], *&v41[v42[15] + 8]);
      if (v77)
      {
        goto LABEL_13;
      }

      return result;
    }
  }

  else if (v76)
  {
    goto LABEL_9;
  }

  if (v77)
  {
LABEL_13:
    v47 = *&v41[v42[16]];
  }

  return result;
}

uint64_t sub_100032038(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB588;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100032084(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D8CE8, &unk_1000A8A00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_100030B8C();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v12 = 0;
    sub_100005424();
    sub_1000A0A20();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    sub_1000A0A00();
    LOBYTE(v11[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v7, v3);
    sub_1000054CC(v8, v10);
    sub_100002308(a1);
    sub_100005568(v8, v10);
  }

  return v8;
}

unint64_t sub_1000322C4()
{
  result = qword_1000D8BA8;
  if (!qword_1000D8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8BA8);
  }

  return result;
}

uint64_t type metadata accessor for CircleTrustEnvelopeV1PayloadSchema()
{
  result = qword_1000D8C40;
  if (!qword_1000D8C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100032364(uint64_t a1)
{
  v2 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000323CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003243C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000D8BB0, &qword_1000A85F0);
    sub_1000324D8(a2, &type metadata accessor for PeerTrustEnvelopeV1);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000324D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100032520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircleTrustEnvelopeV1PayloadSchema();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032584(uint64_t a1)
{
  v2 = type metadata accessor for CircleTrustEnvelopeV1PayloadSchema();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100032604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009F370();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100032734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10009F370();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000017BC(&qword_1000D8BC8, &qword_1000A85F8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10003284C()
{
  sub_10009F370();
  if (v0 <= 0x3F)
  {
    sub_10003298C(319, &qword_1000D8C50, &type metadata accessor for UUID, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10003298C(319, &unk_1000D8C58, &type metadata accessor for PeerTrustEnvelopeV1, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003298C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for CircleTrustEnvelopeV1PayloadSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CircleTrustEnvelopeV1PayloadSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100032B54()
{
  result = qword_1000D8CB8;
  if (!qword_1000D8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CB8);
  }

  return result;
}

unint64_t sub_100032BAC()
{
  result = qword_1000D8CC0;
  if (!qword_1000D8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CC0);
  }

  return result;
}

unint64_t sub_100032C04()
{
  result = qword_1000D8CC8;
  if (!qword_1000D8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CC8);
  }

  return result;
}

unint64_t sub_100032C5C()
{
  result = qword_1000D8CD0;
  if (!qword_1000D8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CD0);
  }

  return result;
}

unint64_t sub_100032CB4()
{
  result = qword_1000D8CD8;
  if (!qword_1000D8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CD8);
  }

  return result;
}

unint64_t sub_100032D0C()
{
  result = qword_1000D8CE0;
  if (!qword_1000D8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CE0);
  }

  return result;
}

uint64_t sub_100032D60(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB5F0;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100032DB4(char *a1, char *a2)
{
  if (qword_1000A8E90[*a1] == qword_1000A8E90[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_100032E1C()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A8E90[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100032E78()
{
  v1 = qword_1000A8E90[*v0];
  sub_1000A05B0();
}

Swift::Int sub_100032EB8()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A8E90[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100032F10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000335C0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100032F74@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000335C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100032F9C(uint64_t a1)
{
  v2 = sub_1000331D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100032FD8(uint64_t a1)
{
  v2 = sub_1000331D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustRequestEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a5;
  v16[1] = a4;
  v9 = sub_1000017BC(&qword_1000D8CF0, &qword_1000A8A30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000331D8();
  sub_1000A0CE0();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_1000A0B60();
    LOBYTE(v17) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_1000331D8()
{
  result = qword_1000D8CF8;
  if (!qword_1000D8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8CF8);
  }

  return result;
}

uint64_t CircleTrustRequestEnvelopeV1Schema.init(from:)(uint64_t *a1)
{
  result = sub_10003360C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100033258@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10003360C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000332A8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB7C8;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000332FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB800;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100033354(uint64_t a1)
{
  v2 = sub_10003384C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033390(uint64_t a1)
{
  v2 = sub_10003384C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CircleTrustRequestEnvelopeV1PayloadSchema.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D8D00, &unk_1000A8A38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10003384C();
  sub_1000A0CE0();
  v11[1] = a2;
  sub_1000017BC(&qword_1000D87F8, &qword_1000A7030);
  sub_10002C390(&qword_1000D8800, &qword_1000D8808);
  sub_1000A0B80();
  return (*(v5 + 8))(v8, v4);
}

void *sub_100033578@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000338A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000335C0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB760;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10003360C(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D8D48, &unk_1000A8E80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_1000331D8();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v12 = 0;
    sub_100005424();
    sub_1000A0A20();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    sub_1000A0A00();
    LOBYTE(v11[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v7, v3);
    sub_1000054CC(v8, v10);
    sub_100002308(a1);
    sub_100005568(v8, v10);
  }

  return v8;
}

unint64_t sub_10003384C()
{
  result = qword_1000D8D08;
  if (!qword_1000D8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D08);
  }

  return result;
}

void *sub_1000338A0(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D8D40, &qword_1000A8E78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000022C4(a1, a1[3]);
  sub_10003384C();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    sub_1000017BC(&qword_1000D87F8, &qword_1000A7030);
    sub_10002C390(&qword_1000D8848, &qword_1000D8850);
    sub_1000A0A20();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100002308(a1);
  }

  return v9;
}

unint64_t sub_100033AA0()
{
  result = qword_1000D8D10;
  if (!qword_1000D8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D10);
  }

  return result;
}

unint64_t sub_100033AF8()
{
  result = qword_1000D8D18;
  if (!qword_1000D8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D18);
  }

  return result;
}

unint64_t sub_100033B50()
{
  result = qword_1000D8D20;
  if (!qword_1000D8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D20);
  }

  return result;
}

unint64_t sub_100033BA8()
{
  result = qword_1000D8D28;
  if (!qword_1000D8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D28);
  }

  return result;
}

unint64_t sub_100033C00()
{
  result = qword_1000D8D30;
  if (!qword_1000D8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D30);
  }

  return result;
}

unint64_t sub_100033C58()
{
  result = qword_1000D8D38;
  if (!qword_1000D8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D38);
  }

  return result;
}

uint64_t sub_100033CAC(char *a1, char *a2)
{
  if (qword_1000A92F0[*a1] == qword_1000A92F0[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_100033D14()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A92F0[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100033D70()
{
  v1 = qword_1000A92F0[*v0];
  sub_1000A05B0();
}

Swift::Int sub_100033DB0()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A92F0[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100033E08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000346AC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100033E6C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000346AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100033E94(uint64_t a1)
{
  v2 = sub_1000340D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033ED0(uint64_t a1)
{
  v2 = sub_1000340D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DelegatedCircleTrustStopEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a5;
  v16[1] = a4;
  v9 = sub_1000017BC(&qword_1000D8D50, &qword_1000A8EB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000340D0();
  sub_1000A0CE0();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_1000A0B60();
    LOBYTE(v17) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_1000340D0()
{
  result = qword_1000D8D58;
  if (!qword_1000D8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D58);
  }

  return result;
}

uint64_t DelegatedCircleTrustStopEnvelopeV1Schema.init(from:)(uint64_t *a1)
{
  result = sub_1000346F8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100034150@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000346F8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000341A0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB8A0;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000341F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB8D8;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10003424C(uint64_t a1)
{
  v2 = sub_100034938();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100034288(uint64_t a1)
{
  v2 = sub_100034938();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DelegatedCircleTrustStopEnvelopeV1PayloadSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D8D60, &qword_1000A8EB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100034938();
  sub_1000A0CE0();
  sub_10009F370();
  sub_10002C418(&qword_1000D8808);
  sub_1000A0B80();
  return (*(v3 + 8))(v6, v2);
}

uint64_t DelegatedCircleTrustStopEnvelopeV1PayloadSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_10009F370();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017BC(&qword_1000D8D70, &qword_1000A8EC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DelegatedCircleTrustStopEnvelopeV1PayloadSchema();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100034938();
  v16 = v23;
  sub_1000A0CD0();
  if (!v16)
  {
    v17 = v21;
    sub_10002C418(&qword_1000D8850);
    sub_1000A0A20();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_1000349D8(v14, v20);
  }

  return sub_100002308(a1);
}

uint64_t sub_1000346AC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB838;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000346F8(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D8E38, &unk_1000A92E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_1000340D0();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v12 = 0;
    sub_100005424();
    sub_1000A0A20();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    sub_1000A0A00();
    LOBYTE(v11[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v7, v3);
    sub_1000054CC(v8, v10);
    sub_100002308(a1);
    sub_100005568(v8, v10);
  }

  return v8;
}

unint64_t sub_100034938()
{
  result = qword_1000D8D68;
  if (!qword_1000D8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8D68);
  }

  return result;
}

uint64_t type metadata accessor for DelegatedCircleTrustStopEnvelopeV1PayloadSchema()
{
  result = qword_1000D8DD0;
  if (!qword_1000D8DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000349D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DelegatedCircleTrustStopEnvelopeV1PayloadSchema();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100034AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_100034B74()
{
  result = qword_1000D8E08;
  if (!qword_1000D8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E08);
  }

  return result;
}

unint64_t sub_100034BCC()
{
  result = qword_1000D8E10;
  if (!qword_1000D8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E10);
  }

  return result;
}

unint64_t sub_100034C24()
{
  result = qword_1000D8E18;
  if (!qword_1000D8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E18);
  }

  return result;
}

unint64_t sub_100034C7C()
{
  result = qword_1000D8E20;
  if (!qword_1000D8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E20);
  }

  return result;
}

unint64_t sub_100034CD4()
{
  result = qword_1000D8E28;
  if (!qword_1000D8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E28);
  }

  return result;
}

unint64_t sub_100034D2C()
{
  result = qword_1000D8E30;
  if (!qword_1000D8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E30);
  }

  return result;
}

uint64_t sub_100034D80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1937335659;
  if (v2 != 1)
  {
    v3 = 1701869940;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E656D6E67696C61;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE900000000000074;
  }

  v6 = 1937335659;
  if (*a2 != 1)
  {
    v6 = 1701869940;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E656D6E67696C61;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE900000000000074;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000A0BD0();
  }

  return v9 & 1;
}

Swift::Int sub_100034E64()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100034EFC()
{
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_100034F80()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100035014@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100035DF8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100035044(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000074;
  v4 = 1937335659;
  if (v2 != 1)
  {
    v4 = 1701869940;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E656D6E67696C61;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_100035098()
{
  v1 = 1937335659;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656D6E67696C61;
  }
}

uint64_t sub_1000350E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100035DF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100035110(uint64_t a1)
{
  v2 = sub_1000353D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003514C(uint64_t a1)
{
  v2 = sub_1000353D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KeyPackageSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D8E40, &qword_1000A9310);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000353D8();
  sub_1000A0CE0();
  v18 = 0;
  sub_1000A0510();
  sub_100035928(&qword_1000D8E50, &type metadata accessor for Alignment);
  sub_1000A0B80();
  if (!v2)
  {
    v11 = type metadata accessor for KeyPackageSchema();
    v17 = *(v3 + *(v11 + 20));
    v16[15] = 1;
    sub_1000017BC(&qword_1000D8E58, &qword_1000A9318);
    sub_10003588C(&qword_1000D8E60, &qword_1000D8E68);
    sub_1000A0B80();
    v12 = (v3 + *(v11 + 24));
    v13 = *v12;
    v14 = v12[1];
    v16[14] = 2;
    sub_1000A0B30();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000353D8()
{
  result = qword_1000D8E48;
  if (!qword_1000D8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8E48);
  }

  return result;
}

uint64_t type metadata accessor for KeyPackageSchema()
{
  result = qword_1000D8EE8;
  if (!qword_1000D8EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t KeyPackageSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1000A0510();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000017BC(&qword_1000D8E70, &qword_1000A9320);
  v29 = *(v32 - 8);
  v7 = *(v29 + 64);
  __chkstk_darwin(v32);
  v9 = &v26 - v8;
  v10 = type metadata accessor for KeyPackageSchema();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000353D8();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v16 = v29;
  v15 = v30;
  v26 = v13;
  v27 = a1;
  v36 = 0;
  sub_100035928(&qword_1000D8E78, &type metadata accessor for Alignment);
  v18 = v31;
  v17 = v32;
  sub_1000A0A20();
  (*(v15 + 32))(v26, v18, v4);
  sub_1000017BC(&qword_1000D8E58, &qword_1000A9318);
  v35 = 1;
  sub_10003588C(&qword_1000D8E80, &qword_1000D8E88);
  sub_1000A0A20();
  *&v26[*(v10 + 20)] = v33;
  v34 = 2;
  v19 = sub_1000A09D0();
  v21 = v20;
  (*(v16 + 8))(v9, v17);
  v22 = *(v10 + 24);
  v23 = v26;
  v24 = &v26[v22];
  *v24 = v19;
  v24[1] = v21;
  sub_100035970(v23, v28);
  sub_100002308(v27);
  return sub_1000359D4(v23);
}

uint64_t sub_10003588C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000053DC(&qword_1000D8E58, &qword_1000A9318);
    sub_100035928(a2, &type metadata accessor for EncodedKey);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100035928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100035970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyPackageSchema();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000359D4(uint64_t a1)
{
  v2 = type metadata accessor for KeyPackageSchema();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100035A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000A0510();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100035B44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000A0510();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100035BFC()
{
  sub_1000A0510();
  if (v0 <= 0x3F)
  {
    sub_100035C88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100035C88()
{
  if (!qword_1000D8EF8)
  {
    sub_10009F470();
    v0 = sub_1000A0700();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D8EF8);
    }
  }
}

unint64_t sub_100035CF4()
{
  result = qword_1000D8F30;
  if (!qword_1000D8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F30);
  }

  return result;
}

unint64_t sub_100035D4C()
{
  result = qword_1000D8F38;
  if (!qword_1000D8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F38);
  }

  return result;
}

unint64_t sub_100035DA4()
{
  result = qword_1000D8F40;
  if (!qword_1000D8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F40);
  }

  return result;
}

uint64_t sub_100035DF8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB910;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100035E44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7955819;
  }

  else
  {
    v4 = 0x7865646E69;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7955819;
  }

  else
  {
    v6 = 0x7865646E69;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000A0BD0();
  }

  return v9 & 1;
}

Swift::Int sub_100035EE0()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100035F58()
{
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_100035FBC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100036030@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CB978;
  v8._object = v3;
  v5 = sub_1000A08F0(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100036090(uint64_t *a1@<X8>)
{
  v2 = 7955819;
  if (!*v1)
  {
    v2 = 0x7865646E69;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000360C4()
{
  if (*v0)
  {
    result = 7955819;
  }

  else
  {
    result = 0x7865646E69;
  }

  *v0;
  return result;
}

uint64_t sub_1000360F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CB978;
  v9._object = a2;
  v6 = sub_1000A08F0(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100036164(uint64_t a1)
{
  v2 = sub_100036378();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000361A0(uint64_t a1)
{
  v2 = sub_100036378();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KeySchema.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = a4;
  v7 = sub_1000017BC(&qword_1000D8F48, &qword_1000A94E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100036378();
  sub_1000A0CE0();
  LOBYTE(v16) = 0;
  sub_1000A0B60();
  if (!v4)
  {
    v16 = a3;
    v17 = v15;
    v18 = 1;
    sub_1000054CC(a3, v15);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_100036378()
{
  result = qword_1000D8F50;
  if (!qword_1000D8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F50);
  }

  return result;
}

uint64_t KeySchema.init(from:)(uint64_t *a1)
{
  result = sub_100036444(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1000363F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100036444(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_100036444(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D8F70, &unk_1000A9720);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_100036378();
  sub_1000A0CD0();
  if (!v1)
  {
    v10[16] = 0;
    v8 = sub_1000A0A00();
    v10[15] = 1;
    sub_100005424();
    sub_1000A0A20();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002308(a1);
  return v8;
}

__n128 sub_100036608(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003661C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100036670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeySchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KeySchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100036830()
{
  result = qword_1000D8F58;
  if (!qword_1000D8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F58);
  }

  return result;
}

unint64_t sub_100036888()
{
  result = qword_1000D8F60;
  if (!qword_1000D8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F60);
  }

  return result;
}

unint64_t sub_1000368E0()
{
  result = qword_1000D8F68;
  if (!qword_1000D8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F68);
  }

  return result;
}

uint64_t sub_100036934(char *a1, char *a2)
{
  if (qword_1000A9B50[*a1] == qword_1000A9B50[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10003699C()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A9B50[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000369F8()
{
  v1 = qword_1000A9B50[*v0];
  sub_1000A05B0();
}

Swift::Int sub_100036A38()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000A9B50[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100036A90@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100037438(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100036AF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100037438(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100036B1C(uint64_t a1)
{
  v2 = sub_100036D58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036B58(uint64_t a1)
{
  v2 = sub_100036D58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PeerTrustAckEnvelopeV1Schema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a5;
  v16[1] = a4;
  v9 = sub_1000017BC(&qword_1000D8F78, &qword_1000A9730);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100036D58();
  sub_1000A0CE0();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_1000A0B60();
    LOBYTE(v17) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_100036D58()
{
  result = qword_1000D8F80;
  if (!qword_1000D8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F80);
  }

  return result;
}

uint64_t PeerTrustAckEnvelopeV1Schema.init(from:)(uint64_t *a1)
{
  result = sub_100037484(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100036DD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100037484(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

Swift::Int sub_100036E28()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

Swift::Int sub_100036E9C()
{
  sub_1000A0C60();
  sub_1000A05B0();
  return sub_1000A0C90();
}

uint64_t sub_100036EF0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000CBA30;
  v7._object = v3;
  v5 = sub_1000A08F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100036F80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000CBA68;
  v8._object = a2;
  v6 = sub_1000A08F0(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100036FD8(uint64_t a1)
{
  v2 = sub_1000376C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037014(uint64_t a1)
{
  v2 = sub_1000376C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PeerTrustAckEnvelopeV1PayloadSchema.encode(to:)(void *a1)
{
  v2 = sub_1000017BC(&qword_1000D8F88, &qword_1000A9738);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000376C4();
  sub_1000A0CE0();
  sub_10009F370();
  sub_10002C418(&qword_1000D8808);
  sub_1000A0B80();
  return (*(v3 + 8))(v6, v2);
}

uint64_t PeerTrustAckEnvelopeV1PayloadSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_10009F370();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000017BC(&qword_1000D8F98, &qword_1000A9740);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PeerTrustAckEnvelopeV1PayloadSchema();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000376C4();
  v16 = v23;
  sub_1000A0CD0();
  if (!v16)
  {
    v17 = v21;
    sub_10002C418(&qword_1000D8850);
    sub_1000A0A20();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_100037764(v14, v20);
  }

  return sub_100002308(a1);
}

uint64_t sub_100037438(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CB9C8;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100037484(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D9060, &unk_1000A9B40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_100036D58();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v12 = 0;
    sub_100005424();
    sub_1000A0A20();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    sub_1000A0A00();
    LOBYTE(v11[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v7, v3);
    sub_1000054CC(v8, v10);
    sub_100002308(a1);
    sub_100005568(v8, v10);
  }

  return v8;
}

unint64_t sub_1000376C4()
{
  result = qword_1000D8F90;
  if (!qword_1000D8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D8F90);
  }

  return result;
}

uint64_t type metadata accessor for PeerTrustAckEnvelopeV1PayloadSchema()
{
  result = qword_1000D8FF8;
  if (!qword_1000D8FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerTrustAckEnvelopeV1PayloadSchema();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000377EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003786C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10009F370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_100037900()
{
  result = qword_1000D9030;
  if (!qword_1000D9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9030);
  }

  return result;
}

unint64_t sub_100037958()
{
  result = qword_1000D9038;
  if (!qword_1000D9038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9038);
  }

  return result;
}

unint64_t sub_1000379B0()
{
  result = qword_1000D9040;
  if (!qword_1000D9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9040);
  }

  return result;
}

unint64_t sub_100037A08()
{
  result = qword_1000D9048;
  if (!qword_1000D9048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9048);
  }

  return result;
}

unint64_t sub_100037A60()
{
  result = qword_1000D9050;
  if (!qword_1000D9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9050);
  }

  return result;
}

unint64_t sub_100037AB8()
{
  result = qword_1000D9058;
  if (!qword_1000D9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9058);
  }

  return result;
}

uint64_t sub_100037B0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x80000001000A20D0;
  if (v2 == 1)
  {
    v5 = 0x80000001000A20D0;
  }

  else
  {
    v3 = 0x6553646572616873;
    v5 = 0xEC00000074657263;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x696669746E656469;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000007265;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x6553646572616873;
    v4 = 0xEC00000074657263;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000A0BD0();
  }

  return v11 & 1;
}

Swift::Int sub_100037C18()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100037CCC()
{
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_100037D6C()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100037E1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100038C7C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100037E4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x80000001000A20D0;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x6553646572616873;
    v4 = 0xEC00000074657263;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100037EBC()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6553646572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_100037F28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100038C7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100037F50(uint64_t a1)
{
  v2 = sub_1000381FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037F8C(uint64_t a1)
{
  v2 = sub_1000381FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PeerTrustEnvelopeV1Schema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9068, &qword_1000A9B70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000381FC();
  sub_1000A0CE0();
  v17[15] = 0;
  sub_10009F370();
  sub_100038728(&qword_1000D8808, &type metadata accessor for UUID);
  sub_1000A0B80();
  if (!v2)
  {
    v11 = type metadata accessor for PeerTrustEnvelopeV1Schema();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v17[14] = 1;
    sub_1000A0B30();
    v15 = *(v11 + 24);
    v17[13] = 2;
    sub_10009FC00();
    sub_100038728(&qword_1000D9078, &type metadata accessor for PeerTrustSharedSecret);
    sub_1000A0B80();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1000381FC()
{
  result = qword_1000D9070;
  if (!qword_1000D9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9070);
  }

  return result;
}

uint64_t type metadata accessor for PeerTrustEnvelopeV1Schema()
{
  result = qword_1000D90E8;
  if (!qword_1000D90E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PeerTrustEnvelopeV1Schema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = sub_10009FC00();
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v30);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10009F370();
  v32 = *(v35 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v35);
  v33 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000017BC(&qword_1000D9080, &qword_1000A9B78);
  v31 = *(v34 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v34);
  v11 = &v26 - v10;
  v12 = type metadata accessor for PeerTrustEnvelopeV1Schema();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_1000381FC();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v27 = v15;
  v18 = v31;
  v17 = v32;
  v38 = 0;
  sub_100038728(&qword_1000D8850, &type metadata accessor for UUID);
  sub_1000A0A20();
  (*(v17 + 32))(v27, v33, v35);
  v37 = 1;
  v19 = sub_1000A09D0();
  v33 = v12;
  v20 = &v27[*(v12 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v36 = 2;
  sub_100038728(&qword_1000D9088, &type metadata accessor for PeerTrustSharedSecret);
  v22 = v6;
  v23 = v30;
  sub_1000A0A20();
  (*(v18 + 8))(v11, v34);
  v24 = v27;
  (*(v28 + 32))(&v27[*(v33 + 6)], v22, v23);
  sub_100038770(v24, v29);
  sub_100002308(a1);
  return sub_1000387D4(v24);
}

uint64_t sub_100038728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100038770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerTrustEnvelopeV1Schema();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000387D4(uint64_t a1)
{
  v2 = type metadata accessor for PeerTrustEnvelopeV1Schema();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100038874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009F370();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10009FC00();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000389B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10009F370();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_10009FC00();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100038AD8()
{
  result = sub_10009F370();
  if (v1 <= 0x3F)
  {
    result = sub_10009FC00();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100038B78()
{
  result = qword_1000D9128;
  if (!qword_1000D9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9128);
  }

  return result;
}

unint64_t sub_100038BD0()
{
  result = qword_1000D9130;
  if (!qword_1000D9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9130);
  }

  return result;
}

unint64_t sub_100038C28()
{
  result = qword_1000D9138;
  if (!qword_1000D9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9138);
  }

  return result;
}

uint64_t sub_100038C7C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBAA0;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100038CC8()
{
  result = qword_1000D9140;
  if (!qword_1000D9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9140);
  }

  return result;
}

uint64_t FindMyMessageSchema.payload.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100005568(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_100038E04(char *a1, char *a2)
{
  if (qword_1000AA070[*a1] == qword_1000AA070[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1000A0BD0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_100038E6C()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000AA070[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100038EC8()
{
  v1 = qword_1000AA070[*v0];
  sub_1000A05B0();
}

Swift::Int sub_100038F08()
{
  v1 = *v0;
  sub_1000A0C60();
  v2 = qword_1000AA070[v1];
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100038F60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003CC64(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100038FC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003CC64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100038FEC(uint64_t a1)
{
  v2 = sub_100039228();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100039028(uint64_t a1)
{
  v2 = sub_100039228();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FindMyMessageSchema.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a5;
  v16[1] = a4;
  v9 = sub_1000017BC(&qword_1000D9148, &qword_1000A9D40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100039228();
  sub_1000A0CE0();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  sub_1000054CC(a2, a3);
  sub_100006804();
  sub_1000A0B80();
  sub_100005568(v17, v18);
  if (!v5)
  {
    LOBYTE(v17) = 1;
    sub_1000A0B60();
    LOBYTE(v17) = 2;
    sub_1000A0B60();
  }

  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_100039228()
{
  result = qword_1000D9150;
  if (!qword_1000D9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9150);
  }

  return result;
}

uint64_t FindMyMessageSchema.init(from:)(uint64_t *a1)
{
  result = sub_10003CCB0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1000392A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10003CCB0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000392F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v480 = a3;
  v513 = a1;
  v514 = a2;
  v492 = a4;
  v497 = sub_1000A0310();
  v498 = *(v497 - 8);
  v4 = *(v498 + 64);
  __chkstk_darwin(v497);
  v487 = &v378 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v496 = sub_1000A00C0();
  v509 = *(v496 - 8);
  v6 = *(v509 + 64);
  __chkstk_darwin(v496);
  v486 = &v378 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v495 = sub_10009FDC0();
  v506 = *(v495 - 8);
  v8 = *(v506 + 64);
  __chkstk_darwin(v495);
  v485 = &v378 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v508 = sub_10009FE00();
  v505 = *(v508 - 8);
  v10 = *(v505 + 64);
  __chkstk_darwin(v508);
  v484 = &v378 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v502 = sub_1000A0040();
  v510 = *(v502 - 8);
  v12 = *(v510 + 64);
  __chkstk_darwin(v502);
  v483 = &v378 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v501 = sub_10009FFD0();
  v494 = *(v501 - 8);
  v14 = *(v494 + 64);
  __chkstk_darwin(v501);
  v482 = &v378 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v500 = sub_10009FD80();
  v493 = *(v500 - 8);
  v16 = *(v493 + 64);
  __chkstk_darwin(v500);
  v481 = &v378 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v507 = sub_10009FB90();
  v499 = *(v507 - 8);
  v18 = *(v499 + 64);
  __chkstk_darwin(v507);
  v479 = &v378 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v490 = sub_10009F9D0();
  v503 = *(v490 - 8);
  v20 = *(v503 + 64);
  __chkstk_darwin(v490);
  v491 = &v378 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000017BC(&qword_1000D9180, &qword_1000AA018);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v444 = &v378 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v443 = &v378 - v27;
  v28 = __chkstk_darwin(v26);
  v442 = &v378 - v29;
  v30 = __chkstk_darwin(v28);
  v441 = &v378 - v31;
  v32 = __chkstk_darwin(v30);
  v440 = &v378 - v33;
  v34 = __chkstk_darwin(v32);
  v439 = &v378 - v35;
  v36 = __chkstk_darwin(v34);
  v438 = &v378 - v37;
  v38 = __chkstk_darwin(v36);
  v437 = &v378 - v39;
  __chkstk_darwin(v38);
  v436 = &v378 - v40;
  v41 = sub_1000017BC(&qword_1000D9188, &qword_1000AA020);
  v42 = *(*(v41 - 8) + 64);
  v43 = __chkstk_darwin(v41 - 8);
  v435 = &v378 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v434 = &v378 - v46;
  v47 = __chkstk_darwin(v45);
  v433 = &v378 - v48;
  v49 = __chkstk_darwin(v47);
  v432 = &v378 - v50;
  v51 = __chkstk_darwin(v49);
  v431 = &v378 - v52;
  v53 = __chkstk_darwin(v51);
  v430 = &v378 - v54;
  v55 = __chkstk_darwin(v53);
  v429 = &v378 - v56;
  v57 = __chkstk_darwin(v55);
  v428 = &v378 - v58;
  __chkstk_darwin(v57);
  v427 = &v378 - v59;
  v60 = sub_1000017BC(&qword_1000D9190, &qword_1000AA028);
  v61 = *(*(v60 - 8) + 64);
  v62 = __chkstk_darwin(v60 - 8);
  v426 = &v378 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __chkstk_darwin(v62);
  v425 = &v378 - v65;
  v66 = __chkstk_darwin(v64);
  v424 = &v378 - v67;
  v68 = __chkstk_darwin(v66);
  v423 = &v378 - v69;
  v70 = __chkstk_darwin(v68);
  v422 = &v378 - v71;
  v72 = __chkstk_darwin(v70);
  v421 = &v378 - v73;
  v74 = __chkstk_darwin(v72);
  v420 = &v378 - v75;
  v76 = __chkstk_darwin(v74);
  v419 = &v378 - v77;
  __chkstk_darwin(v76);
  v418 = &v378 - v78;
  v79 = sub_1000017BC(&qword_1000D9198, &qword_1000AA030);
  v80 = *(*(v79 - 8) + 64);
  v81 = __chkstk_darwin(v79 - 8);
  v417 = &v378 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __chkstk_darwin(v81);
  v416 = &v378 - v84;
  v85 = __chkstk_darwin(v83);
  v415 = &v378 - v86;
  v87 = __chkstk_darwin(v85);
  v414 = &v378 - v88;
  v89 = __chkstk_darwin(v87);
  v413 = &v378 - v90;
  v91 = __chkstk_darwin(v89);
  v412 = &v378 - v92;
  v93 = __chkstk_darwin(v91);
  v411 = &v378 - v94;
  v95 = __chkstk_darwin(v93);
  v410 = &v378 - v96;
  __chkstk_darwin(v95);
  v409 = &v378 - v97;
  v98 = sub_1000017BC(&qword_1000D91A0, &qword_1000AA038);
  v99 = *(*(v98 - 8) + 64);
  v100 = __chkstk_darwin(v98 - 8);
  v408 = &v378 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __chkstk_darwin(v100);
  v407 = &v378 - v103;
  v104 = __chkstk_darwin(v102);
  v406 = &v378 - v105;
  v106 = __chkstk_darwin(v104);
  v405 = &v378 - v107;
  v108 = __chkstk_darwin(v106);
  v404 = &v378 - v109;
  v110 = __chkstk_darwin(v108);
  v403 = &v378 - v111;
  v112 = __chkstk_darwin(v110);
  v402 = &v378 - v113;
  v114 = __chkstk_darwin(v112);
  v401 = &v378 - v115;
  __chkstk_darwin(v114);
  v400 = &v378 - v116;
  v117 = sub_1000017BC(&qword_1000D91A8, &qword_1000AA040);
  v118 = *(*(v117 - 8) + 64);
  v119 = __chkstk_darwin(v117 - 8);
  v478 = &v378 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __chkstk_darwin(v119);
  v477 = &v378 - v122;
  v123 = __chkstk_darwin(v121);
  v476 = &v378 - v124;
  v125 = __chkstk_darwin(v123);
  v475 = &v378 - v126;
  v127 = __chkstk_darwin(v125);
  v474 = &v378 - v128;
  v129 = __chkstk_darwin(v127);
  v399 = &v378 - v130;
  v131 = __chkstk_darwin(v129);
  v398 = &v378 - v132;
  v133 = __chkstk_darwin(v131);
  v397 = &v378 - v134;
  __chkstk_darwin(v133);
  v473 = &v378 - v135;
  v136 = sub_1000017BC(&qword_1000D91B0, &qword_1000AA048);
  v137 = *(*(v136 - 8) + 64);
  v138 = __chkstk_darwin(v136 - 8);
  v472 = &v378 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __chkstk_darwin(v138);
  v468 = &v378 - v141;
  v142 = __chkstk_darwin(v140);
  v393 = &v378 - v143;
  v144 = __chkstk_darwin(v142);
  v396 = &v378 - v145;
  v146 = __chkstk_darwin(v144);
  v471 = &v378 - v147;
  v148 = __chkstk_darwin(v146);
  v470 = &v378 - v149;
  v150 = __chkstk_darwin(v148);
  v395 = &v378 - v151;
  v152 = __chkstk_darwin(v150);
  v469 = &v378 - v153;
  __chkstk_darwin(v152);
  v394 = &v378 - v154;
  v155 = sub_1000017BC(&qword_1000D91B8, &qword_1000AA050);
  v156 = *(*(v155 - 8) + 64);
  v157 = __chkstk_darwin(v155 - 8);
  v467 = &v378 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __chkstk_darwin(v157);
  v460 = &v378 - v160;
  v161 = __chkstk_darwin(v159);
  v462 = &v378 - v162;
  v163 = __chkstk_darwin(v161);
  v466 = &v378 - v164;
  v165 = __chkstk_darwin(v163);
  v465 = &v378 - v166;
  v167 = __chkstk_darwin(v165);
  v464 = &v378 - v168;
  v169 = __chkstk_darwin(v167);
  v463 = &v378 - v170;
  v171 = __chkstk_darwin(v169);
  v392 = &v378 - v172;
  __chkstk_darwin(v171);
  v461 = &v378 - v173;
  v174 = sub_1000017BC(&qword_1000D91C0, &qword_1000AA058);
  v175 = *(*(v174 - 8) + 64);
  v176 = __chkstk_darwin(v174 - 8);
  v459 = &v378 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __chkstk_darwin(v176);
  v457 = &v378 - v179;
  v180 = __chkstk_darwin(v178);
  v458 = &v378 - v181;
  v182 = __chkstk_darwin(v180);
  v454 = &v378 - v183;
  v184 = __chkstk_darwin(v182);
  v455 = &v378 - v185;
  v186 = __chkstk_darwin(v184);
  v391 = &v378 - v187;
  v188 = __chkstk_darwin(v186);
  v456 = &v378 - v189;
  v190 = __chkstk_darwin(v188);
  v451 = &v378 - v191;
  __chkstk_darwin(v190);
  v511 = &v378 - v192;
  v193 = sub_10009F560();
  v194 = *(*(v193 - 8) + 64);
  v195 = __chkstk_darwin(v193 - 8);
  v453 = &v378 - ((v196 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __chkstk_darwin(v195);
  v452 = &v378 - v198;
  v199 = __chkstk_darwin(v197);
  v512 = &v378 - v200;
  v201 = __chkstk_darwin(v199);
  v450 = &v378 - v202;
  v203 = __chkstk_darwin(v201);
  v449 = &v378 - v204;
  v205 = __chkstk_darwin(v203);
  v448 = &v378 - v206;
  v207 = __chkstk_darwin(v205);
  v447 = &v378 - v208;
  v209 = __chkstk_darwin(v207);
  v446 = &v378 - v210;
  __chkstk_darwin(v209);
  v445 = &v378 - v211;
  v488 = sub_10009F580();
  v489 = *(v488 - 8);
  v212 = *(v489 + 64);
  v213 = __chkstk_darwin(v488);
  v390 = &v378 - ((v214 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = __chkstk_darwin(v213);
  v389 = &v378 - v216;
  v217 = __chkstk_darwin(v215);
  v388 = &v378 - v218;
  v219 = __chkstk_darwin(v217);
  v387 = &v378 - v220;
  v221 = __chkstk_darwin(v219);
  v386 = &v378 - v222;
  v223 = __chkstk_darwin(v221);
  v225 = &v378 - v224;
  v226 = __chkstk_darwin(v223);
  v228 = &v378 - v227;
  v229 = __chkstk_darwin(v226);
  v231 = &v378 - v230;
  __chkstk_darwin(v229);
  v233 = &v378 - v232;
  v234 = sub_10009FC90();
  v504 = *(v234 - 8);
  v235 = *(v504 + 64);
  __chkstk_darwin(v234);
  v237 = &v378 - ((v236 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_10009F270();
  v239 = *(v238 + 48);
  v240 = *(v238 + 52);
  swift_allocObject();
  v241 = sub_10009F260();
  v242 = *(v238 + 48);
  v243 = *(v238 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_1000017BC(&qword_1000D8370, &unk_1000AA060);
  sub_100005350();
  v244 = v518;
  sub_10009F250();
  v518 = v244;
  if (v244)
  {
  }

  v384 = v237;
  v381 = v233;
  v382 = v231;
  v383 = v228;
  v513 = v225;
  v245 = v511;
  v385 = v234;
  v514 = v241;

  v246 = v515;
  v247 = sub_10009FD00();
  if (!*(v246 + 16))
  {

    goto LABEL_8;
  }

  v249 = v518;
  v250 = sub_10000217C(v247, v248);
  v252 = v251;

  if ((v252 & 1) == 0)
  {
LABEL_8:

    sub_1000A0530();
    sub_10003D0EC(&qword_1000D83C0, &type metadata accessor for Explosion);
    v256 = swift_allocError();
    sub_1000A0520();
    v518 = v256;
    swift_willThrow();
  }

  v253 = (*(v246 + 56) + 16 * v250);
  v255 = *v253;
  v254 = v253[1];
  sub_1000054CC(*v253, v254);

  sub_10003D134();
  sub_10009F250();
  v518 = v249;
  if (v249)
  {
    sub_100005568(v255, v254);
  }

  v379 = v255;
  v259 = v515;
  v258 = v516;
  v260 = sub_10003CC50(v517);
  v380 = v254;
  if (v260 <= 4)
  {
    if (v260 > 1)
    {
      v261 = v503;
      v262 = v510;
      if (v260 == 2)
      {
        v301 = v481;
        v264 = v379;
        v265 = v380;
        v302 = v518;
        sub_1000866E0(v380, v481);
        v518 = v302;
        if (!v302)
        {
          v378 = v259;
          v480 = v258;
          sub_10009FD50();
          v513 = sub_10009FD60();
          (*(v504 + 56))(v456, 1, 1, v385);
          (*(v499 + 56))(v463, 1, 1, v507);
          v303 = v493;
          v304 = v395;
          v305 = v500;
          (*(v493 + 16))(v395, v301, v500);
          (*(v303 + 56))(v304, 0, 1, v305);
          (*(v494 + 56))(v398, 1, 1, v501);
          (*(v262 + 56))(v402, 1, 1, v502);
          (*(v505 + 56))(v411, 1, 1, v508);
          (*(v506 + 56))(v420, 1, 1, v495);
          (*(v509 + 56))(v429, 1, 1, v496);
          (*(v498 + 56))(v438, 1, 1, v497);
          v306 = v383;
          v307 = v518;
          sub_10009F570();
          v518 = v307;
          if (!v307)
          {
            v349 = v489;
            v350 = v491;
            v351 = v488;
            (*(v489 + 16))(v491, v306, v488);
            (*(v503 + 104))(v350, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v490);
            sub_10009FC10();
            sub_100005568(v379, v380);

            sub_100005568(v378, v480);
            (*(v349 + 8))(v306, v351);
            return (*(v303 + 8))(v301, v500);
          }

          (*(v303 + 8))(v301, v500);
          goto LABEL_58;
        }

        goto LABEL_38;
      }

      if (v260 == 3)
      {
        v263 = v482;
        v264 = v379;
        v265 = v380;
        v266 = v518;
        sub_100086020(v380, v482);
        v267 = v506;
        v518 = v266;
        if (!v266)
        {
          v378 = v259;
          v480 = v258;
          sub_10009FFA0();
          v512 = sub_10009FFB0();
          (*(v504 + 56))(v391, 1, 1, v385);
          (*(v499 + 56))(v464, 1, 1, v507);
          (*(v493 + 56))(v470, 1, 1, v500);
          v268 = v494;
          v269 = v399;
          v270 = v501;
          (*(v494 + 16))(v399, v263, v501);
          (*(v268 + 56))(v269, 0, 1, v270);
          (*(v262 + 56))(v403, 1, 1, v502);
          (*(v505 + 56))(v412, 1, 1, v508);
          (*(v267 + 56))(v421, 1, 1, v495);
          (*(v509 + 56))(v430, 1, 1, v496);
          (*(v498 + 56))(v439, 1, 1, v497);
          v271 = v513;
          v272 = v518;
          sub_10009F570();
          v518 = v272;
          if (!v272)
          {
            v357 = v489;
            v358 = v491;
            v359 = v488;
            (*(v489 + 16))(v491, v271, v488);
            (*(v503 + 104))(v358, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v490);
            sub_10009FC10();
            sub_100005568(v379, v380);

            sub_100005568(v378, v480);
            (*(v357 + 8))(v271, v359);
            return (*(v268 + 8))(v263, v501);
          }

          (*(v268 + 8))(v263, v501);
          goto LABEL_58;
        }

        goto LABEL_38;
      }

      v311 = v483;
      v264 = v379;
      v265 = v380;
      v312 = v518;
      sub_100086DA0(v380, v483);
      v313 = v506;
      v518 = v312;
      if (v312)
      {
LABEL_38:
        v314 = v259;
LABEL_42:
        sub_100005568(v314, v258);
        v290 = v264;
        goto LABEL_45;
      }

      v378 = v259;
      v480 = v258;
      sub_1000A0010();
      v513 = sub_1000A0020();
      (*(v504 + 56))(v455, 1, 1, v385);
      (*(v499 + 56))(v465, 1, 1, v507);
      (*(v493 + 56))(v471, 1, 1, v500);
      (*(v494 + 56))(v474, 1, 1, v501);
      v330 = v404;
      v331 = v502;
      (*(v262 + 16))(v404, v311, v502);
      (*(v262 + 56))(v330, 0, 1, v331);
      (*(v505 + 56))(v413, 1, 1, v508);
      (*(v313 + 56))(v422, 1, 1, v495);
      (*(v509 + 56))(v431, 1, 1, v496);
      (*(v498 + 56))(v440, 1, 1, v497);
      v332 = v386;
      v333 = v518;
      sub_10009F570();
      v518 = v333;
      if (!v333)
      {
        v363 = v489;
        v364 = v491;
        v365 = v488;
        (*(v489 + 16))(v491, v332, v488);
        (*(v261 + 104))(v364, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v490);
        sub_10009FC10();
        sub_100005568(v379, v380);

        sub_100005568(v378, v480);
        (*(v363 + 8))(v332, v365);
        return (*(v262 + 8))(v311, v502);
      }

      (*(v262 + 8))(v311, v502);
LABEL_58:
      sub_100005568(v379, v380);

      return sub_100005568(v378, v480);
    }

    v378 = v259;
    if (v260)
    {
      v318 = v479;
      v264 = v379;
      v265 = v380;
      v319 = v518;
      sub_100087460(v379, v380, v479);
      v320 = v509;
      v518 = v319;
      v321 = v504;
      if (v319)
      {
        v314 = v378;
        goto LABEL_42;
      }

      v480 = v258;
      sub_10009FB60();
      v513 = sub_10009FB70();
      (*(v321 + 56))(v451, 1, 1, v385);
      v337 = v499;
      v338 = v392;
      v339 = v507;
      (*(v499 + 16))(v392, v318, v507);
      (*(v337 + 56))(v338, 0, 1, v339);
      (*(v493 + 56))(v469, 1, 1, v500);
      (*(v494 + 56))(v397, 1, 1, v501);
      (*(v510 + 56))(v401, 1, 1, v502);
      (*(v505 + 56))(v410, 1, 1, v508);
      (*(v506 + 56))(v419, 1, 1, v495);
      (*(v320 + 56))(v428, 1, 1, v496);
      (*(v498 + 56))(v437, 1, 1, v497);
      v340 = v382;
      v341 = v518;
      sub_10009F570();
      v518 = v341;
      if (!v341)
      {
        v372 = v489;
        v373 = v491;
        v374 = v488;
        (*(v489 + 16))(v491, v340, v488);
        (*(v503 + 104))(v373, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v490);
        sub_10009FC10();
        sub_100005568(v379, v380);

        sub_100005568(v378, v480);
        (*(v372 + 8))(v340, v374);
        return (*(v499 + 8))(v318, v507);
      }

      (*(v499 + 8))(v318, v507);
      goto LABEL_58;
    }

    v285 = v384;
    v286 = v379;
    v265 = v380;
    v287 = v518;
    sub_1000899A8(v380, v384);
    v288 = v509;
    v518 = v287;
    v289 = v504;
    if (!v287)
    {
      v480 = v258;
      sub_10009FC60();
      v513 = sub_10009FC70();
      v334 = v385;
      (*(v289 + 16))(v245, v285, v385);
      (*(v289 + 56))(v245, 0, 1, v334);
      (*(v499 + 56))(v461, 1, 1, v507);
      (*(v493 + 56))(v394, 1, 1, v500);
      (*(v494 + 56))(v473, 1, 1, v501);
      (*(v510 + 56))(v400, 1, 1, v502);
      (*(v505 + 56))(v409, 1, 1, v508);
      (*(v506 + 56))(v418, 1, 1, v495);
      (*(v288 + 56))(v427, 1, 1, v496);
      (*(v498 + 56))(v436, 1, 1, v497);
      v335 = v381;
      v336 = v518;
      sub_10009F570();
      v518 = v336;
      if (!v336)
      {
        v369 = v489;
        v370 = v491;
        v371 = v488;
        (*(v489 + 16))(v491, v335, v488);
        (*(v503 + 104))(v370, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v490);
        sub_10009FC10();
        sub_100005568(v379, v380);

        sub_100005568(v378, v480);
        (*(v369 + 8))(v335, v371);
        return (*(v289 + 8))(v384, v385);
      }

      (*(v289 + 8))(v384, v385);
      goto LABEL_58;
    }

    sub_100005568(v378, v258);
    v290 = v286;
LABEL_45:
    v317 = v265;
    goto LABEL_46;
  }

  v378 = v259;
  v273 = v509;
  if (v260 <= 6)
  {
    v291 = v510;
    v292 = v385;
    if (v260 == 5)
    {
      v293 = v484;
      v323 = v379;
      v265 = v380;
      v294 = v518;
      sub_100085A68(v380, v484);
      v295 = v505;
      v296 = v507;
      v518 = v294;
      if (!v294)
      {
        v480 = v258;
        sub_10009FDD0();
        v513 = sub_10009FDE0();
        (*(v504 + 56))(v454, 1, 1, v292);
        (*(v499 + 56))(v466, 1, 1, v296);
        (*(v493 + 56))(v396, 1, 1, v500);
        (*(v494 + 56))(v475, 1, 1, v501);
        (*(v291 + 56))(v405, 1, 1, v502);
        v297 = v414;
        v298 = v508;
        (*(v295 + 16))(v414, v293, v508);
        (*(v295 + 56))(v297, 0, 1, v298);
        (*(v506 + 56))(v423, 1, 1, v495);
        (*(v273 + 56))(v432, 1, 1, v496);
        (*(v498 + 56))(v441, 1, 1, v497);
        v299 = v387;
        v300 = v518;
        sub_10009F570();
        v518 = v300;
        if (!v300)
        {
          v366 = v489;
          v367 = v491;
          v368 = v488;
          (*(v489 + 16))(v491, v299, v488);
          (*(v503 + 104))(v367, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v490);
          sub_10009FC10();
          sub_100005568(v379, v380);

          sub_100005568(v378, v480);
          (*(v366 + 8))(v299, v368);
          return (*(v295 + 8))(v293, v298);
        }

        (*(v295 + 8))(v293, v298);
        goto LABEL_58;
      }
    }

    else
    {
      v322 = v485;
      v323 = v379;
      v265 = v380;
      v324 = v518;
      sub_1000853D8(v380, v485);
      v325 = v507;
      v518 = v324;
      if (!v324)
      {
        v480 = v258;
        v342 = v505;
        sub_10009FD90();
        v513 = sub_10009FDA0();
        (*(v504 + 56))(v458, 1, 1, v292);
        (*(v499 + 56))(v462, 1, 1, v325);
        (*(v493 + 56))(v393, 1, 1, v500);
        (*(v494 + 56))(v476, 1, 1, v501);
        (*(v291 + 56))(v406, 1, 1, v502);
        (*(v342 + 56))(v415, 1, 1, v508);
        v343 = v506;
        v344 = v424;
        v345 = v495;
        (*(v506 + 16))(v424, v322, v495);
        (*(v343 + 56))(v344, 0, 1, v345);
        (*(v273 + 56))(v433, 1, 1, v496);
        (*(v498 + 56))(v442, 1, 1, v497);
        v346 = v388;
        v347 = v518;
        sub_10009F570();
        v348 = v322;
        v518 = v347;
        if (!v347)
        {
          v375 = v489;
          v376 = v491;
          v377 = v488;
          (*(v489 + 16))(v491, v346, v488);
          (*(v503 + 104))(v376, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v490);
          sub_10009FC10();
          sub_100005568(v379, v380);

          sub_100005568(v378, v480);
          (*(v375 + 8))(v346, v377);
          return (*(v343 + 8))(v348, v345);
        }

        (*(v343 + 8))(v322, v345);
        goto LABEL_58;
      }
    }

    sub_100005568(v378, v258);
    v290 = v323;
    goto LABEL_45;
  }

  v274 = v510;
  v275 = v385;
  if (v260 == 7)
  {
    v308 = v486;
    v278 = v379;
    v265 = v380;
    v309 = v518;
    sub_100088D30(v380, v486);
    v310 = v508;
    v518 = v309;
    if (!v309)
    {
      v480 = v258;
      sub_1000A0090();
      v513 = sub_1000A00A0();
      (*(v504 + 56))(v457, 1, 1, v275);
      (*(v499 + 56))(v460, 1, 1, v507);
      (*(v493 + 56))(v468, 1, 1, v500);
      (*(v494 + 56))(v477, 1, 1, v501);
      (*(v274 + 56))(v407, 1, 1, v502);
      (*(v505 + 56))(v416, 1, 1, v310);
      (*(v506 + 56))(v425, 1, 1, v495);
      v326 = v434;
      v327 = v496;
      (*(v273 + 16))(v434, v308, v496);
      (*(v273 + 56))(v326, 0, 1, v327);
      (*(v498 + 56))(v443, 1, 1, v497);
      v328 = v389;
      v329 = v518;
      sub_10009F570();
      v518 = v329;
      if (!v329)
      {
        v352 = v308;
        v353 = v489;
        v354 = v491;
        v355 = v273;
        v356 = v488;
        (*(v489 + 16))(v491, v328, v488);
        (*(v503 + 104))(v354, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v490);
        sub_10009FC10();
        sub_100005568(v379, v380);

        sub_100005568(v378, v480);
        (*(v353 + 8))(v328, v356);
        return (*(v355 + 8))(v352, v327);
      }

      (*(v273 + 8))(v308, v327);
      goto LABEL_58;
    }

LABEL_36:
    sub_100005568(v378, v258);
    v290 = v278;
    goto LABEL_45;
  }

  v276 = v508;
  if (v260 != 8)
  {
    sub_1000021F4();
    v315 = swift_allocError();
    *v316 = v480;
    *(v316 + 8) = 0;
    *(v316 + 16) = 0;
    v518 = v315;
    swift_willThrow();
    sub_100005568(v378, v258);
    v290 = v379;
    v317 = v380;
LABEL_46:
    sub_100005568(v290, v317);
  }

  v277 = v487;
  v278 = v379;
  v265 = v380;
  v279 = v518;
  sub_1000892E8(v380, v487);
  v518 = v279;
  if (v279)
  {
    goto LABEL_36;
  }

  v480 = v258;
  sub_1000A02E0();
  v513 = sub_1000A02F0();
  (*(v504 + 56))(v459, 1, 1, v275);
  (*(v499 + 56))(v467, 1, 1, v507);
  (*(v493 + 56))(v472, 1, 1, v500);
  (*(v494 + 56))(v478, 1, 1, v501);
  (*(v274 + 56))(v408, 1, 1, v502);
  (*(v505 + 56))(v417, 1, 1, v276);
  (*(v506 + 56))(v426, 1, 1, v495);
  (*(v273 + 56))(v435, 1, 1, v496);
  v280 = v498;
  v281 = v444;
  v282 = v497;
  (*(v498 + 16))(v444, v277, v497);
  (*(v280 + 56))(v281, 0, 1, v282);
  v283 = v390;
  v284 = v518;
  sub_10009F570();
  v518 = v284;
  if (v284)
  {
    (*(v280 + 8))(v277, v282);
    goto LABEL_58;
  }

  v360 = v489;
  v361 = v491;
  v362 = v488;
  (*(v489 + 16))(v491, v283, v488);
  (*(v503 + 104))(v361, enum case for IDSClientMessageType.findMyItemSharingMessage(_:), v490);
  sub_10009FC10();
  sub_100005568(v379, v380);

  sub_100005568(v378, v480);
  (*(v360 + 8))(v283, v362);
  return (*(v280 + 8))(v277, v282);
}

uint64_t sub_10003CC50(uint64_t a1)
{
  if ((a1 - 1) >= 9)
  {
    return 9;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_10003CC64(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBB08;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10003CCB0(uint64_t *a1)
{
  v3 = sub_1000017BC(&qword_1000D9170, &unk_1000A9F90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[3];
  sub_1000022C4(a1, v8);
  sub_100039228();
  sub_1000A0CD0();
  if (v1)
  {
    sub_100002308(a1);
  }

  else
  {
    v12 = 0;
    sub_100005424();
    sub_1000A0A20();
    v8 = v11[0];
    v10 = v11[1];
    LOBYTE(v11[0]) = 1;
    sub_1000A0A00();
    LOBYTE(v11[0]) = 2;
    sub_1000A0A00();
    (*(v4 + 8))(v7, v3);
    sub_1000054CC(v8, v10);
    sub_100002308(a1);
    sub_100005568(v8, v10);
  }

  return v8;
}

unint64_t sub_10003CF14()
{
  result = qword_1000D9158;
  if (!qword_1000D9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9158);
  }

  return result;
}

unint64_t sub_10003CF6C()
{
  result = qword_1000D9160;
  if (!qword_1000D9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9160);
  }

  return result;
}

unint64_t sub_10003CFC4()
{
  result = qword_1000D9168;
  if (!qword_1000D9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9168);
  }

  return result;
}

unint64_t sub_10003D070(uint64_t a1)
{
  result = sub_10003D098();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003D098()
{
  result = qword_1000D9178;
  if (!qword_1000D9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9178);
  }

  return result;
}

uint64_t sub_10003D0EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003D134()
{
  result = qword_1000D91C8;
  if (!qword_1000D91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D91C8);
  }

  return result;
}

Swift::Int sub_10003D194()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10003D260()
{
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_10003D318()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10003D3E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003D854(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10003D410(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 12400;
  v5 = 0x80000001000A1310;
  v6 = 0xD000000000000015;
  v7 = 0xE100000000000000;
  v8 = 118;
  if (v2 != 3)
  {
    v8 = 0x64726F6365526B63;
    v7 = 0xEC000000656D614ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 12656;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10003D498()
{
  v1 = *v0;
  v2 = 12400;
  v3 = 0xD000000000000015;
  v4 = 118;
  if (v1 != 3)
  {
    v4 = 0x64726F6365526B63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 12656;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003D51C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003D854(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003D544(uint64_t a1)
{
  v2 = sub_10003D79C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003D580(uint64_t a1)
{
  v2 = sub_10003D79C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FMFShareInvitationSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D91D0, &qword_1000AA090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10003D79C();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_1000A0B30();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v22[14] = 1;
  sub_1000A0B30();
  v15 = v3[4];
  v16 = v3[5];
  v22[13] = 2;
  sub_1000A0B30();
  v17 = v3[6];
  v18 = v3[7];
  v22[12] = 3;
  sub_1000A0B30();
  v20 = v3[8];
  v21 = v3[9];
  v22[11] = 4;
  sub_1000A0B30();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10003D79C()
{
  result = qword_1000D91D8;
  if (!qword_1000D91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D91D8);
  }

  return result;
}

__n128 FMFShareInvitationSchema.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003D8A0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_10003D854(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBB70;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10003D8A0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D91F8, &qword_1000AA298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10003D79C();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_1000A09D0();
  v32 = v12;
  LOBYTE(v38[0]) = 1;
  v13 = sub_1000A09D0();
  v31 = v14;
  v28 = v13;
  LOBYTE(v38[0]) = 2;
  v27 = sub_1000A09D0();
  v30 = v15;
  LOBYTE(v38[0]) = 3;
  v26 = sub_1000A09D0();
  v29 = v16;
  v39 = 4;
  v17 = sub_1000A09D0();
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  *&v33 = v11;
  *(&v33 + 1) = v32;
  v20 = v31;
  *&v34 = v28;
  *(&v34 + 1) = v31;
  v21 = v30;
  *&v35 = v27;
  *(&v35 + 1) = v30;
  v22 = v29;
  *&v36 = v26;
  *(&v36 + 1) = v29;
  *&v37 = v17;
  *(&v37 + 1) = v19;
  sub_10003DE58(&v33, v38);
  sub_100002308(a1);
  v38[0] = v11;
  v38[1] = v32;
  v38[2] = v28;
  v38[3] = v20;
  v38[4] = v27;
  v38[5] = v21;
  v38[6] = v26;
  v38[7] = v22;
  v38[8] = v17;
  v38[9] = v19;
  result = sub_10003DE90(v38);
  v24 = v36;
  a2[2] = v35;
  a2[3] = v24;
  a2[4] = v37;
  v25 = v34;
  *a2 = v33;
  a2[1] = v25;
  return result;
}

__n128 sub_10003DC78(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10003DC94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10003DCDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003DD54()
{
  result = qword_1000D91E0;
  if (!qword_1000D91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D91E0);
  }

  return result;
}

unint64_t sub_10003DDAC()
{
  result = qword_1000D91E8;
  if (!qword_1000D91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D91E8);
  }

  return result;
}

unint64_t sub_10003DE04()
{
  result = qword_1000D91F0;
  if (!qword_1000D91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D91F0);
  }

  return result;
}

uint64_t IDSSampleProtobufMessageSchema.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a2;
  v16[1] = a3;
  v4 = sub_10009FE20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000017BC(&qword_1000D9200, &qword_1000AA2A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v16 - v12;
  v14 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10003E0B4();
  sub_1000A0CE0();
  (*(v5 + 104))(v8, enum case for IDSSampleProtobufMessage.IDSSampleProtobufMessageKey.name(_:), v4);
  sub_1000A0A80();
  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_10003E0B4()
{
  result = qword_1000D9208;
  if (!qword_1000D9208)
  {
    sub_10009FE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9208);
  }

  return result;
}

uint64_t sub_10003E124@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10003E34C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10003E150(void *a1)
{
  v3 = sub_10009FE20();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000017BC(&qword_1000D9200, &qword_1000AA2A0);
  v16 = *(v8 - 8);
  v9 = *(v16 + 64);
  __chkstk_darwin(v8);
  v11 = v15 - v10;
  v12 = *v1;
  v15[1] = v1[1];
  v15[2] = v12;
  v13 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10003E0B4();
  sub_1000A0CE0();
  (*(v4 + 104))(v7, enum case for IDSSampleProtobufMessage.IDSSampleProtobufMessageKey.name(_:), v3);
  sub_1000A0A80();
  (*(v4 + 8))(v7, v3);
  return (*(v16 + 8))(v11, v8);
}

uint64_t sub_10003E34C(uint64_t *a1)
{
  v3 = sub_10009FE20();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000017BC(&qword_1000D9210, &unk_1000AA340);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  v11 = a1[4];
  v12 = sub_1000022C4(a1, a1[3]);
  sub_10003E0B4();
  sub_1000A0CD0();
  if (!v1)
  {
    v13 = v17;
    (*(v17 + 104))(v6, enum case for IDSSampleProtobufMessage.IDSSampleProtobufMessageKey.name(_:), v3);
    v12 = sub_1000A0920();
    (*(v13 + 8))(v6, v3);
    (*(v16 + 8))(v10, v7);
  }

  sub_100002308(a1);
  return v12;
}

uint64_t sub_10003E5A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10003E604(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10003E6BC@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_10009F9D0();
  v39 = *(v1 - 8);
  v40 = v1;
  v2 = *(v39 + 64);
  __chkstk_darwin(v1);
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10009F540();
  v38 = *(v36 - 8);
  v4 = *(v38 + 64);
  __chkstk_darwin(v36);
  v43 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10009F520();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v34 - v11;
  v12 = sub_10009F910();
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = sub_10009F2F0();
  v21 = v20;
  v22 = sub_10009F270();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_10003EC18(&qword_1000D9220, &type metadata accessor for NameAndPhotoSchema);
  v25 = v46;
  sub_10009F250();
  if (v25)
  {

    return sub_100005568(v19, v21);
  }

  else
  {
    v46 = v21;
    v26 = v43;
    (*(v45 + 16))(v16, v18, v12);
    sub_10009F510();
    (*(v42 + 16))(v10, v44, v6);
    v28 = v26;
    sub_10009F530();
    v29 = v19;
    v30 = v38;
    v31 = *(v38 + 16);
    v35 = v6;
    v32 = v36;
    v33 = v37;
    v31(v37, v28, v36);
    (*(v39 + 104))(v33, enum case for IDSClientMessageType.nameAndPhoto(_:), v40);
    sub_10009FC10();

    sub_100005568(v29, v46);
    (*(v30 + 8))(v28, v32);
    (*(v42 + 8))(v44, v35);
    return (*(v45 + 8))(v18, v12);
  }
}

unint64_t sub_10003EB9C(uint64_t a1)
{
  result = sub_10003EBC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003EBC4()
{
  result = qword_1000D9218;
  if (!qword_1000D9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9218);
  }

  return result;
}

uint64_t sub_10003EC18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003EC60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1702125924;
  if (v2 != 1)
  {
    v4 = 0x6E6F73616572;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C746974;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1702125924;
  if (*a2 != 1)
  {
    v8 = 0x6E6F73616572;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C746974;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000A0BD0();
  }

  return v11 & 1;
}

Swift::Int sub_10003ED48()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10003EDDC()
{
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_10003EE5C()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_10003EEEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003FB98(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10003EF1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1702125924;
  if (v2 != 1)
  {
    v5 = 0x6E6F73616572;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C746974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10003EF6C()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0x6E6F73616572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_10003EFB8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003FB98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003EFE0(uint64_t a1)
{
  v2 = sub_10003F244();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003F01C(uint64_t a1)
{
  v2 = sub_10003F244();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSampleInvitationSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9228, &unk_1000AA3C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10003F244();
  sub_1000A0CE0();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_1000A0B30();
  if (!v2)
  {
    v13 = type metadata accessor for IDSSampleInvitationSchema();
    v14 = *(v13 + 20);
    v19[14] = 1;
    sub_10009F350();
    sub_10003F790(&qword_1000D84A0, &type metadata accessor for Date);
    sub_1000A0AD0();
    v15 = (v3 + *(v13 + 24));
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    sub_1000A0A80();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10003F244()
{
  result = qword_1000D9230;
  if (!qword_1000D9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9230);
  }

  return result;
}

uint64_t type metadata accessor for IDSSampleInvitationSchema()
{
  result = qword_1000D92A8;
  if (!qword_1000D92A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IDSSampleInvitationSchema.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v27 - v6;
  v8 = sub_1000017BC(&qword_1000D9238, &qword_1000AA3D0);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = v27 - v10;
  v12 = type metadata accessor for IDSSampleInvitationSchema();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_10003F244();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v28 = v12;
  v17 = v30;
  v34 = 0;
  v18 = v15;
  *v15 = sub_1000A09D0();
  v15[1] = v19;
  v27[1] = v19;
  sub_10009F350();
  v33 = 1;
  sub_10003F790(&qword_1000D84B8, &type metadata accessor for Date);
  v20 = v7;
  sub_1000A0970();
  v21 = v28;
  sub_10000D3D0(v20, v18 + *(v28 + 20));
  v32 = 2;
  v22 = sub_1000A0920();
  v24 = v23;
  (*(v17 + 8))(v11, v31);
  v25 = (v18 + *(v21 + 24));
  *v25 = v22;
  v25[1] = v24;
  sub_10003F640(v18, v29);
  sub_100002308(a1);
  return sub_10003F6A4(v18);
}

uint64_t sub_10003F640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSampleInvitationSchema();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F6A4(uint64_t a1)
{
  v2 = type metadata accessor for IDSSampleInvitationSchema();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003F790(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003F81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003F8EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10003F99C()
{
  sub_10000D760();
  if (v0 <= 0x3F)
  {
    sub_10003FA30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003FA30()
{
  if (!qword_1000D92B8)
  {
    v0 = sub_1000A07A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D92B8);
    }
  }
}

unint64_t sub_10003FA94()
{
  result = qword_1000D92F0;
  if (!qword_1000D92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D92F0);
  }

  return result;
}

unint64_t sub_10003FAEC()
{
  result = qword_1000D92F8;
  if (!qword_1000D92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D92F8);
  }

  return result;
}

unint64_t sub_10003FB44()
{
  result = qword_1000D9300;
  if (!qword_1000D9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9300);
  }

  return result;
}

uint64_t sub_10003FB98(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBC08;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10003FBE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - v6;
  v8 = sub_10009FC50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10009F990();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  v20 = a1[4];
  v21 = a1[5];
  v22 = a1[2];
  v23 = a1[3];
  result = sub_10009FC30();
  if (!v2)
  {
    v36 = v9;
    v37 = v8;
    v25 = a1[1];
    v39 = *a1;
    v40 = 0;
    (*(v13 + 16))(v17, v19, v12);
    v26 = a1[7];
    v38 = a1[6];
    v27 = type metadata accessor for IDSKCSharingInvitationSchema();
    sub_10003FEF4(a1 + *(v27 + 32), v7);
    v28 = (a1 + *(v27 + 36));
    v29 = *v28;
    v30 = v28[1];

    v31 = v42;
    v32 = v40;
    sub_10009FC40();
    if (v32)
    {
      return (*(v13 + 8))(v19, v12);
    }

    else
    {
      (*(v13 + 8))(v19, v12);
      v33 = v41;
      (*(v36 + 32))(v41, v31, v37);
      v34 = enum case for IDSDictionaryContext.idsKCSharingInvitation(_:);
      v35 = sub_10009F9E0();
      return (*(*(v35 - 8) + 104))(v33, v34, v35);
    }
  }

  return result;
}

uint64_t sub_10003FEF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000017BC(&qword_1000D84A8, &unk_1000B0C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FF64()
{
  v1 = sub_10009F270();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_10009F260();
  sub_10004031C();
  sub_10009F250();
  if (v0)
  {
  }

  sub_1000017BC(&qword_1000D8590, &qword_1000B1190);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000A63D0;
  v6 = sub_100040370();
  *(v5 + 56) = sub_1000017BC(&qword_1000D9318, &qword_1000AA5C8);
  *(v5 + 32) = v6;
  v7 = objc_allocWithZone(NSSet);
  isa = sub_1000A06F0().super.isa;

  [v7 initWithArray:isa];

  result = sub_1000A0720();
  __break(1u);
  return result;
}

unint64_t sub_10004031C()
{
  result = qword_1000D9308;
  if (!qword_1000D9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9308);
  }

  return result;
}

unint64_t sub_100040370()
{
  result = qword_1000D9310;
  if (!qword_1000D9310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D9310);
  }

  return result;
}

uint64_t IDSCommandResponseSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9320, &unk_1000AA5D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100040790();
  sub_1000A0CE0();
  v11 = *v3;
  LOBYTE(v31) = 0;
  sub_1000A0B60();
  if (!v2)
  {
    v12 = v3[1];
    v13 = *(v3 + 16);
    LOBYTE(v31) = 1;
    sub_1000A0AE0();
    v34 = *(v3 + 3);
    v31 = *(v3 + 3);
    v30 = 2;
    sub_100006794(&v34, v29);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v31, *(&v31 + 1));
    v14 = v3[5];
    v15 = *(v3 + 48);
    LOBYTE(v31) = 3;
    sub_1000A0AB0();
    v16 = v3[7];
    v17 = *(v3 + 64);
    LOBYTE(v31) = 4;
    sub_1000A0AB0();
    v33 = *(v3 + 9);
    v31 = *(v3 + 9);
    v30 = 5;
    sub_100006794(&v33, v29);
    sub_1000A0AD0();
    sub_1000057B0(v31, *(&v31 + 1));
    v19 = *(v3 + 88);
    LOBYTE(v31) = 6;
    sub_1000A0A90();
    v20 = *(v3 + 89);
    LOBYTE(v31) = 7;
    sub_1000A0A90();
    v21 = v3[12];
    v22 = v3[13];
    LOBYTE(v31) = 8;
    sub_1000A0A80();
    v23 = v3[14];
    v24 = *(v3 + 120);
    LOBYTE(v31) = 9;
    sub_1000A0AB0();
    v31 = *(v3 + 8);
    v32 = v31;
    v30 = 10;
    sub_100006794(&v32, v29);
    sub_1000A0AD0();
    sub_1000057B0(v31, *(&v31 + 1));
    v25 = *(v3 + 144);
    LOBYTE(v31) = 11;
    sub_1000A0A90();
    v26 = v3[19];
    v27 = *(v3 + 160);
    LOBYTE(v31) = 12;
    sub_1000A0AB0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100040790()
{
  result = qword_1000D9328;
  if (!qword_1000D9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9328);
  }

  return result;
}

__n128 IDSCommandResponseSchema.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100040C50(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v10;
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_10004085C(char a1)
{
  result = 99;
  switch(a1)
  {
    case 1:
      result = 105;
      break;
    case 2:
      result = 85;
      break;
    case 3:
      result = 115;
      break;
    case 4:
      result = 21094;
      break;
    case 5:
      result = 116;
      break;
    case 6:
      result = 0x6E7265746E692D78;
      break;
    case 7:
      result = 0x6E6967676F6C2D78;
      break;
    case 8:
      result = 6906225;
      break;
    case 9:
      result = 7627121;
      break;
    case 10:
      result = 1935960433;
      break;
    case 11:
      result = 1936945777;
      break;
    case 12:
      result = 30321;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004098C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10004085C(*a1);
  v5 = v4;
  if (v3 == sub_10004085C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_100040A14()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10004085C(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100040A78()
{
  sub_10004085C(*v0);
  sub_1000A05B0();
}

Swift::Int sub_100040ACC()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_10004085C(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100040B2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000416A4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100040B5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004085C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100040BA4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000416A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100040BD8(uint64_t a1)
{
  v2 = sub_100040790();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100040C14(uint64_t a1)
{
  v2 = sub_100040790();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100040C50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = sub_1000017BC(&qword_1000D9348, &qword_1000AA968);
  v5 = *(v105 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v105);
  v8 = &v34 - v7;
  v9 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100040790();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v10 = v5;
  v51 = a2;
  LOBYTE(v63) = 0;
  v11 = sub_1000A0A00();
  LOBYTE(v63) = 1;
  v50 = sub_1000A0980();
  v104 = v12 & 1;
  LOBYTE(v52) = 2;
  v13 = sub_100005424();
  sub_1000A0970();
  v47 = v13;
  v48 = v63;
  v49 = v64;
  LOBYTE(v63) = 3;
  v14 = sub_1000A0950();
  v102 = v15 & 1;
  LOBYTE(v63) = 4;
  v45 = sub_1000A0950();
  v100 = v16 & 1;
  LOBYTE(v52) = 5;
  sub_1000A0970();
  v43 = v64;
  v44 = v63;
  LOBYTE(v63) = 6;
  v42 = sub_1000A0930();
  LOBYTE(v63) = 7;
  v39 = sub_1000A0930();
  v40 = v14;
  LOBYTE(v63) = 8;
  v17 = sub_1000A0920();
  v41 = v18;
  v19 = v17;
  LOBYTE(v63) = 9;
  v20 = sub_1000A0950();
  v96 = v21 & 1;
  LOBYTE(v52) = 10;
  sub_1000A0970();
  v46 = v64;
  v47 = v63;
  LOBYTE(v63) = 11;
  v38 = sub_1000A0930();
  v92 = 12;
  v37 = sub_1000A0950();
  v23 = v22;
  (*(v10 + 8))(v8, v105);
  v93 = v23 & 1;
  v24 = v50;
  *&v52 = v11;
  *(&v52 + 1) = v50;
  v25 = v104;
  LOBYTE(v53) = v104;
  v26 = v48;
  *(&v53 + 1) = v48;
  *&v54 = v49;
  *(&v54 + 1) = v40;
  HIDWORD(v34) = v102;
  LOBYTE(v55) = v102;
  *(&v55 + 1) = v45;
  v35 = v100;
  LOBYTE(v56) = v100;
  *(&v56 + 1) = v44;
  *&v57 = v43;
  BYTE8(v57) = v42;
  BYTE9(v57) = v39;
  *&v58 = v19;
  *(&v58 + 1) = v41;
  *&v59 = v20;
  v36 = v96;
  BYTE8(v59) = v96;
  *&v60 = v47;
  *(&v60 + 1) = v46;
  LOBYTE(v61) = v38;
  *(&v61 + 1) = v37;
  LODWORD(v105) = v93;
  v62 = v93;
  sub_1000416F0(&v52, &v63);
  sub_100002308(a1);
  v63 = v11;
  v64 = v24;
  v65 = v25;
  *v66 = *v103;
  *&v66[3] = *&v103[3];
  v67 = v26;
  v68 = v49;
  v69 = v40;
  v70 = BYTE4(v34);
  *v71 = *v101;
  *&v71[3] = *&v101[3];
  v72 = v45;
  v73 = v35;
  *&v74[3] = *&v99[3];
  *v74 = *v99;
  v75 = v44;
  v76 = v43;
  v77 = v42;
  v78 = v39;
  v79 = v97;
  v80 = v98;
  v81 = v19;
  v82 = v41;
  v83 = v20;
  v84 = v36;
  *v85 = *v95;
  *&v85[3] = *&v95[3];
  v86 = v47;
  v87 = v46;
  v88 = v38;
  *&v89[3] = *&v94[3];
  *v89 = *v94;
  v90 = v37;
  v91 = v105;
  result = sub_100041728(&v63);
  v28 = v61;
  v29 = v51;
  *(v51 + 128) = v60;
  *(v29 + 144) = v28;
  *(v29 + 160) = v62;
  v30 = v57;
  *(v29 + 64) = v56;
  *(v29 + 80) = v30;
  v31 = v59;
  *(v29 + 96) = v58;
  *(v29 + 112) = v31;
  v32 = v53;
  *v29 = v52;
  *(v29 + 16) = v32;
  v33 = v55;
  *(v29 + 32) = v54;
  *(v29 + 48) = v33;
  return result;
}

__n128 sub_100041324(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_100041360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 161))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1000413BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IDSCommandResponseSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IDSCommandResponseSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000415A0()
{
  result = qword_1000D9330;
  if (!qword_1000D9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9330);
  }

  return result;
}

unint64_t sub_1000415F8()
{
  result = qword_1000D9338;
  if (!qword_1000D9338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9338);
  }

  return result;
}

unint64_t sub_100041650()
{
  result = qword_1000D9340;
  if (!qword_1000D9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9340);
  }

  return result;
}

uint64_t sub_1000416A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBC70;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

Swift::Int sub_100041764()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100041830()
{
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

Swift::Int sub_1000418E8()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_1000419B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000422BC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000419E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 28265;
  v5 = 0xE500000000000000;
  v6 = 0x7265746E65;
  v7 = 0xE400000000000000;
  v8 = 1953069157;
  if (v2 != 3)
  {
    v8 = 0x6D72657465646E75;
    v7 = 0xEC00000064656E69;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7632239;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100041B30()
{
  *v0;
  *v0;
  *v0;
  sub_1000A05B0();
}

uint64_t sub_100041C3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100042308(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100041C6C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684632949;
  v5 = 0xE400000000000000;
  v6 = 1702125924;
  if (v2 != 5)
  {
    v6 = 0x6E6F697461636F6CLL;
    v5 = 0xE800000000000000;
  }

  v7 = 0xED00007375746174;
  v8 = 0x5372656767697274;
  if (v2 != 3)
  {
    v8 = 118;
    v7 = 0xE100000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x444965636E6566;
    v3 = 0xE700000000000000;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001000A1310;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100041D40()
{
  v1 = *v0;
  v2 = 1684632949;
  v3 = 1702125924;
  if (v1 != 5)
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  v4 = 0x5372656767697274;
  if (v1 != 3)
  {
    v4 = 118;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x444965636E6566;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100041E10@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100042308(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100041E44(uint64_t a1)
{
  v2 = sub_100042154();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100041E80(uint64_t a1)
{
  v2 = sub_100042154();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FMFFenceTriggerSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D9350, &qword_1000AA970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100042154();
  sub_1000A0CE0();
  v11 = v3[6];
  v12 = v3[7];
  LOBYTE(v23) = 0;
  sub_1000A0B30();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v23) = 1;
    sub_1000A0B30();
    v15 = *v3;
    v16 = v3[1];
    LOBYTE(v23) = 2;
    sub_1000A0B30();
    LOBYTE(v23) = *(v3 + 40);
    v22[0] = 3;
    sub_1000421A8();
    sub_1000A0B80();
    v17 = v3[8];
    v18 = v3[9];
    LOBYTE(v23) = 4;
    sub_1000A0B30();
    v19 = v3[4];
    LOBYTE(v23) = 5;
    sub_1000A0B50();
    v23 = *(v3 + 5);
    v24 = v23;
    v22[23] = 6;
    sub_1000421FC(&v24, v22);
    sub_100006804();
    sub_1000A0B80();
    sub_100005568(v23, *(&v23 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100042154()
{
  result = qword_1000D9358;
  if (!qword_1000D9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9358);
  }

  return result;
}

unint64_t sub_1000421A8()
{
  result = qword_1000D9360;
  if (!qword_1000D9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9360);
  }

  return result;
}

double FMFFenceTriggerSchema.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100042354(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1000422BC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBDC8;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100042308(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBE60;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100042354@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000017BC(&qword_1000D9390, &qword_1000AACE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100042154();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  LOBYTE(v42[0]) = 0;
  v11 = sub_1000A09D0();
  v13 = v12;
  LOBYTE(v42[0]) = 1;
  *&v35 = sub_1000A09D0();
  *(&v35 + 1) = v14;
  LOBYTE(v42[0]) = 2;
  v32 = sub_1000A09D0();
  v34 = v15;
  LOBYTE(v36) = 3;
  sub_100042BE4();
  sub_1000A0A20();
  v31 = LOBYTE(v42[0]);
  LOBYTE(v42[0]) = 4;
  v30 = sub_1000A09D0();
  v33 = v16;
  LOBYTE(v42[0]) = 5;
  sub_1000A09F0();
  v18 = v17;
  v50 = 6;
  sub_100005424();
  sub_1000A0A20();
  (*(v6 + 8))(v9, v5);
  v28 = *(&v51 + 1);
  v29 = v51;
  *&v36 = v32;
  v19 = v34;
  *(&v36 + 1) = v34;
  v20 = v35;
  v37 = v35;
  v21 = *(&v35 + 1);
  *&v38 = v18;
  BYTE8(v38) = v31;
  *&v39 = v11;
  *(&v39 + 1) = v13;
  v22 = v33;
  *&v40 = v30;
  *(&v40 + 1) = v33;
  v41 = v51;
  sub_100042C38(&v36, v42);
  sub_100002308(a1);
  v42[0] = v32;
  v42[1] = v19;
  v42[2] = v20;
  v42[3] = v21;
  v42[4] = v18;
  v43 = v31;
  v44 = v11;
  v45 = v13;
  v46 = v30;
  v47 = v22;
  v48 = v29;
  v49 = v28;
  result = sub_10000E064(v42);
  v24 = v39;
  a2[2] = v38;
  a2[3] = v24;
  v25 = v41;
  a2[4] = v40;
  a2[5] = v25;
  v26 = v37;
  *a2 = v36;
  a2[1] = v26;
  return result;
}

__n128 sub_100042804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100042820(uint64_t a1, int a2)
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

uint64_t sub_100042868(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for FMFFenceTriggerSchema.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFFenceTriggerSchema.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100042A34()
{
  result = qword_1000D9368;
  if (!qword_1000D9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9368);
  }

  return result;
}

unint64_t sub_100042A8C()
{
  result = qword_1000D9370;
  if (!qword_1000D9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9370);
  }

  return result;
}

unint64_t sub_100042AE4()
{
  result = qword_1000D9378;
  if (!qword_1000D9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9378);
  }

  return result;
}

unint64_t sub_100042B3C()
{
  result = qword_1000D9380;
  if (!qword_1000D9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9380);
  }

  return result;
}

unint64_t sub_100042B90()
{
  result = qword_1000D9388;
  if (!qword_1000D9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9388);
  }

  return result;
}

unint64_t sub_100042BE4()
{
  result = qword_1000D9398;
  if (!qword_1000D9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D9398);
  }

  return result;
}

unint64_t sub_100042C70(char a1)
{
  result = 118;
  switch(a1)
  {
    case 1:
      result = 98;
      break;
    case 2:
      result = 115;
      break;
    case 3:
      result = 112;
      break;
    case 4:
      result = 99;
      break;
    case 5:
      result = 25443;
      break;
    case 6:
      result = 26989;
      break;
    case 7:
      result = 7500147;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
      result = 1835819888;
      break;
    case 10:
      result = 107;
      break;
    case 11:
      result = 29555;
      break;
    case 12:
      result = 29043;
      break;
    case 13:
      result = 25970;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100042D78(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100042C70(*a1);
  v5 = v4;
  if (v3 == sub_100042C70(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A0BD0();
  }

  return v8 & 1;
}

Swift::Int sub_100042E00()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_100042C70(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100042E64()
{
  sub_100042C70(*v0);
  sub_1000A05B0();
}

Swift::Int sub_100042EB8()
{
  v1 = *v0;
  sub_1000A0C60();
  sub_100042C70(v1);
  sub_1000A05B0();

  return sub_1000A0C90();
}

uint64_t sub_100042F18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100043530(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100042F48@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100042C70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100042F90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100043530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100042FB8(uint64_t a1)
{
  v2 = sub_100043450();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042FF4(uint64_t a1)
{
  v2 = sub_100043450();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IDSSessionAcceptSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000017BC(&qword_1000D93A0, &unk_1000AACF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27[-v8 - 8];
  v10 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100043450();
  sub_1000A0CE0();
  v11 = *v3;
  LOBYTE(v29) = 0;
  sub_1000A0B70();
  if (!v2)
  {
    v33 = *(v3 + 1);
    v29 = *(v3 + 1);
    v28 = 1;
    sub_100006794(&v33, v27);
    sub_100006804();
    sub_1000A0AD0();
    sub_1000057B0(v29, *(&v29 + 1));
    v12 = v3[3];
    v13 = v3[4];
    LOBYTE(v29) = 2;
    sub_1000A0B30();
    v14 = v3[5];
    v15 = v3[6];
    LOBYTE(v29) = 3;
    sub_1000A0B30();
    v32 = *(v3 + 7);
    v29 = *(v3 + 7);
    v28 = 4;
    sub_100006794(&v32, v27);
    sub_1000A0AD0();
    sub_1000057B0(v29, *(&v29 + 1));
    v17 = *(v3 + 72);
    LOBYTE(v29) = 5;
    sub_1000A0A90();
    v18 = *(v3 + 73);
    LOBYTE(v29) = 6;
    sub_1000A0A90();
    v19 = *(v3 + 74);
    LOBYTE(v29) = 7;
    sub_1000A0A90();
    v31 = *(v3 + 5);
    v29 = *(v3 + 5);
    v28 = 8;
    sub_100006794(&v31, v27);
    sub_1000A0AD0();
    sub_1000057B0(v29, *(&v29 + 1));
    v20 = *(v3 + 96);
    LOBYTE(v29) = 9;
    sub_1000A0A90();
    v29 = *(v3 + 13);
    v30 = v29;
    v28 = 10;
    sub_100006794(&v30, v27);
    sub_1000A0AD0();
    sub_1000057B0(v29, *(&v29 + 1));
    v21 = v3[15];
    v22 = *(v3 + 128);
    LOBYTE(v29) = 11;
    sub_1000A0AB0();
    v23 = v3[17];
    v24 = *(v3 + 144);
    LOBYTE(v29) = 12;
    sub_1000A0AB0();
    v25 = *(v3 + 145);
    LOBYTE(v29) = 13;
    sub_1000A0A90();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100043450()
{
  result = qword_1000D93A8;
  if (!qword_1000D93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D93A8);
  }

  return result;
}

double IDSSessionAcceptSchema.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004357C(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

uint64_t sub_100043530(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000CBF28;
  v6._object = a2;
  v4 = sub_1000A08F0(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10004357C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = sub_1000017BC(&qword_1000D93C8, &qword_1000AB128);
  v5 = *(v88 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v88);
  v8 = &v28 - v7;
  v9 = a1[4];
  sub_1000022C4(a1, a1[3]);
  sub_100043450();
  sub_1000A0CD0();
  if (v2)
  {
    return sub_100002308(a1);
  }

  v10 = v5;
  v46 = a2;
  LOBYTE(v57) = 0;
  v11 = sub_1000A0A10();
  LOBYTE(v47) = 1;
  sub_100005424();
  sub_1000A0970();
  v44 = v57;
  v45 = v58;
  LOBYTE(v57) = 2;
  v12 = sub_1000A09D0();
  v43 = v13;
  v36 = v12;
  LOBYTE(v57) = 3;
  v35 = sub_1000A09D0();
  v42 = v14;
  LOBYTE(v47) = 4;
  sub_1000A0970();
  v34 = v57;
  v41 = v58;
  LOBYTE(v57) = 5;
  v33 = sub_1000A0930();
  LOBYTE(v57) = 6;
  v31 = sub_1000A0930();
  v32 = 0;
  LOBYTE(v57) = 7;
  v30 = sub_1000A0930();
  LOBYTE(v47) = 8;
  sub_1000A0970();
  v39 = v58;
  v40 = v57;
  LOBYTE(v57) = 9;
  v15 = sub_1000A0930();
  LOBYTE(v47) = 10;
  sub_1000A0970();
  v37 = v58;
  v38 = v57;
  LOBYTE(v57) = 11;
  v16 = sub_1000A0950();
  v86 = v17 & 1;
  LOBYTE(v57) = 12;
  v29 = sub_1000A0950();
  v84 = v18 & 1;
  v83 = 13;
  v19 = sub_1000A0930();
  (*(v10 + 8))(v8, v88);
  v20 = v44;
  *&v47 = v11;
  *(&v47 + 1) = v44;
  v21 = v36;
  *&v48 = v45;
  *(&v48 + 1) = v36;
  *&v49 = v43;
  *(&v49 + 1) = v35;
  *&v50 = v42;
  *(&v50 + 1) = v34;
  *&v51 = v41;
  BYTE8(v51) = v33;
  BYTE9(v51) = v31;
  BYTE10(v51) = v30;
  *&v52 = v40;
  *(&v52 + 1) = v39;
  LOBYTE(v53) = v15;
  *(&v53 + 1) = v38;
  *&v54 = v37;
  *(&v54 + 1) = v16;
  LODWORD(v32) = v86;
  LOBYTE(v55) = v86;
  *(&v55 + 1) = v29;
  LODWORD(v88) = v84;
  LOBYTE(v56) = v84;
  HIBYTE(v56) = v19;
  sub_100043F04(&v47, &v57);
  sub_100002308(a1);
  v57 = v11;
  v58 = v20;
  v59 = v45;
  v60 = v21;
  v61 = v43;
  v62 = v35;
  v63 = v42;
  v64 = v34;
  v65 = v41;
  v66 = v33;
  v67 = v31;
  v68 = v30;
  v69 = *&v87[7];
  v70 = v87[11];
  v71 = v40;
  v72 = v39;
  v73 = v15;
  *&v74[3] = *&v87[3];
  *v74 = *v87;
  v75 = v38;
  v76 = v37;
  v77 = v16;
  v78 = v32;
  *v79 = *v85;
  *&v79[3] = *&v85[3];
  v80 = v29;
  v81 = v88;
  v82 = v19;
  result = sub_100043F3C(&v57);
  v23 = v54;
  v24 = v46;
  *(v46 + 96) = v53;
  *(v24 + 112) = v23;
  *(v24 + 128) = v55;
  *(v24 + 144) = v56;
  v25 = v50;
  *(v24 + 32) = v49;
  *(v24 + 48) = v25;
  v26 = v52;
  *(v24 + 64) = v51;
  *(v24 + 80) = v26;
  v27 = v48;
  *v24 = v47;
  *(v24 + 16) = v27;
  return result;
}