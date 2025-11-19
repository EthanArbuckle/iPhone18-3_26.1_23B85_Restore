uint64_t sub_1001F6120(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_1001F61B4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1002247EC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C3D28;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

void sub_1001F6494(char *a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_1001BC5A8(&unk_1005229F0, &unk_100450170);
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  __chkstk_darwin(v3);
  v6 = &v43 - v5;
  v7 = sub_1001BC5A8(&qword_100521D78, &qword_10044F188);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  __chkstk_darwin(v7);
  v45 = &v43 - v9;
  v10 = sub_1001BC5A8(&unk_100522A00, &qword_100450180);
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  __chkstk_darwin(v10);
  v48 = &v43 - v12;
  v13 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession__state];
  *&a1[OBJC_IVAR___MRDFastSyncGroupSession__state] = 2;
  sub_1001E6BC0(v13);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100015AFC(v14, qword_100529B78);
  v16 = a1;
  v52 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v44 = v3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v54[0] = v22;
    *v19 = 138543618;
    *(v19 + 4) = v16;
    *v21 = v16;
    *(v19 + 12) = 2082;
    v23 = v6;
    v24 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v25 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v26 = v16;
    v27 = v24;
    v6 = v23;
    *(v19 + 14) = sub_10002C9C8(v27, v25, v54);
    _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}@]<%{public}s> Handling session.", v19, 0x16u);
    sub_1000038A4(v21, &qword_100521870, &unk_10044EA70);
    v3 = v44;

    sub_100026A44(v22);
  }

  v28 = v45;
  v29 = v53;
  GroupSession.$activeParticipants.getter();
  sub_10000462C(&qword_100521D88, &qword_100521D78, &qword_10044F188);
  sub_10000462C(&qword_100522A10, &qword_100522A18, &qword_100450188);
  v30 = v47;
  v31 = v48;
  Publisher<>.removeDuplicates()();
  (*(v46 + 8))(v28, v30);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000462C(&qword_100522A20, &unk_100522A00, &qword_100450180);
  v32 = v51;
  Publisher<>.sink(receiveValue:)();

  (*(v50 + 8))(v31, v32);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  GroupSession.$state.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000462C(&qword_100522A28, &unk_1005229F0, &unk_100450170);
  Publisher<>.sink(receiveValue:)();

  (*(v49 + 8))(v6, v3);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v33 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];
  *&v16[OBJC_IVAR___MRDFastSyncGroupSession_groupSession] = v29;

  sub_100209EA8();
  v34 = v16;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v54[0] = v39;
    *v37 = 138543618;
    *(v37 + 4) = v34;
    *v38 = v34;
    *(v37 + 12) = 2082;
    v40 = *&v34[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v41 = *&v34[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v42 = v34;
    *(v37 + 14) = sub_10002C9C8(v40, v41, v54);
    _os_log_impl(&_mh_execute_header, v35, v36, "[%{public}@]<%{public}s> Will join session.", v37, 0x16u);
    sub_1000038A4(v38, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v39);
  }

  GroupSession.join()();
}

uint64_t sub_1001F6BA0(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v35 = v8;
    v37 = v3;
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v36 = v7;
    v38 = v2;
    v15 = type metadata accessor for Logger();
    sub_100015AFC(v15, qword_100529B78);
    v16 = v14;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v19 = 138543874;
      *(v19 + 4) = v16;
      *v20 = v14;
      *(v19 + 12) = 2082;
      v22 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v21 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v23 = v16;

      v24 = sub_10002C9C8(v22, v21, aBlock);

      *(v19 + 14) = v24;
      *(v19 + 22) = 2082;
      type metadata accessor for Participant();
      sub_100004858(&qword_100521D68, 255, &type metadata accessor for Participant);
      v25 = Set.description.getter();
      v27 = sub_10002C9C8(v25, v26, aBlock);

      *(v19 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}@]<%{public}s> Fast Sync participants changed: %{public}s.", v19, 0x20u);
      sub_1000038A4(v20, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v28 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
    v29 = swift_allocObject();
    *(v29 + 16) = v16;
    *(v29 + 24) = v12;
    aBlock[4] = sub_100224874;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C3DC8;
    v30 = _Block_copy(aBlock);
    v31 = v16;

    static DispatchQoS.unspecified.getter();
    v39 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v32 = v38;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);
    (*(v37 + 8))(v6, v32);
    (*(v35 + 8))(v11, v36);
  }

  return result;
}

uint64_t sub_1001F70DC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001BC5A8(&qword_100522920, &qword_100450090);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = *(result + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
    v16 = result;
    (*(v11 + 16))(v14, a1, v10);
    v17 = *(v11 + 80);
    v24 = v6;
    v18 = (v17 + 24) & ~v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    (*(v11 + 32))(v19 + v18, v14, v10);
    aBlock[4] = sub_100224804;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C3D78;
    v20 = _Block_copy(aBlock);
    v21 = v16;
    static DispatchQoS.unspecified.getter();
    v27 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v22 = v26;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v3 + 8))(v22, v2);
    (*(v25 + 8))(v9, v24);
  }

  return result;
}

void sub_1001F74C0()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (qword_100529B70 == -1)
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
  v8 = type metadata accessor for Logger();
  sub_100015AFC(v8, qword_100529B78);
  v9 = v0;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 138543874;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2082;
    v15 = *&v9[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v16 = *&v9[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v17 = v9;
    *(v12 + 14) = sub_10002C9C8(v15, v16, &v22);
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v18;
    v13[1] = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}@]<%{public}s> Encountered push message error: %{public}@.", v12, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v14);
  }

  if (v9[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] == 1)
  {
    v9[OBJC_IVAR___MRDFastSyncGroupSession_hasEncounteredLowPowerError] = 1;
  }

  else
  {
    sub_10021DECC();
    v19 = swift_allocError();
    *v20 = 6;
    sub_100204BF8(v19);
  }
}

void sub_1001F77EC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_69:
    swift_once();
LABEL_37:
    v43 = type metadata accessor for Logger();
    sub_100015AFC(v43, qword_100529B78);
    v44 = v2;
    v24 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v98[0] = v48;
      *v46 = 138543618;
      *(v46 + 4) = v44;
      *v47 = v44;
      *(v46 + 12) = 2082;
      v49 = *&v44[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v50 = *&v44[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v51 = v44;
      *(v46 + 14) = sub_10002C9C8(v49, v50, v98);
      _os_log_impl(&_mh_execute_header, v24, v45, "[%{public}@]<%{public}s> dropping push message for different session identifier.", v46, 0x16u);
      sub_1000038A4(v47, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v48);
    }

    goto LABEL_39;
  }

  *&v97[0] = 0xD000000000000011;
  *(&v97[0] + 1) = 0x800000010043BC90;

  AnyHashable.init<A>(_:)();
  if (!a1[2] || (v11 = sub_10001BF64(v98), (v12 & 1) == 0))
  {
    sub_10001BF10(v98);
    goto LABEL_36;
  }

  sub_100020E0C(a1[7] + 32 * v11, &v99);
  sub_10001BF10(v98);
  v13 = &type metadata for Any;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_36;
  }

  v15 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
  v14 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
  if (v97[0] != __PAIR128__(v14, v15))
  {
    v16 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v17 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

LABEL_36:

      if (qword_100529B70 == -1)
      {
        goto LABEL_37;
      }

      goto LABEL_69;
    }
  }

  v18 = String._bridgeToObjectiveC()();
  v98[0] = 0;
  v19 = IDSCopyTokenAndIDForTokenWithID();

  v20 = v98[0];
  if (!v19)
  {
    v24 = v98[0];

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100015AFC(v52, qword_100529B78);
    v53 = v2;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_61;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v98[0] = v58;
    *v56 = 138543618;
    *(v56 + 4) = v53;
    *v57 = v53;
    *(v56 + 12) = 2082;
    v59 = v53;
    *(v56 + 14) = sub_10002C9C8(v15, v14, v98);
    v60 = "[%{public}@]<%{public}s> could not parse sender from token.";
    goto LABEL_60;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  v24 = v20;

  v25 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8];
  if ((!v25 || (v21 != *&v2[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle] || v25 != v23) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0) && (v2[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] & 1) == 0)
  {

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100015AFC(v64, qword_100529B78);
    v65 = v2;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_61;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v98[0] = v58;
    *v56 = 138543618;
    *(v56 + 4) = v65;
    *v57 = v65;
    *(v56 + 12) = 2082;
    v66 = v65;
    *(v56 + 14) = sub_10002C9C8(v15, v14, v98);
    v60 = "[%{public}@]<%{public}s> dropping push message not from leader.";
    goto LABEL_60;
  }

  v26 = sub_10036C46C();
  v28 = *v26;
  v27 = *(v26 + 1);
  *&v97[0] = v28;
  *(&v97[0] + 1) = v27;

  AnyHashable.init<A>(_:)();
  if (!a1[2] || (v29 = sub_10001BF64(v98), (v30 & 1) == 0))
  {
    sub_10001BF10(v98);

LABEL_46:

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_100015AFC(v61, qword_100529B78);
    v62 = v2;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_61;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v98[0] = v58;
    *v56 = 138543618;
    *(v56 + 4) = v62;
    *v57 = v62;
    *(v56 + 12) = 2082;
    v63 = v62;
    *(v56 + 14) = sub_10002C9C8(v15, v14, v98);
    v60 = "[%{public}@]<%{public}s> dropping push message without type";
    goto LABEL_60;
  }

  sub_100020E0C(a1[7] + 32 * v29, &v99);
  sub_10001BF10(v98);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_46;
  }

  v95 = *(&v97[0] + 1);
  v31 = *&v97[0];
  if (__PAIR128__(v95, v31) == *sub_10036C4D8() || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v2[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] & 1) == 0)
  {

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100015AFC(v70, qword_100529B78);
    v71 = v2;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v98[0] = v76;
      *v74 = 138543618;
      *(v74 + 4) = v71;
      *v75 = v71;
      *(v74 + 12) = 2082;
      v77 = v71;
      *(v74 + 14) = sub_10002C9C8(v15, v14, v98);
      _os_log_impl(&_mh_execute_header, v72, v73, "[%{public}@]<%{public}s> Received session end push message.", v74, 0x16u);
      sub_1000038A4(v75, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v76);
    }

    sub_10021DECC();
    v78 = swift_allocError();
    *v79 = 5;
    sub_100204BF8(v78);

    goto LABEL_39;
  }

  *&v97[0] = 0x74616E6974736564;
  *(&v97[0] + 1) = 0xEB000000006E6F69;
  AnyHashable.init<A>(_:)();
  if (!a1[2] || (v32 = sub_10001BF64(v98), (v33 & 1) == 0))
  {
    sub_10001BF10(v98);
LABEL_56:

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100015AFC(v67, qword_100529B78);
    v68 = v2;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v54, v55))
    {
      goto LABEL_61;
    }

    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v98[0] = v58;
    *v56 = 138543618;
    *(v56 + 4) = v68;
    *v57 = v68;
    *(v56 + 12) = 2082;
    v69 = v68;
    *(v56 + 14) = sub_10002C9C8(v15, v14, v98);
    v60 = "[%{public}@]<%{public}s> dropping push message for different participant.";
LABEL_60:
    _os_log_impl(&_mh_execute_header, v54, v55, v60, v56, 0x16u);
    sub_1000038A4(v57, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v58);

LABEL_61:

    return;
  }

  sub_100020E0C(a1[7] + 32 * v32, &v99);
  sub_10001BF10(v98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_56;
  }

  v34 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
  if (!v34 || ((v35 = *&v97[0] == *&v2[OBJC_IVAR___MRDFastSyncGroupSession_localHandle], v94[1] = *(&v97[0] + 1), !v35) || v34 != *(&v97[0] + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_56;
  }

  v36 = sub_10036C4B4();
  if ((v31 != *v36 || v95 != *(v36 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_72:
    v80 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
    if (v80)
    {

      v98[3] = sub_1001BC5A8(&qword_1005229E0, &qword_10045A7D0);
      v98[0] = a1;
      (*(*v80 + 432))(v98, v21, v23, 1);

      sub_100026A44(v98);
LABEL_39:

      return;
    }

    goto LABEL_81;
  }

  v37 = sub_10036C4A8();
  v39 = *v37;
  v38 = v37[1];
  *&v97[0] = v39;
  *(&v97[0] + 1) = v38;

  AnyHashable.init<A>(_:)();
  if (!a1[2] || (v40 = sub_10001BF64(v98), (v41 & 1) == 0))
  {
    sub_10001BF10(v98);
    goto LABEL_72;
  }

  sub_100020E0C(a1[7] + 32 * v40, &v99);
  sub_10001BF10(v98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_72;
  }

  v42 = v97[0];
  if (v42 == *sub_10036C454())
  {
  }

  else
  {
    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v81 & 1) == 0)
    {
      goto LABEL_72;
    }
  }

  v82 = sub_10036C484();
  v83 = *(v82 + 1);
  *&v99 = *v82;
  *(&v99 + 1) = v83;

  AnyHashable.init<A>(_:)();
  if (!a1[2])
  {
    __break(1u);
    goto LABEL_80;
  }

  v84 = sub_10001BF64(v98);
  if ((v85 & 1) == 0)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_100020E0C(a1[7] + 32 * v84, v97);
  sub_10001BF10(v98);
  sub_1001C4088(v97, &v99);
  v94[0] = sub_100018D7C(0, &qword_1005229E8, NSData_ptr);
  swift_dynamicCast();
  v86 = v96;
  v87 = *v82;
  v88 = *(v82 + 1);
  *&v99 = v87;
  *(&v99 + 1) = v88;
  swift_bridgeObjectRetain_n();
  AnyHashable.init<A>(_:)();
  *&v99 = 0;
  v89 = [v86 decompressedDataUsingAlgorithm:0 error:&v99];
  v13 = v99;
  if (v89)
  {
    v90 = v89;
    v91 = v99;

    v100 = v94[0];
    *&v99 = v90;
    sub_1001C4088(&v99, v97);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = a1;
    sub_10021A9F0(v97, v98, isUniquelyReferenced_nonNull_native);

    sub_10001BF10(v98);
    a1 = v96;
    goto LABEL_72;
  }

LABEL_82:
  v93 = v13;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}

void sub_1001F87B4(int a1, uint64_t a2, unint64_t a3, void *a4)
{
  v75 = a2;
  v74 = a1;
  v7 = type metadata accessor for Participant();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    if (qword_100529B70 == -1)
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
  v19 = type metadata accessor for Logger();
  v20 = sub_100015AFC(v19, qword_100529B78);
  v21 = *(v8 + 16);
  v71 = a4;
  v21(v11, a4, v7);
  v22 = v4;
  v23 = v75;
  sub_1001C3FE0(v75, a3);
  v73 = v20;
  v24 = a3;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  sub_1001C4034(v23, v24);
  v27 = os_log_type_enabled(v25, v26);
  v72 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v69 = v29;
    v70 = swift_slowAlloc();
    v77 = v70;
    *v28 = 138544386;
    *(v28 + 4) = v22;
    *v29 = v22;
    *(v28 + 12) = 2082;
    v30 = *&v22[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v31 = *&v22[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v32 = v22;
    *(v28 + 14) = sub_10002C9C8(v30, v31, &v77);
    *(v28 + 22) = 2080;
    sub_100004858(&qword_1005222C0, 255, &type metadata accessor for Participant);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    (*(v8 + 8))(v11, v7);
    v36 = sub_10002C9C8(v33, v35, &v77);

    *(v28 + 24) = v36;
    *(v28 + 32) = 2082;
    v37 = v74;
    v76 = v74;
    sub_1002244E4();
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = sub_10002C9C8(v38, v39, &v77);

    *(v28 + 34) = v40;
    *(v28 + 42) = 2080;
    v41 = Data.description.getter();
    v43 = sub_10002C9C8(v41, v42, &v77);

    *(v28 + 44) = v43;
    v23 = v75;
    _os_log_impl(&_mh_execute_header, v25, v26, "[%{public}@]<%{public}s> received message from %s. Type: %{public}s. Payload: %s", v28, 0x34u);
    sub_1000038A4(v69, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    v37 = v74;
  }

  if (*&v22[OBJC_IVAR___MRDFastSyncGroupSession__state] != 3)
  {
    v49 = v22;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v50, v51))
    {
LABEL_19:

      return;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v77 = v54;
    *v52 = 138543618;
    *(v52 + 4) = v49;
    *v53 = v49;
    *(v52 + 12) = 2082;
    v55 = *&v49[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v56 = *&v49[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v57 = v49;
    *(v52 + 14) = sub_10002C9C8(v55, v56, &v77);
    v58 = "[%{public}@]<%{public}s> dropping message received while not joined.";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v50, v51, v58, v52, 0x16u);
    sub_1000038A4(v53, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v54);

    goto LABEL_19;
  }

  LOBYTE(v77) = v37;
  v76 = 0;
  sub_100224490();
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((v44 & 1) == 0 && !*&v22[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8] && !*&v22[OBJC_IVAR___MRDFastSyncGroupSession_leaderFastSyncIdentifier + 8])
  {
    v64 = v22;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_19;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v77 = v54;
    *v52 = 138543618;
    *(v52 + 4) = v64;
    *v53 = v64;
    *(v52 + 12) = 2082;
    v65 = *&v64[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v66 = *&v64[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v67 = v64;
    *(v52 + 14) = sub_10002C9C8(v65, v66, &v77);
    v58 = "[%{public}@]<%{public}s> dropping message received before leader discovered.";
    goto LABEL_18;
  }

  v45 = v72;
  if (v22[OBJC_IVAR___MRDFastSyncGroupSession_isLeader])
  {
    goto LABEL_22;
  }

  LOBYTE(v77) = v37;
  v76 = 0;
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v44)
  {
    goto LABEL_22;
  }

  v46 = Participant.handle.getter();
  v48 = *&v22[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8];
  if (!v48)
  {

LABEL_36:
    v60 = v22;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_19;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v77 = v54;
    *v52 = 138543618;
    *(v52 + 4) = v60;
    *v53 = v60;
    *(v52 + 12) = 2082;
    v61 = *&v60[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v62 = *&v60[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v63 = v60;
    *(v52 + 14) = sub_10002C9C8(v61, v62, &v77);
    v58 = "[%{public}@]<%{public}s> dropping message that did not come from leader.";
    goto LABEL_18;
  }

  if (v46 == *&v22[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle] && v48 == v47)
  {

    goto LABEL_22;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v59 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if (v37 <= 4u)
  {
    if (v37 <= 1u)
    {
      if (v37)
      {
        sub_1001F9A7C(v44, v23, v45, v71);
      }

      else
      {
        sub_1001F9130(v44, v23, v45, v71);
      }
    }

    else if (v37 == 2)
    {
      sub_1001FBC40(v44, v23, v45, v71);
    }

    else if (v37 == 3)
    {
      sub_1001FC544(v44, v23, v45);
    }

    else
    {
      sub_1002207A4(v71);
    }
  }

  else if (v37 > 7u)
  {
    if (v37 == 8)
    {
      sub_1001FEC2C(v44, v23, v45, v71);
    }

    else if (v37 == 9)
    {
      sub_1001FFEB0(v44, v23, v45, v71);
    }

    else
    {
      sub_100221AB4(v71);
    }
  }

  else if (v37 == 5)
  {
    sub_1001FD64C(v44, v23, v45, v71);
  }

  else if (v37 == 6)
  {
    sub_100220C10(v71);
  }

  else
  {
    sub_1001FE2F4(v44, v23, v45);
  }
}

uint64_t sub_1001F9130(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = a4;
  v60 = type metadata accessor for Participant();
  v8 = *(v60 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v60);
  v59 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v58 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v5[OBJC_IVAR___MRDFastSyncGroupSession_isLeader])
  {
    if (qword_100529B70 == -1)
    {
LABEL_4:
      v21 = type metadata accessor for Logger();
      sub_100015AFC(v21, qword_100529B78);
      v22 = v5;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138543362;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}@] Leader should not receive leader discovery messages.", v25, 0xCu);
        sub_1000038A4(v26, &qword_100521870, &unk_10044EA70);
      }

      v29 = *&v22[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v28 = *&v22[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v30 = type metadata accessor for TaskPriority();
      (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = v59;
      v32 = v60;
      (*(v8 + 16))(v59, v61, v60);
      v34 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v35 = swift_allocObject();
      *(v35 + 2) = 0;
      *(v35 + 3) = 0;
      *(v35 + 4) = v31;
      (*(v8 + 32))(&v35[v34], v33, v32);
      v36 = &v35[(v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8];
      *v36 = v29;
      *(v36 + 1) = v28;

      sub_1001BF864(0, 0, v13, &unk_100450150, v35);
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  sub_1001C3FE0(a2, a3);
  sub_10036CC7C(a2, a3, &type metadata for LeaderDiscoveryMessage, &off_100527F88, &v62);
  v38 = v63;
  if (v63 >> 60 == 15)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100015AFC(v39, qword_100529B78);
    v40 = v5;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138543362;
      *(v43 + 4) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&_mh_execute_header, v41, v42, "[%{public}@] LeaderDiscovery message payload is malformed.", v43, 0xCu);
      sub_1000038A4(v44, &qword_100521870, &unk_10044EA70);
    }

    sub_10021DECC();
    v46 = swift_allocError();
    *v47 = 4;
    sub_100204BF8(v46);
  }

  else
  {
    v48 = v62;
    v49 = Participant.handle.getter();
    v50 = &v5[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
    v51 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8];
    *v50 = v49;
    v50[1] = v52;

    v53 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
    if (v53)
    {
      sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10044EC70;
      v55 = v53;
      *(v54 + 32) = Participant.handle.getter();
      *(v54 + 40) = v56;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v55 updateAllowedDestinations:isa];

      sub_10020CD20();
      sub_10020BC30();
      return sub_100045968(v48, v38);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001F97D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return _swift_task_switch(sub_1001F97F4, 0, 0);
}

uint64_t sub_1001F97F4()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[9];
    v4 = *(Strong + OBJC_IVAR___MRDFastSyncGroupSession_provider);
    v5 = Strong;

    v0[12] = dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

    v6 = Participant.handle.getter();
    v8 = v7;
    v0[13] = v7;
    v9 = async function pointer to NearbyGroup.kickMember(_:)[1];
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_1001F9938;

    return NearbyGroup.kickMember(_:)(v6, v8);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1001F9938()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002253BC, 0, 0);
  }

  else
  {
    v5 = v3[12];
    v4 = v3[13];

    v6 = v3[1];

    return v6();
  }
}

void sub_1001F9A7C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v326 = a4;
  v8 = type metadata accessor for Participants();
  v319 = *(v8 - 8);
  v320 = v8;
  v9 = *(v319 + 64);
  __chkstk_darwin(v8);
  v318 = &v301 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.Encoding();
  v311 = *(v11 - 8);
  v312 = v11;
  v12 = *(v311 + 64);
  __chkstk_darwin(v11);
  v310 = &v301 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = type metadata accessor for NearbyGroup.Member();
  v316 = *(v314 - 8);
  v14 = v316[8];
  v15 = __chkstk_darwin(v314);
  v317 = (&v301 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v313 = &v301 - v17;
  v18 = sub_1001BC5A8(&qword_1005222A0, &unk_10044F5A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v309 = &v301 - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v324 = v21;
  v325 = v22;
  v23 = *(v22 + 8);
  __chkstk_darwin(v21);
  v323 = (&v301 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for Participant();
  v26 = *(v25 - 8);
  i = v25;
  v322 = v26;
  v27 = *(v26 + 8);
  v28 = __chkstk_darwin(v25);
  v30 = &v301 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v301 - v31;
  v33 = type metadata accessor for DispatchPredicate();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v301 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
  *v37 = v38;
  (*(v34 + 104))(v37, enum case for DispatchPredicate.onQueue(_:), v33);
  v39 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  (*(v34 + 8))(v37, v33);
  if ((v38 & 1) == 0)
  {
    __break(1u);
LABEL_102:

LABEL_104:
    v236 = v309;
    (v37)(v309, v317, a2);
    v235 = 0;
    v237 = v324;
LABEL_105:
    v238 = v316;
    (v316[7])(v236, v235, 1, a2);

    if ((v238[6])(v236, 1, a2) == 1)
    {
      sub_1000038A4(v236, &qword_1005222A0, &unk_10044F5A0);
    }

    else
    {
      i = NearbyGroup.Member.tokenDestination.getter();
      v240 = v239;
      (*v322)(v236, a2);
      if (v240)
      {
        goto LABEL_109;
      }
    }

    v240 = v237[3];
    i = v237[2];

LABEL_109:
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v241 = type metadata accessor for Logger();
    sub_100015AFC(v241, qword_100529B78);
    v242 = v5;

    v243 = Logger.logObject.getter();
    v244 = static os_log_type_t.info.getter();

    v245 = os_log_type_enabled(v243, v244);
    v322 = v240;
    if (v245)
    {
      v246 = swift_slowAlloc();
      v247 = v240;
      v248 = swift_slowAlloc();
      v317 = v248;
      v328 = swift_slowAlloc();
      *v246 = 138543874;
      *(v246 + 4) = v242;
      *v248 = v242;
      *(v246 + 12) = 2082;
      v249 = v237[2];
      v250 = v237[3];
      v251 = v242;

      v252 = sub_10002C9C8(v249, v250, &v328);

      *(v246 + 14) = v252;
      *(v246 + 22) = 2082;
      *(v246 + 24) = sub_10002C9C8(i, v247, &v328);
      _os_log_impl(&_mh_execute_header, v243, v244, "[%{public}@] Send transportMigrationReply push to: %{public}s, dst: %{public}s.", v246, 0x20u);
      sub_1000038A4(v317, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v253 = *&v242[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
    if (!v253)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v317 = v242;
    sub_1001BC5A8(&unk_1005222B0, &qword_10044EB98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10044F540;
    v316 = v253;
    v255 = sub_10036C46C();
    v257 = *v255;
    v256 = *(v255 + 1);
    v328 = v257;
    v329 = v256;
    v314 = v256;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    v258 = sub_10036C4CC();
    v260 = *v258;
    v259 = v258[1];
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v260;
    *(inited + 80) = v259;

    v261 = sub_10036C484();
    v263 = *v261;
    v262 = *(v261 + 1);
    v328 = v263;
    v329 = v262;
    v313 = v262;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    v264 = *v258;
    v265 = v258[1];

    v266 = v310;
    static String.Encoding.utf8.getter();
    v267 = String.data(using:allowLossyConversion:)();
    v269 = v268;

    (*(v311 + 8))(v266, v312);
    if (v269 >> 60 == 15)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    *(inited + 168) = &type metadata for Data;
    *(inited + 144) = v267;
    *(inited + 152) = v269;
    v270 = sub_10036C490();
    v271 = v270[1];
    v328 = *v270;
    v329 = v271;
    swift_bridgeObjectRetain_n();
    v272 = AnyHashable.init<A>(_:)();
    v273 = v324;
    v274 = (*(*v324 + 216))(v272);
    *(inited + 240) = &type metadata for Int;
    *(inited + 216) = v274;
    v275 = sub_10036C49C();
    v277 = *v275;
    v276 = v275[1];
    v328 = v277;
    v329 = v276;
    v312 = v276;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    v278 = v317;
    v280 = *(v317 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
    v279 = *(v317 + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);
    *(inited + 312) = &type metadata for String;
    *(inited + 288) = v280;
    *(inited + 296) = v279;

    v281 = sub_10036C478();
    v282 = v281[1];
    v328 = *v281;
    v329 = v282;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    v284 = v273[2];
    v283 = v273[3];
    *(inited + 384) = &type metadata for String;
    *(inited + 360) = v284;
    *(inited + 368) = v283;

    v285 = sub_10036C460();
    v286 = v285[1];
    v328 = *v285;
    v329 = v286;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    v287 = *(v278 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8);
    if (!v287)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v288 = *(v278 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle);

    *(inited + 456) = &type metadata for String;
    *(inited + 432) = v288;
    *(inited + 440) = v287;
    sub_1001C2534(inited);
    swift_setDeallocating();
    sub_1001BC5A8(&qword_1005216C0, qword_10044EBA0);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
    v290 = swift_initStackObject();
    *(v290 + 16) = xmmword_10044EC70;
    v291 = v322;
    *(v290 + 32) = i;
    *(v290 + 40) = v291;

    sub_10021FAD4(v290);
    swift_setDeallocating();
    sub_1001E6204(v290 + 32);
    v292 = Set._bridgeToObjectiveC()().super.isa;

    v293 = v316;
    [v316 sendMessage:isa toDestinations:v292];

    v294 = *(&v323->isa + v5);
    if (!v294)
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v295 = *(&v323->isa + v5);

    v296 = v324[2];
    v297 = v324[3];
    v298 = *(*v294 + 392);

    v299 = v296;
    v300 = v305;
    v298(0, v299, v297);
    v48 = v306;
    v79 = v315;
    if (!v300)
    {

LABEL_98:
      LODWORD(v324) = 1;
LABEL_70:
      v43 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger);
      if (v43)
      {
        v187 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
        swift_beginAccess();
        v188 = *(v5 + v187);

        sub_1001BD5E8(v79, v48, v188);

        v325 = v325;
        sub_10036D3A4();
        if (!*(v5 + OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier + 8))
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        v193 = v189;
        v194 = v190;
        v195 = v191;
        v196 = v192;
        v197 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier);
        v198 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier + 8);

        v199 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_localIdentity);
        sub_10036D3A4();
        sub_10036DBD8(v193, v194, v195, v196 & 0x10101, v201, v202, v203, v200 & 0x10101, &v328);
        v204 = sub_10036DE58();
        sub_1002240F0(&v328);
        v205 = v204;
        v206 = v318;
        static Participants.only(_:)();
        v207 = swift_allocObject();
        *(v207 + 16) = v5;
        v208 = v5;
        sub_10020CF20(2u, v204, v206, v43, sub_100224144, v207);

        (*(v319 + 8))(v206, v320);
        if (v324)
        {
          sub_1002021D8(1);
        }
      }

      else
      {

        if (qword_100529B70 != -1)
        {
          swift_once();
        }

        v209 = type metadata accessor for Logger();
        sub_100015AFC(v209, qword_100529B78);
        v210 = v5;
        v211 = Logger.logObject.getter();
        v212 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v211, v212))
        {
          v213 = swift_slowAlloc();
          v214 = swift_slowAlloc();
          v215 = swift_slowAlloc();
          v328 = v215;
          *v213 = 138543618;
          *(v213 + 4) = v210;
          *v214 = v210;
          *(v213 + 12) = 2082;
          v216 = *&v210[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
          v217 = *&v210[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
          v218 = v210;
          *(v213 + 14) = sub_10002C9C8(v216, v217, &v328);
          _os_log_impl(&_mh_execute_header, v211, v212, "[%{public}@]<%{public}s> No messenger to respond to identity share.", v213, 0x16u);
          sub_1000038A4(v214, &qword_100521870, &unk_10044EA70);

          sub_100026A44(v215);
        }
      }

      return;
    }

    if (qword_100529B70 == -1)
    {
LABEL_64:
      v175 = type metadata accessor for Logger();
      sub_100015AFC(v175, qword_100529B78);
      v176 = v5;

      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        v323 = v177;
        v180 = v179;
        v181 = v48;
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v328 = v183;
        *v180 = 138543618;
        *(v180 + 4) = v176;
        *v182 = v176;
        *(v180 + 12) = 2082;
        v184 = v176;
        *(v180 + 14) = sub_10002C9C8(v79, v181, &v328);
        v185 = v178;
        v186 = v323;
        _os_log_impl(&_mh_execute_header, v323, v185, "[%{public}@] realtime transition failure for: %{public}s. Resolve by removing participant.", v180, 0x16u);
        sub_1000038A4(v182, &qword_100521870, &unk_10044EA70);
        v48 = v181;

        sub_100026A44(v183);
      }

      else
      {
      }

      (*((swift_isaMask & *v176) + 0x538))(v79, v48);

      goto LABEL_98;
    }

LABEL_126:
    swift_once();
    goto LABEL_64;
  }

  if (*(v5 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader) != 1)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100015AFC(v63, qword_100529B78);
    v64 = v5;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v65, v66))
    {
      goto LABEL_18;
    }

    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v67 = 138543362;
    *(v67 + 4) = v64;
    *v68 = v64;
    v69 = v64;
    v70 = "[%{public}@] Participants should not receive IdentityShare messages.";
    goto LABEL_17;
  }

  sub_1001C3FE0(a2, a3);
  sub_10036CC7C(a2, a3, &type metadata for IdentityShareMessage, &off_100527FB8, &v328);
  v40 = v328;
  if (!v328)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_100015AFC(v71, qword_100529B78);
    v72 = v5;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v65, v66))
    {
      goto LABEL_18;
    }

    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v67 = 138543362;
    *(v67 + 4) = v72;
    *v68 = v72;
    v73 = v72;
    v70 = "[%{public}@] IdentityShare message payload is malformed.";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v65, v66, v70, v67, 0xCu);
    sub_1000038A4(v68, &qword_100521870, &unk_10044EA70);

LABEL_18:

    return;
  }

  v41 = Participant.handle.getter();
  v43 = v42;
  v44 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v308 = v44;
  v45 = *(v5 + v44);
  if (*(v45 + 16))
  {

    v41 = sub_10000698C(v41, v43);
    v37 = v46;

    if (v37)
    {
      v47 = *(v45 + 56) + 16 * v41;
      v49 = *v47;
      v48 = *(v47 + 8);

      v50 = [v40 identifier];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
      swift_beginAccess();
      v55 = *(v5 + v54);
      if (*(v55 + 16))
      {

        v56 = sub_10000698C(v51, v53);
        v58 = v57;

        if (v58)
        {
          v59 = *(*(v55 + 56) + 8 * v56);

          sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
          v60 = v40;
          v61 = v59;
          v62 = static NSObject.== infix(_:_:)();

          LODWORD(v324) = v62 ^ 1;
          goto LABEL_56;
        }
      }

LABEL_42:

      LODWORD(v324) = 1;
LABEL_56:
      while (1)
      {
        v135 = Participant.handle.getter();
        v137 = v136;
        v138 = v308;
        swift_beginAccess();

        v139 = *&v138[v5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v327 = *&v138[v5];
        *&v138[v5] = 0x8000000000000000;
        sub_100035B14(v49, v48, v135, v137, isUniquelyReferenced_nonNull_native);

        *&v138[v5] = v327;
        swift_endAccess();
        v141 = [v40 identifier];
        v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v144 = v143;

        v145 = v40;
        v146 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
        swift_beginAccess();
        v147 = *(v5 + v146);
        v148 = swift_isUniquelyReferenced_nonNull_native();
        v327 = *(v5 + v146);
        *(v5 + v146) = 0x8000000000000000;
        v315 = v49;
        sub_100035B14(v142, v144, v49, v48, v148);

        *(v5 + v146) = v327;
        swift_endAccess();
        v149 = [v145 identifier];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v151 = v150;

        v152 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
        swift_beginAccess();
        v153 = v145;
        v154 = *(v5 + v152);
        v155 = swift_isUniquelyReferenced_nonNull_native();
        v327 = *(v5 + v152);
        *(v5 + v152) = 0x8000000000000000;
        v325 = v153;
        sub_10021ACB8(v153, v43, v151, v155, &unk_100522930, &unk_100450098);

        *(v5 + v152) = v327;
        swift_endAccess();
        v156 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
        v157 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager);
        if (!v157)
        {
          break;
        }

        v158 = *(*v157 + 200);
        v159 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager);

        v161 = v158(v160);

        v162 = Participant.handle.getter();
        if (!*(v161 + 16))
        {

LABEL_67:

LABEL_69:
          v79 = v315;
          goto LABEL_70;
        }

        v164 = sub_10000698C(v162, v163);
        v166 = v165;

        if ((v166 & 1) == 0)
        {
          goto LABEL_67;
        }

        v167 = *(*(v161 + 56) + 8 * v164);

        v169 = (*(*v167 + 168))(v168);
        if (!sub_10036FD5C(v169, 2u) || (v170 = (*(*v167 + 144))(), !sub_10036FD4C(v170 & 1, 1)))
        {

          goto LABEL_69;
        }

        v323 = v156;
        v171 = *(&v156->isa + v5);
        if (!v171)
        {
          goto LABEL_136;
        }

        v172 = v167[2];
        v173 = v167[3];
        v174 = *(*v171 + 368);

        v174(0, v172, v173);
        v324 = v167;

        v219 = OBJC_IVAR___MRDFastSyncGroupSession_expectedRealtimeParticipants;
        swift_beginAccess();
        v220 = *(v5 + v219);
        v222 = v167[2];
        v221 = v167[3];

        v223 = sub_1001BD5E8(v222, v221, v220);

        if ((v223 & 1) == 0)
        {

          LODWORD(v324) = 1;
          goto LABEL_69;
        }

        v305 = 0;
        v306 = v48;
        v224 = v167[2];
        v225 = v167[3];
        swift_beginAccess();
        sub_1001C0CA0(v224, v225);
        swift_endAccess();

        v226 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_provider);

        dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

        v37 = NearbyGroup.members.getter();

        v41 = v37 + 56;
        v227 = 1 << *(v37 + 32);
        v228 = -1;
        if (v227 < 64)
        {
          v228 = ~(-1 << v227);
        }

        v40 = v228 & *(v37 + 56);
        v229 = (v227 + 63) >> 6;
        v307 = (v316 + 2);
        v308 = (v316 + 4);
        v322 = (v316 + 1);

        v230 = 0;
        v79 = v313;
        a2 = v314;
        for (i = v37; v40; v37 = i)
        {
          v32 = v230;
LABEL_89:
          v231 = v316;
          (v316[2])(v79, *(v37 + 48) + v316[9] * (__clz(__rbit64(v40)) | (v32 << 6)), a2);
          v37 = v231[4];
          (v37)(v317, v79, a2);
          if (NearbyGroup.Member.handle.getter() == v324[2] && v232 == v324[3])
          {
            goto LABEL_102;
          }

          v234 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v234)
          {

            a2 = v314;
            goto LABEL_104;
          }

          v40 &= v40 - 1;
          a2 = v314;
          (*v322)(v317, v314);
          v230 = v32;
        }

        while (1)
        {
          v32 = v230 + 1;
          if (__OFADD__(v230, 1))
          {
            break;
          }

          if (v32 >= v229)
          {

            v235 = 1;
            v236 = v309;
            v237 = v324;
            goto LABEL_105;
          }

          v40 = *(v41 + 8 * v32);
          ++v230;
          if (v40)
          {
            goto LABEL_89;
          }
        }

        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        swift_once();
LABEL_52:
        v120 = type metadata accessor for Logger();
        sub_100015AFC(v120, qword_100529B78);
        (*(v79 + 16))(v32, v326, v37);
        v121 = v5;

        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v315 = v41;
          LODWORD(v306) = v123;
          v125 = v79;
          v126 = v124;
          v127 = swift_slowAlloc();
          v305 = v127;
          v322 = swift_slowAlloc();
          v328 = v322;
          *v126 = 138543874;
          *(v126 + 4) = v121;
          *v127 = v121;
          *(v126 + 12) = 2082;
          v128 = v121;
          v129 = v323;
          v304 = v122;
          Participant.id.getter();
          v130 = UUID.uuidString.getter();
          v132 = v131;
          (*(v325 + 1))(v129, v324);
          (*(v125 + 8))(v32, v37);
          v133 = sub_10002C9C8(v130, v132, &v328);

          *(v126 + 14) = v133;
          *(v126 + 22) = 2082;
          *(v126 + 24) = sub_10002C9C8(v315, v40, &v328);
          v134 = v304;
          _os_log_impl(&_mh_execute_header, v304, v306, "[%{public}@] Mapping fast sync participant: %{public}s to prewarmed identifier %{public}s.", v126, 0x20u);
          sub_1000038A4(v305, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();

          v49 = v315;
        }

        else
        {

          (*(v79 + 8))(v32, v37);
          v49 = v41;
        }

        LODWORD(v324) = 1;
        v48 = v40;
        v40 = v307;
      }

      __break(1u);
      goto LABEL_128;
    }
  }

  v74 = OBJC_IVAR___MRDFastSyncGroupSession_prewarmedParticipantIdentifiers;
  swift_beginAccess();
  v75 = *(v5 + v74);
  if (!v75)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v76 = *(v75 + 16);
  v307 = v40;
  if (!v76)
  {
LABEL_29:
    v88 = v323;
    UUID.init()();
    v315 = UUID.uuidString.getter();
    v48 = v89;
    v90 = *(v325 + 1);
    v325 += 8;
    v305 = v90;
    v90(v88, v324);
    v91 = qword_100529B70;

    if (v91 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_100015AFC(v92, qword_100529B78);
    v93 = i;
    v94 = v322;
    (*(v322 + 2))(v30, v326, i);
    v95 = v5;
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();

    LODWORD(v304) = v97;
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v306 = v48;
      v99 = v98;
      v100 = swift_slowAlloc();
      v302 = v100;
      v303 = swift_slowAlloc();
      v328 = v303;
      *v99 = 138543874;
      *(v99 + 4) = v95;
      *v100 = v95;
      *(v99 + 12) = 2082;
      v101 = v95;
      v102 = v323;
      v301 = v96;
      Participant.id.getter();
      v103 = UUID.uuidString.getter();
      v105 = v104;
      v305(v102, v324);
      v94[1](v30, v93);
      v106 = sub_10002C9C8(v103, v105, &v328);

      *(v99 + 14) = v106;
      *(v99 + 22) = 2082;
      v40 = v307;
      v49 = v315;
      *(v99 + 24) = sub_10002C9C8(v315, v306, &v328);
      v107 = v301;
      _os_log_impl(&_mh_execute_header, v301, v304, "[%{public}@] Mapping fast sync participant: %{public}s to identifier %{public}s.", v99, 0x20u);
      sub_1000038A4(v302, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();

      v48 = v306;
    }

    else
    {

      v94[1](v30, v93);
      v49 = v315;
      v40 = v307;
    }

    goto LABEL_42;
  }

  v43 = v40;

  sub_1002186FC(v43);
  if ((v77 & 1) == 0)
  {

    goto LABEL_29;
  }

  swift_beginAccess();
  if (!*(v5 + v74))
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v78 = v43;
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v327 = *(v5 + v74);
  v80 = v327;
  *(v5 + v74) = 0x8000000000000000;
  v315 = v78;
  v82 = sub_1002186FC(v78);
  v83 = *(v80 + 16);
  v84 = (v81 & 1) == 0;
  v85 = v83 + v84;
  if (__OFADD__(v83, v84))
  {
    goto LABEL_120;
  }

  v48 = v81;
  if (*(v80 + 24) >= v85)
  {
    if ((v79 & 1) == 0)
    {
      goto LABEL_124;
    }

    v79 = v322;
    if (v81)
    {
LABEL_37:
      while (1)
      {
        v108 = v327;
        v109 = *(v327 + 56);
        v110 = *(v109 + 8 * v82);
        if (!*(v110 + 2))
        {
          break;
        }

        v111 = *(v109 + 8 * v82);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v112 = *(v110 + 2);
          if (v112)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v110 = sub_10021C354(v110);
          v112 = *(v110 + 2);
          if (v112)
          {
LABEL_40:
            v113 = v112 - 1;
            v114 = &v110[16 * v113];
            v41 = *(v114 + 4);
            v40 = *(v114 + 5);
            *(v110 + 2) = v113;
            v109 = *(v108 + 56);
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_124:
        sub_10021A5C0();
        v79 = v322;
        if ((v48 & 1) == 0)
        {
          goto LABEL_125;
        }
      }

      v41 = 0;
      v40 = 0;
LABEL_44:
      *(v109 + 8 * v82) = v110;
      v43 = v315;

      *(v5 + v74) = v108;
      swift_endAccess();
      if (v40)
      {
        v115 = *(v5 + v74);
        if (v115)
        {
          if (*(v115 + 16))
          {
            v43 = v43;

            v116 = sub_1002186FC(v43);
            if (v117)
            {
              v118 = *(*(v115 + 56) + 8 * v116);

              v119 = *(v118 + 16);

              v37 = i;
              if (!v119)
              {
                swift_beginAccess();
                if (!*(v5 + v74))
                {
                  goto LABEL_135;
                }

                sub_1001EC8FC(0, v43);
                swift_endAccess();
              }

              if (qword_100529B70 == -1)
              {
                goto LABEL_52;
              }

              goto LABEL_121;
            }

LABEL_134:

            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

LABEL_133:

          __break(1u);
          goto LABEL_134;
        }

LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    goto LABEL_125;
  }

  sub_1002198B0(v85, v79);
  v86 = sub_1002186FC(v315);
  if ((v48 & 1) == (v87 & 1))
  {
    v82 = v86;
    v79 = v322;
    if (v48)
    {
      goto LABEL_37;
    }

LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

LABEL_141:
  sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1001FBC40(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v74 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v72 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  v12 = *(v71 + 64);
  __chkstk_darwin(v73);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v5 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader))
  {
    if (qword_100529B70 == -1)
    {
LABEL_4:
      v22 = type metadata accessor for Logger();
      sub_100015AFC(v22, qword_100529B78);
      v23 = v5;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v24, v25))
      {
LABEL_14:

        return;
      }

      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      v29 = "[%{public}@] Leader should not receive IdentityShareReply messages.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v24, v25, v29, v26, 0xCu);
      sub_1000038A4(v27, &qword_100521870, &unk_10044EA70);

      goto LABEL_14;
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  sub_1001C3FE0(a2, a3);
  sub_10036CC7C(a2, a3, &type metadata for IdentityShareReplyMessage, &off_100528078, &aBlock);
  *&v80[11] = *(v78 + 11);
  v79[1] = v77;
  *v80 = v78[0];
  v79[0] = aBlock;
  v30 = *(&aBlock + 1);
  if (!*(&aBlock + 1))
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100015AFC(v66, qword_100529B78);
    v67 = v5;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_14;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138543362;
    *(v26 + 4) = v67;
    *v27 = v67;
    v68 = v67;
    v29 = "[%{public}@] IdentityShareReply message payload is malformed.";
    goto LABEL_13;
  }

  v69 = v9;
  v70 = v8;
  v32 = *&v80[8];
  v31 = *&v80[16];
  v33 = *v80;
  v34 = v80[26];
  v35 = v80[25];
  v36 = v80[24];
  v37 = (v5 + OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier);
  v38 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier + 8);
  *v37 = *&v79[0];
  v37[1] = v30;

  v39 = (v5 + OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipantIdentifier);
  v40 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipantIdentifier + 8);
  *v39 = v33;
  v39[1] = v32;
  swift_bridgeObjectRetain_n();

  v41 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
  v42 = v31;
  v43 = String._bridgeToObjectiveC()();
  v44 = [v41 initWithIdentifier:v43 identity:v42 connected:v36 & 1 guest:v35 & 1 hidden:v34 & 1];

  (*((swift_isaMask & *v5) + 0x2A8))(v44);
  sub_1001BC5A8(&qword_1005228A8, &unk_100450030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = Participant.handle.getter();
  *(inited + 40) = v46;
  *(inited + 48) = v33;
  *(inited + 56) = v32;

  v47 = sub_10021EF3C(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228B0, &qword_10045AFF0);
  v48 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v49 = *(v5 + v48);
  *(v5 + v48) = v47;

  v50 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager);
  if (v50)
  {
    v51 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager);

    v52 = *(v5 + v48);
    v53 = *(*v50 + 360);

    v53(v54);

    sub_1001E6ABC();
    v55 = sub_1001E687C();

    (*((swift_isaMask & *v55) + 0xD0))(v56);

    v57 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings;
    *&aBlock = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings);
    v58 = type metadata accessor for JoinTimingEvents();

    sub_10023231C(v58, &off_1004C33A8);
    v59 = *(v5 + v57);
    *(v5 + v57) = aBlock;

    v60 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue);
    v61 = swift_allocObject();
    *(v61 + 16) = v5;
    *&v78[0] = sub_1002253C8;
    *(&v78[0] + 1) = v61;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v77 = sub_100003D98;
    *(&v77 + 1) = &unk_1004C3C10;
    v62 = _Block_copy(&aBlock);
    v63 = v5;
    static DispatchQoS.unspecified.getter();
    v75 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v64 = v72;
    v65 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v62);
    sub_1000038A4(v79, &qword_1005229C0, &qword_100450138);
    (*(v69 + 8))(v64, v65);
    (*(v71 + 8))(v14, v73);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001FC544(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v80 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchQoS();
  v79 = *(v81 - 8);
  v11 = *(v79 + 64);
  __chkstk_darwin(v81);
  v78 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v4[OBJC_IVAR___MRDFastSyncGroupSession_isLeader])
  {
    if (qword_100529B70 == -1)
    {
LABEL_4:
      v21 = type metadata accessor for Logger();
      sub_100015AFC(v21, qword_100529B78);
      v22 = v4;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v23, v24))
      {
LABEL_20:

        return;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      v28 = "[%{public}@] Leader should not receive MemberSync messages.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v23, v24, v28, v25, 0xCu);
      sub_1000038A4(v26, &qword_100521870, &unk_10044EA70);

      goto LABEL_20;
    }

LABEL_24:
    swift_once();
    goto LABEL_4;
  }

  sub_1001C3FE0(a2, a3);
  sub_10036CC7C(a2, a3, &type metadata for MemberSyncMessage, &off_1005280A8, &aBlock);
  v29 = aBlock;
  if (!aBlock)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100015AFC(v60, qword_100529B78);
    v61 = v4;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_20;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138543362;
    *(v25 + 4) = v61;
    *v26 = v61;
    v62 = v61;
    v28 = "[%{public}@] MemberSync message payload is malformed.";
    goto LABEL_19;
  }

  v30 = v84;
  v72 = v85;
  v31 = aBlock[2];
  v32 = &OBJC_IVAR___MRDNowPlayingObserverState__contentItems;
  v33 = &selRef_entitlements;
  v34 = _swiftEmptyArrayStorage;
  v76 = v7;
  v77 = v4;
  v74 = aBlock;
  v75 = v8;
  v73 = v84;
  if (v31)
  {
    aBlock = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v35 = v29 + 58;
    do
    {
      v36 = *(v35 - 26);
      v37 = v33;
      v38 = *(v35 - 18);
      v39 = *(v35 - 10);
      v40 = *(v35 - 2);
      v41 = *(v35 - 1);
      v42 = *v35;
      v35 += 32;
      v43 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);

      v44 = v39;
      v45 = String._bridgeToObjectiveC()();
      v33 = v37;

      [v43 v37[407]];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v46 = aBlock[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v31;
    }

    while (v31);
    v34 = aBlock;
    v7 = v76;
    v4 = v77;
    v8 = v75;
    v30 = v73;
    v32 = &OBJC_IVAR___MRDNowPlayingObserverState__contentItems;
  }

  v71 = v34;
  v47 = *(v30 + 16);
  if (v47)
  {
    aBlock = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v48 = (v30 + 58);
    do
    {
      v49 = *(v48 - 26);
      v50 = *(v48 - 18);
      v51 = *(v48 - 10);
      v52 = *(v48 - 2);
      v53 = *(v48 - 1);
      v54 = *v48;
      v48 += 32;
      v55 = objc_allocWithZone((v32 + 732));

      v56 = v51;
      v57 = String._bridgeToObjectiveC()();

      [v55 initWithIdentifier:v57 identity:v56 connected:v52 guest:v53 hidden:v54];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v58 = aBlock[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v47;
    }

    while (v47);
    v59 = aBlock;
    v7 = v76;
    v4 = v77;
    v8 = v75;
  }

  else
  {
    v59 = _swiftEmptyArrayStorage;
  }

  v63 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
  v64 = swift_allocObject();
  v65 = v71;
  v66 = v72;
  v64[2] = v4;
  v64[3] = v66;
  v64[4] = v65;
  v64[5] = v59;
  v87 = sub_100223E94;
  v88 = v64;
  aBlock = _NSConcreteStackBlock;
  v84 = 1107296256;
  v85 = sub_100003D98;
  v86 = &unk_1004C3BC0;
  v67 = _Block_copy(&aBlock);
  v68 = v4;
  v69 = v78;
  static DispatchQoS.unspecified.getter();
  v82 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  v70 = v80;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v67);
  (*(v8 + 8))(v70, v7);
  (*(v79 + 8))(v69, v81);
}

void *sub_1001FCD38(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v40 = a3;
  v39 = a2(0);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v39);
  v38 = v32 - v7;
  v8 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v32[1] = v3;
    v45 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v8, 0);
    v10 = -1 << *(a1 + 32);
    v43 = a1 + 56;
    v44 = v45;
    result = _HashTable.startBucket.getter();
    v11 = result;
    v12 = 0;
    v36 = v5 + 8;
    v37 = v5 + 16;
    v33 = a1 + 64;
    v34 = v8;
    v35 = v5;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v43 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v41 = *(a1 + 36);
      v16 = v38;
      v17 = v39;
      v18 = (*(v5 + 16))(v38, *(a1 + 48) + *(v5 + 72) * v11, v39);
      v42 = v40(v18);
      v20 = v19;
      result = (*(v5 + 8))(v16, v17);
      v21 = v44;
      v45 = v44;
      v23 = v44[2];
      v22 = v44[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_1000089FC((v22 > 1), v23 + 1, 1);
        v21 = v45;
      }

      v21[2] = v23 + 1;
      v24 = &v21[2 * v23];
      v24[4] = v42;
      v24[5] = v20;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v25 = *(v43 + 8 * v15);
      if ((v25 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v44 = v21;
      if (v41 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v11 & 0x3F));
      if (v26)
      {
        v13 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v34;
        v5 = v35;
      }

      else
      {
        v27 = v15 << 6;
        v28 = v15 + 1;
        v14 = v34;
        v29 = (v33 + 8 * v15);
        v5 = v35;
        while (v28 < (v13 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_10000A16C(v11, v41, 0);
            v13 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_10000A16C(v11, v41, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v44;
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

void *sub_1001FD048(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v26 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v26 + 56;
    v5 = -1 << *(v26 + 32);
    result = _HashTable.startBucket.getter();
    v6 = v26;
    v7 = result;
    v8 = 0;
    v9 = *(v26 + 36);
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v27 = v8;
      v12 = v4;
      v13 = (*(v6 + 48) + 16 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = objc_allocWithZone(SKHandle);

      v17 = String._bridgeToObjectiveC()();
      [v16 initWithString:v17];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v6 = v26;
      v10 = 1 << *(v26 + 32);
      if (v7 >= v10)
      {
        goto LABEL_23;
      }

      v19 = *(v12 + 8 * v11);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v9 != *(v26 + 36))
      {
        goto LABEL_25;
      }

      v4 = v12;
      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v26 + 64 + 8 * v11);
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_10000A16C(v7, v9, 0);
            v6 = v26;
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_10000A16C(v7, v9, 0);
        v6 = v26;
      }

LABEL_4:
      v8 = v27 + 1;
      v7 = v10;
      if (v27 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
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

void sub_1001FD2C4(uint64_t a1)
{
  v1 = a1;
  v36 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v43 = _swiftEmptyArrayStorage;
    sub_1000089FC(0, v2 & ~(v2 >> 63), 0);
    v38 = _swiftEmptyArrayStorage;
    if (v36)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v40 = v3;
    v41 = v4;
    v42 = v36 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v34 = v1 + 56;
      v33 = v1 + 64;
      v35 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v40;
        v10 = v42;
        v37 = v41;
        v11 = v1;
        sub_10021C130(v40, v41, v42, v1);
        v13 = v12;
        v14 = [v12 handle];
        v15 = [v14 handleString];

        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = v38;
        v43 = v38;
        v21 = v38[2];
        v20 = v38[3];
        if (v21 >= v20 >> 1)
        {
          sub_1000089FC((v20 > 1), v21 + 1, 1);
          v19 = v43;
        }

        v19[2] = v21 + 1;
        v22 = &v19[2 * v21];
        v22[4] = v16;
        v22[5] = v18;
        v38 = v19;
        if (v36)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v35;
          sub_1001BC5A8(&qword_100522898, &qword_100450010);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v39, 0);
          if (v6 == v35)
          {
LABEL_32:
            sub_10000A16C(v40, v41, v42);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v23 = 1 << *(v11 + 32);
          if (v9 >= v23)
          {
            goto LABEL_36;
          }

          v24 = v9 >> 6;
          v25 = *(v34 + 8 * (v9 >> 6));
          if (((v25 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v37)
          {
            goto LABEL_38;
          }

          v26 = v25 & (-2 << (v9 & 0x3F));
          if (v26)
          {
            v23 = __clz(__rbit64(v26)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v35;
          }

          else
          {
            v27 = v24 << 6;
            v28 = v24 + 1;
            v29 = (v33 + 8 * v24);
            v2 = v35;
            while (v28 < (v23 + 63) >> 6)
            {
              v31 = *v29++;
              v30 = v31;
              v27 += 64;
              ++v28;
              if (v31)
              {
                sub_10000A16C(v9, v37, 0);
                v23 = __clz(__rbit64(v30)) + v27;
                goto LABEL_31;
              }
            }

            sub_10000A16C(v9, v37, 0);
          }

LABEL_31:
          v32 = *(v11 + 36);
          v40 = v23;
          v41 = v32;
          v42 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_1001FD64C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for Participant();
  v84 = *(v9 - 8);
  v10 = *(v84 + 64);
  __chkstk_darwin(v9);
  v82 = &v77[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = v11;
  v12 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v77[-v14];
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v77[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
  *v20 = v21;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v23 = (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v24 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader);
  v81 = v9;
  if (v24 != 1)
  {
    v54 = (*((swift_isaMask & *v5) + 0x2A0))(v23);
    if (!v54)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v25 = Participant.handle.getter();
  v27 = v26;
  v28 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v29 = *(v5 + v28);
  if (!*(v29 + 16))
  {

    goto LABEL_16;
  }

  v79 = a3;
  v80 = a4;

  v30 = sub_10000698C(v25, v27);
  v32 = v31;

  if ((v32 & 1) == 0)
  {

    a4 = v80;
    goto LABEL_16;
  }

  v33 = (*(v29 + 56) + 16 * v30);
  v34 = *v33;
  v35 = v33[1];

  v36 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
  swift_beginAccess();
  v37 = *(v5 + v36);

  v38 = sub_1001BD5E8(v34, v35, v37);

  v39 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
  swift_beginAccess();
  v40 = *(v5 + v39);
  if (!*(v40 + 16))
  {
    __break(1u);
    goto LABEL_23;
  }

  v41 = sub_10000698C(v34, v35);
  if ((v42 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v78 = v38;
  v43 = (*(v40 + 56) + 16 * v41);
  v45 = *v43;
  v44 = v43[1];
  v46 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
  swift_beginAccess();
  v47 = *(v5 + v46);
  if (!*(v47 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v48 = sub_10000698C(v45, v44);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v51 = *(*(v47 + 56) + 8 * v48);

  v52 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
  v53 = String._bridgeToObjectiveC()();

  v54 = [v52 initWithIdentifier:v53 identity:v51 connected:1 guest:v78 & 1];

  a4 = v80;
  a3 = v79;
  if (v54)
  {
LABEL_12:
    v55 = *(v5 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager);
    if (v55)
    {
      v85[3] = &type metadata for Data;
      v85[0] = a2;
      v85[1] = a3;

      sub_1001C3FE0(a2, a3);
      v56 = Participant.handle.getter();
      (*(*v55 + 432))(v85, v56, v57, 0);

      sub_100026A44(v85);
      return;
    }

    goto LABEL_26;
  }

LABEL_16:
  if (qword_100529B70 != -1)
  {
LABEL_21:
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_100015AFC(v58, qword_100529B78);
  v59 = v5;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();

  v62 = os_log_type_enabled(v60, v61);
  v63 = v81;
  if (v62)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138543362;
    *(v64 + 4) = v59;
    *v65 = v59;
    v66 = v59;
    _os_log_impl(&_mh_execute_header, v60, v61, "[%{public}@] Received remote control message from unmapped participant. Kicking.", v64, 0xCu);
    sub_1000038A4(v65, &qword_100521870, &unk_10044EA70);
  }

  v68 = *(v59 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
  v67 = *(v59 + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);
  v69 = type metadata accessor for TaskPriority();
  (*(*(v69 - 8) + 56))(v15, 1, 1, v69);
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = v84;
  v72 = v82;
  (*(v84 + 16))(v82, a4, v63);
  v73 = (*(v71 + 80) + 40) & ~*(v71 + 80);
  v74 = (v83 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  *(v75 + 2) = 0;
  *(v75 + 3) = 0;
  *(v75 + 4) = v70;
  (*(v71 + 32))(&v75[v73], v72, v63);
  v76 = &v75[v74];
  *v76 = v68;
  *(v76 + 1) = v67;

  sub_1001BF864(0, 0, v15, &unk_100450128, v75);
}

uint64_t sub_1001FDDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return _swift_task_switch(sub_1001FDDF8, 0, 0);
}

uint64_t sub_1001FDDF8()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[9];
    v4 = *(Strong + OBJC_IVAR___MRDFastSyncGroupSession_provider);
    v5 = Strong;

    v0[12] = dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

    v6 = Participant.handle.getter();
    v8 = v7;
    v0[13] = v7;
    v9 = async function pointer to NearbyGroup.kickMember(_:)[1];
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_1001FDF3C;

    return NearbyGroup.kickMember(_:)(v6, v8);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1001FDF3C()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001FE080, 0, 0);
  }

  else
  {
    v5 = v3[12];
    v4 = v3[13];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1001FE080()
{
  v22 = v0;
  v2 = v0[12];
  v1 = v0[13];

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[8];
  v6 = type metadata accessor for Logger();
  sub_100015AFC(v6, qword_100529B78);

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  if (v9)
  {
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[8];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v14 = 138543874;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v14 + 4) = Strong;
    *v15 = Strong;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_10002C9C8(v12, v11, &v21);
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v18;
    v15[1] = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}@]<%{public}s> Error kicking member: %{public}@", v14, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v16);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1001FE2F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_11;
  }

  v14 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
  if (v14)
  {
    v15 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion + 8];
    sub_10021DF20(*&v4[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion]);
    sub_1001C3FE0(a2, a3);
    sub_10036CC7C(a2, a3, &type metadata for ErrorReplyMessage, &off_1005280D8, &v57);
    v16 = v58;
    if (v58)
    {
      if (v58 == 1)
      {
        if (qword_100529B70 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100015AFC(v17, qword_100529B78);
        v18 = v4;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138543362;
          *(v21 + 4) = v18;
          *v22 = v18;
          v23 = v18;
          _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}@] TransportMigrationReply message payload is malformed.", v21, 0xCu);
          sub_1000038A4(v22, &qword_100521870, &unk_10044EA70);
        }

        sub_10021DECC();
        swift_allocError();
        *v24 = 6;
        v14();

        v25 = swift_allocError();
        *v26 = 6;
        sub_100204BF8(v25);
        goto LABEL_24;
      }

      v42 = v57;
      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100015AFC(v43, qword_100529B78);
      v44 = v4;
      sub_100223D54(v42, v16);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.fault.getter();

      sub_100223D68(v42, v16);
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v57 = v49;
        *v47 = 138543618;
        *(v47 + 4) = v44;
        *v48 = v44;
        *(v47 + 12) = 2080;
        v50 = v44;
        *(v47 + 14) = sub_10002C9C8(v42, v16, &v57);
        _os_log_impl(&_mh_execute_header, v45, v46, "[%{public}@] TransportMigrationReply error: %s. Cancel transition to low power.", v47, 0x16u);
        sub_1000038A4(v48, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v49);
      }

      v51 = *&v44[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
      if (v51)
      {
        v52 = &v44[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
        v53 = *&v44[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
        if (v53)
        {
          v54 = *v52;

          sub_100223D68(v42, v16);
          (*(*v51 + 416))(1, v54, v53);

          sub_10021DECC();
          swift_allocError();
          *v55 = 6;
          v14();
LABEL_24:

          return sub_1001C7C2C(v14);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v36 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
      if (v36)
      {
        v37 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
        if (v37)
        {
          v38 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
          v39 = *(*v36 + 392);
          v40 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];

          v39(1, v38, v37);

          (v14)(0);
          return sub_1001C7C2C(v14);
        }

        goto LABEL_30;
      }

      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (qword_100529B70 != -1)
  {
    goto LABEL_27;
  }

LABEL_11:
  v27 = type metadata accessor for Logger();
  sub_100015AFC(v27, qword_100529B78);
  v28 = v4;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "[%{public}@] Received transport migration reply with no completion.", v31, 0xCu);
    sub_1000038A4(v32, &qword_100521870, &unk_10044EA70);
  }

  sub_10021DECC();
  v34 = swift_allocError();
  *v35 = 6;
  sub_100204BF8(v34);
}

void sub_1001FEC2C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v5 = v4;
  v146 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v141 = *(v8 - 8);
  v9 = *(v141 + 64);
  __chkstk_darwin(v8);
  v138 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for DispatchQoS();
  v139 = *(v140 - 8);
  v11 = *(v139 + 64);
  __chkstk_darwin(v140);
  v137 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Participant();
  v143 = *(v13 - 8);
  v14 = *(v143 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v142 = &v131 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(&v5->isa + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
  *v23 = v24;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if ((v24 & 1) == 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_1001C3FE0(a2, a3);
  sub_10036CC7C(a2, a3, &type metadata for JoinResponseMessage, &off_100528018, &aBlock);
  v26 = v149;
  if (!v149)
  {
LABEL_26:
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100015AFC(v66, qword_100529B78);
    v67 = v5;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v68, v69))
    {
      goto LABEL_34;
    }

    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    aBlock = v72;
    *v70 = 138543618;
    *(v70 + 4) = v67;
    *v71 = v67;
    *(v70 + 12) = 2080;
    v73 = v67;
    *(v70 + 14) = sub_10002C9C8(0xD000000000000028, 0x800000010043BBD0, &aBlock);
    _os_log_impl(&_mh_execute_header, v68, v69, "[%{public}@] %s message payload is malformed.", v70, 0x16u);
    sub_1000038A4(v71, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v72);

LABEL_33:

LABEL_34:

    return;
  }

  v145 = aBlock;
  v27 = v150;
  v28 = Participant.handle.getter();
  v30 = v29;
  v31 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v32 = *(&v5->isa + v31);
  if (!*(v32 + 16) || (v135 = v8, , v33 = sub_10000698C(v28, v30), v35 = v34, , (v35 & 1) == 0))
  {

    v19 = v143;
    if (qword_100529B70 == -1)
    {
LABEL_31:
      v74 = type metadata accessor for Logger();
      sub_100015AFC(v74, qword_100529B78);
      (*(v19 + 16))(v17, v146, v13);
      v75 = v13;
      v76 = v5;
      v68 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v68, v77))
      {

        (*(v19 + 8))(v17, v75);
        return;
      }

      v78 = v19;
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v79 = 138543874;
      *(v79 + 4) = v76;
      *v80 = v76;
      *(v79 + 12) = 2080;
      v81 = v76;
      *(v79 + 14) = sub_10002C9C8(0xD000000000000028, 0x800000010043BBD0, &aBlock);
      *(v79 + 22) = 2082;
      v82 = Participant.handle.getter();
      v83 = v75;
      v85 = v84;
      (*(v78 + 8))(v17, v83);
      v86 = sub_10002C9C8(v82, v85, &aBlock);

      *(v79 + 24) = v86;
      _os_log_impl(&_mh_execute_header, v68, v77, "[%{public}@] %s message received from unknown handle: %{public}s", v79, 0x20u);
      sub_1000038A4(v80, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();

      goto LABEL_33;
    }

LABEL_59:
    swift_once();
    goto LABEL_31;
  }

  v36 = (*(v32 + 56) + 16 * v33);
  v37 = *v36;
  v17 = v36[1];

  v38 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
  swift_beginAccess();
  v39 = *(&v5->isa + v38);

  v40 = sub_1001BD5E8(v37, v17, v39);

  v41 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
  swift_beginAccess();
  v42 = *(&v5->isa + v41);
  if (!*(v42 + 16))
  {
    __break(1u);
    goto LABEL_61;
  }

  LODWORD(v134) = v40;
  v136 = v5;
  v144 = v26;

  v39 = v42;
  v43 = sub_10000698C(v37, v17);
  if ((v44 & 1) == 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v45 = (*(v42 + 56) + 16 * v43);
  v47 = *v45;
  v46 = v45[1];
  v48 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
  v49 = v136;
  swift_beginAccess();
  v39 = *(&v49->isa + v48);
  if (!*(v39 + 16))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v50 = sub_10000698C(v47, v46);
  v52 = v51;

  if ((v52 & 1) == 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v53 = *(*(v39 + 56) + 8 * v50);

  v54 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
  v55 = String._bridgeToObjectiveC()();

  v134 = [v54 initWithIdentifier:v55 identity:v53 connected:1 guest:v134 & 1];

  v56 = OBJC_IVAR___MRDFastSyncGroupSession_pendingParticipants;
  v57 = v136;
  swift_beginAccess();
  v39 = *(&v57->isa + v56);
  v133 = v13;
  v132 = v27;
  if (!(v39 >> 62))
  {
    v19 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_64:
  v19 = _CocoaArrayWrapper.endIndex.getter();
LABEL_11:
  v5 = v144;

  if (v19)
  {
    v58 = 0;
    while (1)
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v13 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        if (v58 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_58;
        }

        v17 = *(v39 + 8 * v58 + 32);
        swift_unknownObjectRetain();
        v13 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_25;
        }
      }

      v59 = [v17 identifier];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63 = v60;
      v5 = v144;
      if (v63 == v145 && v144 == v62)
      {
        break;
      }

      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v65)
      {
        goto LABEL_43;
      }

      swift_unknownObjectRelease();
      ++v58;
      if (v13 == v19)
      {
        goto LABEL_36;
      }
    }

LABEL_43:

    v95 = [v17 identifier];
    v96 = v133;
    if (!v95)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = String._bridgeToObjectiveC()();
    }

    v97 = [v17 identity];
    v98 = [objc_allocWithZone(MRDFastSyncGroupSessionParticipant) initWithIdentifier:v95 identity:v97 connected:0 guest:objc_msgSend(v17 hidden:{"guest"), objc_msgSend(v17, "hidden")}];

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    sub_100015AFC(v99, qword_100529B78);
    v100 = v143;
    v101 = v142;
    (*(v143 + 16))(v142, v146, v96);
    v102 = v136;

    v103 = v98;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();

    v106 = os_log_type_enabled(v104, v105);
    v146 = v103;
    if (v106)
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      aBlock = v145;
      *v107 = 138544386;
      *(v107 + 4) = v102;
      *v108 = v102;
      v136 = v104;
      *(v107 + 12) = 2080;
      v109 = v102;
      *(v107 + 14) = sub_10002C9C8(0xD000000000000028, 0x800000010043BBD0, &aBlock);
      *(v107 + 22) = 2080;
      v131 = v105;
      v110 = v132;
      if (v132)
      {
        v111 = 0x6465766F72707061;
      }

      else
      {
        v111 = 0x64657463656A6572;
      }

      v112 = sub_10002C9C8(v111, 0xE800000000000000, &aBlock);

      *(v107 + 24) = v112;
      *(v107 + 32) = 2112;
      *(v107 + 34) = v103;
      v108[1] = v103;
      *(v107 + 42) = 2082;
      v113 = v103;
      v114 = v142;
      v115 = Participant.handle.getter();
      v117 = v116;
      (*(v100 + 8))(v114, v133);
      v118 = sub_10002C9C8(v115, v117, &aBlock);

      *(v107 + 44) = v118;
      v119 = v136;
      _os_log_impl(&_mh_execute_header, v136, v131, "[%{public}@] %s %s %@ from: %{public}s", v107, 0x34u);
      sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
      swift_arrayDestroy();

      swift_arrayDestroy();
    }

    else
    {

      (*(v100 + 8))(v101, v96);

      v110 = v132;
    }

    v145 = *(&v102->isa + OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue);
    v120 = swift_allocObject();
    v121 = v146;
    v120[2] = v102;
    v120[3] = v121;
    v122 = v134;
    v120[4] = v134;
    if (v110)
    {
      v152 = sub_100223C98;
      v153 = v120;
      aBlock = _NSConcreteStackBlock;
      v149 = 1107296256;
      v123 = &unk_1004C3B48;
    }

    else
    {
      v152 = sub_100223C44;
      v153 = v120;
      aBlock = _NSConcreteStackBlock;
      v149 = 1107296256;
      v123 = &unk_1004C3AF8;
    }

    v150 = sub_100003D98;
    v151 = v123;
    v124 = _Block_copy(&aBlock);
    v125 = v102;
    v126 = v121;
    v127 = v122;
    v128 = v137;
    static DispatchQoS.unspecified.getter();
    v147 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v129 = v138;
    v130 = v135;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v124);

    swift_unknownObjectRelease();
    (*(v141 + 8))(v129, v130);
    (*(v139 + 8))(v128, v140);
  }

  else
  {
LABEL_36:

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_100015AFC(v87, qword_100529B78);
    v88 = v136;

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v91 = 138543874;
      *(v91 + 4) = v88;
      *v92 = v88;
      *(v91 + 12) = 2080;
      v93 = v88;
      *(v91 + 14) = sub_10002C9C8(0xD000000000000028, 0x800000010043BBD0, &aBlock);
      *(v91 + 22) = 2082;
      v94 = sub_10002C9C8(v145, v5, &aBlock);

      *(v91 + 24) = v94;
      _os_log_impl(&_mh_execute_header, v89, v90, "[%{public}@] %s message received for unknown participant: %{public}s", v91, 0x20u);
      sub_1000038A4(v92, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1001FFEB0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v142 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v138 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for DispatchQoS();
  v137 = *(v139 - 8);
  v12 = *(v137 + 64);
  __chkstk_darwin(v139);
  v136 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for Participant();
  v140 = *(v141 - 8);
  v14 = *(v140 + 64);
  v15 = __chkstk_darwin(v141);
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v135 = &v129 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = (&v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v23 = v24;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v27 = *(v20 + 8);
  v26 = v20 + 8;
  v27(v23, v19);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  sub_1001C3FE0(a2, a3);
  sub_10036CC7C(a2, a3, &type metadata for RemoveRequestMessage, &off_100528048, &aBlock);
  v28 = v145;
  if (!v145)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100015AFC(v95, qword_100529B78);
    v96 = v5;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v97, v98))
    {
      goto LABEL_25;
    }

    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    aBlock = v101;
    *v99 = 138543618;
    *(v99 + 4) = v96;
    *v100 = v96;
    *(v99 + 12) = 2080;
    v102 = v96;
    *(v99 + 14) = sub_10002C9C8(0xD000000000000029, 0x800000010043BBA0, &aBlock);
    _os_log_impl(&_mh_execute_header, v97, v98, "[%{public}@] %s message payload is malformed.", v99, 0x16u);
    sub_1000038A4(v100, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v101);

LABEL_24:

LABEL_25:

    return;
  }

  v29 = aBlock;
  v30 = Participant.handle.getter();
  v32 = v31;
  v33 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v34 = *&v5[v33];
  if (!*(v34 + 16) || (, v35 = sub_10000698C(v30, v32), v37 = v36, , (v37 & 1) == 0))
  {

    v26 = v141;

    v9 = v140;
    if (qword_100529B70 == -1)
    {
LABEL_22:
      v103 = type metadata accessor for Logger();
      sub_100015AFC(v103, qword_100529B78);
      (v9[2])(v17, v142, v26);
      v104 = v5;
      v97 = Logger.logObject.getter();
      v105 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v97, v105))
      {

        (v9[1])(v17, v26);
        return;
      }

      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v106 = 138543874;
      *(v106 + 4) = v104;
      *v107 = v104;
      *(v106 + 12) = 2080;
      v108 = v104;
      *(v106 + 14) = sub_10002C9C8(0xD000000000000029, 0x800000010043BBA0, &aBlock);
      *(v106 + 22) = 2082;
      v109 = Participant.handle.getter();
      v111 = v110;
      (v9[1])(v17, v26);
      v112 = sub_10002C9C8(v109, v111, &aBlock);

      *(v106 + 24) = v112;
      _os_log_impl(&_mh_execute_header, v97, v105, "[%{public}@] %s message received from unknown handle: %{public}s", v106, 0x20u);
      sub_1000038A4(v107, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();

      goto LABEL_24;
    }

LABEL_36:
    swift_once();
    goto LABEL_22;
  }

  v134 = v29;
  v38 = (*(v34 + 56) + 16 * v35);
  v39 = *v38;
  v40 = v38[1];

  v41 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
  swift_beginAccess();
  v42 = *&v5[v41];

  LODWORD(v133) = sub_1001BD5E8(v39, v40, v42);

  v43 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
  swift_beginAccess();
  v44 = *&v5[v43];
  if (!*(v44 + 16))
  {
    __break(1u);
    goto LABEL_38;
  }

  v130 = v41;
  v129 = v8;

  v45 = sub_10000698C(v39, v40);
  if ((v46 & 1) == 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v132 = v9;
  v47 = (*(v44 + 56) + 16 * v45);
  v49 = *v47;
  v48 = v47[1];
  v50 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
  swift_beginAccess();
  v131 = v50;
  v51 = *&v5[v50];
  if (!*(v51 + 16))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v52 = sub_10000698C(v49, v48);
  v9 = v53;

  if ((v9 & 1) == 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v54 = *(*(v51 + 56) + 8 * v52);

  v55 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
  v56 = String._bridgeToObjectiveC()();

  v9 = [v55 initWithIdentifier:v56 identity:v54 connected:1 guest:v133 & 1];

  v57 = *&v5[v43];
  v58 = v132;
  if (!*(v57 + 16))
  {
    goto LABEL_28;
  }

  v59 = sub_10000698C(v134, v28);
  if ((v60 & 1) == 0)
  {
    goto LABEL_27;
  }

  v61 = (*(v57 + 56) + 16 * v59);
  v63 = *v61;
  v62 = v61[1];

  v64 = *&v5[v131];
  if (!*(v64 + 16) || (v65 = *&v5[v131], , v66 = sub_10000698C(v63, v62), v68 = v67, , (v68 & 1) == 0))
  {
LABEL_27:

LABEL_28:
    if (qword_100529B70 == -1)
    {
LABEL_29:
      v113 = type metadata accessor for Logger();
      sub_100015AFC(v113, qword_100529B78);
      v114 = v5;

      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v117 = 138543874;
        *(v117 + 4) = v114;
        *v118 = v114;
        *(v117 + 12) = 2080;
        v119 = v114;
        *(v117 + 14) = sub_10002C9C8(0xD000000000000029, 0x800000010043BBA0, &aBlock);
        *(v117 + 22) = 2082;
        v120 = sub_10002C9C8(v134, v28, &aBlock);

        *(v117 + 24) = v120;
        _os_log_impl(&_mh_execute_header, v115, v116, "[%{public}@] %s message received for unknown participant identifier: %{public}s", v117, 0x20u);
        sub_1000038A4(v118, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      else
      {
      }

      return;
    }

LABEL_41:
    swift_once();
    goto LABEL_29;
  }

  v69 = *(*(v64 + 56) + 8 * v66);

  v70 = *&v5[v130];

  v71 = sub_1001BD5E8(v134, v28, v70);

  v72 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
  v73 = v69;
  v74 = String._bridgeToObjectiveC()();

  v75 = [v72 initWithIdentifier:v74 identity:v73 connected:1 guest:v71 & 1];

  v134 = v73;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  sub_100015AFC(v76, qword_100529B78);
  v77 = v140;
  v78 = v135;
  v79 = v141;
  (*(v140 + 16))(v135, v142, v141);
  v80 = v5;
  v81 = v75;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v133 = v82;
    v85 = v84;
    v86 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    aBlock = v142;
    *v85 = 138544130;
    *(v85 + 4) = v80;
    *v86 = v80;
    *(v85 + 12) = 2080;
    LODWORD(v131) = v83;
    v87 = v80;
    *(v85 + 14) = sub_10002C9C8(0xD000000000000029, 0x800000010043BBA0, &aBlock);
    *(v85 + 22) = 2112;
    *(v85 + 24) = v81;
    v86[1] = v81;
    *(v85 + 32) = 2082;
    v88 = v81;
    v89 = Participant.handle.getter();
    v90 = v78;
    v92 = v91;
    (*(v77 + 8))(v90, v79);
    v93 = sub_10002C9C8(v89, v92, &aBlock);

    *(v85 + 34) = v93;
    v94 = v133;
    _os_log_impl(&_mh_execute_header, v133, v131, "[%{public}@] %s %@ from: %{public}s", v85, 0x2Au);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  else
  {

    (*(v77 + 8))(v78, v79);
  }

  v121 = v129;
  v142 = *&v80[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
  v122 = swift_allocObject();
  v122[2] = v80;
  v122[3] = v81;
  v122[4] = v9;
  v148 = sub_100223C38;
  v149 = v122;
  aBlock = _NSConcreteStackBlock;
  v145 = 1107296256;
  v146 = sub_100003D98;
  v147 = &unk_1004C3AA8;
  v123 = _Block_copy(&aBlock);
  v124 = v80;
  v125 = v81;
  v126 = v9;
  v127 = v136;
  static DispatchQoS.unspecified.getter();
  v143 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  v128 = v138;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v123);

  (v58[1])(v128, v121);
  (*(v137 + 8))(v127, v139);
}

void sub_100200EC8(uint64_t a1)
{
  v2 = v1;
  v171 = a1;
  v169 = type metadata accessor for UUID();
  v3 = *(v169 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v169);
  v164 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v153 - v8;
  __chkstk_darwin(v7);
  v11 = &v153 - v10;
  v172 = type metadata accessor for Participant();
  v170 = *(v172 - 8);
  v12 = *(v170 + 64);
  v13 = __chkstk_darwin(v172);
  v163 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v153 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = (&v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v21 = v22;
  (*(v18 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  v24 = _dispatchPreconditionTest(_:)();
  v26 = *(v18 + 8);
  v25 = v18 + 8;
  v26(v21, v17);
  if ((v24 & 1) == 0)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v25 = OBJC_IVAR___MRDFastSyncGroupSession__state;
  if (*&v2[OBJC_IVAR___MRDFastSyncGroupSession__state] == 3)
  {
    if (*&v2[OBJC_IVAR___MRDFastSyncGroupSession_groupSession])
    {
      v27 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8];
      if (v27)
      {
        v157 = v9;
        v158 = v2;
        v165 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
        v28 = v171 + 56;
        v29 = 1 << *(v171 + 32);
        v30 = -1;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        v31 = v30 & *(v171 + 56);
        v32 = &v2[OBJC_IVAR___MRDFastSyncGroupSession_localFastSyncIdentifier];
        v160 = v27;
        v161 = &v2[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
        v2 = ((v29 + 63) >> 6);
        v167 = v170 + 16;
        v168 = (v3 + 8);
        v166 = (v170 + 8);

        v159 = &_swiftEmptyDictionarySingleton;
        v162 = v32;
        v33 = 0;
        if (v31)
        {
          while (1)
          {
            v25 = v33;
LABEL_12:
            v34 = __clz(__rbit64(v31));
            v31 &= v31 - 1;
            (*(v170 + 16))(v16, *(v171 + 48) + *(v170 + 72) * (v34 | (v25 << 6)), v172);
            Participant.id.getter();
            v35 = UUID.uuidString.getter();
            v37 = v36;
            v38 = *v168;
            (*v168)(v11, v169);
            v39 = *(v32 + 1);
            if (!v39)
            {
              break;
            }

            if (v35 == *v32 && v39 == v37)
            {
            }

            else
            {
              v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v40 & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v41 = v161[1];
            if (v41)
            {
              v156 = *v161;

LABEL_23:
              v43 = v157;
              Participant.id.getter();
              v155 = UUID.uuidString.getter();
              v154 = v44;
              v38(v43, v169);
              v45 = v159;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v174[0] = v45;
              v48 = sub_10000698C(v156, v41);
              v49 = *(v45 + 16);
              v50 = (v47 & 1) == 0;
              v51 = v49 + v50;
              if (__OFADD__(v49, v50))
              {
                __break(1u);
LABEL_111:
                __break(1u);
LABEL_112:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
LABEL_113:
                v173 = v83;
                _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
                __break(1u);
                return;
              }

              if (*(v45 + 24) >= v51)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v72 = v47;
                  sub_10021A724();
                  LOBYTE(v47) = v72;
                }

                v52 = v156;
                v55 = v174[0];
                if (v47)
                {
                  goto LABEL_32;
                }
              }

              else
              {
                LODWORD(v159) = v47;
                sub_100219B20(v51, isUniquelyReferenced_nonNull_native);
                v52 = v156;
                v53 = sub_10000698C(v156, v41);
                if ((v159 & 1) != (v54 & 1))
                {
                  goto LABEL_112;
                }

                v48 = v53;
                v55 = v174[0];
                if (v159)
                {
LABEL_32:

                  v60 = v55;
                  goto LABEL_33;
                }
              }

              v55[(v48 >> 6) + 8] |= 1 << v48;
              v56 = (v55[6] + 16 * v48);
              *v56 = v52;
              v56[1] = v41;
              *(v55[7] + 8 * v48) = _swiftEmptyArrayStorage;
              v57 = v55[2];
              v58 = __OFADD__(v57, 1);
              v59 = v57 + 1;
              if (v58)
              {
                goto LABEL_111;
              }

              v60 = v55;
              v55[2] = v59;
LABEL_33:
              v61 = *(v60 + 56);
              v62 = *(v61 + 8 * v48);
              v63 = swift_isUniquelyReferenced_nonNull_native();
              v156 = v48;
              *(v61 + 8 * v48) = v62;
              v64 = v61;
              v159 = v60;
              if ((v63 & 1) == 0)
              {
                v62 = sub_10002AFD0(0, *(v62 + 2) + 1, 1, v62);
                *(v61 + 8 * v156) = v62;
              }

              v66 = *(v62 + 2);
              v65 = *(v62 + 3);
              if (v66 >= v65 >> 1)
              {
                v71 = sub_10002AFD0((v65 > 1), v66 + 1, 1, v62);
                *(v64 + 8 * v156) = v71;
              }

              (*v166)(v16, v172);
              v67 = v155;
              v68 = *(v64 + 8 * v156);
              *(v68 + 16) = v66 + 1;
              v69 = v68 + 16 * v66;
              v70 = v154;
              *(v69 + 32) = v67;
              *(v69 + 40) = v70;
              v32 = v162;
              v33 = v25;
              if (!v31)
              {
                goto LABEL_9;
              }
            }

            else
            {
              (*v166)(v16, v172);
              v33 = v25;
              v32 = v162;
              if (!v31)
              {
                goto LABEL_9;
              }
            }
          }

LABEL_21:
          v156 = Participant.handle.getter();
          v41 = v42;
          goto LABEL_23;
        }

        while (1)
        {
LABEL_9:
          v25 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
            goto LABEL_107;
          }

          if (v25 >= v2)
          {
            break;
          }

          v31 = *(v28 + 8 * v25);
          ++v33;
          if (v31)
          {
            goto LABEL_12;
          }
        }

        v86 = sub_10021AF80(v159);

        if (*(v86 + 16))
        {
          v87 = v158;
          if (qword_100529B70 != -1)
          {
            swift_once();
          }

          v88 = type metadata accessor for Logger();
          sub_100015AFC(v88, qword_100529B78);
          v89 = v87;

          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            v174[0] = v162;
            *v92 = 138543874;
            *(v92 + 4) = v89;
            *v93 = v89;
            *(v92 + 12) = 2082;
            v95 = *&v89[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
            v94 = *&v89[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
            v96 = v89;
            *(v92 + 14) = sub_10002C9C8(v95, v94, v174);
            *(v92 + 22) = 2082;
            sub_1001BC5A8(&qword_1005229B0, &unk_100450110);
            v97 = Dictionary.description.getter();
            v99 = v98;

            v100 = sub_10002C9C8(v97, v99, v174);

            *(v92 + 24) = v100;
            _os_log_impl(&_mh_execute_header, v90, v91, "[%{public}@]<%{public}s> Handle collision detected: %{public}s", v92, 0x20u);
            sub_1000038A4(v93, &qword_100521870, &unk_10044EA70);
            v87 = v158;

            swift_arrayDestroy();
          }

          else
          {
          }
        }

        else
        {

          v87 = v158;
        }

        v117 = v163;
        v2 = v164;
        v118 = 1 << *(v171 + 32);
        v119 = -1;
        if (v118 < 64)
        {
          v119 = ~(-1 << v118);
        }

        v120 = v119 & *(v171 + 56);
        v25 = v87 + OBJC_IVAR___MRDFastSyncGroupSession_leaderFastSyncIdentifier;
        v121 = (v118 + 63) >> 6;

        v122 = 0;
        while (v120)
        {
LABEL_74:
          (*(v170 + 16))(v117, *(v171 + 48) + *(v170 + 72) * (__clz(__rbit64(v120)) | (v122 << 6)), v172);
          if (Participant.handle.getter() == v165 && v160 == v124)
          {

            goto LABEL_100;
          }

          v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v125)
          {

LABEL_100:

            (*v166)(v117, v172);
LABEL_103:
            if ((*(v87 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader) & 1) == 0)
            {
              sub_10020CD20();
            }

            sub_10020B668();
            sub_1002021D8(0);
            return;
          }

          v120 &= v120 - 1;
          Participant.id.getter();
          v126 = UUID.uuidString.getter();
          v128 = v127;
          (*v168)(v2, v169);
          v129 = *(v25 + 8);
          if (v129)
          {
            if (v126 == *v25 && v129 == v128)
            {

              (*v166)(v117, v172);
LABEL_102:

              goto LABEL_103;
            }

            v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

            (*v166)(v117, v172);
            if (v130)
            {
              goto LABEL_102;
            }
          }

          else
          {

            (*v166)(v117, v172);
          }
        }

        while (1)
        {
          v123 = v122 + 1;
          if (__OFADD__(v122, 1))
          {
            break;
          }

          if (v123 >= v121)
          {

            if (qword_100529B70 != -1)
            {
              swift_once();
            }

            v131 = type metadata accessor for Logger();
            sub_100015AFC(v131, qword_100529B78);
            v132 = v87;
            v133 = Logger.logObject.getter();
            v134 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v133, v134))
            {
              v135 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              v137 = swift_slowAlloc();
              v174[0] = v137;
              *v135 = 138543618;
              *(v135 + 4) = v132;
              *v136 = v132;
              *(v135 + 12) = 2082;
              v138 = *&v132[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
              v139 = *&v132[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
              v140 = v132;
              *(v135 + 14) = sub_10002C9C8(v138, v139, v174);
              _os_log_impl(&_mh_execute_header, v133, v134, "[%{public}@]<%{public}s> Leader lost from participants.", v135, 0x16u);
              sub_1000038A4(v136, &qword_100521870, &unk_10044EA70);

              sub_100026A44(v137);
            }

            if (v132[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] == 1)
            {
              v141 = v132;
              v142 = Logger.logObject.getter();
              v143 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v142, v143))
              {
                v144 = swift_slowAlloc();
                v145 = swift_slowAlloc();
                v146 = swift_slowAlloc();
                v174[0] = v146;
                *v144 = 138543618;
                *(v144 + 4) = v141;
                *v145 = v141;
                *(v144 + 12) = 2082;
                v147 = *&v141[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
                v148 = *&v141[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
                v149 = v141;
                *(v144 + 14) = sub_10002C9C8(v147, v148, v174);
                _os_log_impl(&_mh_execute_header, v142, v143, "[%{public}@]<%{public}s> Leader lost from own participants.", v144, 0x16u);
                sub_1000038A4(v145, &qword_100521870, &unk_10044EA70);

                sub_100026A44(v146);
              }

              sub_10021DECC();
              v150 = swift_allocError();
              *v151 = 4;
              sub_100204BF8(v150);
            }

            else
            {
              sub_10020C2E4();
            }

            return;
          }

          v120 = *(v28 + 8 * v123);
          ++v122;
          if (v120)
          {
            v122 = v123;
            goto LABEL_74;
          }
        }

LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v112 = type metadata accessor for Logger();
      sub_100015AFC(v112, qword_100529B78);
      v113 = v2;
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v103, v104))
      {
LABEL_59:

        return;
      }

      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v174[0] = v107;
      *v105 = 138543618;
      *(v105 + 4) = v113;
      *v106 = v113;
      *(v105 + 12) = 2082;
      v114 = *&v113[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v115 = *&v113[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v116 = v113;
      *(v105 + 14) = sub_10002C9C8(v114, v115, v174);
      v111 = "[%{public}@]<%{public}s> Dropping handleParticipantsChanged before leader discovered.";
    }

    else
    {
      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for Logger();
      sub_100015AFC(v101, qword_100529B78);
      v102 = v2;
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v103, v104))
      {
        goto LABEL_59;
      }

      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v174[0] = v107;
      *v105 = 138543618;
      *(v105 + 4) = v102;
      *v106 = v102;
      *(v105 + 12) = 2082;
      v108 = *&v102[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v109 = *&v102[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v110 = v102;
      *(v105 + 14) = sub_10002C9C8(v108, v109, v174);
      v111 = "[%{public}@]<%{public}s> Dropping handleParticipantsChanged with no session.";
    }

    _os_log_impl(&_mh_execute_header, v103, v104, v111, v105, 0x16u);
    sub_1000038A4(v106, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v107);

    goto LABEL_59;
  }

  if (qword_100529B70 != -1)
  {
LABEL_109:
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  sub_100015AFC(v73, qword_100529B78);
  v74 = v2;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v174[0] = swift_slowAlloc();
    *v77 = 138543874;
    *(v77 + 4) = v74;
    *v78 = v74;
    *(v77 + 12) = 2082;
    v79 = v2;
    v80 = *&v74[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v81 = *&v74[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v82 = v74;
    *(v77 + 14) = sub_10002C9C8(v80, v81, v174);
    *(v77 + 22) = 2080;
    v83 = *&v79[v25];
    if (v83 <= 1)
    {
      if (v83)
      {
        if (v83 != 1)
        {
          goto LABEL_113;
        }

        v84 = 0xE500000000000000;
        v85 = 0x7472617473;
      }

      else
      {
        v84 = 0xE700000000000000;
        v85 = 0x6C616974696E69;
      }
    }

    else
    {
      switch(v83)
      {
        case 2:
          v84 = 0xE700000000000000;
          v85 = 0x676E696E696F6ALL;
          break;
        case 3:
          v84 = 0xE600000000000000;
          v85 = 0x64656E696F6ALL;
          break;
        case 4:
          v84 = 0xEB00000000646574;
          v85 = 0x6164696C61766E69;
          break;
        default:
          goto LABEL_113;
      }
    }

    v152 = sub_10002C9C8(v85, v84, v174);

    *(v77 + 24) = v152;
    _os_log_impl(&_mh_execute_header, v75, v76, "[%{public}@]<%{public}s> Dropping handleParticipantsChanged in state: %s.", v77, 0x20u);
    sub_1000038A4(v78, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }
}

void sub_1002021D8(int a1)
{
  v2 = v1;
  LODWORD(v327) = a1;
  v3 = type metadata accessor for Participants();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v294 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v324 = &v294 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = type metadata accessor for DispatchQoS();
  v323 = *(v325 - 8);
  v12 = *(v323 + 64);
  __chkstk_darwin(v325);
  v322 = &v294 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v294 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(&v2->isa + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v326 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    goto LABEL_160;
  }

  if (*(&v2->isa + OBJC_IVAR___MRDFastSyncGroupSession_isLeader) != 1)
  {
    return;
  }

  v314 = v9;
  v9 = OBJC_IVAR___MRDFastSyncGroupSession__state;
  if (*(&v2->isa + OBJC_IVAR___MRDFastSyncGroupSession__state) != 3)
  {
    if (qword_100529B70 != -1)
    {
      goto LABEL_163;
    }

    goto LABEL_9;
  }

  if (!*(&v2->isa + OBJC_IVAR___MRDFastSyncGroupSession_groupSession))
  {
    if (qword_100529B70 != -1)
    {
      goto LABEL_165;
    }

    goto LABEL_15;
  }

  v305 = GroupSession.activeParticipants.getter();
  v309 = sub_1001FCD38(v305, &type metadata accessor for Participant, &Participant.handle.getter);
  v20 = objc_opt_self();
  v21 = [v20 currentSettings];
  if (!v21)
  {
    goto LABEL_168;
  }

  v23 = v21;
  v24 = [v21 supportGroupSessionLowPowerMode];

  v299 = v20;
  if (v24)
  {
    v25 = *(&v2->isa + OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource);
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v25;
    static Published.subscript.getter();

    v27 = aBlock;
  }

  else
  {
    v27 = &_swiftEmptySetSingleton;
  }

  v303 = 0;
  v310 = v8;
  v296 = v7;
  v297 = v4;
  v298 = v3;

  v302 = v27;
  v48 = sub_10021E220(v47, v27);

  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  v22 = *(&v2[1].isa + OBJC_IVAR___MRDFastSyncGroupSession_localHandle);
  if (!v22)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  *(inited + 32) = *(v2 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle);
  v50 = inited + 32;
  *(inited + 40) = v22;
  v51 = inited;

  v9 = sub_10021E220(v51, v48);
  swift_setDeallocating();
  sub_1001E6204(v50);
  v52 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v319 = v52;
  v53 = *(&v2->isa + v52);
  v54 = (v53 + 64);
  v55 = 1 << *(v53 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v57 = v56 & *(v53 + 64);
  v58 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToPresenceTimeoutTimerMap;
  v308 = (v2 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
  v313 = OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource;
  v59 = OBJC_IVAR___MRDFastSyncGroupSession_timedOutParticipantHandles;
  v307 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
  v306 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
  v321 = v53;
  swift_bridgeObjectRetain_n();
  v320 = v58;
  swift_beginAccess();
  v311 = v59;
  swift_beginAccess();
  v60 = 0;
  v61 = (v55 + 63) >> 6;
  v62 = v9 + 56;
  v304 = &v331;
  *&v63 = 138543874;
  v300 = v63;
  v312 = v2;
  v315 = v9;
  v316 = v61;
  v318 = v9 + 56;
  v317 = v54;
  while (v57)
  {
LABEL_28:
    v65 = __clz(__rbit64(v57));
    v57 &= v57 - 1;
    v66 = (*(v321 + 48) + ((v60 << 10) | (16 * v65)));
    v67 = *v66;
    v68 = v66[1];
    if (*(v9 + 16))
    {
      v69 = *(v9 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v70 = Hasher._finalize()();
      v71 = -1 << *(v9 + 32);
      v72 = v70 & ~v71;
      if (((*(v62 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
      {
        goto LABEL_39;
      }

      v73 = ~v71;
      while (1)
      {
        v74 = (*(v9 + 48) + 16 * v72);
        v75 = *v74 == v67 && v74[1] == v68;
        if (v75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v72 = (v72 + 1) & v73;
        if (((*(v62 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      if (!(*(&v2->isa + v320))[2])
      {
        goto LABEL_81;
      }

      v113 = *(&v2->isa + v320);

      sub_10000698C(v67, v68);
      if ((v114 & 1) == 0)
      {
LABEL_77:

LABEL_81:

        goto LABEL_98;
      }

      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v115 = type metadata accessor for Logger();
      sub_100015AFC(v115, qword_100529B78);

      v116 = v2;
      v117 = Logger.logObject.getter();
      v118 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v294 = v117;
        v121 = v120;
        v295 = swift_slowAlloc();
        aBlock = v295;
        *v119 = v300;
        *(v119 + 4) = v116;
        *v121 = v2;
        *(v119 + 12) = 2082;
        v122 = *v308;
        v123 = v308[1];
        v124 = v116;
        v125 = v123;
        v2 = v312;
        *(v119 + 14) = sub_10002C9C8(v122, v125, &aBlock);
        *(v119 + 22) = 2080;
        *(v119 + 24) = sub_10002C9C8(v67, v68, &aBlock);
        v126 = v294;
        _os_log_impl(&_mh_execute_header, v294, v118, "[%{public}@]<%{public}s> Cancel timeout timer for: %s.", v119, 0x20u);
        sub_1000038A4(v121, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();

        v62 = v318;
      }

      else
      {
      }

      v9 = v315;
      v133 = *(&v2->isa + v320);
      if (*(v133 + 16))
      {
        v134 = *(&v2->isa + v320);

        v135 = sub_10000698C(v67, v68);
        if (v136)
        {
          v137 = *(*(v133 + 56) + 8 * v135);

          [v137 invalidate];
        }

        else
        {
        }
      }

      swift_beginAccess();
      sub_1001EC6DC(0, v67, v68);
      swift_endAccess();
LABEL_98:
      v54 = v317;
      v61 = v316;
    }

    else
    {

LABEL_39:
      v76 = *(*(&v2->isa + v313) + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members);
      if (!*(v76 + 16))
      {
        goto LABEL_49;
      }

      v77 = *(v76 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v78 = Hasher._finalize()();
      v79 = -1 << *(v76 + 32);
      v80 = v78 & ~v79;
      if (((*(v76 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
      {
LABEL_48:

LABEL_49:
        if ((*(&v2->isa + v320))[2])
        {
          v84 = *(&v2->isa + v320);

          sub_10000698C(v67, v68);
          v86 = v85;

          if (v86)
          {
            v87 = *(&v2->isa + v320);
            if (*(v87 + 16))
            {
              v88 = *(&v2->isa + v320);

              v89 = sub_10000698C(v67, v68);
              if (v90)
              {
                v91 = *(*(v87 + 56) + 8 * v89);

                [v91 invalidate];
              }

              else
              {
              }
            }

            swift_beginAccess();

            sub_1001EC6DC(0, v67, v68);
            swift_endAccess();
            if (qword_100529B70 != -1)
            {
              swift_once();
            }

            v138 = type metadata accessor for Logger();
            sub_100015AFC(v138, qword_100529B78);

            v139 = v2;
            v140 = Logger.logObject.getter();
            v9 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v140, v9))
            {
              v141 = swift_slowAlloc();
              v142 = swift_slowAlloc();
              v327 = swift_slowAlloc();
              aBlock = v327;
              *v141 = v300;
              *(v141 + 4) = v139;
              *v142 = v2;
              *(v141 + 12) = 2082;
              v295 = v140;
              v144 = *v308;
              v143 = v308[1];
              v145 = v139;
              v146 = v144;
              v2 = v312;
              *(v141 + 14) = sub_10002C9C8(v146, v143, &aBlock);
              *(v141 + 22) = 2080;
              *(v141 + 24) = sub_10002C9C8(v67, v68, &aBlock);
              v140 = v295;
              _os_log_impl(&_mh_execute_header, v295, v9, "[%{public}@]<%{public}s> Ending timeout timer early and unmapping: %s.", v141, 0x20u);
              sub_1000038A4(v142, &qword_100521870, &unk_10044EA70);

              swift_arrayDestroy();
            }
          }
        }

LABEL_92:
        v147 = *(&v2->isa + v319);
        if (!*(v147 + 16))
        {
          goto LABEL_161;
        }

        v148 = *(&v2->isa + v319);

        v149 = sub_10000698C(v67, v68);
        if ((v150 & 1) == 0)
        {
          goto LABEL_162;
        }

        v151 = (*(v147 + 56) + 16 * v149);
        v153 = *v151;
        v152 = v151[1];

        swift_beginAccess();

        sub_1001EC7F4(0, 0, v153, v152);
        swift_endAccess();
        swift_beginAccess();
        sub_1001EC7F4(0, 0, v67, v68);
        swift_endAccess();
        swift_beginAccess();
        v154 = v153;
        v9 = v315;
        sub_1001C0CA0(v154, v152);
        swift_endAccess();

        LODWORD(v327) = 1;
        goto LABEL_95;
      }

      v81 = ~v79;
      while (1)
      {
        v82 = (*(v76 + 48) + 16 * v80);
        v83 = *v82 == v67 && v82[1] == v68;
        if (v83 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v80 = (v80 + 1) & v81;
        if (((*(v76 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v92 = *(&v2->isa + v311);
      if (*(v92 + 16))
      {
        v93 = *(v92 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v94 = Hasher._finalize()();
        v95 = -1 << *(v92 + 32);
        v96 = v94 & ~v95;
        if ((*(v92 + 56 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96))
        {
          v97 = ~v95;
          while (1)
          {
            v98 = (*(v92 + 48) + 16 * v96);
            v99 = *v98 == v67 && v98[1] == v68;
            if (v99 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v96 = (v96 + 1) & v97;
            if (((*(v92 + 56 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          swift_beginAccess();
          sub_1001C0CA0(v67, v68);
          swift_endAccess();

          goto LABEL_92;
        }

LABEL_63:
      }

      v62 = v318;
      if ((*(&v2->isa + v320))[2])
      {
        v100 = *(&v2->isa + v320);

        sub_10000698C(v67, v68);
        if (v101)
        {
          goto LABEL_77;
        }
      }

      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v102 = type metadata accessor for Logger();
      sub_100015AFC(v102, qword_100529B78);

      v103 = v2;
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v294 = v104;
        v108 = v107;
        v295 = swift_slowAlloc();
        aBlock = v295;
        *v106 = v300;
        *(v106 + 4) = v103;
        *v108 = v2;
        *(v106 + 12) = 2082;
        v110 = *v308;
        v109 = v308[1];
        v111 = v103;
        *(v106 + 14) = sub_10002C9C8(v110, v109, &aBlock);
        *(v106 + 22) = 2082;
        *(v106 + 24) = sub_10002C9C8(v67, v68, &aBlock);
        v112 = v294;
        _os_log_impl(&_mh_execute_header, v294, v105, "[%{public}@]<%{public}s> Starting timeout timer for: %{public}s.", v106, 0x20u);
        sub_1000038A4(v108, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      else
      {
      }

      v9 = v315;
      v127 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v128 = swift_allocObject();
      v128[2] = v127;
      v128[3] = v67;
      v128[4] = v68;
      v129 = objc_allocWithZone(MSVTimer);
      v333 = sub_1002237D0;
      v334 = v128;
      aBlock = _NSConcreteStackBlock;
      v330 = 1107296256;
      v331 = sub_100003D98;
      v332 = &unk_1004C3A08;
      v130 = _Block_copy(&aBlock);
      v131 = v326;

      v132 = [v129 initWithInterval:0 repeats:v131 queue:v130 block:15.0];
      _Block_release(v130);

      v2 = v312;
      swift_beginAccess();
      sub_1001EC6DC(v132, v67, v68);
      swift_endAccess();
LABEL_95:
      v54 = v317;
      v61 = v316;
      v62 = v318;
    }
  }

  while (1)
  {
    v64 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v64 >= v61)
    {

      v155 = *(&v2->isa + v319);
      v156 = v2;

      v158 = v303;
      v159 = sub_10021E2A0(v157, v156);
      v313 = v158;

      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v160 = type metadata accessor for Logger();
      v161 = sub_100015AFC(v160, qword_100529B78);
      v162 = v156;

      v316 = v161;
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.info.getter();

      v165 = os_log_type_enabled(v163, v164);
      v318 = v155;
      if (v165)
      {
        v166 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v166 = 138544130;
        *(v166 + 4) = v162;
        *v167 = v2;
        *(v166 + 12) = 2082;
        v168 = *v308;
        v169 = v308[1];
        v170 = v162;
        *(v166 + 14) = sub_10002C9C8(v168, v169, &aBlock);
        *(v166 + 22) = 2080;
        *(v166 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &aBlock);
        *(v166 + 32) = 2080;
        v171 = Array.description.getter();
        v173 = sub_10002C9C8(v171, v172, &aBlock);

        *(v166 + 34) = v173;
        _os_log_impl(&_mh_execute_header, v163, v164, "[%{public}@]<%{public}s> %s mapped participants: %s", v166, 0x2Au);
        sub_1000038A4(v167, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      v174 = v310;
      v175 = *(v159 + 16);
      v176 = _swiftEmptyArrayStorage;
      v320 = v159;
      if (v175)
      {
        v326 = v162;
        aBlock = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v177 = (v159 + 58);
        do
        {
          v178 = *(v177 - 26);
          v179 = *(v177 - 18);
          v180 = *(v177 - 10);
          v181 = *(v177 - 2);
          v182 = *(v177 - 1);
          v183 = *v177;
          v177 += 32;
          v184 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);

          v185 = v180;
          v186 = String._bridgeToObjectiveC()();

          [v184 initWithIdentifier:v186 identity:v185 connected:v181 guest:v182 hidden:v183];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          isa = aBlock[2].isa;
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v175;
        }

        while (v175);
        v176 = aBlock;
        v174 = v310;
        v162 = v326;
      }

      v188 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
      swift_beginAccess();
      v189 = v162;
      v190 = *(&v162->isa + v188);
      v191 = *(v190 + 16);
      v326 = v176;
      if (v191)
      {
        v192 = sub_100218674(v191, 0);
        v193 = sub_10021BFDC(&aBlock, v192 + 4, v191, v190);
        v2 = aBlock;

        sub_100045960();
        if (v193 == v191)
        {
          v174 = v310;
          v194 = v192;
          v176 = v326;
          goto LABEL_111;
        }

        __break(1u);
LABEL_165:
        swift_once();
LABEL_15:
        v39 = type metadata accessor for Logger();
        sub_100015AFC(v39, qword_100529B78);
        v40 = v2;
        v30 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v30, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v42 = 138543874;
          *(v42 + 4) = v40;
          *v43 = v40;
          *(v42 + 12) = 2082;
          v44 = *(&v40->isa + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
          v45 = *(&v40[1].isa + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
          v46 = v40;
          *(v42 + 14) = sub_10002C9C8(v44, v45, &aBlock);
          *(v42 + 22) = 2080;
          *(v42 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &aBlock);
          _os_log_impl(&_mh_execute_header, v30, v41, "[%{public}@]<%{public}s> %s No group session when updateParticipants called.", v42, 0x20u);
          sub_1000038A4(v43, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();
          goto LABEL_139;
        }

        goto LABEL_140;
      }

      v194 = _swiftEmptyArrayStorage;
LABEL_111:
      v195 = *(&v189->isa + OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue);
      v196 = swift_allocObject();
      v196[2] = v189;
      v196[3] = v194;
      v196[4] = v176;
      v333 = sub_100223AE0;
      v334 = v196;
      aBlock = _NSConcreteStackBlock;
      v330 = 1107296256;
      v331 = sub_100003D98;
      v332 = &unk_1004C3A58;
      v197 = _Block_copy(&aBlock);
      v198 = v189;
      v317 = v194;

      v199 = v322;
      static DispatchQoS.unspecified.getter();
      v328 = _swiftEmptyArrayStorage;
      sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      v200 = v324;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v197);
      (*(v314 + 8))(v200, v174);
      (*(v323 + 8))(v199, v325);

      v22 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
      v201 = *&v198[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
      if (!v201)
      {
        goto LABEL_170;
      }

      v202 = v312;
      v203 = *(&v312->isa + v319);
      v204 = *(*v201 + 360);
      v205 = *&v198[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];

      v204(v206);

      if (v327)
      {
        v207 = v198;
        v208 = v305;

        v210 = sub_10021EA38(v209, v207);

        if (*(v210 + 16))
        {
          v211 = [v299 currentSettings];
          v22 = &v336;
          v212 = v320;
          if (!v211)
          {
            goto LABEL_171;
          }

          v213 = v211;

          v214 = [v213 groupSessionSynchronizePendingParticipants];

          v325 = v210;
          if (!v214)
          {
            v218 = _swiftEmptyArrayStorage;
            goto LABEL_142;
          }

          v215 = OBJC_IVAR___MRDFastSyncGroupSession_pendingParticipants;
          swift_beginAccess();
          v216 = *&v207[v215];
          if (v216 >> 62)
          {
            v293 = *&v207[v215];
            v217 = _CocoaArrayWrapper.endIndex.getter();
            v216 = v293;
          }

          else
          {
            v217 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v218 = _swiftEmptyArrayStorage;
          if (v217)
          {
            v324 = v207;
            v328 = _swiftEmptyArrayStorage;
            v219 = v216;

            sub_10021AE54(0, v217 & ~(v217 >> 63), 0);
            if ((v217 & 0x8000000000000000) == 0)
            {
              v220 = 0;
              v221 = v219;
              v326 = (v219 & 0xC000000000000001);
              v218 = v328;
              v327 = v219;
              do
              {
                if (v326)
                {
                  v222 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v222 = *(v221 + 8 * v220 + 32);
                  swift_unknownObjectRetain();
                }

                v223 = [v222 identifier];
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                v224 = [v222 identity];
                [v222 guest];
                [v222 hidden];
                sub_10036D3A4();
                v226 = v225;
                v228 = v227;
                v230 = v229;
                v232 = v231;
                swift_unknownObjectRelease();
                v328 = v218;
                v234 = v218[2];
                v233 = v218[3];
                if (v234 >= v233 >> 1)
                {
                  sub_10021AE54((v233 > 1), v234 + 1, 1);
                  v218 = v328;
                }

                ++v220;
                v218[2] = v234 + 1;
                v235 = &v218[4 * v234];
                v235[4] = v226;
                v235[5] = v228;
                v235[6] = v230;
                *(v235 + 56) = v232 & 1;
                *(v235 + 57) = BYTE1(v232) & 1;
                *(v235 + 58) = BYTE2(v232) & 1;
                v221 = v327;
              }

              while (v217 != v220);

              v208 = v305;
              v212 = v320;
              v210 = v325;
              v207 = v324;
              goto LABEL_142;
            }

            __break(1u);
LABEL_168:
            __break(1u);
            goto LABEL_169;
          }

LABEL_142:
          v250 = *(v208 + 16);

          v251 = v250 + ~*(v210 + 16);
          if (v251 >= 1)
          {
            v252 = v207;
            v253 = Logger.logObject.getter();
            v254 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v253, v254))
            {
              v255 = swift_slowAlloc();
              v256 = swift_slowAlloc();
              v324 = v207;
              v257 = v256;
              v328 = swift_slowAlloc();
              *v255 = 138544130;
              *(v255 + 4) = v252;
              *v257 = v312;
              *(v255 + 12) = 2082;
              v258 = *v308;
              v259 = v308[1];
              v260 = v252;
              *(v255 + 14) = sub_10002C9C8(v258, v259, &v328);
              *(v255 + 22) = 2080;
              *(v255 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &v328);
              *(v255 + 32) = 2048;
              *(v255 + 34) = v251;
              _os_log_impl(&_mh_execute_header, v253, v254, "[%{public}@]<%{public}s> %s Will not message %ld unmapped participants.", v255, 0x2Au);
              sub_1000038A4(v257, &qword_100521870, &unk_10044EA70);
              v207 = v324;

              swift_arrayDestroy();
              v212 = v320;
            }
          }

          v261 = *&v207[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];
          if (v261)
          {
            v262 = *&v207[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];

            v263 = MRDFastSyncGroupSessionState.rawValue.getter(v212, v218, v317);
            v266 = sub_10036E094(v263, v264, v265);

            v267 = v207;
            v268 = Logger.logObject.getter();
            v269 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v268, v269))
            {
              v270 = swift_slowAlloc();
              v271 = swift_slowAlloc();
              v272 = swift_slowAlloc();
              v327 = v266;
              v328 = v272;
              *v270 = 138544130;
              *(v270 + 4) = v267;
              *v271 = v312;
              *(v270 + 12) = 2082;
              v273 = *v308;
              v274 = v308[1];
              v275 = v267;
              *(v270 + 14) = sub_10002C9C8(v273, v274, &v328);
              *(v270 + 22) = 2080;
              *(v270 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &v328);
              *(v270 + 32) = 2080;

              v276 = Array.description.getter();
              v278 = v277;

              v279 = sub_10002C9C8(v276, v278, &v328);

              *(v270 + 34) = v279;
              _os_log_impl(&_mh_execute_header, v268, v269, "[%{public}@]<%{public}s> %s Sending message with pending participants: %s", v270, 0x2Au);
              sub_1000038A4(v271, &qword_100521870, &unk_10044EA70);

              swift_arrayDestroy();
              v266 = v327;
            }

            v280 = v298;
            v281 = v297;
            v282 = v296;
            *v296 = v325;
            (*(v281 + 104))(v282, enum case for Participants.only(_:), v280);
            v283 = v266;
            sub_10020CF20(3u, v266, v282, v261, 0, 0);

            (*(v281 + 8))(v282, v280);
            goto LABEL_157;
          }

          v284 = v207;
          v285 = Logger.logObject.getter();
          v286 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v285, v286))
          {
            v287 = swift_slowAlloc();
            v288 = swift_slowAlloc();
            v328 = swift_slowAlloc();
            *v287 = v300;
            *(v287 + 4) = v284;
            *v288 = v312;
            *(v287 + 12) = 2082;
            v289 = *v308;
            v290 = v308[1];
            v291 = v284;
            *(v287 + 14) = sub_10002C9C8(v289, v290, &v328);
            *(v287 + 22) = 2080;
            *(v287 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &v328);
            _os_log_impl(&_mh_execute_header, v285, v286, "[%{public}@]<%{public}s> %s Drop identity broadcast we are not ready.", v287, 0x20u);
            sub_1000038A4(v288, &qword_100521870, &unk_10044EA70);

            swift_arrayDestroy();
          }
        }

        else
        {

          v237 = v207;

          v238 = Logger.logObject.getter();
          v239 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v238, v239))
          {
            v240 = swift_slowAlloc();
            v241 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v240 = 138544130;
            *(v240 + 4) = v237;
            *v241 = v202;
            *(v240 + 12) = 2082;
            v242 = *v308;
            v243 = v308[1];
            v244 = v237;
            *(v240 + 14) = sub_10002C9C8(v242, v243, &aBlock);
            *(v240 + 22) = 2080;
            *(v240 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &aBlock);
            *(v240 + 32) = 2082;
            type metadata accessor for Participant();
            sub_100004858(&qword_100521D68, 255, &type metadata accessor for Participant);
            v245 = Set.description.getter();
            v247 = v246;

            v248 = sub_10002C9C8(v245, v247, &aBlock);

            *(v240 + 34) = v248;
            _os_log_impl(&_mh_execute_header, v238, v239, "[%{public}@]<%{public}s> %s No mapped participants to sync participants to. activeFastSyncParticipants: %{public}s", v240, 0x2Au);
            sub_1000038A4(v241, &qword_100521870, &unk_10044EA70);

            swift_arrayDestroy();
          }

          else
          {
          }
        }

        v236 = &v337;
      }

      else
      {

        v236 = &v331;
      }

      v292 = *(v236 - 32);
LABEL_157:

      return;
    }

    v57 = v54[v64];
    ++v60;
    if (v57)
    {
      v60 = v64;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  swift_once();
LABEL_9:
  v28 = type metadata accessor for Logger();
  sub_100015AFC(v28, qword_100529B78);
  v29 = v2;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v30, v31))
  {
    goto LABEL_140;
  }

  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  aBlock = swift_slowAlloc();
  *v32 = 138544130;
  *(v32 + 4) = v29;
  *v33 = v29;
  *(v32 + 12) = 2082;
  v34 = *(&v29->isa + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
  v35 = *(&v29[1].isa + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
  v36 = v29;
  *(v32 + 14) = sub_10002C9C8(v34, v35, &aBlock);
  *(v32 + 22) = 2080;
  *(v32 + 24) = sub_10002C9C8(0xD000000000000037, 0x800000010043BB60, &aBlock);
  *(v32 + 32) = 2080;
  v22 = *(&v2->isa + v9);
  if (v22 <= 1)
  {
    if (!v22)
    {
      v37 = 0xE700000000000000;
      v38 = 0x6C616974696E69;
      goto LABEL_138;
    }

    if (v22 != 1)
    {
      goto LABEL_172;
    }

    v37 = 0xE500000000000000;
    v38 = 0x7472617473;
LABEL_138:
    v249 = sub_10002C9C8(v38, v37, &aBlock);

    *(v32 + 34) = v249;
    _os_log_impl(&_mh_execute_header, v30, v31, "[%{public}@]<%{public}s> %s Dropping updateParticipants in state: %s.", v32, 0x2Au);
    sub_1000038A4(v33, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
LABEL_139:

LABEL_140:
  }

  else
  {
    switch(v22)
    {
      case 2:
        v37 = 0xE700000000000000;
        v38 = 0x676E696E696F6ALL;
        goto LABEL_138;
      case 3:
        v37 = 0xE600000000000000;
        v38 = 0x64656E696F6ALL;
        goto LABEL_138;
      case 4:
        v37 = 0xEB00000000646574;
        v38 = 0x6164696C61766E69;
        goto LABEL_138;
    }

LABEL_172:
    v335 = v22;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }
}

uint64_t sub_100204BF8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v58 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  result = *&v2[OBJC_IVAR___MRDFastSyncGroupSession__state];
  if (result == 4)
  {
    return result;
  }

  *&v2[OBJC_IVAR___MRDFastSyncGroupSession__state] = 4;
  sub_1001E6BC0(result);
  v16 = &v2[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
  v17 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
  v18 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion + 8];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_1001C7C2C(v17);
  v19 = OBJC_IVAR___MRDFastSyncGroupSession_sessionCancellables;
  swift_beginAccess();
  v20 = *&v2[v19];
  *&v2[v19] = &_swiftEmptySetSingleton;

  v21 = OBJC_IVAR___MRDFastSyncGroupSession_cancellables;
  swift_beginAccess();
  v22 = *&v2[v21];
  *&v2[v21] = &_swiftEmptySetSingleton;

  if (*&v2[OBJC_IVAR___MRDFastSyncGroupSession_presenceTask])
  {
    v23 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_presenceTask];

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (*&v2[OBJC_IVAR___MRDFastSyncGroupSession_joinProviderTask])
  {
    v24 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_joinProviderTask];

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (*&v2[OBJC_IVAR___MRDFastSyncGroupSession_observeSessionTask])
  {
    v25 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_observeSessionTask];

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  if (!a1)
  {
    goto LABEL_12;
  }

  sub_10021DECC();
  swift_allocError();
  *v26 = 5;
  swift_errorRetain();
  v27 = _convertErrorToNSError(_:)();
  v28 = _convertErrorToNSError(_:)();
  sub_100018D7C(0, &qword_100522A60, NSError_ptr);
  v29 = static NSObject.== infix(_:_:)();

  if (v29)
  {

LABEL_12:
    sub_1001E6B44();
    v30 = sub_1001E69BC();

    (*((swift_isaMask & *v30) + 0xD0))(v31);

    v32 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings;
    v61 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings];
    v33 = type metadata accessor for SessionTimingEvents();

    sub_10023231C(v33, &off_1004C3360);
    v34 = *&v2[v32];
    *&v2[v32] = v61;
    goto LABEL_14;
  }

  v61 = sub_1001E6ABC();
  v35 = type metadata accessor for JoinTimingEvents();
  sub_100232B4C(a1, v35, &off_1004C33A8);
  v36 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings];
  *&v2[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings] = v61;

  v61 = sub_1001E6B44();
  v37 = type metadata accessor for SessionTimingEvents();
  sub_100232B4C(a1, v37, &off_1004C3360);

  v38 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings];
  *&v2[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings] = v61;
LABEL_14:

  if (qword_100529B70 != -1)
  {
LABEL_26:
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100015AFC(v39, qword_100529B78);
  swift_errorRetain();
  v40 = v2;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v59 = v7;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v43 = 138543874;
    *(v43 + 4) = v40;
    *v44 = v40;
    *(v43 + 12) = 2082;
    v45 = *&v40[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v46 = *&v40[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v47 = v40;
    *(v43 + 14) = sub_10002C9C8(v45, v46, &v63);
    *(v43 + 22) = 2082;
    v48 = 0xE000000000000000;
    if (a1)
    {
      v61 = 0;
      v62 = 0xE000000000000000;
      v49._countAndFlagsBits = 0x7265206874697720;
      v49._object = 0xED0000203A726F72;
      String.append(_:)(v49);
      v60 = a1;
      sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
      _print_unlocked<A, B>(_:_:)();
      v50 = v61;
      v48 = v62;
    }

    else
    {
      v50 = 0;
    }

    v7 = v59;
    v51 = sub_10002C9C8(v50, v48, &v63);

    *(v43 + 24) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "[%{public}@]<%{public}s> invalidate%{public}s.", v43, 0x20u);
    sub_1000038A4(v44, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v52 = *&v40[OBJC_IVAR___MRDFastSyncGroupSession_provider];
  v53 = *&v40[OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource];
  if (*&v40[OBJC_IVAR___MRDFastSyncGroupSession_groupSession])
  {

    v54 = v53;

    GroupSession.end()();
  }

  else
  {

    v55 = v53;
  }

  v56 = type metadata accessor for TaskPriority();
  (*(*(v56 - 8) + 56))(v7, 1, 1, v56);
  v57 = swift_allocObject();
  v57[2] = 0;
  v57[3] = 0;
  v57[4] = v52;
  v57[5] = v53;
  sub_1001BF864(0, 0, v7, &unk_1004501C8, v57);
}

uint64_t sub_1002053AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1002053CC, 0, 0);
}

uint64_t sub_1002053CC()
{
  v1 = v0[2];
  v0[4] = dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();
  v2 = async function pointer to NearbyGroup.leave()[1];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10020546C;

  return NearbyGroup.leave()();
}

uint64_t sub_10020546C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = v2[4];

  v6 = async function pointer to GroupSessionProvider.leave()[1];
  v7 = swift_task_alloc();
  v2[6] = v7;
  v8 = sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  v9 = sub_10000462C(&qword_100522950, &qword_100522160, &unk_10044F580);
  *v7 = v4;
  v7[1] = sub_100205614;
  v10 = v2[2];

  return GroupSessionProvider.leave()(v8, v9);
}

uint64_t sub_100205614()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v4;
  v5[1] = sub_100205754;
  v6 = *(v2 + 24);

  return sub_100216718();
}

uint64_t sub_100205754()
{
  v2 = *(*v1 + 56);
  v3 = *v1;

  if (v0)
  {
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_100205854()
{
  v1 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v54 - v3;
  v5 = sub_1001BC5A8(&qword_100522940, &qword_1004500A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v54 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v55 = v16;
    v56 = v5;
    v57 = v4;
    v16 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v10 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v17 = qword_100529B70;

    if (v17 == -1)
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
  v18 = type metadata accessor for Logger();
  sub_100015AFC(v18, qword_100529B78);

  v19 = v0;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v58 = v24;
    *v22 = 138543618;
    *(v22 + 4) = v19;
    *v23 = v19;
    *(v22 + 12) = 2082;
    v25 = v19;
    *(v22 + 14) = sub_10002C9C8(v16, v10, &v58);
    _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}@]<%{public}s> Bind presence data source to nearby group.", v22, 0x16u);
    sub_1000038A4(v23, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v24);
  }

  v26 = v57;
  v27 = OBJC_IVAR___MRDFastSyncGroupSession_provider;
  v28 = *&v19[OBJC_IVAR___MRDFastSyncGroupSession_provider];

  dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

  NearbyGroup.$members.getter();

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = v16;
  v30[4] = v10;
  sub_10000462C(&qword_100522948, &qword_100522940, &qword_1004500A8);

  v31 = v16;
  v32 = v56;
  Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v9, v32);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v33 = *&v19[v27];
  v34 = *&v19[OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource];

  dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

  v35 = NearbyGroup.members.getter();

  v36 = sub_1001FCD38(v35, &type metadata accessor for NearbyGroup.Member, &NearbyGroup.Member.handle.getter);

  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  result = swift_initStackObject();
  *(result + 16) = xmmword_10044EC70;
  v38 = *&v19[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
  if (v38)
  {
    *(result + 32) = *&v19[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
    *(result + 40) = v38;
    v58 = v36;
    v39 = result;

    sub_10021B8A8(v39);
    v40 = sub_100008280(v58);

    v41 = *&v34[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members];
    *&v34[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members] = v40;
    sub_100213C90(v41);

    v42 = type metadata accessor for TaskPriority();
    v43 = *(*(v42 - 8) + 56);
    v43(v26, 1, 1, v42);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = v44;
    v45[5] = v31;
    v46 = v55;
    v45[6] = v10;
    v45[7] = v46;
    v47 = v46;

    v48 = sub_1001CB290(0, 0, v26, &unk_1004500B8, v45);
    v49 = *&v19[OBJC_IVAR___MRDFastSyncGroupSession_presenceTask];
    *&v19[OBJC_IVAR___MRDFastSyncGroupSession_presenceTask] = v48;

    v43(v26, 1, 1, v42);
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = swift_allocObject();
    v51[2] = 0;
    v51[3] = 0;
    v51[4] = v50;
    v51[5] = v31;
    v51[6] = v10;
    v52 = sub_1001CB290(0, 0, v26, &unk_1004500C8, v51);
    v53 = *&v19[OBJC_IVAR___MRDFastSyncGroupSession_joinProviderTask];
    *&v19[OBJC_IVAR___MRDFastSyncGroupSession_joinProviderTask] = v52;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100205FB8(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DispatchQoS();
  v36 = *(v38 - 8);
  v10 = *(v36 + 64);
  __chkstk_darwin(v38);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100015AFC(v13, qword_100529B78);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v34 = a3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v33 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v18 = 138543874;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v18 + 4) = Strong;
    *v19 = Strong;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_10002C9C8(a3, a4, aBlock);
    *(v18 + 22) = 2080;
    type metadata accessor for NearbyGroup.Member();
    sub_100004858(&qword_100522980, 255, &type metadata accessor for NearbyGroup.Member);
    v21 = Set.description.getter();
    v23 = sub_10002C9C8(v21, v22, aBlock);

    *(v18 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%{public}@]<%{public}s> NearbyGroup members changed: %s.", v18, 0x20u);
    sub_1000038A4(v19, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    v7 = v33;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = *(result + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
    v26 = result;
    v27 = swift_allocObject();
    v27[2] = v12;
    v27[3] = v26;
    v27[4] = v34;
    v27[5] = a4;
    aBlock[4] = sub_1002237C4;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C39B8;
    v28 = _Block_copy(aBlock);

    v29 = v26;
    v30 = v35;
    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v31 = v37;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);
    (*(v39 + 8))(v31, v7);
    (*(v36 + 8))(v30, v38);
  }

  return result;
}

void sub_100206520(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v52 = a2;
  v53 = a4;
  v51 = a3;
  v5 = type metadata accessor for NearbyGroup.Member();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  v55 = v6 + 16;
  v56 = a1;

  v15 = 0;
  v54 = _swiftEmptyArrayStorage;
  if (!v13)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v6 + 16))(v9, *(v56 + 48) + *(v6 + 72) * (v16 | (v15 << 6)), v5);
      v17 = NearbyGroup.Member.tokenDestination.getter();
      v19 = v18;
      (*(v6 + 8))(v9, v5);
      if (v19)
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_6;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_10002AFD0(0, *(v54 + 2) + 1, 1, v54);
    }

    v22 = *(v54 + 2);
    v21 = *(v54 + 3);
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      v49 = *(v54 + 2);
      v50 = v22 + 1;
      v26 = sub_10002AFD0((v21 > 1), v22 + 1, 1, v54);
      v22 = v49;
      v23 = v50;
      v54 = v26;
    }

    v24 = v54;
    *(v54 + 2) = v23;
    v25 = &v24[16 * v22];
    *(v25 + 4) = v17;
    *(v25 + 5) = v19;
  }

  while (v13);
  while (1)
  {
LABEL_6:
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v20 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v20);
    ++v15;
    if (v13)
    {
      v15 = v20;
      goto LABEL_4;
    }
  }

  if (qword_100529B70 == -1)
  {
    goto LABEL_17;
  }

LABEL_25:
  swift_once();
LABEL_17:
  v27 = type metadata accessor for Logger();
  sub_100015AFC(v27, qword_100529B78);
  v28 = v52;
  v29 = v53;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v32 = 138543874;
    *(v32 + 4) = v28;
    *v33 = v28;
    *(v32 + 12) = 2082;
    v34 = v28;
    *(v32 + 14) = sub_10002C9C8(v51, v29, &v57);
    *(v32 + 22) = 2080;
    v35 = Array.description.getter();
    v37 = sub_10002C9C8(v35, v36, &v57);

    *(v32 + 24) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "[%{public}@]<%{public}s> NearbyGroup tokens: %s", v32, 0x20u);
    sub_1000038A4(v33, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v38 = sub_1001FCD38(v56, &type metadata accessor for NearbyGroup.Member, &NearbyGroup.Member.handle.getter);
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  v40 = *&v28[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
  if (v40)
  {
    *(inited + 32) = *&v28[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
    *(inited + 40) = v40;
    v57 = v38;
    v41 = inited;

    sub_10021B8A8(v41);
    v42 = *&v28[OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource];

    v44 = sub_100008280(v43);

    v45 = *&v42[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members];
    *&v42[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members] = v44;
    sub_100213C90(v45);

    if (v28[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] != 1)
    {

      return;
    }

    v46 = *&v28[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
    if (v46)
    {
      v47 = v46;

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v47 updateAllowedDestinations:isa];

      sub_1002021D8(0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100206AA0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
    sub_100222D2C();
    Set.Iterator.init(_cocoa:)();
    v1 = v30;
    v2 = v31;
    v3 = v32;
    v4 = v33;
    v5 = v34;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v35 = _swiftEmptyArrayStorage;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (v1 < 0)
  {
    v14 = __CocoaSet.Iterator.next()();
    if (!v14 || (*&v28 = v14, sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr), swift_dynamicCast(), v13 = v26, v4 = v9, v5 = v10, !v26))
    {
LABEL_34:
      sub_100045960();
      return;
    }

LABEL_18:
    v15 = [v13 presencePayload];
    v16 = [v15 payloadDictionary];

    if (!v16)
    {
      goto LABEL_25;
    }

    v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (!*(v17 + 16) || (v18 = sub_10001BF64(&v26), (v19 & 1) == 0))
    {

      sub_10001BF10(&v26);
LABEL_25:
      v28 = 0u;
      v29 = 0u;
      goto LABEL_26;
    }

    sub_100020E0C(*(v17 + 56) + 32 * v18, &v28);
    sub_10001BF10(&v26);

    if (*(&v29 + 1))
    {
      if (swift_dynamicCast())
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_26:
    sub_1000038A4(&v28, &qword_100522890, &qword_100450610);
LABEL_27:
    v26 = 0;
    v27 = 0;
LABEL_28:

    v20 = v27;
    v9 = v4;
    v10 = v5;
    if (v27)
    {
      v21 = v26;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_10002AFD0(0, *(v35 + 2) + 1, 1, v35);
      }

      v23 = *(v35 + 2);
      v22 = *(v35 + 3);
      if (v23 >= v22 >> 1)
      {
        v35 = sub_10002AFD0((v22 > 1), v23 + 1, 1, v35);
      }

      v24 = v35;
      *(v35 + 2) = v23 + 1;
      v25 = &v24[16 * v23];
      *(v25 + 4) = v21;
      *(v25 + 5) = v20;
      goto LABEL_8;
    }
  }

  v11 = v9;
  v12 = v10;
  v4 = v9;
  if (v10)
  {
LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_34;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_100206E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[47] = a6;
  v7[48] = a7;
  v7[45] = a4;
  v7[46] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[49] = v8;
  v9 = *(v8 - 8);
  v7[50] = v9;
  v10 = *(v9 + 64) + 15;
  v7[51] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v7[52] = v11;
  v12 = *(v11 - 8);
  v7[53] = v12;
  v13 = *(v12 + 64) + 15;
  v7[54] = swift_task_alloc();
  v14 = *(*(sub_1001BC5A8(&qword_100522958, &qword_1004500D0) - 8) + 64) + 15;
  v7[55] = swift_task_alloc();
  v15 = type metadata accessor for AddressableMember();
  v7[56] = v15;
  v16 = *(v15 - 8);
  v7[57] = v16;
  v17 = *(v16 + 64) + 15;
  v7[58] = swift_task_alloc();

  return _swift_task_switch(sub_100206FF8, 0, 0);
}

uint64_t sub_100206FF8()
{
  v89 = v0;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = v0[45];
  v3 = type metadata accessor for Logger();
  v0[59] = sub_100015AFC(v3, qword_100529B78);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[46];
    v6 = v0[47];
    v8 = v0[45];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v88 = v11;
    *v9 = 138543618;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v9 + 4) = Strong;
    *v10 = Strong;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_10002C9C8(v7, v6, &v88);
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}@]<%{public}s> Asserting presence.", v9, 0x16u);
    sub_1000038A4(v10, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v11);
  }

  v13 = v0[45];
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    v0[12] = 0;
    *(v0 + 4) = 0u;
    *(v0 + 5) = 0u;
    goto LABEL_15;
  }

  v15 = *(v14 + OBJC_IVAR___MRDFastSyncGroupSession_provider);
  v16 = v14;

  dispatch thunk of NearbyGroupSessionProvider.localMember.getter();

  if (!v0[11])
  {
LABEL_15:
    v36 = v0[56];
    v37 = v0[57];
    v38 = v0[55];
    sub_1000038A4((v0 + 8), &qword_100522960, &qword_1004500D8);
    (*(v37 + 56))(v38, 1, 1, v36);
    goto LABEL_16;
  }

  v17 = v0[56];
  v18 = v0[57];
  v19 = v0[55];
  sub_1001BC5A8(&qword_100522968, &qword_1004500E0);
  v20 = swift_dynamicCast();
  (*(v18 + 56))(v19, v20 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v19, 1, v17) == 1)
  {
LABEL_16:
    v39 = v0[47];
    v40 = v0[45];
    sub_1000038A4(v0[55], &qword_100522958, &qword_1004500D0);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v44 = v0[46];
      v43 = v0[47];
      v45 = v0[45];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v88 = v48;
      *v46 = 138543618;
      swift_beginAccess();
      v49 = swift_unknownObjectWeakLoadStrong();
      *(v46 + 4) = v49;
      *v47 = v49;
      *(v46 + 12) = 2082;
      *(v46 + 14) = sub_10002C9C8(v44, v43, &v88);
      _os_log_impl(&_mh_execute_header, v41, v42, "[%{public}@]<%{public}s> No local handle to assert presence with.", v46, 0x16u);
      sub_1000038A4(v47, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v48);
    }

    v50 = v0[54];
    v51 = v0[51];
    v84 = v0[53];
    v86 = v0[52];
    v52 = v0[49];
    v82 = v0[48];
    v83 = v0[50];
    v53 = v0[45];
    v54 = swift_allocObject();
    swift_beginAccess();
    v55 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v0[6] = sub_100223280;
    v0[7] = v54;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100003D98;
    v0[5] = &unk_1004C3800;
    v56 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[43] = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v56);
    (*(v83 + 8))(v51, v52);
    (*(v84 + 8))(v50, v86);
    v57 = v0[7];

    goto LABEL_19;
  }

  v21 = v0[45];
  (*(v0[57] + 32))(v0[58], v0[55], v0[56]);
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    sub_1001E6ABC();

    v24 = sub_1001E6758();

    (*((swift_isaMask & *v24) + 0xC0))(v25);
  }

  v26 = v0[45];
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v0[58];
    v29 = *(v27 + OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource);
    v0[60] = v29;
    v30 = v27;
    v29;

    v31 = AddressableMember.handle.getter();
    v33 = v32;
    v0[61] = v32;
    v34 = swift_task_alloc();
    v0[62] = v34;
    *v34 = v0;
    v34[1] = sub_100207A04;

    return sub_100215B8C(v31, v33);
  }

  v63 = v0[45];
  swift_beginAccess();
  v64 = swift_unknownObjectWeakLoadStrong();
  if (v64)
  {
    v65 = v64;
    sub_1001E6ABC();

    v66 = sub_1001E6758();

    (*((swift_isaMask & *v66) + 0xD0))(v67);
  }

  v68 = v0[59];
  v69 = v0[47];
  v70 = v0[45];

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();

  v73 = os_log_type_enabled(v71, v72);
  v75 = v0[57];
  v74 = v0[58];
  v76 = v0[56];
  if (v73)
  {
    v85 = v0[46];
    v87 = v0[47];
    v77 = v0[45];
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v88 = v80;
    *v78 = 138543618;
    swift_beginAccess();
    v81 = swift_unknownObjectWeakLoadStrong();
    *(v78 + 4) = v81;
    *v79 = v81;
    *(v78 + 12) = 2082;
    *(v78 + 14) = sub_10002C9C8(v85, v87, &v88);
    _os_log_impl(&_mh_execute_header, v71, v72, "[%{public}@]<%{public}s> Asserted presence.", v78, 0x16u);
    sub_1000038A4(v79, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v80);
  }

  (*(v75 + 8))(v74, v76);
LABEL_19:
  v58 = v0[58];
  v59 = v0[54];
  v60 = v0[55];
  v61 = v0[51];

  v62 = v0[1];

  return v62();
}

uint64_t sub_100207A04()
{
  v2 = *(*v1 + 496);
  v3 = *(*v1 + 488);
  v4 = *(*v1 + 480);
  v7 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v5 = sub_100207DE4;
  }

  else
  {
    v5 = sub_100207B54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100207B54()
{
  v29 = v0;
  v1 = v0[45];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1001E6ABC();

    v4 = sub_1001E6758();

    (*((swift_isaMask & *v4) + 0xD0))(v5);
  }

  v6 = v0[59];
  v7 = v0[47];
  v8 = v0[45];

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[57];
  v12 = v0[58];
  v14 = v0[56];
  if (v11)
  {
    v26 = v0[46];
    v27 = v0[47];
    v15 = v0[45];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v16 = 138543618;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    *(v16 + 4) = v19;
    *v17 = v19;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_10002C9C8(v26, v27, &v28);
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}@]<%{public}s> Asserted presence.", v16, 0x16u);
    sub_1000038A4(v17, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v18);
  }

  (*(v13 + 8))(v12, v14);
  v20 = v0[58];
  v21 = v0[54];
  v22 = v0[55];
  v23 = v0[51];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100207DE4()
{
  v30 = v0;
  v1 = v0[63];
  v2 = v0[59];
  v3 = v0[47];
  v4 = v0[45];
  (*(v0[57] + 8))(v0[58], v0[56]);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[63];
    v9 = v0[46];
    v8 = v0[47];
    v10 = v0[45];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v11 = 138543874;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v11 + 4) = Strong;
    *v12 = Strong;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_10002C9C8(v9, v8, &v29);
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v15;
    v12[1] = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}@]<%{public}s> Error asserting presence %{public}@. Low-power mode will not function.", v11, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v13);
  }

  v16 = v0[45];
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  v18 = v0[63];
  if (v17)
  {
    v19 = v17;
    v0[44] = sub_1001E6ABC();
    v20 = type metadata accessor for JoinTimingEvents();
    sub_100232B4C(v18, v20, &off_1004C33A8);

    v21 = *&v19[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings];
    *&v19[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings] = v0[44];
  }

  else
  {
    v22 = v0[63];
  }

  v23 = v0[58];
  v24 = v0[54];
  v25 = v0[55];
  v26 = v0[51];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1002080B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  return _swift_task_switch(sub_1002080D8, 0, 0);
}

uint64_t sub_1002080D8()
{
  v48 = v0;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[20];
  v3 = type metadata accessor for Logger();
  v0[23] = sub_100015AFC(v3, qword_100529B78);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[21];
    v6 = v0[22];
    v8 = v0[20];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47 = v11;
    *v9 = 138543618;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v9 + 4) = Strong;
    *v10 = Strong;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_10002C9C8(v7, v6, &v47);
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}@]<%{public}s> Joining provider.", v9, 0x16u);
    sub_1000038A4(v10, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v11);
  }

  v13 = v0[20];
  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_1001E6ABC();

    v16 = sub_1001E675C();

    (*((swift_isaMask & *v16) + 0xC0))(v17);
  }

  v18 = v0[20];
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v0[24] = *(v19 + OBJC_IVAR___MRDFastSyncGroupSession_provider);
    v20 = v19;

    v21 = async function pointer to GroupSessionProvider.join()[1];
    v22 = swift_task_alloc();
    v0[25] = v22;
    v23 = sub_1001BC5A8(&qword_100522160, &unk_10044F580);
    v24 = sub_10000462C(&qword_100522950, &qword_100522160, &unk_10044F580);
    *v22 = v0;
    v22[1] = sub_100208670;

    return GroupSessionProvider.join()(v23, v24);
  }

  else
  {
    v25 = v0[20];
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      sub_1001E6ABC();

      v28 = sub_1001E675C();

      (*((swift_isaMask & *v28) + 0xD0))(v29);
    }

    v30 = v0[22];
    v31 = v0[23];
    v32 = v0[20];

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v36 = v0[21];
      v35 = v0[22];
      v37 = v0[20];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v38 = 138543618;
      swift_beginAccess();
      v41 = swift_unknownObjectWeakLoadStrong();
      *(v38 + 4) = v41;
      *v39 = v41;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_10002C9C8(v36, v35, &v47);
      _os_log_impl(&_mh_execute_header, v33, v34, "[%{public}@]<%{public}s> Joined provider.", v38, 0x16u);
      sub_1000038A4(v39, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v40);
    }

    v42 = v0[20];
    swift_beginAccess();
    v43 = swift_unknownObjectWeakLoadStrong();
    if (v43)
    {
      v44 = v43;
      sub_1001EAA1C();
    }

    v45 = v0[1];

    return v45();
  }
}

uint64_t sub_100208670()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_100208A00;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_10020878C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10020878C()
{
  v24 = v0;
  v1 = v0[20];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1001E6ABC();

    v4 = sub_1001E675C();

    (*((swift_isaMask & *v4) + 0xD0))(v5);
  }

  v6 = v0[22];
  v7 = v0[23];
  v8 = v0[20];

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[21];
    v11 = v0[22];
    v13 = v0[20];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v14 = 138543618;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    *(v14 + 4) = v17;
    *v15 = v17;
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_10002C9C8(v12, v11, &v23);
    _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}@]<%{public}s> Joined provider.", v14, 0x16u);
    sub_1000038A4(v15, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v16);
  }

  v18 = v0[20];
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    sub_1001EAA1C();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_100208A00()
{
  v1 = v0[24];

  v2 = v0[1];
  v3 = v0[26];

  return v2();
}

void sub_100208A64(uint64_t a1)
{
  v2 = v1;
  v185 = a1;
  v170 = type metadata accessor for DispatchWorkItemFlags();
  v169 = *(v170 - 8);
  v3 = *(v169 + 64);
  __chkstk_darwin(v170);
  v167 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for DispatchQoS();
  v166 = *(v168 - 8);
  v5 = *(v166 + 64);
  __chkstk_darwin(v168);
  v165 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for UUID();
  v171 = *(v172 - 8);
  v7 = *(v171 + 64);
  __chkstk_darwin(v172);
  v183 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for Participant();
  v184 = *(v181 - 8);
  v9 = *(v184 + 64);
  __chkstk_darwin(v181);
  v182 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001BC5A8(&qword_100522920, &qword_100450090);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v180 = (&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v176 = &v161 - v17;
  v18 = __chkstk_darwin(v16);
  v177 = &v161 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v161 - v21;
  __chkstk_darwin(v20);
  v186 = &v161 - v23;
  v24 = type metadata accessor for DispatchPredicate();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = (&v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v28 = v29;
  (*(v25 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v24);
  v30 = v29;
  v31 = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v28, v24);
  if ((v31 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
LABEL_4:
    v33 = type metadata accessor for Logger();
    v34 = sub_100015AFC(v33, qword_100529B78);
    v35 = *(v12 + 16);
    v35(v22, v185, v11);
    v36 = v2;
    v174 = v34;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v37, v38);
    v175 = v31;
    v179 = v12 + 16;
    v173 = v35;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v163 = v41;
      v164 = swift_slowAlloc();
      aBlock[0] = v164;
      *v40 = 138543874;
      *(v40 + 4) = v36;
      v41->isa = v36;
      v162 = v37;
      *(v40 + 12) = 2082;
      v42 = &v36[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v43 = v36;
      v45 = *&v36[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v44 = *(v42 + 1);
      v46 = v43;
      *(v40 + 14) = sub_10002C9C8(v45, v44, aBlock);
      *(v40 + 22) = 2082;
      v35(v177, v22, v11);
      v47 = String.init<A>(describing:)();
      v49 = v48;
      v178 = *(v12 + 8);
      v178(v22, v11);
      v50 = sub_10002C9C8(v47, v49, aBlock);
      v36 = v43;

      *(v40 + 24) = v50;
      v51 = v162;
      _os_log_impl(&_mh_execute_header, v162, v38, "[%{public}@]<%{public}s> GroupSession.State changed: %{public}s.", v40, 0x20u);
      sub_1000038A4(v163, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    else
    {

      v178 = *(v12 + 8);
      v178(v22, v11);
    }

    v52 = v181;
    v53 = v182;
    v54 = v184;
    sub_10000462C(&qword_100522928, &qword_100522920, &qword_100450090);
    v65 = dispatch thunk of static Equatable.== infix(_:_:)();
    v66 = v183;
    v67 = v173;
    if ((v65 & 1) == 0)
    {
      v68 = v52;
      v164 = v12;
      v69 = v176;
      v173(v176, v186, v11);
      v70 = v36;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();

      v163 = v71;
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v161 = v74;
        v162 = swift_slowAlloc();
        aBlock[0] = v162;
        *v73 = 138543874;
        *(v73 + 4) = v70;
        *v74 = v70;
        v75 = v11;
        *(v73 + 12) = 2082;
        v76 = v67;
        v77 = v36;
        v78 = *&v70[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v79 = *&v70[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v80 = v70;
        v81 = v79;
        v36 = v77;
        *(v73 + 14) = sub_10002C9C8(v78, v81, aBlock);
        *(v73 + 22) = 2082;
        v76(v177, v69, v75);
        v82 = String.init<A>(describing:)();
        v84 = v83;
        v12 = v164;
        v178(v69, v75);
        v85 = sub_10002C9C8(v82, v84, aBlock);
        v11 = v75;

        *(v73 + 24) = v85;
        v67 = v76;
        v52 = v181;
        v86 = v72;
        v87 = v163;
        _os_log_impl(&_mh_execute_header, v163, v86, "[%{public}@]<%{public}s> GroupSession.State change differs from session: %{public}s.", v73, 0x20u);
        sub_1000038A4(v161, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();

        v66 = v183;

        v54 = v184;
        v53 = v182;
      }

      else
      {

        v12 = v164;
        v178(v69, v11);
        v53 = v182;
        v52 = v68;
        v66 = v183;
        v54 = v184;
      }
    }

    v88 = v180;
    v67(v180, v185, v11);
    v89 = (*(v12 + 88))(v88, v11);
    if (v89 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      v90 = *(v12 + 96);
      v185 = v11;
      v90(v88, v11);
      v91 = *v88;
      v92 = v36;
      swift_errorRetain();
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v184 = swift_slowAlloc();
        aBlock[0] = v184;
        *v95 = 138543874;
        *(v95 + 4) = v92;
        *v96 = v92;
        *(v95 + 12) = 2082;
        v97 = *&v92[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v98 = *&v92[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v99 = v92;
        *(v95 + 14) = sub_10002C9C8(v97, v98, aBlock);
        *(v95 + 22) = 2082;
        v188 = v91;
        swift_errorRetain();
        sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
        v100 = String.init<A>(describing:)();
        v102 = sub_10002C9C8(v100, v101, aBlock);

        *(v95 + 24) = v102;
        _os_log_impl(&_mh_execute_header, v93, v94, "[%{public}@]<%{public}s> GroupSession.State invalidated with error: %{public}s.", v95, 0x20u);
        sub_1000038A4(v96, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      swift_errorRetain();
      sub_100204BF8(v91);

      v178(v186, v185);
      return;
    }

    if (v89 == enum case for GroupSession.State.waiting<A>(_:))
    {
      v178(v186, v11);

      return;
    }

    if (v89 != enum case for GroupSession.State.joined<A>(_:))
    {
      v156 = v178;
      v178(v186, v11);

      v156(v88, v11);
      return;
    }

    v164 = v12;
    v185 = v11;
    v103 = *&v36[OBJC_IVAR___MRDFastSyncGroupSession__state];
    *&v36[OBJC_IVAR___MRDFastSyncGroupSession__state] = 3;
    sub_1001E6BC0(v103);
    GroupSession.localParticipant.getter();
    Participant.id.getter();
    v104 = *(v54 + 8);
    v184 = v54 + 8;
    v182 = v104;
    (v104)(v53, v52);
    v105 = UUID.uuidString.getter();
    v107 = v106;
    v108 = *(v171 + 8);
    v109 = v172;
    v108(v66, v172);
    v110 = &v36[OBJC_IVAR___MRDFastSyncGroupSession_localFastSyncIdentifier];
    v111 = *&v36[OBJC_IVAR___MRDFastSyncGroupSession_localFastSyncIdentifier + 8];
    *v110 = v105;
    v110[1] = v107;

    sub_1001E6ABC();
    v112 = sub_1001E681C();

    (*((swift_isaMask & *v112) + 0xD0))(v113);

    if (v36[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] == 1)
    {
      GroupSession.localParticipant.getter();
      Participant.id.getter();
      (v182)(v53, v181);
      v114 = UUID.uuidString.getter();
      v116 = v115;
      v108(v66, v109);
      v117 = v36;
      v118 = &v36[OBJC_IVAR___MRDFastSyncGroupSession_leaderFastSyncIdentifier];
      v119 = *&v36[OBJC_IVAR___MRDFastSyncGroupSession_leaderFastSyncIdentifier + 8];
      *v118 = v114;
      v118[1] = v116;

      v120 = *&v36[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
      if (v120)
      {
        v121 = *&v36[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
        v122 = &v36[OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier];
        v123 = *&v36[OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier];
        v124 = *&v36[OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier + 8];
        swift_beginAccess();

        sub_1001EC7F4(v123, v124, v121, v120);
        swift_endAccess();
        v125 = v122[1];
        if (v125)
        {
          v126 = *v122;
          v127 = OBJC_IVAR___MRDFastSyncGroupSession_localIdentity;
          v128 = *&v117[OBJC_IVAR___MRDFastSyncGroupSession_localIdentity];
          v129 = v122[1];

          v130 = [v128 identifier];
          v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v133 = v132;

          v134 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
          swift_beginAccess();
          v135 = *&v117[v134];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v188 = *&v117[v134];
          *&v117[v134] = 0x8000000000000000;
          sub_100035B14(v131, v133, v126, v125, isUniquelyReferenced_nonNull_native);

          *&v117[v134] = v188;
          swift_endAccess();
          v137 = [*&v117[v127] identifier];
          v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v140 = v139;

          v141 = *&v117[v127];
          v142 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
          swift_beginAccess();
          v143 = v141;
          v144 = *&v117[v142];
          v145 = swift_isUniquelyReferenced_nonNull_native();
          v188 = *&v117[v142];
          *&v117[v142] = 0x8000000000000000;
          sub_10021ACB8(v143, v138, v140, v145, &unk_100522930, &unk_100450098);

          *&v117[v142] = v188;
          swift_endAccess();
          v146 = *&v117[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
          v147 = swift_allocObject();
          *(v147 + 16) = v117;
          aBlock[4] = sub_100223110;
          aBlock[5] = v147;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100003D98;
          aBlock[3] = &unk_1004C3710;
          v148 = _Block_copy(aBlock);
          v149 = v117;
          v150 = v165;
          static DispatchQoS.unspecified.getter();
          v188 = _swiftEmptyArrayStorage;
          sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
          sub_1001BC5A8(&unk_100522280, &unk_10044F590);
          sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
          v151 = v167;
          v152 = v170;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v148);
          (*(v169 + 8))(v151, v152);
          (*(v166 + 8))(v150, v168);

          v153 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings;
          aBlock[0] = *&v149[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings];
          v154 = type metadata accessor for JoinTimingEvents();

          sub_10023231C(v154, &off_1004C33A8);
          v155 = *&v149[v153];
          *&v149[v153] = aBlock[0];

LABEL_30:
          v160 = GroupSession.activeParticipants.getter();
          sub_100200EC8(v160);

          (*(v164 + 8))(v186, v185);
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

    if (!*&v36[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8])
    {
      v157 = *&v36[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings];

      v158 = sub_1001E687C();

      (*((swift_isaMask & *v158) + 0xC0))(v159);

      sub_10020C2E4();
    }

    goto LABEL_30;
  }

  v31 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];
  if (v31)
  {
    v32 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];

    GroupSession.state.getter();
    if (qword_100529B70 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_100015AFC(v55, qword_100529B78);
  v56 = v2;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v59 = 138543618;
    *(v59 + 4) = v56;
    *v60 = v56;
    *(v59 + 12) = 2082;
    v62 = *&v56[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v63 = *&v56[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v64 = v56;
    *(v59 + 14) = sub_10002C9C8(v62, v63, aBlock);
    _os_log_impl(&_mh_execute_header, v57, v58, "[%{public}@]<%{public}s> State changed without group session.", v59, 0x16u);
    sub_1000038A4(v60, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v61);
  }
}

void sub_100209EA8()
{
  v1 = sub_1001BC5A8(&unk_100522900, &unk_100450080);
  v53 = *(v1 - 8);
  v2 = *(v53 + 64);
  __chkstk_darwin(v1);
  v4 = &v46[-v3];
  v5 = type metadata accessor for GroupSessionMessenger.DeliveryMode();
  v54 = *(v5 - 8);
  v6 = *(v54 + 64);
  __chkstk_darwin(v5);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger;
  if (*&v0[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger])
  {
    return;
  }

  v16 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];
  if (v16)
  {
    v17 = qword_100529B70;
    v18 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];

    if (v17 == -1)
    {
LABEL_5:
      v19 = type metadata accessor for Logger();
      sub_100015AFC(v19, qword_100529B78);
      v52 = v0;
      v20 = v0;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v51 = v16;
        v24 = v23;
        v25 = swift_slowAlloc();
        v48 = v25;
        v49 = swift_slowAlloc();
        v55[0] = v49;
        *v24 = 138543618;
        *(v24 + 4) = v20;
        *v25 = v20;
        *(v24 + 12) = 2082;
        v47 = v22;
        v50 = v1;
        v27 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v26 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v28 = v20;
        v1 = v50;
        *(v24 + 14) = sub_10002C9C8(v27, v26, v55);
        _os_log_impl(&_mh_execute_header, v21, v47, "[%{public}@]<%{public}s> Configuring messenger.", v24, 0x16u);
        sub_1000038A4(v48, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v49);
      }

      (*(v54 + 104))(v8, enum case for GroupSessionMessenger.DeliveryMode.reliable(_:), v5);
      v39 = type metadata accessor for GroupSessionMessenger();
      v40 = *(v39 + 48);
      v41 = *(v39 + 52);
      swift_allocObject();

      v42 = GroupSessionMessenger.init<A>(session:deliveryMode:)();
      GroupSessionMessenger.receive(_:)();
      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = sub_100222ED8;
      *(v44 + 24) = v43;
      sub_10000462C(&unk_100529140, &unk_100522900, &unk_100450080);
      Publisher<>.sink(receiveValue:)();

      (*(v53 + 8))(v4, v1);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v45 = *(v13 + v52);
      *(v13 + v52) = v42;

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100015AFC(v29, qword_100529B78);
  v30 = v0;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v55[0] = v35;
    *v33 = 138543618;
    *(v33 + 4) = v30;
    *v34 = v30;
    *(v33 + 12) = 2082;
    v36 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v37 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v38 = v30;
    *(v33 + 14) = sub_10002C9C8(v36, v37, v55);
    _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}@]<%{public}s> No session to create messenger.", v33, 0x16u);
    sub_1000038A4(v34, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v35);
  }
}

void sub_10020A578(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    sub_1001C3FE0(a1, a2);
    v19 = sub_10036C6B8(a1, a2);
    if (v19 == 11)
    {
      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100015AFC(v22, qword_100529B78);
      v23 = v18;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        aBlock[0] = v28;
        *v26 = 138543618;
        *(v26 + 4) = v23;
        *v27 = v18;
        *(v26 + 12) = 2082;
        v29 = *&v23[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v30 = *&v23[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v23 = v23;

        v31 = sub_10002C9C8(v29, v30, aBlock);

        *(v26 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}@]<%{public}s> Error decoding message.", v26, 0x16u);
        sub_1000038A4(v27, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v28);
      }
    }

    else
    {
      v32 = *&v18[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
      v49 = v9;
      v50 = v32;
      v33 = *(v15 + 16);
      v46 = v13;
      v34 = v19;
      v35 = v20;
      v36 = v21;
      v33(&v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v14);
      v37 = (*(v15 + 80) + 48) & ~*(v15 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = v18;
      *(v38 + 24) = v34;
      v47 = v34;
      *(v38 + 32) = v35;
      *(v38 + 40) = v36;
      (*(v15 + 32))(v38 + v37, &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
      aBlock[4] = sub_100222F44;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004C3620;
      v39 = _Block_copy(aBlock);
      v48 = v18;
      v40 = v35;
      v41 = v35;
      v42 = v36;
      sub_100222F5C(v34, v40, v36);
      v43 = v46;
      static DispatchQoS.unspecified.getter();
      v55 = _swiftEmptyArrayStorage;
      sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      v44 = v49;
      v45 = v54;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v39);
      sub_100222F78(v47, v41, v42);
      (*(v53 + 8))(v44, v45);
      (*(v51 + 8))(v43, v52);
    }
  }
}

uint64_t sub_10020AB44(char *a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v63 = a4;
  v9 = type metadata accessor for Participant();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v59 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v59);
  v62 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v61 = *(v17 - 8);
  v18 = *(v61 + 64);
  __chkstk_darwin(v17);
  v60 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  if (*&a1[OBJC_IVAR___MRDFastSyncGroupSession__state] == 3)
  {
    GroupSessionMessenger.MessageContext.source.getter();
    sub_1001F87B4(a2, a3, v63, v13);
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    v53 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = v23;
    v55 = v22;
    v56 = a5;
    v52 = a2;
    v51 = a3;
    v25 = v63;
    v58 = v14;
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v57 = v17;
    v26 = type metadata accessor for Logger();
    sub_100015AFC(v26, qword_100529B78);
    v27 = a1;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v30 = 138543618;
      *(v30 + 4) = v27;
      *v31 = v27;
      *(v30 + 12) = 2082;
      v33 = *&v27[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v34 = *&v27[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v35 = v27;
      *(v30 + 14) = sub_10002C9C8(v33, v34, aBlock);
      _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}@]<%{public}s> Got message when not joined. Will attempt to correct ordering.", v30, 0x16u);
      sub_1000038A4(v31, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v32);
    }

    v36 = v25;
    v37 = v51;
    v38 = v52;
    v39 = v56;
    sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
    v63 = static OS_dispatch_queue.main.getter();
    v40 = v53;
    v41 = v54;
    v42 = v55;
    (*(v54 + 16))(v53, v39, v55);
    v43 = (*(v41 + 80) + 48) & ~*(v41 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v27;
    *(v44 + 24) = v38;
    *(v44 + 32) = v37;
    *(v44 + 40) = v36;
    (*(v41 + 32))(v44 + v43, v40, v42);
    aBlock[4] = sub_100222F94;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C3670;
    v45 = _Block_copy(aBlock);
    v46 = v27;
    sub_1001C3FE0(v37, v36);

    v47 = v60;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v48 = v62;
    v49 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v50 = v63;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);

    (*(v58 + 8))(v48, v49);
    return (*(v61 + 8))(v47, v57);
  }
}

uint64_t sub_10020B19C(char *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v29 = a4;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v31 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v31);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  (*(v17 + 16))(v19, a5, v16);
  v20 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  v22 = a3;
  v23 = v29;
  *(v21 + 40) = v29;
  (*(v17 + 32))(v21 + v20, v19, v16);
  aBlock[4] = sub_100223078;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C36C0;
  v24 = _Block_copy(aBlock);
  v25 = a1;
  sub_1001C3FE0(v22, v23);
  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  v26 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v34 + 8))(v11, v26);
  (*(v32 + 8))(v15, v33);
}

uint64_t sub_10020B56C(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for Participant();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  GroupSessionMessenger.MessageContext.source.getter();
  sub_1001F87B4(a2, a3, a4, v11);
  return (*(v8 + 8))(v11, v7);
}

void sub_10020B668()
{
  v1 = v0;
  v2 = type metadata accessor for Participants();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  if (v1[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] != 1)
  {
    return;
  }

  if (qword_100529B70 != -1)
  {
    goto LABEL_17;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  sub_100015AFC(v14, qword_100529B78);
  v15 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v49 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v50 = v2;
    v51 = v21;
    v22 = v21;
    *v18 = 138543618;
    *(v18 + 4) = v15;
    *v20 = v15;
    *(v18 + 12) = 2082;
    v24 = *&v15[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v23 = *&v15[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v25 = v15;
    *(v18 + 14) = sub_10002C9C8(v24, v23, &v51);
    _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}@]<%{public}s> Broadcast leader discovery.", v18, 0x16u);
    sub_1000038A4(v20, &qword_100521870, &unk_10044EA70);
    v3 = v49;

    sub_100026A44(v22);
    v2 = v50;
  }

  if (*&v15[OBJC_IVAR___MRDFastSyncGroupSession__state] == 3)
  {
    v26 = *&v15[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];
    if (v26)
    {
      v27 = *&v15[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];

      v29 = j___s12mediaremoted28MRDFastSyncGroupSessionStateO8rawValueSivg(0, 0xC000000000000000, v28);
      v31 = v30;
      v32 = sub_10036D0F8(v29, v30);
      sub_1001C4034(v29, v31);
      (*(v3 + 104))(v6, enum case for Participants.all(_:), v2);
      v33 = v32;
      sub_10020CF20(0, v32, v6, v26, 0, 0);

      (*(v3 + 8))(v6, v2);
      return;
    }

    v44 = v15;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_14;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v51 = v39;
    *v37 = 138543618;
    *(v37 + 4) = v44;
    *v38 = v44;
    *(v37 + 12) = 2082;
    v45 = *&v44[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v46 = *&v44[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v47 = v44;
    *(v37 + 14) = sub_10002C9C8(v45, v46, &v51);
    v43 = "[%{public}@]<%{public}s> No messenger to send leader message.";
    goto LABEL_13;
  }

  v34 = v15;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v51 = v39;
    *v37 = 138543618;
    *(v37 + 4) = v34;
    *v38 = v34;
    *(v37 + 12) = 2082;
    v40 = *&v34[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v41 = *&v34[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v42 = v34;
    *(v37 + 14) = sub_10002C9C8(v40, v41, &v51);
    v43 = "[%{public}@]<%{public}s> Drop leader message because we are not joined.";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v35, v36, v43, v37, 0x16u);
    sub_1000038A4(v38, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v39);
  }

LABEL_14:
}

void sub_10020BC30()
{
  v1 = v0;
  v2 = type metadata accessor for Participants();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v1[OBJC_IVAR___MRDFastSyncGroupSession_isLeader])
  {
    return;
  }

  v14 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = *(*v14 + 248);
  v16 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];

  LOBYTE(v15) = v15(v17);

  if (sub_10036FD5C(v15, 1u))
  {
    if (qword_100529B70 == -1)
    {
LABEL_6:
      v18 = type metadata accessor for Logger();
      sub_100015AFC(v18, qword_100529B78);
      v19 = v1;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v20, v21))
      {
LABEL_20:

        return;
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v59 = v24;
      *v22 = 138412546;
      *(v22 + 4) = v19;
      *v23 = v19;
      *(v22 + 12) = 2082;
      v25 = *&v19[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v26 = *&v19[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v27 = v19;
      *(v22 + 14) = sub_10002C9C8(v25, v26, &v59);
      v28 = "[%@]<%{public}s> Skip identity share because we are entering low power.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v20, v21, v28, v22, 0x16u);
      sub_1000038A4(v23, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v24);

      goto LABEL_20;
    }

LABEL_23:
    swift_once();
    goto LABEL_6;
  }

  if (!*&v1[OBJC_IVAR___MRDFastSyncGroupSession_groupSession] || (v29 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger]) == 0)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100015AFC(v48, qword_100529B78);
    v49 = v1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_20;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v59 = v24;
    *v22 = 138412546;
    *(v22 + 4) = v49;
    *v23 = v49;
    *(v22 + 12) = 2082;
    v50 = *&v49[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v51 = *&v49[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v52 = v49;
    *(v22 + 14) = sub_10002C9C8(v50, v51, &v59);
    v28 = "[%@]<%{public}s> No messenger available to share identity.";
    goto LABEL_19;
  }

  v30 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_localIdentity];
  v31 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];

  v32 = v30;
  v35 = MRDFastSyncGroupSessionState.rawValue.getter(v32, v33, v34);
  v58 = sub_10036D264(v35);

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100015AFC(v36, qword_100529B78);
  v37 = v1;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v57 = v29;
    v41 = v40;
    v42 = swift_slowAlloc();
    v55 = v42;
    v56 = swift_slowAlloc();
    v59 = v56;
    *v41 = 138412546;
    *(v41 + 4) = v37;
    *v42 = v37;
    *(v41 + 12) = 2082;
    v54 = v39;
    v44 = *&v37[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v43 = *&v37[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v45 = v37;
    *(v41 + 14) = sub_10002C9C8(v44, v43, &v59);
    _os_log_impl(&_mh_execute_header, v38, v54, "[%@]<%{public}s> Sharing identity.", v41, 0x16u);
    sub_1000038A4(v55, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v56);

    v29 = v57;
  }

  v46 = v58;
  v47 = v58;
  static Participants.only(_:)();
  sub_10020CF20(1u, v46, v6, v29, 0, 0);

  (*(v3 + 8))(v6, v2);
}

void sub_10020C2E4()
{
  v1 = v0;
  v2 = sub_1001BC5A8(&qword_1005228D8, &unk_100450060);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v48 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  v50 = OBJC_IVAR___MRDFastSyncGroupSession_leaderDiscoveryTimer;
  if (!*&v0[OBJC_IVAR___MRDFastSyncGroupSession_leaderDiscoveryTimer])
  {
    sub_1001E6B44();
    v13 = sub_1001E69BC();

    (*((swift_isaMask & *v13) + 0x68))(v14);

    v15 = "v52@0:8Q16@24@32B40@44" + 19;
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000038A4(v5, &qword_1005228D8, &unk_100450060);
    }

    else
    {
      v16 = *(v7 + 32);
      v16(v12, v5, v6);
      v17 = sub_1001E6ABC();
      swift_beginAccess();
      v18 = *(v17 + 16);

      if (v18 == 1)
      {
        v49 = kMREventGroupSessionLeaderLost;
        (*(v7 + 16))(v10, v12, v6);
        v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v20 = swift_allocObject();
        v16((v20 + v19), v10, v6);
        v55 = sub_100222DE8;
        v56 = v20;
        aBlock = _NSConcreteStackBlock;
        v15 = "@44";
        v52 = 1107296256;
        v53 = sub_1001CDC04;
        v54 = &unk_1004C3580;
        v21 = _Block_copy(&aBlock);
        v22 = v49;

        MRAnalyticsSendEvent();
        _Block_release(v21);

        (*(v7 + 8))(v12, v6);
      }

      else
      {
        (*(v7 + 8))(v12, v6);
        v15 = "@44";
      }
    }

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100015AFC(v23, qword_100529B78);
    v24 = v1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock = v29;
      *v27 = 138412546;
      *(v27 + 4) = v24;
      *v28 = v24;
      *(v27 + 12) = 2082;
      v30 = v1;
      v31 = v15;
      v32 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v33 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v34 = v24;
      v35 = v32;
      v15 = v31;
      v1 = v30;
      *(v27 + 14) = sub_10002C9C8(v35, v33, &aBlock);
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@]<%{public}s> Start leader discovery timer.", v27, 0x16u);
      sub_1000038A4(v28, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v29);
    }

    v36 = [objc_opt_self() currentSettings];
    if (v36)
    {
      v37 = v36;
      [v36 groupSessionLeaderDiscoveryInterval];
      v39 = v38;

      v40 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
      v41 = swift_allocObject();
      *(v41 + 16) = v24;
      v42 = objc_allocWithZone(MSVTimer);
      v55 = sub_100222DE0;
      v56 = v41;
      aBlock = _NSConcreteStackBlock;
      v52 = *(v15 + 323);
      v53 = sub_100003D98;
      v54 = &unk_1004C3530;
      v43 = _Block_copy(&aBlock);
      v44 = v24;
      v45 = v40;

      v46 = [v42 initWithInterval:0 repeats:v45 queue:v43 block:v39];
      _Block_release(v43);

      v47 = *&v1[v50];
      *&v1[v50] = v46;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10020C904(char *a1)
{
  v38 = type metadata accessor for Participant();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v38);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1[OBJC_IVAR___MRDFastSyncGroupSession_groupSession])
  {
    v6 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];

    v7 = GroupSession.activeParticipants.getter();

    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 56);
    v35 = a1;
    v37 = &a1[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
    a1 = ((v8 + 63) >> 6);
    v36 = v2 + 16;
    v11 = (v2 + 8);

    v12 = 0;
    v13 = v38;
    while (v10)
    {
LABEL_11:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      (*(v2 + 16))(v5, *(v7 + 48) + *(v2 + 72) * (v15 | (v12 << 6)), v13);
      v16 = Participant.handle.getter();
      v18 = *(v37 + 1);
      if (v18)
      {
        if (v16 == *v37 && v18 == v17)
        {

          (*v11)(v5, v38);
LABEL_24:
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v13 = v38;
        (*v11)(v5, v38);
        if (v20)
        {
          goto LABEL_24;
        }
      }

      else
      {

        (*v11)(v5, v13);
      }
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= a1)
      {

        a1 = v35;
        goto LABEL_19;
      }

      v10 = *(v7 + 56 + 8 * v14);
      ++v12;
      if (v10)
      {
        v12 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_19:
  if (qword_100529B70 != -1)
  {
LABEL_26:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100015AFC(v21, qword_100529B78);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v39 = v27;
    *v25 = 138412546;
    *(v25 + 4) = v22;
    *v26 = v22;
    *(v25 + 12) = 2082;
    v28 = *&v22[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v29 = *&v22[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v30 = v22;
    *(v25 + 14) = sub_10002C9C8(v28, v29, &v39);
    _os_log_impl(&_mh_execute_header, v23, v24, "[%@]<%{public}s> Leader remains undiscovered.", v25, 0x16u);
    sub_1000038A4(v26, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v27);
  }

  sub_10021DECC();
  v31 = swift_allocError();
  *v32 = 4;
  sub_100204BF8(v31);
}

void sub_10020CD20()
{
  v1 = OBJC_IVAR___MRDFastSyncGroupSession_leaderDiscoveryTimer;
  v2 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_leaderDiscoveryTimer];
  if (v2)
  {
    [v2 invalidate];
    v3 = *&v0[v1];
    *&v0[v1] = 0;

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100015AFC(v4, qword_100529B78);
    v5 = v0;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v7 = 138412546;
      *(v7 + 4) = v5;
      *v8 = v5;
      *(v7 + 12) = 2082;
      v10 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v11 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v12 = v5;
      *(v7 + 14) = sub_10002C9C8(v10, v11, &v14);
      _os_log_impl(&_mh_execute_header, oslog, v6, "[%@]<%{public}s> Stop leader discovery timer.", v7, 0x16u);
      sub_1000038A4(v8, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_10020CF20(unsigned int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v97 = a4;
  v98 = a2;
  v99 = a1;
  v10 = type metadata accessor for Participants();
  v90 = *(v10 - 8);
  v11 = *(v90 + 64);
  v12 = __chkstk_darwin(v10);
  v84 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v78 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = v17[8];
  __chkstk_darwin(v16);
  v20 = (&v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v20 = v21;
  v22 = v17[13];
  v94 = enum case for DispatchPredicate.onQueue(_:);
  v95 = v17 + 13;
  v93 = v22;
  v22(v20);
  v91 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v23 = v17[1];
  v96 = v17 + 1;
  v92 = v23;
  v23(v20, v16);
  if (v21)
  {
    v89 = v16;
    v85 = a5;
    v86 = a6;
    if (qword_100529B70 == -1)
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
  sub_100015AFC(v24, qword_100529B78);
  v25 = v90;
  v83 = *(v90 + 16);
  v83(v15, a3, v10);
  v26 = v98;
  v27 = v98;
  v28 = v6;
  v88 = v10;
  v29 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();

  v32 = os_log_type_enabled(v30, v31);
  v87 = a3;
  if (v32)
  {
    v80 = v31;
    v81 = v30;
    v33 = v29;
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v100[0] = v79;
    *v34 = 138413314;
    *(v34 + 4) = v33;
    v78 = v35;
    *v35 = v33;
    *(v34 + 12) = 2082;
    v37 = *&v33[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v36 = *&v33[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v82 = v33;
    v38 = v33;
    *(v34 + 14) = sub_10002C9C8(v37, v36, v100);
    *(v34 + 22) = 2080;
    v39 = sub_10036C51C(v99);
    v41 = sub_10002C9C8(v39, v40, v100);

    *(v34 + 24) = v41;
    *(v34 + 32) = 2080;
    v42 = v84;
    v43 = v88;
    v83(v84, v15, v88);
    v44 = (*(v25 + 88))(v42, v43);
    v45 = v25;
    if (v44 == enum case for Participants.only(_:))
    {
      (*(v25 + 96))(v42, v43);
      v46 = *v42;
      type metadata accessor for Participant();
      sub_100004858(&qword_100521D68, 255, &type metadata accessor for Participant);
      v47 = Set.description.getter();
      v49 = v48;

      (*(v45 + 8))(v15, v43);
    }

    else
    {
      v51 = v44;
      v52 = enum case for Participants.all(_:);
      v53 = *(v25 + 8);
      v53(v15, v43);
      if (v51 == v52)
      {
        v49 = 0xE300000000000000;
        v47 = 7105633;
      }

      else
      {
        v53(v84, v43);
        v49 = 0xE700000000000000;
        v47 = 0x6E776F6E6B6E75;
      }
    }

    v54 = v81;
    v55 = sub_10002C9C8(v47, v49, v100);

    *(v34 + 34) = v55;
    *(v34 + 42) = 2112;
    *(v34 + 44) = v27;
    v56 = v98;
    v78[1] = v98;
    v57 = v27;
    _os_log_impl(&_mh_execute_header, v54, v80, "[%@]<%{public}s> Sending message type: %s to: %s with payload: %@", v34, 0x34u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    swift_arrayDestroy();

    v29 = v82;
    v50 = v89;
    if (!v56)
    {
      goto LABEL_14;
    }
  }

  else
  {

    (*(v25 + 8))(v15, v88);
    v50 = v89;
    if (!v26)
    {
      goto LABEL_14;
    }
  }

  v58 = [v27 data];
  if (v58)
  {
    v59 = v58;
    v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    goto LABEL_15;
  }

LABEL_14:
  v60 = 0;
  v62 = 0xC000000000000000;
LABEL_15:
  v63 = MRDFastSyncGroupSessionState.rawValue.getter(v99, v60, v62);
  v65 = v64;
  v67 = v66;
  sub_10036C864(v63);
  v69 = v68;
  v71 = v70;
  *v20 = v91;
  v93(v20, v94, v50);
  v72 = _dispatchPreconditionTest(_:)();
  result = v92(v20, v50);
  if (v72)
  {
    v74 = swift_allocObject();
    v76 = v85;
    v75 = v86;
    v74[2] = v29;
    v74[3] = v76;
    v74[4] = v75;
    v77 = v29;
    sub_10021DF20(v76);
    GroupSessionMessenger.send(_:to:completion:)();

    sub_1001C4034(v69, v71);
    return sub_1001C4034(v65, v67);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10020D64C(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100015AFC(v6, qword_100529B78);
    swift_errorRetain();
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v8, v9))
    {

      if (!a3)
      {
        return;
      }

      goto LABEL_7;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v10 = 138412802;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2082;
    v13 = *&v7[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v12 = *&v7[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v14 = v7;
    *(v10 + 14) = sub_10002C9C8(v13, v12, &v17);
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v15;
    v11[1] = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@]<%{public}s> Message send error %@.", v10, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v16);
  }

  if (!a3)
  {
    return;
  }

LABEL_7:

  a3(a1);

  sub_1001C7C2C(a3);
}

void sub_10020D8BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  v19(v15, v11);
  if ((v16 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1001C3FE0(a1, a2);
  v121 = a1;
  v109 = MRDFastSyncGroupSessionState.rawValue.getter(5, a1, a2);
  v18 = v20;
  v126 = v21;
  v22 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipantIdentifier + 8];
  v123 = v20;
  if (v22)
  {
    v118 = a2;
    v106 = a4;
    v23 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
    swift_beginAccess();
    v125 = v5;
    v24 = *&v5[v23];

    v26 = 0;
    v27 = sub_100222A00(v25, a3);

    v28 = &unk_100522000;
    v5 = "v52@0:8Q16@24@32B40@44" + 19;
    v29 = *(v27 + 16) == *(a3 + 16);
    v120 = v27;
    v105 = a5;
    if (!v29)
    {
      v30 = v18;
      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100015AFC(v31, qword_100529B78);
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      a4 = v125;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v128[0] = v127;
        *v34 = 138413058;
        *(v34 + 4) = a4;
        *v35 = a4;
        *(v34 + 12) = 2082;
        v36 = *(a4 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
        v37 = *(a4 + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);
        v38 = a4;
        *(v34 + 14) = sub_10002C9C8(v36, v37, v128);
        a4 = 2048;
        *(v34 + 22) = 2048;
        v39 = *(a3 + 16);

        *(v34 + 24) = v39;
        v27 = v120;

        *(v34 + 32) = 2048;
        v40 = *(v27 + 16);

        *(v34 + 34) = v40;

        _os_log_impl(&_mh_execute_header, v32, v33, "[%@]<%{public}s> Not all participant identifiers mapped to send message. Provided: %ld, Mapped: %ld.", v34, 0x2Au);
        sub_1000038A4(v35, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v127);
        v18 = v123;

        v28 = &unk_100522000;
        v5 = "v52@0:8Q16@24@32B40@44" + 19;
      }

      else
      {

        swift_bridgeObjectRelease_n();

        v5 = "@44";
        v28 = &unk_100522000;
        v18 = v30;
      }
    }

    v55 = v27 + 64;
    v56 = 1 << *(v27 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(v27 + 64);
    v108 = &v125[v28[43]];
    v119 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
    v59 = (v56 + 63) >> 6;

    v60 = 0;
    *&v61 = *(v5 + 241);
    v107 = v61;
    v116 = v59;
    v117 = v27 + 64;
    if (v58)
    {
      while (1)
      {
        v62 = v60;
LABEL_21:
        v63 = (v62 << 10) | (16 * __clz(__rbit64(v58)));
        v64 = *(v27 + 56);
        v65 = *(v27 + 48) + v63;
        v66 = *(v65 + 8);
        v127 = *v65;
        v67 = (v64 + v63);
        v68 = v67[1];
        v113 = *v67;
        v69 = qword_100529B70;

        v124 = v68;

        if (v69 != -1)
        {
          swift_once();
        }

        v70 = type metadata accessor for Logger();
        v71 = sub_100015AFC(v70, qword_100529B78);
        v72 = v125;
        v73 = v125;

        v74 = v126;
        sub_1001C3FE0(v18, v126);
        v115 = v71;
        v75 = Logger.logObject.getter();
        a4 = v18;
        v76 = static os_log_type_t.info.getter();

        sub_1001C4034(a4, v74);

        v122 = v76;
        v77 = os_log_type_enabled(v75, v76);
        v114 = v73;
        if (v77)
        {
          v78 = swift_slowAlloc();
          v111 = v75;
          v79 = a4;
          v80 = v78;
          v81 = swift_slowAlloc();
          v110 = v81;
          a4 = swift_slowAlloc();
          v129[0] = a4;
          *v80 = v107;
          *(v80 + 4) = v73;
          *v81 = v72;
          *(v80 + 12) = 2082;
          v112 = 0;
          v82 = v126;
          v83 = *v108;
          v84 = v108[1];
          v85 = v73;
          *(v80 + 14) = sub_10002C9C8(v83, v84, v129);
          *(v80 + 22) = 2080;
          LOBYTE(v128[0]) = v109;
          v128[1] = v79;
          v128[2] = v82;
          sub_1001C3FE0(v79, v82);
          v86 = String.init<A>(describing:)();
          v88 = sub_10002C9C8(v86, v87, v129);
          v72 = v125;

          *(v80 + 24) = v88;
          v26 = v112;
          *(v80 + 32) = 2080;
          *(v80 + 34) = sub_10002C9C8(v127, v66, v129);
          v75 = v111;
          _os_log_impl(&_mh_execute_header, v111, v122, "[%@]<%{public}s> Enqueue message %s for handle: %s.", v80, 0x2Au);
          sub_1000038A4(v110, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();
        }

        v5 = *&v72[v119];
        if (!v5)
        {
          __break(1u);
          return;
        }

        v89 = *(*v5 + 440);

        v89(v121, v118, v127, v66);
        if (v26)
        {
          break;
        }

        v58 &= v58 - 1;

        v60 = v62;
        v18 = v123;
        v27 = v120;
        v59 = v116;
        v55 = v117;
        if (!v58)
        {
          goto LABEL_18;
        }
      }

      v90 = v114;
      v91 = v124;

      swift_errorRetain();
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v128[0] = swift_slowAlloc();
        *v94 = v107;
        *(v94 + 4) = v90;
        *v95 = v125;
        *(v94 + 12) = 2082;
        v96 = *v108;
        v97 = v108[1];
        v98 = v90;
        *(v94 + 14) = sub_10002C9C8(v96, v97, v128);
        *(v94 + 22) = 2080;
        v99 = sub_10002C9C8(v113, v91, v128);

        *(v94 + 24) = v99;
        *(v94 + 32) = 2112;
        swift_errorRetain();
        v100 = _swift_stdlib_bridgeErrorToNSError();
        *(v94 + 34) = v100;
        v95[1] = v100;
        _os_log_impl(&_mh_execute_header, v92, v93, "[%@]<%{public}s> Error enqueuing message for id: %s - %@.", v94, 0x2Au);
        sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
        swift_arrayDestroy();

        swift_arrayDestroy();
      }

      else
      {
      }

      v101 = v106;
      v102 = v123;
      sub_10021DECC();
      v103 = swift_allocError();
      *v104 = 3;
      v101(v103);

      v54 = v102;
      goto LABEL_12;
    }

LABEL_18:
    while (1)
    {
      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v62 >= v59)
      {
        sub_1001C4034(v18, v126);

        return;
      }

      v58 = *(v55 + 8 * v62);
      ++v60;
      if (v58)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  if (qword_100529B70 != -1)
  {
LABEL_36:
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100015AFC(v41, qword_100529B78);
  v42 = v5;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v130 = v127;
    *v45 = 138412546;
    *(v45 + 4) = v42;
    *v46 = v42;
    *(v45 + 12) = 2082;
    v47 = a4;
    v48 = *&v42[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v49 = *&v42[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v50 = v42;
    v51 = v49;
    a4 = v47;
    *(v45 + 14) = sub_10002C9C8(v48, v51, &v130);
    _os_log_impl(&_mh_execute_header, v43, v44, "[%@]<%{public}s> Cannot send message before identity exchange.", v45, 0x16u);
    sub_1000038A4(v46, &qword_100521870, &unk_10044EA70);
    v18 = v123;

    sub_100026A44(v127);
  }

  sub_10021DECC();
  v52 = swift_allocError();
  *v53 = 3;
  (a4)(v52);

  v54 = v18;
LABEL_12:
  sub_1001C4034(v54, v126);
}