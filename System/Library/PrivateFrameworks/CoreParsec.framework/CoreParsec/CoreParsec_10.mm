void sub_1000E63B0()
{
  v1 = *(*(v0 + 32) + 16);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 24);
  *(v0 + 24) = 0;
  swift_unknownObjectRelease();

  os_unfair_lock_unlock(v1);
}

void sub_1000E63FC()
{
  sub_100005478();
  v1 = v0;
  v93 = v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100003650(v3);
  v91 = v5;
  v92 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100003664();
  v89 = v9 - v8;
  sub_1000058D8();
  v90 = type metadata accessor for DispatchQoS();
  v10 = sub_100003650(v90);
  v88 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100003664();
  v87 = v15 - v14;
  sub_1000058D8();
  v16 = type metadata accessor for UserAgent();
  v17 = sub_100003650(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  v83 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000058D8();
  v22 = type metadata accessor for DispatchTime();
  v23 = sub_100003650(v22);
  v85 = v24;
  v86 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_100003664();
  v84 = v28 - v27;
  v29 = sub_100046184(&qword_100217480, &unk_100198F70);
  v30 = sub_100005490(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v79 - v33;
  v35 = type metadata accessor for DispatchPredicate();
  v36 = sub_100003650(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v36);
  sub_100003664();
  v43 = v42 - v41;
  v44 = v1[6];
  *(v42 - v41) = v44;
  (*(v38 + 104))(v42 - v41, enum case for DispatchPredicate.onQueue(_:), v35);
  v45 = v44;
  v46 = _dispatchPreconditionTest(_:)();
  (*(v38 + 8))(v43, v35);
  if ((v46 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    sub_10000372C();
    goto LABEL_4;
  }

  if (!v1[2])
  {
    goto LABEL_9;
  }

  v80 = *(v19 + 16);
  v80(v34, v93, v16);
  sub_1000051C0(v34, 0, 1, v16);
  sub_10001C564(0, v34, 1);
  sub_10000B298(v34, &qword_100217480, &unk_100198F70);
  v82 = sub_10002FED4();
  v46 = v47;
  if (qword_1002140A8 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v48 = type metadata accessor for Logger();
  sub_100006674(v48, qword_100232A68);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  v51 = os_log_type_enabled(v49, v50);
  v81 = v45;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v95[0] = swift_slowAlloc();
    *v52 = 136315394;
    *(v52 + 4) = sub_100009684(v82, v46, v95);
    *(v52 + 12) = 2080;
    *(v52 + 14) = sub_100009684(v1[7], v1[8], v95);
    _os_log_impl(&_mh_execute_header, v49, v50, "soft limit reached, maxtimer session id %s %s", v52, 0x16u);
    swift_arrayDestroy();
    sub_1000036D4();
    sub_1000036D4();
  }

  if (v1[4])
  {
    v53 = v1[4];

    sub_1000F0A9C();
  }

  sub_1000089E4();
  sub_100007534(v1 + 12, v1[15]);
  v79 = &v79;
  sub_100003A6C();
  v55 = v54;
  v57 = *(v56 + 64);
  __chkstk_darwin(v58);
  sub_100003664();
  v60 = sub_10000AECC(v59);
  v61(v60);
  v62 = v84;
  sub_1000E7E78();
  v63 = *(v55 + 8);
  v64 = sub_10000672C();
  v65(v64);
  sub_1000068B4();
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = v83;
  v80(v83, v93, v16);
  v68 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v69 = swift_allocObject();
  v70 = v82;
  *(v69 + 2) = v66;
  *(v69 + 3) = v70;
  *(v69 + 4) = v46;
  (*(v19 + 32))(&v69[v68], v67, v16);
  v95[4] = sub_1000E81F0;
  v95[5] = v69;
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 1107296256;
  sub_100005D74();
  v95[2] = v71;
  v95[3] = &unk_1001FC5D0;
  v72 = _Block_copy(v95);

  v73 = v87;
  static DispatchQoS.unspecified.getter();
  v94 = _swiftEmptyArrayStorage;
  sub_1000084D0();
  sub_100015378(v74, v75);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v72);
  v76 = *(v91 + 8);
  v77 = sub_100005994();
  v78(v77);
  (*(v88 + 8))(v73, v90);
  (*(v85 + 8))(v62, v86);

LABEL_9:
  sub_100005460();
}

uint64_t sub_1000E6B5C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_100046184(&qword_100217480, &unk_100198F70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v25 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = sub_10002FED4();
    v15 = v14;
    if (qword_1002140A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000964C(v16, qword_100232A68);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = a4;
      v27 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_100009684(a2, a3, &v27);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_100009684(v13, v15, &v27);
      _os_log_impl(&_mh_execute_header, v17, v18, "max timer expired expected %s current %s", v19, 0x16u);
      swift_arrayDestroy();
      a4 = v26;
    }

    if (v13 == a2 && v15 == a3)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!*(v12 + 16))
    {
    }

    v23 = type metadata accessor for UserAgent();
    (*(*(v23 - 8) + 16))(v10, a4, v23);
    sub_1000051C0(v10, 0, 1, v23);
    sub_10001C564(0, v10, 2);
    sub_10000B298(v10, &qword_100217480, &unk_100198F70);
LABEL_15:
    if (*(v12 + 32))
    {
      v24 = *(v12 + 32);

      sub_1000F0A9C();
    }
  }

  return result;
}

void sub_1000E6E68()
{
  sub_100005478();
  v2 = v1;
  v38 = v3;
  v36 = v4;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100003650(v41);
  v43 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_100003664();
  v37 = v10 - v9;
  sub_1000058D8();
  v42 = type metadata accessor for DispatchQoS();
  v11 = sub_100003650(v42);
  v40 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_100003664();
  sub_10000FEE8();
  v15 = type metadata accessor for Logger();
  v16 = sub_100003650(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v0 + 48);
  (*(v18 + 16))(v21, v2, v15);
  v22 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v23 = (v20 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v18 + 32))(v25 + v22, v21, v15);
  *(v25 + v23) = v0;
  *(v25 + v24) = v36;
  *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;
  v45[4] = sub_1000E8160;
  v45[5] = v25;
  sub_100003784();
  v45[1] = 1107296256;
  sub_100005D74();
  v45[2] = v26;
  v45[3] = &unk_1001FC580;
  v27 = _Block_copy(v45);

  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_1000084D0();
  sub_100015378(v28, v29);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  v30 = *(v43 + 8);
  v31 = sub_100005854();
  v32(v31);
  v33 = sub_1000078CC();
  v34(v33, v42);

  sub_100005460();
}

void sub_1000E7190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SessionTokens(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v28 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26 = a4;
    v19 = v18;
    v29 = v18;
    *v17 = 136446722;
    sub_100030008(v9);
    (*(v11 + 16))(v14, &v9[*(v6 + 20)], v10);
    sub_10001C2A4(v9, type metadata accessor for SessionTokens);
    sub_100015378(&unk_1002181A0, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v11 + 8))(v14, v10);
    v23 = sub_100009684(v20, v22, &v29);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2050;
    v24 = v28;
    *(v17 + 14) = v27;
    *(v17 + 22) = 2050;
    *(v17 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v24, v15, "Client session uuid: %{public}s requestId: %{public}llu queryId: %{public}llu", v17, 0x20u);
    sub_100007378(v19);
  }

  else
  {
    v25 = v28;
  }
}

uint64_t sub_1000E74AC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SessionTokens(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B8B0();
  sub_100030008(v6);
  v7 = *(v3 + 28);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(a1, &v6[v7], v8);
  return sub_10001C2A4(v6, type metadata accessor for SessionTokens);
}

void sub_1000E75CC()
{
  sub_100005478();
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_100003650(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100003664();
  v11 = *(v0 + 48);
  *(v10 - v9) = v11;
  v12 = sub_100019064();
  v13(v12);
  v11;
  v14 = _dispatchPreconditionTest(_:)();
  v15 = *(v6 + 8);
  v16 = sub_100005994();
  v17(v16);
  if (v14)
  {
    v2(0);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_100005460();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E7730()
{
  sub_100005478();
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100003650(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100003664();
  v11 = v10 - v9;
  sub_10000770C();
  v12 = type metadata accessor for DispatchQoS();
  v13 = sub_100003650(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_100003664();
  sub_10000FEE8();
  v18 = *(*(v0 + 136) + 32);
  if (sub_1000E5C04(sub_1000E7DF0))
  {
    v24 = *(v2 + 48);
    sub_1000068B4();
    v19 = swift_allocObject();
    swift_weakInit();
    v25[4] = sub_1000E7DF8;
    v25[5] = v19;
    sub_100003784();
    v25[1] = 1107296256;
    sub_100005D74();
    v25[2] = v20;
    v25[3] = &unk_1001FC530;
    v21 = _Block_copy(v25);

    static DispatchQoS.unspecified.getter();
    sub_1000084D0();
    sub_100015378(v22, v23);
    sub_100046184(&unk_100217030, &unk_1001989C0);
    sub_10000CB0C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    (*(v6 + 8))(v11, v3);
    (*(v15 + 8))(v1, v12);
  }

  sub_100005460();
}

uint64_t sub_1000E79A4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000E623C();
  }

  return result;
}

uint64_t sub_1000E7A08()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  sub_10000B218(v0 + 72);
  sub_100007378((v0 + 96));
  v5 = *(v0 + 136);

  v6 = *(v0 + 144);

  return v0;
}

uint64_t sub_1000E7A68()
{
  sub_1000E7A08();

  return _swift_deallocClassInstance(v0, 153, 7);
}

void *sub_1000E7AC0()
{
  v0[2] = _swiftEmptySetSingleton;
  v0[3] = 0;
  type metadata accessor for Locker();
  sub_1000068B4();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  v0[4] = v1;
  return v0;
}

uint64_t sub_1000E7B18@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_100046184(&unk_100219B70, &qword_10019DFE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  sub_100095354();
  swift_endAccess();
  v8 = type metadata accessor for UUID();
  v9 = sub_100008D0C(v7, 1, v8);
  result = sub_10000B298(v7, &unk_100219B70, &qword_10019DFE0);
  v11 = v9 != 1 && !*(*(a1 + 16) + 16) && *(a1 + 24) != 0;
  *a2 = v11;
  return result;
}

void *sub_1000E7C38()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];

  return v0;
}

uint64_t sub_1000E7C68()
{
  v0 = sub_1000E7C38();

  return _swift_deallocClassInstance(v0, 40, 7);
}

_BYTE *storeEnumTagSinglePayload for ClientSessionState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000E7D9C()
{
  result = qword_100219B60;
  if (!qword_100219B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219B60);
  }

  return result;
}

uint64_t sub_1000E7E00()
{
  v0 = swift_slowAlloc();
  *v0 = 0;
  v3 = 0.0;
  if (!mach_timebase_info(v0))
  {
    LODWORD(v1) = v0->numer;
    LODWORD(v2) = v0->denom;
    v3 = v1 / (v2 * 1000000.0);
  }

  qword_100219860 = *&v3;
  return result;
}

uint64_t sub_1000E7E78()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchTime.now()();
  v7 = DispatchTime.uptimeNanoseconds.getter();
  result = (*(v3 + 8))(v6, v2);
  v9 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v9 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = v7 + v9;
  if (!__CFADD__(v7, v9))
  {
    return DispatchTime.init(uptimeNanoseconds:)();
  }

LABEL_9:
  __break(1u);
  return result;
}

BOOL sub_1000E7FB8(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  if (qword_1002141D8 != -1)
  {
    swift_once();
  }

  (*(v3 + 16))(v7, a1, v2);
  Date.init(timeInterval:since:)();
  Date.timeIntervalSinceNow.getter();
  v11 = v10;
  (*(v3 + 8))(v9, v2);
  return v11 <= 120.0;
}

void sub_1000E8160()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  sub_10000E1A8();
  v6 = *(v0 + v5);
  v8 = *(v0 + v7);
  v9 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1000E7190(v0 + v4, v6, v8, v9);
}

uint64_t sub_1000E8208(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000E8278(void *a1)
{
  v1 = [a1 experimentInfos];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1000E834C();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1000E82D8(uint64_t a1, void *a2)
{
  sub_1000E834C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setExperimentInfos:isa];
}

unint64_t sub_1000E834C()
{
  result = qword_100219B90;
  if (!qword_100219B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100219B90);
  }

  return result;
}

uint64_t sub_1000E8390()
{
  result = sub_100054400(v5);
  if (*(&v5[0] + 1))
  {
    v5[4] = v5[0];
    v5[5] = v5[1];
    v5[6] = v5[2];
    v5[7] = v5[3];
    v1 = [objc_opt_self() defaultManager];
    sub_100004950();
    v2 = sub_1000963F4();
    v4 = v3;
    sub_10000B298(v5, &unk_100219BA0, &qword_10019E910);
    sub_1000E8CA8();
    sub_100014A40(v2, v4);
  }

  return result;
}

Swift::Void __swiftcall Incident.reportTelemetry()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3)
  {
    if (v3 == 1)
    {
      static os_signpost_type_t.event.getter();
      if (qword_1002141B0 != -1)
      {
        sub_100004290();
      }

      sub_100046184(&unk_100217040, &qword_1001989F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100197F30;
      *(v11 + 56) = &type metadata for Int;
      *(v11 + 64) = &protocol witness table for Int;
      *(v11 + 32) = v5;
      *(v11 + 96) = &type metadata for Int;
      *(v11 + 104) = &protocol witness table for Int;
      *(v11 + 72) = v4;
      *(v11 + 136) = &type metadata for String;
      *(v11 + 144) = sub_10000512C();
      *(v11 + 112) = 0xD00000000000001ELL;
      *(v11 + 120) = 0x80000001001B0B20;
      static OSSignpostID.exclusive.getter();
      sub_100003A7C();
    }

    else
    {
      static os_signpost_type_t.event.getter();
      if (qword_1002141B0 != -1)
      {
        sub_100004290();
      }

      sub_100046184(&unk_100217040, &qword_1001989F0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_100197F20;
      *(v37 + 56) = &type metadata for String;
      *(v37 + 64) = sub_10000512C();
      *(v37 + 32) = 0xD000000000000016;
      *(v37 + 40) = 0x80000001001AF6D0;
      static OSSignpostID.exclusive.getter();
      sub_100003A7C();
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v40 = static os_signpost_type_t.event.getter();
    if (qword_1002141B0 != -1)
    {
      sub_100004290();
    }

    v12 = qword_100219BB0;
    sub_100046184(&unk_100217040, &qword_1001989F0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100198F10;
    *(v13 + 56) = &type metadata for String;
    v14 = sub_10000512C();
    *(v13 + 64) = v14;
    strcpy((v13 + 32), "ObjCException");
    *(v13 + 46) = -4864;
    v15 = [v5 name];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v5;
    v17 = v16;
    v19 = v18;

    *(v13 + 96) = &type metadata for String;
    *(v13 + 104) = v14;
    *(v13 + 72) = v17;
    *(v13 + 80) = v19;
    static OSSignpostID.exclusive.getter();
    sub_100003A7C();

    (*(v7 + 8))(v10, v6);
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v20))
    {
      v21 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v21 = 136315650;
      v22 = v39;
      v23 = [v39 name];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_100009684(v24, v26, &v41);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      v28 = sub_1000E8AE4(v22);
      if (v29)
      {
        v30 = v29;
      }

      else
      {
        v28 = 1701736302;
        v30 = 0xE400000000000000;
      }

      v31 = sub_100009684(v28, v30, &v41);

      *(v21 + 14) = v31;
      *(v21 + 22) = 2080;
      v32 = [v22 callStackSymbols];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = Array.description.getter();
      v35 = v34;

      v36 = sub_100009684(v33, v35, &v41);

      *(v21 + 24) = v36;
      _os_log_impl(&_mh_execute_header, v12, v20, "ObjC Exception: %s, reason: %s, call stack symbols: %s", v21, 0x20u);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_1000E8A80()
{
  sub_10002E87C();
  result = OS_os_log.init(subsystem:category:)();
  qword_100219BB0 = result;
  return result;
}

uint64_t sub_1000E8AE4(void *a1)
{
  v1 = [a1 reason];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000E8B48(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

_BYTE *_s5ErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000E8C54()
{
  result = qword_100219BB8;
  if (!qword_100219BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219BB8);
  }

  return result;
}

void sub_1000E8CA8()
{
  sub_100005478();
  v99 = v0;
  v3 = v2;
  v5 = v4;
  v94 = v6;
  v95 = v7;
  v8 = type metadata accessor for UUID();
  v9 = sub_100003650(v8);
  v92 = v10;
  v93 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100003664();
  v15 = v14 - v13;
  v16 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v16);
  v18 = *(v17 + 64);
  sub_100003760();
  __chkstk_darwin(v19);
  v21 = &v87 - v20;
  v22 = type metadata accessor for URL();
  v23 = sub_100003650(v22);
  v98 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_100003838();
  v91 = v27;
  sub_100007F80();
  __chkstk_darwin(v28);
  sub_10002DF38();
  v30 = __chkstk_darwin(v29);
  v32 = &v87 - v31;
  __chkstk_darwin(v30);
  sub_100005924();
  v97 = v33;
  sub_100007F80();
  __chkstk_darwin(v34);
  v36 = &v87 - v35;
  if (v3)
  {
    v37 = sub_100046184(&qword_100219BE8, &qword_10019EA98);
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_1000058BC();

    v41 = v5;
    v42 = sub_100049544(v40, 3, 0, v5);
  }

  else
  {
    v41 = v5;
    v42 = 0;
  }

  NSFileManager.parsecdCustomFBDirectoryURL.getter();
  if (sub_100008D0C(v21, 1, v22) != 1)
  {
    (*(v98 + 32))(v36, v21, v22);
    v96 = v36;
    v89 = v41;
    v90 = v32;
    v88 = v41;
    switch(v41)
    {
      case 0:
        v45 = @"unknown";
        goto LABEL_29;
      case 1:
        v45 = @"SafariAutoFill";
        goto LABEL_29;
      case 2:
        v45 = @"Crowdsourcing";
        goto LABEL_29;
      case 3:
        v45 = @"SpotlightResultFeatures";
        goto LABEL_29;
      case 4:
        v45 = @"SafariAutoPlay";
        goto LABEL_29;
      case 5:
        v45 = @"Trystero";
        goto LABEL_29;
      case 6:
        v45 = @"EngagedCompletionFeatures";
        goto LABEL_29;
      case 7:
        v45 = @"ProactiveEventTracker";
        goto LABEL_29;
      case 8:
        v45 = @"PhiDES";
        goto LABEL_29;
      case 9:
        v45 = @"DuetExpert";
        goto LABEL_29;
      case 10:
        v45 = @"UserReport";
        goto LABEL_29;
      case 11:
        v45 = @"Usage";
        goto LABEL_29;
      case 12:
        v45 = @"FeedbackV2";
        goto LABEL_29;
      case 13:
        v45 = @"FeedbackV2PB";
        goto LABEL_29;
      case 14:
        v45 = @"ProactiveEventTrackerAggregated";
        goto LABEL_29;
      case 15:
        v45 = @"Handwashing";
        goto LABEL_29;
      case 16:
        v45 = @"Experiments";
        goto LABEL_29;
      case 17:
        v45 = @"FeatureQuality";
        goto LABEL_29;
      case 18:
        v45 = @"OnDeviceAnalytics";
        goto LABEL_29;
      case 19:
        v45 = @"ModelFeedback";
LABEL_29:
        v46 = v45;
        break;
      default:
        v45 = [NSString stringWithFormat:@"(unknown: %i)", v41];
        break;
    }

    v47 = v45;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.appendingPathComponent(_:isDirectory:)();

    UUID.init()();
    UUID.uuidString.getter();
    (*(v92 + 8))(v15, v93);
    sub_100005FBC();
    URL.appendingPathComponent(_:)();

    v48 = v90;
    URL.standardizedFileURL.getter();
    v49 = *(v98 + 8);
    v49(v1, v22);
    URL.path.getter();
    v50 = String._bridgeToObjectiveC()();

    sub_100046184(qword_100217FB0, &unk_10019C2F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100197F20;
    *(inited + 64) = &type metadata for Int;
    *(inited + 32) = NSFilePosixPermissions;
    *(inited + 40) = 384;
    type metadata accessor for FileAttributeKey(0);
    sub_1000F09E8(&qword_1002147B0, type metadata accessor for FileAttributeKey);
    v52 = NSFilePosixPermissions;
    v53 = Dictionary.init(dictionaryLiteral:)();
    v54 = sub_1000F0690(v50, v94, v95, v53, v99);

    if (v54)
    {
      if (v42)
      {

        v55 = Data.count.getter();
        v56 = sub_100015B74();
        (v49)(v56);
        v57 = sub_10000CCE4();
        (v49)(v57);
        v49(v96, v22);
        sub_10002F18C(v55);

        goto LABEL_41;
      }

      v71 = sub_100015B74();
      (v49)(v71);
      v72 = sub_10000CCE4();
      (v49)(v72);
      v73 = v96;
LABEL_66:
      v49(v73, v22);
      goto LABEL_67;
    }

    if (qword_1002141B8 != -1)
    {
      sub_100004270();
    }

    v58 = type metadata accessor for Logger();
    sub_10000964C(v58, qword_100232D18);
    v59 = v91;
    (*(v98 + 16))(v91, v48, v22);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    v62 = sub_100007718(v61);
    v63 = v96;
    if (v62)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v100[0] = v65;
      *v64 = 136315394;
      LODWORD(v99) = v61;
      v98 = v65;
      if (v89 > 0x13)
      {
        v66 = [NSString stringWithFormat:@"(unknown: %i)", v89];
      }

      else
      {
        switch(v88)
        {
          case 1:
            v66 = @"SafariAutoFill";
            break;
          case 2:
            v66 = @"Crowdsourcing";
            break;
          case 3:
            v66 = @"SpotlightResultFeatures";
            break;
          case 4:
            v66 = @"SafariAutoPlay";
            break;
          case 5:
            v66 = @"Trystero";
            break;
          case 6:
            v66 = @"EngagedCompletionFeatures";
            break;
          case 7:
            v66 = @"ProactiveEventTracker";
            break;
          case 8:
            v66 = @"PhiDES";
            break;
          case 9:
            v66 = @"DuetExpert";
            break;
          case 10:
            v66 = @"UserReport";
            break;
          case 11:
            v66 = @"Usage";
            break;
          case 12:
            v66 = @"FeedbackV2";
            break;
          case 13:
            v66 = @"FeedbackV2PB";
            break;
          case 14:
            v66 = @"ProactiveEventTrackerAggregated";
            break;
          case 15:
            v66 = @"Handwashing";
            break;
          case 16:
            v66 = @"Experiments";
            break;
          case 17:
            v66 = @"FeatureQuality";
            break;
          case 18:
            v66 = @"OnDeviceAnalytics";
            break;
          case 19:
            v66 = @"ModelFeedback";
            break;
          default:
            v66 = @"unknown";
            break;
        }

        v74 = v66;
      }

      v75 = v66;
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v79 = sub_100009684(v76, v78, v100);

      *(v64 + 4) = v79;
      *(v64 + 12) = 2080;
      v80 = v91;
      URL.lastPathComponent.getter();
      v49(v80, v22);
      v81 = sub_100005FBC();
      v84 = sub_100009684(v81, v82, v83);

      *(v64 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v60, v99, "error persisting custom feedback at %s/%s", v64, 0x16u);
      swift_arrayDestroy();
      sub_1000036D4();
      sub_1000036D4();

      v63 = v96;
      if (!v42)
      {
        goto LABEL_65;
      }
    }

    else
    {

      v49(v59, v22);
      if (!v42)
      {
LABEL_65:
        v85 = sub_100015B74();
        (v49)(v85);
        v86 = sub_10000CCE4();
        (v49)(v86);
        v73 = v63;
        goto LABEL_66;
      }
    }

    sub_100049574();
    v67 = swift_allocError();
    *v68 = 3;

    sub_1000EC58C(v67);

    v69 = sub_100015B74();
    (v49)(v69);
    v70 = sub_10000CCE4();
    (v49)(v70);
    v49(v63, v22);

    goto LABEL_41;
  }

  sub_10000F94C(v21, &qword_100218230, &unk_100199A00);
  if (v42)
  {
    sub_100049574();
    v43 = swift_allocError();
    *v44 = 8;

    sub_1000EC58C(v43);

LABEL_41:
    sub_1000EC5D0();
  }

LABEL_67:
  sub_100005460();
}

uint64_t sub_1000E96C4(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (v3 != v2)
  {
    v4 = *(result + 16);
    v5 = v2 >= v4;
    v6 = v2 == v4;
    v7 = v2 == v4;
    if (v6)
    {
      return v7;
    }

    if (v5)
    {
      __break(1u);
      goto LABEL_13;
    }

    v8 = *(a2 + 32 + v2);
    v9 = *(result + 32 + v2++);
    if (v8 != v9)
    {
      return v7;
    }
  }

  v10 = *(result + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000E9734()
{

  do
  {
    while (1)
    {
      v0 = String.Iterator.next()();
      if (!v0.value._object)
      {

        object = String.Iterator.next()().value._object;

        if (object)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v1 = String.Iterator.next()();
      if (!v1.value._object)
      {

        return 1;
      }

      if (v0.value._countAndFlagsBits != v1.value._countAndFlagsBits || v0.value._object != v1.value._object)
      {
        break;
      }
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v3 & 1) != 0);

LABEL_15:

  return 0;
}

uint64_t sub_1000E987C()
{
  v0 = type metadata accessor for Logger();
  sub_100057FF8(v0, qword_100232D18);
  v1 = sub_1000041F8();
  sub_10000964C(v1, v2);
  return Logger.init(subsystem:category:)();
}

void NSFileManager.sessionFiles.getter()
{
  sub_100005478();
  v2 = v0;
  v3 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v3);
  v5 = *(v4 + 64);
  sub_100003760();
  __chkstk_darwin(v6);
  v8 = &v63 - v7;
  v9 = type metadata accessor for URL();
  v10 = sub_100003650(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100003838();
  v68 = v15;
  sub_100007F80();
  __chkstk_darwin(v16);
  sub_100005924();
  v65 = v17;
  sub_100007F80();
  v19 = __chkstk_darwin(v18);
  v21 = &v63 - v20;
  __chkstk_darwin(v19);
  sub_1000F0A70();
  __chkstk_darwin(v22);
  v24 = &v63 - v23;
  NSFileManager.parsecdSessionFBDirectoryURL.getter();
  if (sub_100008D0C(v8, 1, v9) == 1)
  {
    sub_10000F94C(v8, &qword_100218230, &unk_100199A00);
  }

  else
  {
    v69 = *(v12 + 32);
    v70 = v12 + 32;
    v69(v24, v8, v9);
    URL._bridgeToObjectiveC()(v25);
    v27 = v26;
    sub_100046184(&qword_100219BC0, &qword_10019EA80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100198F10;
    *(v28 + 32) = NSURLCreationDateKey;
    *(v28 + 40) = NSURLFileSizeKey;
    v74 = 0;
    v29 = NSURLCreationDateKey;
    v30 = NSURLFileSizeKey;
    v31 = sub_1000F076C(v27, v28, 0, &v74, v2);

    v32 = v74;
    if (v31)
    {
      v64 = v24;
      v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v32;

      v35 = 0;
      v71 = *(v33 + 16);
      v72 = v12 + 16;
      v73 = (v12 + 8);
      v66 = _swiftEmptyArrayStorage;
      while (v71 != v35)
      {
        if (v35 >= *(v33 + 16))
        {
          __break(1u);
        }

        v36 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v37 = *(v12 + 72);
        (*(v12 + 16))(v1, v33 + v36 + v37 * v35, v9);
        v38 = URL.lastPathComponent.getter();
        v40 = v39;
        v41 = type metadata accessor for SessionFilename();
        v42 = *(v41 + 48);
        v43 = *(v41 + 52);
        swift_allocObject();
        if (SessionFilename.init(fromString:)(v38, v40))
        {

          v69(v21, v1, v9);
          v44 = v66;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v44;
          v46 = v9;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v47 = v44[2];
            sub_1000ECA84();
            v44 = v74;
          }

          v48 = v44[2];
          v49 = (v48 + 1);
          if (v48 >= v44[3] >> 1)
          {
            v67 = (v48 + 1);
            sub_1000ECA84();
            v49 = v67;
            v44 = v74;
          }

          ++v35;
          v44[2] = v49;
          v66 = v44;
          v50 = v44 + v36 + v48 * v37;
          v9 = v46;
          v69(v50, v21, v46);
        }

        else
        {
          (*v73)(v1, v9);
          ++v35;
        }
      }

      v51 = v66[2];
      if (v51)
      {
        v74 = _swiftEmptyArrayStorage;
        v52 = v66;
        sub_1000ECA84();
        v53 = v74;
        v54 = *(v12 + 80);
        sub_10001AC4C();
        v71 = v55;
        v56 = v52 + v55;
        v57 = *(v12 + 72);
        v67 = *(v12 + 16);
        v58 = v65;
        do
        {
          v59 = v68;
          v67(v68, v56, v9);
          URL.standardizedFileURL.getter();
          v60 = *v73;
          (*v73)(v59, v9);
          v74 = v53;
          v61 = v53[2];
          if (v61 >= v53[3] >> 1)
          {
            sub_1000ECA84();
            v53 = v74;
          }

          v53[2] = v61 + 1;
          v69(v53 + v71 + v61 * v57, v58, v9);
          v56 += v57;
          --v51;
        }

        while (v51);
        v60(v64, v9);
      }

      else
      {

        (*v73)(v64, v9);
      }
    }

    else
    {
      v62 = v74;
      sub_1000058BC();
      _convertNSErrorToError(_:)();

      swift_willThrow();

      (*(v12 + 8))(v24, v9);
    }
  }

  sub_100005460();
}

Swift::Void __swiftcall NSFileManager.parsec_cleanup()()
{
  v2 = v0;
  v3 = sub_100046184(&qword_100217050, &qword_100199180);
  sub_100005490(v3);
  v5 = *(v4 + 64);
  sub_100003760();
  __chkstk_darwin(v6);
  v8 = &v177 - v7;
  v193 = type metadata accessor for Date();
  v9 = sub_100003650(v193);
  v205 = v10;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v9);
  v15 = &v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  sub_100009934();
  sub_100007C68(v16);
  v17 = sub_100046184(&qword_100219BC8, &unk_10019FCF0);
  sub_100005490(v17);
  v19 = *(v18 + 64);
  sub_100003760();
  __chkstk_darwin(v20);
  sub_100007C68(&v177 - v21);
  v198 = type metadata accessor for URLResourceValues();
  v22 = sub_100003650(v198);
  v204 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_100003664();
  sub_100007C68(v27 - v26);
  v28 = sub_100046184(&qword_100218230, &unk_100199A00);
  v29 = sub_100005490(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v32);
  v34 = &v177 - v33;
  v213 = type metadata accessor for URL();
  v35 = sub_100003650(v213);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v40);
  sub_100005924();
  sub_100004144();
  v42 = __chkstk_darwin(v41);
  v44 = &v177 - v43;
  __chkstk_darwin(v42);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v45);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v46);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v47);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v48);
  sub_10002DF38();
  __chkstk_darwin(v49);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v50);
  sub_100009934();
  sub_100007C68(v51);
  if (qword_1002141B8 != -1)
  {
LABEL_69:
    sub_100004270();
  }

  v52 = type metadata accessor for Logger();
  v209 = sub_10000964C(v52, qword_100232D18);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Cleaning up", v55, 2u);
    sub_1000036D4();
  }

  NSFileManager.parsecdSessionFBDirectoryURL.getter();
  v56 = v213;
  if (sub_100008D0C(v34, 1, v213) == 1)
  {
    sub_10000F94C(v34, &qword_100218230, &unk_100199A00);
  }

  else
  {
    v203 = v44;
    v57 = *(v37 + 32);
    v44 = v208;
    v210 = v37 + 32;
    v202 = v57;
    (v57)(v208, v34, v56);
    URL._bridgeToObjectiveC()(v58);
    v60 = v59;
    v189 = sub_100046184(&qword_100219BC0, &qword_10019EA80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_100198F10;
    *(v61 + 32) = NSURLCreationDateKey;
    *(v61 + 40) = NSURLFileSizeKey;
    v216 = 0;
    v188 = NSURLCreationDateKey;
    v62 = NSURLFileSizeKey;
    v63 = sub_1000041F8();
    v66 = sub_1000F076C(v63, v64, 0, v65, v2);

    v67 = v216;
    if (v66)
    {
      v186 = v8;
      sub_100005FBC();
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      URL.appendingPathComponent(_:isDirectory:)();
      URL._bridgeToObjectiveC()(v69);
      v71 = v70;
      v216 = 0;
      v72 = [v2 removeItemAtURL:v70 error:&v216];

      v185 = v15;
      v181 = v2;
      v73 = v216;
      if (!v72)
      {
        sub_10000835C();
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v195 = 0;
      v34 = 0;
      v15 = *(v8 + 16);
      v214 = (v37 + 8);
      v196 = _swiftEmptyArrayStorage;
      sub_100005624();
      v215 = v37 + 16;
      while (v15 != v34)
      {
        if (v34 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_69;
        }

        v2 = ((*(v37 + 80) + 32) & ~*(v37 + 80));
        v44 = *(v37 + 72);
        (*(v37 + 16))(v1, &v2[v8 + v44 * v34], v72);
        v75 = v72;
        URL.lastPathComponent.getter();
        v76 = sub_1000E9734();

        if (v76)
        {
          sub_1000F0A5C();
          v77();
          v78 = v196;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v78;
          v216 = v78;
          if (isUniquelyReferenced_nonNull_native)
          {
            v72 = v75;
          }

          else
          {
            v81 = v78[2];
            v72 = &v216;
            sub_1000ECA84();
            sub_100005624();
            v80 = v216;
          }

          v82 = v80[2];
          v83 = v82 + 1;
          if (v82 >= v80[3] >> 1)
          {
            v72 = &v216;
            *&v201 = v82 + 1;
            sub_1000ECA84();
            sub_100005624();
            v80 = v216;
          }

          ++v34;
          v80[2] = v83;
          v196 = v80;
          sub_1000F0A5C();
          v84();
        }

        else
        {
          (*v214)(v1, v75);
          ++v34;
          v72 = v75;
        }
      }

      v85 = v196[2];
      v86 = v214;
      if (v85)
      {
        v87 = *(v37 + 80);
        sub_10001AC4C();
        v90 = (v88 + v89);
        v184 = (v204 + 32);
        v210 = *(v37 + 72);
        v180 = (v205 + 32);
        v183 = (v205 + 8);
        v91 = *(v37 + 16);
        v182 = v204 + 8;
        v205 = "t.telemetry:string2,public}s";
        *&v92 = 136315138;
        v201 = v92;
        v204 = v86 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v187 = xmmword_100197F20;
        sub_10000AEE8();
        v93 = v211;
        v212 = v91;
        do
        {
          v91(v93, v90, v72);
          v94 = v72;
          URL.lastPathComponent.getter();
          v95 = type metadata accessor for SessionFilename();
          v96 = *(v95 + 48);
          v97 = *(v95 + 52);
          swift_allocObject();
          v98 = sub_1000041F8();
          v72 = v99;
          v101 = SessionFilename.init(fromString:)(v98, v100);
          if (v101)
          {
            v102 = v101;
            v103 = OBJC_IVAR____TtC7parsecd15SessionFilename_uploadPending;
            swift_beginAccess();
            if (*(v102 + v103))
            {
              v104 = *v86;
              sub_100005624();
LABEL_27:
              v104();
            }

            else
            {
              v112 = OBJC_IVAR____TtC7parsecd15SessionFilename_state;
              swift_beginAccess();
              v93 = v206;
              v72 = v213;
              v113 = v203;
              switch(*(v102 + v112))
              {
                case 1:
                  v124 = v34;
                  sub_100006738();
                  v125();
                  v93 = sub_10001AE08();
                  v34 = static os_log_type_t.debug.getter();
                  if (sub_100007718(v34))
                  {
                    sub_100007800();
                    v202 = sub_10000EC04();
                    sub_1000084F4(v202);
                    v126 = v113;
                    URL.lastPathComponent.getter();
                    sub_1000059F4();
                    v104 = *v127;
                    v128 = v213;
                    sub_100009978();
                    v104();
                    sub_10001BE78();
                    sub_1000F0A84();
                    *(v86 + 4) = v126;
                    sub_1000F0A30(&_mh_execute_header, v93, v34, "Closed session file is ready for processing: %s.");
                    sub_10000FF1C(v218);
                    sub_10000AEE8();
                    sub_1000036D4();
                    sub_10000F58C();

                    v129 = sub_100006B30();
                    (v104)(v129, v128);
                    v72 = v128;
                    break;
                  }

                  v104 = *v86;
                  sub_100008074();
                  v104();
                  v130 = sub_100006B30();
                  (v104)(v130, v72);
                  v91 = v212;
                  v34 = v124;
                  goto LABEL_36;
                case 2:
                  v104 = *v86;
                  sub_100006B30();
                  goto LABEL_27;
                case 3:
                  v119 = v200;
                  v120 = v211;
                  sub_100006738();
                  v121();
                  v93 = sub_10001AE08();
                  v122 = static os_log_type_t.debug.getter();
                  if (sub_100007718(v122))
                  {
                    sub_100007800();
                    v34 = sub_10000EC04();
                    sub_1000084F4(v34);
                    v72 = v119;
                    URL.lastPathComponent.getter();
                    sub_1000059F4();
                    v104 = *v123;
                    sub_100009978();
                    v104();
                    sub_10001BE78();
                    sub_1000F0A84();
                    *(v86 + 4) = v72;
                    sub_1000F0A30(&_mh_execute_header, v93, v122, "Ignoring file in uploaded state, but you might want to delete it: %s.");
                    sub_100007378(v34);
                    sub_10000AEE8();
                    sub_1000036D4();
                    sub_10000F58C();

                    sub_100006B30();
                    sub_100008074();
                    v104();
                  }

                  else
                  {

                    v104 = *v86;
                    sub_100008074();
                    v104();
                    (v104)(v120, v72);
                    v93 = v120;
                  }

                  break;
                default:
                  inited = swift_initStackObject();
                  *(inited + 16) = v187;
                  v115 = v188;
                  *(inited + 32) = v188;
                  v116 = v115;
                  sub_10002DD0C(inited);
                  v34 = v195;
                  URL.resourceValues(forKeys:)();
                  if (v34)
                  {

                    sub_1000051C0(v93, 1, 1, v198);
                    sub_10000F94C(v93, &qword_100219BC8, &unk_10019FCF0);
                    v195 = 0;
                    sub_1000078DC();
                    goto LABEL_55;
                  }

                  v195 = 0;

                  v131 = v198;
                  sub_1000051C0(v93, 0, 1, v198);
                  (*v184)(v194, v93, v131);
                  v132 = v186;
                  URLResourceValues.creationDate.getter();
                  v34 = v193;
                  if (sub_100008D0C(v132, 1, v193) == 1)
                  {
                    sub_100006FA4();
                    v133 = sub_100005FBC();
                    v134(v133);
                    sub_10000F94C(v132, &qword_100217050, &qword_100199180);
                    sub_1000078DC();
                    goto LABEL_54;
                  }

                  (*v180)(v192, v132, v34);
                  v135 = v185;
                  Date.init()();
                  Date.timeIntervalSince(_:)();
                  v137 = v136;
                  v138 = v136;
                  v139 = *v183;
                  (*v183)(v135, v34);
                  if ((*&v138 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                  {
                    __break(1u);
LABEL_71:
                    __break(1u);
LABEL_72:
                    __break(1u);
                  }

                  v140 = v198;
                  v141 = v194;
                  v142 = v191;
                  if (v137 <= -9.22337204e18)
                  {
                    goto LABEL_71;
                  }

                  v113 = v213;
                  v34 = v197;
                  v93 = v211;
                  if (v137 >= 9.22337204e18)
                  {
                    goto LABEL_72;
                  }

                  if (v137 < 1801)
                  {
                    v152 = sub_10000AB58();
                    v139(v152);
                    sub_100006FA4();
                    v153(v141, v140);
LABEL_54:
                    v86 = v214;
LABEL_55:
                    sub_100006738();
                    v154();
                    v155 = v113;
                    v156 = v93;
                    v93 = sub_10001AE08();
                    v157 = static os_log_type_t.debug.getter();
                    if (sub_100007718(v157))
                    {
                      sub_100007800();
                      v202 = sub_10000EC04();
                      sub_1000084F4(v202);
                      v34 = URL.lastPathComponent.getter();
                      v159 = v158;
                      v104 = *v214;
                      sub_100009978();
                      v104();
                      sub_100009684(v34, v159, &v217);
                      sub_1000058BC();

                      *(v86 + 4) = v34;
                      sub_1000F0A30(&_mh_execute_header, v93, v157, "Leaving open session file %s.");
                      sub_10000FF1C(v218);
                      sub_1000036D4();
                      sub_10000F58C();

                      v160 = sub_100006B30();
                      (v104)(v160, v155);
                    }

                    else
                    {

                      v104 = *v86;
                      (*v86)(v34, v155);
                      (v104)(v156, v155);
                      v93 = v156;
                    }

                    v72 = v155;
LABEL_59:
                    sub_10000AEE8();
                    break;
                  }

                  sub_100006738();
                  v143();
                  v144 = v113;
                  v93 = sub_10001AE08();
                  v145 = static os_log_type_t.debug.getter();
                  if (sub_100007718(v145))
                  {
                    v146 = sub_100007800();
                    v178 = v146;
                    v179 = swift_slowAlloc();
                    v217 = v179;
                    *v146 = v201;
                    v177 = URL.lastPathComponent.getter();
                    v148 = v147;
                    v149 = v214;
                    v202 = *v214;
                    (v202)(v142, v144);
                    v150 = sub_100009684(v177, v148, &v217);

                    v151 = v178;
                    *(v178 + 1) = v150;
                    v86 = v149;
                    _os_log_impl(&_mh_execute_header, v93, v145, "Moving possible orphaned open session file to closed: %s.", v151, 0xCu);
                    sub_10000FF1C(&v207);
                    sub_1000036D4();
                    sub_1000036D4();
                  }

                  else
                  {

                    sub_100009978();
                    v161 = v142;
                    v86 = v162;
                    v202 = *v162;
                    (v202)(v161, v113);
                  }

                  v163 = v190;
                  v72 = v181;
                  v34 = v195;
                  NSFileManager.parsec_renameForStateChange(sessionFile:toState:)(v102, 1u, v190);
                  if (!v34)
                  {
                    v195 = 0;

                    sub_10000F94C(v163, &qword_100218230, &unk_100199A00);
                    v169 = sub_10000AB58();
                    v139(v169);
                    sub_100006FA4();
                    v170 = sub_1000F0A48();
                    v171(v170);
                    sub_100006B30();
                    sub_100008074();
                    v104 = v202;
                    v202();
                    goto LABEL_59;
                  }

                  swift_errorRetain();
                  v93 = sub_10001AE08();
                  v164 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v93, v164))
                  {
                    sub_100007800();
                    v165 = sub_10000EC04();
                    LODWORD(v195) = v164;
                    v166 = v165;
                    sub_1000084F4(v165);
                    swift_getErrorValue();
                    v167 = Error.localizedDescription.getter();
                    v72 = v168;
                    sub_100009684(v167, v168, &v217);
                    sub_1000058BC();

                    *(v86 + 4) = v34;
                    sub_1000F0A30(&_mh_execute_header, v93, v195, "error renaming session file %s");
                    sub_100007378(v166);
                    sub_1000036D4();
                    sub_10000F58C();
                  }

                  sub_10000AEE8();
                  v104 = v202;
                  v172 = sub_100006B30();
                  NSFileManager.parsec_removeItemOrLogError(at:message:)(v172, 0xD00000000000001BLL, v173);

                  v174 = sub_10000AB58();
                  v139(v174);
                  sub_100006FA4();
                  v175 = sub_1000F0A48();
                  v176(v175);
                  sub_100008074();
                  v104();
                  v195 = 0;
                  break;
              }
            }
          }

          else
          {
            v105 = v91;
            v106 = v207;
            v105(v207, v93, v94);
            v93 = sub_10001AE08();
            v107 = static os_log_type_t.debug.getter();
            if (sub_100007718(v107))
            {
              sub_100007800();
              v34 = sub_10000EC04();
              sub_1000084F4(v34);
              URL.lastPathComponent.getter();
              sub_1000059F4();
              v202 = v90;
              v108 = v85;
              v110 = *v109;
              sub_100009978();
              v110();
              sub_10001BE78();
              sub_1000F0A84();
              *(v86 + 4) = v106;
              v111 = v107;
              v104 = v110;
              v85 = v108;
              v90 = v202;
              sub_1000F0A30(&_mh_execute_header, v93, v111, "Unable to parse filename %s into a SessionFilename object.");
              sub_100007378(v34);
              sub_10000AEE8();
              sub_1000036D4();
              sub_10000F58C();
            }

            else
            {

              v104 = *v86;
              (*v86)(v106, v94);
            }

            v72 = v94;
            v117 = sub_100006B30();
            NSFileManager.parsec_removeItemOrLogError(at:message:)(v117, 0xD00000000000001BLL, v118);
            (v104)(v93, v94);
          }

          v91 = v212;
LABEL_36:
          v90 = (v90 + v210);
          --v85;
        }

        while (v85);
      }

      else
      {

        v104 = *v86;
        sub_10000AEE8();
      }

      (v104)(v199, v72);
      (v104)(v34, v72);
    }

    else
    {
      v74 = v216;
      sub_10000835C();
      _convertNSErrorToError(_:)();

      swift_willThrow();

      (*(v37 + 8))(v44, v56);
    }
  }
}

void NSFileManager.parsec_removeItemOrLogError(at:message:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for URL();
  v6 = sub_100003650(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100003664();
  v13 = v12 - v11;
  URL.standardizedFileURL.getter();
  v14 = URL.path.getter();
  v16 = v15;
  (*(v8 + 8))(v13, v5);
  v17 = String.utf8CString.getter();
  LODWORD(v5) = unlink((v17 + 32));

  if (v5 == noErr.getter())
  {
  }

  else
  {
    if (qword_1002141B8 != -1)
    {
      sub_100004270();
    }

    v18 = type metadata accessor for Logger();
    sub_10000964C(v18, qword_100232D18);
    sub_10000835C();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v21 = 136315650;
      *(v21 + 4) = sub_100009684(a2, a3, &v23);
      *(v21 + 12) = 2080;
      v22 = sub_100009684(v14, v16, &v23);

      *(v21 + 14) = v22;
      *(v21 + 22) = 1024;
      *(v21 + 24) = errno.getter();
      _os_log_impl(&_mh_execute_header, v19, v20, "%s: at path %s errno: %d)", v21, 0x1Cu);
      swift_arrayDestroy();
      sub_1000036D4();
      sub_1000036D4();
    }

    else
    {
    }
  }
}

uint64_t NSFileManager.parsec_renameForStateChange(sessionFile:toState:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v8 = sub_100046184(&qword_100218230, &unk_100199A00);
  v9 = sub_100005490(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100003838();
  v67 = v12;
  sub_100007F80();
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  v16 = type metadata accessor for URL();
  v17 = sub_100003650(v16);
  v69 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_100003838();
  v65 = v21;
  sub_100007F80();
  __chkstk_darwin(v22);
  sub_100005924();
  v64 = v23;
  sub_100007F80();
  __chkstk_darwin(v24);
  sub_100005924();
  v66 = v25;
  sub_100007F80();
  v27 = __chkstk_darwin(v26);
  v29 = &v60 - v28;
  __chkstk_darwin(v27);
  sub_1000F0A70();
  __chkstk_darwin(v30);
  v32 = &v60 - v31;
  v68 = v3;
  NSFileManager.parsecdSessionFBDirectoryURL.getter();
  if (sub_100008D0C(v15, 1, v16) == 1)
  {
    sub_10000F94C(v15, &qword_100218230, &unk_100199A00);
    v33 = 1;
    return sub_1000051C0(a3, v33, 1, v16);
  }

  v61 = a3;
  v62 = v4;
  SessionFilename.filenameString.getter();
  URL.appendingPathComponent(_:)();

  v63 = a2;
  v34 = v69;
  v35 = *(v69 + 8);
  v35(v15, v16);
  URL.standardizedFileURL.getter();
  v60 = v35;
  v35(v29, v16);
  v36 = v63;
  v37 = *(v34 + 32);
  v37(v32, v5, v16);
  v38 = OBJC_IVAR____TtC7parsecd15SessionFilename_state;
  v39 = v70;
  swift_beginAccess();
  if (sub_1000BCD94(*(v39 + v38), v36))
  {
    a3 = v61;
    v37(v61, v32, v16);
    v33 = 0;
    return sub_1000051C0(a3, v33, 1, v16);
  }

  v69 = v34 + 32;
  *(v70 + v38) = v36;
  v40 = v16;
  v42 = v67;
  v41 = v68;
  NSFileManager.parsecdSessionFBDirectoryURL.getter();
  if (sub_100008D0C(v42, 1, v40) == 1)
  {
    sub_10000F94C(v42, &qword_100218230, &unk_100199A00);
    v60(v32, v40);
    v33 = 1;
    a3 = v61;
LABEL_9:
    v16 = v40;
    return sub_1000051C0(a3, v33, 1, v16);
  }

  SessionFilename.filenameString.getter();
  v43 = v65;
  URL.appendingPathComponent(_:)();

  v44 = v42;
  v45 = v60;
  v60(v44, v40);
  URL.standardizedFileURL.getter();
  v46 = v43;
  v47 = v45;
  v45(v46, v40);
  v48 = v66;
  v49 = sub_100015B74();
  (v37)(v49);
  URL._bridgeToObjectiveC()(v50);
  v52 = v51;
  URL._bridgeToObjectiveC()(v53);
  v55 = v54;
  v71 = 0;
  v56 = [v41 moveItemAtURL:v52 toURL:v54 error:&v71];

  if (v56)
  {
    v57 = v71;
    v47(v32, v40);
    a3 = v61;
    v37(v61, v48, v40);
    v33 = 0;
    goto LABEL_9;
  }

  v59 = v71;
  sub_10000835C();
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v47(v48, v40);
  return (v47)(v32, v40);
}

void *NSFileManager.parsec_getPrunedSessionFiles(maximum:)(uint64_t a1)
{
  NSFileManager.sessionFiles.getter();
  v4 = *(v3 + 16);
  if (v4 <= a1)
  {

    return _swiftEmptyArrayStorage;
  }

  v5 = v4 - a1 / 2;
  if (__OFSUB__(v4, a1 / 2))
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v3;

  a1 = 0;
  sub_1000ECF20(&v14);

  if (v5 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000F086C(0, v5, v14);
  v5 = v6;
  a1 = v7;
  v1 = v8;

  if (v1)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      swift_unknownObjectRelease();
      v11 = _swiftEmptyArrayStorage;
    }

    v12 = v11[2];

    if (!__OFSUB__(v1 >> 1, a1))
    {
      if (v12 == (v1 >> 1) - a1)
      {
        swift_dynamicCastClass();
        sub_10000835C();
        swift_unknownObjectRelease_n();
        if (v5)
        {
          return v5;
        }

        swift_unknownObjectRelease();
        return _swiftEmptyArrayStorage;
      }

LABEL_18:
      swift_unknownObjectRelease_n();
      goto LABEL_5;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  v9 = sub_1000041F8();
  sub_1000ED224(v9, v10, a1, v1);
  sub_10000835C();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1000EBC78(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v2 = sub_100046184(&qword_100217050, &qword_100199180);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v65 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v72 = &v56 - v6;
  v71 = type metadata accessor for Date();
  v69 = *(v71 - 8);
  v7 = *(v69 + 64);
  v8 = __chkstk_darwin(v71);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v68 = &v56 - v10;
  v11 = sub_100046184(&qword_100219BC8, &unk_10019FCF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v56 - v16;
  v18 = type metadata accessor for URLResourceValues();
  v70 = *(v18 - 8);
  v19 = v70[8];
  v20 = __chkstk_darwin(v18);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v56 - v23;
  v25 = sub_100046184(&qword_100219BC0, &qword_10019EA80);
  inited = swift_initStackObject();
  v66 = xmmword_100197F20;
  *(inited + 16) = xmmword_100197F20;
  *(inited + 32) = NSURLCreationDateKey;
  v27 = NSURLCreationDateKey;
  sub_10002DD0C(inited);
  v28 = v73;
  URL.resourceValues(forKeys:)();
  if (v28)
  {

    v29 = 1;
    sub_1000051C0(v17, 1, 1, v18);
    v30 = v17;
LABEL_3:
    sub_10000F94C(v30, &qword_100219BC8, &unk_10019FCF0);
    return v29 & 1;
  }

  v73 = 0;
  v61 = v25;
  v62 = v27;
  v60 = v22;
  v63 = v15;

  sub_1000051C0(v17, 0, 1, v18);
  v31 = v70;
  v59 = v70[4];
  v59(v24, v17, v18);
  v32 = v72;
  URLResourceValues.creationDate.getter();
  v33 = v71;
  v34 = sub_100008D0C(v32, 1, v71);
  v35 = v31;
  if (v34 == 1)
  {
    (v31[1])(v24, v18);
    sub_10000F94C(v72, &qword_100217050, &qword_100199180);
    v29 = 1;
    return v29 & 1;
  }

  v57 = v18;
  v58 = v24;
  v37 = v68;
  v36 = v69;
  v38 = *(v69 + 32);
  v38(v68, v72, v33);
  v39 = swift_initStackObject();
  *(v39 + 16) = v66;
  v40 = v62;
  *(v39 + 32) = v62;
  v41 = v40;
  sub_10002DD0C(v39);
  v42 = v63;
  v43 = v73;
  URL.resourceValues(forKeys:)();
  if (v43)
  {

    (*(v36 + 8))(v37, v71);
    v44 = v57;
    (v35[1])(v58, v57);
    v29 = 1;
    sub_1000051C0(v42, 1, 1, v44);
    v30 = v42;
    goto LABEL_3;
  }

  v73 = v38;

  v45 = v57;
  sub_1000051C0(v42, 0, 1, v57);
  v46 = v60;
  v59(v60, v42, v45);
  v47 = v65;
  URLResourceValues.creationDate.getter();
  v48 = v71;
  if (sub_100008D0C(v47, 1, v71) == 1)
  {
    v49 = v70[1];
    v49(v46, v45);
    (*(v69 + 8))(v68, v48);
    v49(v58, v45);
    sub_10000F94C(v47, &qword_100217050, &qword_100199180);
    v29 = 1;
  }

  else
  {
    v50 = v64;
    v73(v64, v47, v48);
    v51 = v68;
    v29 = static Date.< infix(_:_:)();
    v52 = v48;
    v53 = *(v69 + 8);
    v53(v50, v52);
    v54 = v70[1];
    v54(v60, v45);
    v53(v51, v52);
    v54(v58, v45);
  }

  return v29 & 1;
}

Swift::Void __swiftcall NSFileManager.parsec_pruneSessionFiles(maximum:)(Swift::Int maximum)
{
  sub_100005478();
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = sub_100003650(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100003664();
  v11 = v10 - v9;
  v12 = NSFileManager.parsec_getPrunedSessionFiles(maximum:)(v2);
  v13 = v12[2];
  if (v13)
  {
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 64);
    sub_10001AC4C();
    v19 = v12 + v18;
    v20 = *(v14 + 56);
    do
    {
      v15(v11, v19, v3);
      NSFileManager.parsec_removeItemOrLogError(at:message:)(v11, 0xD00000000000001BLL, 0x80000001001B0BB0);
      (*(v14 - 8))(v11, v3);
      v19 += v20;
      --v13;
    }

    while (v13);

    sub_100005460();
  }

  else
  {
    sub_100005460();
  }
}

uint64_t NSFileManager.databaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v2);
  v4 = *(v3 + 64);
  sub_100003760();
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  NSFileManager.parsecdAssetsDirectoryURL.getter();
  v8 = type metadata accessor for URL();
  if (sub_100008D0C(v7, 1, v8) == 1)
  {
    sub_10000F94C(v7, &qword_100218230, &unk_100199A00);
    v9 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:isDirectory:)();
    (*(*(v8 - 8) + 8))(v7, v8);
    v9 = 0;
  }

  return sub_1000051C0(a1, v9, 1, v8);
}

uint64_t sub_1000EC58C(uint64_t a1)
{
  v2 = *(v1 + qword_10021A9E8);
  *(v1 + qword_10021A9E8) = a1;
  swift_errorRetain();
}

void sub_1000EC5D0()
{
  if ((v0[81] & 1) == 0)
  {
    v1 = &v0[*(*v0 + 472)];
    v2 = sub_1001032C8(*v1, *(v1 + 2));
    sub_10000E2D4(v2);

    sub_100046184(&unk_100217040, &qword_1001989F0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100197F20;
    v4 = *v1;
    *(v3 + 56) = &type metadata for Int;
    *(v3 + 64) = &protocol witness table for Int;
    *(v3 + 32) = v4;
    sub_10000E384("bytesWritten=%{signpost.description:attribute,public}llu", 56, 2, v3);

    v5 = *(*&v0[*(*v0 + 152)] + 16);

    os_unfair_lock_lock(v5);
    if ((v0[81] & 1) == 0)
    {
      sub_10002F5E4();
    }

    os_unfair_lock_unlock(v5);
  }
}

void *sub_1000EC700(uint64_t a1, uint64_t a2)
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

  sub_100046184(&qword_10021AC30, &qword_10019FB60);
  v4 = sub_10000590C();
  j__malloc_size(v4);
  sub_100008084();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_1000EC7B8(uint64_t a1, uint64_t a2)
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

  sub_100046184(&qword_1002153A8, &qword_1001996B0);
  v4 = sub_10000590C();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 32);
  return v4;
}

void *sub_1000EC87C(uint64_t a1, uint64_t a2)
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

  sub_100046184(&qword_100219BE0, &qword_10019EA90);
  v4 = *(sub_100046184(&qword_100219BD8, &unk_1001A0700) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
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

void sub_1000EC984()
{
  v1 = *v0;
  sub_1000254E8();
  *v0 = v2;
}

void sub_1000EC9A4()
{
  v1 = *v0;
  sub_100115D54();
  *v0 = v2;
}

void sub_1000EC9C4()
{
  v1 = *v0;
  sub_100115E64();
  *v0 = v2;
}

void sub_1000EC9E4()
{
  v1 = *v0;
  sub_100115F50();
  *v0 = v2;
}

void sub_1000ECA64()
{
  v1 = *v0;
  sub_10011628C();
  *v0 = v2;
}

void sub_1000ECA84()
{
  v1 = *v0;
  sub_100116524();
  *v0 = v2;
}

void sub_1000ECAA4()
{
  sub_100005478();
  v1 = v0;
  v2 = type metadata accessor for SessionType();
  v3 = sub_100003650(v2);
  v39 = v4;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v3);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  sub_100009934();
  v43 = v10;
  if (*(v1 + 16) && (sub_100046184(&qword_100219BF8, &qword_10019EAA0), v11 = sub_10001BD20(), v12 = v11, (v38 = *(v1 + 16)) != 0))
  {
    v13 = 0;
    v42 = v11 + 56;
    v14 = *(v39 + 80);
    v36 = v1;
    v37 = v1 + ((v14 + 32) & ~v14);
    v41 = v39 + 16;
    v15 = (v39 + 8);
    v35 = (v39 + 32);
    while (v13 < *(v1 + 16))
    {
      v16 = *(v39 + 72);
      v40 = v13 + 1;
      v17 = *(v39 + 16);
      v17(v43, v37 + v16 * v13, v2);
      v18 = *(v12 + 40);
      sub_100007CF0();
      sub_1000F09E8(&qword_100217588, v19);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = ~(-1 << *(v12 + 32));
      while (1)
      {
        v22 = v20 & v21;
        v23 = (v20 & v21) >> 6;
        v24 = *(v42 + 8 * v23);
        v25 = 1 << (v20 & v21);
        if ((v25 & v24) == 0)
        {
          break;
        }

        v26 = v12;
        v17(v9, *(v12 + 48) + v22 * v16, v2);
        sub_100007CF0();
        sub_1000F09E8(&qword_100218B58, v27);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = *v15;
        (*v15)(v9, v2);
        if (v28)
        {
          v29(v43, v2);
          v12 = v26;
          goto LABEL_12;
        }

        v20 = v22 + 1;
        v12 = v26;
      }

      v30 = v43;
      *(v42 + 8 * v23) = v25 | v24;
      (*v35)(*(v12 + 48) + v22 * v16, v30, v2);
      v31 = *(v12 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_15;
      }

      *(v12 + 16) = v33;
LABEL_12:
      v13 = v40;
      v1 = v36;
      if (v40 == v38)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    sub_100005460();
  }
}

uint64_t sub_1000ECD9C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = _swiftEmptySetSingleton;
    goto LABEL_19;
  }

  sub_100046184(&qword_100217B38, &qword_10019BE20);
  result = sub_10001BD20();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = v3[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (v3[6] + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (v3[6] + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v3[2] = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int sub_1000ECF20(uint64_t *a1)
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100117B20(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1000ED328(v7);
  *a1 = v3;
  return result;
}

void sub_1000ECFC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_100046184(&qword_100214808, &unk_1001A2E40);
      v7 = sub_10000590C();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_10008C5AC();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1000ED09C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_100046184(&qword_10021AC30, &qword_10019FB60);
      v7 = sub_10000590C();
      j__malloc_size(v7);
      sub_100008084();
      v7[2] = v5;
      v7[3] = v8;
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1000ED158(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = sub_1000058BC();
  v5 = sub_1000EC87C(v4, 0);
  v6 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  sub_100005490(v6);
  v8 = *(v7 + 80);
  sub_10001AC4C();
  sub_1000F040C(v11, v5 + v9, v3, v1);
  sub_10001BBFC();
  sub_100007A80();
  if (v2 != v3)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v5;
}

void sub_1000ED224(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (v5)
  {
    sub_10001A830(v5, 0, &qword_100219C10, &qword_10019EAB8, &type metadata accessor for URL);
    if (v4 != a3)
    {
      v7 = *(type metadata accessor for URL() - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = *(v7 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

Swift::Int sub_1000ED328(uint64_t *a1)
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for URL();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for URL() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1000EDE18(v8, v9, a1, v4);
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
    return sub_1000ED458(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000ED458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *&v108 = a1;
  v7 = sub_100046184(&qword_100217050, &qword_100199180);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v92 = &v78 - v12;
  v94 = type metadata accessor for Date();
  v13 = *(v94 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v94);
  v80 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v93 = &v78 - v17;
  v18 = sub_100046184(&qword_100219BC8, &unk_10019FCF0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v89 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v78 - v22;
  v24 = type metadata accessor for URLResourceValues();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v86 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v97 = &v78 - v29;
  v30 = type metadata accessor for URL();
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30);
  v101 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v111 = &v78 - v35;
  result = __chkstk_darwin(v34);
  v110 = &v78 - v38;
  v79 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v107 = v23;
  v85 = v11;
  v39 = *a4;
  v41 = *(v37 + 16);
  v40 = v37 + 16;
  v103 = v41;
  v104 = NSURLCreationDateKey;
  v42 = *(v40 + 56);
  v96 = (v25 + 32);
  v90 = (v13 + 32);
  v88 = (v13 + 8);
  v91 = (v25 + 8);
  v102 = (v40 - 8);
  v105 = v40;
  v99 = (v40 + 16);
  v43 = v39 + v42 * (a3 - 1);
  v98 = -v42;
  v44 = v108 - a3;
  v100 = v39;
  v78 = v42;
  v45 = v39 + v42 * a3;
  v108 = xmmword_100197F20;
  v109 = v24;
  v106 = v30;
  while (2)
  {
    v84 = a3;
    v81 = v45;
    v82 = v44;
    v83 = v43;
    do
    {
      v46 = v103;
      v103(v110, v45, v30);
      v46(v111, v43, v30);
      sub_100046184(&qword_100219BC0, &qword_10019EA80);
      inited = swift_initStackObject();
      *(inited + 16) = v108;
      v48 = v104;
      *(inited + 32) = v104;
      v49 = v48;
      sub_10002DD0C(inited);
      v50 = v107;
      v51 = v112;
      URL.resourceValues(forKeys:)();
      if (v51)
      {

        sub_1000051C0(v50, 1, 1, v109);
        v52 = v50;
LABEL_6:
        sub_10000F94C(v52, &qword_100219BC8, &unk_10019FCF0);
        v112 = 0;
LABEL_10:
        v60 = *v102;
        v30 = v106;
        (*v102)(v111, v106);
        result = (v60)(v110, v30);
        goto LABEL_11;
      }

      v112 = 0;

      v53 = v109;
      sub_1000051C0(v50, 0, 1, v109);
      v54 = v97;
      v95 = *v96;
      v95();
      v55 = v92;
      URLResourceValues.creationDate.getter();
      v56 = v55;
      v57 = v55;
      v58 = v94;
      if (sub_100008D0C(v57, 1, v94) == 1)
      {
        (*v91)(v54, v53);
        v59 = v56;
LABEL_9:
        sub_10000F94C(v59, &qword_100217050, &qword_100199180);
        goto LABEL_10;
      }

      v64 = *v90;
      (*v90)(v93, v56, v58);
      v65 = swift_initStackObject();
      *(v65 + 16) = v108;
      *(v65 + 32) = v49;
      v66 = v49;
      sub_10002DD0C(v65);
      v67 = v89;
      v68 = v112;
      URL.resourceValues(forKeys:)();
      if (v68)
      {

        (*v88)(v93, v58);
        v69 = v109;
        (*v91)(v54, v109);
        sub_1000051C0(v67, 1, 1, v69);
        v52 = v67;
        goto LABEL_6;
      }

      v87 = v64;
      v112 = 0;

      v70 = v109;
      sub_1000051C0(v67, 0, 1, v109);
      v71 = v86;
      (v95)(v86, v67, v70);
      v72 = v85;
      URLResourceValues.creationDate.getter();
      if (sub_100008D0C(v72, 1, v58) == 1)
      {
        v73 = *v91;
        (*v91)(v71, v70);
        (*v88)(v93, v58);
        v73(v97, v70);
        v59 = v72;
        goto LABEL_9;
      }

      v74 = v80;
      v87(v80, v72, v58);
      LODWORD(v95) = static Date.< infix(_:_:)();
      v75 = *v88;
      (*v88)(v74, v58);
      v76 = *v91;
      (*v91)(v71, v70);
      v75(v93, v94);
      v76(v97, v70);
      v77 = *v102;
      v30 = v106;
      (*v102)(v111, v106);
      result = (v77)(v110, v30);
      if ((v95 & 1) == 0)
      {
        break;
      }

LABEL_11:
      if (!v100)
      {
        __break(1u);
        return result;
      }

      v61 = *v99;
      v62 = v101;
      (*v99)(v101, v45, v30);
      swift_arrayInitWithTakeFrontToBack();
      result = (v61)(v43, v62, v30);
      v43 += v98;
      v45 += v98;
    }

    while (!__CFADD__(v44++, 1));
    a3 = v84 + 1;
    v43 = v83 + v78;
    v44 = v82 - 1;
    v45 = v81 + v78;
    if (v84 + 1 != v79)
    {
      continue;
    }

    return result;
  }
}

void sub_1000EDE18(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v242 = a4;
  v238 = a1;
  v7 = sub_100046184(&qword_100217050, &qword_100199180);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v250 = &v232 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v260 = &v232 - v12;
  v13 = __chkstk_darwin(v11);
  v237 = &v232 - v14;
  __chkstk_darwin(v13);
  v241 = &v232 - v15;
  v262 = type metadata accessor for Date();
  v16 = *(v262 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v262);
  v246 = &v232 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v232 - v21;
  v23 = __chkstk_darwin(v20);
  v233 = &v232 - v24;
  __chkstk_darwin(v23);
  v26 = &v232 - v25;
  v27 = sub_100046184(&qword_100219BC8, &unk_10019FCF0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = &v232 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v269 = &v232 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v232 - v35;
  __chkstk_darwin(v34);
  v38 = &v232 - v37;
  v275 = type metadata accessor for URLResourceValues();
  v39 = *(v275 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v275);
  v249 = &v232 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v264 = &v232 - v44;
  v45 = __chkstk_darwin(v43);
  v236 = &v232 - v46;
  __chkstk_darwin(v45);
  v248 = &v232 - v47;
  v276 = type metadata accessor for URL();
  v48 = *(*(v276 - 8) + 64);
  v49 = __chkstk_darwin(v276);
  v247 = &v232 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v268 = &v232 - v52;
  v53 = __chkstk_darwin(v51);
  v286 = &v232 - v54;
  v55 = __chkstk_darwin(v53);
  v279 = &v232 - v56;
  v57 = __chkstk_darwin(v55);
  v254 = &v232 - v58;
  v59 = __chkstk_darwin(v57);
  v253 = &v232 - v60;
  v61 = __chkstk_darwin(v59);
  v235 = &v232 - v62;
  __chkstk_darwin(v61);
  v234 = &v232 - v64;
  v252 = a3;
  v65 = a3[1];
  v251 = v63;
  if (v65 < 1)
  {
    v67 = _swiftEmptyArrayStorage;
LABEL_136:
    v288 = *v238;
    if (!v288)
    {
LABEL_180:
      __break(1u);
      return;
    }

    v16 = v67;
    v116 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v222 = v16;
LABEL_139:
      v223 = v222 + 16;
      v224 = *(v222 + 2);
      while (v224 >= 2)
      {
        if (!*v252)
        {
          goto LABEL_177;
        }

        v16 = v222;
        v225 = &v222[16 * v224];
        v226 = *v225;
        v227 = &v223[2 * v224];
        v228 = *(v227 + 1);
        sub_1000EF8DC(*v252 + *(v251 + 72) * *v225, *v252 + *(v251 + 72) * *v227, *v252 + *(v251 + 72) * v228, v288);
        if (v116)
        {
          break;
        }

        if (v228 < v226)
        {
          goto LABEL_165;
        }

        if (v224 - 2 >= *v223)
        {
          goto LABEL_166;
        }

        *v225 = v226;
        *(v225 + 1) = v228;
        v229 = *v223 - v224;
        if (*v223 < v224)
        {
          goto LABEL_167;
        }

        v224 = *v223 - 1;
        sub_100117CA4(v227 + 16, v229, v227);
        *v223 = v224;
        v222 = v16;
      }

LABEL_147:

      return;
    }

LABEL_174:
    v222 = sub_10011775C(v16);
    goto LABEL_139;
  }

  v66 = 0;
  v274 = v63 + 16;
  v273 = (v63 + 8);
  v272 = NSURLCreationDateKey;
  v263 = (v39 + 32);
  v258 = (v16 + 32);
  v257 = (v16 + 8);
  v261 = (v39 + 8);
  v271 = (v63 + 32);
  v67 = _swiftEmptyArrayStorage;
  v280 = xmmword_100197F20;
  v256 = v22;
  v243 = v26;
  v255 = v31;
  v239 = v36;
  v245 = v38;
  v68 = v279;
  while (1)
  {
    v240 = v67;
    v69 = v66;
    v70 = v66 + 1;
    v270 = v66;
    if (v66 + 1 >= v65)
    {
      v115 = v242;
      v116 = v276;
    }

    else
    {
      v283 = v65;
      v71 = *v252;
      v72 = *(v251 + 72);
      v259 = v66 + 1;
      v16 = v71 + v72 * v70;
      v73 = *(v251 + 16);
      v74 = v234;
      v75 = v276;
      v73(v234, v16, v276);
      v76 = v71 + v72 * v69;
      v77 = v235;
      v281 = v73;
      v73(v235, v76, v75);
      LODWORD(v282) = sub_1000EBC78(v74, v77);
      v78 = &v287;
      if (v5)
      {
        goto LABEL_149;
      }

      v79 = *v273;
      (*v273)(v77, v75);
      v278 = v79;
      v79(v74, v75);
      v80 = v270 + 2;
      v81 = v71 + v72 * (v270 + 2);
      v70 = v259;
      v82 = v283;
      v284 = v72;
      v83 = v245;
      while (1)
      {
        v84 = v80;
        if (v70 + 1 >= v82)
        {
          break;
        }

        v288 = v80;
        v259 = v70;
        v85 = v276;
        v86 = v281;
        v281(v253, v81, v276);
        v86(v254, v16, v85);
        sub_100046184(&qword_100219BC0, &qword_10019EA80);
        inited = swift_initStackObject();
        *(inited + 16) = v280;
        v88 = v272;
        *(inited + 32) = v272;
        v89 = v88;
        sub_10002DD0C(inited);
        URL.resourceValues(forKeys:)();
        if (v5)
        {

          v90 = 1;
          sub_1000051C0(v83, 1, 1, v275);
          sub_10000F94C(v83, &qword_100219BC8, &unk_10019FCF0);
          v5 = 0;
        }

        else
        {
          v285 = 0;

          v91 = v275;
          sub_1000051C0(v83, 0, 1, v275);
          v92 = v248;
          v93 = v83;
          v94 = *v263;
          (*v263)(v248, v93, v91);
          v95 = v241;
          URLResourceValues.creationDate.getter();
          v96 = v262;
          if (sub_100008D0C(v95, 1, v262) == 1)
          {
            (*v261)(v92, v91);
            sub_10000F94C(v95, &qword_100217050, &qword_100199180);
            v90 = 1;
            v5 = v285;
          }

          else
          {
            v97 = *v258;
            (*v258)(v243, v95, v96);
            v98 = swift_initStackObject();
            *(v98 + 16) = v280;
            *(v98 + 32) = v89;
            v99 = v89;
            sub_10002DD0C(v98);
            v100 = v239;
            v101 = v285;
            URL.resourceValues(forKeys:)();
            v5 = v101;
            if (v101)
            {

              (*v257)(v243, v96);
              v102 = v275;
              (*v261)(v248, v275);
              v90 = 1;
              sub_1000051C0(v100, 1, 1, v102);
              sub_10000F94C(v100, &qword_100219BC8, &unk_10019FCF0);
              v5 = 0;
            }

            else
            {

              sub_1000051C0(v100, 0, 1, v275);
              v103 = v236;
              v94();
              v104 = v237;
              URLResourceValues.creationDate.getter();
              if (sub_100008D0C(v104, 1, v96) == 1)
              {
                v105 = *v261;
                v106 = v103;
                v107 = v275;
                (*v261)(v106, v275);
                (*v257)(v243, v96);
                v105(v248, v107);
                sub_10000F94C(v104, &qword_100217050, &qword_100199180);
                v90 = 1;
              }

              else
              {
                v108 = v103;
                v109 = v233;
                v97(v233, v104, v96);
                v90 = static Date.< infix(_:_:)();
                v285 = *v257;
                v285(v109, v96);
                v110 = *v261;
                v111 = v108;
                v112 = v275;
                (*v261)(v111, v275);
                v285(v243, v96);
                v110(v248, v112);
              }
            }
          }

          v83 = v245;
        }

        v113 = v276;
        v114 = v278;
        v278(v254, v276);
        v114(v253, v113);
        v72 = v284;
        v81 += v284;
        v16 += v284;
        v70 = v259 + 1;
        v84 = v288;
        v80 = v288 + 1;
        v82 = v283;
        if ((v282 & 1) != (v90 & 1))
        {
          goto LABEL_21;
        }
      }

      v70 = v82;
LABEL_21:
      if (v282)
      {
        v115 = v242;
        v116 = v276;
        v68 = v279;
        if (v70 < v270)
        {
          goto LABEL_173;
        }

        if (v270 < v70)
        {
          v285 = v5;
          if (v82 >= v84)
          {
            v117 = v84;
          }

          else
          {
            v117 = v82;
          }

          v118 = v72 * (v117 - 1);
          v119 = v72 * v117;
          v120 = v270 * v72;
          v259 = v70;
          v121 = v270;
          while (1)
          {
            if (v121 != --v70)
            {
              v122 = *v252;
              if (!*v252)
              {
LABEL_178:
                __break(1u);
                goto LABEL_179;
              }

              v16 = v122 + v120;
              v123 = *v271;
              (*v271)(v247, v122 + v120, v116);
              if (v120 < v118 || v16 >= (v122 + v119))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v120 != v118)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v123((v122 + v118), v247, v116);
              v115 = v242;
              v72 = v284;
            }

            ++v121;
            v118 -= v72;
            v119 -= v72;
            v120 += v72;
            if (v121 >= v70)
            {
              v5 = v285;
              v68 = v279;
              v70 = v259;
              goto LABEL_42;
            }
          }
        }

        v69 = v270;
      }

      else
      {
        v115 = v242;
        v116 = v276;
        v68 = v279;
LABEL_42:
        v69 = v270;
      }
    }

    v125 = v252[1];
    if (v70 < v125)
    {
      if (__OFSUB__(v70, v69))
      {
        goto LABEL_170;
      }

      if (v70 - v69 < v115)
      {
        break;
      }
    }

LABEL_82:
    if (v70 < v69)
    {
      goto LABEL_169;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v259 = v70;
    if (isUniquelyReferenced_nonNull_native)
    {
      v67 = v240;
    }

    else
    {
      v219 = v240[2];
      sub_10006C888();
      v67 = v220;
    }

    v176 = v67[2];
    v177 = v176 + 1;
    if (v176 >= v67[3] >> 1)
    {
      sub_10006C888();
      v67 = v221;
    }

    v67[2] = v177;
    v178 = v67 + 4;
    v179 = &v67[2 * v176 + 4];
    v180 = v259;
    *v179 = v270;
    v179[1] = v180;
    v288 = *v238;
    if (!v288)
    {
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v116 = v5;
    if (v176)
    {
      v16 = v67;
      while (1)
      {
        v181 = v177 - 1;
        v182 = &v178[2 * v177 - 2];
        v183 = &v67[2 * v177];
        if (v177 >= 4)
        {
          break;
        }

        v184 = v251;
        if (v177 == 3)
        {
          v185 = v67[4];
          v186 = v67[5];
          v195 = __OFSUB__(v186, v185);
          v187 = v186 - v185;
          v188 = v195;
LABEL_103:
          if (v188)
          {
            goto LABEL_156;
          }

          v200 = *v183;
          v199 = v183[1];
          v201 = __OFSUB__(v199, v200);
          v202 = v199 - v200;
          v203 = v201;
          if (v201)
          {
            goto LABEL_159;
          }

          v204 = v182[1];
          v205 = v204 - *v182;
          if (__OFSUB__(v204, *v182))
          {
            goto LABEL_162;
          }

          if (__OFADD__(v202, v205))
          {
            goto LABEL_164;
          }

          if (v202 + v205 >= v187)
          {
            if (v187 < v205)
            {
              v181 = v177 - 2;
            }

            goto LABEL_125;
          }

          goto LABEL_118;
        }

        if (v177 < 2)
        {
          goto LABEL_158;
        }

        v207 = *v183;
        v206 = v183[1];
        v195 = __OFSUB__(v206, v207);
        v202 = v206 - v207;
        v203 = v195;
LABEL_118:
        if (v203)
        {
          goto LABEL_161;
        }

        v209 = *v182;
        v208 = v182[1];
        v195 = __OFSUB__(v208, v209);
        v210 = v208 - v209;
        if (v195)
        {
          goto LABEL_163;
        }

        if (v210 < v202)
        {
          v67 = v16;
          goto LABEL_132;
        }

LABEL_125:
        if (v181 - 1 >= v177)
        {
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
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
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
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
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
          goto LABEL_172;
        }

        if (!*v252)
        {
          goto LABEL_176;
        }

        v214 = &v178[2 * v181 - 2];
        v215 = *v214;
        v216 = &v178[2 * v181];
        v217 = *(v216 + 1);
        sub_1000EF8DC(*v252 + *(v184 + 72) * *v214, *v252 + *(v184 + 72) * *v216, *v252 + *(v184 + 72) * v217, v288);
        if (v116)
        {
          goto LABEL_147;
        }

        if (v217 < v215)
        {
          goto LABEL_151;
        }

        v218 = *(v16 + 16);
        if (v181 > v218)
        {
          goto LABEL_152;
        }

        *v214 = v215;
        v214[1] = v217;
        if (v181 >= v218)
        {
          goto LABEL_153;
        }

        v177 = v218 - 1;
        sub_100117CA4(v216 + 16, v218 - 1 - v181, &v178[2 * v181]);
        v67 = v16;
        *(v16 + 16) = v218 - 1;
        v68 = v279;
        if (v218 <= 2)
        {
          goto LABEL_132;
        }
      }

      v189 = &v178[2 * v177];
      v190 = *(v189 - 8);
      v191 = *(v189 - 7);
      v195 = __OFSUB__(v191, v190);
      v192 = v191 - v190;
      if (v195)
      {
        goto LABEL_154;
      }

      v194 = *(v189 - 6);
      v193 = *(v189 - 5);
      v195 = __OFSUB__(v193, v194);
      v187 = v193 - v194;
      v188 = v195;
      v184 = v251;
      if (v195)
      {
        goto LABEL_155;
      }

      v196 = v183[1];
      v197 = v196 - *v183;
      if (__OFSUB__(v196, *v183))
      {
        goto LABEL_157;
      }

      v195 = __OFADD__(v187, v197);
      v198 = v187 + v197;
      if (v195)
      {
        goto LABEL_160;
      }

      if (v198 >= v192)
      {
        v212 = *v182;
        v211 = v182[1];
        v195 = __OFSUB__(v211, v212);
        v213 = v211 - v212;
        if (v195)
        {
          goto LABEL_168;
        }

        if (v187 < v213)
        {
          v181 = v177 - 2;
        }

        goto LABEL_125;
      }

      goto LABEL_103;
    }

LABEL_132:
    v65 = v252[1];
    v66 = v259;
    v5 = v116;
    if (v259 >= v65)
    {
      goto LABEL_136;
    }
  }

  if (__OFADD__(v69, v115))
  {
    goto LABEL_171;
  }

  if (v69 + v115 >= v125)
  {
    v16 = v252[1];
  }

  else
  {
    v16 = v69 + v115;
  }

  if (v16 < v69)
  {
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v70 == v16)
  {
    goto LABEL_82;
  }

  v126 = *v252;
  v267 = sub_100046184(&qword_100219C18, &qword_10019EAC0);
  v266 = *(v251 + 72);
  v265 = *(v251 + 16);
  v244 = v16;
  v283 = v126;
LABEL_54:
  v259 = v70;
LABEL_55:
  v285 = v5;
  v127 = v266;
  v282 = v126 + v266 * v70;
  v128 = v265;
  v265(v68);
  v288 = v70 - 1;
  v281 = (v126 + (v70 - 1) * v127);
  v128(v286);
  v278 = sub_100046184(&qword_100219BC0, &qword_10019EA80);
  v129 = swift_initStackObject();
  *(v129 + 16) = v280;
  v130 = v272;
  *(v129 + 32) = v272;
  v131 = static _SetStorage.allocate(capacity:)();
  v132 = v131 + 56;
  v75 = *(v129 + 32);
  v133 = *(v131 + 40);
  v277 = v130;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  v284 = v75;
  String.hash(into:)();
  v134 = Hasher._finalize()();

  v135 = ~(-1 << *(v131 + 32));
  while (1)
  {
    v136 = v134 & v135;
    v137 = (v134 & v135) >> 6;
    v138 = *(v132 + 8 * v137);
    v139 = 1 << (v134 & v135);
    if ((v139 & v138) == 0)
    {
      break;
    }

    v140 = *(*(v131 + 48) + 8 * v136);
    v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v143 = v142;
    if (v141 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v143 == v144)
    {

      goto LABEL_67;
    }

    v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v146)
    {

LABEL_67:
      v148 = v285;
      v77 = v269;
      v74 = v288;
LABEL_68:
      swift_setDeallocating();
      sub_1000FA5B8();
      v68 = v279;
      URL.resourceValues(forKeys:)();
      v5 = v148;
      if (v148)
      {

        sub_1000051C0(v77, 1, 1, v275);
        sub_10000F94C(v77, &qword_100219BC8, &unk_10019FCF0);
        v5 = 0;
        v126 = v283;
        goto LABEL_75;
      }

      v149 = v275;
      sub_1000051C0(v77, 0, 1, v275);
      v150 = *v263;
      v151 = v264;
      (*v263)(v264, v77, v149);
      v152 = v260;
      URLResourceValues.creationDate.getter();
      v153 = v262;
      if (sub_100008D0C(v152, 1, v262) == 1)
      {
        (*v261)(v151, v149);
        sub_10000F94C(v152, &qword_100217050, &qword_100199180);
LABEL_74:
        v126 = v283;
        v74 = v288;
LABEL_75:
        v163 = *v273;
        v116 = v276;
        (*v273)(v286, v276);
        v163(v68, v116);
        v69 = v270;
        goto LABEL_76;
      }

      v154 = *v258;
      v155 = v256;
      (*v258)(v256, v152, v153);
      v156 = swift_initStackObject();
      *(v156 + 16) = v280;
      v157 = v277;
      *(v156 + 32) = v277;
      v158 = v157;
      sub_10002DD0C(v156);
      v159 = v255;
      URL.resourceValues(forKeys:)();

      sub_1000051C0(v159, 0, 1, v149);
      v160 = v249;
      (v150)(v249, v159, v149);
      v161 = v250;
      URLResourceValues.creationDate.getter();
      if (sub_100008D0C(v161, 1, v153) == 1)
      {
        v162 = *v261;
        (*v261)(v160, v149);
        (*v257)(v155, v153);
        v162(v264, v149);
        sub_10000F94C(v161, &qword_100217050, &qword_100199180);
        v68 = v279;
        goto LABEL_74;
      }

      v171 = v246;
      v154(v246, v161, v153);
      LODWORD(v285) = static Date.< infix(_:_:)();
      v172 = *v257;
      (*v257)(v171, v153);
      v173 = *v261;
      (*v261)(v160, v149);
      v172(v155, v153);
      v173(v264, v149);
      v174 = *v273;
      v116 = v276;
      (*v273)(v286, v276);
      v68 = v279;
      v174(v279, v116);
      v69 = v270;
      v126 = v283;
      v74 = v288;
      if ((v285 & 1) == 0)
      {
LABEL_80:
        v70 = v259 + 1;
        v16 = v244;
        if (v259 + 1 == v244)
        {
          v70 = v244;
          goto LABEL_82;
        }

        goto LABEL_54;
      }

LABEL_76:
      if (!v126)
      {
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v164 = *v271;
      v165 = v268;
      v166 = v74;
      v167 = v69;
      v168 = v68;
      (*v271)(v268, v282, v116);
      v169 = v281;
      swift_arrayInitWithTakeFrontToBack();
      v170 = v169;
      v68 = v168;
      v69 = v167;
      v70 = v166;
      v126 = v283;
      v164(v170, v165, v116);
      if (v70 == v69)
      {
        goto LABEL_80;
      }

      goto LABEL_55;
    }

    v134 = v136 + 1;
  }

  *(v132 + 8 * v137) = v139 | v138;
  *(*(v131 + 48) + 8 * v136) = v284;
  v147 = *(v131 + 16);
  v195 = __OFADD__(v147, 1);
  v78 = (v147 + 1);
  v148 = v285;
  v77 = v269;
  v74 = v288;
  if (!v195)
  {
    *(v131 + 16) = v78;
    goto LABEL_68;
  }

  __break(1u);
LABEL_149:
  v230 = *(v78 - 32);
  v231 = *v230;
  (*v230)(v77, v75);
  v231(v74, v75);
}

uint64_t sub_1000EF8DC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v82 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v74 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v74 - v16;
  result = __chkstk_darwin(v15);
  v21 = &v74 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  v24 = a2 - a1 == 0x8000000000000000 && v23 == -1;
  if (v24)
  {
    goto LABEL_66;
  }

  v25 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v90 = a1;
  v89 = a4;
  v83 = a3;
  v84 = (v19 + 16);
  v85 = (v19 + 8);
  v27 = v25 / v23;
  v28 = v23;
  if ((a2 - a1) / v23 >= v25 / v23)
  {
    v79 = v14;
    sub_100115B70(a2, v25 / v23, a4);
    v44 = a2;
    v45 = a4 + v27 * v28;
    v46 = -v28;
    v47 = v45;
    v48 = v83;
    v49 = a1;
    v50 = v87;
    v76 = v46;
    v77 = a1;
    v78 = a4;
LABEL_39:
    v80 = v44;
    v81 = (v44 + v46);
    v51 = v48;
    v74 = v47;
    v52 = v47;
    v53 = v82;
    while (1)
    {
      if (v45 <= a4)
      {
        v87 = v50;
        v88 = v52;
        v90 = v44;
        goto LABEL_64;
      }

      if (v44 <= v49)
      {
        v90 = v44;
        v87 = v50;
        v88 = v74;
        goto LABEL_64;
      }

      v54 = v53;
      v55 = v51;
      v75 = v52;
      v56 = v50;
      v83 = v45;
      v57 = v45 + v46;
      v58 = *v84;
      v59 = v79;
      (*v84)(v79, v45 + v46, v8);
      (v58)(v54, v81, v8);
      v60 = sub_1000EBC78(v59, v54);
      v87 = v56;
      if (v56)
      {
        break;
      }

      v61 = v60;
      v48 = v55 + v46;
      v62 = *v85;
      (*v85)(v54, v8);
      v62(v59, v8);
      if (v61)
      {
        v66 = v55 < v80 || v48 >= v80;
        a4 = v78;
        if (v66)
        {
          v67 = v81;
          swift_arrayInitWithTakeFrontToBack();
          v44 = v67;
          v47 = v75;
          v46 = v76;
          v49 = v77;
          v50 = v87;
          v45 = v83;
        }

        else
        {
          v46 = v76;
          v47 = v75;
          v24 = v55 == v80;
          v68 = v81;
          v44 = v81;
          v49 = v77;
          v50 = v87;
          v45 = v83;
          if (!v24)
          {
            v69 = v87;
            v70 = v76;
            v71 = v75;
            swift_arrayInitWithTakeBackToFront();
            v45 = v83;
            v50 = v69;
            v44 = v68;
            v47 = v71;
            v46 = v70;
          }
        }

        goto LABEL_39;
      }

      v63 = v55 < v83 || v48 >= v83;
      a4 = v78;
      if (v63)
      {
        swift_arrayInitWithTakeFrontToBack();
        v51 = v55 + v46;
        v45 = v57;
        v52 = v57;
        v44 = v80;
        v46 = v76;
        v49 = v77;
        v50 = v87;
        v53 = v82;
      }

      else
      {
        v52 = v57;
        v24 = v83 == v55;
        v51 = v55 + v46;
        v45 = v57;
        v44 = v80;
        v46 = v76;
        v49 = v77;
        v50 = v87;
        v53 = v82;
        if (!v24)
        {
          v64 = v80;
          v65 = v87;
          swift_arrayInitWithTakeBackToFront();
          v50 = v65;
          v44 = v64;
          v51 = v48;
          v45 = v57;
          v52 = v57;
        }
      }
    }

    v73 = *v85;
    (*v85)(v54, v8);
    v73(v59, v8);
    v90 = v80;
    v88 = v75;
  }

  else
  {
    v29 = v8;
    v30 = (a2 - a1) / v23;
    sub_100115B70(a1, v30, a4);
    v31 = a2;
    v81 = v21;
    v82 = (a4 + v30 * v28);
    v88 = v82;
    v32 = v83;
    v33 = a1;
    v86 = v29;
    v80 = v17;
    while (a4 < v82 && v31 < v32)
    {
      v35 = v28;
      v36 = *v84;
      v37 = v31;
      (*v84)(v21);
      (v36)(v17, a4, v29);
      v38 = v87;
      v39 = sub_1000EBC78(v21, v17);
      v87 = v38;
      if (v38)
      {
        v72 = *v85;
        (*v85)(v17, v29);
        v72(v21, v29);
        break;
      }

      v40 = v39;
      v41 = *v85;
      (*v85)(v17, v29);
      v41(v21, v29);
      v28 = v35;
      if (v40)
      {
        if (v33 < v37 || v33 >= v37 + v35)
        {
          swift_arrayInitWithTakeFrontToBack();
          v31 = v37 + v35;
          v17 = v80;
        }

        else
        {
          v17 = v80;
          if (v33 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v31 = v37 + v35;
        }

        v21 = v81;
      }

      else
      {
        if (v33 < a4 || v33 >= a4 + v35)
        {
          swift_arrayInitWithTakeFrontToBack();
          v17 = v80;
        }

        else
        {
          v17 = v80;
          if (v33 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v89 = a4 + v35;
        a4 += v35;
        v21 = v81;
        v31 = v37;
      }

      v33 += v35;
      v90 = v33;
      v32 = v83;
      v29 = v86;
    }
  }

LABEL_64:
  sub_100117858(&v90, &v89, &v88);
  return 1;
}

void sub_1000EFF30()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Trialpb_TrialExperiment();
  v30 = sub_100003650(v8);
  v31 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v30);
  sub_100003838();
  v29 = v12;
  sub_100007F80();
  __chkstk_darwin(v13);
  sub_100009934();
  v28 = v14;
  v15 = v1 + 56;
  v27 = -1 << *(v1 + 32);
  if (-v27 < 64)
  {
    v16 = ~(-1 << -v27);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v1 + 56);
  if (!v5)
  {
    v20 = 0;
LABEL_22:
    *v7 = v1;
    v7[1] = v15;
    v7[2] = ~v27;
    v7[3] = v20;
    v7[4] = v17;
    sub_100005460();
    return;
  }

  v18 = v3;
  if (!v3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v26 = v1 + 56;
    v19 = 0;
    v20 = 0;
    while (v19 < v18)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v26;
        while (1)
        {
          v21 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v21 >= ((63 - v27) >> 6))
          {
            v17 = 0;
            goto LABEL_22;
          }

          v17 = *(v26 + 8 * v21);
          ++v20;
          if (v17)
          {
            v32 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v32 = v19 + 1;
      v21 = v20;
LABEL_17:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = v1;
      v24 = *(v31 + 72);
      (*(v31 + 16))(v29, *(v1 + 48) + v24 * (v22 | (v21 << 6)), v30);
      v25 = *(v31 + 32);
      v25(v28, v29, v30);
      v25(v5, v28, v30);
      v18 = v3;
      v19 = v32;
      if (v32 == v3)
      {
        v20 = v21;
        v15 = v26;
        v1 = v23;
        goto LABEL_22;
      }

      v5 += v24;
      v20 = v21;
      v1 = v23;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

void sub_1000F0198()
{
  sub_100005478();
  v3 = v2;
  v5 = v4;
  v7 = v2 + 56;
  v6 = *(v2 + 56);
  v8 = *(v2 + 32);
  sub_10000E1C4();
  if (!v9)
  {
    v14 = 0;
LABEL_17:
    *v5 = v3;
    v5[1] = v7;
    v5[2] = ~v0;
    v5[3] = v14;
    v5[4] = v1;
    sub_100005460();
    return;
  }

  v11 = v10;
  if (!v10)
  {
    v14 = 0;
    goto LABEL_17;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = v9;
    v13 = 0;
    v14 = 0;
    while (v13 < v11)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

      if (!v1)
      {
        while (1)
        {
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v16 >= ((63 - v0) >> 6))
          {
            v1 = 0;
            goto LABEL_17;
          }

          v1 = *(v7 + 8 * v16);
          ++v14;
          if (v1)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v14;
LABEL_12:
      v17 = (*(v3 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v1)))));
      v18 = v17[1];
      v1 &= v1 - 1;
      *v12 = *v17;
      v12[1] = v18;
      if (v15 == v11)
      {

        v14 = v16;
        goto LABEL_17;
      }

      v12 += 2;

      v13 = v15;
      v14 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_1000F02CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4 + 64;
  v8 = *(a4 + 64);
  v10 = *(a4 + 32);
  sub_10000E1C4();
  if (!v11)
  {
    v16 = 0;
LABEL_16:
    *a1 = a4;
    a1[1] = v9;
    a1[2] = ~v4;
    a1[3] = v16;
    a1[4] = v5;
    return;
  }

  v13 = v12;
  if (!v12)
  {
    v16 = 0;
    goto LABEL_16;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = v11;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (!v5)
      {
        while (1)
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v18 >= ((63 - v4) >> 6))
          {
            v5 = 0;
            goto LABEL_16;
          }

          v5 = *(v9 + 8 * v18);
          ++v16;
          if (v5)
          {
            v16 = v18;
            goto LABEL_11;
          }
        }

        __break(1u);
        break;
      }

LABEL_11:
      v19 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      sub_100009848(*(a4 + 56) + ((v16 << 11) | (32 * v19)), v20);
      sub_100028734(v20, v21);
      sub_100028734(v21, v14);
      v14 += 2;
      v15 = v17;
      if (v17 == v13)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_1000F040C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v41 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  v38 = *(v41 - 8);
  v8 = *(v38 + 64);
  v9 = __chkstk_darwin(v41);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v39 = &v35 - v12;
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
  v42 = a2;
  if (!a2)
  {
    v18 = 0;
    a3 = 0;
LABEL_21:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v18;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = v14;
    v37 = a1;
    v17 = 0;
    v18 = 0;
    v19 = (63 - v14) >> 6;
    while (1)
    {
      if (v17 >= a3)
      {
        goto LABEL_24;
      }

      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_25;
      }

      if (!v16)
      {
        while (1)
        {
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v21 >= v19)
          {
            v16 = 0;
            a3 = v17;
            a1 = v37;
            goto LABEL_19;
          }

          v16 = *(v13 + 8 * v21);
          ++v18;
          if (v16)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v21 = v18;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v21 << 6);
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = *(a4 + 56);
      v27 = *(v25 + 8 * v23);
      v28 = v26 + *(*(type metadata accessor for TopicCacheEntry() - 8) + 72) * v23;
      v29 = v40;
      sub_1000F0914(v28, &v40[*(v41 + 48)]);
      *v29 = v27;
      v30 = v29;
      v31 = v39;
      sub_1000F0978(v30, v39);
      v32 = v31;
      v33 = v42;
      sub_1000F0978(v32, v42);
      if (v20 == a3)
      {
        break;
      }

      v42 = v33 + *(v38 + 72);
      result = v27;
      v17 = v20;
      v18 = v21;
      a4 = v24;
    }

    v34 = v27;
    v18 = v21;
    a1 = v37;
    a4 = v24;
LABEL_19:
    v14 = v36;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

id sub_1000F0690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  type metadata accessor for FileAttributeKey(0);
  sub_1000F09E8(&qword_1002147B0, type metadata accessor for FileAttributeKey);
  v8 = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [a5 createFileAtPath:a1 contents:isa attributes:v8];

  return v9;
}

id sub_1000F076C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:isa options:a3 error:a4];

  return v10;
}

unint64_t sub_1000F0800(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1000F086C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(type metadata accessor for URL() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1000F0914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicCacheEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F0978(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100219BD8, &unk_1001A0700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F09E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000F0A30(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1000F0A48()
{
  result = *(v0 - 440);
  v2 = *(v0 - 408);
  return result;
}

uint64_t sub_1000F0A84()
{
}

void sub_1000F0A9C()
{
  sub_100005478();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100003650(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100003664();
  v9 = v8 - v7;
  v10 = type metadata accessor for DispatchQoS();
  v11 = sub_100003650(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100003664();
  v18 = v17 - v16;
  v19 = *(v0 + 88);
  v24[4] = sub_1000F39B0;
  v25 = v0;
  sub_100003784();
  sub_1000040A8(COERCE_DOUBLE(1107296256));
  v24[2] = v20;
  v24[3] = &unk_1001FC908;
  v21 = _Block_copy(v24);

  static DispatchQoS.unspecified.getter();
  sub_100006B40();
  sub_1000F3AA0(v22, 255, v23);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v4 + 8))(v9, v1);
  (*(v13 + 8))(v18, v10);

  sub_100005460();
}

void sub_1000F0CB4()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100003650(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100003664();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_100003650(v13);
  v48 = v15;
  v49 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_100003664();
  v20 = v19 - v18;
  type metadata accessor for QueryCacheSpan();
  v21 = *(v0 + 56);
  sub_1000092B4(v0 + 16, v50);

  v23 = sub_1000FDBCC(v22, 2, v50);
  v24 = (v3 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result);
  v25 = *(v3 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 24);
  if (!v25)
  {
    v39 = 0;
LABEL_10:
    sub_1000FDCDC(v39, 1);
LABEL_12:

    goto LABEL_13;
  }

  v47 = v7;
  v26 = v24[2];

  if (String.count.getter() < 1)
  {

    v39 = 1;
    goto LABEL_10;
  }

  v46 = v4;
  v27 = v23;
  v29 = *v24;
  v28 = v24[1];

  v30 = String.count.getter();

  if (String.count.getter() >= v30)
  {
    v45 = *(v1 + 88);
    v40 = swift_allocObject();
    v40[2] = v3;
    v40[3] = v1;
    v40[4] = v27;
    v40[5] = v26;
    v40[6] = v25;
    v50[4] = sub_1000F3AE8;
    v50[5] = v40;
    sub_100003784();
    sub_1000040A8(COERCE_DOUBLE(1107296256));
    v50[2] = v41;
    v50[3] = &unk_1001FC980;
    v42 = _Block_copy(v50);

    static DispatchQoS.unspecified.getter();
    sub_100006B40();
    sub_1000F3AA0(v43, 255, v44);
    sub_100046184(&unk_100217030, &unk_1001989C0);
    sub_10000CB0C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);

    (*(v47 + 8))(v12, v46);
    (*(v48 + 8))(v20, v49);
    goto LABEL_12;
  }

  sub_1000FDCDC(2, 1);
  if (qword_1002140D8 != -1)
  {
    sub_10000393C();
  }

  v31 = type metadata accessor for Logger();
  sub_10000964C(v31, qword_100232AF8);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v34 = 136643075;
    v35 = sub_100009684(v26, v25, v50);

    *(v34 + 4) = v35;
    *(v34 + 12) = 2085;
    v36 = *v24;
    v37 = v24[1];

    v38 = sub_100009684(v36, v37, v50);

    *(v34 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "BUG: NOT caching '%{sensitive}s' because input is longer than completed query '%{sensitive}s'", v34, 0x16u);
    swift_arrayDestroy();
    sub_1000036D4();
    sub_1000036D4();
  }

  else
  {
  }

LABEL_13:
  sub_100005460();
}

uint64_t sub_1000F1164(void *a1, uint64_t a2)
{
  v83 = a2;
  v79._object = type metadata accessor for URLComponents();
  v4 = sub_100003650(v79._object);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100003664();
  v11 = v10 - v9;
  v12 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v76 - v14;
  v16 = sub_100046184(&qword_100218230, &unk_100199A00);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v76 - v18;
  v20 = type metadata accessor for URL();
  v21 = sub_100003650(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_100003664();
  v28 = v27 - v26;
  v29 = sub_1000F39B4(a1);
  if (v29)
  {
    v30 = *(v29 + 16);

    if (v30)
    {
      return 0;
    }
  }

  v79._countAndFlagsBits = v6;
  type metadata accessor for QueryCacheSpan();
  v32 = *(v2 + 56);
  v82 = v2;
  sub_1000092B4(v2 + 16, &v85);

  v81 = sub_1000FDBCC(v33, 1, &v85);
  [a1 scale];
  v35 = v34;
  v36 = [a1 queryString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = String.lowercased()();
  countAndFlagsBits = v37._countAndFlagsBits;
  object = v37._object;

  sub_100053240(v83, v15, &unk_100218500, &qword_10019C7D8);
  v40 = type metadata accessor for URLRequest();
  if (sub_100008D0C(v15, 1, v40) == 1)
  {
    sub_10000F94C(v15, &unk_100218500, &qword_10019C7D8);
    sub_1000051C0(v19, 1, 1, v20);
LABEL_7:
    sub_10000F94C(v19, &qword_100218230, &unk_100199A00);
    goto LABEL_8;
  }

  URLRequest.url.getter();
  (*(*(v40 - 8) + 8))(v15, v40);
  if (sub_100008D0C(v19, 1, v20) == 1)
  {
    goto LABEL_7;
  }

  (*(v23 + 32))(v28, v19, v20);
  v64 = objc_opt_self();
  URL._bridgeToObjectiveC()(v65);
  v67 = v66;
  v68 = [v64 parsec_componentsWithURL:v66 resolvingAgainstBaseURL:0];

  if (v68)
  {
    static URLComponents._unconditionallyBridgeFromObjectiveC(_:)();

    if (URLComponents.queryItems.getter())
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000F190C();
      v78 = v69;
      v45 = v70;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v23;
      sub_1000F190C();
      v76 = v71;
      v43 = v72;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000F190C();
      v80 = v73;
      v41 = v74;

      v75 = v11;
      v42 = v76;
      v44 = v78;
      (*(v79._countAndFlagsBits + 8))(v75, v79._object);
      (*(v77 + 8))(v28, v20);
      goto LABEL_9;
    }

    (*(v79._countAndFlagsBits + 8))(v11, v79._object);
  }

  (*(v23 + 8))(v28, v20);
LABEL_8:
  v80 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
LABEL_9:
  if (qword_1002140D8 != -1)
  {
    sub_10000393C();
  }

  v46 = type metadata accessor for Logger();
  sub_10000964C(v46, qword_100232AF8);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v84[0] = v77;
    *v49 = 136643331;
    *(v49 + 4) = sub_100009684(v37._countAndFlagsBits, v37._object, v84);
    *(v49 + 12) = 2080;
    v85 = v44;
    v86 = v45;

    sub_100046184(&qword_1002181F0, &qword_10019C610);
    v78 = v45;
    v50 = v42;
    v51 = String.init<A>(describing:)();
    v79 = v37;
    v53 = v44;
    v54 = v41;
    v55 = sub_100009684(v51, v52, v84);

    *(v49 + 14) = v55;
    v41 = v54;
    v44 = v53;
    *(v49 + 22) = 2085;
    v85 = v42;
    v86 = v43;

    v56 = String.init<A>(describing:)();
    v58 = sub_100009684(v56, v57, v84);
    v59 = v79;
    object = v59._object;
    countAndFlagsBits = v59._countAndFlagsBits;

    *(v49 + 24) = v58;
    v42 = v50;
    v45 = v78;
    _os_log_impl(&_mh_execute_header, v47, v48, "cache lookup: '%{sensitive}s' qtype %s suggest %{sensitive}s", v49, 0x20u);
    swift_arrayDestroy();
    sub_1000036D4();
    sub_1000036D4();
  }

  v60 = *(v82 + 88);
  __chkstk_darwin(v61);
  *(&v76 - 12) = countAndFlagsBits;
  *(&v76 - 11) = object;
  *(&v76 - 10) = v62;
  *(&v76 - 9) = v35;
  *(&v76 - 8) = v44;
  *(&v76 - 7) = v45;
  *(&v76 - 6) = v42;
  *(&v76 - 5) = v43;
  v63 = v81;
  *(&v76 - 4) = v80;
  *(&v76 - 3) = v41;
  *(&v76 - 2) = v83;
  *(&v76 - 1) = v63;
  sub_100046184(&qword_100219D50, &unk_10019EC18);
  OS_dispatch_queue.sync<A>(execute:)();

  return v85;
}

void sub_1000F190C()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for URLQueryItem();
  v7 = sub_100003650(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100003664();
  v14 = v13 - v12;
  v15 = 0;
  v21 = v5;
  v16 = *(v5 + 16);
  v17 = (v9 + 8);
  while (v16 != v15)
  {
    (*(v9 + 16))(v14, v21 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v6);
    if (URLQueryItem.name.getter() == v3 && v18 == v1)
    {

LABEL_11:
      URLQueryItem.value.getter();
      (*v17)(v14, v6);
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_11;
    }

    (*v17)(v14, v6);
    ++v15;
  }

  sub_100005460();
}

const char *sub_1000F1AA0(char a1)
{
  result = "lifetime";
  switch(a1)
  {
    case 1:
      result = "cacheAccess";
      break;
    case 2:
      result = "cacheWrite";
      break;
    case 3:
      result = "resultLifetime";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000F1B08(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1000F1B18@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F1B08(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000F1B44()
{
  v0 = qword_100219C20;

  return v0;
}

uint64_t sub_1000F1B7C()
{
  v0 = aQuerycache_2[0];

  return v0;
}

uint64_t sub_1000F1BD4()
{
  v1 = objc_autoreleasePoolPush();
  v2 = *(v0 + 64);
  *(v0 + 64) = 0;

  objc_autoreleasePoolPop(v1);
  sub_100007378((v0 + 16));
  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  sub_10000B218(v0 + 72);

  v5 = *(v0 + 96);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1000F1C40()
{
  sub_1000F1BD4();

  return _swift_deallocClassInstance(v0, 104, 7);
}

void sub_1000F1C74()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v1[11];
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = v1[5];
    v10 = v1[6];
    sub_100007534(v1 + 2, v9);
    if (!sub_1000569FC(v9, v10))
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v1[5];
      v13 = v1[6];
      sub_100007534(v1 + 2, v12);
      (*(v13 + 56))(v12, v13);
      objc_autoreleasePoolPop(v11);
      sub_1000F1DF8("query cache became empty");
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000F1DF8(const char *a1)
{
  if (qword_1002140D8 != -1)
  {
    sub_10000393C();
  }

  v2 = type metadata accessor for Logger();
  sub_10000964C(v2, qword_100232AF8);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
    sub_1000036D4();
  }
}

void sub_1000F1ED0()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100003650(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100003664();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_100003650(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100003664();
  v43 = v20 - v19;
  if (qword_1002140D8 != -1)
  {
    sub_10000393C();
  }

  v21 = type metadata accessor for Logger();
  sub_10000964C(v21, qword_100232AF8);
  v22 = v3;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44[0] = v40;
    *v25 = 136315138;
    v26 = [v22 name];
    v41 = v1;
    v42 = v16;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v12;
    v29 = v13;
    v30 = v4;
    v31 = v7;
    v33 = v32;

    v34 = sub_100009684(v27, v33, v44);
    v7 = v31;
    v4 = v30;
    v13 = v29;
    v12 = v28;
    v16 = v42;

    *(v25 + 4) = v34;
    v1 = v41;
    _os_log_impl(&_mh_execute_header, v23, v24, "cache clear notification: name = %s", v25, 0xCu);
    sub_100007378(v40);
    sub_1000036D4();
    sub_1000036D4();
  }

  v35 = *(v1 + 88);
  v44[4] = sub_1000F3AFC;
  v44[5] = v1;
  sub_100003784();
  sub_1000040A8(COERCE_DOUBLE(1107296256));
  v44[2] = v36;
  v44[3] = &unk_1001FC930;
  v37 = _Block_copy(v44);

  static DispatchQoS.unspecified.getter();
  sub_100006B40();
  sub_1000F3AA0(v38, 255, v39);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v37);
  (*(v7 + 8))(v12, v4);
  (*(v16 + 8))(v43, v13);

  sub_100005460();
}

_BYTE *storeEnumTagSinglePayload for QueryCache.Activity(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000F239C(uint64_t a1)
{
  *(a1 + 8) = sub_1000F23CC();
  result = sub_1000F2420();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000F23CC()
{
  result = qword_100219D08;
  if (!qword_100219D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D08);
  }

  return result;
}

unint64_t sub_1000F2420()
{
  result = qword_100219D10;
  if (!qword_100219D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D10);
  }

  return result;
}

unint64_t sub_1000F2478()
{
  result = qword_100219D18;
  if (!qword_100219D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D18);
  }

  return result;
}

unint64_t sub_1000F24D0()
{
  result = qword_100219D20;
  if (!qword_100219D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219D20);
  }

  return result;
}

uint64_t sub_1000F2524(uint64_t a1, uint64_t a2)
{
  result = sub_1000F3AA0(&unk_100219D40, a2, type metadata accessor for QueryCache);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000F257C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v10 = v9;
  v50 = a7;
  v51 = a8;
  v48 = a5;
  v49 = a6;
  v46 = a3;
  v47 = a4;
  v14 = type metadata accessor for Date();
  v15 = sub_100003650(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_100003664();
  v22 = v21 - v20;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = sub_100003650(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_100003664();
  v31 = v30 - v29;
  v32 = v10[11];
  *(v30 - v29) = v32;
  (*(v26 + 104))(v30 - v29, enum case for DispatchPredicate.onQueue(_:), v23);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  result = (*(v26 + 8))(v31, v23);
  if (v32)
  {
    Date.init()();
    v53 = _swiftEmptyArrayStorage;
    v35 = String.count.getter();
    v52 = _swiftEmptySetSingleton;
    v36 = v10[6];
    v37 = sub_100007534(v10 + 2, v10[5]);
    __chkstk_darwin(v37);
    *(&v46 - 12) = v22;
    *(&v46 - 11) = &v52;
    *(&v46 - 10) = a9;
    v38 = v46;
    v39 = v47;
    *(&v46 - 9) = v35;
    *(&v46 - 8) = v38;
    v41 = v48;
    v40 = v49;
    *(&v46 - 7) = v39;
    *(&v46 - 6) = v41;
    *(&v46 - 5) = v40;
    v42 = v51;
    *(&v46 - 4) = v50;
    *(&v46 - 3) = v42;
    *(&v46 - 2) = &v53;
    (*(v36 + 40))(a1, a2, sub_1000F3A5C);
    v43 = v10[5];
    v44 = v10[6];
    sub_100007534(v10 + 2, v43);
    (*(v44 + 72))(v52, v43, v44);

    v45 = v53;
    (*(v17 + 8))(v22, v14);
    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F2844(Swift::Int a1, Swift::Int a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v45 = a9;
  v46 = a7;
  v42 = a8;
  v43 = a1;
  v44 = a6;
  v17 = sub_100046184(&qword_100217050, &qword_100199180);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v41 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a3;
  v26 = (a3 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result);
  v27 = type metadata accessor for CachedResultSet.Result(0);
  sub_100053240(v26 + v27[6], v20, &qword_100217050, &qword_100199180);
  if (sub_100008D0C(v20, 1, v21) == 1)
  {
    sub_10000F94C(v20, &qword_100217050, &qword_100199180);
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
    sub_1000F3AA0(&qword_1002183B8, 255, &type metadata accessor for Date);
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {

      sub_1000936D4(&v47, v43, a2);

      (*(v22 + 8))(v25, v21);
      return 1;
    }

    (*(v22 + 8))(v25, v21);
  }

  if (a4 <= 0.0 || *(v26 + v27[8]) == a4)
  {
    v28 = *v26;
    v29 = v26[1];

    v30 = String.count.getter();

    if (v30 <= v46)
    {
      v31 = (v26 + v27[11]);
      v32 = v31[1];
      if (v32)
      {
        if (!v45)
        {
          return 1;
        }

        v33 = *v31 == v42 && v32 == v45;
        if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 1;
        }
      }

      else if (v45)
      {
        return 1;
      }

      v34 = (v26 + v27[12]);
      v35 = v34[1];
      if (v35)
      {
        if (!a11)
        {
          return 1;
        }

        v36 = *v34 == a10 && v35 == a11;
        if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 1;
        }
      }

      else if (a11)
      {
        return 1;
      }

      v37 = (v26 + v27[13]);
      v38 = v37[1];
      if (v38)
      {
        if (!a13)
        {
          return 1;
        }

        v39 = *v37 == a12 && v38 == a13;
        if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 1;
        }
      }

      else if (a13)
      {
        return 1;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100110858(*((*a14 & 0xFFFFFFFFFFFFFF8) + 0x10));
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  return 1;
}

uint64_t sub_1000F2BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v91 = a8;
  v97 = a7;
  v19 = sub_100046184(&unk_100218500, &qword_10019C7D8);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v88 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v87 = &v85 - v24;
  v25 = __chkstk_darwin(v23);
  v89 = &v85 - v26;
  __chkstk_darwin(v25);
  v90 = &v85 - v27;
  v28 = String.count.getter();
  v29 = sub_1000F257C(a1, a2, a3, a4, a5, a6, v97, a10, a9);
  result = sub_10000D57C(v29);
  v31 = result;
  if (result)
  {
    if (result < 1)
    {
      goto LABEL_71;
    }

    v32 = 0;
    v33 = -1;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v29 + 8 * v32 + 32);
      }

      if (*(v34 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 24))
      {
        v35 = *(v34 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 16);
        v36 = *(v34 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 24);

        v37 = String.count.getter();

        if (__OFSUB__(v37, v28))
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          return result;
        }

        if (v37 - v28 >= v33)
        {
          v38 = v33;
        }

        else
        {
          v38 = v37 - v28;
        }

        if (v33 == -1)
        {
          v33 = v37 - v28;
        }

        else
        {
          v33 = v38;
        }
      }

      else
      {
      }

      if (v31 == ++v32)
      {
        goto LABEL_19;
      }
    }
  }

  v33 = -1;
LABEL_19:
  v99 = _swiftEmptyArrayStorage;
  v39 = sub_10000D57C(v29);
  result = sub_1000BC3D0(v39, 0);
  v94 = v99;
  if (v31)
  {
    if (v31 < 1)
    {
      goto LABEL_72;
    }

    for (i = 0; i != v31; ++i)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v41 = *(v29 + 8 * i + 32);
      }

      if (!*(v41 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 24))
      {
        goto LABEL_31;
      }

      v42 = *(v41 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 16);
      v43 = *(v41 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 24);

      v44 = String.count.getter();

      if (__OFSUB__(v44, v28))
      {
        goto LABEL_70;
      }

      if (v44 - v28 == v33)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v94 = v99;
      }

      else
      {
LABEL_31:
      }
    }
  }

  v45 = v94;
  result = sub_10000D57C(v94);
  if (!result)
  {
LABEL_58:
    v75 = 0;
    goto LABEL_68;
  }

  v47 = result;
  if (result < 1)
  {
    goto LABEL_73;
  }

  v48 = 0;
  v49 = 0;
  v86 = a11;
  v96 = v45 & 0xC000000000000001;
  v50 = 0.0;
  *&v46 = 136643331;
  v92 = v46;
  v93 = result;
  do
  {
    if (v96)
    {
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v51 = *(v45 + 8 * v48 + 32);
    }

    v52 = (v51 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result);
    v53 = *(v52 + *(type metadata accessor for CachedResultSet.Result(0) + 36));
    if (qword_1002140D8 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    v55 = sub_10000964C(v54, qword_100232AF8);

    v95 = v55;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v97 = v49;
      v58 = swift_slowAlloc();
      v98[0] = swift_slowAlloc();
      *v58 = v92;
      if (v52[3])
      {
        v59 = v52[2];
        v60 = v52[3];
      }

      else
      {
        v60 = 0xE500000000000000;
        v59 = 0x296C696E28;
      }

      v61 = sub_100009684(v59, v60, v98);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2085;
      v63 = *v52;
      v62 = v52[1];

      v64 = sub_100009684(v63, v62, v98);

      *(v58 + 14) = v64;
      *(v58 + 22) = 2048;
      *(v58 + 24) = v53;
      _os_log_impl(&_mh_execute_header, v56, v57, "cache entry prefix: %{sensitive}s input: %{sensitive}s score: %f", v58, 0x20u);
      swift_arrayDestroy();

      v47 = v93;
      v45 = v94;
      v49 = v97;
      if (!v97)
      {
        goto LABEL_51;
      }
    }

    else
    {

      if (!v49)
      {
        goto LABEL_51;
      }
    }

    if (v53 > 0.0 && v50 < v53)
    {

LABEL_51:
      v49 = v51;
      goto LABEL_53;
    }

    v53 = v50;
LABEL_53:
    ++v48;
    v50 = v53;
  }

  while (v47 != v48);
  v65 = v90;
  if (!v49)
  {
    goto LABEL_58;
  }

  v97 = v49;
  v66 = v86;
  sub_100053240(v86, v90, &unk_100218500, &qword_10019C7D8);
  v67 = v89;
  sub_100053240(v66, v89, &unk_100218500, &qword_10019C7D8);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v98[0] = swift_slowAlloc();
    *v70 = 136643075;
    v71 = v87;
    sub_100053240(v65, v87, &unk_100218500, &qword_10019C7D8);
    v72 = type metadata accessor for URLRequest();
    if (sub_100008D0C(v71, 1, v72) == 1)
    {
      sub_10000F94C(v71, &unk_100218500, &qword_10019C7D8);
      v73 = 0;
      v74 = 0xE000000000000000;
    }

    else
    {
      v73 = URLRequest.debugDescription.getter();
      v74 = v76;
      (*(*(v72 - 8) + 8))(v71, v72);
    }

    sub_10000F94C(v90, &unk_100218500, &qword_10019C7D8);
    v77 = sub_100009684(v73, v74, v98);

    *(v70 + 4) = v77;
    *(v70 + 12) = 2085;
    v78 = v88;
    sub_100053240(v89, v88, &unk_100218500, &qword_10019C7D8);
    if (sub_100008D0C(v78, 1, v72) == 1)
    {
      sub_10000F94C(v78, &unk_100218500, &qword_10019C7D8);
      goto LABEL_65;
    }

    v79 = URLRequest.allHTTPHeaderFields.getter();
    (*(*(v72 - 8) + 8))(v78, v72);
    if (v79)
    {
      v80 = Dictionary.debugDescription.getter();
      v82 = v81;
    }

    else
    {
LABEL_65:
      v82 = 0xE200000000000000;
      v80 = 23899;
    }

    sub_10000F94C(v89, &unk_100218500, &qword_10019C7D8);
    v83 = sub_100009684(v80, v82, v98);

    *(v70 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v68, v69, "cache hit for request %{sensitive}s header: %{sensitive}s", v70, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000F94C(v67, &unk_100218500, &qword_10019C7D8);
    sub_10000F94C(v65, &unk_100218500, &qword_10019C7D8);
  }

  v75 = v97;
LABEL_68:
  v84 = *(a12 + qword_100232D38);
  *(a12 + qword_100232D38) = v75;

  *v91 = v75;
  return result;
}

void sub_1000F3558(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_1001092C8();
  v11 = a2[5];
  v12 = a2[6];
  sub_100007534(a2 + 2, v11);
  if ((*(v12 + 24))(v11, v12) >= v10)
  {
    if (qword_1002140D8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000964C(v17, qword_100232AF8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v20 = 136643075;
      *(v20 + 4) = sub_100009684(a4, a5, &v36);
      *(v20 + 12) = 2048;
      *(v20 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v18, v19, "caching '%{sensitive}s' with cost %lu", v20, 0x16u);
      sub_100007378(v21);
    }

    v22 = a2[5];
    v23 = a2[6];
    sub_100007534(a2 + 2, v22);
    LOBYTE(v23) = sub_1000569FC(v22, v23);
    v24 = a2[5];
    v25 = a2[6];
    sub_100007534(a2 + 2, v24);
    (*(v25 + 80))(a1, a4, a5, v24, v25);
    v26 = a2[7];
    sub_100046184(&unk_100217040, &qword_1001989F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100197F20;
    *(inited + 56) = &type metadata for UInt;
    *(inited + 64) = &protocol witness table for UInt;
    *(inited + 32) = v10;
    v28 = sub_100046184(&qword_100219120, &qword_10019E270);
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();

    v32 = sub_10007E180(v31, 3, "cost=%{signpost.description.attribute,public}llu", 48, 2, inited);
    v33 = *(a1 + 16);
    *(a1 + 16) = v32;

    if (v23)
    {
      sub_1000F1DF8("query cache no longer empty");
    }

    v34 = *(a3 + qword_100232D38);
    *(a3 + qword_100232D38) = a1;
  }

  else
  {
    sub_1000FDCDC(v10, 0);
    if (qword_1002140D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000964C(v13, qword_100232AF8);

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = v16;
      *v15 = 136643075;
      *(v15 + 4) = sub_100009684(a4, a5, &v36);
      *(v15 + 12) = 2048;
      *(v15 + 14) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v14, "NOT caching '%{sensitive}s' with cost %lu", v15, 0x16u);
      sub_100007378(v16);
    }

    else
    {
    }
  }
}

uint64_t sub_1000F39B4(void *a1)
{
  v1 = [a1 queryItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for URLQueryItem();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000F3AA0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for TopicCacheEntry()
{
  result = qword_100219DB0;
  if (!qword_100219DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F3B78()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1000F3BFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F3BFC()
{
  if (!qword_100219DC0)
  {
    type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100219DC0);
    }
  }
}

uint64_t sub_1000F3C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Date();
  v6 = sub_100003650(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result();
  v13 = sub_100003650(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v34 = v8;
    v35 = v5;
    v36 = a2;
    v37 = v2;
    v23 = *(v15 + 16);
    v22 = v15 + 16;
    v21 = v23;
    v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v38 = a1;
    v25 = a1 + v24;
    v26 = *(v22 + 56);
    v27 = 900;
    do
    {
      v21(v19, v25, v12);
      if (Apple_Parsec_Spotlight_V1alpha_Result.maxAgeSeconds.getter() < v27)
      {
        v27 = Apple_Parsec_Spotlight_V1alpha_Result.maxAgeSeconds.getter();
      }

      (*(v22 - 8))(v19, v12);
      v25 += v26;
      --v20;
    }

    while (v20);
    if (v27 > 0)
    {
      v28 = v39;
      Date.init()();
      v29 = v36;
      Date.addingTimeInterval(_:)();
      (*(v34 + 8))(v28, v35);
      result = type metadata accessor for TopicCacheEntry();
      *(v29 + *(result + 20)) = v38;
      return result;
    }

    sub_1000F3EC8();
    swift_allocError();
    v32 = 1;
  }

  else
  {

    sub_1000F3EC8();
    swift_allocError();
    v32 = 0;
  }

  *v31 = v32;
  return swift_willThrow();
}

unint64_t sub_1000F3EC8()
{
  result = qword_100219DF0;
  if (!qword_100219DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TopicCacheEntryError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000F3FFC()
{
  result = qword_100219DF8;
  if (!qword_100219DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100219DF8);
  }

  return result;
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  Lock.init()();
  return v0;
}

uint64_t Lock.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

void Lock.withLock<A>(_:)()
{
  sub_100008508();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

void Lock.withLockVoid(_:)()
{
  sub_100008508();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

uint64_t ConditionLock.__allocating_init(value:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ConditionLock.init(value:)(a1);
  return v5;
}

uint64_t ConditionLock.init(value:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 112);
  *&v2[v5] = swift_slowAlloc();
  v6 = *(v4 + 80);
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[*(*v2 + 96)], a1, v6);
  type metadata accessor for Lock();
  v8 = swift_allocObject();
  Lock.init()();
  *&v2[*(*v2 + 104)] = v8;
  LODWORD(v8) = pthread_cond_init(*&v2[*(*v2 + 112)], 0);
  result = (*(v7 + 8))(a1, v6);
  if (!v8)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t *ConditionLock.deinit()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 112));

  sub_1000037B0();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v3 + 96));
  sub_1000037B0();
  v5 = *(v0 + *(v4 + 104));

  return v0;
}

uint64_t ConditionLock.__deallocating_deinit()
{
  ConditionLock.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000F4420()
{
  sub_1000037B0();
  v2 = *(v0 + *(v1 + 104));
  return v3();
}

void ConditionLock.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  ConditionLock.lock()();
  sub_1000037B0();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v5]);
  ConditionLock.unlock()();
}

uint64_t ConditionLock.lock(whenValue:)()
{
  v1 = v0;
  sub_100005D28();
  v22 = v3;
  v23 = v2;
  v5 = *(v4 + 80);
  sub_1000043D0();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  ConditionLock.lock()();
  sub_100005D28();
  v14 = *(v13 + 96);
  v16 = *(v15 + 112);
  v17 = *(v15 + 104);
  swift_beginAccess();
  v18 = *(v7 + 16);
  while (1)
  {
    v18(v12, v1 + v14, v5);
    v19 = sub_100006B58(v22);
    result = (*(v7 + 8))(v12, v5);
    if (v19)
    {
      break;
    }

    result = pthread_cond_wait(*(v1 + v16), *(*(v1 + v17) + 16));
    if (result)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t ConditionLock.lock(whenValue:timeoutSeconds:)(uint64_t a1, double a2)
{
  v34 = a1;
  sub_100005D28();
  v33 = v4;
  v6 = *(v5 + 80);
  sub_1000043D0();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v11);
  v14 = &v32 - v13;
  if (v12 < 0.0)
  {
    __break(1u);
    goto LABEL_14;
  }

  ConditionLock.lock()();
  v15 = a2 * 1000000000.0;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v39.tv_sec = 0;
  v39.tv_usec = 0;
  gettimeofday(&v39, 0);
  v16 = 1000 * v39.tv_usec;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (__OFADD__(v39.tv_sec, v18 / 1000000000))
  {
    goto LABEL_18;
  }

  v38.tv_sec = v39.tv_sec + v18 / 1000000000;
  v38.tv_nsec = v18 % 1000000000;
  v19 = *v2;
  v20 = *(*v2 + 96);
  v32 = *(*v2 + 112);
  v21 = *(v19 + 104);
  swift_beginAccess();
  v22 = v8 + 16;
  v23 = *(v8 + 16);
  v24 = (v22 - 8);
  do
  {
    v23(v14, &v2[v20], v6);
    v25 = sub_100006B58(v33);
    (*v24)(v14, v6);
    if (v25)
    {
      return v25 & 1;
    }

    v26 = pthread_cond_timedwait(*&v2[v32], *(*&v2[v21] + 16), &v38);
  }

  while (!v26);
  if (v26 == 60)
  {
    ConditionLock.unlock()();
    return v25 & 1;
  }

  v36 = 0;
  v37 = 0xE000000000000000;
  v28 = v26;
  _StringGuts.grow(_:)(51);
  v29._countAndFlagsBits = 0x6520746867756163;
  v29._object = 0xED000020726F7272;
  String.append(_:)(v29);
  v35 = v28;
  v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v30);

  v31._object = 0x80000001001B0DA0;
  v31._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v31);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ConditionLock.unlock(withValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  ConditionLock.unlock()();
  sub_1000037B0();
  result = pthread_cond_broadcast(*(v1 + *(v5 + 112)));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F4AC8(uint64_t a1)
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

uint64_t sub_1000F4B90(uint64_t a1, uint64_t *a2)
{
  v27 = a2;
  v33 = type metadata accessor for Trialpb_TrialExperiment();
  v3 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v31 = v4;
  v32 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v29 = a1;
  v30 = v4 + 16;
  v28 = (v4 + 8);

  v12 = 0;
  if (v9)
  {
LABEL_8:
    while (1)
    {
      v14 = *(v31 + 72);
      v15 = *(v31 + 16);
      v15(v32, *(v29 + 48) + v14 * (__clz(__rbit64(v9)) | (v12 << 6)), v33);
      if (Trialpb_TrialExperiment.experimentNamespace.getter() == 0x4145535F49524953 && v16 == 0xEF4142535F484352)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_15;
      }

LABEL_20:
      v9 &= v9 - 1;
      result = (*v28)(v32, v33);
      if (!v9)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    v19 = v27;
    v20 = *v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10006D050(0, *(v20 + 16) + 1, 1, v20);
      v20 = v24;
      *v27 = v24;
    }

    v23 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_10006D050(v22 > 1, v23 + 1, 1, v20);
      v20 = v25;
      *v27 = v25;
    }

    *(v20 + 16) = v23 + 1;
    v15((v20 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + v23 * v14), v32, v33);
    goto LABEL_20;
  }

LABEL_4:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000F4E58()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 6);
  sub_10000B880(&v13, &v1[4]);
  os_unfair_lock_unlock(v1 + 6);
  v2 = v13;
  if (v13 >= 2)
  {
    v7 = qword_1002140E8;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000964C(v8, qword_100232B28);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Found state for client identifier", v11, 2u);
    }

    sub_100016250(v2);
  }

  else
  {
    sub_100016250(v13);
    if (qword_1002140E8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000964C(v3, qword_100232B28);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Client state fetch failed", v6, 2u);
    }

    return 0;
  }

  return v2;
}

void sub_1000F5048(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v388 = a3;
  v373 = type metadata accessor for Apple_Parsec_Search_V2_TransportationMode();
  v8 = sub_100003650(v373);
  v372 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v12);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v13);
  sub_100009934();
  sub_10000549C(v14);
  v15 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  v16 = sub_100005490(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_100003664();
  sub_100007C68(v20 - v19);
  v21 = sub_100046184(&qword_100217B90, &unk_10019E900);
  v22 = sub_100005490(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  sub_10000549C(&v367 - v25);
  v376 = type metadata accessor for Trialpb_TrialExperiment();
  v26 = sub_100003650(v376);
  v369 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_100003664();
  v32 = sub_10000549C(v31 - v30);
  v392 = type metadata accessor for SessionTokens(v32);
  v33 = sub_1000036B8(v392);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v38 = &v367 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v39);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v40);
  sub_100009934();
  sub_100007C68(v41);
  v42 = sub_100046184(&qword_100219F20, &qword_10019ED28);
  v43 = sub_100005490(v42);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v46);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v47);
  sub_100009934();
  sub_10000549C(v48);
  v396 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions();
  v49 = sub_100003650(v396);
  v391 = v50;
  v52 = *(v51 + 64);
  __chkstk_darwin(v49);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v53);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v54);
  sub_100009934();
  sub_100007C68(v55);
  v56 = sub_100046184(&qword_100219F28, &qword_10019ED30);
  v57 = sub_100005490(v56);
  v59 = *(v58 + 64);
  __chkstk_darwin(v57);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v60);
  sub_100005924();
  v393 = v61;
  __chkstk_darwin(v62);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v63);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v64);
  sub_100009934();
  sub_10000549C(v65);
  v66 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.HourFormat();
  v67 = sub_100003650(v66);
  v403 = v68;
  v404 = v67;
  v70 = *(v69 + 64);
  __chkstk_darwin(v67);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v71);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v72);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v73);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v74);
  sub_100009934();
  sub_100007C68(v75);
  v76 = sub_100046184(&qword_100219F30, &qword_10019ED38);
  v77 = sub_100005490(v76);
  v79 = *(v78 + 64);
  __chkstk_darwin(v77);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v80);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v81);
  sub_100005924();
  sub_100004144();
  v83 = __chkstk_darwin(v82);
  v85 = (&v367 - v84);
  __chkstk_darwin(v83);
  sub_10000CCF0();
  v400 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  v86 = sub_100003650(v400);
  v395 = v87;
  v89 = *(v88 + 64);
  __chkstk_darwin(v86);
  sub_100003838();
  sub_100004144();
  __chkstk_darwin(v90);
  sub_100005924();
  sub_100004144();
  __chkstk_darwin(v91);
  sub_100005924();
  sub_100004144();
  v93 = __chkstk_darwin(v92);
  v95 = &v367 - v94;
  __chkstk_darwin(v93);
  sub_100005924();
  v394 = v96;
  __chkstk_darwin(v97);
  v99 = &v367 - v98;
  v100 = type metadata accessor for UUID();
  v101 = sub_100003650(v100);
  v398 = v102;
  v399 = v101;
  v104 = *(v103 + 64);
  __chkstk_darwin(v101);
  sub_100003664();
  v397 = v106 - v105;
  v107 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem();
  v108 = sub_100005490(v107);
  v110 = *(v109 + 64);
  __chkstk_darwin(v108);
  sub_100003664();
  v402 = v112 - v111;
  v113 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit();
  v114 = sub_100005490(v113);
  v116 = *(v115 + 64);
  __chkstk_darwin(v114);
  sub_100003664();
  v401 = v118 - v117;
  Apple_Parsec_Search_PegasusQueryContext.init()();
  v405 = a2;
  sub_100084494();
  sub_100007534(&v408, v410);
  dispatch thunk of NetworkAuthTokenProviding.encryptedToken.getter();
  v407 = a4;
  Apple_Parsec_Search_PegasusQueryContext.encryptedAuthToken.setter();
  sub_100007378(&v408);
  v119 = _swiftEmptyArrayStorage;
  switch(a1)
  {
    case 1uLL:
      v164 = objc_allocWithZone(PARSessionConfiguration);
      v165 = sub_1000F839C(0x697261666153, 0xE600000000000000, 0x312F697261666153, 0xE800000000000000);
      sub_100007608();
      v166 = sub_1000F4E58();
      swift_unknownObjectRelease();
      if (v166)
      {
        v167 = *(v166 + 64);
        swift_unknownObjectRetain();
        sub_1000E75A0();
        swift_unknownObjectRelease();
        sub_10001AE20();
        v169 = *&v38[v168];

        sub_100056990(v38);
        if (v169)
        {
          sub_1000669EC();
        }

        v119 = v407;
        v314 = v398;
        Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.setter();
        v315 = *(v166 + 64);
        swift_unknownObjectRetain();
        sub_1000E7480();
        swift_unknownObjectRelease();
        UUID.uuidString.getter();
        a1 = v316;
        v317 = *(v314 + 8);
        v318 = sub_10001BD4C();
        v319(v318);
        sub_10000BE80();
        Apple_Parsec_Search_PegasusQueryContext.userGuid.setter();
      }

      v320 = v405;
      sub_10002044C(&v408);
      sub_1000078F8();
      Apple_Parsec_Search_PegasusQueryContext.searchOptOut.setter();
      sub_100007378(&v408);
      v321 = sub_1000F7A48();
      sub_100006748(v321, v322);
      Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.setter();
      v323 = type metadata accessor for PegasusContext(0);
      if (sub_10000AB74(v323))
      {
        sub_100023F78(v324);
      }

      else
      {
        sub_100007D08();
      }

      v325 = v400;
      v327 = v403;
      v326 = v404;
      v328 = v396;

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (v119[1])
      {
        sub_1000F8D40();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      if (v119[10])
      {
        v329 = v119[9];
        a1 = v119[10];
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
      sub_10000FEA8();

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      if (v119[8])
      {
        sub_10000FFC8();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      sub_1000135E0();
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.measurementSystem.setter();
      sub_1000189CC();
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
      sub_10001BE94(v409);
      sub_1000F73F0(v330);
      v331 = sub_10000F268();
      sub_10000C944(v331, v332, v326);
      if (v139)
      {
        v333 = *(v327 + 104);
        v336 = v327 + 104;
        v333(v383, enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.unknown(_:), v326);
        v334 = sub_10000F268();
        sub_10000C944(v334, v335, v326);
        if (!v139)
        {
          sub_10000B240(a1, &qword_100219F28, &qword_10019ED30);
        }
      }

      else
      {
        v337 = *(v327 + 32);
        v336 = v327 + 32;
        v338 = sub_10000BE80();
        v339(v338);
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter();
      v340 = v381;
      sub_1000F7690(v381);
      sub_10000C944(v340, 1, v325);
      if (v139)
      {
        sub_10000B240(v340, &qword_100219F30, &qword_10019ED38);
      }

      else
      {
        v341 = v395;
        v342 = *(v395 + 32);
        v343 = sub_1000F8D20();
        v344(v343);
        v345 = sub_10000E1E4(v341);
        v346(v345, v336, v325);
        sub_100008098();
        Apple_Parsec_Search_PegasusQueryContext.location.setter();
        v347 = *(v341 + 8);
        a1 = (v341 + 8);
        v348 = sub_10001BD4C();
        v349(v348);
      }

      if (*(v119 + v320[35]) != 6)
      {
        sub_100017CB4(&v393);
        sub_100067238(v350, v351);
        v352 = v372;
        v353 = v371;
        a1 = v373;
        (*(v372 + 32))(v371, v119, v373);
        v354 = *(v352 + 16);
        v355 = sub_10001AC58();
        v356(v355, v353, a1);
        sub_100008098();
        Apple_Parsec_Search_PegasusQueryContext.transportationMode.setter();
        (*(v352 + 8))(v353, a1);
      }

      v357 = *(v119 + v320[31]);
      if (v357 == 2 || (v357 & 1) == 0)
      {
        v358 = *(v119 + v320[32]);
      }

      Apple_Parsec_Search_PegasusQueryContext.managedDevice.setter();
      if (v119[5])
      {
        sub_10000FF3C();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      sub_10001BE94(&v412);
      sub_1000F7564(v359);
      v360 = sub_10000F268();
      sub_10000C944(v360, v361, v328);
      if (v139)
      {
        sub_100017CB4(&v411);
        Apple_Parsec_Search_V2_Subscriptions.init()();
        v362 = sub_10000F268();
        sub_10000C944(v362, v363, v328);
        if (!v139)
        {
          sub_10000B240(a1, &qword_100219F20, &qword_10019ED28);
        }
      }

      else
      {
        sub_100007730();
        v364 = sub_10000BE80();
        v365(v364);
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.subscriptions.setter();
      if (sub_100007AA4())
      {
        sub_100012658(v366);
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter();
      if (qword_100214168 != -1)
      {
        sub_100006028();
      }

      sub_100015B80();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();

      return;
    case 2uLL:
      v170 = type metadata accessor for PegasusContext(0);
      if (sub_10000AB74(v170))
      {
        sub_100023F78(v171);
      }

      else
      {
        sub_100007D08();
      }

      v288 = v404;
      v289 = v400;
      v290 = v403;

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (_swiftEmptyArrayStorage[1])
      {
        sub_1000F8D40();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      sub_10000FEA8();

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      if (_swiftEmptyArrayStorage[5])
      {
        sub_10000FF3C();
      }

      else
      {
        sub_100007D08();
      }

      v291 = v380;

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      if (_swiftEmptyArrayStorage[8])
      {
        sub_10000FFC8();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      if (sub_100007AA4())
      {
        sub_100023F78(v292);
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter();
      sub_1000189CC();
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
      sub_1000135E0();
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.measurementSystem.setter();
      sub_100014C74();
      if (qword_100214168 != -1)
      {
        sub_100006028();
      }

      sub_100015B80();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();
      sub_10002044C(&v408);
      v293 = sub_1000078F8();
      sub_100014988(v293);
      Apple_Parsec_Search_PegasusQueryContext.searchOptOut.setter();
      sub_1000F73F0(v291);
      sub_10000C944(v291, 1, v288);
      if (v139)
      {
        v294 = *(v290 + 104);
        v295 = v290 + 104;
        v297 = v379;
        v294(v379, enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.unknown(_:), v288);
        sub_10000C944(v291, 1, v288);
        if (!v139)
        {
          sub_10000B240(v291, &qword_100219F28, &qword_10019ED30);
        }
      }

      else
      {
        v296 = *(v290 + 32);
        v295 = v290 + 32;
        v297 = v379;
        v296(v379, v291, v288);
      }

      Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter();
      v298 = v378;
      sub_1000F7690(v378);
      sub_10000C944(v298, 1, v289);
      v300 = v397;
      v299 = v398;
      if (v139)
      {
        sub_10000B240(v298, &qword_100219F30, &qword_10019ED38);
      }

      else
      {
        sub_100019078();
        v301 = sub_1000F8D20();
        v302(v301);
        v303 = sub_10000E1E4(v297);
        v304(v303, v295, v289);
        sub_100008098();
        Apple_Parsec_Search_PegasusQueryContext.location.setter();
        v305 = *(v297 + 8);
        v306 = sub_10001BD4C();
        v307(v306);
      }

      sub_1000844F0();
      sub_1000E7480();
      swift_unknownObjectRelease();
      UUID.uuidString.getter();
      sub_1000126F0();
      (*(v299 + 8))(v300, v399);
      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.userGuid.setter();
      return;
    case 3uLL:
    case 0x14uLL:
    case 0x16uLL:
      sub_10008487C();
      v120 = sub_10001E3CC();

      if (v120)
      {
        sub_1000669EC();
      }

      v123 = v406;
      v124 = v404;
      v125 = v393;
      sub_1000F8D14();
      Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.setter();
      v126 = type metadata accessor for PegasusContext(0);
      v127 = *(v123 + v126[34]);
      Apple_Parsec_Search_PegasusQueryContext.hsEnabled.setter();
      v128 = (v123 + v126[19]);
      if (v128[1])
      {
        sub_1000F8D34(v128);
      }

      else
      {
        sub_100009984();
      }

      sub_100006FB4();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (v123[1])
      {
        v129 = *v123;
        v130 = v123[1];
      }

      else
      {
        sub_100009984();
      }

      sub_100006FB4();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      v131 = (v123 + v126[27]);
      if (v131[1])
      {
        sub_1000F8D34(v131);
      }

      else
      {
        sub_100009984();
      }

      sub_100006FB4();
      Apple_Parsec_Search_PegasusQueryContext.sil.setter();
      sub_100066FC0(v123[14], v123[15]);
      sub_1000F8D14();
      Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
      if (v123[10])
      {
        v132 = v123[9];
        v133 = v123[10];
      }

      else
      {
        sub_100009984();
      }

      sub_100006FB4();
      Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
      sub_100067090(v123[2], v123[3]);
      sub_1000F8D14();
      Apple_Parsec_Search_PegasusQueryContext.measurementSystem.setter();
      if (qword_100214168 != -1)
      {
        sub_100006028();
      }

      Apple_Parsec_Search_PegasusQueryContext.internalBuild.setter();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();
      if (v123[11])
      {
        v134 = v123[11];
      }

      sub_1000F8D14();
      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      if (v123[8])
      {
        v135 = v123[7];
        v136 = v123[8];
      }

      else
      {
        sub_100009984();
      }

      sub_100006FB4();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      sub_1000F73F0(v125);
      v137 = sub_10000F268();
      sub_10000C944(v137, v138, v124);
      if (v139)
      {
        v140 = *(v403 + 104);
        v141 = sub_10001AC58();
        v142(v141);
        v143 = sub_10000F268();
        sub_10000C944(v143, v144, v124);
        if (!v139)
        {
          sub_10000B240(v125, &qword_100219F28, &qword_10019ED30);
        }
      }

      else
      {
        v145 = *(v403 + 32);
        v146 = sub_10000BE80();
        v147(v146);
      }

      sub_1000F8D14();
      Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter();
      if (v123[5])
      {
        v148 = v123[4];
        v149 = v123[5];
      }

      else
      {
        sub_100007D08();
      }

      sub_10000BE80();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      v150 = sub_1000F7A48();
      sub_100006748(v150, v151);
      Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.setter();
      sub_1000848E0();
      v152 = *sub_100007534(&v408, v410);
      sub_1000B2EF8();
      sub_100007378(&v408);
      sub_10000BE80();
      Apple_Parsec_Search_PegasusQueryContext.ampBaselineExperimentMetadata.setter();
      v153 = (v123 + v126[26]);
      if (v153[1])
      {
        sub_100012658(v153);
      }

      else
      {
        sub_100008A5C();
      }

      Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter();
      static ConfigurationContext.modelNumber.getter();
      Apple_Parsec_Search_PegasusQueryContext.deviceModel.setter();
      v154 = ClientType.rawValue.getter();
      if (v154 == ClientType.rawValue.getter())
      {
        goto LABEL_36;
      }

      return;
    case 5uLL:
LABEL_36:
      sub_10002044C(&v408);
      v155 = sub_1000078F8();
      sub_100014988(v155);
      Apple_Parsec_Search_PegasusQueryContext.searchOptOut.setter();
      return;
    case 6uLL:
      v162 = type metadata accessor for PegasusContext(0);
      if (sub_10000AEF4(v162))
      {
        sub_100012658(v163);
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (a1[5])
      {
        v281 = a1[4];
        v282 = a1[5];
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      if (a1[11])
      {
        v283 = a1[11];
      }

      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      if (a1[1])
      {
        sub_10002DF4C();
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      if (a1[8])
      {
        v284 = a1[7];
        v285 = a1[8];
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      if (a1[10])
      {
        v286 = a1[9];
        v287 = a1[10];
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
      return;
    case 7uLL:
    case 8uLL:
      v121 = type metadata accessor for PegasusContext(0);
      if (sub_10000AB74(v121))
      {
        sub_100023F78(v122);
      }

      else
      {
        sub_100007D08();
      }

      v178 = v400;

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (_swiftEmptyArrayStorage[1])
      {
        sub_1000F8D40();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      sub_10000FEA8();

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      if (_swiftEmptyArrayStorage[5])
      {
        sub_10000FF3C();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      if (_swiftEmptyArrayStorage[8])
      {
        sub_10000FFC8();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      if (sub_100007AA4())
      {
        sub_100023F78(v179);
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter();
      sub_1000189CC();
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
      sub_1000135E0();
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.measurementSystem.setter();
      sub_100014C74();
      if (qword_100214168 != -1)
      {
        sub_100006028();
      }

      sub_100015B80();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();
      sub_1000844F0();
      v180 = v397;
      sub_1000E7480();
      swift_unknownObjectRelease();
      UUID.uuidString.getter();
      sub_1000126F0();
      (*(v398 + 8))(v180, v399);
      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.userGuid.setter();
      sub_1000F7690(v4);
      sub_10000C944(v4, 1, v178);
      if (v139)
      {
        sub_10000B240(v4, &qword_100219F30, &qword_10019ED38);
      }

      else
      {
        sub_100019078();
        v181(v99, v4, v178);
        v182 = sub_10000E1E4(v85);
        v183(v182, v99, v178);
        sub_100008098();
        Apple_Parsec_Search_PegasusQueryContext.location.setter();
        v85[1](v99, v178);
      }

      v184 = v390;
      v185 = v389;
      sub_1000F73F0(v389);
      v186 = sub_100009940();
      v187 = v404;
      sub_10000C944(v186, v188, v404);
      if (v139)
      {
        v189 = *(v403 + 104);
        v190 = sub_10001AC58();
        v191(v190);
        v192 = sub_100009940();
        sub_10000C944(v192, v193, v187);
        if (!v139)
        {
          sub_10000B240(v185, &qword_100219F28, &qword_10019ED30);
        }
      }

      else
      {
        v194 = *(v403 + 32);
        v195 = sub_10001AC58();
        v196(v195, v185, v187);
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter();
      sub_1000F7564(v184);
      v197 = sub_10000F268();
      v198 = v396;
      sub_10000C944(v197, v199, v396);
      if (v139)
      {
        sub_100017CB4(&v413);
        Apple_Parsec_Search_V2_Subscriptions.init()();
        v200 = sub_10000F268();
        sub_10000C944(v200, v201, v198);
        if (!v139)
        {
          sub_10000B240(v184, &qword_100219F20, &qword_10019ED28);
        }
      }

      else
      {
        sub_100007730();
        v202 = sub_10000BE80();
        v203(v202);
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.subscriptions.setter();
      v204 = sub_1000F7A48();
      sub_100006748(v204, v205);
      Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.setter();
      return;
    case 0xAuLL:
      a1 = v406;
      if (v406[10])
      {
        v176 = v406[9];
        v177 = v406[10];
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
      v175 = (a1 + *(type metadata accessor for PegasusContext(0) + 76));
      if (!v175[1])
      {
        goto LABEL_212;
      }

      goto LABEL_211;
    case 0xDuLL:
      v158 = type metadata accessor for PegasusContext(0);
      v159 = v406;
      v160 = (v406 + v158[19]);
      if (v160[1])
      {
        sub_1000F8D34(v160);
      }

      else
      {
        sub_100009984();
      }

      v230 = v400;

      sub_10000B0C0();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (v159[1])
      {
        v231 = *v159;
        v232 = v159[1];
      }

      else
      {
        sub_100009984();
      }

      sub_10000B0C0();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      if (v159[11])
      {
        v233 = v159[11];
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      if (v159[5])
      {
        v234 = v159[4];
        v235 = v159[5];
      }

      else
      {
        sub_100009984();
      }

      v236 = v384;

      sub_10000B0C0();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      if (v159[8])
      {
        v237 = v159[7];
        v238 = v159[8];
      }

      else
      {
        sub_100009984();
      }

      sub_10000B0C0();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      v239 = (v159 + v158[26]);
      if (v239[1])
      {
        sub_1000F8D34(v239);
      }

      else
      {
        sub_100009984();
      }

      sub_10000B0C0();
      Apple_Parsec_Search_PegasusQueryContext.skuRegion.setter();
      sub_100066FC0(v159[14], v159[15]);
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.setter();
      sub_100067090(v159[2], v159[3]);
      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.measurementSystem.setter();
      v240 = *(v159 + v158[31]);
      Apple_Parsec_Search_PegasusQueryContext.managedDevice.setter();
      if (qword_100214168 != -1)
      {
        sub_100006028();
      }

      sub_100015B80();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();
      sub_10002044C(&v408);
      sub_1000078F8();
      sub_100007378(&v408);
      Apple_Parsec_Search_PegasusQueryContext.searchOptOut.setter();
      sub_1000844F0();
      v241 = v397;
      sub_1000E7480();
      swift_unknownObjectRelease();
      UUID.uuidString.getter();
      (*(v398 + 8))(v241, v399);
      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.userGuid.setter();
      sub_1000F7690(v85);
      v242 = sub_100009940();
      sub_10000C944(v242, v243, v230);
      if (v139)
      {
        sub_10000B240(v85, &qword_100219F30, &qword_10019ED38);
      }

      else
      {
        v244 = v395;
        (*(v395 + 32))(v95, v85, v230);
        (*(v244 + 16))(v394, v95, v230);
        Apple_Parsec_Search_PegasusQueryContext.location.setter();
        (*(v244 + 8))(v95, v230);
      }

      v245 = v403;
      v246 = v396;
      v247 = v386;
      sub_1000F73F0(v236);
      v248 = v404;
      sub_10000C944(v236, 1, v404);
      if (v139)
      {
        (*(v245 + 104))(v382, enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.unknown(_:), v248);
        sub_10000C944(v236, 1, v248);
        if (!v139)
        {
          sub_10000B240(v236, &qword_100219F28, &qword_10019ED30);
        }
      }

      else
      {
        (*(v245 + 32))(v382, v236, v248);
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.hourFormat.setter();
      sub_1000F7564(v247);
      sub_10000C944(v247, 1, v246);
      if (v139)
      {
        sub_100017CB4(&v410);
        Apple_Parsec_Search_V2_Subscriptions.init()();
        sub_10000C944(v247, 1, v246);
        if (!v139)
        {
          sub_10000B240(v247, &qword_100219F20, &qword_10019ED28);
        }
      }

      else
      {
        sub_100007730();
        v249 = sub_10001AC58();
        v250(v249, v247, v246);
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.subscriptions.setter();
      v251 = sub_1000F7A48();
      sub_100006748(v251, v252);
      Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.setter();
      v253 = objc_allocWithZone(PARSessionConfiguration);
      v254 = sub_1000F839C(0xD000000000000018, 0x80000001001ABD40, 0xD000000000000014, 0x80000001001B0E00);
      sub_100007608();
      v255 = sub_1000F4E58();
      swift_unknownObjectRelease();
      if (!v255)
      {

        return;
      }

      v256 = *(v255 + 64);
      swift_unknownObjectRetain();

      v257 = v374;
      v258 = v256;
      sub_1000E75A0();
      swift_unknownObjectRelease();
      v259 = v377;
      sub_10001F324(v257, v377);
      sub_10001AE20();
      if (*(v259 + v260))
      {
        sub_100017CB4(&v399);
        sub_100066648(v261, v262);
        v263 = v376;
        sub_10000C944(v256, 1, v376);
        if (!v139)
        {
          v264 = v369;
          v265 = v368;
          (*(v369 + 32))(v368, v256, v263);
          sub_100046184(&qword_100219BF0, &qword_1001A0710);
          v266 = *(v264 + 72);
          v267 = (*(v264 + 80) + 32) & ~*(v264 + 80);
          v268 = swift_allocObject();
          *(v268 + 16) = xmmword_100197F20;
          (*(v264 + 16))(v268 + v267, v265, v263);
          sub_100008098();
          Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.setter();
          if (qword_1002140E8 != -1)
          {
            sub_100005E54();
          }

          v269 = type metadata accessor for Logger();
          sub_10000964C(v269, qword_100232B28);
          v270 = Logger.logObject.getter();
          v271 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v270, v271))
          {
            *swift_slowAlloc() = 0;
            sub_1000079DC(&_mh_execute_header, v272, v273, "Found valid trial experiment Identifiers");
          }

          v274 = *(v264 + 8);
          v275 = sub_10001BD4C();
          v276(v275);
          goto LABEL_223;
        }
      }

      else
      {
        v258 = v375;
        sub_1000051C0(v375, 1, 1, v376);
      }

      sub_10000B240(v258, &qword_100217B90, &unk_10019E900);
      if (qword_1002140E8 != -1)
      {
        sub_100005E54();
      }

      v309 = type metadata accessor for Logger();
      sub_10000964C(v309, qword_100232B28);
      v310 = Logger.logObject.getter();
      v311 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v310, v311))
      {
        *swift_slowAlloc() = 0;
        sub_1000079DC(&_mh_execute_header, v312, v313, "Could not find trial experiment Identifiers");
      }

LABEL_223:
      sub_100056990(v259);
      return;
    case 0x13uLL:
      if (!v406[1])
      {
        goto LABEL_215;
      }

      sub_100012658(v406);
      goto LABEL_216;
    case 0x15uLL:
      v161 = v406;
      if (v406[1])
      {
        sub_10002DF4C();
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      v277 = (v161 + *(type metadata accessor for PegasusContext(0) + 76));
      if (v277[1])
      {
        sub_100012658(v277);
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (v161[10])
      {
        v278 = v161[9];
        v279 = v161[10];
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
      v408 = _swiftEmptyArrayStorage;
      sub_10001E0F8();
      v280 = sub_10001E3CC();

      if (v280)
      {
        sub_1000F4B90(v280, &v408);
      }

      Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.setter();
      return;
    case 0x17uLL:
      v156 = type metadata accessor for PegasusContext(0);
      if (sub_10000AB74(v156))
      {
        sub_100023F78(v157);
      }

      else
      {
        sub_100007D08();
      }

      v207 = v399;
      v206 = v400;
      v208 = v397;

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (_swiftEmptyArrayStorage[1])
      {
        sub_1000F8D40();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      if (_swiftEmptyArrayStorage[5])
      {
        sub_10000FF3C();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.storeFront.setter();
      if (_swiftEmptyArrayStorage[8])
      {
        sub_10000FFC8();
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.timeZone.setter();
      if (qword_100214168 != -1)
      {
        sub_100006028();
      }

      sub_100015B80();
      if (_swiftEmptyArrayStorage[10])
      {
        v209 = _swiftEmptyArrayStorage[9];
        v210 = _swiftEmptyArrayStorage[10];
      }

      else
      {
        sub_100007D08();
      }

      sub_10000851C();
      Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.setter();
      sub_100014C74();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();
      sub_10002044C(&v408);
      v211 = sub_1000078F8();
      sub_100014988(v211);
      Apple_Parsec_Search_PegasusQueryContext.searchOptOut.setter();
      sub_1000844F0();
      sub_1000E7480();
      swift_unknownObjectRelease();
      UUID.uuidString.getter();
      sub_1000126F0();
      (*(v398 + 8))(v208, v207);
      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.userGuid.setter();
      sub_1000844F0();
      v212 = v385;
      sub_100030008(v385);
      swift_unknownObjectRelease();
      sub_10001AE20();
      v214 = *(v212 + v213);

      sub_100056990(v212);
      if (v214)
      {
        sub_1000669EC();
      }

      sub_100008098();
      Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.setter();
      v215 = sub_1000F7A48();
      sub_100006748(v215, v216);
      Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.setter();
      v217 = sub_10000FEA8();
      if (v139)
      {
        v218 = _swiftEmptyArrayStorage;
      }

      else
      {
        v218 = v217;
      }

      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      sub_10001BE94(&v403);
      sub_1000F7690(v219);
      v220 = sub_10000F268();
      sub_10000C944(v220, v221, v206);
      if (v139)
      {
        sub_10000B240(_swiftEmptyArrayStorage, &qword_100219F30, &qword_10019ED38);
      }

      else
      {
        sub_100019078();
        v222 = v370;
        v223(v370, _swiftEmptyArrayStorage, v206);
        v224 = sub_10000E1E4(v218);
        v225(v224, v222, v206);
        sub_100008098();
        Apple_Parsec_Search_PegasusQueryContext.location.setter();
        (v218[1])(v222, v206);
      }

      v226 = v387;
      if (_swiftEmptyArrayStorage[17])
      {
        v227 = _swiftEmptyArrayStorage[16];
        v228 = _swiftEmptyArrayStorage[17];
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.region.setter();
      v229 = swift_unknownObjectRetain();
      sub_1000F7A74(v229, v226);
      Apple_Parsec_Search_PegasusQueryContext.marketplaceInfo.setter();
      return;
    case 0x1AuLL:
      if (qword_100214168 != -1)
      {
        sub_100006028();
      }

      Apple_Parsec_Search_PegasusQueryContext.internalBuild.setter();
      Apple_Parsec_Search_PegasusQueryContext.seedBuild.setter();
      v172 = type metadata accessor for PegasusContext(0);
      if (sub_10000AEF4(v172))
      {
        sub_100012658(v173);
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (a1[1])
      {
        sub_10002DF4C();
      }

      else
      {
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      if (a1[11])
      {
        v308 = a1[11];
      }

      Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.setter();
      return;
    case 0x1DuLL:
      v174 = type metadata accessor for PegasusContext(0);
      if (sub_10000AEF4(v174))
      {
LABEL_211:
        sub_100012658(v175);
      }

      else
      {
LABEL_212:
        sub_100008A5C();
      }

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.countryCode.setter();
      if (a1[1])
      {
        sub_10002DF4C();
      }

      else
      {
LABEL_215:
        sub_100008A5C();
      }

LABEL_216:

      sub_100006B78();
      Apple_Parsec_Search_PegasusQueryContext.locale.setter();
      return;
    default:
      return;
  }
}

uint64_t sub_1000F73F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000AA4C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, kCFPreferencesAnyApplication, 0);

  if (AppBooleanValue)
  {
    v5 = &enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.twentyFour(_:);
LABEL_5:
    v8 = *v5;
    v9 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.HourFormat();
    sub_1000036B8(v9);
    (*(v10 + 104))(a1, v8, v9);
    v11 = sub_10001BD3C();
    v14 = v9;
    goto LABEL_6;
  }

  v6 = sub_10000AA4C();
  v7 = CFPreferencesGetAppBooleanValue(v6, kCFPreferencesAnyApplication, 0);

  if (v7)
  {
    v5 = &enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.twelve(_:);
    goto LABEL_5;
  }

  v16 = *(v1 + 48);
  if (v16 == 2)
  {
    type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.HourFormat();
    v11 = sub_100009940();
    v13 = 1;
  }

  else
  {
    v17 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.HourFormat();
    sub_1000036B8(v17);
    v19 = &enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.twentyFour(_:);
    if ((v16 & 1) == 0)
    {
      v19 = &enum case for Apple_Parsec_Search_PegasusQueryContext.HourFormat.twelve(_:);
    }

    (*(v18 + 104))(a1, *v19, v17);
    v11 = sub_10001BD3C();
    v14 = v17;
  }

LABEL_6:

  return sub_1000051C0(v11, v12, v13, v14);
}

uint64_t sub_1000F7564@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = sub_100003650(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100003664();
  v11 = v10 - v9;
  if (*(v1 + 104) && (v12 = *(v1 + 96), static String.Encoding.utf8.getter(), String.data(using:allowLossyConversion:)(), v14 = v13, (*(v6 + 8))(v11, v3), v14 >> 60 != 15))
  {
    Apple_Parsec_Search_V2_Subscriptions.init()();
    Apple_Parsec_Search_V2_Subscriptions.subscriptionJson.setter();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = type metadata accessor for Apple_Parsec_Search_V2_Subscriptions();
  return sub_1000051C0(a1, v15, 1, v16);
}

uint64_t sub_1000F7690@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for Apple_Parsec_Search_V2_RevGeoResolution();
  v6 = sub_100003650(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v6);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  sub_10000CCF0();
  v14 = type metadata accessor for Apple_Parsec_Search_V2_Location.Source();
  v15 = sub_100005490(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003664();
  v20 = v19 - v18;
  v21 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  v22 = sub_100003650(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_100003664();
  v29 = v28 - v27;
  v30 = *(v3 + 144);
  if (v30)
  {
    v53 = v13;
    v54 = v5;
    v55 = a1;
    v31 = v30;
    Apple_Parsec_Search_V2_Location.init()();
    [v31 horizontalAccuracy];
    Apple_Parsec_Search_V2_Location.horizontalAccuracy.setter();
    [v31 coordinate];
    Apple_Parsec_Search_V2_Location.latitude.setter();
    [v31 coordinate];
    Apple_Parsec_Search_V2_Location.longitude.setter();
    sub_1000FA7F4(v20);
    Apple_Parsec_Search_V2_Location.source.setter();
    v56[3] = &unk_1001F8E80;
    v56[4] = sub_1000772F0();
    LOBYTE(v56[0]) = 0;
    v32 = isFeatureEnabled(_:)();
    sub_100007378(v56);
    if ((v32 & 1) != 0 && (v33 = *(v3 + *(type metadata accessor for PegasusContext(0) + 64))) != 0)
    {
      v34 = v33;
      Apple_Parsec_Search_V2_RevGeoResolution.init()();
      v35 = sub_1000F8B50(v34, &selRef_country);
      sub_1000F8D4C(v35, v36);
      Apple_Parsec_Search_V2_RevGeoResolution.country.setter();
      v37 = sub_1000F8B50(v34, &selRef_administrativeArea);
      sub_1000F8D4C(v37, v38);
      Apple_Parsec_Search_V2_RevGeoResolution.administrativeArea.setter();
      v39 = sub_1000F8B50(v34, &selRef_subAdministrativeArea);
      sub_1000F8D4C(v39, v40);
      Apple_Parsec_Search_V2_RevGeoResolution.subAdministrativeArea.setter();
      v41 = sub_1000F8B50(v34, &selRef_locality);
      sub_1000F8D4C(v41, v42);
      Apple_Parsec_Search_V2_RevGeoResolution.locality.setter();
      v43 = sub_1000F8BAC(v34);
      if (!v43 || (v44 = sub_10008C290(v43), , !v44))
      {
      }

      v45 = v55;
      Apple_Parsec_Search_V2_RevGeoResolution.formattedAddressLines.setter();
      v46 = v54;
      (*(v8 + 16))(v53, v2, v54);
      Apple_Parsec_Search_V2_Location.revGeoResolution.setter();

      (*(v8 + 8))(v2, v46);
    }

    else
    {

      v45 = v55;
    }

    (*(v24 + 32))(v45, v29, v21);
    v47 = sub_10001BD3C();
    return sub_1000051C0(v47, v48, v49, v21);
  }

  else
  {
    v51 = sub_100009940();

    return sub_1000051C0(v51, v52, 1, v21);
  }
}

uint64_t sub_1000F7A48()
{
  v0 = sub_10000CB70();
  if (v1)
  {
    return sub_1000F7E94(v0, v1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F7A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v30 = v29 - v9;
  Apple_Parsec_Search_V2_MarketplaceInfo.init()();
  v10 = *(a1 + 216);
  swift_unknownObjectRetain();
  sub_100050134(&v35);
  swift_unknownObjectRelease();
  if (v36)
  {
    sub_100008C84(&v35, v37);
    v11 = *(sub_100007534(v37, v38) + 8);
    Apple_Parsec_Search_V2_MarketplaceInfo.isMarketplaceEligible.setter();
    v12 = sub_100007534(v37, v38);
    v13 = sub_1000BAB98(v12[2]);
    v14 = v13[2];
    if (v14)
    {
      v29[1] = a2;
      v29[2] = a1;
      v34 = _swiftEmptyArrayStorage;
      sub_1000ECA24(0, v14, 0);
      v15 = v34;
      v29[0] = v13;
      v16 = (v13 + 4);
      v17 = (v31 + 32);
      do
      {
        sub_1000092B4(v16, &v35);
        sub_1000092B4(&v35, v32);
        Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace.init()();
        v18 = sub_100007534(v32, v33);
        v19 = *v18;
        v20 = v18[1];

        Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace.id.setter();
        v21 = sub_100007534(v32, v33);
        if (v21[4])
        {
          v22 = v21[3];
          v23 = v21[4];

          Apple_Parsec_Search_V2_MarketplaceInfo.Marketplace.territory.setter();
        }

        sub_100007378(&v35);
        v24 = *v17;
        v25 = v30;
        (*v17)(v30, v8, v4);
        sub_100007378(v32);
        v34 = v15;
        v27 = v15[2];
        v26 = v15[3];
        if (v27 >= v26 >> 1)
        {
          sub_1000ECA24(v26 > 1, v27 + 1, 1);
          v25 = v30;
          v15 = v34;
        }

        v15[2] = v27 + 1;
        v24(v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27, v25, v4);
        v16 += 40;
        --v14;
      }

      while (v14);
    }

    Apple_Parsec_Search_V2_MarketplaceInfo.supportedMarketplaces.setter();
    swift_unknownObjectRelease();
    return sub_100007378(v37);
  }

  else
  {
    swift_unknownObjectRelease();
    return sub_10000B240(&v35, &qword_100217B88, &unk_10019BE50);
  }
}

uint64_t sub_1000F7D88(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v7 = v2;
  v8 = sub_1000F8CBC();
  v3 = sub_1000205C4(v6);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_100007534(v6, v7);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_100007378(v6);
  (*(v4 + 8))(a1, v2);
  return sub_10000BE80();
}

uint64_t sub_1000F7E94(uint64_t a1, unint64_t a2)
{
  *&v35 = a1;
  *(&v35 + 1) = a2;

  sub_100046184(&qword_100219F38, &unk_1001A8740);
  if (swift_dynamicCast())
  {
    sub_100008C84(v33, &v36);
    sub_100007534(&v36, v37);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v33[0] = v35;
    sub_100007378(&v36);
    goto LABEL_56;
  }

  v34 = 0;
  memset(v33, 0, sizeof(v33));
  sub_10000B240(v33, &qword_100219F40, &unk_10019ED40);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v33[0] = a1;
    *(&v33[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = v33;
    v5 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_1000F843C(v4, v5, &v36);
  v6 = *(&v36 + 1);
  v7 = v36;
  if (*(&v36 + 1) >> 60 != 15)
  {
    v33[0] = v36;
    goto LABEL_56;
  }

LABEL_9:
  *&v33[0] = Data._Representation.init(count:)();
  *(&v33[0] + 1) = v8;
  __chkstk_darwin(*&v33[0]);
  v9 = sub_1000F8558(sub_1000F8C40);
  v11 = *(&v33[0] + 1) >> 62;
  v12 = v9;
  v14 = v13;
  v16 = v15;
  v17 = BYTE14(v33[0]);
  switch(*(&v33[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v18) = DWORD1(v33[0]) - LODWORD(v33[0]);
      if (__OFSUB__(DWORD1(v33[0]), v33[0]))
      {
        goto LABEL_63;
      }

      v18 = v18;
LABEL_19:
      if (v10 == v18)
      {
        goto LABEL_20;
      }

      if (v11 == 2)
      {
        v17 = *(*&v33[0] + 24);
      }

      else if (v11 == 1)
      {
        v17 = *&v33[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v20 = *(*&v33[0] + 16);
      v19 = *(*&v33[0] + 24);
      v21 = __OFSUB__(v19, v20);
      v18 = v19 - v20;
      if (!v21)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v10)
      {
        v17 = 0;
LABEL_53:
        if (v17 < v10)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v32 = v7;
      LOBYTE(v22) = 0;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v14) & 0xF;
      }

      else
      {
        v23 = v9 & 0xFFFFFFFFFFFFLL;
      }

      v24 = (v9 >> 59) & 1;
      if ((v14 & 0x1000000000000000) == 0)
      {
        LOBYTE(v24) = 1;
      }

      v25 = 4 << v24;
      *(&v35 + 7) = 0;
      *&v35 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v18 = BYTE14(v33[0]);
      goto LABEL_19;
  }

  while (4 * v23 != v16 >> 14)
  {
    v26 = v16;
    if ((v16 & 0xC) == v25)
    {
      v26 = sub_1000F8AF4(v16, v12, v14);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v23)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v29 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
      *&v36 = v12;
      *(&v36 + 1) = v14 & 0xFFFFFFFFFFFFFFLL;
      v29 = *(&v36 + v27);
    }

    else
    {
      v28 = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v12 & 0x1000000000000000) == 0)
      {
        v28 = _StringObject.sharedUTF8.getter();
      }

      v29 = *(v28 + v27);
    }

    if ((v16 & 0xC) == v25)
    {
      v16 = sub_1000F8AF4(v16, v12, v14);
      if ((v14 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v14 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v23 <= v16 >> 16)
    {
      goto LABEL_59;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v35 + v22) = v29;
    v22 = v22 + 1;
    if ((v22 >> 8))
    {
      goto LABEL_58;
    }

    if (v22 == 14)
    {
      *&v36 = v35;
      *(&v36 + 6) = *(&v35 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v22) = 0;
    }
  }

  if (!v22)
  {

    sub_100014A2C(v32, v6);
    goto LABEL_56;
  }

  *&v36 = v35;
  *(&v36 + 6) = *(&v35 + 6);
  Data._Representation.append(contentsOf:)();
  sub_100014A2C(v32, v6);
LABEL_55:

LABEL_56:
  v30 = v33[0];
  sub_100014924(*&v33[0], *(&v33[0] + 1));

  sub_100014A40(v30, *(&v30 + 1));
  return v30;
}

id sub_1000F839C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = String._bridgeToObjectiveC()();

LABEL_6:
  v8 = [v4 initWithId:v6 userAgent:v7];

  return v8;
}

uint64_t sub_1000F843C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
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

void *sub_1000F8504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1000F89DC(sub_1000F8C9C, v5, a1, a2);
}

uint64_t sub_1000F8558(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100014A40(v6, v5);
      *v4 = xmmword_10019BF30;
      sub_100014A40(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1000F8A40(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_100014A40(v6, v5);
      v19 = v6;
      v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_10019BF30;
      sub_100014A40(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v6 = v19;
      v9 = sub_1000F8A40(*(v19 + 16), *(v19 + 24), a1);
      if (v2)
      {
        v10 = v20 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v20 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

      return v3;
    case 3uLL:
      memset(v21, 0, 15);
      a1(&v19, v21, v21);
      if (!v2)
      {
        return v19;
      }

      return v3;
    default:
      v3 = v6 >> 8;
      sub_100014A40(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        v3 = v19;
      }

      v8 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v4 = v21[0];
      v4[1] = v8;
      return v3;
  }
}