uint64_t sub_1000010B0()
{
  v0 = type metadata accessor for Logger();
  sub_100002A20(v0, qword_100008220);
  sub_100001188(v0, qword_100008220);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100001124()
{
  if (qword_100008218 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100001188(v0, qword_100008220);
}

uint64_t sub_100001188(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_1000011C8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_10000120C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void *sub_100001254()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_100001298(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 24);
  *(v1 + 24) = a1;
  v5 = a1;

  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for FIService());
    v7 = FIService.init(daemon:)();
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v8 = *(v2 + 16);
  *(v2 + 16) = v7;
}

void (*sub_100001340(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100001394;
}

void sub_100001394(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(v4 + 24);
    if (v5)
    {
      v6 = objc_allocWithZone(type metadata accessor for FIService());
      v7 = v5;
      v8 = FIService.init(daemon:)();
      v4 = *(a1 + 24);
    }

    else
    {
      v8 = 0;
    }

    swift_beginAccess();
    v9 = *(v4 + 16);
    *(v4 + 16) = v8;
  }
}

uint64_t sub_100001438()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  sub_100001638();
  static DispatchQoS.unspecified.getter();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_100001684();
  sub_1000016DC(&qword_100008118, &qword_100002FB8);
  sub_100001724();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_100001638()
{
  result = qword_100008108;
  if (!qword_100008108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008108);
  }

  return result;
}

unint64_t sub_100001684()
{
  result = qword_100008110;
  if (!qword_100008110)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008110);
  }

  return result;
}

uint64_t sub_1000016DC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001724()
{
  result = qword_100008120;
  if (!qword_100008120)
  {
    sub_100001788(&qword_100008118, &qword_100002FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008120);
  }

  return result;
}

uint64_t sub_100001788(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000017D8()
{
  v0 = swift_allocObject();
  sub_100001810();
  return v0;
}

void *sub_100001810()
{
  v1 = v0;
  v21 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v7 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  sub_100001638();
  v0[2] = 0;
  v20 = (v0 + 2);
  v0[3] = 0;
  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_100001684();
  sub_1000016DC(&qword_100008118, &qword_100002FB8);
  sub_100001724();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  v0[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if ((*(*v0 + 160))())
  {
    type metadata accessor for FIDaemon();
    v8 = FIDaemon.__allocating_init()();
    swift_beginAccess();
    v9 = v1[3];
    v1[3] = v8;
    v10 = v8;

    if (v10)
    {
      v11 = objc_allocWithZone(type metadata accessor for FIService());
      v12 = FIService.init(daemon:)();
      v13 = v20;
      swift_beginAccess();
      v14 = *v13;
      *v13 = v12;
    }
  }

  else
  {
    if (qword_100008218 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100001188(v15, qword_100008220);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "failed to meet conditions for initializing the daemon, waiting...", v18, 2u);
    }

    (*(*v1 + 168))();
  }

  return v1;
}

uint64_t sub_100001BBC()
{
  if (BYSetupAssistantNeedsToRun())
  {
    if (qword_100008218 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_100001188(v0, qword_100008220);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_7;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "device is not past device setup";
LABEL_6:
    _os_log_impl(&_mh_execute_header, v1, v2, v4, v3, 2u);

LABEL_7:

    return 0;
  }

  if (MKBGetDeviceLockState() == 3)
  {
    return 1;
  }

  result = MKBDeviceUnlockedSinceBoot();
  if (result != 1)
  {
    if (qword_100008218 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100001188(v6, qword_100008220);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_7;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "device was not unlocked since boot";
    goto LABEL_6;
  }

  return result;
}

void sub_100001D58()
{
  v1 = swift_allocObject();
  *(v1 + 16) = -1;
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v28 = sub_100002728;
  v29 = v4;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_100002288;
  v27 = &unk_100004380;
  v5 = _Block_copy(&aBlock);

  swift_beginAccess();
  LODWORD(v3) = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", (v1 + 16), v2, v5);
  swift_endAccess();
  _Block_release(v5);
  if (v3 || *(v1 + 16) == -1)
  {
    goto LABEL_14;
  }

  if (qword_100008218 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100001188(v6, qword_100008220);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "registered for notifications of first unlock", v9, 2u);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = -1;
  v11 = (v10 + 16);
  if (!BYSetupAssistantFinishedDarwinNotification)
  {
    __break(1u);
LABEL_14:
    aBlock = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v20._object = 0x8000000100003070;
    v20._countAndFlagsBits = 0xD000000000000036;
    String.append(_:)(v20);
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v10;
  v28 = sub_1000027A8;
  v29 = v13;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_100002288;
  v27 = &unk_1000043D0;
  v14 = _Block_copy(&aBlock);

  v15 = String.utf8CString.getter();

  swift_beginAccess();
  v16 = notify_register_dispatch((v15 + 32), v11, v2, v14);
  swift_endAccess();

  _Block_release(v14);
  if (v16 || *v11 == -1)
  {
    aBlock = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    v22._countAndFlagsBits = 0xD00000000000003FLL;
    v22._object = 0x80000001000030B0;
    String.append(_:)(v22);
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    goto LABEL_16;
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "registered for notifications of device setup finished", v19, 2u);
  }
}

uint64_t sub_100002288(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1000022DC(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 32);
  *v9 = v12;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (qword_100008218 != -1)
  {
LABEL_18:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100001188(v14, qword_100008220);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, a3, v17, 2u);
  }

  v18 = (*(*v11 + 128))();
  if (v18)
  {
  }

  else if ((*(*v11 + 160))())
  {
    type metadata accessor for FIDaemon();
    v19 = FIDaemon.__allocating_init()();
    (*(*v11 + 136))(v19);
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "failed to meet conditions for initializing the daemon, waiting...", v22, 2u);
    }
  }

  swift_beginAccess();
  v23 = *(a2 + 16);
  if (v23 != -1)
  {
    notify_cancel(v23);
  }
}

uint64_t sub_10000263C()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_1000026F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000274C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100002768()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000027CC()
{
  v1 = objc_autoreleasePoolPush();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((_set_user_dir_suffix() & 1) == 0)
  {
    if (qword_100008218 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100001188(v4, qword_100008220);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v5, v6, "Could not setup dirhelper suffix: %{darwin.errno}d", v7, 8u);
    }

    exit(1);
  }

  if (qword_100008218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100001188(v2, qword_100008220);
  ignoreVFSPermissions(logger:)();
  type metadata accessor for FileIndexer();
  swift_allocObject();
  sub_100001810();

  objc_autoreleasePoolPop(v1);
  if (v0)
  {
    __break(1u);
  }

  else
  {
    v3 = [objc_opt_self() currentRunLoop];
    [v3 run];
  }
}

uint64_t *sub_100002A20(uint64_t a1, uint64_t *a2)
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