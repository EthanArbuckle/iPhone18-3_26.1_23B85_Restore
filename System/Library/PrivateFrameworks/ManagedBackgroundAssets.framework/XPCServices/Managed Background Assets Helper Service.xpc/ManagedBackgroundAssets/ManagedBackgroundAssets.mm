id sub_1000015C4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000149F0;
  v7 = qword_1000149F0;
  if (!qword_1000149F0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100001780;
    v3[3] = &unk_100010988;
    v3[4] = &v4;
    sub_100001780(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000168C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100001780(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000149F8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000018C4;
    v4[4] = &unk_1000109C0;
    v4[5] = v4;
    v5 = off_1000109A8;
    v6 = 0;
    qword_1000149F8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000149F8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ASDBackgroundAssets");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10000AD0C();
  }

  qword_1000149F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000018C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1000149F8 = result;
  return result;
}

__n128 initializeWithTake for Transaction(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001970(uint64_t a1, int a2)
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

uint64_t sub_100001990(uint64_t result, int a2, int a3)
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

void sub_1000019CC(uint64_t a1, unint64_t *a2)
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

uint64_t type metadata accessor for HelperServiceError()
{
  result = qword_100014620;
  if (!qword_100014620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001AB8()
{
  sub_100001B98();
  if (v0 <= 0x3F)
  {
    sub_100001BFC();
    if (v1 <= 0x3F)
    {
      sub_100001C5C(319, &qword_100014640, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        sub_100001C5C(319, &qword_100014648, sub_100001CA8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_100001B98()
{
  if (!qword_100014630)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100014630);
    }
  }
}

void sub_100001BFC()
{
  if (!qword_100014638)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100014638);
    }
  }
}

void sub_100001C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100001CA8()
{
  if (!qword_100014650)
  {
    v0 = sub_10000B1E4();
    if (!v1)
    {
      atomic_store(v0, &qword_100014650);
    }
  }
}

uint64_t sub_100001D40()
{
  v1 = v0;
  v2 = sub_10000ADD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for HelperServiceError() - 8) + 64);
  __chkstk_darwin();
  v9 = (v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000021E8(v1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v16 = *v9;
      v25 = 0;
      v26 = 0xE000000000000000;
      if (EnumCaseMultiPayload == 2)
      {
        sub_10000B244(52);
        v17 = "couldn’t be found.";
        v13._countAndFlagsBits = 0xD000000000000032;
      }

      else
      {
        sub_10000B244(57);
        v17 = "e converted into a file path.";
        v13._countAndFlagsBits = 0x1000000000000037;
      }

      v13._object = (v17 | 0x8000000000000000);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v18 = *v9;
        v19 = *(v9 + 1);
        v20 = v9[4];
        v25 = 0;
        v26 = 0xE000000000000000;
        sub_10000B244(58);
        v32._object = 0x800000010000C5A0;
        v32._countAndFlagsBits = 0x1000000000000018;
        sub_10000B0B4(v32);
        v33._countAndFlagsBits = v18;
        v33._object = v19;
        sub_10000B0B4(v33);

        v34._countAndFlagsBits = 0x100000000000001ELL;
        v34._object = 0x800000010000C5C0;
        sub_10000B0B4(v34);
LABEL_18:
        v23._countAndFlagsBits = sub_10000B044();
        goto LABEL_19;
      }

      v12 = *v9;
      v11 = v9[1];
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_10000B244(71);
      v27._countAndFlagsBits = 0x100000000000003ELL;
      v27._object = 0x800000010000C5E0;
      sub_10000B0B4(v27);
      v24[3] = v12;
      v28._countAndFlagsBits = sub_10000B2C4();
      sub_10000B0B4(v28);

      v13._countAndFlagsBits = 0x203A9D80E2;
      v13._object = 0xA500000000000000;
    }

    sub_10000B0B4(v13);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      return 0x1000000000000024;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 4)
    {
      (*(v3 + 32))(v6, v9, v2);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_10000B244(58);
      v29._countAndFlagsBits = 0x204C525520656854;
      v29._object = 0xAB000000009C80E2;
      sub_10000B0B4(v29);
      sub_10000224C(&qword_100014688, &type metadata accessor for URL);
      v30._countAndFlagsBits = sub_10000B2C4();
      sub_10000B0B4(v30);

      v31._countAndFlagsBits = 0x100000000000002DLL;
      v31._object = 0x800000010000C4C0;
      sub_10000B0B4(v31);
      v14 = v25;
      (*(v3 + 8))(v6, v2);
      return v14;
    }

    v21 = *(v9 + 1);
    if (v21)
    {
      v22 = *v9;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_10000B244(41);

      v25 = 0x1000000000000027;
      v26 = 0x800000010000C490;
      v23._countAndFlagsBits = v22;
      v23._object = v21;
LABEL_19:
      sub_10000B0B4(v23);

      return v25;
    }

    return 0x1000000000000026;
  }
}

uint64_t sub_1000021E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HelperServiceError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000224C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002294(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_10000B094();
  v6 = os_transaction_create();

  if (v6)
  {
    *(v2 + 16) = v6;
    timestamp = os_transaction_get_timestamp();
    if (qword_1000144A8 != -1)
    {
      swift_once();
    }

    v9 = sub_10000AEE4();
    sub_100003E7C(v9, qword_1000146A0);
    sub_10000245C();
    sub_10000245C();

    v10 = sub_10000AEC4();
    v11 = sub_10000B1A4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 68158210;
      *(v12 + 4) = 4;
      *(v12 + 8) = 512;
      *(v12 + 10) = timestamp;
      *(v12 + 12) = 2080;
      v14 = sub_100002E8C(a1, a2, &v15);

      *(v12 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "[TXN%.*hX] 🐏 Acquiring transaction (%s)", v12, 0x16u);
      sub_100003EB4(v13);
    }

    else
    {
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100002464()
{
  v3 = v0;
  v4 = sub_100003CD4(&qword_100014760, &qword_10000BD90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v35 - v11;
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  v39 = *(v3 + 16);
  timestamp = os_transaction_get_timestamp();
  if (v15 < timestamp)
  {
    __break(1u);
  }

  else
  {
    v2 = timestamp;
    v1 = objc_opt_self();
    v17 = [v1 nanoseconds];
    sub_100003E30();
    sub_10000AD44();
    if (qword_1000144A8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v18 = sub_10000AEE4();
  sub_100003E7C(v18, qword_1000146A0);
  sub_10000245C();
  sub_10000245C();
  (*(v5 + 16))(v12, v14, v4);

  v19 = sub_10000AEC4();
  v20 = sub_10000B1A4();

  if (os_log_type_enabled(v19, v20))
  {
    v36 = v20;
    v37 = v9;
    v38 = v3;
    v21 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v21 = 68158466;
    *(v21 + 4) = 4;
    *(v21 + 8) = 512;
    *(v21 + 10) = v2;
    *(v21 + 12) = 2080;
    description = os_transaction_get_description();
    if (description)
    {
      description = sub_10000B0C4();
      v24 = v23;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v26 = sub_100002E8C(description, v24, &v40);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    v27 = [v1 milliseconds];
    v28 = v37;
    sub_10000AD54();

    v29 = sub_10000AD64();
    v31 = v30;
    v32 = *(v5 + 8);
    v32(v28, v4);
    v32(v12, v4);
    v33 = sub_100002E8C(v29, v31, &v40);

    *(v21 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v19, v36, "[TXN%.*hX] 🐏 Releasing transaction (%s) (%s)", v21, 0x20u);
    swift_arrayDestroy();

    v32(v14, v4);
    swift_unknownObjectRelease();
    return v38;
  }

  else
  {

    v25 = *(v5 + 8);
    v25(v12, v4);
    v25(v14, v4);
    swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t sub_100002874()
{
  v0 = sub_100002464();

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_1000028D8()
{
  result = sub_100003D1C(&_swiftEmptyArrayStorage);
  dword_100014690 = 0;
  qword_100014698 = result;
  return result;
}

uint64_t sub_100002908(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = *a2, v6 = a2[1], , v7 = sub_100003434(v5, v6), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = (*(v4 + 56) + 16 * v7);
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v14 = *a2;
    v15 = a2[1];
    type metadata accessor for Transaction.SendableTransaction();
    swift_allocObject();

    result = sub_100002294(v14, v15);
    v12 = result;
    v11 = 0;
  }

  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    v18 = a2;
    v16 = *a2;
    v17 = v18[1];

    v19 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1000039D4(v11 + 1, v12, v16, v17, isUniquelyReferenced_nonNull_native);

    *a1 = v21;
  }

  return result;
}

uint64_t sub_100002A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1000039D4(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_100003434(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_100003B5C();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_100003824(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_100002B34(uint64_t a1, uint64_t a2)
{
  v4 = qword_1000144A0;

  if (v4 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100014690);
  sub_100002CC8(&qword_100014698, a1, a2);

  os_unfair_lock_unlock(&dword_100014690);
}

void *assignWithTake for Transaction(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for Transaction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for Transaction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100002CC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v7 = sub_100003434(a2, a3), (v8 & 1) != 0))
  {
    v9 = (*(v3 + 56) + 16 * v7);
    if (*v9 < 2)
    {

      return sub_100002A2C(0, 0, a2, a3);
    }

    else
    {
      v10 = v9[1];
      v11 = *v9 - 1;

      v12 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *a1;
      sub_1000039D4(v11, v10, a2, a3, isUniquelyReferenced_nonNull_native);

      *a1 = v15;
    }
  }

  else
  {
    result = sub_10000B284();
    __break(1u);
  }

  return result;
}

uint64_t sub_100002E0C()
{
  v0 = sub_10000AEE4();
  sub_100003F60(v0, qword_1000146A0);
  sub_100003E7C(v0, qword_1000146A0);
  return sub_10000AED4();
}

uint64_t sub_100002E8C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002F58(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_100003F00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003EB4(v11);
  return v7;
}

unint64_t sub_100002F58(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003064(a5, a6);
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
    result = sub_10000B264();
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

char *sub_100003064(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000030B0(a1, a2);
  sub_1000031E0(&off_100010A20);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000030B0(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000032CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000B264();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000B0D4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000032CC(v10, 0);
        result = sub_10000B234();
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

uint64_t sub_1000031E0(uint64_t result)
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

  result = sub_100003340(result, v12, 1, v3);
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

void *sub_1000032CC(uint64_t a1, uint64_t a2)
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

  sub_100003CD4(&unk_100014770, qword_10000BD98);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003340(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CD4(&unk_100014770, qword_10000BD98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100003434(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000B344();
  sub_10000B0A4();
  v6 = sub_10000B354();

  return sub_1000034AC(a1, a2, v6);
}

unint64_t sub_1000034AC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000B2E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100003564(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003CD4(&qword_100014758, &qword_10000BD88);
  v40 = a2;
  result = sub_10000B2A4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_10000B344();
      sub_10000B0A4();
      result = sub_10000B354();
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
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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

uint64_t sub_100003824(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000B224() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10000B344();

      sub_10000B0A4();
      v13 = sub_10000B354();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000039D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100003434(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100003564(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100003434(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_10000B2F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100003B5C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_100003B5C()
{
  v1 = v0;
  sub_100003CD4(&qword_100014758, &qword_10000BD88);
  v2 = *v0;
  v3 = sub_10000B294();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_100003CD4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CD4(&qword_100014758, &qword_10000BD88);
    v3 = sub_10000B2B4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100003434(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100003E30()
{
  result = qword_100014768;
  if (!qword_100014768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014768);
  }

  return result;
}

uint64_t sub_100003E7C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003EB4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003F00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100003F60(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

__n128 sub_100003FF0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000400C()
{
  qword_100014780 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

unint64_t sub_100004048(unint64_t description, char a2, void *dso)
{
  v3 = description;
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (qword_1000144B0 == -1)
      {
LABEL_4:
        v4 = dso;
        v5 = qword_100014780;

        return _os_activity_create(v4, v3, v5, OS_ACTIVITY_FLAG_DEFAULT);
      }

LABEL_17:
      v13 = dso;
      swift_once();
      dso = v13;
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(description))
  {
    goto LABEL_16;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return description;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
LABEL_19:
    v7 = (description & 0x3F) << 8;
    v8 = (description >> 6) + v7 + 33217;
    v9 = (v7 | (description >> 6) & 0x3F) << 8;
    v10 = (description >> 18) + ((v9 | (description >> 12) & 0x3F) << 8) - 2122219023;
    v11 = (description >> 12) + v9 + 8487393;
    if (description >> 16)
    {
      v6 = v10;
    }

    else
    {
      v6 = v11;
    }

    if (description < 0x800)
    {
      v6 = v8;
    }

    goto LABEL_12;
  }

  if (description > 0x7F)
  {
    goto LABEL_19;
  }

  v6 = description + 1;
LABEL_12:
  *descriptiona = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
  if (qword_1000144B0 != -1)
  {
    v12 = dso;
    swift_once();
    dso = v12;
  }

  return _os_activity_create(dso, descriptiona, qword_100014780, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t sub_100004208()
{
  v0 = sub_100003CD4(&qword_100014830, &qword_10000BDE8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10000B374();
  qword_100014B80 = result;
  return result;
}

os_activity_scope_state_s *sub_100004264(unint64_t a1, int a2, char a3, void *dso)
{
  v5 = sub_100004048(a1, a3, dso);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  swift_unknownObjectRelease();
  v4[1] = state;
  state.opaque[0] = sub_10000B254();
  state.opaque[1] = v6;
  if (qword_1000144A0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100014690);
  sub_100002908(&qword_100014698, &state);
  os_unfair_lock_unlock(&dword_100014690);
  v7 = state.opaque[1];
  v4[2].opaque[0] = state.opaque[0];
  v4[2].opaque[1] = v7;
  return v4;
}

os_activity_scope_state_s *sub_100004374()
{
  state = v0[1];
  os_activity_scope_leave(&state);
  v2 = v0[2].opaque[0];
  v1 = v0[2].opaque[1];
  v3 = qword_1000144A0;

  if (v3 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100014690);
  sub_100002CC8(&qword_100014698, v2, v1);

  os_unfair_lock_unlock(&dword_100014690);

  return v0;
}

uint64_t sub_100004470()
{
  sub_100004374();

  return _swift_deallocClassInstance(v0, 48, 7);
}

char *sub_1000044C8()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return &unk_100010C10;
  }

  else
  {
    return &type metadata for () + 8;
  }
}

ValueMetadata *sub_1000044F0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for Transaction;
  }

  else
  {
    return (&type metadata for () + 8);
  }
}

uint64_t sub_100004518(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000AB40(&type metadata for Bool);
  if (v6)
  {
    *&v21 = a1;
    *(&v21 + 1) = a2;

    sub_10000B0E4();
    v7 = sub_10000B074();

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [v2 objectForKey:v7 ofClass:ObjCClassFromMetadata valuesOfClass:swift_getObjCClassFromMetadata()];
LABEL_5:
    v10 = v9;

    if (v10)
    {
      sub_10000B204();
      swift_unknownObjectRelease();
      sub_10000A8FC(&v19, &v21);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v11 = &qword_1000148E8;
    v12 = &qword_10000BE98;
    goto LABEL_9;
  }

  if (v5 != sub_10000A90C(0, &qword_1000148E0, NSURL_ptr))
  {
    goto LABEL_4;
  }

  *&v19 = a1;
  *(&v19 + 1) = a2;

  sub_10000B0E4();
  v14 = sub_10000B074();

  sub_10000A90C(0, &qword_1000148F0, NSString_ptr);
  v15 = [v2 objectForKey:v14 ofClass:swift_getObjCClassFromMetadata()];

  if (v15)
  {
    sub_10000B204();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21 = v19;
  v22 = v20;
  if (!*(&v20 + 1))
  {
    sub_10000A954(&v21, &qword_1000148E8, &qword_10000BE98);
    goto LABEL_4;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_4:
    *&v21 = a1;
    *(&v21 + 1) = a2;

    sub_10000B0E4();
    v7 = sub_10000B074();

    v9 = [v2 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];
    goto LABEL_5;
  }

  v16 = objc_allocWithZone(NSURL);
  v17 = sub_10000B074();

  v18 = [v16 initWithString:v17];

  *&v21 = v18;
  v11 = &unk_1000148F8;
  v12 = &unk_10000BEA0;
LABEL_9:
  sub_100003CD4(v11, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    LOBYTE(v19) = 2;
  }

  return v19;
}

uint64_t sub_100004844()
{
  v10 = sub_10000B1C4();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000B1B4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_10000B064();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = sub_10000A90C(0, &qword_1000148C0, OS_dispatch_queue_ptr);
  sub_10000B054();
  v11 = &_swiftEmptyArrayStorage;
  sub_10000AA30(&qword_1000148C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003CD4(&qword_1000148D0, &qword_10000BE70);
  sub_10000A690(&qword_1000148D8, &qword_1000148D0, &qword_10000BE70);
  sub_10000B214();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = sub_10000B1D4();
  qword_100014838 = result;
  return result;
}

uint64_t sub_100004AB8()
{
  v0 = sub_10000AEE4();
  sub_100003F60(v0, qword_100014840);
  sub_100003E7C(v0, qword_100014840);
  return sub_10000AED4();
}

uint64_t sub_100004B3C()
{
  v1 = v0;
  v2 = sub_10000AF04();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  if (qword_1000144C8 != -1)
  {
    swift_once();
  }

  v4 = sub_10000AEE4();
  sub_100003E7C(v4, qword_100014840);
  v5 = sub_10000AEC4();
  v6 = sub_10000B1A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Starting the Managed Background Assets Helper Service…", v7, 2u);
  }

  v8 = sub_10000AEC4();
  v9 = sub_10000B1A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Configuring the directory suffix…", v10, 2u);
  }

  sub_10000B094();
  v11 = _set_user_dir_suffix();

  if (!v11)
  {
    type metadata accessor for HelperServiceError();
    sub_10000AA30(&qword_100014680, type metadata accessor for HelperServiceError);
    swift_allocError();
    v27 = v26;
    v28 = sub_10000B024();
    *v27 = 0xD000000000000031;
    *(v27 + 8) = 0x800000010000C820;
    *(v27 + 16) = v28;
LABEL_19:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v12 = sub_10000AEC4();
  v13 = sub_10000B1A4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "The directory suffix was successfully configured.", v14, 2u);
  }

  if (geteuid())
  {
    goto LABEL_11;
  }

  v30 = sub_10000AEC4();
  v31 = sub_10000B1A4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "The helper service was launched as root, which isn’t supported. Switching to mobile…", v32, 2u);
  }

  sub_10000B034();
  v33 = getpwnam("mobile");
  if (!v33)
  {
    v38 = sub_10000B024();
    type metadata accessor for HelperServiceError();
    sub_10000AA30(&qword_100014680, type metadata accessor for HelperServiceError);
    swift_allocError();
    if (v38)
    {
      *v39 = sub_10000B024();
    }

    goto LABEL_19;
  }

  if (seteuid(v33->pw_uid))
  {
    type metadata accessor for HelperServiceError();
    sub_10000AA30(&qword_100014680, type metadata accessor for HelperServiceError);
    swift_allocError();
    *v34 = sub_10000B024();
    goto LABEL_19;
  }

LABEL_11:
  sub_10000B144();
  sub_10000B134();
  sub_10000B0F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_10000AE74();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_10000AE24();
  if (!v0)
  {
    v1 = v18;
  }

  v19 = sub_10000AEC4();
  v20 = sub_10000B1A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Creating a listener…", v21, 2u);
  }

  sub_10000AEF4();
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  *(v22 + 24) = v0 != 0;
  v23 = sub_10000AF84();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_100009A20(v1, v0 != 0);
  sub_10000AF64();
  v35 = sub_10000AEC4();
  v36 = sub_10000B1A4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Activating the listener…", v37, 2u);
  }

  sub_10000AF74();

  return sub_100009A08(v1, v0 != 0);
}

void sub_100005240(void *a1)
{
  v2 = [a1 bundleIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = [a1 iTunesMetadata];
    [v5 storeItemIdentifier];

    isa = sub_10000B364().super.super.isa;
    v11 = 0;
    v7 = [v4 testFlightDownloadManifestRequestForStoreItemIdentifier:isa bundleIdentifier:v3 error:&v11];

    v8 = v11;
    if (v7)
    {
      sub_10000AD34();
      v9 = v8;

      return;
    }

    v10 = v11;
    sub_10000ADC4();
  }

  else
  {
    type metadata accessor for HelperServiceError();
    sub_10000AA30(&qword_100014680, type metadata accessor for HelperServiceError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  swift_willThrow();
}

uint64_t sub_1000053F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v100 = a3;
  v101 = a2;
  v6 = sub_10000AFB4();
  v103 = *(v6 - 8);
  v7 = *(v103 + 8);
  __chkstk_darwin(v6);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000AF44();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v102 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HelperService.SecurityTaskCreationResult();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = (&v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = &v99 - v19;
  v104 = a1;
  sub_10000AF14();
  sub_100009A94(v20, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100009AF8(v20);
    return (*(v11 + 32))(a4, v18, v10);
  }

  v99 = a4;
  v22 = *v18;
  error = 0;
  v23 = SecTaskCopySigningIdentifier(v22, &error);
  if (v23)
  {
    v102 = v20;
    v24 = v23;
    v25 = sub_10000B084();
    v27 = v26;

    sub_10000AFA4();
    LOBYTE(v24) = sub_10000AF54();
    (*(v103 + 1))(v9, v6);
    if (v24)
    {
      if (qword_1000144C8 != -1)
      {
        swift_once();
      }

      v28 = sub_10000AEE4();
      sub_100003E7C(v28, qword_100014840);
      v29 = sub_10000B174();

      v30 = sub_10000AEC4();

      if (os_log_type_enabled(v30, v29))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v106 = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_100002E8C(v25, v27, &v106);
        _os_log_impl(&_mh_execute_header, v30, v29, "“%{public}s” is platform code.", v31, 0xCu);
        sub_100003EB4(v32);
      }
    }

    else
    {
      sub_10000AE74();
      v57 = sub_10000AE04();
      v58 = [v57 infoDictionary];
      v59 = sub_100004518(0xD000000000000012, 0x800000010000C940);

      if (v59 != 2 && (v59 & 1) != 0)
      {
        v60 = [v57 iTunesMetadata];
        v61 = [v60 distributorInfo];

        LOBYTE(v60) = [v61 distributorIsThirdParty];
        if (v60)
        {
          v62 = [v57 iTunesMetadata];
          v63 = [v62 distributorInfo];

          v64 = [v63 distributorNameForCurrentLocale];
          if (v64)
          {
            v65 = v57;
            v103 = v22;
            v66 = sub_10000B084();
            v68 = v67;

            if (qword_1000144C8 != -1)
            {
              swift_once();
            }

            v69 = sub_10000AEE4();
            sub_100003E7C(v69, qword_100014840);
            v70 = sub_10000B194();

            v71 = sub_10000AEC4();

            v72 = v25;
            if (os_log_type_enabled(v71, v70))
            {
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v106 = v74;
              *v73 = 136446210;
              *(v73 + 4) = sub_100002E8C(v66, v68, &v106);
              _os_log_impl(&_mh_execute_header, v71, v70, "The distributor “%{public}s” is unsupported for Apple-hosted assets.", v73, 0xCu);
              sub_100003EB4(v74);
            }

            v75 = sub_10000AEC4();
            v76 = sub_10000B1A4();

            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              v106 = v78;
              *v77 = 136446210;
              v79 = sub_100002E8C(v72, v27, &v106);

              *(v77 + 4) = v79;
              _os_log_impl(&_mh_execute_header, v75, v76, "Rejecting a session request from “%{public}s”…", v77, 0xCu);
              sub_100003EB4(v78);
            }

            else
            {
            }

            v106 = 0;
            v107 = 0xE000000000000000;
            sub_10000B244(64);
            v110._object = 0x800000010000C9A0;
            v110._countAndFlagsBits = 0x1000000000000013;
            sub_10000B0B4(v110);
            v111._countAndFlagsBits = v66;
            v111._object = v68;
            sub_10000B0B4(v111);

            v112._countAndFlagsBits = 0x100000000000002BLL;
            v112._object = 0x800000010000C9C0;
            sub_10000B0B4(v112);
            sub_10000AF34();
          }

          else
          {
            if (qword_1000144C8 != -1)
            {
              swift_once();
            }

            v89 = sub_10000AEE4();
            sub_100003E7C(v89, qword_100014840);
            v90 = sub_10000B194();
            v91 = sub_10000AEC4();
            if (os_log_type_enabled(v91, v90))
            {
              v92 = swift_slowAlloc();
              *v92 = 0;
              _os_log_impl(&_mh_execute_header, v91, v90, "The current distributor is unsupported for Apple-hosted assets.", v92, 2u);
            }

            v93 = sub_10000AEC4();
            v94 = sub_10000B1A4();

            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              v96 = v57;
              v97 = swift_slowAlloc();
              v106 = v97;
              *v95 = 136446210;
              v98 = sub_100002E8C(v25, v27, &v106);

              *(v95 + 4) = v98;
              _os_log_impl(&_mh_execute_header, v93, v94, "Rejecting a session request from “%{public}s”…", v95, 0xCu);
              sub_100003EB4(v97);
              v57 = v96;
            }

            else
            {
            }

            sub_10000AF34();
          }

          return sub_100009AF8(v102);
        }
      }
    }

    if (qword_1000144C8 != -1)
    {
      swift_once();
    }

    v80 = sub_10000AEE4();
    sub_100003E7C(v80, qword_100014840);

    v81 = sub_10000AEC4();
    v82 = sub_10000B1A4();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v106 = v84;
      *v83 = 136446210;
      v85 = sub_100002E8C(v25, v27, &v106);

      *(v83 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v81, v82, "Accepting a session request from “%{public}s”…", v83, 0xCu);
      sub_100003EB4(v84);
    }

    else
    {
    }

    v86 = swift_allocObject();
    v87 = v101;
    *(v86 + 16) = v101;
    v88 = v100 & 1;
    *(v86 + 24) = v100 & 1;
    sub_100009A20(v87, v88);
    sub_10000AF24();

    return sub_100009AF8(v102);
  }

  v33 = error;
  if (error)
  {
    v34 = v20;
    v35 = v11;
    v36 = v102;
    if (qword_1000144C8 != -1)
    {
      swift_once();
    }

    v37 = sub_10000AEE4();
    sub_100003E7C(v37, qword_100014840);
    v38 = sub_10000B184();
    v39 = v33;
    v40 = sub_10000AEC4();

    if (os_log_type_enabled(v40, v38))
    {
      v41 = swift_slowAlloc();
      v42 = v22;
      v43 = swift_slowAlloc();
      *v41 = 138543362;
      type metadata accessor for CFError(0);
      sub_10000AA30(&qword_100014860, type metadata accessor for CFError);
      swift_allocError();
      *v44 = v39;
      v45 = v39;
      v36 = v102;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v46;
      *v43 = v46;
      _os_log_impl(&_mh_execute_header, v40, v38, "The signing ID couldn’t be copied: %{public}@", v41, 0xCu);
      sub_10000A954(v43, &qword_100014868, &qword_10000BE20);
      v22 = v42;
    }

    v106 = 0;
    v107 = 0xE000000000000000;
    sub_10000B244(39);
    v109._countAndFlagsBits = 0x1000000000000025;
    v109._object = 0x800000010000C8A0;
    sub_10000B0B4(v109);
    v105 = v39;
    type metadata accessor for CFError(0);
    sub_10000B274();
    sub_10000AF34();

    v47 = v99;
  }

  else
  {
    v34 = v20;
    v35 = v11;
    v36 = v102;
    if (qword_1000144C8 != -1)
    {
      swift_once();
    }

    v48 = sub_10000AEE4();
    sub_100003E7C(v48, qword_100014840);
    v49 = sub_10000B194();
    v50 = sub_10000AEC4();
    v51 = os_log_type_enabled(v50, v49);
    v47 = v99;
    if (v51)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v49, "The peer lacks a signing ID.", v52, 2u);
    }

    sub_10000AF34();
  }

  if (qword_1000144C8 != -1)
  {
    swift_once();
  }

  v53 = sub_10000AEE4();
  sub_100003E7C(v53, qword_100014840);
  v54 = sub_10000AEC4();
  v55 = sub_10000B1A4();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Rejecting a session request…", v56, 2u);
  }

  sub_100009AF8(v34);
  return (*(v35 + 32))(v47, v36, v10);
}

uint64_t sub_1000065E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, SecTaskRef *a5@<X8>)
{
  *v15.val = a1;
  *&v15.val[2] = a2;
  *&v15.val[4] = a3;
  *&v15.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(0, &v15);
  if (v6)
  {
    *a5 = v6;
    type metadata accessor for HelperService.SecurityTaskCreationResult();
  }

  else
  {
    if (qword_1000144C8 != -1)
    {
      swift_once();
    }

    v7 = sub_10000AEE4();
    sub_100003E7C(v7, qword_100014840);
    v8 = sub_10000B194();
    v9 = sub_10000AEC4();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, v8, "A security task couldn’t be created.", v10, 2u);
    }

    v11 = sub_10000AEC4();
    v12 = sub_10000B1A4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Rejecting a session request…", v13, 2u);
    }

    sub_10000AF34();
    type metadata accessor for HelperService.SecurityTaskCreationResult();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000067D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for TaskLocalContext();
  swift_allocObject();
  sub_100004264("XPC Request Handler", 19, 2, &_mh_execute_header);
  if (qword_1000144B8 != -1)
  {
    swift_once();
  }

  sub_100003CD4(&qword_100014858, &qword_10000BE10);
  swift_task_localValuePush();
  sub_1000068E0(a1, a2, a3 & 1, a4);
  swift_task_localValuePop();
}

double sub_1000068E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v124 = a4;
  LODWORD(v121) = a3;
  v117 = a2;
  v5 = sub_100003CD4(&qword_100014878, &qword_10000BE28);
  v115 = *(v5 - 8);
  v116 = v5;
  v6 = *(v115 + 64);
  __chkstk_darwin(v5);
  v114 = &v94 - v7;
  v8 = sub_100003CD4(&qword_100014880, &qword_10000BE30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v108 = &v94 - v10;
  v11 = sub_10000AE14();
  v109 = *(v11 - 8);
  v110 = v11;
  v12 = *(v109 + 64);
  __chkstk_darwin(v11);
  v113 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000B014();
  v118 = *(v14 - 8);
  v119 = v14;
  v15 = *(v118 + 64);
  __chkstk_darwin(v14);
  v120 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000AE94();
  v111 = *(v16 - 8);
  v112 = v16;
  v17 = *(v111 + 64);
  __chkstk_darwin(v16);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000AE54();
  v122 = *(v20 - 8);
  v21 = *(v122 + 64);
  v22 = __chkstk_darwin(v20);
  v23 = __chkstk_darwin(v22);
  v25 = &v94 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v94 - v27;
  __chkstk_darwin(v26);
  v30 = &v94 - v29;
  sub_10000AA30(&qword_100014888, &type metadata accessor for Helper.Message);
  v31 = v123;
  sub_10000AFF4();
  v123 = v31;
  if (v31)
  {
    v32 = v124;
    if (qword_1000144C8 != -1)
    {
      swift_once();
    }

    v33 = sub_10000AEE4();
    sub_100003E7C(v33, qword_100014840);
    v34 = sub_10000B184();
    swift_errorRetain();
    v35 = sub_10000AEC4();

    if (os_log_type_enabled(v35, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138543362;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v35, v34, "A message couldn’t be decoded: %{public}@", v36, 0xCu);
      sub_10000A954(v37, &qword_100014868, &qword_10000BE20);
    }

    else
    {
    }

    *(v32 + 32) = 0;
    result = 0.0;
    *v32 = 0u;
    *(v32 + 16) = 0u;
    return result;
  }

  v104 = v25;
  v102 = v19;
  v98 = v21;
  v100 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v15;
  v106 = a1;
  v39 = v122;
  v40 = v122 + 32;
  v97 = *(v122 + 32);
  v97(v30, v28, v20);
  if (qword_1000144C8 != -1)
  {
    swift_once();
  }

  v41 = sub_10000AEE4();
  v42 = sub_100003E7C(v41, qword_100014840);
  v43 = sub_10000B174();
  v44 = *(v39 + 16);
  v45 = v104;
  v96 = v39 + 16;
  v95 = v44;
  v44(v104, v30, v20);
  v103 = v42;
  v46 = sub_10000AEC4();
  v101 = v43;
  v47 = os_log_type_enabled(v46, v43);
  v48 = v123;
  v49 = v121;
  v105 = v20;
  v107 = v30;
  if (v47)
  {
    v50 = v123;
    v51 = v45;
    v52 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v125 = v94;
    *v52 = 136446210;
    sub_10000AA30(&qword_1000148B8, &type metadata accessor for Helper.Message);
    v53 = sub_10000B2C4();
    v55 = v54;
    v56 = v51;
    v48 = v50;
    v49 = v121;
    v104 = *(v39 + 8);
    v104(v56, v20);
    v57 = sub_100002E8C(v53, v55, &v125);

    *(v52 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v46, v101, "The message “%{public}s” was received.", v52, 0xCu);
    sub_100003EB4(v94);
  }

  else
  {

    v104 = *(v39 + 8);
    v104(v45, v20);
  }

  v59 = v117;
  v60 = v119;
  v61 = v124;
  if (v49)
  {
    v125 = v117;
    swift_errorRetain();
    sub_100003CD4(&qword_100014890, &qword_10000BE38);
    swift_willThrowTypedImpl();
LABEL_17:
    v68 = sub_10000B184();
    swift_errorRetain();
    v69 = sub_10000AEC4();

    if (os_log_type_enabled(v69, v68))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138543362;
      swift_errorRetain();
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 4) = v72;
      *v71 = v72;
      _os_log_impl(&_mh_execute_header, v69, v68, "%{public}@", v70, 0xCu);
      sub_10000A954(v71, &qword_100014868, &qword_10000BE20);
    }

    swift_getErrorValue();
    sub_10000AE34();
    sub_10000AA30(&qword_100014898, &type metadata accessor for Helper.Reply);
    sub_10000AA30(&qword_1000148A0, &type metadata accessor for Helper.Reply);
    v73 = v114;
    sub_10000AEA4();
    sub_10000A690(&qword_1000148A8, &qword_100014878, &qword_10000BE28);
    v74 = v116;
    sub_10000AFE4();

    (*(v115 + 8))(v73, v74);
    v104(v107, v105);
    *(v61 + 32) = 0;
    result = 0.0;
    *v61 = 0u;
    *(v61 + 16) = 0u;
    return result;
  }

  v121 = v40;
  v62 = *(v118 + 16);
  v63 = v106;
  v62(v120, v106, v119);
  v64 = v102;
  sub_10000AE84();
  v65 = v113;
  sub_10000AE64();
  if (v48)
  {
    (*(v111 + 8))(v64, v112);
    sub_10000AA30(&qword_1000148B0, &type metadata accessor for Helper.PermissionError);
    v66 = v110;
    swift_allocError();
    (*(v109 + 32))(v67, v65, v66);
    v61 = v124;
    goto LABEL_17;
  }

  (*(v111 + 8))(v64, v112);
  if (sub_10000B004())
  {
    v75 = v120;
    v76 = v100;
    if (qword_1000144C0 != -1)
    {
      swift_once();
      v76 = v100;
    }

    v123 = qword_100014838;
    v77 = v105;
    v95(v76, v107, v105);
    v62(v75, v106, v60);
    v78 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v79 = (v98 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = v118;
    v81 = (*(v118 + 80) + v79 + 9) & ~*(v118 + 80);
    v82 = swift_allocObject();
    v97((v82 + v78), v76, v77);
    v83 = v82 + v79;
    *v83 = v59;
    *(v83 + 8) = 0;
    (*(v80 + 32))(v82 + v81, v120, v119);

    sub_10000AFD4();

    v104(v107, v77);
  }

  else
  {
    v84 = sub_10000B164();
    (*(*(v84 - 8) + 56))(v108, 1, 1, v84);
    v85 = v100;
    v86 = v60;
    v87 = v105;
    v95(v100, v107, v105);
    v88 = v120;
    v62(v120, v63, v86);
    v89 = (*(v122 + 80) + 41) & ~*(v122 + 80);
    v90 = v118;
    v91 = (v98 + *(v118 + 80) + v89) & ~*(v118 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = 0;
    *(v92 + 24) = 0;
    *(v92 + 32) = v59;
    *(v92 + 40) = 0;
    v97((v92 + v89), v85, v87);
    (*(v90 + 32))(v92 + v91, v88, v119);

    sub_10000864C(0, 0, v108, &unk_10000BE48, v92);

    v104(v107, v87);
    v93 = v124;
    *(v124 + 32) = 0;
    result = 0.0;
    *v93 = 0u;
    v93[1] = 0u;
  }

  return result;
}

uint64_t sub_100007740(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 64) = a3;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  return _swift_task_switch(sub_100007768, 0, 0);
}

uint64_t sub_100007768()
{
  if (*(v0 + 64))
  {
    *(v0 + 16) = *(v0 + 32);
    swift_errorRetain();
    sub_100003CD4(&qword_100014890, &qword_10000BE38);
    swift_willThrowTypedImpl();
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 48);
    v4 = sub_10000AFC4();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = async function pointer to Helper.reply(to:auditToken:)[1];
    v12 = swift_task_alloc();
    *(v0 + 56) = v12;
    *v12 = v0;
    v12[1] = sub_1000078BC;
    v13 = *(v0 + 40);
    v14 = *(v0 + 24);

    return Helper.reply(to:auditToken:)(v14, v13, v4, v6, v8, v10);
  }
}

uint64_t sub_1000078BC()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000079B0()
{
  sub_100003CD4(&qword_100014878, &qword_10000BE28);
  sub_10000A690(&qword_1000148A8, &qword_100014878, &qword_10000BE28);
  return sub_10000AFE4();
}

uint64_t sub_100007A64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v55 = a3;
  v58 = a2;
  v6 = sub_10000B014();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  __chkstk_darwin(v6);
  v53 = v8;
  v54 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003CD4(&qword_100014880, &qword_10000BE30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v59 = &v45 - v11;
  v12 = sub_10000AE54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v51 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v16;
  __chkstk_darwin(v15);
  v18 = &v45 - v17;
  if (qword_1000144C8 != -1)
  {
    swift_once();
  }

  v19 = sub_10000AEE4();
  sub_100003E7C(v19, qword_100014840);
  v20 = sub_10000B174();
  v50 = *(v13 + 16);
  v50(v18, a1, v12);
  v21 = sub_10000AEC4();
  if (os_log_type_enabled(v21, v20))
  {
    v48 = a1;
    v49 = a4;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v60 = v46;
    *v22 = 136446466;
    sub_10000AA30(&qword_1000148B8, &type metadata accessor for Helper.Message);
    v24 = sub_10000B2C4();
    v26 = v25;
    v47 = v13;
    (*(v13 + 8))(v18, v12);
    v27 = sub_100002E8C(v24, v26, &v60);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2114;
    if (qword_1000144C0 != -1)
    {
      swift_once();
    }

    v28 = qword_100014838;
    *(v22 + 14) = qword_100014838;
    *v23 = v28;
    v29 = v28;
    _os_log_impl(&_mh_execute_header, v21, v20, "Handing off responsibility for replying synchronously to “%{public}s” to the queue “%{public}@”…", v22, 0x16u);
    sub_10000A954(v23, &qword_100014868, &qword_10000BE20);

    sub_100003EB4(v46);

    v30 = v58;
    a1 = v48;
    a4 = v49;
    v31 = v12;
    v32 = v47;
  }

  else
  {

    (*(v13 + 8))(v18, v12);
    v31 = v12;
    v32 = v13;
    v30 = v58;
  }

  v33 = sub_10000B164();
  (*(*(v33 - 8) + 56))(v59, 1, 1, v33);
  v34 = v51;
  v50(v51, a1, v31);
  v36 = v56;
  v35 = v57;
  v37 = v54;
  (*(v56 + 16))(v54, a4, v57);
  v38 = (*(v32 + 80) + 41) & ~*(v32 + 80);
  v39 = (v52 + *(v36 + 80) + v38) & ~*(v36 + 80);
  v40 = swift_allocObject();
  v41 = v31;
  v42 = v40;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v30;
  v43 = v55 & 1;
  *(v40 + 40) = v55 & 1;
  (*(v32 + 32))(v40 + v38, v34, v41);
  (*(v36 + 32))(v42 + v39, v37, v35);
  sub_100009A20(v30, v43);
  sub_10000864C(0, 0, v59, &unk_10000BE58, v42);
}

uint64_t sub_100007FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 184) = a5;
  *(v7 + 64) = a4;
  v8 = sub_10000B014();
  *(v7 + 88) = v8;
  v9 = *(v8 - 8);
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 + 64);
  *(v7 + 112) = swift_task_alloc();
  v10 = sub_100003CD4(&qword_100014878, &qword_10000BE28);
  *(v7 + 120) = v10;
  v11 = *(v10 - 8);
  *(v7 + 128) = v11;
  *(v7 + 136) = *(v11 + 64);
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();

  return _swift_task_switch(sub_100008114, 0, 0);
}

uint64_t sub_100008114()
{
  if (qword_1000144C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 64);
  *(v0 + 160) = qword_100014838;
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  v4 = *(v0 + 72);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1 & 1;
  *(v3 + 32) = v4;
  v5 = async function pointer to XPCResult.init(catching:)[1];
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  v7 = sub_10000AE34();
  v8 = sub_10000AA30(&qword_100014898, &type metadata accessor for Helper.Reply);
  v9 = sub_10000AA30(&qword_1000148A0, &type metadata accessor for Helper.Reply);
  *v6 = v0;
  v6[1] = sub_1000082B4;
  v10 = *(v0 + 152);

  return XPCResult.init(catching:)(v10, &unk_10000BE68, v3, v7, v8, v9);
}

uint64_t sub_1000082B4()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_1000083CC, 0, 0);
}

uint64_t sub_1000083CC()
{
  v1 = v0[19];
  v22 = v0[20];
  v23 = v1;
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  (*(v8 + 16))(v6, v0[10], v9);
  (*(v5 + 16))(v3, v1, v4);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = (v7 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v10, v6, v9);
  (*(v5 + 32))(v12 + v11, v3, v4);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10000A568;
  *(v13 + 24) = v12;
  v0[6] = sub_10000A650;
  v0[7] = v13;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100007A3C;
  v0[5] = &unk_100010D40;
  v14 = _Block_copy(v0 + 2);
  v15 = v0[7];
  v16 = v22;

  dispatch_sync(v16, v14);
  _Block_release(v14);

  (*(v5 + 8))(v23, v4);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v19 = v0[18];
    v18 = v0[19];
    v20 = v0[14];

    v21 = v0[1];

    return v21();
  }

  return result;
}

uint64_t sub_10000864C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003CD4(&qword_100014880, &qword_10000BE30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000A6D8(a3, v27 - v11);
  v13 = sub_10000B164();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000A954(v12, &qword_100014880, &qword_10000BE30);
  }

  else
  {
    sub_10000B154();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10000B0F4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10000B094() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000A954(a3, &qword_100014880, &qword_10000BE30);

      return v25;
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

  sub_10000A954(a3, &qword_100014880, &qword_10000BE30);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10000893C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 80) = a5;
  *(v7 + 16) = a4;
  v8 = sub_100003CD4(&qword_100014878, &qword_10000BE28);
  *(v7 + 40) = v8;
  v9 = *(v8 - 8);
  *(v7 + 48) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100008A10, 0, 0);
}

uint64_t sub_100008A10()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1 & 1;
  *(v3 + 32) = v4;
  v5 = async function pointer to XPCResult.init(catching:)[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = sub_10000AE34();
  v8 = sub_10000AA30(&qword_100014898, &type metadata accessor for Helper.Reply);
  v9 = sub_10000AA30(&qword_1000148A0, &type metadata accessor for Helper.Reply);
  *v6 = v0;
  v6[1] = sub_100008B74;
  v10 = *(v0 + 56);

  return XPCResult.init(catching:)(v10, &unk_10000BE90, v3, v7, v8, v9);
}

uint64_t sub_100008B74()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100008C8C, 0, 0);
}

uint64_t sub_100008C8C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_10000A690(&qword_1000148A8, &qword_100014878, &qword_10000BE28);
  sub_10000AFE4();
  (*(v2 + 8))(v1, v4);

  v5 = v0[1];

  return v5();
}

void sub_100008D54(uint64_t a1)
{
  v2 = sub_10000AF94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000144C8 != -1)
  {
    swift_once();
  }

  v7 = sub_10000AEE4();
  sub_100003E7C(v7, qword_100014840);
  v8 = sub_10000B184();
  v9 = *(v3 + 16);
  v9(v6, a1, v2);
  v10 = sub_10000AEC4();
  if (os_log_type_enabled(v10, v8))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    sub_10000AA30(&qword_100014870, &type metadata accessor for XPCRichError);
    swift_allocError();
    v9(v13, v6, v2);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v6, v2);
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "A session was canceled: %{public}@", v11, 0xCu);
    sub_10000A954(v12, &qword_100014868, &qword_10000BE20);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

void sub_100008FD4(uint64_t a1, void *a2)
{
  sub_10000AA78((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_100003CD4(&qword_100014900, &qword_10000BEA8);
    sub_10000B114();
  }

  else
  {
    sub_100003CD4(&qword_100014900, &qword_10000BEA8);
    sub_10000B124();
  }
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for TaskLocalContext();
  swift_allocObject();
  sub_100004264("Helper Service Activation", 25, 2, &_mh_execute_header);
  if (qword_1000144B8 != -1)
  {
    swift_once();
  }

  sub_100003CD4(&qword_100014858, &qword_10000BE10);
  swift_task_localValuePush();
  sub_100004B3C();
  swift_task_localValuePop();

  v3 = [objc_opt_self() mainRunLoop];
  [v3 run];

  return 0;
}

uint64_t sub_1000091A4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000929C;

  return v7(a1);
}

uint64_t sub_10000929C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100009394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[20] = a3;
  v8[21] = a4;
  v8[18] = a1;
  v8[19] = a2;
  v9 = sub_100003CD4(&qword_100014900, &qword_10000BEA8);
  v8[26] = v9;
  v10 = *(v9 - 8);
  v8[27] = v10;
  v11 = *(v10 + 64) + 15;
  v8[28] = swift_task_alloc();
  v12 = sub_10000ADE4();
  v8[29] = v12;
  v13 = *(v12 - 8);
  v8[30] = v13;
  v14 = *(v13 + 64) + 15;
  v8[31] = swift_task_alloc();

  return _swift_task_switch(sub_1000094C8, 0, 0);
}

uint64_t sub_1000094C8()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    v4 = *(v0 + 232);
    sub_10000ADF4();
    sub_10000AA30(&qword_100014908, &type metadata accessor for URLError.Code);
    v5 = sub_10000ADA4();
    (*(v3 + 8))(v2, v4);
    v6 = 1;
    if ((v5 & 1) == 0)
    {
      v6 = 2;
    }

    v26 = v6;
  }

  else
  {
    v26 = 0;
  }

  v8 = *(v0 + 176);
  v7 = *(v0 + 184);
  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  v25.super.super.isa = sub_10000B364().super.super.isa;
  *(v0 + 256) = v25;
  v24 = sub_10000B074();
  *(v0 + 264) = v24;
  v23 = sub_10000B074();
  *(v0 + 272) = v23;
  v22.super.super.isa = sub_10000B1F4().super.super.isa;
  *(v0 + 280) = v22;
  if (v1)
  {
    v13 = *(v0 + 192);
    v14 = sub_10000ADB4();
  }

  else
  {
    v14 = 0;
  }

  *(v0 + 288) = v14;
  v15 = *(v0 + 216);
  v16 = *(v0 + 224);
  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  v21 = objc_opt_self();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10000979C;
  swift_continuation_init();
  *(v0 + 136) = v18;
  v19 = sub_10000A9B4((v0 + 112));
  sub_100003CD4(&qword_100014890, &qword_10000BE38);
  sub_10000B104();
  (*(v15 + 32))(v19, v16, v18);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100008FD4;
  *(v0 + 104) = &unk_100010DB8;
  [v21 didReachAssetPackTerminalPhaseForStoreItemIdentifier:v25.super.super.isa bundleIdentifier:v24 assetPackIdentifier:v23 assetPackVersion:v22.super.super.isa internalBeta:v17 == 1 result:v26 error:v14 completionHandler:v0 + 80];
  (*(v15 + 8))(v19, v18);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10000979C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_10000994C;
  }

  else
  {
    v3 = sub_1000098AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000098AC()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v6 = *(v0 + 224);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10000994C()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v8 = v0[28];
  swift_willThrow();

  v9 = v0[1];
  v10 = v0[37];

  return v9();
}

uint64_t sub_100009A08(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100009A20(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t type metadata accessor for HelperService.SecurityTaskCreationResult()
{
  result = qword_100014980;
  if (!qword_100014980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HelperService.SecurityTaskCreationResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009AF8(uint64_t a1)
{
  v2 = type metadata accessor for HelperService.SecurityTaskCreationResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009B54()
{
  sub_100009A08(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100009B9C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100009BE4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000AE54() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10000B014() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100009D4C;

  return sub_10000893C(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_100009D4C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100009E40()
{
  v1 = sub_10000AE54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10000B014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 9) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100009A08(*(v0 + v5), *(v0 + v5 + 8));
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100009FA4()
{
  v1 = *(sub_10000AE54() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_10000B014() - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = v0 + ((v3 + *(v4 + 80) + 9) & ~*(v4 + 80));

  return sub_100007A64(v0 + v2, v5, v6, v7);
}

uint64_t sub_10000A08C()
{
  v1 = sub_10000AE54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 41) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10000B014();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100009A08(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10000A1E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000AE54() - 8);
  v6 = (*(v5 + 80) + 41) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10000B014() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000AB3C;

  return sub_100007FC8(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_10000A350(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000AB3C;

  return sub_100007740(a1, v4, v5, v7, v6);
}

uint64_t sub_10000A414()
{
  v1 = sub_10000B014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100003CD4(&qword_100014878, &qword_10000BE28);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10000A568()
{
  v0 = *(sub_10000B014() - 8);
  v1 = ((*(v0 + 80) + 16) & ~*(v0 + 80)) + *(v0 + 64);
  v2 = *(*(sub_100003CD4(&qword_100014878, &qword_10000BE28) - 8) + 80);

  return sub_1000079B0();
}

uint64_t sub_10000A650()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000A678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A690(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100009B9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CD4(&qword_100014880, &qword_10000BE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A748()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000A780(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000AB3C;

  return sub_1000091A4(a1, v5);
}

uint64_t sub_10000A838(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009D4C;

  return sub_100007740(a1, v4, v5, v7, v6);
}

_OWORD *sub_10000A8FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000A90C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000A954(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003CD4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_10000A9B4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000AA30(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10000AA78(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_10000AABC()
{
  type metadata accessor for SecTask(319);
  if (v0 <= 0x3F)
  {
    sub_10000AF44();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_10000AB40(void *a1)
{
  if (a1 == &type metadata for Float || a1 == &type metadata for Double || a1 == &type metadata for Bool || a1 == &type metadata for Int)
  {
    v6 = &unk_1000149E0;
    v7 = NSNumber_ptr;
  }

  else if (sub_10000ADD4() == a1 || sub_10000A90C(0, &qword_1000148E0, NSURL_ptr) == a1)
  {
    v6 = &qword_1000148E0;
    v7 = NSURL_ptr;
  }

  else
  {
    v5 = swift_conformsToProtocol2();
    if (a1 && v5)
    {
      v6 = &unk_1000148F0;
      v7 = NSString_ptr;
    }

    else
    {
      v9 = swift_conformsToProtocol2();
      if (a1 && v9)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        sub_10000AB40(AssociatedTypeWitness);
        v6 = &unk_1000149D8;
        v7 = NSDictionary_ptr;
      }

      else
      {
        v11 = swift_conformsToProtocol2();
        if (a1 && v11)
        {
          v12 = swift_getAssociatedTypeWitness();
          sub_10000AB40(v12);
          v6 = &unk_1000149D0;
          v7 = NSArray_ptr;
        }

        else
        {
          v6 = &unk_1000149C8;
          v7 = NSObject_ptr;
        }
      }
    }
  }

  return sub_10000A90C(0, v6, v7);
}