uint64_t sub_10011A064(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009AAEC;

  return sub_10010E164(a1, v5);
}

uint64_t sub_10011A11C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_100116E24(v2, v3);
}

uint64_t sub_10011A1C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009AAEC;

  return sub_100116264(v2, v3);
}

uint64_t sub_10011A274()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_100115C38(v2, v3);
}

uint64_t sub_10011A320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_OWORD *sub_10011A388(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10011A3A0()
{
  result = qword_100271900;
  if (!qword_100271900)
  {
    sub_1000885AC(&qword_1002718F8, &qword_1001F4570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271900);
  }

  return result;
}

uint64_t _s11RecentPriceVMa()
{
  result = qword_100271968;
  if (!qword_100271968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011A478()
{
  result = sub_1001C4CA8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10011A4F4(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_1002719B0, &qword_1001F4608);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10011AB40();
  sub_1001C6E78();
  v11 = *v3;
  v14[15] = 0;
  sub_1001C6C88();
  if (!v2)
  {
    v12 = *(_s11RecentPriceVMa() + 20);
    v14[14] = 1;
    sub_1001C4CA8();
    sub_1000B6E64(&qword_10026F970);
    sub_1001C6CA8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10011A698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_1001C4CA8();
  v23 = *(v26 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v26);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100084528(&qword_1002719A0, &qword_1001F4600);
  v25 = *(v27 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v27);
  v9 = &v20 - v8;
  v10 = _s11RecentPriceVMa();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10011AB40();
  sub_1001C6E58();
  if (!v2)
  {
    v22 = v10;
    v15 = v25;
    v16 = v26;
    v29 = 0;
    v17 = v27;
    sub_1001C6C08();
    *v13 = v18;
    v28 = 1;
    sub_1000B6E64(&qword_10026F980);
    v21 = v6;
    sub_1001C6C28();
    (*(v15 + 8))(v9, v17);
    (*(v23 + 32))(&v13[*(v22 + 20)], v21, v16);
    sub_10011AB94(v13, v24);
  }

  return sub_10008E7BC(a1);
}

uint64_t sub_10011A968()
{
  if (*v0)
  {
    result = 1702125924;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_10011A998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10011AA70(uint64_t a1)
{
  v2 = sub_10011AB40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011AAAC(uint64_t a1)
{
  v2 = sub_10011AB40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10011AB18(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  return sub_1001C4C68();
}

unint64_t sub_10011AB40()
{
  result = qword_1002719A8;
  if (!qword_1002719A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719A8);
  }

  return result;
}

uint64_t sub_10011AB94(uint64_t a1, uint64_t a2)
{
  v4 = _s11RecentPriceVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10011AC0C()
{
  result = qword_1002719B8;
  if (!qword_1002719B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719B8);
  }

  return result;
}

unint64_t sub_10011AC64()
{
  result = qword_1002719C0;
  if (!qword_1002719C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719C0);
  }

  return result;
}

unint64_t sub_10011ACBC()
{
  result = qword_1002719C8;
  if (!qword_1002719C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719C8);
  }

  return result;
}

id sub_10011AD10(double *a1)
{
  v2 = sub_10011D550(a1);
  v6 = 0;
  v3 = [v1 submitTaskRequest:v2 error:&v6];

  if (v3)
  {
    return v6;
  }

  v5 = v6;
  sub_1001C4A28();

  return swift_willThrow();
}

id sub_10011ADCC()
{
  v1 = sub_1001C5FE8();
  v5 = 0;
  v2 = [v0 cancelTaskRequestWithIdentifier:v1 error:&v5];

  if (v2)
  {
    return v5;
  }

  v4 = v5;
  sub_1001C4A28();

  return swift_willThrow();
}

void sub_10011AE88()
{
  v1 = *v0;
  v2 = sub_1001C5FE8();
  [v1 deregisterTaskWithIdentifier:v2];
}

void sub_10011AEE0(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1001C5FE8();
  v5 = [v3 taskRequestForIdentifier:v4];

  if (v5)
  {
    sub_10011D2BC(v5, v10);
    v6 = v10[0];
    v7 = v10[1];
    v8 = v10[2];
    v9 = v11;
  }

  else
  {
    v9 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
}

void sub_10011AFC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_1000DD4AC;
    v4[3] = &unk_100249078;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setExpirationHandler:v3];
  _Block_release(v3);
}

uint64_t sub_10011B07C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int sub_10011B094()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1001C6DF8();
  sub_1001C60E8();
  return sub_1001C6E28();
}

Swift::Int sub_10011B0E0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1001C6DF8();
  sub_1001C60E8();
  return sub_1001C6E28();
}

unint64_t sub_10011B1EC()
{
  result = qword_1002719D0;
  if (!qword_1002719D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719D0);
  }

  return result;
}

unint64_t sub_10011B240()
{
  result = qword_1002719D8;
  if (!qword_1002719D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719D8);
  }

  return result;
}

char *sub_10011B294()
{
  v1 = [v0 itemIDs];
  sub_10011BB4C();
  v2 = sub_1001C6298();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return _swiftEmptyArrayStorage;
  }

  v3 = sub_1001C6B38();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_1000D3980(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_1001C69F8();
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 adamID];
      v9 = sub_1001C6018();
      v11 = v10;

      v12 = [v7 isAudiobook];
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000D3980((v13 > 1), v14 + 1, 1);
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[3 * v14];
      *(v15 + 4) = v9;
      *(v15 + 5) = v11;
      v15[48] = v12;
    }

    while (v3 != v5);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

double sub_10011B44C()
{
  v1 = [v0 dealAbsoluteThreshold];
  [v1 doubleValue];
  v3 = v2;

  v4 = [v0 dealRelativeThreshold];
  [v4 doubleValue];
  v6 = v5;

  if (v3 < 0.0)
  {
    v6 = v3;
  }

  else if (v6 >= 0.0)
  {
    return v3;
  }

  sub_10011BA50();
  swift_allocError();
  *v7 = v6;
  *(v7 + 8) = v3 >= 0.0;
  swift_willThrow();
  return v3;
}

void sub_10011B534(unint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4C98();
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    while (1)
    {
      v36 = _swiftEmptyArrayStorage;
      sub_1000D3A28(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        break;
      }

      v28 = a2;
      v29 = v3;
      v30 = v10;
      v31 = v7;
      v12 = 0;
      v34 = a1;
      v35 = a1 & 0xC000000000000001;
      v13 = v36;
      v32 = v6;
      v33 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v35)
        {
          v14 = sub_1001C69F8();
        }

        else
        {
          if (v12 >= *(v33 + 16))
          {
            goto LABEL_26;
          }

          v14 = *(a1 + 8 * v12 + 32);
        }

        a2 = v14;
        v15 = [v14 duration];
        v16 = [a2 minUpdateInterval];
        v17 = [a2 schedulerConfigMinInterval];
        v18 = [a2 schedulerConfigIdealInterval];
        v19 = v18;
        if (v18 < 300)
        {
          LOBYTE(v10) = 2;
LABEL_21:

          sub_10011BAA4();
          swift_allocError();
          *v25 = v19;
          *(v25 + 8) = v10;
          swift_willThrow();

          (*(v31 + 8))(v30, v32);

          return;
        }

        v20 = v17;
        v10 = 1;
        if (v17 < 300 || v20 > v19)
        {
          v19 = v17;
          goto LABEL_21;
        }

        v21 = v15;
        if (v15 < 1)
        {
          v26 = 1;
LABEL_24:
          sub_10011BAF8();
          swift_allocError();
          *v27 = v21;
          *(v27 + 8) = v26;
          swift_willThrow();
          (*(v31 + 8))(v30, v32);

          return;
        }

        v22 = v16;
        a1 = v34;
        if (v16 < 1)
        {
          v26 = 2;
          v21 = v22;
          goto LABEL_24;
        }

        v36 = v13;
        v7 = v13[2];
        v23 = v13[3];
        v6 = v7 + 1;
        if (v7 >= v23 >> 1)
        {
          sub_1000D3A28((v23 > 1), v7 + 1, 1);
          v13 = v36;
        }

        v13[2] = v6;
        v24 = &v13[4 * v7];
        v24[4] = v21;
        v24[5] = v22;
        v24[6] = v20;
        v24[7] = v19;
        ++v12;
        if (v3 == v11)
        {

          v7 = v31;
          v6 = v32;
          v10 = v30;
          a2 = v28;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v11 = sub_1001C6B38();
      if (!v11)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:

    v13 = _swiftEmptyArrayStorage;
LABEL_29:
    (*(v7 + 32))(a2, v10, v6);
    *&a2[*(_s14UpdateScheduleVMa() + 20)] = v13;
  }
}

void sub_10011B8E8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 titleSingleAudiobook];
  v5 = sub_1001C6018();
  v28 = v6;
  v29 = v5;

  v7 = [a1 titleSingleBook];
  v8 = sub_1001C6018();
  v26 = v9;
  v27 = v8;

  v10 = [a1 titleMultiple];
  v11 = sub_1001C6018();
  v13 = v12;

  v14 = [a1 bodySingleAudiobook];
  v15 = sub_1001C6018();
  v17 = v16;

  v18 = [a1 bodySingleBook];
  v19 = sub_1001C6018();
  v21 = v20;

  v22 = [a1 bodyMultiple];
  v23 = sub_1001C6018();
  v25 = v24;

  *a2 = v29;
  a2[1] = v28;
  a2[2] = v27;
  a2[3] = v26;
  a2[4] = v11;
  a2[5] = v13;
  a2[6] = v15;
  a2[7] = v17;
  a2[8] = v19;
  a2[9] = v21;
  a2[10] = v23;
  a2[11] = v25;
}

unint64_t sub_10011BA50()
{
  result = qword_1002719E0;
  if (!qword_1002719E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719E0);
  }

  return result;
}

unint64_t sub_10011BAA4()
{
  result = qword_1002719E8;
  if (!qword_1002719E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719E8);
  }

  return result;
}

unint64_t sub_10011BAF8()
{
  result = qword_1002719F0;
  if (!qword_1002719F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002719F0);
  }

  return result;
}

unint64_t sub_10011BB4C()
{
  result = qword_100271298;
  if (!qword_100271298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100271298);
  }

  return result;
}

uint64_t _ReadingHistoryServiceStatus.description.getter(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v2._object = v3;
  sub_1001C6138(v2);

  v5._countAndFlagsBits = 125;
  v5._object = 0xE100000000000000;
  sub_1001C6138(v5);
  return 0x6564616F4C73697BLL;
}

uint64_t sub_10011BC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646564616F4C7369 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1001C6D08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10011BCC8(uint64_t a1)
{
  v2 = sub_10011BE70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011BD04(uint64_t a1)
{
  v2 = sub_10011BE70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _ReadingHistoryServiceStatus.encode(to:)(void *a1)
{
  v2 = sub_100084528(&qword_100271A00, &qword_1001F4890);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10011BE70();
  sub_1001C6E78();
  sub_1001C6C78();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_10011BE70()
{
  result = qword_100271A08;
  if (!qword_100271A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A08);
  }

  return result;
}

uint64_t _ReadingHistoryServiceStatus.init(from:)(uint64_t *a1)
{
  v3 = sub_100084528(&qword_100271A10, &qword_1001F4898);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_10009BB74(a1, a1[3]);
  sub_10011BE70();
  sub_1001C6E58();
  if (!v1)
  {
    v9 = sub_1001C6BF8();
    (*(v4 + 8))(v7, v3);
  }

  sub_10008E7BC(a1);
  return v9 & 1;
}

uint64_t sub_10011C018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_100084528(&qword_100271A10, &qword_1001F4898);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10011BE70();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(a1);
  }

  v11 = sub_1001C6BF8();
  (*(v6 + 8))(v9, v5);
  result = sub_10008E7BC(a1);
  *a2 = v11 & 1;
  return result;
}

uint64_t sub_10011C17C(void *a1)
{
  v3 = sub_100084528(&qword_100271A00, &qword_1001F4890);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10011BE70();
  sub_1001C6E78();
  sub_1001C6C78();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10011C2B4()
{
  if (*v0)
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_1001C6138(v1);

  v4._countAndFlagsBits = 125;
  v4._object = 0xE100000000000000;
  sub_1001C6138(v4);
  return 0x6564616F4C73697BLL;
}

id ReadingHistoryServiceStatus.__allocating_init(value:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id ReadingHistoryServiceStatus.init(value:)(char a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

id ReadingHistoryServiceStatus.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_10011CDC8(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id ReadingHistoryServiceStatus.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_10011CDC8(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id sub_10011C4B8(void *a1)
{
  sub_10011D170();
  v2 = sub_1001C6748();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1001C4BA8();
    v6 = v5;
    v7 = objc_allocWithZone(NSKeyedUnarchiver);
    v8 = sub_10011CD08();
    sub_1000887D0(v4, v6);
    if (v8)
    {
      sub_10011D1BC();
      sub_1001C65E8();
      v10 = v17;
      if (v17)
      {
        v11 = v18;
        v12 = type metadata accessor for ReadingHistoryUpdate();
        v13 = objc_allocWithZone(v12);
        *&v13[OBJC_IVAR___BDSReadingHistoryUpdate____lazy_storage___days] = 0;
        v14 = &v13[OBJC_IVAR___BDSReadingHistoryUpdate_value];
        *v14 = v10;
        *(v14 + 1) = v11;
        v16.receiver = v13;
        v16.super_class = v12;
        v15 = objc_msgSendSuper2(&v16, "init");
        [v8 finishDecoding];

        return v15;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

void sub_10011C690(void *a1)
{
  v3 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v7 = *(v1 + OBJC_IVAR___BDSReadingHistoryServiceStatus_value);
  sub_10011D210();
  sub_1001C65D8();
  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1001C5FE8();
    [a1 encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_10011C7B0(void *a1)
{
  v3 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v7 = *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate_value);
  v8 = *(v1 + OBJC_IVAR___BDSReadingHistoryUpdate_value + 8);
  sub_10011D11C();

  sub_1001C65D8();

  [v3 finishEncoding];
  v4 = [v3 encodedData];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1001C5FE8();
    [a1 encodeObject:v5 forKey:v6];
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

id sub_10011C9D4@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = v4;
  v7.receiver = v5;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, "init");
  *a2 = result;
  return result;
}

id ReadingHistoryServiceStatus.__allocating_init(isLoaded:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithIsLoaded:a1 & 1];
}

id ReadingHistoryServiceStatus.init(isLoaded:)(char a1)
{
  ObjectType = swift_getObjectType();
  v3 = objc_allocWithZone(ObjectType);
  v3[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = a1;
  v6.receiver = v3;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "init");
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t ReadingHistoryServiceStatus.description.getter()
{
  if (*(v0 + OBJC_IVAR___BDSReadingHistoryServiceStatus_value))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___BDSReadingHistoryServiceStatus_value))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_1001C6138(v1);

  v4._countAndFlagsBits = 125;
  v4._object = 0xE100000000000000;
  sub_1001C6138(v4);
  return 0x6564616F4C73697BLL;
}

id sub_10011CD08()
{
  isa = sub_1001C4B98().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_1001C4A28();

    swift_willThrow();
  }

  return v2;
}

id sub_10011CDC8(void *a1)
{
  sub_10011D170();
  v2 = sub_1001C6748();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1001C4BA8();
    v6 = v5;
    v7 = objc_allocWithZone(NSKeyedUnarchiver);
    v8 = sub_10011CD08();
    sub_1000887D0(v4, v6);
    if (v8)
    {
      sub_10011D264();
      sub_1001C65E8();
      if (v14 != 2)
      {
        v10 = type metadata accessor for ReadingHistoryServiceStatus();
        v11 = objc_allocWithZone(v10);
        v11[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = v14 & 1;
        v13.receiver = v11;
        v13.super_class = v10;
        v12 = objc_msgSendSuper2(&v13, "init");
        [v8 finishDecoding];

        return v12;
      }

      [v8 finishDecoding];
    }
  }

  else
  {
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for _ReadingHistoryServiceStatus(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_10011D018()
{
  result = qword_100271A68;
  if (!qword_100271A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A68);
  }

  return result;
}

unint64_t sub_10011D070()
{
  result = qword_100271A70;
  if (!qword_100271A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A70);
  }

  return result;
}

unint64_t sub_10011D0C8()
{
  result = qword_100271A78;
  if (!qword_100271A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A78);
  }

  return result;
}

unint64_t sub_10011D11C()
{
  result = qword_100271A80;
  if (!qword_100271A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A80);
  }

  return result;
}

unint64_t sub_10011D170()
{
  result = qword_100271A88;
  if (!qword_100271A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100271A88);
  }

  return result;
}

unint64_t sub_10011D1BC()
{
  result = qword_100271A90;
  if (!qword_100271A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A90);
  }

  return result;
}

unint64_t sub_10011D210()
{
  result = qword_100271A98;
  if (!qword_100271A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271A98);
  }

  return result;
}

unint64_t sub_10011D264()
{
  result = qword_100271AA0;
  if (!qword_100271AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271AA0);
  }

  return result;
}

void sub_10011D2BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = v4;
  if (v4)
  {
    [v4 interval];
    v7 = round(v6);
    [v5 minDurationBetweenInstances];
    v9 = round(v8);
LABEL_4:
    v10 = v5 == 0;
    v11 = [a1 identifier];
    v12 = sub_1001C6018();
    v14 = v13;

    v15 = [a1 priority];
    v16 = [a1 requiresInexpensiveNetworkConnectivity];
    v17 = [a1 requiresExternalPower];

    v18 = 256;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v18 | v16;
    goto LABEL_7;
  }

  objc_opt_self();
  v7 = 0.0;
  v9 = 0.0;
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_4;
  }

  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v20 = sub_1001C5148();
  sub_100083274(v20, qword_100281898);
  v21 = a1;
  v22 = sub_1001C5128();
  v23 = sub_1001C6598();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v24 = 136315138;
    swift_getObjectType();
    v26 = sub_1001C6EA8();
    v28 = sub_1001874E8(v26, v27, &v29);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "[Scheduler] Unknown BGSystemTaskRequest type: %s", v24, 0xCu);
    sub_10008E7BC(v25);
  }

  v12 = 0;
  v14 = 0;
  v15 = 0;
  v19 = 0;
  v10 = 0;
LABEL_7:
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v19;
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
}

id sub_10011D550(double *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  if (a1[6])
  {
    v4 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
    v5 = sub_1001C5FE8();
    v6 = [v4 initWithIdentifier:v5];
  }

  else
  {
    v8 = a1[4];
    v7 = a1[5];
    v9 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
    v10 = sub_1001C5FE8();
    v6 = [v9 initWithIdentifier:v10];

    [v6 setInterval:v8];
    [v6 setMinDurationBetweenInstances:v7];
  }

  v11 = *(a1 + 2);
  v12 = v6;
  [v12 setPriority:v11];
  [v12 setRequiresInexpensiveNetworkConnectivity:*(a1 + 24)];
  [v12 setRequiresExternalPower:*(a1 + 25)];

  return v12;
}

uint64_t sub_10011D680(uint64_t a1, uint64_t a2)
{
  v4 = _s15PersistentStateO2V1VMa(0);

  return _swift_getEnumTagSinglePayloadGeneric(a1, a2, v4, sub_100008CFC);
}

uint64_t sub_10011D6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s15PersistentStateO2V1VMa(0);

  return _swift_storeEnumTagSinglePayloadGeneric(a1, a2, a3, v6, sub_100008D00);
}

uint64_t sub_10011D780(uint64_t a1)
{
  result = _s15PersistentStateO2V1VMa(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_10011D838(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100084528(&qword_100271B10, &qword_1001F4AC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10011D988(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100084528(&qword_100271B10, &qword_1001F4AC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10011DAC4()
{
  sub_10011DD0C(319, &qword_100271C20, _s11TrackedItemVMa, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10011DCA8();
    if (v1 <= 0x3F)
    {
      sub_10011DD0C(319, &qword_100271C30, _s14UpdateScheduleVMa, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10011DD0C(319, &qword_100271450, _s6UpdateVMa, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10011DD70(319, &qword_100271C38);
          if (v4 <= 0x3F)
          {
            sub_10011DD70(319, &qword_100271C40);
            if (v5 <= 0x3F)
            {
              sub_10011DD70(319, &qword_100271C48);
              if (v6 <= 0x3F)
              {
                sub_10011DD70(319, &unk_100271C50);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10011DCA8()
{
  if (!qword_100271C28)
  {
    sub_1000885AC(&qword_10026F790, &qword_1001F13C0);
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, &qword_100271C28);
    }
  }
}

void sub_10011DD0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10011DD70(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1001C67F8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10011DDBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v75 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v67 - v8;
  v10 = sub_100084528(&qword_100271B10, &qword_1001F4AC0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v67 - v12;
  updated = _s14UpdateScheduleVMa();
  v15 = *(updated - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(updated);
  v76 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v67 - v19;
  v21 = _s15PersistentStateO2V1VMa(0);
  v22 = *(*(v21 - 1) + 64);
  __chkstk_darwin(v21);
  v24 = (&v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = _s15PersistentStateOMa(0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  sub_10011FDB8(a1, v28, _s15PersistentStateOMa);
  sub_10011FE20(v28, v24, _s15PersistentStateO2V1VMa);
  v29 = (v24 + v21[9]);
  v31 = *v29;
  v30 = v29[1];
  v32 = *(v29 + 16);
  sub_10009ADF0(v24 + v21[6], v13, &qword_100271B10, &qword_1001F4AC0);
  v33 = *(v15 + 48);
  if (v33(v13, 1, updated) == 1)
  {
    if (qword_10026EC80 != -1)
    {
      swift_once();
    }

    v34 = sub_100083274(updated, qword_100281A10);
    sub_10011FDB8(v34, v20, _s14UpdateScheduleVMa);
    if (v33(v13, 1, updated) != 1)
    {
      sub_10008875C(v13, &qword_100271B10, &qword_1001F4AC0);
    }
  }

  else
  {
    sub_10011FE20(v13, v20, _s14UpdateScheduleVMa);
  }

  v73 = v20;
  if (v32)
  {
    v30 = 0.0;
    v31 = 0.0;
  }

  v35 = v24[1];
  v72 = *v24;
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = &_swiftEmptyArrayStorage;
  }

  v69 = v36;
  v67 = _s14UpdateScheduleVMa;
  sub_10011FDB8(v20, v76, _s14UpdateScheduleVMa);
  sub_10009ADF0(v24 + v21[7], v9, &qword_1002712C8, &qword_1001F3A18);
  v37 = _s6UpdateVMa();
  v38 = *(*(v37 - 8) + 56);
  v70 = v9;
  v38(v75, 1, 1, v37);
  v39 = (v24 + v21[8]);
  v40 = v39[1];
  v68 = *v39;
  v41 = (v24 + v21[10]);
  v42 = v41[3];
  v80 = v41[2];
  v81 = v42;
  v43 = v41[5];
  v82 = v41[4];
  v83 = v43;
  v44 = v41[1];
  v78 = *v41;
  v79 = v44;
  v45 = v24 + v21[11];
  if (v45[8])
  {
    v46 = 0;
  }

  else
  {
    v46 = *v45;
  }

  v71 = v46;
  v47 = _s5StateVMa();
  v48 = v47[7];
  v38(a2 + v48, 1, 1, v37);
  v49 = v47[8];
  v38(a2 + v49, 1, 1, v37);
  v50 = (a2 + v47[9]);
  v51 = (a2 + v47[11]);
  v51[4] = 0u;
  v51[5] = 0u;
  v51[2] = 0u;
  v51[3] = 0u;
  *v51 = 0u;
  v51[1] = 0u;
  v52 = v69;
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = v52;
  v53 = v76;
  sub_10011FDB8(v76, a2 + v47[6], v67);

  sub_10009ADF0(&v78, v77, &qword_1002712D0, &qword_1001F3A20);
  v54 = a2 + v48;
  v55 = v70;
  sub_100110BC4(v70, v54);
  v56 = a2 + v49;
  v57 = v75;
  sub_100110BC4(v75, v56);
  *v50 = v68;
  v50[1] = v40;
  v58 = (a2 + v47[10]);
  *v58 = v31;
  v58[1] = v30;
  v59 = v51[3];
  v77[2] = v51[2];
  v60 = v51[4];
  v61 = v51[5];
  v77[3] = v59;
  v77[4] = v60;
  v77[5] = v61;
  v62 = v51[1];
  v77[0] = *v51;
  v77[1] = v62;
  sub_10008875C(v77, &qword_1002712D0, &qword_1001F3A20);
  v63 = v81;
  v51[2] = v80;
  v51[3] = v63;
  v64 = v83;
  v51[4] = v82;
  v51[5] = v64;
  v65 = v79;
  *v51 = v78;
  v51[1] = v65;
  *(a2 + v47[12]) = v71;
  sub_1001A30D0(v72);
  sub_100120D10(v74, _s15PersistentStateOMa);
  sub_10008875C(v57, &qword_1002712C8, &qword_1001F3A18);
  sub_10008875C(v55, &qword_1002712C8, &qword_1001F3A18);
  sub_100120D10(v53, _s14UpdateScheduleVMa);
  sub_100120D10(v73, _s14UpdateScheduleVMa);
  return sub_100120D10(v24, _s15PersistentStateO2V1VMa);
}

uint64_t sub_10011E4A4(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100271D10, &qword_1001F4BC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27[-v8];
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10011FC68();
  sub_1001C6E78();
  *&v36 = *v3;
  LOBYTE(v30) = 0;
  sub_100084528(&qword_100271CB8, &qword_1001F4BB8);
  sub_10011FE88(&qword_100271D18, &qword_100271D20);
  sub_1001C6CA8();
  if (!v2)
  {
    *&v36 = v3[1];
    LOBYTE(v30) = 1;
    sub_100084528(&qword_10026F790, &qword_1001F13C0);
    sub_10011FF24(&qword_100271D28, &qword_100271D30);
    sub_1001C6C58();
    v11 = _s15PersistentStateO2V1VMa(0);
    v12 = v11[6];
    LOBYTE(v36) = 2;
    _s14UpdateScheduleVMa();
    sub_10011FFC0(&qword_100271D38, _s14UpdateScheduleVMa);
    sub_1001C6C58();
    v13 = v11[7];
    LOBYTE(v36) = 3;
    _s6UpdateVMa();
    sub_10011FFC0(&qword_1002714B0, _s6UpdateVMa);
    sub_1001C6C58();
    v36 = *(v3 + v11[8]);
    LOBYTE(v30) = 4;
    sub_100120008();
    sub_1001C6C58();
    v14 = v3 + v11[9];
    v15 = v14[16];
    v43 = *v14;
    v44 = v15;
    v42 = 5;
    sub_10012005C();
    sub_1001C6C58();
    v16 = (v3 + v11[10]);
    v17 = v16[2];
    v18 = v16[4];
    v39 = v16[3];
    v40 = v18;
    v19 = v16[4];
    v41 = v16[5];
    v20 = *v16;
    v21 = v16[2];
    v37 = v16[1];
    v38 = v21;
    v22 = *v16;
    v33 = v39;
    v34 = v19;
    v35 = v16[5];
    v36 = v22;
    v30 = v20;
    v31 = v37;
    v32 = v17;
    v29 = 6;
    sub_10009ADF0(&v36, v28, &qword_1002712D0, &qword_1001F3A20);
    sub_1001200B0();
    sub_1001C6C58();
    v28[2] = v32;
    v28[3] = v33;
    v28[4] = v34;
    v28[5] = v35;
    v28[0] = v30;
    v28[1] = v31;
    sub_10008875C(v28, &qword_1002712D0, &qword_1001F3A20);
    v23 = v3 + v11[11];
    v24 = *v23;
    v25 = v23[8];
    v27[15] = 7;
    sub_1001C6C48();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10011E9A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v58 = v55 - v5;
  v6 = sub_100084528(&qword_100271B10, &qword_1001F4AC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v59 = v55 - v8;
  v9 = sub_100084528(&qword_100271CA8, &qword_1001F4BB0);
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  __chkstk_darwin(v9);
  v12 = v55 - v11;
  v13 = _s15PersistentStateO2V1VMa(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 24);
  updated = _s14UpdateScheduleVMa();
  v20 = *(*(updated - 8) + 56);
  v64 = v18;
  v20(&v17[v18], 1, 1, updated);
  v21 = *(v13 + 28);
  v22 = _s6UpdateVMa();
  v23 = *(*(v22 - 8) + 56);
  v66 = v21;
  v23(&v17[v21], 1, 1, v22);
  v24 = *(v13 + 40);
  v82 = v17;
  v25 = &v17[v24];
  *(v25 + 4) = 0u;
  *(v25 + 5) = 0u;
  *(v25 + 2) = 0u;
  *(v25 + 3) = 0u;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v26 = a1[3];
  v27 = a1[4];
  v65 = a1;
  sub_10009BB74(a1, v26);
  sub_10011FC68();
  v62 = v12;
  v28 = v63;
  sub_1001C6E58();
  if (v28)
  {
    v30 = v64;
    v31 = v82;
    sub_10008E7BC(v65);

    v32 = v66;
    sub_10008875C(v31 + v30, &qword_100271B10, &qword_1001F4AC0);
    sub_10008875C(v31 + v32, &qword_1002712C8, &qword_1001F3A18);

    v33 = *(v25 + 3);
    v78 = *(v25 + 2);
    v79 = v33;
    v34 = *(v25 + 5);
    v80 = *(v25 + 4);
    v81 = v34;
    v35 = *(v25 + 1);
    v76 = *v25;
    v77 = v35;
    return sub_10008875C(&v76, &qword_1002712D0, &qword_1001F3A20);
  }

  else
  {
    v63 = v22;
    v29 = v59;
    v56 = v13;
    sub_100084528(&qword_100271CB8, &qword_1001F4BB8);
    LOBYTE(v74[0]) = 0;
    sub_10011FE88(&qword_100271CC0, &qword_100271CC8);
    sub_1001C6C28();
    v36 = v82;
    *v82 = v76;
    sub_100084528(&qword_10026F790, &qword_1001F13C0);
    LOBYTE(v74[0]) = 1;
    sub_10011FF24(&qword_100271CD0, &qword_100271CD8);
    sub_1001C6BD8();
    v37 = v64;
    v55[1] = v76;
    v36[1] = v76;
    LOBYTE(v76) = 2;
    sub_10011FFC0(&qword_100271CE0, _s14UpdateScheduleVMa);
    sub_1001C6BD8();
    sub_1000B36A8(v29, v36 + v37, &qword_100271B10, &qword_1001F4AC0);
    LOBYTE(v76) = 3;
    sub_10011FFC0(&qword_100271CE8, _s6UpdateVMa);
    v38 = v58;
    sub_1001C6BD8();
    sub_1000B36A8(v38, v36 + v66, &qword_1002712C8, &qword_1001F3A18);
    LOBYTE(v74[0]) = 4;
    sub_10011FCBC();
    sub_1001C6BD8();
    v39 = (v36 + v56[8]);
    v40 = *(&v76 + 1);
    *v39 = v76;
    v39[1] = v40;
    LOBYTE(v74[0]) = 5;
    sub_10011FD10();
    sub_1001C6BD8();
    v41 = v36 + v56[9];
    v42 = v77;
    *v41 = v76;
    v41[16] = v42;
    v75 = 6;
    sub_10011FD64();
    sub_1001C6BD8();
    v70 = v78;
    v71 = v79;
    v72 = v80;
    v73 = v81;
    v68 = v76;
    v69 = v77;
    v43 = *(v25 + 3);
    v74[2] = *(v25 + 2);
    v74[3] = v43;
    v44 = *(v25 + 5);
    v74[4] = *(v25 + 4);
    v74[5] = v44;
    v45 = *(v25 + 1);
    v74[0] = *v25;
    v74[1] = v45;
    sub_10008875C(v74, &qword_1002712D0, &qword_1001F3A20);
    v46 = v71;
    *(v25 + 2) = v70;
    *(v25 + 3) = v46;
    v47 = v73;
    *(v25 + 4) = v72;
    *(v25 + 5) = v47;
    v48 = v69;
    *v25 = v68;
    *(v25 + 1) = v48;
    v67 = 7;
    v49 = sub_1001C6BC8();
    v51 = v50;
    v52 = v82;
    v53 = v82 + v56[11];
    (*(v60 + 8))(v62, v61);
    *v53 = v49;
    v53[8] = v51 & 1;
    sub_10011FDB8(v52, v57, _s15PersistentStateO2V1VMa);
    sub_10008E7BC(v65);
    return sub_100120D10(v52, _s15PersistentStateO2V1VMa);
  }
}

unint64_t sub_10011F24C()
{
  v1 = *v0;
  v2 = 0x4964656B63617274;
  v3 = 0xD000000000000014;
  if (v1 != 6)
  {
    v3 = 0x696D694C64726163;
  }

  v4 = 0x6F724665726F7473;
  if (v1 != 4)
  {
    v4 = 0x657268546C616564;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6353657461647075;
  if (v1 != 2)
  {
    v5 = 0x616470557473616CLL;
  }

  if (*v0)
  {
    v2 = 0x736C616564;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10011F378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001210E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10011F3AC(uint64_t a1)
{
  v2 = sub_10011FC68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011F3E8(uint64_t a1)
{
  v2 = sub_10011FC68();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10011F458()
{
  sub_1001C6DF8();
  sub_1001C60E8();
  return sub_1001C6E28();
}

Swift::Int sub_10011F4C4()
{
  sub_1001C6DF8();
  sub_1001C60E8();
  return sub_1001C6E28();
}

uint64_t sub_10011F514@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100242358;
  v7._object = v3;
  v5 = sub_1001C6BA8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10011F59C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_100242390;
  v8._object = a2;
  v6 = sub_1001C6BA8(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10011F5F4(uint64_t a1)
{
  v2 = sub_10011FC14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011F630(uint64_t a1)
{
  v2 = sub_10011FC14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10011F66C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v4 = _s15PersistentStateOMa(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_100271C98, &qword_1001F4BA8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10011FC14();
  sub_1001C6E58();
  if (!v2)
  {
    v25 = v7;
    v14 = v28;
    v15 = sub_1001C6BE8();
    v18 = v16;
    v19 = v15 == 3157553 && v16 == 0xE300000000000000;
    if (v19 || (v24 = v15, (sub_1001C6D08() & 1) != 0))
    {

      sub_1000B3A90(a1, &v26);
      v20 = v25;
      sub_10011E9A0(&v26, v25);
      (*(v9 + 8))(v12, v8);
      sub_10011FE20(v20, v14, _s15PersistentStateOMa);
    }

    else
    {
      v21 = a1[4];
      v28 = sub_10009BB74(a1, a1[3]);
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1001C69C8(41);

      v26 = 0xD000000000000027;
      v27 = 0x8000000100202180;
      v29._countAndFlagsBits = v24;
      v29._object = v18;
      sub_1001C6138(v29);

      sub_1001C6A28();
      swift_allocError();
      sub_100145220(v22);

      swift_willThrow();
      (*(v9 + 8))(v12, v8);
    }
  }

  return sub_10008E7BC(a1);
}

uint64_t sub_10011F96C(void *a1)
{
  v2 = _s15PersistentStateO2V1VMa(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s15PersistentStateOMa(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&qword_100271D08, &qword_1001F4BC0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v18 - v13;
  v15 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_10011FC14();
  sub_1001C6E78();
  sub_10011FDB8(v18[1], v9, _s15PersistentStateOMa);
  sub_10011FE20(v9, v5, _s15PersistentStateO2V1VMa);
  v16 = v18[3];
  sub_1001C6C68();
  if (!v16)
  {
    sub_10011E4A4(a1);
  }

  sub_100120D10(v5, _s15PersistentStateO2V1VMa);
  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_10011FC14()
{
  result = qword_100271CA0;
  if (!qword_100271CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271CA0);
  }

  return result;
}

unint64_t sub_10011FC68()
{
  result = qword_100271CB0;
  if (!qword_100271CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271CB0);
  }

  return result;
}

unint64_t sub_10011FCBC()
{
  result = qword_100271CF0;
  if (!qword_100271CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271CF0);
  }

  return result;
}

unint64_t sub_10011FD10()
{
  result = qword_100271CF8;
  if (!qword_100271CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271CF8);
  }

  return result;
}

unint64_t sub_10011FD64()
{
  result = qword_100271D00;
  if (!qword_100271D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D00);
  }

  return result;
}

uint64_t sub_10011FDB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011FE20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10011FE88(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(&qword_100271CB8, &qword_1001F4BB8);
    sub_10011FFC0(a2, _s11TrackedItemVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10011FF24(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(&qword_10026F790, &qword_1001F13C0);
    sub_10011FFC0(a2, _s4DealVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10011FFC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100120008()
{
  result = qword_100271D40;
  if (!qword_100271D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D40);
  }

  return result;
}

unint64_t sub_10012005C()
{
  result = qword_100271D48;
  if (!qword_100271D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D48);
  }

  return result;
}

unint64_t sub_1001200B0()
{
  result = qword_100271D50;
  if (!qword_100271D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D50);
  }

  return result;
}

BOOL sub_100120104(uint64_t *a1, uint64_t *a2)
{
  updated = _s6UpdateVMa();
  *(&v99 + 1) = *(updated - 8);
  *&v100 = updated;
  v5 = *(*(&v99 + 1) + 64);
  __chkstk_darwin(updated);
  v98 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *&v99 = &v87 - v9;
  v10 = sub_100084528(&qword_100271D58, &qword_1001F4BD0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  *(&v100 + 1) = &v87 - v12;
  v13 = _s14UpdateScheduleVMa();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100084528(&qword_100271B10, &qword_1001F4AC0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v87 - v20;
  v22 = sub_100084528(&qword_100271D60, &qword_1001F4BD8);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v87 - v24;
  if ((sub_1001945AC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v96 = a2;
  v97 = a1;
  v26 = a1[1];
  v27 = a2[1];
  if (v26)
  {
    if (!v27)
    {
      return 0;
    }

    v28 = sub_100194BA4(v26, v27);

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v95 = _s15PersistentStateO2V1VMa(0);
  v29 = v95[6];
  v30 = *(v22 + 48);
  sub_10009ADF0(v97 + v29, v25, &qword_100271B10, &qword_1001F4AC0);
  v31 = v96 + v29;
  v32 = v30;
  sub_10009ADF0(v31, &v25[v30], &qword_100271B10, &qword_1001F4AC0);
  v33 = *(v14 + 48);
  if (v33(v25, 1, v13) == 1)
  {
    if (v33(&v25[v32], 1, v13) == 1)
    {
      sub_10008875C(v25, &qword_100271B10, &qword_1001F4AC0);
      goto LABEL_10;
    }

LABEL_21:
    v47 = &qword_100271D60;
    v48 = &qword_1001F4BD8;
    v49 = v25;
    goto LABEL_30;
  }

  sub_10009ADF0(v25, v21, &qword_100271B10, &qword_1001F4AC0);
  if (v33(&v25[v32], 1, v13) == 1)
  {
    sub_100120D10(v21, _s14UpdateScheduleVMa);
    goto LABEL_21;
  }

  sub_10011FE20(&v25[v32], v17, _s14UpdateScheduleVMa);
  if ((sub_1001C4C68() & 1) == 0)
  {
    sub_100120D10(v17, _s14UpdateScheduleVMa);
    sub_100120D10(v21, _s14UpdateScheduleVMa);
    v47 = &qword_100271B10;
    v48 = &qword_1001F4AC0;
    v49 = v25;
    goto LABEL_30;
  }

  v50 = sub_100194E78(*&v21[*(v13 + 20)], *&v17[*(v13 + 20)]);
  sub_100120D10(v17, _s14UpdateScheduleVMa);
  sub_100120D10(v21, _s14UpdateScheduleVMa);
  sub_10008875C(v25, &qword_100271B10, &qword_1001F4AC0);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v34 = v95;
  v35 = v95[7];
  v36 = *(v10 + 48);
  v37 = v97;
  v38 = *(&v100 + 1);
  sub_10009ADF0(v97 + v35, *(&v100 + 1), &qword_1002712C8, &qword_1001F3A18);
  v39 = v96;
  sub_10009ADF0(v96 + v35, v38 + v36, &qword_1002712C8, &qword_1001F3A18);
  v40 = v100;
  v41 = *(*(&v99 + 1) + 48);
  if (v41(v38, 1, v100) == 1)
  {
    if (v41(v38 + v36, 1, v40) == 1)
    {
      sub_10008875C(v38, &qword_1002712C8, &qword_1001F3A18);
      goto LABEL_13;
    }

    goto LABEL_27;
  }

  v51 = v99;
  sub_10009ADF0(v38, v99, &qword_1002712C8, &qword_1001F3A18);
  if (v41(v38 + v36, 1, v40) == 1)
  {
    sub_100120D10(v51, _s6UpdateVMa);
LABEL_27:
    v47 = &qword_100271D58;
    v48 = &qword_1001F4BD0;
LABEL_28:
    v49 = v38;
    goto LABEL_30;
  }

  v53 = v38 + v36;
  v54 = v98;
  sub_10011FE20(v53, v98, _s6UpdateVMa);
  if ((sub_1001C4C68() & 1) == 0)
  {
    sub_100120D10(v54, _s6UpdateVMa);
    sub_100120D10(v51, _s6UpdateVMa);
    v47 = &qword_1002712C8;
    v48 = &qword_1001F3A18;
    goto LABEL_28;
  }

  v55 = sub_10019E694(*(v51 + *(v40 + 20)), *(v54 + *(v40 + 20)));
  sub_100120D10(v54, _s6UpdateVMa);
  sub_100120D10(v51, _s6UpdateVMa);
  sub_10008875C(v38, &qword_1002712C8, &qword_1001F3A18);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v42 = v34[8];
  v43 = (v37 + v42);
  v44 = *(v37 + v42 + 8);
  v45 = (v39 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46 || (*v43 != *v45 || v44 != v46) && (sub_1001C6D08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  v56 = v34[9];
  v57 = (v37 + v56);
  v58 = *(v37 + v56 + 16);
  v59 = v39 + v56;
  v60 = *(v59 + 16);
  if (v58)
  {
    if ((*(v59 + 16) & 1) == 0)
    {
      return 0;
    }

LABEL_44:
    v61 = (v37 + v34[10]);
    v62 = v61[3];
    v124 = v61[2];
    v125 = v62;
    v63 = v61[5];
    v126 = v61[4];
    v127 = v63;
    v64 = v61[1];
    v122 = *v61;
    v123 = v64;
    v65 = (v39 + v34[10]);
    v66 = v65[1];
    v128[0] = *v65;
    v128[1] = v66;
    v67 = v65[5];
    v128[4] = v65[4];
    v128[5] = v67;
    v68 = v65[3];
    v128[2] = v65[2];
    v128[3] = v68;
    v69 = v122;
    v70 = *(&v64 + 1);
    v71 = v64;
    v73 = *(&v127 + 1);
    v72 = v127;
    if (*(&v122 + 1))
    {
      if (*(&v128[0] + 1))
      {
        v93 = *(&v123 + 1);
        v94 = v126;
        v100 = v124;
        v99 = v125;
        v98 = *(&v126 + 1);
        v91 = *(&v127 + 1);
        v92 = v127;
        v110 = v128[0];
        v74 = v65[2];
        v111 = v65[1];
        v112 = v74;
        v75 = v65[4];
        v113 = v65[3];
        v114 = v75;
        v115 = v65[5];
        v76 = v111;
        v77 = v112;
        v78 = v113;
        v89 = *(&v75 + 1);
        v90 = v75;
        v87 = *(&v115 + 1);
        v88 = v115;
        if (v128[0] == v122 || (sub_1001C6D08()) && (__PAIR128__(v93, v71) == v76 || (sub_1001C6D08()) && (v100 == v77 || (sub_1001C6D08()) && (v99 == v78 || (sub_1001C6D08()))
        {
          v73 = v91;
          v39 = v96;
          v72 = v92;
          if (v94 == v90 && v98 == v89 || (sub_1001C6D08() & 1) != 0)
          {
            v70 = v93;
            if (v72 == v88 && v73 == v87)
            {
              sub_10009ADF0(&v122, &v101, &qword_1002712D0, &qword_1001F3A20);
              sub_10009ADF0(v128, &v101, &qword_1002712D0, &qword_1001F3A20);
              sub_10008875C(&v110, &qword_1002712D0, &qword_1001F3A20);
LABEL_65:
              v110 = v69;
              *&v111 = v71;
              *(&v111 + 1) = v70;
              v112 = v100;
              v113 = v99;
              *&v114 = v94;
              *(&v114 + 1) = v98;
              *&v115 = v72;
              *(&v115 + 1) = v73;
              sub_10008875C(&v110, &qword_1002712D0, &qword_1001F3A20);
              v81 = v95[11];
              v82 = (v97 + v81);
              v83 = *(v97 + v81 + 8);
              v84 = (v39 + v81);
              v85 = *(v39 + v81 + 8);
              if ((v83 & 1) == 0)
              {
                if (*v82 != *v84)
                {
                  LOBYTE(v85) = 1;
                }

                return (v85 & 1) == 0;
              }

              return v85 != 0;
            }

            v86 = sub_1001C6D08();
            sub_10009ADF0(&v122, &v101, &qword_1002712D0, &qword_1001F3A20);
            sub_10009ADF0(v128, &v101, &qword_1002712D0, &qword_1001F3A20);
            sub_10008875C(&v110, &qword_1002712D0, &qword_1001F3A20);
            if (v86)
            {
              v72 = v92;
              goto LABEL_65;
            }

            v101 = v69;
            v102 = v71;
            v103 = v70;
            v104 = v100;
            v105 = v99;
            v106 = v94;
            v107 = v98;
            v108 = v92;
            v109 = v73;
            v47 = &qword_1002712D0;
            v48 = &qword_1001F3A20;
            v49 = &v101;
LABEL_30:
            sub_10008875C(v49, v47, v48);
            return 0;
          }

          sub_10009ADF0(&v122, &v101, &qword_1002712D0, &qword_1001F3A20);
          sub_10009ADF0(v128, &v101, &qword_1002712D0, &qword_1001F3A20);
        }

        else
        {
          sub_10009ADF0(&v122, &v101, &qword_1002712D0, &qword_1001F3A20);
          sub_10009ADF0(v128, &v101, &qword_1002712D0, &qword_1001F3A20);
          v73 = v91;
          v72 = v92;
        }

        sub_10008875C(&v110, &qword_1002712D0, &qword_1001F3A20);
        v101 = v69;
        v102 = v71;
        v103 = v93;
        v104 = v100;
        v105 = v99;
        v106 = v94;
        v107 = v98;
        v108 = v72;
        v109 = v73;
        v49 = &v101;
        v47 = &qword_1002712D0;
        v48 = &qword_1001F3A20;
        goto LABEL_30;
      }
    }

    else if (!*(&v128[0] + 1))
    {
      v100 = v124;
      v99 = v125;
      v98 = *(&v126 + 1);
      v94 = v126;
      sub_10009ADF0(&v122, &v110, &qword_1002712D0, &qword_1001F3A20);
      sub_10009ADF0(v128, &v110, &qword_1002712D0, &qword_1001F3A20);
      goto LABEL_65;
    }

    v110 = v122;
    v111 = v64;
    v112 = v124;
    v113 = v125;
    v114 = v126;
    v115 = v127;
    v116 = v128[0];
    v79 = v65[4];
    v119 = v65[3];
    v120 = v79;
    v121 = v65[5];
    v80 = v65[2];
    v117 = v65[1];
    v118 = v80;
    sub_10009ADF0(&v122, &v101, &qword_1002712D0, &qword_1001F3A20);
    sub_10009ADF0(v128, &v101, &qword_1002712D0, &qword_1001F3A20);
    v47 = &unk_100271D68;
    v48 = &unk_1001F4BE0;
    v49 = &v110;
    goto LABEL_30;
  }

  if (*(v59 + 16))
  {
    return 0;
  }

  result = 0;
  if (*v57 == *v59 && v57[1] == *(v59 + 8))
  {
    goto LABEL_44;
  }

  return result;
}

uint64_t sub_100120D10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s15PersistentStateO2V1V10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s15PersistentStateO2V1V10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100120ED4()
{
  result = qword_100271D70;
  if (!qword_100271D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D70);
  }

  return result;
}

unint64_t sub_100120F2C()
{
  result = qword_100271D78;
  if (!qword_100271D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D78);
  }

  return result;
}

unint64_t sub_100120F84()
{
  result = qword_100271D80;
  if (!qword_100271D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D80);
  }

  return result;
}

unint64_t sub_100120FDC()
{
  result = qword_100271D88;
  if (!qword_100271D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D88);
  }

  return result;
}

unint64_t sub_100121034()
{
  result = qword_100271D90;
  if (!qword_100271D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D90);
  }

  return result;
}

unint64_t sub_10012108C()
{
  result = qword_100271D98;
  if (!qword_100271D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271D98);
  }

  return result;
}

uint64_t sub_1001210E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4964656B63617274 && a2 == 0xEC000000736D6574;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736C616564 && a2 == 0xE500000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6353657461647075 && a2 == 0xEE00656C75646568 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xEA00000000006574 || (sub_1001C6D08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F724665726F7473 && a2 == 0xEC0000004449746ELL || (sub_1001C6D08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657268546C616564 && a2 == 0xED0000646C6F6873 || (sub_1001C6D08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001002021B0 == a2 || (sub_1001C6D08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696D694C64726163 && a2 == 0xE900000000000074)
  {

    return 7;
  }

  else
  {
    v6 = sub_1001C6D08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_100121464()
{
  result = qword_100271DA0;
  if (!qword_100271DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271DA0);
  }

  return result;
}

unint64_t sub_1001214B8()
{
  result = qword_100271DA8;
  if (!qword_100271DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271DA8);
  }

  return result;
}

uint64_t sub_10012150C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 URLsForDirectory:14 inDomains:1];

  v4 = sub_1001C4B28();
  v5 = sub_1001C6298();
  if (!*(v5 + 16))
  {
    goto LABEL_7;
  }

  if (!*(v5 + 16))
  {
    __break(1u);
LABEL_7:

    __break(1u);
    return result;
  }

  (*(*(v4 - 8) + 16))(a1, v5 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v4);
}

uint64_t static CRDTModelFileSyncContextStore.persistentContext(_:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v2 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_1001C4B28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - v13;
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v23 = "q_handle, no delta";
  type metadata accessor for _CRDTModelContextStoreUtils();
  sub_10012150C(v14);
  sub_1001C4AA8();
  v17 = *(v7 + 8);
  v17(v14, v6);
  v18 = [objc_opt_self() books];
  v19 = [v18 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();
  v17(v11, v6);
  v20 = *(v24 + 96);
  v27 = *(v24 + 80);
  v28 = v20;
  type metadata accessor for _CRDTModelContextStore();
  (*(v7 + 16))(v5, v14, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v21 = sub_100121928(v16, v5, v25, v26);
  sub_10008875C(v5, &unk_10026EF10, &unk_1001F1FA0);
  v17(v14, v6);
  v17(v16, v6);
  return v21;
}

uint64_t sub_100121928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a2;
  v7 = sub_1001C4988();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  __chkstk_darwin(v7);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = sub_1001C4B28();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v53 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v51 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v51 - v25;
  __chkstk_darwin(v24);
  v27 = *(v17 + 16);
  v60 = &v51 - v28;
  v52 = v27;
  v51 = v17 + 16;
  (v27)(&v51 - v28);
  *&v62 = a3;
  *(&v62 + 1) = a4;

  v65._countAndFlagsBits = 45;
  v65._object = 0xE100000000000000;
  sub_1001C6138(v65);
  v66._countAndFlagsBits = sub_100122588();
  sub_1001C6138(v66);

  v61 = v26;
  sub_1001C4AA8();
  sub_100122BBC(v56, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_10008875C(v15, &unk_10026EF10, &unk_1001F1FA0);
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    sub_100122608(a1);

    (*(v17 + 8))(v23, v16);
  }

  sub_1001C65B8();
  if (qword_10026EBC8 != -1)
  {
    swift_once();
  }

  v29 = qword_10026F958;
  v55 = sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1001F0670;
  v31 = sub_1001C4A58();
  v33 = v32;
  *(v30 + 56) = &type metadata for String;
  v34 = sub_100084570();
  *(v30 + 64) = v34;
  *(v30 + 32) = v31;
  *(v30 + 40) = v33;
  v56 = v29;
  sub_1001C5118();

  v35 = v57;
  sub_1001C4978();
  sub_1001C4968();
  v36 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v37);
  v39 = v38;
  *&v62 = 0;
  LODWORD(v30) = [v36 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:&v62];

  if (v30)
  {
    v40 = v62;
    sub_1001C4A78();
    sub_1001C5E38();
    v41 = v61;
    v52(v53, v61, v16);
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    (*(v17 + 56))(v54, 1, 1, v16);
    v50 = sub_1001C5E28();
  }

  else
  {
    v42 = v62;
    sub_1001C4A28();

    swift_willThrow();
    sub_1001C6598();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1001F0660;
    v41 = v61;
    v44 = sub_1001C4A58();
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = v34;
    *(v43 + 32) = v44;
    *(v43 + 40) = v45;
    swift_getErrorValue();
    v46 = sub_1001C6D98();
    *(v43 + 96) = &type metadata for String;
    *(v43 + 104) = v34;
    *(v43 + 72) = v46;
    *(v43 + 80) = v47;
    sub_1001C5118();

    sub_1001C5E38();
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v50 = sub_1001C5E18();

    sub_10008875C(&v62, &unk_10026EF20, &unk_1001F1FB0);
  }

  (*(v58 + 8))(v35, v59);
  v48 = *(v17 + 8);
  v48(v41, v16);
  v48(v60, v16);
  return v50;
}

uint64_t static CRDTModelFileSyncContextStore.groupPersistentContext(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a2;
  v5 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_1001C4B28();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v17 = [objc_opt_self() books];
  v18 = [v17 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();
  v19 = *(v10 + 8);
  v19(v14, v9);
  v20 = *(v3 + 96);
  v25 = *(v3 + 80);
  v26 = v20;
  type metadata accessor for _CRDTModelContextStore();
  (*(v10 + 56))(v8, 1, 1, v9);
  v21 = sub_100121928(v16, v8, a1, v24);
  sub_10008875C(v8, &unk_10026EF10, &unk_1001F1FA0);
  v19(v16, v9);
  return v21;
}

uint64_t static CRDTModelLocalFileContextStore.persistentContext(_:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v2 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_1001C4B28();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - v13;
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v23 = "ReadingHistoryModel";
  type metadata accessor for _CRDTModelContextStoreUtils();
  sub_10012150C(v14);
  sub_1001C4AA8();
  v17 = *(v7 + 8);
  v17(v14, v6);
  v18 = [objc_opt_self() books];
  v19 = [v18 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();
  v17(v11, v6);
  v20 = *(v24 + 96);
  v27 = *(v24 + 80);
  v28 = v20;
  type metadata accessor for _CRDTModelContextStore();
  (*(v7 + 16))(v5, v14, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v21 = sub_100121928(v16, v5, v25, v26);
  sub_10008875C(v5, &unk_10026EF10, &unk_1001F1FA0);
  v17(v14, v6);
  v17(v16, v6);
  return v21;
}

uint64_t sub_100122588()
{
  v1 = *(v0 + 80);
  v3 = (*(*(v0 + 104) + 8))();

  v4._countAndFlagsBits = 0x2E747865746E6F43;
  v4._object = 0xEA00000000006264;
  sub_1001C6138(v4);

  return v3;
}

void sub_100122608(uint64_t a1)
{
  v2 = sub_1001C4B28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v60 = &v54 - v9;
  __chkstk_darwin(v8);
  v11 = &v54 - v10;
  sub_1001C4AA8();
  v12 = [objc_opt_self() defaultManager];
  sub_1001C4AF8();
  v13 = sub_1001C5FE8();

  v14 = [v12 fileExistsAtPath:v13];

  if (v14)
  {
    v55 = a1;
    v56 = v2;
    v58 = v7;
    v59 = v3;
    v57 = v12;
    sub_1001C65B8();
    if (qword_10026EBC8 != -1)
    {
      swift_once();
    }

    v15 = qword_10026F958;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v16 = swift_allocObject();
    v54 = xmmword_1001F0670;
    *(v16 + 16) = xmmword_1001F0670;
    v17 = sub_1001C4A58();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    v20 = sub_100084570();
    *(v16 + 64) = v20;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v21 = v15;
    sub_1001C5118();

    v22 = v60;
    v23 = v56;
    (*(v59 + 16))(v60, v55, v56);
    v24 = v58;
    sub_1001C4AA8();
    sub_1001C4AF8();
    v25 = sub_1001C5FE8();

    v26 = v57;
    LODWORD(v17) = [v57 fileExistsAtPath:v25];

    if (v17)
    {
      sub_1001C6598();
      v28 = swift_allocObject();
      *(v28 + 16) = v54;
      v29 = sub_1001C4A58();
      *(v28 + 56) = &type metadata for String;
      *(v28 + 64) = v20;
      *(v28 + 32) = v29;
      *(v28 + 40) = v30;
      sub_1001C5118();
    }

    else
    {
      v55 = v21;
      sub_1001C4A88(v27);
      v32 = v31;
      v61 = 0;
      v33 = [v26 createDirectoryAtURL:v31 withIntermediateDirectories:1 attributes:0 error:&v61];

      v34 = v61;
      if (!v33)
      {
        goto LABEL_10;
      }

      v35 = v61;
      sub_1001C4A88(v36);
      v38 = v37;
      sub_1001C4A88(v39);
      v41 = v40;
      v61 = 0;
      v42 = [v26 moveItemAtURL:v38 toURL:v40 error:&v61];

      v34 = v61;
      if (v42)
      {
        v43 = v61;
        sub_1001C65B8();
        v44 = swift_allocObject();
        *(v44 + 16) = v54;
        v45 = sub_1001C4A58();
        *(v44 + 56) = &type metadata for String;
        *(v44 + 64) = v20;
        *(v44 + 32) = v45;
        *(v44 + 40) = v46;
        sub_1001C5118();
      }

      else
      {
LABEL_10:
        v47 = v34;
        sub_1001C4A28();

        swift_willThrow();
        LODWORD(v54) = sub_1001C6598();
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1001F0660;
        v49 = sub_1001C4A58();
        *(v48 + 56) = &type metadata for String;
        *(v48 + 64) = v20;
        *(v48 + 32) = v49;
        *(v48 + 40) = v50;
        swift_getErrorValue();
        v51 = sub_1001C6D98();
        *(v48 + 96) = &type metadata for String;
        *(v48 + 104) = v20;
        *(v48 + 72) = v51;
        *(v48 + 80) = v52;
        sub_1001C5118();
      }
    }

    v53 = *(v59 + 8);
    v53(v24, v23);
    v53(v22, v23);
    v53(v11, v23);
  }

  else
  {
    (*(v3 + 8))(v11, v2);
  }
}

uint64_t sub_100122BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CRDTModelLocalFileManager.DefaultConfig.storeDirectory.getter()
{
  v0 = sub_1001C4B28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() books];
  v6 = [v5 containerURL];

  sub_1001C4AD8();
  sub_1001C4AA8();

  return (*(v1 + 8))(v4, v0);
}

uint64_t CRDTModelLocalFileManager.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t CRDTModelLocalFileManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CRDTModelLocalFileManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100122ED8;
}

void sub_100122ED8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_100122F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = type metadata accessor for ModelState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = v1[4];

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a1, v10, v3);
  return (*(v7 + 8))(v10, v6);
}

BOOL sub_1001230B0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = type metadata accessor for ModelState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = v0[4];

  MutableObservableContainer.value.getter();

  LODWORD(v9) = v8[*(v4 + 44)];
  (*(v5 + 8))(v8, v4);
  return static CRDTModelLocalFileManager.SyncError.__derived_enum_equals(_:_:)(v9, 1);
}

uint64_t CRDTModelLocalFileManager.observable.getter()
{
  v1 = *v0;
  v2 = *(v0 + qword_100271FD0);
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  type metadata accessor for ModelState();
  swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer();
  sub_1001C6688();
  return v7;
}

uint64_t CRDTModelLocalFileManager.model.getter()
{
  v1 = *v0;
  v2 = *(v0 + qword_100271FD0);
  v3 = *(v1 + 80);
  return sub_1001C6688();
}

uint64_t sub_10012336C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v7 = type metadata accessor for ModelState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];

  MutableObservableContainer.value.getter();

  (*(*(v4 - 8) + 16))(a2, v11, v4);
  return (*(v8 + 8))(v11, v7);
}

uint64_t CRDTModelLocalFileManager.enableCloudSync.getter()
{
  v1 = direct field offset for CRDTModelLocalFileManager.enableCloudSync;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRDTModelLocalFileManager.enableCloudSync.setter(char a1)
{
  v3 = direct field offset for CRDTModelLocalFileManager.enableCloudSync;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRDTModelLocalFileManager.__allocating_init(clientName:delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  v8 = *(v3 + 96);
  v9 = *(v3 + 104);
  type metadata accessor for CRDTModelLocalFileContextStore();
  v10 = static CRDTModelLocalFileContextStore.persistentContext(_:)(a1, a2);

  v15[1] = v7;
  v15[2] = v8;
  v15[3] = type metadata accessor for CRDTModelLocalFileManager.DefaultConfig();
  v15[4] = &protocol witness table for CRDTModelLocalFileManager<A>.DefaultConfig;
  v15[0] = v10;
  v11 = *(v3 + 48);
  v12 = *(v3 + 52);
  v13 = swift_allocObject();
  CRDTModelLocalFileManager.init(config:delegate:)(v15, 0, 0);
  swift_unknownObjectRelease();
  return v13;
}

uint64_t CRDTModelLocalFileManager.__allocating_init(config:delegate:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  CRDTModelLocalFileManager.init(config:delegate:)(a1, a2, a3);
  return v9;
}

void *CRDTModelLocalFileManager.init(config:delegate:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v103 = a3;
  v118 = a2;
  v120 = a1;
  v5 = *v3;
  v110 = sub_1001C5648();
  v109 = *(v110 - 8);
  v6 = *(v109 + 64);
  __chkstk_darwin(v110);
  v108 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1001C4B28();
  v117 = *(v111 - 8);
  v8 = *(v117 + 64);
  v9 = __chkstk_darwin(v111);
  v99 = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v119 = v92 - v11;
  v12 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v102 = v92 - v14;
  v96 = v5;
  v15 = v5[10];
  v16 = v5[12];
  v97 = v5[11];
  v101 = v16;
  v17 = type metadata accessor for ModelState.Source();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v100 = v92 - v19;
  v116 = v15;
  v115 = type metadata accessor for ModelState();
  v107 = *(v115 - 8);
  v20 = *(v107 + 64);
  v21 = __chkstk_darwin(v115);
  v113 = v92 - v22;
  v114 = *(v15 - 8);
  v23 = *(v114 + 64);
  v24 = __chkstk_darwin(v21);
  v98 = v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v112 = v92 - v26;
  v27 = sub_1001C6668();
  v95 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1001C6638();
  v32 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v106 = sub_1001C5688();
  v105 = *(v106 - 8);
  v33 = *(v105 + 64);
  __chkstk_darwin(v106);
  v35 = v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v36 = qword_100271FD0;
  v94 = sub_1000C5A14();
  sub_1001C5678();
  sub_1001C6628();
  v37 = *(v28 + 104);
  v37(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v27);
  *(v4 + v36) = sub_1001C66A8();
  v93 = qword_100271FD8;
  v92[1] = "ileManager.model";
  sub_1001C5668();
  aBlock = _swiftEmptyArrayStorage;
  sub_10012779C(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000CEAAC(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00);
  sub_1001C68C8();
  v37(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v95);
  v104 = v35;
  *(v4 + v93) = sub_1001C66A8();
  v38 = qword_100271FE8;
  v39 = [objc_allocWithZone(BDSOSTransactionProvider) init];
  v40 = type metadata accessor for ObservableTransaction();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  *(v4 + v38) = sub_1000879B0(0xD000000000000035, 0x80000001001FDE40, v39, v43);
  *(v4 + direct field offset for CRDTModelLocalFileManager.enableCloudSync) = 0;
  aBlock = 0;
  v123 = 0xE000000000000000;
  sub_1001C69C8(21);

  aBlock = 0xD000000000000013;
  v123 = 0x80000001001FDE80;
  v96 = v96[13];
  v95 = v96[1];
  v44 = v116;
  v128._countAndFlagsBits = (v95)(v116);
  sub_1001C6138(v128);

  v45 = v99;
  sub_1001C5138();
  v46 = v112;
  sub_1001C5B38();
  v47 = v120[3];
  v48 = v120[4];
  sub_10009BB74(v120, v47);
  *(v4 + qword_100271FF0) = (*(v48 + 8))(v47, v48);
  swift_beginAccess();
  v4[3] = v103;
  swift_unknownObjectWeakAssign();
  v49 = v114;
  v50 = v98;
  (*(v114 + 16))(v98, v46, v44);
  v51 = v100;
  (*(v49 + 56))(v100, 1, 2, v44);
  v52 = type metadata accessor for CRDTModelRevisionInfo();
  v53 = v102;
  (*(*(v52 - 8) + 56))(v102, 1, 1, v52);
  v54 = v113;
  ModelState.init(model:loaded:source:revisionInfo:)(v50, 0, v51, v53, v44, v113);
  swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer();
  v4[4] = sub_10015C6B4(v54);
  v55 = v120[3];
  v56 = v120[4];
  sub_10009BB74(v120, v55);
  (*(v56 + 16))(v55, v56);
  v57 = v117;
  v95();
  sub_1001C4AA8();

  v58 = v45;
  v59 = v111;
  (*(v57 + 32))(v4 + qword_100271FF8, v45);

  v60 = sub_1001C5128();
  v61 = sub_1001C6588();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    aBlock = v63;
    *v62 = 136315138;
    (*(v57 + 16))(v58, v4 + qword_100271FF8, v59);
    sub_10012779C(qword_100272010, &type metadata accessor for URL);
    v64 = sub_1001C6CC8();
    v66 = v65;

    (*(v57 + 8))(v58, v59);
    v67 = sub_1001874E8(v64, v66, &aBlock);

    *(v62 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v60, v61, "CRDTModelLocalFileManager Init: modelFileURL: %s", v62, 0xCu);
    sub_10008E7BC(v63);
  }

  else
  {
  }

  v68 = [objc_opt_self() defaultManager];
  sub_1001C4A88(v69);
  v71 = v70;
  aBlock = 0;
  v72 = [v68 createDirectoryAtURL:v70 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  if (v72)
  {
    v73 = aBlock;
  }

  else
  {
    v74 = aBlock;
    sub_1001C4A28();

    swift_willThrow();
    sub_1001C6598();
    if (qword_10026EBC8 != -1)
    {
      swift_once();
    }

    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1001F0660;
    v76 = sub_1001C4A58();
    v78 = v77;
    *(v75 + 56) = &type metadata for String;
    v79 = sub_100084570();
    *(v75 + 64) = v79;
    *(v75 + 32) = v76;
    *(v75 + 40) = v78;
    swift_getErrorValue();
    v80 = sub_1001C6D98();
    *(v75 + 96) = &type metadata for String;
    *(v75 + 104) = v79;
    *(v75 + 72) = v80;
    *(v75 + 80) = v81;
    sub_1001C5118();
  }

  v82 = v117;
  v83 = *(v4 + qword_100271FE8);
  v84 = v4[4] + *(*v4[4] + 128);
  swift_beginAccess();
  *(v84 + 8) = &protocol witness table for ObservableTransaction;
  swift_unknownObjectWeakAssign();
  *(v4 + qword_100272000) = _swiftEmptyArrayStorage;
  v85 = os_transaction_create();
  v117 = *(v4 + qword_100271FD8);
  v86 = swift_allocObject();
  *(v86 + 16) = v4;
  *(v86 + 24) = v85;
  v126 = sub_100127760;
  v127 = v86;
  aBlock = _NSConcreteStackBlock;
  v123 = 1107296256;
  v124 = sub_1000DD4AC;
  v125 = &unk_100249680;
  v87 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();
  v88 = v104;
  sub_1001C5668();
  v121 = _swiftEmptyArrayStorage;
  sub_10012779C(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
  v89 = v108;
  v90 = v110;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v87);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v109 + 8))(v89, v90);
  (*(v105 + 8))(v88, v106);
  (*(v82 + 8))(v119, v111);
  (*(v107 + 8))(v113, v115);
  (*(v114 + 8))(v112, v116);

  sub_10008E7BC(v120);
  return v4;
}

uint64_t sub_100124788()
{
  v0 = sub_1001C5128();
  v1 = sub_1001C65B8();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "CRDTModelLocalFileManager Init: About to load data", v2, 2u);
  }

  v3 = sub_1001C4B48();
  v5 = v4;
  sub_10009AD9C(v3, v4);
  sub_1001248DC(v3, v5, 0);
  sub_1000887D0(v3, v5);

  return sub_1000887D0(v3, v5);
}

uint64_t sub_1001248DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001C5648();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + qword_100271FD0);
  sub_1001C5638();
  v15 = v3;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  sub_1001C6678();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100124A04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v98 = a1;
  v100 = *v3;
  v101 = a2;
  v6 = sub_1001C5AC8();
  v96 = *(v6 - 8);
  v97 = v6;
  v7 = *(v96 + 64);
  __chkstk_darwin(v6);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v100 + 80);
  v11 = sub_1001C67F8();
  v99 = *(v11 - 8);
  v12 = v99[8];
  v13 = __chkstk_darwin(v11);
  v15 = &v89 - v14;
  v104 = v10;
  v103 = *(v10 - 8);
  v16 = *(v103 + 64);
  v17 = __chkstk_darwin(v13);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v89 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v89 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v89 - v27;
  __chkstk_darwin(v26);
  v102 = &v89 - v29;
  sub_100122F5C(&v89 - v29);
  if (a3)
  {
    swift_errorRetain();
    v30 = sub_1001C5128();
    v31 = sub_1001C6598();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v105[0] = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = sub_1001C6D98();
      v36 = sub_1001874E8(v34, v35, v105);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "CRDTModelLocalFileManager Init: couldn't load existing data: %s", v32, 0xCu);
      sub_10008E7BC(v33);
    }
  }

  else
  {
    v93 = v25;
    v94 = v11;
    v90 = v22;
    v91 = v19;
    v92 = v9;
    v95 = v4;
    v37 = sub_1001C5128();
    v38 = sub_1001C65B8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "CRDTModelLocalFileManager Init: About to deserialize existing data", v39, 2u);
    }

    v41 = v100;
    v40 = v101;
    if (v101 >> 60 == 15)
    {
      v4 = v95;
      v45 = sub_1001C5128();
      v46 = sub_1001C6598();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "CRDTModelLocalFileManager Init: couldn't deserialize existing data", v47, 2u);
      }
    }

    else
    {
      v89 = v28;
      v42 = v98;
      sub_10009AD88(v98, v101);
      sub_10009AD9C(v42, v40);
      v43 = v104;
      v44 = *(*(*(v41 + 88) + 8) + 8);
      sub_1001C5AA8();
      v99 = v44;
      v51 = v103;
      (*(v103 + 56))(v15, 0, 1, v43);
      v52 = v89;
      (*(v51 + 32))(v89, v15, v43);
      v53 = v93;
      v4 = v95;
      sub_100122F5C(v93);
      v54 = sub_1001C5C38();
      v55 = *(v51 + 8);
      v55(v53, v43);
      v56 = *(v51 + 16);
      if (v54)
      {
        v57 = v90;
        v56(v90, v52, v104);
        v58 = sub_1001C5128();
        v59 = sub_1001C65B8();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = v55;
          v94 = v51 + 8;
          v62 = v60;
          v105[0] = swift_slowAlloc();
          *v62 = 136315394;
          v63 = v104;
          v64 = *(v100 + 96);
          v65 = sub_1001C6CC8();
          v66 = v57;
          v68 = v67;
          v55(v66, v63);
          v69 = sub_1001874E8(v65, v68, v105);

          *(v62 + 4) = v69;
          *(v62 + 12) = 2080;
          swift_beginAccess();
          v70 = sub_1001C6CC8();
          v72 = sub_1001874E8(v70, v71, v105);

          *(v62 + 14) = v72;
          _os_log_impl(&_mh_execute_header, v58, v59, "CRDTModelLocalFileManager Init: loaded stored model=%s, merging into existing=%s", v62, 0x16u);
          swift_arrayDestroy();

          v74 = v97;
          v73 = v98;
          v75 = v96;
          v76 = v92;
        }

        else
        {

          v55(v57, v104);
          v74 = v97;
          v73 = v98;
          v75 = v96;
          v76 = v92;
          v61 = v55;
        }

        swift_beginAccess();
        v86 = v89;
        v87 = v104;
        sub_1001C5AB8();
        swift_endAccess();
        sub_1000887BC(v73, v101);
        (*(v75 + 8))(v76, v74);
        v61(v86, v87);
      }

      else
      {
        v77 = v91;
        v56(v91, v52, v104);
        v78 = sub_1001C5128();
        v79 = sub_1001C65B8();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v105[0] = v99;
          *v80 = 136315138;
          v81 = *(v100 + 96);
          v82 = sub_1001C6CC8();
          v84 = v83;
          v55(v77, v104);
          v85 = sub_1001874E8(v82, v84, v105);

          *(v80 + 4) = v85;
          _os_log_impl(&_mh_execute_header, v78, v79, "CRDTModelLocalFileManager Init: loaded stored model=%s, no delta", v80, 0xCu);
          sub_10008E7BC(v99);

          sub_1000887BC(v98, v101);
          v55(v52, v104);
        }

        else
        {

          sub_1000887BC(v98, v101);
          v88 = v104;
          v55(v77, v104);
          v55(v52, v88);
        }
      }
    }
  }

  v48 = v4;
  v49 = v102;
  sub_1001256C4(v48, v102);
  return (*(v103 + 8))(v49, v104);
}

uint64_t sub_1001253F8()
{
  v23 = sub_1001C5688();
  v1 = *(v23 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1001C5648();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_100272000;
  swift_beginAccess();
  v10 = *(v0 + v9);
  *(v0 + v9) = _swiftEmptyArrayStorage;
  v21 = v10;
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v0 + qword_100271FD0);
    v13 = (v21 + 32);
    v14 = (v1 + 8);
    v15 = (v5 + 8);
    do
    {
      v16 = swift_allocObject();
      v17 = *v13++;
      *(v16 + 16) = v17;

      sub_1001C5638();
      v18 = swift_allocObject();
      *(v18 + 16) = sub_1000F4A98;
      *(v18 + 24) = v16;
      aBlock[4] = sub_10009A564;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000DD4AC;
      aBlock[3] = &unk_1002498D8;
      v19 = _Block_copy(aBlock);

      sub_1001C5668();
      sub_1001C6698();
      _Block_release(v19);

      (*v14)(v4, v23);
      (*v15)(v8, v22);

      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1001256C4(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = *(*a1 + 96);
  v5[1] = *(*a1 + 80);
  v5[2] = v3;
  v6 = a2;

  MutableObservableContainer.mutate(_:)(sub_100127BCC, v5);
}

uint64_t sub_100125748(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v33 = *v3;
  v7 = v33[10];
  v8 = v33[12];
  v31 = v33[11];
  v32 = v7;
  v30 = v8;
  v9 = type metadata accessor for ModelState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  (*(v10 + 16))(&v27 - v12, a1, v9);

  v14 = sub_1001C5128();
  v15 = sub_1001C65B8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = a1;
    v34 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_1001874E8(v29, a3, &v34);
    *(v16 + 12) = 2080;
    v18 = ModelState.description.getter(v9);
    v20 = v19;
    (*(v10 + 8))(v13, v9);
    v21 = sub_1001874E8(v18, v20, &v34);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "CRDTModelLocalFileManager q_updateState (%s) -- newState=%s", v16, 0x16u);
    swift_arrayDestroy();
    a1 = v28;
  }

  else
  {

    v22 = (*(v10 + 8))(v13, v9);
  }

  v23 = v4[4];
  __chkstk_darwin(v22);
  v24 = v31;
  *(&v27 - 6) = v32;
  *(&v27 - 5) = v24;
  v25 = v33[13];
  *(&v27 - 4) = v30;
  *(&v27 - 3) = v25;
  *(&v27 - 2) = a1;

  MutableObservableContainer.mutate(_:)(sub_100127A64, (&v27 - 8));
}

uint64_t CRDTModelLocalFileManager.sync(_:isRemote:)(uint64_t a1, char a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + qword_100271FD0);
  sub_1001C5638();
  v13 = v2;
  v14 = a1;
  v15 = a2;
  sub_1001C6678();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100125BBC(_BYTE *a1, int a2)
{
  v3 = v2;
  v138 = a2;
  v5 = *v2;
  v140 = v5;
  v127 = sub_1001C5648();
  v126 = *(v127 - 8);
  v6 = *(v126 + 64);
  __chkstk_darwin(v127);
  v124 = &v112[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = sub_1001C5688();
  v123 = *(v125 - 8);
  v8 = *(v123 + 64);
  __chkstk_darwin(v125);
  v122 = &v112[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v5[10];
  v11 = v5[11];
  v12 = v5[12];
  v131 = type metadata accessor for ModelState();
  v121 = *(v131 - 8);
  v13 = *(v121 + 64);
  __chkstk_darwin(v131);
  v130 = &v112[-v14];
  v142 = v12;
  v120 = type metadata accessor for ModelState.Source();
  v119 = *(v120 - 8);
  v15 = *(v119 + 64);
  __chkstk_darwin(v120);
  v129 = &v112[-v16];
  v17 = sub_1001C5BD8();
  v135 = *(v17 - 8);
  v136 = v17;
  v18 = *(v135 + 64);
  v19 = __chkstk_darwin(v17);
  v134 = &v112[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *(v10 - 1);
  v22 = v21[8];
  v23 = __chkstk_darwin(v19);
  v132 = &v112[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin(v23);
  v128 = &v112[-v26];
  v27 = __chkstk_darwin(v25);
  v143 = &v112[-v28];
  v29 = __chkstk_darwin(v27);
  v31 = &v112[-v30];
  __chkstk_darwin(v29);
  v33 = &v112[-v32];
  v144 = os_transaction_create();
  sub_100122F5C(v33);
  v139 = v11;
  v34 = a1;
  v133 = v11[1];
  LOBYTE(v12) = sub_1001C5C38();
  v35 = v21 + 1;
  v145 = v21[1];
  v145(v33, v10);
  v36 = qword_1002818E0;
  v118 = v21;
  v39 = v21[2];
  v38 = v21 + 2;
  v37 = v39;
  if (v12)
  {
    v132 = v34;
    v117 = v37;
    v116 = v38;
    v37(v31, v34, v10);

    v40 = sub_1001C5128();
    v41 = sub_1001C65B8();

    v42 = os_log_type_enabled(v40, v41);
    v141 = v35;
    v115 = v36;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      aBlock = v114;
      *v43 = 67109634;
      *(v43 + 4) = v138 & 1;
      *(v43 + 8) = 2080;
      v113 = v41;
      v44 = sub_1001C6CC8();
      v46 = v45;
      v145(v31, v10);
      v47 = sub_1001874E8(v44, v46, &aBlock);

      *(v43 + 10) = v47;
      *(v43 + 18) = 2080;
      sub_100122F5C(v33);
      v48 = sub_1001C6CC8();
      v50 = v49;
      v51 = v145;
      v145(v33, v10);
      v52 = sub_1001874E8(v48, v50, &aBlock);

      *(v43 + 20) = v52;
      _os_log_impl(&_mh_execute_header, v40, v113, "CRDTModelLocalFileManager q_sync: isRemote=%{BOOL}d, incoming=%s and existing=%s", v43, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      v51 = v145;
      v145(v31, v10);
    }

    v70 = v10;
    sub_100122F5C(v33);
    v71 = v143;
    v72 = v133;
    sub_1001C5C78();
    v51(v33, v10);
    v73 = *(v3 + qword_100271FF0);
    v75 = v134;
    v74 = v135;
    v76 = v136;
    (*(v135 + 104))(v134, enum case for CRCodableVersion.version3(_:), v136);
    v77 = *(v72 + 8);
    v78 = v70;
    v79 = v137;
    v80 = sub_1001C5A98();
    if (v79)
    {

      (*(v74 + 8))(v75, v76);
      v82 = v128;
      v117(v128, v71, v70);
      v83 = sub_1001C5128();
      v84 = sub_1001C6598();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        aBlock = v86;
        *v85 = 136315138;
        v87 = v82;
        v88 = v142;
        v89 = sub_1001C6CC8();
        v91 = v90;
        v145(v87, v78);
        v92 = sub_1001874E8(v89, v91, &aBlock);

        *(v85 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v83, v84, "CRDTModelLocalFileManager q_sync: couldn't serialize model to sync: %s", v85, 0xCu);
        sub_10008E7BC(v86);

        v93 = v145;
      }

      else
      {

        v93 = v145;
        v145(v82, v70);
        v88 = v142;
      }

      v101 = v140[13];
      aBlock = v78;
      v147 = v139;
      v148 = v88;
      v149 = v101;
      type metadata accessor for CRDTModelLocalFileManager.SyncError();
      swift_getWitnessTable();
      swift_allocError();
      *v102 = 1;
      swift_willThrow();
      swift_unknownObjectRelease();
      return v93(v143, v78);
    }

    else
    {
      v97 = v132;
      v142 = v81;
      v98 = v80;
      (*(v74 + 8))(v75, v76);
      if (v138)
      {
        v99 = v129;
        v117(v129, v97, v78);
        v100 = 0;
      }

      else
      {
        v100 = 1;
        v99 = v129;
      }

      (v118[7])(v99, v100, 2, v78);
      v103 = v3[4];
      v104 = v142;
      sub_10009AD9C(v98, v142);

      v105 = v130;
      MutableObservableContainer.value.getter();

      ModelState.updating(model:source:)(v143, v99, v131);
      sub_100125748(v105, 0x636E79735F71, 0xE600000000000000);
      v140 = *(v3 + qword_100271FD8);
      v106 = swift_allocObject();
      v106[2] = v3;
      v106[3] = v98;
      v107 = v144;
      v106[4] = v104;
      v106[5] = v107;
      v150 = sub_1001279D0;
      v151 = v106;
      aBlock = _NSConcreteStackBlock;
      v147 = 1107296256;
      v148 = sub_1000DD4AC;
      v149 = &unk_100249838;
      v139 = _Block_copy(&aBlock);

      sub_10009AD9C(v98, v104);
      swift_unknownObjectRetain();
      v108 = v122;
      sub_1001C5668();
      v152 = _swiftEmptyArrayStorage;
      sub_10012779C(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags);
      sub_100084528(&unk_10026F360, &qword_1001F13F0);
      sub_1000CEAAC(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0);
      v109 = v124;
      v110 = v127;
      sub_1001C68C8();
      v111 = v139;
      sub_1001C6698();
      _Block_release(v111);
      swift_unknownObjectRelease();
      sub_1000887D0(v98, v104);
      sub_1000887D0(v98, v104);
      (*(v126 + 8))(v109, v110);
      (*(v123 + 8))(v108, v125);
      (*(v121 + 8))(v130, v131);
      (*(v119 + 8))(v129, v120);
      v145(v143, v78);
    }
  }

  else
  {
    v53 = v132;
    v37(v132, v34, v10);

    v54 = sub_1001C5128();
    v55 = sub_1001C65B8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v141 = v35;
      v57 = v56;
      v143 = swift_slowAlloc();
      aBlock = v143;
      *v57 = 67109634;
      *(v57 + 4) = v138 & 1;
      *(v57 + 8) = 2080;
      v138 = v55;
      v58 = v142;
      v59 = sub_1001C6CC8();
      v137 = v54;
      v61 = v60;
      v62 = v53;
      v63 = v145;
      v145(v62, v10);
      v64 = sub_1001874E8(v59, v61, &aBlock);

      *(v57 + 10) = v64;
      *(v57 + 18) = 2080;
      sub_100122F5C(v33);
      v65 = sub_1001C6CC8();
      v67 = v66;
      v63(v33, v10);
      v68 = sub_1001874E8(v65, v67, &aBlock);

      *(v57 + 20) = v68;
      v69 = v137;
      _os_log_impl(&_mh_execute_header, v137, v138, "CRDTModelLocalFileManager q_sync -- no delta: isRemote=%{BOOL}d, incoming=%s and existing=%s", v57, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      v145(v53, v10);
      v58 = v142;
    }

    v94 = v140[13];
    aBlock = v10;
    v147 = v139;
    v148 = v58;
    v149 = v94;
    type metadata accessor for CRDTModelLocalFileManager.SyncError();
    swift_getWitnessTable();
    swift_allocError();
    *v95 = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t CRDTModelLocalFileManager.syncAfterLoaded(_:isRemote:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1001C5648();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v4 + qword_100271FD0);
  sub_1001C5638();
  v17 = v4;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  sub_1001C6678();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_100126C38(uint64_t a1, _BYTE *a2, char a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = sub_1001230B0();
  v11 = a3 & 1;
  if (!v10)
  {
    return sub_100126CCC(a2, v11, a4, a5);
  }

  v12 = sub_100125BBC(a2, v11);
  if (v5)
  {
  }

  return a4(v12);
}

uint64_t sub_100126CCC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a3;
  v29 = a4;
  HIDWORD(v27) = a2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v27 - v11;
  v13 = sub_1001C5128();
  v14 = sub_1001C65B8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "CRDTModelLocalFileManager q_enqueuePendingSync", v15, 2u);
  }

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = *(v7 + 88);
  *(v17 + 40) = *(v7 + 104);
  *(v17 + 48) = v5;
  (*(v9 + 32))(v17 + v16, v12, v8);
  *(v17 + v16 + v10) = BYTE4(v27) & 1;
  v18 = v17 + ((v16 + v10) & 0xFFFFFFFFFFFFFFF8);
  v19 = v29;
  *(v18 + 8) = v28;
  *(v18 + 16) = v19;
  v20 = qword_100272000;
  swift_beginAccess();
  v21 = *(v5 + v20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v20) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1000ADC10(0, v21[2] + 1, 1, v21);
    *(v5 + v20) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1000ADC10((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[2 * v24];
  v25[4] = sub_100127B1C;
  v25[5] = v17;
  *(v5 + v20) = v21;
  return swift_endAccess();
}

uint64_t sub_100126F94(uint64_t a1, _BYTE *a2, char a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_1001C5128();
  v8 = sub_1001C65B8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "CRDTModelLocalFileManager q_enqueuePendingSync -- about to run", v9, 2u);
  }

  v10 = sub_100125BBC(a2, a3 & 1);
  return a4(v10);
}

uint64_t sub_100127088()
{
  sub_1001C4BB8();

  return sub_100127214();
}

uint64_t sub_100127214()
{
  v1 = *v0;
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = *(v1 + 80);
    v7 = (*(*(v1 + 104) + 8))();
    v9 = sub_1001874E8(v7, v8, &v13);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "CRDTModelLocalFileManager: Model did save %s", v4, 0xCu);
    sub_10008E7BC(v5);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CRDTModelLocalFileManager.deinit()
{
  sub_1000CEB00(v0 + 16);
  v1 = *(v0 + 32);

  v2 = qword_100271FF8;
  v3 = sub_1001C4B28();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(v0 + qword_100271FE8);

  v5 = *(v0 + qword_100272000);

  v6 = qword_1002818E0;
  v7 = sub_1001C5148();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t CRDTModelLocalFileManager.__deallocating_deinit()
{
  CRDTModelLocalFileManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100127508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ModelState.Source();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v22 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ModelState();
  (*(*(v19 - 8) + 8))(a1, v19);
  swift_beginAccess();
  (*(v15 + 16))(v18, a2, a3);
  (*(v15 + 56))(v14, 2, 2, a3);
  v20 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  return ModelState.init(model:loaded:source:revisionInfo:)(v18, 1, v14, v9, a3, a1);
}

uint64_t sub_100127784(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10012779C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001277E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  return sub_100125BBC(v1, v2);
}

uint64_t sub_100127850()
{
  result = sub_1001C4B28();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1001C5148();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100127974()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1001279D0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_100127088();
}

uint64_t sub_1001279FC(uint64_t a1)
{
  v2 = sub_100084528(&unk_1002718E0, &qword_1001F31F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100127A64(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[6];
  v7 = type metadata accessor for ModelState();
  v10 = *(v7 - 8);
  (*(v10 + 8))(a1, v7);
  v8 = *(v10 + 16);

  return v8(a1, v6, v7);
}

uint64_t sub_100127B1C()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = v1 + *(*(*(v0 + 16) - 8) + 64);
  v3 = *(v0 + v2);
  v4 = v0 + (v2 & 0xFFFFFFFFFFFFFFF8);
  v5 = *(v4 + 16);
  return sub_100126F94(*(v0 + 48), (v0 + v1), v3, *(v4 + 8));
}

uint64_t sub_100127B8C()
{
  v1 = v0[2];
  sub_100124A04(v0[3], v0[4], v0[5]);
  return sub_1001253F8();
}

uint64_t sub_100127BCC(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_100127508(a1, v1[6], v1[2]);
}

uint64_t sub_100127BEC()
{
  v0 = sub_1001C5148();
  sub_100088824(v0, qword_100272198);
  sub_100083274(v0, qword_100272198);
  return sub_1001C5138();
}

uint64_t static SecureEngagementDataHelper.mergedTimeSliceData(local:remote:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v38 = a1;
  v39 = a2;
  v6 = sub_100084528(&qword_1002721B0, &unk_1001F51F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v35 - v8;
  v10 = sub_1001C4F38();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v12);
  v13 = type metadata accessor for PBPropertyTimeSlice(0);
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = (&v35 - v19);
  __chkstk_darwin(v18);
  v22 = (&v35 - v21);
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_10009AD9C(a3, a4);
  sub_1001C4F28();
  sub_10012CB50(&qword_1002721B8, type metadata accessor for PBPropertyTimeSlice);
  sub_1001C5028();
  v35 = v17;
  v23 = v37;
  if (!*(*v22 + 16))
  {
    if (qword_10026EBF8 != -1)
    {
      swift_once();
    }

    v25 = sub_1001C5148();
    sub_100083274(v25, qword_100272198);
    v26 = sub_1001C5128();
    v27 = sub_1001C6588();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Not merging empty secure engagement data", v28, 2u);
    }

    sub_10012D108(v22, type metadata accessor for PBPropertyTimeSlice);
    return 0;
  }

  v36 = v22;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_10009AD9C(v38, v39);
  sub_1001C4F28();
  v24 = v20;
  sub_1001C5028();
  v29 = v20;
  v30 = v36;
  static SecureEngagementDataHelper.mergeIntoTimeSlice(_:from:)(v29, v36, v9);
  v31 = (*(v23 + 48))(v9, 1, v13);
  if (v31 == 1)
  {
    sub_10012D108(v24, type metadata accessor for PBPropertyTimeSlice);
    sub_10012D108(v30, type metadata accessor for PBPropertyTimeSlice);
    sub_10008875C(v9, &qword_1002721B0, &unk_1001F51F0);
    return 0;
  }

  v33 = v35;
  sub_10012CAE8(v9, v35, type metadata accessor for PBPropertyTimeSlice);
  v34 = sub_1001C5038();
  sub_10012D108(v33, type metadata accessor for PBPropertyTimeSlice);
  sub_10012D108(v24, type metadata accessor for PBPropertyTimeSlice);
  sub_10012D108(v36, type metadata accessor for PBPropertyTimeSlice);
  return v34;
}

uint64_t static SecureEngagementDataHelper.mergeIntoTimeSlice(_:from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v331 = a1;
  v309 = a3;
  v4 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v315 = &v298 - v6;
  v314 = type metadata accessor for PBPropertyConfiguration(0);
  v339 = *(v314 - 8);
  v7 = *(v339 + 8);
  __chkstk_darwin(v314);
  v313 = (&v298 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PBPropertyValue(0);
  v338 = *(v9 - 8);
  v10 = *(v338 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v304 = &v298 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v324 = &v298 - v14;
  __chkstk_darwin(v13);
  v301 = &v298 - v15;
  v312 = type metadata accessor for PBPropertyBundle(0);
  v334 = *(v312 - 8);
  v16 = *(v334 + 64);
  v17 = __chkstk_darwin(v312);
  v323 = &v298 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v328 = &v298 - v20;
  v21 = __chkstk_darwin(v19);
  v335 = &v298 - v22;
  v23 = __chkstk_darwin(v21);
  v322 = &v298 - v24;
  v25 = __chkstk_darwin(v23);
  v327 = &v298 - v26;
  v27 = __chkstk_darwin(v25);
  v330 = &v298 - v28;
  v29 = __chkstk_darwin(v27);
  v320 = &v298 - v30;
  v31 = __chkstk_darwin(v29);
  v311 = &v298 - v32;
  v33 = __chkstk_darwin(v31);
  v302 = &v298 - v34;
  v35 = __chkstk_darwin(v33);
  v340 = &v298 - v36;
  v37 = __chkstk_darwin(v35);
  v300 = &v298 - v38;
  v39 = __chkstk_darwin(v37);
  v325 = (&v298 - v40);
  __chkstk_darwin(v39);
  v344 = (&v298 - v41);
  v42 = sub_1001C4EE8();
  v43 = *(v42 - 8);
  v44 = v43[8];
  v45 = __chkstk_darwin(v42);
  v332 = &v298 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v342 = &v298 - v48;
  v49 = __chkstk_darwin(v47);
  v333 = &v298 - v50;
  __chkstk_darwin(v49);
  *&v336 = &v298 - v51;
  v52 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  v53 = *(*(v52 - 8) + 64);
  v54 = __chkstk_darwin(v52 - 8);
  v321 = &v298 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v58 = &v298 - v57;
  v59 = __chkstk_darwin(v56);
  v341 = &v298 - v60;
  v61 = __chkstk_darwin(v59);
  v329 = &v298 - v62;
  v63 = __chkstk_darwin(v61);
  v319 = &v298 - v64;
  v65 = __chkstk_darwin(v63);
  v67 = &v298 - v66;
  __chkstk_darwin(v65);
  v69 = &v298 - v68;
  v70 = type metadata accessor for PBPropertyTimeSlice(0);
  v307 = *(v70 - 8);
  v71 = *(v307 + 64);
  v72 = __chkstk_darwin(v70);
  v74 = (&v298 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v74 = _swiftEmptyArrayStorage;
  v75 = v74 + *(v72 + 20);
  _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
  v76 = *(v70 + 24);
  v77 = v43[7];
  v337 = v74;
  v345 = v76;
  v346 = v77;
  v347 = v43 + 7;
  (v77)(v76 + v74, 1, 1, v42);
  v78 = *(v70 + 24);
  v326 = a2;
  v343 = v78;
  sub_10009ADF0(v78 + a2, v69, &qword_1002705B8, &unk_1001F2BE0);
  v348 = v43;
  v79 = v43[6];
  LODWORD(a2) = v79(v69, 1, v42);
  sub_10008875C(v69, &qword_1002705B8, &unk_1001F2BE0);
  v308 = v70;
  v80 = *(v70 + 24);
  if (a2 == 1)
  {
    v81 = v331;
    sub_10009ADF0(v331 + v80, v58, &qword_1002705B8, &unk_1001F2BE0);
    v82 = v79(v58, 1, v42);
    sub_10008875C(v58, &qword_1002705B8, &unk_1001F2BE0);
    if (v82 == 1)
    {
      LODWORD(v329) = 0;
      v83 = v324;
      v84 = v330;
      v85 = v340;
      goto LABEL_26;
    }

    v90 = v321;
    sub_10009ADF0(v81 + v80, v321, &qword_1002705B8, &unk_1001F2BE0);
    if (v79(v90, 1, v42) == 1)
    {
      v91 = v332;
      sub_1001C4ED8();
      v92 = v79(v90, 1, v42);
      v93 = v348;
      if (v92 != 1)
      {
        sub_10008875C(v90, &qword_1002705B8, &unk_1001F2BE0);
      }
    }

    else
    {
      v93 = v348;
      v91 = v332;
      (v348[4])(v332, v90, v42);
    }

    LODWORD(v329) = 0;
    v83 = v324;
    v84 = v330;
    v85 = v340;
  }

  else
  {
    v86 = v331;
    sub_10009ADF0(v331 + v80, v67, &qword_1002705B8, &unk_1001F2BE0);
    v87 = v79(v67, 1, v42);
    sub_10008875C(v67, &qword_1002705B8, &unk_1001F2BE0);
    if (v87 == 1)
    {
      v88 = 0;
      v84 = v330;
      v85 = v340;
      v89 = v341;
    }

    else
    {
      v94 = v86;
      v95 = v319;
      sub_10009ADF0(v343 + v326, v319, &qword_1002705B8, &unk_1001F2BE0);
      v96 = v79(v95, 1, v42);
      v84 = v330;
      v85 = v340;
      v89 = v341;
      if (v96 == 1)
      {
        sub_1001C4ED8();
        v97 = v79(v95, 1, v42);
        v98 = v348;
        if (v97 != 1)
        {
          sub_10008875C(v95, &qword_1002705B8, &unk_1001F2BE0);
        }
      }

      else
      {
        v98 = v348;
        (v348[4])(v336, v95, v42);
      }

      v99 = v94 + v80;
      v100 = v329;
      sub_10009ADF0(v99, v329, &qword_1002705B8, &unk_1001F2BE0);
      if (v79(v100, 1, v42) == 1)
      {
        v101 = v333;
        sub_1001C4ED8();
        if (v79(v100, 1, v42) != 1)
        {
          sub_10008875C(v100, &qword_1002705B8, &unk_1001F2BE0);
        }
      }

      else
      {
        v101 = v333;
        (v98[4])(v333, v100, v42);
      }

      sub_10012CB50(&qword_1002721C0, &type metadata accessor for Google_Protobuf_Timestamp);
      v102 = v336;
      v103 = sub_1001C5FD8();
      v104 = v101;
      v105 = v103;
      v106 = v98[1];
      v106(v104, v42);
      v106(v102, v42);
      v88 = v105 ^ 1;
    }

    sub_10009ADF0(v343 + v326, v89, &qword_1002705B8, &unk_1001F2BE0);
    v107 = v79(v89, 1, v42);
    v91 = v342;
    LODWORD(v329) = v88;
    if (v107 == 1)
    {
      sub_1001C4ED8();
      v108 = v79(v89, 1, v42);
      v93 = v348;
      if (v108 != 1)
      {
        sub_10008875C(v89, &qword_1002705B8, &unk_1001F2BE0);
      }
    }

    else
    {
      v93 = v348;
      (v348[4])(v342, v89, v42);
    }

    v83 = v324;
  }

  v109 = v337;
  v110 = v345;
  sub_10008875C(v345 + v337, &qword_1002705B8, &unk_1001F2BE0);
  (v93[4])(v110 + v109, v91, v42);
  (v346)(v110 + v109, 0, 1, v42);
LABEL_26:
  v111 = sub_10012A87C(v331);
  v113 = v112;
  v343 = sub_10012A87C(v326);
  v115 = v114;

  v306 = v115;
  v305 = v113;
  v117 = sub_10012AC10(v116, v113);
  v118 = v117;
  v119 = *(v117 + 16);
  if (v119)
  {
    v120 = sub_10012B568(*(v117 + 16), 0, &qword_10026F7B0, &unk_1001F13E0);
    v121 = sub_10012C928(&v350, v120 + 4, v119, v118);
    sub_100005064();
    if (v121 == v119)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  v120 = _swiftEmptyArrayStorage;
LABEL_30:
  v350 = v120;

  sub_10012B3D8(&v350);
  v321 = 0;

  v123 = v350;
  v342 = *(v350 + 2);
  v124 = v331;
  if (!v342)
  {
    goto LABEL_143;
  }

  v125 = 0;
  v341 = v350 + 32;
  v318 = (v339 + 56);
  v310 = (v339 + 48);
  *&v122 = 136315138;
  v336 = v122;
  v345 = _swiftEmptyArrayStorage;
  v332 = v111;
  v333 = v350;
  while (2)
  {
    v127 = &v341[16 * v125];
    v129 = *v127;
    v128 = v127[1];
    v347 = (v125 + 1);
    v130 = *(v111 + 2);

    if (!v130 || (v131 = sub_100187B3C(v129, v128), (v132 & 1) == 0))
    {
      v151 = v343;
      if (v343[2])
      {
        v152 = sub_100187B3C(v129, v128);
        v154 = v153;

        if (v154)
        {
          v126 = *(v151[7] + 8 * v152);
          if ((v126 & 0x8000000000000000) != 0)
          {
            goto LABEL_152;
          }

          if (v126 >= *(*v326 + 16))
          {
            goto LABEL_154;
          }

          v155 = (*(v334 + 80) + 32) & ~*(v334 + 80);
          v156 = *(v334 + 72);
          v157 = v335;
          sub_10012CA80(*v326 + v155 + v156 * v126, v335, type metadata accessor for PBPropertyBundle);
          sub_10012CA80(v157, v328, type metadata accessor for PBPropertyBundle);
          v158 = v85;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v345 = sub_1000AE3E0(0, v345[2] + 1, 1, v345);
          }

          v159 = v124;
          v161 = v345[2];
          v160 = v345[3];
          v162 = v83;
          if (v161 >= v160 >> 1)
          {
            v345 = sub_1000AE3E0(v160 > 1, v161 + 1, 1, v345);
          }

          v163 = v345;
          v345[2] = v161 + 1;
          sub_10012CAE8(v328, v163 + v155 + v161 * v156, type metadata accessor for PBPropertyBundle);
          *v337 = v163;
          if (qword_10026EBF8 != -1)
          {
            swift_once();
          }

          v164 = sub_1001C5148();
          sub_100083274(v164, qword_100272198);
          v165 = v335;
          v166 = v323;
          sub_10012CA80(v335, v323, type metadata accessor for PBPropertyBundle);
          v167 = sub_1001C5128();
          v168 = sub_1001C6588();
          v169 = v162;
          if (os_log_type_enabled(v167, v168))
          {
            v170 = v166;
            v171 = swift_slowAlloc();
            v172 = swift_slowAlloc();
            v350 = v172;
            *v171 = v336;
            sub_1000D70AC();
            v174 = v173;
            v176 = v175;
            sub_10012D108(v170, type metadata accessor for PBPropertyBundle);
            v177 = v174;
            v85 = v340;
            v178 = sub_1001874E8(v177, v176, &v350);

            *(v171 + 4) = v178;
            _os_log_impl(&_mh_execute_header, v167, v168, "Taking on cloud property bundle %s", v171, 0xCu);
            sub_10008E7BC(v172);

            v84 = v330;
            v124 = v331;
            sub_10012D108(v335, type metadata accessor for PBPropertyBundle);
            v111 = v332;
            v125 = v347;
          }

          else
          {

            sub_10012D108(v166, type metadata accessor for PBPropertyBundle);
            sub_10012D108(v165, type metadata accessor for PBPropertyBundle);
            v111 = v332;
            v125 = v347;
            v124 = v159;
            v85 = v158;
          }

          if (v125 != v342)
          {
            v83 = v169;
            LODWORD(v329) = 1;
            v123 = v333;
            goto LABEL_35;
          }

          v294 = v309;
          goto LABEL_146;
        }

        v123 = v333;
      }

      else
      {
      }

LABEL_33:
      v125 = v347;
      goto LABEL_34;
    }

    v133 = *(*(v111 + 7) + 8 * v131);
    if (!v343[2] || (v134 = sub_100187B3C(v129, v128), (v135 & 1) == 0))
    {

      if ((v133 & 0x8000000000000000) != 0)
      {
        goto LABEL_153;
      }

      v126 = *v124;
      if (v133 >= *(*v124 + 16))
      {
        goto LABEL_155;
      }

      v179 = (*(v334 + 80) + 32) & ~*(v334 + 80);
      v180 = *(v334 + 72);
      sub_10012CA80(v126 + v179 + v180 * v133, v84, type metadata accessor for PBPropertyBundle);
      v181 = v84;
      sub_10012CA80(v84, v327, type metadata accessor for PBPropertyBundle);
      v182 = v85;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v345 = sub_1000AE3E0(0, v345[2] + 1, 1, v345);
      }

      v183 = v124;
      v185 = v345[2];
      v184 = v345[3];
      v186 = v83;
      if (v185 >= v184 >> 1)
      {
        v345 = sub_1000AE3E0(v184 > 1, v185 + 1, 1, v345);
      }

      v187 = v345;
      v345[2] = v185 + 1;
      sub_10012CAE8(v327, v187 + v179 + v185 * v180, type metadata accessor for PBPropertyBundle);
      *v337 = v187;
      if (qword_10026EBF8 != -1)
      {
        swift_once();
      }

      v188 = sub_1001C5148();
      sub_100083274(v188, qword_100272198);
      v189 = v322;
      sub_10012CA80(v181, v322, type metadata accessor for PBPropertyBundle);
      v190 = sub_1001C5128();
      v191 = sub_1001C6588();
      v83 = v186;
      if (!os_log_type_enabled(v190, v191))
      {

        sub_10012D108(v189, type metadata accessor for PBPropertyBundle);
        sub_10012D108(v181, type metadata accessor for PBPropertyBundle);
        v111 = v332;
        v125 = v347;
        v124 = v183;
        v85 = v182;
        v84 = v181;
        goto LABEL_34;
      }

      v192 = v189;
      v193 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      v350 = v194;
      *v193 = v336;
      sub_1000D70AC();
      v196 = v195;
      v198 = v197;
      v199 = v192;
      v85 = v340;
      sub_10012D108(v199, type metadata accessor for PBPropertyBundle);
      v200 = sub_1001874E8(v196, v198, &v350);

      *(v193 + 4) = v200;
      _os_log_impl(&_mh_execute_header, v190, v191, "Keeping local property bundle %s unchanged", v193, 0xCu);
      sub_10008E7BC(v194);

      v84 = v330;
      v124 = v331;
      sub_10012D108(v330, type metadata accessor for PBPropertyBundle);
      v111 = v332;
      goto LABEL_33;
    }

    if ((v133 & 0x8000000000000000) != 0)
    {
      goto LABEL_156;
    }

    v126 = *v124;
    if (v133 >= *(*v124 + 16))
    {
LABEL_157:
      __break(1u);
      goto LABEL_158;
    }

    v136 = *(v343[7] + 8 * v134);
    v137 = (*(v334 + 80) + 32) & ~*(v334 + 80);
    v138 = *(v334 + 72);
    sub_10012CA80(v126 + v137 + v138 * v133, v344, type metadata accessor for PBPropertyBundle);
    if ((v136 & 0x8000000000000000) != 0)
    {
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    v126 = *v326;
    if (v136 >= *(*v326 + 16))
    {
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v317 = v137;
    v316 = v138;
    v139 = v126 + v137 + v138 * v136;
    v140 = v325;
    sub_10012CA80(v139, v325, type metadata accessor for PBPropertyBundle);
    v141 = sub_10012AD14(v344);
    v143 = v142;
    v144 = sub_10012AD14(v140);

    v146 = sub_10012AC10(v145, v143);
    v147 = v146;
    v148 = *(v146 + 16);
    if (v148)
    {
      v149 = sub_10012B568(*(v146 + 16), 0, &qword_10026F7B0, &unk_1001F13E0);
      v150 = sub_10012C928(&v350, v149 + 4, v148, v147);
      sub_100005064();
      if (v150 != v148)
      {
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
        goto LABEL_165;
      }
    }

    else
    {

      v149 = _swiftEmptyArrayStorage;
    }

    v350 = v149;

    v201 = v321;
    sub_10012B3D8(&v350);
    v126 = &v349;
    v321 = v201;
    if (v201)
    {
LABEL_165:
      v297 = *(v126 - 256);

      __break(1u);
      return result;
    }

    v202 = v350;
    v203 = *(v350 + 2);
    if (!v203)
    {

      LODWORD(v319) = 0;
      v348 = _swiftEmptyArrayStorage;
      goto LABEL_129;
    }

    v204 = 0;
    v205 = 0;
    v346 = -v203;
    v206 = v350 + 40;
    v348 = _swiftEmptyArrayStorage;
    v339 = v350;
    v303 = v350 + 40;
    while (2)
    {
      LODWORD(v319) = v204;
      v207 = &v206[16 * v205++];
      while (1)
      {
        v126 = v205 - 1;
        if ((v205 - 1) >= *(v202 + 2))
        {
          __break(1u);
          goto LABEL_149;
        }

        v209 = *(v207 - 1);
        v208 = *v207;
        v210 = v141[2];

        if (!v210)
        {
          break;
        }

        v211 = sub_100187B3C(v209, v208);
        if ((v212 & 1) == 0)
        {
          break;
        }

        v213 = *(v141[7] + 8 * v211);
        if (v144[2])
        {
          v214 = sub_100187B3C(v209, v208);
          v216 = v215;

          if (v216)
          {
            v126 = *(v144[7] + 8 * v214);
            if ((v126 & 0x8000000000000000) != 0)
            {
              goto LABEL_163;
            }

            if (v126 >= *(*v325 + 16))
            {
              goto LABEL_164;
            }

            v251 = (*(v338 + 80) + 32) & ~*(v338 + 80);
            v252 = *(v338 + 72);
            sub_10012CA80(*v325 + v251 + v252 * v126, v301, type metadata accessor for PBPropertyValue);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v348 = sub_1000AE408(0, v348[2] + 1, 1, v348);
            }

            v254 = v348[2];
            v253 = v348[3];
            if (v254 >= v253 >> 1)
            {
              v348 = sub_1000AE408(v253 > 1, v254 + 1, 1, v348);
            }

            v255 = v348;
            v348[2] = v254 + 1;
            sub_10012CAE8(v301, v255 + v251 + v254 * v252, type metadata accessor for PBPropertyValue);
            if (qword_10026EBF8 != -1)
            {
              swift_once();
            }

            v256 = sub_1001C5148();
            sub_100083274(v256, qword_100272198);
            v241 = v300;
            sub_10012CA80(v325, v300, type metadata accessor for PBPropertyBundle);
            v242 = sub_1001C5128();
            v257 = sub_1001C6588();
            if (os_log_type_enabled(v242, v257))
            {
              v258 = swift_slowAlloc();
              v299 = v258;
              v319 = swift_slowAlloc();
              v350 = v319;
              *v258 = v336;
              sub_1000D70AC();
              v260 = v259;
              v262 = v261;
              sub_10012D108(v241, type metadata accessor for PBPropertyBundle);
              v263 = sub_1001874E8(v260, v262, &v350);

              v264 = v299;
              *(v299 + 1) = v263;
              _os_log_impl(&_mh_execute_header, v242, v257, "Taking on cloud property value %s instead of the local version", v264, 0xCu);
              sub_10008E7BC(v319);

              goto LABEL_123;
            }

            goto LABEL_124;
          }

          if ((v213 & 0x8000000000000000) != 0)
          {
            goto LABEL_150;
          }
        }

        else
        {

          if ((v213 & 0x8000000000000000) != 0)
          {
            goto LABEL_150;
          }
        }

        v126 = *v344;
        if (v213 >= *(*v344 + 16))
        {
          goto LABEL_151;
        }

        v220 = (*(v338 + 80) + 32) & ~*(v338 + 80);
        v221 = *(v338 + 72);
        sub_10012CA80(v126 + v220 + v221 * v213, v83, type metadata accessor for PBPropertyValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v348 = sub_1000AE408(0, v348[2] + 1, 1, v348);
        }

        v223 = v348[2];
        v222 = v348[3];
        if (v223 >= v222 >> 1)
        {
          v348 = sub_1000AE408(v222 > 1, v223 + 1, 1, v348);
        }

        v224 = v348;
        v348[2] = v223 + 1;
        sub_10012CAE8(v83, v224 + v220 + v223 * v221, type metadata accessor for PBPropertyValue);
        if (qword_10026EBF8 != -1)
        {
          swift_once();
        }

        v225 = sub_1001C5148();
        sub_100083274(v225, qword_100272198);
        sub_10012CA80(v344, v85, type metadata accessor for PBPropertyBundle);
        v226 = sub_1001C5128();
        v227 = sub_1001C6588();
        if (os_log_type_enabled(v226, v227))
        {
          v228 = swift_slowAlloc();
          v229 = swift_slowAlloc();
          v350 = v229;
          *v228 = v336;
          sub_1000D70AC();
          v231 = v230;
          v233 = v232;
          sub_10012D108(v340, type metadata accessor for PBPropertyBundle);
          v234 = sub_1001874E8(v231, v233, &v350);
          v85 = v340;

          *(v228 + 4) = v234;
          _os_log_impl(&_mh_execute_header, v226, v227, "Keeping property bundle %s unchanged", v228, 0xCu);
          sub_10008E7BC(v229);
          v83 = v324;
        }

        else
        {

          sub_10012D108(v85, type metadata accessor for PBPropertyBundle);
        }

        v202 = v339;
LABEL_80:
        ++v205;
        v207 += 2;
        if (v346 + v205 == 1)
        {

          goto LABEL_129;
        }
      }

      if (!v144[2])
      {

        goto LABEL_80;
      }

      v217 = sub_100187B3C(v209, v208);
      v219 = v218;

      if ((v219 & 1) == 0)
      {
        goto LABEL_80;
      }

      v126 = *(v144[7] + 8 * v217);
      if ((v126 & 0x8000000000000000) != 0)
      {
        goto LABEL_161;
      }

      if (v126 >= *(*v325 + 16))
      {
        goto LABEL_162;
      }

      v235 = (*(v338 + 80) + 32) & ~*(v338 + 80);
      v236 = *(v338 + 72);
      sub_10012CA80(*v325 + v235 + v236 * v126, v304, type metadata accessor for PBPropertyValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v348 = sub_1000AE408(0, v348[2] + 1, 1, v348);
      }

      v238 = v348[2];
      v237 = v348[3];
      if (v238 >= v237 >> 1)
      {
        v348 = sub_1000AE408(v237 > 1, v238 + 1, 1, v348);
      }

      v239 = v348;
      v348[2] = v238 + 1;
      sub_10012CAE8(v304, v239 + v235 + v238 * v236, type metadata accessor for PBPropertyValue);
      if (qword_10026EBF8 != -1)
      {
        swift_once();
      }

      v240 = sub_1001C5148();
      sub_100083274(v240, qword_100272198);
      v241 = v302;
      sub_10012CA80(v325, v302, type metadata accessor for PBPropertyBundle);
      v242 = sub_1001C5128();
      v243 = sub_1001C6588();
      if (os_log_type_enabled(v242, v243))
      {
        v244 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        v350 = v245;
        *v244 = v336;
        sub_1000D70AC();
        v247 = v246;
        v249 = v248;
        sub_10012D108(v241, type metadata accessor for PBPropertyBundle);
        v250 = sub_1001874E8(v247, v249, &v350);
        v83 = v324;

        *(v244 + 4) = v250;
        _os_log_impl(&_mh_execute_header, v242, v243, "Taking on cloud property value %s", v244, 0xCu);
        sub_10008E7BC(v245);
        v85 = v340;

LABEL_123:

        goto LABEL_125;
      }

LABEL_124:

      sub_10012D108(v241, type metadata accessor for PBPropertyBundle);
LABEL_125:
      v202 = v339;
      v204 = 1;
      v206 = v303;
      if (v346 + v205)
      {
        continue;
      }

      break;
    }

    LODWORD(v319) = 1;
LABEL_129:

    v265 = v311;
    *v311 = _swiftEmptyArrayStorage;
    *(v265 + 1) = _swiftEmptyArrayStorage;
    v266 = v312;
    v267 = &v265[*(v312 + 24)];
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    v268 = *v318;
    v269 = v314;
    (*v318)(&v265[*(v266 + 28)], 1, 1, v314);
    v270 = v315;
    sub_10009ADF0(v325 + *(v266 + 28), v315, &qword_1002705A8, &unk_1001F5200);
    v271 = *v310;
    v272 = (*v310)(v270, 1, v269);
    v273 = v313;
    if (v272 == 1)
    {
      *v313 = 0;
      v273[1] = 0;
      v273[2] = 0;
      v273[3] = 0xE000000000000000;
      v273[4] = 0;
      v274 = v273 + *(v269 + 32);
      _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
      v275 = v271(v270, 1, v269);
      v123 = v333;
      if (v275 != 1)
      {
        sub_10008875C(v270, &qword_1002705A8, &unk_1001F5200);
      }
    }

    else
    {
      sub_10012CAE8(v270, v313, type metadata accessor for PBPropertyConfiguration);
      v123 = v333;
    }

    swift_beginAccess();
    v276 = *(v266 + 28);
    sub_10008875C(&v265[v276], &qword_1002705A8, &unk_1001F5200);
    sub_10012CAE8(v273, &v265[v276], type metadata accessor for PBPropertyConfiguration);
    v268(&v265[v276], 0, 1, v269);
    *v265 = v348;

    sub_10012CA80(v265, v320, type metadata accessor for PBPropertyBundle);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v345 = sub_1000AE3E0(0, v345[2] + 1, 1, v345);
    }

    v277 = v317;
    v278 = v316;
    v280 = v345[2];
    v279 = v345[3];
    if (v280 >= v279 >> 1)
    {
      v345 = sub_1000AE3E0(v279 > 1, v280 + 1, 1, v345);
    }

    v281 = v345;
    v345[2] = v280 + 1;
    sub_10012CAE8(v320, v281 + v277 + v280 * v278, type metadata accessor for PBPropertyBundle);
    *v337 = v281;
    if (qword_10026EBF8 != -1)
    {
      swift_once();
    }

    v282 = sub_1001C5148();
    sub_100083274(v282, qword_100272198);
    v283 = sub_1001C5128();
    v284 = sub_1001C6588();
    v285 = os_log_type_enabled(v283, v284);
    v286 = v329;
    if (v285)
    {
      v287 = swift_slowAlloc();
      v288 = swift_slowAlloc();
      v350 = v288;
      *v287 = v336;
      sub_1000D70AC();
      v291 = v265;
      v292 = sub_1001874E8(v289, v290, &v350);

      *(v287 + 4) = v292;

      _os_log_impl(&_mh_execute_header, v283, v284, "Merged property bundle %s", v287, 0xCu);
      sub_10008E7BC(v288);

      v124 = v331;
    }

    else
    {

      v124 = v331;
      v291 = v265;
    }

    v84 = v330;
    v111 = v332;
    v125 = v347;
    LODWORD(v329) = v286 | v319;
    sub_10012D108(v325, type metadata accessor for PBPropertyBundle);
    sub_10012D108(v344, type metadata accessor for PBPropertyBundle);
    sub_10012D108(v291, type metadata accessor for PBPropertyBundle);
    v85 = v340;
LABEL_34:
    if (v125 != v342)
    {
LABEL_35:
      v126 = *(v123 + 2);
      if (v125 < v126)
      {
        continue;
      }

LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    break;
  }

LABEL_143:

  v293 = v329;

  v294 = v309;
  if ((v293 & 1) == 0)
  {
    sub_10012D108(v337, type metadata accessor for PBPropertyTimeSlice);
    v295 = 1;
    return (*(v307 + 56))(v294, v295, 1, v308);
  }

LABEL_146:
  sub_10012CAE8(v337, v294, type metadata accessor for PBPropertyTimeSlice);
  v295 = 0;
  return (*(v307 + 56))(v294, v295, 1, v308);
}

void *sub_10012A87C(uint64_t *a1)
{
  v2 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for PBPropertyConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for PBPropertyBundle(0);
  v11 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[2] = &_swiftEmptySetSingleton;
  v15 = *a1;
  v31 = *(*a1 + 16);
  if (!v31)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v16 = 0;
  v17 = v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v29 = *(v12 + 72);
  v18 = &_swiftEmptyDictionarySingleton;
  v19 = (v7 + 48);
  v30 = v6;
  v28 = (v7 + 48);
  do
  {
    sub_10012CA80(v17, v14, type metadata accessor for PBPropertyBundle);
    sub_10009ADF0(&v14[*(v32 + 28)], v5, &qword_1002705A8, &unk_1001F5200);
    v25 = *v19;
    if ((*v19)(v5, 1, v6) == 1)
    {
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10[3] = 0xE000000000000000;
      v10[4] = 0;
      v26 = v10 + *(v6 + 32);
      _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
      sub_10012D108(v14, type metadata accessor for PBPropertyBundle);
      if (v25(v5, 1, v6) != 1)
      {
        sub_10008875C(v5, &qword_1002705A8, &unk_1001F5200);
      }
    }

    else
    {
      sub_10012D108(v14, type metadata accessor for PBPropertyBundle);
      sub_10012CAE8(v5, v10, type metadata accessor for PBPropertyConfiguration);
    }

    v20 = v5;
    v22 = v10[2];
    v21 = v10[3];

    sub_10012D108(v10, type metadata accessor for PBPropertyConfiguration);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = v18;
    sub_10017B498(v16, v22, v21, isUniquelyReferenced_nonNull_native);
    v18 = v33[0];
    v24 = v21;
    v5 = v20;
    sub_100178A6C(v33, v22, v24);

    v6 = v30;
    v17 += v29;
    ++v16;
    v19 = v28;
  }

  while (v31 != v16);
  return v18;
}

uint64_t sub_10012AC10(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_100178A6C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_10012AD14(uint64_t *a1)
{
  v52 = sub_1001C4C28();
  v2 = *(v52 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v52);
  v51 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1001C4CA8();
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v50);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v41 - v10;
  v12 = sub_1001C4EE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for PBPropertyValue(0);
  v17 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = &_swiftEmptySetSingleton;
  v21 = *a1;
  v48 = *(*a1 + 16);
  if (!v48)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v22 = 0;
  v23 = v5;
  v24 = v21 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v46 = *(v18 + 72);
  v25 = (v13 + 48);
  v43 = (v2 + 8);
  v44 = (v13 + 8);
  v41 = (v13 + 32);
  v42 = (v23 + 8);
  v26 = &_swiftEmptyDictionarySingleton;
  v45 = v25;
  v47 = v11;
  do
  {
    sub_10012CA80(v24, v20, type metadata accessor for PBPropertyValue);
    sub_10009ADF0(&v20[*(v53 + 28)], v11, &qword_1002705B8, &unk_1001F2BE0);
    v30 = *v25;
    if ((*v25)(v11, 1, v12) == 1)
    {
      sub_1001C4ED8();
      if (v30(v11, 1, v12) != 1)
      {
        sub_10008875C(v11, &qword_1002705B8, &unk_1001F2BE0);
      }
    }

    else
    {
      (*v41)(v16, v11, v12);
    }

    v31 = v49;
    sub_1001C4EC8();
    v32 = v16;
    v33 = v12;
    (*v44)(v16, v12);
    v34 = v51;
    sub_1001C4738();
    sub_10012CB50(&qword_1002721F0, &type metadata accessor for Date.ISO8601FormatStyle);
    v35 = v52;
    sub_1001C4C88();
    (*v43)(v34, v35);
    (*v42)(v31, v50);
    v37 = v54;
    v36 = v55;
    v38 = &v20[*(v53 + 32)];
    v39 = v38[1];
    if (v39)
    {
      v54 = *v38;
      v55 = v39;
      swift_bridgeObjectRetain_n();
      v58._countAndFlagsBits = 124;
      v58._object = 0xE100000000000000;
      sub_1001C6138(v58);

      v59._countAndFlagsBits = v37;
      v59._object = v36;
      sub_1001C6138(v59);
    }

    else
    {
      v54 = 124;
      v55 = 0xE100000000000000;
      v57._countAndFlagsBits = v37;
      v57._object = v36;
      sub_1001C6138(v57);
    }

    v27 = v54;
    v28 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v26;
    sub_10017B498(v22, v27, v28, isUniquelyReferenced_nonNull_native);
    v26 = v54;
    sub_100178A6C(&v54, v27, v28);

    sub_10012D108(v20, type metadata accessor for PBPropertyValue);
    v24 += v46;
    ++v22;
    v12 = v33;
    v16 = v32;
    v11 = v47;
    v25 = v45;
  }

  while (v48 != v22);
  return v26;
}

id SecureEngagementDataHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureEngagementDataHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id SecureEngagementDataHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureEngagementDataHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_10012B3D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001AACD8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10012B6FC(v5);
  *a1 = v2;
  return result;
}

char *sub_10012B458(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100084528(&qword_10026F900, &qword_1001F14D0);
  v4 = *(sub_1001C4CA8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10012B568(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100084528(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_10012B5E4(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100084528(&qword_10026F770, &qword_1001F13A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_10012B674(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100084528(&qword_100270AB0, &qword_1001F52C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

Swift::Int sub_10012B6FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1001C6CB8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_1001C62D8();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10012B8C4(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_10012B7F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10012B7F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1001C6D08(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
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

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10012B8C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1001A97CC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10012BEA0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1001C6D08();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1001C6D08();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000AD9F0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1000AD9F0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
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

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_10012BEA0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001A97CC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1001A9740(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1001C6D08(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
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

uint64_t sub_10012BEA0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1001C6D08() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1001C6D08() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_10012C0C8(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10012C1C8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_1001C4CA8();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_10012C46C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10012C5C4(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_22:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_26:
    v14 = 0;
    a3 = 0;
    goto LABEL_33;
  }

  result = sub_1001C6AE8();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_26;
  }

LABEL_3:
  if (!a3)
  {
    v14 = 0;
    goto LABEL_33;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_1001C6B18())
      {
        goto LABEL_32;
      }

      swift_unknownObjectRelease();
      sub_100088714(0, &unk_10026FEC0, CKRecord_ptr);
      swift_dynamicCast();
      result = v24;
      v14 = v11;
      if (!v24)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    if (!v10)
    {
      break;
    }

    v14 = v11;
LABEL_17:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v14 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_33;
    }

LABEL_18:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_32:
      v14 = v11;
      goto LABEL_33;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v14 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v14);
    ++v15;
    if (v10)
    {
      v11 = v14;
      goto LABEL_17;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v14 = v21 - 1;
LABEL_33:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v14;
  v7[4] = v10;
  return a3;
}

void *sub_10012C7C8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      *v11 = v20;
      *(v11 + 8) = v19;
      *(v11 + 16) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10012C928(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10012CA80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012CAE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10012CB50(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10012CB98(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1001C68F8();
  sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
  sub_10012D0A0();
  result = sub_1001C6418();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1001C6928())
      {
        goto LABEL_30;
      }

      sub_100088714(0, &qword_100270F20, CKRecordZoneID_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

BOOL _s14bookdatastored26SecureEngagementDataHelperC7isEmpty9timeSliceSb10Foundation0D0V_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001C4F38();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for PBPropertyTimeSlice(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = 0;
  memset(&v13[16], 0, 32);
  sub_10009AD9C(a1, a2);
  sub_1001C4F28();
  sub_10012CB50(&qword_1002721B8, type metadata accessor for PBPropertyTimeSlice);
  sub_1001C5028();
  v10 = *v9;

  sub_10012D108(v9, type metadata accessor for PBPropertyTimeSlice);
  v11 = *(v10 + 16);

  return v11 == 0;
}

unint64_t sub_10012D0A0()
{
  result = qword_100273B10;
  if (!qword_100273B10)
  {
    sub_100088714(255, &qword_100270F20, CKRecordZoneID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100273B10);
  }

  return result;
}

uint64_t sub_10012D108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10012D168(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(_s8CardItemVMa() - 8);
  v2[5] = v3;
  v4 = *(v3 + 64) + 15;
  v2[6] = swift_task_alloc();
  v5 = *(*(sub_1001C6068() - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10012D250, 0, 0);
}

uint64_t sub_10012D250()
{
  v63 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v1 + 16);
  v4 = *v1;
  v5 = sub_10012F72C(*v1);
  v60 = v0;
  if (sub_100194320(v2, v5))
  {

    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v6 = v0[3];
    v7 = sub_1001C5148();
    sub_100083274(v7, qword_100281898);

    v8 = sub_1001C5128();
    v9 = sub_1001C65B8();

    v59 = v9;
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[3];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      v61 = v12;
      *v11 = 136315138;
      v14 = *(v10 + 16);
      if (v14)
      {
        v56 = v12;
        v57 = v11;
        v58 = v8;
        v15 = v0[5];
        v16 = v0[6];
        v17 = v0[3];
        v62 = _swiftEmptyArrayStorage;
        sub_1000D3980(0, v14, 0);
        v18 = _swiftEmptyArrayStorage;
        v19 = v17 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
        v20 = *(v15 + 72);
        do
        {
          v21 = v0[6];
          sub_1000C6648(v19, v21);
          v22 = *v21;
          v23 = *(v16 + 8);
          v24 = *(v16 + 16);

          sub_1000C66AC(v21);
          v62 = v18;
          v26 = v18[2];
          v25 = v18[3];
          if (v26 >= v25 >> 1)
          {
            sub_1000D3980((v25 > 1), v26 + 1, 1);
            v18 = v62;
          }

          v18[2] = v26 + 1;
          v27 = &v18[3 * v26];
          v27[4] = v22;
          v27[5] = v23;
          *(v27 + 48) = v24;
          v19 += v20;
          --v14;
          v0 = v60;
        }

        while (v14);
        v11 = v57;
        v8 = v58;
        v13 = v56;
      }

      v44 = sub_1001C62A8();
      v46 = v45;

      v47 = sub_1001874E8(v44, v46, &v61);

      *(v11 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v8, v59, "[CardManager] Ignoring card list %s because it is unchanged", v11, 0xCu);
      sub_10008E7BC(v13);
    }
  }

  else
  {
    v28 = *(v0[4] + 8);
    v0[2] = v0[3];
    sub_100110FC0();
    v29 = sub_1001C4808();
    v31 = v30;
    v32 = v0[7];
    sub_1001C6058();
    v33 = sub_1001C6038();
    if (v34)
    {
      v35 = v0[3];
      v36 = v0[4];
      v37 = v33;
      v38 = v34;
      v39 = sub_1001C5FE8();
      [v4 setObject:v39 forKey:@"BDSPriceTracker_CardManager_cardListV1"];

      sub_10012DD7C(v5, v35, v37, v38);

      v40 = [objc_opt_self() defaultCenter];
      v41 = *(v36 + 24);
      v42 = *(v36 + 32);
      v43 = sub_1001C5FE8();
      [v40 postNotificationName:@"BDSPriceTrackerCardListDidChangeNotification" object:v43];

      sub_1000887D0(v29, v31);
    }

    else
    {

      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v48 = sub_1001C5148();
      sub_100083274(v48, qword_100281898);
      v49 = sub_1001C5128();
      v50 = sub_1001C6598();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "[CardManager] Card list data is invalid", v51, 2u);
      }

      sub_1000887D0(v29, v31);
    }
  }

  v53 = v0[6];
  v52 = v0[7];

  v54 = v0[1];

  return v54();
}

uint64_t sub_10012D85C(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_100084528(&qword_100272200, &qword_1001F5258);
  if (swift_dynamicCast())
  {
    sub_100100DF0(__src, &v41);
    sub_10009BB74(&v41, v42);
    sub_1001C4958();
    __src[0] = v40;
    sub_10008E7BC(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10008875C(__src, &qword_100272208, &unk_1001F5260);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1001C6A38();
  }

  sub_10012EE64(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_10012F58C(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_10012EF2C(sub_10012F9E8);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1001C4B78();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1000D8E7C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1001C6158();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1001C6198();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1001C6A38();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1000D8E7C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1001C6168();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_1001C4B88();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_1001C4B88();
    sub_1000887BC(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_1000887BC(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_10009AD9C(*&__src[0], *(&__src[0] + 1));

  sub_1000887D0(v32, *(&v32 + 1));
  return v32;
}

void sub_10012DD7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v161 = a4;
  v155 = a3;
  v159 = a2;
  v163 = _s8CardItemVMa();
  v5 = *(v163 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v163);
  v166 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v173 = &v155 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v155 - v12;
  v14 = __chkstk_darwin(v11);
  v165 = &v155 - v15;
  v16 = __chkstk_darwin(v14);
  v157 = &v155 - v17;
  v18 = __chkstk_darwin(v16);
  v156 = &v155 - v19;
  v20 = __chkstk_darwin(v18);
  v179 = &v155 - v21;
  v22 = __chkstk_darwin(v20);
  *&v171 = &v155 - v23;
  v24 = __chkstk_darwin(v22);
  v164 = &v155 - v25;
  v26 = __chkstk_darwin(v24);
  *&v177 = &v155 - v27;
  v28 = __chkstk_darwin(v26);
  v170 = &v155 - v29;
  v30 = __chkstk_darwin(v28);
  v176 = &v155 - v31;
  __chkstk_darwin(v30);
  v32 = *(a1 + 16);
  v33 = _swiftEmptyArrayStorage;
  v175 = v13;
  v160 = v5;
  v169 = v32;
  v158 = &v155 - v34;
  if (v32)
  {
    v180 = _swiftEmptyArrayStorage;
    sub_1000D3980(0, v32, 0);
    v35 = v158;
    v33 = v180;
    v36 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v178 = *(v5 + 72);
    do
    {
      sub_1000C6648(v36, v35);
      v38 = *v35;
      v37 = *(v35 + 8);
      v39 = *(v35 + 16);

      sub_1000C66AC(v35);
      v180 = v33;
      v41 = v33[2];
      v40 = v33[3];
      if (v41 >= v40 >> 1)
      {
        sub_1000D3980((v40 > 1), v41 + 1, 1);
        v35 = v158;
        v33 = v180;
      }

      v33[2] = v41 + 1;
      v42 = &v33[3 * v41];
      v42[4] = v38;
      v42[5] = v37;
      *(v42 + 48) = v39;
      v36 += v178;
      --v32;
    }

    while (v32);
    v13 = v175;
    v5 = v160;
  }

  v43 = sub_1001575F4(v33);

  v44 = *(v159 + 16);
  v167 = a1;
  v168 = v44;
  if (v44)
  {
    v45 = 0;
    v162 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v46 = v159 + v162;
    v178 = *(v5 + 72);
    v47 = v43 + 56;
    v174 = _swiftEmptyArrayStorage;
    v172 = v43;
    do
    {
      sub_1000C6648(v46 + v178 * v45, v176);
      if (*(v43 + 16))
      {
        v50 = *v176;
        v49 = *(v176 + 8);
        v51 = *(v176 + 16);
        v52 = v172;
        v53 = *(v172 + 40);
        sub_1001C6DF8();
        sub_1001C60E8();
        sub_1001C6E18(v51);
        v54 = sub_1001C6E28();
        v55 = -1 << *(v52 + 32);
        v56 = v54 & ~v55;
        if ((*(v47 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
        {
          v57 = ~v55;
          v58 = *(v172 + 48);
          do
          {
            v59 = v58 + 24 * v56;
            v60 = *(v59 + 16);
            if (*v59 == v50 && *(v59 + 8) == v49)
            {
              if (v51 == v60)
              {
                goto LABEL_9;
              }
            }

            else if ((sub_1001C6D08() & 1) != 0 && ((v51 ^ v60) & 1) == 0)
            {
LABEL_9:
              sub_1000C66AC(v176);
              a1 = v167;
              v48 = v174;
              v43 = v172;
              goto LABEL_10;
            }

            v56 = (v56 + 1) & v57;
          }

          while (((*(v47 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) != 0);
        }
      }

      sub_10012F930(v176, v170);
      v48 = v174;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v182 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000D391C(0, *(v48 + 16) + 1, 1);
        v48 = v182;
      }

      a1 = v167;
      v43 = v172;
      v64 = *(v48 + 16);
      v63 = *(v48 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_1000D391C(v63 > 1, v64 + 1, 1);
        v48 = v182;
      }

      *(v48 + 16) = v64 + 1;
      sub_10012F930(v170, v48 + v162 + v64 * v178);
LABEL_10:
      v174 = v48;
      ++v45;
    }

    while (v45 != v168);

    v180 = _swiftEmptyArrayStorage;
    v65 = v168;
    sub_1000D3980(0, v168, 0);
    v66 = v180;
    v67 = v158;
    do
    {
      sub_1000C6648(v46, v67);
      v69 = *v67;
      v68 = *(v67 + 8);
      v70 = *(v67 + 16);

      sub_1000C66AC(v67);
      v180 = v66;
      v72 = v66[2];
      v71 = v66[3];
      if (v72 >= v71 >> 1)
      {
        sub_1000D3980((v71 > 1), v72 + 1, 1);
        v67 = v158;
        v66 = v180;
      }

      v66[2] = v72 + 1;
      v73 = &v66[3 * v72];
      v73[4] = v69;
      v73[5] = v68;
      *(v73 + 48) = v70;
      v46 += v178;
      --v65;
    }

    while (v65);
    v13 = v175;
    v5 = v160;
  }

  else
  {

    v66 = _swiftEmptyArrayStorage;
    v174 = _swiftEmptyArrayStorage;
  }

  v74 = sub_1001575F4(v66);

  v75 = v179;
  if (v169)
  {
    v76 = 0;
    v170 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v172 = a1 + v170;
    v176 = *(v5 + 72);
    v77 = v74 + 56;
    v178 = _swiftEmptyArrayStorage;
    do
    {
      sub_1000C6648(v172 + v176 * v76, v177);
      v79 = v74;
      if (*(v74 + 16))
      {
        v81 = *v177;
        v80 = *(v177 + 8);
        v82 = *(v177 + 16);
        v83 = *(v74 + 40);
        sub_1001C6DF8();
        sub_1001C60E8();
        sub_1001C6E18(v82);
        v84 = sub_1001C6E28();
        v85 = -1 << *(v74 + 32);
        v86 = v84 & ~v85;
        if ((*(v77 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86))
        {
          v87 = ~v85;
          v88 = *(v79 + 48);
          do
          {
            v89 = v88 + 24 * v86;
            v90 = *(v89 + 16);
            if (*v89 == v81 && *(v89 + 8) == v80)
            {
              if (v82 == v90)
              {
                goto LABEL_36;
              }
            }

            else if ((sub_1001C6D08() & 1) != 0 && ((v82 ^ v90) & 1) == 0)
            {
LABEL_36:
              sub_1000C66AC(v177);
              v13 = v175;
              v78 = v178;
              v75 = v179;
              goto LABEL_37;
            }

            v86 = (v86 + 1) & v87;
          }

          while (((*(v77 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) != 0);
        }
      }

      sub_10012F930(v177, v171);
      v78 = v178;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      v182 = v78;
      if ((v92 & 1) == 0)
      {
        sub_1000D391C(0, *(v78 + 16) + 1, 1);
        v78 = v182;
      }

      v13 = v175;
      v94 = *(v78 + 16);
      v93 = *(v78 + 24);
      v75 = v179;
      if (v94 >= v93 >> 1)
      {
        sub_1000D391C(v93 > 1, v94 + 1, 1);
        v78 = v182;
      }

      *(v78 + 16) = v94 + 1;
      sub_10012F930(v171, v78 + v170 + v94 * v176);
LABEL_37:
      v178 = v78;
      ++v76;
      v74 = v79;
    }

    while (v76 != v169);
  }

  else
  {
    v178 = _swiftEmptyArrayStorage;
  }

  v96 = v173;
  v97 = v174[2];
  v98 = "' is now being tracked";
  v99 = v166;
  if (v97)
  {
    v100 = v174 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
    *&v177 = *(v160 + 72);
    *&v95 = 136315650;
    v171 = v95;
    v101 = v161;
    v102 = v157;
    v103 = v156;
    v104 = v164;
    do
    {
      sub_1000C6648(v100, v104);
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v105 = sub_1001C5148();
      sub_100083274(v105, qword_100281898);
      sub_1000C6648(v104, v75);
      sub_1000C6648(v104, v103);
      sub_10012F930(v104, v102);
      v106 = sub_1001C5128();
      v107 = sub_1001C65B8();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v182 = v176;
        *v108 = v171;
        v109 = *v179;
        v110 = *(v179 + 8);
        v111 = *(v179 + 16);
        v180 = 0;
        v181 = 0xE000000000000000;
        if (v111)
        {
          v112 = 65;
        }

        else
        {
          v112 = 66;
        }

        LODWORD(v172) = v107;
        v183._countAndFlagsBits = v112;
        v96 = v173;
        v183._object = 0xE100000000000000;
        sub_1001C6138(v183);

        v184._countAndFlagsBits = 46;
        v184._object = 0xE100000000000000;
        sub_1001C6138(v184);
        v185._countAndFlagsBits = v109;
        v185._object = v110;
        sub_1001C6138(v185);

        v113 = v180;
        v114 = v181;
        sub_1000C66AC(v179);
        v115 = sub_1001874E8(v113, v114, &v182);

        *(v108 + 4) = v115;
        *(v108 + 12) = 2082;
        v116 = v163;
        v117 = *(v163 + 24);
        sub_1001C4CA8();
        sub_1000D74B0();
        v118 = sub_1001C6CC8();
        v120 = v119;
        sub_1000C66AC(v103);
        v121 = sub_1001874E8(v118, v120, &v182);

        *(v108 + 14) = v121;
        v101 = v161;
        *(v108 + 22) = 2048;
        v122 = *(v116 + 28);
        v99 = v166;
        v123 = *(v102 + v122);
        sub_1000C66AC(v102);
        *(v108 + 24) = v123;
        _os_log_impl(&_mh_execute_header, v106, v172, "[CardManager] Added card: %s, date: %{public}s, reference price: %f", v108, 0x20u);
        swift_arrayDestroy();

        v75 = v179;
      }

      else
      {

        sub_1000C66AC(v102);
        sub_1000C66AC(v103);
        sub_1000C66AC(v75);
      }

      v100 += v177;
      --v97;
      v104 = v164;
    }

    while (v97);

    v13 = v175;
    v98 = "[State] Item '%s' is now being tracked" + 16;
  }

  else
  {

    v101 = v161;
  }

  v125 = *(v178 + 16);
  if (v125)
  {
    v126 = v178 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
    v127 = *(v160 + 72);
    *&v124 = *(v98 + 412);
    v177 = v124;
    v128 = v165;
    v179 = v127;
    do
    {
      sub_1000C6648(v126, v128);
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v129 = sub_1001C5148();
      sub_100083274(v129, qword_100281898);
      sub_1000C6648(v128, v13);
      sub_1000C6648(v128, v96);
      sub_10012F930(v128, v99);
      v130 = sub_1001C5128();
      v131 = sub_1001C65B8();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        *v132 = v177;
        v133 = *v13;
        v134 = *(v13 + 1);
        v135 = v13[16];
        v180 = 0;
        v181 = 0xE000000000000000;
        if (v135)
        {
          v136 = 65;
        }

        else
        {
          v136 = 66;
        }

        v186._countAndFlagsBits = v136;
        v186._object = 0xE100000000000000;
        sub_1001C6138(v186);

        v187._countAndFlagsBits = 46;
        v187._object = 0xE100000000000000;
        sub_1001C6138(v187);
        v188._countAndFlagsBits = v133;
        v188._object = v134;
        sub_1001C6138(v188);
        v99 = v166;

        v137 = v180;
        v138 = v181;
        sub_1000C66AC(v175);
        v139 = sub_1001874E8(v137, v138, &v182);

        *(v132 + 4) = v139;
        *(v132 + 12) = 2082;
        v140 = v163;
        v141 = *(v163 + 24);
        sub_1001C4CA8();
        sub_1000D74B0();
        v142 = sub_1001C6CC8();
        v144 = v143;
        sub_1000C66AC(v173);
        v145 = sub_1001874E8(v142, v144, &v182);
        v13 = v175;

        *(v132 + 14) = v145;
        *(v132 + 22) = 2048;
        v146 = *(v99 + *(v140 + 28));
        sub_1000C66AC(v99);
        *(v132 + 24) = v146;
        _os_log_impl(&_mh_execute_header, v130, v131, "[CardManager] Removed card: %s, date: %{public}s, reference price: %f", v132, 0x20u);
        swift_arrayDestroy();
        v96 = v173;

        v127 = v179;
      }

      else
      {

        sub_1000C66AC(v99);
        sub_1000C66AC(v96);
        sub_1000C66AC(v13);
      }

      v126 += v127;
      --v125;
      v128 = v165;
    }

    while (v125);

    v101 = v161;
  }

  else
  {
  }

  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v147 = sub_1001C5148();
  sub_100083274(v147, qword_100281898);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v148 = v101;
  v149 = sub_1001C5128();
  v150 = sub_1001C65B8();

  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    *v151 = 136446978;
    v152 = sub_1001C6018();
    v154 = sub_1001874E8(v152, v153, &v180);

    *(v151 + 4) = v154;
    *(v151 + 12) = 2048;

    *(v151 + 14) = v169;

    *(v151 + 22) = 2048;

    *(v151 + 24) = v168;

    *(v151 + 32) = 2080;
    *(v151 + 34) = sub_1001874E8(v155, v148, &v180);
    _os_log_impl(&_mh_execute_header, v149, v150, "[CardManager] %{public}s (%ld) → (%ld) %s", v151, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_10012EE64@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_10012F4D4(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1001C48F8();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1001C48A8();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1001C4B68();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_10012EF2C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000887D0(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000887D0(v6, v5);
    *v3 = xmmword_1001F5240;
    sub_1000887D0(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1001C48B8() && __OFSUB__(v6, sub_1001C48E8()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1001C48F8();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1001C4898();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_10012F3D0(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1000887D0(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1001F5240;
    sub_1000887D0(0, 0xC000000000000000);
    sub_1001C4B38();
    result = sub_10012F3D0(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_10012F2D0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10012F4D4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10012F62C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10012F6A8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10012F364(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_10012F3D0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1001C48B8();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1001C48E8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1001C48D8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10012F484@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1001C69D8();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10012F4D4(_BYTE *__src, _BYTE *a2)
{
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
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10012F58C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1001C48F8();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1001C48C8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1001C4B68();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_10012F62C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1001C48F8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1001C48A8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1001C4B68();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}