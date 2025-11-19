uint64_t sub_10028E52C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, void (*a10)(uint64_t *), uint64_t a11)
{
  v85 = a8;
  v113 = a4;
  v112 = a3;
  v108 = a11;
  v109 = a10;
  v14 = sub_1001BC5A8(&unk_100524EC0, &qword_100457040);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v104 = &v81 - v16;
  v17 = type metadata accessor for InternalRoutingError();
  v106 = *(v17 - 8);
  v107 = v17;
  v18 = *(v106 + 64);
  __chkstk_darwin(v17);
  v105 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v96 = *(v97 - 8);
  v20 = *(v96 + 64);
  __chkstk_darwin(v97);
  v94 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v93 = *(v95 - 8);
  v22 = *(v93 + 64);
  __chkstk_darwin(v95);
  v89 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v88 = *(v90 - 8);
  v24 = *(v88 + 64);
  __chkstk_darwin(v90);
  v86 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Duration.UnitsFormatStyle();
  v91 = *(v92 - 8);
  v26 = *(v91 + 64);
  __chkstk_darwin(v92);
  v87 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Logger();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ContinuousClock.Instant();
  v102 = *(v33 - 8);
  v103 = v33;
  v34 = *(v102 + 64);
  __chkstk_darwin(v33);
  v36 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.now.getter();
  v101 = v36;
  v111 = ContinuousClock.Instant.duration(to:)();
  v100 = v37;
  v38 = sub_100028D40();
  v39 = *(v29 + 16);
  v99 = v28;
  v39(v32, v38, v28);
  v40 = a7;

  v41 = a1;
  v42 = a2;
  v43 = a2;
  v44 = v112;
  LOBYTE(v36) = v113;
  sub_10023DBE8(a1, v43, v112, v113);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v84 = a9;

  v83 = v40;

  v110 = v42;
  sub_10023DC58(v41, v42, v44, v36);
  v98 = v45;
  if (os_log_type_enabled(v45, v46))
  {
    v47 = v32;
    v82 = v46;
    v48 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v115 = v81;
    *v48 = 136316162;
    v49 = _typeName(_:qualified:)();
    v51 = sub_10002C9C8(v49, v50, &v115);

    *(v48 + 4) = v51;
    *(v48 + 12) = 2082;
    *(v48 + 14) = sub_10002C9C8(*(v83 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(v83 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &v115);
    *(v48 + 22) = 2082;
    *(v48 + 24) = sub_10002C9C8(v85, v84, &v115);
    *(v48 + 32) = 2082;
    v52 = v41;
    if (v41)
    {
      v116 = 0;
      v117 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v114, " with error: ");
      HIWORD(v114[1]) = -4864;
      v116 = v41;
      v117 = v110;
      v118 = v112;
      v119 = v113;
      sub_10023DD70();
      v53._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v53);

      v54._countAndFlagsBits = 32;
      v54._object = 0xE100000000000000;
      String.append(_:)(v54);
      v55 = v114[0];
      v56 = v114[1];
    }

    else
    {
      v56 = 0xE100000000000000;
      v55 = 32;
    }

    v57 = sub_10002C9C8(v55, v56, &v115);

    *(v48 + 34) = v57;
    *(v48 + 42) = 2082;
    sub_1001BC5A8(&unk_100524ED0, &unk_100457AE0);
    v58 = *(type metadata accessor for Duration.UnitsFormatStyle.Unit() - 8);
    v59 = *(v58 + 72);
    v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100450890;
    static Duration.UnitsFormatStyle.Unit.seconds.getter();
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_1002868A0(v61);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v62 = v86;
    static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    v63 = v89;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v64 = v94;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
    v65 = v87;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v96 + 8))(v64, v97);
    (*(v93 + 8))(v63, v95);
    (*(v88 + 8))(v62, v90);
    sub_100017F3C(&qword_100524988, &type metadata accessor for Duration.UnitsFormatStyle);
    v66 = v92;
    Duration.formatted<A>(_:)();
    (*(v91 + 8))(v65, v66);
    v67 = sub_10002C9C8(v116, v117, &v115);

    *(v48 + 44) = v67;
    v68 = v98;
    _os_log_impl(&_mh_execute_header, v98, v82, "[%s]<%{public}s> interact<%{public}s> - finished%{public}sin: %{public}s", v48, 0x34u);
    swift_arrayDestroy();

    (*(v29 + 8))(v47, v99);
  }

  else
  {

    (*(v29 + 8))(v32, v99);
    v52 = v41;
  }

  v69 = v109;
  v71 = v106;
  v70 = v107;
  v72 = v104;
  v73 = v105;
  if (!v52)
  {
    (*(v106 + 56))(v104, 1, 1, v107);
    goto LABEL_12;
  }

  v116 = v52;
  swift_errorRetain();
  sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
  v74 = swift_dynamicCast();
  (*(v71 + 56))(v72, v74 ^ 1u, 1, v70);
  if ((*(v71 + 48))(v72, 1, v70) == 1)
  {
LABEL_12:
    sub_1000038A4(v72, &unk_100524EC0, &qword_100457040);
LABEL_13:
    v76 = v110;
    v77 = v112;
    v78 = v113;
    sub_10023DBE8(v52, v110, v112, v113);
    static Duration./ infix(_:_:)();
    sub_10026CEA0(v52, v76, v77, v78, 1, &v116, v79);
    v69(&v116);
    sub_100286E38(&v116);
    return (*(v102 + 8))(v101, v103);
  }

  (*(v71 + 32))(v73, v72, v70);
  if ((InternalRoutingError.isStabilityError.getter() & 1) == 0)
  {
    (*(v71 + 8))(v73, v70);
    goto LABEL_13;
  }

  static Duration./ infix(_:_:)();
  sub_10026CEA0(0, 0, 0, 0, 0, &v116, v75);
  v69(&v116);
  sub_100286E38(&v116);
  (*(v71 + 8))(v73, v70);
  return (*(v102 + 8))(v101, v103);
}

uint64_t sub_10028F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v11 - 8);
  v12 = *(v25 + 64);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v15 = *(v24 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v24);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(result + 40);
    v23[1] = result;
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = a3;
    v21[4] = a4;
    v21[5] = a5;
    v21[6] = a6;
    aBlock[4] = sub_1002921D4;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C7850;
    v22 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_100017F3C(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);
    (*(v25 + 8))(v14, v11);
    (*(v15 + 8))(v18, v24);
  }

  return result;
}

uint64_t sub_10028F42C()
{
  v1 = v0;
  v2 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v40 = *(v34 - 8);
  v10 = *(v40 + 64);
  __chkstk_darwin(v34);
  v12 = &v28 - v11;
  v38 = objc_opt_self();
  v13 = [v38 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v41 = v1[5];
  v14 = v41;
  v35 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v15 = *(v35 - 8);
  v36 = *(v15 + 56);
  v37 = v15 + 56;
  v36(v5, 1, 1, v35);
  v32 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  v31 = sub_100017F3C(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
  v30 = sub_1001C3D28(&qword_100524C70, &qword_100524C60, OS_dispatch_queue_ptr);
  v29 = v14;
  Publisher.receive<A>(on:options:)();
  v16 = v5;
  sub_1000038A4(v5, &unk_100524C50, &qword_10044F180);
  v17 = *(v39 + 8);
  v39 += 8;
  v33 = v17;
  v18 = v6;
  v17(v9, v6);
  swift_allocObject();
  swift_weakInit();
  v28 = sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);
  v19 = v34;
  Publisher<>.sink(receiveValue:)();

  v20 = *(v40 + 8);
  v40 += 8;
  v20(v12, v19);
  v41 = sub_10028C78C();
  AnyCancellable.store(in:)();

  v21 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers;
  v22 = *(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers);
  *(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers) = v41;

  v23 = [v38 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v24 = v29;
  v41 = v29;
  v36(v16, 1, 1, v35);
  Publisher.receive<A>(on:options:)();
  sub_1000038A4(v16, &unk_100524C50, &qword_10044F180);

  v33(v9, v18);
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  v20(v12, v19);
  v41 = *(v1 + v21);

  AnyCancellable.store(in:)();

  v25 = *(v1 + v21);
  *(v1 + v21) = v41;

  return (*(*v1 + 328))(v26);
}

void sub_10028F9C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v39[-v9];
  v11 = [objc_opt_self() server];
  v12 = [v11 groupSessionServer];

  if (v12 && (v42 = [v12 sessionManager], v12, (v13 = v42) != 0))
  {
    v14 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_discoveryObserver;
    if (*(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_discoveryObserver))
    {
    }

    else
    {
      v23 = sub_100028D40();
      (*(v4 + 16))(v10, v23, v3);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v40 = v25;
        v27 = v26;
        v41 = swift_slowAlloc();
        v44 = v41;
        *v27 = 136315394;
        v28 = _typeName(_:qualified:)();
        v30 = sub_10002C9C8(v28, v29, &v44);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2082;
        *(v27 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &v44);
        _os_log_impl(&_mh_execute_header, v24, v40, "[%s]<%{public}s> updateGroupSessionDiscoveryMonitoring - install discoveryObserver", v27, 0x16u);
        swift_arrayDestroy();
      }

      (*(v4 + 8))(v10, v3);
      v31 = swift_allocObject();
      swift_weakInit();
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v2;
      v33 = type metadata accessor for RemoteControlGroupSessionItemDataSource.GroupSessionManagerObserver();
      v34 = objc_allocWithZone(v33);
      v35 = &v34[OBJC_IVAR____TtCC12mediaremoted39RemoteControlGroupSessionItemDataSource27GroupSessionManagerObserver_callback];
      *v35 = sub_100291A18;
      v35[1] = v32;
      v43.receiver = v34;
      v43.super_class = v33;
      v36 = objc_msgSendSuper2(&v43, "init");
      v37 = *(v1 + v14);
      *(v1 + v14) = v36;
      v38 = v36;

      [v42 addObserver:v38];
    }
  }

  else
  {
    v15 = sub_100028D40();
    (*(v4 + 16))(v8, v15, v3);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v18 = 136315394;
      v19 = _typeName(_:qualified:)();
      v21 = sub_10002C9C8(v19, v20, &v44);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_10002C9C8(*(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &v44);
      _os_log_impl(&_mh_execute_header, v16, v17, "[%s]<%{public}s> updateGroupSessionDiscoveryMonitoring - remove discoveryObserver", v18, 0x16u);
      swift_arrayDestroy();
    }

    (*(v4 + 8))(v8, v3);
    v22 = *(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_discoveryObserver);
    *(v1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_discoveryObserver) = 0;
  }
}

uint64_t sub_10028FEE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(result + 40);
    v14 = result;
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a2;
    v20 = v14;
    aBlock[4] = sub_10029217C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C7800;
    v16 = v9;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_100017F3C(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    v19 = v8;
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v4 + 8))(v7, v3);
    (*(v16 + 8))(v12, v19);
  }

  return result;
}

uint64_t sub_1002901F8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100028D40();
  (*(v3 + 16))(v6, v7, v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10002C9C8(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_10002C9C8(*(a1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(a1 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &v17);
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s]<%{public}s> discoveryObserver - discoveredSessions changed", v10, 0x16u);
    swift_arrayDestroy();
  }

  v14 = (*(v3 + 8))(v6, v2);
  return (*(*a1 + 336))(v14);
}

uint64_t sub_100290434()
{
  v1 = (*(*v0 + 344))();
  v2 = *(*v0 + 184);

  return v2(v1);
}

void *sub_1002904A4()
{
  v1 = *v0;
  v2 = sub_1001BC5A8(&unk_100524C80, &qword_1004573A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  v7 = [objc_opt_self() server];
  v8 = [v7 groupSessionServer];

  if (v8)
  {
    v9 = [v8 sessionManager];

    if (v9)
    {
      v10 = [v9 discoveredSessions];

      if (v10)
      {
        sub_100018D7C(0, &unk_100521AF0, MRDiscoveredGroupSession_ptr);
        sub_1001C3D28(&unk_100524C90, &unk_100521AF0, MRDiscoveredGroupSession_ptr);
        v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v11 & 0xC000000000000001) != 0)
        {
          if (__CocoaSet.count.getter())
          {
LABEL_6:

            v12 = sub_100290FB0(v11, v0, v1);

            v15 = v12;
            swift_getKeyPath();
            KeyPathComparator.init<A>(_:order:)();
            sub_1001BC5A8(&qword_1005249A0, &unk_100458530);
            sub_10000462C(&unk_100524CA0, &qword_1005249A0, &unk_100458530);
            sub_10000462C(&qword_1005249B8, &unk_100524C80, &qword_1004573A0);
            v13 = Sequence.sorted<A>(using:)();
            (*(v3 + 8))(v6, v2);

            return v13;
          }
        }

        else if (*(v11 + 16))
        {
          goto LABEL_6;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1002907C4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v76 = a3;
  v7 = sub_1001BC5A8(&qword_100523AE8, &unk_100457500);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v73 - v9;
  v11 = sub_1001BC5A8(&unk_100524E90, &unk_1004519B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v81 = &v73 - v13;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = [v19 identifier];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v22;
  v80 = v21;

  v23 = [v19 hostInfo];
  v24 = [v23 localizedSessionName];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v26;
  v78 = v25;

  v27 = [v19 hostInfo];
  v28 = [v27 routeType];

  v82 = v10;
  v83 = a4;
  if (v28 <= 4)
  {
    switch(v28)
    {
      case 0:
        v31 = swift_allocObject();
        *(v31 + 16) = SystemGroupSessionTransport.hostname.getter();
        *(v31 + 24) = v38;
LABEL_25:
        *(v31 + 32) = 0;
        *(v31 + 40) = SystemGroupSessionTransport.hostname.getter();
        *(v31 + 48) = v59;

        v29 = 0;
        v30 = 0;
        goto LABEL_28;
      case 1:
        v29 = 0;
        v30 = 35328;
        v31 = 7;
        goto LABEL_28;
      case 2:
        v29 = 0;
        v30 = 35456;
        v31 = 7;
        goto LABEL_28;
    }

LABEL_15:
    v39 = sub_100028D40();
    v40 = v15;
    (*(v15 + 16))(v18, v39, v14);
    v41 = v19;

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v74 = v42;
      v45 = v44;
      v75 = swift_slowAlloc();
      v85 = v75;
      *v45 = 136315650;
      v46 = _typeName(_:qualified:)();
      v47 = v41;
      v49 = sub_10002C9C8(v46, v48, &v85);
      LODWORD(v76) = v43;
      v50 = v49;

      *(v45 + 4) = v50;
      *(v45 + 12) = 2082;
      *(v45 + 14) = sub_10002C9C8(*(a2 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier), *(a2 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8), &v85);
      *(v45 + 22) = 258;
      v51 = [v41 hostInfo];
      LOBYTE(v50) = [v51 routeType];

      v41 = v47;
      *(v45 + 24) = v50;

      v52 = v74;
      _os_log_impl(&_mh_execute_header, v74, v76, "[%s]<%{public}s> computeRoutingItems - unhandled route type: %{public}hhu", v45, 0x19u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v40 + 8))(v18, v14);
    v31 = swift_allocObject();
    v85 = 0x65756C6156776172;
    v86 = 0xEA0000000000203ALL;
    v55 = [v41 hostInfo];
    v56 = [v55 routeType];

    v84 = v56;
    v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v57);

    v58 = v86;
    *(v31 + 16) = v85;
    *(v31 + 24) = v58;
    goto LABEL_25;
  }

  if ((v28 - 8) < 2)
  {
    v35 = [v19 hostInfo];
    v36 = [v35 modelIdentifier];

    if (v36)
    {
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v37;
    }

    else
    {
      v31 = 0;
      v29 = 0;
    }

    v30 = 12416;
  }

  else if (v28 == 5)
  {
    v53 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
    v31 = 0;
    v29 = 0;
    if (SystemGroupSessionTransport.supportsIdleDisconnection.getter())
    {
      v54 = 256;
    }

    else
    {
      v54 = 0;
    }

    v30 = v54 & 0xFFFFFFFE | v53 & 1 | 0x880;
  }

  else
  {
    if (v28 != 11)
    {
      goto LABEL_15;
    }

    v32 = [v19 hostInfo];
    v33 = [v32 modelIdentifier];

    if (v33)
    {
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v34;
    }

    else
    {
      v31 = 0;
      v29 = 0;
    }

    v30 = 14464;
  }

LABEL_28:
  LODWORD(v76) = v30;
  v60 = swift_allocObject();
  *(v60 + 16) = v31;
  *(v60 + 24) = v29;
  *(v60 + 32) = v30;
  v61 = type metadata accessor for RoutingItem.SelectionIndicator();
  v62 = v81;
  (*(*(v61 - 8) + 56))(v81, 1, 1, v61);
  v85 = _swiftEmptyArrayStorage;
  sub_100248690();
  sub_1001BC5A8(&qword_100524EA0, &unk_100457510);
  sub_10000462C(&qword_100524EA8, &qword_100524EA0, &unk_100457510);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v63 = v84;
  v64 = type metadata accessor for RoutingItem.Attributes();
  v65 = v82;
  (*(*(v64 - 8) + 56))(v82, 1, 1, v64);
  v66 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
  v67 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
  v68 = variable initialization expression of SystemGroupSessionRemoteControlService.sessionCancellables();
  v69 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
  v70 = SystemGroupSessionTransport.supportsIdleDisconnection.getter();
  LOBYTE(v85) = 1;
  sub_100258314(v80, v79, 0, 0, v78, v77, v60, 0, v83, 0x600u, v66 & 1, v67 & 1, v62, v63, v68, v69 & 1, v72, 0, 1, 0, v70, v65);
  return sub_100019550(v31, v29, v76);
}

uint64_t sub_100290FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100291D78(a1, a2, a3);
  if (v3)
  {

    __break(1u);
  }

  else
  {
    v5 = v4;

    return v5;
  }

  return result;
}

uint64_t sub_100291004()
{
  sub_10002349C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingMode;
  v2 = type metadata accessor for RoutingMode();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingItems);

  v4 = *(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_routingContextIdentifier + 8);

  v5 = *(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier + 8);

  v6 = *(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource____lazy_storage___notificationObservers);

  sub_1001DFBCC(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_delegate);
  return v0;
}

uint64_t sub_1002910E0()
{
  sub_100291004();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100291138()
{
  v1 = *(v0 + 16);
  sub_10002CBE8(v1, *(v0 + 24), *(v0 + 32));
  return v1;
}

void (*sub_1002911C8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 168))();
  return sub_10027DF04;
}

unint64_t sub_100291338()
{
  v34 = type metadata accessor for HostedRoutingItem(0);
  v1 = *(v34 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v34);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoutingMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v39 = 0xD00000000000002ALL;
  v40 = 0x800000010043E8D0;
  String.append(_:)(*(v0 + OBJC_IVAR____TtC12mediaremoted39RemoteControlGroupSessionItemDataSource_identifier));
  v10._countAndFlagsBits = 2622;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v38, "Routing Mode: ");
  HIBYTE(v38._object) = -18;
  (*(*v0 + 152))(v11);
  sub_100017F3C(&unk_100524C30, &type metadata accessor for RoutingMode);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  (*(v6 + 8))(v9, v5);
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  String.append(_:)(v38);

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v38._countAndFlagsBits = 0xD000000000000010;
  v38._object = 0x800000010043E360;
  v15 = (*(*v0 + 176))(v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v16, 0);
    v17 = v37;
    v18 = *(v1 + 80);
    v33[1] = v15;
    v19 = v15 + ((v18 + 32) & ~v18);
    v20 = *(v1 + 72);
    do
    {
      sub_10001D948(v19, v4);
      v35 = 538976288;
      v36 = 0xE400000000000000;
      sub_100017F3C(&unk_100524C40, type metadata accessor for HostedRoutingItem);
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v23 = v35;
      v22 = v36;
      sub_10001DA14(v4);
      v37 = v17;
      v25 = v17[2];
      v24 = v17[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000089FC((v24 > 1), v25 + 1, 1);
        v17 = v37;
      }

      v17[2] = v25 + 1;
      v26 = &v17[2 * v25];
      v26[4] = v23;
      v26[5] = v22;
      v19 += v20;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  v35 = v17;
  sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
  sub_10000462C(&qword_100523680, &qword_1005229B0, &unk_100450110);
  v27 = BidirectionalCollection<>.joined(separator:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 10;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  String.append(_:)(v38);

  return v39;
}

uint64_t sub_100291830(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *(type metadata accessor for ContinuousClock() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for ContinuousClock.Instant() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v4 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  return sub_10028E52C(a1, a2, a3, a4, v4 + v10, v4 + v13, *(v4 + v14), *(v4 + v15), *(v4 + v15 + 8), *(v4 + v16), *(v4 + v16 + 8));
}

uint64_t sub_10029199C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 328))(result);
  }

  return result;
}

uint64_t type metadata accessor for RemoteControlGroupSessionItemDataSource()
{
  result = qword_1005332F0;
  if (!qword_1005332F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100291A74()
{
  result = type metadata accessor for RoutingMode();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100291B54(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100018D7C(0, &unk_100521AF0, MRDiscoveredGroupSession_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100018D7C(0, &unk_100521AF0, MRDiscoveredGroupSession_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void *sub_100291D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v41 = a2;
  v6 = type metadata accessor for HostedRoutingItem(0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v10)
  {
    v50 = _swiftEmptyArrayStorage;
    v12 = &v50;
    sub_10002A42C(0, v10 & ~(v10 >> 63), 0);
    v45 = v50;
    if (v44)
    {
      v13 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v15 = -1 << *(a1 + 32);
      v13 = _HashTable.startBucket.getter();
      v14 = *(a1 + 36);
    }

    v47 = v13;
    v48 = v14;
    v49 = v44 != 0;
    if ((v10 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v17 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v17 = a1;
      }

      v37 = a1 + 56;
      v38 = v17;
      v36 = a1 + 64;
      v39 = v10;
      while (v16 < v10)
      {
        if (__OFADD__(v16++, 1))
        {
          goto LABEL_39;
        }

        v10 = v47;
        v3 = v48;
        LODWORD(v4) = v49;
        v19 = a1;
        sub_100291B54(v47, v48, v49, a1);
        v12 = v20;
        v46[0] = v20;
        v21 = v9;
        sub_1002907C4(v46, v41, v42, v9);
        if (v43)
        {
          goto LABEL_44;
        }

        v22 = v45;
        v50 = v45;
        v24 = v45[2];
        v23 = v45[3];
        if (v24 >= v23 >> 1)
        {
          v12 = &v50;
          sub_10002A42C(v23 > 1, v24 + 1, 1);
          v22 = v50;
        }

        v22[2] = v24 + 1;
        v25 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v45 = v22;
        v26 = v22 + v25 + *(v40 + 72) * v24;
        v9 = v21;
        result = sub_10001DFD4(v21, v26);
        if (v44)
        {
          if (!v4)
          {
            goto LABEL_45;
          }

          a1 = v19;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1001BC5A8(&unk_100524E80, &qword_1004574F8);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          (v12)(v46, 0);
        }

        else
        {
          if (v4)
          {
            goto LABEL_46;
          }

          if (v10 < 0)
          {
            goto LABEL_40;
          }

          a1 = v19;
          v12 = (1 << *(v19 + 32));
          if (v10 >= v12)
          {
            goto LABEL_40;
          }

          v27 = v10 >> 6;
          v28 = *(v37 + 8 * (v10 >> 6));
          if (((v28 >> v10) & 1) == 0)
          {
            goto LABEL_41;
          }

          if (*(v19 + 36) != v3)
          {
            goto LABEL_42;
          }

          v29 = v28 & (-2 << (v10 & 0x3F));
          if (v29)
          {
            v12 = (__clz(__rbit64(v29)) | v10 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v4 = v27 << 6;
            v30 = v27 + 1;
            v31 = (v36 + 8 * v27);
            while (v30 < (v12 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v4 += 64;
              ++v30;
              if (v33)
              {
                sub_10000A16C(v10, v3, 0);
                v12 = (__clz(__rbit64(v32)) + v4);
                goto LABEL_35;
              }
            }

            sub_10000A16C(v10, v3, 0);
          }

LABEL_35:
          v34 = *(v19 + 36);
          v47 = v12;
          v48 = v34;
          v49 = 0;
        }

        v10 = v39;
        if (v16 == v39)
        {
          sub_10000A16C(v47, v48, v49);
          return v45;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    __break(1u);
LABEL_44:

    sub_10000A16C(v10, v3, v4);

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  return result;
}

uint64_t sub_100292184(void (*a1)(void))
{
  a1(v1[2]);
  v2 = v1[4];

  v3 = v1[6];

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_1002921D4()
{
  v1 = v0[3];
  v2 = v0[4];
  if (v0[2])
  {
    v3 = v0[5];
    v4 = v0[6];
    v5 = swift_allocObject();
    swift_getErrorValue();
    swift_errorRetain();
    *(v5 + 16) = Error.localizedDescription.getter();
    *(v5 + 24) = v6;
    v7 = type metadata accessor for InternalRoutingError();
    sub_100017F3C(&qword_100524710, &type metadata accessor for InternalRoutingError);
    v8 = swift_allocError();
    *v9 = v5;
    (*(*(v7 - 8) + 104))(v9, enum case for InternalRoutingError.external(_:), v7);

    MRDFastSyncGroupSessionState.rawValue.getter(v8, v3, v4);
    v11 = v10;
    v13 = v12;
    LOBYTE(v8) = v14;
    v1();

    sub_10023DCB0(v11, v13, v8);
  }

  else
  {
    v16 = v0[4];
    return (v1)(0, 0, 0, 0);
  }
}

void sub_100292394(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = v2[2];
  if (a1)
  {
    if (v10)
    {
      sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
      v11 = v10;
      v12 = a1;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        return;
      }
    }
  }

  else if (!v10)
  {
    return;
  }

  v14 = sub_100028D40();
  (*(v6 + 16))(v9, v14, v5);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_10002C9C8(v18, v19, &v28);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    v21 = v2[2];
    if (v21)
    {
      v22 = v21;

      v23 = [v22 description];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {

      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    v27 = sub_10002C9C8(v24, v26, &v28);

    *(v17 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "[%s] setActiveSessionEndpoint - value: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v6 + 8))(v9, v5);
}

void *sub_1002926AC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1002926F0(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;
  sub_100292394(v3);
}

void (*sub_100292754(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  v5 = *(v1 + 16);
  *(v4 + 24) = v5;
  v6 = v5;
  return sub_1002927E8;
}

void sub_1002927E8(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = *v5;
  v8 = v4;
  v9 = v8;
  v10 = v3[4];
  if (a2)
  {
    v11 = v8;
    sub_100292394(v7);

    v7 = *v5;
  }

  else
  {
    sub_100292394(v7);
  }

  free(v3);
}

uint64_t sub_100292884(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v13 = v3[4];
  if (a2)
  {
    if (v13)
    {
      if (v3[3] == a1 && v13 == a2)
      {
        return result;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        return result;
      }
    }
  }

  else if (!v13)
  {
    return result;
  }

  v15 = sub_100028D40();
  (*(v8 + 16))(v11, v15, v7);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v18 = 136315394;
    v19 = _typeName(_:qualified:)();
    v21 = sub_10002C9C8(v19, v20, &v25);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    if (v3[4])
    {
      v22 = v3[3];
      v23 = v3[4];
    }

    else
    {
      v23 = 0xE300000000000000;
      v22 = 7104878;
    }

    v24 = sub_10002C9C8(v22, v23, &v25);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%s] setActiveDeviceIdentifier - value: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100292B30()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_100292B7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  sub_100292884(v5, v6);
}

void (*sub_100292BDC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + 32);
  *(v4 + 24) = *(v1 + 24);
  *(v4 + 32) = v5;

  return sub_100292C70;
}

void sub_100292C70(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = v2[5];
  v7 = *(v5 + 24);
  v6 = *(v5 + 32);
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  v8 = v2[5];
  if (a2)
  {

    sub_100292884(v7, v6);

    v9 = v2[4];
  }

  else
  {
    sub_100292884(v7, v6);
  }

  free(v2);
}

id sub_100292CFC()
{
  v1 = *v0;
  v2 = v0[13];
  if (v2)
  {
    v3 = v0[13];
  }

  else
  {
    v4 = sub_100292D80(v0);
    v5 = v0[13];
    v0[13] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100292D80(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v2);
  v36 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  v5 = *(v35 + 64);
  __chkstk_darwin(v37);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100028D40();
  (*(v8 + 16))(v11, v12, v7);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    *&aBlock = v17;
    *v16 = 136315138;
    v18 = _typeName(_:qualified:)();
    v20 = sub_10002C9C8(v18, v19, &aBlock);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] discoverySession - initializing", v16, 0xCu);
    sub_100026A44(v17);

    v2 = v33;
  }

  (*(v8 + 8))(v11, v7);
  result = [objc_opt_self() discoverySessionWithEndpointFeatures:8];
  if (result)
  {
    v22 = result;
    v23 = swift_allocObject();
    swift_weakInit();
    v42 = sub_100295B00;
    v43 = v23;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v41 = sub_10029360C;
    *(&v41 + 1) = &unk_1004C7968;
    v24 = _Block_copy(&aBlock);
    v25 = v22;

    v26 = [v25 addEndpointsChangedCallback:v24];
    _Block_release(v24);
    if (v26)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v41 = 0u;
    }

    sub_1000038A4(&aBlock, &qword_100522890, &qword_100450610);
    v27 = *(a1 + 56);
    v42 = sub_100295B2C;
    v43 = a1;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v41 = sub_100003D98;
    *(&v41 + 1) = &unk_1004C7990;
    v28 = _Block_copy(&aBlock);
    v29 = v27;

    v30 = v34;
    static DispatchQoS.unspecified.getter();
    v39 = _swiftEmptyArrayStorage;
    sub_100018014(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v31 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v28);
    (*(v38 + 8))(v31, v2);
    (*(v35 + 8))(v30, v37);

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100293318()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 56);
    aBlock[4] = sub_100295B08;
    aBlock[5] = result;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C79B8;
    v17 = result;
    v12 = _Block_copy(aBlock);
    v16 = v11;

    static DispatchQoS.unspecified.getter();
    v18 = _swiftEmptyArrayStorage;
    sub_100018014(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    v15 = v5;
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v16;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v15);
  }

  return result;
}

uint64_t sub_10029360C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4(v2);
}

uint64_t sub_100293694(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  sub_1002936EC(a1, a2, a3);
  return v6;
}

void sub_1002936EC(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v46 - v10;
  v12 = type metadata accessor for NSNotificationCenter.Publisher();
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  __chkstk_darwin(v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001BC5A8(&unk_100525EF0, &qword_100458110);
  v48 = *(v16 - 8);
  v49 = v16;
  v17 = *(v48 + 64);
  __chkstk_darwin(v16);
  v19 = v46 - v18;
  *(v4 + 24) = 0;
  *(v4 + 48) = 0;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 96) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  swift_unknownObjectWeakAssign();
  v20 = objc_opt_self();
  v21 = a3;
  v22 = [v20 currentSettings];
  if (!v22)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  v24 = [v22 supportSystemEndpoints];

  if (!v24)
  {
    swift_unknownObjectRelease();

    return;
  }

  v46[0] = v21;
  v46[1] = a1;
  v25 = [objc_opt_self() defaultCenter];
  if (!kMRMediaRemoteActiveSystemEndpointDidChangeNotification)
  {
    goto LABEL_16;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = String._bridgeToObjectiveC()();

  NSNotificationCenter.publisher(for:object:)();

  v50 = *(v4 + 56);
  v27 = v50;
  v28 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  sub_100018014(&unk_100525F00, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_1002853D8();
  v29 = v27;
  Publisher.receive<A>(on:options:)();
  sub_1000038A4(v11, &unk_100524C50, &qword_10044F180);

  (*(v47 + 8))(v15, v12);
  sub_10000462C(&qword_100525F10, &unk_100525EF0, &qword_100458110);

  v30 = v49;
  v31 = Publisher<>.sink(receiveValue:)();

  (*(v48 + 8))(v19, v30);
  v32 = *(v4 + 64);
  *(v4 + 64) = v31;
  swift_unknownObjectRelease();
  v33 = [objc_opt_self() server];
  v34 = [v33 routingServer];

  v35 = [v34 systemEndpointController];
  if (!v35)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v36 = [v35 activeOutputDeviceUID:0];

  if (v36)
  {
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = [objc_opt_self() localDeviceUID];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (v37 == v41 && v39 == v43)
    {
      swift_unknownObjectRelease();

LABEL_12:

      return;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
      swift_unknownObjectRelease();

      goto LABEL_12;
    }

    swift_beginAccess();
    v45 = *(v4 + 32);
    *(v4 + 24) = v37;
    *(v4 + 32) = v39;

    sub_1002941C8();
  }

  swift_unknownObjectRelease();
}

void sub_100293E84(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100028D40();
  (*(v8 + 16))(v11, v12, v7);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = a1;
    v16 = v15;
    v33 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = _typeName(_:qualified:)();
    v19 = sub_10002C9C8(v17, v18, &v33);
    v31 = v7;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    if (a2)
    {
      v21 = v32;
    }

    else
    {
      v21 = 7104878;
    }

    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0xE300000000000000;
    }

    v23 = sub_10002C9C8(v21, v22, &v33);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] updateActiveDeviceIdentifier - identifier: %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a1 = v32;

    v24 = (*(v8 + 8))(v11, v31);
  }

  else
  {

    v24 = (*(v8 + 8))(v11, v7);
  }

  v25 = (*(*v3 + 176))(v24);
  if (a2)
  {
    if (v26)
    {
      if (v25 == a1 && v26 == a2)
      {

        goto LABEL_22;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_20;
  }

  if (v26)
  {

LABEL_20:
    v29 = *(*v3 + 184);

    v29(a1, a2);
  }

LABEL_22:
  sub_1002941C8();
}

void sub_1002941C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v58 - v10;
  v12 = *(v2 + 176);
  v12(v9);
  if (v13)
  {

    [v0[11] invalidate];
    v14 = v0[11];
    v0[11] = 0;

    v15 = sub_100028D40();
    (*(v4 + 16))(v8, v15, v3);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v60 = v4;
      v19 = v18;
      v20 = swift_slowAlloc();
      v59 = v3;
      aBlock[0] = v20;
      *v19 = 136315394;
      v21 = _typeName(_:qualified:)();
      v23 = sub_10002C9C8(v21, v22, aBlock);
      v61 = v2;
      v24 = v23;

      *(v19 + 4) = v24;
      *(v19 + 12) = 2082;
      v26 = (v12)(v25);
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v26 = 7104878;
        v28 = 0xE300000000000000;
      }

      v29 = sub_10002C9C8(v26, v28, aBlock);

      *(v19 + 14) = v29;
      v2 = v61;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%s] discoverEndpointIfNeeded - Allow 7s discovery for active device: %{public}s", v19, 0x16u);
      swift_arrayDestroy();

      (*(v60 + 8))(v8, v59);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    v42 = sub_100292CFC();
    [v42 setDiscoveryMode:2];

    v43 = static String.nanoIDFourChar()();
    v45 = v44;
    v46 = v1[10];
    v1[9] = v43;
    v1[10] = v44;

    v47 = v1[7];
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = swift_allocObject();
    v49[2] = v48;
    v49[3] = v43;
    v49[4] = v45;
    v49[5] = v2;
    v50 = objc_allocWithZone(MSVTimer);
    aBlock[4] = sub_100295B0C;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C7A08;
    v51 = _Block_copy(aBlock);
    v52 = v47;

    v53 = [v50 initWithInterval:0 repeats:v52 queue:v51 block:7.0];
    _Block_release(v51);

    v54 = v1[11];
    v1[11] = v53;

    sub_100294AF4();
  }

  else
  {
    v30 = v0[11];
    if (v30)
    {
      [v30 invalidate];
      v31 = v0[11];
      v0[11] = 0;

      v32 = sub_100292CFC();
      [v32 setDiscoveryMode:0];

      v33 = sub_100028D40();
      (*(v4 + 16))(v11, v33, v3);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v36 = 136315138;
        v38 = _typeName(_:qualified:)();
        v40 = v3;
        v41 = sub_10002C9C8(v38, v39, aBlock);

        *(v36 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v34, v35, "[%s] discoverEndpointIfNeeded - disable discovery for active device: nil", v36, 0xCu);
        sub_100026A44(v37);

        (*(v4 + 8))(v11, v40);
      }

      else
      {

        (*(v4 + 8))(v11, v3);
      }
    }

    v55 = v1[12];
    if (v55)
    {
      v1[12] = 0;

      (*(*v1 + 160))(0);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v56 = v1[6];
        ObjectType = swift_getObjectType();
        (*(v56 + 8))(v1, 0, ObjectType, v56);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1002947FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(result + 80);
    if (v12 && (*(result + 72) == a2 ? (v13 = v12 == a3) : (v13 = 0), v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v14 = v11[11];
      v11[11] = 0;

      v15 = sub_100292CFC();
      [v15 setDiscoveryMode:0];

      v16 = sub_100028D40();
      (*(v6 + 16))(v9, v16, v5);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v19 = 136315394;
        v20 = _typeName(_:qualified:)();
        v22 = sub_10002C9C8(v20, v21, &v28);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2082;
        v24 = (*(*v11 + 176))(v23);
        if (v25)
        {
          v26 = v25;
        }

        else
        {
          v24 = 7104878;
          v26 = 0xE300000000000000;
        }

        v27 = sub_10002C9C8(v24, v26, &v28);

        *(v19 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v17, v18, "[%s] discoverEndpointIfNeeded - disable discovery for active device: %{public}s", v19, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      return (*(v6 + 8))(v9, v5);
    }

    else
    {
    }
  }

  return result;
}

void sub_100294AF4()
{
  v1 = *v0;
  v2 = sub_100292CFC();
  v3 = [v2 discoveryMode];

  if (!v3)
  {
    return;
  }

  (*(*v0 + 176))();
  if (v4)
  {
    v5 = [v0[13] availableEndpoints];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = v1;
    if (v7 >> 62)
    {
LABEL_37:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_6:
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v13 = String._bridgeToObjectiveC()();
          v14 = [v11 containsOutputDeviceWithUID:v13];

          if (v14)
          {
            break;
          }

          ++v9;
          if (v12 == v8)
          {
            goto LABEL_38;
          }
        }

        v18 = v0;
        v19 = v0[12];
        if (v19)
        {
          v38 = v11;
          v20 = v19;
          v21 = static NSObject.== infix(_:_:)();

          if (v21)
          {
            goto LABEL_29;
          }

          v19 = v18[12];
        }

        else
        {
          v22 = v11;
        }

        v18[12] = v11;
        v38 = v11;

        if ([v38 isLocalEndpoint])
        {

          v23 = v18[12];
          v18[12] = 0;

          (*(*v18 + 160))(0);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v24 = v18[6];
            ObjectType = swift_getObjectType();
            (*(v24 + 8))(v18, 0, ObjectType, v24);
            swift_unknownObjectRelease();
          }

          goto LABEL_30;
        }

        if (![v38 isConnected])
        {

          v29 = objc_allocWithZone(MRRequestDetails);
          v30 = String._bridgeToObjectiveC()();
          v31 = String._bridgeToObjectiveC()();
          v32 = [v29 initWithName:v30 requestID:0 reason:v31 userInitiated:0];

          v33 = swift_allocObject();
          swift_weakInit();
          v34 = swift_allocObject();
          v34[2] = v33;
          v34[3] = v38;
          v34[4] = v37;
          aBlock[4] = sub_100295AE8;
          aBlock[5] = v34;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1001BC53C;
          aBlock[3] = &unk_1004C78F0;
          v35 = _Block_copy(aBlock);
          v36 = v38;

          [v36 connectToExternalDeviceWithOptions:0 details:v32 completion:v35];

          _Block_release(v35);
          return;
        }

        v26 = *(*v18 + 160);
        v38 = v38;
        v26(v11);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v27 = v18[6];
          v28 = swift_getObjectType();
          (*(v27 + 8))(v18, v11, v28, v27);
          swift_unknownObjectRelease();
        }

LABEL_29:

LABEL_30:

        return;
      }
    }

LABEL_38:

    return;
  }

  v15 = v0[12];
  v0[12] = 0;

  (*(*v0 + 160))(0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = v0[6];
    v17 = swift_getObjectType();
    (*(v16 + 8))(v0, 0, v17, v16);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1002950F8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = v8;
    v18 = *(result + 56);
    v19 = result;
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a3;
    v25[1] = v19;
    v20[4] = a1;
    v20[5] = a4;
    aBlock[4] = sub_100295AF4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C7940;
    v21 = _Block_copy(aBlock);
    v26 = v12;
    v22 = v21;
    v23 = v18;

    v24 = a3;
    swift_errorRetain();
    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_100018014(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v27 + 8))(v11, v7);
    (*(v13 + 8))(v16, v26);
  }

  return result;
}

void sub_10029542C(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[12];
  if (v11)
  {
    sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
    v12 = v11;
    v13 = a2;
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      if (a3)
      {
        v15 = sub_100028D40();
        (*(v7 + 16))(v10, v15, v6);
        v16 = v13;
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33 = v32;
          *v19 = 136315394;
          v20 = _typeName(_:qualified:)();
          v22 = sub_10002C9C8(v20, v21, &v33);

          *(v19 + 4) = v22;
          *(v19 + 12) = 2114;
          *(v19 + 14) = v16;
          v23 = v31;
          *v31 = v16;
          v24 = v16;
          _os_log_impl(&_mh_execute_header, v17, v18, "[%s] evaluateEndpoints - error connecting to endpoint: %{public}@", v19, 0x16u);
          sub_1000038A4(v23, &qword_100521870, &unk_10044EA70);

          sub_100026A44(v32);
        }

        (*(v7 + 8))(v10, v6);
        v25 = a1[12];
        a1[12] = 0;
      }

      else
      {
        v26 = *(*a1 + 160);
        v27 = v13;
        v26(v13);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v28 = a1[6];
          ObjectType = swift_getObjectType();
          (*(v28 + 8))(a1, v13, ObjectType, v28);

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_100295764()
{
  v1 = *(v0 + 32);

  sub_1001DFBCC(v0 + 40);

  v2 = *(v0 + 64);
  swift_unknownObjectRelease();
  v3 = *(v0 + 80);

  return v0;
}

uint64_t sub_1002957C4()
{
  sub_100295764();

  return swift_deallocClassInstance();
}

void sub_100295844()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_12;
  }

  v1 = v0;
  if (!kMRMediaRemoteActiveEndpointTypeUserInfoKey)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_10001BF64(v16), (v3 & 1) == 0))
  {

    sub_10001BF10(v16);
LABEL_12:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_13;
  }

  sub_100020E0C(*(v1 + 56) + 32 * v2, &v17);
  sub_10001BF10(v16);

  if (!*(&v18 + 1))
  {
LABEL_13:
    sub_1000038A4(&v17, &qword_100522890, &qword_100450610);
    return;
  }

  if ((swift_dynamicCast() & 1) != 0 && !v16[0])
  {
    v4 = [objc_opt_self() server];
    v5 = [v4 routingServer];

    v6 = [v5 systemEndpointController];
    if (v6)
    {
      v7 = [v6 activeOutputDeviceUID:0];

      if (v7)
      {
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;
      }

      else
      {
        v8 = 0;
        v10 = 0;
      }

      v11 = [objc_opt_self() localDeviceUID];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v10)
      {
        if (v8 == v12 && v10 == v14)
        {

LABEL_22:

          v8 = 0;
          v10 = 0;
          goto LABEL_23;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }

LABEL_23:
      sub_100293E84(v8, v10);

      return;
    }

    goto LABEL_25;
  }
}

void sub_100295B44()
{
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004575E0;
  v1 = kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification;
  if (!kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[5] = v3;
  v4 = kMRMediaRemoteOriginNowPlayingApplicationClientStateDidChange;
  if (!kMRMediaRemoteOriginNowPlayingApplicationClientStateDidChange)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[7] = v5;
  if (!kMRMediaRemoteOriginNowPlayingPlayerDidChange)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2[8] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[9] = v6;
  if (!kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2[10] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[11] = v7;
  if (!kMROriginNowPlayingPlaybackQueueChangedNotification)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2[12] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[13] = v8;
  if (!kMROriginPlaybackQueueContentItemsChangedNotification)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2[14] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[15] = v9;
  if (!kMROriginPlaybackQueueContentItemArtworkChangedNotification)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v2[16] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[17] = v10;
  if (!kMRMediaRemoteOriginSupportedCommandsDidChangeNotification)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v2[18] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[19] = v11;
  if (!kMRMediaRemoteOriginNowPlayingPlayerStateDidChange)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v2[20] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[21] = v12;
  if (!kMRMediaRemoteOriginDidRegisterNotification)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v2[22] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2[23] = v13;
  v14 = kMRMediaRemoteOriginDidUnregisterNotification;
  if (kMRMediaRemoteOriginDidUnregisterNotification)
  {
    v15 = v1;
    v16 = v4;
    v17 = v14;

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v2[24] = v18;
    v2[25] = v20;
    qword_100533388 = v2;
    return;
  }

LABEL_23:
  __break(1u);
}

id sub_100295D14()
{
  sub_1001BC5A8(&qword_1005249C8, &qword_100457080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044F530;
  v1 = MRAVEndpointVolumeDidChangeNotification;
  v2 = MRAVEndpointVolumeControlCapabilitiesDidChangeNotification;
  *(v0 + 32) = MRAVEndpointVolumeDidChangeNotification;
  *(v0 + 40) = v2;
  v6 = MRAVEndpointDeviceInfoDidChangeNotification;
  *(v0 + 48) = MRAVEndpointDeviceInfoDidChangeNotification;
  qword_100533398 = v0;
  v3 = v1;
  v4 = v2;

  return v6;
}

uint64_t sub_100295DB8()
{
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044F530;
  result = kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification;
  if (!kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v2;
  result = kMROriginNowPlayingPlaybackQueueChangedNotification;
  if (!kMROriginNowPlayingPlaybackQueueChangedNotification)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v3;
  result = kMRMediaRemoteOriginSupportedCommandsDidChangeNotification;
  if (kMRMediaRemoteOriginSupportedCommandsDidChangeNotification)
  {
    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 64) = result;
    *(v0 + 72) = v4;
    qword_1005333A8 = v0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_100295E60()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_100295EA4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_100295F3C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode;
  swift_beginAccess();
  v4 = type metadata accessor for RoutingMode();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100295FC4(uint64_t a1)
{
  v3 = type metadata accessor for RoutingMode();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_100296450(v7, &OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode, "[%s] setRoutingMode - value: %{public}s");
  v9 = *(v4 + 8);
  v9(a1, v3);
  return (v9)(v7, v3);
}

void (*sub_100296138(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = type metadata accessor for RoutingMode();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[11] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v11 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode;
  v4[14] = v9;
  v4[15] = v11;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[16] = v12;
  v4[17] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_1002962AC;
}

void sub_1002962AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 128);
  v3 = *(*a1 + 136);
  v5 = *(*a1 + 112);
  v6 = *(*a1 + 120);
  v7 = *(*a1 + 96);
  v8 = *(*a1 + 104);
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 88);
  v11 = *(*a1 + 72);
  if (a2)
  {
    v4(*(*a1 + 104), v5, v9);
    v4(v7, (v11 + v6), v9);
    swift_beginAccess();
    (*(v10 + 24))(v11 + v6, v8, v9);
    swift_endAccess();
    sub_100296450(v7, &OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode, "[%s] setRoutingMode - value: %{public}s");
    v12 = *(v10 + 8);
    v12(v7, v9);
  }

  else
  {
    v4(*(*a1 + 104), (v11 + v6), v9);
    swift_beginAccess();
    (*(v10 + 24))(v11 + v6, v5, v9);
    swift_endAccess();
    sub_100296450(v8, &OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode, "[%s] setRoutingMode - value: %{public}s");
    v12 = *(v10 + 8);
  }

  v12(v8, v9);
  v12(v5, v9);
  free(v5);
  free(v8);
  free(v7);

  free(v2);
}

void sub_100296450(uint64_t a1, uint64_t *a2, const char *a3)
{
  v5 = v3;
  v35 = *v3;
  v36 = a3;
  v6 = type metadata accessor for Logger();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v6);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoutingMode();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  swift_beginAccess();
  v15 = v10[2];
  v15(v13, &v3[v14], v9);
  sub_1002CDD70(&qword_1005249D0, &type metadata accessor for RoutingMode);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = v10[1];
  v17(v13, v9);
  if ((v16 & 1) == 0)
  {
    v33 = v15;
    v18 = sub_100028D40();
    (*(v38 + 16))(v37, v18, v6);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v34 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v39 = v32;
      *v21 = 136315394;
      v22 = _typeName(_:qualified:)();
      v31 = v19;
      v24 = sub_10002C9C8(v22, v23, &v39);
      v35 = v6;
      v25 = v24;

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v33(v13, &v5[v14], v9);
      sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      v17(v13, v9);
      v29 = sub_10002C9C8(v26, v28, &v39);

      *(v21 + 14) = v29;
      v30 = v31;
      _os_log_impl(&_mh_execute_header, v31, v34, v36, v21, 0x16u);
      swift_arrayDestroy();

      (*(v38 + 8))(v37, v35);
    }

    else
    {

      (*(v38 + 8))(v37, v6);
    }

    sub_1002A6FE8();
  }
}

uint64_t sub_10029685C(uint64_t a1)
{
  v2 = v1;
  v116 = *v2;
  v4 = type metadata accessor for HostedRoutingSourceSession(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = (v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v102 - v15;
  v17 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_sessions;
  swift_beginAccess();
  v18 = *(v2 + v17);

  LOBYTE(a1) = sub_100034B1C(a1, v18);

  if ((a1 & 1) == 0)
  {
    v110 = v5;
    v20 = sub_100028D40();
    v21 = v10 + 16;
    v112 = *(v10 + 16);
    v113 = v20;
    v112(v16);

    v22 = Logger.logObject.getter();
    v23 = v10;
    v24 = static os_log_type_t.info.getter();

    v111 = v24;
    v25 = os_log_type_enabled(v22, v24);
    v115 = v17;
    if (v25)
    {
      v26 = v23;
      v106 = v22;
      v107 = v21;
      v114 = v14;
      v27 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v118 = v104;
      *v27 = 136315394;
      v28 = _typeName(_:qualified:)();
      v30 = sub_10002C9C8(v28, v29, &v118);

      *(v27 + 4) = v30;
      v105 = v27;
      *(v27 + 12) = 2082;
      v31 = *(v2 + v17);
      v32 = *(v31 + 16);
      if (v32)
      {
        v103 = v16;
        v108 = v26;
        v109 = v9;
        v117 = _swiftEmptyArrayStorage;

        sub_1000089FC(0, v32, 0);
        v33 = v117;
        v34 = *(v110 + 80);
        v102[1] = v31;
        v35 = v31 + ((v34 + 32) & ~v34);
        v36 = *(v110 + 72);
        do
        {
          sub_1002CDCB4(v35, v8, type metadata accessor for HostedRoutingSourceSession);
          v37 = *v8;
          v38 = v8[1];

          sub_10002187C(v8, type metadata accessor for HostedRoutingSourceSession);
          v117 = v33;
          v40 = v33[2];
          v39 = v33[3];
          if (v40 >= v39 >> 1)
          {
            sub_1000089FC((v39 > 1), v40 + 1, 1);
            v33 = v117;
          }

          v33[2] = v40 + 1;
          v41 = &v33[2 * v40];
          v41[4] = v37;
          v41[5] = v38;
          v35 += v36;
          --v32;
        }

        while (v32);

        v17 = v115;
        v26 = v108;
        v9 = v109;
        v16 = v103;
      }

      v44 = Array.description.getter();
      v46 = v45;

      v47 = sub_10002C9C8(v44, v46, &v118);

      v48 = v105;
      *(v105 + 14) = v47;
      v49 = v106;
      _os_log_impl(&_mh_execute_header, v106, v111, "[%s] setSessions - value: %{public}s", v48, 0x16u);
      swift_arrayDestroy();

      v43 = *(v26 + 8);
      v43(v16, v9);
      v14 = v114;
    }

    else
    {

      v42 = *(v23 + 8);
      v42(v16, v9);
      v26 = v23;
      v43 = v42;
    }

    v50 = (v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements);
    v51 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements + 16);
    if (v51)
    {
      v52 = *v50;
      v53 = v50[1];
      (v112)(v14, v113, v9);
      v113 = v52;
      sub_1002D18E0(v52, v53, v51);

      v54 = Logger.logObject.getter();
      v55 = v14;
      v56 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v54, v56))
      {
        v57 = swift_slowAlloc();
        v109 = v9;
        v58 = v57;
        v112 = swift_slowAlloc();
        v118 = v112;
        *v58 = 136315394;
        v59 = _typeName(_:qualified:)();
        v114 = v55;
        v61 = sub_10002C9C8(v59, v60, &v118);
        v108 = v26;
        v62 = v61;

        *(v58 + 4) = v62;
        *(v58 + 12) = 2082;

        v63 = sub_1002998F0(v113, v53);
        v65 = v64;

        v66 = sub_10002C9C8(v63, v65, &v118);

        *(v58 + 14) = v66;
        _os_log_impl(&_mh_execute_header, v54, v56, "[%s] setSessions - consuming deferred elements: %{public}s", v58, 0x16u);
        swift_arrayDestroy();

        v67 = v109;
        v68 = v114;
      }

      else
      {

        v68 = v55;
        v67 = v9;
      }

      v43(v68, v67);
      v69 = *v50;
      v70 = v50[1];
      v71 = v50[2];
      v50[1] = 0;
      v50[2] = 0;
      *v50 = 0;
      sub_10029A0A4(v69, v70, v71);
      sub_1002CDC70(v69, v70, v71);
      v72 = (v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
      v73 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
      v74 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8);
      v75 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
      *v72 = v113;
      v72[1] = v53;
      v72[2] = v51;
      sub_10029A410(v73, v74, v75);
      sub_1002CDC70(v73, v74, v75);
      v17 = v115;
    }

    sub_10029F204();
    v76 = v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v77 = *(v76 + 1);
      ObjectType = swift_getObjectType();
      v79 = *(v2 + v17);
      v80 = *(v77 + 8);

      v80(v2, v79, ObjectType, v77);

      swift_unknownObjectRelease();
    }

    v81 = sub_100297768();
    v82 = v81;
    v83 = v81 + 64;
    v84 = 1 << v81[32];
    v85 = -1;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    v86 = v85 & *(v81 + 8);
    v87 = (v84 + 63) >> 6;

    for (i = 0; v86; result = )
    {
      v89 = i;
LABEL_26:
      v90 = __clz(__rbit64(v86));
      v86 &= v86 - 1;
      v91 = *(v82 + 7) + ((v89 << 10) | (16 * v90));
      v93 = *v91;
      v92 = *(v91 + 8);

      v93(v94);
    }

    while (1)
    {
      v89 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v89 >= v87)
      {

        v95 = *(v2 + v17);
        v96 = *(**(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore) + 272);

        v96(v97);

        v98 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource);
        v99 = *(v2 + v17);
        v100 = *(*v98 + 232);

        v100(v101);
      }

      v86 = *&v83[8 * v89];
      ++i;
      if (v86)
      {
        i = v89;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_100297140(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1000089FC(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 64;
    v6 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v26 = v1 + 72;
    v27 = v2;
    v28 = v1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v29 = v8;
      v30 = *(v1 + 36);
      v11 = *(*(v1 + 56) + 8 * v7);

      v13._countAndFlagsBits = sub_1002992B0(v12);
      String.append(_:)(v13);

      v14 = v4;
      v31 = v4;
      v15 = v1;
      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_1000089FC((v16 > 1), v17 + 1, 1);
        v14 = v31;
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = 538976288;
      v18[5] = 0xE400000000000000;
      v9 = 1 << *(v15 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v30 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_10000A16C(v7, v30, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_10000A16C(v7, v30, 0);
      }

LABEL_4:
      v8 = v29 + 1;
      v7 = v9;
      if (v29 + 1 == v27)
      {
        return v4;
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

void *sub_1002973A0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1000089FC(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 64;
    v6 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v26 = v1 + 72;
    v27 = v2;
    v28 = v1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v29 = *(v1 + 36);
      v11 = *(*(v1 + 56) + 8 * v7);

      v30 = sub_10028A218();
      v13 = v12;

      v14 = v4;
      v31 = v4;
      v15 = v1;
      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_1000089FC((v16 > 1), v17 + 1, 1);
        v14 = v31;
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = v30;
      v18[5] = v13;
      v9 = 1 << *(v15 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v28;
      v19 = *(v28 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v15;
      v4 = v14;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_10000A16C(v7, v29, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_10000A16C(v7, v29, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v27)
      {
        return v4;
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

uint64_t sub_1002975E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_sessions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_10029685C(v4);
}

void (*sub_100297648(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_sessions;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_1002976E4;
}

void sub_1002976E4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *v3;
  v7 = v2[4];
  if (a2)
  {

    sub_10029685C(v6);

    v8 = *v3;
  }

  else
  {
    sub_10029685C(v6);
  }

  free(v2);
}

id sub_100297780()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession;
  v3 = *(v0 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession);
  }

  else
  {
    v5 = sub_10029780C(v0);
    v6 = *(v0 + v2);
    *(v0 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_10029780C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  __chkstk_darwin(v2);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchQoS();
  v41 = *(v43 - 8);
  v5 = *(v41 + 64);
  __chkstk_darwin(v43);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100028D40();
  (*(v8 + 16))(v11, v12, v7);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v39 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    *&aBlock = v17;
    *v16 = 136315138;
    v18 = _typeName(_:qualified:)();
    v20 = sub_10002C9C8(v18, v19, &aBlock);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] discoverySession - initializing", v16, 0xCu);
    sub_100026A44(v17);

    v2 = v39;
  }

  (*(v8 + 8))(v11, v7);
  result = [objc_opt_self() discoverySessionWithEndpointFeatures:8];
  if (result)
  {
    v22 = result;
    v23 = swift_allocObject();
    swift_weakInit();
    v48 = sub_1002D1D5C;
    v49 = v23;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v47 = sub_10029360C;
    *(&v47 + 1) = &unk_1004C8130;
    v24 = _Block_copy(&aBlock);
    v25 = v22;

    v26 = [v25 addEndpointsAddedCallback:v24];
    _Block_release(v24);
    if (v26)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v47 = 0u;
    }

    sub_1000038A4(&aBlock, &qword_100522890, &qword_100450610);
    v27 = swift_allocObject();
    swift_weakInit();
    v48 = sub_1002D1D94;
    v49 = v27;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v47 = sub_10029360C;
    *(&v47 + 1) = &unk_1004C8158;
    v28 = _Block_copy(&aBlock);

    v29 = [v25 addEndpointsRemovedCallback:v28];
    _Block_release(v28);
    if (v29)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v47 = 0u;
    }

    sub_1000038A4(&aBlock, &qword_100522890, &qword_100450610);
    v30 = swift_allocObject();
    swift_weakInit();
    v48 = sub_1002D1DCC;
    v49 = v30;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v47 = sub_10029360C;
    *(&v47 + 1) = &unk_1004C8180;
    v31 = _Block_copy(&aBlock);

    v32 = [v25 addEndpointsModifiedCallback:v31];
    _Block_release(v31);
    if (v32)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      aBlock = 0u;
      v47 = 0u;
    }

    v33 = sub_1000038A4(&aBlock, &qword_100522890, &qword_100450610);
    v34 = (*(*a1 + 368))(v33);
    v48 = sub_1002D504C;
    v49 = a1;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v47 = sub_100003D98;
    *(&v47 + 1) = &unk_1004C81A8;
    v35 = _Block_copy(&aBlock);

    v36 = v40;
    static DispatchQoS.unspecified.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v37 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v35);
    (*(v44 + 8))(v37, v2);
    (*(v41 + 8))(v36, v43);

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100297FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(*result + 368);
    v23 = v11;
    v17 = result;
    v22 = v16();
    aBlock[4] = a2;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = a3;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    v21 = v10;
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v6 + 8))(v9, v5);
    (*(v23 + 8))(v14, v21);
  }

  return result;
}

unint64_t sub_1002982CC()
{
  v1 = 0x65766F637369642ELL;
  v2 = 0x7463656E6E6F632ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x7463656E6E6F632ELL;
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

uint64_t sub_100298360()
{
  if (*v0)
  {
    result = 0x636E79732ELL;
  }

  else
  {
    result = 0x65766F637369642ELL;
  }

  *v0;
  return result;
}

uint64_t sub_10029839C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 97) != v3)
  {
    v11 = sub_100028D40();
    (*(v6 + 16))(v10, v11, v5);
    swift_retain_n();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315394;
      v16 = _typeName(_:qualified:)();
      v18 = sub_10002C9C8(v16, v17, &v21);

      *(v14 + 4) = v18;
      *(v14 + 12) = 1026;
      v19 = *(v2 + 97);

      *(v14 + 14) = v19;

      _os_log_impl(&_mh_execute_header, v12, v13, "[%s] setMusicPushHandoffDisabled - value: %{BOOL,public}d", v14, 0x12u);
      sub_100026A44(v15);
    }

    else
    {
    }

    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_1002985D8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 98) != v3)
  {
    v11 = sub_100028D40();
    (*(v6 + 16))(v10, v11, v5);
    swift_retain_n();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315394;
      v16 = _typeName(_:qualified:)();
      v18 = sub_10002C9C8(v16, v17, &v21);

      *(v14 + 4) = v18;
      *(v14 + 12) = 1026;
      v19 = *(v2 + 98);

      *(v14 + 14) = v19;

      _os_log_impl(&_mh_execute_header, v12, v13, "[%s] setMusicPullHandoffDisabled - value: %{BOOL,public}d", v14, 0x12u);
      sub_100026A44(v15);
    }

    else
    {
    }

    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

void *sub_100298814()
{
  if ((*(v0 + 96) & 1) == 0)
  {
    v8 = [*(v0 + 80) outputDevices];
    if (!v8)
    {
      return _swiftEmptyArrayStorage;
    }

LABEL_9:
    v9 = v8;
    sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v10;
  }

  v1 = [*(v0 + 88) syncedOutputDevices];
  if (!v1)
  {
    v8 = [*(v0 + 80) outputDevices];
    if (!v8)
    {
      return _swiftEmptyArrayStorage;
    }

    goto LABEL_9;
  }

  v2 = v1;
  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = v3;
  if (v3 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    result = v3;
    if (v11)
    {
      return result;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  v5 = result;
  v6 = [*(v0 + 88) designatedGroupLeader];
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  if ([v6 supportsMultiplayer])
  {

    return v5;
  }

  else
  {

    sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
    result = swift_allocObject();
    *(result + 1) = xmmword_10044EBC0;
    result[4] = v7;
  }

  return result;
}

uint64_t sub_1002989C8()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + 32);

  v5 = *(v0 + 40);
  swift_unknownObjectRelease();
  v6 = *(v0 + 56);

  v7 = *(v0 + 72);

  return swift_deallocClassInstance();
}

void sub_100298A90(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1001BC5A8(&qword_100525C00, &unk_1004511A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v66 - v10;
  v12 = v2[10];
  v2[10] = a1;
  v13 = a1;
  v14 = [v12 outputDevices];
  if (v14)
  {
    v15 = v14;
    sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = 0;
  }

  v17 = [v13 outputDevices];
  if (!v17)
  {
    if (v16)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v18 = v17;
  sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v16)
  {
    if (v19)
    {
LABEL_12:

      goto LABEL_13;
    }

LABEL_16:
    v24 = [v12 discoveredIsPlaying];
    if (v24 == [v13 discoveredIsPlaying])
    {
      goto LABEL_56;
    }

    v76 = v12;
    v25 = sub_100015A78();
    sub_10001D9AC(v25, v9, &qword_100525C00, &unk_1004511A0);
    v26 = type metadata accessor for Logger();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v9, 1, v26) == 1)
    {
      sub_1000038A4(v9, &qword_100525C00, &unk_1004511A0);
    }

    else
    {
      v50 = v13;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        LODWORD(v75) = v52;
        v54 = v53;
        v74 = swift_slowAlloc();
        v77 = v74;
        *v54 = 136315394;
        v55 = _typeName(_:qualified:)();
        v57 = sub_10002C9C8(v55, v56, &v77);

        *(v54 + 4) = v57;
        *(v54 + 12) = 1024;
        v58 = [v50 discoveredIsPlaying];

        *(v54 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v51, v75, "[%s] updateWithEndpoint - updated isPlaying: %{BOOL}d", v54, 0x12u);
        sub_100026A44(v74);
      }

      else
      {
      }

      (*(v27 + 8))(v9, v26);
    }

    v12 = v76;
    if ((v2[12] & 1) == 0)
    {
      goto LABEL_56;
    }

    if (*(v2 + 16) == 3)
    {
      goto LABEL_56;
    }

    v65 = [v2[11] syncedOutputDevices];
    if (!v65)
    {
      goto LABEL_56;
    }

LABEL_55:

LABEL_56:
    return;
  }

  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = sub_1002BB218(v16, v19);

  if (v20)
  {
    goto LABEL_16;
  }

LABEL_13:
  v21 = sub_100015A78();
  sub_10001D9AC(v21, v11, &qword_100525C00, &unk_1004511A0);
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v11, 1, v22) == 1)
  {
    sub_1000038A4(v11, &qword_100525C00, &unk_1004511A0);
    if ((v2[12] & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  v28 = v13;
  v75 = v11;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v29, v30))
  {

    goto LABEL_46;
  }

  v73 = v30;
  v31 = swift_slowAlloc();
  v72 = swift_slowAlloc();
  v77 = v72;
  *v31 = 136315394;
  v32 = _typeName(_:qualified:)();
  v34 = sub_10002C9C8(v32, v33, &v77);

  *(v31 + 4) = v34;
  *(v31 + 12) = 2080;
  v35 = [v28 outputDevices];

  if (v35)
  {
    sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = v23;
    v68 = v31;
    if (v36 >> 62)
    {
LABEL_60:
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v69 = v29;
    v71 = v22;
    v76 = v12;
    if (v37)
    {
      v29 = 0;
      v22 = v36 & 0xC000000000000001;
      v74 = _swiftEmptyArrayStorage;
      v12 = &selRef_sinkWithCompletion_shouldContinue_;
      do
      {
        v38 = v29;
        while (1)
        {
          if (v22)
          {
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v29 = (&v38->isa + 1);
            if (__OFADD__(v38, 1))
            {
              goto LABEL_58;
            }
          }

          else
          {
            if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_59;
            }

            v39 = *(v36 + 8 * v38 + 32);
            v29 = (&v38->isa + 1);
            if (__OFADD__(v38, 1))
            {
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }
          }

          v40 = v39;
          v41 = [v40 uid];
          if (v41)
          {
            break;
          }

          v38 = (v38 + 1);
          if (v29 == v37)
          {
            goto LABEL_45;
          }
        }

        v42 = v41;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v44;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_10002AFD0(0, v74[2] + 1, 1, v74);
        }

        v46 = v74[2];
        v45 = v74[3];
        if (v46 >= v45 >> 1)
        {
          v74 = sub_10002AFD0((v45 > 1), v46 + 1, 1, v74);
        }

        v47 = v74;
        v74[2] = v46 + 1;
        v48 = &v47[2 * v46];
        v49 = v67;
        v48[4] = v43;
        v48[5] = v49;
      }

      while (v29 != v37);
    }

    else
    {
      v74 = _swiftEmptyArrayStorage;
    }

LABEL_45:

    v59 = Array.description.getter();
    v61 = v60;

    v62 = sub_10002C9C8(v59, v61, &v77);

    v64 = v68;
    v63 = v69;
    *(v68 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v63, v73, "[%s] updateWithEndpoint - updated topology: %s", v64, 0x16u);
    swift_arrayDestroy();

    v12 = v76;
    v23 = v70;
    v22 = v71;
LABEL_46:
    (*(v23 + 8))(v75, v22);
    if ((v2[12] & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_47:
    if (*(v2 + 16) == 3)
    {
      goto LABEL_56;
    }

    v65 = [v2[11] syncedOutputDevices];
    if (!v65)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  __break(1u);
}

Swift::Int sub_100299808()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100299850()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 72);
  return String.hash(into:)();
}

Swift::Int sub_10029985C()
{
  Hasher.init(_seed:)();
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 72);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002998C4(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 64) == *(*a2 + 64) && *(*a1 + 72) == *(*a2 + 72))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_1002998F0(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(39);

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    a1 = 7104878;
    v4 = 0xE300000000000000;
  }

  v5._countAndFlagsBits = a1;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x656369766564202CLL;
  v6._object = 0xEB00000000203A73;
  String.append(_:)(v6);
  v7._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD00000000000004BLL;
}

void sub_1002999FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v5 = *(a4 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (a4 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      String.hash(into:)();

      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

Swift::Int sub_100299AA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  sub_1002999FC(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int sub_100299B0C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  sub_1002999FC(v5, v1, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_100299B70(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_100034D74(v4, v6);
}

void sub_100299BF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v3 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionIdentifier);
  swift_beginAccess();
  v13 = *v12 == a1 && v12[1] == a2;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v14 = sub_100028D40();
    (*(v8 + 16))(v11, v14, v7);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = v31;
      *v17 = 136315394;
      v18 = _typeName(_:qualified:)();
      v20 = sub_10002C9C8(v18, v19, &v32);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      v21 = *v12;
      v22 = v12[1];

      v23 = sub_10002C9C8(v21, v22, &v32);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%s] setActiveSessionIdentifier - value: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    (*(v8 + 8))(v11, v7);
    v24 = v3 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 1);
      ObjectType = swift_getObjectType();
      v28 = *v12;
      v27 = v12[1];
      v29 = *(v25 + 24);

      v29(v3, v28, v27, ObjectType, v25);

      swift_unknownObjectRelease();
    }

    sub_1002A5EA8();
    sub_1002A9524();
  }
}

uint64_t sub_100299EFC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionIdentifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_100299BF8(v6, v7);
}

void (*sub_100299F70(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionIdentifier;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_10029A010;
}

void sub_10029A010(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  v10 = v2[5];
  if (a2)
  {

    sub_100299BF8(v9, v8);

    v11 = v2[4];
  }

  else
  {
    sub_100299BF8(v9, v8);
  }

  free(v2);
}

uint64_t sub_10029A0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  v11 = *(v10 + 64);
  result = __chkstk_darwin(v9);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v4 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements);
  v16 = *(v4 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements + 16);
  if (!a3)
  {
    if (!v16)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v16)
  {
    v18 = *v15;
    v17 = v15[1];
    if (a2)
    {
      if (!v17)
      {
        goto LABEL_16;
      }

      v19 = v18 == a1 && v17 == a2;
      if (v19 || (v20 = *v15, v21 = v15[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
LABEL_10:
        v22 = sub_100034D74(a3, v16);
        sub_1002D18E0(v18, v17, v16);

        if (v22)
        {
          return result;
        }

        goto LABEL_16;
      }
    }

    else if (!v17)
    {
      goto LABEL_10;
    }

    sub_1002D18E0(v18, v17, v16);
  }

LABEL_16:
  v23 = sub_100028D40();
  v25 = v39;
  v24 = v40;
  (*(v40 + 16))(v14, v23, v39);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v28 = 136315394;
    v29 = _typeName(_:qualified:)();
    v31 = sub_10002C9C8(v29, v30, &v41);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2082;
    if (v15[2])
    {
      v32 = *v15;
      v33 = v15[1];

      v34 = sub_1002998F0(v32, v33);
      v36 = v35;

      v25 = v39;
    }

    else
    {
      v36 = 0xE300000000000000;
      v34 = 7104878;
    }

    v37 = sub_10002C9C8(v34, v36, &v41);

    *(v28 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "[%s] setDeferredActiveSessionElements - value: %{public}s", v28, 0x16u);
    swift_arrayDestroy();

    return (*(v40 + 8))(v14, v25);
  }

  else
  {

    return (*(v24 + 8))(v14, v25);
  }
}

uint64_t sub_10029A410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for Logger();
  v37 = *(v9 - 8);
  v10 = *(v37 + 64);
  result = __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v4 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v15 = *(v4 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
  if (!a3)
  {
    if (!v15)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (v15)
  {
    v17 = *v14;
    v16 = v14[1];
    if (!a2)
    {
      v36 = (v4 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
      if (!v16)
      {
        goto LABEL_10;
      }

LABEL_15:
      sub_1002D18E0(v17, v16, v15);

      v14 = v36;
      goto LABEL_16;
    }

    if (v16)
    {
      v36 = (v4 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
      v18 = v17 == a1 && v16 == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_10:
        v19 = sub_100034D74(a3, v15);
        sub_1002D18E0(v17, v16, v15);

        v14 = v36;
        if (v19)
        {
          return result;
        }

        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v20 = v14;
  v21 = sub_100028D40();
  v22 = v37;
  (*(v37 + 16))(v13, v21, v9);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v36 = v9;
    v25 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = _typeName(_:qualified:)();
    v28 = sub_10002C9C8(v26, v27, &v38);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    if (v20[2])
    {
      v30 = *v20;
      v29 = v20[1];

      v31 = sub_1002998F0(v30, v29);
      v33 = v32;
    }

    else
    {
      v33 = 0xE300000000000000;
      v31 = 7104878;
    }

    v34 = sub_10002C9C8(v31, v33, &v38);

    *(v25 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "[%s] setActiveSessionElements - value: %{public}s", v25, 0x16u);
    swift_arrayDestroy();

    (*(v37 + 8))(v13, v36);
  }

  else
  {

    (*(v22 + 8))(v13, v9);
  }

  return sub_10029F204();
}

char *sub_10029A7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  v15 = sub_1002CD728(a1, a2, a3, a4, a5, a6);
  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_10029A840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1002CB7B8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_10000698C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1002CBC28();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1001DEE44(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10029A938(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = *v4;
    v9 = sub_10000698C(a3, a4);
    LOBYTE(v8) = v10;

    if (v8)
    {
      v12 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v5;
      v19 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002CBD98();
        v14 = v19;
      }

      v15 = *(*(v14 + 48) + 16 * v9 + 8);

      result = sub_1001DEE44(v9, v14);
      *v5 = v14;
    }
  }

  else
  {
    v17 = *v4;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_1002CB934(a3, a4, v18, *&a1);

    *v4 = v20;
  }

  return result;
}

uint64_t sub_10029AA24()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline;
  v3 = *(**(v0 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline) + 232);

  v3(v0, &off_1004C7B58);

  v4 = *(v0 + 16);

  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  v7 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_routingMode;
  v8 = type metadata accessor for RoutingMode();
  v9 = *(*(v8 - 8) + 8);
  v9(v1 + v7, v8);
  v9(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_overrideRoutingMode, v8);
  v10 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_sessions);

  v11 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalSessionObservers);

  v12 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___internalFavoriteStatusObservers);

  sub_1001DFBCC(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate);

  v13 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___itemTypes);

  v14 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources);

  v15 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints);

  v16 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals);

  v17 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore);

  v18 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionIdentifier + 8);

  v19 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource);

  sub_1002CDC70(*(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements + 8), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_deferredActiveSessionElements + 16));
  sub_1002CDC70(*(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 8), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16));
  v20 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___pendingInteractions);

  sub_10028AE60(*(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 8), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 16), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 24), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 32), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 40), *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_processingInteraction + 48));
  v21 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___ongoingContinousControls);

  v22 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_musicFavoriteStatusDataSource);

  v23 = *(v1 + v2);

  v24 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delayedDisableDiscoveryToken + 8);

  return v1;
}

uint64_t sub_10029AC84()
{
  sub_10029AA24();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10029ACDC(uint64_t a1)
{
  v2 = v1;
  v117 = *v1;
  v121 = type metadata accessor for Logger();
  v4 = *(v121 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v121);
  v120 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for RoutingMode();
  v7 = *(v127 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v127);
  v123 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v126 = &v112 - v11;
  v12 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___itemTypes);
  *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___itemTypes) = a1;

  v13 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
  swift_beginAccess();
  v131 = v2;
  v132 = v13;
  v14 = *(v2 + v13);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 64);
  v130 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline;
  v19 = (v16 + 63) >> 6;
  v134 = a1 + 56;
  v125 = enum case for RoutingMode.disabled(_:);
  v124 = (v7 + 104);
  v122 = (v7 + 8);
  v119 = (v4 + 16);
  v118 = (v4 + 8);
  v129 = v14;
  swift_bridgeObjectRetain_n();

  v20 = 0;
  *&v21 = 136315138;
  v116 = v21;
  v133 = a1;
  v128 = v19;
  while (v18)
  {
LABEL_10:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = *(v129 + 48) + 24 * (v23 | (v20 << 6));
    v26 = *v24;
    v25 = *(v24 + 8);
    v27 = *(v24 + 16);
    v135[0] = *v24;
    v135[1] = v25;
    v136 = v27;
    if (*(a1 + 16))
    {
      v28 = *(a1 + 40);
      sub_10002CBE8(v26, v25, v27);
      sub_100036860();
      v29 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(a1 + 32);
      v31 = v29 & ~v30;
      if ((*(v134 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        v32 = ~v30;
        sub_1000360C4();
        do
        {
          v33 = *(v133 + 48) + 24 * v31;
          v34 = *(v33 + 16);
          v137 = *v33;
          v138 = v34;
          v29 = dispatch thunk of static Equatable.== infix(_:_:)();
          if (v29)
          {
            goto LABEL_18;
          }

          v31 = (v31 + 1) & v32;
        }

        while (((*(v134 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0);
      }
    }

    else
    {
      v29 = sub_10002CBE8(v26, v25, v27);
    }

    v35 = *(v131 + v130);
    v36 = *((*(*v35 + 112))(v29) + 24);

    if (v36)
    {
      goto LABEL_18;
    }

    if (static HostedItemType.__derived_enum_equals(_:_:)(v26, v25, v27, 0, 0, 3))
    {
      sub_10002349C(v26, v25, v27);
      v37 = *(v131 + v132);
      if (!*(v37 + 16))
      {
        goto LABEL_66;
      }

      v38 = *(v131 + v132);

      v39 = sub_100036134(0, 0, 3);
      if ((v40 & 1) == 0)
      {
        goto LABEL_67;
      }

      v41 = *(*(v37 + 56) + 8 * v39);

      v43 = v126;
      (*(*v41 + 168))(v42);
      v44 = v123;
      v45 = v127;
      v115 = *v124;
      (v115)(v123, v125, v127);
      sub_1002CDD70(&qword_1005249D0, &type metadata accessor for RoutingMode);
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *v122;
      (*v122)(v44, v45);
      v47(v43, v45);
      if (v46)
      {

        goto LABEL_19;
      }

      v60 = sub_100028D40();
      v61 = v120;
      v62 = v121;
      (*v119)(v120, v60, v121);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v135[0] = v66;
        *v65 = v116;
        v67 = _typeName(_:qualified:)();
        v69 = sub_10002C9C8(v67, v68, v135);

        *(v65 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v63, v64, "[%s] updateWithItemTypes - disable routing mode for .standard", v65, 0xCu);
        sub_100026A44(v66);

        (*v118)(v120, v121);
      }

      else
      {

        (*v118)(v61, v62);
      }

      a1 = v133;
      v19 = v128;
      v70 = v126;
      (v115)(v126, v125, v127);
      (*(*v41 + 176))(v70);
    }

    else
    {
      v48 = v131;
      v49 = v132;
      swift_beginAccess();
      v50 = *(v48 + v49);
      v51 = sub_100036134(v26, v25, v27);
      if ((v52 & 1) == 0)
      {
        swift_endAccess();
LABEL_18:
        sub_10002349C(v26, v25, v27);
        goto LABEL_19;
      }

      v115 = v51;
      v53 = *(v48 + v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = *(v48 + v49);
      *&v137 = v55;
      *(v48 + v49) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002CBF00();
        v55 = v137;
      }

      v113 = v55;
      v56 = v115;
      sub_10002349C(*(*(v55 + 48) + 24 * v115), *(*(v55 + 48) + 24 * v115 + 8), *(*(v55 + 48) + 24 * v115 + 16));
      v114 = *(*(v113 + 56) + 8 * v56);
      v57 = v56;
      v58 = v113;
      sub_1002CB5EC(v57, v113);
      *(v48 + v49) = v58;
      swift_endAccess();
      sub_10002349C(v26, v25, v27);
      v59 = *(*v35 + 232);

      v59();

LABEL_19:
      a1 = v133;
      v19 = v128;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      goto LABEL_10;
    }
  }

  v71 = 1 << *(a1 + 32);
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & *(a1 + 56);
  v74 = (v71 + 63) >> 6;

  v75 = 0;
  v76 = v131;
  while (2)
  {
    v77 = v132;
    if (!v73)
    {
      goto LABEL_39;
    }

LABEL_43:
    v79 = __clz(__rbit64(v73));
    v73 &= v73 - 1;
    v80 = *(a1 + 48) + 24 * (v79 | (v75 << 6));
    v82 = *v80;
    v81 = *(v80 + 8);
    v83 = *(v80 + 16);
    v84 = *(*(v76 + v77) + 16);
    sub_10002CBE8(*v80, v81, *(v80 + 16));
    if (v84)
    {

      sub_100036134(v82, v81, v83);
      v86 = v85;

      if (v86)
      {
        sub_10002349C(v82, v81, v83);
        continue;
      }
    }

    break;
  }

  type metadata accessor for RoutingItemDataSource();
  v87 = *(v76 + v130);
  sub_10002CBE8(v82, v81, v83);

  v88 = v76;
  v89 = sub_100279470();
  swift_unknownObjectRetain();
  v128 = sub_100287C20(v82, v81, v83, v87, v88, &off_1004C7B78, v89);
  v90 = v132;
  swift_beginAccess();
  v91 = *(v88 + v90);
  v92 = swift_isUniquelyReferenced_nonNull_native();
  *&v137 = *(v88 + v90);
  v93 = v137;
  *(v88 + v90) = 0x8000000000000000;
  v94 = sub_100036134(v82, v81, v83);
  v96 = *(v93 + 16);
  v97 = (v95 & 1) == 0;
  v98 = __OFADD__(v96, v97);
  v99 = v96 + v97;
  if (v98)
  {
    goto LABEL_64;
  }

  v100 = v95;
  if (*(v93 + 24) >= v99)
  {
    if (v92)
    {
      goto LABEL_50;
    }

    v106 = v94;
    sub_1002CBF00();
    v94 = v106;
    if ((v100 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_51:
    v102 = v94;
    sub_10002349C(v82, v81, v83);
    v103 = v137;
    v104 = *(v137 + 56);
    v105 = *(v104 + 8 * v102);
    *(v104 + 8 * v102) = v128;
  }

  else
  {
    sub_1002CB300(v99, v92);
    v94 = sub_100036134(v82, v81, v83);
    if ((v100 & 1) != (v101 & 1))
    {
      goto LABEL_68;
    }

LABEL_50:
    if (v100)
    {
      goto LABEL_51;
    }

LABEL_53:
    v103 = v137;
    *(v137 + 8 * (v94 >> 6) + 64) |= 1 << v94;
    v107 = v103[6] + 24 * v94;
    *v107 = v82;
    *(v107 + 8) = v81;
    *(v107 + 16) = v83;
    *(v103[7] + 8 * v94) = v128;
    v108 = v103[2];
    v98 = __OFADD__(v108, 1);
    v109 = v108 + 1;
    if (v98)
    {
      goto LABEL_65;
    }

    v103[2] = v109;
  }

  v76 = v131;
  v77 = v132;
  *(v131 + v132) = v103;
  swift_endAccess();
  a1 = v133;
  if (v73)
  {
    goto LABEL_43;
  }

LABEL_39:
  while (1)
  {
    v78 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v78 >= v74)
    {

      v110 = *(sub_1002982C0() + 2);

      if (v110)
      {
        sub_1002AA57C();
      }

      else if (!*(*(v76 + v77) + 16))
      {
        sub_1002AB230();
      }
    }

    v73 = *(v134 + 8 * v78);
    ++v75;
    if (v73)
    {
      v75 = v78;
      goto LABEL_43;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10029B854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for RoutingMode();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
  swift_beginAccess();
  v15 = *(v4 + v14);
  if (*(v15 + 16))
  {

    v16 = sub_100036134(a2, a3, a4);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);

      (*(v10 + 16))(v13, a1, v9);
      (*(*v18 + 176))(v13);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10029B9DC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HostedRoutingItem(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HostedRoutingSourceSession(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(*v2 + 440);
  v39 = v2;
  result = v16(v13);
  v40 = *(result + 16);
  if (!v40)
  {
    goto LABEL_25;
  }

  v18 = 0;
  v19 = result + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v37 = v19;
  v38 = v11;
  v42 = result;
  while (2)
  {
    if (v18 >= *(result + 16))
    {
LABEL_28:
      __break(1u);
      return result;
    }

    v41 = v18 + 1;
    result = sub_1002CDCB4(v19 + *(v11 + 72) * v18, v15, type metadata accessor for HostedRoutingSourceSession);
    v20 = 0;
    v21 = v15[4];
    v22 = *(v21 + 16);
    while (v22 != v20)
    {
      if (v20 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      sub_1002CDCB4(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20++, v9, type metadata accessor for HostedRoutingItem);
      v23 = sub_1002589A8(a1, a2);
      result = sub_10002187C(v9, type metadata accessor for HostedRoutingItem);
      if (v23)
      {
        goto LABEL_24;
      }
    }

    v24 = v15[3];
    if (!v24)
    {
      sub_10002187C(v15, type metadata accessor for HostedRoutingSourceSession);
      result = v42;
      goto LABEL_21;
    }

    v25 = v15[2];
    v26 = sub_100034D68();
    v27 = v42;
    if (!v26[2] || (v28 = sub_10000698C(v25, v24), (v29 & 1) == 0))
    {

LABEL_17:
      sub_10002187C(v15, type metadata accessor for HostedRoutingSourceSession);
      goto LABEL_20;
    }

    v30 = *(v26[7] + 8 * v28);

    if (*(v30 + 16) != 2 || (v31 = [*(v30 + 88) designatedGroupLeader]) == 0)
    {
      sub_10002187C(v15, type metadata accessor for HostedRoutingSourceSession);

      goto LABEL_20;
    }

    v32 = v31;
    if (([v31 supportsMultiplayer] & 1) == 0)
    {
      v33 = String._bridgeToObjectiveC()();
      v34 = [v32 containsUID:v33];

      if (v34)
      {
LABEL_24:

        v35 = *v15;
        v36 = v15[1];

        sub_10002187C(v15, type metadata accessor for HostedRoutingSourceSession);
        return v35;
      }

      goto LABEL_17;
    }

    sub_10002187C(v15, type metadata accessor for HostedRoutingSourceSession);

LABEL_20:
    result = v27;
LABEL_21:
    v18 = v41;
    v19 = v37;
    v11 = v38;
    if (v41 != v40)
    {
      continue;
    }

    break;
  }

LABEL_25:

  return 0;
}

uint64_t sub_10029BE28@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_10029BE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v400 = a3;
  v393 = a2;
  v395 = *v3;
  v397 = type metadata accessor for RoutingSessionConfiguration.Attribution();
  v396 = *(v397 - 8);
  v5 = *(v396 + 64);
  __chkstk_darwin(v397);
  v7 = &v369 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v398 = type metadata accessor for RoutingEvent(0);
  v8 = *(*(v398 - 8) + 64);
  __chkstk_darwin(v398);
  v10 = &v369 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = type metadata accessor for RoutingControl.Target();
  v382 = *(v383 - 8);
  v11 = *(v382 + 64);
  __chkstk_darwin(v383);
  v407 = &v369 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = type metadata accessor for RoutingControl.RoutingControlType();
  v380 = *(v381 - 1);
  v13 = v380[8];
  __chkstk_darwin(v381);
  v379 = &v369 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v392 = type metadata accessor for RoutingControl();
  v405 = *(v392 - 8);
  v15 = *(v405 + 64);
  v16 = __chkstk_darwin(v392);
  v387 = &v369 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v410 = &v369 - v18;
  v391 = type metadata accessor for DispatchPredicate();
  v390 = *(v391 - 8);
  v19 = *(v390 + 64);
  __chkstk_darwin(v391);
  v389 = (&v369 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for HostedRoutingItem(0);
  v408 = *(v21 - 8);
  isa = v408[8].isa;
  v23 = __chkstk_darwin(v21 - 8);
  v388 = (&v369 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v23);
  v394 = (&v369 - v26);
  __chkstk_darwin(v25);
  v406 = (&v369 - v27);
  v28 = type metadata accessor for Logger();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v373 = &v369 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v375 = &v369 - v34;
  v35 = __chkstk_darwin(v33);
  v376 = &v369 - v36;
  v37 = __chkstk_darwin(v35);
  v378 = &v369 - v38;
  __chkstk_darwin(v37);
  v40 = &v369 - v39;
  v41 = *a1;
  v42 = *(a1 + 8);
  v43 = sub_100028D40();
  v404 = v29;
  v44 = *(v29 + 16);
  v384 = v43;
  v386 = v29 + 16;
  v385 = v44;
  (v44)(v40);
  v45 = *(a1 + 32);
  v418 = *(a1 + 16);
  v419 = v45;
  v420 = *(a1 + 48);

  sub_10026D080(&v418, &v411);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  sub_100238E4C(&v418);
  v48 = os_log_type_enabled(v46, v47);
  v401 = v10;
  v399 = v7;
  v403 = v42;
  v377 = v41;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v374 = swift_slowAlloc();
    *&v415 = v374;
    *v49 = 136315650;
    v50 = _typeName(_:qualified:)();
    v52 = sub_10002C9C8(v50, v51, &v415);

    *(v49 + 4) = v52;
    *(v49 + 12) = 2082;
    *(v49 + 14) = sub_10002C9C8(v41, v42, &v415);
    *(v49 + 22) = 2082;
    v53 = *(a1 + 16);
    v411 = *a1;
    v412 = v53;
    v413 = *(a1 + 32);
    v414 = *(a1 + 48);
    sub_1002856A4();
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = sub_10002C9C8(v54, v55, &v415);

    *(v49 + 24) = v56;
    _os_log_impl(&_mh_execute_header, v46, v47, "[%s] handleInteractionForConfiguration<%{public}s> - interaction: %{public}s", v49, 0x20u);
    swift_arrayDestroy();
  }

  v57 = *(v404 + 8);
  v58 = v57(v40, v28);
  v59 = (*(*v409 + 368))(v58);
  sub_1001BC5A8(&qword_1005250D8, &unk_100457600);
  v60 = sub_10033D5FC();
  v61 = swift_allocObject();
  *(v61 + 16) = v59;
  *(v61 + 24) = v60;
  v62 = v410;
  v63 = v407;
  v402 = a1;
  if (v420 <= 4u)
  {
    v381 = v57;
    v97 = v419;
    v407 = *(&v418 + 1);
    v98 = *(&v419 + 1);
    v405 = v418;
    if (v420 >= 3u)
    {
      if (v420 != 3)
      {
        goto LABEL_55;
      }

      v370 = v28;
      sub_10026D080(&v418, &v411);
      v372 = v60;

      v387 = v59;
      v109 = sub_100037234();
      if ((v97 != *v109 || v98 != *(v109 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        *&v411 = 0;
        *(&v411 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(110);
        v364._countAndFlagsBits = 91;
        v364._object = 0xE100000000000000;
        String.append(_:)(v364);
        v365._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v365);

        v366._object = 0x800000010043EB80;
        v366._countAndFlagsBits = 0xD000000000000024;
        String.append(_:)(v366);
        v367._countAndFlagsBits = v377;
        v367._object = v403;
        String.append(_:)(v367);
        v368._countAndFlagsBits = 0xD000000000000045;
        v368._object = 0x800000010043EBF0;
        String.append(_:)(v368);
        goto LABEL_176;
      }

      v110 = sub_10002CC04();
      v111 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
      v112 = v409;
      swift_beginAccess();
      v113 = *(v112 + v111);
      v114 = v113 + 64;
      v115 = 1 << *(v113 + 32);
      if (v115 < 64)
      {
        v116 = ~(-1 << v115);
      }

      else
      {
        v116 = -1;
      }

      v117 = v116 & *(v113 + 64);
      v118 = (v115 + 63) >> 6;
      v410 = (v110 + 56);
      swift_bridgeObjectRetain_n();
      v119 = 0;
      v374 = v61;
      v371 = v59;
      v388 = v113;
      while (v117)
      {
LABEL_38:
        v121 = __clz(__rbit64(v117));
        v117 &= v117 - 1;
        v122 = *(*(v113 + 56) + ((v119 << 9) | (8 * v121)));
        v123 = *(v122 + 24);
        v59 = *(v122 + 32);
        v124 = *(v122 + 40);
        *&v411 = v123;
        *(&v411 + 1) = v59;
        LOBYTE(v412) = v124;
        if (*(v110 + 16))
        {
          v125 = *(v110 + 40);
          v406 = v122;

          v392 = v59;
          LODWORD(v393) = v124;
          sub_10002CBE8(v123, v59, v124);
          sub_100036860();
          v126 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v127 = -1 << *(v110 + 32);
          v59 = v126 & ~v127;
          if ((*&v410[(v59 >> 3) & 0xFFFFFFFFFFFFFF8] >> v59))
          {
            v128 = ~v127;
            sub_1000360C4();
            while (1)
            {
              v129 = *(v110 + 48) + 24 * v59;
              v130 = *(v129 + 16);
              v415 = *v129;
              LOBYTE(v416) = v130;
              if (dispatch thunk of static Equatable.== infix(_:_:)())
              {
                break;
              }

              v59 = (v59 + 1) & v128;
              if (((*&v410[(v59 >> 3) & 0xFFFFFFFFFFFFFF8] >> v59) & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            v131 = sub_10002349C(v123, v392, v393);
            v132 = (*(*v406 + 216))(v131);
            v133 = 0;
            v134 = *(v132 + 16);
            v59 = v371;
            while (1)
            {
              if (v134 == v133)
              {

                goto LABEL_44;
              }

              v135 = v394;
              if (v133 >= *(v132 + 16))
              {
                goto LABEL_168;
              }

              sub_1002CDCB4(v132 + ((LOBYTE(v408[10].isa) + 32) & ~LOBYTE(v408[10].isa)) + v408[9].isa * v133, v394, type metadata accessor for HostedRoutingItem);
              v136 = *v135 == v405 && v135[1] == v407;
              if (v136)
              {
                break;
              }

              ++v133;
              v137 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v138 = v135;
              v139 = v137;
              sub_10002187C(v138, type metadata accessor for HostedRoutingItem);
              if (v139)
              {
                goto LABEL_139;
              }
            }

            sub_10002187C(v135, type metadata accessor for HostedRoutingItem);
LABEL_139:

            v301 = v376;
            v302 = v370;
            v385(v376, v384, v370);
            v303 = v403;

            v228 = v406;

            v304 = Logger.logObject.getter();
            v305 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v304, v305))
            {
              v306 = swift_slowAlloc();
              *&v411 = swift_slowAlloc();
              *v306 = 136315650;
              v307 = _typeName(_:qualified:)();
              v309 = sub_10002C9C8(v307, v308, &v411);

              *(v306 + 4) = v309;
              *(v306 + 12) = 2082;
              *(v306 + 14) = sub_10002C9C8(v377, v303, &v411);
              *(v306 + 22) = 2082;
              *&v415 = v228;
              type metadata accessor for RoutingItemDataSource();
              sub_1002CDD70(&qword_1005250E0, type metadata accessor for RoutingItemDataSource);
              v310 = dispatch thunk of CustomStringConvertible.description.getter();
              v312 = sub_10002C9C8(v310, v311, &v411);

              *(v306 + 24) = v312;
              _os_log_impl(&_mh_execute_header, v304, v305, "[%s] handleInteractionForConfiguration<%{public}s> - delegating to data source: %{public}s", v306, 0x20u);
              swift_arrayDestroy();

              v313 = v301;
              v314 = v370;
            }

            else
            {

              v313 = v301;
              v314 = v302;
            }

            v381(v313, v314);
            v60 = v372;
            v107 = v409;
            v61 = v374;
            v244 = type metadata accessor for RoutingItemDataSource();
            v241 = 0;
            v243 = 0;
LABEL_143:
            *(&v412 + 1) = v244;
            *&v413 = &off_1004C7638;
            *&v411 = v228;
            goto LABEL_162;
          }

LABEL_43:

          sub_10002349C(v123, v392, v393);
LABEL_44:
          v113 = v388;
        }
      }

      while (1)
      {
        v120 = v119 + 1;
        if (__OFADD__(v119, 1))
        {
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        if (v120 >= v118)
        {
          break;
        }

        v117 = *(v114 + 8 * v120);
        ++v119;
        if (v117)
        {
          v119 = v120;
          goto LABEL_38;
        }
      }

      v208 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v209 = swift_allocError();
      (*(*(v208 - 8) + 104))(v210, enum case for InternalRoutingError.itemNotFound(_:), v208);
      v211 = MRDFastSyncGroupSessionState.rawValue.getter(v209, 0, 0);
      sub_10026CEA0(v211, v212, v213, v214, 1, &v411, 0.0);
      v215 = v389;
      v216 = v387;
      *v389 = v387;
      v217 = v390;
      v218 = v391;
      (*(v390 + 104))(v215, enum case for DispatchPredicate.onQueue(_:), v391);
      v185 = v216;
      LOBYTE(v209) = _dispatchPreconditionTest(_:)();
      (*(v217 + 8))(v215, v218);
      if ((v209 & 1) == 0)
      {
        goto LABEL_171;
      }
    }

    else
    {
      sub_10026D080(&v418, &v411);

      v387 = v59;
      v99 = sub_100037234();
      if (v97 == *v99 && v98 == *(v99 + 1))
      {
      }

      else
      {
        v141 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v141 & 1) == 0)
        {

          *(&v412 + 1) = type metadata accessor for HostedRoutingSessionDataSource();
          *&v413 = &off_1004C7B88;
          v107 = v409;
LABEL_103:
          *&v411 = v107;
          goto LABEL_104;
        }
      }

      v370 = v28;
      v374 = v61;
      v372 = v60;
      v142 = sub_10002CC04();
      v143 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
      v144 = v409;
      swift_beginAccess();
      v145 = *(v144 + v143);
      v146 = v145 + 64;
      v147 = 1 << *(v145 + 32);
      if (v147 < 64)
      {
        v148 = ~(-1 << v147);
      }

      else
      {
        v148 = -1;
      }

      v149 = v148 & *(v145 + 64);
      v150 = (v147 + 63) >> 6;
      v410 = (v142 + 56);
      swift_bridgeObjectRetain_n();
      v151 = 0;
      v371 = v59;
      v388 = v145;
      while (v149)
      {
LABEL_66:
        v153 = __clz(__rbit64(v149));
        v149 &= v149 - 1;
        v154 = *(*(v145 + 56) + ((v151 << 9) | (8 * v153)));
        v156 = *(v154 + 24);
        v155 = *(v154 + 32);
        v157 = *(v154 + 40);
        *&v411 = v156;
        *(&v411 + 1) = v155;
        LOBYTE(v412) = v157;
        if (*(v142 + 16))
        {
          v158 = *(v142 + 40);
          v394 = v154;
          v159 = v155;

          v392 = v159;
          LODWORD(v393) = v157;
          sub_10002CBE8(v156, v159, v157);
          sub_100036860();
          v160 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v161 = -1 << *(v142 + 32);
          v59 = v160 & ~v161;
          if ((*&v410[(v59 >> 3) & 0xFFFFFFFFFFFFFF8] >> v59))
          {
            v162 = ~v161;
            sub_1000360C4();
            while (1)
            {
              v163 = *(v142 + 48) + 24 * v59;
              v164 = *(v163 + 16);
              v415 = *v163;
              LOBYTE(v416) = v164;
              if (dispatch thunk of static Equatable.== infix(_:_:)())
              {
                break;
              }

              v59 = (v59 + 1) & v162;
              if (((*&v410[(v59 >> 3) & 0xFFFFFFFFFFFFFF8] >> v59) & 1) == 0)
              {
                goto LABEL_71;
              }
            }

            v165 = sub_10002349C(v156, v392, v393);
            v166 = (*(*v394 + 216))(v165);
            v167 = 0;
            v168 = *(v166 + 16);
            v59 = v371;
            while (1)
            {
              if (v168 == v167)
              {

                goto LABEL_72;
              }

              v169 = v406;
              if (v167 >= *(v166 + 16))
              {
                goto LABEL_166;
              }

              sub_1002CDCB4(v166 + ((LOBYTE(v408[10].isa) + 32) & ~LOBYTE(v408[10].isa)) + v408[9].isa * v167, v406, type metadata accessor for HostedRoutingItem);
              if (*v169 == v405 && v169[1] == v407)
              {
                break;
              }

              ++v167;
              v171 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v172 = v169;
              v173 = v171;
              sub_10002187C(v172, type metadata accessor for HostedRoutingItem);
              if (v173)
              {
                goto LABEL_97;
              }
            }

            sub_10002187C(v169, type metadata accessor for HostedRoutingItem);
LABEL_97:

            v225 = v378;
            v226 = v370;
            v385(v378, v384, v370);
            v227 = v403;

            v228 = v394;

            v229 = Logger.logObject.getter();
            v230 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v229, v230))
            {
              v231 = swift_slowAlloc();
              *&v411 = swift_slowAlloc();
              *v231 = 136315650;
              v232 = _typeName(_:qualified:)();
              v234 = sub_10002C9C8(v232, v233, &v411);

              *(v231 + 4) = v234;
              *(v231 + 12) = 2082;
              *(v231 + 14) = sub_10002C9C8(v377, v227, &v411);
              *(v231 + 22) = 2082;
              *&v415 = v228;
              type metadata accessor for RoutingItemDataSource();
              sub_1002CDD70(&qword_1005250E0, type metadata accessor for RoutingItemDataSource);
              v235 = dispatch thunk of CustomStringConvertible.description.getter();
              v237 = sub_10002C9C8(v235, v236, &v411);

              *(v231 + 24) = v237;
              _os_log_impl(&_mh_execute_header, v229, v230, "[%s] handleInteractionForConfiguration<%{public}s> - delegating to data source: %{public}s", v231, 0x20u);
              swift_arrayDestroy();

              v238 = v225;
              v239 = v370;
            }

            else
            {

              v238 = v225;
              v239 = v226;
            }

            v240 = (v381)(v238, v239);
            v60 = v372;
            v107 = v409;
            v61 = v374;
            v241 = (*(*v228 + 240))(v240);
            v243 = v242;
            v244 = type metadata accessor for RoutingItemDataSource();
            goto LABEL_143;
          }

LABEL_71:

          sub_10002349C(v156, v392, v393);
LABEL_72:
          v145 = v388;
        }
      }

      while (1)
      {
        v152 = v151 + 1;
        if (__OFADD__(v151, 1))
        {
          __break(1u);
          goto LABEL_165;
        }

        if (v152 >= v150)
        {
          break;
        }

        v149 = *(v146 + 8 * v152);
        ++v151;
        if (v149)
        {
          v151 = v152;
          goto LABEL_66;
        }
      }

      v174 = type metadata accessor for InternalRoutingError();
      sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
      v175 = swift_allocError();
      (*(*(v174 - 8) + 104))(v176, enum case for InternalRoutingError.itemNotFound(_:), v174);
      v177 = MRDFastSyncGroupSessionState.rawValue.getter(v175, 0, 0);
      sub_10026CEA0(v177, v178, v179, v180, 1, &v411, 0.0);
      v181 = v389;
      v182 = v387;
      *v389 = v387;
      v183 = v390;
      v184 = v391;
      (*(v390 + 104))(v181, enum case for DispatchPredicate.onQueue(_:), v391);
      v185 = v182;
      LOBYTE(v175) = _dispatchPreconditionTest(_:)();
      (*(v183 + 8))(v181, v184);
      if ((v175 & 1) == 0)
      {
        goto LABEL_170;
      }
    }

    v415 = v411;
    v416 = v412;
    v417 = v413;
    v60 = v372;
    (*(*v372 + 160))(&v415);

    sub_100286E38(&v411);
    return v60;
  }

  if (v420 <= 7u)
  {
    if (v420 != 5)
    {
      if (v420 == 6)
      {
        v370 = v28;
        v64 = *(v418 + 16);
        v65 = *(v418 + 24);
        v66 = *(v418 + 48);
        sub_10026D080(&v418, &v411);

        v67 = v59;
        v68 = sub_100037234();
        v69 = *v68;
        v70 = *(v68 + 1);
        v136 = v64 == *v68;
        v374 = v61;
        v410 = v65;
        if (v136 && v65 == v70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v381 = v57;
          sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
          v71 = sub_10024C81C();
          v72 = [objc_opt_self() localOrigin];
          v73 = v66[2];
          v74 = v66[3];
          v75 = objc_allocWithZone(MRPlayerPath);
          v76 = String._bridgeToObjectiveC()();
          v77 = v75;
          v78 = v409;
          v79 = [v77 initWithOrigin:v72 bundleIdentifier:v76 player:0];

          v80 = [v71 resolveExistingPlayerPath:v79];
          if (v80)
          {
            if ([v80 isResolved])
            {
              v407 = v64;
              v81 = v375;
              v82 = v370;
              v385(v375, v384, v370);
              v83 = v403;

              v84 = v80;
              v85 = Logger.logObject.getter();
              v86 = static os_log_type_t.default.getter();
              v406 = v84;

              v408 = v85;
              if (os_log_type_enabled(v85, v86))
              {
                v87 = swift_slowAlloc();
                v405 = swift_slowAlloc();
                *&v411 = swift_slowAlloc();
                *v87 = 136315650;
                v88 = _typeName(_:qualified:)();
                v90 = v59;
                v91 = sub_10002C9C8(v88, v89, &v411);

                *(v87 + 4) = v91;
                v59 = v90;
                *(v87 + 12) = 2082;
                *(v87 + 14) = sub_10002C9C8(v377, v83, &v411);
                *(v87 + 22) = 2114;
                v92 = v406;
                *(v87 + 24) = v406;
                v93 = v405;
                *v405 = v80;
                v94 = v92;
                v95 = v408;
                _os_log_impl(&_mh_execute_header, v408, v86, "[%s] handleInteractionForConfiguration<%{public}s> - inject source player path: %{public}@ into handoff context", v87, 0x20u);
                sub_1000038A4(v93, &qword_100521870, &unk_10044EA70);

                swift_arrayDestroy();

                v381(v375, v370);
                v96 = v92;
              }

              else
              {

                v381(v81, v82);
                v96 = v406;
              }

              v315 = *(*v66 + 168);
              v316 = v96;
              v315(v80);
              v78 = v409;
              v64 = v407;
            }
          }

          v317 = static String.nanoIDEightChar()();
          v319 = v318;
          v320 = *(**(v78 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore) + 280);

          v321 = v320(v317, v319, v402);
          v323 = v322;

          v324 = v323;
          v107 = v409;
          (*(*v66 + 144))(v321, v324);
          v325 = v107 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v326 = *(v325 + 8);
            ObjectType = swift_getObjectType();
            (*(v326 + 32))(v107, v64, v410, v317, v319, ObjectType, v326);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v61 = v374;
        }

        else
        {
          v107 = v409;
          v249 = v409 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v250 = *(v249 + 8);
            v251 = swift_getObjectType();
            v371 = v59;
            v252 = v60;
            v253 = *(v250 + 32);

            v254 = v251;
            v61 = v374;
            v253(v107, v64, v410, v69, v70, v254, v250);
            v60 = v252;
            v59 = v371;

            swift_unknownObjectRelease();
          }
        }

        *(&v412 + 1) = type metadata accessor for HostedRoutingSessionDataSource();
        *&v413 = &off_1004C7B88;

        sub_100238E4C(&v418);
        v241 = 0;
        v243 = 0;
        *&v411 = v107;
        goto LABEL_162;
      }

      v200 = swift_projectBox();
      v201 = v405;
      v202 = v392;
      (*(v405 + 16))(v62, v200, v392);
      sub_10026D080(&v418, &v411);

      v203 = v59;
      v204 = v379;
      RoutingControl.type.getter();
      v205 = v380;
      v206 = v381;
      if ((v380[11])(v204, v381) != enum case for RoutingControl.RoutingControlType.absoluteVolume(_:))
      {
        (v205[1])(v204, v206);
        *(&v412 + 1) = type metadata accessor for HostedRoutingSessionDataSource();
        *&v413 = &off_1004C7B88;
        v107 = v409;
        *&v411 = v409;
        v207 = *(v201 + 8);

        v207(v62, v202);
LABEL_160:
        sub_100238E4C(&v418);
        goto LABEL_161;
      }

      *&v411 = 0;
      *(&v411 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(116);
      v357._countAndFlagsBits = 91;
      v357._object = 0xE100000000000000;
      String.append(_:)(v357);
      v358._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v358);

      v359._object = 0x800000010043EB80;
      v359._countAndFlagsBits = 0xD000000000000024;
      String.append(_:)(v359);
      v360._countAndFlagsBits = v377;
      v360._object = v403;
      String.append(_:)(v360);
      v361._countAndFlagsBits = 0x746E6F63202D203ELL;
      v361._object = 0xED0000203A6C6F72;
      String.append(_:)(v361);
      sub_1002CDD70(&qword_100524278, &type metadata accessor for RoutingControl);
      v362._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v362);

      v363._countAndFlagsBits = 0xD00000000000003CLL;
      v363._object = 0x800000010043E270;
      String.append(_:)(v363);
      goto LABEL_176;
    }

    v186 = v59;
    v187 = static String.nanoIDEightChar()();
    v188 = a1;
    v190 = v189;
    v107 = v409;
    v191 = *(**(v409 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_identifierStore) + 280);

    v191(v187, v190, v188);

    v192 = v107 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v193 = *(v192 + 8);
      v410 = swift_getObjectType();
      v194 = sub_100037234();
      v195 = v187;
      v374 = v61;
      v196 = *v194;
      v197 = *(v194 + 1);
      v371 = v59;
      v198 = v60;
      v199 = *(v193 + 32);

      v199(v107, v196, v197, v195, v190, v410, v193);
      v60 = v198;
      v59 = v371;
      v61 = v374;

      swift_unknownObjectRelease();
    }

    else
    {
    }

    *(&v412 + 1) = type metadata accessor for HostedRoutingSessionDataSource();
    *&v413 = &off_1004C7B88;
    goto LABEL_103;
  }

  if (v420 - 8 < 2)
  {
LABEL_55:
    *(&v412 + 1) = type metadata accessor for HostedRoutingSessionDataSource();
    *&v413 = &off_1004C7B88;
    v107 = v409;
    *&v411 = v409;

    v140 = v59;
LABEL_104:

LABEL_161:
    v241 = 0;
    v243 = 0;
LABEL_162:
    v343 = *(&v412 + 1);
    v344 = v413;
    sub_1000326D8(&v411, *(&v412 + 1));
    v345 = v402;
    (*(v344 + 8))(v402, sub_1002CDD1C, v61, v343, v344);
    v346 = v399;
    (*(v396 + 16))(v399, v400, v397);

    sub_10026D080(&v418, &v415);

    v347 = v401;
    sub_10026D1C4(v345, v346, v60, v401);
    v348 = (v347 + *(v398 + 24));
    v349 = v348[1];

    *v348 = v241;
    v348[1] = v243;
    (*(**(v107 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_timeline) + 240))(v347);

    sub_100026A44(&v411);
    sub_10002187C(v347, type metadata accessor for RoutingEvent);
    return v60;
  }

  if (v420 != 10)
  {
LABEL_173:
    *&v411 = 0;
    *(&v411 + 1) = 0xE000000000000000;

    v351 = v59;
    _StringGuts.grow(_:)(102);
    v352._countAndFlagsBits = 91;
    v352._object = 0xE100000000000000;
    String.append(_:)(v352);
    v353._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v353);

    v354._object = 0x800000010043EB80;
    v354._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v354);
    v355._countAndFlagsBits = v377;
    v355._object = v403;
    String.append(_:)(v355);
    v356._countAndFlagsBits = 0xD00000000000003DLL;
    v356._object = 0x800000010043EBB0;
    String.append(_:)(v356);
LABEL_176:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_177;
  }

  v100 = swift_projectBox();
  (*(v405 + 16))(v387, v100, v392);
  sub_10026D080(&v418, &v411);

  v380 = v59;
  RoutingControl.target.getter();
  v101 = v382;
  v102 = v383;
  v103 = (*(v382 + 88))(v63, v383);
  if (v103 == enum case for RoutingControl.Target.session(_:))
  {
    (*(v101 + 96))(v63, v102);
    v105 = *v63;
    v104 = v63[1];
    v106 = sub_100037234();
    if (v105 == *v106 && v104 == *(v106 + 1))
    {

      v107 = v409;
      v108 = v392;
    }

    else
    {
      v245 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v107 = v409;
      v108 = v392;
      if ((v245 & 1) == 0)
      {
        *(&v412 + 1) = type metadata accessor for HostedRoutingSessionDataSource();
        *&v413 = &off_1004C7B88;
        *&v411 = v107;

        goto LABEL_159;
      }
    }

    v246 = (*(*v107 + 888))(0, 0, 3);
    v248 = v247;
    *(&v412 + 1) = swift_getObjectType();
    *&v413 = *(v248 + 16);
    *&v411 = v246;
LABEL_159:
    (*(v405 + 8))(v387, v108);
    goto LABEL_160;
  }

  v381 = v57;
  v370 = v28;
  if (v103 == enum case for RoutingControl.Target.item(_:))
  {
    v374 = v61;
    (*(v101 + 96))(v63, v102);
    v220 = *v63;
    v219 = v63[1];
    v221 = sub_100258614();
    v223 = v222;
    v224 = sub_100037234();
    v107 = v409;
    if (v221 == *v224 && v223 == *(v224 + 1))
    {
    }

    else
    {
      v255 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v255 & 1) == 0)
      {

        *(&v412 + 1) = type metadata accessor for HostedRoutingSessionDataSource();
        *&v413 = &off_1004C7B88;
        *&v411 = v107;

        v61 = v374;
        v108 = v392;
        goto LABEL_159;
      }
    }

    v256 = sub_10002CC04();
    v406 = sub_1002586E4();
    v407 = v257;

    v258 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_itemDataSources;
    swift_beginAccess();
    v259 = *(v107 + v258);
    v260 = v259 + 64;
    v261 = 1 << *(v259 + 32);
    if (v261 < 64)
    {
      v262 = ~(-1 << v261);
    }

    else
    {
      v262 = -1;
    }

    v263 = v262 & *(v259 + 64);
    v264 = (v261 + 63) >> 6;
    v410 = (v256 + 56);
    swift_bridgeObjectRetain_n();
    v265 = 0;
    v372 = v60;
    v371 = v59;
    v382 = v259;
    while (v263)
    {
LABEL_119:
      v267 = __clz(__rbit64(v263));
      v263 &= v263 - 1;
      v268 = *(*(v259 + 56) + ((v265 << 9) | (8 * v267)));
      v270 = *(v268 + 24);
      v269 = *(v268 + 32);
      v271 = *(v268 + 40);
      *&v411 = v270;
      *(&v411 + 1) = v269;
      LOBYTE(v412) = v271;
      if (*(v256 + 16))
      {
        v272 = *(v256 + 40);
        v394 = v268;
        v273 = v271;
        v274 = v269;

        v383 = v274;
        LODWORD(v393) = v273;
        sub_10002CBE8(v270, v274, v273);
        sub_100036860();
        v275 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v276 = -1 << *(v256 + 32);
        v277 = v275 & ~v276;
        if ((*&v410[(v277 >> 3) & 0xFFFFFFFFFFFFFF8] >> v277))
        {
          v59 = ~v276;
          sub_1000360C4();
          while (1)
          {
            v278 = *(v256 + 48) + 24 * v277;
            v279 = *(v278 + 16);
            v415 = *v278;
            LOBYTE(v416) = v279;
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              break;
            }

            v277 = (v277 + 1) & v59;
            if (((*&v410[(v277 >> 3) & 0xFFFFFFFFFFFFFF8] >> v277) & 1) == 0)
            {
              goto LABEL_124;
            }
          }

          v280 = sub_10002349C(v270, v383, v393);
          v281 = (*(*v394 + 216))(v280);
          v282 = 0;
          v283 = *(v281 + 16);
          v59 = v371;
          while (1)
          {
            if (v283 == v282)
            {

              goto LABEL_125;
            }

            v284 = v388;
            if (v282 >= *(v281 + 16))
            {
              goto LABEL_169;
            }

            sub_1002CDCB4(v281 + ((LOBYTE(v408[10].isa) + 32) & ~LOBYTE(v408[10].isa)) + v408[9].isa * v282, v388, type metadata accessor for HostedRoutingItem);
            if (*v284 == v406 && v284[1] == v407)
            {
              break;
            }

            ++v282;
            v286 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v287 = v284;
            v288 = v286;
            sub_10002187C(v287, type metadata accessor for HostedRoutingItem);
            if (v288)
            {
              goto LABEL_155;
            }
          }

          sub_10002187C(v284, type metadata accessor for HostedRoutingItem);
LABEL_155:

          v328 = v373;
          v329 = v370;
          v385(v373, v384, v370);
          v330 = v403;

          v331 = v394;

          v332 = Logger.logObject.getter();
          v333 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v332, v333))
          {
            v334 = swift_slowAlloc();
            *&v411 = swift_slowAlloc();
            *v334 = 136315650;
            v335 = _typeName(_:qualified:)();
            v337 = sub_10002C9C8(v335, v336, &v411);

            *(v334 + 4) = v337;
            *(v334 + 12) = 2082;
            *(v334 + 14) = sub_10002C9C8(v377, v330, &v411);
            *(v334 + 22) = 2082;
            *&v415 = v331;
            type metadata accessor for RoutingItemDataSource();
            sub_1002CDD70(&qword_1005250E0, type metadata accessor for RoutingItemDataSource);
            v338 = dispatch thunk of CustomStringConvertible.description.getter();
            v340 = sub_10002C9C8(v338, v339, &v411);

            *(v334 + 24) = v340;
            _os_log_impl(&_mh_execute_header, v332, v333, "[%s] handleInteractionForConfiguration<%{public}s> - delegating to data source: %{public}s", v334, 0x20u);
            swift_arrayDestroy();

            v341 = v328;
            v342 = v370;
          }

          else
          {

            v341 = v328;
            v342 = v329;
          }

          v381(v341, v342);
          v60 = v372;
          v107 = v409;
          v61 = v374;
          v108 = v392;
          *(&v412 + 1) = type metadata accessor for RoutingItemDataSource();
          *&v413 = &off_1004C7638;
          *&v411 = v331;
          goto LABEL_159;
        }

LABEL_124:

        sub_10002349C(v270, v383, v393);
LABEL_125:
        v60 = v372;
        v259 = v382;
      }
    }

    while (1)
    {
      v266 = v265 + 1;
      if (__OFADD__(v265, 1))
      {
        break;
      }

      if (v266 >= v264)
      {

        v289 = type metadata accessor for InternalRoutingError();
        sub_1002CDD70(&qword_100524710, &type metadata accessor for InternalRoutingError);
        v290 = swift_allocError();
        (*(*(v289 - 8) + 104))(v291, enum case for InternalRoutingError.itemNotFound(_:), v289);
        v292 = MRDFastSyncGroupSessionState.rawValue.getter(v290, 0, 0);
        sub_10026CEA0(v292, v293, v294, v295, 1, &v411, 0.0);
        v296 = v389;
        v297 = v380;
        *v389 = v380;
        v298 = v390;
        v299 = v391;
        (*(v390 + 104))(v296, enum case for DispatchPredicate.onQueue(_:), v391);
        v300 = v297;
        LOBYTE(v290) = _dispatchPreconditionTest(_:)();
        (*(v298 + 8))(v296, v299);
        if ((v290 & 1) == 0)
        {
          goto LABEL_172;
        }

        v415 = v411;
        v416 = v412;
        v417 = v413;
        (*(*v60 + 160))(&v415);

        (*(v405 + 8))(v387, v392);
        sub_100286E38(&v411);
        sub_100238E4C(&v418);
        return v60;
      }

      v263 = *(v260 + 8 * v266);
      ++v265;
      if (v263)
      {
        v265 = v266;
        goto LABEL_119;
      }
    }

LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

LABEL_177:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10029EEEC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a2;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = a2;
  LOBYTE(a2) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (a2)
  {
    v13 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v13;
    v15 = *(a1 + 32);
    return (*(*a3 + 160))(v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10029F038@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for HostedRoutingSourceSession(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_1002CDCB4(v13, v11, type metadata accessor for HostedRoutingSourceSession);
      v15 = a1(v11);
      if (v3)
      {
        return sub_10002187C(v11, type metadata accessor for HostedRoutingSourceSession);
      }

      if (v15)
      {
        break;
      }

      sub_10002187C(v11, type metadata accessor for HostedRoutingSourceSession);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_100032E70(v11, v19, type metadata accessor for HostedRoutingSourceSession);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_10029F204()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for HostedRoutingItem(0);
  v144 = *(v3 - 8);
  v145 = v3;
  v4 = *(v144 + 64);
  v5 = __chkstk_darwin(v3);
  v142 = v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v147 = (v128 - v7);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v128 - v14;
  v16 = type metadata accessor for HostedRoutingSourceSession(0);
  v141 = *(v16 - 8);
  v17 = *(v141 + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = v128 - v20;
  v22 = __chkstk_darwin(v19);
  v23 = __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v25 = __chkstk_darwin(v128 - v24);
  v27 = v128 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = v128 - v29;
  result = __chkstk_darwin(v28);
  v36 = v128 - v35;
  if (*(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_supportActiveSession) != 1)
  {
    return result;
  }

  v134 = v34;
  v129 = v33;
  v131 = v2;
  v130 = v13;
  v135 = v32;
  v132 = v9;
  v133 = v8;
  v37 = (v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements);
  v38 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionElements + 16);
  if (!v38)
  {
    goto LABEL_48;
  }

  v146 = result;
  v39 = *v37;
  v40 = v37[1];
  sub_1002D18E0(*v37, v40, v38);

  v41 = sub_1002CDC70(v39, v40, v38);
  if (v40)
  {
    v143 = v36;
    v140 = v15;
    result = (*(*v1 + 440))(v41);
    v42 = result;
    v43 = *(result + 16);
    if (v43)
    {
      v44 = 0;
      while (1)
      {
        if (v44 >= *(v42 + 16))
        {
          __break(1u);
          goto LABEL_67;
        }

        sub_1002CDCB4(v42 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v44, v27, type metadata accessor for HostedRoutingSourceSession);
        if (sub_100259F30(*(v27 + 2), *(v27 + 3), v39, v40))
        {
          break;
        }

        ++v44;
        result = sub_10002187C(v27, type metadata accessor for HostedRoutingSourceSession);
        if (v43 == v44)
        {
          goto LABEL_9;
        }
      }

      sub_100032E70(v27, v30, type metadata accessor for HostedRoutingSourceSession);
      v46 = v30;
      v45 = v143;
      sub_100032E70(v46, v143, type metadata accessor for HostedRoutingSourceSession);
      v47 = sub_100034D68();
      if (!v47[2] || (v48 = sub_10000698C(v39, v40), (v49 & 1) == 0))
      {

        sub_10002187C(v45, type metadata accessor for HostedRoutingSourceSession);
        goto LABEL_17;
      }

      v50 = *(v47[7] + 8 * v48);

      if (*(v50 + 16) == 2)
      {
        v51 = sub_100028D40();
        v52 = v132;
        v53 = v140;
        (*(v132 + 16))(v140, v51, v133);
        v54 = v146;
        sub_1002CDCB4(v45, v146, type metadata accessor for HostedRoutingSourceSession);

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v148[0] = v145;
          *v57 = 136315650;
          v58 = _typeName(_:qualified:)();
          v147 = v50;
          v60 = sub_10002C9C8(v58, v59, v148);

          *(v57 + 4) = v60;
          *(v57 + 12) = 2082;
          v61 = sub_10002C9C8(v39, v40, v148);

          *(v57 + 14) = v61;
          *(v57 + 22) = 2082;
          v62 = *v54;
          v63 = v54[1];

          sub_10002187C(v54, type metadata accessor for HostedRoutingSourceSession);
          v64 = sub_10002C9C8(v62, v63, v148);

          *(v57 + 24) = v64;
          _os_log_impl(&_mh_execute_header, v55, v56, "[%s] updateActiveSessionIdentifierIfNeeded - matched session elements groupIdentifier: %{public}s to session: %{public}s", v57, 0x20u);
          swift_arrayDestroy();

          (*(v52 + 8))(v140, v133);
        }

        else
        {

          sub_10002187C(v54, type metadata accessor for HostedRoutingSourceSession);
          (*(v52 + 8))(v53, v133);
        }

        v120 = v143;
        v121 = *v143;
        v122 = v143[1];
        v123 = *(*v1 + 688);

        v123(v121, v122);

        return sub_10002187C(v120, type metadata accessor for HostedRoutingSourceSession);
      }

LABEL_59:
      sub_10002187C(v45, type metadata accessor for HostedRoutingSourceSession);

      v45 = v37[2];
      if (v45)
      {
        goto LABEL_18;
      }

LABEL_48:
      v89 = sub_100037234();
      v90 = *v89;
      v91 = *(v89 + 1);
      v92 = *(*v1 + 688);

      return v92(v90, v91);
    }

LABEL_9:

    v45 = v37[2];
    if (!v45)
    {
      goto LABEL_48;
    }
  }

  else
  {
LABEL_17:
    v45 = v37[2];
    if (!v45)
    {
      goto LABEL_48;
    }
  }

LABEL_18:
  v66 = *v37;
  v65 = v37[1];
  sub_1002D18E0(*v37, v65, v45);

  sub_1002CDC70(v66, v65, v45);

  v68 = sub_100008280(v67);
  v128[1] = v45;

  result = (*(*v1 + 440))(v69);
  v70 = result;
  v139 = *(result + 16);
  if (!v139)
  {

LABEL_47:

    goto LABEL_48;
  }

  v128[0] = v1;
  v71 = 0;
  v72 = *(v141 + 80);
  v137 = v21;
  v138 = result + ((v72 + 32) & ~v72);
  v1 = (v68 + 56);
  v136 = result;
  while (v71 < *(v70 + 16))
  {
    v73 = *(v141 + 72);
    v140 = v71;
    sub_1002CDCB4(v138 + v73 * v71, v21, type metadata accessor for HostedRoutingSourceSession);
    v37 = *(v21 + 32);
    v146 = v37[2];
    if (v146)
    {
      v74 = 0;
      v143 = _swiftEmptyArrayStorage;
      while (v74 < v37[2])
      {
        v75 = (*(v144 + 80) + 32) & ~*(v144 + 80);
        v76 = *(v144 + 72);
        v77 = v147;
        sub_1002CDCB4(v37 + v75 + v76 * v74, v147, type metadata accessor for HostedRoutingItem);
        if (*(v77 + *(v145 + 36)) != 1)
        {
          goto LABEL_23;
        }

        if (!*(v68 + 16))
        {
          goto LABEL_23;
        }

        v45 = *v147;
        v78 = v147[1];
        v79 = *(v68 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v80 = Hasher._finalize()();
        v81 = -1 << *(v68 + 32);
        v82 = v80 & ~v81;
        if ((*(v1 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82))
        {
          v21 = ~v81;
          while (1)
          {
            v83 = (*(v68 + 48) + 16 * v82);
            v84 = *v83 == v45 && v83[1] == v78;
            if (v84 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v82 = (v82 + 1) & v21;
            if (((*(v1 + ((v82 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v82) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          sub_100032E70(v147, v142, type metadata accessor for HostedRoutingItem);
          v85 = v143;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v149 = v85;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10002A42C(0, v85[2] + 1, 1);
            v85 = v149;
          }

          v21 = v85[2];
          v87 = v85[3];
          v45 = (v21 + 1);
          if (v21 >= v87 >> 1)
          {
            sub_10002A42C(v87 > 1, v21 + 1, 1);
            v85 = v149;
          }

          v85[2] = v45;
          v143 = v85;
          sub_100032E70(v142, v85 + v75 + v21 * v76, type metadata accessor for HostedRoutingItem);
        }

        else
        {
LABEL_23:
          sub_10002187C(v147, type metadata accessor for HostedRoutingItem);
        }

        if (++v74 == v146)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
      goto LABEL_59;
    }

    v143 = _swiftEmptyArrayStorage;
LABEL_43:
    v88 = v143[2];

    if (v88)
    {

      v93 = v134;
      sub_100032E70(v137, v134, type metadata accessor for HostedRoutingSourceSession);
      v94 = v135;
      sub_100032E70(v93, v135, type metadata accessor for HostedRoutingSourceSession);
      v95 = v94[3];
      if (!v95)
      {

        sub_10002187C(v94, type metadata accessor for HostedRoutingSourceSession);
        v1 = v128[0];
        goto LABEL_48;
      }

      v96 = v94[2];
      v1 = v128[0];
      v97 = sub_100034D68();
      if (!v97[2] || (v98 = sub_10000698C(v96, v95), (v99 & 1) == 0))
      {

        sub_10002187C(v94, type metadata accessor for HostedRoutingSourceSession);
        goto LABEL_48;
      }

      v100 = *(v97[7] + 8 * v98);

      if (*(v100 + 16) != 2)
      {
        sub_10002187C(v94, type metadata accessor for HostedRoutingSourceSession);

        goto LABEL_48;
      }

      v101 = sub_100028D40();
      v102 = v132;
      v103 = v130;
      v104 = v133;
      (*(v132 + 16))(v130, v101, v133);
      v105 = v129;
      sub_1002CDCB4(v94, v129, type metadata accessor for HostedRoutingSourceSession);

      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        LODWORD(v146) = v107;
        v109 = v108;
        v147 = swift_slowAlloc();
        v148[0] = v147;
        *v109 = 136315650;
        v110 = _typeName(_:qualified:)();
        v112 = sub_10002C9C8(v110, v111, v148);

        *(v109 + 4) = v112;
        *(v109 + 12) = 2082;
        v113 = Array.description.getter();
        v115 = v114;

        v116 = sub_10002C9C8(v113, v115, v148);

        *(v109 + 14) = v116;
        *(v109 + 22) = 2082;
        v117 = *v105;
        v118 = v105[1];

        sub_10002187C(v105, type metadata accessor for HostedRoutingSourceSession);
        v119 = sub_10002C9C8(v117, v118, v148);

        *(v109 + 24) = v119;
        _os_log_impl(&_mh_execute_header, v106, v146, "[%s] updateActiveSessionIdentifierIfNeeded - matched session elements device identifiers: %{public}s to session: %{public}s", v109, 0x20u);
        swift_arrayDestroy();

        (*(v102 + 8))(v103, v133);
      }

      else
      {

        sub_10002187C(v105, type metadata accessor for HostedRoutingSourceSession);
        (*(v102 + 8))(v103, v104);
      }

      v124 = v135;
      v125 = *v135;
      v126 = v135[1];
      v127 = *(*v1 + 688);

      v127(v125, v126);

      return sub_10002187C(v124, type metadata accessor for HostedRoutingSourceSession);
    }

    v71 = v140 + 1;
    v21 = v137;
    result = sub_10002187C(v137, type metadata accessor for HostedRoutingSourceSession);
    v70 = v136;
    if (v71 == v139)
    {

      v1 = v128[0];
      goto LABEL_47;
    }
  }

LABEL_67:
  __break(1u);
  return result;
}

void sub_1002A01EC()
{
  v1 = v0;
  v159 = *v0;
  v153 = type metadata accessor for RoutingMode();
  v2 = *(v153 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v153);
  v152 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v151 = &v145 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v145 - v13;
  v175 = _swiftEmptyArrayStorage;
  v15 = sub_100297780();
  v16 = [v15 discoveryMode];

  if (v16)
  {
    v17 = [*(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___discoverySession) availableEndpoints];
    if (!v17)
    {
      goto LABEL_123;
    }

    v18 = v17;
    sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1002A1410(v19);
  }

  v165 = v12;
  v147 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource;
  v20 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource);
  if (v20)
  {
    v21 = *(*v20 + 152);
    v22 = *(v1 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource_activeSessionDataSource);

    v24 = v21(v23);

    if (v24)
    {
      v25 = v24;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v144 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v26 = sub_100028D40();
    v27 = *(v8 + 16);
    v169 = v26;
    v168 = (v8 + 16);
    v167 = v27;
    (v27)(v14);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    v30 = os_log_type_enabled(v28, v29);
    v170 = v1;
    v160 = v7;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      *v31 = 136315394;
      v32 = _typeName(_:qualified:)();
      v34 = sub_10002C9C8(v32, v33, &v172);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2082;
      swift_beginAccess();
      sub_100018D7C(0, &qword_1005250D0, MRAVEndpoint_ptr);

      v35 = Array.description.getter();
      v37 = v36;

      v38 = v35;
      v7 = v160;
      v39 = sub_10002C9C8(v38, v37, &v172);

      *(v31 + 14) = v39;
      v1 = v170;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%s] updateEndpoints - endpoints: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    v166 = *(v8 + 8);
    v166(v14, v7);
    v40 = v165;
    v174 = &_swiftEmptySetSingleton;
    v173 = _swiftEmptyArrayStorage;
    swift_beginAccess();
    v41 = v175;
    if (v175 >> 62)
    {
      goto LABEL_114;
    }

    v42 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
    v43 = &unk_100533000;
    v158 = v41;
    v161 = v42;
    if (v42)
    {
      v146 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints;
      v44 = v41 & 0xC000000000000001;
      v163 = v41 & 0xFFFFFFFFFFFFFF8;
      v162 = v41 + 32;
      v150 = enum case for RoutingMode.disabled(_:);
      v149 = (v2 + 13);
      v148 = (v2 + 1);
      v164 = (v8 + 8);

      v156 = 0;
      v45 = 0;
      v154 = _swiftEmptyArrayStorage;
      v2 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
      *&v46 = 136315394;
      v157 = v46;
      v47 = v161;
      v171 = v41 & 0xC000000000000001;
      while (1)
      {
        if (v44)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v45 >= *(v163 + 16))
          {
            goto LABEL_112;
          }

          v48 = *(v162 + 8 * v45);
        }

        v8 = v48;
        if (__OFADD__(v45++, 1))
        {
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          v42 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_13;
        }

        if (![v48 v2[158]])
        {
          break;
        }

LABEL_16:
        if (v45 == v47)
        {

          v43 = &unk_100533000;
          goto LABEL_76;
        }
      }

      v50 = [v8 outputDevices];
      if (!v50)
      {
        goto LABEL_69;
      }

      v51 = v50;
      sub_100018D7C(0, &qword_100521770, MRAVOutputDevice_ptr);
      v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v52 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_68:

LABEL_69:
          v167(v40, v169, v7);
          v8 = v8;
          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v172 = v111;
            *v109 = v157;
            v112 = _typeName(_:qualified:)();
            v114 = sub_10002C9C8(v112, v113, &v172);
            v47 = v161;

            *(v109 + 4) = v114;
            v1 = v170;
            *(v109 + 12) = 2114;
            *(v109 + 14) = v8;
            *v110 = v8;
            v8 = v8;
            _os_log_impl(&_mh_execute_header, v107, v108, "[%s] updateEndpoints - endpoint: %{public}@ has no output device with a groupID", v109, 0x16u);
            sub_1000038A4(v110, &qword_100521870, &unk_10044EA70);
            v40 = v165;

            sub_100026A44(v111);
            v7 = v160;
          }

          else
          {
          }

          v166(v40, v7);
          v44 = v171;
          v2 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
          goto LABEL_16;
        }
      }

      else if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      if ((v52 & 0xC000000000000001) != 0)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_113;
        }

        v53 = *(v52 + 32);
      }

      v54 = v53;

      v55 = [v54 groupID];

      if (!v55)
      {
        goto LABEL_69;
      }

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = v174;
      if (v174[2])
      {
        v60 = v174[5];
        Hasher.init(_seed:)();
        String.hash(into:)();
        v61 = Hasher._finalize()();
        v62 = -1 << *(v59 + 32);
        v63 = v61 & ~v62;
        if ((*(v59 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v63))
        {
          v64 = ~v62;
          while (1)
          {
            v65 = (v59[6] + 16 * v63);
            v66 = *v65 == v56 && v65[1] == v58;
            if (v66 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v63 = (v63 + 1) & v64;
            if (((*(v59 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v63) & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          v41 = v158;
          v7 = v160;
          v40 = v165;
          v47 = v161;
          goto LABEL_60;
        }
      }

LABEL_39:

      sub_100008318(&v172, v56, v58);

      v67 = sub_100034D68();
      v68 = v67[2];
      v155 = v56;
      if (!v68 || (v69 = sub_10000698C(v56, v58), (v70 & 1) == 0))
      {

        v82 = v151;
        (*(*v1 + 392))(v81);
        v83 = v152;
        v84 = v153;
        (*v149)(v152, v150, v153);
        sub_1002CDD70(&qword_1005249D0, &type metadata accessor for RoutingMode);
        v85 = dispatch thunk of static Equatable.== infix(_:_:)();
        v86 = *v148;
        (*v148)(v83, v84);
        v86(v82, v84);
        v2 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
        v47 = v161;
        if ((v85 & 1) == 0)
        {
          goto LABEL_52;
        }

        v87 = *(v1 + v147);
        if (!v87)
        {
          goto LABEL_124;
        }

        v88 = *(*v87 + 152);
        v89 = v8;

        v91 = v88(v90);

        if (v91 && (v91, v89 == v91))
        {
LABEL_52:
          type metadata accessor for HostedRoutingSessionDataSource.EndpointEntry();
          v92 = swift_allocObject();

          v8 = v8;
          v93 = v155;
          sub_1002CD69C(v8, v155, v58);

          v94 = v146;
          v95 = *(v1 + v146);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v172 = v95;
          sub_1002CB7B8(v92, v93, v58, isUniquelyReferenced_nonNull_native);

          v97 = *(v1 + v94);
          *(v1 + v94) = v172;

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v173 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v115 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v154 = v173;
        }

        else
        {
        }

        v41 = v158;
        goto LABEL_59;
      }

      v71 = *(v67[7] + 8 * v69);

      sub_100298A90(v8);
      v156 |= v72;
      v74 = *(v71 + 24);
      v73 = *(v71 + 32);

      v75 = [v8 uniqueIdentifier];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      if (v74 == v76 && v73 == v78)
      {

        v1 = v170;
        v41 = v158;
        v47 = v161;
      }

      else
      {
        v145 = v71;
        v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v41 = v158;
        v47 = v161;
        if ((v80 & 1) == 0)
        {
          v98 = v145;
          v1 = v170;
          v99 = v155;
          if ((*(v145 + 16) & 0xFE) != 2)
          {
            if (!*(sub_100299BEC() + 2) || (sub_10000698C(v99, v58), (v100 & 1) == 0))
            {

              goto LABEL_58;
            }

            v98 = v145;
          }

          v101 = [v8 uniqueIdentifier];
          v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v103;

          v105 = *(v98 + 32);
          *(v98 + 24) = v102;
          *(v98 + 32) = v104;
          v47 = v161;

          type metadata accessor for HostedRoutingSessionDataSource.EndpointEntry();
          v106 = swift_allocObject();
          v8 = v8;
          sub_1002CD69C(v8, v155, v58);

          sub_1002A1500(v106);

          goto LABEL_59;
        }

        v1 = v170;
      }

LABEL_58:

LABEL_59:
      v7 = v160;
      v40 = v165;
LABEL_60:
      v44 = v171;
      goto LABEL_16;
    }

    v156 = 0;
    v154 = _swiftEmptyArrayStorage;
LABEL_76:
    v116 = sub_100034D68();
    v2 = (v116 + 64);
    v117 = 1 << v116[32];
    if (v117 < 64)
    {
      v118 = ~(-1 << v117);
    }

    else
    {
      v118 = -1;
    }

    v41 = v118 & *(v116 + 8);
    v169 = v43[126];
    v1 = (v117 + 63) >> 6;
    v171 = v116;

    LODWORD(v168) = 0;
    v7 = 0;
LABEL_80:
    v119 = v174;
    v40 = (v174 + 7);
    while (v41)
    {
LABEL_87:
      v121 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v122 = (*(v171 + 48) + ((v7 << 10) | (16 * v121)));
      v124 = *v122;
      v123 = v122[1];
      if (!v119[2])
      {

LABEL_96:
        v131 = *(v170 + v169);

        v132 = sub_10000698C(v124, v123);
        v134 = v133;

        if (v134)
        {
          v135 = swift_isUniquelyReferenced_nonNull_native();
          v172 = v131;
          if (!v135)
          {
            sub_1002CBC28();
            v131 = v172;
          }

          v136 = *(*(v131 + 48) + 16 * v132 + 8);

          v137 = *(*(v131 + 56) + 8 * v132);

          sub_1001DEE44(v132, v131);
        }

        v138 = *(v170 + v169);
        *(v170 + v169) = v131;

        LODWORD(v168) = 1;
        goto LABEL_80;
      }

      v125 = v119[5];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v126 = Hasher._finalize()();
      v127 = -1 << *(v119 + 32);
      v128 = v126 & ~v127;
      if (((*&v40[(v128 >> 3) & 0xFFFFFFFFFFFFFF8] >> v128) & 1) == 0)
      {
        goto LABEL_96;
      }

      v8 = ~v127;
      while (1)
      {
        v129 = (v119[6] + 16 * v128);
        v130 = *v129 == v124 && v129[1] == v123;
        if (v130 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v128 = (v128 + 1) & v8;
        if (((*&v40[(v128 >> 3) & 0xFFFFFFFFFFFFFF8] >> v128) & 1) == 0)
        {
          goto LABEL_96;
        }
      }
    }

    while (1)
    {
      v120 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_111;
      }

      if (v120 >= v1)
      {
        break;
      }

      v41 = v2[v120];
      ++v7;
      if (v41)
      {
        v7 = v120;
        goto LABEL_87;
      }
    }

    v139 = v154;
    if (v154 >> 62)
    {
      v140 = _CocoaArrayWrapper.endIndex.getter();
      if (v140)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v140 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v140)
      {
LABEL_104:
        if (v140 >= 1)
        {
          for (i = 0; i != v140; ++i)
          {
            if ((v139 & 0xC000000000000001) != 0)
            {
              v142 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v142 = *(v139 + 8 * i + 32);
            }

            sub_1002A1500(v142);
          }

          goto LABEL_116;
        }

        __break(1u);
        goto LABEL_122;
      }
    }

LABEL_116:

    if ((v156 | v168))
    {
      v143 = "updateEndpoints - removed mapped endpoint entry";
      if (v156)
      {
        v143 = "updateEndpoints - updated mapped endpoint entry";
      }

      sub_100033F40(0xD00000000000002FLL, (v143 - 32) | 0x8000000000000000);
    }

    return;
  }

LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
}

uint64_t sub_1002A1410(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10021B99C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1002CD460(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1002A1500(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for RoutingMode();
  v158 = *(v5 - 8);
  v159 = v5;
  v6 = *(v158 + 64);
  __chkstk_darwin(v5);
  v157 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v169 = *(v8 - 8);
  v9 = *(v169 + 64);
  v10 = __chkstk_darwin(v8);
  v152 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v155 = &v151 - v13;
  v14 = __chkstk_darwin(v12);
  v166 = &v151 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v151 - v17;
  __chkstk_darwin(v16);
  v20 = &v151 - v19;
  v22 = *(a1 + 48);
  v21 = *(a1 + 56);
  v23 = *(a1 + 72);
  v163 = *(a1 + 64);
  v164 = v4;
  v24 = *(v4 + 368);

  v168 = v23;

  v161 = v24(v25);
  v26 = *(sub_100299BEC() + 2);
  v167 = v21;
  v165 = v22;
  if (v26)
  {
    sub_10000698C(v22, v21);
    v28 = v27;

    v29 = v22;
    v30 = v168;
    if (v28)
    {
      v31 = sub_100034D68();
      if (v31[2] && (v32 = sub_10000698C(v29, v21), (v33 & 1) != 0))
      {
        v34 = *(v31[7] + 8 * v32);

        v35 = sub_100028D40();
        (*(v169 + 16))(v20, v35, v8);

        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v156 = v8;
          v39 = v38;
          aBlock[0] = swift_slowAlloc();
          *v39 = 136315650;
          v40 = _typeName(_:qualified:)();
          LODWORD(v162) = v37;
          v42 = sub_10002C9C8(v40, v41, aBlock);

          *(v39 + 4) = v42;
          *(v39 + 12) = 2082;
          *(v39 + 14) = sub_10002C9C8(v163, v30, aBlock);
          *(v39 + 22) = 2082;

          v44 = sub_1002992B0(v43);
          v46 = v45;

          v47 = sub_10002C9C8(v44, v46, aBlock);
          v21 = v167;

          *(v39 + 24) = v47;
          _os_log_impl(&_mh_execute_header, v36, v162, "[%s] connectToEntry<%{public}s> - removing existing entry in timeout: %{public}s", v39, 0x20u);
          swift_arrayDestroy();

          v8 = v156;
          v29 = v165;
        }

        (*(v169 + 8))(v20, v8);
        v48 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints;
        aBlock[0] = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints);

        sub_10029A840(0, v29, v21);

        v49 = *(v2 + v48);
        *(v2 + v48) = aBlock[0];
      }

      else
      {

        v50 = sub_100028D40();
        (*(v169 + 16))(v18, v50, v8);

        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          aBlock[0] = v162;
          *v53 = 136315650;
          v54 = _typeName(_:qualified:)();
          v56 = sub_10002C9C8(v54, v55, aBlock);

          *(v53 + 4) = v56;
          v21 = v167;
          *(v53 + 12) = 2082;
          *(v53 + 14) = sub_10002C9C8(v163, v30, aBlock);
          *(v53 + 22) = 2082;
          v29 = v165;
          *(v53 + 24) = sub_10002C9C8(v165, v21, aBlock);
          _os_log_impl(&_mh_execute_header, v51, v52, "[%s] connectToEntry<%{public}s> - expected existing entry in timeout for groupIdentifier: %{public}s but found none", v53, 0x20u);
          swift_arrayDestroy();
        }

        (*(v169 + 8))(v18, v8);
      }

      v57 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals;
      aBlock[0] = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals);

      sub_10029A938(0, 1, v29, v21);
      v58 = *(v2 + v57);
      *(v2 + v57) = aBlock[0];
    }
  }

  else
  {

    v29 = v22;
    v30 = v168;
  }

  v59 = swift_allocObject();
  v60 = sub_100034D68();
  if (v60[2] && (v61 = sub_10000698C(v29, v21), (v62 & 1) != 0))
  {
    v63 = *(v60[7] + 8 * v61);

    *(v59 + 16) = v63;
    if (v63 == a1)
    {
      *(v59 + 16) = 0;
    }
  }

  else
  {

    *(v59 + 16) = 0;
  }

  v162 = v59;
  v64 = sub_100028D40();
  v65 = *(v169 + 16);
  v66 = v166;
  v153 = v64;
  v154 = v65;
  (v65)(v166);

  v67 = Logger.logObject.getter();
  v68 = v8;
  v69 = static os_log_type_t.default.getter();

  v70 = os_log_type_enabled(v67, v69);
  v160 = v2;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v156 = v68;
    v72 = v71;
    v151 = swift_slowAlloc();
    aBlock[0] = v151;
    *v72 = 136316162;
    v73 = _typeName(_:qualified:)();
    v75 = v30;
    v76 = sub_10002C9C8(v73, v74, aBlock);

    *(v72 + 4) = v76;
    *(v72 + 12) = 2082;
    *(v72 + 14) = sub_10002C9C8(v163, v75, aBlock);
    *(v72 + 22) = 2082;
    v77 = *(a1 + 24);
    v78 = *(a1 + 32);

    v79 = sub_10002C9C8(v77, v78, aBlock);

    *(v72 + 24) = v79;
    *(v72 + 32) = 2082;
    *(v72 + 34) = sub_10002C9C8(v165, v167, aBlock);
    *(v72 + 42) = 2082;
    v80 = v157;
    (*(*v2 + 392))();
    sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode);
    v81 = v159;
    v82 = dispatch thunk of CustomStringConvertible.description.getter();
    v84 = v83;
    (*(v158 + 8))(v80, v81);
    v85 = sub_10002C9C8(v82, v84, aBlock);
    v86 = v161;

    *(v72 + 44) = v85;
    _os_log_impl(&_mh_execute_header, v67, v69, "[%s] connectToEntry<%{public}s> - connect to endpoint: %{public}s with groupID: %{public}s, routingMode: %{public}s", v72, 0x34u);
    swift_arrayDestroy();

    v87 = *(v169 + 8);
    v88 = v156;
    v87(v166, v156);
  }

  else
  {

    v87 = *(v169 + 8);
    v87(v66, v68);
    v88 = v68;
    v86 = v161;
  }

  *(a1 + 16) = 1;
  if ([*(a1 + 88) isConnected])
  {
    v89 = v86;
    v90 = *(v162 + 16);
    v91 = v160;
    v92 = v168;
    if (v90)
    {
      v166 = v87;
      if (v90[3] == *(a1 + 24) && v90[4] == *(a1 + 32) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v93 = v155;
        v154(v155, v153, v88);
        swift_retain_n();

        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v156 = v88;
          v97 = v96;
          aBlock[0] = swift_slowAlloc();
          *v97 = 136315906;
          v98 = _typeName(_:qualified:)();
          v100 = v95;
          v101 = sub_10002C9C8(v98, v99, aBlock);

          *(v97 + 4) = v101;
          *(v97 + 12) = 2082;
          v102 = sub_10002C9C8(v163, v92, aBlock);

          *(v97 + 14) = v102;
          *(v97 + 22) = 2082;

          v104 = sub_1002992B0(v103);
          v106 = v105;

          v107 = sub_10002C9C8(v104, v106, aBlock);

          *(v97 + 24) = v107;
          *(v97 + 32) = 2082;
          v109 = sub_1002992B0(v108);
          v111 = sub_10002C9C8(v109, v110, aBlock);

          *(v97 + 34) = v111;
          v112 = v161;
          _os_log_impl(&_mh_execute_header, v94, v100, "[%s] connectToEntry<%{public}s> - pre-connected, replacing: %{public}s with: %{public}s", v97, 0x2Au);
          swift_arrayDestroy();

          v91 = v160;
          (v166)(v155, v156);
          v113 = v165;
        }

        else
        {

          (v166)(v93, v88);
          v113 = v165;
          v112 = v89;
        }

        v128 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints;
        v129 = *(v91 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v129;
        sub_1002CB7B8(a1, v113, v167, isUniquelyReferenced_nonNull_native);

        v131 = *(v91 + v128);
        *(v91 + v128) = aBlock[0];

        sub_1002A4A5C(a1);
      }

      else
      {
        v132 = v152;
        v154(v152, v153, v88);
        v133 = v167;

        v134 = Logger.logObject.getter();
        v135 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v134, v135))
        {
          v136 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v136 = 136316162;
          v137 = _typeName(_:qualified:)();
          v139 = sub_10002C9C8(v137, v138, aBlock);
          v156 = v88;
          v140 = v139;

          *(v136 + 4) = v140;
          *(v136 + 12) = 2082;
          v141 = sub_10002C9C8(v163, v92, aBlock);

          *(v136 + 14) = v141;
          *(v136 + 22) = 2082;
          v142 = v90[8];
          v143 = v90[9];

          v144 = sub_10002C9C8(v142, v143, aBlock);

          *(v136 + 24) = v144;
          *(v136 + 32) = 2082;
          v145 = sub_10002C9C8(v165, v133, aBlock);

          *(v136 + 34) = v145;
          *(v136 + 42) = 2082;
          v146 = v90[3];
          v147 = v90[4];

          v148 = sub_10002C9C8(v146, v147, aBlock);

          *(v136 + 44) = v148;
          _os_log_impl(&_mh_execute_header, v134, v135, "[%s] connectToEntry<%{public}s> - pre-connected, dropping entry because existing entry: %{public}s for groupID: %{public}s expects different endpoint: %{public}s", v136, 0x34u);
          swift_arrayDestroy();

          v149 = v152;
          v150 = v156;
        }

        else
        {

          v149 = v132;
          v150 = v88;
        }

        (v166)(v149, v150);
      }
    }

    else
    {

      sub_1002A4A5C(a1);
    }
  }

  else
  {
    v114 = *(a1 + 88);
    v115 = objc_allocWithZone(MRRequestDetails);
    v116 = v114;
    v117 = String._bridgeToObjectiveC()();
    v118 = v163;
    v119 = v168;
    v120 = String._bridgeToObjectiveC()();
    v121 = String._bridgeToObjectiveC()();
    v122 = [v115 initWithName:v117 requestID:v120 reason:v121 userInitiated:0];

    v123 = swift_allocObject();
    v124 = v162;
    v123[2] = v86;
    v123[3] = v124;
    v125 = v165;
    v123[4] = v160;
    v123[5] = v125;
    v123[6] = v167;
    v123[7] = v118;
    v123[8] = v119;
    v123[9] = a1;
    v123[10] = v164;
    aBlock[4] = sub_1002D1CC4;
    aBlock[5] = v123;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001BC53C;
    aBlock[3] = &unk_1004C8040;
    v126 = _Block_copy(aBlock);

    v127 = v86;

    [v116 connectToExternalDeviceWithOptions:0 details:v122 completion:v126];

    _Block_release(v126);
  }
}

uint64_t sub_1002A2648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = a2;
  v29 = a10;
  v30 = a7;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v16 - 8);
  v17 = *(v33 + 64);
  __chkstk_darwin(v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v31 = *(v20 - 8);
  v32 = v20;
  v21 = *(v31 + 64);
  __chkstk_darwin(v20);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = a5;
  v24[5] = a6;
  v25 = v29;
  v24[6] = v30;
  v24[7] = a8;
  v24[8] = a9;
  v24[9] = a1;
  v24[10] = v25;
  aBlock[4] = sub_1002D1CFC;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C8090;
  v26 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v33 + 8))(v19, v16);
  (*(v31 + 8))(v23, v32);
}

void sub_1002A296C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(void, void), void *a7, uint64_t a8, uint64_t a9)
{
  v221 = a8;
  v222 = a7;
  v226 = a4;
  v227 = a6;
  v224 = a5;
  v225 = a3;
  v223 = a9;
  v217 = type metadata accessor for DispatchWorkItemFlags();
  v216 = *(v217 - 8);
  v11 = *(v216 + 64);
  __chkstk_darwin(v217);
  v214 = &v201[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v215 = type metadata accessor for DispatchQoS();
  v213 = *(v215 - 8);
  v13 = *(v213 + 64);
  __chkstk_darwin(v215);
  v212 = &v201[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v220 = type metadata accessor for DispatchTime();
  v211 = *(v220 - 8);
  v15 = *(v211 + 64);
  v16 = __chkstk_darwin(v220);
  v209 = &v201[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v210 = &v201[-v18];
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v219 = &v201[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v218 = &v201[-v25];
  v26 = __chkstk_darwin(v24);
  v28 = &v201[-v27];
  v29 = __chkstk_darwin(v26);
  v31 = &v201[-v30];
  v32 = __chkstk_darwin(v29);
  v34 = &v201[-v33];
  v35 = __chkstk_darwin(v32);
  v37 = &v201[-v36];
  __chkstk_darwin(v35);
  v39 = &v201[-v38];
  swift_beginAccess();
  v40 = *(a1 + 16);
  if (v40)
  {
    v208 = a2;
    v41 = sub_100034D68();
    v42 = v41[2];

    if (v42)
    {

      v43 = v226;
      v44 = sub_10000698C(v225, v226);
      if (v45)
      {
        v46 = *(v41[7] + 8 * v44);

        if (v46 == v40)
        {
          v47 = v222;
          if (v40[3] == v222[3] && v40[4] == v222[4] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v48 = sub_100028D40();
            v49 = v20[2];
            v206 = v19;
            v49(v39, v48, v19);

            v50 = v227;

            v51 = Logger.logObject.getter();
            v52 = static os_log_type_t.default.getter();

            LODWORD(v205) = v52;
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              v207 = v20;
              v54 = v53;
              aBlock = swift_slowAlloc();
              *v54 = 136315906;
              v55 = _typeName(_:qualified:)();
              v204 = v51;
              v57 = sub_10002C9C8(v55, v56, &aBlock);

              *(v54 + 4) = v57;
              *(v54 + 12) = 2082;
              *(v54 + 14) = sub_10002C9C8(v224, v50, &aBlock);
              *(v54 + 22) = 2082;

              v59 = sub_1002992B0(v58);
              v61 = v60;

              v62 = sub_10002C9C8(v59, v61, &aBlock);

              *(v54 + 24) = v62;
              *(v54 + 32) = 2082;
              v64 = sub_1002992B0(v63);
              v66 = sub_10002C9C8(v64, v65, &aBlock);

              *(v54 + 34) = v66;
              v47 = v222;
              v67 = v204;
              _os_log_impl(&_mh_execute_header, v204, v205, "[%s] connectToEntry<%{public}s> - replacing: %{public}s with: %{public}s", v54, 0x2Au);
              swift_arrayDestroy();

              v68 = v207;
            }

            else
            {

              v68 = v20;
            }

            (v68[1])(v39, v206);
            a2 = v208;
            v100 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints;
            v101 = *(v208 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints);

            v102 = v226;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v101;
            sub_1002CB7B8(v47, v225, v102, isUniquelyReferenced_nonNull_native);

            v104 = *(a2 + v100);
            *(a2 + v100) = aBlock;

            v73 = v20;
            goto LABEL_26;
          }

          v148 = sub_100028D40();
          v149 = v20;
          v150 = v43;
          v75 = v19;
          (v20[2])(v37, v148, v19);

          v151 = v227;

          v152 = Logger.logObject.getter();
          v153 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v152, v153))
          {
            v154 = swift_slowAlloc();
            v155 = swift_slowAlloc();
            v207 = v149;
            aBlock = v155;
            *v154 = 136316162;
            v156 = _typeName(_:qualified:)();
            v158 = sub_10002C9C8(v156, v157, &aBlock);
            v206 = v75;
            v159 = v158;

            *(v154 + 4) = v159;
            *(v154 + 12) = 2082;
            *(v154 + 14) = sub_10002C9C8(v224, v151, &aBlock);
            *(v154 + 22) = 2082;
            v160 = v40[8];
            v161 = v40[9];

            v162 = sub_10002C9C8(v160, v161, &aBlock);

            *(v154 + 24) = v162;
            *(v154 + 32) = 2082;
            *(v154 + 34) = sub_10002C9C8(v225, v150, &aBlock);
            *(v154 + 42) = 2082;
            v163 = v40[3];
            v164 = v40[4];

            v165 = sub_10002C9C8(v163, v164, &aBlock);

            *(v154 + 44) = v165;
            _os_log_impl(&_mh_execute_header, v152, v153, "[%s] connectToEntry<%{public}s> - dropping entry because existing entry: %{public}s for groupID: %{public}s expects different endpoint: %{public}s", v154, 0x34u);
            swift_arrayDestroy();

            (v207[1])(v37, v206);
            return;
          }

          v98 = v149[1];
          v99 = v37;
LABEL_23:
          v98(v99, v75);
          return;
        }

LABEL_19:
        v83 = sub_100028D40();
        v84 = v20;
        (v20[2])(v34, v83, v19);

        v85 = v227;

        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v207 = v84;
          v89 = v88;
          aBlock = swift_slowAlloc();
          *v89 = 136315650;
          v90 = _typeName(_:qualified:)();
          v92 = sub_10002C9C8(v90, v91, &aBlock);

          *(v89 + 4) = v92;
          *(v89 + 12) = 2082;
          *(v89 + 14) = sub_10002C9C8(v224, v85, &aBlock);
          *(v89 + 22) = 2082;

          v94 = sub_1002992B0(v93);
          v96 = v95;

          v97 = sub_10002C9C8(v94, v96, &aBlock);

          *(v89 + 24) = v97;
          _os_log_impl(&_mh_execute_header, v86, v87, "[%s] connectToEntry<%{public}s> - dropping entry because replacement target: %{public}s is no longer current", v89, 0x20u);
          swift_arrayDestroy();

          (v207[1])(v34, v19);
        }

        else
        {

          (v84[1])(v34, v19);
        }

        return;
      }
    }

    goto LABEL_19;
  }

  v69 = sub_100034D68();
  if (!v69[2] || (v70 = sub_10000698C(v225, v226), (v71 & 1) == 0))
  {

    v73 = v20;
    goto LABEL_15;
  }

  v72 = *(v69[7] + 8 * v70);

  v73 = v20;
  if (v72 != v222)
  {
LABEL_15:
    v74 = sub_100028D40();
    v75 = v19;
    (v73[2])(v31, v74, v19);
    v76 = v227;

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v79 = 136315394;
      v80 = _typeName(_:qualified:)();
      v82 = sub_10002C9C8(v80, v81, &aBlock);

      *(v79 + 4) = v82;
      *(v79 + 12) = 2082;
      *(v79 + 14) = sub_10002C9C8(v224, v76, &aBlock);
      _os_log_impl(&_mh_execute_header, v77, v78, "[%s] connectToEntry<%{public}s> - dropping entry because it is no longer current", v79, 0x16u);
      swift_arrayDestroy();

      (v73[1])(v31, v19);
      return;
    }

    v98 = v73[1];
    v99 = v31;
    goto LABEL_23;
  }

LABEL_26:
  v208 = a2;
  if (v221)
  {
    swift_getErrorValue();
    v105 = v235;
    swift_errorRetain();
    sub_1002490BC(v105);
    v107 = v106 & 0x1FFFFFFFFLL;
    v108 = sub_100028D40();
    v109 = v73[2];
    if (v107 == 119)
    {
      v110 = v19;
      (v109)(v28, v108, v19);
      v111 = v227;

      v112 = v222;

      v113 = v226;

      v114 = Logger.logObject.getter();
      v115 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v220 = swift_slowAlloc();
        aBlock = v220;
        *v116 = 136315906;
        v117 = _typeName(_:qualified:)();
        v119 = v73;
        v120 = sub_10002C9C8(v117, v118, &aBlock);

        *(v116 + 4) = v120;
        *(v116 + 12) = 2082;
        v121 = v224;
        *(v116 + 14) = sub_10002C9C8(v224, v227, &aBlock);
        *(v116 + 22) = 2082;
        v122 = [v222[11] uniqueIdentifier];
        v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v206 = v110;
        v125 = v124;

        v126 = sub_10002C9C8(v123, v125, &aBlock);

        *(v116 + 24) = v126;
        *(v116 + 32) = 2082;
        *(v116 + 34) = sub_10002C9C8(v225, v113, &aBlock);
        _os_log_impl(&_mh_execute_header, v114, v115, "[%s] connectToEntry<%{public}s> - authorization required for endpoint: %{public}s with groupID: %{public}s", v116, 0x2Au);
        swift_arrayDestroy();

        v112 = v222;

        (v119[1])(v28, v206);
        v111 = v227;
      }

      else
      {

        (v73[1])(v28, v110);
        v121 = v224;
      }

      *(v112 + 16) = 3;
      aBlock = 0;
      v230 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v166._countAndFlagsBits = 0x547463656E6E6F63;
      v166._object = 0xEF3C7972746E456FLL;
      String.append(_:)(v166);
      v167._countAndFlagsBits = v121;
      v167._object = v111;
      String.append(_:)(v167);
      v168._object = 0x800000010043F4B0;
      v168._countAndFlagsBits = 0xD000000000000023;
      String.append(_:)(v168);
      sub_100033F40(aBlock, v230);

      sub_1002A01EC(v169);
    }

    else
    {
      v127 = v218;
      v205 = v108;
      v128 = v19;
      v207 = v109;
      v203 = v73 + 2;
      v109(v218);
      v129 = v227;

      swift_errorRetain();
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.error.getter();

      v202 = v131;
      v204 = v130;
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v132 = 136316162;
        v134 = _typeName(_:qualified:)();
        v206 = v128;
        v136 = sub_10002C9C8(v134, v135, &aBlock);

        *(v132 + 4) = v136;
        *(v132 + 12) = 2082;
        *(v132 + 14) = sub_10002C9C8(v224, v129, &aBlock);
        *(v132 + 22) = 2114;
        swift_errorRetain();
        v137 = _swift_stdlib_bridgeErrorToNSError();
        *(v132 + 24) = v137;
        *v133 = v137;
        *(v132 + 32) = 2082;
        v138 = v222;
        v139 = [v222[11] uniqueIdentifier];
        v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v142 = v141;

        v143 = sub_10002C9C8(v140, v142, &aBlock);

        *(v132 + 34) = v143;
        *(v132 + 42) = 2082;
        *(v132 + 44) = sub_10002C9C8(v225, v226, &aBlock);
        v144 = v204;
        _os_log_impl(&_mh_execute_header, v204, v202, "[%s] connectToEntry<%{public}s> - error: %{public}@ connecting to endpoint: %{public}s with groupID: %{public}s", v132, 0x34u);
        sub_1000038A4(v133, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();

        v145 = v218;
        v128 = v206;
        v218 = v20[1];
        (v218)(v145, v206);
        v146 = v208;
        v147 = v138;
      }

      else
      {

        v218 = v73[1];
        (v218)(v127, v128);
        v146 = v208;
        v147 = v222;
      }

      v170 = v219;
      v171 = v147[6];
      v172 = v147[7];
      v173 = sub_100299BEC();
      if (v173[2] && (v174 = sub_10000698C(v171, v172), (v175 & 1) != 0))
      {
        v176 = *(v173[7] + 8 * v174);

        if (v176 * 4.0 > 1800.0)
        {
          v177 = v176 * 4.0;
        }

        else
        {
          v177 = 1800.0;
        }
      }

      else
      {

        v178 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals;
        v179 = *(v208 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals);

        v180 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v179;
        v177 = 30.0;
        sub_1002CB934(v171, v172, v180, 30.0);
        v181 = *(v208 + v178);
        *(v208 + v178) = aBlock;
        v146 = v208;
      }

      v183 = v226;
      v182 = v227;
      (v207)(v170, v205, v128);

      v184 = Logger.logObject.getter();
      v185 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v184, v185))
      {
        v186 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v186 = 136315906;
        v187 = _typeName(_:qualified:)();
        v189 = sub_10002C9C8(v187, v188, &aBlock);

        *(v186 + 4) = v189;
        *(v186 + 12) = 2082;
        *(v186 + 14) = sub_10002C9C8(v224, v182, &aBlock);
        *(v186 + 22) = 2082;
        *(v186 + 24) = sub_10002C9C8(v225, v183, &aBlock);
        *(v186 + 32) = 2050;
        *(v186 + 34) = v177;
        _os_log_impl(&_mh_execute_header, v184, v185, "[%s] connectToEntry<%{public}s> - pause reconnection attempts for groupID: %{public}s for: %{public}fs", v186, 0x2Au);
        swift_arrayDestroy();
        v146 = v208;

        v190 = v219;
      }

      else
      {

        v190 = v170;
      }

      v191 = (v218)(v190, v128);
      v192 = v222;
      v193 = (*(*v146 + 368))(v191);
      v194 = v209;
      static DispatchTime.now()();
      v195 = v210;
      + infix(_:_:)();
      v227 = *(v211 + 8);
      v227(v194, v220);
      v196 = swift_allocObject();
      *(v196 + 16) = v146;
      *(v196 + 24) = v192;
      v233 = sub_1002D1D34;
      v234 = v196;
      aBlock = _NSConcreteStackBlock;
      v230 = 1107296256;
      v231 = sub_100003D98;
      v232 = &unk_1004C80E0;
      v197 = _Block_copy(&aBlock);

      v198 = v212;
      static DispatchQoS.unspecified.getter();
      v228 = _swiftEmptyArrayStorage;
      sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      v199 = v214;
      v200 = v217;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v197);

      (*(v216 + 8))(v199, v200);
      (*(v213 + 8))(v198, v215);
      v227(v195, v220);
    }
  }

  else
  {
    sub_1002A4A5C(v222);
  }
}

void sub_1002A4144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v62 = a2;
  v63 = a3;
  v6 = *v3;
  v7 = type metadata accessor for RoutingMode();
  v57 = *(v7 - 8);
  v58 = v7;
  v8 = *(v57 + 64);
  __chkstk_darwin(v7);
  v56 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 72);
  v64 = *(a1 + 64);
  v65 = v15;
  v55 = v6;
  isa = v6[46].isa;

  v61 = isa(v19);
  v20 = sub_100028D40();
  v59 = v11;
  v60 = v10;
  (*(v11 + 16))(v14, v20, v10);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v23 = 136316162;
    v24 = _typeName(_:qualified:)();
    v55 = v21;
    v26 = sub_10002C9C8(v24, v25, aBlock);
    v53 = v22;
    v27 = v26;

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_10002C9C8(v64, v17, aBlock);
    *(v23 + 22) = 2082;
    v28 = [*(a1 + 88) uniqueIdentifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_10002C9C8(v29, v31, aBlock);

    *(v23 + 24) = v32;
    *(v23 + 32) = 2082;
    *(v23 + 34) = sub_10002C9C8(v65, v16, aBlock);
    *(v23 + 42) = 2082;
    v33 = v56;
    ((*v4)[49].isa)();
    sub_1002CDD70(&unk_100524C30, &type metadata accessor for RoutingMode);
    v34 = v58;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v57 + 8))(v33, v34);
    v38 = sub_10002C9C8(v35, v37, aBlock);

    *(v23 + 44) = v38;
    v21 = v55;
    _os_log_impl(&_mh_execute_header, v55, v53, "[%s] connectWithAuthorization<%{public}s> - connect to endpoint: %{public}s with groupID: %{public}s, routingMode: %{public}s", v23, 0x34u);
    swift_arrayDestroy();
  }

  (*(v59 + 8))(v14, v60);
  v39 = *(a1 + 88);
  v40 = objc_allocWithZone(MRRequestDetails);
  v41 = v39;
  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  v44 = String._bridgeToObjectiveC()();
  v45 = [v40 initWithName:v42 requestID:v43 reason:v44 userInitiated:1];

  v46 = swift_allocObject();
  v47 = v61;
  v46[2] = v61;
  v46[3] = a1;
  v48 = v65;
  v46[4] = v4;
  v46[5] = v48;
  v49 = v62;
  v46[6] = v16;
  v46[7] = v49;
  v46[8] = v63;
  aBlock[4] = sub_1002D1B38;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001BC53C;
  aBlock[3] = &unk_1004C7F78;
  v50 = _Block_copy(aBlock);

  v51 = v47;

  [v41 connectToExternalDeviceWithOptions:1 details:v45 completion:v50];
  _Block_release(v50);
}

uint64_t sub_1002A474C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a2;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v15 - 8);
  v16 = *(v29 + 64);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v27 = *(v19 - 8);
  v28 = v19;
  v20 = *(v27 + 64);
  __chkstk_darwin(v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a5;
  v23[5] = a6;
  v23[6] = a7;
  v23[7] = a8;
  v23[8] = a1;
  aBlock[4] = sub_1002D1B4C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C7FC8;
  v24 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v29 + 8))(v18, v15);
  (*(v27 + 8))(v22, v28);
}

void sub_1002A4A5C(void *a1)
{
  v2 = v1;
  v4 = a1[6];
  v5 = a1[7];
  v30 = (*(*v1 + 368))();
  v6 = a1[8];
  v7 = a1[9];
  v8 = sub_100034D68();
  if (v8[2] && (v9 = sub_10000698C(v4, v5), (v10 & 1) != 0))
  {
    v11 = *(v8[7] + 8 * v9);

    v12 = *(v11 + 64) == v6 && *(v11 + 72) == v7;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = objc_opt_self();
      v14 = [v13 defaultCenter];
      v15 = *(v11 + 88);
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      v18[2] = v30;
      v18[3] = v16;
      v18[4] = v17;
      v35 = sub_1002D1A28;
      v36 = v18;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_1002A513C;
      v34 = &unk_1004C7ED8;
      v19 = _Block_copy(&aBlock);
      v20 = v15;
      v21 = v30;

      v22 = [v14 addObserverForName:0 object:v20 queue:0 usingBlock:v19];
      _Block_release(v19);

      if ([*(v11 + 88) isConnected])
      {
        *(v11 + 16) = 2;
        v23 = *(v11 + 40);
        *(v11 + 40) = v22;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v24 = *(v11 + 48);
        v25 = *(v11 + 56);
        aBlock = sub_100299BEC();

        sub_10029A938(0, 1, v24, v25);
        v26 = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals);
        *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___failedEndpointReconnectIntervals) = aBlock;

        aBlock = 0;
        v32 = 0xE000000000000000;
        _StringGuts.grow(_:)(45);

        aBlock = 0xD000000000000015;
        v32 = 0x800000010043F450;
        v27._countAndFlagsBits = v6;
        v27._object = v7;
        String.append(_:)(v27);
        v28._countAndFlagsBits = 0xD000000000000016;
        v28._object = 0x800000010043F470;
        String.append(_:)(v28);
        sub_100033F40(aBlock, v32);

        sub_1002A5230(v11);
        sub_1002A01EC();

        swift_unknownObjectRelease();
      }

      else
      {
        v29 = [v13 defaultCenter];
        [v29 removeObserver:v22];

        sub_1002A58F4(v11);

        swift_unknownObjectRelease();
      }

      return;
    }
  }

  else
  {
  }
}

uint64_t sub_1002A4E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v23);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Notification.name.getter();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = v16;
  v19[5] = v18;
  aBlock[4] = sub_1002D1A34;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C7F28;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v23);
}

uint64_t sub_1002A513C(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_1002A5230(uint64_t a1)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(*v1 + 368);

  v53 = v5(v6);
  v7 = [*(a1 + 88) origin];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  if (*(a1 + 16) != 2)
  {

LABEL_9:

    return;
  }

  v52 = v4;
  sub_100018D7C(0, &qword_100521CF0, &off_1004B30B0);
  v9 = sub_10024C81C();
  v10 = [v9 originClientForOrigin:v8];

  v11 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
  v12 = &MROutputContextDataSourceVolumeCapabilitiesUserInfoKey_ptr;
  v13 = &selRef_requestDetails;
  if (!v10)
  {
    goto LABEL_13;
  }

  v14 = [v10 deviceInfo];

  v15 = [v14 systemMediaApplication];
  if (!v15)
  {
    goto LABEL_13;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = sub_10024C81C();
  v17 = objc_allocWithZone(MRPlayerPath);
  v18 = v8;
  v19 = String._bridgeToObjectiveC()();

  v20 = v17;
  v12 = &MROutputContextDataSourceVolumeCapabilitiesUserInfoKey_ptr;
  v21 = [v20 initWithOrigin:v18 bundleIdentifier:v19 player:0];

  v13 = &selRef_requestDetails;
  v22 = [v16 resolveExistingPlayerPath:v21];

  v11 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
  if (!v22)
  {
LABEL_13:
    if (*(a1 + 98) == 1)
    {
      *(a1 + 98) = 0;
      sub_1002985D8(1);
      aBlock = 0;
      v55 = 0xE000000000000000;
      _StringGuts.grow(_:)(77);
      v32._object = 0x800000010043F2A0;
      v32._countAndFlagsBits = 0xD00000000000004BLL;
      String.append(_:)(v32);
      v33._countAndFlagsBits = sub_1002992B0();
      String.append(_:)(v33);

      sub_100033F40(0, 0xE000000000000000);
    }

    goto LABEL_15;
  }

  if (![v22 isResolved])
  {

    goto LABEL_13;
  }

  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 localOrigin];
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = v53;
  v27[3] = v26;
  v27[4] = v52;
  v27[5] = v3;
  v27[6] = a1;
  v58 = sub_1002D198C;
  v59 = v27;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v56 = sub_1002C82C8;
  v57 = &unk_1004C7DE8;
  v28 = _Block_copy(&aBlock);
  v29 = v53;

  v30 = v29;

  v12 = &MROutputContextDataSourceVolumeCapabilitiesUserInfoKey_ptr;

  MRMediaRemotePlaybackSessionIsMigrationPossibleForPlayer();
  v31 = v28;
  v11 = &selRef_initWithRequest_playerPath_setPlaybackSessionCommandID_;
  _Block_release(v31);

  v13 = &selRef_requestDetails;
LABEL_15:
  v34 = sub_10024C81C();
  v35 = [objc_opt_self() v11[292]];
  v36 = sub_10033D250();
  swift_beginAccess();
  v38 = *v36;
  v37 = v36[1];
  v39 = objc_allocWithZone(v12[157]);

  v40 = String._bridgeToObjectiveC()();

  v41 = [v39 initWithOrigin:v35 bundleIdentifier:v40 player:0];

  v42 = [v34 v13[37]];
  if (v42)
  {
    if ([v42 isResolved])
    {
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      v44[2] = v53;
      v44[3] = v43;
      v44[4] = v52;
      v44[5] = v3;
      v44[6] = a1;
      v58 = sub_1002D1924;
      v59 = v44;
      aBlock = _NSConcreteStackBlock;
      v55 = 1107296256;
      v56 = sub_1002C82C8;
      v57 = &unk_1004C7D98;
      v45 = _Block_copy(&aBlock);
      v46 = v53;
      v47 = v8;
      v48 = v46;

      v49 = v42;

      MRMediaRemotePlaybackSessionIsMigrationPossibleForPlayer();

      _Block_release(v45);
      return;
    }
  }

  if (*(a1 + 97) == 1)
  {
    *(a1 + 97) = 0;
    sub_10029839C(1);
    aBlock = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(77);
    v50._object = 0x800000010043F210;
    v50._countAndFlagsBits = 0xD00000000000004BLL;
    String.append(_:)(v50);
    v51._countAndFlagsBits = sub_1002992B0();
    String.append(_:)(v51);

    sub_100033F40(aBlock, v55);
  }
}

uint64_t sub_1002A58F4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  __chkstk_darwin(v4);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchTime();
  v47 = *(v51 - 8);
  v11 = v47[8];
  v12 = __chkstk_darwin(v51);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v18 = a1[6];
  v17 = a1[7];
  v19 = sub_100034D68();
  if (v19[2] && (v20 = sub_10000698C(v18, v17), (v21 & 1) != 0))
  {
    v45 = v7;
    v22 = *(v19[7] + 8 * v20);

    v23 = *(v22 + 64);
    v24 = *(v22 + 72);
    v46 = v22;
    v25 = a1[8];
    v26 = a1[9];
    v27 = v23 == v25 && v24 == v26;
    if (v27 || (v28 = a1[8], v29 = a1[9], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v43 = v4;
      v44 = v25;
      v30 = OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints;
      *&aBlock = *(v2 + OBJC_IVAR____TtC12mediaremoted30HostedRoutingSessionDataSource____lazy_storage___endpoints);

      sub_10029A840(0, v18, v17);
      v31 = *(v2 + v30);
      *(v2 + v30) = aBlock;

      v41 = (*(*v2 + 368))(v32);
      static DispatchTime.now()();
      + infix(_:_:)();
      v42 = v47[1];
      v47 = v26;
      v42(v14, v51);
      v56 = sub_1002D504C;
      v57 = v2;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v54 = sub_100003D98;
      v55 = &unk_1004C7E60;
      v33 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v52 = _swiftEmptyArrayStorage;
      sub_1002CDD70(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      v34 = v49;
      v35 = v43;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v36 = v41;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v33);

      (*(v50 + 8))(v34, v35);
      (*(v48 + 8))(v10, v45);
      v42(v16, v51);

      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      strcpy(&aBlock, "removeEntry<");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v37._countAndFlagsBits = v44;
      v37._object = v47;
      String.append(_:)(v37);
      v38._object = 0x800000010043F410;
      v38._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v38);
      v39._countAndFlagsBits = sub_1002992B0();
      String.append(_:)(v39);

      sub_100033F40(aBlock, *(&aBlock + 1));
    }

    else
    {
    }
  }

  else
  {
  }
}