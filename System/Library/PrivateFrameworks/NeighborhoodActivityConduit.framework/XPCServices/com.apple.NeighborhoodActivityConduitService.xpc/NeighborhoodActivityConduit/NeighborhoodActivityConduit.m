uint64_t sub_100002014(uint64_t a1)
{
  v2 = sub_1000E0AE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1000E0AC8();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100002148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;

  sub_100022F54(0, 0, v9, a4, v11);
}

uint64_t sub_100002248(uint64_t a1)
{
  v2 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000022B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002D64;

  return sub_10000283C(a1, v5);
}

uint64_t sub_100002368()
{
  v1 = sub_1000E2118();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  __chkstk_darwin();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000E2148();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 120);
  v10 = [v9 queue];
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = v9;
  aBlock[4] = sub_100002764;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100116FC8;
  v12 = _Block_copy(aBlock);

  v13 = v9;
  sub_1000E2138();
  v18 = &_swiftEmptyArrayStorage;
  sub_100002C1C(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v12);

  (*(v17 + 8))(v4, v1);
  (*(v5 + 8))(v8, v16);
}

uint64_t sub_10000265C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000026A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000026E4(uint64_t a1, id a2)
{
  v2 = *(a1 + 112);
  v3 = [a2 currentAudioAndVideoCalls];
  sub_10000276C();
  sub_1000E2468();

  sub_1000E1FE8();
}

unint64_t sub_10000276C()
{
  result = qword_100120630;
  if (!qword_100120630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120630);
  }

  return result;
}

uint64_t sub_10000283C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100002D68;

  return v6(v2 + 32);
}

uint64_t sub_100002930(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000029E4(a1, v4, v5, v6);
}

uint64_t sub_1000029E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_100002A04, 0, 0);
}

uint64_t sub_100002A04()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100002AC8, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100002AC8()
{
  v1 = *(v0 + 56);
  sub_100002368();

  return _swift_task_switch(sub_10000269C, 0, 0);
}

uint64_t sub_100002B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002B5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002C1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002C64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000AE90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002CB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000029E4(a1, v4, v5, v6);
}

uint64_t sub_100002D68()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100002E7C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002F70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100002FB8(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100003004()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000308C()
{
  v2 = *(*v1 + 248);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_1000047D4, 0, 0);
  }

  return result;
}

uint64_t sub_10000319C()
{
  v2 = *(*v1 + 200);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_1000032AC, 0, 0);
  }

  return result;
}

uint64_t sub_1000032AC()
{
  if (v0[19] && (v1 = v0[21], , Strong = swift_weakLoadStrong(), (v0[26] = Strong) != 0))
  {

    return _swift_task_switch(sub_100003984, Strong, 0);
  }

  else
  {
    sub_10000E9DC(v0 + 2);
    v3 = v0[22];
    v4 = v0[23];
    sub_100023B10();

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100003380(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000033C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000ADE4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003434()
{
  v1 = v0[30];
  v2 = v0[27];
  v10 = v0[29];
  v11 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v9 = [*(v0[32] + 200) queue];
  v5 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_1000CF0C8;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000026A0;
  v0[5] = &unk_1001166E8;
  v6 = _Block_copy(v0 + 2);

  sub_1000E2138();
  v0[22] = _swiftEmptyArrayStorage;
  sub_1000041BC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_10002B8C4();
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v6);

  (*(v4 + 8))(v2, v3);
  (*(v10 + 8))(v1, v11);
  v7 = v0[7];

  sub_100003F64();

  return _swift_task_switch(sub_100004904, 0, 0);
}

uint64_t sub_100003674()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000036AC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000036F0()
{
  v1 = v0[26];

  v2 = v0[6];
  sub_1000037BC((v0 + 2), v0[5]);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_10000319C;

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 19, 0, 0);
}

uint64_t sub_1000037BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10000380C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000038C0(a1, v4, v5, v6);
}

uint64_t sub_1000038C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_1000E2B28();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_100003CD8, a4, 0);
}

uint64_t sub_100003984()
{
  v1 = v0[26];
  if (*(v1 + 184))
  {
    v2 = v0[24];
    v3 = sub_1000E1EE8();
    v4 = sub_1000E2668();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Debouncing calls changed events...", v5, 2u);
    }
  }

  else
  {
    v6 = v0[22];
    v7 = v0[23];
    v8 = sub_1000E2538();
    v9 = *(v8 - 8);
    (*(v9 + 56))(v7, 1, 1, v8);
    v11 = sub_100003380(&qword_10011ECB8, v10, type metadata accessor for NearbyCallServer);
    v12 = swift_allocObject();
    v12[2] = v1;
    v12[3] = v11;
    v12[4] = v1;
    sub_10001223C(v7, v6);
    LODWORD(v7) = (*(v9 + 48))(v6, 1, v8);
    swift_retain_n();

    v13 = v0[22];
    if (v7 == 1)
    {
      sub_1000033C8(v0[22], &unk_10011EA50, &qword_1000F0D30);
    }

    else
    {
      sub_1000E2528();
      (*(v9 + 8))(v13, v8);
    }

    v15 = v12[2];
    v14 = v12[3];
    swift_unknownObjectRetain();

    if (v15)
    {
      swift_getObjectType();
      v16 = sub_1000E24B8();
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    sub_1000033C8(v0[23], &unk_10011EA50, &qword_1000F0D30);
    if (v18 | v16)
    {
      v0[12] = 0;
      v0[13] = 0;
      v0[14] = v16;
      v0[15] = v18;
    }

    v19 = swift_task_create();
    v20 = *(v1 + 184);
    *(v1 + 184) = v19;
  }

  return _swift_task_switch(sub_1000036F0, 0, 0);
}

uint64_t sub_100003C98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100003CD8()
{
  v1 = *(v0 + 40);
  sub_1000E2CF8();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100004BC4;
  v3 = *(v0 + 40);

  return sub_100003DA4(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100003DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1000E2B18();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10000463C, 0, 0);
}

void sub_100003EA4(char a1)
{
  v3 = [objc_opt_self() currentConnection];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_splitSessionApprovalConnection;
  v6 = *(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_splitSessionApprovalConnection);
  if (a1)
  {
    goto LABEL_6;
  }

  if (v6)
  {
    v9 = v4;
    v7 = [v6 isEqual:?];

    if (!v7)
    {
      return;
    }

    v4 = 0;
    v8 = *(v1 + v5);
LABEL_6:
    *(v1 + v5) = v4;
  }

  _objc_release_x2();
}

void sub_100003F64()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  if (*(v0 + 336))
  {
    if (qword_10011DC40 != -1)
    {
      swift_once();
    }

    v6 = sub_1000E1F08();
    sub_1000049D0(v6, qword_100120060);
    v17 = sub_1000E1EE8();
    v7 = sub_1000E2668();
    if (os_log_type_enabled(v17, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v17, v7, "[ContinuityCalls] Deduping calls changed event.", v8, 2u);
    }

    v9 = v17;
  }

  else
  {
    v10 = sub_1000E2538();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v12 = sub_1000041BC(&unk_1001200D0, v11, type metadata accessor for ContinuitySessionServer);
    v13 = swift_allocObject();
    v13[2] = v0;
    v13[3] = v12;
    v13[4] = v0;
    v13[5] = ObjectType;
    swift_retain_n();
    v14 = sub_100022960(0, 0, v5, &unk_1000F3310, v13);
    v15 = *(v0 + 336);
    *(v0 + 336) = v14;
  }
}

uint64_t sub_1000041BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004204(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002D64;

  return sub_1000042BC(a1, v5);
}

uint64_t sub_1000042BC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000058E4;

  return v7(a1);
}

uint64_t sub_1000043B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100004474(a1, v4, v5, v7);
}

uint64_t sub_100004474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  v6 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v7 = sub_1000E2B28();
  v4[26] = v7;
  v8 = *(v7 - 8);
  v4[27] = v8;
  v9 = *(v8 + 64) + 15;
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_100004570, a4, 0);
}

uint64_t sub_100004570()
{
  v1 = *(v0 + 224);
  sub_1000E2CF8();
  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_100004EB8;
  v3 = *(v0 + 224);

  return sub_100003DA4(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10000463C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1000E2B28();
  v7 = sub_100003380(&qword_10011ED30, 255, &type metadata accessor for ContinuousClock);
  sub_1000E2CD8();
  sub_100003380(&qword_10011ED38, 255, &type metadata accessor for ContinuousClock.Instant);
  sub_1000E2B38();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100004A08;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1000047D4()
{
  if (v0[21] && (v1 = v0[24], , Strong = swift_weakLoadStrong(), (v0[32] = Strong) != 0))
  {

    return _swift_task_switch(sub_100003434, Strong, 0);
  }

  else
  {
    v3 = v0[30];
    v4 = v0[27];
    sub_10000E9DC(v0 + 8);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1000048CC()
{
  v1 = *(*v0 + 112);
  sub_1000E1FF8();
  return v3;
}

uint64_t sub_100004904()
{
  v1 = v0[32];

  v2 = v0[12];
  sub_1000037BC((v0 + 8), v0[11]);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_10000308C;

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 21, 0, 0);
}

uint64_t sub_1000049D0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004A08()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_100029AF8, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_100004BC4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  v8 = v2[2];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v9 = sub_10002BA6C;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v9 = sub_100004D70;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100004D70()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 184);
  *(v1 + 184) = 0;

  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_100006EC4;
  v4 = *(v0 + 16);

  return sub_100004E10();
}

uint64_t sub_100004E10()
{
  v1[24] = v0;
  v2 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_100005064, v0, 0);
}

uint64_t sub_100004EB8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;

  v5 = v2[28];
  v6 = v2[27];
  v7 = v2[26];
  v8 = v2[24];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v9 = sub_100005A94;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v9 = sub_100005348;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100005064()
{
  sub_100005524((v0 + 72));
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 192);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 24) = v1;
    v3 = *(v0 + 104);
    *(v0 + 32) = *(v0 + 88);
    *(v0 + 48) = v3;
    *(v0 + 64) = *(v0 + 120);
    *(v0 + 216) = sub_100005F20();
    *(v0 + 224) = v4;
    sub_1000033C8(v0 + 72, &qword_10011ECC0, &unk_1000F1120);
    v6 = sub_100003380(&qword_10011ECB8, v5, type metadata accessor for NearbyCallServer);
    *(v0 + 232) = v6;
    v7 = swift_allocObject();
    *(v0 + 240) = v7;
    swift_weakInit();
    v8 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v9 = swift_task_alloc();
    *(v0 + 248) = v9;
    v10 = sub_10000ADE4(&qword_10011ECC8, &qword_1000F3300);
    *v9 = v0;
    v9[1] = sub_100023BF8;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 184, v2, v6, 0xD000000000000010, 0x80000001000EA5F0, sub_10002B68C, v7, v10);
  }

  else
  {
    if (qword_10011DBF8 != -1)
    {
      swift_once();
    }

    v11 = sub_1000E1F08();
    sub_1000049D0(v11, qword_10011EBD0);
    v12 = sub_1000E1EE8();
    v13 = sub_1000E2678();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to broadcast calls because local account is unavailable!", v14, 2u);
    }

    v16 = *(v0 + 200);
    v15 = *(v0 + 208);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100005310()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005348()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v4 = *(v1 + 120);
  *(v0 + 48) = *(v1 + 152);
  *(v0 + 64) = v3;
  *(v0 + 16) = v4;
  *(v0 + 32) = v2;
  v5 = *(v0 + 24);
  if (v5)
  {
    v6 = *(v0 + 200);
    v7 = *(v0 + 16);
    v8 = *(v1 + 168);
    v9 = *(v1 + 152);
    *(v0 + 144) = *(v1 + 136);
    *(v0 + 160) = v9;
    *(v0 + 176) = v8;
    v10 = sub_1000E2538();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v12 = sub_1000041BC(&unk_1001200D0, v11, type metadata accessor for ContinuitySessionServer);
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    *(v13 + 24) = v12;
    *(v13 + 32) = v1;
    *(v13 + 40) = v7;
    *(v13 + 48) = v5;
    v14 = *(v0 + 160);
    *(v13 + 56) = *(v0 + 144);
    *(v13 + 72) = v14;
    *(v13 + 88) = *(v0 + 176);
    swift_retain_n();
    sub_10000CB64(v0 + 16, v0 + 80, &unk_10011FA58, &unk_1000F25E0);
    sub_100022960(0, 0, v6, &unk_1000F3320, v13);

    v1 = *(v0 + 192);
  }

  v15 = *(v0 + 224);
  v16 = *(v0 + 200);
  v17 = *(v1 + 336);
  *(v1 + 336) = 0;

  v18 = *(v0 + 8);

  return v18();
}

void sub_100005524(uint64_t *a1@<X8>)
{
  v2 = sub_1000E0D68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() ams_sharedAccountStore];
  v8 = [v7 ams_activeiCloudAccount];
  if (v8 && (v9 = v8, v10 = [v8 ams_altDSID], v9, v10))
  {
    v43 = sub_1000E2338();
    v12 = v11;
  }

  else
  {
    v43 = 0;
    v12 = 0;
  }

  v13 = [v7 ams_activeiTunesAccount];
  if (v13 && (v14 = v13, v15 = [v13 ams_altDSID], v14, v15))
  {
    v16 = sub_1000E2338();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v19 = sub_1000E1F08();
  sub_1000049D0(v19, qword_100123128);

  v20 = sub_1000E1EE8();
  v21 = sub_1000E2698();
  if (!os_log_type_enabled(v20, v21))
  {

    if (v12 | v18)
    {
      goto LABEL_13;
    }

LABEL_26:

    v28 = 0;
    v30 = 0;
    v37 = 0;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    v41 = 0;
    goto LABEL_27;
  }

  v22 = swift_slowAlloc();
  v42 = v7;
  v23 = v6;
  v24 = v3;
  v25 = v2;
  v26 = v16;
  v27 = v22;
  *v22 = 67109376;
  v22[1] = v12 != 0;

  *(v27 + 4) = 1024;
  *(v27 + 10) = v18 != 0;

  _os_log_impl(&_mh_execute_header, v20, v21, "User Account Info - iCloudAltDSID: %{BOOL}d, iTunesAltDSID: %{BOOL}d", v27, 0xEu);
  v16 = v26;
  v2 = v25;
  v3 = v24;
  v6 = v23;
  v7 = v42;

  if (!(v12 | v18))
  {
    goto LABEL_26;
  }

LABEL_13:
  sub_1000E0D58();
  v28 = sub_1000E0D08();
  v30 = v29;
  (*(v3 + 8))(v6, v2);
  v31 = sub_100005B48(v43, v12, v28, v30);
  v33 = v32;

  v34 = sub_100005B48(v16, v18, v28, v30);
  v36 = v35;

  if (v33 >> 60 == 15)
  {
    v37 = 0;
  }

  else
  {
    v37 = v31;
  }

  v38 = 0xC000000000000000;
  if (v33 >> 60 == 15)
  {
    v39 = 0xC000000000000000;
  }

  else
  {
    v39 = v33;
  }

  if (v36 >> 60 == 15)
  {
    v40 = 0;
  }

  else
  {
    v40 = v34;
  }

  if (v36 >> 60 != 15)
  {
    v38 = v36;
  }

  v41 = &_swiftEmptyArrayStorage;
LABEL_27:
  *a1 = v28;
  a1[1] = v30;
  a1[2] = v37;
  a1[3] = v39;
  a1[4] = v40;
  a1[5] = v38;
  a1[6] = v41;
}

uint64_t sub_1000058E4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000059DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002D64;

  return sub_10002AD6C(a1, v5);
}

uint64_t sub_100005A98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100005AE0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100005B48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1000E2208();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000E2288();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v21[0] = a1;
  v21[1] = a2;

  v22._countAndFlagsBits = 43;
  v22._object = 0xE100000000000000;
  sub_1000E23A8(v22);
  v23._countAndFlagsBits = a3;
  v23._object = a4;
  sub_1000E23A8(v23);
  sub_1000E2278();
  sub_100005D60(v21);

  sub_1000E2268();
  sub_1000E21F8();
  (*(v9 + 8))(v12, v8);
  v18 = v20[1];
  (*(v14 + 8))(v17, v13);
  return v18;
}

uint64_t sub_100005D60(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v5 = sub_1000A3AFC();
    v7 = v6;

    v2 = v5;
    *a1 = v5;
    a1[1] = v7;
    if ((v7 & 0x2000000000000000) != 0)
    {
      return sub_1000E2258();
    }
  }

  else if ((v3 & 0x2000000000000000) != 0)
  {
    return sub_1000E2258();
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    sub_1000E2AB8();
  }

  return sub_1000E2258();
}

uint64_t sub_100005E58@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = &a2[-result];
    if (a2 == result)
    {
      result = 0;
      v5 = 0xC000000000000000;
    }

    else if (v4 <= 14)
    {
      result = sub_1000A72D4(result, a2);
      v5 = v10 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = sub_1000E0B38();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      v9 = sub_1000E0AF8();
      if (v4 >= 0x7FFFFFFF)
      {
        sub_1000E0C68();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v4;
        v5 = v9 | 0x8000000000000000;
      }

      else
      {
        result = v4 << 32;
        v5 = v9 | 0x4000000000000000;
      }
    }

    *a3 = result;
    a3[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100005F20()
{
  v1 = sub_1000E0BB8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1000E0BA8();
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = *(v0 + 6);
  sub_10000613C();
  v4 = sub_1000E0B98();

  return v4;
}

unint64_t sub_10000613C()
{
  result = qword_10011F158;
  if (!qword_10011F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F158);
  }

  return result;
}

uint64_t sub_1000061A8(void *a1)
{
  v3 = v1;
  v5 = sub_10000ADE4(&qword_10011F168, &qword_1000F18E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8 - 8];
  v10 = a1[4];
  sub_1000036AC(a1, a1[3]);
  sub_10000641C();
  sub_1000E2D98();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_1000E2BD8();
  if (!v2)
  {
    v19 = *(v3 + 1);
    v17 = *(v3 + 1);
    v16 = 1;
    sub_1000064FC(&v19, v15);
    sub_10000655C();
    sub_1000E2BE8();
    sub_100006660(v17, *(&v17 + 1));
    v17 = *(v3 + 2);
    v18 = v17;
    v16 = 2;
    sub_1000064FC(&v18, v15);
    sub_1000E2BE8();
    sub_100006660(v17, *(&v17 + 1));
    *&v17 = v3[6];
    v15[0] = 3;
    sub_10000ADE4(&qword_10011F180, &qword_1000F18F0);
    sub_1000066B4(&qword_10011F188, sub_10000655C);
    sub_1000E2BE8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10000641C()
{
  result = qword_10011F170;
  if (!qword_10011F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F170);
  }

  return result;
}

unint64_t sub_10000647C()
{
  v1 = 0x65636E6F6ELL;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10000655C()
{
  result = qword_10011F178;
  if (!qword_10011F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F178);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for UserAccountInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100006660(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000066B4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000AE90(&qword_10011F180, &qword_1000F18F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserAccountInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000067BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100006804(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t *sub_100006820()
{
  v0 = [objc_allocWithZone(UNUserNotificationCenter) initWithBundleIdentifier:TUBundleIdentifierMobilePhoneApplication];
  v1 = [v0 notificationSettings];

  if ([v1 authorizationStatus] == 1 || objc_msgSend(v1, "showPreviewsSetting") == 2 || !objc_msgSend(objc_opt_self(), "areCallsOnOtherDevicesEnabled"))
  {
    if (qword_10011DC90 != -1)
    {
      swift_once();
    }

    v4 = sub_1000E1F08();
    sub_1000049D0(v4, qword_1001231B8);
    v5 = sub_1000E1EE8();
    v6 = sub_1000E2698();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Filtering out incoming call banner devices because global notifications are disabled in settings.", v7, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  else
  {
    if (qword_10011DC58 != -1)
    {
      swift_once();
    }

    v2 = sub_1000069EC();

    if (v2)
    {
      return v2;
    }

    else
    {
      return &_swiftEmptyArrayStorage;
    }
  }
}

unint64_t *sub_1000069EC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1000E2328();

  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_1000E28B8();
    swift_unknownObjectRelease();
    sub_1000033C8(v8, &unk_10011ECF0, &qword_1000F08A0);
    v3 = sub_1000E2328();

    v4 = [v0 arrayForKey:v3];

    if (v4)
    {
      v5 = sub_1000E2468();

      v6 = sub_100029970(v5);

      return v6;
    }
  }

  else
  {

    memset(v8, 0, sizeof(v8));
    sub_1000033C8(v8, &unk_10011ECF0, &qword_1000F08A0);
  }

  return 0;
}

uint64_t sub_100006CF4()
{
  v1 = v0[23];
  v0[32] = v1;
  v2 = sub_100006820();
  v0[33] = v2;
  if (qword_10011DBF8 != -1)
  {
    swift_once();
  }

  v3 = sub_1000E1F08();
  sub_1000049D0(v3, qword_10011EBD0);

  v4 = sub_1000E1EE8();
  v5 = sub_1000E2678();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = *(v1 + 16);

    *(v6 + 12) = 2048;
    *(v6 + 14) = v2[2];

    _os_log_impl(&_mh_execute_header, v4, v5, "Broadcasting %ld calls to nearby devices with %ld incoming call banner devices...", v6, 0x16u);
  }

  else
  {
  }

  v0[34] = *(v0[24] + 160);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  v0[35] = qword_1001230E0;

  return _swift_task_switch(sub_100023D24, v7, 0);
}

uint64_t sub_100006EC4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t *sub_100006FD8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_100007050@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000706C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000070A4()
{
  v1 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100007174()
{
  v1 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100007208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000E0D68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000072D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000E0D68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10000738C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000073C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007404()
{
  v1 = sub_1000E12A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000074D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007508()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007548()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007580()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000075F8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007630()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000766C()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100007758()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000077A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000077F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007844()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000078DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000796C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_10000E9DC(v0 + 5);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000079B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000079CC()
{
  sub_10000E9DC((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100007A0C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007A4C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  sub_100006660(v0[6], v0[7]);
  v4 = v0[8];

  v5 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100007AAC()
{
  v1 = sub_10000ADE4(&unk_10011ED00, &unk_1000F1160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100007B7C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007BD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007C10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007C48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007C80()
{
  v1 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100007D50()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007DA0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007DD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007E40()
{
  v1 = *(v0 + 16);
  if (v1)
  {
  }

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100007EC8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007F84()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007FC4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008044()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10000810C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_10000811C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008154()
{
  v1 = (type metadata accessor for HandoffInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + 40);

  v7 = *(v0 + v3 + 16);

  v8 = v1[8];
  v9 = sub_1000E0D68();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3 + v8, v9);
  v10(v0 + v3 + v1[9], v9);
  v11 = *(v0 + v3 + v1[10]);

  v12 = *(v0 + v3 + v1[12]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000082AC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000082F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008328()
{
  v1 = (type metadata accessor for HandoffInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1000E13E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v18 = v2 | v7;
  v19 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();

  v10 = v0 + v3;
  v11 = *(v10 + 16);

  v12 = v1[8];
  v13 = sub_1000E0D68();
  v14 = *(*(v13 - 8) + 8);
  v14(v10 + v12, v13);
  v14(v10 + v1[9], v13);
  v15 = *(v10 + v1[10]);

  v16 = *(v10 + v1[12]);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v19, v18 | 7);
}

uint64_t sub_100008500()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008544()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000085AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000085E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000861C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100008670()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000086B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008700()
{

  return _swift_deallocObject(v0, 29, 7);
}

uint64_t sub_100008738()
{
  v1 = sub_1000E1AA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100008894()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1000E1C48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();

  v13 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100008A00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008B7C()
{
  v1 = (type metadata accessor for HandoffInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + v3 + 16);

  v7 = v1[8];
  v8 = sub_1000E0D68();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v9(v0 + v3 + v1[9], v8);
  v10 = *(v0 + v3 + v1[10]);

  v11 = *(v0 + v3 + v1[12]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100008CC4()
{
  v1 = sub_1000E1948();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008D98()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008DE0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008E18()
{
  v1 = sub_10000ADE4(&qword_10011FC38, &qword_1000F3350);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008EF0()
{
  v1 = sub_1000E1338();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100009000()
{
  v1 = sub_1000E1338();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_1000090F8()
{
  v1 = sub_1000E1338();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v6);

  v10 = *(v0 + v7);

  v11 = *(v0 + v8);

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_1000091E0()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000092B4()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, ((v5 + 17) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000093A4()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009470()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v17 = (v3 + 24) & ~v3;
  v18 = v1;
  v4 = v17 + *(v2 + 64);
  v5 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_1000E0FE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v16 = *(v11 + 64);
  v14 = v3 | v12 | v7;

  (*(v2 + 8))(v0 + v17, v18);
  (*(v6 + 8))(v0 + v8, v5);
  (*(v11 + 8))(v0 + v13, v10);

  return _swift_deallocObject(v0, v13 + v16, v14 | 7);
}

uint64_t sub_100009658()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v17 = v1;
  v18 = *(v2 + 80);
  v3 = (v18 + 24) & ~v18;
  v4 = v3 + *(v2 + 64);
  v5 = sub_10000ADE4(&qword_10011FCC0, &qword_1000F2A80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = (v8 + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_10000ADE4(&qword_10011E478, &unk_1000F0998) - 8);
  v11 = *(v10 + 80);
  v12 = (v9 + v11 + 16) & ~v11;
  v16 = *(v10 + 64);

  v15 = *(v2 + 8);
  v15(v0 + v3, v17);
  (*(v6 + 8))(v0 + v8, v5);

  v13 = type metadata accessor for ConversationUIState(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v12, 1, v13))
  {
    v15(v0 + v12, v17);
  }

  return _swift_deallocObject(v0, v12 + v16, v18 | v7 | v11 | 7);
}

uint64_t sub_1000098CC()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009A6C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009AA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009AEC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009B24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009B64()
{
  sub_100006660(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100009BB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100009BC4()
{
  v1 = v0[2];

  v2 = v0[4];
  if (v2 >> 60 != 15)
  {
    sub_100006660(v0[3], v2);
  }

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009C2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009C64()
{
  v1 = sub_1000E1D08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_10000ADE4(&unk_100120028, &qword_1000F3048);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100009DC0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100009E30()
{
  v1 = sub_10000ADE4(&unk_10011ED00, &unk_1000F1160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);

  v9 = *(v0 + 72);

  v10 = *(v0 + 80);

  v11 = *(v0 + 96);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100009F30()
{
  v1 = sub_10000ADE4(&qword_10011FC38, &qword_1000F3350);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000A008()
{
  v1 = sub_1000E1978();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000A104()
{
  sub_10000E9DC((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000A144()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A184()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10000A1F4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000A284()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000A348()
{
  v1 = *(v0 + 16);
  v2 = sub_1000E0D68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = v5 + *(v3 + 64);
  sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v7 = sub_1000E24E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9) & ~v9;
  v11 = v4 | v9;
  v12 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v2);
  (*(v8 + 8))(v0 + v10, v7);
  v14 = *(v0 + v12);

  return _swift_deallocObject(v0, v12 + 8, v11 | 7);
}

uint64_t sub_10000A4E0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A518()
{
  v1 = (type metadata accessor for HandoffInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  v7 = *(v0 + v3 + 16);

  v8 = v1[8];
  v9 = sub_1000E0D68();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3 + v8, v9);
  v10(v0 + v3 + v1[9], v9);
  v11 = *(v0 + v3 + v1[10]);

  v12 = *(v0 + v3 + v1[12]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000A668()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000E0D68();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000A75C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000E0D68();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000A800()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A848(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void FTSandboxEnter()
{
  if ((_set_user_dir_suffix() & 1) == 0 || (bzero(v1, 0x400uLL), !confstr(65537, v1, 0x400uLL)) || (v0 = realpath_DARWIN_EXTSN(v1, 0)) == 0)
  {
    exit(1);
  }

  free(v0);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000E2708();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000E26B8();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = sub_1000E2148();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  if ([objc_opt_self() isConduitAvailable])
  {
    FTSandboxEnter();
    sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
    sub_1000E2138();
    v19[1] = &_swiftEmptyArrayStorage;
    sub_10000C968(&qword_10011DCD8, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_10000ADE4(&qword_10011DCE0, &qword_1000F0190);
    sub_10000AE2C();
    sub_1000E28C8();
    (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v3);
    v12 = sub_1000E2748();
    if (qword_10011DC38 != -1)
    {
      swift_once();
    }

    v13 = qword_10011DC10;
    v14 = qword_1001230F8;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_1001230D8;
    objc_allocWithZone(type metadata accessor for NeighborhoodActivityConduitServer());
    v16 = sub_100015958(v12, v14, v15);
    v17 = [objc_opt_self() serviceListener];
    [v17 setDelegate:v16];
    [v17 resume];
  }

  return 0;
}

uint64_t sub_10000ADE4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000AE2C()
{
  result = qword_10011DCE8;
  if (!qword_10011DCE8)
  {
    sub_10000AE90(&qword_10011DCE0, &qword_1000F0190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011DCE8);
  }

  return result;
}

uint64_t sub_10000AE90(uint64_t *a1, uint64_t *a2)
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

uint64_t variable initialization expression of NeighborhoodActivityPublisherService.queue()
{
  v0 = sub_1000E2708();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E26B8();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_1000E2148();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_1000E2138();
  v10[1] = &_swiftEmptyArrayStorage;
  sub_10000C968(&qword_10011DCD8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000ADE4(&qword_10011DCE0, &qword_1000F0190);
  sub_10000AE2C();
  sub_1000E28C8();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_1000E2748();
}

uint64_t sub_10000B13C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1000E0D88();
}

uint64_t sub_10000B1C4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1000E0DA8();
}

uint64_t sub_10000B210()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1000E0D98();
}

Swift::Int sub_10000B268()
{
  sub_1000E2D48();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1000E0D98();
  return sub_1000E2D68();
}

unint64_t sub_10000B2D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1000E2D48();
  sub_1000E2398();
  v6 = sub_1000E2D68();

  return sub_10000B468(a1, a2, v6);
}

unint64_t sub_10000B348(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000E0D68();
  sub_10000C968(&qword_1001201B0, &type metadata accessor for UUID);
  v5 = sub_1000E22D8();

  return sub_10000B520(a1, v5);
}

unint64_t sub_10000B3E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000E29E8(*(v2 + 40));

  return sub_10000B6E0(a1, v4);
}

unint64_t sub_10000B424(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000E2808(*(v2 + 40));

  return sub_10000B7A8(a1, v4);
}

unint64_t sub_10000B468(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000E2C68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000B520(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1000E0D68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10000C968(&qword_10011DF60, &type metadata accessor for UUID);
      v16 = sub_1000E2318();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10000B6E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000C164(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000E29F8();
      sub_10000C1C0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000B7A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10000CAAC(0, &qword_10011DF80, NSNumber_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000E2818();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000B87C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ADE4(&unk_10011DF30, &unk_1000F04A0);
    v3 = sub_1000E2B98();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000B2D0(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000B980(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011DFC8, &unk_1000F0520);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000ADE4(&qword_10011DFD0, &qword_1000F34D0);
    v8 = sub_1000E2B98();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000CB64(v10, v6, &qword_10011DFC8, &unk_1000F0520);
      result = sub_10000B348(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1000E0D68();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10000BC1C(uint64_t a1)
{
  v2 = sub_10000ADE4(&unk_10011DFA0, &qword_1000F04F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000ADE4(&unk_10011EB90, &qword_1000F0500);
    v8 = sub_1000E2B98();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000CB64(v10, v6, &unk_10011DFA0, &qword_1000F04F8);
      result = sub_10000B348(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1000E0D68();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10000BE04(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011DF88, &qword_1000F04E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000ADE4(&unk_10011DF90, &qword_1000F04E8);
    v8 = sub_1000E2B98();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000CB64(v10, v6, &qword_10011DF88, &qword_1000F04E0);
      result = sub_10000B348(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1000E0D68();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
      result = sub_10000CAF4(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10000C018(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ADE4(&qword_10011DEB8, &qword_1000F0488);
    v3 = sub_1000E2B98();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000CB64(v4, v13, &qword_10011DEC0, &unk_1000F0490);
      result = sub_10000B3E0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000C154(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

_OWORD *sub_10000C154(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000C214(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011DFB8, &unk_1000F0510);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000ADE4(&qword_10011DFC0, &qword_1000F3500);
    v8 = sub_1000E2B98();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000CB64(v10, v6, &qword_10011DFB8, &unk_1000F0510);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10000B2D0(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1000E0DE8();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000C400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ADE4(&qword_10011DF70, &qword_1000F04D0);
    v3 = sub_1000E2B98();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000CB64(v4, &v13, &qword_10011DF78, &qword_1000F04D8);
      v5 = v13;
      v6 = v14;
      result = sub_10000B2D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000C154(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_10000C56C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000ADE4(a2, a3);
    v5 = sub_1000E2B98();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10000B2D0(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_10000C668(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011DF40, &qword_1000F04B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000ADE4(&qword_10011DF48, &qword_1000F04B8);
    v8 = sub_1000E2B98();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000CB64(v10, v6, &qword_10011DF40, &qword_1000F04B0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10000B2D0(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1000E0ED8();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000C854(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ADE4(&qword_10011DEC8, &unk_1000F35E0);
    v3 = sub_1000E2B98();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000B2D0(v5, v6);
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

uint64_t sub_10000C968(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000C9B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000ADE4(&qword_10011DF68, &qword_1000F04C8);
    v3 = sub_1000E2B98();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000B2D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000CAAC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000CAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CB64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000ADE4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_10000CC30(uint64_t a1, unint64_t *a2)
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

Swift::Int sub_10000CD30()
{
  v1 = *v0;
  sub_1000E2D48();
  sub_1000E2D58(v1);
  return sub_1000E2D68();
}

Swift::Int sub_10000CDA4()
{
  v1 = *v0;
  sub_1000E2D48();
  sub_1000E2D58(v1);
  return sub_1000E2D68();
}

uint64_t sub_10000CDF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return _swift_task_switch(sub_10000CE40, v1, 0);
}

uint64_t sub_10000CE40()
{
  v19 = v0;
  v1 = v0[2];
  sub_10000E844();
  v0[5] = v2;
  v0[6] = v3;
  v4 = v2;
  v5 = v3;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v6 = sub_1000E1F08();
  v0[7] = sub_1000049D0(v6, qword_100123128);

  v7 = sub_1000E1EE8();
  v8 = sub_1000E2698();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100029C70(v4, v5, &v18);
    _os_log_impl(&_mh_execute_header, v7, v8, "[Lookup Actor] Fetching capabilities for %s", v9, 0xCu);
    sub_10000E9DC(v10);
  }

  v11 = v0[3];
  v12 = v0[4];
  sub_10000EA28(&qword_10011E250, v13, type metadata accessor for HandleCapabilitiesLookupActor);
  v14 = swift_task_alloc();
  v0[8] = v14;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v11;
  v14[5] = v12;
  v15 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_10000D0EC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10000D0EC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_10000D214;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 24);

    v5 = sub_10000D284;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10000D214()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[10];
  v4 = v0[1];

  return v4();
}

uint64_t sub_10000D284()
{
  v29 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  sub_1000E1D88();
  v6 = sub_1000E2328();

  v7 = [v6 destinationIdIsPhoneNumber];

  v8 = *(v5 + 112);
  sub_10000ADE4(&qword_10011E258, &qword_1000F0860);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000F07C0;
  *(v9 + 32) = v3;
  *(v9 + 40) = v1;

  isa = sub_1000E2458().super.isa;

  v11 = [v8 isFaceTimeAudioAvailableForAnyDestinationInDestinations:isa];

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000F07C0;
  *(v12 + 32) = v3;
  *(v12 + 40) = v1;

  v13 = sub_1000E2458().super.isa;

  v14 = [v8 isFaceTimeVideoAvailableForAnyDestinationInDestinations:v13];

  v15 = [objc_allocWithZone(TUContinuityHandleCapabilities) initWithSupportsTelephonyCalls:v7 supportsFaceTimeAudio:v11 supportsFaceTimeVideo:v14];

  v16 = v15;
  v17 = sub_1000E1EE8();
  v18 = sub_1000E2698();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[6];
  if (v19)
  {
    v21 = v0[5];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136315650;
    v24 = sub_100029C70(v21, v20, &v28);

    *(v22 + 4) = v24;
    *(v22 + 12) = 1024;
    *(v22 + 14) = [v16 supportsFaceTimeVideo];

    *(v22 + 18) = 1024;
    v25 = [v16 supportsFaceTimeAudio];

    *(v22 + 20) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "[Lookup Actor] (%s) Returning capabilities -- supports video: %{BOOL}d, supports audio: %{BOOL}d", v22, 0x18u);
    sub_10000E9DC(v23);
  }

  else
  {
  }

  v26 = v0[1];

  return v26(v16);
}

void sub_10000D598(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v101 = a4;
  v103 = a2;
  v98 = a1;
  v5 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v99 = *(v5 - 8);
  v100 = v5;
  v97 = *(v99 + 64);
  __chkstk_darwin(v5);
  v96 = &v76 - v6;
  v7 = sub_10000ADE4(&qword_10011E260, &unk_1000F0870);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v91 = &v76 - v9;
  v10 = sub_1000E2848();
  v94 = *(v10 - 8);
  v95 = v10;
  v11 = *(v94 + 64);
  __chkstk_darwin(v10);
  v90 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v76 - v15;
  v82 = sub_1000E26F8();
  v81 = *(v82 - 8);
  v17 = *(v81 + 64);
  __chkstk_darwin(v82);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1000E27D8();
  v77 = *(v78 - 8);
  v20 = *(v77 + 64);
  __chkstk_darwin(v78);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10000ADE4(&qword_10011E270, &qword_1000F0880);
  v79 = *(v80 - 8);
  v23 = *(v79 + 64);
  __chkstk_darwin(v80);
  v25 = &v76 - v24;
  v85 = sub_10000ADE4(&qword_10011E278, &qword_1000F0888);
  v84 = *(v85 - 8);
  v26 = *(v84 + 64);
  __chkstk_darwin(v85);
  v83 = &v76 - v27;
  v88 = sub_10000ADE4(&qword_10011E280, &qword_1000F0890);
  v87 = *(v88 - 8);
  v28 = *(v87 + 64);
  __chkstk_darwin(v88);
  v86 = &v76 - v29;
  v30 = sub_10000ADE4(&qword_10011E288, &qword_1000F0898);
  v92 = *(v30 - 8);
  v93 = v30;
  v31 = *(v92 + 64);
  __chkstk_darwin(v30);
  v102 = &v76 - v32;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v33 = sub_1000E1F08();
  v34 = sub_1000049D0(v33, qword_100123128);

  v89 = v34;
  v35 = sub_1000E1EE8();
  v36 = sub_1000E2698();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v104 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_100029C70(v103, a3, &v104);
    _os_log_impl(&_mh_execute_header, v35, v36, "[Lookup Actor] (%s) Setting up notification publisher", v37, 0xCu);
    sub_10000E9DC(v38);
  }

  v39 = a3;
  v40 = [objc_opt_self() defaultCenter];
  sub_1000E27E8();

  sub_1000E26E8();
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  v41 = sub_1000E2718();
  v104 = v41;
  v42 = sub_1000E26D8();
  (*(*(v42 - 8) + 56))(v16, 1, 1, v42);
  sub_10000EA28(&qword_10011E290, 255, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_10000EA70(&qword_10011FB70, &qword_10011DCD0, OS_dispatch_queue_ptr);
  v43 = v78;
  sub_1000E20A8();
  sub_1000033C8(v16, &qword_10011E268, &qword_1000F2760);

  (*(v81 + 8))(v19, v82);
  (*(v77 + 8))(v22, v43);
  sub_100002C64(&qword_10011E298, &qword_10011E270, &qword_1000F0880);
  sub_10000EAB4();
  v44 = v83;
  v45 = v80;
  sub_1000E20C8();
  (*(v79 + 8))(v25, v45);
  v46 = v90;
  sub_1000E2858();
  v47 = [objc_opt_self() mainRunLoop];
  v104 = v47;
  v48 = sub_1000E2838();
  v49 = v91;
  (*(*(v48 - 8) + 56))(v91, 1, 1, v48);
  sub_10000CAAC(0, &qword_10011E2A8, NSRunLoop_ptr);
  sub_100002C64(&qword_10011E2B0, &qword_10011E278, &qword_1000F0888);
  sub_10000EA70(&qword_10011E2B8, &qword_10011E2A8, NSRunLoop_ptr);
  v50 = v86;
  v51 = v85;
  sub_1000E2098();
  sub_1000033C8(v49, &qword_10011E260, &unk_1000F0870);

  (*(v94 + 8))(v46, v95);
  (*(v84 + 8))(v44, v51);
  v52 = swift_allocObject();
  *(v52 + 16) = v103;
  *(v52 + 24) = v39;
  sub_100002C64(&qword_10011E2C0, &qword_10011E280, &qword_1000F0890);

  v53 = v88;
  sub_1000E2078();

  (*(v87 + 8))(v50, v53);
  v54 = v99;
  v95 = *(v99 + 16);
  v55 = v39;
  v76 = v39;
  v56 = v96;
  v57 = v98;
  v58 = v100;
  v95(v96, v98, v100);
  v59 = *(v54 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = v103;
  *(v60 + 24) = v55;
  v61 = *(v54 + 32);
  v61(v60 + ((v59 + 32) & ~v59), v56, v58);
  v95(v56, v57, v58);
  v62 = swift_allocObject();
  v61(v62 + ((v59 + 16) & ~v59), v56, v58);
  sub_100002C64(&qword_10011E2C8, &qword_10011E288, &qword_1000F0898);
  v63 = v76;

  v64 = v93;
  v65 = v102;
  sub_1000E2018();

  (*(v92 + 8))(v65, v64);

  v66 = sub_1000E1EE8();
  v67 = sub_1000E2698();

  v68 = os_log_type_enabled(v66, v67);
  v69 = v103;
  v70 = v63;
  if (v68)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v104 = v72;
    *v71 = 136315138;
    *(v71 + 4) = sub_100029C70(v69, v70, &v104);
    _os_log_impl(&_mh_execute_header, v66, v67, "[Lookup Actor] (%s) Starting query for capabilities from lookup manager", v71, 0xCu);
    sub_10000E9DC(v72);
  }

  v73 = *(v101 + 112);
  sub_10000ADE4(&qword_10011E258, &qword_1000F0860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F07C0;
  *(inited + 32) = v69;
  *(inited + 40) = v70;

  sub_1000DFEE0(inited);
  swift_setDeallocating();
  sub_10000EC0C(inited + 32);
  isa = sub_1000E25D8().super.isa;

  [v73 beginQueryWithDestinations:isa services:7];
}

BOOL sub_10000E370()
{
  sub_1000E0AD8();
  if (!v7)
  {
    sub_1000033C8(v6, &unk_10011ECF0, &qword_1000F08A0);
    return 1;
  }

  sub_10000CAAC(0, &qword_10011E2D8, TUIDSLookupManager_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  v0 = sub_1000E2328();
  v1 = [v5 faceTimeVideoAvailabilityForDestination:v0];

  if (v1)
  {
    v2 = sub_1000E2328();
    v3 = [v5 faceTimeAudioAvailabilityForDestination:v2];

    return v3 != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10000E494(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1000E0AE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v13 = sub_1000E1F08();
  sub_1000049D0(v13, qword_100123128);
  (*(v9 + 16))(v12, a1, v8);

  v14 = sub_1000E1EE8();
  v15 = sub_1000E2698();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = a4;
    v17 = v16;
    v24 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100029C70(a2, a3, &v24);
    *(v17 + 12) = 2080;
    sub_10000EA28(&qword_10011E2D0, 255, &type metadata accessor for Notification);
    v18 = sub_1000E2C18();
    v20 = v19;
    (*(v9 + 8))(v12, v8);
    v21 = sub_100029C70(v18, v20, &v24);

    *(v17 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "[Lookup Actor] (%s) Returning back to getCapabilities after notification: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  return sub_1000E24D8();
}

uint64_t sub_10000E778(char *a1)
{
  v1 = *a1;
  sub_10000EAB4();
  swift_allocError();
  *v2 = v1;
  sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  return sub_1000E24C8();
}

uint64_t sub_10000E7E8()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10000E844()
{
  v0 = sub_1000E1D58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E1D68();
  if ((*(v1 + 88))(v4, v0) == enum case for NCProtoGetDestinationCapabilitiesRequest.DestinationType.handle(_:))
  {
    sub_1000E1D88();
    v5 = sub_1000E2328();

    v6 = TUCopyIDSCanonicalAddressForDestinationID();

    if (v6)
    {
      sub_1000E2338();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_10000EAB4();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    (*(v1 + 8))(v4, v0);
  }
}

uint64_t sub_10000E9DC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000EA28(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000EA70(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CAAC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000EAB4()
{
  result = qword_10011E2A0;
  if (!qword_10011E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E2A0);
  }

  return result;
}

BOOL sub_10000EB08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10000E370();
}

uint64_t sub_10000EB10(uint64_t a1)
{
  v3 = *(sub_10000ADE4(&unk_10011FA70, &qword_1000F0868) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10000E494(a1, v4, v5, v6);
}

uint64_t sub_10000EB90(char *a1)
{
  v2 = *(*(sub_10000ADE4(&unk_10011FA70, &qword_1000F0868) - 8) + 80);

  return sub_10000E778(a1);
}

uint64_t getEnumTagSinglePayload for HandleCapabilitiesLookupActor.LookupError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HandleCapabilitiesLookupActor.LookupError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000EDCC()
{
  result = qword_10011E2E0;
  if (!qword_10011E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E2E0);
  }

  return result;
}

void sub_10000EEB4(void *a1)
{
  v3 = sub_10000ADE4(&qword_10011E478, &unk_1000F0998);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = [a1 groupUUID];
  sub_1000E0D38();

  v8 = type metadata accessor for ConversationUIState(0);
  v6[*(v8 + 20)] = 0;
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService27ConversationUIStateObserver_uiState;
  swift_beginAccess();
  sub_10000F538(v6, v1 + v9);
  swift_endAccess();
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10011DBD0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v10, v1, sub_10000F250, qword_10011E2E8, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10011DBD8 != -1)
  {
    swift_once();
  }

  CFNotificationCenterAddObserver(v11, v1, sub_10000F250, qword_10011E2F0, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

void sub_10000F0B0()
{
  v1 = sub_10000ADE4(&qword_10011E478, &unk_1000F0998);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ConversationUIState(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService27ConversationUIStateObserver_uiState;
  swift_beginAccess();
  sub_10000F538(v4, v0 + v6);
  swift_endAccess();
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10011DBD0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v7, v0, qword_10011E2E8, 0);

  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10011DBD8 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v8, v0, qword_10011E2F0, 0);
}

void sub_10000F250(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_10000F5A8(a2, a3);
}

uint64_t sub_10000F2D0()
{
  sub_10000F794(v0 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService27ConversationUIStateObserver_uiState);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10000F35C()
{
  sub_10000F3EC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000F3EC()
{
  if (!qword_10011E330)
  {
    type metadata accessor for ConversationUIState(255);
    v0 = sub_1000E2888();
    if (!v1)
    {
      atomic_store(v0, &qword_10011E330);
    }
  }
}

uint64_t sub_10000F464(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F4C4()
{
  result = sub_1000E0D68();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000F538(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&qword_10011E478, &unk_1000F0998);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F5A8(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  type metadata accessor for ConversationUIStateObserver(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    if (qword_10011DBD0 == -1)
    {
      if (a2)
      {
LABEL_5:
        v3 = qword_10011E2E8;
        type metadata accessor for CFString(0);
        sub_10000F73C();
        v4 = v3;
        v5 = sub_1000E0D88();

LABEL_11:
        v6 = sub_10000EE50();
        v8 = v7;
        v9 = type metadata accessor for ConversationUIState(0);
        if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
        {
          *(v8 + *(v9 + 20)) = v5 & 1;
        }

        (v6)(&v10, 0);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_once();
      if (a2)
      {
        goto LABEL_5;
      }
    }

    v5 = 0;
    goto LABEL_11;
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_10000F73C()
{
  result = qword_10011E480;
  if (!qword_10011E480)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E480);
  }

  return result;
}

uint64_t sub_10000F794(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011E478, &unk_1000F0998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F7FC()
{
  v1 = sub_1000E0C38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v56 - v11;
  v75 = sub_1000E12A8();
  v67 = *(v75 - 8);
  v12 = *(v67 + 64);
  v13 = __chkstk_darwin(v75);
  v65 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v14;
  __chkstk_darwin(v13);
  v74 = &v56 - v15;
  v16 = type metadata accessor for IDSMessageProxy.BufferedMessage();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  result = __chkstk_darwin(v16);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 72) & 1) == 0)
  {
    swift_beginAccess();
    result = *(v0 + 56);
    v22 = *(result + 16);
    if (v22)
    {
      v63 = v1;
      v73 = v0;
      v23 = result + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v61 = v67 + 32;
      v70 = *(v17 + 72);
      v60 = v67 + 16;
      v59 = (v67 + 8);
      v58 = (v2 + 32);
      v57 = (v2 + 8);
      v56 = result;

      v64 = v5;
      v71 = v16;
      v72 = v10;
      v62 = v21;
      do
      {
        sub_1000120E0(v23, v21);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v26 = v10;
          v27 = sub_10000ADE4(&qword_10011E6C8, &qword_1000F0A80);
          v28 = *&v21[v27[12]];
          v29 = &v21[v27[16]];
          v30 = *v29;
          v31 = v29[1];
          v32 = *&v21[v27[20]];
          v33 = v63;
          (*v58)(v5, v21, v63);
          sub_100010128(v5, v28, v30, v31, v32);

          v34 = [objc_opt_self() defaultManager];
          sub_1000E0BF8(v35);
          v37 = v36;
          v81 = 0;
          LODWORD(v31) = [v34 removeItemAtURL:v36 error:&v81];

          if (v31)
          {
            v24 = *v57;
            v25 = v81;
            v24(v5, v33);
          }

          else
          {
            v38 = v81;
            sub_1000E0BE8();

            swift_willThrow();

            (*v57)(v5, v33);
          }

          v10 = v26;
        }

        else
        {
          v68 = v23;
          v69 = v22;
          v39 = v67;
          v40 = *(v67 + 32);
          v41 = v74;
          v42 = v75;
          v40(v74, v21, v75);
          v43 = sub_1000E2538();
          v44 = *(v43 - 8);
          v45 = v76;
          (*(v44 + 56))(v76, 1, 1, v43);
          v46 = v65;
          (*(v39 + 16))(v65, v41, v42);
          v47 = (*(v39 + 80) + 40) & ~*(v39 + 80);
          v48 = swift_allocObject();
          v48[2] = 0;
          v48[3] = 0;
          v48[4] = v73;
          v49 = v48 + v47;
          v50 = v72;
          v40(v49, v46, v42);
          sub_10001223C(v45, v50);
          LODWORD(v40) = (*(v44 + 48))(v50, 1, v43);

          if (v40 == 1)
          {
            sub_100002248(v50);
          }

          else
          {
            sub_1000E2528();
            (*(v44 + 8))(v50, v43);
          }

          v51 = v48[2];
          v52 = v48[3];
          swift_unknownObjectRetain();

          v21 = v62;
          v23 = v68;
          v22 = v69;
          if (v51)
          {
            swift_getObjectType();
            v53 = sub_1000E24B8();
            v55 = v54;
            swift_unknownObjectRelease();
          }

          else
          {
            v53 = 0;
            v55 = 0;
          }

          v5 = v64;
          sub_100002248(v76);
          if (v55 | v53)
          {
            v77 = 0;
            v78 = 0;
            v79 = v53;
            v80 = v55;
          }

          v10 = v72;
          swift_task_create();

          (*v59)(v74, v75);
        }

        v23 += v70;
        --v22;
      }

      while (v22);
    }
  }

  return result;
}

uint64_t sub_10000FF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10000FF50, 0, 0);
}

uint64_t sub_10000FF50()
{
  v1 = v0[2];
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[6];
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100010034;
  v6 = v0[3];

  return sub_1000253BC(7, v6, v2, v4, 2);
}

uint64_t sub_100010034()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_100010128(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v108 = a2;
  v109 = a4;
  v107 = a3;
  v110 = *v5;
  v9 = sub_1000E12A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IDSMessageProxy.BufferedMessage();
  v15 = *(v14 - 8);
  v105 = v14;
  v106 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000E0C38();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v23 = __chkstk_darwin(v22);
  v24 = __chkstk_darwin(v23);
  v26 = &v99 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v99 - v28;
  v30 = __chkstk_darwin(v27);
  if (*(v6 + 72) == 1)
  {
    v104 = a1;
    v99 = v33;
    v100 = v32;
    v110 = v30;
    v111 = &v99 - v31;
    v34 = objc_opt_self();
    v35 = [v34 defaultManager];
    v36 = [v35 temporaryDirectory];

    sub_1000E0C28();
    v101 = a5;
    result = [a5 storageGuid];
    if (result)
    {
      v38 = result;

      sub_1000E2338();
      sub_1000E0C08();

      v39 = *(v20 + 8);
      v40 = v110;
      v39(v26, v110);
      v41 = v111;
      sub_1000E0C18();
      v102 = v39;
      v103 = v20 + 8;
      v39(v29, v40);
      v42 = [v34 defaultManager];
      v43 = v104;
      sub_1000E0BF8(v44);
      v46 = v45;
      sub_1000E0BF8(v47);
      v49 = v48;
      v113[0] = 0;
      v50 = [v42 copyItemAtURL:v46 toURL:v48 error:v113];

      v51 = v113[0];
      if (v50)
      {
        v52 = sub_10000ADE4(&qword_10011E6C8, &qword_1000F0A80);
        v53 = v52[12];
        v54 = &v18[v52[16]];
        v55 = v52[20];
        (*(v20 + 16))(v18, v41, v40);
        v56 = v107;
        *&v18[v53] = v108;
        v57 = v109;
        *v54 = v56;
        *(v54 + 1) = v57;
        v58 = v101;
        *&v18[v55] = v101;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        v59 = v6[7];
        v60 = v51;

        v61 = v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6[7] = v59;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = sub_1000D2008(0, v59[2] + 1, 1, v59);
          v6[7] = v59;
        }

        v64 = v59[2];
        v63 = v59[3];
        if (v64 >= v63 >> 1)
        {
          v59 = sub_1000D2008(v63 > 1, v64 + 1, 1, v59);
        }

        v59[2] = v64 + 1;
        sub_1000122D8(v18, v59 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v64);
        v6[7] = v59;
        swift_endAccess();
        return v102(v111, v110);
      }

      else
      {
        v66 = v113[0];
        v67 = sub_1000E0BE8();

        swift_willThrow();
        if (qword_10011DC70 != -1)
        {
          swift_once();
        }

        v68 = sub_1000E1F08();
        sub_1000049D0(v68, qword_100123158);
        v69 = *(v20 + 16);
        v70 = v99;
        v71 = v43;
        v72 = v110;
        v69(v99, v71, v110);
        v73 = v100;
        v74 = v111;
        v69(v100, v111, v72);
        swift_errorRetain();
        v75 = sub_1000E1EE8();
        v76 = sub_1000E2678();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v113[0] = v109;
          *v77 = 136315650;
          sub_100012398(&qword_10011E6D0, &type metadata accessor for URL);
          v78 = sub_1000E2C18();
          v80 = v79;
          LODWORD(v108) = v76;
          v81 = v102;
          v102(v70, v72);
          v82 = sub_100029C70(v78, v80, v113);

          *(v77 + 4) = v82;
          *(v77 + 12) = 2080;
          v83 = sub_1000E2C18();
          v85 = v84;
          v81(v73, v72);
          v86 = sub_100029C70(v83, v85, v113);

          *(v77 + 14) = v86;
          *(v77 + 22) = 2080;
          v112 = v67;
          swift_errorRetain();
          sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
          v87 = sub_1000E2368();
          v89 = sub_100029C70(v87, v88, v113);

          *(v77 + 24) = v89;
          _os_log_impl(&_mh_execute_header, v75, v108, "Unexpected error preserving %s as %s: %s", v77, 0x20u);
          swift_arrayDestroy();

          return (v81)(v111, v72);
        }

        else
        {

          v98 = v102;
          v102(v73, v72);
          v98(v70, v72);
          return (v98)(v74, v72);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v65 = sub_1000E0C58();
    v90 = __chkstk_darwin(v65);
    *(&v99 - 8) = v90;
    *(&v99 - 7) = v91;
    v92 = v107;
    *(&v99 - 6) = v108;
    *(&v99 - 5) = v92;
    v93 = v110;
    *(&v99 - 4) = v109;
    *(&v99 - 3) = v94;
    *(&v99 - 2) = v93;
    v95 = v90;
    v96 = v91;
    sub_100012398(&qword_10011EDE0, &type metadata accessor for NCProtoIDSProxyMessage);
    sub_1000E0E38();
    v97 = v6[2];
    sub_1000E1FC8();
    sub_100006660(v95, v96);
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_100010C3C()
{
  v0 = sub_1000E1288();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_100012398(&qword_10011E6D8, &type metadata accessor for NCProtoIDSProxyMessage.Resource);
  sub_1000E0E38();
  return sub_1000E1298();
}

uint64_t sub_100010D74(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_1000123E0(a2, a3);
  sub_1000E1248();
  v8 = objc_opt_self();
  isa = sub_1000E22A8().super.isa;
  v14 = 0;
  v10 = [v8 archivedDataWithRootObject:isa requiringSecureCoding:0 error:&v14];

  v11 = v14;
  if (v10)
  {
    sub_1000E0C88();

    sub_1000E1278();
  }

  else
  {
    v12 = v11;
    sub_1000E0BE8();

    swift_willThrow();
  }

  sub_1000E1258();
  sub_100012434(a7);
  return sub_1000E1268();
}

uint64_t sub_100010EF4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IDSMessageProxy.BufferedMessage()
{
  result = qword_10011E660;
  if (!qword_10011E660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001100C()
{
  sub_1000E12A8();
  if (v0 <= 0x3F)
  {
    sub_100011080();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100011080()
{
  if (!qword_10011E670)
  {
    sub_1000E0C38();
    sub_10000AE90(&unk_10011EDB0, &qword_1000F0A50);
    sub_10000CAAC(255, &unk_10011E678, IDSMessageContext_ptr);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_10011E670);
    }
  }
}

uint64_t sub_10001112C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000E2118();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  __chkstk_darwin(v4);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1000E2148();
  v60 = *(v62 - 8);
  v7 = *(v60 + 64);
  __chkstk_darwin(v62);
  v59 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000E2108();
  v58 = *(v55 - 8);
  v9 = *(v58 + 64);
  v10 = __chkstk_darwin(v55);
  v56 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v53 = (&v50 - v12);
  v67 = sub_1000E2188();
  v54 = *(v67 - 8);
  v13 = *(v54 + 64);
  v14 = __chkstk_darwin(v67);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v52 = &v50 - v17;
  v18 = sub_1000E2768();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011DC70 != -1)
  {
    swift_once();
  }

  v23 = sub_1000E1F08();
  sub_1000049D0(v23, qword_100123158);
  v24 = sub_1000E1EE8();
  v25 = sub_1000E2698();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v24, v25, "Setting IDS proxy timeout of %ld seconds", v26, 0xCu);
  }

  v57 = a1;

  v27 = OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer;
  if (*(v1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer))
  {
    v28 = qword_10011DCA0;
    v29 = *(v1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer);
    swift_unknownObjectRetain();
    if (v28 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v30 = static os_log_type_t.errorWithState;
    v31 = sub_1000E1EE8();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v31, v30, "Existing IDS proxy timer found. Canceling it and making a new one.", v32, 2u);
    }

    swift_getObjectType();
    sub_1000E2798();
    swift_unknownObjectRelease();
    v33 = *(v2 + v27);
    *(v2 + v27) = 0;
    swift_unknownObjectRelease();
  }

  sub_10000CAAC(0, &qword_10011E6A8, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100012398(&qword_10011E6B0, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10000ADE4(&qword_10011E6B8, &qword_1000F0A58);
  v50 = v2;
  sub_100011FD8(&qword_10011E6C0, &qword_10011E6B8, &qword_1000F0A58);
  sub_1000E28C8();
  v66 = sub_1000E2778();
  (*(v19 + 8))(v22, v18);
  ObjectType = swift_getObjectType();
  v51 = v27;
  v34 = v16;
  sub_1000E2178();
  v35 = v58;
  v36 = v53;
  *v53 = v57;
  v37 = *(v35 + 104);
  v38 = v55;
  v37(v36, enum case for DispatchTimeInterval.seconds(_:), v55);
  v39 = v52;
  sub_1000E21B8();
  v40 = *(v35 + 8);
  v40(v36, v38);
  v58 = *(v54 + 8);
  (v58)(v34, v67);
  v37(v36, enum case for DispatchTimeInterval.never(_:), v38);
  v41 = v56;
  *v56 = 0;
  v37(v41, enum case for DispatchTimeInterval.nanoseconds(_:), v38);
  sub_1000E27F8();
  v40(v41, v38);
  v40(v36, v38);
  (v58)(v39, v67);
  v42 = swift_allocObject();
  v43 = v50;
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100011FD0;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100112E60;
  v44 = _Block_copy(aBlock);

  v45 = v59;
  sub_1000E2138();
  v46 = v61;
  sub_100011D54();
  v47 = v66;
  sub_1000E2788();
  _Block_release(v44);
  (*(v63 + 8))(v46, v64);
  (*(v60 + 8))(v45, v62);

  sub_1000E27A8();
  v48 = *(v43 + v51);
  *(v43 + v51) = v47;
  return swift_unknownObjectRelease();
}

void sub_100011960()
{
  v0 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v16 - v2;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v4 = sub_1000E1F08();
  sub_1000049D0(v4, qword_100123128);
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2698();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Timing out IDS proxy", v7, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1000E2538();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = qword_10011DC30;
    v12 = v9;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_1001230F0;
    v14 = sub_100012398(&qword_100120020, type metadata accessor for ConduitActor);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v14;
    v15[4] = v12;

    sub_100022960(0, 0, v3, &unk_1000F0A78, v15);
  }
}

uint64_t sub_100011BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;

  return _swift_task_switch(sub_100011C64, v5, 0);
}

uint64_t sub_100011C64()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy;
  v3 = *(v1 + OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy);
  if (v3)
  {
    v4 = *(v3 + 16);
    *(v0 + 24) = 1;

    sub_1000E1FB8();
    v5 = *(v3 + 24);
    *(v3 + 24) = &_swiftEmptySetSingleton;

    v6 = *(v1 + v2);
  }

  v7 = *(v0 + 16);
  *(v1 + v2) = 0;

  v8 = *(v7 + OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer);
  *(v7 + OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer) = 0;
  swift_unknownObjectRelease();
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100011D54()
{
  sub_1000E2118();
  sub_100012398(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  return sub_1000E28C8();
}

void sub_100011E2C()
{
  v1 = OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer;
  if (*(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer))
  {
    v2 = v0;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v3 = sub_1000E1F08();
    sub_1000049D0(v3, qword_100123128);
    v4 = sub_1000E1EE8();
    v5 = sub_1000E2698();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Cleaning up IDS proxy", v6, 2u);
    }

    if (*(v2 + v1))
    {
      v7 = *(v2 + v1);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1000E2798();
      swift_unknownObjectRelease();
      v8 = *(v2 + v1);
    }

    *(v2 + v1) = 0;
    swift_unknownObjectRelease();
    v9 = OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy;
    v10 = *(v2 + OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy);
    if (v10)
    {
      v11 = *(v10 + 16);

      sub_1000E1FB8();
      v12 = *(v10 + 24);
      *(v10 + 24) = &_swiftEmptySetSingleton;

      v13 = *(v2 + v9);
    }

    *(v2 + v9) = 0;
  }
}

uint64_t sub_100011FD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000AE90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001202C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_100011BCC(a1, v4, v5, v6);
}

uint64_t sub_1000120E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSMessageProxy.BufferedMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012144(uint64_t a1)
{
  v4 = *(sub_1000E12A8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002E7C;

  return sub_10000FF30(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10001223C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000122D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSMessageProxy.BufferedMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012398(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000123E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100012434(void *a1)
{
  v2 = sub_1000E0DE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v60 - v8;
  v10 = sub_10000C214(_swiftEmptyArrayStorage);
  v11 = [a1 outgoingResponseIdentifier];
  if (v11)
  {
    v12 = v11;
    sub_1000E2338();

    v13 = sub_1000E2338();
    v15 = v14;
    sub_1000E0DD8();
    (*(v3 + 32))(v7, v9, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v10;
    sub_1000CA308(v7, v13, v15, isUniquelyReferenced_nonNull_native);

    v10 = v61;
  }

  v17 = [a1 storageGuid];
  if (v17)
  {
    v18 = v17;
    sub_1000E2338();

    v19 = sub_1000E2338();
    v21 = v20;
    sub_1000E0DD8();
    (*(v3 + 32))(v7, v9, v2);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v10;
    sub_1000CA308(v7, v19, v21, v22);

    v10 = v61;
  }

  v23 = [a1 fromID];
  if (v23)
  {
    v24 = v23;
    sub_1000E2338();

    v25 = sub_1000E2338();
    v27 = v26;
    sub_1000E0DD8();
    (*(v3 + 32))(v7, v9, v2);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v10;
    sub_1000CA308(v7, v25, v27, v28);

    v10 = v61;
  }

  v29 = [a1 toID];
  if (v29)
  {
    v30 = v29;
    sub_1000E2338();

    v31 = sub_1000E2338();
    v33 = v32;
    sub_1000E0DD8();
    (*(v3 + 32))(v7, v9, v2);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v10;
    sub_1000CA308(v7, v31, v33, v34);

    v10 = v61;
  }

  v35 = [a1 publicIntentAction];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1000E2338();
    v39 = v38;
    [v36 doubleValue];
    sub_1000E0DC8();
    (*(v3 + 32))(v7, v9, v2);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v10;
    sub_1000CA308(v7, v37, v39, v40);

    v10 = v61;
  }

  v41 = sub_1000E2338();
  v43 = v42;
  [a1 fromServerStorage];
  sub_1000E0DB8();
  v44 = *(v3 + 32);
  v44(v7, v9, v2);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v10;
  sub_1000CA308(v7, v41, v43, v45);

  v46 = v61;
  v47 = [a1 serverTimestamp];
  if (v47)
  {
    v48 = v47;
    v49 = sub_1000E2338();
    v51 = v50;
    [v48 doubleValue];
    sub_1000E0DC8();
    v44(v7, v9, v2);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v46;
    sub_1000CA308(v7, v49, v51, v52);

    v46 = v61;
  }

  v53 = [a1 originalTimestamp];
  if (v53)
  {
    v54 = v53;
    v55 = sub_1000E2338();
    v57 = v56;
    [v54 doubleValue];
    sub_1000E0DC8();
    v44(v7, v9, v2);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v46;
    sub_1000CA308(v7, v55, v57, v58);

    return v61;
  }

  return v46;
}

unint64_t sub_100012A20(uint64_t a1, void *a2, char a3)
{
  if (a3 == 1)
  {
    sub_1000E2A88(39);

    v5 = 0xD000000000000024;
  }

  else
  {
    sub_1000E2A88(38);

    v5 = 0xD000000000000023;
  }

  v7 = v5;
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  sub_1000E23A8(v8);
  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  sub_1000E23A8(v9);
  return v7;
}

uint64_t sub_100012B30(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (!v9)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v6 != 1)
  {
    if (v9 == 2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v9 != 1)
  {
    return 0;
  }

LABEL_4:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  else
  {
    return sub_1000E2C68();
  }
}

Swift::Int sub_100012B94()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1000E2D48();
  sub_100012A20(v1, v2, v3);
  sub_1000E2398();

  return sub_1000E2D68();
}

uint64_t sub_100012C0C()
{
  sub_100012A20(*v0, *(v0 + 8), *(v0 + 16));
  sub_1000E2398();
}

Swift::Int sub_100012C64()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1000E2D48();
  sub_100012A20(v1, v2, v3);
  sub_1000E2398();

  return sub_1000E2D68();
}

uint64_t sub_100012CD8()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = 1 << *(*(v0 + 40) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v73 = *(v0 + 40);

  v9 = 0;
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_8:
  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      v62 = *(v0 + 48);
      v63 = *(v0 + 56);
      v64 = *(v0 + 64);
      v65 = *(v0 + 72);

      v66 = sub_1000A714C(v64, v65);
      v67 = *(v0 + 32);
      if (v63)
      {
        v68 = sub_1000E2328();
      }

      else
      {
        v68 = 0;
      }

      v69 = objc_allocWithZone(TUNearbyDeviceHandle);
      sub_10000CAAC(0, &qword_10011DF80, NSNumber_ptr);
      sub_1000154B8();
      isa = sub_1000E22A8().super.isa;

      v71 = [v69 initWithName:v68 knownIdentifiers:isa deviceModel:v66 capabilities:v67];

      return v71;
    }

    v7 = *(v3 + 8 * v15);
    ++v9;
    if (v7)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v17 = *(v73 + 48) + 24 * (v16 | (v15 << 6));
        v19 = *v17;
        v18 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = objc_allocWithZone(NSNumber);
        if (!v20)
        {
          sub_100015488(v19, v18, 0);

          v22 = [v21 initWithInteger:2];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = sub_10000B424(v22);
          v35 = *(&_swiftEmptyDictionarySingleton + 2);
          v36 = (v34 & 1) == 0;
          v28 = __OFADD__(v35, v36);
          v37 = v35 + v36;
          if (v28)
          {
            goto LABEL_52;
          }

          v38 = v34;
          if (*(&_swiftEmptyDictionarySingleton + 3) < v37)
          {
            sub_10001ED0C(v37, isUniquelyReferenced_nonNull_native);
            v33 = sub_10000B424(v22);
            if ((v38 & 1) != (v39 & 1))
            {
              goto LABEL_57;
            }

            goto LABEL_31;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_31:
            if (v38)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v56 = v33;
            sub_1000CB1EC();
            v33 = v56;
            if (v38)
            {
LABEL_32:
              v51 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v33);
              v52 = v51[1];
              *v51 = v19;
              v51[1] = v18;

              v12 = v19;
              v13 = v18;
              v14 = 0;
              goto LABEL_6;
            }
          }

          *(&_swiftEmptyDictionarySingleton + (v33 >> 6) + 8) |= 1 << v33;
          *(*(&_swiftEmptyDictionarySingleton + 6) + 8 * v33) = v22;
          v57 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v33);
          *v57 = v19;
          v57[1] = v18;
          sub_1000154A0(v19, v18, 0);
          v58 = *(&_swiftEmptyDictionarySingleton + 2);
          v28 = __OFADD__(v58, 1);
          v50 = v58 + 1;
          if (v28)
          {
            goto LABEL_54;
          }

          goto LABEL_44;
        }

        if (v20 == 1)
        {
          sub_100015488(v19, v18, 1u);

          v22 = [v21 initWithInteger:1];
          v23 = swift_isUniquelyReferenced_nonNull_native();
          v24 = sub_10000B424(v22);
          v26 = *(&_swiftEmptyDictionarySingleton + 2);
          v27 = (v25 & 1) == 0;
          v28 = __OFADD__(v26, v27);
          v29 = v26 + v27;
          if (v28)
          {
            goto LABEL_51;
          }

          v30 = v25;
          if (*(&_swiftEmptyDictionarySingleton + 3) < v29)
          {
            sub_10001ED0C(v29, v23);
            v24 = sub_10000B424(v22);
            if ((v30 & 1) != (v31 & 1))
            {
              goto LABEL_57;
            }

            goto LABEL_26;
          }

          if (v23)
          {
LABEL_26:
            if (v30)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v55 = v24;
            sub_1000CB1EC();
            v24 = v55;
            if (v30)
            {
LABEL_5:
              v10 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v24);
              v11 = v10[1];
              *v10 = v19;
              v10[1] = v18;

              v12 = v19;
              v13 = v18;
              v14 = 1;
              goto LABEL_6;
            }
          }

          *(&_swiftEmptyDictionarySingleton + (v24 >> 6) + 8) |= 1 << v24;
          *(*(&_swiftEmptyDictionarySingleton + 6) + 8 * v24) = v22;
          v48 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v24);
          *v48 = v19;
          v48[1] = v18;
          sub_1000154A0(v19, v18, 1u);
          v49 = *(&_swiftEmptyDictionarySingleton + 2);
          v28 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (v28)
          {
            goto LABEL_55;
          }

          goto LABEL_44;
        }

        sub_100015488(v19, v18, 2u);

        v22 = [v21 initWithInteger:0];
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v41 = sub_10000B424(v22);
        v43 = *(&_swiftEmptyDictionarySingleton + 2);
        v44 = (v42 & 1) == 0;
        v28 = __OFADD__(v43, v44);
        v45 = v43 + v44;
        if (v28)
        {
          goto LABEL_53;
        }

        v46 = v42;
        if (*(&_swiftEmptyDictionarySingleton + 3) >= v45)
        {
          if ((v40 & 1) == 0)
          {
            v59 = v41;
            sub_1000CB1EC();
            v41 = v59;
            if (v46)
            {
LABEL_35:
              v53 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v41);
              v54 = v53[1];
              *v53 = v19;
              v53[1] = v18;

              v12 = v19;
              v13 = v18;
              v14 = 2;
LABEL_6:
              sub_1000154A0(v12, v13, v14);

              v9 = v15;
              if (!v7)
              {
                goto LABEL_8;
              }

              goto LABEL_7;
            }

            goto LABEL_43;
          }
        }

        else
        {
          sub_10001ED0C(v45, v40);
          v41 = sub_10000B424(v22);
          if ((v46 & 1) != (v47 & 1))
          {
            goto LABEL_57;
          }
        }

        if (v46)
        {
          goto LABEL_35;
        }

LABEL_43:
        *(&_swiftEmptyDictionarySingleton + (v41 >> 6) + 8) |= 1 << v41;
        *(*(&_swiftEmptyDictionarySingleton + 6) + 8 * v41) = v22;
        v60 = (*(&_swiftEmptyDictionarySingleton + 7) + 16 * v41);
        *v60 = v19;
        v60[1] = v18;
        sub_1000154A0(v19, v18, 2u);
        v61 = *(&_swiftEmptyDictionarySingleton + 2);
        v28 = __OFADD__(v61, 1);
        v50 = v61 + 1;
        if (v28)
        {
          goto LABEL_56;
        }

LABEL_44:
        *(&_swiftEmptyDictionarySingleton + 2) = v50;
        v9 = v15;
        if (!v7)
        {
          goto LABEL_8;
        }

LABEL_7:
        v15 = v9;
      }
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_10000CAAC(0, &qword_10011DF80, NSNumber_ptr);
  result = sub_1000E2CC8();
  __break(1u);
  return result;
}

void *sub_1000132BC(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v1[5] = &_swiftEmptySetSingleton;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  swift_weakInit();
  sub_10000ADE4(&qword_10011E7D0, &qword_1000F0C38);
  v1[13] = sub_1000E0F18();
  v5 = a1;
  v6 = [v5 idsDeviceIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000E2338();
    v10 = v9;

    v2[2] = v8;
    v2[3] = v10;
    v2[4] = sub_100013444();
    v11 = [v5 accountAltDSID];

    if (v11)
    {
      v12 = sub_1000E2338();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v2[10] = v12;
    v2[11] = v14;
    sub_1000138F4(v5);
  }

  else
  {

    v15 = v1[5];

    v16 = v1[7];

    v17 = v1[9];

    swift_weakDestroy();
    v18 = v1[13];

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

id sub_100013444()
{
  v1 = v0;
  v2 = sub_10000ADE4(&qword_10011E7F0, &qword_1000F0C48);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v46[-v4];
  v6 = [objc_allocWithZone(TUFeatureFlags) init];
  v7 = [v0 sourceVersion];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1000E2338();
    v11 = v10;

    v49 = v9;
    v50 = v11;
    v47 = 3158068;
    v48 = 0xE300000000000000;
    v12 = sub_1000E0D78();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v44 = sub_100015574();
    v45 = v44;
    v13 = sub_1000E28A8();
    sub_1000155C8(v5);

    v14 = v13 != -1;
  }

  else
  {
    v14 = 1;
  }

  v15 = [v1 model];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1000E2338();
    v19 = v18;

    v49 = v17;
    v50 = v19;
    __chkstk_darwin(v20);
    v44 = &v49;
    LOBYTE(v16) = sub_1000D0350(sub_100015630, &v46[-32], &off_100112AA0);

    v21 = v16 ^ 1;
  }

  else
  {
    v21 = 1;
  }

  v22 = [v1 sourceVersion];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1000E2338();
    v26 = v25;

    v49 = v24;
    v50 = v26;
    v47 = 3158069;
    v48 = 0xE300000000000000;
    v27 = sub_1000E0D78();
    (*(*(v27 - 8) + 56))(v5, 1, 1, v27);
    v44 = sub_100015574();
    v45 = v44;
    v28 = sub_1000E28A8();
    sub_1000155C8(v5);

    v21 &= v28 != -1;
  }

  v29 = [v1 statusFlags] & 0x80000;
  v30 = [v1 statusFlags];
  v31 = (v30 & 0x1000000000 | [v1 statusFlags] & 0x2000) != 0;
  if (v29)
  {
    v31 = v21;
  }

  if (v21)
  {
    v32 = v31;
  }

  else
  {
    v32 = v21;
  }

  if ([v6 lagunaAudioCallsEnabled] && (v33 = objc_msgSend(v1, "sourceVersion")) != 0)
  {
    v34 = v33;
    v35 = sub_1000E2338();
    v37 = v36;

    v49 = v35;
    v50 = v37;
    v47 = 0x302E35372E303135;
    v48 = 0xE800000000000000;
    v38 = sub_1000E0D78();
    (*(*(v38 - 8) + 56))(v5, 1, 1, v38);
    v44 = sub_100015574();
    v45 = v44;
    v39 = sub_1000E28A8();
    sub_1000155C8(v5);

    v40 = v39 != -1;
  }

  else
  {
    v40 = 0;
  }

  if (TUGreenTeaLagunaEnabled())
  {
    v41 = ([v1 deviceCapabilityFlags] >> 1) & 1;
  }

  else
  {
    v41 = 0;
  }

  v42 = [objc_allocWithZone(TUNearbyDeviceHandleCapabilities) initWithAVLessCapable:v14 lagunaCapable:v32 & 1 audioCallCapable:v40 telephonyRelayCapable:0 greenTea:v41];

  return v42;
}

void sub_1000138F4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  v6 = [a1 idsDeviceIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000E2338();
    v10 = v9;

    if (v4 == v8 && v5 == v10)
    {
    }

    else
    {
      v12 = sub_1000E2C68();

      if ((v12 & 1) == 0)
      {
        return;
      }
    }

    v13 = sub_100013DE8();
    swift_beginAccess();
    sub_10001E268(v13);
    swift_endAccess();
    v14 = [a1 name];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1000E2338();
      v18 = v17;

      v19 = *(v2 + 56);
      *(v2 + 48) = v16;
      *(v2 + 56) = v18;
    }

    v20 = [a1 model];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1000E2338();
      v24 = v23;

      v25 = *(v2 + 72);
      *(v2 + 64) = v22;
      *(v2 + 72) = v24;
    }

    v26 = sub_100013444();
    if ([*(v2 + 32) isAVLessCapable])
    {
      v27 = 1;
    }

    else
    {
      v27 = [v26 isLagunaCapable];
    }

    if ([*(v2 + 32) isLagunaCapable])
    {
      v28 = 1;
    }

    else
    {
      v28 = [v26 isLagunaCapable];
    }

    if ([*(v2 + 32) isAudioCallCapable])
    {
      v29 = 1;
    }

    else
    {
      v29 = [v26 isAudioCallCapable];
    }

    if ([*(v2 + 32) isTelephonyRelayCapable])
    {
      v30 = 1;
    }

    else
    {
      v30 = [v26 isTelephonyRelayCapable];
    }

    if ([*(v2 + 32) isGreenTea])
    {
      v31 = 1;
    }

    else
    {
      v31 = [v26 isGreenTea];
    }

    v32 = [objc_allocWithZone(TUNearbyDeviceHandleCapabilities) initWithAVLessCapable:v27 lagunaCapable:v28 audioCallCapable:v29 telephonyRelayCapable:v30 greenTea:v31];

    v33 = *(v2 + 32);
    *(v2 + 32) = v32;
  }
}

uint64_t sub_100013B80()
{
  v1 = v0;
  v2 = 7104878;
  sub_1000E2A88(66);
  v16._countAndFlagsBits = 0x746975646E6F433CLL;
  v16._object = 0xEF20656369766544;
  sub_1000E23A8(v16);
  sub_1000E23A8(v0[1]);
  v17._countAndFlagsBits = 0x6669746E65646920;
  v17._object = 0xED00003D73726569;
  sub_1000E23A8(v17);
  swift_beginAccess();
  object = v0[2]._object;
  sub_100015520();

  v4 = sub_1000E25F8();
  v6 = v5;

  v18._countAndFlagsBits = v4;
  v18._object = v6;
  sub_1000E23A8(v18);

  v19._countAndFlagsBits = 0x3D656D616E20;
  v19._object = 0xE600000000000000;
  sub_1000E23A8(v19);
  if (v1[3]._object)
  {
    countAndFlagsBits = v1[3]._countAndFlagsBits;

    v7._countAndFlagsBits = sub_1000E2368();
    v8 = v7._object;
  }

  else
  {
    v8 = 0xE300000000000000;
    v7._countAndFlagsBits = 7104878;
  }

  v7._object = v8;
  sub_1000E23A8(v7);

  v20._countAndFlagsBits = 0x3D6C65646F6D20;
  v20._object = 0xE700000000000000;
  sub_1000E23A8(v20);
  if (v1[4]._object)
  {
    v15 = v1[4]._countAndFlagsBits;

    v2 = sub_1000E2368();
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  v21._countAndFlagsBits = v2;
  v21._object = v10;
  sub_1000E23A8(v21);

  v22._countAndFlagsBits = 0x6C69626170616320;
  v22._object = 0xEE003D7365697469;
  sub_1000E23A8(v22);
  v11 = v1[2]._countAndFlagsBits;
  sub_10000CAAC(0, &qword_10011E7E8, TUNearbyDeviceHandleCapabilities_ptr);
  v12 = v11;
  v23._countAndFlagsBits = sub_1000E2368();
  sub_1000E23A8(v23);

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  sub_1000E23A8(v24);
  return 0;
}

uint64_t sub_100013DE8()
{
  v1 = v0;
  v2 = [v0 effectiveIdentifier];
  v3 = sub_1000E2338();
  v5 = v4;

  v6 = *(&_swiftEmptySetSingleton + 5);
  sub_1000E2D48();
  sub_1000E2A88(38);

  v74._countAndFlagsBits = v3;
  v74._object = v5;
  sub_1000E23A8(v74);
  v75._countAndFlagsBits = 41;
  v75._object = 0xE100000000000000;
  sub_1000E23A8(v75);
  sub_1000E2398();

  v7 = sub_1000E2D68();
  v8 = -1 << *(&_swiftEmptySetSingleton + 32);
  v9 = v7 & ~v8;
  if ((*(&_swiftEmptySetSingleton + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9))
  {
    v10 = ~v8;
    v11 = *(&_swiftEmptySetSingleton + 6);
    while (1)
    {
      v12 = v11 + 24 * v9;
      if (*(v12 + 16) >= 2u)
      {
        v13 = *v12 == v3 && *(v12 + 8) == v5;
        if (v13 || (sub_1000E2C68() & 1) != 0)
        {
          break;
        }
      }

      v9 = (v9 + 1) & v10;
      if (((*(&_swiftEmptySetSingleton + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9) & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = &_swiftEmptySetSingleton;
    v16 = *(&_swiftEmptySetSingleton + 2);
    v15 = *(&_swiftEmptySetSingleton + 3);

    if (v15 <= v16)
    {
      v18 = v16 + 1;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_1000D30F4(v18);
      }

      else
      {
        sub_1000D41E0(v18);
      }

      v19 = *(&_swiftEmptySetSingleton + 5);
      sub_1000E2D48();
      sub_1000E2A88(38);

      v76._countAndFlagsBits = v3;
      v76._object = v5;
      sub_1000E23A8(v76);
      v77._countAndFlagsBits = 41;
      v77._object = 0xE100000000000000;
      sub_1000E23A8(v77);
      sub_1000E2398();

      result = sub_1000E2D68();
      v20 = -1 << *(&_swiftEmptySetSingleton + 32);
      v9 = result & ~v20;
      if ((*(&_swiftEmptySetSingleton + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9))
      {
        v21 = ~v20;
        v22 = *(&_swiftEmptySetSingleton + 6);
        do
        {
          v23 = v22 + 24 * v9;
          if (*(v23 + 16) >= 2u)
          {
            if (*v23 == v3 && *(v23 + 8) == v5)
            {
              goto LABEL_84;
            }

            result = sub_1000E2C68();
            if (result)
            {
              goto LABEL_84;
            }
          }

          v9 = (v9 + 1) & v21;
        }

        while (((*(&_swiftEmptySetSingleton + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v9) & 1) != 0);
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      result = sub_1000D3DA0();
    }

    *(&_swiftEmptySetSingleton + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v9;
    v25 = *(&_swiftEmptySetSingleton + 6) + 24 * v9;
    *v25 = v3;
    *(v25 + 8) = v5;
    *(v25 + 16) = 2;
    v26 = *(&_swiftEmptySetSingleton + 2);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      __break(1u);
      goto LABEL_89;
    }

    *(&_swiftEmptySetSingleton + 2) = v28;
  }

  v29 = [v1 idsDeviceIdentifier];
  if (!v29)
  {
    goto LABEL_58;
  }

  v30 = v29;
  v31 = sub_1000E2338();
  v5 = v32;

  v33 = *(&_swiftEmptySetSingleton + 5);
  sub_1000E2D48();
  sub_1000E2A88(38);

  v72 = 0xD000000000000023;
  v73 = 0x80000001000E9C70;
  v78._countAndFlagsBits = v31;
  v78._object = v5;
  sub_1000E23A8(v78);
  v79._countAndFlagsBits = 41;
  v79._object = 0xE100000000000000;
  sub_1000E23A8(v79);
  sub_1000E2398();

  v34 = sub_1000E2D68();
  v35 = -1 << *(&_swiftEmptySetSingleton + 32);
  v36 = v34 & ~v35;
  if (((*(&_swiftEmptySetSingleton + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v36) & 1) == 0)
  {
LABEL_40:
    result = swift_isUniquelyReferenced_nonNull_native();
    v71 = &_swiftEmptySetSingleton;
    v41 = *(&_swiftEmptySetSingleton + 2);
    if (*(&_swiftEmptySetSingleton + 3) <= v41)
    {
      if (result)
      {
        sub_1000D30F4(v41 + 1);
      }

      else
      {
        sub_1000D41E0(v41 + 1);
      }

      v42 = *(&_swiftEmptySetSingleton + 5);
      sub_1000E2D48();
      sub_1000E2A88(38);

      v72 = 0xD000000000000023;
      v73 = 0x80000001000E9C70;
      v80._countAndFlagsBits = v31;
      v80._object = v5;
      sub_1000E23A8(v80);
      v81._countAndFlagsBits = 41;
      v81._object = 0xE100000000000000;
      sub_1000E23A8(v81);
      sub_1000E2398();

      result = sub_1000E2D68();
      v43 = -1 << *(&_swiftEmptySetSingleton + 32);
      v36 = result & ~v43;
      if ((*(&_swiftEmptySetSingleton + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v36))
      {
        v21 = ~v43;
        v44 = *(&_swiftEmptySetSingleton + 6);
        do
        {
          v45 = v44 + 24 * v36;
          if (!*(v45 + 16))
          {
            if (*v45 == v31 && *(v45 + 8) == v5)
            {
              goto LABEL_84;
            }

            result = sub_1000E2C68();
            if (result)
            {
              goto LABEL_84;
            }
          }

          v36 = (v36 + 1) & v21;
        }

        while (((*(&_swiftEmptySetSingleton + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v36) & 1) != 0);
      }
    }

    else if ((result & 1) == 0)
    {
      result = sub_1000D3DA0();
    }

    *(&_swiftEmptySetSingleton + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v36;
    v47 = *(&_swiftEmptySetSingleton + 6) + 24 * v36;
    *v47 = v31;
    *(v47 + 8) = v5;
    *(v47 + 16) = 0;
    v48 = *(&_swiftEmptySetSingleton + 2);
    v27 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (!v27)
    {
      *(&_swiftEmptySetSingleton + 2) = v49;
      goto LABEL_58;
    }

LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v37 = ~v35;
  v38 = *(&_swiftEmptySetSingleton + 6);
  while (1)
  {
    v39 = v38 + 24 * v36;
    if (!*(v39 + 16))
    {
      v40 = *v39 == v31 && *(v39 + 8) == v5;
      if (v40 || (sub_1000E2C68() & 1) != 0)
      {
        break;
      }
    }

    v36 = (v36 + 1) & v37;
    if (((*(&_swiftEmptySetSingleton + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v36) & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_58:
  v50 = [v1 mediaRouteIdentifier];
  if (!v50)
  {
    return &_swiftEmptySetSingleton;
  }

  v51 = v50;
  v5 = sub_1000E2338();
  v1 = v52;

  v53 = *(&_swiftEmptySetSingleton + 5);
  sub_1000E2D48();
  sub_1000E2A88(39);

  v82._countAndFlagsBits = v5;
  v82._object = v1;
  sub_1000E23A8(v82);
  v83._countAndFlagsBits = 41;
  v83._object = 0xE100000000000000;
  sub_1000E23A8(v83);
  sub_1000E2398();

  v54 = sub_1000E2D68();
  v55 = -1 << *(&_swiftEmptySetSingleton + 32);
  v21 = v54 & ~v55;
  if ((*(&_swiftEmptySetSingleton + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v21))
  {
    v56 = ~v55;
    v57 = *(&_swiftEmptySetSingleton + 6);
    while (1)
    {
      v58 = v57 + 24 * v21;
      if (*(v58 + 16) == 1)
      {
        v59 = *v58 == v5 && *(v58 + 8) == v1;
        if (v59 || (sub_1000E2C68() & 1) != 0)
        {
          break;
        }
      }

      v21 = (v21 + 1) & v56;
      if (((*(&_swiftEmptySetSingleton + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v21) & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    return &_swiftEmptySetSingleton;
  }

LABEL_69:
  result = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(&_swiftEmptySetSingleton + 2);
  if (*(&_swiftEmptySetSingleton + 3) > v60)
  {
    if ((result & 1) == 0)
    {
      result = sub_1000D3DA0();
    }

    goto LABEL_85;
  }

  if (result)
  {
    sub_1000D30F4(v60 + 1);
  }

  else
  {
    sub_1000D41E0(v60 + 1);
  }

  v61 = *(&_swiftEmptySetSingleton + 5);
  sub_1000E2D48();
  sub_1000E2A88(39);

  v84._countAndFlagsBits = v5;
  v84._object = v1;
  sub_1000E23A8(v84);
  v85._countAndFlagsBits = 41;
  v85._object = 0xE100000000000000;
  sub_1000E23A8(v85);
  sub_1000E2398();

  result = sub_1000E2D68();
  v62 = -1 << *(&_swiftEmptySetSingleton + 32);
  v21 = result & ~v62;
  if ((*(&_swiftEmptySetSingleton + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v21))
  {
    v63 = ~v62;
    v64 = *(&_swiftEmptySetSingleton + 6);
    while (1)
    {
      v65 = v64 + 24 * v21;
      if (*(v65 + 16) == 1)
      {
        if (*v65 == v5 && *(v65 + 8) == v1)
        {
          break;
        }

        result = sub_1000E2C68();
        if (result)
        {
          break;
        }
      }

      v21 = (v21 + 1) & v63;
      if (((*(&_swiftEmptySetSingleton + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v21) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

LABEL_84:
    result = sub_1000E2CB8();
    __break(1u);
  }

LABEL_85:
  *(&_swiftEmptySetSingleton + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v21;
  v67 = *(&_swiftEmptySetSingleton + 6) + 24 * v21;
  *v67 = v5;
  *(v67 + 8) = v1;
  *(v67 + 16) = 1;
  v68 = *(&_swiftEmptySetSingleton + 2);
  v27 = __OFADD__(v68, 1);
  v69 = v68 + 1;
  if (!v27)
  {
    *(&_swiftEmptySetSingleton + 2) = v69;
    return &_swiftEmptySetSingleton;
  }

LABEL_90:
  __break(1u);
  return result;
}

uint64_t sub_100014704()
{
  *(v1 + 144) = v0;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v2 = qword_1001230E0;
  *(v1 + 152) = qword_1001230E0;

  return _swift_task_switch(sub_1000147A0, v2, 0);
}

uint64_t sub_1000147A0()
{
  v1 = *(v0 + 144);
  if (swift_weakLoadStrong())
  {
    v2 = *(v0 + 8);

    return v2();
  }

  v4 = *(v0 + 144);
  *(v0 + 160) = *(v4 + 16);
  *(v0 + 168) = *(v4 + 24);
  v5 = [objc_allocWithZone(RPCompanionLinkDevice) init];
  *(v0 + 176) = v5;
  v6 = v5;
  v7 = sub_1000E2328();
  [v6 setIdentifier:v7];

  v8 = [objc_allocWithZone(RPCompanionLinkClient) init];
  *(v0 + 184) = v8;
  [v8 setDestinationDevice:v6];
  if (qword_10011DC58 == -1)
  {
    if (!_TUIsInternalInstall())
    {
      goto LABEL_9;
    }
  }

  else
  {
    swift_once();
    if (!_TUIsInternalInstall())
    {
      goto LABEL_9;
    }
  }

  v9 = sub_1000D525C();
  if (v9 != 2 && (v9 & 1) == 0)
  {
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

LABEL_9:
  if (qword_10011DC20 != -1)
  {
    swift_once();
  }

  if ((sub_100040A14(*(v0 + 144)) & 1) == 0)
  {
    goto LABEL_13;
  }

  [v8 setControlFlags:{objc_msgSend(v8, "controlFlags") | 0x20000}];
  [v8 setControlFlags:{objc_msgSend(v8, "controlFlags") | 0x200000}];
  v10 = 1;
LABEL_14:
  *(v0 + 224) = v10;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100014A70;
  v11 = swift_continuation_init();
  *(v0 + 136) = sub_10000ADE4(&qword_10011E7C0, &qword_1000F0C30);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100014FC4;
  *(v0 + 104) = &unk_100112F68;
  *(v0 + 112) = v11;
  [v8 activateWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100014A70()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_100014F4C;
  }

  else
  {
    v5 = sub_100014B90;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100014B90()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v0[25] = *(v0[18] + 104);
  v0[13] = sub_10000CAAC(0, &qword_10011E7C8, RPCompanionLinkClient_ptr);
  v0[14] = &off_100116AD8;
  v0[10] = v1;
  v4 = swift_allocObject();
  v0[26] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = v1;

  sub_10000ADE4(&qword_10011E7D0, &qword_1000F0C38);
  sub_100015424();
  v7 = sub_1000E24B8();

  return _swift_task_switch(sub_100014C8C, v7, v6);
}

uint64_t sub_100014C8C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[19];
  v0[27] = sub_1000E0EE8();

  sub_10000E9DC(v0 + 10);

  return _swift_task_switch(sub_100014D30, v3, 0);
}

uint64_t sub_100014D30()
{
  v26 = v0;
  v1 = *(v0 + 144);
  Strong = swift_weakLoadStrong();
  v3 = *(v0 + 216);
  if (Strong)
  {
    v4 = *(v0 + 184);
    v5 = Strong;

    v6 = v5;
  }

  else
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 216);
    swift_weakAssign();
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 168);
    v10 = sub_1000E1F08();
    sub_1000049D0(v10, qword_1001231A0);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 224);
      v15 = *(v0 + 176);
      v14 = *(v0 + 184);
      v17 = *(v0 + 160);
      v16 = *(v0 + 168);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315394;
      v20 = sub_100029C70(v17, v16, &v25);

      *(v18 + 4) = v20;
      *(v18 + 12) = 1024;
      *(v18 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Creating connection assertion (forcedAWDL=%{BOOL}d).", v18, 0x12u);
      sub_10000E9DC(v19);
    }

    else
    {
      v21 = *(v0 + 184);
      v22 = *(v0 + 168);
    }

    v6 = *(v0 + 216);
  }

  v23 = *(v0 + 8);

  return v23(v6);
}

uint64_t sub_100014F4C()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[24];

  return v4();
}

uint64_t sub_100014FC4(uint64_t a1, void *a2)
{
  v3 = sub_1000036AC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100015070(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v6 = sub_1000E1F08();
  sub_1000049D0(v6, qword_1001231A0);

  v7 = sub_1000E1EE8();
  v8 = sub_1000E2698();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100029C70(a2, a3, &v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] Releasing connection assertion.", v9, 0xCu);
    sub_10000E9DC(v10);
  }

  v11 = a1[3];
  v12 = a1[4];
  sub_1000036AC(a1, v11);
  return (*(v12 + 160))(v11, v12);
}

uint64_t sub_1000151F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  swift_weakDestroy();
  v6 = *(v0 + 104);

  return v0;
}

uint64_t sub_10001524C()
{
  sub_1000151F4();

  return swift_deallocClassInstance();
}

__n128 sub_1000152B0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000152C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10001530C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_10001536C()
{
  result = qword_10011E7B8;
  if (!qword_10011E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E7B8);
  }

  return result;
}

uint64_t sub_1000153C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100015424()
{
  result = qword_10011E7D8;
  if (!qword_10011E7D8)
  {
    sub_10000AE90(&qword_10011E7D0, &qword_1000F0C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E7D8);
  }

  return result;
}

uint64_t sub_100015488(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1000154A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_1000154B8()
{
  result = qword_10011FA40;
  if (!qword_10011FA40)
  {
    sub_10000CAAC(255, &qword_10011DF80, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FA40);
  }

  return result;
}

unint64_t sub_100015520()
{
  result = qword_10011E7E0;
  if (!qword_10011E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E7E0);
  }

  return result;
}

unint64_t sub_100015574()
{
  result = qword_10011E7F8;
  if (!qword_10011E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E7F8);
  }

  return result;
}

uint64_t sub_1000155C8(uint64_t a1)
{
  v2 = sub_10000ADE4(&qword_10011E7F0, &qword_1000F0C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CSDConversationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CSDConversationManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSDConversationManager();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000158A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100015904(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006660(a1, a2);
  }

  return a1;
}

NSString sub_100015920()
{
  result = sub_1000E2328();
  qword_10011E890 = result;
  return result;
}

char *sub_100015958(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_systemLanguageChanged] = sub_10001591C;
  v13 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_continuitySessionServer;
  if (qword_10011DC48 != -1)
  {
    swift_once();
  }

  *&v4[v13] = qword_100123118;
  if (&_swiftEmptyArrayStorage >> 62 && sub_1000E2B68())
  {

    v14 = sub_1000DFC4C(&_swiftEmptyArrayStorage);
  }

  else
  {

    v14 = &_swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_cancellables] = v14;
  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_connections] = &_swiftEmptySetSingleton;
  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_splitSessionApprovalConnection] = 0;
  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_queue] = a1;
  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_conduit] = a2;
  *&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_suggestionController] = a3;
  v36.receiver = v4;
  v36.super_class = ObjectType;
  v34 = a1;
  v15 = a2;
  v32 = a3;
  v16 = objc_msgSendSuper2(&v36, "init");
  v17 = sub_1000E2538();
  v31 = *(*(v17 - 8) + 56);
  v31(v12, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v15;
  v18[5] = v16;
  v19 = v16;
  v20 = v15;
  v21 = v19;
  sub_100022960(0, 0, v12, &unk_1000F0E78, v18);

  v33 = v20;
  v35 = *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffStateSubject];
  sub_10000ADE4(&unk_10011EAD0, &qword_1000F0E80);
  sub_100002C64(&qword_10011F900, &unk_10011EAD0, &qword_1000F0E80);
  v35 = sub_1000E2028();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = v21;
  sub_10000ADE4(&qword_10011EAE0, &qword_1000F0E88);
  sub_100002C64(&qword_10011EAE8, &qword_10011EAE0, &qword_1000F0E88);
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();

  v31(v12, 1, 1, v17);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v24 = v32;
  v23[4] = v32;
  v23[5] = v22;
  v25 = v24;
  sub_100022960(0, 0, v12, &unk_1000F0E98, v23);

  v35 = *(*&v22[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_continuitySessionServer] + 192);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10000ADE4(&qword_10011EA88, &qword_1000F3450);
  sub_100002C64(&qword_10011EA90, &qword_10011EA88, &qword_1000F3450);
  sub_1000E20D8();

  swift_beginAccess();
  sub_1000E1F78();
  swift_endAccess();

  notify_post("NeighborhoodActivityConduitClientsShouldConnectNotification");
  v26 = CFNotificationCenterGetDarwinNotifyCenter();
  v27 = *&v22[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_systemLanguageChanged];
  if (qword_10011DBE0 != -1)
  {
    v29 = *&v22[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_systemLanguageChanged];
    swift_once();
    v27 = v29;
  }

  CFNotificationCenterAddObserver(v26, 0, v27, qword_10011E890, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v22;
}

uint64_t sub_100015F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100015F58, 0, 0);
}

uint64_t sub_100015F58()
{
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v0 = qword_1001230F0;

  return _swift_task_switch(sub_100015FEC, v0, 0);
}

uint64_t sub_100015FEC()
{
  v1 = v0[3];
  *(v0[2] + OBJC_IVAR___CSDNeighborhoodActivityConduit_delegate + 8) = &off_100112FC8;
  swift_unknownObjectWeakAssign();
  v2 = v0[1];

  return v2();
}

void sub_100016068()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10001629C(sub_10001B024, 0);
  }
}

uint64_t sub_1000160D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000160F4, 0, 0);
}

uint64_t sub_1000160F4()
{
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v0 = qword_1001230D0;

  return _swift_task_switch(sub_100016188, v0, 0);
}

uint64_t sub_100016188()
{
  v1 = v0[3];
  *(v0[2] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionXPCDelegate + 8) = &off_100112FB8;
  swift_unknownObjectWeakAssign();
  v2 = v0[1];

  return v2();
}

uint64_t sub_100016200(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    sub_10001629C(sub_10001C9B0, v4);
  }

  return result;
}

uint64_t sub_10001629C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000E2118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000E2148();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_10001B110;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100113020;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_1000E2138();
  v20 = &_swiftEmptyArrayStorage;
  sub_10001B11C();
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

id sub_100016550()
{
  ObjectType = swift_getObjectType();
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10011DBE0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v2, 0, qword_10011E890, 0);

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100016744(void *a1@<X1>, char *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_13:
    v26 = 0;
    goto LABEL_14;
  }

  v5 = Strong;
  if ((sub_100016CE0() & 1) == 0)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v27 = sub_1000E1F08();
    sub_1000049D0(v27, qword_100123128);
    v28 = a1;
    v29 = sub_1000E1EE8();
    v30 = sub_1000E2678();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock = v37;
      *v31 = 136315138;
      v32 = [v28 debugDescription];
      v33 = sub_1000E2338();
      v35 = v34;

      v36 = sub_100029C70(v33, v35, &aBlock);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s not entitled to use NeighborhoodActivityConduitService", v31, 0xCu);
      sub_10000E9DC(v37);
    }

    goto LABEL_13;
  }

  v6 = objc_opt_self();
  v7 = [v6 neighborhoodActivityClientXPCInterface];
  [a1 setRemoteObjectInterface:v7];

  v8 = [v6 neighborhoodActivityServerXPCInterface];
  [a1 setExportedInterface:v8];

  [a1 setExportedObject:v5];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v43 = sub_10001C72C;
  v44 = v10;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_1000026A0;
  v42 = &unk_1001134A8;
  v11 = _Block_copy(&aBlock);
  v12 = v5;
  v13 = a1;

  [v13 setInterruptionHandler:v11];
  _Block_release(v11);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v43 = sub_10001C7BC;
  v44 = v15;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_1000026A0;
  v42 = &unk_1001134F8;
  v16 = _Block_copy(&aBlock);
  v17 = v13;

  [v17 setInvalidationHandler:v16];
  _Block_release(v16);
  [v17 _setQueue:*&v12[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_queue]];
  swift_beginAccess();
  v18 = v17;
  sub_1000D29C8(&v38, v18);
  swift_endAccess();

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v19 = sub_1000E1F08();
  sub_1000049D0(v19, qword_100123128);
  v20 = v18;
  v21 = sub_1000E1EE8();
  v22 = sub_1000E2658();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Connected to new client %@", v23, 0xCu);
    sub_1000033C8(v24, &unk_10011EAC0, &unk_1000F0E60);
  }

  [v20 resume];
  v26 = 1;
LABEL_14:
  *a2 = v26;
}

uint64_t sub_100016CE0()
{
  v1 = sub_1000E2328();
  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    sub_1000E28B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_1000033C8(v7, &unk_10011ECF0, &qword_1000F08A0);
    return 0;
  }

  return result;
}

uint64_t sub_100016DD0(uint64_t a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v8 = sub_1000E2118();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000E2148();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v35 = v13;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v33 = a6;
    v34 = v14;
    v36 = v9;
    v20 = sub_1000E1F08();
    sub_1000049D0(v20, qword_100123128);
    v21 = a2;
    v22 = sub_1000E1EE8();
    v23 = sub_1000E2658();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, v37, v24, 0xCu);
      sub_1000033C8(v25, &unk_10011EAC0, &unk_1000F0E60);
    }

    v27 = *&v19[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_queue];
    v28 = swift_allocObject();
    *(v28 + 16) = v19;
    *(v28 + 24) = v21;
    aBlock[4] = v39;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000026A0;
    aBlock[3] = v33;
    v29 = _Block_copy(aBlock);
    v30 = v21;
    v31 = v19;
    sub_1000E2138();
    v40 = &_swiftEmptyArrayStorage;
    sub_10001B11C();
    sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
    sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
    sub_1000E28C8();
    sub_1000E2738();
    _Block_release(v29);
    (*(v36 + 8))(v12, v8);
    (*(v34 + 8))(v17, v35);
  }

  return result;
}

void sub_1000171B8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = sub_1000A4264(a2);
  swift_endAccess();
}

void sub_1000172EC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v5 = sub_1000E2198();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = sub_1000E21C8();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1000E2918();
      sub_10000CAAC(0, &qword_10011FD10, NSXPCConnection_ptr);
      sub_10001B174(&unk_10011EA40, &qword_10011FD10, NSXPCConnection_ptr);
      sub_1000E2628();
      a1 = v32;
      v12 = v33;
      v13 = v34;
      v14 = v35;
      v15 = v36;
    }

    else
    {
      v16 = -1 << *(a1 + 32);
      v12 = a1 + 56;
      v13 = ~v16;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v15 = v18 & *(a1 + 56);

      v14 = 0;
    }

    v27[1] = v13;
    v19 = (v13 + 64) >> 6;
    while (1)
    {
      if (a1 < 0)
      {
        v25 = sub_1000E29A8();
        if (!v25 || (v30 = v25, sub_10000CAAC(0, &qword_10011FD10, NSXPCConnection_ptr), swift_dynamicCast(), v24 = v31, v22 = v14, v23 = v15, !v31))
        {
LABEL_21:
          sub_10000A840();
          return;
        }
      }

      else
      {
        v20 = v14;
        v21 = v15;
        v22 = v14;
        if (!v15)
        {
          while (1)
          {
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v22 >= v19)
            {
              goto LABEL_21;
            }

            v21 = *(v12 + 8 * v22);
            ++v20;
            if (v21)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          break;
        }

LABEL_15:
        v23 = (v21 - 1) & v21;
        v24 = *(*(a1 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
        if (!v24)
        {
          goto LABEL_21;
        }
      }

      v26 = [v24 remoteObjectProxy];
      sub_1000E28B8();
      swift_unknownObjectRelease();
      sub_10000ADE4(&qword_10011FCA0, &qword_1000F29E0);
      if (swift_dynamicCast())
      {
        v28(v30);
        swift_unknownObjectRelease();
      }

      v14 = v22;
      v15 = v23;
    }
  }

  __break(1u);
}

uint64_t sub_100017648(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_connections;
  swift_beginAccess();
  v7 = *(a1 + v6);

  sub_1000172EC(v8, a2, a3);
}

uint64_t sub_1000176C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return _swift_task_switch(sub_1000176E4, 0, 0);
}

uint64_t sub_1000176E4()
{
  *(v0 + 64) = *(*(v0 + 56) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_conduit);
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230F0;

  return _swift_task_switch(sub_10001778C, v1, 0);
}

uint64_t sub_10001778C()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR___CSDNeighborhoodActivityConduit_nearbyDevices;
  swift_beginAccess();
  *(v0 + 72) = *(v1 + v2);

  return _swift_task_switch(sub_10001781C, 0, 0);
}

uint64_t sub_10001781C()
{
  v1 = *(v0 + 48);
  (*(v0 + 40))(*(v0 + 72), 0);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000178D0(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_10000CAAC(0, &qword_10011EAB0, TUNearbyDeviceHandle_ptr);
    sub_10001B174(&qword_10011EAB8, &qword_10011EAB0, TUNearbyDeviceHandle_ptr);
    isa = sub_1000E25D8().super.isa;
  }

  if (a2)
  {
    v6 = sub_1000E0BD8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1000179A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for HandoffState(0);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_100017A6C, 0, 0);
}

uint64_t sub_100017A6C()
{
  v1 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  v0[11] = *(v0[7] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_conduit);
  v0[12] = v1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v2 = qword_1001230F0;

  return _swift_task_switch(sub_100017B20, v2, 0);
}

uint64_t sub_100017B20()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  swift_beginAccess();
  if ((*(v4 + 48))(v2 + v1, 1, v3))
  {

    return _swift_task_switch(sub_100017C40, 0, 0);
  }

  else
  {
    sub_10001C538(v0[11] + v0[12], v0[10]);
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_100017CB8;
    v6 = v0[10];

    return sub_1000DD6C0();
  }
}

uint64_t sub_100017C40()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  (*(v0 + 40))(0, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100017CB8(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 112) = a1;

  sub_10001C59C(v3);

  return _swift_task_switch(sub_100017DD8, 0, 0);
}

uint64_t sub_100017DD8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  (*(v0 + 40))(v1, 0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100017E9C(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(a3);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = sub_1000E2538();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a6;
  v18[5] = v16;
  v18[6] = a1;
  v19 = a1;
  sub_100022960(0, 0, v14, a7, v18);
}

uint64_t sub_10001806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100018090, 0, 0);
}

uint64_t sub_100018090()
{
  *(v0 + 40) = *(*(v0 + 16) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_suggestionController);
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230D0;

  return _swift_task_switch(sub_100018138, v1, 0);
}

uint64_t sub_100018138()
{
  v1 = *(v0 + 40) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  v2 = *v1;
  *(v0 + 48) = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (v2)
  {
    v5 = v2;
  }

  sub_10001C3F0(v2, v3);
  sub_10001C430(v2, v3);

  return _swift_task_switch(sub_1000181E8, 0, 0);
}

uint64_t sub_1000181E8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  (*(v0 + 24))(v1, 0);

  v3 = *(v0 + 8);

  return v3();
}

void sub_1000183A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1000E0BD8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100018414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10001843C, 0, 0);
}

uint64_t sub_10001843C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_suggestionController);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1000184E0;
  v4 = v0[3];
  v3 = v0[4];

  return sub_10002ED8C(v4, v3);
}

uint64_t sub_1000184E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_10001867C;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_100018608;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100018608()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  (*(v0 + 40))(v1, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10001867C()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100018874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10001889C, 0, 0);
}

uint64_t sub_10001889C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_conduit);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_100018940;
  v4 = v0[3];
  v3 = v0[4];

  return sub_10005B2F8(v4, v3);
}

uint64_t sub_100018940()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100018AC0;
  }

  else
  {
    v3 = sub_100018A54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100018A54()
{
  v1 = *(v0 + 48);
  (*(v0 + 40))(1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100018AC0()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100018E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100018E38, 0, 0);
}

uint64_t sub_100018E38()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_conduit);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_100018EDC;
  v3 = v0[3];

  return sub_10005C31C(v3);
}

uint64_t sub_100018EDC()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_10001905C;
  }

  else
  {
    v3 = sub_100018FF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100018FF0()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(1, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001905C()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  swift_errorRetain();
  v3(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100019128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10001914C, 0, 0);
}

uint64_t sub_10001914C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_suggestionController);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1000191F0;
  v3 = v0[3];

  return sub_1000319F0(v3);
}

uint64_t sub_1000191F0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_10001CAA8;
  }

  else
  {
    v3 = sub_10001CAB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100019340(void *a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v24 - v15;
  v17 = _Block_copy(a4);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = sub_1000E2538();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a3;
  v20[6] = a7;
  v20[7] = v18;
  v21 = a3;
  v22 = a1;
  sub_100022960(0, 0, v16, a8, v20);
}

uint64_t sub_1000194A8()
{
  v1 = v0[2];
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000195A4;

  return sub_10005CD04(sub_10005CD04, 1000000000000000000, 0, &unk_1000F0DC8, v2);
}

uint64_t sub_1000195A4()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1000197D8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1000196C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000196C0()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123128);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Conduit Activated", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000197D8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_10001983C(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v3 = sub_10000ADE4(&qword_10011EA70, &qword_1000F0DD0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_10000ADE4(&qword_10011EA78, &qword_1000F0DD8);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_10000ADE4(&qword_10011EA80, &unk_1000F0DE0);
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000199E4, 0, 0);
}

uint64_t sub_1000199E4()
{
  v1 = v0[13];
  v2 = v0[11];
  v12 = v0[10];
  v13 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v14 = v0[6];
  v0[2] = *(*(v0[3] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_conduit) + OBJC_IVAR___CSDNeighborhoodActivityConduit_activatedSubject);
  sub_10000ADE4(&qword_10011EA88, &qword_1000F3450);
  sub_100002C64(&qword_10011EA90, &qword_10011EA88, &qword_1000F3450);
  sub_1000E20B8();
  sub_100002C64(&qword_10011EA98, &qword_10011EA78, &qword_1000F0DD8);
  sub_1000E20E8();
  (*(v3 + 8))(v4, v5);
  (*(v2 + 16))(v13, v1, v12);
  sub_100002C64(&qword_10011EAA0, &qword_10011EA80, &unk_1000F0DE0);
  sub_1000E25C8();
  v6 = sub_100002C64(&qword_10011EAA8, &qword_10011EA70, &qword_1000F0DD0);
  v7 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_100019C34;
  v9 = v0[6];
  v10 = v0[4];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 15, v10, v6);
}

uint64_t sub_100019C34()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[5];
    v4 = v2[6];
    v6 = v2[4];

    (*(v5 + 8))(v4, v6);
    v7 = nullsub_1;
  }

  else
  {
    v7 = sub_100019D74;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100019D74()
{
  v1 = *(v0 + 120);
  if (v1 == 2 || (v1 & 1) != 0)
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 104);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    v6 = *(v0 + 72);
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    (*(v5 + 8))(v3, v4);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = sub_100002C64(&qword_10011EAA8, &qword_10011EA70, &qword_1000F0DD0);
    v10 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v11 = swift_task_alloc();
    *(v0 + 112) = v11;
    *v11 = v0;
    v11[1] = sub_100019C34;
    v12 = *(v0 + 48);
    v13 = *(v0 + 32);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 120, v13, v9);
  }
}

uint64_t sub_10001A080(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10001A128;

  return sub_100019488();
}

uint64_t sub_10001A128()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_1000E0BD8();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_10001A2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10001A2D4, 0, 0);
}

uint64_t sub_10001A2D4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_conduit);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_10001A37C;
  v4 = v0[3];
  v3 = v0[4];

  return sub_10005D678(v4, v3, 0);
}

uint64_t sub_10001A37C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_10001CAAC;
  }

  else
  {
    v3 = sub_10001CAB4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10001A510, 0, 0);
}

uint64_t sub_10001A510()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_conduit);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_10001A37C;
  v4 = v0[3];
  v3 = v0[4];

  return sub_10005DEF0(v4, v3);
}

uint64_t sub_10001A60C(void *a1, uint64_t a2, uint64_t a3, void *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a4;
  v39 = a8;
  v37 = a7;
  v40 = a9;
  v11 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v35 - v13;
  v36 = &v35 - v13;
  v15 = sub_1000E0D68();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v19 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v35 - v20;
  v22 = _Block_copy(a5);
  sub_1000E0D38();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v24 = sub_1000E2538();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  (*(v16 + 16))(v19, v21, v15);
  v25 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v26 = (v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = a1;
  (*(v16 + 32))(&v27[v25], v19, v15);
  v29 = v38;
  v28 = v39;
  *&v27[v26] = v38;
  v30 = &v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v30 = v28;
  *(v30 + 1) = v23;
  v31 = v29;
  v32 = a1;
  v33 = v31;

  sub_100022960(0, 0, v36, v40, v27);

  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_10001A8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = *(*(sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670) - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v8[8] = swift_task_alloc();

  return _swift_task_switch(sub_10001A974, 0, 0);
}

uint64_t sub_10001A974()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_conduit);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_10001AA1C;
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];

  return sub_10005E644(v3, v4, v5);
}

uint64_t sub_10001AA1C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_10001AC14;
  }

  else
  {
    v3 = sub_10001AB30;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001AB30()
{
  v1 = v0[8];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_1000E0D68();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v3(v1, 0);
  v5 = v0[7];
  sub_1000033C8(v0[8], &unk_10011F0C0, &qword_1000F1670);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10001AC14()
{
  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_1000E0D68();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  swift_errorRetain();
  v4(v2, v1);

  v6 = v0[8];
  sub_1000033C8(v0[7], &unk_10011F0C0, &qword_1000F1670);

  v7 = v0[1];

  return v7();
}

void sub_10001AEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  sub_10000CB64(a1, &v14 - v8, &unk_10011F0C0, &qword_1000F1670);
  v10 = sub_1000E0D68();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    isa = sub_1000E0D18().super.isa;
    (*(v11 + 8))(v9, v10);
  }

  if (a2)
  {
    v13 = sub_1000E0BD8();
  }

  else
  {
    v13 = 0;
  }

  (*(a3 + 16))(a3, isa, v13);
}

id sub_10001B050(void *a1)
{
  result = [a1 respondsToSelector:"cancelSplitSessionApproval"];
  if (result)
  {

    return [a1 cancelSplitSessionApproval];
  }

  return result;
}

unint64_t sub_10001B11C()
{
  result = qword_10011EA20;
  if (!qword_10011EA20)
  {
    sub_1000E2118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EA20);
  }

  return result;
}

uint64_t sub_10001B174(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CAAC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001B1CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_10001A8C4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10001B2B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E0D68() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100002D64;

  return sub_10001A4E8(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t sub_10001B404()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_10001B500(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E0D68() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = *(v1 + v8 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100002D64;

  return sub_10001A2AC(a1, v9, v10, v12, v1 + v6, v11, v13, v14);
}

uint64_t sub_10001B654()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002E7C;

  return sub_10001A080(v2, v3);
}

uint64_t sub_10001B700(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100002D64;

  return v7();
}

uint64_t sub_10001B7E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100002D64;

  return sub_10001B700(v2, v3, v5);
}

uint64_t sub_10001B8A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100002E7C;

  return v8();
}

uint64_t sub_10001B990()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001B9D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10001B8A8(a1, v4, v5, v7);
}

uint64_t sub_10001BA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10000CB64(a3, v25 - v11, &unk_10011EA50, &qword_1000F0D30);
  v13 = sub_1000E2538();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000033C8(v12, &unk_10011EA50, &qword_1000F0D30);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1000E2528();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1000E24B8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1000E2378() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);

    return v23;
  }

LABEL_8:
  sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10001BD98(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002D64;

  return sub_1000042BC(a1, v5);
}

uint64_t sub_10001BE50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002E7C;

  return sub_10001983C(a1, v4);
}

uint64_t sub_10001BEF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_100019128(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10001BFC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001C014(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_100018E14(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10001C0E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E0D68() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100002D64;

  return sub_100018874(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_10001C24C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_100018414(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10001C328(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_10001806C(a1, v4, v5, v6, v7, v8);
}

id sub_10001C3F0(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}