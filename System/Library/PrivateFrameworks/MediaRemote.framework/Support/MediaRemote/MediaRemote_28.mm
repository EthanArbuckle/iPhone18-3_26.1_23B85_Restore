uint64_t sub_100393460(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_100393508(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v1;
  v13[4] = ObjectType;
  aBlock[4] = sub_100397F90;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D0B10;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  v16 = a1;
  v17 = v1;
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v21 + 8))(v7, v4);
  (*(v8 + 8))(v11, v20);
}

uint64_t sub_100393850(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001BC5A8(&qword_100523B48, &unk_100451A30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MRGroupSessionToken) initWithDiscoveredSession:a1];
  v18 = [v17 joinURLString];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.init(string:)();

  result = (*(v13 + 48))(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    sub_100393CB8(v16, a2 & 1, a3, a4);
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t sub_100393CB8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a3;
  v34 = a4;
  v31 = a2;
  ObjectType = swift_getObjectType();
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v35 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v35);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *&v4[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 25) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = v31;
  (*(v15 + 32))(v21 + v18, v17, v14);
  v22 = (v21 + v19);
  v24 = v33;
  v23 = v34;
  *v22 = v33;
  v22[1] = v23;
  *(v21 + v20) = ObjectType;
  aBlock[4] = sub_100397CD4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D0A20;
  v25 = _Block_copy(aBlock);
  v26 = v30;
  v27 = v5;
  sub_10021DF20(v24);
  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  v28 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v38 + 8))(v9, v28);
  (*(v36 + 8))(v13, v37);
}

void sub_1003940A4(char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a4;
  v74 = a5;
  v86 = a2;
  v79 = a1;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v71 = v11;
  v72 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = *(v84 + 64);
  __chkstk_darwin(v12);
  v82 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v81 = *(v83 - 8);
  v15 = *(v81 + 64);
  __chkstk_darwin(v83);
  v80 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchTimeInterval();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = type metadata accessor for DispatchTime();
  v78 = *(v91 - 1);
  v22 = *(v78 + 64);
  v23 = __chkstk_darwin(v91);
  v76 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v77 = &v70 - v25;
  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v88 = v9;
  v89 = v8;
  v26 = type metadata accessor for Logger();
  sub_100015AFC(v26, qword_100537508);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v87 = a3;
  v90 = a6;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v30 = 136315138;
    v32 = _typeName(_:qualified:)();
    v34 = v21;
    v35 = v18;
    v36 = v17;
    v37 = sub_10002C9C8(v32, v33, &aBlock);
    a6 = v90;

    *(v30 + 4) = v37;
    v17 = v36;
    v18 = v35;
    v21 = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "[%s] Begin banner suppression.", v30, 0xCu);
    sub_100026A44(v31);
  }

  v38 = v79;
  v79[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners] = 1;
  v75 = *&v38[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  v39 = v76;
  static DispatchTime.now()();
  *v21 = 15;
  (*(v18 + 104))(v21, enum case for DispatchTimeInterval.seconds(_:), v17);
  v40 = v77;
  + infix(_:_:)();
  (*(v18 + 8))(v21, v17);
  v78 = *(v78 + 8);
  (v78)(v39, v91);
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  *(v41 + 24) = a6;
  v97 = sub_100397D78;
  v98 = v41;
  aBlock = _NSConcreteStackBlock;
  v94 = 1107296256;
  v76 = &v95;
  v95 = sub_100003D98;
  v96 = &unk_1004D0A70;
  v42 = _Block_copy(&aBlock);
  v43 = v38;
  v44 = v80;
  static DispatchQoS.unspecified.getter();
  v92 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  v45 = v82;
  v46 = v85;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v47 = v75;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v42);

  (*(v84 + 8))(v45, v46);
  (*(v81 + 8))(v44, v83);
  (v78)(v40, v91);

  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004592F0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v49;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = (v86 & 1) == 0;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v50;
  v51 = v89;
  *(inited + 120) = v89;
  v52 = sub_1000397B4((inited + 96));
  v54 = v87;
  v53 = v88;
  v91 = *(v88 + 16);
  v91(v52, v87, v51);
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v55;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v56;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v57 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  v58 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  if (v58)
  {
    v59 = v58;
    sub_1003949B4(v57);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v61 = v72;
    v91(v72, v54, v51);
    v62 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v63 = (v71 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    (*(v53 + 32))(v65 + v62, v61, v51);
    v66 = (v65 + v63);
    v68 = v73;
    v67 = v74;
    *v66 = v73;
    v66[1] = v67;
    *(v65 + v64) = v90;
    v97 = sub_100397EE4;
    v98 = v65;
    aBlock = _NSConcreteStackBlock;
    v94 = 1107296256;
    v95 = sub_1002D50E0;
    v96 = &unk_1004D0AC0;
    v69 = _Block_copy(&aBlock);
    sub_10021DF20(v68);

    sub_10019E4E8(v59, isa, v69);
    _Block_release(v69);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003949B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001BC5A8(&qword_1005216C8, &unk_100450040);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100020E0C(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1001C4088(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1001C4088(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1001C4088(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1001C4088(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_100394C7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100015AFC(v13, qword_100537508);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v37 = v18;
      *v16 = 136315394;
      v19 = _typeName(_:qualified:)();
      v21 = sub_10002C9C8(v19, v20, &v37);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2114;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v22;
      *v17 = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Failed to launch music with error: %{public}@", v16, 0x16u);
      sub_1001E4048(v17);

      sub_100026A44(v18);

      if (!a3)
      {
        return;
      }

LABEL_15:
      a3(a1);
      return;
    }

    if (a3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v36 = a3;
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100015AFC(v23, qword_100537508);
    (*(v9 + 16))(v12, a2, v8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v35[1] = a4;
      v27 = v26;
      v37 = swift_slowAlloc();
      *v27 = 136315394;
      v28 = _typeName(_:qualified:)();
      v30 = sub_10002C9C8(v28, v29, &v37);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2082;
      sub_1000049C0(&unk_100528EC0, &type metadata accessor for URL);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v9 + 8))(v12, v8);
      v34 = sub_10002C9C8(v31, v33, &v37);

      *(v27 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%s] Launched music with URL: %{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    a3 = v36;
    if (v36)
    {
      goto LABEL_15;
    }
  }
}

void sub_100395100(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v7 = sub_1001BC5A8(&qword_100523B48, &unk_100451A30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 == 1)
  {
    v16 = v3 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext;
    v17 = *(&v3->isa + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext);
    if (v17)
    {
      v44 = v3;
      v18 = *(v16 + 3);
      v19 = *(v16 + 1);
      v20 = qword_100537500;
      v21 = v17;
      v42 = v19;
      v43 = v18;

      if (v20 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100015AFC(v22, qword_100537508);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v41 = v21;
        v26 = v25;
        v27 = swift_slowAlloc();
        v45 = v27;
        *v26 = 136315138;
        v28 = _typeName(_:qualified:)();
        v30 = sub_10002C9C8(v28, v29, &v45);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "[%s] Launch Music for banner tap.", v26, 0xCu);
        sub_100026A44(v27);

        v21 = v41;
      }

      v31 = [objc_allocWithZone(MRGroupSessionToken) initWithDiscoveredSession:v21];
      v32 = [v31 joinURLString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URL.init(string:)();

      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v12 + 32))(v15, v10, v11);
        sub_100393CB8(v15, 1, 0, 0);

        (*(v12 + 8))(v15, v11);
      }
    }

    else
    {
      if (qword_100537500 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_100015AFC(v33, qword_100537508);

      v44 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v34))
      {
        v35 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v35 = 136315394;
        v36 = _typeName(_:qualified:)();
        v38 = sub_10002C9C8(v36, v37, &v45);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2082;
        *(v35 + 14) = sub_10002C9C8(a1, a2, &v45);
        _os_log_impl(&_mh_execute_header, v44, v34, "[%s] Got banner tap for request: %{public}s but have no context", v35, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v39 = v44;
      }
    }
  }
}

uint64_t sub_100395664(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v2[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = ObjectType;
  aBlock[4] = sub_100397690;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D09D0;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  v17 = v2;
  v18 = a1;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v22 + 8))(v8, v5);
  (*(v9 + 8))(v12, v21);
}

uint64_t sub_100395A54(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v40 = v14;
  v41 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v39 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100015AFC(v18, qword_100537508);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = a2;
    v22 = v21;
    v36 = swift_slowAlloc();
    v37 = v9;
    aBlock[0] = v36;
    *v22 = 136315650;
    v23 = _typeName(_:qualified:)();
    v25 = sub_10002C9C8(v23, v24, aBlock);
    v35 = ObjectType;
    v26 = v25;

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_10002C9C8(0xD00000000000002ELL, 0x8000000100444800, aBlock);
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_10002C9C8(v38, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v19, v20, "[%s] %s - %s", v22, 0x20u);
    swift_arrayDestroy();
    v9 = v37;

    a2 = v38;

    v27 = v35;
  }

  else
  {

    v27 = ObjectType;
  }

  v28 = *&v4[OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue];
  v29 = swift_allocObject();
  v29[2] = v4;
  v29[3] = a2;
  v29[4] = a3;
  v29[5] = a1;
  v29[6] = v27;
  aBlock[4] = sub_1003972BC;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D0980;
  v30 = _Block_copy(aBlock);

  v31 = v28;
  v32 = v4;
  v33 = v39;
  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_1000049C0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_100004674(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v10 + 8))(v13, v9);
  (*(v41 + 8))(v33, v40);
}

id sub_100395F08(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_100537500 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_100015AFC(v11, qword_100537508);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v15 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_10002C9C8(v18, v19, &v24);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2114;
    *(v15 + 14) = v12;
    *v16 = v12;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] Dismissing banner: %{public}@", v15, 0x16u);
    sub_1001E4048(v16);

    sub_100026A44(v17);
  }

  return [*(v2 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_bannerCenter) dismissAllBannerRequests];
}

uint64_t sub_1003961B4(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v16)
  {
    v16 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_ongoingNotifications;
    swift_beginAccess();
    v9 = *(v4 + v16);

    a1 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v16) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v9 = sub_10039719C(0, *(v9 + 16) + 1, 1, v9);
  *(v4 + v16) = v9;
LABEL_3:
  v19 = *(v9 + 16);
  v18 = *(v9 + 24);
  if (v19 >= v18 >> 1)
  {
    v9 = sub_10039719C((v18 > 1), v19 + 1, 1, v9);
  }

  *(v9 + 16) = v19 + 1;
  v20 = (v9 + 32 * v19);
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  *(v4 + v16) = v9;
  return swift_endAccess();
}

void sub_1003963A0(void *a1)
{
  v30 = a1;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_ongoingNotifications;
    swift_beginAccess();
    v10 = *(v1 + v9);
    v11 = *(v10 + 16);
    v31 = v10;

    v29 = v11;
    if (!v11)
    {
LABEL_13:

      return;
    }

    v12 = 0;
    v13 = (v31 + 56);
    while (v12 < *(v31 + 16))
    {
      v14 = *(v13 - 3);
      v15 = *(v13 - 2);
      v16 = *v13;
      v28[1] = *(v13 - 1);
      v17 = v14;

      v18 = [v17 identifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = [v30 identifier];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      if (v19 == v23 && v21 == v25)
      {

        goto LABEL_13;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        ++v12;

        v13 += 4;
        if (v29 != v12)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100396644(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_ongoingNotifications;
    swift_beginAccess();
    v11 = *(v2 + v10);
    v12 = *(v11 + 16);

    v23 = v12;
    if (!v12)
    {
LABEL_7:

      return;
    }

    v14 = 0;
    v15 = (v11 + 56);
    while (v14 < *(v11 + 16))
    {
      v16 = *(v15 - 3);
      v17 = *(v15 - 2);
      v19 = *(v15 - 1);
      v18 = *v15;
      v26[0] = v24;
      v26[1] = v25;
      __chkstk_darwin(v13);
      *(&v22 - 2) = v26;
      v21 = v20;

      if ((sub_1001E5604(sub_10001BDAC, (&v22 - 4), v17) & 1) == 0)
      {

        ++v14;
        v15 += 4;
        if (v23 != v14)
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100396894(void *a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  sub_1003963A0(a1);
  if (v10)
  {
    v11 = v10;
    v12 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_notificationCenter);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v12 removePendingNotificationRequestsWithIdentifiers:isa];

    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
    [v12 removeDeliveredNotificationsWithIdentifiers:v14.super.isa];

    goto LABEL_7;
  }

  if (qword_100537500 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = type metadata accessor for Logger();
  sub_100015AFC(v15, qword_100537508);
  v16 = a1;
  v14.super.isa = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14.super.isa, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v18 = 136315394;
    v21 = _typeName(_:qualified:)();
    v23 = sub_10002C9C8(v21, v22, &v26);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v16;
    *v19 = v16;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v14.super.isa, v17, "[%s] Received request to dismiss notifications for unknown request: %@", v18, 0x16u);
    sub_1001E4048(v19);

    sub_100026A44(v20);
  }

LABEL_7:
}

void sub_100396BA8(void *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v53 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v47[1] = ObjectType;
  v12 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_ongoingNotifications;
  swift_beginAccess();
  v48 = v12;
  v49 = v3;
  v13 = *(*(v3 + v12) + 16);

  v51 = v13;
  if (!v13)
  {
LABEL_11:

    if (qword_100537500 == -1)
    {
LABEL_12:
      v30 = type metadata accessor for Logger();
      sub_100015AFC(v30, qword_100537508);
      v31 = v53;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v54 = v36;
        *v34 = 136315394;
        v37 = _typeName(_:qualified:)();
        v39 = sub_10002C9C8(v37, v38, &v54);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2112;
        *(v34 + 14) = v31;
        *v35 = v31;
        v40 = v31;
        _os_log_impl(&_mh_execute_header, v32, v33, "[%s] Received request to dismiss notifications for unknown request: %@", v34, 0x16u);
        sub_1001E4048(v35);

        sub_100026A44(v36);
      }

LABEL_17:

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_12;
  }

  v15 = 0;
  v16 = 56;
  v52 = v14;
  while (1)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v17 = *(v14 + v16 - 16);
    v18 = *(v14 + v16);
    v19 = *(v14 + v16 - 24);

    v20 = [v19 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = [v53 identifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v21 == v25 && v23 == v27)
    {
      break;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_15;
    }

    ++v15;
    v16 += 32;
    v14 = v52;
    if (v51 == v15)
    {
      goto LABEL_11;
    }
  }

LABEL_15:

  v41 = *(v49 + v48);
  if (v15 < *(v41 + 16))
  {
    v42 = (v41 + v16);
    v43 = *(v42 - 2);
    v45 = *(v42 - 1);
    v44 = *v42;
    v46 = *(v42 - 3);

    v45(v50);
    swift_beginAccess();
    v32 = sub_1003970FC(v15);
    swift_endAccess();

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_100397060(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003970AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003970FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1003972A8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = (v3 + 32 * a1);
    v7 = v6[4];
    v8 = v6[5];
    v6 += 4;
    v9 = v5 - 1;
    v10 = v6[2];
    v11 = v6[3];
    memmove(v6, v6 + 4, 32 * (v5 - 1 - a1));
    *(v3 + 16) = v9;
    *v1 = v3;
    return v7;
  }

  return result;
}

char *sub_10039719C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_100528EB8, &qword_10045BA00);
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
    v10 = _swiftEmptyArrayStorage;
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

void sub_1003972BC()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  sub_100396644(v1, v3);
  if (v5)
  {
    v6 = v5;
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100015AFC(v7, qword_100537508);
    v8 = v6;

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v11 = 136315650;
      v13 = _typeName(_:qualified:)();
      v24 = v10;
      v15 = v2;
      v16 = sub_10002C9C8(v13, v14, &v27);

      *(v11 + 4) = v16;
      v2 = v15;
      *(v11 + 12) = 2048;
      *(v11 + 14) = v15;
      *(v11 + 22) = 2112;
      *(v11 + 24) = v8;
      *v12 = v6;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v9, v24, "[%s] Received notification response: %ld for join request: %@", v11, 0x20u);
      sub_1001E4048(v12);

      sub_100026A44(v25);
    }

    sub_100396894(v8);
    sub_100396BA8(v8, v2);
  }

  else
  {
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100015AFC(v18, qword_100537508);

    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = _typeName(_:qualified:)();
      v23 = sub_10002C9C8(v21, v22, &v27);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_10002C9C8(v1, v3, &v27);
      _os_log_impl(&_mh_execute_header, oslog, v19, "[%s] Received response from unknown notification: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
    }
  }
}

void sub_100397690()
{
  v1 = v0[4];
  v2 = v0[2] + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext;
  v3 = *v2;
  if (*v2)
  {
    v4 = v0[3];
    v5 = *(v2 + 24);
    v57 = *(v2 + 16);
    oslog = *(v2 + 8);

    v6 = v3;
    v7 = [v6 identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [v4 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v8 == v12 && v10 == v14)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        if (qword_100537500 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100015AFC(v17, qword_100537508);
        v18 = v6;
        v19 = oslog;

        v20 = v4;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v23 = 136315650;
          v24 = _typeName(_:qualified:)();
          v26 = sub_10002C9C8(v24, v25, &v61);

          *(v23 + 4) = v26;
          *(v23 + 12) = 2082;
          v27 = [v18 identifier];
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          oslogb = v19;
          v30 = v29;

          v31 = sub_10002C9C8(v28, v30, &v61);

          *(v23 + 14) = v31;
          *(v23 + 22) = 2082;
          v32 = [v20 identifier];
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          v36 = sub_10002C9C8(v33, v35, &v61);

          *(v23 + 24) = v36;
          _os_log_impl(&_mh_execute_header, v21, v22, "[%s] Got dismiss event for different session. Current: %{public}s, received: %{public}s. Ignoring", v23, 0x20u);
          swift_arrayDestroy();

          return;
        }

        goto LABEL_21;
      }
    }

    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100015AFC(v44, qword_100537508);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v61 = v48;
      *v47 = 136315138;
      v49 = _typeName(_:qualified:)();
      v51 = sub_10002C9C8(v49, v50, &v61);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "[%s] Got dismiss event from GroupSessionNearby", v47, 0xCu);
      sub_100026A44(v48);
    }

    v52 = [v6 identifier];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    sub_100391EF0(v53, v55);

    v57(v56);

LABEL_21:

    return;
  }

  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_100015AFC(v37, qword_100537508);
  osloga = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(osloga, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v61 = v40;
    *v39 = 136315138;
    v41 = _typeName(_:qualified:)();
    v43 = sub_10002C9C8(v41, v42, &v61);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, osloga, v38, "[%s] Got dismiss event without discovered session context. Ignoring", v39, 0xCu);
    sub_100026A44(v40);
  }

  else
  {
  }
}

void sub_100397CD4()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 25) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);

  sub_1003940A4(v5, v6, v0 + v2, v8, v9, v10);
}

void sub_100397D78()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners;
  if (*(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners) == 1)
  {
    v3 = *(v0 + 24);
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100015AFC(v4, qword_100537508);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10002C9C8(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%s] End banner suppression.", v7, 0xCu);
      sub_100026A44(v8);
    }

    *(v1 + v2) = 0;
  }
}

void sub_100397EE4(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  sub_100394C7C(a1, v1 + v4, v9, v10);
}

void sub_100397F90()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100537508);
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10002C9C8(v11, v12, &v15);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] Dismissing join request: %@", v8, 0x16u);
    sub_1001E4048(v9);

    sub_100026A44(v10);
  }

  sub_100396894(v5);
  sub_100396BA8(v5, 1);
}

uint64_t sub_10039814C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[8];
  v7 = v0[9];
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100450890;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *(v9 + 48) = v6;
  *(v9 + 56) = v5;

  sub_1003961B4(v2, v9, v8, v7);
}

void sub_100398224(uint64_t a1, const char *a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a1)
  {
    swift_errorRetain();
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100015AFC(v6, qword_100537508);
    swift_errorRetain();
    v7 = v4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v10 = 136315650;
      v13 = _typeName(_:qualified:)();
      v15 = sub_10002C9C8(v13, v14, &v29);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2114;
      *(v10 + 14) = v7;
      *v11 = v7;
      *(v10 + 22) = 2114;
      swift_errorRetain();
      v16 = v7;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 24) = v17;
      v11[1] = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, a2, v10, 0x20u);
      sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
      swift_arrayDestroy();

      sub_100026A44(v12);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100015AFC(v18, qword_100537508);
    v19 = v4;
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v21 = 136315394;
      v24 = _typeName(_:qualified:)();
      v26 = sub_10002C9C8(v24, v25, &v29);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2114;
      *(v21 + 14) = v19;
      *v22 = v19;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v20, "[%s] Added notification with request: %{public}@", v21, 0x16u);
      sub_1001E4048(v22);

      sub_100026A44(v23);
    }

    else
    {
    }
  }
}

void sub_1003985EC(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_100398640(uint64_t a1)
{
  v3 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

void sub_10039868C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_100391EF0(v1, v2);
}

id sub_1003986B8(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

uint64_t sub_10039870C(id a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners;
  if (*(v2 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_suppressBanners) == 1)
  {
    v5 = v1[4];
    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100015AFC(v6, qword_100537508);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      v11 = _typeName(_:qualified:)();
      v13 = sub_10002C9C8(v11, v12, &v21);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%s] End banner suppression.", v9, 0xCu);
      sub_100026A44(v10);
    }

    *(v2 + v4) = 0;
  }

  v14 = (v2 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext);
  v15 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext);
  if (v15)
  {
    v17 = v14[2];
    v16 = v14[3];
    v18 = v14[1];
    sub_1003986B8(*(v2 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext), v18);
    v19 = v18;
    sub_1003985EC(v15, v18);
    if (v18)
    {

      if (v3 == v19)
      {
        a1 = sub_100395F08(v3);
      }
    }
  }

  return sub_100004E7C(a1);
}

unint64_t sub_1003988F0()
{
  v1 = *(v0 + 16);
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = kMREventNearbyNotificationTypeInAppBanner;
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v5;
  v6 = v3;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithUnsignedChar:{objc_msgSend(v1, "routeType")}];
  v7 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_1005228F0, &unk_100450070);
  swift_arrayDestroy();
  return v7;
}

void sub_1003989FC()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v81 = v0[6];
  v5 = &selRef_entitlements;
  v6 = [v2 hostInfo];
  v7 = [v6 isInAppBannerAllowed];

  if (v7)
  {
    v78 = v4;
    v79 = v3;
    v8 = v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext;
    v9 = *(v1 + OBJC_IVAR____TtC12mediaremotedP33_1851BD08EF6F7A41CF08D64ADE37688B35GroupSessionUIManagerImplementation_discoveredSessionContext);
    v10 = &selRef_entitlements;
    v80 = v2;
    if (v9)
    {
      v11 = *(v8 + 24);
      v12 = *(v8 + 8);
      v13 = qword_100537500;
      v14 = v9;
      v15 = v12;

      if (v13 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100015AFC(v16, qword_100537508);
      v17 = v14;
      v18 = v15;

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v77 = v18;
        aBlock[0] = swift_slowAlloc();
        *v21 = 136315394;
        v22 = _typeName(_:qualified:)();
        v24 = sub_10002C9C8(v22, v23, aBlock);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2082;
        v25 = [v17 identifier];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = v26;
        v10 = &selRef_entitlements;
        v30 = sub_10002C9C8(v29, v28, aBlock);

        *(v21 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v19, v20, "[%s] Cancelling sessionID: %{public}s because of new request", v21, 0x16u);
        swift_arrayDestroy();
      }

      v2 = v80;
      v31 = [v17 v10[254]];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      sub_100391EF0(v32, v34);

      v5 = &selRef_entitlements;
    }

    if (qword_100537500 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100015AFC(v35, qword_100537508);
    v36 = v2;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v39 = 136315394;
      v40 = _typeName(_:qualified:)();
      v42 = sub_10002C9C8(v40, v41, aBlock);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2082;
      v43 = [v36 v10[254]];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_10002C9C8(v44, v46, aBlock);

      *(v39 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%s] Displaying for session: %{public}s", v39, 0x16u);
      swift_arrayDestroy();

      v5 = &selRef_entitlements;
    }

    v48 = [v36 v5[228]];
    v49 = [v48 displayName];

    if (!v49)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = String._bridgeToObjectiveC()();
    }

    v50 = [v36 v5[228]];
    v51 = [v50 routeType];

    v52 = [objc_opt_self() requestWithBundleIdentifierAffinity:0 hostDisplayName:v49 routeType:v51];
    v53 = *v8;
    v54 = *(v8 + 8);
    v55 = *(v8 + 16);
    v56 = *(v8 + 24);
    *v8 = v36;
    *(v8 + 8) = v52;
    *(v8 + 16) = v78;
    *(v8 + 24) = v79;
    v57 = v36;
    v58 = v52;

    sub_1003985EC(v53, v54);
    sub_100004E7C();

    v2 = v80;
  }

  v59 = [objc_opt_self() currentSettings];
  if (v59)
  {
    v60 = v59;
    v61 = [v59 groupSessionNearbyLockscreen];

    if (v61)
    {
      v62 = [v2 v5[228]];
      v63 = [v62 isLockScreenAffordanceAllowed];

      if (v63)
      {
        if (qword_100537500 != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        sub_100015AFC(v64, qword_100537508);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          aBlock[0] = v68;
          *v67 = 136315138;
          v69 = _typeName(_:qualified:)();
          v71 = sub_10002C9C8(v69, v70, aBlock);

          *(v67 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v65, v66, "[%s] Acquiring GroupSessionNearby assertion", v67, 0xCu);
          sub_100026A44(v68);
        }

        [sub_100390E04() acquireGroupSessionNearbyAssertionForSession:v2];
        swift_unknownObjectRelease();
        v72 = kMREventGroupSessionNearbyNotificationDisplayed;
        v73 = swift_allocObject();
        *(v73 + 16) = v2;
        aBlock[4] = sub_1003991B4;
        aBlock[5] = v73;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001CDC04;
        aBlock[3] = &unk_1004D0DB8;
        v74 = _Block_copy(aBlock);
        v75 = v2;
        v76 = v72;

        MRAnalyticsSendEvent();
        _Block_release(v74);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1003991B4()
{
  v1 = *(v0 + 16);
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = kMREventNearbyNotificationTypeLockScreen;
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v5;
  v6 = v3;
  v7 = [v1 hostInfo];
  v8 = [v7 routeType];

  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v8];
  v9 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_1005228F0, &unk_100450070);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_1003992DC(void *a1, uint64_t a2)
{
  swift_getObjectType();
  if (qword_100537500 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100015AFC(v4, qword_100537508);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v8 = 136315650;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10002C9C8(v10, v11, &v30);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10002C9C8(0xD00000000000003BLL, 0x80000001004448F0, &v30);
    *(v8 + 22) = 2112;
    *(v8 + 24) = v5;
    *v9 = v5;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%s] %s - %@", v8, 0x20u);
    sub_1001E4048(v9);

    swift_arrayDestroy();
  }

  v14 = [v5 actionIdentifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    v21 = 0;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = ~v20 & 1;
  }

  v22 = [v5 notification];
  v23 = [v22 request];

  v24 = [v23 identifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  sub_100395A54(v21, v25, v27);

  v28 = *(*(a2 + 16) + 16);

  return v28();
}

uint64_t sub_1003997BC(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = type metadata accessor for NWInterface.InterfaceType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NWPath();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&a1[OBJC_IVAR___MRDNetworkMonitor_monitor];
  v16 = a1;
  NWPathMonitor.currentPath.getter();
  (*(v6 + 104))(v9, *a3, v5);
  LOBYTE(v15) = NWPath.usesInterfaceType(_:)();

  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  return v15 & 1;
}

uint64_t sub_100399984(unsigned int *a1)
{
  v3 = type metadata accessor for NWInterface.InterfaceType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NWPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR___MRDNetworkMonitor_monitor);
  NWPathMonitor.currentPath.getter();
  (*(v4 + 104))(v7, *a1, v3);
  LOBYTE(v13) = NWPath.usesInterfaceType(_:)();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  return v13 & 1;
}

id sub_100399BBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t *sub_100399C08@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_100399C24()
{
  v1 = *v0;
  if (*v0 == 2)
  {
    return 0x74736163646F702ELL;
  }

  if (v1 == 1)
  {
    return 0x6C41636973756D2ELL;
  }

  if (!v1)
  {
    return 0xD000000000000010;
  }

  v3 = *v0;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_100399CC8()
{
  result = 0xD000000000000015;
  v2 = *v0;
  if (*v0 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return 0xD000000000000013;
      }

      goto LABEL_12;
    }
  }

  else if (v2 != 2)
  {
    if (v2 == 3 || v2 == 4)
    {
      return 0xD00000000000001CLL;
    }

LABEL_12:
    v3 = *v0;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

id sub_100399D90()
{
  result = [objc_allocWithZone(type metadata accessor for MediaWidgetUpdater()) init];
  qword_1005385C8 = result;
  return result;
}

id sub_100399F44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaWidgetUpdater();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100399FEC()
{
  result = qword_100528FD0;
  if (!qword_100528FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528FD0);
  }

  return result;
}

unint64_t sub_10039A044()
{
  result = qword_100528FD8;
  if (!qword_100528FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528FD8);
  }

  return result;
}

uint64_t sub_10039A0D0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v4 = *(*(sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = *(v3 + 80);
  v5 = type metadata accessor for Optional();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10039A1E4, v1, 0);
}

uint64_t sub_10039A1E4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = *(*v5 + 104);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5 + v6, v3);
  v7 = *(v4 - 8);
  v8 = (*(v7 + 48))(v1, 1, v4);
  v9 = v0[11];
  if (v8 == 1)
  {
    v10 = v0[6];
    (*(v0[10] + 8))(v0[11], v0[9]);
    v11 = *(*v10 + 112);
    v12 = *(v10 + v11);
    v0[12] = v12;
    if (v12)
    {
      v13 = async function pointer to Task<>.value.getter[1];

      v14 = swift_task_alloc();
      v0[13] = v14;
      *v14 = v0;
      v15 = sub_10039A524;
    }

    else
    {
      v20 = v0[7];
      v21 = v0[8];
      v22 = v0[6];
      v23 = type metadata accessor for TaskPriority();
      (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
      type metadata accessor for LazyAsyncWrapper();
      WitnessTable = swift_getWitnessTable();
      v25 = swift_allocObject();
      v25[2] = v22;
      v25[3] = WitnessTable;
      v25[4] = v22;
      swift_retain_n();
      v12 = sub_10039AFDC(0, 0, v20, &unk_10045BC18, v25, v21);
      v0[14] = v12;
      v26 = *(v10 + v11);
      *(v10 + v11) = v12;

      v27 = async function pointer to Task<>.value.getter[1];
      v14 = swift_task_alloc();
      v0[15] = v14;
      *v14 = v0;
      v15 = sub_10039A6A8;
    }

    v14[1] = v15;
    v28 = v0[8];
    v29 = v0[5];

    return Task<>.value.getter(v29, v12, v28);
  }

  else
  {
    (*(v7 + 32))(v0[5], v0[11], v0[8]);
    v16 = v0[11];
    v17 = v0[7];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10039A524()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10039A634, v2, 0);
}

uint64_t sub_10039A634()
{
  v1 = v0[12];

  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10039A6A8()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10039A7B8, v2, 0);
}

uint64_t sub_10039A7B8()
{
  v1 = v0[14];

  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10039A82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v4[7] = *(*a4 + 80);
  v6 = type metadata accessor for Optional();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10039A908, a4, 0);
}

uint64_t sub_10039A908()
{
  v1 = v0[6];
  v2 = *(v1 + 120);
  v7 = (*(v1 + 112) + **(v1 + 112));
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10039A9FC;
  v5 = v0[5];

  return v7(v5);
}

uint64_t sub_10039A9FC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10039AB0C, v2, 0);
}

uint64_t sub_10039AB0C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = *(v4 - 8);
  (*(v6 + 16))(v1, v0[5], v4);
  (*(v6 + 56))(v1, 0, 1, v4);
  v7 = *(*v5 + 104);
  swift_beginAccess();
  (*(v2 + 40))(v5 + v7, v1, v3);
  swift_endAccess();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10039AC68(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009F34;

  return sub_10039A82C(a1, v5, v6, v4);
}

uint64_t sub_10039AD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1001D6648(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1001E29D0(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_1001BC5A8(&qword_100529008, &qword_10045BD98);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1001E29D0(a3);

      return v24;
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

  sub_1001E29D0(a3);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_1001BC5A8(&qword_100529008, &qword_10045BD98);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10039AFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v29[-1] - v13;
  v30[0] = a4;
  v30[1] = a5;
  sub_1001D6648(a3, &v29[-1] - v13);
  v15 = type metadata accessor for TaskPriority();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_1001E29D0(v14);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v16 + 8))(v14, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = String.utf8CString.getter();
      v24 = *(v23 + 16);
      sub_10039CF68(v23 + 32, v30, a6, v29);

      v25 = v29[0];
      sub_1001E29D0(a3);

      return v25;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1001E29D0(a3);
  v26 = swift_allocObject();
  v26[2] = a6;
  v26[3] = a4;
  v26[4] = a5;
  if (v22 | v20)
  {
    v29[1] = 0;
    v29[2] = 0;
    v29[3] = v20;
    v29[4] = v22;
  }

  return swift_task_create();
}

uint64_t sub_10039B24C()
{
  sub_10039CDF8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10039B294(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_10039B2E4(a1, a2);
  return v7;
}

char *sub_10039B2E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_defaultActor_initialize();
  (*(*(*(v5 + 80) - 8) + 56))(&v2[*(*v2 + 104)], 1, 1);
  *&v2[*(*v2 + 112)] = 0;
  *(v2 + 14) = a1;
  *(v2 + 15) = a2;
  return v2;
}

uint64_t sub_10039B398(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_10039B3E8(a1, a2);
  return v7;
}

char *sub_10039B3E8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_defaultActor_initialize();
  v6 = *(v5 + 80);
  (*(*(v6 - 8) + 56))(&v2[*(*v2 + 104)], 1, 1, v6);
  *&v2[*(*v2 + 112)] = 0;
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  *(v2 + 14) = &unk_10045BC28;
  *(v2 + 15) = v7;
  return v2;
}

uint64_t sub_10039B4CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_100009F34;

  return v9(a1);
}

uint64_t sub_10039B5C4(uint64_t a1)
{
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009F34;

  return sub_10039B4CC(a1, v6, v7, v5);
}

uint64_t sub_10039B670()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  (*(*(v1 - 8) + 56))(&v11 - v5, 1, 1, v1);
  v7 = *(*v0 + 104);
  swift_beginAccess();
  (*(v3 + 40))(v0 + v7, v6, v2);
  swift_endAccess();
  v8 = *(*v0 + 112);
  v9 = *(v0 + v8);
  *(v0 + v8) = 0;
}

uint64_t sub_10039B7D4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v4 = *(*(sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v5 = *(v3 + 80);
  v2[8] = v5;
  v6 = type metadata accessor for Optional();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = *(v5 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10039B93C, v1, 0);
}

uint64_t sub_10039B93C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  v7 = *(*v6 + 104);
  swift_beginAccess();
  (*(v4 + 16))(v1, v6 + v7, v3);
  if ((*(v2 + 48))(v1, 1, v5) == 1)
  {
    v8 = v0[6];
    (*(v0[10] + 8))(v0[11], v0[9]);
    v9 = *(*v8 + 112);
    v10 = *(v8 + v9);
    v0[14] = v10;
    if (v10)
    {
      v11 = async function pointer to Task.value.getter[1];

      v12 = swift_task_alloc();
      v0[15] = v12;
      v13 = sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      *v12 = v0;
      v14 = sub_10039BCD8;
    }

    else
    {
      v24 = v0[7];
      v25 = v0[8];
      v26 = v0[6];
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
      type metadata accessor for LazyThrowingAsyncWrapper();
      WitnessTable = swift_getWitnessTable();
      v29 = swift_allocObject();
      v29[2] = v26;
      v29[3] = WitnessTable;
      v29[4] = v26;
      swift_retain_n();
      v10 = sub_10039CBB4(0, 0, v24, &unk_10045BC40, v29);
      v0[16] = v10;
      v30 = *(v8 + v9);
      *(v8 + v9) = v10;

      v31 = async function pointer to Task.value.getter[1];
      v12 = swift_task_alloc();
      v0[17] = v12;
      v13 = sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      *v12 = v0;
      v14 = sub_10039BEB8;
    }

    v12[1] = v14;
    v32 = v0[8];
    v33 = v0[5];

    return Task.value.getter(v33, v10, v32, v13, &protocol self-conformance witness table for Error);
  }

  else
  {
    v15 = v0[13];
    v16 = v0[8];
    v17 = v0[5];
    v18 = *(v0[12] + 32);
    v18(v15, v0[11], v16);
    v18(v17, v15, v16);
    v19 = v0[13];
    v20 = v0[11];
    v21 = v0[7];
    (*(v0[12] + 56))(v0[5], 0, 1, v0[8]);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_10039BCD8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = sub_10039C098;
  }

  else
  {
    v6 = sub_10039BE10;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10039BE10()
{
  v1 = v0[14];

  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[7];
  (*(v0[12] + 56))(v0[5], 0, 1, v0[8]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10039BEB8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  v5 = *(v2 + 48);
  if (v0)
  {

    v6 = sub_10039C140;
  }

  else
  {
    v6 = sub_10039BFF0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10039BFF0()
{
  v1 = v0[16];

  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[7];
  (*(v0[12] + 56))(v0[5], 0, 1, v0[8]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10039C098()
{
  v1 = v0[14];

  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[7];
  (*(v0[12] + 56))(v0[5], 1, 1, v0[8]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10039C140()
{
  v1 = v0[16];

  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[7];
  (*(v0[12] + 56))(v0[5], 1, 1, v0[8]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10039C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v6 = *(*a4 + 80);
  v4[7] = v6;
  v7 = type metadata accessor for Optional();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = *(v6 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10039C318, a4, 0);
}

uint64_t sub_10039C318()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = *(v1 + 112);
  v3 = *(v1 + 120);
  v5 = swift_allocObject();
  v0[13] = v5;
  swift_weakInit();
  v6 = swift_allocObject();
  v0[14] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v5;

  v11 = (v4 + *v4);
  v7 = v4[1];
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = sub_10039C484;
  v9 = v0[12];

  return v11(v9, sub_10039D110, v6);
}

uint64_t sub_10039C484()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = sub_10039C71C;
  }

  else
  {
    v7 = v2[13];
    v6 = v2[14];
    v8 = v2[6];

    v5 = sub_10039C5B4;
    v4 = v8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10039C5B4()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  (*(v2 + 16))(v3, v1, v6);
  (*(v2 + 56))(v3, 0, 1, v6);
  v9 = *(*v8 + 104);
  swift_beginAccess();
  (*(v4 + 40))(v8 + v9, v3, v5);
  swift_endAccess();
  (*(v2 + 32))(v7, v1, v6);
  v10 = *(*v8 + 112);
  v11 = *(v8 + v10);
  *(v8 + v10) = 0;

  v12 = v0[1];

  return v12();
}

uint64_t sub_10039C71C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[6];

  v6 = *(*v5 + 112);
  v7 = *(v5 + v6);
  *(v5 + v6) = 0;

  v8 = v0[1];
  v9 = v0[16];

  return v8();
}

uint64_t sub_10039C7E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10039C824(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009F30;

  return sub_10039C1E8(a1, v5, v6, v4);
}

uint64_t sub_10039C8C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = v8;
  sub_10039AD08(0, 0, v6, &unk_10045BD80, v9);
}

uint64_t sub_10039CA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10039CA38, 0, 0);
}

uint64_t sub_10039CA38()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = (*Strong + 184) & 0xFFFFFFFFFFFFLL | 0x99B3000000000000;
    *(v0 + 64) = *(*Strong + 184);
    *(v0 + 72) = v3;

    return _swift_task_switch(sub_10039CB18, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10039CB18()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  (*(v0 + 64))();

  return _swift_task_switch(sub_10039CB8C, 0, 0);
}

uint64_t sub_10039CBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_1001D6648(a3, &v26[-1] - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1001E29D0(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter();
      v22 = *(v21 + 16);
      sub_10039D054(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_1001E29D0(a3);

      return v23;
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

  sub_1001E29D0(a3);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

char *sub_10039CDF8()
{
  v1 = *v0;
  v2 = *(v0 + 15);

  v3 = *(*v0 + 104);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  v6 = *&v0[*(*v0 + 112)];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10039CEB4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
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

uint64_t sub_10039CF68@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = v6;

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10039D054@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10039D118(uint64_t a1)
{
  v4 = *(v1 + 40);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009F30;

  return sub_10039CA18(a1, v5, v6, v4);
}

uint64_t sub_10039D1B8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10039D2AC;

  return v6(v2 + 32);
}

uint64_t sub_10039D2AC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10039D3C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009F30;

  return sub_10039D1B8(a1, v5);
}

uint64_t sub_10039D478(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009F30;

  return sub_1001BFD04(a1, v5);
}

uint64_t sub_10039D644()
{
  type metadata accessor for WatchRSECandidatePicker();
  sub_1001BC5A8(&qword_1005290F8, &unk_10045BF50);
  result = String.init<A>(describing:)();
  qword_1005385D0 = result;
  *algn_1005385D8 = v1;
  return result;
}

uint64_t sub_10039D694()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100537CC0);
  sub_100015AFC(v0, qword_100537CC0);
  if (qword_100537CB0 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

void sub_10039D750(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 outputDeviceUID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_10039D7B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = *(a1 + 56);
    v6 = *(a1 + 64);
    v9 = *(a1 + 32);

    v10 = a1 - 8;
    v11 = 1;
LABEL_3:
    v12 = v10 + 40 * v11;
    while (1)
    {
      if (v3 == v11)
      {
        v17 = v5 & 1;
        goto LABEL_11;
      }

      if (v11 >= v3)
      {
        break;
      }

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_13;
      }

      v14 = *(v12 + 48);
      ++v11;
      v12 += 40;
      if (v4 < v14)
      {
        v5 = *(v12 + 16);
        v7 = *(v12 + 24);
        v15 = *(v12 + 32);
        v16 = *v12;

        v11 = v13;
        v9 = v16;
        v4 = v14;
        v6 = v15;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    v9 = 0;
    v17 = 0;
    v7 = 0;
    v6 = 0;
    v4 = 0.0;
LABEL_11:
    *a2 = v9;
    *(a2 + 8) = v4;
    *(a2 + 16) = v17;
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
  }
}

uint64_t sub_10039D9F8(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 3);
  v6 = *(a1 + 4);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  v10 = *(a2 + 3);
  v11 = *(a2 + 4);
  sub_1003A01A8();
  v12 = static NSObject.== infix(_:_:)();
  result = 0;
  if ((v12 & 1) != 0 && v3 == v8 && ((v4 ^ v9) & 1) == 0)
  {
    if (v5 == v10 && v6 == v11)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_10039DAE0(double a1)
{
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 102;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  sub_1001BC5A8(&qword_1005274A0, &unk_100459110);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10044EC70;
  *(v4 + 56) = &type metadata for Double;
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a1;
  v5 = String.init(format:_:)();

  return v5;
}

id sub_10039DC18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchRSECandidatePicker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10039DC50(char *a1, int64_t a2, char a3)
{
  result = sub_10039DC70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10039DC70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001BC5A8(&qword_1005290E8, &qword_10045BF38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_10039DD90(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10039F08C(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 2))
          {
            break;
          }

          v14 = *(v13 + 2);
          v15 = v13[32];
          v16 = *(v13 + 5);
          v17 = *(v13 + 6);
          v18 = *(v13 - 8);
          *(v13 + 1) = *(v13 - 24);
          *(v13 + 2) = v18;
          *(v13 + 6) = *(v13 + 1);
          *(v13 - 3) = v14;
          *(v13 - 2) = v11;
          *(v13 - 8) = v15;
          *v13 = v16;
          *(v13 + 1) = v17;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v20[0] = v7 + 4;
    v20[1] = v6;
    sub_10039DEF8(v20, v21, v22, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10039DEF8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10024C200(v8);
      v8 = result;
    }

    v93 = v8 + 2;
    v94 = v8[2];
    if (v94 >= 2)
    {
      while (*a3)
      {
        v95 = &v8[2 * v94];
        v96 = *v95;
        v97 = &v93[2 * v94];
        v98 = v97[1];
        sub_10039E4E4((*a3 + 40 * *v95), (*a3 + 40 * *v97), *a3 + 40 * v98, v102);
        if (v5)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_114;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_115;
        }

        *v95 = v96;
        v95[1] = v98;
        v99 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_116;
        }

        v94 = *v93 - 1;
        result = memmove(v97, v97 + 2, 16 * v99);
        *v93 = v94;
        if (v94 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v100 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 8);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 8);
      v13 = v9 + 2;
      v14 = (v11 + 88);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v10 < v12) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7 - 16;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v19);
            v23 = *(v31 + v19 - 32);
            v24 = (v31 + v18);
            v25 = *(v22 - 3);
            v26 = *(v22 - 16);
            v27 = *(v22 - 1);
            v28 = *v22;
            v29 = v24[1];
            v30 = *(v24 - 1);
            *(v22 - 2) = *(v24 - 3);
            *(v22 - 1) = v30;
            *v22 = v29;
            *(v24 - 3) = v23;
            *(v24 - 2) = v25;
            *(v24 - 8) = v26;
            *v24 = v27;
            v24[1] = v28;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10024A7E0(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v46 = v8[2];
    v45 = v8[3];
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_10024A7E0((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v47;
    v48 = v8 + 4;
    v49 = &v8[2 * v46 + 4];
    *v49 = v9;
    v49[1] = v7;
    v102 = *v101;
    if (!*v101)
    {
      goto LABEL_127;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = v8[4];
          v52 = v8[5];
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_57:
          if (v54)
          {
            goto LABEL_104;
          }

          v67 = &v8[2 * v47];
          v69 = *v67;
          v68 = v67[1];
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_106;
          }

          v73 = &v48[2 * v50];
          v75 = *v73;
          v74 = v73[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_111;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v47 < 2)
        {
          goto LABEL_112;
        }

        v77 = &v8[2 * v47];
        v79 = *v77;
        v78 = v77[1];
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_72:
        if (v72)
        {
          goto LABEL_108;
        }

        v80 = &v48[2 * v50];
        v82 = *v80;
        v81 = v80[1];
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_110;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = &v48[2 * v50 - 2];
        v89 = *v88;
        v90 = &v48[2 * v50];
        v91 = v90[1];
        sub_10039E4E4((*a3 + 40 * *v88), (*a3 + 40 * *v90), *a3 + 40 * v91, v102);
        if (v5)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_99;
        }

        if (v50 > v8[2])
        {
          goto LABEL_100;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = v8[2];
        if (v50 >= v92)
        {
          goto LABEL_101;
        }

        v47 = v92 - 1;
        result = memmove(&v48[2 * v50], v90 + 2, 16 * (v92 - 1 - v50));
        v8[2] = v92 - 1;
        if (v92 <= 2)
        {
          goto LABEL_3;
        }
      }

      v55 = &v48[2 * v47];
      v56 = *(v55 - 8);
      v57 = *(v55 - 7);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_102;
      }

      v60 = *(v55 - 6);
      v59 = *(v55 - 5);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_103;
      }

      v62 = &v8[2 * v47];
      v64 = *v62;
      v63 = v62[1];
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_105;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_107;
      }

      if (v66 >= v58)
      {
        v84 = &v48[2 * v50];
        v86 = *v84;
        v85 = v84[1];
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v100;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 40 * v7 - 40;
  v34 = v9 - v7;
LABEL_30:
  v35 = *(v32 + 40 * v7 + 8);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (v35 >= *(v37 + 8))
    {
LABEL_29:
      ++v7;
      v33 += 40;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v38 = *(v37 + 16);
    v40 = *(v37 + 32);
    v39 = *(v37 + 40);
    *(v37 + 40) = *v37;
    v41 = *(v37 + 56);
    v42 = *(v37 + 64);
    v43 = *(v37 + 72);
    *(v37 + 56) = v38;
    *(v37 + 72) = v40;
    *v37 = v39;
    *(v37 + 8) = v35;
    *(v37 + 16) = v41;
    *(v37 + 24) = v42;
    *(v37 + 32) = v43;
    v37 -= 40;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_10039E4E4(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 4) < *(v6 - 4))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t sub_10039E720(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_17:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10039EB24(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_10039E8A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_1005290F0, &qword_10045BF48);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v20)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_10039EB24(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    sub_10039E8A8(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_10039ECE0();
      goto LABEL_23;
    }

    sub_10039EE38(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
LABEL_22:
            sub_1001BC5A8(&qword_1005214F0, &qword_10045BF40);
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

void *sub_10039ECE0()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005290F0, &qword_10045BF48);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_10039EE38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_1005290F0, &qword_10045BF48);
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
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v19)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

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

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
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
        goto LABEL_31;
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
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

void *sub_10039F0A0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v24 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v20 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v8)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v20 + 16))
        {
          goto LABEL_15;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v23[2] = v9;
      swift_getAtKeyPath();
      v12 = sub_10039E720(v23, v21, v22);

      if (v12)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = i;
        v14 = v5;
        v15 = a2;
        v16 = a3;
        v17 = v24[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a3 = v16;
        a2 = v15;
        v5 = v14;
        i = v13;
        v8 = v19;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v7;
      if (v11 == i)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_10039F4A8(void *a1, void *a2, void *a3, void *a4)
{
  v115[4] = a1;
  v115[5] = a2;
  v115[6] = a3;
  v115[7] = a4;
  v118 = _swiftEmptyArrayStorage;
  v7 = a4;
  v108 = a1;
  v8 = a2;
  v9 = a3;
  v10 = 0;
  v11 = 4;
  v12 = _swiftEmptyArrayStorage;
LABEL_2:
  if (v10 <= 4)
  {
    v13 = 4;
  }

  else
  {
    v13 = v10;
  }

  while (1)
  {
    if (v10 == 4)
    {
      v112 = v9;
      sub_1001BC5A8(&qword_1005290E0, qword_10045BEF0);
      swift_arrayDestroy();
      KeyPath = swift_getKeyPath();
      v118 = &_swiftEmptySetSingleton;
      v10 = sub_10039F0A0(v12, &v118, KeyPath);
      v109 = 0;

      v11 = v10 >> 62;
      if (v10 >> 62)
      {
        goto LABEL_29;
      }

      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_13;
      }

      goto LABEL_30;
    }

    if (v13 == v10)
    {
      break;
    }

    v14 = v115[v10++ + 4];
    if (v14)
    {
      v15 = v14;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v12 = v118;
      goto LABEL_2;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      break;
    }

LABEL_13:
    v19 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v20 = *(v10 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if ([v20 isPlaying])
      {

        v118 = 0;
        v119 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        v118 = 39;
        v119 = 0xE100000000000000;
        v23 = [v21 name];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        v27._countAndFlagsBits = v24;
        v27._object = v26;
        String.append(_:)(v27);

        v28._countAndFlagsBits = 0x3D4449552027;
        v28._object = 0xE600000000000000;
        String.append(_:)(v28);
        v29 = [v21 outputDeviceUID];
        if (v29)
        {
          v30 = v29;
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;
        }

        else
        {
          v31 = 7104878;
          v33 = 0xE300000000000000;
        }

        v34._countAndFlagsBits = v31;
        v34._object = v33;
        String.append(_:)(v34);

        v35._countAndFlagsBits = 0xD000000000000012;
        v35._object = 0x8000000100444C70;
        String.append(_:)(v35);
        return v21;
      }

      ++v19;
      if (v22 == v18)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_30:
  if (a3 && (v36 = [v112 outputDeviceUID]) != 0 || (v36 = objc_msgSend(v108, "outputDeviceUID")) != 0)
  {
    v18 = v36;
    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v37;

    v38 = v10 & 0xFFFFFFFFFFFFFF8;
    if (!v11)
    {
      goto LABEL_34;
    }

LABEL_55:
    v39 = _CocoaArrayWrapper.endIndex.getter();
    if (v39)
    {
      goto LABEL_35;
    }

LABEL_56:

    v58 = _swiftEmptyArrayStorage;
    goto LABEL_57;
  }

  v111 = 0;
  v113 = 0;
  v38 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v11)
  {
    goto LABEL_55;
  }

LABEL_34:
  v39 = *(v38 + 16);
  if (!v39)
  {
    goto LABEL_56;
  }

LABEL_35:
  v118 = _swiftEmptyArrayStorage;
  sub_10039DC50(0, v39 & ~(v39 >> 63), 0);
  if (v39 < 0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v40 = 0;
  v41 = v10;
  v42 = v118;
  v18 = v41;
  v43 = v41 & 0xC000000000000001;
  do
  {
    if (v43)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v44 = *&v18[8 * v40 + 32];
    }

    v45 = v44;
    v46 = [v44 outputDeviceUID];
    v47 = v113 == 0;
    if (v46)
    {
      v48 = v46;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      if (v113)
      {
        if (v49 == v111 && v113 == v51)
        {
          v47 = 1;
        }

        else
        {
          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
        v47 = 0;
      }
    }

    sub_10039F240(v116, v45, v47 & 1);

    v118 = v42;
    v54 = *(v42 + 2);
    v53 = *(v42 + 3);
    if (v54 >= v53 >> 1)
    {
      sub_10039DC50((v53 > 1), v54 + 1, 1);
      v42 = v118;
    }

    ++v40;
    *(v42 + 2) = v54 + 1;
    v55 = &v42[40 * v54];
    v56 = v116[0];
    v57 = v116[1];
    *(v55 + 8) = v117;
    *(v55 + 2) = v56;
    *(v55 + 3) = v57;
  }

  while (v39 != v40);

  v58 = v42;
LABEL_57:
  v118 = v58;
  v107 = v58;

  sub_10039DD90(&v118);
  if (v109)
  {
LABEL_87:

    __break(1u);
    return result;
  }

  v59 = v118;
  v60 = *(v118 + 16);
  if (v60)
  {
    v61 = (v118 + 40 * v60 + 24);
    v62 = &unk_100537000;
    v110 = v118;
    while (v60 <= *(v59 + 16))
    {
      v63 = *(v61 - 1);
      v64 = *v61;
      v65 = v62[407];
      v66 = *(v61 - 4);

      if (v65 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_100015AFC(v67, qword_100537CC0);
      v18 = v66;

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v114 = v63;
        v70 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *v70 = 136315650;
        v71 = [v18 name];
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;

        v75 = sub_10002C9C8(v72, v74, &v118);

        *(v70 + 4) = v75;
        *(v70 + 12) = 2080;
        v76 = [v18 outputDeviceUID];
        if (v76)
        {
          v77 = v76;
          v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v80 = v79;
        }

        else
        {
          v80 = 0xE300000000000000;
          v78 = 7104878;
        }

        v81 = sub_10002C9C8(v78, v80, &v118);

        *(v70 + 14) = v81;
        *(v70 + 22) = 2080;

        v82 = sub_10002C9C8(v114, v64, &v118);

        *(v70 + 24) = v82;
        _os_log_impl(&_mh_execute_header, v68, v69, "proactiveRecommended scores debug entry: '%s' UID=%s %s", v70, 0x20u);
        swift_arrayDestroy();

        v59 = v110;
        v62 = &unk_100537000;
      }

      else
      {
      }

      v61 -= 5;
      if (!--v60)
      {
        goto LABEL_70;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_70:

    v83 = 0;
    v84 = v107;
    v85 = *(v107 + 2);
    v18 = _swiftEmptyArrayStorage;
LABEL_71:
    v86 = 40 * v83;
    while (v85 != v83)
    {
      if (v83 >= *(v84 + 2))
      {
        __break(1u);
        goto LABEL_86;
      }

      ++v83;
      v87 = v86 + 40;
      v88 = v84[v86 + 48];
      v86 += 40;
      if (v88)
      {
        v89 = *&v84[v87];
        v91 = *&v84[v87 + 16];
        v90 = *&v84[v87 + 24];
        v92 = *&v84[v87 - 8];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10039DC50(0, *(v18 + 2) + 1, 1);
          v18 = v118;
        }

        v95 = *(v18 + 2);
        v94 = *(v18 + 3);
        v84 = v107;
        if (v95 >= v94 >> 1)
        {
          sub_10039DC50((v94 > 1), v95 + 1, 1);
          v84 = v107;
          v18 = v118;
        }

        *(v18 + 2) = v95 + 1;
        v96 = &v18[40 * v95];
        *(v96 + 4) = v92;
        *(v96 + 5) = v89;
        v96[48] = 1;
        *(v96 + 7) = v91;
        *(v96 + 8) = v90;
        goto LABEL_71;
      }
    }
  }

  sub_10039D7B8(v18, &v118);

  if (!v118)
  {
    return v108;
  }

  v98 = v120;
  v97 = v121;
  v21 = v118;
  _StringGuts.grow(_:)(22);

  v99 = [v21 name];
  v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v102 = v101;

  v103._countAndFlagsBits = v100;
  v103._object = v102;
  String.append(_:)(v103);

  v104._countAndFlagsBits = 8231;
  v104._object = 0xE200000000000000;
  String.append(_:)(v104);

  v105._countAndFlagsBits = v98;
  v105._object = v97;
  String.append(_:)(v105);

  swift_bridgeObjectRelease_n();
  return v21;
}

uint64_t sub_10039FEB8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = sub_10039F4A8(a1, a2, a3, a4);
  v8 = v7;
  v10 = v9;
  if (qword_100537CB8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100015AFC(v11, qword_100537CC0);
  v12 = v6;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = &selRef_nowPlayingOriginClient_applicationActivityDidEnd_;
  if (os_log_type_enabled(v13, v14))
  {
    v35 = a5;
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v16 = 136315650;
    v17 = [v12 name];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_10002C9C8(v18, v20, &v36);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;

    v22 = sub_10002C9C8(v8, v10, &v36);

    *(v16 + 14) = v22;
    *(v16 + 22) = 2080;
    v23 = [v12 outputDeviceUID];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v28 = sub_10002C9C8(v25, v27, &v36);

    *(v16 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v13, v14, "proactiveRecommended selection name='%s' reason: %s UID=%s", v16, 0x20u);
    swift_arrayDestroy();

    a5 = v35;
    v15 = &selRef_nowPlayingOriginClient_applicationActivityDidEnd_;
  }

  else
  {
  }

  v29 = String._bridgeToObjectiveC()();

  v30 = v29;
  *a5 = v29;
  v31 = [v12 v15[95]];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v33;
}

unint64_t sub_1003A01A8()
{
  result = qword_1005228E0;
  if (!qword_1005228E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005228E0);
  }

  return result;
}

unint64_t sub_1003A021C()
{
  result = qword_1005290B0;
  if (!qword_1005290B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005290B0);
  }

  return result;
}

uint64_t sub_1003A0280(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003A02C8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

NSString sub_1003A032C()
{
  result = String._bridgeToObjectiveC()();
  qword_1005385E0 = result;
  return result;
}

uint64_t *sub_1003A0364()
{
  if (qword_100537DF0 != -1)
  {
    swift_once();
  }

  return &qword_1005385E0;
}

NSString sub_1003A03B4()
{
  result = String._bridgeToObjectiveC()();
  qword_1005385E8 = result;
  return result;
}

uint64_t *sub_1003A03EC()
{
  if (qword_100537DF8 != -1)
  {
    swift_once();
  }

  return &qword_1005385E8;
}

uint64_t sub_1003A043C()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100537E08);
  sub_100015AFC(v0, qword_100537E08);
  v1 = *sub_1001D8DD4();
  return Logger.init(_:)();
}

uint64_t sub_1003A0498()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x7954656369766564;
  v4 = 0x7553656369766564;
  if (v1 != 4)
  {
    v4 = 0x44496C65646F6DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x444970756F7267;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1003A0558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003A3964(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003A058C(uint64_t a1)
{
  v2 = sub_1003A0804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003A05C8(uint64_t a1)
{
  v2 = sub_1003A0804();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003A0604(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_100529100, &unk_10045BF60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_1003A0804();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v22[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v22[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = *(v3 + 12);
  v22[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = *(v3 + 13);
  v22[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = v3[7];
  v21 = v3[8];
  v22[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1003A0804()
{
  result = qword_100537E20[0];
  if (!qword_100537E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100537E20);
  }

  return result;
}

uint64_t sub_1003A0858@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 52) = a8;
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  return result;
}

__n128 sub_1003A0874@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1003A3B74(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1003A08E0()
{
  v1 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v49 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v62 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for Participant();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v61 = &v49 - v19;
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  v22 = *(v0 + OBJC_IVAR___MRDSystemGroupSession_session);
  if (GroupSession.isLocallyInitiated.getter())
  {
    GroupSession.localParticipant.getter();
    Participant.id.getter();
    (*(v13 + 8))(v21, v12);
    v23 = UUID.uuidString.getter();
    (*(v6 + 8))(v11, v5);
    return v23;
  }

  v56 = v21;
  v49 = v4;
  v64 = v11;
  v60 = v5;
  v54 = v22;
  v24 = GroupSession.activeParticipants.getter();
  v25 = v24;
  v26 = v24 + 56;
  v27 = 1 << *(v24 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v24 + 56);
  v30 = (v27 + 63) >> 6;
  v53 = v13 + 16;
  v31 = v6;
  v32 = (v13 + 8);
  v58 = v13 + 32;
  v59 = (v31 + 8);

  v34 = 0;
  v51 = v30;
  v52 = v26;
  v57 = v13;
  v55 = result;
  if (v29)
  {
    while (1)
    {
      v35 = v34;
LABEL_10:
      v36 = *(v25 + 48) + *(v13 + 72) * (__clz(__rbit64(v29)) | (v35 << 6));
      v37 = v61;
      v38 = v12;
      (*(v13 + 16))(v61, v36, v12);
      v50 = *(v13 + 32);
      v50(v17, v37, v12);
      Participant.id.getter();
      v39 = v56;
      GroupSession.localParticipant.getter();
      v40 = v62;
      Participant.id.getter();
      v41 = *(v13 + 8);
      v41(v39, v12);
      sub_1003A4450(&unk_1005286D0, &type metadata accessor for UUID);
      v42 = v60;
      v63 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *v59;
      (*v59)(v40, v42);
      v43(v64, v42);
      if ((v63 & 1) == 0)
      {
        break;
      }

      v29 &= v29 - 1;
      result = (v41)(v17, v38);
      v34 = v35;
      v12 = v38;
      v13 = v57;
      v25 = v55;
      v30 = v51;
      v26 = v52;
      if (!v29)
      {
        goto LABEL_7;
      }
    }

    v45 = v49;
    v50(v49, v17, v38);
    v44 = 0;
    v12 = v38;
    v13 = v57;
LABEL_14:
    (*(v13 + 56))(v45, v44, 1, v12);

    v46 = (*(v13 + 48))(v45, 1, v12);
    v47 = v60;
    v48 = v64;
    if (v46 == 1)
    {
      sub_1000038A4(v45, &qword_100529110, &qword_10044F5B0);
      return 0;
    }

    else
    {
      Participant.id.getter();
      (*v32)(v45, v12);
      v23 = UUID.uuidString.getter();
      (*v59)(v48, v47);
    }

    return v23;
  }

LABEL_7:
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v30)
    {

      v44 = 1;
      v45 = v49;
      goto LABEL_14;
    }

    v29 = *(v26 + 8 * v35);
    ++v34;
    if (v29)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_1003A0E5C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___MRDSystemGroupSession_session);
  v4 = GroupSession.activity.getter();
  (*(*v7 + 128))(v8, v4);

  v5 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v9;
  result = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = result;
  return result;
}

char *sub_1003A0F20(uint64_t a1)
{
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v47 - 8);
  v3 = *(v46 + 64);
  __chkstk_darwin(v47);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001BC5A8(&unk_100522900, &unk_100450080);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = v6[8];
  __chkstk_darwin(v5);
  v60 = &v43 - v8;
  v9 = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  __chkstk_darwin(v9);
  v57 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v44 = type metadata accessor for DispatchQoS();
  v43 = *(v44 - 8);
  v13 = *(v43 + 64);
  __chkstk_darwin(v44);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v16 = *(v52 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v52);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___MRDSystemGroupSession_sessionCancellables] = _swiftEmptyArrayStorage;
  v20 = OBJC_IVAR___MRDSystemGroupSession_observers;
  v21 = [objc_opt_self() weakObjectsHashTable];
  v54 = v1;
  *&v1[v20] = v21;
  v56 = a1;
  *&v1[OBJC_IVAR___MRDSystemGroupSession_session] = a1;
  sub_1001E0520();
  v49 = "Most Relevant: '";
  v50 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v22 = *(v16 + 104);
  v51 = v16 + 104;
  v53 = v22;
  v22(v19);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  v48 = sub_1003A4450(&qword_100522A90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_10000462C(&qword_100522AA0, &qword_100521DF8, &unk_100450220);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v23 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = v54;
  *&v54[OBJC_IVAR___MRDSystemGroupSession_executionQueue] = v23;
  v53(v19, v50, v52);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v55 = v15;
  *&v24[OBJC_IVAR___MRDSystemGroupSession_notificationQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (*(v58 + 104))(v57, enum case for GroupSessionMessenger.DeliveryMode.reliable(_:), v59);
  v25 = type metadata accessor for GroupSessionMessenger();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();

  *&v24[OBJC_IVAR___MRDSystemGroupSession_messenger] = GroupSessionMessenger.init<A>(session:deliveryMode:)();
  v28 = type metadata accessor for SystemGroupSession();
  v65.receiver = v24;
  v65.super_class = v28;

  v29 = objc_msgSendSuper2(&v65, "init");
  v30 = v60;
  GroupSessionMessenger.receive(_:)();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v32 = swift_allocObject();
  *(v32 + 16) = sub_1003A3F30;
  *(v32 + 24) = v31;
  sub_10000462C(&unk_100529140, &unk_100522900, &unk_100450080);
  v33 = v61;
  Publisher<>.sink(receiveValue:)();

  v62[1](v30, v33);
  swift_beginAccess();
  sub_1001BC5A8(&qword_100521D98, qword_10045BF70);
  sub_10000462C(&unk_100529150, &qword_100521D98, qword_10045BF70);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  if (GroupSession.isLocallyInitiated.getter())
  {
  }

  else
  {
    v34 = *&v29[OBJC_IVAR___MRDSystemGroupSession_notificationQueue];
    v35 = swift_allocObject();
    *(v35 + 16) = v29;
    aBlock[4] = sub_1003A3F38;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004D1358;
    v36 = _Block_copy(aBlock);
    v37 = v29;
    v62 = v34;
    v38 = v55;
    static DispatchQoS.unspecified.getter();
    v63 = _swiftEmptyArrayStorage;
    sub_1003A4450(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v39 = v45;
    v40 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = v62;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v36);

    (*(v46 + 8))(v39, v40);
    (*(v43 + 8))(v38, v44);
  }

  return v29;
}

uint64_t sub_1003A187C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v28 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27[1] = *(result + OBJC_IVAR___MRDSystemGroupSession_executionQueue);
    v18 = result;
    (*(v14 + 16))(v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v13);
    v19 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = v18;
    *(v20 + 3) = a1;
    v27[0] = v12;
    v21 = v5;
    v22 = a1;
    v23 = v28;
    *(v20 + 4) = v28;
    (*(v14 + 32))(&v20[v19], v16, v13);
    aBlock[4] = sub_1003A4740;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004D1670;
    v24 = _Block_copy(aBlock);
    v25 = v18;
    sub_1001C3FE0(v22, v23);
    v26 = v27[0];
    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_1003A4450(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
    (*(v31 + 8))(v8, v21);
    (*(v29 + 8))(v26, v30);
  }

  return result;
}

uint64_t sub_1003A1C70(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for Participant();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  GroupSessionMessenger.MessageContext.source.getter();
  sub_1003A2944(a2, a3, v9);
  return (*(v6 + 8))(v9, v5);
}

id sub_1003A1D64()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100537DF8 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:qword_1005385E8 object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SystemGroupSession();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003A1F64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6)
{
  v88 = a6;
  v92 = a5;
  v93 = a1;
  v103 = a4;
  v105 = a3;
  v94 = a2;
  v7 = type metadata accessor for Participants();
  v86 = *(v7 - 8);
  v87 = v7;
  v8 = *(v86 + 64);
  __chkstk_darwin(v7);
  v85 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for UUID();
  v10 = *(v100 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v100);
  v99 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v89 = &v84 - v15;
  v16 = type metadata accessor for Participant();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v104 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v98 = &v84 - v22;
  __chkstk_darwin(v21);
  v90 = v6;
  v91 = &v84 - v23;
  v24 = *&v6[OBJC_IVAR___MRDSystemGroupSession_session];
  v25 = GroupSession.activeParticipants.getter();
  v26 = v16;
  v27 = v25;
  v28 = v25 + 56;
  v29 = 1 << *(v25 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v25 + 56);
  v32 = (v29 + 63) >> 6;
  v96 = (v10 + 8);
  v97 = v17 + 16;
  v101 = (v17 + 8);
  v102 = (v17 + 32);

  v34 = 0;
  v95 = v33;
  if (!v31)
  {
LABEL_5:
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v32)
      {

        v45 = 1;
        v47 = v93;
        v46 = v94;
        v48 = v89;
        goto LABEL_17;
      }

      v31 = *(v28 + 8 * v35);
      ++v34;
      if (v31)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  while (1)
  {
    v35 = v34;
LABEL_8:
    v36 = *(v27 + 48) + *(v17 + 72) * (__clz(__rbit64(v31)) | (v35 << 6));
    v37 = v98;
    (*(v17 + 16))(v98, v36, v26);
    v38 = *(v17 + 32);
    v39 = v26;
    v38(v104, v37, v26);
    v40 = v99;
    Participant.id.getter();
    v41 = UUID.uuidString.getter();
    v43 = v42;
    (*v96)(v40, v100);
    if (v41 == v105 && v43 == v103)
    {

      goto LABEL_16;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
      break;
    }

    v31 &= v31 - 1;
    v26 = v39;
    (*v101)(v104, v39);
    v34 = v35;
    v27 = v95;
    if (!v31)
    {
      goto LABEL_5;
    }
  }

LABEL_16:
  v26 = v39;
  v48 = v89;
  v38(v89, v104, v39);
  v45 = 0;
  v47 = v93;
  v46 = v94;
LABEL_17:
  (*(v17 + 56))(v48, v45, 1, v26);

  if ((*(v17 + 48))(v48, 1, v26) == 1)
  {
    sub_1000038A4(v48, &qword_100529110, &qword_10044F5B0);
    if (qword_100537E00 == -1)
    {
LABEL_19:
      v49 = type metadata accessor for Logger();
      sub_100015AFC(v49, qword_100537E08);
      v50 = v90;
      v51 = v103;

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v106[0] = swift_slowAlloc();
        *v54 = 138543874;
        *(v54 + 4) = v50;
        *v55 = v50;
        *(v54 + 12) = 2082;
        v56 = [v50 identifier];
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        v60 = sub_10002C9C8(v57, v59, v106);

        *(v54 + 14) = v60;
        *(v54 + 22) = 2080;
        *(v54 + 24) = sub_10002C9C8(v105, v51, v106);
        _os_log_impl(&_mh_execute_header, v52, v53, "[%{public}@]<%{public}s> Failed to find active participant with ID: %s", v54, 0x20u);
        sub_1000038A4(v55, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      v61 = v92;
      if (v92)
      {
        sub_1003A4498();
        swift_allocError();
        v61();
      }

      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_19;
  }

  v62 = *v102;
  v104 = v26;
  v62(v91, v48, v26);
  if (qword_100537E00 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_100015AFC(v63, qword_100537E08);
  v64 = v90;
  v65 = v103;

  sub_1001C3FE0(v47, v46);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.info.getter();

  sub_1001C4034(v47, v46);
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v106[0] = v102;
    *v68 = 138544130;
    *(v68 + 4) = v64;
    *v69 = v64;
    *(v68 + 12) = 2082;
    v70 = [v64 identifier];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74 = sub_10002C9C8(v71, v73, v106);

    *(v68 + 14) = v74;
    *(v68 + 22) = 2080;
    *(v68 + 24) = sub_10002C9C8(v105, v65, v106);
    *(v68 + 32) = 2080;
    v75 = Data.description.getter();
    v77 = sub_10002C9C8(v75, v76, v106);

    *(v68 + 34) = v77;
    _os_log_impl(&_mh_execute_header, v66, v67, "[%{public}@]<%{public}s> sending message to %s. Payload: %s", v68, 0x2Au);
    sub_1000038A4(v69, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v78 = *&v64[OBJC_IVAR___MRDSystemGroupSession_messenger];
  v79 = v85;
  v80 = v91;
  static Participants.only(_:)();
  v81 = swift_allocObject();
  v82 = v92;
  v81[2] = v64;
  v81[3] = v82;
  v81[4] = v88;
  v83 = v64;
  sub_10021DF20(v82);
  GroupSessionMessenger.send(_:to:completion:)();

  (*(v86 + 8))(v79, v87);
  (*v101)(v80, v104);
}

uint64_t sub_1003A2944(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v70 = a2;
  v71 = a3;
  v72 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v68 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  v8 = *(v67 + 64);
  __chkstk_darwin(v69);
  v66 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Participant();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v64 = v14;
  v65 = &v57[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v16 = &v57[-v15];
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v57[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *&v3[OBJC_IVAR___MRDSystemGroupSession_executionQueue];
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v62 = v5;
    v63 = v4;
    if (qword_100537E00 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v24 = type metadata accessor for Logger();
  sub_100015AFC(v24, qword_100537E08);
  v25 = *(v11 + 16);
  v25(v16, v71, v10);
  v26 = v3;
  v27 = v72;
  v28 = v70;
  sub_1001C3FE0(v72, v70);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  sub_1001C4034(v27, v28);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v59 = v32;
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v31 = 138544130;
    *(v31 + 4) = v26;
    *v32 = v26;
    *(v31 + 12) = 2082;
    v33 = [v26 identifier];
    v58 = v30;
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v25;
    v37 = v36;

    v38 = sub_10002C9C8(v35, v37, aBlock);

    *(v31 + 14) = v38;
    *(v31 + 22) = 2080;
    sub_1003A4450(&qword_1005222C0, &type metadata accessor for Participant);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    (*(v11 + 8))(v16, v10);
    v42 = sub_10002C9C8(v39, v41, aBlock);
    v25 = v61;

    *(v31 + 24) = v42;
    *(v31 + 32) = 2080;
    v28 = v70;
    v43 = Data.description.getter();
    v45 = sub_10002C9C8(v43, v44, aBlock);

    *(v31 + 34) = v45;
    _os_log_impl(&_mh_execute_header, v29, v58, "[%{public}@]<%{public}s> received message from %s. Payload: %s", v31, 0x2Au);
    sub_1000038A4(v59, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    v27 = v72;
  }

  else
  {

    (*(v11 + 8))(v16, v10);
  }

  v46 = [*&v26[OBJC_IVAR___MRDSystemGroupSession_observers] allObjects];
  sub_1001BC5A8(&unk_100529190, &qword_10045C208);
  v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v72 = *&v26[OBJC_IVAR___MRDSystemGroupSession_notificationQueue];
  v48 = v65;
  v25(v65, v71, v10);
  v49 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v50 = swift_allocObject();
  *(v50 + 2) = v47;
  *(v50 + 3) = v26;
  *(v50 + 4) = v27;
  *(v50 + 5) = v28;
  (*(v11 + 32))(&v50[v49], v48, v10);
  aBlock[4] = sub_1003A43E8;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D15F8;
  v51 = _Block_copy(aBlock);
  v52 = v26;
  sub_1001C3FE0(v27, v28);
  v53 = v66;
  static DispatchQoS.unspecified.getter();
  v73 = _swiftEmptyArrayStorage;
  sub_1003A4450(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  v54 = v68;
  v55 = v63;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v51);
  (*(v62 + 8))(v54, v55);
  (*(v67 + 8))(v53, v69);
}

void sub_1003A3148(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v22 = a2;
  v23 = a3;
  v21 = type metadata accessor for UUID();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v21);
  v20 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    v11 = a1 & 0xC000000000000001;
    v19 = (v6 + 8);
    do
    {
      if (v11)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(a1 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      if ([v17 respondsToSelector:"session:didReceiveMessageData:fromParticipant:"])
      {
        swift_unknownObjectRetain();
        v12 = v20;
        Participant.id.getter();
        UUID.uuidString.getter();
        (*v19)(v12, v21);
        v13 = v11;
        v14 = v9;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v16 = String._bridgeToObjectiveC()();

        [v17 session:v22 didReceiveMessageData:isa fromParticipant:v16];
        swift_unknownObjectRelease_n();

        v9 = v14;
        v11 = v13;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v10;
    }

    while (v9 != v10);
  }
}

uint64_t sub_1003A35E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *&v4[OBJC_IVAR___MRDSystemGroupSession_executionQueue];
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  *(v17 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = a4;
  v18 = _Block_copy(aBlock);
  v19 = v4;
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1003A4450(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

void sub_1003A38D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_1003A35E0(a3, a4, a5, a6);
  swift_unknownObjectRelease();
}

uint64_t sub_1003A3964(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7553656369766564 && a2 == 0xED00006570795462 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44496C65646F6DLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1003A3B74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&unk_1005291B0, &qword_10045C218);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_1000326D8(a1, a1[3]);
  sub_1003A0804();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100026A44(a1);
  }

  LOBYTE(v37[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v37[0]) = 1;
  *&v31 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v31 + 1) = v14;
  LOBYTE(v37[0]) = 2;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v15;
  LOBYTE(v37[0]) = 3;
  v29 = 0;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v37[0]) = 4;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = 5;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = *(v6 + 8);
  v18 = v16;
  v29 = v19;
  v17(v9, v5);
  *&v32 = v11;
  *(&v32 + 1) = v13;
  v20 = v31;
  v33 = v31;
  v21 = v30;
  *&v34 = v28;
  *(&v34 + 1) = v30;
  *&v35 = __PAIR64__(v27, v45);
  v22 = v29;
  *(&v35 + 1) = v18;
  v36 = v29;
  sub_10021FCCC(&v32, v37);
  sub_100026A44(a1);
  v37[0] = v11;
  v37[1] = v13;
  v38 = __PAIR128__(*(&v31 + 1), v20);
  v39 = v28;
  v40 = v21;
  v41 = v45;
  v42 = v27;
  v43 = v18;
  v44 = v22;
  result = sub_1001C933C(v37);
  v24 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v24;
  *(a2 + 64) = v36;
  v25 = v33;
  *a2 = v32;
  *(a2 + 16) = v25;
  return result;
}

void sub_1003A3F38()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (qword_100537DF0 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:qword_1005385E0 object:v1];
}

uint64_t sub_1003A4000()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1003A4060()
{
  result = qword_100529160;
  if (!qword_100529160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100529160);
  }

  return result;
}

__n128 sub_1003A40B4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1003A40D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1003A4120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemGroupSession.HostInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemGroupSession.HostInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003A42E4()
{
  result = qword_1005381B0[0];
  if (!qword_1005381B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005381B0);
  }

  return result;
}

unint64_t sub_1003A433C()
{
  result = qword_1005382C0;
  if (!qword_1005382C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005382C0);
  }

  return result;
}

unint64_t sub_1003A4394()
{
  result = qword_1005382C8[0];
  if (!qword_1005382C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005382C8);
  }

  return result;
}

void sub_1003A43E8()
{
  v1 = *(type metadata accessor for Participant() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1003A3148(v2, v3, v4, v5, v6);
}

uint64_t sub_1003A4450(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003A4498()
{
  result = qword_1005291A0;
  if (!qword_1005291A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005291A0);
  }

  return result;
}

void sub_1003A44EC(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  if (!a1)
  {
LABEL_6:
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = v1[2];
  swift_errorRetain();
  if (qword_100537E00 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100015AFC(v6, qword_100537E08);
  swift_errorRetain();
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v12 = v19;
    *v10 = 138412802;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2082;
    v13 = [v7 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_10002C9C8(v14, v16, &v19);

    *(v10 + 14) = v17;
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v18;
    v11[1] = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@]<%{public}s> Message send error: %@.", v10, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v12);

    goto LABEL_6;
  }

  if (!v3)
  {
    return;
  }

LABEL_7:
  v3(a1);
}

uint64_t sub_1003A4740()
{
  v1 = *(*(type metadata accessor for GroupSessionMessenger.MessageContext() - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];

  return sub_1003A1C70(v2, v3, v4);
}

void sub_1003A47C8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 40) name];
  v7 = [*(a1 + 40) requestID];
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:*(a1 + 48)];
  v10 = 138544130;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = a2;
  v16 = 2048;
  v17 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v10, 0x2Au);
}

void sub_1003A48D0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  active = MRMediaRemoteActiveEndpointTypeCopyDescription();
  v6 = 138543618;
  v7 = active;
  v8 = 2114;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[SystemEndpointController] Reevaluating %{public}@ActiveEndpoint because %{public}@", &v6, 0x16u);
}

void sub_1003A4990(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[SystemEndpointController] Updating activeEndpointInfo %@", &v3, 0xCu);
}

void sub_1003A4A50(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDGroupSessionServer] Found active group session for device: %@, but operation had already timed out", &v3, 0xCu);
}

void sub_1003A4ACC(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 40) bundleIdentifier];
  sub_10005170C();
  sub_100051724(&_mh_execute_header, v3, v4, "[MRDGroupSessionServer] Push session state: %@ to new client: %@", v5, v6, v7, v8, v9);
}

void sub_1003A4B60(uint64_t a1, id *a2)
{
  v2 = [*a2 bundleIdentifier];
  sub_10005170C();
  sub_100051724(&_mh_execute_header, v3, v4, "[MRDGroupSessionServer] Push eligibility state: %@ to new client: %@", v5, v6, v7, v8, v9);
}

void sub_1003A4BF4(void *a1, NSObject *a2)
{
  v3 = [a1 localizedFailureReason];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDGroupSessionServer] Cannot present proximity card: %@", &v4, 0xCu);
}

void sub_1003A4CD0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRDGroupSessionServer] Accepting connection from client %@", &v2, 0xCu);
}

void sub_1003A4D48(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[MRDGroupSessionClient] connectToSession - pending session. Empty state %@ to connection: %@", buf, 0x16u);
}

void sub_1003A4DB0(void *a1)
{
  v6 = [a1 sessionIdentifier];
  sub_100054740();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1003A4E44(uint64_t a1, void *a2)
{
  v2 = [a2 connection];
  sub_100054730();
  sub_100051724(&_mh_execute_header, v3, v4, "[MRDGroupSessionClient] connectToSession - placeholder session. Empty state %@ to connection: %@", v5, v6, v7, v8, 2u);
}

void sub_1003A4EE4(uint64_t a1, void *a2)
{
  v2 = [a2 connection];
  sub_100054730();
  sub_100051724(&_mh_execute_header, v3, v4, "[MRDGroupSessionClient] connectToSession - initial state %@ to connection: %@", v5, v6, v7, v8, 2u);
}

void sub_1003A4F84(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDGroupSessionClient] Pending session timed out: %@", &v3, 0xCu);
}

void sub_1003A5000(uint64_t a1, void *a2)
{
  v2 = [a2 sessionIdentifier];
  sub_100054730();
  sub_100054740();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1003A50A4(void *a1)
{
  v6 = [a1 sessionIdentifier];
  sub_100054740();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1003A5174()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A530C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[MRDRemoteControlServer] handleSendApplicationConnectionMessage - connection: %@ not found, it has likely just invalidated", buf, 0xCu);
}

void sub_1003A5364(id *a1)
{
  v1 = [*a1 commandID];
  sub_100061134();
  sub_10006114C(&_mh_execute_header, v2, v3, "Command <%{public}@> ignored because of pre-processing error %{public}@.", v4, v5, v6, v7, v8);
}

void sub_1003A5408(uint64_t a1)
{
  v1 = [*(a1 + 48) displayName];
  sub_100061134();
  sub_10006114C(&_mh_execute_header, v2, v3, "Client %{public}@ failed to reply to command (SendCommandErr = %@)", v4, v5, v6, v7, v8);
}

void sub_1003A5558(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = a1[4];
  v7 = a1[5];
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:a1[6]];
  v10 = 138544130;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = a2;
  v16 = 2048;
  v17 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v10, 0x2Au);
}

void sub_1003A563C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ProximityProvider] invalidated with error %@", &v2, 0xCu);
}

void sub_1003A56B4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ProximityProvider] Failed to activate with error %@", &v2, 0xCu);
}

void sub_1003A5740(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) requestID];
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(a1 + 48)];
  sub_100066F24();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v11);
}

void sub_1003A5800(void *a1, NSObject *a2)
{
  v3 = [a1 nowPlayingActivityAssertionEndDate];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRDUIActivityServer] Deferring end of now playing activity until: %@", &v4, 0xCu);
}

void sub_1003A5898(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[MRDUIActivityServer] >>>+ clients: %@, routes: %@", &v3, 0x16u);
}

void sub_1003A59C8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDUIActivityServer] Rejecting volume HUD presentation request from non-entitled client %@.", &v2, 0xCu);
}

void sub_1003A5A40(void *a1, NSObject *a2)
{
  v3 = [a1 userState];
  v4 = [v3 identifier];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDMusicUserStateCenter] No identity available for: %@", &v5, 0xCu);
}

void sub_1003A5B18(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = a1[5];
  v7 = a1[6];
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:a1[7]];
  v10 = 138544130;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = a2;
  v16 = 2048;
  v17 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v10, 0x2Au);
}

void sub_1003A5CA4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[MRDIDSService] %@ Error %@ sending message", &v3, 0x16u);
}

void sub_1003A5D84(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[ODDSRouting] Could not find output device for route %{public}@ - error = %{public}@", &v4, 0x16u);
}

void sub_1003A5E24(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ProximityController] Now playing request failed: %@", &v2, 0xCu);
}

void sub_1003A5E9C(uint64_t a1, NSObject *a2)
{
  v4 = [*(a1 + 32) displayMonitor];
  v5 = [v4 displayOn];
  v6 = [*(a1 + 32) displayMonitor];
  v7 = [v6 lockScreenVisible];
  v8 = [*(a1 + 32) displayMonitor];
  v9[0] = 67109632;
  v9[1] = v5;
  v10 = 1024;
  v11 = v7;
  v12 = 1024;
  v13 = [v8 controlCenterVisible];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[ProximityController] display: %{BOOL}u, lockscreen: %{BOOL}u, controlcenter: %{BOOL}u", v9, 0x14u);
}

void sub_1003A6020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  sub_100061134();
  sub_10008EECC(&_mh_execute_header, v3, v4, "[MRDAVOutputContextManager] Ignoring inactiveOutputContexts outputContext %@ because still in use for: %@");
}

void sub_1003A6464(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[MRDRemoteDisplayPairingServer] Error starting pairingServer: %@, pairingInfo: %@", &v3, 0x16u);
}

void sub_1003A64EC(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  [a2 pid];
  sub_10009684C();
  sub_100096870(&_mh_execute_header, v4, v5, "Refusing to handle RequestPlaybackInitializationMessage with target bundleID: %{public}@ from un-entitled or non-self client: %{public}@ (%d)", v6, v7, v8, v9, v10);
}

void sub_1003A658C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Warning: could not relay browsable content message. No client found for bundle ID %@.", &v2, 0xCu);
}

void sub_1003A6618(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *(a1 + 40);
  v7 = +[NSDate date];
  [v7 timeIntervalSinceDate:*(a1 + 48)];
  v9 = 138544130;
  v10 = @"MRDMRRelayConnectionManager.waitForConnection";
  v11 = 2114;
  v12 = v6;
  v13 = 2114;
  v14 = a2;
  v15 = 2048;
  v16 = v8;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v9, 0x2Au);
}

void sub_1003A6718(uint64_t *a1)
{
  v1 = *a1;
  sub_1000A4BE4();
  sub_10008EEB0(&_mh_execute_header, v2, v3, "[MRDRemoteControlGroupSessionCoordinator] Failed to get origin for ASE endpoint: %@", v4, v5, v6, v7, v8);
}

void sub_1003A6784(uint64_t *a1)
{
  v1 = *a1;
  sub_1000A4BE4();
  sub_10008EEB0(&_mh_execute_header, v2, v3, "[MRDRemoteControlGroupSessionCoordinator] Failed to start group session with error: %{public}@.", v4, v5, v6, v7, v8);
}

void sub_1003A6834(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_1000A4BE4();
  sub_10008EEB0(&_mh_execute_header, v2, v3, "[MRDRemoteControlGroupSessionCoordinator] Timed out waiting to auto-join remote session: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1003A68A0(uint64_t *a1)
{
  v1 = *a1;
  sub_1000A4BE4();
  sub_10008EEB0(&_mh_execute_header, v2, v3, "[MRDRemoteControlGroupSessionCoordinator] Leaving auto-joined session because join finished after timeout: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1003A690C(uint64_t a1)
{
  v1 = *(a1 + 56);
  sub_1000A4BE4();
  sub_10008EEB0(&_mh_execute_header, v2, v3, "[MRDRemoteControlGroupSessionCoordinator] Auto-join attempt failed after timeout: %{public}@", v4, v5, v6, v7, v8);
}

void sub_1003A6978(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 64);
  v3 = *a2;
  sub_1000A4BE4();
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[MRDRemoteControlGroupSessionCoordinator] Failed to auto-join group session: %{public}@ with error: %{public}@.", v6, 0x16u);
}

void sub_1003A6A54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Attempted to enqueue disallowed background task %@", &v2, 0xCu);
}

void sub_1003A6AE0()
{
  sub_1000B66C4();
  sub_1000B66F8(v1);
  v7 = MRTransactionNameGetDescription();
  v8 = *(v0 + 40);
  sub_1000B66B4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void sub_1003A6B90()
{
  sub_1000B66C4();
  sub_1000B66EC(v1);
  v2 = MRTransactionNameGetDescription();
  v9 = *(v0 + 40);
  sub_10006114C(&_mh_execute_header, v3, v4, "[MRDTransaction] Canceling %@ transaction for playerPath %@", v5, v6, v7, v8, 2u);
}

void sub_1003A6C30(uint64_t a1, void *a2)
{
  sub_1000B66F8(a1);
  v8 = MRTransactionNameGetDescription();
  [a2 length];
  sub_1000B66B4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1003A6CF0()
{
  sub_1000B66C4();
  sub_1000B66EC(v0);
  v1 = MRTransactionNameGetDescription();
  sub_10005170C();
  sub_10006114C(&_mh_execute_header, v2, v3, "[MRDTransaction] %@ %@ received interrupted/invalid connection", v4, v5, v6, v7, v8);
}

void sub_1003A6D7C(uint64_t a1, uint64_t *a2)
{
  sub_1000B66F8(a1);
  v3 = MRTransactionNameGetDescription();
  v4 = *a2;
  sub_1000B66D0();
  sub_1000B66B4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1003A6E24()
{
  sub_1000B66C4();
  sub_1000B66EC(v0);
  v1 = MRTransactionNameGetDescription();
  sub_10005170C();
  sub_10006114C(&_mh_execute_header, v2, v3, "[MRDTransaction] %p %@ could not create reply to qeury", v4, v5, v6, v7, v8);
}

void sub_1003A6EB0()
{
  sub_1000B66C4();
  sub_1000B66EC(v0);
  v1 = MRTransactionNameGetDescription();
  sub_10005170C();
  sub_10006114C(&_mh_execute_header, v2, v3, "[MRDTransaction] %p %@ could not extract connection to query", v4, v5, v6, v7, v8);
}

void sub_1003A6F3C()
{
  sub_1000B66C4();
  sub_1000B66EC(v0);
  v1 = MRTransactionNameGetDescription();
  sub_10005170C();
  sub_1000B66B4();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1003A6FD0()
{
  sub_1000B66C4();
  sub_1000B66F8(v1);
  v2 = MRTransactionNameGetDescription();
  v3 = *(v0 + 8);
  sub_1000B66D0();
  sub_1000B66B4();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1003A7098(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 16);
  v4 = 134218496;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  v8 = 2048;
  v9 = v3 + a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[MRTransactionServer] Memory Usage: %ld + %ld -> %ld", &v4, 0x20u);
}

void sub_1003A7130(void *a1)
{
  [a1 name];
  v1 = MRTransactionNameGetDescription();
  v2 = MRTransactionPacketsGetKeys();
  sub_1000B8D74();
  sub_100051724(&_mh_execute_header, v3, v4, "[MRTransactionServer] %@ received keys %@", v5, v6, v7, v8, v9);
}

void sub_1003A71D8(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRTransactionServer] %@ received ack", &v3, 0xCu);
}

void sub_1003A7254(void *a1, void *a2)
{
  [a1 name];
  v3 = MRTransactionNameGetDescription();
  v4 = [a2 allKeys];
  sub_1000B8D74();
  sub_100051724(&_mh_execute_header, v5, v6, "[MRTransactionServer] %@ received keys %@", v7, v8, v9, v10, v11);
}

void sub_1003A72FC(void *a1, uint64_t *a2)
{
  v3 = a1[8];
  v4 = a1[9];
  v5 = *a2;
  v6 = +[NSDate date];
  [v6 timeIntervalSinceDate:a1[10]];
  sub_100066F50(&_mh_execute_header, v7, v8, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v9, v10, v11, v12, 2u);
}

void sub_1003A73D0(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:a1[7]];
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, 2u);
}

void sub_1003A76B8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cluster requires primary but none was found. Members: %{public}@", &v2, 0xCu);
}

void sub_1003A7744(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRUIControllerConnection] <%p> No endpoint found. Please check that MediaRemoteUI is installed and registered with launchd.", &v2, 0xCu);
}

void sub_1003A77D0()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A780C(uint64_t a1)
{
  v6 = *(*a1 + 24);
  sub_100061140();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1003A7888()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A78C4()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A7900()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7970()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A79AC()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7A1C()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A7A58()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7AC8()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7B38()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7BA8()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7C18()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A7C54(uint64_t a1)
{
  v6 = *(a1 + 40);
  sub_100061140();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1003A7CCC()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7D3C()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A7D78()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A7DB4(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[MRDGroupSessionManager] Invalidation received for untracked session: %{public}@.", &v3, 0xCu);
}

void sub_1003A7E30()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A7EA0(uint64_t a1, uint64_t *a2, NSObject *a3)
{
  v5 = [*(a1 + 32) identifier];
  v6 = *a2;
  sub_100061134();
  v9 = 2112;
  v10 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[MRDGroupSessionManager] %@ No equivalent WHA endpoint for session: %@", v8, 0x16u);
}

void sub_1003A7F54()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A7FA4()
{
  sub_1000C15B0();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  sub_1000C15C0();
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, 2u);
}

void sub_1003A805C()
{
  sub_1000C15B0();
  v2 = *(v1 + 32);
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(v0 + 48)];
  sub_1000C15C0();
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, 2u);
}

void sub_1003A811C()
{
  sub_100061134();
  sub_1000C15C0();
  sub_1000E4FAC(&_mh_execute_header, v0, v1, "Device disconnect called with error: %{public}@ for external device: %{public}@");
}

void sub_1003A81B4()
{
  sub_1000C15B0();
  v2 = *(v1 + 40);
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(v0 + 48)];
  sub_1000C15C0();
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, 2u);
}

void sub_1003A82DC()
{
  sub_100061134();
  sub_1000C15C0();
  sub_1000E4FAC(&_mh_execute_header, v0, v1, "Connection error while sending ping message for device %{public}@. %{public}@");
}

void sub_1003A8488(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(a1 + 48)];
  sub_1000E6E28();
  sub_100066F50(&_mh_execute_header, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, 2u);
}

void sub_1003A8544(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(a1 + 48)];
  sub_1000E6E28();
  sub_100066F50(&_mh_execute_header, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, 2u);
}

void sub_1003A8650(uint64_t a1)
{
  sub_1000EF6C8(a1);
  v2 = *(*(*v1 + 8) + 40);
  v3 = MRPairedDeviceCopyDeltaDescription();
  sub_1000EF6A8();
  sub_1000EF6FC(&_mh_execute_header, v4, v5, "[MRDNowPlayingOriginClient] Set: deviceInfo (%p) for <%@>:\n %@", v6, v7, v8, v9, v10);
}

void sub_1003A86E8(uint64_t a1)
{
  sub_1000EF6C8(a1);
  v1 = MRPairedDeviceCopyDescription();
  sub_1000EF6A8();
  sub_1000EF6FC(&_mh_execute_header, v2, v3, "[MRDNowPlayingOriginClient] Set: deviceInfo (%p) for <%@>:\n %@", v4, v5, v6, v7, v8);
}

void sub_1003A88D4(uint64_t a1, NSObject *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_1000F2D28();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDRRC].IRD dropping event of unexpected type (%@): %@", v5, 0x16u);
}

void sub_1003A8978(uint64_t a1, NSObject *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_1000F2D28();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "dropping event of unexpected type (%@): %@", v5, 0x16u);
}

void sub_1003A8A1C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[MRDRRC].IRD couldn't get eligibility of %@: %@", &v4, 0x16u);
}

void sub_1003A8C08(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Error unpicking AirPlay routes. %{public}@", &v2, 0xCu);
}

void sub_1003A8C80(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRDLockScreenController] Reevaluating shouldShowLockScreen for reason %@", &v2, 0xCu);
}

void sub_1003A8DEC(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRDCLC] <%p> Cancelling playback timer.", &v2, 0xCu);
}

void sub_1003A8F00()
{
  sub_1000C15B0();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, 2u);
}

void sub_1003A8FCC()
{
  sub_1000C15B0();
  v2 = *(v1 + 40);
  v3 = [*(v1 + 48) requestID];
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  sub_100066F24();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v11);
}

void sub_1003A9098()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A90D4()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A9110()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A9180()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A9390(uint64_t a1, NSObject *a2)
{
  v3 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
  sub_100061134();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[ExternalDeviceServer] didReceiveVolumeControlCapabilitiesChange %@", v4, 0xCu);
}

void sub_1003A9598()
{
  sub_100061134();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Device with managedConfigDeviceID, %{public}@, allowed: %d", v2, 0x12u);
}

void sub_1003A9620()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A9690(id *a1, NSObject *a2)
{
  [*a1 command];
  v3 = MRMediaRemoteCopyCommandDescription();
  sub_100061134();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[ExternalDeviceServer] Client not authorized to send command type: %@", v4, 0xCu);
}

void sub_1003A9728()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A9764()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A97D4()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003A9844()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003A98A8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Client is not entitled for NowPlaying Acesss: %@", &v2, 0xCu);
}

void sub_1003A9920(id *a1, int a2, NSObject *a3)
{
  v5 = [*a1 displayName];
  v6 = 138543618;
  v7 = v5;
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "PID Mismatch: Client %{public}@ is trying to make a nowPlayingClient with a different pid %d", &v6, 0x12u);
}

void sub_1003A99D4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Resolving Existing %{public}@ -> %{public}@", &v3, 0x16u);
}

void sub_1003A9B54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRCompanionConnectionController] Skipping Attempt to discover and connect to companion because <%@>", &v2, 0xCu);
}

void sub_1003A9BCC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRCompanionConnectionController] Could not discover companion endpoint with error %@", &v2, 0xCu);
}

void sub_1003A9C44(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRCompanionConnectionController] Could not connect to companion with error %@", &v2, 0xCu);
}

void sub_1003A9D8C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Posting Notification %@", &v3, 0xCu);
}

void sub_1003A9E08(uint64_t a1, NSObject *a2)
{
  v3 = MRMediaRemoteCopyReadableDictionaryDescription();
  sub_100061134();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "UserInfo %@", v4, 0xCu);
}

void sub_1003A9E98(uint8_t *a1, uint64_t a2, void *a3, NSObject *a4)
{
  v7 = MRMediaRemoteCopyReadableDictionaryDescription();
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "Custom UserInfo %@", a1, 0xCu);
}

void sub_1003A9F88()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003AA074()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003AA118()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003AA2E8(uint64_t a1, NSObject *a2, double a3)
{
  v3 = 134218242;
  v4 = a3;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Requesting to aquire assertion for %lf > 30 seconds. Assertion will likely only be valid for 30 seconds %@", &v3, 0x16u);
}

void sub_1003AA380(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to acquire assertion: %@", &v2, 0xCu);
}

void sub_1003AA3F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to acquire host assertion: %@", &v2, 0xCu);
}

void sub_1003AA470(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) requestID];
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:*(a1 + 48)];
  v10 = 138544130;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = a2;
  v16 = 2048;
  v17 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v10, 0x2Au);
}

void sub_1003AA578(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *(a1 + 40);
  v7 = +[NSDate date];
  [v7 timeIntervalSinceDate:*(a1 + 48)];
  v9 = 138544130;
  v10 = @"autoConnectToEndpoint";
  v11 = 2114;
  v12 = v6;
  v13 = 2114;
  v14 = a2;
  v15 = 2048;
  v16 = v8;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v9, 0x2Au);
}

void sub_1003AA664(unint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = sub_100140AD0(a1);
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[MRDElectedPlayerController] Reevaluating electedPlayer event = %{public}@, reason =  %{public}@", &v6, 0x16u);
}

uint64_t sub_1003AA728()
{
  dlerror();
  v0 = abort_report_np();
  return sub_1003AA74C(v0);
}

void sub_1003AAE00(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = *(a1 + 40);
  sub_100061134();
  sub_100054740();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1003AAEAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000A4BE4();
  sub_100061140();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1003AAF20()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003AAF5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000A4BE4();
  sub_1000C15C0();
  sub_1000E4FAC(&_mh_execute_header, v2, v3, "[AVRoutingServer] AV reconnaissance session failed to find route with UID %{public}@ -- %{public}@");
}

void sub_1003AAFD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000A4BE4();
  sub_100061140();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1003AB044()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003AB080()
{
  sub_1000A4BE4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003AB0F4(id *a1)
{
  v1 = [*a1 bundleIdentifier];
  sub_10016B9F0();
  sub_100054740();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1003AB190(id *a1, NSObject *a2)
{
  v3 = [*a1 bundleIdentifier];
  v4[0] = 138412546;
  sub_10016B9F0();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Missing entitlement %@ for %@. Please file a radar for this process to obtain this entitlement", v4, 0x16u);
}

void sub_1003AB2D0()
{
  sub_1000C15B0();
  v2 = *(v1 + 48);
  v3 = [*(v1 + 56) requestID];
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 64)];
  sub_1000C15C0();
  sub_1000C1598();
  sub_100054740();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_1003AB3A0()
{
  sub_1000C15B0();
  v2 = *(v1 + 40);
  v3 = [*(v1 + 48) requestID];
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  sub_1000C15C0();
  sub_1000C1598();
  sub_100054740();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_1003AB470()
{
  sub_100061134();
  sub_1000C15C0();
  sub_1000E4FAC(&_mh_execute_header, v0, v1, "[AVRoutingServer] Output device connection failure: %{public}@ for %{public}@");
}

void sub_1003AB4E0()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003AB51C()
{
  sub_1000CD2D4();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1003AB558()
{
  sub_1000C15B0();
  v2 = *(v1 + 40);
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(v0 + 48)];
  sub_1000C15C0();
  sub_1000C1598();
  sub_100054740();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1003AB620()
{
  sub_100061134();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1003AB690(int *a1)
{
  v6 = *a1;
  sub_100061140();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1003AB708(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 32) requestID];
  v7 = *(*(*a2 + 8) + 40);
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:*(a1 + 40)];
  v11 = 138544130;
  v12 = @"removeOutputDeviceUIDsFromParentGroup";
  sub_1000C15C0();
  v13 = v6;
  v14 = v9;
  v15 = v7;
  v16 = 2048;
  v17 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v11, 0x2Au);
}

void sub_1003AB80C(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = *(a1 + 32);
  v7 = [a2 error];
  v8 = [a2 playerPath];
  v9 = +[NSDate date];
  [v9 timeIntervalSinceDate:*(a1 + 40)];
  v11 = 138544386;
  v12 = @"proactivePrepareForSetQueue";
  v13 = 2114;
  v14 = v6;
  v15 = 2114;
  v16 = v7;
  v17 = 2114;
  v18 = v8;
  v19 = 2048;
  v20 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v11, 0x34u);
}

void sub_1003AB928(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 error];
  v7 = +[NSDate date];
  [v7 timeIntervalSinceDate:*(a1 + 40)];
  v9 = 138544130;
  v10 = @"proactivePrepareForSetQueue";
  v11 = 2114;
  v12 = v5;
  v13 = 2114;
  v14 = v6;
  v15 = 2048;
  v16 = v8;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v9, 0x2Au);
}

void sub_1003ABBD0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[MRDGroupSessionPushMessenger] Error retrieving firewall: %{public}@.", &v2, 0xCu);
}

void sub_1003ABC48(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "[MRDGroupSessionPushMessenger] Error updating firewall entries: %{public}@.", &v2, 0xCu);
}

void sub_1003ABCC0(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 bundleIdentifier];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error fetching %{public}@ process handle: %{public}@", &v6, 0x16u);
}

void sub_1003ABD88(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[VirtualAudioInputServer] Created new device with descriptor: %{public}@", &v2, 0xCu);
}

void sub_1003ABE00(void *a1, NSObject *a2)
{
  v3 = 134349056;
  v4 = [a1 count];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[VirtualAudioInputServer] Notifying %{public}llu endpoints of newly connected device", &v3, 0xCu);
}

void sub_1003ABF40()
{
  sub_1001779D0();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1003ABFB0(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134349056;
  *(buf + 4) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[VirtualAudioInputServer] Notifying %{public}llu endpoints of disconnected device", buf, 0xCu);
}

void sub_1003AC0AC()
{
  sub_1001779D0();
  sub_100061140();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1003AC130(uint64_t a1, NSObject *a2)
{
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDVolumeController] Error setting AVSC isMuted: %@", &v3, 0xCu);
}

void sub_1003AC1B4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to bless client [sync task assertion acquisition failed] %{public}@", &v2, 0xCu);
}

void sub_1003AC22C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to bless client [bless failed] %{public}@", &v2, 0xCu);
}

void sub_1003AC2A4(id *a1, NSObject *a2)
{
  v3 = [*a1 UUIDString];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Requested to invalidate a critical section assertion, but missing assertion for requestID: %@", &v4, 0xCu);
}

void sub_1003AC340(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = [*(a1 + 32) commandID];
  v7 = [a2 error];
  v8 = [a2 playerPath];
  v9 = +[NSDate date];
  [v9 timeIntervalSinceDate:*(a1 + 40)];
  v12[0] = 138544386;
  sub_10018303C();
  v13 = v7;
  v14 = v10;
  v15 = v8;
  v16 = 2048;
  v17 = v11;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", v12, 0x34u);
}

void sub_1003AC45C(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = [*(a1 + 32) commandID];
  v7 = [a2 error];
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:*(a1 + 40)];
  v10[0] = 138544130;
  sub_10018303C();
  v11 = v7;
  v12 = 2048;
  v13 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v10, 0x2Au);
}

void sub_1003AC5DC()
{
  sub_1000C15B0();
  v2 = [sub_10015B0A8(v1) requestID];
  v3 = +[NSDate date];
  sub_10015B0B4(v3, v4);
  sub_100066F24();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v11);
}

void sub_1003AC688(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) requestDetails];
  v8 = [v7 requestID];
  v9 = +[NSDate date];
  [v9 timeIntervalSinceDate:*(a1 + 56)];
  v11 = 138544130;
  v12 = v6;
  v13 = 2114;
  v14 = v8;
  v15 = 2114;
  v16 = a2;
  v17 = 2048;
  v18 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v11, 0x2Au);
}

void sub_1003AC794()
{
  sub_1000C15B0();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, 2u);
}

void sub_1003AC860(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "[MRDIDSServiceConnection] Remove handler for type=%@, %@", &v4, 0x16u);
}

void sub_1003AC8EC()
{
  sub_1000C15B0();
  v2 = *(v1 + 32);
  v3 = [*(v1 + 40) requestID];
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 48)];
  sub_100066F24();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v11);
}

id sub_1003AC9CC(void *a1)
{
  if (a1)
  {
    v1 = [a1 discoveredConcreteOutputDevices];
    v2 = [v1 msv_map:&stru_1004C05A0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1003ACA2C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v39 = +[NSMutableDictionary dictionary];
    v4 = [v3 uniqueIdentifier];
    sub_100196A70(v4, v5, v6, kMRAVOutputContextIdentifierUserInfoKey, v7, v8, v9, v10, v35, v39);

    v11 = [v3 outputDeviceUIDs];
    sub_100196A70(v11, v12, v13, MRAVOutputContextExistingOutputDeviceIdentifiersUserInfoKey, v14, v15, v16, v17, v36, v40);

    v18 = [*(a1 + 8) requestDetails];
    v19 = [v18 initiator];
    sub_100196AB0(v19, v20, v21, MRAVOutputContextModificationInitiatorUserInfoKey, v22, v23, v24, v25, v37, v41);

    v26 = [*(a1 + 8) requestDetails];
    v27 = [v26 requestID];
    sub_100196A70(v27, v28, v29, MRAVOutputContextModificationIdentifierUserInfoKey, v30, v31, v32, v33, v38, v42);

    v34 = +[NSNotificationCenter defaultCenter];
    [v34 postNotificationName:MRAVOutputContextModificationRequestToClearPredictedRoutesNotifications object:v3 userInfo:v43];
  }
}

void sub_1003ACB7C(id *a1, void *a2, uint64_t a3, void *a4)
{
  v24 = a4;
  if (a1)
  {
    [a2 timeIntervalSinceNow];
    v7 = v6;
    v8 = [a1[1] type];
    v9 = 0;
    v10 = 0;
    v11 = &kMRTopologyModificationTypeAdd;
    switch(v8)
    {
      case 0uLL:
        goto LABEL_15;
      case 1uLL:
        goto LABEL_5;
      case 2uLL:
        v10 = 1;
        v11 = &kMRTopologyModificationTypeRemove;
        goto LABEL_5;
      case 3uLL:
        v10 = 0;
        v11 = &kMRTopologyModificationTypeSet;
LABEL_5:
        v9 = *v11;
        break;
      default:
        v10 = 1;
        break;
    }

    v12 = fabs(v7);
    v13 = [a1[1] requestDetails];
    v14 = [v13 reason];
    MRAnalyticsCompositionForLocalDevice();
    v15 = [a1 discoveredConcreteOutputDevices];
    MRAnalyticsTrackTopologyChangeEvent();

    v16 = [a1 discoveredConcreteOutputDevices];
    v17 = [v16 firstObject];
    v18 = [v17 deviceType];

    v19 = [a1 discoveredConcreteOutputDevices];
    v20 = [v19 mr_any:&stru_1004C0810];

    v21 = [a1 discoveredConcreteOutputDevices];
    v22 = [v21 count];

    if ((v10 & 1) == 0)
    {
      v23 = v22 == 1 && v18 == 1;
      if (v23 && (v20 & 1) == 0)
      {
        [MRDRTCReporting reportRoutePickerInteractionWithDuration:v24 == 0 success:v12];
      }
    }

LABEL_15:
  }
}

void sub_1003ACD74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_19;
  }

  v10 = objc_alloc_init(NSMutableArray);
  v11 = [MRAVRoutingDiscoverySession discoverySessionWithEndpointFeatures:1];
  [v11 setDiscoveryMode:3];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_100190128;
  v48[3] = &unk_1004C0658;
  v12 = v10;
  v49 = v12;
  v50 = a1;
  v36 = v9;
  v54 = v9;
  v51 = v7;
  v37 = v8;
  v52 = v8;
  v35 = v11;
  v53 = v35;
  v13 = objc_retainBlock(v48);
  v14 = [*(a1 + 8) type];
  v15 = [*(a1 + 8) requestDetails];
  v16 = [v15 requestID];

  if (v14 == 3)
  {
    v17 = _MRLogForCategory();
    [v16 hash];
    sub_100196A00();
    if (!v20 & v19)
    {
      goto LABEL_15;
    }

    v21 = v24;
    if (!os_signpost_enabled(v17))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v22 = "SetOutputDevices.discover";
    goto LABEL_14;
  }

  if (v14 == 2)
  {
    v17 = _MRLogForCategory();
    [v16 hash];
    sub_100196A00();
    if (!v20 & v19)
    {
      goto LABEL_15;
    }

    v21 = v23;
    if (!os_signpost_enabled(v17))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v22 = "RemoveOutputDevices.discover";
    goto LABEL_14;
  }

  if (v14 == 1)
  {
    v17 = _MRLogForCategory();
    [v16 hash];
    sub_100196A00();
    if (!v20 & v19)
    {
      goto LABEL_15;
    }

    v21 = v18;
    if (!os_signpost_enabled(v17))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v22 = "AddOutputDevices.discover";
LABEL_14:
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_INTERVAL_BEGIN, v21, v22, "", buf, 2u);
LABEL_15:
  }

  v38 = v7;
  v25 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  [v25 setCachedDiscoveryEnabled:1];
  v26 = [[NSMutableArray alloc] initWithObjects:{AVAudioSessionCategoryPlayback, 0}];
  if ((MSVDeviceIsAudioAccessory() & 1) == 0)
  {
    v55[0] = &stru_1004D2058;
    v55[1] = AVAudioSessionCategoryPlayAndRecord;
    v27 = [NSArray arrayWithObjects:v55 count:2];
    [v26 addObjectsFromArray:v27];
  }

  v28 = [*(a1 + 8) outputDeviceUIDs];
  v29 = [*(a1 + 8) requestDetails];
  v30 = qos_class_self();
  v31 = dispatch_get_global_queue(v30, 0);
  sub_100196970();
  v40 = 3221225472;
  v41 = sub_10019056C;
  v42 = &unk_1004C0680;
  v43 = v12;
  v44 = v16;
  v45 = v13;
  v46 = v14;
  v32 = v13;
  v33 = v16;
  v34 = v12;
  [v25 searchForOutputDevices:v28 categories:v26 timeout:v29 details:v31 queue:v39 completion:7.0];

  v8 = v37;
  v7 = v38;
  v9 = v36;
LABEL_19:
}

void sub_1003AD1B8(id *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v55 = +[NSMutableDictionary dictionary];
    v4 = [v3 uniqueIdentifier];
    sub_100196A70(v4, v5, v6, kMRAVOutputContextIdentifierUserInfoKey, v7, v8, v9, v10, v49, v55);

    v11 = [v3 outputDeviceUIDs];
    sub_100196A70(v11, v12, v13, MRAVOutputContextExistingOutputDeviceIdentifiersUserInfoKey, v14, v15, v16, v17, v50, v56);

    v18 = sub_1003AC9CC(a1);
    sub_100196A70(v18, v19, v20, MRAVOutputContextModificationOutputDeviceIdentifiersUserInfoKey, v21, v22, v23, v24, v51, v57);

    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1[1] type]);
    sub_100196A70(v25, v26, v27, MRAVOutputContextModificationTypeUserInfoKey, v28, v29, v30, v31, v52, v58);

    v32 = [a1[1] requestDetails];
    v33 = [v32 reason];
    sub_100196AB0(v33, v34, v35, MRAVOutputContextModificationInitiatorUserInfoKey, v36, v37, v38, v39, v53, v59);

    v40 = [a1[1] requestDetails];
    v41 = [v40 requestID];
    sub_100196A70(v41, v42, v43, MRAVOutputContextModificationIdentifierUserInfoKey, v44, v45, v46, v47, v54, v60);

    v48 = +[NSNotificationCenter defaultCenter];
    [v48 postNotificationName:MRAVOutputContextDidBeginModificationNotification object:v3 userInfo:v61];
  }
}

void sub_1003AD364(id *a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v51 = +[NSMutableDictionary dictionary];
    v7 = [v6 uniqueIdentifier];
    sub_100196AB0(v7, v8, v9, kMRAVOutputContextIdentifierUserInfoKey, v10, v11, v12, v13, v46, v51);

    v14 = [v6 outputDeviceUIDs];
    sub_100196AB0(v14, v15, v16, MRAVOutputContextExistingOutputDeviceIdentifiersUserInfoKey, v17, v18, v19, v20, v47, v52);

    v21 = sub_1003AC9CC(a1);
    sub_100196AB0(v21, v22, v23, MRAVOutputContextModificationOutputDeviceIdentifiersUserInfoKey, v24, v25, v26, v27, v48, v53);

    v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1[1] type]);
    sub_100196AB0(v28, v29, v30, MRAVOutputContextModificationTypeUserInfoKey, v31, v32, v33, v34, v49, v54);

    v35 = [a1[1] requestDetails];
    v36 = [v35 reason];
    [v55 setObject:v36 forKeyedSubscript:MRAVOutputContextModificationInitiatorUserInfoKey];

    v37 = [a1[1] requestDetails];
    v38 = [v37 requestID];
    sub_100196AB0(v38, v39, v40, MRAVOutputContextModificationIdentifierUserInfoKey, v41, v42, v43, v44, v50, v55);

    [v56 setObject:v5 forKeyedSubscript:MRAVOutputContextModificationErrorUserInfoKey];
    v45 = +[NSNotificationCenter defaultCenter];
    [v45 postNotificationName:MRAVOutputContextDidFinishModificationNotification object:v6 userInfo:v56];
  }
}

void sub_1003AD548(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v208 = [v7 avOutputContext];
    v10 = dword_100529674++;
    if (v10 <= 3)
    {
      v11 = [v208 contextID];

      if (!v11)
      {
        v71 = _MRLogForCategory();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v248 = v7;
          _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "[OutputContextModification] performModificationWithOutputContext failed with outputContext: %@", buf, 0xCu);
        }

        [MSVAutoBugCapture snapshotWithDomain:MSVAutoBugCaptureDomainMediaRemote type:@"OutputContext" subType:@"Modification" context:@"Nil OutputContext" triggerThresholdValues:0 events:0 completion:0];
        v68 = [[NSError alloc] initWithMRError:32 description:@"Nil OutputContext"];
        v9[2](v9, v68);
        goto LABEL_41;
      }
    }

    v205 = v9;
    if (!v8)
    {
      v8 = &_dispatch_main_q;
      v12 = &_dispatch_main_q;
    }

    v13 = +[NSDate date];
    v14 = [*(a1 + 8) requestDetails];
    v15 = [v14 requestID];

    v16 = [NSString alloc];
    v17 = *(a1 + 16);
    v18 = MRAVOutputDeviceArrayDescription();
    v19 = [v16 initWithFormat:@"devices=%@, outputContext=%@", v18, v7];

    v207 = a1;
    v20 = [*(a1 + 8) type];
    v21 = v20;
    if (v20 == 3)
    {
      v22 = _MRLogForCategory();
      [v15 hash];
      sub_100196A00();
      if (!(!v24 & v23))
      {
        v34 = sub_100196B10();
        if (os_signpost_enabled(v34))
        {
          *buf = 0;
          sub_1001969B0(&_mh_execute_header, v35, v36, v37, "SetOutputDevices.perform", "");
        }
      }

      v29 = @"SetOutputDevices.perfrom";
    }

    else if (v20 == 2)
    {
      v22 = _MRLogForCategory();
      [v15 hash];
      sub_100196A00();
      if (!(!v24 & v23))
      {
        v30 = sub_100196B10();
        if (os_signpost_enabled(v30))
        {
          *buf = 0;
          sub_1001969B0(&_mh_execute_header, v31, v32, v33, "RemoveOutputDevices.perform", "");
        }
      }

      v29 = @"RemoveOutputDevices.perform";
    }

    else
    {
      if (v20 != 1)
      {
        v29 = @"UnknownOutputDevices.perform";
LABEL_23:
        v38 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", v29, v15];
        v39 = v38;
        if (v19)
        {
          [v38 appendFormat:@" for %@", v19];
        }

        v40 = _MRLogForCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v248 = v39;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
        }

        v41 = [NSString alloc];
        v42 = [v208 outputDevices];
        v206 = [v41 initWithFormat:@"Existing devices in context %@", v42];

        v43 = _MRLogForCategory();
        if (sub_100196AE0(v43))
        {
          sub_1001968E4(5.8383e-34);
          *(v44 + 14) = v15;
          sub_100196AA4();
          v249 = v206;
          sub_100196918(&_mh_execute_header, v45, v46, "Update: %{public}@<%{public}@> %@");
        }

        v232[0] = _NSConcreteStackBlock;
        v232[1] = 3221225472;
        v232[2] = sub_1001916D4;
        v232[3] = &unk_1004C0780;
        v192 = v208;
        v233 = v192;
        v234 = v29;
        v47 = v15;
        v235 = v47;
        v195 = v19;
        v236 = v195;
        v196 = v13;
        v237 = v196;
        v9 = v205;
        v241 = v205;
        v8 = v8;
        v238 = v8;
        v239 = v207;
        v201 = v7;
        v240 = v201;
        v242 = v21;
        v48 = objc_retainBlock(v232);
        v246 = @"com.apple.avfoundation.allows-set-output-device";
        [NSArray arrayWithObjects:&v246 count:1];
        v49 = MRMediaRemoteCopyEntitlements();
        v50 = [v49 objectForKeyedSubscript:@"com.apple.avfoundation.allows-set-output-device"];
        v51 = v50;
        if (!v50 || ([v50 BOOLValue] & 1) == 0)
        {
          v52 = _MRLogForCategory();
          if (sub_100196AE0(v52))
          {
            sub_1001968E4(5.8383e-34);
            *(v53 + 14) = v47;
            sub_100196AA4();
            v249 = @"Missing entitlement needed to modify output context. Operation will likley not work";
            sub_100196918(&_mh_execute_header, v54, v55, "Update: %{public}@<%{public}@> %@");
          }
        }

        v200 = v51;
        v194 = v49;
        v56 = [MRBlockGuard alloc];
        v204 = v47;
        v187 = v29;
        v188 = v47;
        v57 = [[NSString alloc] initWithFormat:@"%@<%@>"];
        v229[0] = _NSConcreteStackBlock;
        v229[1] = 3221225472;
        v229[2] = sub_100191EE8;
        v229[3] = &unk_1004B9BE0;
        v230 = v29;
        v58 = v48;
        v231 = v58;
        v59 = [v56 initWithTimeout:v57 reason:v229 handler:60.0];

        v226[0] = _NSConcreteStackBlock;
        v226[1] = 3221225472;
        v226[2] = sub_100191F8C;
        v226[3] = &unk_1004B9BE0;
        v60 = v59;
        v227 = v60;
        v61 = v58;
        v228 = v61;
        v203 = objc_retainBlock(v226);
        v198 = v60;
        v199 = v61;
        if ([v207[1] type] == 3)
        {
          v62 = [v207[1] outputDeviceUIDs];
          v63 = [v62 count];

          if (!v63)
          {
            v191 = v8;
            v193 = v7;
            v67 = MRMediaRemoteCopyLocalAirPlayReceiverTightSyncIdentity();
            v72 = objc_alloc_init(NSMutableArray);
            v222 = 0u;
            v223 = 0u;
            v224 = 0u;
            v225 = 0u;
            v73 = [v201 outputDevices];
            v74 = [v73 countByEnumeratingWithState:&v222 objects:v245 count:16];
            if (v74)
            {
              v63 = v74;
              v75 = *v223;
              do
              {
                for (i = 0; i != v63; i = i + 1)
                {
                  if (*v223 != v75)
                  {
                    objc_enumerationMutation(v73);
                  }

                  v77 = *(*(&v222 + 1) + 8 * i);
                  if (([v77 isLocalDevice] & 1) == 0)
                  {
                    v78 = [v77 uid];
                    v79 = [v78 isEqualToString:v67];

                    if ((v79 & 1) == 0)
                    {
                      [v72 addObject:v77];
                    }
                  }
                }

                v63 = [v73 countByEnumeratingWithState:&v222 objects:v245 count:16];
              }

              while (v63);
            }

            if ([v72 count])
            {
              v141 = v207[1];
              v142 = [v72 msv_compactMap:&stru_1004C07A0];
              v143 = [v141 copyWithType:2 outputDeviceUIDs:v142];

              v144 = [[MRDOutputContextModification alloc] initWithRequest:v143];
              v145 = _MRLogForCategory();
              v8 = v191;
              v9 = v205;
              v70 = v194;
              v69 = v195;
              if (sub_100196AE0(v145))
              {
                sub_1001968E4(5.8383e-34);
                *(v146 + 14) = v204;
                sub_100196AA4();
                v249 = @"instead of setting nil devices removing all non local devices...";
                sub_100196918(&_mh_execute_header, v147, v148, "Update: %{public}@<%{public}@> %@");
              }

              v220[0] = _NSConcreteStackBlock;
              v220[1] = 3221225472;
              v220[2] = sub_100191FF8;
              v220[3] = &unk_1004B6FE8;
              v65 = v203;
              v221 = v203;
              sub_1003ACD74(v144, v201, v191, v220);

              v7 = v193;
              v66 = v204;
            }

            else
            {
              v80 = _MRLogForCategory();
              v8 = v191;
              v66 = v204;
              v9 = v205;
              v70 = v194;
              v69 = v195;
              if (sub_100196AE0(v80))
              {
                sub_1001968E4(5.8383e-34);
                *(v81 + 14) = v204;
                sub_100196AA4();
                v249 = @"instead of setting nil devices removing all non local devices, but only local devices remain so nothing to do...";
                sub_100196918(&_mh_execute_header, v82, v83, "Update: %{public}@<%{public}@> %@");
              }

              v65 = v203;
              (v203[2])(v203, 0);
              v7 = v193;
            }

            v68 = v196;
            goto LABEL_40;
          }
        }

        if ([v207[1] type] == 2 && (objc_msgSend(v207[1], "shouldNotPauseIfLastDeviceRemoved") & 1) == 0)
        {
          v64 = +[MROrigin localOrigin];
          v213[0] = _NSConcreteStackBlock;
          v213[1] = 3221225472;
          v213[2] = sub_100192008;
          v213[3] = &unk_1004C07F0;
          v65 = v203;
          v219 = v203;
          v214 = v201;
          v215 = v207;
          v216 = v29;
          v66 = v204;
          v217 = v204;
          v218 = v8;
          [MRDeviceInfoRequest deviceInfoForOrigin:v64 queue:v218 completion:v213];

          v67 = v219;
          v68 = v196;
LABEL_39:
          v70 = v194;
          v69 = v195;
LABEL_40:

LABEL_41:
          goto LABEL_42;
        }

        v211 = 0u;
        v212 = 0u;
        v209 = 0u;
        v210 = 0u;
        v84 = v207[3];
        v85 = [v84 countByEnumeratingWithState:&v209 objects:v244 count:16];
        if (v85)
        {
          v86 = v85;
          v87 = v7;
          v88 = *v210;
          while (2)
          {
            for (j = 0; j != v86; j = j + 1)
            {
              if (*v210 != v88)
              {
                objc_enumerationMutation(v84);
              }

              v90 = *(*(&v209 + 1) + 8 * j);
              if (([v90 canBeGrouped] & 1) == 0 && (objc_msgSend(v90, "supportsBluetoothSharing") & 1) == 0)
              {
                if ([v207[1] type] == 1)
                {
                  v92 = [v90 canBeGrouped];
                  v93 = [NSString alloc];
                  if (v92)
                  {
                    v94 = @"device %@ does not support bluetooth sharing";
                  }

                  else
                  {
                    v94 = @"device %@ is not groupable";
                  }

                  v95 = [v93 initWithFormat:v94, v90];
                  ErrorWithDescription = MRMediaRemoteCreateErrorWithDescription();

                  (v203[2])(v203, ErrorWithDescription);
                }

                v91 = 0;
                goto LABEL_77;
              }
            }

            v86 = [v84 countByEnumeratingWithState:&v209 objects:v244 count:16];
            if (v86)
            {
              continue;
            }

            break;
          }

          v91 = 1;
LABEL_77:
          v7 = v87;
        }

        else
        {
          v91 = 1;
        }

        sub_1003AEA00(v207, v201);
        v67 = objc_alloc_init(NSMutableDictionary);
        v97 = [v207[1] requestDetails];
        [v97 userInitiated];
        v98 = [sub_1001969D4() numberWithBool:?];
        [v67 setObject:v98 forKeyedSubscript:AVOutputContextOutputDevicesModificationOptionUserInitiated];

        [v67 setObject:v204 forKeyedSubscript:AVOutputContextOutputDevicesModificationOptionCorrelationID];
        v99 = objc_alloc_init(NSMutableDictionary);
        v100 = [v207[1] data];
        v101 = objc_opt_class();
        v102 = NSStringFromClass(v101);
        v202 = v99;
        [v99 setObject:v100 forKeyedSubscript:v102];

        v103 = [v207[3] count];
        if ((v91 & 1) != 0 || v103 <= 1)
        {
          v65 = v203;
          v107 = v192;
          if ([v207[3] count] < 2 || objc_msgSend(v192, "supportsMultipleOutputDevices"))
          {
            if ([v192 supportsMultipleOutputDevices])
            {
              v108 = [v207[1] type];
              v68 = v196;
              if (v108 == 3)
              {
                v104 = v8;
                v106 = [[NSMutableDictionary alloc] initWithDictionary:v67];
                v173 = [v207[1] requestDetails];
                v174 = [v173 label];
                [v106 setObject:v174 forKeyedSubscript:AVOutputContextSetOutputDevicesOptionInitiator];

                v175 = [v207[1] password];

                if (v175)
                {
                  v176 = [v207[1] password];
                  sub_100196A24();

                  [v106 setObject:&__kCFBooleanTrue forKeyedSubscript:AVOutputContextSetOutputDeviceCancelIfAuthRequiredKey];
                }

                v65 = &kMRPlaybackQueueCapabilitiesChangedNotification_ptr;
                [sub_100196A0C() fadeAudio];
                v177 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                [sub_100196A0C() muteUntilFinished];
                v178 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                sub_100196AC8(v179, v180, v181, AVOutputContextSetOutputDevicesOptionDidFailToConnectToOutputDeviceUserInfo, v182, v183, v184, v185, v187, v188, v189, v190, v192, v194, v195, v196, v198, v199, v200, v99);
                v186 = v207[3];
                [sub_100196938() setOutputDevices:? options:? queue:? completion:?];
              }

              else if (v108 == 2)
              {
                v104 = v8;
                v106 = [[NSMutableDictionary alloc] initWithDictionary:v67];
                v160 = [v207[1] requestDetails];
                v161 = [v160 label];
                [v106 setObject:v161 forKeyedSubscript:AVOutputContextRemoveOutputDeviceOptionInitiator];

                [v207[1] fadeAudio];
                v162 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                v163 = [v207[1] requestDetails];
                v65 = [v163 reason];
                v164 = [v65 containsString:kMRMigrateInitiatorProximity];

                if (v164)
                {
                  v165 = [v106 setObject:&__kCFBooleanTrue forKeyedSubscript:AVOutputContextRemoveOutputDeviceOptionContinuePlayingAfterLastDeviceRemoved];
                }

                sub_100196AC8(v165, v166, v167, AVOutputContextRemoveOutputDeviceOptionDidFailToConnectToOutputDeviceUserInfo, v168, v169, v170, v171, v187, v188, v189, v190, v192, v194, v195, v196, v198, v199, v200, v202);
                v172 = v207[3];
                [sub_100196938() removeOutputDevices:? options:? queue:? completion:?];
              }

              else
              {
                if (v108 != 1)
                {
LABEL_107:

                  v66 = v204;
                  v9 = v205;
                  goto LABEL_39;
                }

                v104 = v8;
                v106 = [[NSMutableDictionary alloc] initWithDictionary:v67];
                v109 = [v207[1] requestDetails];
                v110 = [v109 label];
                [v106 setObject:v110 forKeyedSubscript:AVOutputContextAddOutputDeviceOptionInitiator];

                v111 = [v207[1] password];

                if (v111)
                {
                  v112 = [v207[1] password];
                  sub_100196A24();
                }

                v65 = &kMRPlaybackQueueCapabilitiesChangedNotification_ptr;
                [sub_100196A0C() fadeAudio];
                v113 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                [sub_100196A0C() muteUntilFinished];
                v114 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                sub_100196AC8(v115, v116, v117, AVOutputContextAddOutputDeviceOptionDidFailToConnectToOutputDeviceUserInfo, v118, v119, v120, v121, v187, v188, v189, v190, v192, v194, v195, v196, v198, v199, v200, v99);
                v122 = v207[3];
                [sub_100196938() addOutputDevices:? options:? queue:? completion:?];
              }
            }

            else
            {
              v104 = v8;
              v123 = _MRLogForCategory();
              if (sub_100196AE0(v123))
              {
                sub_1001968E4(5.8383e-34);
                *(v124 + 14) = v204;
                sub_100196AA4();
                v249 = @"outputContext does not support mutiple devices";
                sub_100196918(&_mh_execute_header, v125, v126, "Update: %{public}@<%{public}@> %@");
              }

              v106 = [[NSMutableDictionary alloc] initWithDictionary:v67];
              v127 = [v207[1] type];
              v128 = [v207[1] requestDetails];
              v129 = [v128 label];
              if (v127 == 2)
              {
                [v106 setObject:v129 forKeyedSubscript:AVOutputContextRemoveOutputDeviceOptionInitiator];

                if ([v207[1] shouldNotPauseIfLastDeviceRemoved] && AVOutputContextRemoveOutputDeviceOptionContinuePlayingAfterLastDeviceRemoved)
                {
                  [v106 setObject:&__kCFBooleanTrue forKeyedSubscript:?];
                }

                [v207[1] fadeAudio];
                v130 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                sub_100196AC8(v131, v132, v133, AVOutputContextRemoveOutputDeviceOptionDidFailToConnectToOutputDeviceUserInfo, v134, v135, v136, v137, v187, v188, v189, v190, v192, v194, v195, v196, v198, v199, v200, v202);
                v138 = [v207[3] firstObject];
                v243 = v138;
                v139 = [NSArray arrayWithObjects:&v243 count:1];
                [v107 removeOutputDevices:v139 options:v106 queue:v104 completion:v203];
              }

              else
              {
                [v106 setObject:v129 forKeyedSubscript:AVOutputContextSetOutputDeviceInitiatorKey];

                v149 = [v207[1] password];

                if (v149)
                {
                  v150 = [v207[1] password];
                  sub_100196A24();

                  [v106 setObject:&__kCFBooleanTrue forKeyedSubscript:AVOutputContextSetOutputDeviceCancelIfAuthRequiredKey];
                }

                v138 = &kMRPlaybackQueueCapabilitiesChangedNotification_ptr;
                [sub_100196A0C() fadeAudio];
                v151 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                [sub_100196A0C() muteUntilFinished];
                v152 = [sub_1001969D4() numberWithBool:?];
                sub_100196A24();

                sub_100196AC8(v153, v154, v155, AVOutputContextSetOutputDeviceDidFailToConnectToOutputDeviceUserInfoKey, v156, v157, v158, v159, v187, v188, v189, v190, v192, v194, v195, v196, v198, v199, v200, v202);
                [v207[3] firstObject];
                objc_claimAutoreleasedReturnValue();
                [sub_100196B10() setOutputDevice:0x1004B5000 options:v106 queue:v104 completion:v203];
              }

              v68 = v197;

              v65 = v203;
            }

LABEL_106:

            v8 = v104;
            goto LABEL_107;
          }

          v104 = v8;
          v140 = [[NSString alloc] initWithFormat:@"Output context modification failed. Output context doesn't support multiple devices"];
          v106 = MRMediaRemoteCreateErrorWithDescription();
        }

        else
        {
          v104 = v8;
          v105 = [[NSString alloc] initWithFormat:@"Output context modification failed. Attempted to group multiple devices where at least one is not groupable"];
          v106 = MRMediaRemoteCreateErrorWithDescription();

          v65 = v203;
        }

        (v65)[2](v65, v106);
        v68 = v196;
        goto LABEL_106;
      }

      v22 = _MRLogForCategory();
      [v15 hash];
      sub_100196A00();
      if (!(!v24 & v23))
      {
        v25 = sub_100196B10();
        if (os_signpost_enabled(v25))
        {
          *buf = 0;
          sub_1001969B0(&_mh_execute_header, v26, v27, v28, "AddOutputDevices.perform", "");
        }
      }

      v29 = @"AddOutputDevices.perform";
    }

    goto LABEL_23;
  }

LABEL_42:
}

void sub_1003AE97C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_100196950();
  v6 = 3221225472;
  v7 = sub_100192470;
  v8 = &unk_1004B6FE8;
  v4 = *(v3 + 48);
  v9 = *(v3 + 56);
  sub_1003ACD74(v1, v2, v4, v5);
}

void sub_1003AEA00(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    if (([a1[1] type] | 2) == 3)
    {
      [a1 discoveredConcreteOutputDevices];
      objc_claimAutoreleasedReturnValue();
      v6 = sub_100196A18();
      sub_1003AED7C(v6, v2, v4);

      v7 = [v4 outputDeviceUIDs];
      v2 = [NSMutableSet setWithArray:v7];

      v8 = [a1 discoveredConcreteOutputDevices];
      v9 = [NSMutableSet setWithArray:v8];

      [v9 minusSet:v2];
      v10 = [a1 discoveredConcreteOutputDevices];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1001924D8;
      v38[3] = &unk_1004B9608;
      v39 = v9;
      v11 = v9;
      v12 = [v10 msv_filter:v38];

      if ([v12 count])
      {
        sub_1003AF060(a1, v12, v4);
      }
    }

    v5 = [a1[1] type];
    if (v5 == 3)
    {
      v23 = [v4 outputDeviceUIDs];
      v24 = [sub_10019690C() setWithArray:?];

      v25 = sub_1003AC9CC(a1);
      v15 = [sub_10019690C() setWithArray:?];

      [v24 minusSet:v15];
      v18 = [v4 outputDevices];
      sub_100196950();
      v29 = 3221225472;
      v30 = sub_100192568;
      v31 = &unk_1004B8A40;
      v20 = (v26 + 32);
      v32 = v24;
      v21 = v24;
      v22 = &v28;
    }

    else
    {
      if (v5 != 2)
      {
        goto LABEL_5;
      }

      [a1 discoveredConcreteOutputDevices];
      objc_claimAutoreleasedReturnValue();
      v13 = sub_100196A18();
      sub_1003AF32C(v13, v2, v4);

      v14 = [v4 outputDeviceUIDs];
      v15 = [NSMutableSet setWithArray:v14];

      v16 = sub_1003AC9CC(a1);
      v17 = [NSMutableSet setWithArray:v16];

      [v17 intersectSet:v15];
      v18 = [a1 discoveredConcreteOutputDevices];
      sub_100196970();
      v34 = 3221225472;
      v35 = sub_100192520;
      v36 = &unk_1004B9608;
      v20 = (v19 + 32);
      v37 = v17;
      v21 = v17;
      v22 = &v33;
    }

    v27 = [v18 msv_filter:v22];

    if ([v27 count])
    {
      sub_1003AF604(a1, v27, v4);
    }
  }

LABEL_5:
}

void sub_1003AF8D0()
{
  sub_1000C15B0();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, 2u);
}

void sub_1003AF98C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[OutputContextModification] Failed to discover all output devices involved in modification: %{public}@", &v3, 0xCu);
}

void sub_1003AFA08()
{
  sub_1000C15B0();
  v2 = *(v1 + 40);
  v3 = +[NSDate date];
  [v3 timeIntervalSinceDate:*(v0 + 48)];
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v4, v5, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v6, v7, v8, v9, 2u);
}

void sub_1003AFACC()
{
  sub_1000C15B0();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  sub_1000C1598();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, 2u);
}

void sub_1003AFBCC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[MRDLockScreenContentController] Finished query with error: %@.", &v2, 0xCu);
}

void sub_1003AFC58(uint64_t a1)
{
  v2 = [*(a1 + 8) reason];
  v3 = [*(a1 + 8) requestID];
  v4 = +[NSDate date];
  v5 = [*(a1 + 8) startDate];
  [v4 timeIntervalSinceDate:v5];
  sub_10019A7B0();
  sub_10019A7DC(&_mh_execute_header, v6, v7, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v8, v9, v10, v11, v12);
}

void sub_1003AFD54(uint64_t a1)
{
  v2 = [*(a1 + 8) reason];
  v3 = [*(a1 + 8) requestID];
  v4 = +[NSDate date];
  v5 = [*(a1 + 8) startDate];
  [v4 timeIntervalSinceDate:v5];
  sub_10019A7B0();
  sub_10019A7DC(&_mh_execute_header, v6, v7, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v8, v9, v10, v11, v12);
}

void sub_1003AFE50(unint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = sub_10019CF04(a1);
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[MRDProactiveRecommendedPlayerController] Reevaluating proactiveRecommendedPlayer event = %{public}@, reason =  %{public}@", &v6, 0x16u);
}

void sub_1003AFF28()
{
  sub_1000C15B0();
  v2 = *(v1 + 56);
  v3 = *(v1 + 32);
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 64)];
  sub_1001A05B0();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v11);
}

void sub_1003AFFD4()
{
  sub_1000C15B0();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:*(v0 + 56)];
  sub_1001A05B0();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v11);
}

void sub_1003B00A4(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) requestID];
  v8 = [a2 error];
  v9 = +[NSDate date];
  [v9 timeIntervalSinceDate:*(a1 + 48)];
  sub_1001A6340();
  v13 = v7;
  v14 = v10;
  v15 = v8;
  v16 = 2048;
  v17 = v11;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v12, 0x2Au);
}

void sub_1003B01A0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) requestID];
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:*(a1 + 48)];
  sub_1001A6340();
  v12 = v7;
  v13 = v9;
  v14 = a2;
  v15 = 2048;
  v16 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v11, 0x2Au);
}

void sub_1003B0288(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1001A85F4();
  sub_1000E4FAC(&_mh_execute_header, v2, v3, "[MRUIController][D] <%p> postBannerWithConfiguration error: %@");
}

void sub_1003B02F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1001A85F4();
  sub_1000E4FAC(&_mh_execute_header, v2, v3, "[MRUIController][D] <%p> dismissBannerRequest error: %@");
}

void sub_1003B0360(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1001A85F4();
  sub_1000E4FAC(&_mh_execute_header, v2, v3, "[MRUIController][D] <%p> dismissAllBanners error: %@");
}

void sub_1003B05FC(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:a1[7]];
  sub_1001A05B0();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v11);
}

void sub_1003B06AC(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = +[NSDate date];
  [v4 timeIntervalSinceDate:a1[8]];
  sub_1001A05B0();
  sub_100066F50(&_mh_execute_header, v5, v6, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v7, v8, v9, v10, v11);
}

void sub_1003B07A0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDRemoteDisplayPairingAction] Failed to connect: %{public}@", &v2, 0xCu);
}

void sub_1003B0818(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  sub_1000E4FAC(&_mh_execute_header, a2, a3, "[MRDGroupSession] <%p> Failed to send message with error: %{public}@", *v3, *&v3[8], *&v3[16]);
}

void sub_1003B0894(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDGroupSession] Attempted to approve unknown participant: %@", &v2, 0xCu);
}

void sub_1003B090C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MRDGroupSession] Attempted to deny unknown participant: %@", &v2, 0xCu);
}

void sub_1003B0984(uint64_t *a1)
{
  v1 = *a1;
  sub_1001A85F4();
  sub_1000E4FAC(&_mh_execute_header, v2, v3, "[MRDGroupSession] <%p> Error exiting low power mode: %@.");
}

void sub_1003B09F0(uint64_t *a1)
{
  v1 = *a1;
  sub_1001A85F4();
  sub_1000E4FAC(&_mh_execute_header, v2, v3, "[MRDGroupSession] <%p> Error entering low power mode: %@. Will not re-attempt to enter low power.");
}

void sub_1003B0A5C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = [*(a1 + 8) name];
  v7 = [*(a1 + 8) requestID];
  v8 = +[NSDate date];
  v9 = [*(a1 + 8) startDate];
  [v8 timeIntervalSinceDate:v9];
  v11 = 138544130;
  v12 = v6;
  v13 = 2114;
  v14 = v7;
  v15 = 2114;
  v16 = a2;
  v17 = 2048;
  v18 = v10;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v11, 0x2Au);
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
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

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
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

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

ldiv_t ldiv(uint64_t a1, uint64_t a2)
{
  v4 = _ldiv(a1, a2);
  rem = v4.rem;
  quot = v4.quot;
  result.rem = rem;
  result.quot = quot;
  return result;
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v4 = _lldiv(a1, a2);
  rem = v4.rem;
  quot = v4.quot;
  result.rem = rem;
  result.quot = quot;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}