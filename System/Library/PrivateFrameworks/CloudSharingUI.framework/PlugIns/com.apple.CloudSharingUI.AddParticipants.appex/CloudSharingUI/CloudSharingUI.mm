uint64_t sub_100002264(uint64_t a1, id *a2)
{
  result = sub_10007B17C();
  *a2 = 0;
  return result;
}

uint64_t sub_1000022DC(uint64_t a1, id *a2)
{
  v3 = sub_10007B18C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000235C@<X0>(void *a1@<X8>)
{
  sub_10007B19C();
  v2 = sub_10007B15C();

  *a1 = v2;
  return result;
}

uint64_t sub_1000023A0()
{
  v1 = *v0;
  sub_10007B19C();
  v2 = sub_10007B25C();

  return v2;
}

uint64_t sub_1000023DC()
{
  v1 = *v0;
  sub_10007B19C();
  sub_10007B1EC();
}

Swift::Int sub_100002430()
{
  v1 = *v0;
  sub_10007B19C();
  sub_10007B74C();
  sub_10007B1EC();
  v2 = sub_10007B76C();

  return v2;
}

uint64_t sub_1000024B0(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E048, type metadata accessor for BRError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000251C(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E048, type metadata accessor for BRError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000258C(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E080, type metadata accessor for BRError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000025F8(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E088, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002664(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E088, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000026D0(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E0B8, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_10000273C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000275C()
{
  sub_100002F0C(&qword_10009E0B8, type metadata accessor for CKError);

  return sub_10007AB5C();
}

uint64_t sub_1000027C8(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E0B8, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002834(void *a1, uint64_t a2)
{
  v4 = sub_100002F0C(&qword_10009E0B8, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000028C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002F0C(&qword_10009E0B8, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_100002950()
{
  sub_100002F0C(&qword_10009E080, type metadata accessor for BRError);

  return sub_10007AB5C();
}

uint64_t sub_1000029BC(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009E080, type metadata accessor for BRError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002A28(void *a1, uint64_t a2)
{
  v4 = sub_100002F0C(&qword_10009E080, type metadata accessor for BRError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100002ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002F0C(&qword_10009E080, type metadata accessor for BRError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100002B5C()
{
  v2 = *v0;
  sub_10007B74C();
  sub_10007B13C();
  return sub_10007B76C();
}

uint64_t sub_100002BBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10007B19C();
  v6 = v5;
  if (v4 == sub_10007B19C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10007B6BC();
  }

  return v9 & 1;
}

uint64_t sub_100002C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002F0C(&qword_10009E0B8, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100002CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002F0C(&qword_10009E080, type metadata accessor for BRError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100002D4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10007B15C();

  *a2 = v5;
  return result;
}

uint64_t sub_100002D94@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10007B19C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100002DC0(uint64_t a1)
{
  v2 = sub_100002F0C(&qword_10009DF98, type metadata accessor for URLResourceKey);
  v3 = sub_100002F0C(&qword_10009DFA0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002F0C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100002FD8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002FE8(uint64_t a1, int a2)
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

uint64_t sub_100003008(uint64_t result, int a2, int a3)
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

unint64_t sub_1000032E4()
{
  result = qword_10009E070;
  if (!qword_10009E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E070);
  }

  return result;
}

void sub_1000034FC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100003650(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    swift_beginAccess();
    v6 = *(a4 + 16);
    *(a4 + 16) = a2;
    swift_errorRetain();
  }

  return result;
}

void sub_1000036B8(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, id), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v13 = sub_10007AB7C();
    a4(0, v13);
  }

  else
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      swift_errorRetain();
      v11 = sub_10007AB7C();
      a4(0, v11);
    }

    else
    {
      swift_beginAccess();
      if (*(a6 + 16))
      {
        swift_errorRetain();
        v12 = sub_10007AB7C();
        a4(0, v12);
      }

      else
      {
        a4(a7, 0);
      }
    }
  }
}

void sub_1000037F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_1000057A0(&qword_10009E280, &qword_10007CFC8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  (*(v12 + 16))(&v27 - v14, a1, v11);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v16, v15, v11);
  sub_100005C8C(0, &qword_10009E288, CKModifyRecordsOperation_ptr);
  sub_1000057A0(&qword_10009E290, &qword_10007CFD0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10007CF10;
  *(v18 + 32) = a3;
  v19 = a3;
  v28.value._rawValue = v18;
  v28.is_nil = 0;
  v20.super.super.super.super.isa = sub_10007B48C(v28, v29).super.super.super.super.isa;
  [(objc_class *)v20.super.super.super.super.isa setQualityOfService:25];
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;

  sub_10007B49C();

  sub_10007B4AC();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = sub_100005970;
  v23[4] = v17;
  v23[5] = v22;
  v23[6] = v19;
  v24 = v19;

  sub_10007B47C();
  v25 = &selRef_sharedCloudDatabase;
  if ((a4 & 0x10000000000) != 0)
  {
    v25 = &selRef_privateCloudDatabase;
  }

  v26 = [a7 *v25];
  [v26 addOperation:v20.super.super.super.super.isa];
}

uint64_t sub_100003AF4(void *a1, void *a2)
{
  if (!a1 || a2)
  {
    sub_100005AB8();
    swift_allocError();
    *v5 = 0xD000000000000029;
    *(v5 + 8) = 0x80000001000810B0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = a2;
    *(v5 + 40) = 4;
    v6 = a2;
    sub_1000057A0(&qword_10009E280, &qword_10007CFC8);
    return sub_10007B2FC();
  }

  else
  {
    v3 = a1;
    sub_1000057A0(&qword_10009E280, &qword_10007CFC8);
    return sub_10007B30C();
  }
}

void sub_100003BCC(int a1, id a2, char a3, void (*a4)(void))
{
  if (a3)
  {
    v7 = sub_10007AB7C();
    (a4)(0, 0, 0);
  }

  else
  {
    v6 = [a2 share];
    v7 = [a2 containerID];
    a4(v6);
  }
}

uint64_t sub_100003C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000057A0(&qword_10009E2A0, &qword_10007CFD8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_100004EC8(a3, a4, sub_100005BA4, v13);
}

uint64_t sub_100003DEC(void *a1, void *a2, void *a3, void *a4)
{
  if (a1 && a2 && a3 && !a4)
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    sub_1000057A0(&qword_10009E2A0, &qword_10007CFD8);
    return sub_10007B30C();
  }

  else
  {
    sub_100005AB8();
    swift_allocError();
    *v11 = 0xD00000000000002DLL;
    *(v11 + 8) = 0x8000000100081100;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 16) = a4;
    *(v11 + 40) = 5;
    v12 = a4;
    sub_1000057A0(&qword_10009E2A0, &qword_10007CFD8);
    return sub_10007B2FC();
  }
}

uint64_t sub_100003EE0(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_10007AE2C();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = sub_1000057A0(&qword_10009E270, &qword_10007CFB0);
  v2[23] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_100003FE8, 0, 0);
}

uint64_t sub_100003FE8()
{
  v1 = v0[25];
  v2 = v0[19];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_100004104;
  v3 = swift_continuation_init();
  v0[17] = sub_1000057A0(&qword_10009E278, &qword_10007CFB8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100004B20;
  v0[13] = &unk_100095D38;
  v0[14] = v3;
  [v2 fetchFullNameAndFormattedUsernameOfAccountWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100004104()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_100004400;
  }

  else
  {
    v3 = sub_100004214;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004214()
{
  v23 = v0;
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  sub_1000058A8(v0[25], v1);
  v5 = (v1 + *(v2 + 48));
  v6 = *v5;
  v7 = v5[1];
  v8 = sub_10007AAEC();
  (*(*(v8 - 8) + 32))(v4, v1, v8);
  sub_10007AE0C();

  v9 = sub_10007AE1C();
  v10 = sub_10007B41C();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[20];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100037C08(v6, v7, &v22);
    _os_log_impl(&_mh_execute_header, v9, v10, "Username: %s", v15, 0xCu);
    sub_10000585C(v16);
  }

  (*(v13 + 8))(v12, v14);
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[22];

  v20 = v0[1];

  return v20(v6, v7);
}

uint64_t sub_100004400()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

uint64_t sub_100004494(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_1000057A0(&qword_10009E270, &qword_10007CFB0);
  v1[19] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_100004540, 0, 0);
}

uint64_t sub_100004540()
{
  v1 = v0[21];
  v2 = v0[18];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_10000465C;
  v3 = swift_continuation_init();
  v0[17] = sub_1000057A0(&qword_10009E278, &qword_10007CFB8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100004B20;
  v0[13] = &unk_100095D10;
  v0[14] = v3;
  [v2 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000465C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_100004840;
  }

  else
  {
    v3 = sub_10000476C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000476C()
{
  v1 = v0[20];
  v2 = v0[19];
  sub_1000058A8(v0[21], v1);
  v3 = (v1 + *(v2 + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_10007AAEC();
  (*(*(v6 - 8) + 8))(v1, v6);

  v7 = v0[1];

  return v7(v4, v5);
}

uint64_t sub_100004840()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_1000048C0()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 7);

  v4 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants18CloudKitOperations__ckSourceAppBundleID;
  v5 = sub_1000057A0(&qword_10009E2B8, &unk_10007ED10);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CloudKitOperations()
{
  result = qword_10009E160;
  if (!qword_10009E160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000049D4()
{
  sub_100004A74();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100004A74()
{
  if (!qword_10009E170)
  {
    sub_100004AD8(&qword_10009ED20, &qword_10007CF90);
    v0 = sub_10007AF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_10009E170);
    }
  }
}

uint64_t sub_100004AD8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004B20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1000057A0(&qword_10009E270, &qword_10007CFB0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = *sub_100005918((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v11 = swift_allocError();
    *v12 = a4;
    v13 = a4;

    return _swift_continuation_throwingResumeWithError(v10, v11);
  }

  else
  {
    sub_10007AADC();
    v14 = &v9[*(v6 + 48)];
    *v14 = sub_10007B19C();
    v14[1] = v15;
    sub_1000058A8(v9, *(*(v10 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_100004C74(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_25:
    v2 = sub_10007B64C();
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = sub_10007B5DC();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = [v4 identifier];
    v8 = sub_10007B19C();
    v10 = v9;

    if (v8 == sub_10007B19C() && v10 == v11)
    {
      break;
    }

    v13 = sub_10007B6BC();

    if (v13)
    {
      goto LABEL_17;
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

LABEL_17:
  v14 = [v5 options];
  sub_100005C8C(0, &qword_10009E2B0, _SWCollaborationOption_ptr);
  v15 = sub_10007B2AC();

  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_19;
    }

LABEL_28:

    v19 = 0;
    goto LABEL_29;
  }

  result = sub_10007B64C();
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_19:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = sub_10007B5DC();
    goto LABEL_22;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);
LABEL_22:
    v18 = v17;

    v19 = [v18 isSelected];

    v5 = v18;
LABEL_29:

    return v19;
  }

  __break(1u);
  return result;
}

void sub_100004EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = [objc_allocWithZone(CKContainer) initWithContainerSetupInfo:a2];
  }

  else
  {
    v8 = objc_allocWithZone(CKContainerID);
    v9 = sub_10007B15C();
    v10 = [v8 initWithContainerIdentifier:v9 environment:1];

    v7 = [objc_allocWithZone(CKContainer) initWithContainerID:v10];
  }

  sub_1000057A0(&qword_10009E2A8, qword_10007CFE0);
  v11 = sub_10007AC4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10007CF20;
  (*(v12 + 16))(v15 + v14, a1, v11);
  v16 = objc_allocWithZone(CKFetchShareMetadataOperation);
  v20 = v7;
  isa = sub_10007B29C().super.isa;

  v18 = [v16 initWithShareURLs:isa];

  [v18 setShouldFetchRootRecord:0];
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;

  sub_10007B4DC();
  [v20 addOperation:v18];
}

uint64_t sub_100005138(uint64_t a1)
{
  v1[6] = a1;
  v3 = sub_10007AAEC();
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v1[9] = v6;
  v1[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[11] = v7;
  *v7 = v1;
  v7[1] = sub_10000524C;

  return sub_100003EE0(v6, a1);
}

uint64_t sub_10000524C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[11];
  v9 = *v3;
  v5[12] = a2;
  v5[13] = v2;

  if (v2)
  {
    v7 = sub_1000056B0;
  }

  else
  {
    v7 = sub_100005368;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100005368()
{
  (*(v0[8] + 32))(v0[10], v0[9], v0[7]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_100005414;
  v2 = v0[6];

  return sub_100004494(v2);
}

uint64_t sub_100005414(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v9 = v6[12];

    v10 = sub_10000571C;
  }

  else
  {
    v11 = v6[3];
    v6[16] = a2;
    v6[17] = a1;
    v6[18] = v11;
    v10 = sub_100005558;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100005558()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v18._object = 0x8000000100081050;
  v18._countAndFlagsBits = 0xD000000000000017;
  if (sub_10007B24C(v18))
  {
    v1 = v2;
    v3 = v4;
  }

  v9 = objc_opt_self();
  v10 = sub_10007AACC();
  v11 = [v9 localizedStringFromPersonNameComponents:v10 style:2 options:0];

  v12 = sub_10007B19C();
  v14 = v13;

  (*(v8 + 8))(v6, v7);

  v15 = v0[1];

  return v15(v12, v14, v1, v3);
}

uint64_t sub_1000056B0()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10000571C()
{
  (*(v0[8] + 8))(v0[10], v0[7]);
  v1 = v0[15];
  v3 = v0[9];
  v2 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000057A0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000057F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000585C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000058A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000057A0(&qword_10009E270, &qword_10007CFB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100005918(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005970(void *a1, void *a2)
{
  v4 = *(*(sub_1000057A0(&qword_10009E280, &qword_10007CFC8) - 8) + 80);

  return sub_100003AF4(a1, a2);
}

uint64_t sub_1000059FC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005A54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100005AB8()
{
  result = qword_10009E298;
  if (!qword_10009E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E298);
  }

  return result;
}

uint64_t sub_100005B20(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1000057A0(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100005BA4(void *a1, void *a2, void *a3, void *a4)
{
  v8 = *(*(sub_1000057A0(&qword_10009E2A0, &qword_10007CFD8) - 8) + 80);

  return sub_100003DEC(a1, a2, a3, a4);
}

uint64_t sub_100005C48()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005C8C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

Swift::Int sub_100005CF8()
{
  v1 = *v0;
  sub_10007B74C();
  sub_10007B75C(v1);
  return sub_10007B76C();
}

Swift::Int sub_100005D6C()
{
  v1 = *v0;
  sub_10007B74C();
  sub_10007B75C(v1);
  return sub_10007B76C();
}

uint64_t sub_100005DB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

uint64_t sub_100005E24(int a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_1000057A0(&qword_10009F330, &qword_10007D0D8);
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  __chkstk_darwin(v3);
  v26 = v24 - v5;
  v25 = sub_10007B43C();
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007B42C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v12 = sub_10007B0FC();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_10007B00C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_10007AFFC();
  v17 = sub_100006BF8();
  v24[0] = "onitor";
  v24[1] = v17;
  sub_10007B0EC();
  v31 = &_swiftEmptyArrayStorage;
  sub_100006DD4(&qword_10009E398, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000057A0(&qword_10009E3A0, &qword_10007D0E0);
  sub_100006E1C(&qword_10009E3A8, &qword_10009E3A0, &qword_10007D0E0);
  sub_10007B58C();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  *(v1 + 24) = sub_10007B46C();
  v18 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants14NetworkMonitor__status;
  v30 = 0;
  v19 = v26;
  sub_10007AF0C();
  (*(v27 + 32))(v2 + v18, v19, v28);
  v20 = *(v2 + 16);
  swift_allocObject();
  swift_weakInit();

  sub_100006C84(sub_100006C7C);
  sub_10007AFDC();

  if (v29)
  {
    v22 = *(v2 + 16);
    v21 = *(v2 + 24);
    sub_10007AFEC();
  }

  return v2;
}

uint64_t sub_1000061E8(uint64_t a1)
{
  v24 = a1;
  v1 = sub_10007B0DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B0FC();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007B04C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100006BF8();
    v23 = sub_10007B44C();
    v14 = swift_allocObject();
    swift_weakInit();
    (*(v10 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v9);
    v15 = *(v10 + 80);
    v24 = v5;
    v16 = v2;
    v17 = (v15 + 24) & ~v15;
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    (*(v10 + 32))(v18 + v17, v12, v9);
    aBlock[4] = sub_100006D58;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006784;
    aBlock[3] = &unk_100095F08;
    v19 = _Block_copy(aBlock);

    sub_10007B0EC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100006DD4(&qword_10009E3B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000057A0(&qword_10009E3B8, &qword_10007D0E8);
    sub_100006E1C(qword_10009E3C0, &qword_10009E3B8, &qword_10007D0E8);
    v20 = v26;
    sub_10007B58C();
    v21 = v23;
    sub_10007B45C();
    _Block_release(v19);

    (*(v16 + 8))(v20, v1);
    return (*(v25 + 8))(v8, v24);
  }

  return result;
}

uint64_t sub_1000065D4()
{
  v0 = sub_10007B02C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10007B03C();
    (*(v1 + 104))(v5, enum case for NWPath.Status.satisfied(_:), v0);
    v9 = sub_10007B01C();
    v10 = *(v1 + 8);
    v10(v5, v0);
    v10(v7, v0);
    swift_getKeyPath();
    swift_getKeyPath();
    v11[7] = (v9 & 1) == 0;
    return sub_10007AF4C();
  }

  return result;
}

uint64_t sub_100006784(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000067C8()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants14NetworkMonitor__status;
  v3 = sub_1000057A0(&qword_10009F330, &qword_10007D0D8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor()
{
  result = qword_10009E2F0;
  if (!qword_10009E2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000068D4()
{
  sub_100006980();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100006980()
{
  if (!qword_10009E300)
  {
    v0 = sub_10007AF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_10009E300);
    }
  }
}

uint64_t getEnumTagSinglePayload for NetworkStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NetworkStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006B48()
{
  result = qword_10009F340;
  if (!qword_10009F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F340);
  }

  return result;
}

uint64_t sub_100006BA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10007AEEC();
  *a1 = result;
  return result;
}

unint64_t sub_100006BF8()
{
  result = qword_10009E390;
  if (!qword_10009E390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009E390);
  }

  return result;
}

uint64_t sub_100006C44()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006C84(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006C94()
{
  v1 = sub_10007B04C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100006D58()
{
  v1 = *(*(sub_10007B04C() - 8) + 80);
  v2 = *(v0 + 16);

  return sub_1000065D4();
}

uint64_t sub_100006DBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006E1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004AD8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006E70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_100006EF4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_100006F70(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_10007AF5C();
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

uint64_t sub_10000700C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();
}

uint64_t sub_1000070C8(uint64_t a1, uint64_t a2)
{
  sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
  sub_1000085A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v6 = a2 == 0;
  if (v17)
  {
    if (a2)
    {
      if (v16 == a1 && v17 == a2)
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_10007B6BC();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  __chkstk_darwin(v5);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();

  result = sub_10007AF4C();
  v9 = *v2;
  if ((v6 & 1) != 0 || (v10 = *v2, v11 = v2 + *(v9 + 104), (v12 = *v11) == 0))
  {
    v15 = *v2;
    if (!*(v2 + *(v9 + 104)))
    {
      result = sub_10007B63C();
      __break(1u);
    }
  }

  else
  {
    v13 = *(v11 + 1);

    v12(v14);
    return sub_1000087A4(v12);
  }

  return result;
}

uint64_t sub_100007330(uint64_t a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_10007AC4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000057A0(&qword_10009E450, &qword_10007D2C8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v48 = &v44 - v17;
  v18 = __chkstk_darwin(v16);
  v45 = &v44 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v44 - v21;
  v52 = v20;
  v23 = sub_1000086C8();
  v53 = v23;
  swift_getKeyPath();
  v50 = v12;
  v51 = v23;
  swift_getKeyPath();
  v46 = v2;
  sub_10007AF3C();

  v24 = *(v8 + 56);
  sub_1000087B4(v22, v11);
  sub_1000087B4(v49, &v11[v24]);
  v25 = v4;
  v26 = *(v4 + 48);
  if (v26(v11, 1, v3) != 1)
  {
    v28 = v45;
    sub_1000087B4(v11, v45);
    if (v26(&v11[v24], 1, v3) != 1)
    {
      v29 = v44;
      (*(v25 + 32))(v44, &v11[v24], v3);
      sub_10000874C();
      v27 = sub_10007B14C();
      v30 = *(v25 + 8);
      v30(v29, v3);
      sub_100008824(v22, &unk_10009ED10, &qword_10007D310);
      v30(v28, v3);
      sub_100008824(v11, &unk_10009ED10, &qword_10007D310);
      goto LABEL_8;
    }

    sub_100008824(v22, &unk_10009ED10, &qword_10007D310);
    (*(v25 + 8))(v28, v3);
    goto LABEL_6;
  }

  sub_100008824(v22, &unk_10009ED10, &qword_10007D310);
  if (v26(&v11[v24], 1, v3) != 1)
  {
LABEL_6:
    sub_100008824(v11, &qword_10009E450, &qword_10007D2C8);
    v27 = 0;
    goto LABEL_8;
  }

  sub_100008824(v11, &unk_10009ED10, &qword_10007D310);
  v27 = 1;
LABEL_8:
  v31 = v46;
  v33 = v48;
  v32 = v49;
  v34 = sub_1000087B4(v49, v48);
  __chkstk_darwin(v34);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  sub_1000087B4(v33, v47);

  sub_10007AF4C();
  sub_100008824(v33, &unk_10009ED10, &qword_10007D310);
  v36 = *v31;
  if ((v27 & 1) == 0)
  {
    v37 = *v31;
    v38 = v31 + *(v36 + 104);
    v39 = *v38;
    if (*v38)
    {
      v40 = *(v38 + 1);

      v39(v41);
      sub_1000087A4(v39);
      return sub_100008824(v32, &unk_10009ED10, &qword_10007D310);
    }
  }

  v42 = *v31;
  if (*(v31 + *(v36 + 104)))
  {
    return sub_100008824(v32, &unk_10009ED10, &qword_10007D310);
  }

  result = sub_10007B63C();
  __break(1u);
  return result;
}

uint64_t sub_1000078D0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = sub_10007AF5C();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = (v0 + *(*v0 + 104));
  v5 = v4[1];
  sub_1000087A4(*v4);
  return v0;
}

uint64_t sub_100007974()
{
  sub_1000078D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000079E4()
{
  v1 = v0;
  v2 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = sub_10007AC4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderURL;
  v13 = *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderURL);
  v35 = v2;
  v14 = sub_1000086C8();
  v36 = v14;
  swift_getKeyPath();
  v33 = v2;
  v34 = v14;
  swift_getKeyPath();

  sub_10007AF3C();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100008824(v7, &unk_10009ED10, &qword_10007D310);
    v15 = *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderTitle);

    sub_1000070C8(0, 0);

    v17 = *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__ckFolderSubitemName);
    __chkstk_darwin(v16);
    v18 = sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
    *(&v31 - 2) = v18;
    v19 = sub_1000085A4();
    *(&v31 - 1) = v19;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v31 - 2) = v18;
    *(&v31 - 1) = v19;
    swift_getKeyPath();

    sub_10007AF3C();

    v21 = v38;
    if (v38)
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v37 = v21 == 0;

    sub_10007AF4C();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v22 = sub_10007ABEC();
    v24 = v23;
    v25 = *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderTitle);

    sub_1000070C8(v22, v24);

    swift_getKeyPath();
    swift_getKeyPath();
    v37 = 0;

    sub_10007AF4C();
    (*(v9 + 8))(v12, v8);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = swift_unknownObjectRelease();
    v28 = *(v1 + v31);
    __chkstk_darwin(v27);
    *(&v31 - 2) = v2;
    *(&v31 - 1) = v14;
    v29 = swift_getKeyPath();
    __chkstk_darwin(v29);
    *(&v31 - 2) = v2;
    *(&v31 - 1) = v14;
    swift_getKeyPath();

    v30 = v32;
    sub_10007AF3C();

    return sub_100008824(v30, &unk_10009ED10, &qword_10007D310);
  }

  return result;
}

uint64_t sub_100007ED0()
{
  v1 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v15 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__rootFolderTitle);
  v6 = sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
  v15[2] = v6;
  v7 = sub_1000085A4();
  v15[3] = v7;
  swift_getKeyPath();
  v15[0] = v6;
  v15[1] = v7;
  swift_getKeyPath();

  sub_10007AF3C();

  if (v17)
  {

    v9 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12SharingModel__ckFolderSubitemName);
    __chkstk_darwin(v8);
    v15[-2] = v6;
    v15[-1] = v7;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15[-2] = v6;
    v15[-1] = v7;
    swift_getKeyPath();

    sub_10007AF3C();

    if (v17)
    {

      v11 = 1;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v12 = sub_10007AC4C();
      v11 = (*(*(v12 - 8) + 48))(v4, 1, v12) != 1;
      sub_100008824(v4, &unk_10009ED10, &qword_10007D310);
    }
  }

  else
  {
    v11 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v11;

  sub_10007AF4C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v13 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = !v13;

  return sub_10007AF4C();
}

uint64_t sub_100008270@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_100008300(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_100008370(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  v5 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();
}

uint64_t sub_10000840C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  v14 = *(v7 + 16);
  v14(v17 - v12);
  v15 = *a2;
  v17[2] = v5;
  v17[3] = v6;
  swift_getKeyPath();
  v17[0] = v5;
  v17[1] = v6;
  swift_getKeyPath();
  (v14)(v11, v13, v5);

  sub_10007AF4C();
  return (*(v7 + 8))(v13, v5);
}

__n128 sub_100008598(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_1000085A4()
{
  result = qword_10009F160;
  if (!qword_10009F160)
  {
    sub_100004AD8(&qword_10009ED20, &qword_10007CF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F160);
  }

  return result;
}

unint64_t sub_1000086C8()
{
  result = qword_10009E448;
  if (!qword_10009E448)
  {
    sub_100004AD8(&unk_10009ED10, &qword_10007D310);
    sub_10000874C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E448);
  }

  return result;
}

unint64_t sub_10000874C()
{
  result = qword_10009F150;
  if (!qword_10009F150)
  {
    sub_10007AC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F150);
  }

  return result;
}

uint64_t sub_1000087A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000087B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008824(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000057A0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000088CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

uint64_t sub_100008940()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();
}

uint64_t sub_1000089F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

void sub_100008A60(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10007AE2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  if (!a1)
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = a1;
  v14 = a1;

  sub_10007AF4C();
  v15 = (v3 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_accountID);
  if (*(v3 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_accountID + 8))
  {
    goto LABEL_12;
  }

  v40 = v6;
  v41 = v7;
  v42 = v14;
  v16 = [v42 containerIdentifier];
  v17 = sub_10007B19C();
  v19 = v18;

  sub_10007B19C();
  v20 = sub_10007B1BC();
  v22 = v21;

  if (v17 == v20 && v19 == v22)
  {

    goto LABEL_7;
  }

  v23 = sub_10007B6BC();

  if (v23)
  {
LABEL_7:
    if (swift_weakLoadStrong())
    {
      v24 = sub_100008E74();
      v26 = v25;

      v27 = v41;
      if (v26)
      {
        v28 = v15[1];
        *v15 = v24;
        v15[1] = v26;

        sub_10007AE0C();
        v29 = sub_10007AE1C();
        v30 = sub_10007B41C();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "found accountID for URL", v31, 2u);
        }

        (*(v27 + 8))(v13, v40);
LABEL_12:
        if (!a2)
        {
          return;
        }

        goto LABEL_13;
      }

      if (a2)
      {

LABEL_13:
        swift_getKeyPath();
        swift_getKeyPath();
        v43 = a2;
        v32 = a2;

        sub_10007AF4C();
        return;
      }

      if (swift_weakLoadStrong())
      {

        v33 = sub_10001DF48();
        v35 = v40;
        if (v34)
        {
          v36 = v15[1];
          *v15 = v33;
          v15[1] = v34;

          sub_10007AE0C();
          v37 = sub_10007AE1C();
          v38 = sub_10007B41C();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v37, v38, "found accountID for an EDS account", v39, 2u);
          }

          (*(v27 + 8))(v11, v35);
        }

        else
        {
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a2)
  {
    goto LABEL_13;
  }
}

uint64_t sub_100008E74()
{
  v31 = sub_10007AE2C();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v31);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v30 - v5;
  v7 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - v9;
  v11 = sub_10007AC4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100008824(v10, &unk_10009ED10, &qword_10007D310);
    sub_10007AE0C();
    v16 = sub_10007AE1C();
    v17 = sub_10007B3FC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "can't get the user iCloud account ID without a document/folder sharing URL--may get here from SPI with no fileURL, will try userICloudEDSAccountID then fall back on signed-in account w. accountID == nil", v18, 2u);
    }

    (*(v0 + 8))(v4, v31);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_10007ABFC(v19);
    v21 = v20;
    v22 = [objc_opt_self() accountDescriptorForURL:v20 mustBeLoggedIn:1];

    if (v22)
    {
      v23 = [v22 accountIdentifier];
      if (v23)
      {
        v24 = v23;
        v25 = sub_10007B19C();

        (*(v12 + 8))(v15, v11);
        return v25;
      }
    }

    sub_10007AE0C();
    v27 = sub_10007AE1C();
    v28 = sub_10007B3FC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "accountID must be non-nil for document/folder sharing", v29, 2u);
    }

    (*(v0 + 8))(v6, v31);
    (*(v12 + 8))(v15, v11);
  }

  return 0;
}

void sub_100009298()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_10007AE2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v47 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v12 = v55;
  if (v55)
  {
    v13 = [objc_allocWithZone(CKContainer) initWithContainerSetupInfo:v55];
    swift_getKeyPath();
    swift_getKeyPath();
    v55 = v13;

    v14 = v13;
    sub_10007AF4C();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    v15 = v55;
    if (v55)
    {
      if (*(v3 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_accountID + 8))
      {
        v53 = v5;
        v16 = *(v3 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_accountID);
        v17 = objc_allocWithZone(CKContainerOptions);

        v18 = [v17 init];
        v54 = v15;
        v19 = v18;
        v20 = objc_allocWithZone(CKAccountOverrideInfo);
        v21 = sub_10007B15C();

        v22 = v20;
        v23 = v19;
        v24 = [v22 initWithAccountID:v21];

        [v23 setAccountOverrideInfo:v24];
        v25 = objc_allocWithZone(CKContainer);
        v26 = [v25 initWithContainerID:v54 options:v23];
        swift_getKeyPath();
        swift_getKeyPath();
        v55 = v26;

        sub_10007AF4C();
        sub_10007AE0C();

        v27 = sub_10007AE1C();
        v28 = sub_10007B41C();

        if (os_log_type_enabled(v27, v28))
        {
          v48 = v24;
          v49 = v2;
          v50 = v28;
          v51 = v27;
          v52 = v23;
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v57 = v30;
          v31 = v29;
          *v29 = 136315138;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_10007AF3C();

          v32 = v55;
          v5 = v53;
          if (v55 && (v33 = [v55 options], v32, v32 = objc_msgSend(v33, "accountOverrideInfo"), v33, v32))
          {
            v34 = [v32 accountID];

            if (v34)
            {
              v32 = sub_10007B19C();
              v36 = v35;
            }

            else
            {
              v32 = 0;
              v36 = 0;
            }

            v5 = v53;
          }

          else
          {
            v36 = 0;
          }

          v55 = v32;
          v56 = v36;
          sub_1000057A0(&qword_10009ED20, &qword_10007CF90);
          v39 = sub_10007B1AC();
          v41 = sub_100037C08(v39, v40, &v57);

          *(v31 + 1) = v41;
          v42 = v51;
          _os_log_impl(&_mh_execute_header, v51, v50, "replaceContainer container.options.accountOverrideInfo.accountID: %s", v31, 0xCu);
          sub_10000585C(v30);

          (*(v5 + 8))(v11, v4);
        }

        else
        {

          v5 = v53;
          (*(v53 + 8))(v11, v4);
        }
      }

      else
      {
        v37 = [objc_allocWithZone(CKContainer) initWithContainerID:v55];
        swift_getKeyPath();
        swift_getKeyPath();
        v55 = v37;

        v38 = v37;
        sub_10007AF4C();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if (v55)
    {
    }

    else
    {
      sub_10007AE0C();
      v43 = sub_10007AE1C();
      v44 = sub_10007B3FC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "replaceContainer throwing as it didn't build a container", v45, 2u);
      }

      (*(v5 + 8))(v9, v4);
      sub_100005AB8();
      swift_allocError();
      *v46 = 0xD000000000000012;
      *(v46 + 8) = 0x8000000100081380;
      *(v46 + 16) = xmmword_10007D2E0;
      *(v46 + 32) = 0x80000001000813A0;
      *(v46 + 40) = 10;
      swift_willThrow();
    }
  }
}

uint64_t sub_1000099C0()
{
  v1 = v0;
  v2 = sub_1000057A0(&qword_10009E608, &qword_10007D5F8);
  v126 = *(v2 - 8);
  v127 = v2;
  v3 = *(v126 + 64);
  v4 = __chkstk_darwin(v2);
  v124 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v125 = &v87 - v6;
  v120 = sub_1000057A0(&unk_10009EF60, &unk_10007D600);
  v117 = *(v120 - 8);
  v7 = *(v117 + 64);
  __chkstk_darwin(v120);
  v114 = &v87 - v8;
  v121 = sub_1000057A0(&qword_10009E610, &unk_10007EBC0);
  v9 = *(*(v121 - 8) + 64);
  __chkstk_darwin(v121);
  v115 = &v87 - v10;
  v110 = sub_1000057A0(&qword_10009E618, &qword_10007D610);
  v109 = *(v110 - 8);
  v11 = *(v109 + 64);
  __chkstk_darwin(v110);
  v108 = &v87 - v12;
  v112 = sub_1000057A0(&qword_10009E620, &qword_10007D618);
  v13 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v111 = &v87 - v14;
  v119 = sub_1000057A0(&qword_10009E628, &qword_10007D620);
  v116 = *(v119 - 8);
  v15 = *(v116 + 64);
  __chkstk_darwin(v119);
  v113 = &v87 - v16;
  v17 = sub_1000057A0(&qword_10009E630, &qword_10007D628);
  v122 = *(v17 - 8);
  v123 = v17;
  v18 = *(v122 + 64);
  __chkstk_darwin(v17);
  v118 = &v87 - v19;
  v107 = sub_1000057A0(&qword_10009F010, &qword_10007D630);
  v106 = *(v107 - 8);
  v20 = *(v106 + 64);
  __chkstk_darwin(v107);
  v105 = &v87 - v21;
  v130 = sub_1000057A0(&qword_10009E638, &qword_10007D638);
  v104 = *(v130 - 8);
  v22 = *(v104 + 64);
  __chkstk_darwin(v130);
  v103 = &v87 - v23;
  v102 = sub_1000057A0(&qword_10009E640, &qword_10007D640);
  v101 = *(v102 - 8);
  v24 = *(v101 + 64);
  __chkstk_darwin(v102);
  v100 = &v87 - v25;
  v129 = sub_1000057A0(&unk_10009F2E0, &qword_10007D648);
  v99 = *(v129 - 8);
  v26 = *(v99 + 64);
  __chkstk_darwin(v129);
  v98 = &v87 - v27;
  v128 = sub_1000057A0(&qword_10009E648, &unk_10007D650);
  v95 = *(v128 - 8);
  v28 = *(v95 + 64);
  __chkstk_darwin(v128);
  v94 = &v87 - v29;
  v93 = sub_1000057A0(&qword_10009F1E0, &qword_10007EDD0);
  v92 = *(v93 - 8);
  v30 = *(v92 + 64);
  __chkstk_darwin(v93);
  v91 = &v87 - v31;
  v90 = sub_1000057A0(&qword_10009F0C0, &unk_10007D660);
  v89 = *(v90 - 8);
  v32 = *(v89 + 64);
  __chkstk_darwin(v90);
  v88 = &v87 - v33;
  v87 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v34 = *(*(v87 - 8) + 64);
  v35 = __chkstk_darwin(v87);
  v37 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v87 - v38;
  v40 = sub_1000057A0(&qword_10009E650, &qword_10007ED80);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  v44 = &v87 - v43;
  v45 = sub_1000057A0(&qword_10009E658, &qword_10007D670);
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v87 - v48;
  v50 = v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__ckShare;
  v131 = 0;
  sub_1000057A0(&qword_10009E4E0, "̇");
  sub_10007AF0C();
  v51 = *(v46 + 32);
  v96 = v50;
  v97 = v45;
  v51(v50, v49, v45);
  v52 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__currentUserIsOwner;
  LOBYTE(v131) = 1;
  sub_10007AF0C();
  (*(v41 + 32))(v1 + v52, v44, v40);
  v53 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__sharingURL;
  v54 = sub_10007AC4C();
  (*(*(v54 - 8) + 56))(v39, 1, 1, v54);
  sub_1000087B4(v39, v37);
  v55 = v88;
  sub_10007AF0C();
  sub_100008824(v39, &unk_10009ED10, &qword_10007D310);
  (*(v89 + 32))(v1 + v53, v55, v90);
  v56 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__ckShareParticipantsCoOwnersState;
  v131 = &off_100095738;
  v57 = v91;
  sub_10007AF0C();
  (*(v92 + 32))(v1 + v56, v57, v93);
  v58 = v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__containerID;
  v131 = 0;
  sub_1000057A0(&qword_10009E500, &qword_10007D318);
  v59 = v94;
  sub_10007AF0C();
  (*(v95 + 32))(v58, v59, v128);
  v60 = v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__containerSetupInfo;
  v131 = 0;
  sub_1000057A0(&qword_10009E510, &qword_10007D320);
  v61 = v98;
  sub_10007AF0C();
  (*(v99 + 32))(v60, v61, v129);
  v62 = (v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_accountID);
  *v62 = 0;
  v62[1] = 0;
  v63 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__container;
  v131 = 0;
  sub_1000057A0(&qword_10009E520, &qword_10007D340);
  v64 = v100;
  sub_10007AF0C();
  v65 = v1 + v63;
  v66 = v1;
  (*(v101 + 32))(v65, v64, v102);
  v67 = v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__ckSystemSharingUIObserver;
  v131 = 0;
  v68 = sub_1000057A0(&unk_10009E530, &qword_10007D348);
  v69 = v103;
  v102 = v68;
  sub_10007AF0C();
  (*(v104 + 32))(v67, v69, v130);
  swift_weakInit();
  if (&_swiftEmptyArrayStorage >> 62 && sub_10007B64C())
  {
    v70 = sub_1000606F8(&_swiftEmptyArrayStorage);
  }

  else
  {
    v70 = &_swiftEmptySetSingleton;
  }

  *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_store) = v70;
  swift_beginAccess();
  v71 = v105;
  sub_10007AF1C();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_10000D6F4(&qword_10009F1D0, &qword_10009F010, &qword_10007D630);

  v72 = v107;
  sub_10007AFBC();

  (*(v106 + 8))(v71, v72);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  v73 = v108;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009E660, &qword_10009E618, &qword_10007D610);
  sub_10000D4F4();
  v74 = v110;
  sub_10007AFAC();
  (*(v109 + 8))(v73, v74);
  swift_beginAccess();
  v75 = v114;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009E680, &unk_10009EF60, &unk_10007D600);
  sub_10000D590();
  v76 = v120;
  sub_10007AFAC();
  (*(v117 + 8))(v75, v76);
  sub_10000D6F4(&qword_10009E690, &qword_10009E620, &qword_10007D618);
  sub_10000D6F4(&qword_10009E698, &qword_10009E610, &unk_10007EBC0);
  v77 = v113;
  sub_10007AE4C();
  v78 = swift_allocObject();
  swift_weakInit();

  v79 = swift_allocObject();
  *(v79 + 16) = sub_10000D67C;
  *(v79 + 24) = v78;
  sub_10000D6F4(&qword_10009E6A0, &qword_10009E628, &qword_10007D620);
  v81 = v118;
  v80 = v119;
  sub_10007AF7C();

  (*(v116 + 8))(v77, v80);
  swift_beginAccess();
  v82 = v125;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009E6A8, &qword_10009E630, &qword_10007D628);
  v83 = v123;
  sub_10007AFCC();
  (*(v122 + 8))(v81, v83);
  v85 = v126;
  v84 = v127;
  (*(v126 + 16))(v124, v82, v127);
  swift_beginAccess();
  sub_10007AF2C();
  swift_endAccess();
  (*(v85 + 8))(v82, v84);
  return v66;
}

void sub_10000AB48(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (!v1)
    {

      return;
    }

    v2 = v1;
    v3 = [v2 currentUserParticipant];
    v4 = [v2 owner];
    v5 = v4;
    if (v3)
    {
      if (v4)
      {
        sub_100005C8C(0, &qword_10009E600, CKShareParticipant_ptr);
        sub_10007B51C();
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_10;
      }

      v3 = v4;
    }

LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF4C();
  }
}

id sub_10000AC88(id a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      v4 = &selRef_initWithContainerSetupInfo_;
      a1 = a2;
    }

    else
    {
      if (!a1)
      {
        goto LABEL_9;
      }

      v4 = &selRef_initWithContainerID_;
    }

    a1 = [objc_allocWithZone(CKContainer) *v4];
    if (a1)
    {
      v5 = objc_allocWithZone(CKSystemSharingUIObserver);
      v6 = a1;
      a1 = [v5 initWithContainer:v6];
      v7 = swift_allocObject();
      swift_weakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = a2;
      v9 = a2;

      sub_10007B4BC();

      swift_allocObject();
      swift_weakInit();

      sub_10007B4CC();

      return a1;
    }

LABEL_9:

    return a1;
  }

  return 0;
}

uint64_t sub_10000AE60(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  v8 = sub_10007AE2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v30 - v15;
  if (a3)
  {
    sub_10007AE0C();
    swift_errorRetain();
    v17 = sub_10007AE1C();
    v18 = sub_10007B3FC();
    sub_10000D8A8(a2, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = v20;
      *v19 = 136315138;
      v30[3] = a2;
      swift_errorRetain();
      sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
      v21 = sub_10007B1AC();
      v23 = sub_100037C08(v21, v22, v30);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "ckShareModel systemSharingUIDidSaveShareBlock error: %s", v19, 0xCu);
      sub_10000585C(v20);
    }

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v25 = sub_10007B35C();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
    v26 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_10007B32C();

    sub_10000D8B4(a2, 0);
    v27 = a5;
    v28 = sub_10007B31C();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = &protocol witness table for MainActor;
    v29[4] = v26;
    v29[5] = a2;
    v29[6] = a5;

    sub_10000DAD0(0, 0, v16, &unk_10007D698, v29);
  }
}

uint64_t sub_10000B1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = sub_10007AE2C();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v10 = sub_10007AC4C();
  v6[16] = v10;
  v11 = *(v10 - 8);
  v6[17] = v11;
  v12 = *(v11 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = sub_10007B32C();
  v6[21] = sub_10007B31C();
  v14 = sub_10007B2EC();
  v6[22] = v14;
  v6[23] = v13;

  return _swift_task_switch(sub_10000B330, v14, v13);
}

uint64_t sub_10000B330()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 192) = Strong;
  if (!Strong)
  {
    v8 = *(v0 + 168);
LABEL_20:

    goto LABEL_21;
  }

  v3 = swift_weakLoadStrong();
  *(v0 + 200) = v3;
  if (!v3)
  {
    v9 = *(v0 + 168);
LABEL_19:

    goto LABEL_20;
  }

  v4 = [*(v0 + 72) recordID];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v5 = *(v0 + 40);
  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v6 = [*(v0 + 40) recordID];

  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    v11 = *(v0 + 168);

LABEL_21:
    v23 = *(v0 + 144);
    v22 = *(v0 + 152);
    v25 = *(v0 + 112);
    v24 = *(v0 + 120);
    v26 = *(v0 + 104);

    v27 = *(v0 + 8);

    return v27();
  }

  if (!v6)
  {
LABEL_11:
    v10 = *(v0 + 168);

    goto LABEL_21;
  }

  sub_100005C8C(0, &qword_10009E6B0, CKRecordID_ptr);
  v7 = sub_10007B51C();

  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  v12 = [*(v0 + 72) URL];
  if (!v12)
  {
LABEL_18:
    v21 = *(v0 + 168);

    goto LABEL_19;
  }

  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 128);
  v18 = v12;
  sub_10007AC1C();

  (*(v16 + 32))(v14, v15, v17);
  *(v0 + 208) = sub_10007B31C();
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  *v19 = v0;
  v19[1] = sub_10000B620;

  return sub_100059770();
}

uint64_t sub_10000B620()
{
  v2 = v0;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 160);
  v10 = *v1;
  *(*v1 + 224) = v2;

  v7 = sub_10007B2EC();
  if (v2)
  {
    v8 = sub_10000B920;
  }

  else
  {
    v8 = sub_10000B77C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10000B77C()
{
  v1 = v0[26];

  v2 = v0[22];
  v3 = v0[23];

  return _swift_task_switch(sub_10000B7E0, v2, v3);
}

uint64_t sub_10000B7E0()
{
  v1 = v0[15];
  sub_10007AE0C();
  v2 = sub_10007AE1C();
  v3 = sub_10007B41C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ckShareModel calling notifyClientShareDidChange()", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[11];
  v7 = v0[12];

  v8 = *(v7 + 8);
  v0[29] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = sub_10000BC08;
  v10 = v0[25];
  v11 = v0[19];
  v12 = v0[10];

  return sub_100047DB8(v11, v12);
}

uint64_t sub_10000B920()
{
  v1 = v0[26];

  v2 = v0[22];
  v3 = v0[23];

  return _swift_task_switch(sub_10000B984, v2, v3);
}

uint64_t sub_10000B984()
{
  v37 = v0;
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[14];

  sub_10007AE0C();
  swift_errorRetain();
  v4 = sub_10007AE1C();
  v5 = sub_10007B3FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v30 = v0[25];
    v31 = v0[24];
    v7 = v0[17];
    v34 = v0[16];
    v35 = v0[19];
    v8 = v0[12];
    v32 = v0[11];
    v33 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136315138;
    v0[6] = v6;
    swift_errorRetain();
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v11 = sub_10007B1AC();
    v13 = sub_100037C08(v11, v12, &v36);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "ckShareModel systemSharingUIDidSaveShareBlock failed to refetch share: %s", v9, 0xCu);
    sub_10000585C(v10);

    (*(v8 + 8))(v33, v32);
    (*(v7 + 8))(v35, v34);
  }

  else
  {
    v14 = v0[28];
    v16 = v0[24];
    v15 = v0[25];
    v17 = v0[19];
    v18 = v0[16];
    v19 = v0[17];
    v20 = v0[14];
    v21 = v0[11];
    v22 = v0[12];

    (*(v22 + 8))(v20, v21);
    (*(v19 + 8))(v17, v18);
  }

  v24 = v0[18];
  v23 = v0[19];
  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[13];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10000BC08()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_10000BE18;
  }

  else
  {
    v7 = sub_10000BD44;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10000BD44()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[17];

  (*(v6 + 8))(v4, v5);
  v8 = v0[18];
  v7 = v0[19];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10000BE18()
{
  v39 = v0;
  v1 = v0[31];
  v2 = v0[21];
  v3 = v0[13];

  sub_10007AE0C();
  swift_errorRetain();
  v4 = sub_10007AE1C();
  v5 = sub_10007B3FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = v0[25];
    v36 = v0[19];
    v8 = v0[17];
    v34 = v0[29];
    v35 = v0[16];
    v30 = v0[24];
    v31 = v0[12];
    v32 = v0[11];
    v33 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38 = v10;
    *v9 = 136315138;
    v0[7] = v6;
    swift_errorRetain();
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v11 = sub_10007B1AC();
    v13 = sub_100037C08(v11, v12, &v38);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "ckShareModel systemSharingUIDidSaveShareBlock failed to fetch share metadata: %s", v9, 0xCu);
    sub_10000585C(v10);

    v34(v33, v32);
    (*(v8 + 8))(v36, v35);
  }

  else
  {
    v14 = v0[31];
    v15 = v0[29];
    v17 = v0[24];
    v16 = v0[25];
    v37 = v0[19];
    v18 = v0[16];
    v19 = v0[17];
    v20 = v0[12];
    v21 = v0[13];
    v22 = v0[11];

    v15(v21, v22);
    (*(v19 + 8))(v37, v18);
  }

  v24 = v0[18];
  v23 = v0[19];
  v26 = v0[14];
  v25 = v0[15];
  v27 = v0[13];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10000C0B0(void *a1, uint64_t a2, char a3)
{
  v6 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v37 - v8;
  v10 = sub_10007AE2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v37 - v16;
  if (a3)
  {
    sub_10007AE0C();
    swift_errorRetain();
    v18 = sub_10007AE1C();
    v19 = sub_10007B3FC();
    sub_10000D794(a2, 1);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[0] = v21;
      *v20 = 136315138;
      v37[3] = a2;
      swift_errorRetain();
      sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
      v22 = sub_10007B1AC();
      v24 = sub_100037C08(v22, v23, v37);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "ckShareModel systemSharingUIDidStopSharingBlock error: %s", v20, 0xCu);
      sub_10000585C(v21);
    }

    return (*(v11 + 8))(v15, v10);
  }

  else
  {
    sub_10007AE0C();
    v26 = a1;
    v27 = sub_10007AE1C();
    v28 = sub_10007B41C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "ckShareModel systemSharingUIDidStopSharingBlock stopped sharing: %@", v29, 0xCu);
      sub_100008824(v30, &qword_10009F570, &qword_10007DAF0);
    }

    (*(v11 + 8))(v17, v10);
    v32 = sub_10007B35C();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    v33 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_10007B32C();
    v34 = v26;

    v35 = sub_10007B31C();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = &protocol witness table for MainActor;
    v36[4] = v33;
    v36[5] = v34;

    sub_10000DAD0(0, 0, v9, &unk_10007D680, v36);
  }
}

uint64_t sub_10000C500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_10007AE2C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  sub_10007B32C();
  v5[11] = sub_10007B31C();
  v10 = sub_10007B2EC();

  return _swift_task_switch(sub_10000C5F4, v10, v9);
}

uint64_t sub_10000C5F4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v3 = *(v0 + 40);
      if (v3)
      {
        v4 = [*(v0 + 40) recordID];

        if (v4)
        {
          v5 = *(v0 + 56);
          sub_100005C8C(0, &qword_10009E6B0, CKRecordID_ptr);
          v6 = v5;
          v7 = sub_10007B51C();

          if (v7)
          {
            v8 = *(v0 + 80);
            sub_10007AE0C();
            v9 = sub_10007AE1C();
            v10 = sub_10007B41C();
            v11 = os_log_type_enabled(v9, v10);
            v13 = *(v0 + 72);
            v12 = *(v0 + 80);
            v14 = *(v0 + 64);
            if (v11)
            {
              v15 = swift_slowAlloc();
              *v15 = 0;
              _os_log_impl(&_mh_execute_header, v9, v10, "ckShareModel systemSharingUIDidStopSharingBlock dismissing", v15, 2u);
            }

            else
            {
            }

            (*(v13 + 8))(v12, v14);
            goto LABEL_10;
          }
        }
      }
    }
  }

LABEL_10:
  v16 = *(v0 + 80);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10000C838()
{
  v1 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__ckShare;
  v2 = sub_1000057A0(&qword_10009E658, &qword_10007D670);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__currentUserIsOwner;
  v4 = sub_1000057A0(&qword_10009E650, &qword_10007ED80);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__sharingURL;
  v6 = sub_1000057A0(&qword_10009F0C0, &unk_10007D660);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__ckShareParticipantsCoOwnersState;
  v8 = sub_1000057A0(&qword_10009F1E0, &qword_10007EDD0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__containerID;
  v10 = sub_1000057A0(&qword_10009E648, &unk_10007D650);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__containerSetupInfo;
  v12 = sub_1000057A0(&unk_10009F2E0, &qword_10007D648);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_accountID + 8);

  v14 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__container;
  v15 = sub_1000057A0(&qword_10009E640, &qword_10007D640);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel__ckSystemSharingUIObserver;
  v17 = sub_1000057A0(&qword_10009E638, &qword_10007D638);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  swift_weakDestroy();
  v18 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12CKShareModel_store);

  return v0;
}

uint64_t sub_10000CAEC()
{
  sub_10000C838();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CKShareModel()
{
  result = qword_10009E4C8;
  if (!qword_10009E4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000CB98()
{
  sub_10000CEE4(319, &qword_10009E4D8, &qword_10009E4E0, "̇");
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_10000CE98(319, &qword_10009EC80);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_10000CEE4(319, &qword_10009E4E8, &unk_10009ED10, &qword_10007D310);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_10000CE98(319, &qword_10009E4F0);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_10000CEE4(319, &qword_10009E4F8, &qword_10009E500, &qword_10007D318);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_10000CEE4(319, &qword_10009E508, &qword_10009E510, &qword_10007D320);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_10000CEE4(319, &qword_10009E518, &qword_10009E520, &qword_10007D340);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_10000CEE4(319, &qword_10009E528, &unk_10009E530, &qword_10007D348);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000CE98(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_10007AF5C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10000CEE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100004AD8(a3, a4);
    v5 = sub_10007AF5C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10000CF38(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      v2 = *(result + 16);
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = v1;

      sub_10007AF3C();

      LODWORD(v4) = v27;
      v5 = &stru_10009D000;
      if ([v3 publicPermission] == 1)
      {
        v6 = &stru_10009D000;
        v7 = [v3 participants];
        sub_100005C8C(0, &qword_10009E600, CKShareParticipant_ptr);
        v8 = sub_10007B2AC();

        if (v8 >> 62)
        {
          goto LABEL_47;
        }

        for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10007B64C())
        {

          if (!i)
          {
            break;
          }

          v10 = [v3 v6[63].name];
          v11 = sub_10007B2AC();

          v24 = v4;
          if (v11 >> 62)
          {
            v12 = sub_10007B64C();
          }

          else
          {
            v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v13 = &stru_10009D000;
          v25 = v3;
          if (v12)
          {
            v3 = 0;
            v4 = v11 & 0xC000000000000001;
            v5 = (v11 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v4)
              {
                v14 = sub_10007B5DC();
              }

              else
              {
                if (v3 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_44;
                }

                v14 = *(v11 + 8 * v3 + 32);
              }

              v6 = v14;
              v15 = (v3 + 1);
              if (__OFADD__(v3, 1))
              {
                break;
              }

              if (-[__objc2_ivar role](v14, "role") == 1 || [v6 v13[30].offs] != 2)
              {
              }

              else
              {
                sub_10007B5FC();
                v16 = *(&_swiftEmptyArrayStorage + 2);
                sub_10007B61C();
                v13 = &stru_10009D000;
                sub_10007B62C();
                sub_10007B60C();
              }

              ++v3;
              if (v15 == v12)
              {
                v3 = v25;
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_44:
            __break(1u);
          }

          else
          {
LABEL_26:

            if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (&_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
            {
              v26 = sub_10007B64C();
            }

            else
            {
              v26 = *(&_swiftEmptyArrayStorage + 2);
            }

            v18 = [v3 participants];
            v4 = sub_10007B2AC();

            if (v4 >> 62)
            {
              v19 = sub_10007B64C();
              if (!v19)
              {
LABEL_50:

                if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (&_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
                {
                  v23 = sub_10007B64C();
                }

                else
                {
                  v23 = *(&_swiftEmptyArrayStorage + 2);
                }

                if (v26 <= 0)
                {

                  if (v23 > 0)
                  {
                    return 1;
                  }

                  else
                  {
                    return v24;
                  }
                }

                else if (v23 < 1)
                {

                  return 2;
                }

                else
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  sub_10007AF3C();

                  if (&_swiftEmptyArrayStorage == 3)
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

            else
            {
              v19 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v19)
              {
                goto LABEL_50;
              }
            }

            v3 = 0;
            v5 = (v4 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v20 = sub_10007B5DC();
              }

              else
              {
                if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_46;
                }

                v20 = *(v4 + 8 * v3 + 32);
              }

              v6 = v20;
              v21 = (v3 + 1);
              if (__OFADD__(v3, 1))
              {
                break;
              }

              if (-[__objc2_ivar role](v20, "role") == 1 || [v6 v13[30].offs] != 3)
              {
              }

              else
              {
                sub_10007B5FC();
                v22 = *(&_swiftEmptyArrayStorage + 2);
                sub_10007B61C();
                v13 = &stru_10009D000;
                sub_10007B62C();
                sub_10007B60C();
              }

              ++v3;
              if (v21 == v19)
              {
                v3 = v25;
                goto LABEL_50;
              }
            }
          }

          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          ;
        }
      }

      v17 = [v3 v5[63].type];

      if (v17 == 2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_10000D4B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000D4F4()
{
  result = qword_10009E668;
  if (!qword_10009E668)
  {
    sub_100004AD8(&qword_10009E500, &qword_10007D318);
    sub_10000D62C(&qword_10009E670, &qword_10009E678, CKContainerID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009E668);
  }

  return result;
}

unint64_t sub_10000D590()
{
  result = qword_10009F2F0;
  if (!qword_10009F2F0)
  {
    sub_100004AD8(&qword_10009E510, &qword_10007D320);
    sub_10000D62C(&unk_10009F300, &qword_10009E688, CKContainerSetupInfo_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F2F0);
  }

  return result;
}

uint64_t sub_10000D62C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005C8C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D684()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D6BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10000D6F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004AD8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D73C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D794(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10000D7A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000D7E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000DACC;

  return sub_10000C500(a1, v4, v5, v7, v6);
}

void sub_10000D8A8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_10000D8B4(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10000D8C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000D910(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000D9D8;

  return sub_10000B1B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10000D9D8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000DAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000187C8(a3, v27 - v11, &qword_10009F370, &qword_10007FC90);
  v13 = sub_10007B35C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100008824(v12, &qword_10009F370, &qword_10007FC90);
  }

  else
  {
    sub_10007B34C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10007B2EC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10007B1CC() + 32;
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

      sub_100008824(a3, &qword_10009F370, &qword_10007FC90);

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

  sub_100008824(a3, &qword_10009F370, &qword_10007FC90);
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

uint64_t sub_10000DDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 59) = v19;
  *(v8 + 312) = v17;
  *(v8 + 320) = v18;
  *(v8 + 296) = a7;
  *(v8 + 304) = a8;
  *(v8 + 280) = a5;
  *(v8 + 288) = a6;
  *(v8 + 272) = a4;
  v9 = sub_10007AE2C();
  *(v8 + 328) = v9;
  v10 = *(v9 - 8);
  *(v8 + 336) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 344) = swift_task_alloc();
  v12 = *(*(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8) + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = sub_10007B32C();
  *(v8 + 384) = sub_10007B31C();
  v14 = sub_10007B2EC();
  *(v8 + 392) = v14;
  *(v8 + 400) = v13;

  return _swift_task_switch(sub_10000DF3C, v14, v13);
}

uint64_t sub_10000DF3C()
{
  v1 = type metadata accessor for ModelDelegateSPI();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 408) = sub_100023D50();

  return _swift_task_switch(sub_10000DFBC, 0, 0);
}

uint64_t sub_10000DFBC()
{
  v1 = v0[47];
  v2 = v0[37];
  v3 = (v0[51] + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_concludeSPI);
  v4 = v3[1];
  *v3 = v0[36];
  v3[1] = v2;

  v0[52] = sub_10007B31C();
  v6 = sub_10007B2EC();

  return _swift_task_switch(sub_10000E074, v6, v5);
}

uint64_t sub_10000E074()
{
  v1 = *(v0 + 416);

  v2 = type metadata accessor for CKShareModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 424) = sub_1000099C0();

  return _swift_task_switch(sub_10000E0FC, 0, 0);
}

uint64_t sub_10000E0FC()
{
  v1 = *(v0 + 376);
  *(v0 + 432) = sub_10007B31C();
  v3 = sub_10007B2EC();

  return _swift_task_switch(sub_10000E188, v3, v2);
}

uint64_t sub_10000E188()
{
  v2 = v0[53];
  v1 = v0[54];

  v3 = type metadata accessor for OptionsModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[55] = sub_100079A54(v2);

  return _swift_task_switch(sub_10000E21C, 0, 0);
}

uint64_t sub_10000E21C()
{
  v1 = *(v0 + 376);
  *(v0 + 448) = sub_10007B31C();
  v3 = sub_10007B2EC();

  return _swift_task_switch(sub_10000E2A8, v3, v2);
}

uint64_t sub_10000E2A8()
{
  v2 = v0[55];
  v1 = v0[56];

  v3 = type metadata accessor for SharingModel();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[57] = sub_10006098C(v2);

  return _swift_task_switch(sub_10000E33C, 0, 0);
}

uint64_t sub_10000E33C()
{
  v1 = v0[57];
  v2 = v0[51];
  v3 = v0[34];
  v4 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel;
  v0[58] = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel;
  v5 = *(v2 + v4);
  *(v2 + v4) = v1;

  v6 = *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_share);
  *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_share) = v3;

  v7 = *(v2 + v4);
  v0[59] = v7;
  if (!v7)
  {
    return sub_10007B63C();
  }

  v9 = v0[46];
  v8 = v0[47];
  v10 = v0[34];
  v11 = sub_10007AC4C();
  v0[60] = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v0[61] = v13;
  v0[62] = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v13(v9, 1, 1, v11);
  v14 = v10;

  v0[63] = sub_10007B31C();
  v16 = sub_10007B2EC();

  return _swift_task_switch(sub_10000E4E8, v16, v15);
}

uint64_t sub_10000E4E8()
{
  v1 = v0[63];
  v2 = v0[59];
  v3 = v0[51];
  v4 = v0[46];
  v5 = v0[35];

  sub_100024360(v3, v5, v4, 0, v2);

  sub_100008824(v4, &unk_10009ED10, &qword_10007D310);
  v6 = v0[49];
  v7 = v0[50];

  return _swift_task_switch(sub_10000E59C, v6, v7);
}

uint64_t sub_10000E59C()
{
  v1 = *(v0[51] + v0[58]);
  v0[64] = v1;
  if (!v1)
  {
    return sub_10007B63C();
  }

  v2 = v0[38];
  v3 = v0[34];

  sub_10004643C(v2);
  v4 = [v3 participants];
  sub_1000189E0();
  v5 = sub_10007B2AC();

  if (v5 >> 62)
  {
    v6 = sub_10007B64C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[65] = v6;

  v0[66] = *(v1 + 16);

  v7 = swift_task_alloc();
  v0[67] = v7;
  *v7 = v0;
  v7[1] = sub_10000E73C;

  return sub_100075AC0();
}

uint64_t sub_10000E73C()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v9 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v4 = v2[49];
    v5 = v2[50];
    v6 = sub_100010558;
  }

  else
  {
    v7 = v2[66];

    v4 = v2[49];
    v5 = v2[50];
    v6 = sub_10000E858;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10000E858()
{
  v1 = *(*(v0 + 512) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v2 = *(v0 + 57);
  if (v2 == 2 || (v2 & 1) == 0)
  {
LABEL_6:
    v9 = 10;
    goto LABEL_7;
  }

  if (*(v0 + 520) == 1)
  {
    v3 = *(*(v0 + 512) + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    if (*(v0 + 58) == 1)
    {
      v4 = *(v0 + 376);
      *(v0 + 552) = sub_10007B31C();
      v5 = sub_10007B2EC();
      v7 = v6;
      *(v0 + 560) = v5;
      *(v0 + 568) = v6;
      v8 = sub_10000EB58;
LABEL_12:

      return _swift_task_switch(v8, v5, v7);
    }

    goto LABEL_6;
  }

  if ([*(v0 + 272) publicPermission] == 1)
  {
    v26 = *(v0 + 376);
    *(v0 + 648) = sub_10007B31C();
    v5 = sub_10007B2EC();
    v7 = v27;
    *(v0 + 656) = v5;
    *(v0 + 664) = v27;
    v8 = sub_10000F5CC;
    goto LABEL_12;
  }

  v9 = 12;
LABEL_7:
  v10 = *(v0 + 512);
  v12 = *(v0 + 488);
  v11 = *(v0 + 496);
  v13 = *(v0 + 480);
  v14 = *(v0 + 408);
  v15 = *(v0 + 384);
  v16 = *(v0 + 368);
  v18 = *(v0 + 288);
  v17 = *(v0 + 296);

  v12(v16, 1, 1, v13);
  v19 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:v9 userInfo:0];
  v18(v16, 0, v19);

  sub_100008824(v16, &unk_10009ED10, &qword_10007D310);
  v21 = *(v0 + 360);
  v20 = *(v0 + 368);
  v23 = *(v0 + 344);
  v22 = *(v0 + 352);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10000EB58()
{
  v1 = v0[64];
  v2 = v0[39];
  v0[72] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[73] = v3;
  *v3 = v0;
  v3[1] = sub_10000EC24;
  if (v2 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return sub_100076258(v4, v1, 0);
}

uint64_t sub_10000EC24()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v9 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v4 = v2[71];
    v5 = v2[70];
    v6 = sub_10000EF3C;
  }

  else
  {
    v7 = v2[72];

    v4 = v2[71];
    v5 = v2[70];
    v6 = sub_10000ED48;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10000ED48()
{
  v1 = v0[64];
  v2 = v0[40];
  v0[75] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[76] = v3;
  *v3 = v0;
  v3[1] = sub_10000EE18;
  if (v2 == 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return sub_100076CB0(v4, v1, 0, 1);
}

uint64_t sub_10000EE18()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v9 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v4 = v2[71];
    v5 = v2[70];
    v6 = sub_10000F22C;
  }

  else
  {
    v7 = v2[75];

    v4 = v2[71];
    v5 = v2[70];
    v6 = sub_10000EFB4;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10000EF3C()
{
  v1 = v0[72];
  v0[80] = v0[74];
  v2 = v0[69];

  v3 = v0[49];
  v4 = v0[50];

  return _swift_task_switch(sub_10000F2A4, v3, v4);
}

uint64_t sub_10000EFB4()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 512);
  v3 = *(v0 + 60);
  v4 = *(v0 + 59);

  v5 = *(v2 + 16);
  if (v4)
  {
    v6 = &off_1000957B0;
  }

  else
  {
    v6 = &off_1000957D8;
  }

  v7 = *(v2 + 16);

  sub_100077834(v6);

  v8 = *(v2 + 16);

  sub_100077654(v3);

  v9 = swift_task_alloc();
  *(v0 + 624) = v9;
  *v9 = v0;
  v9[1] = sub_10000F0C4;
  v10 = *(v0 + 60);
  v11 = *(v0 + 59);

  return sub_100048564(v11, v10);
}

uint64_t sub_10000F0C4()
{
  v2 = *(*v1 + 624);
  v3 = *v1;
  v3[79] = v0;

  if (v0)
  {
    v4 = v3[49];
    v5 = v3[50];

    return _swift_task_switch(sub_10001088C, v4, v5);
  }

  else
  {
    v6 = v3[64];
    v7 = swift_task_alloc();
    v3[93] = v7;
    *v7 = v3;
    v7[1] = sub_100010044;

    return sub_10004A150();
  }
}

uint64_t sub_10000F22C()
{
  v1 = v0[75];
  v0[80] = v0[77];
  v2 = v0[69];

  v3 = v0[49];
  v4 = v0[50];

  return _swift_task_switch(sub_10000F2A4, v3, v4);
}

uint64_t sub_10000F2A4()
{
  v41 = v0;
  v1 = *(v0 + 384);

  *(v0 + 256) = *(v0 + 640);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 344);

    v3 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v3;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v4 = sub_10007AE1C();
    v5 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    v9 = *(v0 + 328);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40 = v11;
      *v10 = 136315138;
      v12 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v12;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v13 = sub_10007B1AC();
      v15 = sub_100037C08(v13, v14, &v40);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error finishing addToCloudKitSharing: %s", v10, 0xCu);
      sub_10000585C(v11);
    }

    (*(v8 + 8))(v7, v9);
    v39 = *(v0 + 512);
    v17 = *(v0 + 488);
    v16 = *(v0 + 496);
    v18 = *(v0 + 480);
    v19 = *(v0 + 408);
    v20 = *(v0 + 368);
    v21 = *(v0 + 288);
    v22 = *(v0 + 296);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v24 = v23;
    v17(v20, 1, 1, v18);
    v21(v20, 0, v24);

    sub_100018A88(v0 + 16);
    sub_100008824(v20, &unk_10009ED10, &qword_10007D310);
    v25 = *(v0 + 256);

    v27 = *(v0 + 360);
    v26 = *(v0 + 368);
    v29 = *(v0 + 344);
    v28 = *(v0 + 352);

    v30 = *(v0 + 8);
  }

  else
  {
    v31 = *(v0 + 512);
    v32 = *(v0 + 408);
    v34 = *(v0 + 360);
    v33 = *(v0 + 368);
    v36 = *(v0 + 344);
    v35 = *(v0 + 352);

    v37 = *(v0 + 256);

    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t sub_10000F5CC()
{
  v1 = v0[64];
  v2 = v0[39];
  v0[84] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[85] = v3;
  *v3 = v0;
  v3[1] = sub_10000F698;
  if (v2 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return sub_100076258(v4, v1, 0);
}

uint64_t sub_10000F698()
{
  v2 = *v1;
  v3 = *(*v1 + 680);
  v9 = *v1;
  *(*v1 + 688) = v0;

  if (v0)
  {
    v4 = v2[83];
    v5 = v2[82];
    v6 = sub_10000F9B0;
  }

  else
  {
    v7 = v2[84];

    v4 = v2[83];
    v5 = v2[82];
    v6 = sub_10000F7BC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10000F7BC()
{
  v1 = v0[64];
  v2 = v0[40];
  v0[87] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[88] = v3;
  *v3 = v0;
  v3[1] = sub_10000F88C;
  if (v2 == 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return sub_100076CB0(v4, v1, 0, 0);
}

uint64_t sub_10000F88C()
{
  v2 = *v1;
  v3 = *(*v1 + 704);
  v9 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v4 = v2[83];
    v5 = v2[82];
    v6 = sub_10000FCA4;
  }

  else
  {
    v7 = v2[87];

    v4 = v2[83];
    v5 = v2[82];
    v6 = sub_10000FA28;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10000F9B0()
{
  v1 = v0[84];
  v0[92] = v0[86];
  v2 = v0[81];

  v3 = v0[49];
  v4 = v0[50];

  return _swift_task_switch(sub_10000FD1C, v3, v4);
}

uint64_t sub_10000FA28()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 512);
  v3 = *(v0 + 60);
  v4 = *(v0 + 59);

  v5 = *(v2 + 16);
  if (v4)
  {
    v6 = &off_100095800;
  }

  else
  {
    v6 = &off_100095828;
  }

  v7 = *(v2 + 16);

  sub_100077834(v6);

  v8 = *(v2 + 16);

  sub_100077654(v3);

  v9 = swift_task_alloc();
  *(v0 + 720) = v9;
  *v9 = v0;
  v9[1] = sub_10000FB3C;
  v10 = *(v0 + 60);
  v11 = *(v0 + 59);
  v12 = *(v0 + 320);

  return sub_1000494A4(v12, v11, v10);
}

uint64_t sub_10000FB3C()
{
  v2 = *(*v1 + 720);
  v3 = *v1;
  v3[91] = v0;

  if (v0)
  {
    v4 = v3[49];
    v5 = v3[50];

    return _swift_task_switch(sub_100010BB4, v4, v5);
  }

  else
  {
    v6 = v3[64];
    v7 = swift_task_alloc();
    v3[93] = v7;
    *v7 = v3;
    v7[1] = sub_100010044;

    return sub_10004A150();
  }
}

uint64_t sub_10000FCA4()
{
  v1 = v0[87];
  v0[92] = v0[89];
  v2 = v0[81];

  v3 = v0[49];
  v4 = v0[50];

  return _swift_task_switch(sub_10000FD1C, v3, v4);
}

uint64_t sub_10000FD1C()
{
  v41 = v0;
  v1 = *(v0 + 384);

  *(v0 + 256) = *(v0 + 736);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 344);

    v3 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v3;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v4 = sub_10007AE1C();
    v5 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    v9 = *(v0 + 328);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40 = v11;
      *v10 = 136315138;
      v12 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v12;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v13 = sub_10007B1AC();
      v15 = sub_100037C08(v13, v14, &v40);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error finishing addToCloudKitSharing: %s", v10, 0xCu);
      sub_10000585C(v11);
    }

    (*(v8 + 8))(v7, v9);
    v39 = *(v0 + 512);
    v17 = *(v0 + 488);
    v16 = *(v0 + 496);
    v18 = *(v0 + 480);
    v19 = *(v0 + 408);
    v20 = *(v0 + 368);
    v21 = *(v0 + 288);
    v22 = *(v0 + 296);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v24 = v23;
    v17(v20, 1, 1, v18);
    v21(v20, 0, v24);

    sub_100018A88(v0 + 16);
    sub_100008824(v20, &unk_10009ED10, &qword_10007D310);
    v25 = *(v0 + 256);

    v27 = *(v0 + 360);
    v26 = *(v0 + 368);
    v29 = *(v0 + 344);
    v28 = *(v0 + 352);

    v30 = *(v0 + 8);
  }

  else
  {
    v31 = *(v0 + 512);
    v32 = *(v0 + 408);
    v34 = *(v0 + 360);
    v33 = *(v0 + 368);
    v36 = *(v0 + 344);
    v35 = *(v0 + 352);

    v37 = *(v0 + 256);

    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t sub_100010044()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v4 = *v1;
  *(*v1 + 752) = v0;

  v5 = *(v2 + 400);
  v6 = *(v2 + 392);
  if (v0)
  {
    v7 = sub_100010EDC;
  }

  else
  {
    v7 = sub_100010180;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100010180()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 496);
  (*(v0 + 488))(*(v0 + 360), 1, 1, *(v0 + 480));
  v3 = swift_task_alloc();
  *(v0 + 760) = v3;
  *v3 = v0;
  v3[1] = sub_100010230;
  v4 = *(v0 + 360);

  return sub_10004AE58(v4);
}

uint64_t sub_100010230()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 768) = v0;

  sub_100008824(v4, &unk_10009ED10, &qword_10007D310);
  v6 = *(v2 + 400);
  v7 = *(v2 + 392);
  if (v0)
  {
    v8 = sub_100011204;
  }

  else
  {
    v8 = sub_100010398;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100010398()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 384);
  v3 = *(v0 + 352);

  v4 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v5 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v6 = *(v0 + 264);
  if (v6)
  {
    v7 = [*(v0 + 264) _copyWithoutPersonalInfo];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 512);
  v9 = *(v0 + 408);
  v10 = *(v0 + 352);
  v11 = *(v0 + 296);
  (*(v0 + 288))(v10, v7, 0);

  sub_100008824(v10, &unk_10009ED10, &qword_10007D310);
  v13 = *(v0 + 360);
  v12 = *(v0 + 368);
  v15 = *(v0 + 344);
  v14 = *(v0 + 352);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100010558()
{
  v42 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 384);

  *(v0 + 256) = *(v0 + 544);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 344);

    v4 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v4;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v5 = sub_10007AE1C();
    v6 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 336);
    v8 = *(v0 + 344);
    v10 = *(v0 + 328);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v41 = v12;
      *v11 = 136315138;
      v13 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v13;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v14 = sub_10007B1AC();
      v16 = sub_100037C08(v14, v15, &v41);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error finishing addToCloudKitSharing: %s", v11, 0xCu);
      sub_10000585C(v12);
    }

    (*(v9 + 8))(v8, v10);
    v40 = *(v0 + 512);
    v18 = *(v0 + 488);
    v17 = *(v0 + 496);
    v19 = *(v0 + 480);
    v20 = *(v0 + 408);
    v21 = *(v0 + 368);
    v22 = *(v0 + 288);
    v23 = *(v0 + 296);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v25 = v24;
    v18(v21, 1, 1, v19);
    v22(v21, 0, v25);

    sub_100018A88(v0 + 16);
    sub_100008824(v21, &unk_10009ED10, &qword_10007D310);
    v26 = *(v0 + 256);

    v28 = *(v0 + 360);
    v27 = *(v0 + 368);
    v30 = *(v0 + 344);
    v29 = *(v0 + 352);

    v31 = *(v0 + 8);
  }

  else
  {
    v32 = *(v0 + 512);
    v33 = *(v0 + 408);
    v35 = *(v0 + 360);
    v34 = *(v0 + 368);
    v37 = *(v0 + 344);
    v36 = *(v0 + 352);

    v38 = *(v0 + 256);

    v31 = *(v0 + 8);
  }

  return v31();
}

uint64_t sub_10001088C()
{
  v41 = v0;
  v1 = *(v0 + 384);

  *(v0 + 256) = *(v0 + 632);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 344);

    v3 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v3;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v4 = sub_10007AE1C();
    v5 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    v9 = *(v0 + 328);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40 = v11;
      *v10 = 136315138;
      v12 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v12;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v13 = sub_10007B1AC();
      v15 = sub_100037C08(v13, v14, &v40);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error finishing addToCloudKitSharing: %s", v10, 0xCu);
      sub_10000585C(v11);
    }

    (*(v8 + 8))(v7, v9);
    v39 = *(v0 + 512);
    v17 = *(v0 + 488);
    v16 = *(v0 + 496);
    v18 = *(v0 + 480);
    v19 = *(v0 + 408);
    v20 = *(v0 + 368);
    v21 = *(v0 + 288);
    v22 = *(v0 + 296);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v24 = v23;
    v17(v20, 1, 1, v18);
    v21(v20, 0, v24);

    sub_100018A88(v0 + 16);
    sub_100008824(v20, &unk_10009ED10, &qword_10007D310);
    v25 = *(v0 + 256);

    v27 = *(v0 + 360);
    v26 = *(v0 + 368);
    v29 = *(v0 + 344);
    v28 = *(v0 + 352);

    v30 = *(v0 + 8);
  }

  else
  {
    v31 = *(v0 + 512);
    v32 = *(v0 + 408);
    v34 = *(v0 + 360);
    v33 = *(v0 + 368);
    v36 = *(v0 + 344);
    v35 = *(v0 + 352);

    v37 = *(v0 + 256);

    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t sub_100010BB4()
{
  v41 = v0;
  v1 = *(v0 + 384);

  *(v0 + 256) = *(v0 + 728);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 344);

    v3 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v3;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v4 = sub_10007AE1C();
    v5 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    v9 = *(v0 + 328);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40 = v11;
      *v10 = 136315138;
      v12 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v12;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v13 = sub_10007B1AC();
      v15 = sub_100037C08(v13, v14, &v40);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error finishing addToCloudKitSharing: %s", v10, 0xCu);
      sub_10000585C(v11);
    }

    (*(v8 + 8))(v7, v9);
    v39 = *(v0 + 512);
    v17 = *(v0 + 488);
    v16 = *(v0 + 496);
    v18 = *(v0 + 480);
    v19 = *(v0 + 408);
    v20 = *(v0 + 368);
    v21 = *(v0 + 288);
    v22 = *(v0 + 296);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v24 = v23;
    v17(v20, 1, 1, v18);
    v21(v20, 0, v24);

    sub_100018A88(v0 + 16);
    sub_100008824(v20, &unk_10009ED10, &qword_10007D310);
    v25 = *(v0 + 256);

    v27 = *(v0 + 360);
    v26 = *(v0 + 368);
    v29 = *(v0 + 344);
    v28 = *(v0 + 352);

    v30 = *(v0 + 8);
  }

  else
  {
    v31 = *(v0 + 512);
    v32 = *(v0 + 408);
    v34 = *(v0 + 360);
    v33 = *(v0 + 368);
    v36 = *(v0 + 344);
    v35 = *(v0 + 352);

    v37 = *(v0 + 256);

    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t sub_100010EDC()
{
  v41 = v0;
  v1 = *(v0 + 384);

  *(v0 + 256) = *(v0 + 752);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 344);

    v3 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v3;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v4 = sub_10007AE1C();
    v5 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    v9 = *(v0 + 328);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40 = v11;
      *v10 = 136315138;
      v12 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v12;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v13 = sub_10007B1AC();
      v15 = sub_100037C08(v13, v14, &v40);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error finishing addToCloudKitSharing: %s", v10, 0xCu);
      sub_10000585C(v11);
    }

    (*(v8 + 8))(v7, v9);
    v39 = *(v0 + 512);
    v17 = *(v0 + 488);
    v16 = *(v0 + 496);
    v18 = *(v0 + 480);
    v19 = *(v0 + 408);
    v20 = *(v0 + 368);
    v21 = *(v0 + 288);
    v22 = *(v0 + 296);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v24 = v23;
    v17(v20, 1, 1, v18);
    v21(v20, 0, v24);

    sub_100018A88(v0 + 16);
    sub_100008824(v20, &unk_10009ED10, &qword_10007D310);
    v25 = *(v0 + 256);

    v27 = *(v0 + 360);
    v26 = *(v0 + 368);
    v29 = *(v0 + 344);
    v28 = *(v0 + 352);

    v30 = *(v0 + 8);
  }

  else
  {
    v31 = *(v0 + 512);
    v32 = *(v0 + 408);
    v34 = *(v0 + 360);
    v33 = *(v0 + 368);
    v36 = *(v0 + 344);
    v35 = *(v0 + 352);

    v37 = *(v0 + 256);

    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t sub_100011204()
{
  v41 = v0;
  v1 = *(v0 + 384);

  *(v0 + 256) = *(v0 + 768);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 344);

    v3 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v3;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v4 = sub_10007AE1C();
    v5 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 336);
    v7 = *(v0 + 344);
    v9 = *(v0 + 328);
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40 = v11;
      *v10 = 136315138;
      v12 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v12;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v13 = sub_10007B1AC();
      v15 = sub_100037C08(v13, v14, &v40);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error finishing addToCloudKitSharing: %s", v10, 0xCu);
      sub_10000585C(v11);
    }

    (*(v8 + 8))(v7, v9);
    v39 = *(v0 + 512);
    v17 = *(v0 + 488);
    v16 = *(v0 + 496);
    v18 = *(v0 + 480);
    v19 = *(v0 + 408);
    v20 = *(v0 + 368);
    v21 = *(v0 + 288);
    v22 = *(v0 + 296);
    sub_100026DA0(0xD000000000000014, 0x8000000100081410);
    v24 = v23;
    v17(v20, 1, 1, v18);
    v21(v20, 0, v24);

    sub_100018A88(v0 + 16);
    sub_100008824(v20, &unk_10009ED10, &qword_10007D310);
    v25 = *(v0 + 256);

    v27 = *(v0 + 360);
    v26 = *(v0 + 368);
    v29 = *(v0 + 344);
    v28 = *(v0 + 352);

    v30 = *(v0 + 8);
  }

  else
  {
    v31 = *(v0 + 512);
    v32 = *(v0 + 408);
    v34 = *(v0 + 360);
    v33 = *(v0 + 368);
    v36 = *(v0 + 344);
    v35 = *(v0 + 352);

    v37 = *(v0 + 256);

    v30 = *(v0 + 8);
  }

  return v30();
}

uint64_t sub_10001152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 60) = v19;
  *(v8 + 328) = a8;
  *(v8 + 336) = v18;
  *(v8 + 312) = a6;
  *(v8 + 320) = a7;
  *(v8 + 296) = a4;
  *(v8 + 304) = a5;
  v9 = sub_10007AE2C();
  *(v8 + 344) = v9;
  v10 = *(v9 - 8);
  *(v8 + 352) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  *(v8 + 392) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = sub_10007B32C();
  *(v8 + 440) = sub_10007B31C();
  v15 = sub_10007B2EC();
  *(v8 + 448) = v15;
  *(v8 + 456) = v14;

  return _swift_task_switch(sub_1000116C8, v15, v14);
}

uint64_t sub_1000116C8()
{
  v1 = v0[53];
  v2 = v0[37];
  v3 = type metadata accessor for ModelDelegateSPI();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[58] = sub_100023D50();
  v6 = sub_10007AC4C();
  v0[59] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v0[60] = v8;
  v0[61] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v2, v6);
  v9 = *(v7 + 56);
  v0[62] = v9;
  v0[63] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1, 0, 1, v6);
  v10 = swift_task_alloc();
  v0[64] = v10;
  *v10 = v0;
  v10[1] = sub_10001182C;
  v11 = v0[53];
  v12 = v0[38];
  v13 = v0[39];

  return sub_100022BE0(v11, v12, v13);
}

uint64_t sub_10001182C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *(*v1 + 424);
  v8 = *v1;
  *(*v1 + 520) = a1;

  sub_100008824(v4, &unk_10009ED10, &qword_10007D310);
  v5 = *(v2 + 456);
  v6 = *(v2 + 448);

  return _swift_task_switch(sub_100011988, v6, v5);
}

uint64_t sub_100011988()
{
  v1 = *(v0 + 520);
  if (v1)
  {
    v3 = *(v0 + 496);
    v2 = *(v0 + 504);
    v4 = *(v0 + 472);
    v31 = *(v0 + 464);
    v5 = *(v0 + 440);
    v6 = *(v0 + 424);
    v8 = *(v0 + 304);
    v7 = *(v0 + 312);
    v9 = v1;

    v3(v6, 1, 1, v4);
    v10 = v9;
    v8(v6, 0, v1);

    sub_100008824(v6, &unk_10009ED10, &qword_10007D310);
    v12 = *(v0 + 416);
    v11 = *(v0 + 424);
    v14 = *(v0 + 400);
    v13 = *(v0 + 408);
    v16 = *(v0 + 376);
    v15 = *(v0 + 384);
    v18 = *(v0 + 360);
    v17 = *(v0 + 368);

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 464);
    v22 = *(v21 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel);
    *(v0 + 528) = v22;
    if (v22)
    {
      v24 = *(v0 + 496);
      v23 = *(v0 + 504);
      v25 = *(v0 + 488);
      v26 = *(v0 + 472);
      v27 = *(v0 + 424);
      v28 = *(v0 + 320);
      (*(v0 + 480))(v27, *(v0 + 296), v26);
      v24(v27, 0, 1, v26);
      v29 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_fileOrFolderURL;
      swift_beginAccess();

      sub_100018AFC(v27, v21 + v29);
      swift_endAccess();
      sub_10004643C(v28);
      v30 = swift_task_alloc();
      *(v0 + 536) = v30;
      *v30 = v0;
      v30[1] = sub_100011C6C;

      return sub_100016B7C(v22);
    }

    else
    {
      return sub_10007B63C();
    }
  }
}

uint64_t sub_100011C6C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 536);
  v6 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {
    v7 = *(v4 + 448);
    v8 = *(v4 + 456);
    v9 = sub_100011EA8;
  }

  else
  {
    *(v4 + 62) = a1 & 1;
    v7 = *(v4 + 448);
    v8 = *(v4 + 456);
    v9 = sub_100011D98;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100011D98()
{
  if (*(v0 + 62))
  {
    *(v0 + 568) = *(*(v0 + 528) + 16);

    v1 = swift_task_alloc();
    *(v0 + 576) = v1;
    *v1 = v0;
    v1[1] = sub_100012424;

    return sub_100075AC0();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 552) = v3;
    *v3 = v0;
    v3[1] = sub_100012244;

    return sub_10004C5D4();
  }
}

uint64_t sub_100011EA8()
{
  v52 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 440);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 360);

    v4 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v4;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v5 = sub_10007AE1C();
    v6 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v10 = *(v0 + 344);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315138;
      v13 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v13;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v14 = sub_10007B1AC();
      v16 = sub_100037C08(v14, v15, &v51);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error finishing startFileSharing: %s", v11, 0xCu);
      sub_10000585C(v12);
    }

    (*(v9 + 8))(v8, v10);
    v49 = *(v0 + 528);
    v18 = *(v0 + 496);
    v17 = *(v0 + 504);
    v20 = *(v0 + 464);
    v19 = *(v0 + 472);
    v21 = *(v0 + 400);
    v22 = *(v0 + 304);
    v23 = *(v0 + 312);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v25 = v24;
    v18(v21, 1, 1, v19);
    v26 = sub_10007AB7C();
    v27 = CKXPCSuitableError();

    v22(v21, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v21, &unk_10009ED10, &qword_10007D310);
    v28 = *(v0 + 280);

    v30 = *(v0 + 416);
    v29 = *(v0 + 424);
    v32 = *(v0 + 400);
    v31 = *(v0 + 408);
    v34 = *(v0 + 376);
    v33 = *(v0 + 384);
    v36 = *(v0 + 360);
    v35 = *(v0 + 368);

    v37 = *(v0 + 8);
  }

  else
  {
    v38 = *(v0 + 528);
    v39 = *(v0 + 464);
    v41 = *(v0 + 416);
    v40 = *(v0 + 424);
    v43 = *(v0 + 400);
    v42 = *(v0 + 408);
    v45 = *(v0 + 376);
    v44 = *(v0 + 384);
    v46 = *(v0 + 368);
    v50 = *(v0 + 360);

    v47 = *(v0 + 280);

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_100012244()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;

  v5 = *(v2 + 456);
  v6 = *(v2 + 448);
  if (v0)
  {
    v7 = sub_100014874;
  }

  else
  {
    v7 = sub_100012380;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100012380()
{
  v0[71] = *(v0[66] + 16);

  v1 = swift_task_alloc();
  v0[72] = v1;
  *v1 = v0;
  v1[1] = sub_100012424;

  return sub_100075AC0();
}

uint64_t sub_100012424()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v9 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v4 = v2[56];
    v5 = v2[57];
    v6 = sub_100014C10;
  }

  else
  {
    v7 = v2[71];

    v4 = v2[56];
    v5 = v2[57];
    v6 = sub_100012540;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100012540()
{
  v1 = *(*(v0 + 528) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v2 = *(v0 + 57);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    if (*(v0 + 62))
    {
      v3 = *(v0 + 432);
      *(v0 + 688) = sub_10007B31C();
      v4 = sub_10007B2EC();
      v6 = v5;
      *(v0 + 696) = v4;
      *(v0 + 704) = v5;
      v7 = sub_1000133C4;
LABEL_7:

      return _swift_task_switch(v7, v4, v6);
    }

    v8 = *(*(v0 + 528) + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    if (*(v0 + 59))
    {
      v9 = *(v0 + 432);
      *(v0 + 592) = sub_10007B31C();
      v4 = sub_10007B2EC();
      v6 = v10;
      *(v0 + 600) = v4;
      *(v0 + 608) = v10;
      v7 = sub_1000128DC;
      goto LABEL_7;
    }
  }

  v11 = *(v0 + 440);
  v12 = *(v0 + 384);

  sub_10007AE0C();
  v13 = sub_10007AE1C();
  v14 = sub_10007B3FC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "currentUser is NOT owner, returning CKError.permissionFailure", v15, 2u);
  }

  v16 = *(v0 + 496);
  v17 = *(v0 + 504);
  v18 = *(v0 + 472);
  v36 = *(v0 + 464);
  v37 = *(v0 + 528);
  v19 = *(v0 + 424);
  v20 = *(v0 + 384);
  v22 = *(v0 + 344);
  v21 = *(v0 + 352);
  v23 = *(v0 + 312);
  v35 = *(v0 + 304);

  (*(v21 + 8))(v20, v22);
  v16(v19, 1, 1, v18);
  v24 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:10 userInfo:0];
  v35(v19, 0, v24);

  sub_100008824(v19, &unk_10009ED10, &qword_10007D310);
  v26 = *(v0 + 416);
  v25 = *(v0 + 424);
  v28 = *(v0 + 400);
  v27 = *(v0 + 408);
  v30 = *(v0 + 376);
  v29 = *(v0 + 384);
  v32 = *(v0 + 360);
  v31 = *(v0 + 368);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1000128DC()
{
  v1 = v0[66];
  v2 = v0[41];
  v0[77] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[78] = v3;
  *v3 = v0;
  v3[1] = sub_1000129A8;
  if (v2 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return sub_100076258(v4, v1, 0);
}

uint64_t sub_1000129A8()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v9 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v4 = v2[76];
    v5 = v2[75];
    v6 = sub_100012CC0;
  }

  else
  {
    v7 = v2[77];

    v4 = v2[76];
    v5 = v2[75];
    v6 = sub_100012ACC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100012ACC()
{
  v1 = v0[66];
  v2 = v0[42];
  v0[80] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[81] = v3;
  *v3 = v0;
  v3[1] = sub_100012B9C;
  if (v2 == 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return sub_100076CB0(v4, v1, 0, 1);
}

uint64_t sub_100012B9C()
{
  v2 = *v1;
  v3 = *(*v1 + 648);
  v9 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v4 = v2[76];
    v5 = v2[75];
    v6 = sub_100012FB0;
  }

  else
  {
    v7 = v2[80];

    v4 = v2[76];
    v5 = v2[75];
    v6 = sub_100012D38;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100012CC0()
{
  v1 = v0[77];
  v0[85] = v0[79];
  v2 = v0[74];

  v3 = v0[56];
  v4 = v0[57];

  return _swift_task_switch(sub_100013028, v3, v4);
}

uint64_t sub_100012D38()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 528);
  v3 = *(v0 + 61);
  v4 = *(v0 + 60);

  v5 = *(v2 + 16);
  if (v4)
  {
    v6 = &off_100095850;
  }

  else
  {
    v6 = &off_100095878;
  }

  v7 = *(v2 + 16);

  sub_100077834(v6);

  v8 = *(v2 + 16);

  sub_100077654(v3);

  v9 = swift_task_alloc();
  *(v0 + 664) = v9;
  *v9 = v0;
  v9[1] = sub_100012E48;
  v10 = *(v0 + 61);
  v11 = *(v0 + 60);

  return sub_100048564(v11, v10);
}

uint64_t sub_100012E48()
{
  v2 = *(*v1 + 664);
  v3 = *v1;
  v3[84] = v0;

  if (v0)
  {
    v4 = v3[56];
    v5 = v3[57];

    return _swift_task_switch(sub_100014FB4, v4, v5);
  }

  else
  {
    v6 = v3[66];
    v7 = swift_task_alloc();
    v3[98] = v7;
    *v7 = v3;
    v7[1] = sub_100014168;

    return sub_10004A150();
  }
}

uint64_t sub_100012FB0()
{
  v1 = v0[80];
  v0[85] = v0[82];
  v2 = v0[74];

  v3 = v0[56];
  v4 = v0[57];

  return _swift_task_switch(sub_100013028, v3, v4);
}

uint64_t sub_100013028()
{
  v52 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 440);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 360);

    v4 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v4;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v5 = sub_10007AE1C();
    v6 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v10 = *(v0 + 344);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315138;
      v13 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v13;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v14 = sub_10007B1AC();
      v16 = sub_100037C08(v14, v15, &v51);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error finishing startFileSharing: %s", v11, 0xCu);
      sub_10000585C(v12);
    }

    (*(v9 + 8))(v8, v10);
    v49 = *(v0 + 528);
    v18 = *(v0 + 496);
    v17 = *(v0 + 504);
    v20 = *(v0 + 464);
    v19 = *(v0 + 472);
    v21 = *(v0 + 400);
    v22 = *(v0 + 304);
    v23 = *(v0 + 312);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v25 = v24;
    v18(v21, 1, 1, v19);
    v26 = sub_10007AB7C();
    v27 = CKXPCSuitableError();

    v22(v21, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v21, &unk_10009ED10, &qword_10007D310);
    v28 = *(v0 + 280);

    v30 = *(v0 + 416);
    v29 = *(v0 + 424);
    v32 = *(v0 + 400);
    v31 = *(v0 + 408);
    v34 = *(v0 + 376);
    v33 = *(v0 + 384);
    v36 = *(v0 + 360);
    v35 = *(v0 + 368);

    v37 = *(v0 + 8);
  }

  else
  {
    v38 = *(v0 + 528);
    v39 = *(v0 + 464);
    v41 = *(v0 + 416);
    v40 = *(v0 + 424);
    v43 = *(v0 + 400);
    v42 = *(v0 + 408);
    v45 = *(v0 + 376);
    v44 = *(v0 + 384);
    v46 = *(v0 + 368);
    v50 = *(v0 + 360);

    v47 = *(v0 + 280);

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_1000133C4()
{
  v1 = v0[66];
  v2 = v0[41];
  v0[89] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[90] = v3;
  *v3 = v0;
  v3[1] = sub_100013490;
  if (v2 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return sub_100076258(v4, v1, 0);
}

uint64_t sub_100013490()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v9 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v4 = v2[88];
    v5 = v2[87];
    v6 = sub_1000137A8;
  }

  else
  {
    v7 = v2[89];

    v4 = v2[88];
    v5 = v2[87];
    v6 = sub_1000135B4;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000135B4()
{
  v1 = v0[66];
  v2 = v0[42];
  v0[92] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[93] = v3;
  *v3 = v0;
  v3[1] = sub_100013684;
  if (v2 == 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return sub_100076CB0(v4, v1, 0, 0);
}

uint64_t sub_100013684()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v9 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v4 = v2[88];
    v5 = v2[87];
    v6 = sub_100013BEC;
  }

  else
  {
    v7 = v2[92];

    v4 = v2[88];
    v5 = v2[87];
    v6 = sub_100013820;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000137A8()
{
  v1 = v0[89];
  v0[95] = v0[91];
  v2 = v0[86];

  v3 = v0[56];
  v4 = v0[57];

  return _swift_task_switch(sub_100013C64, v3, v4);
}

uint64_t sub_100013820()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 528);
  v3 = *(v0 + 61);
  v4 = *(v0 + 60);

  v5 = *(v2 + 16);
  if (v4)
  {
    v6 = &off_1000958A0;
  }

  else
  {
    v6 = &off_1000958C8;
  }

  v7 = *(v2 + 16);

  sub_100077834(v6);

  v8 = *(v2 + 16);

  sub_100077654(v3);

  v9 = *(v0 + 448);
  v10 = *(v0 + 456);

  return _swift_task_switch(sub_1000138F0, v9, v10);
}

uint64_t sub_1000138F0()
{
  v1 = *(*(v0 + 528) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (*(v0 + 58) == 2)
  {
    v2 = *(v0 + 528);
    v3 = swift_task_alloc();
    *(v0 + 768) = v3;
    *v3 = v0;
    v3[1] = sub_100014000;
    v4 = *(v0 + 61);
    v5 = *(v0 + 60);
    v6 = *(v0 + 336);

    return sub_1000494A4(v6, v5, v4);
  }

  else
  {
    v8 = *(v0 + 440);
    v9 = *(v0 + 376);

    sub_10007AE0C();
    v10 = sub_10007AE1C();
    v11 = sub_10007B3FC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "startFileSharing called on a public share", v12, 2u);
    }

    v13 = *(v0 + 496);
    v14 = *(v0 + 504);
    v15 = *(v0 + 472);
    v32 = *(v0 + 464);
    v33 = *(v0 + 528);
    v16 = *(v0 + 424);
    v17 = *(v0 + 376);
    v19 = *(v0 + 344);
    v18 = *(v0 + 352);
    v20 = *(v0 + 312);
    v31 = *(v0 + 304);

    (*(v18 + 8))(v17, v19);
    v13(v16, 1, 1, v15);
    v21 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v31(v16, 0, v21);

    sub_100008824(v16, &unk_10009ED10, &qword_10007D310);
    v23 = *(v0 + 416);
    v22 = *(v0 + 424);
    v25 = *(v0 + 400);
    v24 = *(v0 + 408);
    v27 = *(v0 + 376);
    v26 = *(v0 + 384);
    v29 = *(v0 + 360);
    v28 = *(v0 + 368);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_100013BEC()
{
  v1 = v0[92];
  v0[95] = v0[94];
  v2 = v0[86];

  v3 = v0[56];
  v4 = v0[57];

  return _swift_task_switch(sub_100013C64, v3, v4);
}

uint64_t sub_100013C64()
{
  v52 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 440);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 360);

    v4 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v4;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v5 = sub_10007AE1C();
    v6 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v10 = *(v0 + 344);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315138;
      v13 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v13;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v14 = sub_10007B1AC();
      v16 = sub_100037C08(v14, v15, &v51);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error finishing startFileSharing: %s", v11, 0xCu);
      sub_10000585C(v12);
    }

    (*(v9 + 8))(v8, v10);
    v49 = *(v0 + 528);
    v18 = *(v0 + 496);
    v17 = *(v0 + 504);
    v20 = *(v0 + 464);
    v19 = *(v0 + 472);
    v21 = *(v0 + 400);
    v22 = *(v0 + 304);
    v23 = *(v0 + 312);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v25 = v24;
    v18(v21, 1, 1, v19);
    v26 = sub_10007AB7C();
    v27 = CKXPCSuitableError();

    v22(v21, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v21, &unk_10009ED10, &qword_10007D310);
    v28 = *(v0 + 280);

    v30 = *(v0 + 416);
    v29 = *(v0 + 424);
    v32 = *(v0 + 400);
    v31 = *(v0 + 408);
    v34 = *(v0 + 376);
    v33 = *(v0 + 384);
    v36 = *(v0 + 360);
    v35 = *(v0 + 368);

    v37 = *(v0 + 8);
  }

  else
  {
    v38 = *(v0 + 528);
    v39 = *(v0 + 464);
    v41 = *(v0 + 416);
    v40 = *(v0 + 424);
    v43 = *(v0 + 400);
    v42 = *(v0 + 408);
    v45 = *(v0 + 376);
    v44 = *(v0 + 384);
    v46 = *(v0 + 368);
    v50 = *(v0 + 360);

    v47 = *(v0 + 280);

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_100014000()
{
  v2 = *(*v1 + 768);
  v3 = *v1;
  v3[97] = v0;

  if (v0)
  {
    v4 = v3[56];
    v5 = v3[57];

    return _swift_task_switch(sub_100015350, v4, v5);
  }

  else
  {
    v6 = v3[66];
    v7 = swift_task_alloc();
    v3[98] = v7;
    *v7 = v3;
    v7[1] = sub_100014168;

    return sub_10004A150();
  }
}

uint64_t sub_100014168()
{
  v2 = *v1;
  v3 = *(*v1 + 784);
  v4 = *v1;
  *(*v1 + 792) = v0;

  v5 = *(v2 + 456);
  v6 = *(v2 + 448);
  if (v0)
  {
    v7 = sub_1000156EC;
  }

  else
  {
    v7 = sub_1000142A4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000142A4()
{
  v1 = *(v0 + 528);
  v3 = *(v0 + 496);
  v2 = *(v0 + 504);
  v4 = *(v0 + 488);
  v5 = *(v0 + 472);
  v6 = *(v0 + 416);
  (*(v0 + 480))(v6, *(v0 + 296), v5);
  v3(v6, 0, 1, v5);
  v7 = swift_task_alloc();
  *(v0 + 800) = v7;
  *v7 = v0;
  v7[1] = sub_100014380;
  v8 = *(v0 + 416);

  return sub_10004AE58(v8);
}

uint64_t sub_100014380()
{
  v2 = *v1;
  v3 = *(*v1 + 800);
  v4 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 808) = v0;

  sub_100008824(v4, &unk_10009ED10, &qword_10007D310);
  v6 = *(v2 + 456);
  v7 = *(v2 + 448);
  if (v0)
  {
    v8 = sub_100015A88;
  }

  else
  {
    v8 = sub_1000144E8;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000144E8()
{
  v42 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 440);
  v3 = *(v0 + 368);

  sub_10007AE0C();

  v4 = sub_10007AE1C();
  v5 = sub_10007B41C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 528);
    v7 = *(v0 + 424);
    v40 = *(v0 + 368);
    v8 = *(v0 + 352);
    v38 = *(v0 + 392);
    v39 = *(v0 + 344);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 136315138;
    v11 = *(v6 + 24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    v12 = sub_10007B1AC();
    v14 = sub_100037C08(v12, v13, &v41);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Finished startFileSharing shareURL: %s", v9, 0xCu);
    sub_10000585C(v10);

    (*(v8 + 8))(v40, v39);
  }

  else
  {
    v15 = *(v0 + 368);
    v16 = *(v0 + 344);
    v17 = *(v0 + 352);

    (*(v17 + 8))(v15, v16);
  }

  v18 = *(v0 + 528);
  v19 = *(v0 + 408);
  v20 = *(v18 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v21 = *(v18 + 24);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  v22 = *(v0 + 288);
  if (v22)
  {
    v23 = [*(v0 + 288) _copyWithoutPersonalInfo];
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v0 + 528);
  v25 = *(v0 + 464);
  v26 = *(v0 + 408);
  v27 = *(v0 + 312);
  (*(v0 + 304))(v26, v23, 0);

  sub_100008824(v26, &unk_10009ED10, &qword_10007D310);
  v29 = *(v0 + 416);
  v28 = *(v0 + 424);
  v31 = *(v0 + 400);
  v30 = *(v0 + 408);
  v33 = *(v0 + 376);
  v32 = *(v0 + 384);
  v35 = *(v0 + 360);
  v34 = *(v0 + 368);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_100014874()
{
  v52 = v0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 440);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 360);

    v4 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v4;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v5 = sub_10007AE1C();
    v6 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v10 = *(v0 + 344);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315138;
      v13 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v13;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v14 = sub_10007B1AC();
      v16 = sub_100037C08(v14, v15, &v51);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error finishing startFileSharing: %s", v11, 0xCu);
      sub_10000585C(v12);
    }

    (*(v9 + 8))(v8, v10);
    v49 = *(v0 + 528);
    v18 = *(v0 + 496);
    v17 = *(v0 + 504);
    v20 = *(v0 + 464);
    v19 = *(v0 + 472);
    v21 = *(v0 + 400);
    v22 = *(v0 + 304);
    v23 = *(v0 + 312);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v25 = v24;
    v18(v21, 1, 1, v19);
    v26 = sub_10007AB7C();
    v27 = CKXPCSuitableError();

    v22(v21, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v21, &unk_10009ED10, &qword_10007D310);
    v28 = *(v0 + 280);

    v30 = *(v0 + 416);
    v29 = *(v0 + 424);
    v32 = *(v0 + 400);
    v31 = *(v0 + 408);
    v34 = *(v0 + 376);
    v33 = *(v0 + 384);
    v36 = *(v0 + 360);
    v35 = *(v0 + 368);

    v37 = *(v0 + 8);
  }

  else
  {
    v38 = *(v0 + 528);
    v39 = *(v0 + 464);
    v41 = *(v0 + 416);
    v40 = *(v0 + 424);
    v43 = *(v0 + 400);
    v42 = *(v0 + 408);
    v45 = *(v0 + 376);
    v44 = *(v0 + 384);
    v46 = *(v0 + 368);
    v50 = *(v0 + 360);

    v47 = *(v0 + 280);

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_100014C10()
{
  v53 = v0;
  v1 = *(v0 + 568);

  v2 = *(v0 + 584);
  v3 = *(v0 + 440);

  *(v0 + 280) = v2;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 360);

    v5 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v5;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v6 = sub_10007AE1C();
    v7 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 352);
    v9 = *(v0 + 360);
    v11 = *(v0 + 344);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v52 = v13;
      *v12 = 136315138;
      v14 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v14;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v15 = sub_10007B1AC();
      v17 = sub_100037C08(v15, v16, &v52);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error finishing startFileSharing: %s", v12, 0xCu);
      sub_10000585C(v13);
    }

    (*(v10 + 8))(v9, v11);
    v50 = *(v0 + 528);
    v19 = *(v0 + 496);
    v18 = *(v0 + 504);
    v21 = *(v0 + 464);
    v20 = *(v0 + 472);
    v22 = *(v0 + 400);
    v23 = *(v0 + 304);
    v24 = *(v0 + 312);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v26 = v25;
    v19(v22, 1, 1, v20);
    v27 = sub_10007AB7C();
    v28 = CKXPCSuitableError();

    v23(v22, 0, v28);

    sub_100018A88(v0 + 16);
    sub_100008824(v22, &unk_10009ED10, &qword_10007D310);
    v29 = *(v0 + 280);

    v31 = *(v0 + 416);
    v30 = *(v0 + 424);
    v33 = *(v0 + 400);
    v32 = *(v0 + 408);
    v35 = *(v0 + 376);
    v34 = *(v0 + 384);
    v37 = *(v0 + 360);
    v36 = *(v0 + 368);

    v38 = *(v0 + 8);
  }

  else
  {
    v39 = *(v0 + 528);
    v40 = *(v0 + 464);
    v42 = *(v0 + 416);
    v41 = *(v0 + 424);
    v44 = *(v0 + 400);
    v43 = *(v0 + 408);
    v46 = *(v0 + 376);
    v45 = *(v0 + 384);
    v47 = *(v0 + 368);
    v51 = *(v0 + 360);

    v48 = *(v0 + 280);

    v38 = *(v0 + 8);
  }

  return v38();
}

uint64_t sub_100014FB4()
{
  v52 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 440);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 360);

    v4 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v4;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v5 = sub_10007AE1C();
    v6 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v10 = *(v0 + 344);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315138;
      v13 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v13;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v14 = sub_10007B1AC();
      v16 = sub_100037C08(v14, v15, &v51);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error finishing startFileSharing: %s", v11, 0xCu);
      sub_10000585C(v12);
    }

    (*(v9 + 8))(v8, v10);
    v49 = *(v0 + 528);
    v18 = *(v0 + 496);
    v17 = *(v0 + 504);
    v20 = *(v0 + 464);
    v19 = *(v0 + 472);
    v21 = *(v0 + 400);
    v22 = *(v0 + 304);
    v23 = *(v0 + 312);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v25 = v24;
    v18(v21, 1, 1, v19);
    v26 = sub_10007AB7C();
    v27 = CKXPCSuitableError();

    v22(v21, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v21, &unk_10009ED10, &qword_10007D310);
    v28 = *(v0 + 280);

    v30 = *(v0 + 416);
    v29 = *(v0 + 424);
    v32 = *(v0 + 400);
    v31 = *(v0 + 408);
    v34 = *(v0 + 376);
    v33 = *(v0 + 384);
    v36 = *(v0 + 360);
    v35 = *(v0 + 368);

    v37 = *(v0 + 8);
  }

  else
  {
    v38 = *(v0 + 528);
    v39 = *(v0 + 464);
    v41 = *(v0 + 416);
    v40 = *(v0 + 424);
    v43 = *(v0 + 400);
    v42 = *(v0 + 408);
    v45 = *(v0 + 376);
    v44 = *(v0 + 384);
    v46 = *(v0 + 368);
    v50 = *(v0 + 360);

    v47 = *(v0 + 280);

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_100015350()
{
  v52 = v0;
  v1 = *(v0 + 776);
  v2 = *(v0 + 440);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 360);

    v4 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v4;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v5 = sub_10007AE1C();
    v6 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v10 = *(v0 + 344);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315138;
      v13 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v13;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v14 = sub_10007B1AC();
      v16 = sub_100037C08(v14, v15, &v51);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error finishing startFileSharing: %s", v11, 0xCu);
      sub_10000585C(v12);
    }

    (*(v9 + 8))(v8, v10);
    v49 = *(v0 + 528);
    v18 = *(v0 + 496);
    v17 = *(v0 + 504);
    v20 = *(v0 + 464);
    v19 = *(v0 + 472);
    v21 = *(v0 + 400);
    v22 = *(v0 + 304);
    v23 = *(v0 + 312);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v25 = v24;
    v18(v21, 1, 1, v19);
    v26 = sub_10007AB7C();
    v27 = CKXPCSuitableError();

    v22(v21, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v21, &unk_10009ED10, &qword_10007D310);
    v28 = *(v0 + 280);

    v30 = *(v0 + 416);
    v29 = *(v0 + 424);
    v32 = *(v0 + 400);
    v31 = *(v0 + 408);
    v34 = *(v0 + 376);
    v33 = *(v0 + 384);
    v36 = *(v0 + 360);
    v35 = *(v0 + 368);

    v37 = *(v0 + 8);
  }

  else
  {
    v38 = *(v0 + 528);
    v39 = *(v0 + 464);
    v41 = *(v0 + 416);
    v40 = *(v0 + 424);
    v43 = *(v0 + 400);
    v42 = *(v0 + 408);
    v45 = *(v0 + 376);
    v44 = *(v0 + 384);
    v46 = *(v0 + 368);
    v50 = *(v0 + 360);

    v47 = *(v0 + 280);

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_1000156EC()
{
  v52 = v0;
  v1 = *(v0 + 792);
  v2 = *(v0 + 440);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 360);

    v4 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v4;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v5 = sub_10007AE1C();
    v6 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v10 = *(v0 + 344);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315138;
      v13 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v13;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v14 = sub_10007B1AC();
      v16 = sub_100037C08(v14, v15, &v51);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error finishing startFileSharing: %s", v11, 0xCu);
      sub_10000585C(v12);
    }

    (*(v9 + 8))(v8, v10);
    v49 = *(v0 + 528);
    v18 = *(v0 + 496);
    v17 = *(v0 + 504);
    v20 = *(v0 + 464);
    v19 = *(v0 + 472);
    v21 = *(v0 + 400);
    v22 = *(v0 + 304);
    v23 = *(v0 + 312);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v25 = v24;
    v18(v21, 1, 1, v19);
    v26 = sub_10007AB7C();
    v27 = CKXPCSuitableError();

    v22(v21, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v21, &unk_10009ED10, &qword_10007D310);
    v28 = *(v0 + 280);

    v30 = *(v0 + 416);
    v29 = *(v0 + 424);
    v32 = *(v0 + 400);
    v31 = *(v0 + 408);
    v34 = *(v0 + 376);
    v33 = *(v0 + 384);
    v36 = *(v0 + 360);
    v35 = *(v0 + 368);

    v37 = *(v0 + 8);
  }

  else
  {
    v38 = *(v0 + 528);
    v39 = *(v0 + 464);
    v41 = *(v0 + 416);
    v40 = *(v0 + 424);
    v43 = *(v0 + 400);
    v42 = *(v0 + 408);
    v45 = *(v0 + 376);
    v44 = *(v0 + 384);
    v46 = *(v0 + 368);
    v50 = *(v0 + 360);

    v47 = *(v0 + 280);

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_100015A88()
{
  v52 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 440);

  *(v0 + 280) = v1;
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 360);

    v4 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v4;
    *(v0 + 41) = *(v0 + 89);
    sub_10007AE0C();
    sub_100018A2C(v0 + 16, v0 + 112);
    v5 = sub_10007AE1C();
    v6 = sub_10007B3FC();
    sub_100018A88(v0 + 16);
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 352);
    v8 = *(v0 + 360);
    v10 = *(v0 + 344);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51 = v12;
      *v11 = 136315138;
      v13 = *(v0 + 32);
      *(v0 + 160) = *(v0 + 16);
      *(v0 + 176) = v13;
      *(v0 + 185) = *(v0 + 41);
      sub_100018A2C(v0 + 16, v0 + 208);
      v14 = sub_10007B1AC();
      v16 = sub_100037C08(v14, v15, &v51);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v5, v6, "Error finishing startFileSharing: %s", v11, 0xCu);
      sub_10000585C(v12);
    }

    (*(v9 + 8))(v8, v10);
    v49 = *(v0 + 528);
    v18 = *(v0 + 496);
    v17 = *(v0 + 504);
    v20 = *(v0 + 464);
    v19 = *(v0 + 472);
    v21 = *(v0 + 400);
    v22 = *(v0 + 304);
    v23 = *(v0 + 312);
    sub_100026DA0(0xD000000000000010, 0x8000000100081430);
    v25 = v24;
    v18(v21, 1, 1, v19);
    v26 = sub_10007AB7C();
    v27 = CKXPCSuitableError();

    v22(v21, 0, v27);

    sub_100018A88(v0 + 16);
    sub_100008824(v21, &unk_10009ED10, &qword_10007D310);
    v28 = *(v0 + 280);

    v30 = *(v0 + 416);
    v29 = *(v0 + 424);
    v32 = *(v0 + 400);
    v31 = *(v0 + 408);
    v34 = *(v0 + 376);
    v33 = *(v0 + 384);
    v36 = *(v0 + 360);
    v35 = *(v0 + 368);

    v37 = *(v0 + 8);
  }

  else
  {
    v38 = *(v0 + 528);
    v39 = *(v0 + 464);
    v41 = *(v0 + 416);
    v40 = *(v0 + 424);
    v43 = *(v0 + 400);
    v42 = *(v0 + 408);
    v45 = *(v0 + 376);
    v44 = *(v0 + 384);
    v46 = *(v0 + 368);
    v50 = *(v0 + 360);

    v47 = *(v0 + 280);

    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_100015E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_10007AE2C();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  sub_10007B32C();
  v7[15] = sub_10007B31C();
  v12 = sub_10007B2EC();
  v7[16] = v12;
  v7[17] = v11;

  return _swift_task_switch(sub_100015F28, v12, v11);
}

uint64_t sub_100015F28()
{
  v1 = type metadata accessor for ModelDelegateSPI();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[18] = sub_100023D50();
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_100015FF8;
  v6 = v0[7];
  v5 = v0[8];

  return sub_100023864(v6, v5, nullsub_1, 0);
}

uint64_t sub_100015FF8()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return _swift_task_switch(sub_100016118, v4, v3);
}

uint64_t sub_100016118()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants16ModelDelegateSPI_sharingModel);
  v0[20] = v1;
  if (!v1)
  {
    return sub_10007B63C();
  }

  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_100016234;

  return sub_10004CEF0();
}

uint64_t sub_100016234()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_1000165E4;
  }

  else
  {
    v7 = sub_100016370;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100016370()
{
  v24 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = *(v0 + 40);
  v22 = *(v0 + 32);
  sub_10007AE0C();

  v7 = sub_10007AE1C();
  v8 = sub_10007B41C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 112);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  if (v9)
  {
    v13 = v5;
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100037C08(v13, v4, &v23);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_100037C08(v22, v6, &v23);
    _os_log_impl(&_mh_execute_header, v7, v8, "Finished user name (%s) & email (%s)", v14, 0x16u);
    swift_arrayDestroy();

    v5 = v13;

    (*(v11 + 8))(v10, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v15 = *(v0 + 160);
  v16 = *(v0 + 144);
  v17 = *(v0 + 80);
  (*(v0 + 72))(v5, v4, v22, v6, 0);

  v19 = *(v0 + 104);
  v18 = *(v0 + 112);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000165E4()
{
  v31 = v0;
  v1 = v0[22];
  v2 = v0[15];
  v3 = v0[13];

  sub_10007AE0C();
  swift_errorRetain();
  v4 = sub_10007AE1C();
  v5 = sub_10007B3FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315138;
    v0[6] = v6;
    swift_errorRetain();
    sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
    v12 = sub_10007B1AC();
    v14 = sub_100037C08(v12, v13, &v30);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error finishing userNameAndEmail %s", v10, 0xCu);
    sub_10000585C(v11);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[11];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[22];
  v19 = v0[20];
  v20 = v0[18];
  v22 = v0[9];
  v21 = v0[10];
  v23 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  v24 = sub_10007AB7C();
  v25 = CKXPCSuitableError();

  v22(0, 0, 0, 0, v25);

  v27 = v0[13];
  v26 = v0[14];

  v28 = v0[1];

  return v28();
}

double sub_100016868@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1000168F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_10001698C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100016A84;

  return v7(a1);
}

uint64_t sub_100016A84()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100016B7C(uint64_t a1)
{
  v1[16] = a1;
  v2 = *(*(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v3 = sub_10007AC4C();
  v1[18] = v3;
  v4 = *(v3 - 8);
  v1[19] = v4;
  v5 = *(v4 + 64) + 15;
  v1[20] = swift_task_alloc();
  v6 = sub_10007AE2C();
  v1[21] = v6;
  v7 = *(v6 - 8);
  v1[22] = v7;
  v8 = *(v7 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  sub_10007B32C();
  v1[28] = sub_10007B31C();
  v10 = sub_10007B2EC();
  v1[29] = v10;
  v1[30] = v9;

  return _swift_task_switch(sub_100016D34, v10, v9);
}

uint64_t sub_100016D34()
{
  v1 = v0[27];
  sub_10007AE0C();
  v2 = sub_10007AE1C();
  v3 = sub_10007B41C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "running fetchShareAndToleratePreshareErrors() for AddParticipants", v4, 2u);
  }

  v5 = v0[27];
  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[18];
  v9 = v0[19];
  v11 = v0[16];
  v10 = v0[17];

  v12 = *(v7 + 8);
  v0[31] = v12;
  v12(v5, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    sub_100008824(v0[17], &unk_10009ED10, &qword_10007D310);
    v13 = 0;
  }

  else
  {
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[18];
    (*(v15 + 32))(v14, v0[17], v16);
    v17 = shareStatus(url:)();
    (*(v15 + 8))(v14, v16);
    v13 = ((v17 & 0x10000) == 0) & v17;
  }

  v18 = swift_task_alloc();
  v0[32] = v18;
  *v18 = v0;
  v18[1] = sub_100016F64;
  v19 = v0[16];

  return sub_10004DEF4(60, v19, v13);
}

uint64_t sub_100016F64()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = sub_100017168;
  }

  else
  {
    v7 = sub_1000170A0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000170A0()
{
  v1 = v0[28];

  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[17];

  v9 = v0[1];
  v10 = v0[33] == 0;

  return v9(v10);
}

uint64_t sub_100017168()
{
  v113 = v0;
  *(v0 + 112) = *(v0 + 264);
  swift_errorRetain();
  sub_1000057A0(&qword_10009E7B0, &qword_10007CFC0);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 264);
  if (!v1)
  {
    v17 = *(v0 + 224);
    v18 = *(v0 + 184);

    v19 = *(v0 + 112);

    sub_10007AE0C();
    swift_errorRetain();
    v20 = sub_10007AE1C();
    v21 = sub_10007B3FC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 264);
      v23 = *(v0 + 176);
      v108 = *(v0 + 184);
      v111 = *(v0 + 248);
      v24 = *(v0 + 168);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v112[0] = v26;
      *v25 = 136315138;
      *(v0 + 120) = v22;
      swift_errorRetain();
      v27 = sub_10007B1AC();
      v29 = sub_100037C08(v27, v28, v112);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "fetchShareAndToleratePreshareErrors unknown non-SharingError error: %s", v25, 0xCu);
      sub_10000585C(v26);

      v111(v108, v24);
    }

    else
    {
      v40 = *(v0 + 248);
      v42 = *(v0 + 176);
      v41 = *(v0 + 184);
      v43 = *(v0 + 168);

      v40(v41, v43);
    }

    v44 = *(v0 + 264);
    sub_100005AB8();
    swift_allocError();
    *v45 = 0xD00000000000002BLL;
    *(v45 + 8) = 0x8000000100081450;
    *(v45 + 16) = xmmword_10007D6B0;
    *(v45 + 32) = 0x8000000100081480;
    *(v45 + 40) = 11;
    swift_willThrow();
    goto LABEL_14;
  }

  v3 = *(v0 + 264);

  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 272) = v6;
  *(v0 + 280) = v5;
  v110 = v5;
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  *(v0 + 288) = v7;
  *(v0 + 296) = v8;
  v9 = *(v0 + 48);
  *(v0 + 304) = v9;
  v10 = *(v0 + 56);
  if (v10 != 5)
  {
    v30 = *(v0 + 224);
    v31 = *(v0 + 192);

    sub_10007AE0C();
    sub_100018B7C(v6, v110, v7, v8, v9, v10);
    v32 = sub_10007AE1C();
    v33 = sub_10007B3FC();
    sub_100018BDC(v6, v110, v7, v8, v9, v10);
    v102 = v33;
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 248);
    v104 = *(v0 + 176);
    v106 = *(v0 + 168);
    v109 = *(v0 + 192);
    if (v34)
    {
      buf = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v112[0] = v101;
      *buf = 136315138;
      *(v0 + 64) = v6;
      *(v0 + 72) = v110;
      *(v0 + 80) = v7;
      *(v0 + 88) = v8;
      *(v0 + 96) = v9;
      *(v0 + 104) = v10;
      sub_100018B7C(v6, v110, v7, v8, v9, v10);
      v36 = sub_10007B1AC();
      v100 = v35;
      v38 = v8;
      v39 = sub_100037C08(v36, v37, v112);

      *(buf + 4) = v39;
      v8 = v38;
      _os_log_impl(&_mh_execute_header, v32, v102, "fetchShareAndToleratePreshareErrors unexpected SharingError: %s", buf, 0xCu);
      sub_10000585C(v101);

      v100(v109, v106);
    }

    else
    {

      v35(v109, v106);
    }

    sub_100005AB8();
    swift_allocError();
    *v46 = v6;
    *(v46 + 8) = v110;
    *(v46 + 16) = v7;
    *(v46 + 24) = v8;
    *(v46 + 32) = v9;
    *(v46 + 40) = v10;
    swift_willThrow();
    v47 = *(v0 + 112);
    goto LABEL_14;
  }

  if (!v7)
  {
    __break(1u);
    return result;
  }

  v11 = v9;
  v12 = v7;

  sub_100027710(3);
  if (v13)
  {
    v14 = *(v0 + 224);

    sub_100005AB8();
    swift_allocError();
    *v15 = v6;
    *(v15 + 8) = v110;
    *(v15 + 16) = v7;
    *(v15 + 24) = v8;
    *(v15 + 32) = v11;
    *(v15 + 40) = 5;
    swift_willThrow();
    sub_100018B7C(v6, v110, v7, v8, v11, 5u);

    sub_100018BDC(v6, v110, v7, v8, v11, 5u);
    v16 = *(v0 + 112);
LABEL_14:

    v49 = *(v0 + 208);
    v48 = *(v0 + 216);
    v51 = *(v0 + 192);
    v50 = *(v0 + 200);
    v52 = *(v0 + 184);
    v53 = *(v0 + 160);
    v54 = *(v0 + 136);

    v55 = *(v0 + 8);
    v56 = 0;
LABEL_15:

    return v55(v56);
  }

  v103 = v11;
  v105 = v8;
  v107 = v7;
  v57 = v12;
  v58 = [v57 domain];
  v59 = sub_10007B19C();
  v61 = v60;

  v98 = v6;
  if (v59 == sub_10007B19C() && v61 == v62)
  {

LABEL_22:
    v64 = [v57 code];

    v65 = v64 == 20;
    goto LABEL_24;
  }

  v63 = sub_10007B6BC();

  if (v63)
  {
    goto LABEL_22;
  }

  v65 = 0;
LABEL_24:
  v66 = *(v0 + 128);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 57) != 3)
  {
    v67 = *(v0 + 128);
    if (v65)
    {
      v68 = 1;
    }

    else
    {
      v68 = 2;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 58) = v68;

    sub_10007AF4C();
  }

  if (v65)
  {

    v69 = 0;
  }

  else
  {
    v70 = v57;
    v71 = [v70 domain];
    v72 = sub_10007B19C();
    v74 = v73;

    if (v72 == sub_10007B19C() && v74 == v75)
    {
    }

    else
    {
      v76 = sub_10007B6BC();

      if ((v76 & 1) == 0)
      {

        v69 = 1;
        goto LABEL_37;
      }
    }

    v77 = [v70 code];

    v69 = v77 != 7;
  }

LABEL_37:
  v78 = *(v0 + 128);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if ((*(v0 + 59) & v65 & 1) == 0 || v69)
  {
    v89 = *(v0 + 224);

    sub_100018BDC(v98, v110, v107, v105, v103, 5u);
    v90 = *(v0 + 112);

    v92 = *(v0 + 208);
    v91 = *(v0 + 216);
    v94 = *(v0 + 192);
    v93 = *(v0 + 200);
    v95 = *(v0 + 184);
    v96 = *(v0 + 160);
    v97 = *(v0 + 136);

    v55 = *(v0 + 8);
    v56 = *(v0 + 264) == 0;
    goto LABEL_15;
  }

  v79 = *(v0 + 208);
  sub_10007AE0C();
  v80 = sub_10007AE1C();
  v81 = sub_10007B41C();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "starting folder sharing prep", v82, 2u);
  }

  v83 = *(v0 + 248);
  v84 = *(v0 + 208);
  v85 = *(v0 + 168);
  v86 = *(v0 + 176);

  v83(v84, v85);
  v87 = swift_task_alloc();
  *(v0 + 312) = v87;
  *v87 = v0;
  v87[1] = sub_100017BF4;
  v88 = *(v0 + 128);

  return sub_10004F0D8(0);
}

uint64_t sub_100017BF4()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);
  if (v0)
  {
    v7 = sub_100017F44;
  }

  else
  {
    v7 = sub_100017D30;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100017D30()
{
  v1 = v0[28];
  v2 = v0[25];

  sub_10007AE0C();
  v3 = sub_10007AE1C();
  v4 = sub_10007B41C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[34];
  v26 = v9;
  v27 = v0[37];
  v10 = v0[31];
  v11 = v0[25];
  v12 = v0[21];
  v13 = v0[22];
  if (v5)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "successfully completed folder sharing prep", v14, 2u);

    sub_100018BDC(v26, v8, v7, v27, v6, 5u);
  }

  else
  {

    sub_100018BDC(v26, v8, v7, v27, v6, 5u);
  }

  v10(v11, v12);
  v15 = v0[14];

  v17 = v0[26];
  v16 = v0[27];
  v19 = v0[24];
  v18 = v0[25];
  v20 = v0[23];
  v21 = v0[20];
  v22 = v0[17];

  v23 = v0[1];
  v24 = v0[33] == 0;

  return v23(v24);
}

uint64_t sub_100017F44()
{
  v1 = v0[37];
  v2 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[34];
  v6 = v0[28];

  sub_100018BDC(v5, v4, v3, v1, v2, 5u);
  v7 = v0[14];

  v8 = v0[40];
  v10 = v0[26];
  v9 = v0[27];
  v12 = v0[24];
  v11 = v0[25];
  v13 = v0[23];
  v14 = v0[20];
  v15 = v0[17];

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_100018054(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000057A0(&qword_10009F370, &qword_10007FC90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v51 = &v43 - v10;
  v47 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v50 = *(v47 - 8);
  v11 = *(v50 + 64);
  v12 = __chkstk_darwin(v47);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v13;
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v48 = sub_10007AE2C();
  v17 = *(v48 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v48);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  sub_1000187C8(a1, v16, &unk_10009ED10, &qword_10007D310);
  v21 = sub_10007AE1C();
  v22 = sub_10007B41C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v46 = a3;
    v24 = v23;
    v25 = swift_slowAlloc();
    v44 = a1;
    v26 = v25;
    v52 = v25;
    *v24 = 136315138;
    sub_1000187C8(v16, v14, &unk_10009ED10, &qword_10007D310);
    v27 = sub_10007B1AC();
    v47 = a2;
    v45 = a4;
    v28 = v27;
    v29 = v14;
    v31 = v30;
    sub_100008824(v16, &unk_10009ED10, &qword_10007D310);
    v32 = sub_100037C08(v28, v31, &v52);
    v14 = v29;

    *(v24 + 4) = v32;
    a4 = v45;
    a2 = v47;
    _os_log_impl(&_mh_execute_header, v21, v22, "Begin userNameAndEmail fileURL: %s", v24, 0xCu);
    sub_10000585C(v26);
    a1 = v44;

    a3 = v46;
  }

  else
  {

    sub_100008824(v16, &unk_10009ED10, &qword_10007D310);
  }

  (*(v17 + 8))(v20, v48);
  v33 = v51;
  sub_10007B33C();
  v34 = sub_10007B35C();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  sub_1000187C8(a1, v14, &unk_10009ED10, &qword_10007D310);
  sub_10007B32C();
  v35 = a2;

  v36 = sub_10007B31C();
  v37 = v14;
  v38 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v39 = (v49 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = v36;
  *(v40 + 24) = &protocol witness table for MainActor;
  sub_100018608(v37, v40 + v38);
  *(v40 + v39) = a2;
  v41 = (v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v41 = a3;
  v41[1] = a4;
  sub_10000DAD0(0, 0, v33, &unk_10007D6C8, v40);
}

uint64_t sub_1000184C0()
{
  v1 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = sub_10007AC4C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16, v2 | 7);
}

uint64_t sub_100018608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018678(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10000D9D8;

  return sub_100015E24(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_1000187C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000057A0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100018830()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018868(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DACC;

  return sub_10001698C(a1, v5);
}

uint64_t sub_100018920(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000D9D8;

  return sub_10001698C(a1, v5);
}

unint64_t sub_1000189E0()
{
  result = qword_10009E600;
  if (!qword_10009E600)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009E600);
  }

  return result;
}

uint64_t sub_100018AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100018B7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xDu)
  {

    v7 = a3;
  }
}

uint64_t sub_100018BDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0xDu)
  {
  }

  return result;
}

BOOL sub_100018C60(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = *(result + 32);
  if (v3 == 1)
  {
    if (v2 == 1)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (*(result + 33) == 1)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v5 = 0;
  }

  else
  {
    if (v2 == 1)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v5 = *(result + 33);
  }

  v6 = v3 == v5;
  v4 = 1;
  if (!v6)
  {
    v4 = 2;
  }

LABEL_11:
  v7 = *(a2 + 16);
  if (!v7)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v8 = *(a2 + 32);
  if ((v8 & 1) == 0)
  {
    if (v7 != 1)
    {
      v10 = *(a2 + 33);
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (v7 != 1)
  {
    if (*(a2 + 33) == 1)
    {
      v9 = 0;
      return v4 == v9;
    }

    v10 = 0;
LABEL_19:
    v6 = v8 == v10;
    v9 = 1;
    if (!v6)
    {
      v9 = 2;
    }

    return v4 == v9;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_100018D38()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setQualityOfService:25];
  v1 = sub_10007B15C();
  [v0 setName:v1];

  qword_10009E6B8 = v0;
}

uint64_t sub_100018DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_100018DE4, 0, 0);
}

uint64_t sub_100018DE4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v1[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = sub_1000057A0(&qword_10009E718, &qword_10007DAB8);
  *v3 = v0;
  v3[1] = sub_100018EF0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000002BLL, 0x8000000100081640, sub_10001E53C, v1, v4);
}

uint64_t sub_100018EF0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100019008, 0, 0);
}

uint64_t sub_10001902C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = sub_1000057A0(&qword_10009E6F8, &unk_10007DA80);
  *(v2 + 32) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 64) = *(v3 + 48);
  *(v2 + 68) = *(v3 + 64);

  return _swift_task_switch(sub_1000190E4, 0, 0);
}

uint64_t sub_1000190E4()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1000191D4;
  v6 = v0[4];
  v5 = v0[5];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000026, 0x8000000100081580, sub_10001E314, v2, v6);
}

uint64_t sub_1000191D4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_1000192EC, 0, 0);
}

uint64_t sub_1000192EC()
{
  v1 = *(v0 + 68);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *v3;
  v6 = *(v3 + *(v2 + 64));
  sub_100018608(v3 + *(v2 + 48), v4 + *(v0 + 64));
  *v4 = v5;
  *(v4 + v1) = v6;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100019390(uint64_t a1, uint64_t a2)
{
  v2[101] = a2;
  v2[95] = a1;
  v3 = sub_10007AC4C();
  v2[107] = v3;
  v4 = *(v3 - 8);
  v2[108] = v4;
  v2[109] = *(v4 + 64);
  v2[110] = swift_task_alloc();

  return _swift_task_switch(sub_10001945C, 0, 0);
}

uint64_t sub_10001945C()
{
  v1 = v0[110];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[107];
  (*(v3 + 16))(v1, v0[101], v4);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[111] = v6;
  (*(v3 + 32))(v6 + v5, v1, v4);
  sub_1000057A0(&qword_10009E6E8, &qword_10007DA68);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 87, sub_100019584, v0 + 82);
}

uint64_t sub_1000195A0()
{
  v1 = v0[87];
  v2 = v0[88];
  v3 = v0[89];
  v4 = v0[90];
  v0[112] = v4;
  v5 = v0[91];
  v0[113] = v5;
  v6 = v0[94];
  v0[114] = v6;
  if (v6 || !v1)
  {
    v9 = v6;

    v10 = sub_1000197F8;
    v11 = v0 + 2;
    v12 = v0 + 87;
    v13 = v0 + 96;
    goto LABEL_11;
  }

  if (v3)
  {
    if (v5)
    {
      swift_bridgeObjectRetain_n();
      v7 = v1;

      v21._object = 0x8000000100081050;
      v21._countAndFlagsBits = 0xD000000000000017;
      v8 = sub_10007B24C(v21);

      if (v8)
      {
        v4 = v2;
        v5 = v3;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v14 = v1;
LABEL_10:
  v0[116] = v5;
  v0[115] = v4;
  v15 = [objc_opt_self() localizedStringFromPersonNameComponents:v1 style:2 options:0];
  v16 = sub_10007B19C();
  v18 = v17;

  v0[117] = v16;
  v0[118] = v18;
  v10 = sub_100019740;
  v11 = v0 + 2;
  v12 = v0 + 87;
  v13 = v0 + 102;
LABEL_11:

  return _swift_asyncLet_finish(v11, v12, v10, v13);
}

uint64_t sub_10001975C()
{
  v7 = *(v0 + 920);
  v8 = *(v0 + 936);
  v1 = *(v0 + 912);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 760);

  *v4 = v8;
  *(v4 + 16) = v7;
  *(v4 + 32) = v1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100019814()
{
  v7 = *(v0 + 896);
  v1 = *(v0 + 912);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v4 = *(v0 + 760);

  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = v7;
  *(v4 + 32) = v1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000198A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return _swift_task_switch(sub_1000198C8, 0, 0);
}

uint64_t sub_1000198C8()
{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = sub_1000057A0(&qword_10009E6E8, &qword_10007DA68);
  *v4 = v0;
  v4[1] = sub_1000199D0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000003ALL, 0x80000001000814E0, sub_10001E1C0, v2, v5);
}

uint64_t sub_1000199D0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_100019AE8, 0, 0);
}

uint64_t sub_100019AE8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  return (*(v0 + 8))();
}

uint64_t sub_100019B34()
{
  sub_1000057A0(&qword_10009E6C0, &qword_10007DA30);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v0 + 696, sub_100019BD8, v0 + 656);
}

uint64_t sub_100019BF4()
{
  v1 = v0[87];
  v0[92] = v0[88];
  v0[93] = v0[89];
  v2 = v0[90];
  v0[94] = v2;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v1 == 0;
  }

  if (v3)
  {
    v4 = v2;

    v11 = sub_100019D64;
  }

  else
  {
    v5 = objc_opt_self();

    v6 = v1;
    v7 = [v5 localizedStringFromPersonNameComponents:v6 style:2 options:0];
    v8 = sub_10007B19C();
    v10 = v9;

    v0[95] = v8;
    v0[96] = v10;
    v11 = sub_100019D14;
  }

  return _swift_asyncLet_finish(v0 + 2, v0 + 87, v11, v0 + 82);
}

uint64_t sub_100019D30()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 752);
  v3 = *(v0 + 728);
  v4 = *(v0 + 736);
  *v3 = *(v0 + 760);
  *(v3 + 8) = v1;
  *(v3 + 16) = v4;
  *(v3 + 32) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100019D80()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 728);
  v3 = *(v0 + 736);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = v3;
  *(v2 + 32) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100019DAC(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  v4 = sub_1000057A0(&qword_10009E6C8, &qword_10007DA38);
  *v3 = v1;
  v3[1] = sub_100019E98;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, 0, 0, 0xD000000000000030, 0x80000001000814A0, sub_10001D0E8, 0, v4);
}

uint64_t sub_100019E98()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return _swift_task_switch(sub_100019F94, 0, 0);
}

uint64_t sub_100019F94()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_100019FB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DACC;

  return sub_100019DAC(a1);
}

uint64_t sub_10001A050(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = sub_1000057A0(&qword_10009E708, &qword_10007DAA0);
  *(v2 + 32) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 64) = *(v3 + 48);

  return _swift_task_switch(sub_10001A100, 0, 0);
}

uint64_t sub_10001A100()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10001A1F0;
  v6 = v0[4];
  v5 = v0[5];

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD00000000000001FLL, 0x8000000100081600, sub_10001E42C, v2, v6);
}

uint64_t sub_10001A1F0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10001A308, 0, 0);
}

uint64_t sub_10001A308()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(*(v0 + 40) + *(*(v0 + 32) + 48));
  sub_100018608(*(v0 + 40), v2);
  *(v2 + v1) = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001A398(uint64_t a1, char a2)
{
  *(v2 + 1704) = a2;
  *(v2 + 1336) = a1;
  v3 = sub_10007AE2C();
  *(v2 + 1384) = v3;
  v4 = *(v3 - 8);
  *(v2 + 1432) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 1480) = swift_task_alloc();
  *(v2 + 1528) = swift_task_alloc();
  v6 = sub_10007AC4C();
  *(v2 + 1576) = v6;
  v7 = *(v6 - 8);
  *(v2 + 1624) = v7;
  *(v2 + 1632) = *(v7 + 64);
  *(v2 + 1640) = swift_task_alloc();
  *(v2 + 1648) = swift_task_alloc();

  return _swift_task_switch(sub_10001A4D8, 0, 0);
}

uint64_t sub_10001A4D8()
{
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1624);
  v4 = *(v0 + 1576);
  v5 = *(v0 + 1704);
  v26 = *(v3 + 16);
  v26(v1, *(v0 + 1336), v4);
  v6 = *(v3 + 80);
  v7 = swift_allocObject();
  *(v0 + 1656) = v7;
  v25 = *(v3 + 32);
  v25(v7 + ((v6 + 16) & ~v6), v1, v4);
  swift_asyncLet_begin();
  if (v5)
  {
    *(v0 + 1680) = 0u;
    v9 = sub_10001A7FC;
    v10 = v0 + 16;
    v11 = v0 + 1488;
  }

  else
  {
    v12 = *(v0 + 1528);
    sub_10007AE0C();
    v13 = sub_10007AE1C();
    v14 = sub_10007B41C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "isForcedFolderSharing is false, so call doBRSharingRunCleanFolder", v15, 2u);
    }

    v16 = *(v0 + 1640);
    v17 = *(v0 + 1576);
    v18 = *(v0 + 1528);
    v19 = v13;
    v20 = *(v0 + 1432);
    v21 = *(v0 + 1384);
    v22 = *(v0 + 1336);

    (*(v20 + 8))(v18, v21);
    v26(v16, v22, v17);
    v23 = swift_allocObject();
    *(v0 + 1664) = v23;
    v25(v23 + ((v6 + 16) & ~v6), v16, v17);
    swift_asyncLet_begin();
    v9 = sub_10001A768;
    v10 = v0 + 656;
    v11 = v0 + 1296;
  }

  return _swift_asyncLet_get_throwing(v10, v8, v9, v11);
}

uint64_t sub_10001A768(uint64_t a1, uint64_t a2)
{
  *(v3 + 1672) = v2;
  if (v2)
  {
    v4 = sub_10001A910;
    v5 = v3 + 656;
    v6 = v3 + 1344;
  }

  else
  {
    v4 = sub_10001A7A8;
    v5 = v3 + 656;
    v6 = v3 + 1440;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_10001A7C4(uint64_t a1, uint64_t a2)
{
  v2[211] = v2[208];
  v2[210] = &unk_10007DAE8;
  return _swift_asyncLet_get_throwing(v2 + 2, a2, sub_10001A7FC, v2 + 186);
}

uint64_t sub_10001A7FC(uint64_t a1, uint64_t a2)
{
  *(v3 + 1696) = v2;
  if (v2)
  {
    v4 = sub_10001ABAC;
    v5 = v3 + 16;
    v6 = v3 + 1536;
  }

  else
  {
    v4 = sub_10001A83C;
    v5 = v3 + 16;
    v6 = v3 + 1584;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_10001A858()
{
  v1 = v0[211];
  v2 = v0[210];
  v3 = v0[207];
  v4 = v0[206];
  v5 = v0[205];
  v6 = v0[191];
  v7 = v0[185];

  sub_1000087A4(v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10001A964()
{
  v1 = v0[209];
  v19 = v0[208];
  v2 = v0[185];
  sub_10007AE0C();
  swift_errorRetain();
  v3 = sub_10007AE1C();
  v4 = sub_10007B3FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "runFolderSharingPrepOperations clean or prep error: %@", v5, 0xCu);
    sub_100008824(v6, &qword_10009F570, &qword_10007DAF0);
  }

  v8 = v0[207];
  v9 = v0[206];
  v10 = v0[205];
  v11 = v0[191];
  v12 = v0[185];
  v13 = v0[179];
  v14 = v0[173];

  (*(v13 + 8))(v12, v14);
  v15 = sub_10007AB7C();
  sub_100005AB8();
  swift_allocError();
  *v16 = 0xD000000000000041;
  *(v16 + 8) = 0x8000000100081690;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v15;
  *(v16 + 40) = 3;
  swift_willThrow();

  sub_1000087A4(&unk_10007DAE8);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10001ABC8()
{
  v1 = v0[212];
  v19 = v0[210];
  v20 = v0[211];
  v2 = v0[185];
  sub_10007AE0C();
  swift_errorRetain();
  v3 = sub_10007AE1C();
  v4 = sub_10007B3FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "runFolderSharingPrepOperations clean or prep error: %@", v5, 0xCu);
    sub_100008824(v6, &qword_10009F570, &qword_10007DAF0);
  }

  v8 = v0[207];
  v9 = v0[206];
  v10 = v0[205];
  v11 = v0[191];
  v12 = v0[185];
  v13 = v0[179];
  v14 = v0[173];

  (*(v13 + 8))(v12, v14);
  v15 = sub_10007AB7C();
  sub_100005AB8();
  swift_allocError();
  *v16 = 0xD000000000000041;
  *(v16 + 8) = 0x8000000100081690;
  *(v16 + 24) = 0;
  *(v16 + 32) = 0;
  *(v16 + 16) = v15;
  *(v16 + 40) = 3;
  swift_willThrow();

  sub_1000087A4(v19);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10001AE1C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_10001AF10;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001ELL, 0x8000000100081730, sub_10001EAE8, v2, &type metadata for () + 8);
}

uint64_t sub_10001AF10()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_10001ED60;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_10001ED40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001B04C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_10001B144;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000002ALL, 0x80000001000816E0, sub_10001EAC8, v2, &type metadata for () + 8);
}

uint64_t sub_10001B144()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_10001B278;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_10001B260;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10001B278()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

void sub_10001B2DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_10001B348(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = sub_1000057A0(&qword_10009E728, &unk_10007DAF8);
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v27);
  v6 = &v24 - v5;
  v7 = sub_10007AC4C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10007AC2C();
  v11 = objc_allocWithZone(BRSharePrepFolderForSharing);
  sub_10007ABFC(v12);
  v14 = v13;
  v15 = [v11 initWithURL:v13];

  if (v15)
  {
    [v15 setQualityOfService:25];
    (*(v8 + 16))(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v24 = v15;
    v16 = v3;
    v17 = *(v3 + 16);
    v18 = v27;
    v17(v6, v26, v27);
    v19 = (*(v8 + 80) + 17) & ~*(v8 + 80);
    v20 = (v9 + *(v16 + 80) + v19) & ~*(v16 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    (*(v8 + 32))(v21 + v19, v10, v7);
    (*(v16 + 32))(v21 + v20, v6, v18);
    v22 = v24;
    aBlock[4] = sub_10001ED5C;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001B2DC;
    aBlock[3] = &unk_1000963F0;
    v23 = _Block_copy(aBlock);

    [v22 setPrepFolderSharingCompletionBlock:v23];
    _Block_release(v23);
    if (qword_10009DF40 != -1)
    {
      swift_once();
    }

    [qword_10009E6B8 addOperation:v22];
  }

  else
  {
    aBlock[0] = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    sub_10007B2FC();
  }
}

void sub_10001B6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = sub_1000057A0(&qword_10009E728, &unk_10007DAF8);
  v5 = *(v26 - 8);
  v24 = *(v5 + 64);
  __chkstk_darwin(v26);
  v7 = &v22[-v6];
  v8 = sub_10007AC4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_10007AC2C();
  v12 = objc_allocWithZone(BRShareProcessSubitems);
  sub_10007ABFC(v13);
  v15 = v14;
  v16 = [v12 initWithURL:v14 processType:a3];

  if (v16)
  {
    [v16 setQualityOfService:25];
    [v16 setMaxSharedSubitemsBeforeFailure:4];
    (*(v9 + 16))(&v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v8);
    v17 = v26;
    (*(v5 + 16))(v7, v25, v26);
    v18 = (*(v9 + 80) + 17) & ~*(v9 + 80);
    v19 = (v10 + *(v5 + 80) + v18) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    (*(v9 + 32))(v20 + v18, v11, v8);
    (*(v5 + 32))(v20 + v19, v7, v17);
    aBlock[4] = sub_10001EAE4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001B2DC;
    aBlock[3] = &unk_1000963A0;
    v21 = _Block_copy(aBlock);

    [v16 setProcessSubitemsCompletionBlock:v21];
    _Block_release(v21);
    if (qword_10009DF40 != -1)
    {
      swift_once();
    }

    [qword_10009E6B8 addOperation:v16];
  }

  else
  {
    aBlock[0] = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    sub_10007B2FC();
  }
}

uint64_t sub_10001BA5C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    sub_10007AC0C();
    a1 = v2;
  }

  if (a1)
  {
    swift_errorRetain();
    sub_1000057A0(&qword_10009E728, &unk_10007DAF8);
    return sub_10007B2FC();
  }

  else
  {
    sub_1000057A0(&qword_10009E728, &unk_10007DAF8);
    return sub_10007B30C();
  }
}

void sub_10001BAF4(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = a1;
  v5 = sub_1000057A0(&qword_10009E720, &qword_10007DAC0);
  v45 = *(v5 - 8);
  v43 = *(v45 + 64);
  __chkstk_darwin(v5);
  v44 = &v39 - v6;
  v7 = sub_10007AE2C();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v39 - v15;
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v49 = a2;
  sub_1000187C8(a2, &v39 - v17, &unk_10009ED10, &qword_10007D310);
  v19 = sub_10007AC4C();
  v20 = *(v19 - 8);
  v46 = *(v20 + 48);
  if (v46(v18, 1, v19) == 1)
  {
    sub_100008824(v18, &unk_10009ED10, &qword_10007D310);
    v40 = 0;
  }

  else
  {
    v40 = sub_10007AC2C();
    (*(v20 + 8))(v18, v19);
  }

  sub_10007AE0C();
  v21 = a3;
  v22 = sub_10007AE1C();
  v23 = sub_10007B41C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v5;
    v25 = v24;
    *v24 = 67109120;
    *(v24 + 1) = [v21 allowsAccessRequests];

    _os_log_impl(&_mh_execute_header, v22, v23, "doBRSharingFileOrFolderSave about to save share with allowsAccessRequests: %{BOOL}d", v25, 8u);
    v5 = v39;
  }

  else
  {

    v22 = v21;
  }

  (*(v47 + 8))(v10, v48);
  v26 = v49;
  sub_1000187C8(v49, v16, &unk_10009ED10, &qword_10007D310);
  if (v46(v16, 1, v19) == 1)
  {
    v28 = 0;
  }

  else
  {
    sub_10007ABFC(v27);
    v28 = v29;
    (*(v20 + 8))(v16, v19);
  }

  v30 = [objc_allocWithZone(BRShareSaveOperation) initWithShare:v21 fileURL:v28];

  if (v30)
  {
    [v30 setQualityOfService:25];
    v31 = v42;
    sub_1000187C8(v26, v42, &unk_10009ED10, &qword_10007D310);
    v33 = v44;
    v32 = v45;
    (*(v45 + 16))(v44, v50, v5);
    v34 = (*(v41 + 80) + 17) & ~*(v41 + 80);
    v35 = (v12 + *(v32 + 80) + v34) & ~*(v32 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v40;
    sub_100018608(v31, v36 + v34);
    (*(v32 + 32))(v36 + v35, v33, v5);
    v55 = sub_10001E6F4;
    v56 = v36;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_10001C29C;
    v54 = &unk_100096300;
    v37 = _Block_copy(&aBlock);

    [v30 setShareSaveCompletionBlock:v37];
    _Block_release(v37);
    if (qword_10009DF40 != -1)
    {
      swift_once();
    }

    [qword_10009E6B8 addOperation:v30];
  }

  else
  {
    v38 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    aBlock = 0;
    v52 = v38;
    sub_10007B30C();
  }
}

uint64_t sub_10001C114(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v17 - v10;
  if (a3)
  {
    sub_1000187C8(a4, v17 - v10, &unk_10009ED10, &qword_10007D310);
    v12 = sub_10007AC4C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_10007AC0C();
      (*(v13 + 8))(v11, v12);
      if (a2)
      {
        goto LABEL_5;
      }

LABEL_7:
      v14 = 0;
      goto LABEL_8;
    }

    sub_100008824(v11, &unk_10009ED10, &qword_10007D310);
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_5:
  v14 = sub_10007AB7C();
LABEL_8:
  v17[0] = a1;
  v17[1] = v14;
  v15 = a1;
  sub_1000057A0(&qword_10009E720, &qword_10007DAC0);
  return sub_10007B30C();
}

void sub_10001C29C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_10001C328(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = sub_1000057A0(&qword_10009E700, &qword_10007DA90);
  v37 = *(v39 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v39);
  v36 = &v33[-v4];
  v5 = sub_10007AC4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v35 = v8;
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000057A0(&qword_10009E6F8, &unk_10007DA80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v33[-v12];
  v14 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v33[-v16];
  v34 = sub_10007AC2C();
  v18 = objc_allocWithZone(BRShareCopyOperation);
  sub_10007ABFC(v19);
  v21 = v20;
  v22 = [v18 initWithURL:v20];

  if (v22)
  {
    [v22 setQualityOfService:25];
    (*(v6 + 16))(v9, a2, v5);
    v23 = v37;
    v24 = v36;
    v25 = v39;
    (*(v37 + 16))(v36, v38, v39);
    v26 = (*(v6 + 80) + 17) & ~*(v6 + 80);
    v27 = (v35 + *(v23 + 80) + v26) & ~*(v23 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v34;
    (*(v6 + 32))(v28 + v26, v9, v5);
    (*(v23 + 32))(v28 + v27, v24, v25);
    aBlock[4] = sub_10001E330;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C908;
    aBlock[3] = &unk_100096260;
    v29 = _Block_copy(aBlock);

    [v22 setRootShareCopyCompletionBlock:v29];
    _Block_release(v29);
    if (qword_10009DF40 != -1)
    {
      swift_once();
    }

    [qword_10009E6B8 addOperation:v22];
  }

  else
  {
    (*(v6 + 56))(v17, 1, 1, v5);
    v30 = [objc_allocWithZone(NSError) initWithDomain:BRCloudDocsErrorDomain code:80 userInfo:0];
    v31 = *(v10 + 48);
    v32 = *(v10 + 64);
    *v13 = 0;
    sub_100018608(v17, v13 + v31);
    *(v13 + v32) = v30;
    sub_10007B30C();
  }
}

uint64_t sub_10001C790(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1000057A0(&qword_10009E6F8, &unk_10007DA80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v21 - v10);
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v21 - v14;
  if (a4)
  {
    sub_10007AC0C();
  }

  sub_1000187C8(a2, v15, &unk_10009ED10, &qword_10007D310);
  if (a3)
  {
    v16 = sub_10007AB7C();
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v8 + 48);
  v18 = *(v8 + 64);
  *v11 = a1;
  sub_100018608(v15, v11 + v17);
  *(v11 + v18) = v16;
  v19 = a1;
  sub_1000057A0(&qword_10009E700, &qword_10007DA90);
  return sub_10007B30C();
}

uint64_t sub_10001C908(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  if (a3)
  {
    sub_10007AC1C();
    v14 = sub_10007AC4C();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  }

  else
  {
    v15 = sub_10007AC4C();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  v16 = a2;
  v17 = a4;
  v13(a2, v11, a4);

  return sub_100008824(v11, &unk_10009ED10, &qword_10007D310);
}

void sub_10001CA7C(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_1000057A0(&qword_10009E6F0, &qword_10007DA70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20[-v6];
  v8 = sub_10007AC4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_10007AC2C();
  sub_10007ABFC(v12);
  v23 = v13;
  (*(v9 + 16))(v11, a2, v8);
  v14 = v3;
  (*(v4 + 16))(v7, v22, v3);
  v15 = (*(v9 + 80) + 17) & ~*(v9 + 80);
  v16 = (v10 + *(v4 + 80) + v15) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  (*(v9 + 32))(v17 + v15, v11, v8);
  (*(v4 + 32))(v17 + v16, v7, v14);
  aBlock[4] = sub_10001E1DC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001CEE4;
  aBlock[3] = &unk_100096210;
  v18 = _Block_copy(aBlock);

  v19 = v23;
  BRSharingCopyCurrentUserNameAndDisplayHandleForURL();
  _Block_release(v18);
}