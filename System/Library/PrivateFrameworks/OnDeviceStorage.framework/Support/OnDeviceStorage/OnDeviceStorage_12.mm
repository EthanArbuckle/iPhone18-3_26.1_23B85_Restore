uint64_t sub_100100C14()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_100100DB4;
  }

  else
  {
    v6 = sub_100100D40;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100100D40()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100100DB4()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_100100E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100100E40, 0, 0);
}

uint64_t sub_100100E40()
{
  v1 = *(v0 + 24);
  sub_1000FE0C8();

  sub_1000FFFA0();

  *(v0 + 32) = dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  return _swift_task_switch(sub_100100EE8, v1, 0);
}

uint64_t sub_100100EE8()
{
  v1 = v0[3];
  v2 = *(v1 + 112);
  *(v1 + 112) = v0[4] | 0x4000000000000000;

  sub_100101204(v2);
  if (qword_10016A690 != -1)
  {
    swift_once();
  }

  v3 = v0[4];
  v4 = v0[2];
  sub_100026F50(qword_10016D580, qword_10016D598);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v5 = *(type metadata accessor for LogMessage() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  *v4 = v3;
  v8 = v0[1];

  return v8();
}

uint64_t sub_100101094()
{
  sub_100101204(*(v0 + 112));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001010F0(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10010110C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100101168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1001011C8(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_100101204(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  if (result >> 62 == 2)
  {
  }

  return result;
}

unint64_t sub_100101234()
{
  result = qword_10016D650;
  if (!qword_10016D650)
  {
    type metadata accessor for BootstrapSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D650);
  }

  return result;
}

uint64_t sub_100101288()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001012C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100042680;

  return sub_100100E20(a1, v4, v5, v7);
}

unint64_t sub_100101388(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  if (result >> 62 == 2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1001013B8()
{
  v108 = *v0;
  v84 = type metadata accessor for OSSignpostError();
  v1 = *(v84 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v84);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v97 = &v82 - v7;
  v92 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v91 = *(v92 - 8);
  v8 = *(v91 + 64);
  __chkstk_darwin(v92);
  v90 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DispatchWorkItemFlags();
  v93 = *(v96 - 8);
  v10 = *(v93 + 64);
  __chkstk_darwin(v96);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for DispatchQoS();
  v94 = *(v95 - 8);
  v13 = *(v94 + 64);
  __chkstk_darwin(v95);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LogMessage.StringInterpolation();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v107 = type metadata accessor for OSSignpostID();
  v109 = *(v107 - 8);
  v18 = *(v109 + 64);
  v19 = __chkstk_darwin(v107);
  v101 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v82 - v22;
  __chkstk_darwin(v21);
  v25 = &v82 - v24;
  if (qword_10016A6A8 != -1)
  {
    swift_once();
  }

  v82 = v4;
  v83 = v1;
  v26 = type metadata accessor for OSSignposter();
  v27 = sub_10002FD14(v26, qword_10016D680);
  static OSSignpostID.exclusive.getter();
  v85 = v27;
  v28 = OSSignposter.logHandle.getter();
  v29 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, v29, v31, "Daemon.run", "", v30, 2u);
  }

  v32 = v109;
  v33 = v107;
  (*(v109 + 16))(v23, v25, v107);
  v34 = type metadata accessor for OSSignpostIntervalState();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v98 = OSSignpostIntervalState.init(id:isOpen:)();
  v37 = *(v32 + 8);
  v109 = v32 + 8;
  v86 = v37;
  v37(v25, v33);
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  v38 = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v39 = *(type metadata accessor for LogMessage() - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v103 = *(v39 + 80);
  v104 = v40;
  v106 = v38;
  v42 = swift_allocObject();
  v102 = xmmword_10012FA10;
  *(v42 + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._countAndFlagsBits = 0x676E697472617453;
  v43._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v43);
  v44 = static Utils.daemonProcessName.getter();
  v113 = &type metadata for String;
  aBlock = v44;
  v111 = v45;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v46._object = 0x800000010013E4E0;
  v46._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v46);
  v105 = v41;
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v88 = sub_100096B74(0, &qword_10016D818, OS_dispatch_source_ptr);
  sub_100096B74(0, &qword_10016C288, OS_dispatch_queue_ptr);
  v47 = static OS_dispatch_queue.main.getter();
  v48 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  v114 = sub_10010D454;
  v115 = 0;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v89 = &v112;
  v112 = sub_10008287C;
  v113 = &unk_1001675A0;
  v49 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  sub_10010329C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v49);
  v93 = *(v93 + 8);
  v50 = v96;
  (v93)(v12, v96);
  v94 = *(v94 + 8);
  v51 = v95;
  (v94)(v15, v95);

  v87 = v48;
  OS_dispatch_source.resume()();
  v52 = v90;
  static OS_dispatch_source.MemoryPressureEvent.warning.getter();
  static OS_dispatch_source.makeMemoryPressureSource(eventMask:queue:)();
  (*(v91 + 8))(v52, v92);
  swift_getObjectType();
  v53 = swift_allocObject();
  *(v53 + 16) = v108;
  v114 = sub_10010D5B4;
  v115 = v53;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_10008287C;
  v113 = &unk_1001675F0;
  v54 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  sub_10010329C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v54);
  (v93)(v12, v50);
  (v94)(v15, v51);

  OS_dispatch_source.resume()();
  v55 = type metadata accessor for TaskPriority();
  v56 = v97;
  (*(*(v55 - 8) + 56))(v97, 1, 1, v55);
  v57 = qword_10016A6C8;
  v58 = v100;

  if (v57 != -1)
  {
    swift_once();
  }

  v60 = qword_1001738A8;
  v61 = sub_10010E090(&qword_10016ADA0, v59, type metadata accessor for DaemonActor);
  v62 = swift_allocObject();
  v62[2] = v60;
  v62[3] = v61;
  v62[4] = v58;

  sub_10009C9B8(0, 0, v56, &unk_100134088, v62);

  sub_100026F50(qword_10016D658, qword_10016D670);
  *(swift_allocObject() + 16) = v102;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v63 = *(v58 + 24);
  v64 = v99;
  dispatch thunk of XPCListener.activate()();
  v65 = v101;
  if (v64)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10016A6B0 != -1)
    {
      swift_once();
    }

    v66 = qword_10016D698;
    v67 = swift_allocObject();
    swift_weakInit();
    v68 = swift_allocObject();
    v69 = v108;
    *(v68 + 16) = v67;
    *(v68 + 24) = v69;
    v114 = sub_10010D6E8;
    v115 = v68;
    aBlock = _NSConcreteStackBlock;
    v111 = 1107296256;
    v112 = sub_100106928;
    v113 = &unk_100167690;
    v70 = _Block_copy(&aBlock);

    xpc_set_event_stream_handler("com.apple.distnoted.matching", v66, v70);
    _Block_release(v70);
    v71 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v72 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      v73 = v82;
      checkForErrorAndConsumeState(state:)();

      v74 = v83;
      v75 = v84;
      if ((*(v83 + 88))(v73, v84) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v76 = "[Error] Interval already ended";
      }

      else
      {
        (*(v74 + 8))(v73, v75);
        v76 = "";
      }

      v77 = swift_slowAlloc();
      *v77 = 0;
      v78 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v71, v72, v78, "Daemon.run", v76, v77, 2u);
    }

    v86(v65, v107);
    sub_100026F50(qword_10016D658, qword_10016D670);
    *(swift_allocObject() + 16) = v102;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    _CFRunLoopSetPerCalloutAutoreleasepoolEnabled();
    do
    {
      v79 = objc_autoreleasePoolPush();
      v80 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 15.0, 1u);
      objc_autoreleasePoolPop(v79);
    }

    while ((v80 - 1) >= 2);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100102214()
{
  type metadata accessor for Daemon();
  swift_allocObject();
  result = sub_1001026CC();
  qword_100173898 = result;
  return result;
}

uint64_t sub_100102334()
{
  v0 = type metadata accessor for OSSignposter();
  sub_10002FDA4(v0, qword_10016D680);
  v1 = sub_10002FD14(v0, qword_10016D680);
  if (qword_10016A528 != -1)
  {
    swift_once();
  }

  v2 = sub_10002FD14(v0, qword_100173670);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001023FC()
{
  v0 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = sub_100096B74(0, &qword_10016C288, OS_dispatch_queue_ptr);
  v11 = static Utils.daemonProcessName.getter();
  v12 = v7;
  v8._countAndFlagsBits = 0x6575516B726F772ELL;
  v8._object = 0xEA00000000006575;
  String.append(_:)(v8);
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v2);
  static DispatchQoS.unspecified.getter();
  v11 = &_swiftEmptyArrayStorage;
  sub_10010E090(&qword_10016C290, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100026F94(&qword_10016C298, &unk_1001323C0);
  sub_10002B95C(&qword_10016C2A0, &qword_10016C298, &unk_1001323C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_10016D698 = result;
  return result;
}

NSString sub_100102694()
{
  result = String._bridgeToObjectiveC()();
  qword_1001738A0 = result;
  return result;
}

uint64_t sub_1001026CC()
{
  v2 = *v0;
  v45 = v1;
  v46 = v2;
  v3 = type metadata accessor for XPCListener.InitializationOptions();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v44[1] = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v44 - v14;
  if (qword_10016A6A8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for OSSignposter();
  sub_10002FD14(v16, qword_10016D680);
  static OSSignpostID.exclusive.getter();
  v17 = OSSignposter.logHandle.getter();
  v18 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v20, "Daemon.init", "", v19, 2u);
  }

  (*(v9 + 16))(v13, v15, v8);
  v21 = type metadata accessor for OSSignpostIntervalState();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v15, v8);
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v24 = *(type metadata accessor for LogMessage() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0x696C616974696E49;
  v27._object = 0xED000020676E697ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  v28 = static Utils.daemonProcessName.getter();
  v47[3] = &type metadata for String;
  v47[0] = v28;
  v47[1] = v29;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v47);
  v30._countAndFlagsBits = 0x6E6F6D65616420;
  v30._object = 0xE700000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v30);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_10010ED78(0x70757472617453, 0xE700000000000000);
  type metadata accessor for BootstrapSession();
  v31 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v31 + 112) = 0xC000000000000000;
  v32 = v48;
  *(v48 + 16) = v31;
  static Utils.xpcServiceName.getter();
  if (qword_10016A6B0 != -1)
  {
    swift_once();
  }

  v33 = qword_10016D698;
  static XPCListener.InitializationOptions.inactive.getter();
  v34 = *(v32 + 16);
  v35 = swift_allocObject();
  v36 = v46;
  *(v35 + 16) = v34;
  *(v35 + 24) = v36;
  v37 = type metadata accessor for XPCListener();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();

  v40 = v45;
  v41 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  if (v40)
  {
    sub_10010D91C("Daemon.init", 11, 2);

    v42 = *(v32 + 16);

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v32 + 24) = v41;
    sub_10010D91C("Daemon.init", 11, 2);
  }

  return v32;
}

void sub_100102C80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_autoreleasePoolPush();
  sub_100102CF8(a1, a2, a3, a4);

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_100102CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v30 = a2;
  v31 = a3;
  v33 = a1;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100026F94(&qword_10016D840, &qword_1001340D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  v12 = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v13 = *(type metadata accessor for LogMessage() - 8);
  v14 = *(v13 + 80);
  v28 = *(v13 + 72);
  v29 = v12;
  v15 = swift_allocObject();
  v27 = xmmword_10012FA10;
  *(v15 + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v16 = v33;
  v35 = v33;
  type metadata accessor for XPCListener.IncomingSessionRequest();

  ClientEntitlementChecker.init(_:)();
  v17._countAndFlagsBits = static Utils.xpcConnectionEntitlement.getter();
  v18 = ClientEntitlementChecker.hasEntitlement(_:)(v17);

  v19 = (*(v8 + 8))(v11, v7);
  if (v18)
  {
    __chkstk_darwin(v19);
    v20 = v31;
    *(&v27 - 2) = v30;
    *(&v27 - 1) = v20;
    sub_10010DCDC();
    return dispatch thunk of XPCListener.IncomingSessionRequest.accept<A>(_:)();
  }

  else
  {
    sub_100026F50(qword_10016D658, qword_10016D670);
    *(swift_allocObject() + 16) = v27;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._object = 0x800000010013E9D0;
    v22._countAndFlagsBits = 0xD00000000000001ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    v23 = static Utils.xpcConnectionEntitlement.getter();
    v37 = &type metadata for String;
    v35 = v23;
    v36 = v24;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(&v35);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v25);
    LogMessage.init(stringInterpolation:)();
    Logger.error(_:)();

    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v26._countAndFlagsBits = 0xD00000000000003BLL;
    v26._object = 0x800000010013E9F0;
    String.append(_:)(v26);
    v38 = v16;
    _print_unlocked<A, B>(_:_:)();
    dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  }
}

uint64_t sub_100103144@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A6B0 != -1)
  {
    swift_once();
  }

  v9 = qword_10016D698;
  swift_weakInit();
  v10 = v9;
  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v5 + 8))(v8, v4);
  *a2 = v11;
  a2[1] = v13;
  swift_weakAssign();
  a2[3] = a1;
  a2[4] = v10;
}

uint64_t sub_10010329C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10010E090(&qword_10016BCC0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100026F94(&qword_10016BCC8, &unk_100131A20);
  sub_10002B95C(&qword_10016BCD0, &qword_10016BCC8, &unk_100131A20);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10010338C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v22 = *(v4 - 8);
  v23 = v4;
  v5 = *(v22 + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v13 = *(type metadata accessor for LogMessage() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.warning(_:)();

  static os_signpost_type_t.event.getter();
  sub_100096B74(0, &qword_10016D838, OS_os_log_ptr);
  v16 = static OS_os_log.default.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v9 + 8))(v12, v8);
  sub_100096B74(0, &qword_10016C288, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10010D804;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008287C;
  aBlock[3] = &unk_100167848;
  v18 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_10010E090(&qword_10016BCC0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100026F94(&qword_10016BCC8, &unk_100131A20);
  sub_10002B95C(&qword_10016BCD0, &qword_10016BCC8, &unk_100131A20);
  v19 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v3, v19);
  (*(v22 + 8))(v7, v23);
}

uint64_t sub_10010385C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10010E090(&qword_10016ADA0, v5, type metadata accessor for DaemonActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100103948, v7, v6);
}

uint64_t sub_100103948()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1001039DC;

  return sub_100100210();
}

uint64_t sub_1001039DC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_100103B1C;
  v5 = *(v1 + 16);

  return sub_100103D50();
}

uint64_t sub_100103B1C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_100103C5C;
  v5 = *(v1 + 16);

  return sub_100104EC8();
}

uint64_t sub_100103C5C()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100103D50()
{
  v1[16] = v0;
  v2 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for OSSignpostID();
  v1[18] = v3;
  v4 = *(v3 - 8);
  v1[19] = v4;
  v5 = *(v4 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10010E090(&qword_10016ADA0, v6, type metadata accessor for DaemonActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[22] = v8;
  v1[23] = v7;

  return _swift_task_switch(sub_100103ED0, v8, v7);
}

uint64_t sub_100103ED0()
{
  if (qword_10016A6A8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016D680);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "Daemon.scheduleBackgroundTasks", "", v6, 2u);
  }

  v8 = v0[20];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  v12 = v0[16];

  (*(v11 + 16))(v8, v9, v10);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[24] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v16 = *(v12 + 16);
  v0[25] = v16;

  return _swift_task_switch(sub_100104088, v16, 0);
}

uint64_t sub_100104088()
{
  v1 = *(v0[25] + 112);
  v0[26] = v1;
  if ((v1 >> 62) - 2 >= 2)
  {
    if (v1 >> 62)
    {
      v0[32] = v1 & 0x3FFFFFFFFFFFFFFFLL;

      v9 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
      v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v11 = swift_task_alloc();
      v0[33] = v11;
      *v11 = v0;
      v11[1] = sub_1001045E0;

      return BaseObjectGraph.inject<A>(_:)(v0 + 2, v9, v9);
    }

    else
    {
      v5 = async function pointer to Task.value.getter[1];

      v6 = swift_task_alloc();
      v0[27] = v6;
      v7 = type metadata accessor for BaseObjectGraph();
      v8 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v6 = v0;
      v6[1] = sub_100104298;

      return Task.value.getter(v0 + 14, v1, v7, v8, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_1001043C4;
    v3 = v0[25];

    return sub_10010089C();
  }
}

uint64_t sub_100104298()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_100104A44;
  }

  else
  {
    v6 = sub_10010497C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001043C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  v4[30] = v1;

  v7 = v4[25];
  if (v1)
  {
    v8 = sub_1001045C0;
  }

  else
  {
    v4[31] = a1;
    v8 = sub_100104500;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100104500()
{
  v0[32] = v0[31];
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_1001045E0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1001045E0()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_100104C60;
  }

  else
  {
    v7 = sub_100104AB0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10010471C()
{
  v1 = v0[35];
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  v2 = v0[17];
  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v3 = *(type metadata accessor for LogMessage() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010013E760;
  v6._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = v0[11];
  v8 = v0[12];
  v0[10] = v8;
  v9 = sub_100042BAC(v0 + 7);
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 7));
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v11 = v0[24];
  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[17];
  sub_10010D91C("Daemon.scheduleBackgroundTasks", 30, 2);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10010497C()
{
  sub_100101204(v0[26]);
  v0[32] = v0[14];
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_1001045E0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_100104A44()
{
  sub_100101204(v0[26]);
  v0[35] = v0[28];
  v1 = v0[22];
  v2 = v0[23];

  return _swift_task_switch(sub_10010471C, v1, v2);
}

uint64_t sub_100104AB0()
{
  v1 = v0[32];
  v2 = *sub_100026F50(v0 + 2, v0[5]);
  type metadata accessor for MaintenanceTask();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10010C80C(v3, 0xD000000000000029, 0x800000010013E790, v1, v2);

  type metadata accessor for OnlineMaintenanceTask();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10010CC24(v4, 0xD000000000000030, 0x800000010013E7C0, v1, v2);

  type metadata accessor for WeeklyMetricsTask();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10010D03C(v5, 0xD000000000000030, 0x800000010013E800, v1, v2);

  sub_100026FDC(v0 + 2);
  v6 = v0[24];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[17];
  sub_10010D91C("Daemon.scheduleBackgroundTasks", 30, 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100104C60()
{
  v1 = v0[32];

  v2 = v0[34];
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  v3 = v0[17];
  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013E760;
  v7._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[11];
  v9 = v0[12];
  v0[10] = v9;
  v10 = sub_100042BAC(v0 + 7);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 7));
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v12 = v0[24];
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[17];
  sub_10010D91C("Daemon.scheduleBackgroundTasks", 30, 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100104EC8()
{
  v1[36] = v0;
  v2 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v3 = *(*(sub_100026F94(&qword_10016CB48, &qword_100132C60) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v4 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v1[40] = v5;
  v6 = *(v5 - 8);
  v1[41] = v6;
  v7 = *(v6 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v1[44] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v1[45] = sub_10010E090(&qword_10016ADA0, v8, type metadata accessor for DaemonActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[46] = v10;
  v1[47] = v9;

  return _swift_task_switch(sub_1001050C0, v10, v9);
}

uint64_t sub_1001050C0()
{
  if (qword_10016A6A8 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016D680);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[43];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "Daemon.scheduleInitialTasks", "", v6, 2u);
  }

  v8 = v0[42];
  v9 = v0[43];
  v10 = v0[40];
  v11 = v0[41];
  v12 = v0[36];

  (*(v11 + 16))(v8, v9, v10);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[48] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v16 = *(v12 + 16);
  v0[49] = v16;

  return _swift_task_switch(sub_100105278, v16, 0);
}

uint64_t sub_100105278()
{
  v1 = *(v0[49] + 112);
  v0[50] = v1;
  if ((v1 >> 62) - 2 >= 2)
  {
    if (v1 >> 62)
    {
      v0[56] = v1 & 0x3FFFFFFFFFFFFFFFLL;

      v9 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
      v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v11 = swift_task_alloc();
      v0[57] = v11;
      *v11 = v0;
      v11[1] = sub_1001057D0;

      return BaseObjectGraph.inject<A>(_:)(v0 + 2, v9, v9);
    }

    else
    {
      v5 = async function pointer to Task.value.getter[1];

      v6 = swift_task_alloc();
      v0[51] = v6;
      v7 = type metadata accessor for BaseObjectGraph();
      v8 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v6 = v0;
      v6[1] = sub_100105488;

      return Task.value.getter(v0 + 34, v1, v7, v8, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v2 = swift_task_alloc();
    v0[53] = v2;
    *v2 = v0;
    v2[1] = sub_1001055B4;
    v3 = v0[49];

    return sub_10010089C();
  }
}

uint64_t sub_100105488()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 392);
  if (v0)
  {
    v6 = sub_100105C48;
  }

  else
  {
    v6 = sub_100105B80;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001055B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 424);
  v6 = *v2;
  v4[54] = v1;

  v7 = v4[49];
  if (v1)
  {
    v8 = sub_1001057B0;
  }

  else
  {
    v4[55] = a1;
    v8 = sub_1001056F0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1001056F0()
{
  v0[56] = v0[55];
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_1001057D0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1001057D0()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v4 = *v1;
  *(*v1 + 464) = v0;

  v5 = *(v2 + 376);
  v6 = *(v2 + 368);
  if (v0)
  {
    v7 = sub_10010602C;
  }

  else
  {
    v7 = sub_100105CB4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10010590C()
{
  v1 = v0[59];
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  v2 = v0[37];
  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v3 = *(type metadata accessor for LogMessage() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010013E710;
  v6._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = v0[31];
  v8 = v0[32];
  v0[30] = v8;
  v9 = sub_100042BAC(v0 + 27);
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 27));
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v11 = v0[48];
  v13 = v0[42];
  v12 = v0[43];
  v15 = v0[38];
  v14 = v0[39];
  v16 = v0[37];
  sub_10010D91C("Daemon.scheduleInitialTasks", 27, 2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100105B80()
{
  sub_100101204(v0[50]);
  v0[56] = v0[34];
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_1001057D0;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_100105C48()
{
  sub_100101204(v0[50]);
  v0[59] = v0[52];
  v1 = v0[46];
  v2 = v0[47];

  return _swift_task_switch(sub_10010590C, v1, v2);
}

uint64_t sub_100105CB4()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  v4 = *(v0 + 312);
  v24 = *(v0 + 304);
  RevokedAccessCredentialsTask = type metadata accessor for FetchRevokedAccessCredentialsTask();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 1;
  *(v0 + 80) = RevokedAccessCredentialsTask;
  *(v0 + 88) = sub_10010E090(&qword_10016CA58, 255, type metadata accessor for FetchRevokedAccessCredentialsTask);
  *(v0 + 56) = v6;
  v7 = type metadata accessor for TaskPriority();
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 1, 1, v7);
  sub_100026EEC(v0 + 56, v0 + 96);
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v3;
  sub_10002C604((v0 + 96), (v9 + 4));
  v9[9] = v1;
  swift_retain_n();

  sub_100053D08(0, 0, v4, &unk_1001340C0, v9);

  sub_100026FDC((v0 + 56));
  v10 = type metadata accessor for AccessCredential();
  (*(*(v10 - 8) + 56))(v24, 1, 1, v10);
  v11 = type metadata accessor for PostScheduledNotificationsTask();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10010DBFC(v24, v14 + OBJC_IVAR____TtC19amsondevicestoraged30PostScheduledNotificationsTask_credential);
  *(v0 + 160) = v11;
  *(v0 + 168) = sub_10010E090(&qword_10016D270, 255, type metadata accessor for PostScheduledNotificationsTask);
  *(v0 + 136) = v14;
  v8(v4, 1, 1, v7);
  sub_100026EEC(v0 + 136, v0 + 176);
  v15 = swift_allocObject();
  v15[2] = v2;
  v15[3] = v3;
  sub_10002C604((v0 + 176), (v15 + 4));
  v15[9] = v1;

  sub_100053D08(0, 0, v4, &unk_1001340C8, v15);

  sub_100026FDC((v0 + 16));
  sub_100026FDC((v0 + 136));
  v16 = *(v0 + 384);
  v18 = *(v0 + 336);
  v17 = *(v0 + 344);
  v20 = *(v0 + 304);
  v19 = *(v0 + 312);
  v21 = *(v0 + 296);
  sub_10010D91C("Daemon.scheduleInitialTasks", 27, 2);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10010602C()
{
  v1 = v0[56];

  v2 = v0[58];
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  v3 = v0[37];
  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013E710;
  v7._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[31];
  v9 = v0[32];
  v0[30] = v9;
  v10 = sub_100042BAC(v0 + 27);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 27));
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v12 = v0[48];
  v14 = v0[42];
  v13 = v0[43];
  v16 = v0[38];
  v15 = v0[39];
  v17 = v0[37];
  sub_10010D91C("Daemon.scheduleInitialTasks", 27, 2);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001062A8(void *a1)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = XPC_EVENT_KEY_NAME.getter();
    if (xpc_dictionary_get_string(a1, v5))
    {
      v6 = String.init(cString:)();
      v8 = v7;
      if (qword_10016A6A0 != -1)
      {
        swift_once();
      }

      sub_100026F50(qword_10016D658, qword_10016D670);
      sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
      v9 = *(type metadata accessor for LogMessage() - 8);
      v10 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      *(swift_allocObject() + 16) = xmmword_10012FA10;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v12._countAndFlagsBits = 0xD000000000000038;
      v12._object = 0x800000010013E5E0;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      v18[3] = &type metadata for String;
      v18[0] = v6;
      v18[1] = v8;

      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002D504(v18);
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v13);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      if (v6 == 0xD000000000000030 && 0x800000010013E620 == v8)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
        }
      }

      sub_10010665C();
    }

    if (qword_10016A6A0 != -1)
    {
      swift_once();
    }

    sub_100026F50(qword_10016D658, qword_10016D670);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v14 = *(type metadata accessor for LogMessage() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();
  }

  return result;
}

uint64_t sub_10010665C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v7 = *(type metadata accessor for LogMessage() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = qword_10016A6C8;

  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_1001738A8;
  v14 = sub_10010E090(&qword_10016ADA0, v12, type metadata accessor for DaemonActor);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v1;
  v15[5] = v2;

  sub_10009C9B8(0, 0, v6, &unk_100134098, v15);
}

uint64_t sub_100106928(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100106988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v6 = *(*(sub_100026F94(&qword_10016AD80, &qword_1001311B0) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v7 = type metadata accessor for OSSignpostID();
  v4[29] = v7;
  v8 = *(v7 - 8);
  v4[30] = v8;
  v9 = *(v8 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v4[33] = qword_1001738A8;
  type metadata accessor for DaemonActor();
  v4[34] = sub_10010E090(&qword_10016ADA0, v10, type metadata accessor for DaemonActor);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[35] = v12;
  v4[36] = v11;

  return _swift_task_switch(sub_100106B48, v12, v11);
}

uint64_t sub_100106B48()
{
  if (qword_10016A6A8 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = type metadata accessor for OSSignposter();
  sub_10002FD14(v2, qword_10016D680);
  static OSSignpostID.exclusive.getter();
  v3 = OSSignposter.logHandle.getter();
  v4 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[32];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v7, "Daemon.scheduleCheckInstalledAppsTask", "", v6, 2u);
  }

  v8 = v0[31];
  v9 = v0[32];
  v10 = v0[29];
  v11 = v0[30];
  v12 = v0[26];

  (*(v11 + 16))(v8, v9, v10);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[37] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v11 + 8))(v9, v10);
  v16 = *(v12 + 16);
  v0[38] = v16;

  return _swift_task_switch(sub_100106D00, v16, 0);
}

uint64_t sub_100106D00()
{
  v1 = *(v0[38] + 112);
  v0[39] = v1;
  if ((v1 >> 62) - 2 >= 2)
  {
    if (v1 >> 62)
    {
      v0[45] = v1 & 0x3FFFFFFFFFFFFFFFLL;

      v9 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
      v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v11 = swift_task_alloc();
      v0[46] = v11;
      *v11 = v0;
      v11[1] = sub_100107258;

      return BaseObjectGraph.inject<A>(_:)(v0 + 2, v9, v9);
    }

    else
    {
      v5 = async function pointer to Task.value.getter[1];

      v6 = swift_task_alloc();
      v0[40] = v6;
      v7 = type metadata accessor for BaseObjectGraph();
      v8 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v6 = v0;
      v6[1] = sub_100106F10;

      return Task.value.getter(v0 + 24, v1, v7, v8, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v2 = swift_task_alloc();
    v0[42] = v2;
    *v2 = v0;
    v2[1] = sub_10010703C;
    v3 = v0[38];

    return sub_10010089C();
  }
}

uint64_t sub_100106F10()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 304);
  if (v0)
  {
    v6 = sub_1001076C4;
  }

  else
  {
    v6 = sub_1001075FC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10010703C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  v4[43] = v1;

  v7 = v4[38];
  if (v1)
  {
    v8 = sub_100107238;
  }

  else
  {
    v4[44] = a1;
    v8 = sub_100107178;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100107178()
{
  v0[45] = v0[44];
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_100107258;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_100107258()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 288);
  v6 = *(v2 + 280);
  if (v0)
  {
    v7 = sub_100107924;
  }

  else
  {
    v7 = sub_100107730;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100107394()
{
  v1 = v0[48];
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v3 = *(type metadata accessor for LogMessage() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010013E6C0;
  v6._countAndFlagsBits = 0xD000000000000026;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = v0[21];
  v8 = v0[22];
  v0[20] = v8;
  v9 = sub_100042BAC(v0 + 17);
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 17));
  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v11 = v0[37];
  v13 = v0[31];
  v12 = v0[32];
  v15 = v0[27];
  v14 = v0[28];
  sub_10010D91C("Daemon.scheduleCheckInstalledAppsTask", 37, 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001075FC()
{
  sub_100101204(v0[39]);
  v0[45] = v0[24];
  v1 = sub_100026F94(&qword_10016AD90, &qword_100130CB8);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_100107258;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1001076C4()
{
  sub_100101204(v0[39]);
  v0[48] = v0[41];
  v1 = v0[35];
  v2 = v0[36];

  return _swift_task_switch(sub_100107394, v1, v2);
}

uint64_t sub_100107730()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 224);
  v5 = type metadata accessor for CheckInstalledAppsTask();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 80) = v5;
  *(v0 + 88) = sub_10010E090(&qword_10016C978, 255, type metadata accessor for CheckInstalledAppsTask);
  *(v0 + 56) = v6;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100026EEC(v0 + 56, v0 + 96);
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v3;
  sub_10002C604((v0 + 96), (v8 + 4));
  v8[9] = v1;

  sub_100053D08(0, 0, v4, &unk_100130CC0, v8);

  sub_100026FDC((v0 + 16));
  sub_100026FDC((v0 + 56));
  v9 = *(v0 + 296);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  sub_10010D91C("Daemon.scheduleCheckInstalledAppsTask", 37, 2);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100107924()
{
  v1 = v0[45];

  v2 = v0[47];
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  v3 = v0[27];
  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013E6C0;
  v7._countAndFlagsBits = 0xD000000000000026;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[21];
  v9 = v0[22];
  v0[20] = v9;
  v10 = sub_100042BAC(v0 + 17);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 17));
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v12 = v0[37];
  v14 = v0[31];
  v13 = v0[32];
  v16 = v0[27];
  v15 = v0[28];
  sub_10010D91C("Daemon.scheduleCheckInstalledAppsTask", 37, 2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100107BC0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (*a2 != -1)
  {
    swift_once();
    v5 = a3;
  }

  return sub_100026EEC(v5, a4);
}

uint64_t sub_100107C10@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  v35 = a1;
  *a5 = a1;
  *(a5 + 8) = a2;
  v34 = a3;
  *(a5 + 16) = a3;
  v18 = *(type metadata accessor for Daemon.RequestHandler.Signpost() + 24);
  v19 = type metadata accessor for OSSignposter();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a5 + v18, a4, v19);
  static OSSignpostID.exclusive.getter();
  v21 = OSSignposter.logHandle.getter();
  v33 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v31 = v11;
  v32 = v10;
  if ((v34 & 1) == 0)
  {
    v23 = v35;
    if (v35)
    {
LABEL_9:
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v33, v25, v23, "", v24, 2u);

      v11 = v31;
      v10 = v32;
LABEL_10:

      (*(v11 + 16))(v15, v17, v10);
      v26 = type metadata accessor for OSSignpostIntervalState();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v29 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v20 + 8))(a4, v19);
      result = (*(v11 + 8))(v17, v10);
      *(a5 + 24) = v29;
      return result;
    }

    __break(1u);
  }

  if (v35 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v35 & 0xFFFFF800) != 0xD800)
  {
    if (v35 >> 16 <= 0x10)
    {
      v23 = &v36;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100107ECC()
{
  v1 = type metadata accessor for OSSignpostError();
  v23 = *(v1 - 8);
  v2 = *(v23 + 64);
  __chkstk_darwin(v1);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Daemon.RequestHandler.Signpost();
  v11 = *v0;
  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = v0 + *(v10 + 24);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v22 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v6 + 8))(v9, v5);
  }

  if ((v12 & 1) == 0)
  {
    if (v11)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      v17 = v23;
      if ((*(v23 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v4, v1);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v22, v20, v11, v18, v19, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v11 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v11 & 0xFFFFF800) != 0xD800)
  {
    if (v11 >> 16 <= 0x10)
    {
      v11 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100108170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v73 = a1;
  v71 = type metadata accessor for RichFailure();
  v2 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v70 = (&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v69 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for XPCReceivedMessage();
  v60 = *(v62 - 8);
  v7 = *(v60 + 64);
  __chkstk_darwin(v62);
  v58 = v8;
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClientMessage();
  v63 = *(v9 - 8);
  v10 = *(v63 + 64);
  v11 = __chkstk_darwin(v9);
  v64 = v12;
  v65 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v55 - v13;
  v14 = type metadata accessor for OSSignposter();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Daemon.RequestHandler.Signpost();
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v61 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v22;
  __chkstk_darwin(v21);
  v24 = &v55 - v23;
  if (qword_10016A530 != -1)
  {
    swift_once();
  }

  v25 = sub_10002FD14(v14, qword_100173688);
  (*(v15 + 16))(v18, v25, v14);
  v75 = v24;
  sub_100107C10("RequestHandler.handleIncomingRequest", 36, 2, v18, v24);
  if (qword_10016A6C0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  v26 = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v27 = *(type metadata accessor for LogMessage() - 8);
  v28 = *(v27 + 72);
  v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v68 = v26;
  v30 = swift_allocObject();
  v67 = xmmword_10012FA10;
  *(v30 + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_10010E090(&qword_10016D850, 255, &type metadata accessor for ClientMessage);
  v31 = v73;
  XPCReceivedMessage.decode<A>(as:)();
  v70 = sub_1000837B8();
  v71 = v33;
  v69 = ClientMessage.userId.getter();
  v35 = v34;
  v36 = v59;
  v37 = v60;
  v38 = *(v60 + 16);
  v39 = v62;
  v38(v59, v31, v62);
  v80[3] = sub_100026F94(&qword_10016D880, &qword_100134190);
  v80[4] = sub_10002B95C(&qword_10016D888, &qword_10016D880, &qword_100134190);
  sub_100042BAC(v80);
  ClientEntitlementChecker.init(_:)();
  v79[0] = v70;
  v79[1] = v71;
  v79[2] = v69;
  v79[3] = v35;
  v80[5] = sub_10008AF60;
  v80[6] = 0;
  v38(v36, v31, v39);
  v40 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v41 = swift_allocObject();
  (*(v37 + 32))(v41 + v40, v36, v39);
  v71 = *(v66 + 32);
  sub_10010DE1C(v66, v78);
  v70 = &type metadata accessor for ClientMessage;
  v42 = v65;
  sub_10010E248(v74, v65, &type metadata accessor for ClientMessage);
  sub_10004F224(v79, v76);
  v43 = v61;
  sub_10010E248(v75, v61, type metadata accessor for Daemon.RequestHandler.Signpost);
  v44 = (*(v63 + 80) + 56) & ~*(v63 + 80);
  v45 = (v64 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 95) & 0xFFFFFFFFFFFFFFF8;
  v47 = (*(v56 + 80) + v46 + 16) & ~*(v56 + 80);
  v48 = swift_allocObject();
  sub_10010DF64(v78, v48 + 16);
  v49 = v48 + v44;
  v50 = v70;
  sub_10010E57C(v42, v49, v70);
  v51 = v48 + v45;
  v52 = v76[3];
  *(v51 + 32) = v76[2];
  *(v51 + 48) = v52;
  *(v51 + 64) = v76[4];
  *(v51 + 80) = v77;
  v53 = v76[1];
  *v51 = v76[0];
  *(v51 + 16) = v53;
  v54 = (v48 + v46);
  *v54 = sub_10010E1C0;
  v54[1] = v41;
  sub_10010E57C(v43, v48 + v47, type metadata accessor for Daemon.RequestHandler.Signpost);

  XPCReceivedMessage.handoffReply(to:_:)();

  sub_100042AFC(v79);
  sub_10010E0D8(v74, v50);
  return sub_10010E0D8(v75, type metadata accessor for Daemon.RequestHandler.Signpost);
}

uint64_t sub_100108BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v36 = a4;
  v10 = type metadata accessor for Daemon.RequestHandler.Signpost();
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ClientMessage();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v34 - v19;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_10010DE1C(a1, v39);
  sub_10010E248(a2, v16, &type metadata accessor for ClientMessage);
  sub_10004F224(a3, v37);
  sub_10010E248(v34, v12, type metadata accessor for Daemon.RequestHandler.Signpost);
  v22 = qword_10016A6C8;

  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_1001738A8;
  v25 = sub_10010E090(&qword_10016ADA0, v23, type metadata accessor for DaemonActor);
  v26 = (*(v14 + 80) + 88) & ~*(v14 + 80);
  v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v35 + 80) + v27 + 88) & ~*(v35 + 80);
  v29 = swift_allocObject();
  v29[2] = v24;
  v29[3] = v25;
  v29[4] = v36;
  v29[5] = a5;
  sub_10010DF64(v39, (v29 + 6));
  sub_10010E57C(v16, v29 + v26, &type metadata accessor for ClientMessage);
  v30 = v29 + v27;
  v31 = v37[3];
  *(v30 + 2) = v37[2];
  *(v30 + 3) = v31;
  *(v30 + 4) = v37[4];
  *(v30 + 10) = v38;
  v32 = v37[1];
  *v30 = v37[0];
  *(v30 + 1) = v32;
  sub_10010E57C(v12, v29 + v28, type metadata accessor for Daemon.RequestHandler.Signpost);

  sub_10009C9B8(0, 0, v20, &unk_1001341A0, v29);
}

uint64_t sub_100108F48(uint64_t a1)
{
  v34 = a1;
  v1 = sub_100026F94(&qword_10016AD80, &qword_1001311B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v37 = &v33 - v3;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OSSignposter();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Daemon.RequestHandler.Signpost();
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v14 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  if (qword_10016A530 != -1)
  {
    swift_once();
  }

  v17 = sub_10002FD14(v6, qword_100173688);
  (*(v7 + 16))(v10, v17, v6);
  sub_100107C10("RequestHandler.handleCancellation", 33, 2, v10, v16);
  if (qword_10016A6C0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v18 = *(type metadata accessor for LogMessage() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._object = 0x800000010013EA60;
  v21._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  v22 = type metadata accessor for XPCRichError();
  v38[3] = v22;
  v23 = sub_100042BAC(v38);
  (*(*(v22 - 8) + 16))(v23, v34, v22);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v38);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v25 = type metadata accessor for TaskPriority();
  v26 = v37;
  (*(*(v25 - 8) + 56))(v37, 1, 1, v25);
  sub_10010DE1C(v36, v38);
  sub_10010E248(v16, v14, type metadata accessor for Daemon.RequestHandler.Signpost);
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v28 = qword_1001738A8;
  v29 = sub_10010E090(&qword_10016ADA0, v27, type metadata accessor for DaemonActor);
  v30 = (*(v35 + 80) + 72) & ~*(v35 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  *(v31 + 24) = v29;
  sub_10010DF64(v38, v31 + 32);
  sub_10010E57C(v14, v31 + v30, type metadata accessor for Daemon.RequestHandler.Signpost);

  sub_10009C9B8(0, 0, v26, &unk_100134170, v31);

  return sub_10010E0D8(v16, type metadata accessor for Daemon.RequestHandler.Signpost);
}

uint64_t sub_1001094B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100042680;

  return sub_100109578(a5);
}

uint64_t sub_100109578(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10010E090(&qword_10016ADA0, v4, type metadata accessor for DaemonActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[23] = v6;
  v2[24] = v5;

  return _swift_task_switch(sub_100109690, v6, v5);
}

uint64_t sub_100109690()
{
  v1 = *(*(v0 + 168) + 24);
  *(v0 + 200) = v1;
  return _swift_task_switch(sub_1001096B4, v1, 0);
}

uint64_t sub_1001096B4()
{
  v1 = *(v0[25] + 112);
  v0[26] = v1;
  if ((v1 >> 62) - 2 >= 2)
  {
    if (v1 >> 62)
    {
      v0[32] = v1 & 0x3FFFFFFFFFFFFFFFLL;

      v9 = sub_100026F94(&qword_10016D568, &qword_100134180);
      v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v11 = swift_task_alloc();
      v0[33] = v11;
      *v11 = v0;
      v11[1] = sub_100109C0C;

      return BaseObjectGraph.inject<A>(_:)(v0 + 2, v9, v9);
    }

    else
    {
      v5 = async function pointer to Task.value.getter[1];

      v6 = swift_task_alloc();
      v0[27] = v6;
      v7 = type metadata accessor for BaseObjectGraph();
      v8 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v6 = v0;
      v6[1] = sub_1001098C4;

      return Task.value.getter(v0 + 18, v1, v7, v8, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v2 = swift_task_alloc();
    v0[29] = v2;
    *v2 = v0;
    v2[1] = sub_1001099F0;
    v3 = v0[25];

    return sub_10010089C();
  }
}

uint64_t sub_1001098C4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_10010A040;
  }

  else
  {
    v6 = sub_100109F78;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001099F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  v4[30] = v1;

  v7 = v4[25];
  if (v1)
  {
    v8 = sub_100109BEC;
  }

  else
  {
    v4[31] = a1;
    v8 = sub_100109B2C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100109B2C()
{
  v0[32] = v0[31];
  v1 = sub_100026F94(&qword_10016D568, &qword_100134180);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_100109C0C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_100109C0C()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_10010A4A0;
  }

  else
  {
    v7 = sub_10010A0AC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100109D48()
{
  v1 = v0[35];
  if (qword_10016A6C0 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v3 = *(type metadata accessor for LogMessage() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010013EA90;
  v6._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  swift_getErrorValue();
  v7 = v0[15];
  v8 = v0[16];
  v0[10] = v8;
  v9 = sub_100042BAC(v0 + 7);
  (*(*(v8 - 8) + 16))(v9, v7, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 7));
  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v11 = v0[22];
  v12 = v0[20];
  sub_100107ECC();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100109F78()
{
  sub_100101204(v0[26]);
  v0[32] = v0[18];
  v1 = sub_100026F94(&qword_10016D568, &qword_100134180);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_100109C0C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_10010A040()
{
  sub_100101204(v0[26]);
  v0[35] = v0[28];
  v1 = v0[23];
  v2 = v0[24];

  return _swift_task_switch(sub_100109D48, v1, v2);
}

uint64_t sub_10010A0AC()
{
  v1 = v0[21];
  v2 = sub_100026F50(v0 + 2, v0[5]);
  v3 = *v1;
  v0[36] = *v1;
  v4 = v1[1];
  v0[37] = v4;
  v5 = *v2;
  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = sub_10010A170;
  v7 = v0[32];

  return sub_10004DB70(v3, v4, v7);
}

uint64_t sub_10010A170()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v6 = *v0;

  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return _swift_task_switch(sub_10010A290, v4, v3);
}

uint64_t sub_10010A290()
{
  if (qword_10016A6C0 != -1)
  {
    swift_once();
  }

  v2 = v0[36];
  v1 = v0[37];
  v13 = v0[32];
  v3 = v0[22];
  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013EAC0;
  v7._countAndFlagsBits = 0xD000000000000021;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v0[14] = &type metadata for String;
  v0[11] = v2;
  v0[12] = v1;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 11));
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  sub_100026FDC(v0 + 2);
  v9 = v0[22];
  v10 = v0[20];
  sub_100107ECC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10010A4A0()
{
  v1 = v0[32];

  v2 = v0[34];
  if (qword_10016A6C0 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v4 = *(type metadata accessor for LogMessage() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013EA90;
  v7._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v8 = v0[15];
  v9 = v0[16];
  v0[10] = v9;
  v10 = sub_100042BAC(v0 + 7);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504((v0 + 7));
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  v12 = v0[22];
  v13 = v0[20];
  sub_100107ECC();

  v14 = v0[1];

  return v14();
}

uint64_t sub_10010A6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v15;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v9 = *(*(type metadata accessor for ClientMessage() - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10010E090(&qword_10016ADA0, v10, type metadata accessor for DaemonActor);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[19] = v12;
  v8[20] = v11;

  return _swift_task_switch(sub_10010A800, v12, v11);
}

uint64_t sub_10010A800()
{
  sub_10010E248(v0[15], v0[18], &type metadata accessor for ClientMessage);
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_10010A8C0;
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[14];

  return sub_10010AAE0((v0 + 2), v2, v3);
}

uint64_t sub_10010A8C0()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return _swift_task_switch(sub_10010A9E0, v4, v3);
}

uint64_t sub_10010A9E0()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v10 = *(v0 + 40);
  v5 = *(v0 + 40);
  v6 = sub_100026F50((v0 + 16), v5);
  *(v0 + 80) = v10;
  v7 = sub_100042BAC((v0 + 56));
  (*(*(v5 - 8) + 16))(v7, v6, v5);
  v4(v0 + 56);
  sub_100026FDC((v0 + 56));
  sub_100026FDC((v0 + 16));
  sub_100107ECC();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10010AAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[30] = a3;
  v4[31] = v3;
  v4[28] = a1;
  v4[29] = a2;
  v5 = type metadata accessor for RichFailure();
  v4[32] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v7 = *(*(type metadata accessor for LogMessage.StringInterpolation() - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for DaemonActor();
  sub_10010E090(&qword_10016ADA0, v8, type metadata accessor for DaemonActor);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[35] = v10;
  v4[36] = v9;

  return _swift_task_switch(sub_10010AC2C, v10, v9);
}

uint64_t sub_10010AC2C()
{
  if (qword_10016A6C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = *(v0 + 232);
  v16 = *(v0 + 248);
  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  *(v0 + 296) = sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v4 = *(type metadata accessor for LogMessage() - 8);
  *(v0 + 304) = *(v4 + 72);
  *(v0 + 416) = *(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD000000000000017;
  v5._object = 0x800000010013EB60;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = ClientMessage.description.getter();
  *(v0 + 80) = &type metadata for String;
  *(v0 + 56) = v6;
  *(v0 + 64) = v7;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 56);
  v8._countAndFlagsBits = 0x203A6D6F7266202CLL;
  v8._object = 0xE800000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  v10 = *v2;
  v9 = v2[1];
  *(v0 + 112) = &type metadata for String;
  *(v0 + 88) = v10;
  *(v0 + 96) = v9;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 88);
  v11._object = 0x800000010013EB80;
  v11._countAndFlagsBits = 0xD000000000000010;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  v12 = ClientMessage.estimatedSize.getter();
  *(v0 + 144) = &type metadata for Int;
  *(v0 + 120) = v12;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 120);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();

  v14 = *(v16 + 24);
  *(v0 + 312) = v14;

  return _swift_task_switch(sub_10010AECC, v14, 0);
}

uint64_t sub_10010AECC()
{
  v1 = *(v0[39] + 112);
  v0[40] = v1;
  if ((v1 >> 62) - 2 >= 2)
  {
    if (v1 >> 62)
    {
      v0[46] = v1 & 0x3FFFFFFFFFFFFFFFLL;

      v9 = sub_100026F94(&qword_10016D568, &qword_100134180);
      v10 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
      v11 = swift_task_alloc();
      v0[47] = v11;
      *v11 = v0;
      v11[1] = sub_10010B424;

      return BaseObjectGraph.inject<A>(_:)(v0 + 2, v9, v9);
    }

    else
    {
      v5 = async function pointer to Task.value.getter[1];

      v6 = swift_task_alloc();
      v0[41] = v6;
      v7 = type metadata accessor for BaseObjectGraph();
      v8 = sub_100026F94(&qword_10016ADB8, &qword_1001312C0);
      *v6 = v0;
      v6[1] = sub_10010B0DC;

      return Task.value.getter(v0 + 26, v1, v7, v8, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v2 = swift_task_alloc();
    v0[43] = v2;
    *v2 = v0;
    v2[1] = sub_10010B208;
    v3 = v0[39];

    return sub_10010089C();
  }
}

uint64_t sub_10010B0DC()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 312);
  if (v0)
  {
    v6 = sub_10010B918;
  }

  else
  {
    v6 = sub_10010B850;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10010B208(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  v4[44] = v1;

  v7 = v4[39];
  if (v1)
  {
    v8 = sub_10010B404;
  }

  else
  {
    v4[45] = a1;
    v8 = sub_10010B344;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10010B344()
{
  v0[46] = v0[45];
  v1 = sub_100026F94(&qword_10016D568, &qword_100134180);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[47] = v3;
  *v3 = v0;
  v3[1] = sub_10010B424;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_10010B424()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 288);
  v6 = *(v2 + 280);
  if (v0)
  {
    v7 = sub_10010BF1C;
  }

  else
  {
    v7 = sub_10010B984;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10010B560()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 416);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 272);
  v16 = *(v0 + 264);
  v17 = *(v0 + 256);
  v6 = *(v0 + 224);
  v18 = *(v0 + 232);
  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x800000010013EBA0;
  v7._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  swift_getErrorValue();
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  *(v0 + 176) = v8;
  v10 = sub_100042BAC((v0 + 152));
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 152);
  v11._countAndFlagsBits = 41;
  v11._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  swift_errorRetain();
  RichFailure.init(_:)();
  v6[3] = sub_100026F94(&qword_10016D858, &qword_100134188);
  v6[4] = sub_10002B95C(&qword_10016D860, &qword_10016D858, &qword_100134188);
  sub_100042BAC(v6);
  sub_10010E090(&qword_10016D868, 255, &type metadata accessor for RichFailure);
  sub_10010E090(&qword_10016D870, 255, &type metadata accessor for RichFailure);
  sub_10010E090(&qword_10016D878, 255, &type metadata accessor for RichFailure);
  DaemonResponse.init<>(_:)();

  sub_10010E0D8(v18, &type metadata accessor for ClientMessage);
  v13 = *(v0 + 264);
  v12 = *(v0 + 272);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10010B850()
{
  sub_100101204(v0[40]);
  v0[46] = v0[26];
  v1 = sub_100026F94(&qword_10016D568, &qword_100134180);
  v2 = async function pointer to BaseObjectGraph.inject<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[47] = v3;
  *v3 = v0;
  v3[1] = sub_10010B424;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_10010B918()
{
  sub_100101204(v0[40]);
  v0[49] = v0[42];
  v1 = v0[35];
  v2 = v0[36];

  return _swift_task_switch(sub_10010B560, v1, v2);
}

uint64_t sub_10010B984()
{
  v1 = v0[31];
  v2 = sub_100026F50(v0 + 2, v0[5]);
  v4 = *v1;
  v3 = v1[1];
  v5 = *v2;
  v6 = swift_task_alloc();
  v0[50] = v6;
  *v6 = v0;
  v6[1] = sub_10010BA48;
  v7 = v0[46];
  v8 = v0[29];
  v9 = v0[30];
  v10 = v0[28];

  return sub_100042F90(v10, v8, v9, v4, v3, v7);
}

uint64_t sub_10010BA48()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = *(v2 + 288);
  v6 = *(v2 + 280);
  if (v0)
  {
    v7 = sub_10010BC1C;
  }

  else
  {
    v7 = sub_10010BB84;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10010BB84()
{
  v1 = v0[46];
  v2 = v0[29];

  sub_10010E0D8(v2, &type metadata accessor for ClientMessage);
  sub_100026FDC(v0 + 2);
  v4 = v0[33];
  v3 = v0[34];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10010BC1C()
{
  v1 = *(v0 + 368);

  sub_100026FDC((v0 + 16));
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 272);
  v17 = *(v0 + 264);
  v18 = *(v0 + 256);
  v7 = *(v0 + 224);
  v19 = *(v0 + 232);
  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x800000010013EBA0;
  v8._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  *(v0 + 176) = v9;
  v11 = sub_100042BAC((v0 + 152));
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 152);
  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  swift_errorRetain();
  RichFailure.init(_:)();
  v7[3] = sub_100026F94(&qword_10016D858, &qword_100134188);
  v7[4] = sub_10002B95C(&qword_10016D860, &qword_10016D858, &qword_100134188);
  sub_100042BAC(v7);
  sub_10010E090(&qword_10016D868, 255, &type metadata accessor for RichFailure);
  sub_10010E090(&qword_10016D870, 255, &type metadata accessor for RichFailure);
  sub_10010E090(&qword_10016D878, 255, &type metadata accessor for RichFailure);
  DaemonResponse.init<>(_:)();

  sub_10010E0D8(v19, &type metadata accessor for ClientMessage);
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10010BF1C()
{
  v1 = *(v0 + 368);

  v2 = *(v0 + 384);
  v3 = *(v0 + 416);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 272);
  v17 = *(v0 + 264);
  v18 = *(v0 + 256);
  v7 = *(v0 + 224);
  v19 = *(v0 + 232);
  sub_100026F50(qword_10016D6A0, qword_10016D6B8);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x800000010013EBA0;
  v8._countAndFlagsBits = 0xD000000000000022;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  swift_getErrorValue();
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  *(v0 + 176) = v9;
  v11 = sub_100042BAC((v0 + 152));
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v0 + 152);
  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v12);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  swift_errorRetain();
  RichFailure.init(_:)();
  v7[3] = sub_100026F94(&qword_10016D858, &qword_100134188);
  v7[4] = sub_10002B95C(&qword_10016D860, &qword_10016D858, &qword_100134188);
  sub_100042BAC(v7);
  sub_10010E090(&qword_10016D868, 255, &type metadata accessor for RichFailure);
  sub_10010E090(&qword_10016D870, 255, &type metadata accessor for RichFailure);
  sub_10010E090(&qword_10016D878, 255, &type metadata accessor for RichFailure);
  DaemonResponse.init<>(_:)();

  sub_10010E0D8(v19, &type metadata accessor for ClientMessage);
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10010C21C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_10010C280()
{
  type metadata accessor for DaemonActor();
  v0 = swift_allocObject();
  result = sub_10010C360();
  qword_1001738A8 = v0;
  return result;
}

uint64_t sub_10010C2BC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10010C360()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v25 = *(v0 - 8);
  v26 = v0;
  v1 = *(v25 + 64);
  (__chkstk_darwin)();
  v24 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v22 - 8) + 64);
  (__chkstk_darwin)();
  v23 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v21 - v11;
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v13 = static Utils.daemonProcessName.getter();
  v15 = v14;

  v28 = v13;
  v29 = v15;
  v16._object = 0x800000010013E4B0;
  v16._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v16);
  v21[2] = v29;
  v21[3] = v28;
  if (qword_10016A6B0 != -1)
  {
    swift_once();
  }

  v17 = qword_10016D698;
  static DispatchQoS.unspecified.getter();
  type metadata accessor for DispatchQueueExecutor();
  v18 = swift_allocObject();
  v21[1] = sub_100096B74(0, &qword_10016C288, OS_dispatch_queue_ptr);
  (*(v6 + 16))(v10, v12, v5);
  v28 = &_swiftEmptyArrayStorage;
  sub_10010E090(&qword_10016C290, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100026F94(&qword_10016C298, &unk_1001323C0);
  sub_10002B95C(&qword_10016C2A0, &qword_10016C298, &unk_1001323C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v25 + 104))(v24, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v26);
  v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (*(v6 + 8))(v12, v5);
  *(v18 + 16) = v19;
  result = v27;
  *(v27 + 16) = v18;
  return result;
}

uint64_t sub_10010C718()
{
  v1 = *(v0 + 16);
  sub_10010E090(&qword_10016BCB8, 255, type metadata accessor for DispatchQueueExecutor);
  return v1;
}

uint64_t sub_10010C778()
{
  if (qword_10016A6C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10010C7D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DaemonActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

uint64_t sub_10010C80C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v10 = type metadata accessor for LogMessage.StringInterpolation();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v33[3] = type metadata accessor for MaintenanceTask();
  v33[4] = sub_10010E090(&qword_10016D830, 255, type metadata accessor for MaintenanceTask);
  v33[0] = a1;
  v12 = objc_opt_self();

  v13 = [v12 sharedScheduler];
  v14 = String._bridgeToObjectiveC()();
  if (qword_10016A570 != -1)
  {
    swift_once();
  }

  v15 = qword_10016C1D8;
  sub_100026EEC(v33, v32);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  sub_10002C604(v32, (v16 + 4));
  v16[9] = a4;
  v16[10] = v9;
  v30 = sub_10010ED74;
  v31 = v16;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1000FB7A0;
  v29 = &unk_100167820;
  v17 = _Block_copy(&aBlock);

  v18 = [v13 registerForTaskWithIdentifier:v14 usingQueue:v15 launchHandler:v17];
  _Block_release(v17);

  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v19 = *(type metadata accessor for LogMessage() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x800000010013E860;
  v22._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v29 = &type metadata for String;
  aBlock = a2;
  v27 = a3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v23._countAndFlagsBits = 0x746C75736572202CLL;
  v23._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  v29 = &type metadata for Bool;
  LOBYTE(aBlock) = v18;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return sub_100026FDC(v33);
}

uint64_t sub_10010CC24(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v10 = type metadata accessor for LogMessage.StringInterpolation();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v33[3] = type metadata accessor for OnlineMaintenanceTask();
  v33[4] = sub_10010E090(&qword_10016D828, 255, type metadata accessor for OnlineMaintenanceTask);
  v33[0] = a1;
  v12 = objc_opt_self();

  v13 = [v12 sharedScheduler];
  v14 = String._bridgeToObjectiveC()();
  if (qword_10016A570 != -1)
  {
    swift_once();
  }

  v15 = qword_10016C1D8;
  sub_100026EEC(v33, v32);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  sub_10002C604(v32, (v16 + 4));
  v16[9] = a4;
  v16[10] = v9;
  v30 = sub_10010ED74;
  v31 = v16;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1000FB7A0;
  v29 = &unk_1001677D0;
  v17 = _Block_copy(&aBlock);

  v18 = [v13 registerForTaskWithIdentifier:v14 usingQueue:v15 launchHandler:v17];
  _Block_release(v17);

  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v19 = *(type metadata accessor for LogMessage() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x800000010013E860;
  v22._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v29 = &type metadata for String;
  aBlock = a2;
  v27 = a3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v23._countAndFlagsBits = 0x746C75736572202CLL;
  v23._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  v29 = &type metadata for Bool;
  LOBYTE(aBlock) = v18;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return sub_100026FDC(v33);
}

uint64_t sub_10010D03C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  v10 = type metadata accessor for LogMessage.StringInterpolation();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v33[3] = type metadata accessor for WeeklyMetricsTask();
  v33[4] = sub_10010E090(&qword_10016D820, 255, type metadata accessor for WeeklyMetricsTask);
  v33[0] = a1;
  v12 = objc_opt_self();

  v13 = [v12 sharedScheduler];
  v14 = String._bridgeToObjectiveC()();
  if (qword_10016A570 != -1)
  {
    swift_once();
  }

  v15 = qword_10016C1D8;
  sub_100026EEC(v33, v32);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  sub_10002C604(v32, (v16 + 4));
  v16[9] = a4;
  v16[10] = v9;
  v30 = sub_10010DC70;
  v31 = v16;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1000FB7A0;
  v29 = &unk_100167780;
  v17 = _Block_copy(&aBlock);

  v18 = [v13 registerForTaskWithIdentifier:v14 usingQueue:v15 launchHandler:v17];
  _Block_release(v17);

  if (qword_10016A560 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016C198, qword_10016C1B0);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v19 = *(type metadata accessor for LogMessage() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x800000010013E860;
  v22._countAndFlagsBits = 0xD000000000000025;
  LogMessage.StringInterpolation.appendLiteral(_:)(v22);
  v29 = &type metadata for String;
  aBlock = a2;
  v27 = a3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v23._countAndFlagsBits = 0x746C75736572202CLL;
  v23._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  v29 = &type metadata for Bool;
  LOBYTE(aBlock) = v18;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&aBlock);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return sub_100026FDC(v33);
}

void sub_10010D454()
{
  if (qword_10016A6A0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D658, qword_10016D670);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v0 = *(type metadata accessor for LogMessage() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.init(stringLiteral:)();
  Logger.warning(_:)();

  exit(0);
}

uint64_t sub_10010D58C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10010D5C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000A444C;

  return sub_10010385C(a1, v4, v5, v6);
}

uint64_t sub_10010D678()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010D6B0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10010D6E8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1001062A8(a1);
}

uint64_t sub_10010D6F8(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10010D744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A444C;

  return sub_100106988(a1, v4, v5, v7);
}

void sub_10010D804()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_10016A6B8 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_1001738A0 object:0];
}

uint64_t sub_10010D91C(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = type metadata accessor for OSSignpostError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10016A6A8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for OSSignposter();
  sub_10002FD14(v14, qword_10016D680);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v5 + 88))(v8, v4) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v20, v19, a1, v17, v18, 2u);

LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10010DBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100026F94(&qword_10016CB48, &qword_100132C60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010DC74()
{
  v1 = v0[3];

  sub_100026FDC(v0 + 4);
  v2 = v0[9];

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_10010DCDC()
{
  result = qword_10016D848;
  if (!qword_10016D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D848);
  }

  return result;
}

uint64_t sub_10010DD30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10010DD78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for Daemon.RequestHandler.Signpost()
{
  result = qword_10016D8E8;
  if (!qword_10016D8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10010DE54()
{
  v1 = (type metadata accessor for Daemon.RequestHandler.Signpost() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  swift_weakDestroy();
  v7 = *(v0 + 56);

  v8 = *(v0 + v3 + 24);

  v9 = v1[8];
  v10 = type metadata accessor for OSSignposter();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10010DF9C(uint64_t a1)
{
  v4 = *(type metadata accessor for Daemon.RequestHandler.Signpost() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100042680;

  return sub_1001094B0(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_10010E090(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10010E0D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10010E138()
{
  v1 = type metadata accessor for XPCReceivedMessage();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10010E1C0(void *a1)
{
  v2 = *(type metadata accessor for XPCReceivedMessage() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = a1[4];
  sub_100026F50(a1, a1[3]);
  return XPCReceivedMessage.reply<A>(_:)();
}

uint64_t sub_10010E248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010E2B0()
{
  v1 = *(type metadata accessor for ClientMessage() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Daemon.RequestHandler.Signpost();
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(v0 + 24);

  swift_weakDestroy();
  v9 = *(v0 + 40);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        inserted = type metadata accessor for InsertRequest();
      }

      else
      {
        inserted = type metadata accessor for UpdateRequest();
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
          inserted = type metadata accessor for DeleteRequest();
          break;
        case 8:
          inserted = type metadata accessor for DataDeletionTriggerRequest();
          break;
        case 9:
          inserted = type metadata accessor for StatusRequest();
          break;
        default:
          goto LABEL_23;
      }
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_23;
      }

      inserted = type metadata accessor for DisconnectionRequest();
    }

    else
    {
      inserted = type metadata accessor for ConnectionRequest();
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    inserted = type metadata accessor for SelectRequest();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    inserted = type metadata accessor for PluckRequest();
  }

  else
  {
    inserted = type metadata accessor for ScalarValueRequest();
  }

  (*(*(inserted - 8) + 8))(v0 + v3, inserted);
LABEL_23:
  v12 = v2 | v6;
  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 95) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + v6 + 16) & ~v6;
  v16 = (v0 + v13);
  v17 = *(v0 + v13 + 8);

  v18 = v16[3];

  sub_100026FDC(v16 + 4);
  v19 = v16[10];

  v20 = *(v0 + v14 + 8);

  v21 = *(v0 + v15 + 24);

  v22 = *(v5 + 24);
  v23 = type metadata accessor for OSSignposter();
  (*(*(v23 - 8) + 8))(v0 + v15 + v22, v23);

  return _swift_deallocObject(v0, v15 + v7, v12 | 7);
}

uint64_t sub_10010E57C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010E5E4()
{
  v1 = *(type metadata accessor for ClientMessage() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 95) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for Daemon.RequestHandler.Signpost() - 8);
  v6 = *(v0 + v4);
  v7 = *(v0 + v4 + 8);
  v8 = v0 + ((v4 + *(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100108BB0(v0 + 16, v0 + v2, v0 + v3, v6, v7, v8);
}

uint64_t sub_10010E6D4()
{
  v1 = *(type metadata accessor for ClientMessage() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Daemon.RequestHandler.Signpost();
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 40);

  v10 = *(v0 + 56);

  swift_weakDestroy();
  v11 = *(v0 + 72);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        inserted = type metadata accessor for InsertRequest();
      }

      else
      {
        inserted = type metadata accessor for UpdateRequest();
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
          inserted = type metadata accessor for DeleteRequest();
          break;
        case 8:
          inserted = type metadata accessor for DataDeletionTriggerRequest();
          break;
        case 9:
          inserted = type metadata accessor for StatusRequest();
          break;
        default:
          goto LABEL_23;
      }
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_23;
      }

      inserted = type metadata accessor for DisconnectionRequest();
    }

    else
    {
      inserted = type metadata accessor for ConnectionRequest();
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    inserted = type metadata accessor for SelectRequest();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    inserted = type metadata accessor for PluckRequest();
  }

  else
  {
    inserted = type metadata accessor for ScalarValueRequest();
  }

  (*(*(inserted - 8) + 8))(v0 + v3, inserted);
LABEL_23:
  v14 = v2 | v6;
  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + v6 + 88) & ~v6;
  v17 = (v0 + v15);
  v18 = *(v0 + v15 + 8);

  v19 = v17[3];

  sub_100026FDC(v17 + 4);
  v20 = v17[10];

  v21 = *(v0 + v16 + 24);

  v22 = *(v5 + 24);
  v23 = type metadata accessor for OSSignposter();
  (*(*(v23 - 8) + 8))(v0 + v16 + v22, v23);

  return _swift_deallocObject(v0, v16 + v7, v14 | 7);
}

uint64_t sub_10010E99C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientMessage() - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for Daemon.RequestHandler.Signpost() - 8);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1 + ((v7 + *(v8 + 80) + 88) & ~*(v8 + 80));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000A444C;

  return sub_10010A6D8(a1, v9, v10, v11, v12, (v1 + 6), v1 + v6, v1 + v7);
}

uint64_t sub_10010EB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OSSignposter();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10010EBF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OSSignposter();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10010EC9C()
{
  result = type metadata accessor for OSSignpostIntervalState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OSSignposter();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_10010ED78(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  static Utils.daemonBundleId.getter();
  String.utf8CString.getter();

  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    if (qword_10016A6D0 != -1)
    {
      swift_once();
    }

    sub_100026EEC(qword_10016D928, v16);
    sub_100026F50(v16, v16[3]);
    sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
    v7 = *(type metadata accessor for LogMessage() - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    *(swift_allocObject() + 16) = xmmword_10012FA10;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._object = 0x800000010013EBD0;
    v10._countAndFlagsBits = 0xD000000000000016;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    v15[3] = &type metadata for String;
    v11 = 0x296C6C756E28;
    if (a2)
    {
      v11 = a1;
    }

    v12 = 0xE600000000000000;
    if (a2)
    {
      v12 = a2;
    }

    v15[0] = v11;
    v15[1] = v12;

    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002D504(v15);
    v13._countAndFlagsBits = 58;
    v13._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    LogMessage.init(stringInterpolation:)();
    Logger.debug(_:)();

    sub_100026FDC(v16);
    v14 = objc_autoreleasePoolPush();
    sub_10010F060();
    objc_autoreleasePoolPop(v14);
  }
}

uint64_t sub_10010EFD8()
{
  if (qword_10016A628 != -1)
  {
    swift_once();
  }

  return sub_100026EEC(qword_100173758, &unk_10016D928);
}

uint64_t sub_10010F03C()
{
  result = static Utils.daemonBundleId.getter();
  qword_10016D950 = result;
  unk_10016D958 = v1;
  return result;
}

uint64_t sub_10010F060()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() processInfo];
  v39 = v3;
  v5 = v4;
  v6 = [v5 environment];

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = 0;
  v10 = v7 + 64;
  v9 = *(v7 + 64);
  v37 = v7;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v38 = xmmword_10012FA10;
  if ((v12 & v9) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v15);
    ++v8;
    if (v13)
    {
      v8 = v15;
      do
      {
LABEL_8:
        v16 = (v8 << 10) | (16 * __clz(__rbit64(v13)));
        v17 = *(v37 + 56);
        v18 = (*(v37 + 48) + v16);
        v19 = v18[1];
        v40 = *v18;
        v20 = (v17 + v16);
        v21 = v20[1];
        v48 = *v20;
        v22 = qword_10016A6D0;

        v44 = v21;

        if (v22 != -1)
        {
          swift_once();
        }

        v13 &= v13 - 1;
        v42 = qword_10016D940;
        v43 = unk_10016D948;
        v41 = sub_100026F50(qword_10016D928, qword_10016D940);
        sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
        v23 = *(type metadata accessor for LogMessage() - 8);
        v24 = *(v23 + 72);
        v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        *(swift_allocObject() + 16) = v38;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v26._countAndFlagsBits = 0;
        v26._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v26);
        v47 = &type metadata for String;
        v45 = v40;
        v46 = v19;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002D504(&v45);
        v27._countAndFlagsBits = 61;
        v27._object = 0xE100000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v27);
        v47 = &type metadata for String;
        v45 = v48;
        v46 = v44;
        LogMessage.StringInterpolation.appendInterpolation(safe:)();
        sub_10002D504(&v45);
        v28._countAndFlagsBits = 0;
        v28._object = 0xE000000000000000;
        LogMessage.StringInterpolation.appendLiteral(_:)(v28);
        LogMessage.init(stringInterpolation:)();
        Logger.debug(_:)();
      }

      while (v13);
    }
  }

  if (qword_10016A6D0 == -1)
  {
    goto LABEL_13;
  }

LABEL_15:
  swift_once();
LABEL_13:
  sub_100026F50(qword_10016D928, qword_10016D940);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v29 = *(type metadata accessor for LogMessage() - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  *(swift_allocObject() + 16) = v38;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._object = 0x800000010013EBF0;
  v32._countAndFlagsBits = 0xD000000000000014;
  LogMessage.StringInterpolation.appendLiteral(_:)(v32);
  v33 = malloc_engaged_nano();
  v47 = &type metadata for Int32;
  LODWORD(v45) = v33;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(&v45);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v34);
  LogMessage.init(stringInterpolation:)();
  Logger.debug(_:)();
}

void sub_10010F4F8(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v3 = type metadata accessor for LogMessage.StringInterpolation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  if (qword_10016A6D0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D928, qword_10016D940);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v11 = *(type metadata accessor for LogMessage() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v18[3] = &type metadata for String;
  v18[0] = v17;
  v18[1] = a2;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v18);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v15);
  (*(v4 + 16))(v8, v10, v3);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  exit(1);
}

void sub_10010F738(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(18);

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 2629678;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  errno.getter();
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  sub_10010F4F8(0x6F6E20646C756F43, 0xEA00000000002074);
}

uint64_t sub_10010F814()
{
  v0 = type metadata accessor for LogMessage.StringInterpolation();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  if (qword_10016A6D0 != -1)
  {
    swift_once();
  }

  sub_100026F50(qword_10016D928, qword_10016D940);
  sub_100026F94(&qword_10016A6E0, &qword_10012FA20);
  v2 = *(type metadata accessor for LogMessage() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_10012FA10;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._object = 0x800000010013EC10;
  v5._countAndFlagsBits = 0xD000000000000019;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  if (qword_10016A6D8 != -1)
  {
    swift_once();
  }

  v9[3] = &type metadata for String;
  v9[0] = qword_10016D950;
  v9[1] = unk_10016D958;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002D504(v9);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v6);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  String.utf8CString.getter();
  v7 = _set_user_dir_suffix();

  if (!v7)
  {
    sub_10010F738(0xD00000000000001ELL, 0x800000010013EC30);
  }

  return result;
}

uint64_t CxxConvertibleToCollection.forEach(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a1;
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v22 = &v21 - ((*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v32 = &v21 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v32;
  v10 = v32;
  (*(a4 + 32))(a3, a4);
  (*(a4 + 40))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 8);
  v36 = v9;
  v31 = v12;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v13 = *(v8 + 8);
    v13(v36, v7);
    return (v13)(v10, v7);
  }

  else
  {
    v14 = *(AssociatedConformanceWitness + 24);
    v26 = (v30 + 16);
    v27 = v14;
    v28 = AssociatedConformanceWitness + 24;
    v29 = (v30 + 8);
    v30 = v8 + 8;
    v24 = (v8 + 32);
    v25 = AssociatedConformanceWitness + 32;
    v16 = v22;
    v15 = AssociatedTypeWitness;
    while (1)
    {
      v17 = v27(v35, v7, AssociatedConformanceWitness);
      (*v26)(v16);
      v17(v35, 0);
      v33(v16);
      if (v4)
      {
        break;
      }

      (*v29)(v16, v15);
      v18 = v32;
      (*(AssociatedConformanceWitness + 32))(v7, AssociatedConformanceWitness);
      v13 = *v30;
      (*v30)(v10, v7);
      (*v24)(v10, v18, v7);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v13(v36, v7);
        return (v13)(v10, v7);
      }
    }

    (*v29)(v16, v15);
    v20 = *v30;
    (*v30)(v36, v7);
    return (v20)(v10, v7);
  }
}

uint64_t CxxConvertibleToCollection<>.forEach(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v25 = a2;
  v26 = a5;
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v8 = &v19 - ((*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v19 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 - 8);
  v11 = &v19 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_getAssociatedTypeWitness();
  v21 = *(v12 - 8);
  v13 = &v19 - ((*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v11, v27, a3);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = v13;
  v15 = v20;
  v27 = v12;
  v23 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v22 = *(v15 + 48);
  if (v22(v9, 1, AssociatedTypeWitness) != 1)
  {
    v16 = *(v15 + 32);
    v17 = (v15 + 8);
    while (1)
    {
      v16(v8, v9, AssociatedTypeWitness);
      v24(v8);
      if (v5)
      {
        break;
      }

      (*v17)(v8, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      if (v22(v9, 1, AssociatedTypeWitness) == 1)
      {
        return (*(v21 + 8))(v26, v27);
      }
    }

    (*v17)(v8, AssociatedTypeWitness);
  }

  return (*(v21 + 8))(v26, v27);
}

uint64_t sub_1001101D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(&v9 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0), a1, AssociatedTypeWitness);
  return dispatch thunk of RangeReplaceableCollection.append(_:)();
}

uint64_t sub_10011031C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X5>, void (*a6)(char *)@<X6>, uint64_t a7@<X8>)
{
  a5(a1, a3);
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a7;
  return CxxConvertibleToCollection.forEach(_:)(a6, v14, a2, a4);
}

uint64_t sub_1001103AC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = v6 - ((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  dispatch thunk of SetAlgebra.insert(_:)();
  return (*(v3 + 8))(v4, AssociatedTypeWitness);
}

uint64_t CxxDictionary.init<>(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = &v46 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(AssociatedTypeWitness - 8);
  v53 = &v46 - ((*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v50 = *(v10 - 8);
  v67 = &v46 - ((*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v10;
  v52 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = type metadata accessor for Optional();
  v70 = *(v65 - 8);
  v12 = &v46 - ((*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v12;
  v13 = *(a3 + 88);
  v57 = a4;
  v58 = a2;
  v59 = a3;
  result = v13(a2, a3);
  v15 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaDictionary.makeIterator()();
    v47 = 0;
    v16 = 0;
    v17 = 0;
    v15 = result | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v19 = *(a1 + 64);
    v47 = a1 + 64;
    v16 = ~v18;
    v20 = -v18;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v17 = v21 & v19;
  }

  v22 = 0;
  v69 = (v50 + 32);
  v23 = (v51 + 32);
  v62 = TupleTypeMetadata2 - 8;
  v46 = v16;
  v24 = (v16 + 64) >> 6;
  v49 = v50 + 16;
  v48 = v51 + 16;
  v61 = (v70 + 32);
  v54 = v12;
  v55 = (v51 + 56);
  v66 = v15;
  v25 = v52;
  v26 = v67;
  v27 = v68;
  while (1)
  {
    v63 = v17;
    v60 = v22;
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (__CocoaDictionary.Iterator.next()())
    {
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v37 = v22;
      v36 = v53;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v29 = v37;
      v70 = v17;
      goto LABEL_20;
    }

    v39 = 1;
    v45 = v17;
    v31 = v22;
    v70 = v45;
    v12 = v54;
LABEL_21:
    v40 = *(TupleTypeMetadata2 - 8);
    (*(v40 + 56))(v12, v39, 1, TupleTypeMetadata2);
    v41 = v64;
    (*v61)(v64, v12, v65);
    if ((*(v40 + 48))(v41, 1, TupleTypeMetadata2) == 1)
    {
      return sub_100042570();
    }

    v42 = *(TupleTypeMetadata2 + 48);
    v27 = v68;
    v26 = v67;
    (*v69)(v67, v41, v68);
    v43 = &v41[v42];
    v44 = v56;
    (*v23)(v56, v43, v25);
    (*v55)(v44, 0, 1, v25);
    result = CxxDictionary.subscript.setter(v44, v26, v58, v59);
    v22 = v31;
    v17 = v70;
    v15 = v66;
  }

  v28 = v17;
  v29 = v22;
  if (v17)
  {
LABEL_17:
    v70 = (v28 - 1) & v28;
    v33 = __clz(__rbit64(v28)) | (v29 << 6);
    v34 = v15;
    (*(v50 + 16))(v26, *(v15 + 48) + *(v50 + 72) * v33, v27);
    v35 = *(v34 + 56);
    v25 = v52;
    v36 = v53;
    (*(v51 + 16))(v53, v35 + *(v51 + 72) * v33, v52);
LABEL_20:
    v38 = *(TupleTypeMetadata2 + 48);
    v12 = v54;
    (*v69)(v54);
    (*v23)(&v12[v38], v36, v25);
    v39 = 0;
    v31 = v29;
    goto LABEL_21;
  }

  if (v24 <= v22 + 1)
  {
    v30 = v22 + 1;
  }

  else
  {
    v30 = v24;
  }

  v31 = v30 - 1;
  v32 = v22;
  while (1)
  {
    v29 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v70 = 0;
      v39 = 1;
      goto LABEL_21;
    }

    v28 = *(v47 + 8 * v29);
    ++v32;
    if (v28)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t CxxDictionary.subscript.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 1);
  v39 = &v32 - ((*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_getAssociatedTypeWitness();
  v36 = *(v7 - 8);
  v37 = v7;
  v35 = &v32 - ((*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = swift_getAssociatedTypeWitness();
  v34 = *(v42 - 8);
  v33 = &v32 - ((*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v41 = *(v8 - 8);
  v9 = &v32 - ((*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a4 + 8);
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  v43 = &v32 - ((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v43;
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    v14 = type metadata accessor for Optional();
    (*(*(v14 - 8) + 8))(a1, v14);
    v15 = v39;
    v16 = v44;
    (*(a4 + 120))(v44, a3, a4);
    v17 = swift_getAssociatedTypeWitness();
    (*(*(v17 - 8) + 8))(v16, v17);
    return (*(v38 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v19 = *(v12 + 32);
    v39 = v10;
    AssociatedTypeWitness = v19;
    v19(v13, a1, v11);
    (*(a4 + 104))(v44, a3, a4);
    (*(a4 + 152))(a3, a4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = *(*(AssociatedConformanceWitness + 8) + 8);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v41 = *(v41 + 8);
    (v41)(v9, v8);
    if (v22)
    {
      (v41)(v9, v8);
      v23 = v43;
      AssociatedTypeWitness(v43, v13, v11);
      v24 = v42;
      v25 = swift_getAssociatedConformanceWitness();
      v26 = v33;
      (*(v25 + 24))(v44, v23, v24, v25);
      v27 = v35;
      (*(a4 + 112))(v26, a3, a4);
      (*(v36 + 8))(v27, v37);
      return (*(v34 + 8))(v26, v24);
    }

    else
    {
      v28 = swift_getAssociatedTypeWitness();
      (*(*(v28 - 8) + 8))(v44, v28);
      AssociatedTypeWitness(v43, v13, v11);
      v29 = (*(AssociatedConformanceWitness + 24))(v45, v8, AssociatedConformanceWitness);
      v30 = v42;
      v31 = swift_getAssociatedConformanceWitness();
      (*(v31 + 64))(v43, v30, v31);
      v29(v45, 0);
      return (v41)(v9, v8);
    }
  }
}

uint64_t CxxDictionary.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = &v25 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v33 = &v25 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v26 = *(v13 + 64);
  v14 = &v25 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 88);
  v35 = a4;
  v36 = a2;
  v37 = a3;
  v15(a2, a3);
  if (Array.endIndex.getter())
  {
    v16 = 0;
    v17 = *(TupleTypeMetadata2 + 48);
    v30 = AssociatedTypeWitness;
    v31 = (v13 + 16);
    v28 = (v11 + 32);
    v29 = v17;
    v27 = AssociatedTypeWitness - 8;
    v18 = v32;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v13 + 16))(v14, a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v16, TupleTypeMetadata2);
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v26 != 8)
        {
          __break(1u);
          return result;
        }

        v38 = result;
        (*v31)(v14, &v38, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_10:
          __break(1u);
        }
      }

      v21 = v33;
      (*v28)(v33, v14, v34);
      v22 = v30;
      v23 = *(v30 - 8);
      (*(v23 + 32))(v18, &v14[v29], v30);
      (*(v23 + 56))(v18, 0, 1, v22);
      CxxDictionary.subscript.setter(v18, v21, v36, v37);
      ++v16;
      if (v20 == Array.endIndex.getter())
      {
      }
    }
  }
}

uint64_t CxxDictionary.init<A>(grouping:by:)@<X0>(void (**a1)(char *, void *)@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v83 = a7;
  v76 = a2;
  v77 = a6;
  v75 = a3;
  v82 = a1;
  v9 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = &v50 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = AssociatedTypeWitness;
  v66 = *(AssociatedTypeWitness - 8);
  v59 = &v50 - ((*(v66 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = swift_getAssociatedTypeWitness();
  v67 = *(v61 - 1);
  v73 = &v50 - ((*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v73;
  v86 = a4;
  v12 = a5;
  v72 = swift_getAssociatedTypeWitness();
  v55 = *(v72 - 8);
  v58 = &v50 - ((*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v58;
  v14 = swift_getAssociatedTypeWitness();
  v81 = *(v14 - 8);
  v85 = &v50 - ((*(v81 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = &v50 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v51 = *(v15 - 8);
  v16 = &v50 - ((*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 88))(v86, v12);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v78 = v16;
  v79 = v15;
  v18 = v80;
  v71 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v19 = v81;
  v20 = *(v81 + 48);
  v70 = v81 + 48;
  v69 = v20;
  if (v20(v18, 1, v14) == 1)
  {
    return (*(v51 + 8))(v78, v79);
  }

  v68 = *(v19 + 32);
  v64 = v12 + 104;
  v63 = v12 + 152;
  v82 = (v67 + 8);
  v57 = (v55 + 8);
  v62 = v77 + 64;
  v81 = v19 + 32;
  v67 = v19 + 8;
  v56 = v77 + 56;
  v55 += 32;
  v54 = (v66 + 32);
  v53 = (v66 + 56);
  v22 = v61;
  v66 = v13;
  v65 = v14;
  v52 = v11;
  while (1)
  {
    v32 = v85;
    v68(v85, v18, v14);
    v33 = v89;
    v76(v32);
    v89 = v33;
    if (v33)
    {
      break;
    }

    v34 = v86;
    (*(v12 + 104))(v13, v86, v12);
    v35 = v11;
    v36 = v73;
    (*(v12 + 152))(v34, v12);
    v37 = v13;
    v38 = swift_getAssociatedConformanceWitness();
    v39 = *(*(v38 + 8) + 8);
    v40 = v35;
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v84 = *v82;
    v84(v36, v22);
    if (v41)
    {
      v84(v35, v22);
      v23 = v77;
      v24 = v59;
      v25 = v74;
      (*(v77 + 56))(v74, v77);
      v26 = v85;
      (*(v23 + 64))(v85, v25, v23);
      v27 = v65;
      (*v67)(v26, v65);
      v28 = v58;
      v29 = v37;
      v14 = v27;
      (*v55)(v58, v29, v72);
      v30 = v60;
      (*v54)(v60, v24, v25);
      (*v53)(v30, 0, 1, v25);
      CxxDictionary.subscript.setter(v30, v28, v86, v12);
      v11 = v40;
    }

    else
    {
      (*v57)(v37, v72);
      v61 = (*(v38 + 24))(v88, v22, v38);
      swift_getAssociatedTypeWitness();
      v42 = swift_getAssociatedConformanceWitness();
      v43 = v12;
      v44 = *(v42 + 72);
      v45 = swift_checkMetadataState();
      v46 = v77;
      v47 = v44(v87, v45, v42);
      v12 = v43;
      v48 = v47;
      v49 = v85;
      (*(v46 + 64))(v85, v74, v46);
      v14 = v65;
      (*v67)(v49, v65);
      v48(v87, 0);
      (v61)(v88, 0);
      v11 = v52;
      v84(v52, v22);
    }

    v18 = v80;
    dispatch thunk of IteratorProtocol.next()();
    v31 = v69(v18, 1, v14);
    v13 = v66;
    if (v31 == 1)
    {
      return (*(v51 + 8))(v78, v79);
    }
  }

  (*v67)(v85, v14);
  (*(v51 + 8))(v78, v79);
  return (*(*(v86 - 8) + 8))(v83, v86);
}

uint64_t CxxDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v25 = &v24 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = &v24 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 96))(a1, a2, a3);
  (*(a3 + 144))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 8);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v9 + 8);
  v14(v10, v8);
  if (v13)
  {
    v14(v10, v8);
    v15 = 1;
    v16 = v27;
  }

  else
  {
    v17 = (*(AssociatedConformanceWitness + 24))(v28, v8, AssociatedConformanceWitness);
    v18 = v25;
    v19 = AssociatedTypeWitness;
    (*(v7 + 16))(v25);
    v17(v28, 0);
    v14(v10, v8);
    v20 = swift_getAssociatedConformanceWitness();
    v16 = v27;
    (*(v20 + 56))(v19, v20);
    (*(v7 + 8))(v18, v19);
    v15 = 0;
  }

  v21 = *(a3 + 8);
  v22 = swift_getAssociatedTypeWitness();
  return (*(*(v22 - 8) + 56))(v16, v15, 1, v22);
}

uint64_t sub_1001122C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *(v7 + 8);
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = &v15 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = &v15 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(AssociatedTypeWitness - 8) + 16))(v13, a3, AssociatedTypeWitness);
  (*(v10 + 16))(v11, a1, v9);
  return CxxDictionary.subscript.setter(v11, v13, v6, v7);
}

void (*CxxDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x58uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  v11 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v10[3] = v12;
  v13 = *(v12 - 8);
  v10[4] = v13;
  v14 = *(v13 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v10[6] = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[7] = AssociatedTypeWitness;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = v18;
  v10[8] = v18;
  v20 = *(v18 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10[9] = swift_coroFrameAlloc();
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v10[9] = malloc(*(v18 + 64));
    v21 = malloc(v20);
  }

  v10[10] = v21;
  (*(v19 + 16))();
  CxxDictionary.subscript.getter(a2, a3, a4, v16);
  return sub_100112698;
}

uint64_t CxxDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23[1] = a3;
  v24 = a2;
  v27 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v25 = v23 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = v23 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 96))(a1, a4, a5);
  (*(a5 + 144))(a4, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 8);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v11 + 8);
  v16(v12, v10);
  if (v15)
  {
    v17 = (v16)(v12, v10);
    return v24(v17);
  }

  else
  {
    v19 = (*(AssociatedConformanceWitness + 24))(v28, v10, AssociatedConformanceWitness);
    v20 = v25;
    v21 = AssociatedTypeWitness;
    (*(v9 + 16))(v25);
    v19(v28, 0);
    v16(v12, v10);
    v22 = swift_getAssociatedConformanceWitness();
    (*(v22 + 56))(v21, v22);
    return (*(v9 + 8))(v20, v21);
  }
}

void (*CxxDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x58uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[1] = a6;
  v11[2] = v6;
  *v11 = a5;
  v13 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v12[4] = v15;
  v16 = *(v15 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v12[5] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v12[5] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v18 = v17;
  v12[6] = v17;
  v19 = swift_getAssociatedTypeWitness();
  v12[7] = v19;
  v20 = *(v19 - 8);
  v21 = v20;
  v12[8] = v20;
  v22 = *(v20 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v12[9] = swift_coroFrameAlloc();
    v23 = swift_coroFrameAlloc();
  }

  else
  {
    v12[9] = malloc(*(v20 + 64));
    v23 = malloc(v22);
  }

  v12[10] = v23;
  (*(v21 + 16))();
  CxxDictionary.subscript.getter(a2, a3, a4, a5, a6, v18);
  return sub_100112BC8;
}

void sub_100112BE0(uint64_t **a1, char a2, void (*a3)(void *, void *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[9];
  v6 = (*a1)[10];
  if (a2)
  {
    v7 = v4[8];
    v9 = v4[5];
    v8 = v4[6];
    v10 = v4[3];
    v11 = v4[4];
    v15 = v4[7];
    v16 = v4[2];
    v14 = v4[1];
    v12 = *v4;
    (*(v11 + 16))(v9, v8, v10);
    (*(v7 + 32))(v5, v6, v15);
    a3(v9, v5, v12, v14);
    (*(v11 + 8))(v8, v10);
  }

  else
  {
    v9 = v4[5];
    v8 = v4[6];
    v13 = v4[2];
    a3(v8, v6, *v4, v4[1]);
  }

  free(v6);
  free(v5);
  free(v8);
  free(v9);

  free(v4);
}

uint64_t CxxDictionary.filter(_:)@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a1;
  v56 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v37 = &v34 - ((*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a4 + 8);
  v54 = swift_getAssociatedTypeWitness();
  v58 = *(v54 - 8);
  v53 = &v34 - ((*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = swift_getAssociatedTypeWitness();
  v47 = *(v52 - 8);
  v51 = &v34 - ((*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v44 = *(v9 - 8);
  v10 = &v34 - ((*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_getAssociatedTypeWitness();
  v40 = *(v11 - 8);
  v50 = &v34 - ((*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v50;
  v13 = v50;
  v14 = *(a4 + 88);
  v39 = a5;
  v15 = a4;
  v14(a3, a4);
  (*(a4 + 136))(a3, a4);
  (*(a4 + 144))(a3, a4);
  v60 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 8);
  v57 = v12;
  v49 = v17;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v18 = *(v40 + 8);
    v18(v57, v11);
  }

  else
  {
    v19 = v15;
    v20 = v34;
    v43 = *(AssociatedConformanceWitness + 24);
    v42 = (v44 + 16);
    v45 = (v58 + 8);
    v46 = (v47 + 8);
    v47 = v44 + 8;
    v58 = v19;
    v36 = v19 + 112;
    v35 = (v48 + 8);
    v44 = AssociatedConformanceWitness + 24;
    v41 = AssociatedConformanceWitness + 32;
    v48 = v40 + 8;
    v40 += 32;
    for (i = v43(v59, v11, AssociatedConformanceWitness); ; i = v43(v59, v11, AssociatedConformanceWitness))
    {
      v23 = i;
      (*v42)(v10);
      v23(v59, 0);
      v24 = swift_getAssociatedConformanceWitness();
      v25 = v51;
      (*(v24 + 32))(v9, v24);
      v26 = *(v24 + 56);
      v27 = v24;
      v28 = v53;
      v26(v9, v27);
      v29 = v55(v25, v28);
      if (v20)
      {
        (*v45)(v28, v54);
        (*v46)(v25, v52);
        (*v47)(v10, v9);
        v32 = *v48;
        (*v48)(v57, v11);
        v32(v13, v11);
        return (*(*(v60 - 8) + 8))(v39);
      }

      v30 = v29;
      (*v45)(v28, v54);
      (*v46)(v25, v52);
      if (v30)
      {
        v31 = v37;
        (*(v58 + 112))(v10, v60);
        (*v35)(v31, AssociatedTypeWitness);
      }

      (*v47)(v10, v9);
      v22 = v50;
      (*(AssociatedConformanceWitness + 32))(v11, AssociatedConformanceWitness);
      v18 = *v48;
      (*v48)(v13, v11);
      (*v40)(v13, v22, v11);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }
    }

    v18(v57, v11);
  }

  return (v18)(v13, v11);
}

uint64_t CxxDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness;
  v9 = &v29 - ((*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v29 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12;
  (*(a3 + 104))(a1, a2, a3);
  v14 = *(a3 + 152);
  v33 = v4;
  v14(a2, a3);
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v16 = *(v15 + 8);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v11 + 8);
  v18(v12, v10);
  if (v17)
  {
    v19 = 1;
  }

  else
  {
    v30 = (*(v15 + 24))(v35, v10, v15);
    v20 = v31;
    v21 = v9;
    v22 = v9;
    v23 = v32;
    (*(v31 + 16))(v22);
    v30(v35, 0);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(v23, AssociatedConformanceWitness);
    (*(v20 + 8))(v21, v23);
    (*(a3 + 128))(v12, a2, a3);
    v18(v12, v10);
    v19 = 0;
  }

  v25 = v34;
  v18(v13, v10);
  v26 = *(a3 + 8);
  v27 = swift_getAssociatedTypeWitness();
  return (*(*(v27 - 8) + 56))(v25, v19, 1, v27);
}

uint64_t CxxDictionary.merge<A>(_:uniquingKeysWith:)(void (**a1)(char *, uint64_t), void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v69 = a3;
  v68 = a2;
  v89 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = *(AssociatedTypeWitness - 8);
  v66 = &v56 - ((*(v88 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = swift_getAssociatedTypeWitness();
  v87 = *(v82 - 8);
  v65 = &v56 - ((*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = swift_getAssociatedTypeWitness();
  v71 = *(v80 - 8);
  v81 = &v56 - ((*(v71 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v81;
  v95 = a6;
  v9 = *(a6 + 8);
  v10 = swift_getAssociatedTypeWitness();
  v70 = *(v10 - 8);
  v64 = &v56 - ((*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v64;
  v79 = v64;
  v94 = v64;
  v92 = a4;
  v11 = swift_getAssociatedTypeWitness();
  v90 = *(v11 - 8);
  v62 = &v56 - ((*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v62;
  v93 = v11;
  v91 = v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = &v56 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v56 = *(v14 - 8);
  v15 = &v56 - ((*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v85 = v15;
  v86 = v14;
  v17 = v13;
  v78 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v18 = TupleTypeMetadata2;
  v19 = *(TupleTypeMetadata2 - 8);
  v77 = *(v19 + 48);
  v76 = v19 + 48;
  if (v77(v13, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v56 + 8))(v85, v86);
  }

  v21 = *(v90 + 32);
  v22 = (v70 + 32);
  v75 = v95 + 104;
  v74 = v95 + 152;
  v89 = (v71 + 8);
  v90 += 32;
  v60 = (v90 - 24);
  v61 = (v70 + 8);
  v59 = v95 + 112;
  v58 = (v88 + 8);
  v57 = (v87 + 8);
  v97 = v8;
  v23 = v93;
  v24 = v94;
  v25 = v83;
  v71 = v21;
  v70 += 32;
  v73 = TupleTypeMetadata2;
  v72 = v17;
  while (1)
  {
    v35 = *(v18 + 48);
    (v21)(v25, v17, v23);
    v88 = *v22;
    (v88)(v24, &v17[v35], v91);
    v36 = v95;
    v37 = v92;
    (*(v95 + 104))(v25, v92, v95);
    v38 = v81;
    (*(v36 + 152))(v37, v36);
    v39 = v80;
    v40 = v25;
    v87 = swift_getAssociatedConformanceWitness();
    v41 = *(v87 + 8);
    v42 = *(v41 + 8);
    LOBYTE(v35) = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = v39;
    v44 = *v89;
    (*v89)(v38, v43);
    if ((v35 & 1) == 0)
    {
      break;
    }

    v44(v97, v43);
    v26 = v62;
    (v21)(v62, v40, v93);
    v27 = v64;
    (v88)(v64, v94, v91);
    v28 = v95;
    v29 = v92;
    v30 = v82;
    v31 = swift_getAssociatedConformanceWitness();
    v32 = v65;
    (*(v31 + 24))(v26, v27, v30, v31);
    v33 = v66;
    (*(v28 + 112))(v32, v29, v28);
    (*v58)(v33, AssociatedTypeWitness);
    (*v57)(v32, v30);
LABEL_5:
    v17 = v72;
    dispatch thunk of IteratorProtocol.next()();
    v18 = v73;
    v34 = v77(v17, 1, v73);
    v23 = v93;
    v24 = v94;
    v25 = v83;
    v21 = v71;
    v22 = v70;
    if (v34 == 1)
    {
      return (*(v56 + 8))(v85, v86);
    }
  }

  v88 = v44;
  v45 = v91;
  (*v60)(v40, v93);
  v46 = (*(v41 + 24))(v96, v43, v41);
  v47 = v82;
  v48 = swift_getAssociatedConformanceWitness();
  v49 = v63;
  (*(v48 + 56))(v47, v48);
  v46(v96, 0);
  v50 = v94;
  v51 = v84;
  v68(v49, v94);
  if (!v51)
  {
    v84 = 0;
    v52 = *v61;
    (*v61)(v49, v45);
    v52(v50, v45);
    v53 = v97;
    v54 = (*(v87 + 24))(v96, v43);
    (*(v48 + 64))(v79, v47, v48);
    v54(v96, 0);
    (v88)(v53, v43);
    goto LABEL_5;
  }

  v55 = *v61;
  (*v61)(v49, v45);
  (v88)(v97, v43);
  v55(v50, v45);
  return (*(v56 + 8))(v85, v86);
}

uint64_t CxxDictionary.merge<>(_:uniquingKeysWith:)(unint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v91 = a3;
  v90 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v88 = &v78 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = swift_getAssociatedTypeWitness();
  v9 = *(v105 - 8);
  v87 = &v78 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v122 = *(v10 - 8);
  v104 = &v78 - ((*(v122 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v104;
  v11 = *(a5 + 8);
  v12 = swift_getAssociatedTypeWitness();
  v95 = *(v12 - 8);
  v86 = &v78 - ((*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v86;
  v123 = v86;
  v119 = v86;
  v102 = a4;
  v129 = swift_getAssociatedTypeWitness();
  v94 = *(v129 - 8);
  v103 = &v78 - ((*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v103;
  v125 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = type metadata accessor for Optional();
  v110 = result;
  v16 = *(result - 8);
  v109 = &v78 - ((*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v109;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaDictionary.makeIterator()();
    v79 = 0;
    v17 = 0;
    v18 = 0;
    a1 = result | 0x8000000000000000;
  }

  else
  {
    v19 = -1 << *(a1 + 32);
    v20 = *(a1 + 64);
    v79 = a1 + 64;
    v17 = ~v19;
    v21 = -v19;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v18 = v22 & v20;
  }

  v23 = 0;
  v126 = (v94 + 32);
  v118 = (v95 + 32);
  v111 = TupleTypeMetadata2;
  v107 = TupleTypeMetadata2 - 8;
  v78 = v17;
  v24 = (v17 + 64) >> 6;
  v93 = v94 + 16;
  v92 = v95 + 16;
  v106 = (v16 + 32);
  v99 = a5 + 104;
  v98 = a5 + 152;
  v100 = (v122 + 8);
  v83 = (v94 + 8);
  v84 = (v95 + 8);
  v82 = a5 + 112;
  v81 = (v8 + 8);
  v80 = (v9 + 8);
  v96 = v24;
  v120 = a1;
  v124 = a5;
  v97 = v13;
  v101 = v10;
  while (1)
  {
    v113 = v23;
    v114 = v18;
    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    v35 = __CocoaDictionary.Iterator.next()();
    v31 = v125;
    v32 = v119;
    if (v35)
    {
      v36 = v13;
      v37 = v129;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v34 = v113;
      v122 = v114;
LABEL_23:
      v43 = v111;
      v44 = *(v111 + 48);
      v45 = v109;
      (*v126)(v109, v36, v37);
      v46 = v32;
      v47 = v118;
      (*v118)(&v45[v44], v46, v31);
      v48 = 0;
      v121 = v34;
      goto LABEL_27;
    }

    v48 = 1;
    v121 = v113;
    v122 = v114;
LABEL_26:
    v43 = v111;
    v45 = v109;
    v47 = v118;
LABEL_27:
    v49 = *(v43 - 8);
    (*(v49 + 56))(v45, v48, 1, v43);
    v50 = v108;
    (*v106)(v108, v45, v110);
    if ((*(v49 + 48))(v50, 1, v43) == 1)
    {
      return sub_100042570();
    }

    v51 = *(v43 + 48);
    v52 = v103;
    v117 = *v126;
    v117(v103, v50, v129);
    v116 = *v47;
    v116(v123, &v50[v51], v31);
    v53 = v124;
    v54 = v102;
    (*(v124 + 104))(v52, v102, v124);
    v55 = v104;
    (*(v53 + 152))(v54, v53);
    v56 = v101;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v57 = *(AssociatedConformanceWitness + 8);
    v58 = *(v57 + 8);
    v59 = dispatch thunk of static Equatable.== infix(_:_:)();
    v60 = v56;
    v61 = v56;
    v62 = *v100;
    (*v100)(v55, v61);
    if (v59)
    {
      v62(v127, v60);
      v13 = v97;
      v117(v97, v52, v129);
      v25 = v119;
      v116(v119, v123, v125);
      v26 = v124;
      v27 = v105;
      v28 = swift_getAssociatedConformanceWitness();
      v29 = v87;
      (*(v28 + 24))(v13, v25, v27, v28);
      v30 = v88;
      (*(v26 + 112))(v29, v54, v26);
      (*v81)(v30, AssociatedTypeWitness);
      result = (*v80)(v29, v27);
      v23 = v121;
      v18 = v122;
      a1 = v120;
    }

    else
    {
      v117 = v62;
      (*v83)(v52, v129);
      v63 = (*(v57 + 24))(v128, v60, v57);
      v64 = v105;
      v65 = swift_getAssociatedConformanceWitness();
      v66 = v86;
      (*(v65 + 56))(v64, v65);
      v63(v128, 0);
      v67 = v85;
      v68 = v123;
      v69 = v112;
      v90(v66, v123);
      v112 = v69;
      if (v69)
      {
        sub_100042570();
        v76 = *v84;
        v77 = v125;
        (*v84)(v66, v125);
        (v117)(v127, v60);
        return (v76)(v68, v77);
      }

      v70 = *v84;
      v71 = v66;
      v72 = v68;
      v73 = v125;
      (*v84)(v71, v125);
      v70(v72, v73);
      v74 = v127;
      v75 = (*(AssociatedConformanceWitness + 24))(v128, v60);
      (*(v65 + 64))(v67, v64, v65);
      v75(v128, 0);
      result = (v117)(v74, v60);
      v23 = v121;
      v18 = v122;
      a1 = v120;
      v13 = v97;
    }

    v24 = v96;
  }

  v31 = v125;
  v32 = v119;
  if (v18)
  {
    v33 = v18;
    v34 = v23;
LABEL_22:
    v122 = (v33 - 1) & v33;
    v41 = __clz(__rbit64(v33)) | (v34 << 6);
    v42 = a1;
    v37 = v129;
    (*(v94 + 16))(v13, *(a1 + 48) + *(v94 + 72) * v41, v129);
    v36 = v13;
    (*(v95 + 16))(v32, *(v42 + 56) + *(v95 + 72) * v41, v31);
    goto LABEL_23;
  }

  if (v24 <= v23 + 1)
  {
    v38 = v23 + 1;
  }

  else
  {
    v38 = v24;
  }

  v39 = v38 - 1;
  v40 = v23;
  while (1)
  {
    v34 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v34 >= v24)
    {
      v121 = v39;
      v122 = 0;
      v48 = 1;
      goto LABEL_26;
    }

    v33 = *(v79 + 8 * v34);
    ++v40;
    if (v33)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t CxxDictionary.merging<A>(_:uniquingKeysWith:)@<X0>(void (**a1)(char *, uint64_t)@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  CxxDictionary.merge<A>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5, a6);
  v11 = *(a4 - 8);
  if (v8)
  {
    return (*(v11 + 8))(v7, a4);
  }

  else
  {
    return (*(v11 + 32))(a7, v7, a4);
  }
}

uint64_t CxxDictionary.merging<>(_:uniquingKeysWith:)@<X0>(unint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  CxxDictionary.merge<>(_:uniquingKeysWith:)(a1, a2, a3, a4, a5);
  v10 = *(a4 - 8);
  if (v7)
  {
    return (*(v10 + 8))(v6, a4);
  }

  else
  {
    return (*(v10 + 32))(a6, v6, a4);
  }
}

uint64_t CxxDictionary.merging(_:uniquingKeysWith:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_10011A1D0(a1, a2, a3, a4, a5);
  v11 = *(a4 - 8);
  v12 = *(v11 + 8);
  v12(a1, a4);
  if (v7)
  {
    return (v12)(v6, a4);
  }

  else
  {
    return (*(v11 + 32))(a6, v6, a4);
  }
}

uint64_t CxxOptional.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a2 + 32))())
  {
    (*(a2 + 40))(a1, a2);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 56);

  return v8(a3, v6, 1, AssociatedTypeWitness);
}

uint64_t Optional.init<A>(fromCxx:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((*(a4 + 32))(a3, a4))
  {
    (*(a4 + 40))(a3, a4);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  (*(*(a3 - 8) + 8))(a1, a3);
  v11 = *(*(a2 - 8) + 56);

  return v11(a5, v10, 1, a2);
}

uint64_t CxxSet.init<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a1;
  v32 = a5;
  v38 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v33 = &v28 - ((*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v39 = *(v9 - 8);
  v10 = &v28 - ((*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v28 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = &v28 - ((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v29 = *(v14 - 8);
  v15 = &v28 - ((*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 + 48);
  v35 = a6;
  v36 = a4;
  v16(v38, a4);
  (*(v12 + 16))(v13, v37, a3);
  dispatch thunk of Sequence.makeIterator()();
  v17 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = v15;
  v32 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v19 = v39;
  v20 = *(v39 + 48);
  if (v20(v11, 1, v9) != 1)
  {
    v21 = *(v19 + 32);
    v30 = v36 + 56;
    v31 = v21;
    v22 = (v28 + 8);
    v39 = v19 + 32;
    v23 = (v19 + 8);
    do
    {
      v31(v10, v11, v9);
      v24 = v17;
      v25 = v33;
      (*(v36 + 56))(v10, v38);
      v26 = v25;
      v17 = v24;
      (*v22)(v26, AssociatedTypeWitness);
      (*v23)(v10, v9);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v20(v11, 1, v9) != 1);
  }

  return (*(v29 + 8))(v37, v17);
}

uint64_t CxxSet.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = v16 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 64))(a1, a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  LOBYTE(a3) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v10 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((a3 & 1) == 0)
  {
    if (v10 > 63)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v7 + 8))(v8, AssociatedTypeWitness);
    v12 = v14 > 0;
    return v12 & 1;
  }

  if (v10 < 65)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16[1] = 0;
  sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v11 = *(*(AssociatedConformanceWitness + 32) + 8);
  v12 = dispatch thunk of static Comparable.< infix(_:_:)();
  v13 = *(v7 + 8);
  v13(v8, AssociatedTypeWitness);
  v13(v8, AssociatedTypeWitness);
  return v12 & 1;
}

uint64_t CxxUniqueSet.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v8 = &v21 - ((*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 + 8);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v21 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 56))(a2, a3, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v10, AssociatedConformanceWitness);
  (*(AssociatedConformanceWitness + 56))(v23, v10, AssociatedConformanceWitness);
  (*(v11 + 8))(v12, v10);
  v14 = LOBYTE(v23[0]);
  v15 = swift_getAssociatedConformanceWitness();
  v16 = (*(v15 + 24))(v23, AssociatedTypeWitness, v15);
  v18 = v17;
  v19 = swift_getAssociatedTypeWitness();
  (*(*(v19 - 8) + 16))(v22, v18, v19);
  v16(v23, 0);
  (*(v21 + 8))(v8, AssociatedTypeWitness);
  return v14;
}

uint64_t CxxUniqueSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v27 = AssociatedTypeWitness;
  v25 = &v23 - ((*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = &v23 - ((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 56))(a1, a2, a3);
  (*(a3 + 72))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 8);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v9 + 8);
  v13(v10, v8);
  if (a1)
  {
    v13(v10, v8);
    v14 = *(a3 + 8);
    v15 = swift_getAssociatedTypeWitness();
    return (*(*(v15 - 8) + 56))(v28, 1, 1, v15);
  }

  else
  {
    v17 = (*(AssociatedConformanceWitness + 24))(v29, v8, AssociatedConformanceWitness);
    v23 = v18;
    v24 = v17;
    v19 = *(a3 + 8);
    v20 = swift_getAssociatedTypeWitness();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v28, v23, v20);
    v24(v29, 0);
    v22 = v25;
    (*(a3 + 64))(v10, a2, a3);
    (*(v26 + 8))(v22, v27);
    v13(v10, v8);
    return (*(v21 + 56))(v28, 0, 1, v20);
  }
}

uint64_t CxxRandomAccessCollection.count.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 8) + 8);
  v34 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v35 = swift_getAssociatedConformanceWitness();
  v31 = *(*(v35 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = &v29 - ((*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_checkMetadataState();
  v5 = *(v4 - 8);
  v6 = &v29 - ((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_checkMetadataState();
  v33 = *(v7 - 8);
  v32 = &v29 - ((*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v32;
  v9 = v34;
  (*(v2 + 40))(v34, v2);
  (*(v2 + 32))(v9, v2);
  (*(AssociatedConformanceWitness + 32))(v6, v6, v4, AssociatedConformanceWitness);
  v10 = *(v5 + 8);
  v10(v6, v4);
  v11 = v4;
  v12 = v33;
  v10(v6, v11);
  v13 = v35;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v36 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v14 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v15 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v14)
    {
      if (v15 > 64)
      {
LABEL_8:
        sub_10002B31C();
        v16 = v32;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v17 = *(*(v13 + 32) + 8);
        v18 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v12 + 8))(v16, v7);
        if ((v18 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v20 = v32;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v21 = *(*(v13 + 32) + 8);
      v22 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v12 + 8))(v20, v7);
      if (v22)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v15 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    v23 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v24 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v23 & 1) == 0)
    {
      break;
    }

    if (v24 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_10002B31C();
    v25 = v32;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v26 = *(*(v13 + 32) + 8);
    v27 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v12 + 8))(v25, v7);
    if (v27)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v24 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v28 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v12 + 8))(v8, v7);
  return v28;
}

uint64_t CxxRandomAccessCollection._getRawIterator(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a1;
  v6 = *(*(a3 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v23 = &v20 - ((*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v22 = &v20 - ((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v22;
  (*(v6 + 32))(a2, v6);
  v27 = v26;
  v12 = swift_getAssociatedConformanceWitness();
  v20 = sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(AssociatedConformanceWitness + 40))(a4, v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  v25 = *(v10 + 8);
  v26 = v10 + 8;
  v25(v11, v9);
  v13 = v23;
  v14 = v22;
  (*(v6 + 40))(v21, v6);
  (*(AssociatedConformanceWitness + 32))(v13, a4, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v24 + 8))(v13, AssociatedTypeWitness);
  LOBYTE(AssociatedConformanceWitness) = dispatch thunk of static BinaryInteger.isSigned.getter();
  result = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((AssociatedConformanceWitness & 1) == 0)
  {
    goto LABEL_5;
  }

  if (result <= 64)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v27 = 0;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v16 = *(*(v12 + 32) + 8);
    v17 = dispatch thunk of static Comparable.< infix(_:_:)();
    v18 = v25;
    v25(v11, v9);
    result = v18(v14, v9);
    if (v17)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (result > 63)
      {
        break;
      }

LABEL_6:
      v19 = dispatch thunk of BinaryInteger._lowWord.getter();
      result = (v25)(v14, v9);
      if (v19 > 0)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t (*CxxRandomAccessCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x80uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(*(a4 + 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v12 = *(v36 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v33 = swift_coroFrameAlloc();
    v9[7] = v33;
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v33 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
    v9[7] = v33;
    v13 = malloc(v12);
  }

  v34 = v13;
  v9[8] = v13;
  v14 = swift_checkMetadataState();
  v9[9] = v14;
  v15 = *(*(v14 - 8) + 64);
  v32 = *(v14 - 8);
  if (&_swift_coroFrameAlloc)
  {
    v30 = swift_coroFrameAlloc();
    v9[10] = v30;
    v16 = swift_coroFrameAlloc();
    v9[11] = v16;
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v30 = malloc(*(*(v14 - 8) + 64));
    v9[10] = v30;
    v16 = malloc(v15);
    v9[11] = v16;
    v17 = malloc(v15);
  }

  v27 = v17;
  v9[12] = v17;
  (*(v10 + 32))(a3, v10);
  v9[4] = a2;
  v28 = a3;
  v18 = AssociatedConformanceWitness;
  v19 = swift_getAssociatedConformanceWitness();
  sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v18 + 40))(v16, v34, v14, v18);
  v31 = *(v36 + 8);
  v31(v34, AssociatedTypeWitness);
  (*(v10 + 40))(v28, v10);
  v29 = v16;
  (*(v18 + 32))(v30, v16, v14, v18);
  v20 = *(v32 + 8);
  v9[13] = v20;
  v9[14] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v30, v14);
  v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v21)
  {
    if (v22 > 64)
    {
      v9[6] = 0;
      goto LABEL_17;
    }
  }

  else if (v22 >= 64)
  {
    v9[5] = 0;
LABEL_17:
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v25 = *(*(v19 + 32) + 8);
    v26 = dispatch thunk of static Comparable.< infix(_:_:)();
    v31(v34, AssociatedTypeWitness);
    result = (v31)(v33, AssociatedTypeWitness);
    if ((v26 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    (*(v32 + 32))(v27, v29, v14);
    v9[15] = (*(*(AssociatedConformanceWitness + 8) + 24))(v9, v14);
    return sub_100116E3C;
  }

  v23 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v31)(v33, AssociatedTypeWitness);
  if (v23 > 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t CxxRandomAccessCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a1;
  v40 = a4;
  v5 = *(*(a3 + 8) + 8);
  swift_getAssociatedTypeWitness();
  v45 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v42 = &v35 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v42;
  v10 = swift_checkMetadataState();
  v41 = *(v10 - 8);
  v39 = &v35 - ((*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v39;
  v12 = v39;
  (*(v5 + 32))(&v35, a2, v5);
  v47[0] = v44;
  v13 = swift_getAssociatedConformanceWitness();
  v35 = sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(AssociatedConformanceWitness + 40))(v12, v9, v10, AssociatedConformanceWitness);
  v14 = *(v8 + 8);
  v36 = v9;
  v43 = v14;
  v44 = v8 + 8;
  v14(v9, AssociatedTypeWitness);
  v15 = *(v5 + 40);
  v46 = v5;
  v16 = v5;
  v17 = v41;
  v15(v45, v16);
  v18 = *(AssociatedConformanceWitness + 32);
  v38 = v12;
  v19 = v12;
  v20 = AssociatedConformanceWitness;
  v21 = v42;
  v18(v11, v19, v10, v20);
  v37 = *(v17 + 8);
  v37(v11, v10);
  LOBYTE(v11) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v24 = __OFSUB__(v22, 64);
  v23 = v22 - 64 < 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v22 <= 64)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v47[0] = 0;
    v25 = v36;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v26 = *(*(v13 + 32) + 8);
    v27 = dispatch thunk of static Comparable.< infix(_:_:)();
    v13 = v43;
    v43(v25, AssociatedTypeWitness);
    (v13)(v21, AssociatedTypeWitness);
    if (v27)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v23 == v24)
      {
        break;
      }

LABEL_7:
      v28 = dispatch thunk of BinaryInteger._lowWord.getter();
      v43(v21, AssociatedTypeWitness);
      v24 = 0;
      v23 = v28 < 0;
      if (v28 > 0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v29 = v39;
  (*(v17 + 32))(v39, v38, v10);
  v30 = (*(*(v20 + 8) + 24))(v47, v10);
  v32 = v31;
  v33 = swift_getAssociatedTypeWitness();
  (*(*(v33 - 8) + 16))(v40, v32, v33);
  v30(v47, 0);
  return (v37)(v29, v10);
}

uint64_t CxxMutableRandomAccessCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a1;
  v40 = a4;
  v5 = *(*(*(a3 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  v45 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v42 = &v35 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v42;
  v10 = swift_checkMetadataState();
  v41 = *(v10 - 8);
  v39 = &v35 - ((*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v39;
  v12 = v39;
  (*(v5 + 32))(&v35, a2, v5);
  v47[0] = v44;
  v13 = swift_getAssociatedConformanceWitness();
  v35 = sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(AssociatedConformanceWitness + 40))(v12, v9, v10, AssociatedConformanceWitness);
  v14 = *(v8 + 8);
  v36 = v9;
  v43 = v14;
  v44 = v8 + 8;
  v14(v9, AssociatedTypeWitness);
  v15 = *(v5 + 40);
  v46 = v5;
  v16 = v5;
  v17 = v41;
  v15(v45, v16);
  v18 = *(AssociatedConformanceWitness + 32);
  v38 = v12;
  v19 = v12;
  v20 = AssociatedConformanceWitness;
  v21 = v42;
  v18(v11, v19, v10, v20);
  v37 = *(v17 + 8);
  v37(v11, v10);
  LOBYTE(v11) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v24 = __OFSUB__(v22, 64);
  v23 = v22 - 64 < 0;
  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v22 <= 64)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v47[0] = 0;
    v25 = v36;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v26 = *(*(v13 + 32) + 8);
    v27 = dispatch thunk of static Comparable.< infix(_:_:)();
    v13 = v43;
    v43(v25, AssociatedTypeWitness);
    (v13)(v21, AssociatedTypeWitness);
    if (v27)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v23 == v24)
      {
        break;
      }

LABEL_7:
      v28 = dispatch thunk of BinaryInteger._lowWord.getter();
      v43(v21, AssociatedTypeWitness);
      v24 = 0;
      v23 = v28 < 0;
      if (v28 > 0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v29 = v39;
  (*(v17 + 32))(v39, v38, v10);
  v30 = (*(*(v20 + 8) + 24))(v47, v10);
  v32 = v31;
  v33 = swift_getAssociatedTypeWitness();
  (*(*(v33 - 8) + 16))(v40, v32, v33);
  v30(v47, 0);
  return (v37)(v29, v10);
}

uint64_t sub_100117768@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = CxxMutableRandomAccessCollection.subscript.read(v11, *a1, *(a1 + a2 - 16), v4);
  v7 = v6;
  v8 = *(*(*(v4 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v7, AssociatedTypeWitness);
  return (v5)(v11, 0);
}

uint64_t (*CxxMutableRandomAccessCollection.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x80uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(*(*(a4 + 8) + 8) + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v12 = *(v36 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v33 = swift_coroFrameAlloc();
    v9[7] = v33;
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v33 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
    v9[7] = v33;
    v13 = malloc(v12);
  }

  v34 = v13;
  v9[8] = v13;
  v14 = swift_checkMetadataState();
  v9[9] = v14;
  v15 = *(*(v14 - 8) + 64);
  v32 = *(v14 - 8);
  if (&_swift_coroFrameAlloc)
  {
    v30 = swift_coroFrameAlloc();
    v9[10] = v30;
    v16 = swift_coroFrameAlloc();
    v9[11] = v16;
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v30 = malloc(*(*(v14 - 8) + 64));
    v9[10] = v30;
    v16 = malloc(v15);
    v9[11] = v16;
    v17 = malloc(v15);
  }

  v27 = v17;
  v9[12] = v17;
  (*(v10 + 32))(a3, v10);
  v9[4] = a2;
  v28 = a3;
  v18 = AssociatedConformanceWitness;
  v19 = swift_getAssociatedConformanceWitness();
  sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v18 + 40))(v16, v34, v14, v18);
  v31 = *(v36 + 8);
  v31(v34, AssociatedTypeWitness);
  (*(v10 + 40))(v28, v10);
  v29 = v16;
  (*(v18 + 32))(v30, v16, v14, v18);
  v20 = *(v32 + 8);
  v9[13] = v20;
  v9[14] = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v30, v14);
  v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v21)
  {
    if (v22 > 64)
    {
      v9[6] = 0;
      goto LABEL_17;
    }
  }

  else if (v22 >= 64)
  {
    v9[5] = 0;
LABEL_17:
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v25 = *(*(v19 + 32) + 8);
    v26 = dispatch thunk of static Comparable.< infix(_:_:)();
    v31(v34, AssociatedTypeWitness);
    result = (v31)(v33, AssociatedTypeWitness);
    if ((v26 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    (*(v32 + 32))(v27, v29, v14);
    v9[15] = (*(*(AssociatedConformanceWitness + 8) + 24))(v9, v14);
    return sub_10011C044;
  }

  v23 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v31)(v33, AssociatedTypeWitness);
  if (v23 > 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_100117D2C(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 112);
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v6 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v8 = *(*a1 + 64);
  v7 = *(*a1 + 72);
  v9 = *(*a1 + 56);
  (*(*a1 + 120))(*a1, 0);
  v4(v3, v7);
  free(v3);
  free(v5);
  free(v6);
  free(v8);
  free(v9);

  free(v1);
}

uint64_t sub_100117DDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = CxxMutableRandomAccessCollection.subscript.modify(v12, *a3, *(a3 + a4 - 16), v5);
  v8 = v7;
  v9 = *(*(*(v5 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 24))(v8, a1, AssociatedTypeWitness);
  return (v6)(v12, 0);
}

void (*CxxMutableRandomAccessCollection.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x80uLL);
  }

  v8 = v7;
  *a1 = v7;
  swift_getAssociatedTypeWitness();
  v30 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v10 = *(v35 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v31 = swift_coroFrameAlloc();
    v8[7] = v31;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v31 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
    v8[7] = v31;
    v11 = malloc(v10);
  }

  v32 = v11;
  v8[8] = v11;
  v12 = swift_checkMetadataState();
  v8[9] = v12;
  v33 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v27 = swift_coroFrameAlloc();
    v8[10] = v27;
    v26 = swift_coroFrameAlloc();
    v8[11] = v26;
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v27 = malloc(*(v13 + 64));
    v8[10] = v27;
    v26 = malloc(v14);
    v8[11] = v26;
    v15 = malloc(v14);
  }

  v16 = v15;
  v8[12] = v15;
  (*(v30 + 40))(a3, v30);
  v8[4] = a2;
  v25 = swift_getAssociatedConformanceWitness();
  sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v9 + 40))(v16, v32, v33, v9);
  v29 = *(v35 + 8);
  v29(v32, AssociatedTypeWitness);
  (*(v30 + 48))(a3, v30);
  (*(v13 + 16))(v27, v16, v33);
  (*(v9 + 32))(v26, v27, v33, v9);
  v17 = *(v13 + 8);
  v8[13] = v17;
  v8[14] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v27, v33);
  v17(v26, v33);
  v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v19 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v18)
  {
    if (v19 > 64)
    {
      v8[6] = 0;
      goto LABEL_17;
    }
  }

  else if (v19 > 63)
  {
    v8[5] = 0;
LABEL_17:
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v22 = *(*(v25 + 32) + 8);
    v23 = dispatch thunk of static Comparable.< infix(_:_:)();
    v29(v32, AssociatedTypeWitness);
    result = (v29)(v31, AssociatedTypeWitness);
    if ((v23 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_15:
    v8[15] = (*(*(AssociatedConformanceWitness + 8) + 24))(v8, v33);
    return sub_1001183CC;
  }

  v20 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v29)(v31, AssociatedTypeWitness);
  if (v20 > 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1001183CC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 112);
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v6 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v8 = *(*a1 + 64);
  v7 = *(*a1 + 72);
  v9 = *(*a1 + 56);
  (*(*a1 + 120))(*a1, 0);
  v4(v3, v7);
  free(v3);
  free(v5);
  free(v6);
  free(v8);
  free(v9);

  free(v1);
}

uint64_t CxxMutableRandomAccessCollection.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v35 = a2;
  v32 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v34 = v29 - ((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v34;
  v9 = swift_checkMetadataState();
  v33 = *(v9 - 8);
  v10 = v29 - ((*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 40))(v37, a4);
  v38[0] = v35;
  v11 = swift_getAssociatedConformanceWitness();
  v29[1] = sub_10002B31C();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v5 + 40))(v10, v8, v9, v5);
  v12 = *(v7 + 8);
  v30 = v8;
  v35 = v7 + 8;
  v12(v8, AssociatedTypeWitness);
  v13 = v33;
  (*(a4 + 48))(v37, a4);
  v14 = *(v5 + 32);
  v36 = v10;
  v15 = v34;
  v14(v10, v10, v9, v5);
  v16 = *(v13 + 8);
  v16(v10, v9);
  LOBYTE(v10) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v17 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v19 = __OFSUB__(v17, 64);
  v18 = v17 - 64 < 0;
  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (v17 <= 64)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v38[0] = 0;
    v20 = v30;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v21 = *(*(v11 + 32) + 8);
    v11 = dispatch thunk of static Comparable.< infix(_:_:)();
    v12(v20, AssociatedTypeWitness);
    v12(v15, AssociatedTypeWitness);
    if (v11)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_5:
      if (v18 == v19)
      {
        break;
      }

LABEL_7:
      v11 = dispatch thunk of BinaryInteger._lowWord.getter();
      v12(v15, AssociatedTypeWitness);
      v19 = 0;
      v18 = v11 < 0;
      if (v11 > 0)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_8:
  v22 = v36;
  v23 = (*(*(AssociatedConformanceWitness + 8) + 24))(v38, v9);
  v25 = v24;
  v26 = *(*(*(a4 + 8) + 8) + 8);
  v27 = swift_getAssociatedTypeWitness();
  (*(*(v27 - 8) + 40))(v25, v32, v27);
  v23(v38, 0);
  return (v16)(v22, v9);
}

uint64_t (*CxxSequenceBox.sequence.modify())(void)
{
  result = nullsub_1;
  v2 = v0 + *(*v0 + 96);
  return result;
}

uint64_t CxxSequenceBox.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 16))(v5 + *(*v5 + 96), a1);
  return v5;
}

uint64_t CxxSequenceBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t CxxIterator.rawIterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t CxxIterator.rawIterator.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 40);

  return v8(v2 + v4, a1, AssociatedTypeWitness);
}

uint64_t (*CxxIterator.rawIterator.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t CxxIterator.endIterator.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t CxxIterator.init(sequence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for CxxSequenceBox();
  v8 = CxxSequenceBox.__allocating_init(_:)(a1);
  *a4 = v8;
  v9 = *(*v8 + 96);
  v10 = *(a3 + 24);
  v11 = type metadata accessor for CxxIterator();
  v12 = *(v11 + 36);

  v10(a2, a3);
  v13 = a4 + *(v11 + 40);
  (*(a3 + 32))(a2, a3);
}

uint64_t CxxIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v9 = &v21 - ((*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 36);
  v11 = *(a1 + 40);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v14 = swift_getAssociatedTypeWitness();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }

  else
  {
    v21 = (*(AssociatedConformanceWitness + 24))(v23, AssociatedTypeWitness, AssociatedConformanceWitness);
    v18 = v17;
    v19 = swift_getAssociatedTypeWitness();
    v20 = *(v19 - 8);
    (*(v20 + 16))(a2, v18, v19);
    v21(v23, 0);
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v22 + 40))(v3 + v10, v9, AssociatedTypeWitness);
    return (*(v20 + 56))(a2, 0, 1, v19);
  }
}

uint64_t CxxVector.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a1;
  v25 = a5;
  v30 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v10 = &v23 - ((*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v23 - ((*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = &v23 - ((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_getAssociatedTypeWitness();
  v24 = *(v14 - 8);
  v15 = &v23 - ((*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 + 56);
  v26 = a6;
  v27 = a4;
  v16(v30, a4);
  (*(v12 + 16))(v13, v29, a3);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v28 = v15;
  v29 = v14;
  v25 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v18 = v23;
  v19 = *(v23 + 48);
  if (v19(v11, 1, AssociatedTypeWitness) != 1)
  {
    v20 = *(v18 + 32);
    v21 = (v18 + 8);
    do
    {
      v20(v10, v11, AssociatedTypeWitness);
      (*(v27 + 64))(v10, v30);
      (*v21)(v10, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v19(v11, 1, AssociatedTypeWitness) != 1);
  }

  return (*(v24 + 8))(v28, v29);
}

uint64_t sub_1001193F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = a1;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  a6(&v12, a2, v9, a3, WitnessTable);
}

uint64_t _s3Cxx13unsafeBitCast_2toq_xn_q_mtRi_zRi0_zr0_lF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 16))(a4, a1, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t Optional<A>.pointee.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = &v18[-((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v12 = &v18[-((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v9, v4, a1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v8 + 8))(v9, a1);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v12, v9, v10);
    v13 = (*(a2 + 24))(v18, v10, a2);
    v15 = v14;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 16))(a3, v15, AssociatedTypeWitness);
    v13(v18, 0);
    return (*(v11 + 8))(v12, v10);
  }

  return result;
}

uint64_t Optional<A>.successor()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  v9 = &v14 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v12 = &v14 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v9, v4, a1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v8 + 8))(v9, a1);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v12, v9, v10);
    (*(a2 + 32))(v10, a2);
    (*(v11 + 8))(v12, v10);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  return result;
}

void (*sub_100119A3C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
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
  v6[4] = sub_100119B0C(v6, a2, *(a3 - 8));
  return sub_100119AC4;
}

void sub_100119AC4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_100119B0C(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
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
  Optional<A>.pointee.getter(a2, a3, v9);
  return sub_100119BF8;
}

void sub_100119BF8(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_100119C4C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(a2 + 16);
  v8 = *(v5 - 8);
  (*(v8 + 8))(v4, v5);
  v6 = *(v8 + 32);

  return v6(v4, a1, v5);
}

void *sub_100119D34@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *(*(*(a3 + 16) - 8) + 72);
  if (v4)
  {
    v5 = *result - *a2;
    if (v5 != 0x8000000000000000 || v4 != -1)
    {
      *a4 = v5 / v4;
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

uint64_t sub_100119DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v31 = AssociatedTypeWitness;
  v29 = &v27 - ((*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_getAssociatedTypeWitness();
  v28 = *(v9 - 8);
  v27 = &v27 - ((*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v27 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 + 104);
  v33 = a2;
  v13(a2, a3, a4);
  v14 = *(a4 + 152);
  v32 = v4;
  v14(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(*(AssociatedConformanceWitness + 8) + 8);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v11 + 8);
  v18(v12, v10);
  if (v17)
  {
    v18(v12, v10);
    v19 = swift_getAssociatedConformanceWitness();
    v20 = v27;
    (*(v19 + 24))(v33, v34, v9, v19);
    v21 = v29;
    (*(a4 + 112))(v20, a3, a4);
    (*(v30 + 8))(v21, v31);
    return (*(v28 + 8))(v20, v9);
  }

  else
  {
    v23 = *(a4 + 8);
    v24 = swift_getAssociatedTypeWitness();
    (*(*(v24 - 8) + 8))(v33, v24);
    v25 = (*(AssociatedConformanceWitness + 24))(v35, v10, AssociatedConformanceWitness);
    v26 = swift_getAssociatedConformanceWitness();
    (*(v26 + 64))(v34, v9, v26);
    v25(v35, 0);
    return (v18)(v12, v10);
  }
}

uint64_t sub_10011A1D0(uint64_t a1, void (*a2)(char *, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = a3;
  v86 = a2;
  v101 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v121 = *(AssociatedTypeWitness - 8);
  v84 = &v72 - ((*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a5 + 8);
  v83 = swift_getAssociatedTypeWitness();
  v117 = *(v83 - 8);
  v82 = &v72 - ((*(v117 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v82;
  v80 = v82;
  v79 = v82;
  v97 = swift_getAssociatedTypeWitness();
  v116 = *(v97 - 8);
  v115 = &v72 - ((*(v116 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = swift_getAssociatedTypeWitness();
  v8 = *(v96 - 8);
  v78 = &v72 - ((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v78;
  v76 = v78;
  v9 = v78;
  v108 = swift_getAssociatedTypeWitness();
  v112 = *(v108 - 8);
  v95 = &v72 - ((*(v112 + 8) + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v95;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = &v72 - ((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12;
  (*(a5 + 136))(a4, a5);
  v99 = *(a5 + 144);
  v113 = (v8 + 16);
  v118 = (v8 + 8);
  v14 = (v11 + 8);
  v93 = a5 + 104;
  v92 = (v116 + 8);
  v91 = a5 + 152;
  v105 = (v112 + 8);
  v75 = (v117 + 8);
  v100 = a5 + 144;
  v74 = a5 + 112;
  v73 = (v121 + 8);
  v88 = (v11 + 32);
  v15 = a5;
  v119 = a4;
  v104 = v9;
  v90 = a5;
  v114 = v10;
  v106 = v12;
  v94 = v14;
  v89 = v12;
  v99(a4, a5);
  while (1)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = *(AssociatedConformanceWitness + 8);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32 = v12;
    v33 = v31;
    v34 = *v14;
    (*v14)(v32, v10);
    if (v33)
    {
      return v34(v13, v10);
    }

    v112 = v34;
    v35 = *(AssociatedConformanceWitness + 24);
    v116 = AssociatedConformanceWitness + 24;
    v109 = v35;
    v36 = v35(v120, v10, AssociatedConformanceWitness);
    v37 = v9;
    v38 = v9;
    v39 = v96;
    v110 = *v113;
    v110(v37);
    v36(v120, 0);
    v40 = v119;
    v41 = swift_getAssociatedConformanceWitness();
    v42 = *(v41 + 32);
    v43 = v115;
    v111 = v41;
    v103 = (v41 + 32);
    v102 = v42;
    (v42)(v39);
    v117 = *v118;
    (v117)(v38, v39);
    v44 = v107;
    (*(v15 + 104))(v43, v40, v15);
    (*v92)(v43, v97);
    v45 = *(v15 + 152);
    v121 = AssociatedConformanceWitness;
    v46 = v95;
    v45(v40, v15);
    v47 = v108;
    v48 = v44;
    v49 = swift_getAssociatedConformanceWitness();
    v50 = *(v49 + 8);
    v51 = *(v50 + 8);
    LOBYTE(v38) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52 = *v105;
    (*v105)(v46, v47);
    if (v38)
    {
      v52(v48, v47);
      v13 = v106;
      v16 = v114;
      v17 = v109;
      v18 = v109(v120, v114, v121);
      v19 = v77;
      v20 = v110;
      v110(v77);
      v18(v120, 0);
      v21 = v111;
      v102(v39, v111);
      (v117)(v19, v39);
      v22 = v17(v120, v16, v121);
      v23 = v78;
      v20(v78);
      v22(v120, 0);
      v24 = v82;
      (*(v21 + 56))(v39, v21);
      v25 = v117;
      (v117)(v23, v39);
      v26 = v104;
      (*(v21 + 24))(v115, v24, v39, v21);
      v27 = v84;
      v28 = v90;
      (*(v90 + 112))(v26, v119);
      (*v73)(v27, AssociatedTypeWitness);
      v25(v26, v39);
      v15 = v28;
      v10 = v114;
      goto LABEL_3;
    }

    v103 = v52;
    v53 = (*(v50 + 24))(v120, v47, v50);
    v54 = v111;
    v55 = *(v111 + 56);
    v56 = v80;
    v55(v39, v111);
    v53(v120, 0);
    v57 = v109(v120, v114, v121);
    v58 = v76;
    v110(v76);
    v57(v120, 0);
    v59 = v81;
    v55(v39, v54);
    (v117)(v58, v39);
    v60 = v79;
    v61 = v98;
    v86(v56, v59);
    if (v61)
    {
      break;
    }

    v98 = 0;
    v62 = *v75;
    v63 = v83;
    (*v75)(v59, v83);
    v62(v56, v63);
    v64 = v49;
    v65 = *(v49 + 24);
    v66 = v107;
    v67 = v108;
    v68 = v65(v120, v108, v64);
    (*(v54 + 64))(v60, v39, v54);
    v68(v120, 0);
    v103(v66, v67);
    v15 = v90;
    v10 = v114;
    v13 = v106;
LABEL_3:
    v12 = v89;
    (*(v121 + 32))(v10);
    v14 = v94;
    v112(v13, v10);
    (*v88)(v13, v12, v10);
    v9 = v104;
    v99(v119, v15);
  }

  v70 = *v75;
  v71 = v83;
  (*v75)(v59, v83);
  v70(v56, v71);
  v103(v107, v108);
  return v112(v106, v114);
}

uint64_t sub_10011AEE0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10011AF1C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10011AF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 8);
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10011AFAC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10011AFE8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10011B024(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

__n128 sub_10011B090(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10011B304(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

uint64_t sub_10011B3CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_10011B480(void *a1, void *a2, uint64_t a3)
{
  v6 = a3 + 16;
  v5 = *(a3 + 16);
  v7 = *(*(v6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = v11 + v10;
  v13 = ((((-9 - v10) | v10) - (v11 + v10)) | v10) - v11;
  if (v10 <= 7 && (*(v9 + 80) & 0x100000) == 0 && v13 >= 0xFFFFFFFFFFFFFFE7)
  {
    v17 = AssociatedTypeWitness;
    *a1 = *a2;
    v18 = (a2 + v10 + 8) & ~v10;
    v19 = *(v9 + 16);

    v19((a1 + v10 + 8) & ~v10, v18, v17);
    v19((v12 + ((a1 + v10 + 8) & ~v10)) & ~v10, (v12 + v18) & ~v10, v17);
  }

  else
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + ((v10 & 0xF8 ^ 0x1F8) & (v10 + 16)));
  }

  return a1;
}

uint64_t sub_10011B5E4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v13 = v8 + 8;
  v14 = *(v8 + 8);
  v9 = *(v8 + 80);
  v10 = (a1 + v9 + 8) & ~v9;
  v14(v10, AssociatedTypeWitness);
  v11 = (*(v13 + 56) + v9 + v10) & ~v9;

  return (v14)(v11, AssociatedTypeWitness);
}

void *sub_10011B6BC(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = a3 + 16;
  v5 = *(a3 + 16);
  v7 = *(*(v6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 16);
  v11 = v9 + 16;
  v12 = *(v9 + 80);
  v13 = (a1 + v12 + 8) & ~v12;
  v14 = (a2 + v12 + 8) & ~v12;

  v10(v13, v14, AssociatedTypeWitness);
  v10((*(v11 + 48) + v12 + v13) & ~v12, (*(v11 + 48) + v12 + v14) & ~v12, AssociatedTypeWitness);
  return a1;
}

uint64_t *sub_10011B7A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 16);
  v8 = *(*(a3 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 24);
  v12 = v10 + 24;
  v13 = *(v10 + 80);
  v14 = (a2 + v13 + 8) & ~v13;
  v11((a1 + v13 + 8) & ~v13, v14, AssociatedTypeWitness);
  v11((*(v12 + 40) + v13 + ((a1 + v13 + 8) & ~v13)) & ~v13, (*(v12 + 40) + v13 + v14) & ~v13, AssociatedTypeWitness);
  return a1;
}

void *sub_10011B898(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = a3 + 16;
  v5 = *(a3 + 16);
  v7 = *(*(v6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 32);
  v11 = v9 + 32;
  v12 = *(v9 + 80);
  v13 = (a2 + v12 + 8) & ~v12;
  v10((a1 + v12 + 8) & ~v12, v13, AssociatedTypeWitness);
  v10((*(v11 + 32) + v12 + ((a1 + v12 + 8) & ~v12)) & ~v12, (*(v11 + 32) + v12 + v13) & ~v12, AssociatedTypeWitness);
  return a1;
}

uint64_t *sub_10011B978(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 16);
  v8 = *(*(a3 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 40);
  v12 = v10 + 40;
  v13 = *(v10 + 80);
  v14 = (a2 + v13 + 8) & ~v13;
  v11((a1 + v13 + 8) & ~v13, v14, AssociatedTypeWitness);
  v11((*(v12 + 24) + v13 + ((a1 + v13 + 8) & ~v13)) & ~v13, (*(v12 + 24) + v13 + v14) & ~v13, AssociatedTypeWitness);
  return a1;
}

uint64_t sub_10011BA64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = a3 + 16;
  v5 = *(a3 + 16);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_26;
  }

  v14 = ((v13 + v12 + ((v12 + 8) & ~v12)) & ~v12) + v13;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v18 < 2)
    {
LABEL_26:
      if ((v10 & 0x80000000) != 0)
      {
        v21 = *(v9 + 48);

        return v21((a1 + v12 + 8) & ~v12);
      }

      else
      {
        v20 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_26;
  }

LABEL_15:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v11 + (v14 | v19) + 1;
}

void sub_10011BC48(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(a4 + 24) + 8);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((*(v9 + 64) + v11 + ((v11 + 8) & ~v11)) & ~v11) + *(v9 + 64);
  if (a3 <= v12)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 - v12 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (v12 < a2)
  {
    v15 = ~v12 + a2;
    if (v13 < 4)
    {
      v16 = (v15 >> (8 * v13)) + 1;
      if (v13)
      {
        v19 = v15 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_47:
              if (v14 == 2)
              {
                *&a1[v13] = v16;
              }

              else
              {
                *&a1[v13] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v14)
    {
      a1[v13] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v13] = 0;
  }

  else if (v14)
  {
    a1[v13] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v10 & 0x80000000) != 0)
  {
    v21 = *(v9 + 56);

    v21(&a1[v11 + 8] & ~v11, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = (a2 - 1);
    }

    *a1 = v20;
  }
}

void sub_10011C04C()
{
  if (__cxa_guard_acquire(&qword_10016DB90))
  {
    qword_10016DBB0 = 0;
    qword_10016DBB8 = 0;
    qword_10016DBC0 = 0;
    __cxa_atexit(sub_1000052DC, &xmmword_10016DB98, &_mh_execute_header);

    __cxa_guard_release(&qword_10016DB90);
  }
}

uint64_t sub_10011C0C4(unsigned __int8 **a1)
{
  v1 = *a1;
  switch(__clz(**a1 ^ 0xFF))
  {
    case 0x18u:
      *a1 = v1 + 1;
      v2 = *v1;
      break;
    case 0x1Au:
      if (a1[1] - v1 < 2)
      {
        goto LABEL_31;
      }

      v9 = v1 + 1;
      if ((v1[1] & 0xC0) != 0x80)
      {
        goto LABEL_31;
      }

      *a1 = v9;
      v10 = *v1 & 0x1F;
      *a1 = v1 + 2;
      if (v10 < 2)
      {
        v2 = 2147549181;
      }

      else
      {
        v2 = *v9 & 0x3F | (v10 << 6);
      }

      break;
    case 0x1Bu:
      if (a1[1] - v1 < 3)
      {
        goto LABEL_31;
      }

      v3 = 1;
      do
      {
        v4 = v1[v3] & 0xC0;
      }

      while (v4 == 128 && v3++ != 2);
      if (v4 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v6 = *v1 & 0xF;
      *a1 = v1 + 2;
      v7 = (v6 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      if (v7 >= 0x800)
      {
        v8 = v7 | v1[2] & 0x3F;
        if ((v7 & 0xF800) == 0xD800)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v8;
        }
      }

      break;
    case 0x1Cu:
      if (a1[1] - v1 < 4)
      {
        goto LABEL_31;
      }

      v11 = 1;
      do
      {
        v12 = v1[v11] & 0xC0;
      }

      while (v12 == 128 && v11++ != 3);
      if (v12 != 128)
      {
        goto LABEL_31;
      }

      v2 = 2147549181;
      *a1 = v1 + 1;
      v14 = *v1 & 7;
      *a1 = v1 + 2;
      v15 = (v14 << 12) | ((v1[1] & 0x3F) << 6);
      *a1 = v1 + 3;
      v16 = v1[2];
      *a1 = v1 + 4;
      if (v15 >= 0x400)
      {
        v17 = v1[3] & 0x3F | ((v15 | v16 & 0x3F) << 6);
        if (v15 >> 10 >= 0x11)
        {
          v2 = 2147549181;
        }

        else
        {
          v2 = v17;
        }
      }

      break;
    default:
LABEL_31:
      v2 = 2147549181;
      *a1 = v1 + 1;
      break;
  }

  return v2;
}

uint64_t sub_10011C2B4(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v17[0] = a1;
  v17[1] = a2;
  v8 = sub_10011C0C4(v17);
  sub_100014D54(&v18, v8 & 0x7FFFFFFF);
  if (a1 == a2)
  {
    return 0;
  }

  v9 = 0;
  do
  {
    v10 = sub_100014C70(v17);
    v12 = v11;
    v13 = sub_100014CC8(v10);
    v14 = v9 + v13;
    if (!a4 && v14 > a3)
    {
      break;
    }

    v15 = v12 == a2 || v14 > a3;
    v9 += v13;
  }

  while (!v15);
  return v9;
}

uint64_t sub_10011C36C(unsigned __int8 **a1, unsigned int *a2, _BYTE *a3)
{
  v5 = sub_10011C0C4(a1) & 0x7FFFFFFF;
  v6 = sub_100014DC8(v5);
  v7 = v6;
  result = sub_100014EA0(a2, v5, v6);
  *a2 = v5;
  *a3 = v7;
  return result;
}

uint64_t Connection.run(_:)()
{
  return Connection.run(_:)();
}

{
  return Connection.run(_:)();
}

{
  return Connection.run(_:)();
}

uint64_t Connection.scalar<A>(_:)()
{
  return Connection.scalar<A>(_:)();
}

{
  return Connection.scalar<A>(_:)();
}

{
  return Connection.scalar<A>(_:)();
}

uint64_t Connection.scalar(_:_:)()
{
  return Connection.scalar(_:_:)();
}

{
  return Connection.scalar(_:_:)();
}

uint64_t static Expression<A>.+ infix<A>(_:_:)()
{
  return static Expression<A>.+ infix<A>(_:_:)();
}

{
  return static Expression<A>.+ infix<A>(_:_:)();
}

uint64_t static Expression<A>.< infix<A>(_:_:)()
{
  return static Expression<A>.< infix<A>(_:_:)();
}

{
  return static Expression<A>.< infix<A>(_:_:)();
}

uint64_t TableBuilder.column<A>(_:unique:check:defaultValue:)()
{
  return TableBuilder.column<A>(_:unique:check:defaultValue:)();
}

{
  return TableBuilder.column<A>(_:unique:check:defaultValue:)();
}

uint64_t default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)()
{
  return default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
}

{
  return default argument 1 of TableBuilder.column<A>(_:unique:check:defaultValue:)();
}

uint64_t <- infix<A>(_:_:)()
{
  return <- infix<A>(_:_:)();
}

{
  return <- infix<A>(_:_:)();
}

{
  return <- infix<A>(_:_:)();
}

uint64_t Row.get<A>(_:)()
{
  return Row.get<A>(_:)();
}

{
  return Row.get<A>(_:)();
}

uint64_t QueryType.insert(or:_:)()
{
  return QueryType.insert(or:_:)();
}

{
  return QueryType.insert(or:_:)();
}

uint64_t Dependency.init<A>(satisfying:with:)()
{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

uint64_t Bag.subscript.getter()
{
  return Bag.subscript.getter();
}

{
  return Bag.subscript.getter();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t std::to_chars()
{
  return std::to_chars();
}

{
  return std::to_chars();
}

{
  return std::to_chars();
}

{
  return std::to_chars();
}

{
  return std::to_chars();
}

{
  return std::to_chars();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}