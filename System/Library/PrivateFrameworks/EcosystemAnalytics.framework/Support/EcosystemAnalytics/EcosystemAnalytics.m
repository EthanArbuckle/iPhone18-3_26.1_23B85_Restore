void sub_100001208()
{
  v0 = (*(*(sub_1000058DC(&qword_1000104D0, &qword_100006DB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &aBlock - v1;
  v3 = (*(*(sub_1000058DC(&qword_1000104D8, &qword_100006DB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &aBlock - v4;
  v6 = (*(*(sub_1000058DC(&qword_1000104E0, &qword_100006DC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &aBlock - v7;
  v9 = (*(*(sub_1000058DC(&qword_1000104E8, &unk_100006DC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &aBlock - v10;
  if (getppid() == 1)
  {
    static os_log_type_t.default.getter();
    sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
    v12 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    type metadata accessor for EcosystemAnalyticsd();
    v13 = swift_allocObject();
    sub_100001EEC();
    static os_log_type_t.default.getter();
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    if (sub_100001A78())
    {
      static os_log_type_t.info.getter();
      v15 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v16 = String._bridgeToObjectiveC()();
      IsEventUsed = AnalyticsIsEventUsed();

      if (IsEventUsed)
      {
        static os_log_type_t.default.getter();
        v18 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v19 = swift_allocObject();
        *(v19 + 16) = 0xD00000000000002DLL;
        *(v19 + 24) = 0x8000000100007460;
        v20 = swift_allocObject();
        *(v20 + 16) = v19;
        *(v20 + 24) = 0;
        *(v20 + 32) = v13;
        v43 = sub_100006494;
        v44 = v20;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_100004C60;
        v42 = &unk_10000C6C8;
        v21 = _Block_copy(&aBlock);

        v22 = String.utf8CString.getter();
        xpc_activity_register((v22 + 32), XPC_ACTIVITY_CHECK_IN, v21);

        _Block_release(v21);
      }
    }

    if (sub_100001A78())
    {
      static os_log_type_t.info.getter();
      v23 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v24 = String._bridgeToObjectiveC()();
      v25 = AnalyticsIsEventUsed();

      if (v25)
      {
        static os_log_type_t.default.getter();
        v26 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v27 = swift_allocObject();
        *(v27 + 16) = 0xD00000000000002ELL;
        *(v27 + 24) = 0x8000000100007350;
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        *(v28 + 24) = 1;
        *(v28 + 32) = v13;
        v43 = sub_1000061C0;
        v44 = v28;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_100004C60;
        v42 = &unk_10000C678;
        v29 = _Block_copy(&aBlock);

        v30 = String.utf8CString.getter();
        xpc_activity_register((v30 + 32), XPC_ACTIVITY_CHECK_IN, v29);

        _Block_release(v29);
      }
    }

    if (sub_100001A78())
    {
      static os_log_type_t.info.getter();
      v31 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }

    dispatch_main();
  }

  static os_log_type_t.error.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v32 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v33 = type metadata accessor for AnalysisTypeForCA();
  (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
  v34 = type metadata accessor for TargetType();
  (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
  v35 = enum case for AnalysisFailureType.xpcError(_:);
  v36 = type metadata accessor for AnalysisFailureType();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v5, v35, v36);
  (*(v37 + 56))(v5, 0, 1, v36);
  v38 = type metadata accessor for AnalysisFailureState();
  (*(*(v38 - 8) + 56))(v2, 1, 1, v38);
  static AnalysisFailure.send(analysisType:targetType:retries:targetPath:targetName:targetBundleID:targetBundleVersion:failureType:failureDescription:daemonState:)();
  sub_100006124(v2, &qword_1000104D0, &qword_100006DB0);
  sub_100006124(v5, &qword_1000104D8, &qword_100006DB8);
  sub_100006124(v8, &qword_1000104E0, &qword_100006DC0);
  sub_100006124(v11, &qword_1000104E8, &unk_100006DC8);
  exit(-1);
}

uint64_t sub_100001A78()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = [v1 dictionaryRepresentation];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v3 + 16))
  {
    sub_100005ECC(0x64656C62616E65, 0xE700000000000000);
    v5 = v4;

    if (v5)
    {
      v6 = [v0 standardUserDefaults];
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 BOOLForKey:v7];

      static os_log_type_t.default.getter();
      sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100006D20;
      *(v9 + 56) = &type metadata for Bool;
      *(v9 + 64) = &protocol witness table for Bool;
      *(v9 + 32) = v8;
      sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
      v10 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      return v8;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_100001C54(char a1)
{
  v3 = *(v1 + 24);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000060C8;
  *(v6 + 24) = v5;
  v9[4] = sub_1000060E4;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100001EC4;
  v9[3] = &unk_10000C600;
  v7 = _Block_copy(v9);

  dispatch_sync(v3, v7);
  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100001DC8(char a1)
{
  v2 = static os_log_type_t.default.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v3 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v2, "ecosystemanalyticsd: _memoryPressureDetected value set to: %{BOOL}d", v4, 8u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 17) = a1 & 1;
  }

  return result;
}

void *sub_100001EEC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v1 - 8);
  v49 = v1;
  v2 = *(v48 + 64);
  __chkstk_darwin();
  v47 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin();
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v56 = *(v54 - 8);
  v7 = *(v56 + 64);
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  v12 = type metadata accessor for DispatchQoS();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  __chkstk_darwin();
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 1;
  v16 = sub_100006410(0, &qword_1000105D8, OS_dispatch_queue_ptr);
  v41 = "abled default: %d";
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  v17 = sub_100006374(&qword_1000105E0, &type metadata accessor for OS_dispatch_queue.Attributes);
  v53 = sub_1000058DC(&qword_1000105E8, qword_100006DF8);
  v18 = sub_1000063BC(&qword_1000105F0, &qword_1000105E8, qword_100006DF8);
  v52 = v10;
  v40 = v17;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v50 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v19 = v56 + 104;
  v51 = *(v56 + 104);
  v37 = v9;
  v20 = v54;
  v51(v9);
  v56 = v19;
  v36 = v15;
  v38 = v16;
  v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v22 = v55;
  v55[3] = v21;
  v41 = "tem.memoryPressureQueue";
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  v39 = v18;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = v37;
  v24 = v50;
  v25 = v51;
  (v51)(v37, v50, v20);
  v26 = v36;
  v22[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v54;
  v25(v23, v24, v54);
  v28 = v26;
  v55[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v41 = "tem-analytics.runtime-analysis";
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v51)(v23, v50, v27);
  v29 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v30 = v55;
  v55[6] = v29;
  sub_100006410(0, &qword_1000105F8, OS_dispatch_source_ptr);
  v31 = v42;
  static OS_dispatch_source.MemoryPressureEvent.procLimitWarn.getter();
  static OS_dispatch_source.makeMemoryPressureSource(eventMask:queue:)();
  (*(v43 + 8))(v31, v44);
  swift_getObjectType();
  v32 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100006458;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006484;
  aBlock[3] = &unk_10000C7E0;
  v33 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = v47;
  sub_100003188();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v33);
  (*(v48 + 8))(v34, v49);
  (*(v45 + 8))(v28, v46);

  OS_dispatch_source.resume()();
  swift_unknownObjectRelease();
  return v30;
}

uint64_t sub_100002658(uint64_t a1)
{
  v39 = a1;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v41 - 8);
  v1 = *(v44 + 64);
  __chkstk_darwin();
  v40 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  __chkstk_darwin();
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(sub_1000058DC(&qword_1000104D0, &qword_100006DB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v37 = &v37 - v7;
  v8 = (*(*(sub_1000058DC(&qword_1000104D8, &qword_100006DB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v37 - v9;
  v11 = (*(*(sub_1000058DC(&qword_1000104E0, &qword_100006DC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v37 - v12;
  v14 = (*(*(sub_1000058DC(&qword_1000104E8, &unk_100006DC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v37 - v15;
  v17 = type metadata accessor for OSSignpostID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.error.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v22 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  static os_signpost_type_t.event.getter();
  v23 = static OS_os_log.default.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v18 + 8))(v21, v17);
  v24 = type metadata accessor for AnalysisTypeForCA();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  v25 = type metadata accessor for TargetType();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  v26 = enum case for AnalysisFailureType.memoryPressureError(_:);
  v27 = type metadata accessor for AnalysisFailureType();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v10, v26, v27);
  (*(v28 + 56))(v10, 0, 1, v27);
  v29 = type metadata accessor for AnalysisFailureState();
  v30 = v37;
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  static AnalysisFailure.send(analysisType:targetType:retries:targetPath:targetName:targetBundleID:targetBundleVersion:failureType:failureDescription:daemonState:)();
  sub_100006124(v30, &qword_1000104D0, &qword_100006DB0);
  sub_100006124(v10, &qword_1000104D8, &qword_100006DB8);
  sub_100006124(v13, &qword_1000104E0, &qword_100006DC0);
  sub_100006124(v16, &qword_1000104E8, &unk_100006DC8);
  sub_100006410(0, &qword_1000105D8, OS_dispatch_queue_ptr);
  v31 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100006460;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006484;
  aBlock[3] = &unk_10000C808;
  v32 = _Block_copy(aBlock);

  v33 = v38;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100006374(&qword_100010550, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000058DC(&qword_100010558, &unk_100006DD8);
  sub_1000063BC(&qword_100010560, &qword_100010558, &unk_100006DD8);
  v35 = v40;
  v34 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);

  (*(v44 + 8))(v35, v34);
  return (*(v42 + 8))(v33, v43);
}

uint64_t sub_100002D90()
{
  v0 = (*(*(sub_1000058DC(&qword_1000104D0, &qword_100006DB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v20 - v1;
  v3 = (*(*(sub_1000058DC(&qword_1000104D8, &qword_100006DB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v20 - v4;
  v6 = (*(*(sub_1000058DC(&qword_1000104E0, &qword_100006DC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v20 - v7;
  v9 = (*(*(sub_1000058DC(&qword_1000104E8, &unk_100006DC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v20 - v10;
  static os_log_type_t.error.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v12 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100001C54(1);
  }

  v13 = type metadata accessor for AnalysisTypeForCA();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = type metadata accessor for TargetType();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = enum case for AnalysisFailureType.memoryPressureError(_:);
  v16 = type metadata accessor for AnalysisFailureType();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v5, v15, v16);
  (*(v17 + 56))(v5, 0, 1, v16);
  v18 = type metadata accessor for AnalysisFailureState();
  (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
  static AnalysisFailure.send(analysisType:targetType:retries:targetPath:targetName:targetBundleID:targetBundleVersion:failureType:failureDescription:daemonState:)();
  sub_100006124(v2, &qword_1000104D0, &qword_100006DB0);
  sub_100006124(v5, &qword_1000104D8, &qword_100006DB8);
  sub_100006124(v8, &qword_1000104E0, &qword_100006DC0);
  return sub_100006124(v11, &qword_1000104E8, &unk_100006DC8);
}

uint64_t sub_100003188()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100006374(&qword_100010550, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000058DC(&qword_100010558, &unk_100006DD8);
  sub_1000063BC(&qword_100010560, &qword_100010558, &unk_100006DD8);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_100003260(_xpc_activity_s *a1, uint64_t a2, int a3, void *a4)
{
  v84 = a4;
  v83 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v85 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(*(sub_1000058DC(&qword_1000104D0, &qword_100006DB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v82 = &v75 - v16;
  v17 = (*(*(sub_1000058DC(&qword_1000104D8, &qword_100006DB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v19 = &v75 - v18;
  v20 = (*(*(sub_1000058DC(&qword_1000104E0, &qword_100006DC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v22 = &v75 - v21;
  v23 = (*(*(sub_1000058DC(&qword_1000104E8, &unk_100006DC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v25 = &v75 - v24;
  if (xpc_activity_get_state(a1))
  {
    if (xpc_activity_get_state(a1) == 2)
    {
      v76 = v10;
      v77 = v12;
      v78 = v11;
      v79 = v7;
      v80 = v6;
      static os_log_type_t.default.getter();
      v75 = sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
      v26 = swift_allocObject();
      v81 = xmmword_100006D20;
      *(v26 + 16) = xmmword_100006D20;
      swift_beginAccess();
      v27 = *(a2 + 16);
      v28 = *(a2 + 24);
      *(v26 + 56) = &type metadata for String;
      v29 = sub_10000603C();
      *(v26 + 64) = v29;
      *(v26 + 32) = v27;
      *(v26 + 40) = v28;
      sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);

      v30 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      if (xpc_activity_should_defer(a1))
      {
        static os_log_type_t.default.getter();
        v31 = swift_allocObject();
        *(v31 + 16) = v81;
        swift_beginAccess();
        v33 = *(a2 + 16);
        v32 = *(a2 + 24);
        *(v31 + 56) = &type metadata for String;
        *(v31 + 64) = v29;
        *(v31 + 32) = v33;
        *(v31 + 40) = v32;

        v34 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        if (!xpc_activity_set_state(a1, 3))
        {
          static os_log_type_t.fault.getter();
          v35 = swift_allocObject();
          *(v35 + 16) = v81;
          state = xpc_activity_get_state(a1);
          *(v35 + 56) = &type metadata for Int;
          *(v35 + 64) = &protocol witness table for Int;
          *(v35 + 32) = state;
          v37 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          v38 = type metadata accessor for AnalysisTypeForCA();
          (*(*(v38 - 8) + 56))(v25, 1, 1, v38);
          v39 = type metadata accessor for TargetType();
          (*(*(v39 - 8) + 56))(v22, 1, 1, v39);
          v40 = enum case for AnalysisFailureType.xpcError(_:);
          v41 = type metadata accessor for AnalysisFailureType();
          v42 = *(v41 - 8);
          (*(v42 + 104))(v19, v40, v41);
          (*(v42 + 56))(v19, 0, 1, v41);
          v87 = 0;
          v88 = 0xE000000000000000;
          _StringGuts.grow(_:)(29);

          v87 = 0xD00000000000001BLL;
          v88 = 0x80000001000075A0;
          v86 = xpc_activity_get_state(a1);
          v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v43);

          swift_unknownObjectRetain();
          v44 = v82;
          AnalysisFailureState.init(xpcActivity:)();
          v45 = type metadata accessor for AnalysisFailureState();
          (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
          static AnalysisFailure.send(analysisType:targetType:retries:targetPath:targetName:targetBundleID:targetBundleVersion:failureType:failureDescription:daemonState:)();

          sub_100006124(v44, &qword_1000104D0, &qword_100006DB0);
          sub_100006124(v19, &qword_1000104D8, &qword_100006DB8);
          sub_100006124(v22, &qword_1000104E0, &qword_100006DC0);
          sub_100006124(v25, &qword_1000104E8, &unk_100006DC8);
        }
      }

      else
      {
        if (v83)
        {
          v57 = v76;
          v67 = v84;
          if (v83 == 1)
          {
            v68 = v84[5];
            v58 = swift_allocObject();
            v58[2] = v67;
            v58[3] = a2;
            v58[4] = a1;
            v93 = sub_100006268;
            v94 = v58;
            aBlock = _NSConcreteStackBlock;
            v90 = 1107296256;
            v70 = &unk_10000C768;
          }

          else
          {
            v68 = v84[6];
            v69 = swift_allocObject();
            v69[2] = v67;
            v69[3] = a2;
            v69[4] = a1;
            v93 = sub_100006214;
            v94 = v69;
            aBlock = _NSConcreteStackBlock;
            v90 = 1107296256;
            v70 = &unk_10000C718;
          }

          v91 = sub_100006484;
          v92 = v70;
          v71 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();

          v72 = v68;
          v73 = v85;
          static DispatchQoS.unspecified.getter();
          v87 = &_swiftEmptyArrayStorage;
          sub_100006374(&qword_100010550, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000058DC(&qword_100010558, &unk_100006DD8);
          sub_1000063BC(&qword_100010560, &qword_100010558, &unk_100006DD8);
          v74 = v80;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v71);

          (*(v79 + 8))(v57, v74);
          (*(v77 + 8))(v73, v78);
        }

        else
        {
          v59 = v84;
          v60 = v84[4];
          v61 = swift_allocObject();
          v61[2] = v59;
          v61[3] = a2;
          v61[4] = a1;
          v93 = sub_1000062BC;
          v94 = v61;
          aBlock = _NSConcreteStackBlock;
          v90 = 1107296256;
          v91 = sub_100006484;
          v92 = &unk_10000C7B8;
          v62 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();
          v63 = v60;

          v64 = v85;
          static DispatchQoS.unspecified.getter();
          v87 = &_swiftEmptyArrayStorage;
          sub_100006374(&qword_100010550, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000058DC(&qword_100010558, &unk_100006DD8);
          sub_1000063BC(&qword_100010560, &qword_100010558, &unk_100006DD8);
          v65 = v76;
          v66 = v80;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v62);

          (*(v79 + 8))(v65, v66);
          (*(v77 + 8))(v64, v78);
        }
      }
    }

    else
    {
      static os_log_type_t.info.getter();
      sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100006D30;
      v53 = xpc_activity_get_state(a1);
      *(v52 + 56) = &type metadata for Int;
      *(v52 + 64) = &protocol witness table for Int;
      *(v52 + 32) = v53;
      swift_beginAccess();
      v55 = *(a2 + 16);
      v54 = *(a2 + 24);
      *(v52 + 96) = &type metadata for String;
      *(v52 + 104) = sub_10000603C();
      *(v52 + 72) = v55;
      *(v52 + 80) = v54;
      sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);

      v56 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }
  }

  else
  {
    static os_log_type_t.info.getter();
    sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100006D20;
    swift_beginAccess();
    v48 = *(a2 + 16);
    v47 = *(a2 + 24);
    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_10000603C();
    *(v46 + 32) = v48;
    *(v46 + 40) = v47;
    sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);

    v49 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    swift_beginAccess();
    v50 = *(a2 + 16);
    v51 = *(a2 + 24);

    sub_100003F7C(v50, v51, a1);
  }
}

void sub_100003F7C(uint64_t a1, uint64_t a2, _xpc_activity_s *a3)
{
  v6 = (*(*(sub_1000058DC(&qword_1000104D0, &qword_100006DB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v41 = &v37 - v7;
  v8 = (*(*(sub_1000058DC(&qword_1000104D8, &qword_100006DB8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v37 - v9;
  v11 = (*(*(sub_1000058DC(&qword_1000104E0, &qword_100006DC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v37 - v12;
  v14 = (*(*(sub_1000058DC(&qword_1000104E8, &unk_100006DC8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v37 - v15;
  static os_log_type_t.default.getter();
  sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
  v17 = swift_allocObject();
  v39 = xmmword_100006D20;
  *(v17 + 16) = xmmword_100006D20;
  *(v17 + 56) = &type metadata for String;
  v38 = sub_10000603C();
  *(v17 + 64) = v38;
  v40 = a1;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);

  v18 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v42 = a3;
  v19 = xpc_activity_copy_criteria(a3);
  if (!v19)
  {
    static os_log_type_t.error.getter();
    v24 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v25 = type metadata accessor for AnalysisTypeForCA();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
    v26 = type metadata accessor for TargetType();
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
    v27 = enum case for AnalysisFailureType.xpcError(_:);
    v28 = type metadata accessor for AnalysisFailureType();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v10, v27, v28);
    (*(v29 + 56))(v10, 0, 1, v28);
    v30 = type metadata accessor for AnalysisFailureState();
    v31 = v41;
    (*(*(v30 - 8) + 56))(v41, 1, 1, v30);
    static AnalysisFailure.send(analysisType:targetType:retries:targetPath:targetName:targetBundleID:targetBundleVersion:failureType:failureDescription:daemonState:)();
    sub_100006124(v31, &qword_1000104D0, &qword_100006DB0);
    sub_100006124(v10, &qword_1000104D8, &qword_100006DB8);
    sub_100006124(v13, &qword_1000104E0, &qword_100006DC0);
    sub_100006124(v16, &qword_1000104E8, &unk_100006DC8);
    return;
  }

  v20 = v19;
  v21 = sub_100004F64();
  static os_log_type_t.default.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100006D30;
  *(v22 + 56) = &type metadata for Int;
  *(v22 + 64) = &protocol witness table for Int;
  if (v21)
  {
    *(v22 + 32) = 301;
    *(v22 + 96) = &type metadata for Int;
    *(v22 + 104) = &protocol witness table for Int;
    *(v22 + 72) = 301;
    v23 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    xpc_dictionary_set_string(v20, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    if (XPC_ACTIVITY_EXPECTED_DURATION)
    {
      xpc_dictionary_set_int64(v20, XPC_ACTIVITY_EXPECTED_DURATION, 60);
      xpc_dictionary_set_uint64(v20, XPC_ACTIVITY_DELAY, 0x12DuLL);
      xpc_dictionary_set_uint64(v20, XPC_ACTIVITY_GRACE_PERIOD, 0x12DuLL);
      xpc_activity_set_criteria(v42, v20);

      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  *(v22 + 32) = 604800;
  *(v22 + 96) = &type metadata for Int;
  *(v22 + 104) = &protocol witness table for Int;
  *(v22 + 72) = 86400;
  v32 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  xpc_dictionary_set_int64(v20, XPC_ACTIVITY_EXPECTED_DURATION, 60);
  xpc_dictionary_set_uint64(v20, XPC_ACTIVITY_DELAY, 0x93A80uLL);
  xpc_dictionary_set_uint64(v20, XPC_ACTIVITY_GRACE_PERIOD, 0x15180uLL);
  v33 = v40;
  if (v40 == 0xD00000000000002ELL && 0x8000000100007350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (!XPC_ACTIVITY_REQUIRES_CLASS_B)
    {
LABEL_19:
      __break(1u);
      return;
    }

    xpc_dictionary_set_BOOL(v20, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
  }

  xpc_activity_set_criteria(v42, v20);
  static os_log_type_t.default.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = v39;
  v35 = v38;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = v35;
  *(v34 + 32) = v33;
  *(v34 + 40) = a2;

  v42 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
  swift_unknownObjectRelease();

  v36 = v42;
}

uint64_t sub_100004730(uint64_t a1, uint64_t a2, _xpc_activity_s *a3)
{
  static os_log_type_t.default.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v5 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  os_transaction_create();
  v6 = static os_log_type_t.default.getter();
  v7 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    swift_unknownObjectRetain();
    sub_1000058DC(&qword_1000105C8, &qword_100006DE8);
    v10 = String.init<A>(describing:)();
    v12 = sub_100005924(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v7, v6, "ecosystemanalyticsd: performing static_analysis - %s", v8, 0xCu);
    sub_1000062C8(v9);
  }

  sub_100004CC0();
  xpc_transaction_exit_clean();
  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);

  sub_100003F7C(v13, v14, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_100004918(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000495C(uint64_t a1, uint64_t a2, _xpc_activity_s *a3)
{
  static os_log_type_t.default.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v5 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  os_transaction_create();
  v6 = static os_log_type_t.default.getter();
  v7 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    swift_unknownObjectRetain();
    sub_1000058DC(&qword_1000105C8, &qword_100006DE8);
    v10 = String.init<A>(describing:)();
    v12 = sub_100005924(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v7, v6, "ecosystemanalyticsd: performing runtime_analysis - %s", v8, 0xCu);
    sub_1000062C8(v9);
  }

  sub_10000537C();
  xpc_transaction_exit_clean();
  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);

  sub_100003F7C(v13, v14, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_100004B44(uint64_t a1, uint64_t a2, _xpc_activity_s *a3)
{
  static os_log_type_t.default.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v5 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  xpc_transaction_exit_clean();
  swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);

  sub_100003F7C(v7, v8, a3);
}

uint64_t sub_100004C60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100004CC0()
{
  static os_log_type_t.default.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v0 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  swift_allocObject();
  swift_weakInit();
  if (sub_100004F64())
  {
    sub_10000510C(0x7041636974617473, 0xED00006874615070);
    if (v1)
    {
      type metadata accessor for AnalysisCoordinator();
      v2 = static AnalysisCoordinator.staticallyAnalyzeAppPath(_:interruptCallback:sendEvents:coreSymbolication:printTostdout:)();
LABEL_6:
      v4 = v2;

      goto LABEL_8;
    }

    sub_10000510C(0x614D636974617473, 0xEF687461506F6863);
    if (v3)
    {
      type metadata accessor for AnalysisCoordinator();
      v2 = static AnalysisCoordinator.staticallyAnalyzeMachOPath(_:interruptCallback:sendEvents:coreSymbolication:printTostdout:)();
      goto LABEL_6;
    }
  }

  type metadata accessor for AnalysisCoordinator();
  v4 = static AnalysisCoordinator.staticallyAnalyze(interruptCallback:sendEvents:coreSymbolication:printTostdout:)();
LABEL_8:
  static os_log_type_t.default.getter();
  sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100006D20;
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = v4;
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100004F64()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = [v1 dictionaryRepresentation];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v3 + 16))
  {
    sub_100005ECC(0x6D706F6C65766564, 0xEB00000000746E65);
    v5 = v4;

    if (v5)
    {
      v6 = [v0 standardUserDefaults];
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 BOOLForKey:v7];

      if (v8)
      {
        static os_log_type_t.default.getter();
        sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
        v9 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        return 1;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10000510C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = [v5 dictionaryRepresentation];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v7 + 16))
  {
    sub_100005ECC(a1, a2);
    v9 = v8;

    if (v9)
    {
      v10 = [v4 standardUserDefaults];
      v11 = String._bridgeToObjectiveC()();
      v12 = [v10 stringForKey:v11];

      if (v12)
      {

        v13 = [v4 standardUserDefaults];
        v14 = String._bridgeToObjectiveC()();
        v15 = [v13 stringForKey:v14];

        if (v15)
        {
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          static os_log_type_t.default.getter();
          sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_100006D20;
          *(v19 + 56) = &type metadata for String;
          *(v19 + 64) = sub_10000603C();
          *(v19 + 32) = v16;
          *(v19 + 40) = v18;
          sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
          v20 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          return v16;
        }
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10000537C()
{
  static os_log_type_t.default.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v0 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  swift_allocObject();
  swift_weakInit();
  if (sub_100004F64())
  {
    sub_1000055DC();
    v2 = v1;
    type metadata accessor for AnalysisCoordinator();
    if ((v2 & 0x100000000) == 0 && v2)
    {
      v3 = static AnalysisCoordinator.runtimeAnalyzePID(_:interruptCallback:sendEvents:printTostdout:)();
      goto LABEL_7;
    }
  }

  else
  {
    type metadata accessor for AnalysisCoordinator();
  }

  v3 = static AnalysisCoordinator.runtimeAnalyze(interruptCallback:sendEvents:printTostdout:)();
LABEL_7:
  v4 = v3;
  static os_log_type_t.default.getter();
  sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100006D20;
  *(v5 + 56) = &type metadata for Int;
  *(v5 + 64) = &protocol witness table for Int;
  *(v5 + 32) = v4;
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100005558()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    OS_dispatch_queue.sync<A>(execute:)();

    return v2;
  }

  return result;
}

void sub_1000055DC()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = [v1 dictionaryRepresentation];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v3 + 16))
  {
    sub_100005ECC(0x50656D69746E7572, 0xEA00000000006469);
    v5 = v4;

    if (v5)
    {
      v6 = [v0 standardUserDefaults];
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 integerForKey:v7];

      if (v8 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v8 <= 0x7FFFFFFF)
      {
        static os_log_type_t.default.getter();
        sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_100006D20;
        *(v9 + 56) = &type metadata for Int32;
        *(v9 + 64) = &protocol witness table for Int32;
        *(v9 + 32) = v8;
        sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
        v10 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        return;
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1000057FC()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100005870()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000058DC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100005924(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000059F0(v11, 0, 0, 1, a1, a2);
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
    sub_100006314(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000062C8(v11);
  return v7;
}

unint64_t sub_1000059F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005AFC(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_100005AFC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005B48(a1, a2);
  sub_100005C78(&off_10000C560);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100005B48(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005D64(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005D64(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100005C78(uint64_t result)
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

  result = sub_100005DD8(result, v12, 1, v3);
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

void *sub_100005D64(uint64_t a1, uint64_t a2)
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

  sub_1000058DC(&qword_1000105D0, &qword_100006DF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005DD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000058DC(&qword_1000105D0, &qword_100006DF0);
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

unint64_t sub_100005ECC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100005F44(a1, a2, v6);
}

unint64_t sub_100005F44(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10000603C()
{
  result = qword_1000104C8;
  if (!qword_1000104C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104C8);
  }

  return result;
}

uint64_t sub_100006090()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000060E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000610C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006124(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000058DC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006184()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000061D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006220(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100006274()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000062C8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006314(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006374(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000063BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006220(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006410(uint64_t a1, unint64_t *a2, uint64_t *a3)
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