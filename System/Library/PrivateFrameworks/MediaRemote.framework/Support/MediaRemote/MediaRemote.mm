void sub_100003360(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutMonitor:v9 didUpdateDisplayLayout:v8 withContext:v7];
}

uint64_t sub_1000038A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1001BC5A8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003904(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A520;

  return v7(a1);
}

uint64_t sub_1000039FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009F30;

  return sub_100004B0C(a1, v4, v5, v7);
}

uint64_t sub_100003AC8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10000A19C;

  return sub_100003C4C(v5);
}

uint64_t sub_100003BFC(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_100003C4C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(sub_1001BC5A8(&qword_100527B38, &qword_100459DE8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for IRMBBundle();
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v6 = *(v5 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000043E8, 0, 0);
}

uint64_t sub_100003D98(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100003DE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F30;

  return sub_100003EA4(v2, v3, v5);
}

uint64_t sub_100003EA4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100009F30;

  return v7();
}

uint64_t sub_100003F8C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100005A9C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D0ED0;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  v18 = &_swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v17 + 8))(v4, v1);
  (*(v5 + 8))(v8, v16);
}

uint64_t sub_100004258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004268(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004278(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000042F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004308(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004318(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004328(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004338(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004348(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004358(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004368(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004378(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004388(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004398(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000043A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000043B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000043C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000043D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000043E8()
{
  v2 = v0[8];
  v1 = v0[9];
  static os_log_type_t.default.getter();
  v3 = sub_1000045DC();
  v0[21] = v3;
  v4 = *v3;
  v0[22] = sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10044EC70;
  v6 = *(v2 + 16);
  v0[23] = v6;
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = v6;
  v7 = v4;
  os_log(_:dso:log:_:_:)();

  v8 = (*((swift_isaMask & *v1) + 0x70))();
  sub_1000046C8(v8);
  v10 = v9;
  v0[24] = v9;
  v11 = async function pointer to static IRMBManager.mergeBundles(_:)[1];
  v12 = swift_task_alloc();
  v0[25] = v12;
  *v12 = v0;
  v12[1] = sub_100005B90;

  return static IRMBManager.mergeBundles(_:)(v10);
}

uint64_t *sub_1000045DC()
{
  if (qword_100529A38 != -1)
  {
    swift_once();
  }

  return &qword_100538358;
}

uint64_t sub_10000462C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001C2EC8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004674(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001C2EC8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000046C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100004E30();
  sub_100004DE8(&qword_100527BB8, 255, sub_100004E30);
  v3 = 0;
  v10[1] = Set.init(minimumCapacity:)();
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_1003583EC(v10, *(*(a1 + 56) + ((v8 << 9) | (8 * v9))));
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100004810(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004858(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000048A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000048E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000049C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004A54(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009F30;

  return sub_100003904(a1, v5);
}

uint64_t sub_100004B0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100009F34;

  return v8();
}

uint64_t sub_100004BF4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_100003AC8(v2, v3, v4);
}

void sub_100004DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100004DE8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100004E30()
{
  result = qword_100527BA0;
  if (!qword_100527BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100527BA0);
  }

  return result;
}

void sub_100004E7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v99 = *(v2 - 8);
  v3 = *(v99 + 64);
  (__chkstk_darwin)();
  v97 = &v84[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = type metadata accessor for DispatchQoS();
  v96 = *(v98 - 8);
  v5 = *(v96 + 64);
  (__chkstk_darwin)();
  v95 = &v84[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchTimeInterval();
  v92 = *(v7 - 8);
  v8 = *(v92 + 64);
  (__chkstk_darwin)();
  v10 = &v84[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = type metadata accessor for DispatchTime();
  v94 = *(v100 - 8);
  v11 = *(v94 + 64);
  v12 = (__chkstk_darwin)();
  v14 = &v84[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v93 = &v84[-v15];
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v84[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue;
  v22 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  *v20 = v22;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v20, v16);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v24 = [objc_opt_self() currentSettings];
  if (!v24)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = [v24 groupSessionNearbyBanner];

  if (v26)
  {
    v27 = &v1[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext];
    v28 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext];
    if (v28)
    {
      v30 = v27[2];
      v29 = v27[3];
      v20 = v27[1];
      sub_1003986B8(*&v1[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext], v20);
      v91 = v20;
      sub_1003985EC(v28, v20);
      if (v20)
      {
        if (v1[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners] == 1)
        {

          return;
        }

        v89 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners;
        v88 = v2;
        v31 = [objc_opt_self() sharedMonitor];
        v32 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
        if (!v32)
        {
          goto LABEL_36;
        }

        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        v37 = [v31 presentedBundleIdentifiers];
        v38 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v31;
        v39 = v38;

        v40 = sub_1001BD5E8(v34, v36, v39);
        v41 = v90;

        if (![v41 displayOn] || (objc_msgSend(v41, "lockScreenForegrounded") & 1) != 0 || (objc_msgSend(v41, "controlCenterForegrounded") & 1) != 0)
        {

          if (v40)
          {
            return;
          }

          goto LABEL_13;
        }

        if ((v40 & 1) == 0)
        {

LABEL_13:
          v1[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_shouldPresentBannerWhenAppropriate] = 1;
          return;
        }

        if (v1[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_shouldPresentBannerWhenAppropriate] != 1)
        {

LABEL_29:
          return;
        }

        v1[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_shouldPresentBannerWhenAppropriate] = 0;
        if (qword_100537500 == -1)
        {
LABEL_18:
          v42 = type metadata accessor for Logger();
          v43 = sub_100015AFC(v42, qword_100537508);
          v44 = Logger.logObject.getter();
          v45 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v86 = v46;
            v47 = swift_slowAlloc();
            v87 = v43;
            v48 = v47;
            aBlock = v47;
            *v46 = 136315138;
            v49 = _typeName(_:qualified:)();
            v85 = v45;
            v51 = sub_10002C9C8(v49, v50, &aBlock);

            v52 = v86;
            *(v86 + 1) = v51;
            _os_log_impl(&_mh_execute_header, v44, v85, "[%s] Begin banner suppression.", v52, 0xCu);
            sub_100026A44(v48);
          }

          *(v89 + v1) = 1;
          v53 = v91;
          v54 = Logger.logObject.getter();
          v55 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v91 = v54;
            v57 = v56;
            v87 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            aBlock = v89;
            *v57 = 136315394;
            v58 = _typeName(_:qualified:)();
            LODWORD(v86) = v55;
            v60 = v53;
            v61 = sub_10002C9C8(v58, v59, &aBlock);

            *(v57 + 4) = v61;
            v53 = v60;
            *(v57 + 12) = 2114;
            *(v57 + 14) = v60;
            v62 = v87;
            *v87 = v20;
            v63 = v60;
            v64 = v91;
            _os_log_impl(&_mh_execute_header, v91, v86, "[%s] Posting banner request: %{public}@", v57, 0x16u);
            sub_1001E4048(v62);

            sub_100026A44(v89);
          }

          else
          {
          }

          [*&v1[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_bannerCenter] postBannerRequest:v53];
          v65 = *&v1[v21];
          static DispatchTime.now()();
          v66 = [objc_opt_self() currentSettings];
          [v66 oneTapSuggestionInactiveTimeout];
          v68 = v67;
          v69 = v67;

          if ((*&v69 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v68 > -9.22337204e18)
          {
            v91 = v65;
            if (v68 < 9.22337204e18)
            {
              *v10 = v68;
              v70 = v92;
              (*(v92 + 104))(v10, enum case for DispatchTimeInterval.seconds(_:), v7);
              v71 = v93;
              + infix(_:_:)();
              (*(v70 + 8))(v10, v7);
              v94 = *(v94 + 8);
              (v94)(v14, v100);
              v72 = swift_allocObject();
              v72[2] = v1;
              v72[3] = v53;
              v72[4] = ObjectType;
              v107 = sub_10039870C;
              v108 = v72;
              aBlock = _NSConcreteStackBlock;
              v104 = 1107296256;
              ObjectType = &v105;
              v105 = sub_100003D98;
              v106 = &unk_1004D0CC8;
              v73 = _Block_copy(&aBlock);
              v74 = v53;
              v75 = v1;
              v76 = v95;
              static DispatchQoS.unspecified.getter();
              v102 = &_swiftEmptyArrayStorage;
              sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
              sub_1001BC5A8(&unk_100522280, &unk_10044F590);
              sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
              v77 = v97;
              v78 = v88;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v79 = v91;
              OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
              _Block_release(v73);

              (*(v99 + 8))(v77, v78);
              (*(v96 + 8))(v76, v98);
              (v94)(v71, v100);

              v80 = kMREventGroupSessionNearbyNotificationDisplayed;
              v81 = swift_allocObject();
              *(v81 + 16) = v74;
              v107 = sub_1003988F0;
              v108 = v81;
              aBlock = _NSConcreteStackBlock;
              v104 = 1107296256;
              v105 = sub_1001CDC04;
              v106 = &unk_1004D0D18;
              v82 = _Block_copy(&aBlock);
              v83 = v74;
              v41 = v80;

              MRAnalyticsSendEvent();

              _Block_release(v82);
              goto LABEL_29;
            }

            goto LABEL_34;
          }

          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_31:
        swift_once();
        goto LABEL_18;
      }
    }
  }
}

uint64_t sub_100005A20()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100005A60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005B90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v8 = *v2;
  v3[26] = a1;
  v3[27] = v1;

  if (v1)
  {
    v5 = sub_100357928;
  }

  else
  {
    v6 = v3[24];

    v5 = sub_100005CAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100005CAC()
{
  v1 = v0[26];
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v139 = v0 + 2;
  v5 = -1;
  v6 = -1 << *(v0[26] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v141 = v0[13];
  v146 = v0[26];

  v10 = 0;
  v142 = v0;
  v128 = v8;
  while (v7)
  {
LABEL_12:
    v14 = v0[20];
    v16 = v0[11];
    v15 = v0[12];
    v17 = v0[9];
    v132 = *(v141 + 72);
    (*(v141 + 16))(v14, *(v146 + 48) + v132 * (__clz(__rbit64(v7)) | (v10 << 6)), v15);
    v143 = IRMBBundle.bundleIdentifier.getter();
    v137 = v18;
    v19 = *(v141 + 32);
    v19(v16, v14, v15);
    v130 = *(v141 + 56);
    v130(v16, 0, 1, v15);
    v20 = (*((swift_isaMask & *v17) + 0xB0))(v139);
    v22 = v21;
    v134 = v19;
    if ((*(v141 + 48))(v16, 1, v15) == 1)
    {
      sub_1000038A4(v0[11], &qword_100527B38, &qword_100459DE8);
      v23 = v22;
      v24 = *v22;
      v25 = sub_10000698C(v143, v137);
      LOBYTE(v24) = v26;

      if (v24)
      {
        v27 = *v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v147 = *v23;
        *v23 = 0x8000000000000000;
        v8 = v128;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100006ABC();
        }

        v29 = v0[12];
        v30 = v0[10];
        v31 = *(*(v147 + 48) + 16 * v25 + 8);

        v134(v30, *(v147 + 56) + v25 * v132, v29);
        sub_1003590E0(v25, v147);
        v32 = *v23;
        *v23 = v147;

        v11 = 0;
      }

      else
      {
        v11 = 1;
        v8 = v128;
      }

      v12 = v0[10];
      v130(v12, v11, 1, v0[12]);
      sub_1000038A4(v12, &qword_100527B38, &qword_100459DE8);
      goto LABEL_6;
    }

    v129 = v20;
    v19(v0[19], v0[11], v0[12]);
    v33 = *v22;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v35 = v22;
    v36 = *v22;
    v148 = v36;
    v131 = v35;
    *v35 = 0x8000000000000000;
    v38 = sub_10000698C(v143, v137);
    v39 = v36[2];
    v40 = (v37 & 1) == 0;
    result = v39 + v40;
    if (__OFADD__(v39, v40))
    {
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      return result;
    }

    v41 = v37;
    if (v36[3] >= result)
    {
      v45 = v19;
      v44 = v142;
      if (v34)
      {
        goto LABEL_23;
      }

      sub_100006ABC();
    }

    else
    {
      sub_100358D60(result, v34);
      v42 = sub_10000698C(v143, v137);
      v44 = v142;
      if ((v41 & 1) != (v43 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v38 = v42;
    }

    v45 = v19;
LABEL_23:
    v46 = v44[19];
    v47 = v44[12];
    if (v41)
    {

      v48 = v148;
      (*(v141 + 40))(v148[7] + v38 * v132, v46, v47);
    }

    else
    {
      v48 = v148;
      v148[(v38 >> 6) + 8] |= 1 << v38;
      v49 = (v148[6] + 16 * v38);
      *v49 = v143;
      v49[1] = v137;
      result = v45(v148[7] + v38 * v132, v46, v47);
      v50 = v148[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_71;
      }

      v148[2] = v52;
    }

    v53 = *v131;
    *v131 = v48;

    v0 = v142;
    v8 = v128;
    v20 = v129;
LABEL_6:
    v7 &= v7 - 1;
    result = v20();
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_70;
    }

    if (v13 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_12;
    }
  }

  v54 = v0[26];
  v55 = v0[27];
  v56 = v0;
  v57 = v0[23];
  v58 = v56[8];

  v60 = sub_100008280(v59);

  v61 = sub_1000085E8(v54);
  v133 = sub_100008A1C(v61, v60);
  v56[28] = v133;

  v135 = sub_10000A070(&_swiftEmptyArrayStorage, &qword_100527BA8, &qword_100459F10);
  if (v57)
  {
    v62 = 0;
    v136 = v56[8] + 32;
    v140 = (v56[13] + 8);
    v63 = v56;
    while (1)
    {
      v65 = v63[26];
      v66 = (v136 + 16 * v62);
      v67 = v66[1];
      v144 = *v66;
      v138 = v62 + 1;
      v68 = -1 << *(v146 + 32);
      if (-v68 < 64)
      {
        v69 = ~(-1 << -v68);
      }

      else
      {
        v69 = -1;
      }

      v70 = v69 & *(v146 + 56);
      v71 = (63 - v68) >> 6;

      v72 = 0;
      if (v70)
      {
        while (1)
        {
          v73 = v72;
LABEL_41:
          v75 = v63[15];
          v74 = v63[16];
          v76 = v63[12];
          v77 = *(v141 + 16);
          v77(v74, *(v146 + 48) + *(v141 + 72) * (__clz(__rbit64(v70)) | (v73 << 6)), v76);
          v78 = *(v141 + 32);
          v78(v75, v74, v76);
          if (IRMBBundle.bundleIdentifier.getter() == v144 && v79 == v67)
          {
            v82 = v142;
            v83 = v142[26];

            goto LABEL_50;
          }

          v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v81)
          {
            break;
          }

          v70 &= v70 - 1;
          v63 = v142;
          (*v140)(v142[15], v142[12]);
          v72 = v73;
          if (!v70)
          {
            goto LABEL_38;
          }
        }

        v82 = v142;
        v84 = v142[26];
LABEL_50:

        v85 = v82[17];
        v86 = v82[18];
        v87 = v82[14];
        v88 = v82[12];
        v78(v85, v82[15], v88);
        v78(v86, v85, v88);
        v77(v87, v86, v88);
        v89 = objc_allocWithZone(type metadata accessor for MRDBundleMediaRecommendationEligibility());
        v90 = sub_100008EC8(v87);
        v91 = swift_isUniquelyReferenced_nonNull_native();
        sub_100007DE8(v90, v144, v67, v91);

        (*v140)(v86, v88);
        v63 = v82;
      }

      else
      {
        while (1)
        {
LABEL_38:
          v73 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            __break(1u);
            goto LABEL_63;
          }

          if (v73 >= v71)
          {
            break;
          }

          v70 = *(v3 + 8 * v73);
          ++v72;
          if (v70)
          {
            goto LABEL_41;
          }
        }

        v64 = v63[26];
      }

      v62 = v138;
      if (v138 == v63[23])
      {
        goto LABEL_52;
      }
    }
  }

  v63 = v56;
LABEL_52:
  v92 = v63[26];
  v93 = v63[22];
  v94 = v142[21];

  static os_log_type_t.default.getter();
  v95 = *v94;
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_10044EC70;
  v97 = v133[2];
  *(v96 + 56) = &type metadata for Int;
  *(v96 + 64) = &protocol witness table for Int;
  *(v96 + 32) = v97;
  v98 = v95;
  v63 = v142;
  v99 = v98;
  os_log(_:dso:log:_:_:)();

  v100 = *(v133 + 32);
  *(v142 + 304) = v100;
  v101 = -1;
  v102 = -1 << v100;
  v103 = v133[7];
  if (-v102 < 64)
  {
    v101 = ~(-1 << -v102);
  }

  v142[29] = v135;
  v142[30] = v135;
  v104 = v101 & v103;
  if (v104)
  {
    v105 = 0;
    v106 = v142[28];
LABEL_59:
    v142[31] = v104;
    v142[32] = v105;
    v109 = v142[9];
    v110 = (*(v106 + 48) + ((v105 << 10) | (16 * __clz(__rbit64(v104)))));
    v111 = *v110;
    v142[33] = *v110;
    v112 = v110[1];
    v142[34] = v112;
    v113 = *((swift_isaMask & *v109) + 0xC8);

    v145 = (v113 + *v113);
    v114 = v113[1];
    v115 = swift_task_alloc();
    v142[35] = v115;
    *v115 = v142;
    v115[1] = sub_100009040;
    v116 = v142[9];

    return v145(v111, v112);
  }

  else
  {
    v107 = 0;
    v108 = ((63 - v102) >> 6) - 1;
    v106 = v142[28];
    while (v108 != v107)
    {
      v105 = v107 + 1;
      v104 = *(v106 + 8 * v107++ + 64);
      if (v104)
      {
        goto LABEL_59;
      }
    }

LABEL_63:
    v117 = v63[19];
    v118 = v63[20];
    v120 = v63[17];
    v119 = v63[18];
    v122 = v63[15];
    v121 = v63[16];
    v123 = v63[14];
    v125 = v63[10];
    v124 = v63[11];

    v126 = v63[1];
    v127 = v63[30];

    return v126(v127);
  }
}

uint64_t (*sub_1000067CC(void *a1))(int8x16_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR___MRDMediaBundleManager_mediaBundlesLock);
  a1[1] = v1;
  a1[2] = v3;
  os_unfair_lock_lock(v3 + 4);
  sub_100006870(&v5);
  a1[3] = 0;
  os_unfair_lock_unlock(v3 + 4);
  *a1 = v5;
  return sub_100006D3C;
}

uint64_t sub_1000068A0@<X0>(uint64_t *a1@<X8>)
{
  result = (*((swift_isaMask & **(v1 + 16)) + 0x88))();
  *a1 = result;
  return result;
}

void *sub_100006924@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

unint64_t sub_10000698C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100006A04(a1, a2, v6);
}

unint64_t sub_100006A04(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_100006ABC()
{
  v1 = v0;
  v36 = type metadata accessor for IRMBBundle();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001BC5A8(&qword_100527BB0, &qword_100459F18);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100006D3C(int8x16_t *a1, char a2)
{
  v5 = vextq_s8(*a1, *a1, 8uLL);
  v3 = a1[1].i64[0];
  v2 = a1[1].i64[1];
  if (a2)
  {

    os_unfair_lock_lock(v3 + 4);
    sub_100006E8C();
    os_unfair_lock_unlock(v3 + 4);
  }

  else
  {
    os_unfair_lock_lock(v3 + 4);
    sub_100006E8C();
    os_unfair_lock_unlock(v3 + 4);
  }
}

uint64_t sub_100006E20()
{
  v1 = *(v0 + 24);
  v2 = *((swift_isaMask & **(v0 + 16)) + 0x90);

  return v2(v3);
}

uint64_t sub_100006EA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100006EFC(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDMediaBundleManager__mediaBundles;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_100006F54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    [*(a1 + 32) _clientDidOpenConnection:v3];
  }

  else if (v3 == &_xpc_error_connection_invalid)
  {
    string = xpc_dictionary_get_string(&_xpc_error_connection_invalid, _xpc_error_key_description);
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = string;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "XPC Error: %s", &v7, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v4);
}

id sub_100007074(_OWORD *a1)
{
  v2 = a1[1];
  *v10.val = *a1;
  *&v10.val[4] = v2;
  v3 = audit_token_to_pid(&v10);
  if (v3 == getpid())
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 bundleIdentifier];
  }

  else
  {
    v6 = a1[1];
    *v10.val = *a1;
    *&v10.val[4] = v6;
    v5 = MSVBundleIDForAuditToken();
    if (!v5)
    {
      v7 = xpc_copy_code_signing_identity_for_token();
      if (v7)
      {
        v8 = v7;
        v5 = [[NSString alloc] initWithUTF8String:v7];
        free(v8);
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
}

void sub_100007444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100007470(uint64_t a1)
{
  result = [*(a1 + 32) _isACriticalSectionActive];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_10000765C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 128) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

void sub_10000778C(uint64_t a1)
{
  v9 = [*(*(a1 + 32) + 128) mutableCopy];
  v2 = [NSNumber numberWithInt:getpid()];
  v3 = [v9 objectForKey:v2];

  if (v3)
  {
    v4 = [NSNumber numberWithInt:getpid()];
    [v9 removeObjectForKey:v4];
  }

  v5 = [v9 allValues];
  v6 = [v5 mutableCopy];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v3)
  {
    [*(*(*(a1 + 40) + 8) + 40) insertObject:v3 atIndex:0];
  }
}

void sub_100007A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100007A58(uint64_t a1)
{
  *(*(a1 + 32) + 112) = 0;
  v2 = [NSArray arrayWithArray:*(*(a1 + 32) + 120)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 120);

  return [v5 removeAllObjects];
}

uint64_t sub_100007AC4(void *a1)
{
  v1 = a1;
  v2 = [v1 entitlements];
  v3 = [v1 bundleIdentifier];
  if (MRBundlePermittedForGroupSessions())
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 bundleIdentifier];
    v4 = [v5 isEqualToString:@"com.apple.MusicUIService"];
  }

  return (v4 | (v2 >> 12)) & 1;
}

uint64_t sub_100007BC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1001BC5A8(&qword_100521B10, &unk_100450000);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_100007DE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000698C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100009C8C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000698C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1003594FC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

void sub_100008050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008068(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_1000080B4(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = xpc_dictionary_get_remote_connection(v5);
  if (v7)
  {
    reply = xpc_dictionary_create_reply(v5);
    if (reply)
    {
      if (v6)
      {
        v6[2](v6, reply);
      }

      xpc_connection_send_message(v7, reply);
      v9 = 1;
    }

    else
    {
      if (a3)
      {
        v14 = NSLocalizedDescriptionKey;
        v15 = @"A reply object could not be created.";
        v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
        *a3 = [NSError errorWithDomain:@"MRDMediaRemoteDaemonErrorDomain" code:1 userInfo:v10];
      }

      v9 = 0;
    }
  }

  else
  {
    if (!a3)
    {
      v9 = 0;
      goto LABEL_12;
    }

    v12 = NSLocalizedDescriptionKey;
    v13 = @"A reply connection could not be obtained.";
    reply = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [NSError errorWithDomain:@"MRDMediaRemoteDaemonErrorDomain" code:1 userInfo:reply];
    *a3 = v9 = 0;
  }

LABEL_12:
  return v9;
}

uint64_t sub_100008280(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100008318(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100008318(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100008468(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_100008468(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10001F384(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1001C0118();
      goto LABEL_16;
    }

    sub_10001BFA8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1000085E8(uint64_t a1)
{
  v37 = type metadata accessor for IRMBBundle();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v29 = v1;
    v41 = &_swiftEmptyArrayStorage;
    sub_1000089FC(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = IRMBBundle.bundleIdentifier.getter();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = v40[2];
      v19 = v40[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_1000089FC((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      *(v21 + 4) = v39;
      *(v21 + 5) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_10000A16C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_10000A16C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

char *sub_1000088F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000089FC(char *a1, int64_t a2, char a3)
{
  result = sub_1000088F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t *sub_100008A1C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v59[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v50 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v55 = v4;
  v56 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v53 = v5 + 1;
    v11 = *(v2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v53;
    if (v53 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v56;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v59[1] = v53;

  v22 = *(v2 + 32);
  v51 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v51;
  v24 = v56;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v44 = v23;

  v45 = v44;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v52 = &v49;
    __chkstk_darwin(v21);
    v14 = &v49 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v58 = v7;
    memcpy(v14, v7, v25);
    v57 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v54 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v55;
    v7 = *(v55 + 16);
    v30 = v53;
    while (1)
    {
      v53 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_100007BC4(v54, v51, v53, v57);
LABEL_42:

        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v57;
        v34 = *(v57 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v35 = Hasher._finalize()();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v58[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v56;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v58[v37 >> 6]) == 0)
          {
            v29 = v55;
            goto LABEL_37;
          }

          v42 = (*(v57 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v55;
      v31 = v54[v14];
      v54[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v53 - 1;
      v24 = v56;
      if (__OFSUB__(v53, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v53 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v46 = swift_slowAlloc();
  memcpy(v46, v7, v45);
  v47 = v50;
  v48 = sub_100358B7C(v46, v51, v2, v14, v59);

  if (!v47)
  {

    return v48;
  }

  __break(1u);
  return result;
}

id sub_100008EC8(uint64_t a1)
{
  v2 = v1;
  v4 = IRMBBundle.bundleIdentifier.getter();
  v5 = &v2[OBJC_IVAR___MRDBundleMediaRecommendationEligibility_bundleIdentifier];
  *v5 = v4;
  v5[1] = v6;
  v2[OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForOneTapSuggestion] = IRMBBundle.isEligibleForOneTapSuggestion.getter() & 1;
  v2[OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForAutoRoute] = IRMBBundle.isEligibleForAutoRoute.getter() & 1;
  v2[OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForCallToAction] = IRMBBundle.isEligibleForCallToAction.getter() & 1;
  *&v2[OBJC_IVAR___MRDBundleMediaRecommendationEligibility_mediaType] = IRMBBundle.mediaType.getter();
  v7 = type metadata accessor for IRMBBundle();
  v14 = v7;
  sub_1001BC5A8(&qword_100527B08, &qword_100459DE0);
  v8 = String.init<A>(describing:)();
  v9 = &v2[OBJC_IVAR___MRDBundleMediaRecommendationEligibility_source];
  *v9 = v8;
  v9[1] = v10;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for MRDBundleMediaRecommendationEligibility();
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(*(v7 - 8) + 8))(a1, v7);
  return v11;
}

unint64_t sub_100008FEC()
{
  result = qword_1005274B0;
  if (!qword_1005274B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005274B0);
  }

  return result;
}

uint64_t sub_100009040(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v7 = v4[34];
    v8 = v4[30];

    v9 = sub_100357A04;
  }

  else
  {
    v4[37] = a1;
    v9 = sub_10000917C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10000917C()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  if (!v1)
  {
    v18 = *(v0 + 240);
    v5 = sub_10000698C(*(v0 + 264), *(v0 + 272));
    LOBYTE(v18) = v19;

    if ((v18 & 1) == 0)
    {
      v27 = *(v0 + 256);
      v28 = (*(v0 + 248) - 1) & *(v0 + 248);
      if (!v28)
      {
        goto LABEL_15;
      }

LABEL_28:
      v7 = *(v0 + 224);
LABEL_29:
      *(v0 + 248) = v28;
      *(v0 + 256) = v27;
      v46 = *(v0 + 72);
      v47 = (*(v7 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v28)))));
      v48 = *v47;
      *(v0 + 264) = *v47;
      v49 = v47[1];
      *(v0 + 272) = v49;
      v50 = *((swift_isaMask & *v46) + 0xC8);

      v54 = (v50 + *v50);
      v51 = v50[1];
      v52 = swift_task_alloc();
      *(v0 + 280) = v52;
      *v52 = v0;
      v52[1] = sub_100009040;
      v53 = *(v0 + 72);

      return v54(v48, v49);
    }

    v20 = (v0 + 232);
    v2 = *(v0 + 232);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 48) = v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

  v4 = *(v0 + 232);
  v5 = v1;
  v6 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 56) = v4;
  v7 = sub_10000698C(v3, v2);
  v9 = *(v4 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v2) = v8;
  if (*(*(v0 + 232) + 24) >= v12)
  {
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_24:
    v41 = v7;
    sub_1003594FC();
    v7 = v41;
    v24 = *(v0 + 272);
    if (v2)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  v14 = *(v0 + 264);
  v13 = *(v0 + 272);
  sub_100009C8C(v12, v6);
  v15 = *(v0 + 56);
  v7 = sub_10000698C(v14, v13);
  if ((v2 & 1) != (v16 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_12:
  v24 = *(v0 + 272);
  if (v2)
  {
LABEL_13:
    v2 = v7;

    v22 = *(v0 + 56);
    v25 = v22[7];
    v26 = *(v25 + 8 * v2);
    *(v25 + 8 * v2) = v5;

    goto LABEL_27;
  }

LABEL_25:
  v42 = *(v0 + 264);
  v22 = *(v0 + 56);
  v22[(v7 >> 6) + 8] |= 1 << v7;
  v43 = (v22[6] + 16 * v7);
  *v43 = v42;
  v43[1] = v24;
  *(v22[7] + 8 * v7) = v5;

  v44 = v22[2];
  v11 = __OFADD__(v44, 1);
  v45 = v44 + 1;
  if (v11)
  {
    __break(1u);
LABEL_33:
    v20 = (v0 + 48);
    sub_1003594FC();
LABEL_10:
    v22 = *v20;
    v23 = *(v22[6] + 16 * v5 + 8);

    v7 = sub_1001DEE44(v5, v22);
    goto LABEL_27;
  }

  v22[2] = v45;
LABEL_27:
  v27 = *(v0 + 256);
  v28 = (*(v0 + 248) - 1) & *(v0 + 248);
  *(v0 + 232) = v22;
  *(v0 + 240) = v22;
  if (v28)
  {
    goto LABEL_28;
  }

  while (1)
  {
LABEL_15:
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(v0 + 224);
    if (v29 >= (((1 << *(v0 + 304)) + 63) >> 6))
    {
      break;
    }

    v28 = *(v7 + 8 * v29 + 56);
    ++v27;
    if (v28)
    {
      v27 = v29;
      goto LABEL_29;
    }
  }

  v30 = *(v0 + 152);
  v31 = *(v0 + 160);
  v33 = *(v0 + 136);
  v32 = *(v0 + 144);
  v35 = *(v0 + 120);
  v34 = *(v0 + 128);
  v36 = *(v0 + 112);
  v38 = *(v0 + 80);
  v37 = *(v0 + 88);

  v39 = *(v0 + 8);
  v40 = *(v0 + 240);

  return v39(v40);
}

uint64_t sub_1000095F4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(sub_1001BC5A8(&qword_100527B38, &qword_100459DE8) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for IRMBBundle();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100009714, 0, 0);
}

uint64_t sub_100009714()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  (*((swift_isaMask & **(v0 + 64)) + 0xD8))(*(v0 + 48), *(v0 + 56));
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    sub_1000038A4(*(v0 + 80), &qword_100527B38, &qword_100459DE8);
    v7 = (*((swift_isaMask & *v4) + 0xD0))(v6, v5);
    *(v0 + 128) = v7;
    v8 = async function pointer to static IRMBManager.query(_:priorBundle:)[1];
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_100357CB8;
    v10 = *(v0 + 104);
    v11 = *(v0 + 48);
    v12 = *(v0 + 56);

    return static IRMBManager.query(_:priorBundle:)(v10, v11, v12, v7);
  }

  else
  {
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 48);
    v17 = *(v0 + 56);
    (*(v16 + 32))(v13, *(v0 + 80), v15);
    (*(v16 + 16))(v14, v13, v15);
    v19 = type metadata accessor for MRDBundleMediaRecommendationEligibility();
    v20 = objc_allocWithZone(v19);
    v21 = sub_100008EC8(v14);
    static os_log_type_t.default.getter();
    v22 = *sub_1000045DC();
    sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100450890;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100008FEC();
    *(v23 + 32) = v18;
    *(v23 + 40) = v17;
    *(v23 + 96) = v19;
    *(v23 + 104) = sub_100004DE8(&qword_100527B40, v24, type metadata accessor for MRDBundleMediaRecommendationEligibility);
    *(v23 + 72) = v21;
    v25 = v22;

    v26 = v21;
    os_log(_:dso:log:_:_:)();

    (*(v16 + 8))(v13, v15);
    v28 = *(v0 + 112);
    v27 = *(v0 + 120);
    v29 = *(v0 + 104);
    v31 = *(v0 + 72);
    v30 = *(v0 + 80);

    v32 = *(v0 + 8);

    return v32(v26);
  }
}

uint64_t sub_100009A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (*((swift_isaMask & *v3) + 0xA0))();
  if (*(v7 + 16) && (v8 = sub_10000698C(a1, a2), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for IRMBBundle();
    v19 = *(v12 - 8);
    (*(v19 + 16))(a3, v11 + *(v19 + 72) * v10, v12);

    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {

    v17 = type metadata accessor for IRMBBundle();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_100009C10()
{
  v1 = *(v0 + OBJC_IVAR___MRDMediaBundleManager_mediaBundlesLock);
  os_unfair_lock_lock(v1 + 4);
  sub_100006968(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_100009C8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100527BA8, &qword_100459F10);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100009F34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000A028()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10000A070(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1001BC5A8(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10000698C(v7, v8);
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

uint64_t sub_10000A16C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10000A19C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    type metadata accessor for MRDBundleMediaRecommendationEligibility();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v10 = isa;
    v9 = 0;
    v8 = isa;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_10000A3E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A428()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_10000A680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A79C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000A89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float sub_10000A8B4(uint64_t a1)
{
  result = *(*(a1 + 32) + 36);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10000A974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000AAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000AD28(int a1)
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 processIdentifier];

  if (v3 == a1)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 bundleIdentifier];
  }

  else
  {
    v6 = +[MRDMediaRemoteServer server];
    v7 = [v6 allClients];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v7;
    v8 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if ([v12 pid] == a1)
          {
            v13 = [v12 bundleIdentifier];
            v14 = [v13 length];

            if (v14)
            {
              v5 = [v12 bundleIdentifier];
              goto LABEL_14;
            }
          }
        }

        v9 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_14:
  }

  return v5;
}

id sub_10000AEF0(int a1)
{
  v2 = +[NSProcessInfo processInfo];
  v3 = [v2 processIdentifier];

  if (v3 == a1)
  {

    return getuid();
  }

  else
  {
    v5 = +[MRDMediaRemoteServer server];
    v6 = [v5 allClients];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          if ([v12 pid] == a1)
          {
            v14 = [v12 connection];
            v13 = [v14 uid];

            goto LABEL_15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_15:

    return v13;
  }
}

id sub_10000B294(uint64_t a1)
{
  v2 = sub_10000AD28(a1);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [[NSString alloc] initWithFormat:@"FallbackIdentifier-%d", a1];
  }

  v5 = v4;

  return v5;
}

void sub_10000B3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B414(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10000B460(uint64_t a1)
{
  [*(a1 + 32) _onQueue_pushState];
  [*(a1 + 32) _onQueue_initializeDisplayName];
  v2 = *(a1 + 32);

  return [v2 _onQueue_popState];
}

id sub_10000B698(uint64_t a1)
{
  v1 = [LSApplicationProxy applicationProxyForIdentifier:a1];
  v2 = [v1 localizedName];
  v3 = [v2 copy];

  return v3;
}

uint64_t sub_10000BEE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000BF54;
  v6[3] = &unk_1004C0B88;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  return sub_1000080B4(a1, v6, a5);
}

void sub_10000BF54(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  xdict = v3;
  if (xdict)
  {
    if (v5 > 2)
    {
      if ((v5 - 4) >= 2)
      {
        if (v5 == 3 && v6)
        {
          xpc_dictionary_set_string(xdict, v4, v6);
        }
      }

      else
      {
        xpc_dictionary_set_double(xdict, v4, *&v6);
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        xpc_dictionary_set_uint64(xdict, v4, v6);
      }

      else if (v5 == 2)
      {
        xpc_dictionary_set_BOOL(xdict, v4, v6 & 1);
      }
    }

    else
    {
      xpc_dictionary_set_int64(xdict, v4, v6);
    }
  }
}

void sub_10000C228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C3C4(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_playbackState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000C588(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 mediaApplicationsInFocus:*(a1 + 40)];
  }
}

void sub_10000C6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000CBD8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001BC5A8(&qword_100527B38, &qword_100459DE8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for IRMBBundle();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  (*((swift_isaMask & *v2) + 0xD8))(a1, a2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000038A4(v8, &qword_100527B38, &qword_100459DE8);
    v17 = type metadata accessor for MRDBundleMediaRecommendationEligibility();
    v18 = objc_allocWithZone(v17);
    v19 = &v18[OBJC_IVAR___MRDBundleMediaRecommendationEligibility_bundleIdentifier];
    *v19 = a1;
    v19[1] = a2;
    v18[OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForOneTapSuggestion] = 0;
    v18[OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForAutoRoute] = 0;
    v18[OBJC_IVAR___MRDBundleMediaRecommendationEligibility_isEligibleForCallToAction] = 0;
    *&v18[OBJC_IVAR___MRDBundleMediaRecommendationEligibility_mediaType] = 0;
    v20 = &v18[OBJC_IVAR___MRDBundleMediaRecommendationEligibility_source];
    *v20 = 0x696D206568636163;
    v20[1] = 0xEA00000000007373;
    v24.receiver = v18;
    v24.super_class = v17;

    return objc_msgSendSuper2(&v24, "init");
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    (*(v10 + 16))(v14, v16, v9);
    v22 = objc_allocWithZone(type metadata accessor for MRDBundleMediaRecommendationEligibility());
    v23 = sub_100008EC8(v14);
    (*(v10 + 8))(v16, v9);
    return v23;
  }
}

uint64_t sub_10000CE98()
{
  if (qword_1005296E8 != -1)
  {
    sub_1003B05D4();
  }

  return byte_1005296F0;
}

void sub_10000CFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D0E0(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 32) client];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000D24C(uint64_t a1)
{
  v2 = [*(a1 + 32) activePlayerClient];
  v3 = [v2 isPlaying];
  v4 = [v2 playerPath];
  v5 = [v4 skeleton];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [*(a1 + 32) localOriginClient];
  v7 = [v6 activePlayerClients];

  v8 = [v7 countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    LOBYTE(IsAdvancing) = 0;
    v11 = *v34;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v7);
        }

        if (IsAdvancing)
        {
          IsAdvancing = 1;
        }

        else
        {
          [*(*(&v33 + 1) + 8 * i) playbackState];
          IsAdvancing = MRMediaRemotePlaybackStateIsAdvancing();
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v9);
  }

  else
  {
    IsAdvancing = 0;
  }

  if (qword_100529498 != -1)
  {
    sub_1003A9B2C();
  }

  if (byte_100529470 != v3)
  {
    v13 = _MRLogForCategory();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    v15 = kMRNowPlayingAppIsPlayingDidChangeDistributedNotificationName;
    if (v14)
    {
      v16 = @"Not Playing";
      if (v3)
      {
        v16 = @"Playing";
      }

      *buf = 138412546;
      v38 = kMRNowPlayingAppIsPlayingDidChangeDistributedNotificationName;
      v39 = 2112;
      v40 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Posting %@ with <%@>", buf, 0x16u);
    }

    notify_post([v15 UTF8String]);
    dispatch_async(qword_100529490, &stru_1004BDFC0);
  }

  v17 = qword_100529478;
  v18 = v17;
  if (v17 != v5)
  {
    v19 = [v17 isEqual:v5];

    if (v19)
    {
      goto LABEL_27;
    }

    v20 = _MRLogForCategory();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    v22 = kMRNowPlayingActivePlayerPathDidChangeDistributedNotificationName;
    if (v21)
    {
      *buf = 138412802;
      v38 = kMRNowPlayingActivePlayerPathDidChangeDistributedNotificationName;
      v39 = 2114;
      v40 = qword_100529478;
      v41 = 2114;
      v42 = v5;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Posting %@ because activePlayerPath changed from <%{public}@> to <%{public}@>", buf, 0x20u);
    }

    notify_post([v22 UTF8String]);
    v23 = qword_100529490;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012CA5C;
    block[3] = &unk_1004B6D08;
    v32 = v5;
    dispatch_async(v23, block);
    v18 = v32;
  }

LABEL_27:
  if (byte_100529480 != IsAdvancing)
  {
    v24 = _MRLogForCategory();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    v26 = kMRNowPlayingActivePlayersIsPlayingDidChangeDistributedNotificationName;
    if (v25)
    {
      v27 = @"Not Playing";
      if (IsAdvancing)
      {
        v27 = @"Playing";
      }

      *buf = 138412546;
      v38 = kMRNowPlayingActivePlayersIsPlayingDidChangeDistributedNotificationName;
      v39 = 2112;
      v40 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Posting %@ with <%@>", buf, 0x16u);
    }

    notify_post([v26 UTF8String]);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10012CAC0;
    v29[3] = &unk_1004BDFE0;
    v30 = IsAdvancing;
    dispatch_async(qword_100529490, v29);
  }

  byte_100529470 = v3;
  v28 = qword_100529478;
  qword_100529478 = v5;

  byte_100529480 = IsAdvancing;
}

void sub_10000D818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000D830(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000D974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000DA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000DA64(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000E004(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 32) || [*(v2 + 16) count])
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) _onQueue_isPlaying];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10000E104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000E9DC()
{
  if (qword_100529538 != -1)
  {
    sub_1003AA74C();
  }

  v1 = qword_100529540;

  return v1;
}

void sub_10000EFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000F43C(uint64_t a1)
{
  if (*(*(a1 + 32) + 64))
  {
    [*(a1 + 40) addObject:?];
  }

  v2 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v3 = [[MRClient alloc] initWithProcessIdentifier:0 bundleIdentifier:v2];
  v4 = [*(a1 + 32) existingNowPlayingClientForClient:v3];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(*(a1 + 32) + 16);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 40) addObject:{*(*(&v10 + 1) + 8 * v9), v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void sub_10000F6E8(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_activeOriginClient];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000F824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000F940(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10000F994(uint64_t a1)
{
  v2 = [*(a1 + 32) _playerPathForNowPlayingClient:*(*(a1 + 32) + 64)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t sub_10000F9E4(void *a1, unsigned int a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000BF54;
  v3[3] = &unk_1004C0B88;
  v3[4] = "MRXPC_ERROR_CODE_KEY";
  v3[5] = 1;
  v3[6] = a2;
  return sub_1000080B4(a1, v3, 0);
}

id sub_10000FE74(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [*(a1 + 32) nowPlayingClients];
  v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v15 = *v21;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v6 = [v5 playerClients];
        v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v17;
          do
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v17 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v16 + 1) + 8 * j);
              if ([v5 canBeNowPlayingForPlayerClient:v11])
              {
                v12 = [v11 snapshotForIsPlaying:1];

                if (v12)
                {
                  [*(a1 + 40) addObject:v11];
                }
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v8);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v3);
  }

  return [*(a1 + 40) sortUsingComparator:&stru_1004BC368];
}

void sub_100010108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001023C(uint64_t a1)
{
  v2 = [*(a1 + 32) _onQueue_activePlayerClient];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000109A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100010BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100011500(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allObjects];
  v3 = [v2 copy];

  v4 = +[NSMutableSet set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 discoveryMode];
        if (v12 <= v8)
        {
          if (v12 == v8)
          {
            [v4 addObject:v11];
          }
        }

        else
        {
          v13 = v12;
          v14 = [NSMutableSet setWithObject:v11];

          v4 = v14;
          v8 = v13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v7);

    if (v8)
    {
      [*(a1 + 32) _onQueue_reloadOutputDevices];
      [*(a1 + 32) _onQueue_reloadEndpoints];
    }
  }

  else
  {

    v8 = 0;
  }

  if ([*(*(a1 + 32) + 120) endpointFeatures] == 8)
  {
    v15 = +[MRSharedSettings currentSettings];
    v16 = [v15 supportNanoStandalone];

    if ((v16 & 1) == 0 && v8 == 3)
    {
      v17 = [v5 msv_filter:&stru_1004BD740];
      [v4 addObjectsFromArray:v17];

      v8 = 2;
    }
  }

  v18 = [v4 msv_compactMap:&stru_1004BD780];
  v19 = [NSSet setWithArray:v18];

  if (v8 != [*(*(a1 + 32) + 120) discoveryMode] || (objc_msgSend(*(*(a1 + 32) + 120), "lastReportedClientIdentifiers"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "isEqualToSet:", v20), v20, (v21 & 1) == 0))
  {
    v22 = _MRLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
      v24 = [v4 msv_map:&stru_1004BD7A0];
      *buf = 138543618;
      v30 = v23;
      v31 = 2114;
      v32 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[HostedRoutingController] Updating shared discovery session discovery mode to %{public}@ for: %{public}@", buf, 0x16u);
    }

    [*(*(a1 + 32) + 120) setDiscoveryMode:v8 forClientIdentifiers:v19];
  }
}

NSString *__cdecl sub_100011A30(id a1, MRDAVHostedRoutingObserver *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = [(MRDAVHostedRoutingObserver *)v2 clientIdentifier];
  [(MRDAVHostedRoutingObserver *)v2 discoveryMode];
  v5 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  v6 = [NSString stringWithFormat:@"<%@: %p> %@: %@", v3, v2, v4, v5];

  return v6;
}

void sub_100011E00(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v2 = _MRLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      *buf = 138543618;
      v24 = v3;
      v25 = 2114;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[HostedRoutingController] EndpointContainingLocal changed from %{public}@ to %{public}@", buf, 0x16u);
    }

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"MRDHostedRoutingControllerEndpointContainingLocalDidChangeNotification" object:*(a1 + 40)];
  }

  if (*(a1 + 97) == 1)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      *buf = 138543618;
      v24 = v7;
      v25 = 2114;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HostedRoutingController] NativeEndpoint changed from %{public}@ to %{public}@:", buf, 0x16u);
    }

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"MRDHostedRoutingControllerNativeEndpointDidChangeNotification" object:*(a1 + 56)];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 64);
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 hostedRoutingController:*(a1 + 72) availableEndpointsDidChange:{*(a1 + 80), v18}];
        }

        v16 = *(a1 + 72);
        v17 = [*(a1 + 88) copy];
        [v15 hostedRoutingController:v16 endpointsDidChange:v17];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }
}

void sub_1000122C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000122D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (!v3)
  {
    if (*(v2 + 24))
    {
      v4 = [MRCommandInfo commandInfosFromData:?];
      [*(a1 + 32) setSupportedRemoteControlCommands:v4];

      v3 = *(*(a1 + 32) + 16);
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = [v3 copy];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id sub_1000124E4(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMonitor];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setEffectiveDiscoveryMode:0];
}

void sub_100012544(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleAvailableOutputDevicesReload];
}

id sub_100012634(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  *(*(a1 + 32) + 12) = 0;
  objc_sync_exit(v2);

  v3 = *(a1 + 32);

  return [v3 _reloadOutputDevices];
}

void sub_100012DC0(uint64_t a1)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100012F3C;
  v10[3] = &unk_1004B9FE8;
  v10[4] = *(a1 + 32);
  v2 = objc_retainBlock(v10);
  v3 = (v2[2])();
  v4 = *(a1 + 32);
  if (*(v4 + 25) != v3)
  {
    v5 = v3;
    *(v4 + 25) = v3;
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"false";
      v8 = *(*(a1 + 32) + 32);
      if (v5)
      {
        v7 = @"true";
      }

      *buf = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] CanBeNowPlaying changed to %{public}@ for %{public}@", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
    [WeakRetained nowPlayingPlayerClient:*(a1 + 32) clientCanBeNowPlayingDidChange:*(*(a1 + 32) + 25)];
  }
}

uint64_t sub_100012F3C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 26) == 1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(v1 + 16);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          if ([*(*(&v9 + 1) + 8 * v6) canBeNowPlayingPlayer])
          {

            v7 = 1;
            return v7 & 1;
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = *(v1 + 24);
  }

  return v7 & 1;
}

void sub_100013378(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

unint64_t sub_100013424()
{
  result = qword_100521770;
  if (!qword_100521770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100521770);
  }

  return result;
}

uint64_t sub_100013FC0(void *a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = objc_opt_self();
    *&v23 = 0;
    v10 = a1;
    v11 = [v9 dataWithJSONObject:v8 options:0 error:&v23];
    v12 = v23;
    if (v11)
    {
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

LABEL_4:
      v16 = type metadata accessor for JSONDecoder();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      type metadata accessor for RouteRecommendationContext();
      sub_100390C08(&qword_100528D48, type metadata accessor for RouteRecommendationContext);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_1001C4034(v13, v15);

      return v23;
    }

LABEL_15:
    v21 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v23 = 0uLL;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
    if (*(&v23 + 1))
    {
      static String.Encoding.utf8.getter();
      v13 = String.data(using:allowLossyConversion:)();
      v15 = v19;
      v12 = (*(v3 + 8))(v6, v2);
      if (v15 >> 60 != 15)
      {

        goto LABEL_4;
      }

      __break(1u);
      goto LABEL_15;
    }
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v23 = xmmword_10045A7C0;
    static Data._conditionallyBridgeFromObjectiveC(_:result:)();
    v15 = *(&v23 + 1);
    if (*(&v23 + 1) >> 60 != 15)
    {
      v13 = v23;
      goto LABEL_4;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100014364()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_queue);
  v10 = (*((swift_isaMask & *v0) + 0x70))(v7);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  aBlock[4] = sub_10001472C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004CED48;
  v12 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v17 = &_swiftEmptyArrayStorage;
  sub_1000146D4();
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  swift_unknownObjectRelease();
  (*(v16 + 8))(v4, v1);
  (*(v5 + 8))(v9, v15);
}

uint64_t sub_10001464C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014684(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

unint64_t sub_1000146D4()
{
  result = qword_100527410;
  if (!qword_100527410)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100527410);
  }

  return result;
}

id sub_10001472C()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result devicesUpdated];
  }

  return result;
}

uint64_t sub_100014E30()
{
  v1 = [*(v0 + OBJC_IVAR___MRDIntelligentRoutingLockScreenRoutingProvider_routeRecommendationStore) recommendedRoutes];
  sub_1001BC5A8(&qword_100525EE0, &qword_100458100);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = &_swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
LABEL_28:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_28;
        }

        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      if ([v5 isLockScreenControl])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v7 = *(v33 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v4;
    }

    while (v6 != v3);
  }

  v33 = sub_100015220(v8);
  sub_1000153E0(&v33);

  v9 = v33;
  if ((v33 & 0x8000000000000000) != 0 || (v33 & 0x4000000000000000) != 0)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_30:

    v12 = &_swiftEmptyArrayStorage;
    goto LABEL_31;
  }

  v10 = *(v33 + 16);
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_18:
  v33 = &_swiftEmptyArrayStorage;
  sub_1000089FC(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    goto LABEL_45;
  }

  v11 = 0;
  v12 = v33;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v9 + 8 * v11 + 32);
      swift_unknownObjectRetain();
    }

    v14 = [objc_msgSend(v13 "route")];
    swift_unknownObjectRelease();
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    swift_unknownObjectRelease();

    v33 = v12;
    v19 = v12[2];
    v18 = v12[3];
    if (v19 >= v18 >> 1)
    {
      sub_1000089FC((v18 > 1), v19 + 1, 1);
      v12 = v33;
    }

    ++v11;
    v12[2] = v19 + 1;
    v20 = &v12[2 * v19];
    v20[4] = v15;
    v20[5] = v17;
  }

  while (v10 != v11);

LABEL_31:
  v21 = 0;
  v22 = v12[2];
  v23 = &_swiftEmptyArrayStorage;
LABEL_32:
  v24 = &v12[2 * v21 + 5];
  while (1)
  {
    if (v22 == v21)
    {

      return v23;
    }

    if (v21 >= v12[2])
    {
      break;
    }

    ++v21;
    v25 = *(v24 - 1);
    v26 = *v24;
    v24 += 2;
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000089FC(0, v23[2] + 1, 1);
        v23 = v33;
      }

      v30 = v23[2];
      v29 = v23[3];
      if (v30 >= v29 >> 1)
      {
        sub_1000089FC((v29 > 1), v30 + 1, 1);
        v23 = v33;
      }

      v23[2] = v30 + 1;
      v31 = &v23[2 * v30];
      v31[4] = v25;
      v31[5] = v26;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);

  __break(1u);
  return result;
}

void *sub_100015220(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100218674(v3, 0);
  sub_10034D5F4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10001538C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001556C();
  }

  return result;
}

uint64_t sub_1000153E0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10034D850(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10001545C(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_10001545C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_1001BC5A8(&qword_100525EE0, &qword_100458100);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_10034C864(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_10034C690(0, v2, 1, a1);
  }

  return result;
}

void sub_10001556C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v46 - v5;
  v7 = sub_100015A78();
  sub_100015B34(v7, v6);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_1000038A4(v6, &qword_100525C00, &unk_1004511A0);
    v10 = *(v1 + 40);
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = v1;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v53 = v15;
      *v14 = 136315138;
      v16 = _typeName(_:qualified:)();
      v18 = sub_10002C9C8(v16, v17, &v53);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] updateRecommendations", v14, 0xCu);
      sub_100026A44(v15);

      v1 = v13;
    }

    (*(v9 + 8))(v6, v8);
    v10 = *(v1 + 40);
    if (!v10)
    {
      return;
    }
  }

  v46 = v10;
  v19 = [v46 recommendedRoutes];
  sub_1001BC5A8(&qword_100525EE0, &qword_100458100);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
LABEL_33:
    v21 = _CocoaArrayWrapper.endIndex.getter();
    v47 = v1;
    if (v21)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v1;
    if (v21)
    {
LABEL_9:
      v1 = 0;
      v51 = v20 & 0xC000000000000001;
      v48 = v20 & 0xFFFFFFFFFFFFFF8;
      v22 = &_swiftEmptyDictionarySingleton;
      v49 = v21;
      v50 = v20;
      while (1)
      {
        if (v51)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v26 = (v1 + 1);
          if (__OFADD__(v1, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v1 >= *(v48 + 16))
          {
            goto LABEL_32;
          }

          v25 = *(v20 + 8 * v1 + 32);
          swift_unknownObjectRetain();
          v26 = (v1 + 1);
          if (__OFADD__(v1, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        v52 = v26;
        v27 = [objc_msgSend(v25 "route")];
        swift_unknownObjectRelease();
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        type metadata accessor for RouteRelevance();
        swift_allocObject();
        v31 = swift_unknownObjectRetain();
        v32 = sub_1000168B4(v31);
        swift_unknownObjectRelease();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v22;
        v20 = v22;
        v35 = sub_10000698C(v28, v30);
        v36 = v22[2];
        v37 = (v34 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          goto LABEL_30;
        }

        v39 = v34;
        if (v22[3] >= v38)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v34)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v20 = &v53;
            sub_1002FE738();
            if (v39)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
          sub_100016AA8(v38, isUniquelyReferenced_nonNull_native);
          v20 = v53;
          v40 = sub_10000698C(v28, v30);
          if ((v39 & 1) != (v41 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v35 = v40;
          if (v39)
          {
LABEL_10:

            v22 = v53;
            v23 = v53[7];
            v24 = *(v23 + 8 * v35);
            *(v23 + 8 * v35) = v32;
            swift_unknownObjectRelease();

            goto LABEL_11;
          }
        }

        v22 = v53;
        v53[(v35 >> 6) + 8] |= 1 << v35;
        v42 = (v22[6] + 16 * v35);
        *v42 = v28;
        v42[1] = v30;
        *(v22[7] + 8 * v35) = v32;
        swift_unknownObjectRelease();
        v43 = v22[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_31;
        }

        v22[2] = v45;
LABEL_11:
        ++v1;
        v20 = v50;
        if (v52 == v49)
        {
          goto LABEL_35;
        }
      }
    }
  }

  v22 = &_swiftEmptyDictionarySingleton;
LABEL_35:

  sub_100015BF4(v22);
}

uint64_t sub_100015A9C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);

  return sub_100015AFC(v3, a2);
}

uint64_t sub_100015AFC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100015B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015BF4(uint64_t a1)
{
  v3 = *(*v1 + 128);
  v4 = v3();
  v5 = v1[2];
  v1[2] = a1;

  v7 = (v3)(v6);
  v8 = sub_100015D50(v4, v7);

  if ((v8 & 1) == 0)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = v1[4];
      ObjectType = swift_getObjectType();
      v12 = v3();
      (*(v10 + 8))(v1, v12, ObjectType, v10);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_100015D10()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
    *(v0 + 16) = &_swiftEmptyDictionarySingleton;
  }

  return v1;
}

uint64_t sub_100015D50(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v33 = result;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);

    v18 = sub_10000698C(v15, v16);
    v20 = v19;

    if ((v20 & 1) == 0)
    {

      return 0;
    }

    v21 = *(*(v2 + 56) + 8 * v18);
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    v24 = *(v21 + 32);
    v25 = *(v17 + 16);
    v26 = *(v17 + 24);
    v27 = *(v17 + 32);

    if (v24)
    {
      if (v24 != 1)
      {
        v3 = v33;
        if (v27 != 2)
        {
          return 0;
        }

        v31 = *&v22 == *&v25 && v23 == v26;
        goto LABEL_26;
      }

      v28 = v22;
      v29 = v25;
      v30 = v27 == 1;
    }

    else
    {
      v28 = v22;
      v29 = v25;
      v30 = v27 == 0;
    }

    v31 = v30 && v28 == v29;
    v3 = v33;
LABEL_26:
    v2 = a2;
    if (!v31)
    {
      return 0;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_100016058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000164E0()
{
  v0 = MGCopyAnswer();
  if (![v0 length])
  {
    v1 = MGCopyAnswer();
    if (v1)
    {
      v2 = [[NSString alloc] initWithData:v1 encoding:4];
    }

    else
    {
      v2 = 0;
    }

    v0 = v2;
  }

  if (![v0 length])
  {
    v3 = MGCopyAnswer();

    v0 = v3;
  }

  if (![v0 length])
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Warning: Unknown device network ID", v6, 2u);
    }
  }

  return v0;
}

uint64_t sub_10001673C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000167EC;
  v10[3] = &unk_1004C0BB0;
  v11 = a3;
  v12 = a2;
  v7 = v11;
  v8 = sub_1000080B4(a1, v10, a4);

  return v8;
}

void sub_1000167EC(uint64_t a1, void *a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v5;
  xdict = a2;
  xpc_dictionary_set_data(xdict, v4, [v5 bytes], objc_msgSend(*(a1 + 32), "length"));
}

uint64_t sub_1000168B4(void *a1)
{
  v3 = [a1 classification];
  v4 = [a1 sortingHint];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(v1 + 16) = sub_100016A2C(v3, v8, v5 == 0);
  *(v1 + 24) = v9;
  *(v1 + 32) = v10;
  v11 = [a1 isCallToAction];
  v12 = [a1 isLockScreenControl];
  *(v1 + 34) = v11;
  *(v1 + 35) = v12;
  v13 = [a1 contextIdentifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v1 + 40) = v14;
  *(v1 + 48) = v16;
  if (([a1 respondsToSelector:"reason"] & 1) != 0 && (v17 = objc_msgSend(a1, "reason")) != 0)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *(v1 + 56) = v19;
  *(v1 + 64) = v21;
  *(v1 + 33) = [a1 isConservativelyFiltered];
  return v1;
}

unint64_t sub_100016A2C(unint64_t result, unint64_t a2, char a3)
{
  if (result - 2 >= 3)
  {
    v3 = 0xFFF0000000000000;
    if (a3)
    {
      v4 = 0xFFF0000000000000;
    }

    else
    {
      v4 = a2;
    }

    if (a3)
    {
      v5 = 0xFFF0000000000000;
    }

    else
    {
      v5 = a2;
    }

    if ((a3 & 1) == 0)
    {
      v3 = a2;
    }

    if (result)
    {
      v3 = v5;
    }

    if (result == 1)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t sub_100016AA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100525EE8, &qword_100458108);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100016D50()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

void sub_100016E58(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = +[NSDate date];
  v8 = +[NSUUID UUID];
  v9 = [v8 UUIDString];

  switch(a3)
  {
    case -536870288:
      v10 = @"CanSleep";
      break;
    case -536870112:
      v10 = @"WillPowerOn";
      break;
    case -536870272:
      v10 = @"WillSleep";
      break;
    default:
      v10 = 0;
      goto LABEL_11;
  }

  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = v10;
    v25 = 2114;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "POWER: Did recieve power callback %{public}@-%{public}@", buf, 0x16u);
  }

LABEL_11:
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100172890;
  v17[3] = &unk_1004BFC38;
  v18 = v10;
  v19 = v9;
  v20 = v7;
  v12 = v6;
  v21 = v12;
  v22 = a4;
  v13 = v7;
  v14 = v9;
  v15 = objc_retainBlock(v17);
  v16 = v15;
  switch(a3)
  {
    case -536870112:
      [v12 notifyDelegateOfWake];
      break;
    case -536870272:
      (v15[2])(v15);
      break;
    case -536870288:
      [v12 notifyDelegateOfSleepWithCompletion:v15];
      break;
  }
}

uint64_t sub_100017150()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = *(v1 + 40);
    if (*(v2 + 16))
    {
      *(v1 + 40) = &_swiftEmptyDictionarySingleton;
      swift_unknownObjectUnownedLoadStrong();
      v3 = *(v1 + 32);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v1, v2, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1000172E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100017300(uint64_t a1)
{
  v3 = [*(a1 + 32) _onQueue_lastPlayingDate];
  [v3 timeIntervalSinceNow];
  *(*(*(a1 + 40) + 8) + 24) = -v2;
}

void sub_100017484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001755C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[138] == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = [v2 bundleIdentifier];
    if ([v3 isEqualToString:@"com.apple.iapd"])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      v4 = [*(a1 + 32) bundleIdentifier];
      *(*(*(a1 + 40) + 8) + 24) = [v4 isEqualToString:@"com.apple.iap2d"];
    }
  }

  *(*(a1 + 32) + 138) = *(*(*(a1 + 40) + 8) + 24);
}

uint64_t sub_100017838()
{
  v1 = sub_10027C58C();
  v2 = *(*v0 + 240);

  return v2(v1);
}

uint64_t sub_100017880(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4(v2);
}

uint64_t sub_100017908()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 16);
    aBlock[4] = sub_100017838;
    aBlock[5] = result;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C7260;
    v14 = result;
    v11 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v16 = _swiftEmptyArrayStorage;
    sub_100017FCC(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    v13 = v5;
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v11);
    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v13);
  }

  return result;
}

void sub_100017D9C(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v5 = MRGetOriginFromUserInfo();

  if ([v5 isLocal])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _scheduleAvailableOutputDevicesReload];
  }
}

uint64_t sub_100017EF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100017F3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100017F84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100017FCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100018014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001805C(char a1)
{
  if ((a1 & 2) == 0)
  {
    if (a1)
    {
      v1 = 2;
      if ((a1 & 8) == 0)
      {
        return v1;
      }
    }

    else
    {
      v1 = 0;
      if ((a1 & 8) == 0)
      {
        return v1;
      }
    }

    return v1 | 4;
  }

  if ((a1 & 1) == 0)
  {
    v1 = 1;
    if ((a1 & 8) == 0)
    {
      return v1;
    }

    return v1 | 4;
  }

  v1 = 3;
  if ((a1 & 8) != 0)
  {
    return v1 | 4;
  }

  return v1;
}

uint64_t sub_1000180A0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingItems;
  swift_beginAccess();
  v11 = *(v2 + v10);

  LOBYTE(a1) = sub_10001ECB8(v12, a1);

  if ((a1 & 1) == 0)
  {
    v14 = sub_100028D40();
    (*(v6 + 16))(v9, v14, v5);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      HIDWORD(v47) = v16;
      v18 = v17;
      v48 = swift_slowAlloc();
      v49 = v48;
      *v18 = 136315394;
      v19 = _typeName(_:qualified:)();
      v21 = sub_10002C9C8(v19, v20, &v49);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      v22 = *(v2 + v10);
      type metadata accessor for HostedRoutingItem(0);

      v23 = Array.description.getter();
      v25 = v24;

      v26 = sub_10002C9C8(v23, v25, &v49);

      *(v18 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v15, BYTE4(v47), "[%s] setRoutingItems - value: %{public}s", v18, 0x16u);
      swift_arrayDestroy();
    }

    v27 = (*(v6 + 8))(v9, v5);
    if ((*(*v2 + 288))(v27))
    {
      v29 = v28;
      ObjectType = swift_getObjectType();
      v31 = *(v2 + v10);
      v32 = *(v29 + 8);

      v32(v2, &off_1004C7180, v31, ObjectType, v29);

      swift_unknownObjectRelease();
    }

    v33 = sub_100037528();
    v34 = v33;
    v35 = v33 + 64;
    v36 = 1 << v33[32];
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v33 + 8);
    v39 = (v36 + 63) >> 6;

    for (i = 0; v38; result = )
    {
      v41 = i;
LABEL_14:
      v42 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v43 = *(v34 + 7) + ((v41 << 10) | (16 * v42));
      v45 = *v43;
      v44 = *(v43 + 8);

      v45(v46);
    }

    while (1)
    {
      v41 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v41 >= v39)
      {
      }

      v38 = *&v35[8 * v41];
      ++i;
      if (v38)
      {
        i = v41;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000184A4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v6 = (a3 >> 8) & 6 | (a3 >> 7) & 1;
  if (v6 > 2)
  {
    if (v6 <= 4)
    {
      if (v6 == 3)
      {
        if (((a6 >> 8) & 6 | (a6 >> 7) & 1) != 3)
        {
          return 0;
        }

        goto LABEL_23;
      }

      if (((a6 >> 8) & 6 | (a6 >> 7) & 1) == 4)
      {
LABEL_23:
        v12 = a3 & 0xFFFFF97F;
        v13 = a6 & 0xFFFFF97F;

        return sub_1000186C4(a1, a2, v12, a4, a5, v13);
      }

      return 0;
    }

    if (v6 == 5)
    {
      if (((a6 >> 8) & 6 | (a6 >> 7) & 1) != 5)
      {
        return 0;
      }

      goto LABEL_23;
    }

    if (((a6 >> 8) & 6 | (a6 >> 7) & 1) != 6)
    {
      return 0;
    }

    v14 = *(a1 + 32);
    v15 = *(a4 + 32);
    v16 = v15 & 0x6FE;
    if ((~v14 & 0x6FE) != 0)
    {
      if (v16 == 1790)
      {
        return 0;
      }

      v17 = *(a1 + 16);
      v18 = *(a1 + 24);
      v19 = *(a4 + 16);
      v20 = *(a4 + 24);
      sub_10001DAE0(v19, v20, *(a4 + 32));
      v21 = sub_1000184A4(v17, v18, v14, v19, v20, v15);
      sub_100248970(v19, v20, v15);
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16 != 1790)
    {
      return 0;
    }

    return 1;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      if (((a6 >> 8) & 6 | (a6 >> 7) & 1) != 1)
      {
        return 0;
      }
    }

    else if (((a6 >> 8) & 6 | (a6 >> 7) & 1) != 2)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if ((a6 >> 8) & 6 | (a6 >> 7) & 1)
  {
    return 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a4 + 40);
  v10 = *(a4 + 48);
  if ((sub_1000186C4(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a4 + 16), *(a4 + 24), *(a4 + 32)) & 1) == 0)
  {
    return 0;
  }

  if (v7 == v9 && v8 == v10)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000186C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  while (2)
  {
    switch(a3 >> 11)
    {
      case 1:
        if ((a6 & 0xF800) != 0x800)
        {
          goto LABEL_60;
        }

        if (a2)
        {
          if (!a5)
          {
            goto LABEL_60;
          }

          if (a1 == a4 && a2 == a5)
          {
            if ((a3 ^ a6))
            {
              goto LABEL_60;
            }

            goto LABEL_85;
          }

          v15 = a3;
          v16 = a6;
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
          LOBYTE(v9) = 0;
          if (v17)
          {
            LOWORD(a6) = v16;
            LOWORD(a3) = v15;
            if (((v15 ^ v16) & 1) == 0)
            {
LABEL_85:
              v9 = ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
              return v9 & 1;
            }
          }
        }

        else
        {
          LOBYTE(v9) = 0;
          if (!a5 && ((a3 ^ a6) & 1) == 0)
          {
            goto LABEL_85;
          }
        }

        return v9 & 1;
      case 2:
        if ((a6 & 0xF800) != 0x1000)
        {
          goto LABEL_60;
        }

        goto LABEL_53;
      case 3:
        if (a6 >> 11 != 3)
        {
          goto LABEL_60;
        }

        goto LABEL_53;
      case 4:
        if ((a6 & 0xF800) != 0x2000)
        {
          goto LABEL_60;
        }

        goto LABEL_39;
      case 5:
        if (a6 >> 11 != 5)
        {
          goto LABEL_60;
        }

LABEL_39:
        LOBYTE(v9) = a4 ^ a1 ^ 1;
        return v9 & 1;
      case 6:
        if ((a6 & 0xF800) == 0x3000)
        {
          goto LABEL_53;
        }

        goto LABEL_60;
      case 7:
        if (a6 >> 11 != 7)
        {
          goto LABEL_60;
        }

        goto LABEL_53;
      case 8:
        if ((a6 & 0xF800) != 0x4000)
        {
          goto LABEL_60;
        }

        v10 = *(a1 + 16);
        v11 = *(a4 + 16);

        return sub_100256F4C(v10, v11);
      case 9:
        if (a6 >> 11 != 9)
        {
          goto LABEL_60;
        }

        goto LABEL_49;
      case 10:
        if ((a6 & 0xF800) != 0x5000)
        {
          goto LABEL_60;
        }

LABEL_49:
        v12 = *(a1 + 24);
        v13 = *(a4 + 24);
        v14 = sub_100256F4C(*(a1 + 16), *(a4 + 16));
        LOBYTE(v9) = v12 == v13;
        if ((v14 & 1) == 0)
        {
          LOBYTE(v9) = 0;
        }

        return v9 & 1;
      case 11:
        if (a6 >> 11 != 11)
        {
          goto LABEL_60;
        }

        goto LABEL_53;
      case 12:
        if ((a6 & 0xF800) == 0x6000)
        {
          goto LABEL_53;
        }

        goto LABEL_60;
      case 13:
        if (a6 >> 11 != 13)
        {
          goto LABEL_60;
        }

        goto LABEL_53;
      case 14:
        if ((a6 & 0xF800) != 0x7000)
        {
          goto LABEL_60;
        }

        goto LABEL_53;
      case 15:
        if (a6 >> 11 != 15)
        {
          goto LABEL_60;
        }

LABEL_53:
        if (a2)
        {
          if (a5 && (a1 == a4 && a2 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {
            goto LABEL_123;
          }
        }

        else if (!a5)
        {
          goto LABEL_123;
        }

        goto LABEL_60;
      case 16:
        if ((a6 & 0xF800) != 0x8000)
        {
          goto LABEL_60;
        }

        a3 = *(a1 + 32);
        v6 = a1 + 16;
        a1 = *(a1 + 16);
        a2 = *(v6 + 8);
        a6 = *(a4 + 32);
        v7 = a4 + 16;
        a4 = *(a4 + 16);
        a5 = *(v7 + 8);
        continue;
      case 17:
        if (!(a2 | a1) && a3 == 34816)
        {
          if (a6 >> 11 != 17 || a5 | a4)
          {
            goto LABEL_60;
          }

LABEL_122:
          if (a6 == 34816)
          {
            goto LABEL_123;
          }

LABEL_60:
          LOBYTE(v9) = 0;
          return v9 & 1;
        }

        if (a1 == 1 && !a2 && a3 == 34816)
        {
          if (a6 >> 11 != 17 || a4 != 1)
          {
            goto LABEL_60;
          }

LABEL_121:
          if (a5)
          {
            goto LABEL_60;
          }

          goto LABEL_122;
        }

        if (a1 == 2 && !a2 && a3 == 34816)
        {
          if (a6 >> 11 != 17 || a4 != 2)
          {
            goto LABEL_60;
          }

          goto LABEL_121;
        }

        if (a1 == 3 && !a2 && a3 == 34816)
        {
          if (a6 >> 11 != 17 || a4 != 3)
          {
            goto LABEL_60;
          }

          goto LABEL_121;
        }

        if (a1 == 4 && !a2 && a3 == 34816)
        {
          if (a6 >> 11 != 17 || a4 != 4)
          {
            goto LABEL_60;
          }

          goto LABEL_121;
        }

        if (a1 == 5 && !a2 && a3 == 34816)
        {
          if (a6 >> 11 != 17 || a4 != 5)
          {
            goto LABEL_60;
          }

          goto LABEL_121;
        }

        if (a1 == 6 && !a2 && a3 == 34816)
        {
          if (a6 >> 11 != 17 || a4 != 6)
          {
            goto LABEL_60;
          }

          goto LABEL_121;
        }

        if (a1 == 7 && !a2 && a3 == 34816)
        {
          if (a6 >> 11 != 17 || a4 != 7)
          {
            goto LABEL_60;
          }

          goto LABEL_121;
        }

        if (a1 == 8 && !a2 && a3 == 34816)
        {
          if (a6 >> 11 != 17 || a4 != 8)
          {
            goto LABEL_60;
          }

          goto LABEL_121;
        }

        if (a1 == 9 && !a2 && a3 == 34816)
        {
          if (a6 >> 11 != 17 || a4 != 9)
          {
            goto LABEL_60;
          }

          goto LABEL_121;
        }

        if (a1 == 10 && !a2 && a3 == 34816)
        {
          if (a6 >> 11 != 17 || a4 != 10)
          {
            goto LABEL_60;
          }
        }

        else if (a6 >> 11 != 17 || a4 != 11)
        {
          goto LABEL_60;
        }

        if (a5 || a6 != 34816)
        {
          goto LABEL_60;
        }

LABEL_123:
        LOBYTE(v9) = 1;
        return v9 & 1;
      default:
        if (a6 >= 0x800u)
        {
          goto LABEL_60;
        }

        if (a1 == a4 && a2 == a5)
        {
          goto LABEL_123;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }
}

unint64_t sub_100018C40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100018BE4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001BF10(v8);
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

id sub_100018D1C()
{
  v0 = [objc_opt_self() server];
  v1 = [v0 deviceInfo];

  return v1;
}

uint64_t sub_100018D7C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100018E34(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100018E6C()
{
  v1 = [v0 deviceType];
  if (v1 > 2)
  {
    if (v1 == 3 || v1 == 4 || v1 == 5)
    {
      return sub_10001900C();
    }

    goto LABEL_12;
  }

  if (!v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = sub_10001900C();
    *(v2 + 24) = v3;
    *(v2 + 32) = v4;
    v5 = SystemGroupSessionTransport.hostname.getter();
    result = v2;
    v8 = v7;
LABEL_13:
    *(v2 + 40) = v5;
    *(v2 + 48) = v8;
    return result;
  }

  if (v1 != 1 && v1 != 2)
  {
LABEL_12:
    v2 = swift_allocObject();
    *(v2 + 16) = sub_10001900C();
    *(v2 + 24) = v9;
    *(v2 + 32) = v10;
    _StringGuts.grow(_:)(24);
    v11._object = 0x800000010043D7B0;
    v11._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v11);
    v12 = [v0 deviceType];
    type metadata accessor for MRAVOutputDeviceType(0);
    _print_unlocked<A, B>(_:_:)();
    result = v2;
    v5 = HIDWORD(v12);
    v8 = 0xE000000000000000;
    goto LABEL_13;
  }

  return sub_10001900C();
}

uint64_t sub_10001900C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 uid];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = [v1 modelID];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [v1 isAirpodsDevice];
  v18 = [v1 deviceType];
  v19 = v18;
  if (v17)
  {

    if (v19 == 2)
    {
      if ([v1 isAppleAccessory])
      {
        return v14;
      }

      return 0;
    }
  }

  else
  {
    if (v18 == 2)
    {
      v21 = [v1 name];
      if (v21)
      {
        v45 = v3;
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v48[0] = v23;
        v48[1] = v25;
        v46 = 0x646F70726961;
        v47 = 0xE600000000000000;
        sub_1001D6868();
        LOBYTE(v22) = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();

        if (v22)
        {
          v26 = sub_100028D40();
          v27 = v45;
          (*(v45 + 16))(v6, v26, v2);

          v44 = v1;

          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.info.getter();

          v43 = v29;
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v48[0] = swift_slowAlloc();
            *v30 = 136315650;
            if (v11)
            {
              v31 = v9;
            }

            else
            {
              v31 = 7104878;
            }

            if (!v11)
            {
              v11 = 0xE300000000000000;
            }

            v32 = sub_10002C9C8(v31, v11, v48);

            *(v30 + 4) = v32;
            *(v30 + 12) = 2080;
            if (v16)
            {
              v33 = v14;
            }

            else
            {
              v33 = 7104878;
            }

            if (!v16)
            {
              v16 = 0xE300000000000000;
            }

            v34 = sub_10002C9C8(v33, v16, v48);

            *(v30 + 14) = v34;
            *(v30 + 22) = 1024;
            v35 = v44;
            v36 = [v44 isAppleAccessory];

            *(v30 + 24) = v36;
            _os_log_impl(&_mh_execute_header, v28, v43, "AVOD: %s named as airpods but not identified as such. Model=%s, genuine=%{BOOL}d", v30, 0x1Cu);
            swift_arrayDestroy();

            (*(v45 + 8))(v6, v2);
          }

          else
          {

            v41 = v44;

            (*(v27 + 8))(v6, v2);
          }

          goto LABEL_28;
        }
      }
    }
  }

LABEL_28:
  if ([v1 isHearingDevice])
  {
    return 10;
  }

  if ([v1 isBeatsLegacyDevice])
  {
    v37 = swift_allocObject();
    v38 = sub_1000198C4();
    result = v37;
    *(v37 + 16) = v38;
    *(v37 + 24) = v39;
    *(v37 + 32) = v40;
  }

  else if ([v1 isSystemCaptureDevice])
  {
    return 11;
  }

  else
  {
    return sub_1000198C4();
  }

  return result;
}

uint64_t sub_100019514()
{
  sub_1000196F4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_100019550(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = (a3 >> 8) & 6 | (a3 >> 7) & 1;
  if (v3 <= 3)
  {
    if (!v3)
    {
    }

    return sub_1000196F4(result, a2, a3 & 0xF97F);
  }

  if (v3 <= 5)
  {
    return sub_1000196F4(result, a2, a3 & 0xF97F);
  }

  if (v3 == 6)
  {
  }

  return result;
}

uint64_t sub_1000195B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000196F4(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  switch(a3 >> 11)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 6:
    case 7:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:

      break;
    case 8:
    case 9:
    case 10:
    case 16:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100019788(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000198C4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v200 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v5);
  v10 = (&v200 - v9);
  __chkstk_darwin(v8);
  v12 = (&v200 - v11);
  v13 = [v0 modelID];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = 0;
  }

  switch([v1 deviceSubtype])
  {
    case 0u:

      return 0;
    case 1u:

      v16 = [v1 modelID];
      if (v16)
      {
        v17 = v16;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v15 = 0;
      }

      v22 = [v1 sourceInfo];
      if (v22)
      {
        v23 = v22;
        [v22 multipleBuiltInDevices];
      }

      [v1 producesLowFidelityAudio];
      return v15;
    case 2u:
    case 3u:
    case 0xCu:
    case 0xDu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
      return v15;
    case 4u:
    case 5u:

      return [v1 producesLowFidelityAudio] ^ 1;
    case 6u:

      return 1;
    case 7u:

      return 2;
    case 8u:

      return 3;
    case 9u:

      return 4;
    case 0xAu:

      return 5;
    case 0xBu:

      return 6;
    case 0xEu:

      return 7;
    case 0xFu:

      v18 = [v1 clusterCompositionOutputDevices];
      if (v18)
      {
        v19 = v18;
        sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
        v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v20 = &_swiftEmptyArrayStorage;
      }

      if (v20 >> 62)
      {
        goto LABEL_186;
      }

      v205 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v205)
      {
        goto LABEL_28;
      }

      break;
    case 0x10u:

      return 8;
    case 0x11u:

      return 9;
    default:

      *&v209 = 0;
      *(&v209 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(21);
      v21._countAndFlagsBits = 0xD000000000000013;
      v21._object = 0x800000010043D7D0;
      String.append(_:)(v21);
      LODWORD(v207) = [v1 deviceSubtype];
      type metadata accessor for MRAVOutputDeviceSubtype(0);
      _print_unlocked<A, B>(_:_:)();
      return v209;
  }

  while (1)
  {
    v33 = [v1 clusterType];
    if (v33 <= 1)
    {
      if (!v33)
      {

        v153 = sub_100028D40();
        (*(v3 + 16))(v10, v153, v2);
        v154 = v1;
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v155, v156))
        {
          v157 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          *v157 = 138412290;
          *(v157 + 4) = v154;
          *v158 = v154;
          v159 = v154;
          _os_log_impl(&_mh_execute_header, v155, v156, "OutputDevice %@ is subtype .cluster but clusterType .none", v157, 0xCu);
          sub_1000038A4(v158, &qword_100521870, &unk_10044EA70);
        }

        (*(v3 + 8))(v10, v2);
        return 0xD00000000000001ELL;
      }

      v10 = v205;
      if (v33 == 1)
      {
        if (!v205)
        {
LABEL_169:
          v1 = &_swiftEmptyArrayStorage;
LABEL_170:
          v15 = swift_allocObject();

          *(v15 + 16) = v1;
          return v15;
        }

        v34 = v20 & 0xC000000000000001;
        v7 = (v20 & 0xFFFFFFFFFFFFFF8);
        v203 = "emoted.MediaControlMain";
        v1 = &_swiftEmptyArrayStorage;
        v10 = &selRef_sinkWithCompletion_shouldContinue_;
        v35 = 0;
        while (1)
        {
LABEL_36:
          if (v34)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v35 >= v7[2])
            {
              goto LABEL_183;
            }

            v36 = *(v20 + 8 * v35 + 32);
          }

          v12 = v36;
          v37 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_179;
          }

          v38 = [v36 uid];
          if (v38)
          {
            break;
          }

          ++v35;
          if (v37 == v205)
          {
            goto LABEL_170;
          }
        }

        v204 = v20;
        v39 = v38;
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = v41;

        v42 = [v12 deviceType];
        if (v42 <= 2)
        {
          switch(v42)
          {
            case 0:
              v43 = swift_allocObject();
              *(v43 + 16) = sub_10001900C();
              *(v43 + 24) = v50;
              *(v43 + 32) = v51;
              v52 = SystemGroupSessionTransport.hostname.getter();
              v45 = 0;
              v47 = 0;
              *(v43 + 40) = v52;
              *(v43 + 48) = v53;
              goto LABEL_58;
            case 1:
              v43 = sub_10001900C();
              v45 = v61;
              v47 = v62 | 0x80;
              goto LABEL_58;
            case 2:
              v43 = sub_10001900C();
              v45 = v44;
              v47 = v46 | 0x200;
LABEL_58:
              sub_1002569DC(v40, v3, v43, v45, v47, &v209);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_10024A8E4(0, *(v1 + 2) + 1, 1, v1);
              }

              v2 = 40;
              v65 = *(v1 + 2);
              v64 = *(v1 + 3);
              if (v65 >= v64 >> 1)
              {
                v1 = sub_10024A8E4((v64 > 1), v65 + 1, 1, v1);
              }

              *(v1 + 2) = v65 + 1;
              v66 = &v1[40 * v65];
              v67 = v209;
              v68 = v210;
              *(v66 + 32) = v211;
              *(v66 + 2) = v67;
              *(v66 + 3) = v68;
              v20 = v204;
              if (v37 == v205)
              {
                goto LABEL_170;
              }

              v35 = v37;
              goto LABEL_36;
          }

          goto LABEL_54;
        }

        switch(v42)
        {
          case 3:
            v43 = sub_10001900C();
            v45 = v55;
            v56 = 640;
            break;
          case 4:
            v43 = sub_10001900C();
            v45 = v63;
            v56 = 1152;
            break;
          case 5:
            v43 = sub_10001900C();
            v45 = v48;
            v47 = v49 | 0x400;
            goto LABEL_58;
          default:
LABEL_54:
            v43 = swift_allocObject();
            *(v43 + 16) = sub_10001900C();
            *(v43 + 24) = v57;
            *(v43 + 32) = v58;
            v207 = 0;
            v208 = 0xE000000000000000;
            _StringGuts.grow(_:)(24);
            v59._object = (v203 | 0x8000000000000000);
            v59._countAndFlagsBits = 0xD000000000000016;
            String.append(_:)(v59);
            v206 = [v12 deviceType];
            type metadata accessor for MRAVOutputDeviceType(0);
            _print_unlocked<A, B>(_:_:)();
            v45 = 0;
            v47 = 0;
            v60 = v208;
            *(v43 + 40) = v207;
            *(v43 + 48) = v60;
            goto LABEL_58;
        }

        v47 = v54 | v56;
        goto LABEL_58;
      }

      goto LABEL_98;
    }

    if (v33 == 2)
    {
      v10 = v205;
      if (!v205)
      {
        v2 = &_swiftEmptyArrayStorage;
LABEL_175:
        v15 = swift_allocObject();

        *(v15 + 16) = v2;
        v198 = [v1 configuredClusterSize];
        if (v198 <= 0xFF)
        {
          *(v15 + 24) = v198;
          return v15;
        }

        goto LABEL_189;
      }

      v160 = v20 & 0xC000000000000001;
      v12 = (v20 & 0xFFFFFFFFFFFFFF8);
      v201 = "emoted.MediaControlMain";
      v2 = &_swiftEmptyArrayStorage;
      v7 = &selRef_sinkWithCompletion_shouldContinue_;
      for (i = 0; ; i = v3)
      {
        while (1)
        {
          if (v160)
          {
            v162 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (i >= v12[2])
            {
              goto LABEL_185;
            }

            v162 = *(v20 + 8 * i + 32);
          }

          v163 = v162;
          v3 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_181;
          }

          v164 = [v162 uid];
          if (v164)
          {
            break;
          }

          ++i;
          if (v3 == v10)
          {
            goto LABEL_175;
          }
        }

        v203 = v2;
        v204 = v20;
        v165 = v164;
        v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v168 = v167;

        v169 = [v163 deviceType];
        v202 = v168;
        if (v169 > 2)
        {
          if (v169 == 3)
          {
            v171 = sub_10001900C();
            v173 = v182;
            v175 = v183 | 0x280;
            v170 = v166;
          }

          else
          {
            v170 = v166;
            if (v169 != 4)
            {
              v2 = v203;
              if (v169 == 5)
              {
                v171 = sub_10001900C();
                v173 = v176;
                v175 = v177 | 0x400;
                goto LABEL_159;
              }

              goto LABEL_155;
            }

            v171 = sub_10001900C();
            v173 = v190;
            v175 = v191 | 0x480;
          }
        }

        else if (v169)
        {
          v170 = v166;
          if (v169 != 1)
          {
            v2 = v203;
            if (v169 == 2)
            {
              v171 = sub_10001900C();
              v173 = v172;
              v175 = v174 | 0x200;
              goto LABEL_159;
            }

LABEL_155:
            v171 = swift_allocObject();
            *(v171 + 16) = sub_10001900C();
            *(v171 + 24) = v184;
            *(v171 + 32) = v185;
            v207 = 0;
            v208 = 0xE000000000000000;
            _StringGuts.grow(_:)(24);
            v186._object = (v201 | 0x8000000000000000);
            v186._countAndFlagsBits = 0xD000000000000016;
            String.append(_:)(v186);
            v206 = [v163 deviceType];
            type metadata accessor for MRAVOutputDeviceType(0);
            _print_unlocked<A, B>(_:_:)();
            v173 = 0;
            v175 = 0;
            v187 = v208;
            *(v171 + 40) = v207;
            *(v171 + 48) = v187;
            goto LABEL_159;
          }

          v171 = sub_10001900C();
          v173 = v188;
          v175 = v189 | 0x80;
        }

        else
        {
          v171 = swift_allocObject();
          *(v171 + 16) = sub_10001900C();
          *(v171 + 24) = v178;
          *(v171 + 32) = v179;
          v180 = SystemGroupSessionTransport.hostname.getter();
          v173 = 0;
          v175 = 0;
          *(v171 + 40) = v180;
          *(v171 + 48) = v181;
          v170 = v166;
        }

        v2 = v203;
LABEL_159:
        sub_1002569DC(v170, v202, v171, v173, v175, &v209);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_10024A8E4(0, *(v2 + 16) + 1, 1, v2);
        }

        v10 = v205;
        v193 = *(v2 + 16);
        v192 = *(v2 + 24);
        if (v193 >= v192 >> 1)
        {
          v2 = sub_10024A8E4((v192 > 1), v193 + 1, 1, v2);
        }

        *(v2 + 16) = v193 + 1;
        v194 = v2 + 40 * v193;
        v195 = v209;
        v196 = v210;
        *(v194 + 64) = v211;
        *(v194 + 32) = v195;
        *(v194 + 48) = v196;
        v20 = v204;
        if (v3 == v10)
        {
          goto LABEL_175;
        }
      }
    }

    v10 = v205;
    if (v33 == 3)
    {
      if (v205)
      {
        v69 = v20 & 0xC000000000000001;
        v12 = (v20 & 0xFFFFFFFFFFFFFF8);
        v202 = "emoted.MediaControlMain";
        v2 = &_swiftEmptyArrayStorage;
        v7 = &selRef_sinkWithCompletion_shouldContinue_;
        for (j = 0; ; j = v3)
        {
          while (1)
          {
            if (v69)
            {
              v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (j >= v12[2])
              {
                goto LABEL_184;
              }

              v71 = *(v20 + 8 * j + 32);
            }

            v72 = v71;
            v3 = j + 1;
            if (__OFADD__(j, 1))
            {
              goto LABEL_180;
            }

            v73 = [v71 uid];
            if (v73)
            {
              break;
            }

            ++j;
            if (v3 == v10)
            {
              goto LABEL_172;
            }
          }

          v204 = v20;
          v74 = v73;
          v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v76;

          v78 = [v72 deviceType];
          v203 = v75;
          v79 = v77;
          if (v78 > 2)
          {
            switch(v78)
            {
              case 3:
                v80 = sub_10001900C();
                v82 = v92;
                v93 = 640;
                break;
              case 4:
                v80 = sub_10001900C();
                v82 = v100;
                v93 = 1152;
                break;
              case 5:
                v80 = sub_10001900C();
                v82 = v85;
                v84 = v86 | 0x400;
                goto LABEL_91;
              default:
                goto LABEL_87;
            }

            v84 = v91 | v93;
          }

          else
          {
            if (!v78)
            {
              v80 = swift_allocObject();
              *(v80 + 16) = sub_10001900C();
              *(v80 + 24) = v87;
              *(v80 + 32) = v88;
              v89 = SystemGroupSessionTransport.hostname.getter();
              v82 = 0;
              v84 = 0;
              *(v80 + 40) = v89;
              *(v80 + 48) = v90;
              goto LABEL_91;
            }

            if (v78 != 1)
            {
              if (v78 == 2)
              {
                v80 = sub_10001900C();
                v82 = v81;
                v84 = v83 | 0x200;
                goto LABEL_91;
              }

LABEL_87:
              v80 = swift_allocObject();
              *(v80 + 16) = sub_10001900C();
              *(v80 + 24) = v94;
              *(v80 + 32) = v95;
              v207 = 0;
              v208 = 0xE000000000000000;
              _StringGuts.grow(_:)(24);
              v96._object = (v202 | 0x8000000000000000);
              v96._countAndFlagsBits = 0xD000000000000016;
              String.append(_:)(v96);
              v206 = [v72 deviceType];
              type metadata accessor for MRAVOutputDeviceType(0);
              _print_unlocked<A, B>(_:_:)();
              v82 = 0;
              v84 = 0;
              v97 = v208;
              *(v80 + 40) = v207;
              *(v80 + 48) = v97;
              goto LABEL_91;
            }

            v80 = sub_10001900C();
            v82 = v98;
            v84 = v99 | 0x80;
          }

LABEL_91:
          sub_1002569DC(v203, v79, v80, v82, v84, &v209);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_10024A8E4(0, *(v2 + 16) + 1, 1, v2);
          }

          v10 = v205;
          v102 = *(v2 + 16);
          v101 = *(v2 + 24);
          if (v102 >= v101 >> 1)
          {
            v2 = sub_10024A8E4((v101 > 1), v102 + 1, 1, v2);
          }

          *(v2 + 16) = v102 + 1;
          v103 = v2 + 40 * v102;
          v104 = v209;
          v105 = v210;
          *(v103 + 64) = v211;
          *(v103 + 32) = v104;
          *(v103 + 48) = v105;
          v20 = v204;
          if (v3 == v10)
          {
            goto LABEL_172;
          }
        }
      }

      v2 = &_swiftEmptyArrayStorage;
LABEL_172:
      v15 = swift_allocObject();

      *(v15 + 16) = v2;
      v197 = [v1 configuredClusterSize];
      if (v197 <= 0xFF)
      {
        goto LABEL_173;
      }

      __break(1u);
LABEL_189:
      __break(1u);
      JUMPOUT(0x10001AE9CLL);
    }

LABEL_98:
    v106 = v33;
    v107 = sub_100028D40();
    (*(v3 + 16))(v7, v107, v2);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.error.getter();
    v110 = os_log_type_enabled(v108, v109);
    v204 = v20;
    if (v110)
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *&v209 = v112;
      *v111 = 136315138;
      LODWORD(v207) = v106;
      type metadata accessor for MRAVOutputDeviceClusterType(0);
      v113 = String.init<A>(describing:)();
      v115 = sub_10002C9C8(v113, v114, &v209);

      *(v111 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v108, v109, "Unmatched clusterType: %s. Treat as generic cluster.", v111, 0xCu);
      sub_100026A44(v112);
      v20 = v204;

      v10 = v205;
    }

    (*(v3 + 8))(v7, v2);
    if (!v10)
    {
      v2 = &_swiftEmptyArrayStorage;
      goto LABEL_167;
    }

    v3 = 0;
    v116 = v20 & 0xC000000000000001;
    v12 = (v20 & 0xFFFFFFFFFFFFFF8);
    v201 = "emoted.MediaControlMain";
    v2 = &_swiftEmptyArrayStorage;
    v7 = &selRef_sinkWithCompletion_shouldContinue_;
LABEL_102:
    v117 = v3;
LABEL_103:
    if (v116)
    {
      v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v117 >= v12[2])
      {
        goto LABEL_182;
      }

      v118 = *(v20 + 8 * v117 + 32);
    }

    v119 = v118;
    v3 = v117 + 1;
    if (!__OFADD__(v117, 1))
    {
      break;
    }

    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    v205 = _CocoaArrayWrapper.endIndex.getter();
    if (!v205)
    {
LABEL_28:
      v24 = sub_100028D40();
      (*(v3 + 16))(v12, v24, v2);
      v25 = v1;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v203 = v26;
        v29 = v28;
        v30 = swift_slowAlloc();
        v204 = v20;
        v31 = v30;
        *v29 = 138412290;
        *(v29 + 4) = v25;
        *v30 = v25;
        v32 = v25;
        _os_log_impl(&_mh_execute_header, v203, v27, "OutputDevice %@ is subtype .cluster with no composition", v29, 0xCu);
        sub_1000038A4(v31, &qword_100521870, &unk_10044EA70);
        v20 = v204;

        v26 = v203;
      }

      (*(v3 + 8))(v12, v2);
    }
  }

  v120 = [v118 uid];
  if (!v120)
  {

    ++v117;
    if (v3 == v10)
    {
      goto LABEL_167;
    }

    goto LABEL_103;
  }

  v203 = v2;
  v121 = v120;
  v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v124 = v123;

  v125 = [v119 deviceType];
  v202 = v124;
  if (v125 <= 2)
  {
    if (v125)
    {
      v126 = v122;
      if (v125 != 1)
      {
        v2 = v203;
        if (v125 == 2)
        {
          v127 = sub_10001900C();
          v129 = v128;
          v131 = v130 | 0x200;
          goto LABEL_126;
        }

LABEL_122:
        v127 = swift_allocObject();
        *(v127 + 16) = sub_10001900C();
        *(v127 + 24) = v140;
        *(v127 + 32) = v141;
        v207 = 0;
        v208 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);
        v142._object = (v201 | 0x8000000000000000);
        v142._countAndFlagsBits = 0xD000000000000016;
        String.append(_:)(v142);
        v206 = [v119 deviceType];
        type metadata accessor for MRAVOutputDeviceType(0);
        _print_unlocked<A, B>(_:_:)();
        v129 = 0;
        v131 = 0;
        v143 = v208;
        *(v127 + 40) = v207;
        *(v127 + 48) = v143;
        goto LABEL_126;
      }

      v127 = sub_10001900C();
      v129 = v144;
      v131 = v145 | 0x80;
    }

    else
    {
      v127 = swift_allocObject();
      *(v127 + 16) = sub_10001900C();
      *(v127 + 24) = v134;
      *(v127 + 32) = v135;
      v136 = SystemGroupSessionTransport.hostname.getter();
      v129 = 0;
      v131 = 0;
      *(v127 + 40) = v136;
      *(v127 + 48) = v137;
      v126 = v122;
    }

LABEL_125:
    v2 = v203;
    goto LABEL_126;
  }

  if (v125 == 3)
  {
    v127 = sub_10001900C();
    v129 = v138;
    v131 = v139 | 0x280;
    v126 = v122;
    goto LABEL_125;
  }

  v126 = v122;
  if (v125 == 4)
  {
    v127 = sub_10001900C();
    v129 = v146;
    v131 = v147 | 0x480;
    goto LABEL_125;
  }

  v2 = v203;
  if (v125 != 5)
  {
    goto LABEL_122;
  }

  v127 = sub_10001900C();
  v129 = v132;
  v131 = v133 | 0x400;
LABEL_126:
  sub_1002569DC(v126, v202, v127, v129, v131, &v209);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10024A8E4(0, *(v2 + 16) + 1, 1, v2);
  }

  v10 = v205;
  v149 = *(v2 + 16);
  v148 = *(v2 + 24);
  if (v149 >= v148 >> 1)
  {
    v2 = sub_10024A8E4((v148 > 1), v149 + 1, 1, v2);
  }

  *(v2 + 16) = v149 + 1;
  v150 = v2 + 40 * v149;
  v151 = v209;
  v152 = v210;
  *(v150 + 64) = v211;
  *(v150 + 32) = v151;
  *(v150 + 48) = v152;
  v20 = v204;
  if (v3 != v10)
  {
    goto LABEL_102;
  }

LABEL_167:
  v15 = swift_allocObject();

  *(v15 + 16) = v2;
  v197 = [v1 configuredClusterSize];
  if (v197 > 0xFF)
  {
    __break(1u);
    goto LABEL_169;
  }

LABEL_173:
  *(v15 + 24) = v197;
  return v15;
}

uint64_t sub_10001AEF4()
{
  sub_1000196F4(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001AF38()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10001AF70()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AFA8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_routingMode;
  swift_beginAccess();
  v4 = type metadata accessor for RoutingMode();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_10001B030()
{
  v1 = OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___discoverySession;
  v2 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___discoverySession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource____lazy_storage___discoverySession);
LABEL_12:
    v14 = v2;
    return v3;
  }

  v4 = [objc_allocWithZone(MRAVRoutingDiscoverySessionConfiguration) initWithEndpointFeatures:1];
  if (v4)
  {
    v5 = v4;
    [v4 setCachedDiscoveryEnabled:1];
    [v5 setAlwaysAllowUpdates:1];
    if (*(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSessionIdentifier + 4))
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v0 + OBJC_IVAR____TtC12mediaremoted32AVDiscoveryRoutingItemDataSource_targetAudioSessionIdentifier);
    }

    [v5 setTargetAudioSessionID:v6];
    v7 = [objc_opt_self() discoverySessionWithConfiguration:v5];
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      swift_weakInit();
      v18 = sub_100017BF4;
      v19 = v9;
      *&v16 = _NSConcreteStackBlock;
      *(&v16 + 1) = 1107296256;
      *&v17 = sub_100017880;
      *(&v17 + 1) = &unk_1004C7238;
      v10 = _Block_copy(&v16);
      v11 = v8;

      v12 = [v11 addOutputDevicesChangedCallback:v10];
      _Block_release(v10);

      if (v12)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
      }

      v20 = v16;
      v21 = v17;
      sub_1000038A4(&v20, &qword_100522890, &qword_100450610);

      v13 = *(v0 + v1);
      *(v0 + v1) = v11;
      v3 = v11;

      v2 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  v20 = 0u;
  v21 = 0u;
  result = sub_1000038A4(&v20, &qword_100522890, &qword_100450610);
  __break(1u);
  return result;
}

uint64_t sub_10001B274()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B2D8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1001BC5A8(&qword_100526D48, &qword_1004589B8);
  v100 = *(v6 - 8);
  v7 = *(v100 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v94 - v11;
  v13 = sub_1001BC5A8(&qword_100526D50, &qword_1004589C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v99 = &v94 - v18;
  v19 = sub_100015D10();
  if (v19[2])
  {
    v20 = sub_10000698C(a1, a2);
    if (v21)
    {
      v22 = (v19[7] + 16 * v20);
      a1 = *v22;
      v23 = v22[1];

      return a1;
    }
  }

  v97 = v10;
  v98 = v17;

  v101 = 45;
  v102 = 0xE100000000000000;
  __chkstk_darwin(v24);
  *(&v94 - 2) = &v101;

  v26 = sub_10001B9EC(0x7FFFFFFFFFFFFFFFLL, 1, sub_10001BDAC, (&v94 - 4), a1, a2, v25);
  v27 = v26;
  v28 = v26[2];
  if (v28 < 6)
  {
    goto LABEL_12;
  }

  v96 = v3;
  v29 = v26[4];
  v30 = v26[5];
  v31 = v26[6];
  v32 = v26[7];

  v33 = static String._fromSubstring(_:)();
  v35 = v34;

  if (v27[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  v94 = v6;
  v95 = a1;
  v36 = v27[8];
  v37 = v27[9];
  v38 = v27[10];
  v39 = v27[11];

  v40 = static String._fromSubstring(_:)();
  v42 = v41;

  v101 = v33;
  v102 = v35;

  v43._countAndFlagsBits = v40;
  v43._object = v42;
  String.append(_:)(v43);

  if (v27[2] < 3uLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v45 = v101;
  v44 = v102;
  v46 = v27[12];
  v47 = v27[13];
  v48 = v27[14];
  v49 = v27[15];

  v50 = static String._fromSubstring(_:)();
  v52 = v51;

  v101 = v45;
  v102 = v44;

  v53._countAndFlagsBits = v50;
  v53._object = v52;
  String.append(_:)(v53);

  if (v27[2] < 4uLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v55 = v101;
  v54 = v102;
  v56 = v27[16];
  v57 = v27[17];
  v58 = v27[18];
  v59 = v27[19];

  v60 = static String._fromSubstring(_:)();
  v62 = v61;

  v101 = v55;
  v102 = v54;

  v63._countAndFlagsBits = v60;
  v63._object = v62;
  String.append(_:)(v63);

  if (v27[2] >= 5uLL)
  {
    v65 = v101;
    v64 = v102;
    v66 = v27[20];
    v67 = v27[21];
    v68 = v27[22];
    v69 = v27[23];

    v70 = static String._fromSubstring(_:)();
    v72 = v71;

    v101 = v65;
    v102 = v64;

    v73._countAndFlagsBits = v70;
    v73._object = v72;
    String.append(_:)(v73);

    v75 = v101;
    v74 = v102;
    v3 = v96;
    sub_10033E118(v12);
    v76 = v99;
    v6 = v94;
    Regex.wholeMatch(in:)();
    (*(v100 + 8))(v12, v6);
    v77 = sub_1001BC5A8(&qword_100526D58, &qword_1004589C8);
    v78 = (*(*(v77 - 8) + 48))(v76, 1, v77);
    v79 = v76;
    a1 = v95;
    if (v78 != 1)
    {

      v89 = v79;
      goto LABEL_19;
    }

    sub_1000038A4(v79, &qword_100526D50, &qword_1004589C0);
    v28 = v27[2];
    if (v28)
    {
LABEL_13:
      v80 = v27[4];
      v81 = v27[5];
      v82 = v6;
      v83 = v27[6];
      v84 = v27[7];

      v75 = static String._fromSubstring(_:)();
      v74 = v85;

      v86 = v97;
      sub_100038AF0(v97);
      v87 = v98;
      Regex.wholeMatch(in:)();
      (*(v100 + 8))(v86, v82);
      v88 = sub_1001BC5A8(&qword_100526D58, &qword_1004589C8);
      if ((*(*(v88 - 8) + 48))(v87, 1, v88) == 1)
      {

        sub_1000038A4(v87, &qword_100526D50, &qword_1004589C0);
LABEL_16:

        return a1;
      }

      v89 = v87;
LABEL_19:
      sub_1000038A4(v89, &qword_100526D50, &qword_1004589C0);
      v90 = *(v3 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = v90;
      sub_100035B14(v75, v74, a1, a2, isUniquelyReferenced_nonNull_native);

      v92 = *(v3 + 16);
      *(v3 + 16) = v101;

      return v75;
    }

    __break(1u);
LABEL_12:
    if (v28 <= 1)
    {

      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_24:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_10001B9EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_10001BE04(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_10001BE04((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_10001BE04(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10001BE04(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_10001BE04((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001BDAC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

char *sub_10001BE04(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100523610, &qword_1004511C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_10001BF64(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100018C40(a1, v4);
}

uint64_t sub_10001BFA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100521B10, &unk_100450000);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10001C1E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RoutingItem.Attributes.Properties();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v62 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v61 - v10;
  __chkstk_darwin(v9);
  v13 = &v61 - v12;
  v14 = sub_1001BC5A8(&qword_1005236A0, &unk_100451250);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v61 - v19;
  v21 = [v1 modelSpecificInfo];
  if (v21)
  {
    v22 = v21;
    v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v23 = 0;
  }

  v24 = 0.0;
  v67 = [v2 hasBatteryLevel];
  if (v67)
  {
    [v2 batteryLevel];
    v24 = v25 * 100.0;
  }

  v65 = v5;
  v66 = a1;
  v63 = v13;
  v64 = v11;
  if (!v23)
  {
    v70 = 0u;
    v71 = 0u;
    sub_1000038A4(&v70, &qword_100522890, &qword_100450610);
    v70 = 0u;
    v71 = 0u;
    sub_1000038A4(&v70, &qword_100522890, &qword_100450610);
    v70 = 0u;
    v71 = 0u;
    v39 = 0.0;
    v38 = 1;
    v32 = 0.0;
    v31 = 1;
    goto LABEL_31;
  }

  v61 = v2;
  v26 = AVOutputDeviceBatteryLevelLeftKey;
  v68 = AVOutputDeviceBatteryLevelLeftKey;
  type metadata accessor for AVOutputDeviceModelSpecificKey(0);
  sub_10001CD5C(&qword_1005236B0, type metadata accessor for AVOutputDeviceModelSpecificKey);

  v27 = v26;
  AnyHashable.init<A>(_:)();
  if (!*(v23 + 16) || (v28 = sub_10001BF64(v69), (v29 & 1) == 0))
  {

    sub_10001BF10(v69);
    v70 = 0u;
    v71 = 0u;
    goto LABEL_14;
  }

  sub_100020E0C(*(v23 + 56) + 32 * v28, &v70);
  sub_10001BF10(v69);

  if (!*(&v71 + 1))
  {
LABEL_14:
    sub_1000038A4(&v70, &qword_100522890, &qword_100450610);
    v32 = 0.0;
    v31 = 1;
    goto LABEL_15;
  }

  v30 = swift_dynamicCast();
  v31 = v30 ^ 1;
  if (v30)
  {
    v32 = v69[0] * 100.0;
  }

  else
  {
    v32 = 0.0;
  }

LABEL_15:
  v33 = AVOutputDeviceBatteryLevelRightKey;
  v68 = AVOutputDeviceBatteryLevelRightKey;

  v34 = v33;
  AnyHashable.init<A>(_:)();
  if (!*(v23 + 16) || (v35 = sub_10001BF64(v69), (v36 & 1) == 0))
  {

    sub_10001BF10(v69);
    v70 = 0u;
    v71 = 0u;
    goto LABEL_22;
  }

  sub_100020E0C(*(v23 + 56) + 32 * v35, &v70);
  sub_10001BF10(v69);

  if (!*(&v71 + 1))
  {
LABEL_22:
    sub_1000038A4(&v70, &qword_100522890, &qword_100450610);
    v39 = 0.0;
    v38 = 1;
    goto LABEL_23;
  }

  v37 = swift_dynamicCast();
  v38 = v37 ^ 1;
  if (v37)
  {
    v39 = v69[0] * 100.0;
  }

  else
  {
    v39 = 0.0;
  }

LABEL_23:
  v68 = AVOutputDeviceBatteryLevelCaseKey;
  v40 = AVOutputDeviceBatteryLevelCaseKey;
  AnyHashable.init<A>(_:)();
  if (!*(v23 + 16) || (v41 = sub_10001BF64(v69), (v42 & 1) == 0))
  {

    sub_10001BF10(v69);
    v70 = 0u;
    v71 = 0u;
    v2 = v61;
    goto LABEL_31;
  }

  sub_100020E0C(*(v23 + 56) + 32 * v41, &v70);
  sub_10001BF10(v69);

  v2 = v61;
  if (!*(&v71 + 1))
  {
LABEL_31:
    sub_1000038A4(&v70, &qword_100522890, &qword_100450610);
    v44 = 1;
    v45 = 0.0;
    goto LABEL_32;
  }

  v43 = swift_dynamicCast();
  v44 = v43 ^ 1;
  if (v43)
  {
    v45 = v69[0] * 100.0;
  }

  else
  {
    v45 = 0.0;
  }

LABEL_32:
  v46 = type metadata accessor for RoutingItem.Attributes.BatteryInfo();
  v47 = *(*(v46 - 8) + 56);
  result = v47(v20, 1, 1, v46);
  if (v67)
  {
    if ((LODWORD(v24) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v24 > -1.0)
    {
      if (v24 < 256.0)
      {
        if (v31)
        {
          goto LABEL_37;
        }

        goto LABEL_42;
      }

LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    __break(1u);
    goto LABEL_63;
  }

  if (v31 & v38 & v44)
  {
LABEL_55:
    LOBYTE(v69[0]) = 0;
    sub_10001CD5C(&qword_1005236A8, &type metadata accessor for RoutingItem.Attributes.Properties);
    v50 = v63;
    dispatch thunk of OptionSet.init(rawValue:)();
    v51 = [v2 alternateTransportType];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    if (v52 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v54 == v55)
    {

      v56 = v65;
      v57 = v64;
    }

    else
    {
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v56 = v65;
      v57 = v64;
      if ((v58 & 1) == 0)
      {
LABEL_60:
        sub_10001DA70(v20, v18);
        (*(v56 + 16))(v57, v50, v4);
        RoutingItem.Attributes.init(batteryInfo:properties:)();
        (*(v56 + 8))(v50, v4);
        return sub_1000038A4(v20, &qword_1005236A0, &unk_100451250);
      }
    }

    v59 = v62;
    static RoutingItem.Attributes.Properties.isUSBConnectedBluetooth.getter();
    sub_10024A06C(v57, v59);
    v60 = *(v56 + 8);
    v60(v59, v4);
    v60(v57, v4);
    goto LABEL_60;
  }

  if (v31)
  {
LABEL_37:
    if (v38)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

LABEL_42:
  if ((LODWORD(v32) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v32 <= -1.0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v32 >= 256.0)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (v38)
  {
LABEL_38:
    if (v44)
    {
LABEL_39:
      v49 = v2;
LABEL_54:
      RoutingItem.Attributes.BatteryInfo.init(solo:left:right:chargeCase:)();
      sub_1000038A4(v20, &qword_1005236A0, &unk_100451250);
      v47(v18, 0, 1, v46);
      sub_10003AEF0(v18, v20, &qword_1005236A0, &unk_100451250);
      v2 = v49;
      goto LABEL_55;
    }

    goto LABEL_50;
  }

LABEL_46:
  if ((LODWORD(v39) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v39 <= -1.0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v39 >= 256.0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v44)
  {
    goto LABEL_39;
  }

LABEL_50:
  if ((LODWORD(v45) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v45 <= -1.0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v45 < 256.0)
  {
    v49 = v2;
    goto LABEL_54;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_10001CB30()
{
  v1 = v0;
  v2 = *sub_10001CEC0();
  v3 = sub_1000198C4();
  v5 = v4 >> 11;
  sub_1000196F4(v3, v6, v4);
  if ((v5 - 6) < 5 || [v1 isRemoteControllable])
  {
    if ([v1 discoveredOnSameInfra])
    {
      v7 = *sub_100257758();
      sub_100248690();
      dispatch thunk of SetAlgebra.intersection(_:)();
      sub_10024C2B4();
      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        dispatch thunk of SetAlgebra.formUnion(_:)();
      }
    }
  }

  if ([v1 isGroupable])
  {
    v8 = *sub_10025774C();
    sub_100248690();
    dispatch thunk of SetAlgebra.intersection(_:)();
    sub_10024C2B4();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      dispatch thunk of SetAlgebra.formUnion(_:)();
    }
  }

  if ([v1 supportsBluetoothSharing])
  {
    v9 = *sub_100257764();
    sub_100248690();
    dispatch thunk of SetAlgebra.intersection(_:)();
    sub_10024C2B4();
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      dispatch thunk of SetAlgebra.formUnion(_:)();
    }
  }

  return v2;
}

uint64_t sub_10001CD5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001CDB8(uint64_t a1)
{
  v2 = sub_10001CD5C(&qword_1005236B0, type metadata accessor for AVOutputDeviceModelSpecificKey);
  v3 = sub_10001CD5C(&qword_1005236E0, type metadata accessor for AVOutputDeviceModelSpecificKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void sub_10001CE74(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10001CECC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001BC5A8(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001CF34(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v3 = 0;
  v4 = a3 >> 11;
  if (v4 <= 0xB && ((1 << v4) & 0x806) != 0)
  {
    if (a2)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1001D6868();
      v3 = StringProtocol.contains<A>(_:)();
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_10001CFE8(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  switch(a3 >> 11)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 6:
    case 7:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:

      break;
    case 8:
    case 9:
    case 10:
    case 16:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10001D08C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (((a3 >> 8) & 6 | (a3 >> 7) & 1) == 6)
  {
    v3 = *(a1 + 32);
    if ((~v3 & 0x6FE) != 0)
    {
      v8 = *(a1 + 16);
      v7 = *(a1 + 24);
      sub_10024896C(v8, v7, v3);
      sub_10024896C(v8, v7, v3);
      v9 = sub_10001D1E4(v8, v7, v3);
      v10 = [objc_opt_self() symbolNameForComposition:v9];
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100248970(v8, v7, v3);
      sub_100248970(v8, v7, v3);
    }

    else
    {
      return 0xD00000000000001FLL;
    }
  }

  else
  {
    v5 = sub_10001D1E4(a1, a2, a3);
    v6 = [objc_opt_self() symbolNameForComposition:v5];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v4;
}

id sub_10001D1E4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = [objc_allocWithZone(MRGroupComposition) init];
  v7 = (a3 >> 8) & 6 | (a3 >> 7) & 1;
  if (v7 != 3)
  {
    v8 = sub_10001D898(a1, a2, a3);
    v10 = v9;
    v12 = v11;
    if (sub_10001CF34(v8, v9, v11))
    {
      [v6 setDisplayCount:1];
LABEL_10:
      sub_1000196F4(v8, v10, v12);
      return v6;
    }

    if (v12 >> 11 == 15 && v10)
    {

      v13 = String._bridgeToObjectiveC()();
      sub_1000196F4(v8, v10, v12);
      [v6 setSoloProductIdentifier:v13];

      [v6 setHeadphoneCount:1];
      goto LABEL_10;
    }

    if (v7 == 5)
    {
      [v6 setBuiltInCount:1];
      goto LABEL_10;
    }

    switch(v12 >> 11)
    {
      case 1:
        if (!v10)
        {
          goto LABEL_13;
        }

        v25 = String._bridgeToObjectiveC()();
        [v6 setSoloProductIdentifier:v25];

        if (v7 == 2)
        {
          [v6 setBluetoothSpeakerCount:1];
        }

        else if ((v12 & 0x100) != 0)
        {
          [v6 setHifiCount:1];
        }

        else
        {
          [v6 setLofiCount:1];
        }

        goto LABEL_10;
      case 6:
        if (v10)
        {
          v27 = String._bridgeToObjectiveC()();
          [v6 setSoloModelIdentifier:v27];

          v28 = String._bridgeToObjectiveC()();
        }

        else
        {
          [v6 setSoloModelIdentifier:0];
          v28 = 0;
        }

        [v6 addHomePodWithModelIdentifier:v28];

        goto LABEL_10;
      case 7:
        [v6 setAtvCount:1];
        goto LABEL_10;
      case 8:
      case 9:
      case 10:
        v15 = sub_10033F54C(v8, v12);
        goto LABEL_97;
      case 11:
        if (v10)
        {
          v29 = String._bridgeToObjectiveC()();
        }

        else
        {
          v29 = 0;
        }

        [v6 setSoloModelIdentifier:v29];

        [v6 setMacCount:1];
        goto LABEL_10;
      case 12:
        if (v10)
        {
          v30 = String._bridgeToObjectiveC()();
        }

        else
        {
          v30 = 0;
        }

        [v6 setSoloModelIdentifier:v30];

        [v6 setIPhoneCount:1];
        goto LABEL_10;
      case 14:
        if (v10)
        {
          v26 = String._bridgeToObjectiveC()();
        }

        else
        {
          v26 = 0;
        }

        [v6 setSoloModelIdentifier:v26];

        [v6 setVisionCount:1];
        goto LABEL_10;
      case 16:
        [v6 setLegacyBeatsCount:1];
        goto LABEL_10;
      case 17:
        if (v12 == 34816 && !(v8 | v10) || v12 == 34816 && v8 == 1 && !v10 || v12 == 34816 && v8 == 2 && !v10 || v12 == 34816 && v8 == 3 && !v10 || v12 == 34816 && v8 == 4 && !v10 || v12 == 34816 && v8 == 5 && !v10)
        {
          goto LABEL_13;
        }

        if (v12 == 34816 && v8 == 6 && !v10)
        {
          [v6 setTvCount:1];
          return v6;
        }

        if (v12 != 34816 || v8 != 7 || v10)
        {
          if (v12 == 34816 && v8 == 8 && !v10)
          {
            [v6 setSetTopCount:1];
          }

          else if (v12 == 34816 && v8 == 9 && !v10)
          {
            [v6 setTvStickCount:1];
          }

          else if (v12 == 34816 && v8 == 10 && !v10)
          {
            [v6 setHearingDeviceCount:1];
          }

          else
          {
            [v6 setLofiCount:1];
          }

          return v6;
        }

LABEL_13:
        v15 = [objc_allocWithZone(MRGroupComposition) init];
        v18 = sub_10001D898(a1, a2, a3);
        v19 = v16;
        v20 = v17;
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            v23 = v17 >> 11;
            if (v23 == 2 || v23 == 3)
            {
              if (v16)
              {
                v31 = String._bridgeToObjectiveC()();
              }

              else
              {
                v31 = 0;
              }

              [v15 setSoloProductIdentifier:v31];

              v24 = v15;
            }

            else
            {
              v24 = v15;
              if (v23 == 17 && v17 == 34816 && v18 == 4 && !v16)
              {
                [v15 setHeadphoneCount:1];
LABEL_97:
                sub_1000196F4(v8, v10, v12);

                return v15;
              }
            }

            [v24 setBluetoothSpeakerCount:1];
LABEL_96:
            sub_1000196F4(v18, v19, v20);
            goto LABEL_97;
          }

          v21 = v15;
        }

        else
        {
          if (!v7)
          {
            [v15 setUnknownCount:1];
            goto LABEL_96;
          }

          v21 = v15;
          if (v7 == 1)
          {
            if ((v17 & 0xF900) == 0x900)
            {
LABEL_17:
              [v21 setHifiCount:1];
              goto LABEL_96;
            }

LABEL_84:
            [v21 setLofiCount:1];
            goto LABEL_96;
          }
        }

        v22 = v17 >> 11;
        if (v22 > 0xB)
        {
          if (v22 == 12)
          {
            [v21 setIPhoneCount:1];
            goto LABEL_96;
          }

          if (v22 == 14)
          {
            [v21 setVisionCount:1];
            goto LABEL_96;
          }

          if (v22 == 17 && (v17 == 34816 && v18 == 2 && !v16 || v17 == 34816 && v18 == 3 && !v16 || v17 == 34816 && v18 == 6 && !v16))
          {
            [v21 setTvCount:1];
            goto LABEL_96;
          }
        }

        else
        {
          if (v22 - 4 < 2)
          {
            if (v18)
            {
              goto LABEL_17;
            }

            goto LABEL_84;
          }

          if (v22 == 2)
          {
            [v21 setHeadphoneCount:1];
            goto LABEL_96;
          }

          if (v22 == 11)
          {
            [v21 setMacCount:1];
            goto LABEL_96;
          }
        }

        [v21 setUnknownCount:1];
        goto LABEL_96;
      default:
        goto LABEL_13;
    }
  }

  [v6 setCarplayCount:1];
  return v6;
}

uint64_t sub_10001D898(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a1;
  v5 = (a3 >> 8) & 6 | (a3 >> 7) & 1;
  if (v5 <= 2)
  {
    if (!v5)
    {
      v6 = *(a1 + 32);
      v4 = *(a1 + 16);
      a2 = *(a1 + 24);
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v5 <= 4)
  {
LABEL_5:
    v6 = a3 & 0xF97F;
    goto LABEL_6;
  }

  if (v5 != 5)
  {
    return 0;
  }

  v6 = a3 & 0xF97F;
LABEL_6:
  sub_10001CFE8(v4, a2, v6);
  return v4;
}

uint64_t sub_10001D948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HostedRoutingItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001D9AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001BC5A8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001DA14(uint64_t a1)
{
  v2 = type metadata accessor for HostedRoutingItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001DA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_1005236A0, &unk_100451250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001DAE0(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = (a3 >> 8) & 6 | (a3 >> 7) & 1;
  if (v3 <= 3)
  {
    if (!v3)
    {
    }

    return sub_10001CFE8(result, a2, a3 & 0xF97F);
  }

  if (v3 <= 5)
  {
    return sub_10001CFE8(result, a2, a3 & 0xF97F);
  }

  if (v3 == 6)
  {
  }

  return result;
}

uint64_t sub_10001DB34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000698C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100285E9C();
      goto LABEL_7;
    }

    sub_10001DC98(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_10000698C(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for HostedRoutingItem(0) - 8) + 72) * v12;

    return sub_100286E8C(a1, v20);
  }

LABEL_13:
  sub_10001E038(v12, a2, a3, a1, v18);
}