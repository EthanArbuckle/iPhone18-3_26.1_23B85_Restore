uint64_t sub_1001DBE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = async function pointer to GroupActivity.activate()[1];
  v10 = swift_task_alloc();
  v8[7] = v10;
  v11 = type metadata accessor for SystemRemoteControlActivity();
  v12 = sub_100004810(&qword_100521DC8, type metadata accessor for SystemRemoteControlActivity);
  *v10 = v8;
  v10[1] = sub_1001DBF0C;

  return GroupActivity.activate()(v11, v12);
}

uint64_t sub_1001DBF0C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_1001DC390;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v7 = sub_1001DC038;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001DC038()
{
  v18 = v0;
  if ((*(v0 + 88) & 1) == 0)
  {
    if (qword_100529AB0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 32);
    v2 = type metadata accessor for Logger();
    sub_100015AFC(v2, qword_100529AB8);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 48);
      v7 = *(v0 + 24);
      v6 = *(v0 + 32);
      v8 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10002C9C8(v9, v10, &v17);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_10002C9C8(v7, v6, &v17);
      _os_log_impl(&_mh_execute_header, v3, v4, "[%s]<%{public}s> Failed to activate activity", v8, 0x16u);
      swift_arrayDestroy();
    }
  }

  v12 = *(&async function pointer to dispatch thunk of GroupActivityAdvertisement.advertise() + 1);
  v16 = (&async function pointer to dispatch thunk of GroupActivityAdvertisement.advertise() + async function pointer to dispatch thunk of GroupActivityAdvertisement.advertise());
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_1001DC25C;
  v14 = *(v0 + 40);

  return v16();
}

uint64_t sub_1001DC25C()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001DC638, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1001DC390()
{
  v23 = v0;
  if (qword_100529AB0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100529AB8);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = v0[6];
    v9 = v0[3];
    v20 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 136315650;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10002C9C8(v12, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_10002C9C8(v9, v20, &v22);
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v15;
    *v11 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s]<%{public}s> Failed to activate activity: %@", v10, 0x20u);
    sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = *(&async function pointer to dispatch thunk of GroupActivityAdvertisement.advertise() + 1);
  v21 = (&async function pointer to dispatch thunk of GroupActivityAdvertisement.advertise() + async function pointer to dispatch thunk of GroupActivityAdvertisement.advertise());
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = sub_1001DC25C;
  v18 = v0[5];

  return v21();
}

uint64_t sub_1001DC638()
{
  v20 = v0;
  if (qword_100529AB0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100529AB8);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[6];
    v9 = v0[3];
    v18 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v10 = 136315650;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10002C9C8(v12, v13, &v19);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_10002C9C8(v9, v18, &v19);
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v15;
    *v11 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s]<%{public}s> Failed to start advertising: %@", v10, 0x20u);
    sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001DC904(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v5 = *(*(v4 - 8) + 64);
  result = __chkstk_darwin(v4 - 8);
  v8 = &v25 - v7;
  v9 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_activity;
  v10 = *(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_activity);
  if (v10)
  {
    v11 = *(*v10 + 104);
    v12 = *(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_activity);

    v14 = v11(v13);
    v16 = v15;

    v17 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_advertisement;
    v18 = *(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_advertisement);
    if (v18)
    {
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
      v20 = swift_allocObject();
      v20[2] = 0;
      v20[3] = 0;
      v20[4] = v18;
      v20[5] = v14;
      v20[6] = v16;
      v20[7] = a2;
      swift_retain_n();
      sub_1001BF864(0, 0, v8, &unk_10044F1B0, v20);

      v21 = *(a1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession);
      if (v21)
      {
        v22 = *(v21 + OBJC_IVAR___MRDSystemGroupSession_session);

        GroupSession.end()();
      }

      v23 = *(a1 + v9);
      *(a1 + v9) = 0;

      v24 = *(a1 + v17);
      *(a1 + v17) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001DCB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v8 = *(&async function pointer to dispatch thunk of GroupActivityAdvertisement.stopAdvertisement() + 1);
  v11 = (&async function pointer to dispatch thunk of GroupActivityAdvertisement.stopAdvertisement() + async function pointer to dispatch thunk of GroupActivityAdvertisement.stopAdvertisement());
  v9 = swift_task_alloc();
  v7[5] = v9;
  *v9 = v7;
  v9[1] = sub_1001DCBC8;

  return v11();
}

uint64_t sub_1001DCBC8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001DCCFC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1001DCCFC()
{
  v20 = v0;
  if (qword_100529AB0 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100529AB8);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = v0[4];
    v18 = v0[3];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v10 = 136315650;
    v12 = _typeName(_:qualified:)();
    v14 = sub_10002C9C8(v12, v13, &v19);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_10002C9C8(v9, v18, &v19);
    *(v10 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v15;
    *v11 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s]<%{public}s> Failed to stop advertising: %@", v10, 0x20u);
    sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1001DCFA0()
{
  v1 = v0;
  v2 = sub_1001BC5A8(&unk_100524C50, &qword_10044F180);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v35 - v4;
  v6 = sub_1001BC5A8(&qword_100521D78, &qword_10044F188);
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = sub_1001BC5A8(&qword_100521D80, &unk_10044F190);
  v38 = *(v10 - 8);
  v39 = v10;
  v11 = *(v38 + 64);
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_executionQueue);
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v22 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession;
    v23 = *(v1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession);
    if (v23)
    {
      v24 = *(v23 + OBJC_IVAR___MRDSystemGroupSession_session);

      GroupSession.leave()();
    }

    type metadata accessor for SystemGroupSession();

    v26 = sub_1003A0EEC(v25);
    v27 = *(v1 + v22);
    *(v1 + v22) = v26;
    v28 = v26;

    GroupSession.$activeParticipants.getter();
    v40 = v20;
    v29 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
    sub_1001E0520();
    sub_10000462C(&qword_100521D88, &qword_100521D78, &qword_10044F188);
    sub_100004810(&qword_100524C70, sub_1001E0520);
    v30 = v37;
    Publisher.receive<A>(on:options:)();
    sub_1000038A4(v5, &unk_100524C50, &qword_10044F180);

    (*(v36 + 8))(v9, v30);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v28;
    sub_10000462C(&qword_100521D90, &qword_100521D80, &unk_10044F190);
    v33 = v28;
    v34 = v39;
    Publisher<>.sink(receiveValue:)();

    (*(v38 + 8))(v13, v34);
    swift_beginAccess();
    sub_1001BC5A8(&qword_100521D98, qword_10045BF70);
    sub_10000462C(&unk_100529150, &qword_100521D98, qword_10045BF70);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001DD4F4(uint64_t a1, unint64_t *a2)
{
  v160 = type metadata accessor for Participant();
  v5 = *(v160 - 1);
  isa = v5[8].isa;
  __chkstk_darwin(v160);
  v8 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(&v2->isa + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_executionQueue);
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v16 & 1) == 0)
  {
    goto LABEL_58;
  }

  if (qword_100529AB0 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v17 = type metadata accessor for Logger();
    v18 = sub_100015AFC(v17, qword_100529AB8);
    v19 = v2;
    v20 = a2;

    v161 = v18;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    v23 = os_log_type_enabled(v21, v22);
    v157 = v5;
    v158 = a1;
    v156 = v8;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v164[0] = v159;
      *v24 = 138412802;
      *(v24 + 4) = v19;
      *v25 = v19;
      *(v24 + 12) = 2082;
      v26 = v19;
      v27 = [v20 identifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_10002C9C8(v28, v30, v164);

      *(v24 + 14) = v31;
      *(v24 + 22) = 2080;
      sub_100004810(&qword_100521D68, &type metadata accessor for Participant);
      v32 = Set.description.getter();
      v34 = sub_10002C9C8(v32, v33, v164);

      *(v24 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@]<%{public}s> Participants changed: %s", v24, 0x20u);
      sub_1000038A4(v25, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v35 = v19;
    v36 = v20;
    v5 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    v38 = os_log_type_enabled(v5, v37);
    v159 = v35;
    if (v38)
    {
      a1 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v164[0] = swift_slowAlloc();
      *a1 = 138412802;
      *(a1 + 4) = v35;
      *v39 = v35;
      *(a1 + 12) = 2082;
      v40 = v35;
      v41 = [v36 identifier];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = sub_10002C9C8(v42, v44, v164);

      *(a1 + 14) = v45;
      *(a1 + 22) = 2080;
      v46 = *&v36[OBJC_IVAR___MRDSystemGroupSession_session];
      v47 = v156;
      GroupSession.initiator.getter();
      sub_100004810(&qword_1005222C0, &type metadata accessor for Participant);
      v48 = v160;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (v157[1].isa)(v47, v48);
      v52 = sub_10002C9C8(v49, v51, v164);

      *(a1 + 24) = v52;
      _os_log_impl(&_mh_execute_header, v5, v37, "[%@]<%{public}s> Initiator: %s", a1, 0x20u);
      sub_1000038A4(v39, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v53 = *&v36[OBJC_IVAR___MRDSystemGroupSession_session];
    result = GroupSession.isLocallyInitiated.getter();
    if ((result & 1) == 0)
    {
      return result;
    }

    v55 = v36;

    v57 = sub_1001DFFE0(v56, v55);
    v157 = v55;

    v58 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_connections;
    v8 = v159;
    swift_beginAccess();
    v59 = *(v8 + v58);

    v61 = sub_1001BDDB0(v60);
    v2 = sub_1001DE6A0(v57);

    a2 = sub_100008280(v2);

    v62 = a2[2];
    v63 = v61[2];
    v149 = v61;
    v148 = a2;
    if (v62 > v63 >> 3)
    {

      p_isa = sub_1001C0730(a2, v61);
    }

    else
    {
      v163[0] = v61;

      v2 = v163;
      sub_1001C0604(a2);
      p_isa = v163[0];
    }

    v66 = 0;
    v67 = (p_isa + 7);
    v68 = 1 << *(p_isa + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v70 = v69 & p_isa[7];
    v71 = ((v68 + 63) >> 6);
    v151 = "T@MRDSystemGroupSession,N,R";
    *&v64 = 138412802;
    v154 = v64;
    v155 = v71;
    v156 = v58;
    v152 = p_isa;
    v158 = (p_isa + 7);
    while (v70)
    {
LABEL_22:
      v73 = __clz(__rbit64(v70));
      v70 &= v70 - 1;
      v74 = p_isa[6] + ((v66 << 10) | (16 * v73));
      v75 = *v74;
      v5 = *(v74 + 8);
      swift_beginAccess();
      v76 = *(v8 + v58);

      v77 = sub_10000698C(v75, v5);
      v160 = v75;
      if (v78)
      {
        v79 = v77;
        v80 = *(v8 + v58);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = *(v8 + v58);
        v162 = v82;
        *(v8 + v58) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1001DF16C();
          v82 = v162;
        }

        v83 = *(*(v82 + 48) + 16 * v79 + 8);

        v153 = *(*(v82 + 56) + 8 * v79);
        sub_1001DEE44(v79, v82);
        *(v8 + v58) = v82;
        swift_endAccess();
        v84 = v8;
        a1 = v157;

        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          v163[0] = v150;
          *v87 = v154;
          *(v87 + 4) = v84;
          *v88 = v8;
          *(v87 + 12) = 2082;
          v89 = v84;
          v90 = [a1 identifier];
          a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v92 = v91;

          v93 = sub_10002C9C8(a1, v92, v163);
          v8 = v159;

          *(v87 + 14) = v93;
          *(v87 + 22) = 2080;
          v94 = sub_10002C9C8(v160, v5, v163);

          *(v87 + 24) = v94;
          _os_log_impl(&_mh_execute_header, v85, v86, "[%@]<%{public}s> Disconnecting removed participant: %s", v87, 0x20u);
          sub_1000038A4(v88, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();
        }

        else
        {
        }

        v105 = objc_allocWithZone(NSError);
        v106 = String._bridgeToObjectiveC()();
        v107 = [v105 initWithMRError:104 description:v106];

        v58 = v156;
        if (v107)
        {
          a2 = _convertErrorToNSError(_:)();
        }

        else
        {
          a2 = 0;
        }

        p_isa = &v152->isa;
        v2 = v153;
        [v153 closeWithError:a2, v148];
      }

      else
      {
        swift_endAccess();
        v95 = v8;
        v96 = v157;

        v2 = Logger.logObject.getter();
        a1 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v2, a1))
        {
          a2 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v163[0] = v153;
          *a2 = v154;
          *(a2 + 4) = v95;
          *v97 = v8;
          *(a2 + 6) = 2082;
          v98 = v95;
          v99 = [v96 identifier];
          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v102 = v101;

          v103 = sub_10002C9C8(v100, v102, v163);
          v8 = v159;

          *(a2 + 14) = v103;
          *(a2 + 11) = 2080;
          v104 = sub_10002C9C8(v160, v5, v163);

          a2[3] = v104;
          _os_log_impl(&_mh_execute_header, v2, a1, "[%@]<%{public}s> Removed participant: %s didn't have an active connection to remove", a2, 0x20u);
          sub_1000038A4(v97, &qword_100521870, &unk_10044EA70);
          p_isa = &v152->isa;

          swift_arrayDestroy();
        }

        else
        {
        }

        v58 = v156;
      }

      v67 = v158;
      v71 = v155;
    }

    while (1)
    {
      v72 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v72 >= v71)
      {
        break;
      }

      v70 = *(v67 + 8 * v72);
      ++v66;
      if (v70)
      {
        v66 = v72;
        goto LABEL_22;
      }
    }

    a2 = v149;
    if (v149[2] <= v148[2] >> 3)
    {
      v163[0] = v148;
      v2 = v163;
      sub_1001C0604(v149);

      v108 = v163[0];
    }

    else
    {
      v2 = sub_1001C0730(v149, v148);

      v108 = v2;
    }

    v109 = 0;
    v110 = v108 + 7;
    v111 = 1 << LOBYTE(v108[4].isa);
    v112 = -1;
    if (v111 < 64)
    {
      v112 = ~(-1 << v111);
    }

    v113 = v112 & v108[7].isa;
    v114 = (v111 + 63) >> 6;
    v152 = v108 + 7;
    v153 = v108;
    v151 = v114;
    while (v113)
    {
      a1 = v109;
      v8 = v159;
LABEL_48:
      v115 = (v108[6].isa + ((a1 << 10) | (16 * __clz(__rbit64(v113)))));
      v116 = v115[1];
      v158 = *v115;
      swift_bridgeObjectRetain_n();
      v117 = v8;
      v118 = v157;
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.default.getter();

      v160 = &v118->isa;

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v150 = v122;
        v155 = swift_slowAlloc();
        v163[0] = v155;
        *v121 = v154;
        *(v121 + 4) = v117;
        *v122 = v8;
        *(v121 + 12) = 2082;
        v123 = v117;
        v124 = [v160 identifier];
        v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v127 = v126;

        v8 = v159;
        v128 = sub_10002C9C8(v125, v127, v163);

        *(v121 + 14) = v128;
        v129 = v158;
        *(v121 + 22) = 2080;
        *(v121 + 24) = sub_10002C9C8(v129, v116, v163);
        _os_log_impl(&_mh_execute_header, v119, v120, "[%@]<%{public}s> Creating connection for added participant: %s", v121, 0x20u);
        sub_1000038A4(v150, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      v130 = objc_allocWithZone(MRDSystemGroupSessionTransportConnection);
      v5 = v158;
      v131 = String._bridgeToObjectiveC()();
      a2 = [v130 initWithGroupSession:v160 participantIdentifier:v131];

      v132 = v156;
      swift_beginAccess();

      v133 = a2;
      v134 = *&v132[v8];
      v135 = swift_isUniquelyReferenced_nonNull_native();
      v162 = *&v132[v8];
      *&v132[v8] = 0x8000000000000000;
      sub_1001DEFF4(v133, v5, v116, v135);

      *&v132[v8] = v162;
      v136 = swift_endAccess();
      v137 = (*((swift_isaMask & *v117) + 0x90))(v136);
      if (v137)
      {
        a2 = v137;
        [v137 systemGroupSessionRemoteControlService:v117 didAcceptConnection:v133];
        swift_unknownObjectRelease();
      }

      v155 = v133;
      v113 &= v113 - 1;
      v138 = v117;
      v139 = v160;

      v2 = Logger.logObject.getter();
      v140 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v2, v140))
      {
        a2 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v163[0] = v160;
        *a2 = v154;
        *(a2 + 4) = v138;
        v5->isa = v159;
        *(a2 + 6) = 2082;
        v141 = v138;
        v142 = [v139 identifier];
        v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v145 = v144;

        v146 = sub_10002C9C8(v143, v145, v163);

        *(a2 + 14) = v146;
        *(a2 + 11) = 2080;
        v147 = sub_10002C9C8(v158, v116, v163);

        a2[3] = v147;
        _os_log_impl(&_mh_execute_header, v2, v140, "[%@]<%{public}s> Added participant: %s", a2, 0x20u);
        sub_1000038A4(v5, &qword_100521870, &unk_10044EA70);

        swift_arrayDestroy();
      }

      else
      {
      }

      v109 = a1;
      v110 = v152;
      v108 = v153;
      v114 = v151;
    }

    v8 = v159;
    while (1)
    {
      a1 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        break;
      }

      if (a1 >= v114)
      {
      }

      v113 = v110[a1].isa;
      ++v109;
      if (v113)
      {
        goto LABEL_48;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }
}

uint64_t sub_1001DE6A0(uint64_t a1)
{
  v51 = type metadata accessor for UUID();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v51);
  v50 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Participant();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v40 = v1;
  v56 = _swiftEmptyArrayStorage;
  sub_1000089FC(0, v9, 0);
  v10 = v56;
  v11 = a1 + 56;
  v12 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v14 = result;
  v15 = 0;
  v45 = (v3 + 8);
  v46 = v6 + 16;
  v47 = v6;
  v43 = a1 + 56;
  v44 = v6 + 8;
  v41 = a1 + 64;
  v42 = v9;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v18 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v19 = *(a1 + 36);
    v52 = v15;
    v53 = v19;
    v20 = v47;
    v21 = *(a1 + 48) + *(v47 + 72) * v14;
    v22 = *(v47 + 16);
    v55 = v10;
    v24 = v48;
    v23 = v49;
    v22(v48, v21, v49);
    v25 = v50;
    Participant.id.getter();
    v26 = UUID.uuidString.getter();
    v54 = v27;
    (*v45)(v25, v51);
    v28 = v24;
    v10 = v55;
    result = (*(v20 + 8))(v28, v23);
    v56 = v10;
    v30 = v10[2];
    v29 = v10[3];
    if (v30 >= v29 >> 1)
    {
      result = sub_1000089FC((v29 > 1), v30 + 1, 1);
      v10 = v56;
    }

    v10[2] = v30 + 1;
    v31 = &v10[2 * v30];
    v32 = v54;
    v31[4] = v26;
    v31[5] = v32;
    v16 = 1 << *(a1 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v43;
    v33 = *(v43 + 8 * v18);
    if ((v33 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    if (v53 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v34 = v33 & (-2 << (v14 & 0x3F));
    if (v34)
    {
      v16 = __clz(__rbit64(v34)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v17 = v42;
    }

    else
    {
      v35 = v18 << 6;
      v36 = v18 + 1;
      v17 = v42;
      v37 = (v41 + 8 * v18);
      while (v36 < (v16 + 63) >> 6)
      {
        v39 = *v37++;
        v38 = v39;
        v35 += 64;
        ++v36;
        if (v39)
        {
          result = sub_10000A16C(v14, v53, 0);
          v16 = __clz(__rbit64(v38)) + v35;
          goto LABEL_4;
        }
      }

      result = sub_10000A16C(v14, v53, 0);
    }

LABEL_4:
    v15 = v52 + 1;
    v14 = v16;
    if (v52 + 1 == v17)
    {
      return v10;
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
  return result;
}

id SystemGroupSessionRemoteControlService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SystemGroupSessionRemoteControlService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001DEBA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100521D70, &unk_10044F160);
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

uint64_t sub_1001DEE44(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1001DEFF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
      sub_1001DEBA0(v16, a4 & 1);
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
      sub_1001DF16C();
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

id sub_1001DF16C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100521D70, &unk_10044F160);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1001DF2D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for Participant();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1001BC5A8(&qword_100522990, &unk_100450100);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_100004810(&qword_100521D68, &type metadata accessor for Participant);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_1001DF600(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_1001DFBF4(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

unint64_t sub_1001DF698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_100521D70, &unk_10044F160);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000698C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

id sub_1001DF79C@<X0>(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession);
  *a1 = v2;
  return v2;
}

id sub_1001DF7D8(unint64_t a1)
{
  v15 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_activity] = 0;
  *&v1[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_advertisement] = 0;
  *&v1[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_sessionTask] = 0;
  *&v1[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_sessionCancellables] = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_connections;
  *&v1[v11] = sub_1001DF698(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v15 = sub_1001E0520();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100004810(&qword_100522A90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_10000462C(&qword_100522AA0, &qword_100521DF8, &unk_100450220);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v1[OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_executionQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = type metadata accessor for SystemGroupSessionRemoteControlService();
  v16.receiver = v1;
  v16.super_class = v12;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_1001DFAEC()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_sessionTask))
  {
    v2 = *(v1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_sessionTask);

    Task.cancel()();
  }

  v3 = *(v1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession);
  *(v1 + OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_systemGroupSession) = 0;

  v4 = OBJC_IVAR___MRDSystemGroupSessionRemoteControlService_sessionCancellables;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = _swiftEmptyArrayStorage;
}

uint64_t sub_1001DFBF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v39 = a2;
  v40 = a1;
  v55 = type metadata accessor for UUID();
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v55);
  v54 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v53 = &v38 - v9;
  v52 = type metadata accessor for Participant();
  v10 = *(*(v52 - 8) + 64);
  v11 = __chkstk_darwin(v52);
  v50 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v49 = &v38 - v15;
  v41 = 0;
  v16 = 0;
  v57 = a3;
  v17 = *(a3 + 56);
  v43 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v42 = (v18 + 63) >> 6;
  v47 = v14 + 16;
  v48 = OBJC_IVAR___MRDSystemGroupSession_session;
  v51 = v14;
  v45 = (v5 + 8);
  v46 = v14 + 8;
  v21 = v49;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v60 = (v20 - 1) & v20;
LABEL_11:
    v25 = v22 | (v16 << 6);
    v26 = *(v57 + 48);
    v28 = v51;
    v27 = v52;
    v29 = *(v51 + 72);
    v44 = v25;
    (*(v51 + 16))(v21, v26 + v29 * v25, v52);
    v30 = v53;
    Participant.id.getter();
    v31 = *(v56 + v48);
    v32 = v50;
    GroupSession.localParticipant.getter();
    v33 = v54;
    Participant.id.getter();
    v59 = *(v28 + 8);
    v59(v32, v27);
    sub_100004810(&unk_1005286D0, &type metadata accessor for UUID);
    v34 = v55;
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v35 = *v45;
    (*v45)(v33, v34);
    v35(v30, v34);
    result = (v59)(v21, v27);
    v20 = v60;
    if ((v58 & 1) == 0)
    {
      *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
LABEL_15:
        v37 = v57;

        return sub_1001DF2D8(v40, v39, v41, v37);
      }
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v42)
    {
      goto LABEL_15;
    }

    v24 = *(v43 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v60 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001DFFE0(uint64_t a1, void *a2)
{
  v3 = v2;
  v57 = type metadata accessor for UUID();
  v6 = *(v57 - 8);
  v7 = *(v6 + 8);
  v8 = __chkstk_darwin(v57);
  v56 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v40 - v10;
  v54 = type metadata accessor for Participant();
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v54);
  v53 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v52 = &v40 - v15;
  v16 = *(a1 + 32);
  v17 = v16 & 0x3F;
  v18 = ((1 << v16) + 63) >> 6;
  v19 = 8 * v18;
  v20 = a2;
  v59 = v20;
  if (v17 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v41 = v18;
    v42 = v3;
    v40 = &v40;
    __chkstk_darwin(v20);
    v43 = &v40 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v19);
    v44 = 0;
    v18 = 0;
    v58 = a1;
    v22 = *(a1 + 56);
    a1 += 56;
    v21 = v22;
    v46 = a1;
    v23 = 1 << *(a1 - 24);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v21;
    v45 = (v23 + 63) >> 6;
    v50 = v11 + 16;
    v51 = OBJC_IVAR___MRDSystemGroupSession_session;
    v60 = v11;
    v48 = (v6 + 8);
    v49 = v11 + 8;
    while (v25)
    {
      v63 = (v25 - 1) & v25;
      v26 = __clz(__rbit64(v25)) | (v18 << 6);
      v11 = v60;
LABEL_12:
      v29 = *(v58 + 48);
      v30 = *(v11 + 72);
      v47 = v26;
      a1 = v52;
      v3 = v54;
      (*(v11 + 16))(v52, v29 + v30 * v26, v54);
      v31 = v55;
      Participant.id.getter();
      v32 = *&v59[v51];
      v33 = v53;
      GroupSession.localParticipant.getter();
      v6 = v56;
      Participant.id.getter();
      v62 = *(v11 + 8);
      v62(v33, v3);
      sub_100004810(&unk_1005286D0, &type metadata accessor for UUID);
      v19 = v57;
      v61 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *v48;
      (*v48)(v6, v19);
      v34(v31, v19);
      v62(a1, v3);
      v25 = v63;
      if ((v61 & 1) == 0)
      {
        *&v43[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_16:
          v36 = sub_1001DF2D8(v43, v41, v44, v58);

          return v36;
        }
      }
    }

    v27 = v18;
    v11 = v60;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v45)
      {
        goto LABEL_16;
      }

      v28 = *(v46 + 8 * v18);
      ++v27;
      if (v28)
      {
        v63 = (v28 - 1) & v28;
        v26 = __clz(__rbit64(v28)) | (v18 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v38 = swift_slowAlloc();
  v39 = v59;
  v36 = sub_1001DF600(v38, v18, a1, v39);

  return v36;
}

unint64_t sub_1001E0520()
{
  result = qword_100524C60;
  if (!qword_100524C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100524C60);
  }

  return result;
}

void sub_1001E056C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1001DD4F4(v4, v2);
  }
}

uint64_t sub_1001E05D8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F34;

  return sub_1001DCB1C(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1001E0684()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009F30;

  return sub_1001DBE18(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1001E0740()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F30;

  return sub_1001DA51C(v4, v5, v6, v2, v3);
}

uint64_t sub_1001E07D8(uint64_t a1)
{
  v3 = *(v1 + 16);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t variable initialization expression of MRDNearbyGroup.autoApproveKey()
{
  v0 = type metadata accessor for SymmetricKeySize();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  static SymmetricKeySize.bits256.getter();
  return SymmetricKey.init(size:)();
}

uint64_t sub_1001E098C()
{
  v1 = (v0 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret);
  if (*(v0 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret + 8))
  {
    countAndFlagsBits = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret + 8);
  }

  else
  {
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v4 = Data.base64EncodedString(options:)(0);
    countAndFlagsBits = v4._countAndFlagsBits;
    sub_1001C4034(v7, v8);
    v5 = v1[1];
    *v1 = v4;
  }

  return countAndFlagsBits;
}

uint64_t sub_1001E0AB8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret);
  v4 = *(v2 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret + 8);
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1001E0AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = &type metadata for UnsafeRawBufferPointer;
  v14[4] = &protocol witness table for UnsafeRawBufferPointer;
  v14[0] = a1;
  v14[1] = a2;
  v4 = sub_1000326D8(v14, &type metadata for UnsafeRawBufferPointer);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1001D588C(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1001E209C(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1001E2018(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = sub_100026A44(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t (*sub_1001E0BA0(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = sub_1001E098C();
  a1[1] = v3;
  return sub_1001E0BE8;
}

uint64_t sub_1001E0BE8(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = (a1[2] + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret);
  v4 = v3[1];
  *v3 = v2;
  v3[1] = v1;
}

uint64_t sub_1001E0C14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001E0CB4;

  return sub_10003DEEC();
}

uint64_t sub_1001E0CB4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

id sub_1001E0DB4(uint64_t a1)
{
  v3 = type metadata accessor for SymmetricKeySize();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = objc_allocWithZone(v1);
  static SymmetricKeySize.bits256.getter();
  SymmetricKey.init(size:)();
  v6 = &v5[OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v5[OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup_nearbyGroup] = a1;
  v8.receiver = v5;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_1001E0E88(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t MRDNearbyGroup.description.getter()
{
  swift_getObjectType();
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = (*((swift_isaMask & *v0) + 0x68))();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 60;
}

id sub_1001E13B0(char *a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&a1[*a3];
  v13 = a1;
  a4();
  UUID.uuidString.getter();

  (*(v8 + 8))(v11, v7);
  v14 = String._bridgeToObjectiveC()();

  return v14;
}

uint64_t sub_1001E14F8(void *a1, void (*a2)(uint64_t))
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + *a1);
  a2(v8);
  v12 = UUID.uuidString.getter();
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1001E15EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1001E2A8C;

  return (sub_1001E23A0)(a1, a2, a3, a4);
}

id sub_1001E16B8(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_1001E18A4(void *a1, int a2, char a3, void *aBlock)
{
  v4[2] = a1;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  v10 = a1;
  v11 = swift_task_alloc();
  v4[5] = v11;
  *v11 = v4;
  v11[1] = sub_1001CDEF0;

  return sub_1001E23A0(v10, v7, v9, a3);
}

uint64_t MRDNearbyInvitation.description.getter()
{
  swift_getObjectType();
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3D6469203ALL;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = (*((swift_isaMask & *v0) + 0x60))();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 60;
}

uint64_t sub_1001E1B88()
{
  v1 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1001CB290(0, 0, v4, &unk_10044F240, v6);
}

uint64_t sub_1001E1CAC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation);
  v2 = *(&async function pointer to dispatch thunk of NearbyInvitation.markUsed() + 1);
  v5 = (&async function pointer to dispatch thunk of NearbyInvitation.markUsed() + async function pointer to dispatch thunk of NearbyInvitation.markUsed());
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1001E1D5C;

  return v5();
}

uint64_t sub_1001E1D5C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_1001E1FD0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001E2018(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1001E209C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1001E2118(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_1001E226C, 0, 0);
  }
}

uint64_t sub_1001E226C()
{
  receiver = v0[3].receiver;
  v2 = v0[2].receiver;
  v3 = type metadata accessor for MRDNearbyGroup();
  v4 = objc_allocWithZone(v3);
  static SymmetricKeySize.bits256.getter();
  SymmetricKey.init(size:)();
  v5 = &v4[OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup_nearbyGroup] = receiver;
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v6 = objc_msgSendSuper2(v0 + 1, "init");

  super_class = v0->super_class;

  return super_class(v6);
}

uint64_t type metadata accessor for MRDNearbyGroup()
{
  result = qword_100529AE0;
  if (!qword_100529AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E23A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 120) = a4;
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  *(v4 + 72) = a1;
  return _swift_task_switch(sub_1001E23C8, 0, 0);
}

uint64_t sub_1001E23C8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = sub_10036C350(*(v0 + 120));
  sub_1001BC5A8(&qword_100527E20, &qword_10044F2F8);

  v4 = sub_1001D2EFC(v3);
  v6 = v5;
  v7 = *(v2 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup_nearbyGroup);
  *(v0 + 40) = type metadata accessor for NearbyGroup();
  *(v0 + 48) = &protocol witness table for NearbyGroup;
  *(v0 + 16) = v7;
  v8 = async function pointer to NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:)[1];

  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_1001E24F8;
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);

  return NearbyInvitation.__allocating_init(displayName:service:userInfo:invitationSourceProvider:)(v11, v10, 1, v4, v6, v0 + 16);
}

uint64_t sub_1001E24F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_1001E26B4;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_1001E2620;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001E2620()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for MRDNearbyInvitation();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation] = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  v4 = objc_msgSendSuper2((v0 + 56), "init");
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1001E26F0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009F30;

  return sub_1001E1C8C(v3, v4, v5, v2);
}

uint64_t sub_1001E278C()
{
  result = type metadata accessor for SymmetricKey();
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

uint64_t sub_1001E2834()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001E2874()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009F34;

  return sub_1001E1C8C(v3, v4, v5, v2);
}

uint64_t sub_1001E2908()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009F30;

  return sub_1001E18A4(v2, v3, v6, v4);
}

uint64_t sub_1001E29D0(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for MRGroupSessionRouteType()
{
  if (!qword_100521E60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100521E60);
    }
  }
}

uint64_t sub_1001E2A90()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100529AF8);
  sub_100015AFC(v0, qword_100529AF8);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_1001E2AEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001E2B60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_1001E2BAC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);

  return v3(v4);
}

uint64_t sub_1001E2C00()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*sub_1001E2C70(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_1001E2D14;
}

void sub_1001E2D14(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1001E2D7C()
{
  swift_beginAccess();
  sub_1001BC5A8(&qword_100521E70, &unk_10044F3D0);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_1001E2DF0(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_1005214D0, &qword_10044EA60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_1001BC5A8(&qword_100521E70, &unk_10044F3D0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1001E2F28(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1001BC5A8(&qword_1005214D0, &qword_10044EA60);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC12mediaremoted32GroupSessionRapportUserDiscovery__availableDevices;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1001BC5A8(&qword_100521E70, &unk_10044F3D0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_1001E3098;
}

void sub_1001E3098(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

void sub_1001E3200()
{
  v2 = 0;
  v1 = *(v0 + 24);
  sub_100013378(sub_1001E3300);
}

void sub_1001E3300()
{
  v1 = *(v0 + 16);
  if (*v1)
  {
    if (qword_100529AF0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100015AFC(v2, qword_100529AF8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v16 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_10002C9C8(0xD000000000000020, 0x800000010044F3E0, &v16);
      _os_log_impl(&_mh_execute_header, v3, v4, "[%s] Attempted to start while already started", v5, 0xCu);
      sub_100026A44(v6);
    }
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = [objc_allocWithZone(RPCompanionLinkClient) init];
    [v8 setControlFlags:2052];
    v9 = swift_allocObject();
    swift_weakInit();
    v20 = sub_1001E40B0;
    v21 = v9;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_1001E3C00;
    v19 = &unk_1004C28A8;
    v10 = _Block_copy(&v16);

    [v8 setDeviceFoundHandler:v10];
    _Block_release(v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v20 = sub_1001E40B8;
    v21 = v11;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_1001E3C00;
    v19 = &unk_1004C28D0;
    v12 = _Block_copy(&v16);

    [v8 setDeviceLostHandler:v12];
    _Block_release(v12);
    v13 = *v1;
    *v1 = v8;
    v14 = v8;

    v15 = *(v7 + 16);
    *(v7 + 16) = v8;
  }
}

void sub_1001E35FC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100529AF0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100015AFC(v1, qword_100529AF8);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v4 = 136315394;
      *(v4 + 4) = sub_10002C9C8(0xD000000000000020, 0x800000010044F3E0, &v13);
      *(v4 + 12) = 2112;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 14) = v7;
      *v5 = v7;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Failed to activate client: %@", v4, 0x16u);
      sub_1001E4048(v5);

      sub_100026A44(v6);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100529AF0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100015AFC(v8, qword_100529AF8);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10002C9C8(0xD000000000000020, 0x800000010044F3E0, &v13);
      _os_log_impl(&_mh_execute_header, oslog, v9, "[%s] Activated RP client", v10, 0xCu);
      sub_100026A44(v11);
    }

    else
    {
    }
  }
}

void sub_1001E3974()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;
  }

  else
  {
    if (qword_100529AF0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100015AFC(v3, qword_100529AF8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_10002C9C8(0xD000000000000020, 0x800000010044F3E0, &v8);
      _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Attempted to stop with no active client", v6, 0xCu);
      sub_100026A44(v7);
    }
  }
}

uint64_t sub_1001E3AD8(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [a1 idsDeviceIdentifier];
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = *(v3 + 24);
      __chkstk_darwin(v7);

      sub_100013378(sub_1001E4FD8);
    }
  }

  return result;
}

void sub_1001E3C00(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1001E3C68(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [a1 idsDeviceIdentifier];
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = *(v3 + 24);
      __chkstk_darwin(v7);

      sub_100013378(sub_1001E40C0);
    }
  }

  return result;
}

uint64_t sub_1001E3D84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC12mediaremoted32GroupSessionRapportUserDiscovery__availableDevices;
  v4 = sub_1001BC5A8(&qword_100521E70, &unk_10044F3D0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_1001E3E44()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v3[2] = 0;
  type metadata accessor for Lock();
  v3[3] = sub_10036C394();
  v3[4] = &_swiftEmptyDictionarySingleton;
  sub_1001BC5A8(&qword_100521E68, &qword_10044F380);
  Published.init(initialValue:)();
  return v3;
}

uint64_t type metadata accessor for GroupSessionRapportUserDiscovery()
{
  result = qword_100529B28;
  if (!qword_100529B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E3F2C()
{
  sub_1001E3FE4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001E3FE4()
{
  if (!qword_100521EA0)
  {
    sub_1001C2EC8(&qword_100521E68, &qword_10044F380);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100521EA0);
    }
  }
}

uint64_t sub_1001E4048(uint64_t a1)
{
  v2 = sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001E40C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = v1[4];
  v5 = sub_10000698C(v2, v3);
  if (v6)
  {
    v7 = v5;
    v8 = v1[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v1[4];
    v15 = v10;
    v1[4] = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1001C13CC();
      v10 = v15;
    }

    v11 = *(*(v10 + 48) + 16 * v7 + 8);

    v12 = *(*(v10 + 56) + 8 * v7);
    sub_1001DEE44(v7, v10);
    v1[4] = v10;
    swift_endAccess();
    v13 = (*(*v1 + 176))(v14);

    v13(v14, 0);
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_1001E41F4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_1001E4F8C();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1001E440C(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_1001BFEF0(v21 + 1);
    }

    v19 = v8;
    sub_1001E45EC(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_1001E4F8C();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1001E4670(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_1001E440C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001BC5A8(&qword_100521698, &qword_10044EB70);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1001E4F8C();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1001BFEF0(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_1001E45EC(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1001E4670(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001BFEF0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1001E47D0();
      goto LABEL_12;
    }

    sub_1001E4920(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1001E4F8C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_1001E47D0()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100521698, &qword_10044EB70);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_1001E4920(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1001BC5A8(&qword_100521698, &qword_10044EB70);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

void sub_1001E4B34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
      sub_1001C1538(v16, a4 & 1);
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
      sub_1001C13CC();
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

uint64_t sub_1001E4CAC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = sub_1001E4E34();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_1001E4F8C();
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001E47D0();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_1001D4EC4(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_1001E4E34()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1001E440C(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1001E4F8C();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1001D4EC4(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001E4F8C()
{
  result = qword_100521680;
  if (!qword_100521680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100521680);
  }

  return result;
}

id sub_1001E4FD8()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  result = [v2 model];
  if (result)
  {
    v6 = result;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v18 = v7;
    v19 = v9;
    v20 = 0x656E6F685069;
    v21 = 0xE600000000000000;
    sub_1001D6868();
    if (StringProtocol.contains<A>(_:)())
    {
    }

    else
    {
      v18 = v7;
      v19 = v9;
      v20 = 1684099177;
      v21 = 0xE400000000000000;
      v10 = StringProtocol.contains<A>(_:)();

      if ((v10 & 1) == 0)
      {
        return result;
      }
    }

    swift_beginAccess();
    if (!*(v1[4] + 16) || (v11 = v1[4], , sub_10000698C(v4, v3), v13 = v12, result = , (v13 & 1) == 0))
    {
      swift_beginAccess();

      v14 = v2;
      v15 = v1[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v1[4];
      v1[4] = 0x8000000000000000;
      sub_1001E4B34(v14, v4, v3, isUniquelyReferenced_nonNull_native);

      v1[4] = v22;
      swift_endAccess();
      v17 = (*(*v1 + 176))(&v18);
      sub_1001E41F4(&v22, v14);

      return v17(&v18, 0);
    }
  }

  return result;
}

uint64_t sub_1001E5214()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100529B40);
  sub_100015AFC(v0, qword_100529B40);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_1001E5270(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001C3FE0(a1, a2);
  }

  return a1;
}

void sub_1001E5284()
{
  v0 = [objc_allocWithZone(CNContactStore) init];
  if (qword_100529B60 != -1)
  {
    swift_once();
  }

  sub_1001BC5A8(&qword_100522018, &unk_10044F520);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v12 = 0;
  v2 = [v0 _ios_meContactWithKeysToFetch:isa error:&v12];

  v3 = v12;
  if (v2)
  {
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100529B38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100015AFC(v5, qword_100529B40);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v8 = 136315394;
      *(v8 + 4) = sub_10002C9C8(0x52746361746E6F43, 0xEF7265766C6F7365, &v12);
      *(v8 + 12) = 2114;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%s] Failed to get Me contact with error: %{public}@", v8, 0x16u);
      sub_1001E4048(v9);

      sub_100026A44(v10);
    }

    else
    {
    }

    v2 = 0;
  }

  qword_100538430 = v2;
}

NSString *sub_1001E551C()
{
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10044F440;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  *(v0 + 40) = CNContactEmailAddressesKey;
  *(v0 + 48) = CNContactPhoneNumbersKey;
  *(v0 + 56) = CNContactImageDataKey;
  *(v0 + 64) = CNContactThumbnailImageDataKey;
  qword_100538438 = v0;
  v1 = CNContactEmailAddressesKey;
  v2 = CNContactPhoneNumbersKey;
  v3 = CNContactImageDataKey;

  return CNContactThumbnailImageDataKey;
}

uint64_t sub_1001E5604(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_1001E56B0(uint64_t a1, unint64_t a2)
{
  sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  type metadata accessor for NearbyAdvertisement();
  *(inited + 32) = static NearbyAdvertisement.meContactID.getter();
  *(inited + 40) = v5;
  v26[0] = a1;
  v26[1] = a2;
  v25 = v26;
  v6 = sub_1001E5604(sub_10001BDAC, v24, inited);
  swift_setDeallocating();
  sub_1001E6204(inited + 32);
  if (v6)
  {
    v7 = [objc_opt_self() sharedCenter];
    v8 = [v7 localActiveIdentity];

    if (v8)
    {
      v9 = [v8 displayName];

      if (v9)
      {

        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v10;
      }
    }

    if (qword_100529B58 != -1)
    {
      swift_once();
    }

    if (!qword_100538430)
    {

      return 0;
    }

    v10 = qword_100538430;
  }

  else
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10044EC70;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = [v11 predicateForContactsWithIdentifiers:isa];

    v10 = sub_1001E5C60(v14);
    if (!v10)
    {

      return v10;
    }
  }

  v15 = v10;
  v10 = sub_1001E5B5C(v15);
  if (qword_100529B38 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100015AFC(v16, qword_100529B40);

  v17 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v20 = 136315650;
    *(v20 + 4) = sub_10002C9C8(0x52746361746E6F43, 0xEF7265766C6F7365, v26);
    *(v20 + 12) = 2080;
    v22 = sub_10002C9C8(a1, a2, v26);

    *(v20 + 14) = v22;
    *(v20 + 22) = 2112;
    *(v20 + 24) = v17;
    *v21 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "[%s] Resolved %s to %@", v20, 0x20u);
    sub_1001E4048(v21);

    swift_arrayDestroy();
  }

  else
  {
  }

  return v10;
}

void sub_1001E5B00(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

uint64_t sub_1001E5B5C(void *a1)
{
  v2 = [objc_opt_self() stringFromContact:a1 style:1000];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1 imageData];
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_100045968(0, 0xF000000000000000);
  }

  else
  {

    v7 = 0;
    v9 = 0xF000000000000000;
  }

  sub_1001E5270(v7, v9);

  sub_100045968(v7, v9);
  return v4;
}

void *sub_1001E5C60(void *a1)
{
  v2 = [objc_allocWithZone(CNContactStore) init];
  if (qword_100529B60 != -1)
  {
    swift_once();
  }

  v3 = objc_allocWithZone(CNContactFetchRequest);
  sub_1001BC5A8(&qword_100522018, &unk_10044F520);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v3 initWithKeysToFetch:isa];

  [v5 setPredicate:a1];
  v34 = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = &v34;
  v7 = swift_allocObject();
  v7[2] = sub_1001E6368;
  v7[3] = v6;
  aBlock[4] = sub_1001E63B4;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001E5B00;
  aBlock[3] = &unk_1004C29C8;
  v8 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v9 = [v2 enumerateContactsWithFetchRequest:v5 error:aBlock usingBlock:v8];
  _Block_release(v8);
  v10 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_6;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100529B38 != -1)
  {
    goto LABEL_19;
  }

LABEL_6:
  v12 = type metadata accessor for Logger();
  sub_100015AFC(v12, qword_100529B40);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v13, v14))
  {

    v19 = v34;
    if (v34)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  aBlock[0] = v17;
  *v15 = 136315394;
  *(v15 + 4) = sub_10002C9C8(0x52746361746E6F43, 0xEF7265766C6F7365, aBlock);
  *(v15 + 12) = 2114;
  swift_errorRetain();
  v18 = _swift_stdlib_bridgeErrorToNSError();
  *(v15 + 14) = v18;
  *v16 = v18;
  _os_log_impl(&_mh_execute_header, v13, v14, "[%s] Failed to query contact store with error: %{public}@", v15, 0x16u);
  sub_1001E4048(v16);

  sub_100026A44(v17);

LABEL_8:
  v19 = v34;
  if (v34)
  {
LABEL_9:
    v20 = v19;
LABEL_16:

    goto LABEL_17;
  }

LABEL_11:
  if (qword_100529B38 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100015AFC(v21, qword_100529B40);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v23, v24))
  {

    goto LABEL_16;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v32 = v2;
  v27 = a1;
  v28 = swift_slowAlloc();
  aBlock[0] = v28;
  *v25 = 136315394;
  *(v25 + 4) = sub_10002C9C8(0x52746361746E6F43, 0xEF7265766C6F7365, aBlock);
  *(v25 + 12) = 2114;
  *(v25 + 14) = v22;
  *v26 = v27;
  v29 = v22;
  _os_log_impl(&_mh_execute_header, v23, v24, "[%s] No contact for predicate: %{public}@", v25, 0x16u);
  sub_1001E4048(v26);

  sub_100026A44(v28);

LABEL_17:
  v30 = v34;

  return v19;
}

uint64_t sub_1001E6258(uint64_t a1)
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

uint64_t sub_1001E6274(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1001E629C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001E62A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001E6304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1001E6368(void *a1, _BYTE *a2)
{
  v3 = *(v2 + 16);
  *a2 = 1;
  v5 = *v3;
  *v3 = a1;
  v4 = a1;
}

uint64_t sub_1001E63B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1001E641C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = type metadata accessor for Logger();
  sub_1001C4098(v5, a2);
  sub_100015AFC(v5, a2);
  v6 = *a3();
  return Logger.init(_:)();
}

Swift::Int sub_1001E6484()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001E64E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100224B88();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

unint64_t sub_1001E6534@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10021C3CC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1001E6568(uint64_t a1)
{
  v2 = sub_100224B88();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1001E65A4(uint64_t a1)
{
  v2 = sub_100224B88();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1001E65FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100224B88();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

Swift::Int sub_1001E666C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001E66E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_1001E6724@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10021C3DC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1001E675C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TimingEvent();
    v4 = SystemGroupSessionRemoteControlService.__allocating_init()();
    v5 = *(v0 + 32);
    *(v3 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_1001E67BC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TimingEvent();
    v4 = SystemGroupSessionRemoteControlService.__allocating_init()();
    v5 = *(v0 + 40);
    *(v3 + 40) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_1001E681C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TimingEvent();
    v4 = SystemGroupSessionRemoteControlService.__allocating_init()();
    v5 = *(v0 + 48);
    *(v3 + 48) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_1001E687C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TimingEvent();
    v4 = SystemGroupSessionRemoteControlService.__allocating_init()();
    v5 = *(v0 + 56);
    *(v3 + 56) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1001E68DC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001E6934()
{
  v1 = *v0;
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10044F440;
  *(v2 + 32) = sub_1001E6758();
  *(v2 + 40) = sub_1001E675C();
  *(v2 + 48) = sub_1001E67BC();
  *(v2 + 56) = sub_1001E681C();
  *(v2 + 64) = sub_1001E687C();
  return v2;
}

id sub_1001E69BC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TimingEvent();
    v4 = SystemGroupSessionRemoteControlService.__allocating_init()();
    v5 = *(v0 + 24);
    *(v3 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1001E6A1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001E6A54()
{
  v1 = *v0;
  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10044EBC0;
  *(v2 + 32) = sub_1001E69BC();
  return v2;
}

uint64_t sub_1001E6ABC()
{
  v1 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings;
  if (*(v0 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings))
  {
    v2 = *(v0 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader);
    type metadata accessor for JoinTimingEvents();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 56) = 0;
    *(v2 + 64) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001E6B44()
{
  v1 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings;
  if (*(v0 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings))
  {
    v2 = *(v0 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader);
    type metadata accessor for SessionTimingEvents();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001E6BC0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9);
  v14 = OBJC_IVAR___MRDFastSyncGroupSession__state;
  if (*&v2[OBJC_IVAR___MRDFastSyncGroupSession__state] != a1)
  {
    v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v13;
    v40 = result;
    v41 = v5;
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v39 = v8;
    v15 = type metadata accessor for Logger();
    sub_100015AFC(v15, qword_100529B78);
    v16 = v2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v36 = v4;
      v20 = v19;
      v21 = swift_slowAlloc();
      v34 = v21;
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v20 = 138544130;
      *(v20 + 4) = v16;
      *v21 = v16;
      *(v20 + 12) = 2082;
      v22 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v23 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v24 = v16;
      *(v20 + 14) = sub_10002C9C8(v22, v23, aBlock);
      *(v20 + 22) = 2048;
      *(v20 + 24) = a1;
      *(v20 + 32) = 2048;
      v25 = *&v2[v14];

      *(v20 + 34) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}@]<%{public}s> State changed: %ld -> %ld.", v20, 0x2Au);
      sub_1000038A4(v34, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v35);

      v4 = v36;
    }

    else
    {
    }

    v26 = *&v2[v14];
    v27 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
    v28 = swift_allocObject();
    *(v28 + 16) = v16;
    *(v28 + 24) = v26;
    aBlock[4] = sub_100223114;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C3760;
    v29 = _Block_copy(aBlock);
    v30 = v16;
    v31 = v37;
    static DispatchQoS.unspecified.getter();
    v42 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v32 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);
    (*(v41 + 8))(v32, v4);
    (*(v38 + 8))(v31, v40);
  }

  return result;
}

uint64_t MRDFastSyncGroupSession.state.getter()
{
  v10 = 0;
  v11 = 1;
  v1 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v10;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10021C3EC;
  *(v3 + 24) = v2;
  v9[4] = sub_10021C408;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001E7220;
  v9[3] = &unk_1004C2A40;
  v4 = _Block_copy(v9);
  v5 = v0;

  dispatch_async_and_wait(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if ((v11 & 1) == 0)
  {
    v8 = v10;

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t MRDFastSyncGroupSession.localParticipant.getter()
{
  v10 = 0;
  v1 = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10021C430;
  *(v3 + 24) = v2;
  aBlock[4] = sub_1002253D8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001E7220;
  aBlock[3] = &unk_1004C2AB8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_async_and_wait(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void *MRDFastSyncGroupSession.leaderParticipant.getter()
{
  v1 = OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipant;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void MRDFastSyncGroupSession.leaderParticipant.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipant;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1001E75E8()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1001E7648(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___MRDFastSyncGroupSession_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1001DA158;
}

uint64_t MRDFastSyncGroupSession.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
  v2 = *(v0 + OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8);

  return v1;
}

uint64_t static MRDFastSyncGroupSession.createSession(nearbyGroup:asUser:delegate:)(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup_nearbyGroup);
  v6 = *((swift_isaMask & *a1) + 0x68);

  v8 = v6(v7);
  v10 = v9;
  type metadata accessor for RemoteControlActivity();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  v12 = sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = NearbyGroupSessionProvider.init(nearbyGroup:activity:)();
  objc_allocWithZone(type metadata accessor for MRDFastSyncGroupSession());
  v16 = a2;
  swift_unknownObjectRetain();
  return sub_1001E7E74(1, v16, v15, a3);
}

uint64_t sub_1001E789C(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t static MRDFastSyncGroupSession.joinSession(nearbyGroup:asUser:hostSigningKey:delegate:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup_nearbyGroup);
  v8 = *((swift_isaMask & *a1) + 0x68);

  v10 = v8(v9);
  v12 = v11;
  type metadata accessor for RemoteControlActivity();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  v14 = sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = NearbyGroupSessionProvider.init(nearbyGroup:activity:)();
  objc_allocWithZone(type metadata accessor for MRDFastSyncGroupSession());
  v18 = a2;
  swift_unknownObjectRetain();
  return sub_1001E7E74(0, v18, v17, a5);
}

uint64_t static MRDFastSyncGroupSession.stateToString(_:)(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6C616974696E69;
    }

    if (a1 == 1)
    {
      return 0x7472617473;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x676E696E696F6ALL;
      case 3:
        return 0x64656E696F6ALL;
      case 4:
        return 0x6164696C61766E69;
    }
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_1001E7E74(int a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v185 = a4;
  v183 = a2;
  v150 = a1;
  v7 = sub_1001BC5A8(&qword_100522A88, &qword_100450218);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v142 - v10;
  v146 = type metadata accessor for UUID();
  v145 = *(v146 - 8);
  v12 = *(v145 + 64);
  __chkstk_darwin(v146);
  v144 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v148 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v147 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger) = 0;
  v152 = OBJC_IVAR___MRDFastSyncGroupSession_sessionCancellables;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_sessionCancellables) = &_swiftEmptySetSingleton;
  v153 = OBJC_IVAR___MRDFastSyncGroupSession_cancellables;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_cancellables) = &_swiftEmptySetSingleton;
  v154 = OBJC_IVAR___MRDFastSyncGroupSession_groupSession;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_groupSession) = 0;
  v155 = OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger) = 0;
  v160 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings) = 0;
  v162 = OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___sessionTimings) = 0;
  v176 = OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipant;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipant) = 0;
  v182 = OBJC_IVAR___MRDFastSyncGroupSession_delegate;
  swift_unknownObjectWeakInit();
  v24 = (v4 + OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier);
  *v24 = 0;
  v24[1] = 0;
  v179 = v24;
  v25 = (v4 + OBJC_IVAR___MRDFastSyncGroupSession_leaderParticipantIdentifier);
  *v25 = 0;
  v25[1] = 0;
  v180 = v25;
  v26 = v4 + OBJC_IVAR___MRDFastSyncGroupSession_localFastSyncIdentifier;
  *v26 = 0;
  v26[1] = 0;
  v159 = v26;
  v27 = v4 + OBJC_IVAR___MRDFastSyncGroupSession_leaderFastSyncIdentifier;
  *v27 = 0;
  v27[1] = 0;
  v158 = v27;
  v28 = (v4 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle);
  *v28 = 0;
  v28[1] = 0;
  v184 = v28;
  v29 = (v4 + OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle);
  *v29 = 0;
  v29[1] = 0;
  v178 = v29;
  v156 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap) = &_swiftEmptyDictionarySingleton;
  v157 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap) = &_swiftEmptyDictionarySingleton;
  v161 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_identities) = &_swiftEmptyDictionarySingleton;
  v163 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_guests) = &_swiftEmptySetSingleton;
  v164 = OBJC_IVAR___MRDFastSyncGroupSession_pendingParticipants;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_pendingParticipants) = _swiftEmptyArrayStorage;
  v165 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager) = 0;
  v177 = OBJC_IVAR___MRDFastSyncGroupSession_prewarmedParticipantIdentifiers;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_prewarmedParticipantIdentifiers) = 0;
  v166 = OBJC_IVAR___MRDFastSyncGroupSession_presenceTask;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_presenceTask) = 0;
  v167 = OBJC_IVAR___MRDFastSyncGroupSession_joinProviderTask;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_joinProviderTask) = 0;
  v168 = OBJC_IVAR___MRDFastSyncGroupSession_observeSessionTask;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_observeSessionTask) = 0;
  v171 = OBJC_IVAR___MRDFastSyncGroupSession_leaderDiscoveryTimer;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_leaderDiscoveryTimer) = 0;
  v173 = OBJC_IVAR___MRDFastSyncGroupSession_expectedRealtimeParticipants;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_expectedRealtimeParticipants) = &_swiftEmptySetSingleton;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_isLowPowerMode) = 0;
  v30 = (v4 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion);
  *v30 = 0;
  v30[1] = 0;
  v170 = v30;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_hasEncounteredLowPowerError) = 0;
  v169 = OBJC_IVAR___MRDFastSyncGroupSession_removedParticipantIdentityIdentifiers;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_removedParticipantIdentityIdentifiers) = &_swiftEmptySetSingleton;
  v172 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToPresenceTimeoutTimerMap;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToPresenceTimeoutTimerMap) = &_swiftEmptyDictionarySingleton;
  v174 = OBJC_IVAR___MRDFastSyncGroupSession_timedOutParticipantHandles;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_timedOutParticipantHandles) = &_swiftEmptySetSingleton;
  dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();
  v175 = NearbyGroup.localMemberHandle.getter();
  v32 = v31;

  v181 = v32;
  if (!v32)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100015AFC(v68, qword_100529B78);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      aBlock[0] = v72;
      *v71 = 136446210;
      v73 = dispatch thunk of NearbyGroupSessionProvider.id.getter();
      v75 = sub_10002C9C8(v73, v74, aBlock);

      *(v71 + 4) = v75;
      v76 = "[MRDFastSyncGroupSession]<%{public}s> Error getting local handle from nearby group.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v69, v70, v76, v71, 0xCu);
      sub_100026A44(v72);

LABEL_16:
      swift_unknownObjectRelease();
      v81 = v180;

      v82 = *(v4 + v152);

      v83 = *(v4 + v153);

      v84 = *(v4 + v154);

      v85 = *(v4 + v155);

      v86 = *(v4 + v160);

      v87 = *(v4 + v162);

      sub_1001DFBCC(v4 + v182);
      v88 = v179[1];

      v89 = v81[1];

      v90 = v159[1];

      v91 = v158[1];

      v92 = v184[1];

      v93 = v178[1];

      v94 = *(v4 + v156);

      v95 = *(v4 + v157);

      v96 = *(v4 + v161);

      v97 = *(v4 + v163);

      v98 = *(v4 + v164);

      v99 = *(v4 + v165);

      v100 = *(v4 + v177);

      v101 = *(v4 + v166);

      v102 = *(v4 + v167);

      v103 = *(v4 + v168);

      v104 = *(v4 + v173);

      v105 = v170[1];
      sub_1001C7C2C(*v170);
      v106 = *(v4 + v169);

      v107 = *(v172 + v4);

      v108 = *&v174[v4];

      type metadata accessor for MRDFastSyncGroupSession();
      swift_deallocPartialClassInstance();
      return 0;
    }

LABEL_15:

    goto LABEL_16;
  }

  v33 = [objc_opt_self() mr_activeGroupSessionAccount];
  if (!v33)
  {

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100015AFC(v77, qword_100529B78);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      aBlock[0] = v72;
      *v71 = 136446210;
      v78 = dispatch thunk of NearbyGroupSessionProvider.id.getter();
      v80 = sub_10002C9C8(v78, v79, aBlock);

      *(v71 + 4) = v80;
      v76 = "[MRDFastSyncGroupSession]<%{public}s> No local IDS account.";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v167 = v11;
  v168 = v8;
  v169 = v7;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_provider) = a3;

  v34 = dispatch thunk of NearbyGroupSessionProvider.id.getter();
  v35 = (v4 + OBJC_IVAR___MRDFastSyncGroupSession_identifier);
  *v35 = v34;
  v35[1] = v36;
  v37 = v183;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_localIdentity) = v183;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession__state) = 0;
  v182 = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  v171 = "exitLowPowerMode(completion:)";
  LODWORD(v173) = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v172 = *(v20 + 104);
  v143 = v19;
  v172(v23);
  v174 = v37;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  v38 = sub_100004858(&qword_100522A90, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  v183 = a3;
  v170 = v38;
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_10000462C(&qword_100522AA0, &qword_100521DF8, &unk_100450220);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (v172)(v23, v173, v143);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v39 = v150;
  *(v4 + OBJC_IVAR___MRDFastSyncGroupSession_isLeader) = v150 & 1;
  v40 = dispatch thunk of NearbyGroupSessionProvider.id.getter();
  v42 = v41;
  objc_allocWithZone(type metadata accessor for PresenceDataSource());
  v43 = v181;

  v44 = v175;
  v45 = &unk_100522000;
  *&v5[OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource] = sub_100215510(v40, v42, v175, v43);
  v46 = v184;
  v47 = v184[1];
  *v184 = v44;
  v46[1] = v43;
  swift_bridgeObjectRetain_n();

  v5[OBJC_IVAR___MRDFastSyncGroupSession_shouldHideLeader] = 0;
  if ((v39 & 1) == 0)
  {
LABEL_17:

    v110 = type metadata accessor for MRDFastSyncGroupSession();
    v188.receiver = v5;
    v188.super_class = v110;
    v111 = objc_msgSendSuper2(&v188, "init");
    type metadata accessor for GroupSessionRemoteControlConnectionManager();
    v184 = OBJC_IVAR___MRDFastSyncGroupSession_executionQueue;
    v112 = *&v111[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
    v113 = v111;

    v114 = v113;
    v115 = sub_100371C9C(v44, v43, v39 & 1, v114, &off_1004C31E8, v112);
    v116 = *&v114[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
    *&v114[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager] = v115;

    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v117 = type metadata accessor for Logger();
    sub_100015AFC(v117, qword_100529B78);

    v109 = v114;
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v120 = 138543874;
      *(v120 + 4) = v109;
      *v121 = v109;
      *(v120 + 12) = 2082;
      v122 = *&v109[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v123 = *&v109[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v124 = v109;

      v125 = sub_10002C9C8(v122, v123, aBlock);
      v126 = v181;

      *(v120 + 14) = v125;
      *(v120 + 22) = 2082;
      *(v120 + 24) = sub_10002C9C8(v175, v126, aBlock);
      _os_log_impl(&_mh_execute_header, v118, v119, "[%{public}@]<%{public}s> Created with local handle: %{public}s", v120, 0x20u);
      sub_1000038A4(v121, &qword_100521870, &unk_10044EA70);
      v45 = &unk_100522000;

      swift_arrayDestroy();
    }

    v127 = v167;
    v128 = *&v109[v45[51]];
    swift_beginAccess();
    v129 = v128;
    sub_1001BC5A8(&qword_1005228D0, &qword_100450058);
    Published.projectedValue.getter();
    swift_endAccess();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000462C(&qword_100522AA8, &qword_100522A88, &qword_100450218);
    v130 = v169;
    Publisher<>.sink(receiveValue:)();

    (*(v168 + 8))(v127, v130);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v131 = [objc_opt_self() mr_sharedGroupSessionService];
    v132 = *(v184 + v111);
    v133 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v134 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v135 = objc_allocWithZone(MRDGroupSessionPushMessenger);
    v136 = v132;

    v137 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100225174;
    aBlock[5] = v133;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100217EF0;
    aBlock[3] = &unk_1004C46B0;
    v138 = _Block_copy(aBlock);
    v186[4] = sub_1002251F0;
    v186[5] = v134;
    v186[0] = _NSConcreteStackBlock;
    v186[1] = 1107296256;
    v186[2] = sub_100217F9C;
    v186[3] = &unk_1004C46D8;
    v139 = _Block_copy(v186);
    v140 = [v135 initWithService:v131 handle:v137 queue:v136 messageHandler:v138 errorHandler:v139];

    swift_unknownObjectRelease();

    _Block_release(v138);
    _Block_release(v139);

    v141 = *&v109[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
    *&v109[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger] = v140;

    return v109;
  }

  v48 = v178;
  v49 = v178[1];
  *v178 = v44;
  v48[1] = v43;

  v50 = v144;
  UUID.init()();
  v51 = UUID.uuidString.getter();
  v53 = v52;
  (*(v145 + 8))(v50, v146);
  v54 = v180;
  v55 = v180[1];
  *v180 = v51;
  v54[1] = v53;

  v56 = v179;
  v57 = v179[1];
  *v179 = v51;
  v56[1] = v53;

  if (v54[1])
  {
    v59 = *v54;
    v60 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
    v61 = v174;

    v62 = String._bridgeToObjectiveC()();

    v63 = [v60 initWithIdentifier:v62 identity:v61 connected:1 guest:0 hidden:0];

    v64 = v176;
    swift_beginAccess();
    v65 = *&v5[v64];
    *&v5[v64] = v63;

    v66 = v177;
    swift_beginAccess();
    v67 = *&v5[v66];
    *&v5[v66] = &_swiftEmptyDictionarySingleton;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E9330(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v35 = v8;
    v37 = v7;
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v36 = v6;
    v38 = v3;
    v39 = v2;
    v15 = type metadata accessor for Logger();
    sub_100015AFC(v15, qword_100529B78);
    v16 = v14;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
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
      v25 = Set.description.getter();
      v27 = sub_10002C9C8(v25, v26, aBlock);

      *(v19 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%{public}@]<%{public}s> Updated presentHandles: %{public}s", v19, 0x20u);
      sub_1000038A4(v20, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v28 = *&v16[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
    v29 = swift_allocObject();
    *(v29 + 16) = v16;
    aBlock[4] = sub_100225248;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C4728;
    v30 = _Block_copy(aBlock);
    v31 = v16;
    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v32 = v36;
    v33 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);
    (*(v38 + 8))(v32, v33);
    (*(v35 + 8))(v11, v37);
  }

  return result;
}

id MRDFastSyncGroupSession.__deallocating_deinit()
{
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100529B78);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v5 = 138543618;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2082;
    v8 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v9 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v10 = v2;

    v11 = sub_10002C9C8(v8, v9, &v18);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}@]<%{public}s> Dealloc.", v5, 0x16u);
    sub_1000038A4(v6, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v7);
  }

  v12 = OBJC_IVAR___MRDFastSyncGroupSession_cancellables;
  swift_beginAccess();
  v13 = *&v2[v12];
  *&v2[v12] = &_swiftEmptySetSingleton;

  v14 = OBJC_IVAR___MRDFastSyncGroupSession_sessionCancellables;
  swift_beginAccess();
  v15 = *&v2[v14];
  *&v2[v14] = &_swiftEmptySetSingleton;

  v17.receiver = v2;
  v17.super_class = type metadata accessor for MRDFastSyncGroupSession();
  return objc_msgSendSuper2(&v17, "dealloc");
}

void sub_1001E9D40(char *a1)
{
  v2 = type metadata accessor for GroupSessionProviderState();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*&a1[OBJC_IVAR___MRDFastSyncGroupSession__state])
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100015AFC(v7, qword_100529B78);
    v8 = a1;
    v49 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v50[0] = v12;
      *v10 = 138543618;
      *(v10 + 4) = v8;
      *v11 = v8;
      *(v10 + 12) = 2082;
      v13 = *&v8[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v14 = *&v8[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v15 = v8;
      *(v10 + 14) = sub_10002C9C8(v13, v14, v50);
      _os_log_impl(&_mh_execute_header, v49, v9, "[%{public}@]<%{public}s> session can only be started from initial state.", v10, 0x16u);
      sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v12);
    }

    else
    {
      v43 = v49;
    }
  }

  else
  {
    v48 = OBJC_IVAR___MRDFastSyncGroupSession__state;
    v49 = v4;
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    v17 = sub_100015AFC(v16, qword_100529B78);
    v18 = a1;
    v47 = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v46 = v2;
      v23 = v22;
      v24 = swift_slowAlloc();
      v50[0] = v24;
      *v21 = 138543618;
      *(v21 + 4) = v18;
      *v23 = v18;
      *(v21 + 12) = 2082;
      v26 = *&v18[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v25 = *&v18[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v27 = v18;
      *(v21 + 14) = sub_10002C9C8(v26, v25, v50);
      _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}@]<%{public}s> Starting", v21, 0x16u);
      sub_1000038A4(v23, &qword_100521870, &unk_10044EA70);
      v2 = v46;

      sub_100026A44(v24);
    }

    v28 = OBJC_IVAR___MRDFastSyncGroupSession_provider;
    v29 = *&v18[OBJC_IVAR___MRDFastSyncGroupSession_provider];

    v30 = dispatch thunk of NearbyGroupSessionProvider.state.getter();

    v50[0] = v30;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1001BC5A8(&qword_100522A70, &unk_100450208);
    sub_10000462C(&unk_100522A78, &qword_100522A70, &unk_100450208);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v31 = *&v18[v28];

    dispatch thunk of NearbyGroupSessionProvider.state.getter();

    CurrentValueSubject.value.getter();

    v32 = v49;
    if ((v49[11].isa)(v6, v2) == enum case for GroupSessionProviderState.invalidated(_:))
    {
      (v32[12].isa)(v6, v2);
      v33 = *v6;
      v34 = v18;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v50[0] = v39;
        *v37 = 138412546;
        *(v37 + 4) = v34;
        *v38 = v18;
        *(v37 + 12) = 2082;
        v40 = *&v34[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v41 = *&v34[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v42 = v34;
        *(v37 + 14) = sub_10002C9C8(v40, v41, v50);
        _os_log_impl(&_mh_execute_header, v35, v36, "[%@]<%{public}s> Provider invalidated on start", v37, 0x16u);
        sub_1000038A4(v38, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v39);
      }

      swift_errorRetain();
      sub_100204BF8(v33);
    }

    else
    {
      (v32[1].isa)(v6, v2);
      v44 = *&a1[v48];
      *&a1[v48] = 1;
      sub_1001E6BC0(v44);
      if ((v18[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] & 1) == 0)
      {
        sub_100205854();
      }
    }
  }
}

uint64_t sub_1001EA430(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GroupSessionProviderState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    (*(v12 + 16))(v15, a1, v11);
    if ((*(v12 + 88))(v15, v11) == enum case for GroupSessionProviderState.invalidated(_:))
    {
      v37 = v3;
      (*(v12 + 96))(v15, v11);
      v36 = *v15;
      if (qword_100529B70 != -1)
      {
        swift_once();
      }

      v38 = v2;
      v18 = type metadata accessor for Logger();
      sub_100015AFC(v18, qword_100529B78);
      v19 = v17;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        aBlock[0] = v24;
        *v22 = 138543618;
        *(v22 + 4) = v19;
        *v23 = v17;
        *(v22 + 12) = 2082;
        v26 = *&v19[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v25 = *&v19[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v27 = v19;

        v28 = sub_10002C9C8(v26, v25, aBlock);

        *(v22 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}@]<%{public}s> Provider state invalidated", v22, 0x16u);
        sub_1000038A4(v23, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v24);
      }

      v29 = *&v19[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
      v30 = swift_allocObject();
      v31 = v36;
      *(v30 + 16) = v19;
      *(v30 + 24) = v31;
      aBlock[4] = sub_1002253D4;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100003D98;
      aBlock[3] = &unk_1004C4688;
      v32 = _Block_copy(aBlock);
      v33 = v19;
      swift_errorRetain();
      static DispatchQoS.unspecified.getter();
      v41 = _swiftEmptyArrayStorage;
      sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      v34 = v38;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      (*(v37 + 8))(v6, v34);
      (*(v39 + 8))(v10, v40);
    }

    else
    {

      return (*(v12 + 8))(v15, v11);
    }
  }

  return result;
}

uint64_t sub_1001EAA44(void *a1)
{
  v2 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26 - v4;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100015AFC(v6, qword_100529B78);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 138543618;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2082;
    v13 = *&v7[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v14 = *&v7[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v15 = v7;
    *(v10 + 14) = sub_10002C9C8(v13, v14, &v27);
    _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}@]<%{public}s> Started observing session.", v10, 0x16u);
    sub_1000038A4(v11, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v12);
  }

  sub_1001E6ABC();
  v16 = sub_1001E67BC();

  (*((swift_isaMask & *v16) + 0xC0))(v17);

  v18 = OBJC_IVAR___MRDFastSyncGroupSession_observeSessionTask;
  if (*&v7[OBJC_IVAR___MRDFastSyncGroupSession_observeSessionTask])
  {
    v19 = *&v7[OBJC_IVAR___MRDFastSyncGroupSession_observeSessionTask];

    sub_1001BC5A8(&qword_100521B70, &qword_10044EB30);
    Task.cancel()();
  }

  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v7;
  v22 = v7;
  v23 = sub_1001CB290(0, 0, v5, &unk_100450198, v21);
  v24 = *&v7[v18];
  *&v7[v18] = v23;
}

uint64_t sub_1001EAD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1001BC5A8(&qword_100522A30, &qword_1004501A0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_1001BC5A8(&qword_100522A38, &qword_1004501A8);
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_1001EAEBC, 0, 0);
}

uint64_t sub_1001EAEBC()
{
  v1 = v0[9];
  if (v1[OBJC_IVAR___MRDFastSyncGroupSession_isLeader])
  {
    v2 = 0;
  }

  else
  {
    v3 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = objc_allocWithZone(MSVTimer);
    v0[6] = sub_100224938;
    v0[7] = v4;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100003D98;
    v0[5] = &unk_1004C3E90;
    v6 = _Block_copy(v0 + 2);
    v7 = v0[7];
    v8 = v3;
    v9 = v1;

    v2 = [v5 initWithInterval:0 repeats:v8 queue:v6 block:20.0];
    _Block_release(v6);

    v1 = v0[9];
  }

  v0[16] = v2;
  v10 = v0[15];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];
  v14 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_provider];

  sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  sub_10000462C(&qword_100522950, &qword_100522160, &unk_10044F580);
  GroupSessionProvider.sessions.getter();

  GroupSession.Sessions.makeAsyncIterator()();
  (*(v12 + 8))(v11, v13);
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  v15[1] = sub_1001EB134;
  v16 = v0[15];

  return sub_1001EB658(0, 0);
}

uint64_t sub_1001EB134(uint64_t a1)
{
  v3 = *(*v2 + 136);
  v5 = *v2;
  *(*v2 + 144) = a1;

  if (!v1)
  {

    return _swift_task_switch(sub_1001EB248, 0, 0);
  }

  return result;
}

uint64_t sub_1001EB248()
{
  v34 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  if (v1)
  {
    [*(v0 + 128) invalidate];
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 72);
    v4 = type metadata accessor for Logger();
    sub_100015AFC(v4, qword_100529B78);
    v5 = v3;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 72);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v9 = 138543874;
      *(v9 + 4) = v8;
      *v10 = v8;
      *(v9 + 12) = 2082;
      v11 = *&v8[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v12 = *&v8[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v13 = v8;
      *(v9 + 14) = sub_10002C9C8(v11, v12, &v33);
      *(v9 + 22) = 2082;
      *(v0 + 64) = v1;
      sub_1001BC5A8(&qword_100522A40, &qword_1004501B8);
      sub_10000462C(&qword_100522A48, &qword_100522A40, &qword_1004501B8);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = sub_10002C9C8(v14, v15, &v33);

      *(v9 + 24) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}@]<%{public}s> Provider gave session %{public}s.", v9, 0x20u);
      sub_1000038A4(v10, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    v19 = *(v0 + 104);
    v20 = *(v0 + 112);
    v21 = *(v0 + 72);
    sub_1001E6ABC();
    v22 = sub_1001E67BC();

    (*((swift_isaMask & *v22) + 0xD0))(v23);

    v24 = *(v21 + OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings);

    v25 = sub_1001E681C();

    (*((swift_isaMask & *v25) + 0xC0))(v26);

    sub_1001E6B44();
    v27 = sub_1001E69BC();

    (*((swift_isaMask & *v27) + 0xC0))(v28);

    sub_1001F61B4(v1);

    (*(v20 + 8))(v17, v19);
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  }

  v29 = *(v0 + 120);
  v30 = *(v0 + 96);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1001EB658(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1001BC5A8(&qword_100522A38, &qword_1004501A8);
  v4 = sub_10000462C(&qword_100522A50, &qword_100522A38, &qword_1004501A8);
  v5 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_1001CABFC;

  return dispatch thunk of AsyncIteratorProtocol.next()(v2 + 2, v3, v4);
}

Swift::Void __swiftcall MRDFastSyncGroupSession.end()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v8) = v0[OBJC_IVAR___MRDFastSyncGroupSession_isLeader];
  v15[1] = *&v0[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  if (v8 == 1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    v22 = sub_10021C5BC;
    v23 = v10;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_1004C2BA8;
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    v22 = sub_10021C594;
    v23 = v12;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_1004C2B58;
  }

  v20 = sub_100003D98;
  v21 = v11;
  v13 = _Block_copy(&aBlock);
  v14 = v0;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v16);
}

uint64_t sub_1001EBAA8(char *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Participants();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];
  if (v12)
  {
    v13 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];

    v14 = MRDFastSyncGroupSessionState.rawValue.getter(4, 0, 0xC000000000000000);
    v52 = v16;
    v53 = v15;
    sub_10036C864(v14);
    v54 = v18;
    v55 = v17;
    v19 = *(v8 + 104);
    v56 = v7;
    v19(v11, enum case for Participants.all(_:), v7);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    v21 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
    *v6 = v21;
    (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
    v22 = a1;
    v23 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    result = (*(v3 + 8))(v6, v2);
    if (v21)
    {
      v25 = swift_allocObject();
      v25[2] = v22;
      v25[3] = sub_1002250C4;
      v25[4] = v20;
      v26 = v22;

      v28 = v54;
      v27 = v55;
      v51[1] = v12;
      GroupSessionMessenger.send(_:to:completion:)();

      sub_1001C4034(v27, v28);
      result = (*(v8 + 8))(v11, v56);
      v29 = *&v26[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
      if (v29)
      {
        sub_1001BC5A8(&unk_1005222B0, &qword_10044EB98);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10044F530;
        v31 = v29;
        v32 = sub_10036C46C();
        v33 = *(v32 + 1);
        v57 = *v32;
        v58 = v33;
        swift_bridgeObjectRetain_n();
        AnyHashable.init<A>(_:)();
        v34 = sub_10036C4D8();
        v36 = *v34;
        v35 = *(v34 + 1);
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v36;
        *(inited + 80) = v35;

        v37 = sub_10036C49C();
        v38 = v37[1];
        v57 = *v37;
        v58 = v38;
        swift_bridgeObjectRetain_n();
        AnyHashable.init<A>(_:)();
        v40 = *&v26[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v39 = *&v26[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        *(inited + 168) = &type metadata for String;
        *(inited + 144) = v40;
        *(inited + 152) = v39;

        v41 = sub_10036C460();
        v42 = *(v41 + 1);
        v57 = *v41;
        v58 = v42;
        swift_bridgeObjectRetain_n();
        result = AnyHashable.init<A>(_:)();
        v43 = *&v26[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
        if (v43)
        {
          v44 = *&v26[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
          v45 = *&v26[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];

          *(inited + 240) = &type metadata for String;
          *(inited + 216) = v44;
          *(inited + 224) = v43;
          sub_1001C2534(inited);
          swift_setDeallocating();
          sub_1001BC5A8(&qword_1005216C0, qword_10044EBA0);
          swift_arrayDestroy();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v47 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
          swift_beginAccess();
          v48 = *&v26[v47];

          sub_1001BDDB0(v49);
          v50 = Set._bridgeToObjectiveC()().super.isa;

          [v31 sendMessage:isa toDestinations:v50];

          sub_1001C4034(v53, v52);
        }

        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  return sub_100204BF8(0);
}

uint64_t sub_1001EBFBC(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v32 = v5;
    v33 = v4;
    swift_errorRetain();
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100015AFC(v13, qword_100529B78);
    swift_errorRetain();
    v14 = a2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v17 = 138543874;
      *(v17 + 4) = v14;
      *v18 = v14;
      *(v17 + 12) = 2082;
      v30 = v15;
      v19 = *&v14[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v20 = *&v14[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v21 = v14;
      *(v17 + 14) = sub_10002C9C8(v19, v20, aBlock);
      *(v17 + 22) = 2114;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v22;
      v18[1] = v22;
      v23 = v30;
      _os_log_impl(&_mh_execute_header, v30, v16, "[%{public}@]<%{public}s> SessionEndMessage send error %{public}@.", v17, 0x20u);
      sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
      swift_arrayDestroy();

      sub_100026A44(v31);
    }

    else
    {
    }

    v5 = v32;
    v4 = v33;
  }

  v24 = *&a2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  aBlock[4] = sub_1002254E8;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C4638;
  v26 = _Block_copy(aBlock);
  v27 = a2;
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  (*(v5 + 8))(v8, v4);
  (*(v34 + 8))(v12, v35);
}

uint64_t MRDFastSyncGroupSession.prewarm(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = v9;
  v13[4] = v11;
  v13[5] = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10021C5C4;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1002253D8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001E7220;
  aBlock[3] = &unk_1004C2C20;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  v17 = a1;

  dispatch_async_and_wait(v12, v15);
  _Block_release(v15);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001EC6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10021ACB8(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_1005229A8, &unk_1004588B0);

    *v3 = v18;
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
      v19 = *v4;
      if (!v15)
      {
        sub_10021A894(&qword_1005229A8, &unk_1004588B0);
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1001DEE44(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1001EC7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_100035B14(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_10000698C(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_100035C9C();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_10021A064(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

void sub_1001EC8FC(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_10021AB3C(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v16;
  }

  else
  {
    v7 = *v2;
    v8 = sub_1002186FC(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v17 = *v3;
      if (!v12)
      {
        sub_10021A5C0();
        v13 = v17;
      }

      v14 = *(*(v13 + 56) + 8 * v10);

      sub_10021A214(v10, v13);

      *v3 = v13;
    }

    else
    {
    }
  }
}

uint64_t MRDFastSyncGroupSession.cancel(prewarmedIdentifier:for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *&v3[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10021CA58;
  *(v9 + 24) = v8;
  v15[4] = sub_1002253D8;
  v15[5] = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1001E7220;
  v15[3] = &unk_1004C2C98;
  v10 = _Block_copy(v15);
  v11 = v3;

  v12 = a3;

  dispatch_async_and_wait(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall MRDFastSyncGroupSession.prepareForAddedMember()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100015AFC(v10, qword_100529B78);
  v11 = v0;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v1;
    aBlock[0] = v17;
    *v14 = 138543874;
    *(v14 + 4) = v11;
    *v16 = v11;
    *(v14 + 12) = 2082;
    v19 = *&v11[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v18 = *&v11[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v20 = v11;
    *(v14 + 14) = sub_10002C9C8(v19, v18, aBlock);
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_10002C9C8(0xD000000000000017, 0x800000010043B270, aBlock);
    _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}@]<%{public}s> %s", v14, 0x20u);
    sub_1000038A4(v16, &qword_100521870, &unk_10044EA70);
    v2 = v26;

    swift_arrayDestroy();
    v1 = v27;
  }

  v21 = *&v11[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v22 = swift_allocObject();
  *(v22 + 16) = v11;
  aBlock[4] = sub_10021D1DC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C2CE8;
  v23 = _Block_copy(aBlock);
  v24 = v11;
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v2 + 8))(v5, v1);
  (*(v28 + 8))(v9, v29);
}

uint64_t MRDFastSyncGroupSession.shouldAutomaticallyApprove(identity:)(void *a1)
{
  v13 = 0;
  v3 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = a1;
  v4[4] = &v13;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10021D224;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1002253D8;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001E7220;
  aBlock[3] = &unk_1004C2D60;
  v6 = _Block_copy(aBlock);
  v7 = v1;
  v8 = a1;

  dispatch_async_and_wait(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

void sub_1001ED324(char *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v48 = &v47 - v8;
  v9 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v10 = 0;
  v11 = *&a1[v9];
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
LABEL_9:
    v17 = (v10 << 10) | (16 * __clz(__rbit64(v14)));
    v18 = (*(v11 + 48) + v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = (*(v11 + 56) + v17);
    if (*v21 != a2 || v21[1] != a3)
    {
      v14 &= v14 - 1;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v23 = qword_100529B70;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100015AFC(v24, qword_100529B78);

    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *v28 = 138543874;
      *(v28 + 4) = v25;
      *v29 = v25;
      *(v28 + 12) = 2082;
      v31 = *&v25[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v30 = *&v25[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v32 = v25;
      *(v28 + 14) = sub_10002C9C8(v31, v30, &v49);
      *(v28 + 22) = 2082;
      *(v28 + 24) = sub_10002C9C8(v19, v20, &v49);
      _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}@]<%{public}s> Removing member with handle: %{public}s.", v28, 0x20u);
      sub_1000038A4(v29, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    v33 = v48;
    v34 = *&v25[OBJC_IVAR___MRDFastSyncGroupSession_provider];
    v35 = type metadata accessor for TaskPriority();
    (*(*(v35 - 8) + 56))(v33, 1, 1, v35);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v34;
    v37[5] = v19;
    v37[6] = v20;
    v37[7] = v36;

    sub_1001BF864(0, 0, v33, &unk_100450200, v37);

    return;
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v16 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_9;
    }
  }

  if (qword_100529B70 == -1)
  {
    goto LABEL_20;
  }

LABEL_24:
  swift_once();
LABEL_20:
  v38 = type metadata accessor for Logger();
  sub_100015AFC(v38, qword_100529B78);
  v39 = a1;

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v42 = 138543874;
    *(v42 + 4) = v39;
    *v43 = v39;
    *(v42 + 12) = 2082;
    v44 = *&v39[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v45 = *&v39[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v46 = v39;
    *(v42 + 14) = sub_10002C9C8(v44, v45, &v49);
    *(v42 + 22) = 2082;
    *(v42 + 24) = sub_10002C9C8(a2, a3, &v49);
    _os_log_impl(&_mh_execute_header, v40, v41, "[%{public}@]<%{public}s> Could not find participant for identifier %{public}s.", v42, 0x20u);
    sub_1000038A4(v43, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }
}

uint64_t sub_1001ED8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return _swift_task_switch(sub_1001ED8D0, 0, 0);
}

uint64_t sub_1001ED8D0()
{
  v1 = v0[5];
  v0[9] = dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();
  v2 = async function pointer to NearbyGroup.kickMember(_:)[1];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1001ED978;
  v5 = v0[6];
  v4 = v0[7];

  return NearbyGroup.kickMember(_:)(v5, v4);
}

uint64_t sub_1001ED978()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001EDAB4, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1001EDAB4()
{
  v25 = v0;
  v2 = v0[8];
  v1 = v0[9];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v5 = v0[7];
    v6 = type metadata accessor for Logger();
    sub_100015AFC(v6, qword_100529B78);
    v7 = v4;

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[11];
    if (v10)
    {
      v22 = v0[6];
      v23 = v0[7];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v12 = 138543874;
      *(v12 + 4) = v7;
      *v13 = v4;
      *(v12 + 12) = 2080;
      v14 = *&v7[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v15 = *&v7[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v16 = v7;

      v17 = sub_10002C9C8(v14, v15, &v24);

      *(v12 + 14) = v17;
      *(v12 + 22) = 2082;
      *(v12 + 24) = sub_10002C9C8(v22, v23, &v24);
      _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}@]<%s> Failed to remove member: %{public}s.", v12, 0x20u);
      sub_1000038A4(v13, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();
    }

    else
    {
      v19 = v0[11];
    }
  }

  else
  {
    v18 = v0[11];
  }

  v20 = v0[1];

  return v20();
}

id MRDFastSyncGroupSession.markParticipantAsGuestIfNeeded(_:)(void *a1)
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
  result = [a1 guest];
  if (result)
  {
    v20 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
    v14 = swift_allocObject();
    *(v14 + 16) = v1;
    *(v14 + 24) = a1;
    aBlock[4] = sub_10021D638;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003D98;
    aBlock[3] = &unk_1004C2E00;
    v15 = _Block_copy(aBlock);
    v19 = v8;
    v16 = v15;
    v17 = v1;
    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v21 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v19);
  }

  return result;
}

void sub_1001EE0B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1001EE1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v21[1] = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
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
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

void sub_1001EE4A0(void *a1, uint64_t a2, char *a3, int a4)
{
  v81 = a4;
  v7 = type metadata accessor for Participants();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = *(v83 + 64);
  __chkstk_darwin(v7);
  v82 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v79 - v12;
  v14 = type metadata accessor for Participant();
  v94 = *(v14 - 8);
  v15 = *(v94 + 64);
  v16 = __chkstk_darwin(v14);
  v93 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v92 = v79 - v19;
  __chkstk_darwin(v18);
  v80 = v79 - v20;
  if (qword_100529B70 != -1)
  {
LABEL_34:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100015AFC(v21, qword_100529B78);
  v23 = a1;
  swift_unknownObjectRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  v95 = v23;

  v26 = os_log_type_enabled(v24, v25);
  v85 = v13;
  v86 = a2;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v87 = v22;
    v28 = v27;
    v29 = swift_slowAlloc();
    v96[0] = swift_slowAlloc();
    *v28 = 138543874;
    v30 = v95;
    *(v28 + 4) = v95;
    *v29 = v30;
    *(v28 + 12) = 2082;
    v31 = v14;
    v33 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v32 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v34 = v30;
    *(v28 + 14) = sub_10002C9C8(v33, v32, v96);
    *(v28 + 22) = 2080;
    v35 = [a2 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_10002C9C8(v36, v38, v96);

    *(v28 + 24) = v39;
    v14 = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, a3, v28, 0x20u);
    sub_1000038A4(v29, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    v22 = v87;
  }

  v40 = *&v95[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];
  v41 = v93;
  if (!v40 || (v42 = *&v95[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger]) == 0)
  {
LABEL_27:
    v62 = v95;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v96[0] = v67;
      *v65 = 138543618;
      *(v65 + 4) = v62;
      *v66 = v62;
      *(v65 + 12) = 2082;
      v68 = *&v62[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v69 = *&v62[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v70 = v62;
      *(v65 + 14) = sub_10002C9C8(v68, v69, v96);
      _os_log_impl(&_mh_execute_header, v63, v64, "[%{public}@]<%{public}s> Unable to message leader", v65, 0x16u);
      sub_1000038A4(v66, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v67);
    }

    return;
  }

  v87 = v22;

  v79[0] = v42;

  v79[1] = v40;
  v43 = GroupSession.activeParticipants.getter();
  a1 = v43;
  v44 = v43 + 56;
  v45 = 1 << *(v43 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v43 + 56);
  v48 = &v95[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
  v13 = ((v45 + 63) >> 6);
  v88 = v94 + 16;
  v90 = (v94 + 8);
  v91 = (v94 + 32);
  a2 = 0;

  {
    if (!v47)
    {
      while (1)
      {
        v49 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          break;
        }

        if (v49 >= v13)
        {

          v58 = 1;
          v59 = v85;
          v60 = v86;
          goto LABEL_25;
        }

        v47 = *(v44 + 8 * v49);
        ++a2;
        if (v47)
        {
          a3 = v48;
          a2 = v49;
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    a3 = v48;
LABEL_17:
    v50 = v94;
    v51 = v92;
    (*(v94 + 16))(v92, a1[6] + *(v94 + 72) * (__clz(__rbit64(v47)) | (a2 << 6)), v14);
    v52 = *(v50 + 32);
    v52(v41, v51, v14);
    v53 = Participant.handle.getter();
    v48 = a3;
    v55 = *(a3 + 1);
    if (!v55)
    {

      goto LABEL_10;
    }

    a3 = v14;
    if (v53 == *v48 && v55 == v54)
    {
      break;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v41 = v93;
    if (v57)
    {

      goto LABEL_32;
    }

LABEL_10:
    v47 &= v47 - 1;
    (*v90)(v41, v14);
  }

  v41 = v93;
LABEL_32:
  v59 = v85;
  v52(v85, v41, v14);
  v58 = 0;
  v60 = v86;
LABEL_25:
  v61 = v94;
  (*(v94 + 56))(v59, v58, 1, v14);

  if ((*(v61 + 48))(v59, 1, v14) == 1)
  {

    sub_1000038A4(v59, &qword_100529110, &qword_10044F5B0);
    goto LABEL_27;
  }

  v71 = v80;
  (*v91)(v80, v59, v14);
  v72 = v14;
  v73 = [v60 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10036D714();
  v77 = sub_10036D85C(v75, v76, v74 & 1);

  v78 = v82;
  static Participants.only(_:)();
  sub_10020CF20(8u, v77, v78, v79[0], 0, 0);

  (*(v83 + 8))(v78, v84);
  (*v90)(v71, v72);
}

uint64_t sub_1001EED78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = a5;
  v19 = _Block_copy(aBlock);
  v20 = v5;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v13, v10);
  (*(v14 + 8))(v17, v23);
}

void sub_1001EF054(void *a1, uint64_t a2, int64_t a3)
{
  v86 = a2;
  v5 = type metadata accessor for Participants();
  v84 = *(v5 - 8);
  v6 = *(v84 + 64);
  __chkstk_darwin(v5);
  v82 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v83 = &v77 - v10;
  v11 = type metadata accessor for Participant();
  v93 = *(v11 - 8);
  v12 = *(v93 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v92 = &v77 - v17;
  __chkstk_darwin(v16);
  v81 = &v77 - v18;
  if (qword_100529B70 != -1)
  {
LABEL_33:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100015AFC(v19, qword_100529B78);
  v21 = a1;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v85 = v20;
    v25 = v24;
    v26 = swift_slowAlloc();
    v87 = v5;
    v27 = v26;
    v91 = swift_slowAlloc();
    v94 = v91;
    *v25 = 138543874;
    *(v25 + 4) = v21;
    *v27 = v21;
    *(v25 + 12) = 2082;
    v28 = a3;
    v29 = v15;
    v30 = v11;
    v32 = *&v21[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v31 = *&v21[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v33 = v21;
    v34 = v32;
    a3 = v28;
    v35 = v31;
    v11 = v30;
    v15 = v29;
    *(v25 + 14) = sub_10002C9C8(v34, v35, &v94);
    *(v25 + 22) = 2080;
    *(v25 + 24) = sub_10002C9C8(v86, v28, &v94);
    _os_log_impl(&_mh_execute_header, v22, v23, "[%{public}@]<%{public}s> Requesting to remove participant: %s", v25, 0x20u);
    sub_1000038A4(v27, &qword_100521870, &unk_10044EA70);
    v5 = v87;

    swift_arrayDestroy();

    v20 = v85;
  }

  a1 = *&v21[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];
  if (!a1 || (v36 = *&v21[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger]) == 0)
  {
LABEL_26:
    v61 = v21;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v94 = v66;
      *v64 = 138543618;
      *(v64 + 4) = v61;
      *v65 = v61;
      *(v64 + 12) = 2082;
      v67 = *&v61[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v68 = *&v61[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v69 = v61;
      *(v64 + 14) = sub_10002C9C8(v67, v68, &v94);
      _os_log_impl(&_mh_execute_header, v62, v63, "[%{public}@]<%{public}s> Unable to message leader", v64, 0x16u);
      sub_1000038A4(v65, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v66);
    }

    return;
  }

  v85 = v20;
  v79 = a3;
  v87 = v5;

  v77 = v36;

  v80 = a1;
  v37 = GroupSession.activeParticipants.getter();
  v38 = v37;
  v39 = v37 + 56;
  v40 = 1 << *(v37 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v5 = v41 & *(v37 + 56);
  v78 = v21;
  v89 = &v21[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
  a3 = (v40 + 63) >> 6;
  v88 = v93 + 16;
  v90 = (v93 + 8);
  v91 = (v93 + 32);

  v42 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v43 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v43 >= a3)
        {

          v54 = 1;
          v55 = v87;
          v56 = v83;
          v57 = v84;
          v21 = v78;
          v58 = v79;
          v59 = v77;
          goto LABEL_24;
        }

        v5 = *(v39 + 8 * v43);
        ++v42;
        if (v5)
        {
          v42 = v43;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_16:
    a1 = v38;
    v44 = v38[6];
    v46 = v92;
    v45 = v93;
    (*(v93 + 16))(v92, v44 + *(v93 + 72) * (__clz(__rbit64(v5)) | (v42 << 6)), v11);
    v47 = *(v45 + 32);
    v47(v15, v46, v11);
    v48 = Participant.handle.getter();
    v50 = *(v89 + 1);
    if (!v50)
    {

      goto LABEL_10;
    }

    v51 = v15;
    if (v48 == *v89 && v50 == v49)
    {
      break;
    }

    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v53)
    {

      goto LABEL_31;
    }

LABEL_10:
    v5 &= v5 - 1;
    (*v90)(v15, v11);
    v38 = a1;
  }

LABEL_31:
  v56 = v83;
  v47(v83, v51, v11);
  v54 = 0;
  v55 = v87;
  v57 = v84;
  v21 = v78;
  v58 = v79;
  v59 = v77;
LABEL_24:
  v60 = v93;
  (*(v93 + 56))(v56, v54, 1, v11);

  if ((*(v60 + 48))(v56, 1, v11) == 1)
  {

    sub_1000038A4(v56, &qword_100529110, &qword_10044F5B0);
    goto LABEL_26;
  }

  v70 = v81;
  (*v91)(v81, v56, v11);

  v72 = j___s12mediaremoted28MRDFastSyncGroupSessionStateO8rawValueSivg(v86, v58, v71);
  v73 = v11;
  v75 = sub_10036DA3C(v72, v74);

  v76 = v82;
  static Participants.only(_:)();
  sub_10020CF20(9u, v75, v76, v59, 0, 0);

  (*(v57 + 8))(v76, v55);
  (*v90)(v70, v73);
}

uint64_t sub_1001EF8B0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1001EF944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

void sub_1001EFC08(void *a1)
{
  v2 = type metadata accessor for Participants();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v73 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v67 - v8;
  v10 = type metadata accessor for Participant();
  v11 = *(v10 - 8);
  v81 = v10;
  v82 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v83 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v80 = &v67 - v16;
  __chkstk_darwin(v15);
  v72 = &v67 - v17;
  if (qword_100529B70 != -1)
  {
LABEL_33:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100015AFC(v18, qword_100529B78);
  v20 = a1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v74 = v9;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v76 = v3;
    v25 = v24;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v75 = v19;
    v28 = v2;
    v29 = v27;
    v84 = v27;
    *v25 = 138543618;
    *(v25 + 4) = v20;
    *v26 = v20;
    *(v25 + 12) = 2082;
    v9 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v30 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v31 = v20;
    *(v25 + 14) = sub_10002C9C8(v9, v30, &v84);
    _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}@]<%{public}s> Requesting to remove all participants", v25, 0x16u);
    sub_1000038A4(v26, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v29);
    v2 = v28;
    v19 = v75;

    v3 = v76;
  }

  v32 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];
  if (!v32 || (v33 = *&v20[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger]) == 0)
  {
LABEL_26:
    v56 = v20;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v84 = v61;
      *v59 = 138543618;
      *(v59 + 4) = v56;
      *v60 = v56;
      *(v59 + 12) = 2082;
      v62 = *&v56[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v63 = *&v56[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v64 = v56;
      *(v59 + 14) = sub_10002C9C8(v62, v63, &v84);
      _os_log_impl(&_mh_execute_header, v57, v58, "[%{public}@]<%{public}s> Unable to message leader", v59, 0x16u);
      sub_1000038A4(v60, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v61);
    }

    return;
  }

  v75 = v19;
  v76 = v3;
  v69 = v2;

  v70 = v33;

  v71 = v32;
  v34 = GroupSession.activeParticipants.getter();
  v35 = v34;
  v2 = v34 + 56;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v34 + 56);
  v68 = v20;
  v39 = &v20[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
  a1 = ((v36 + 63) >> 6);
  v79 = (v82 + 32);
  v77 = v82 + 16;
  v78 = (v82 + 8);

  v40 = 0;
  v41 = v81;
  while (1)
  {
    if (!v38)
    {
      while (1)
      {
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v42 >= a1)
        {

          v51 = 1;
          v52 = v69;
          v53 = v76;
          v54 = v74;
          goto LABEL_24;
        }

        v38 = *(v2 + 8 * v42);
        ++v40;
        if (v38)
        {
          v40 = v42;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_16:
    v43 = v35;
    v44 = v82;
    v45 = *(v35 + 48) + *(v82 + 72) * (__clz(__rbit64(v38)) | (v40 << 6));
    v46 = v80;
    (*(v82 + 16))(v80, v45, v41);
    v3 = *(v44 + 32);
    v9 = v83;
    (v3)(v83, v46, v41);
    v47 = Participant.handle.getter();
    v49 = *(v39 + 1);
    if (!v49)
    {

      v35 = v43;
      goto LABEL_10;
    }

    if (v47 == *v39 && v49 == v48)
    {
      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v35 = v43;
    if (v9)
    {

      goto LABEL_31;
    }

LABEL_10:
    v38 &= v38 - 1;
    v41 = v81;
    (*v78)(v83, v81);
  }

LABEL_31:
  v41 = v81;
  v54 = v74;
  (v3)(v74, v83, v81);
  v51 = 0;
  v52 = v69;
  v53 = v76;
LABEL_24:
  v20 = v68;
  v55 = v82;
  (*(v82 + 56))(v54, v51, 1, v41);

  if ((*(v55 + 48))(v54, 1, v41) == 1)
  {

    sub_1000038A4(v54, &qword_100529110, &qword_10044F5B0);
    goto LABEL_26;
  }

  v65 = v72;
  (*v79)(v72, v54, v41);
  v66 = v73;
  static Participants.only(_:)();
  sub_10020CF20(0xAu, 0, v66, v70, 0, 0);

  (*(v53 + 8))(v66, v52);
  (*v78)(v65, v41);
}

uint64_t MRDFastSyncGroupSession.enterLowPowerMode(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100015AFC(v13, qword_100529B78);
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v17 = 138412546;
    *(v17 + 4) = v14;
    *v18 = v14;
    *(v17 + 12) = 2080;
    v19 = a1;
    v20 = v12;
    v21 = v8;
    v22 = a2;
    v24 = *&v14[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v23 = *&v14[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v25 = v14;
    v26 = v24;
    a1 = v19;
    v27 = v23;
    a2 = v22;
    v8 = v21;
    v12 = v20;
    *(v17 + 14) = sub_10002C9C8(v26, v27, aBlock);
    _os_log_impl(&_mh_execute_header, v15, v16, "[%@]<%s> Enter low-power mode", v17, 0x16u);
    sub_1000038A4(v35, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v36);
  }

  v28 = *&v14[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v29 = swift_allocObject();
  v29[2] = v14;
  v29[3] = a1;
  v29[4] = a2;
  aBlock[4] = sub_10021DCA4;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C3030;
  v30 = _Block_copy(aBlock);
  v31 = v14;

  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  v32 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  (*(v39 + 8))(v8, v32);
  (*(v37 + 8))(v12, v38);
}

uint64_t sub_1001F087C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v168 = a3;
  v169 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v166 = *(v4 - 8);
  v5 = *(v166 + 64);
  __chkstk_darwin(v4);
  v164 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v165 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Participants();
  v163 = *(v11 - 8);
  v12 = *(v163 + 64);
  __chkstk_darwin(v11);
  v162 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1001BC5A8(&qword_100529110, &qword_10044F5B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v147 - v16;
  v18 = type metadata accessor for Participant();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v147 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = OBJC_IVAR___MRDFastSyncGroupSession__state;
  v30 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession__state);
  v167 = v7;
  if (v30 != 3)
  {
    v26 = v4;
    if (qword_100529B70 != -1)
    {
LABEL_73:
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100015AFC(v47, qword_100529B78);
    v48 = a1;
    v49 = a1;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v160 = v26;
      v161 = v8;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v52 = 138543874;
      *(v52 + 4) = v49;
      *v53 = v49;
      *(v52 + 12) = 2082;
      v54 = *&v49[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v55 = *&v49[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v56 = v49;
      *(v52 + 14) = sub_10002C9C8(v54, v55, &aBlock);
      *(v52 + 22) = 2080;
      v57 = *(v48 + v29);
      if (v57 <= 1)
      {
        if (v57)
        {
          if (v57 != 1)
          {
            goto LABEL_76;
          }

          v58 = 0xE500000000000000;
          v59 = 0x7472617473;
        }

        else
        {
          v58 = 0xE700000000000000;
          v59 = 0x6C616974696E69;
        }
      }

      else
      {
        switch(v57)
        {
          case 2:
            v58 = 0xE700000000000000;
            v59 = 0x676E696E696F6ALL;
            break;
          case 3:
            v58 = 0xE600000000000000;
            v59 = 0x64656E696F6ALL;
            break;
          case 4:
            v58 = 0xEB00000000646574;
            v59 = 0x6164696C61766E69;
            break;
          default:
            goto LABEL_76;
        }
      }

      v91 = sub_10002C9C8(v59, v58, &aBlock);

      *(v52 + 24) = v91;
      _os_log_impl(&_mh_execute_header, v50, v51, "[%{public}@]<%{public}s> Cannot enter low-power mode in state: %s.", v52, 0x20u);
      sub_1000038A4(v53, &qword_100521870, &unk_10044EA70);

      swift_arrayDestroy();

      v80 = v160;
      v8 = v161;
      v78 = v168;
      v79 = v169;
    }

    else
    {

      v78 = v168;
      v79 = v169;
      v80 = v26;
    }

    v92 = *&v49[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
    v93 = swift_allocObject();
    *(v93 + 16) = v79;
    *(v93 + 24) = v78;
    v175 = sub_1002253CC;
    v176 = v93;
    aBlock = _NSConcreteStackBlock;
    v172 = 1107296256;
    v173 = sub_100003D98;
    v174 = &unk_1004C4200;
    v94 = _Block_copy(&aBlock);

    v76 = v165;
    static DispatchQoS.unspecified.getter();
    v170 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v95 = v164;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v94);
    (*(v166 + 8))(v95, v80);
    goto LABEL_37;
  }

  if (*(a1 + OBJC_IVAR___MRDFastSyncGroupSession_isLowPowerMode))
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100015AFC(v31, qword_100529B78);
    v32 = a1;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = v8;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v35 = 138543618;
      *(v35 + 4) = v32;
      *v37 = v32;
      *(v35 + 12) = 2082;
      v39 = *&v32[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v40 = *&v32[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v41 = v32;
      *(v35 + 14) = sub_10002C9C8(v39, v40, &aBlock);
      _os_log_impl(&_mh_execute_header, v33, v34, "[%{public}@]<%{public}s> Already in low power mode.", v35, 0x16u);
      sub_1000038A4(v37, &qword_100521870, &unk_10044EA70);
      v8 = v36;

      sub_100026A44(v38);
    }

    v42 = v168;
    v43 = v169;
    v44 = *&v32[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    *(v45 + 24) = v42;
    v175 = sub_1002253DC;
    v176 = v45;
    aBlock = _NSConcreteStackBlock;
    v172 = 1107296256;
    v46 = &unk_1004C43B8;
LABEL_20:
    v173 = sub_100003D98;
    v174 = v46;
    v75 = _Block_copy(&aBlock);

    v76 = v165;
    static DispatchQoS.unspecified.getter();
    v170 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v77 = v164;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
LABEL_21:
    _Block_release(v75);
    (*(v166 + 8))(v77, v4);
LABEL_37:
    (*(v8 + 8))(v76, v167);
  }

  if (*(a1 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion))
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100015AFC(v60, qword_100529B78);
    v61 = a1;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = v8;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      aBlock = v67;
      *v64 = 138543618;
      *(v64 + 4) = v61;
      *v66 = v61;
      *(v64 + 12) = 2082;
      v68 = *&v61[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v69 = *&v61[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v70 = v61;
      *(v64 + 14) = sub_10002C9C8(v68, v69, &aBlock);
      _os_log_impl(&_mh_execute_header, v62, v63, "[%{public}@]<%{public}s> Cannot enter low power mode while updating low power state.", v64, 0x16u);
      sub_1000038A4(v66, &qword_100521870, &unk_10044EA70);
      v8 = v65;

      sub_100026A44(v67);
    }

    v71 = v168;
    v72 = v169;
    v73 = *&v61[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
    v74 = swift_allocObject();
    *(v74 + 16) = v72;
    *(v74 + 24) = v71;
    v175 = sub_1002253CC;
    v176 = v74;
    aBlock = _NSConcreteStackBlock;
    v172 = 1107296256;
    v46 = &unk_1004C4368;
    goto LABEL_20;
  }

  if (!*(a1 + OBJC_IVAR___MRDFastSyncGroupSession_groupSession))
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v103 = type metadata accessor for Logger();
    sub_100015AFC(v103, qword_100529B78);
    v104 = a1;
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = v8;
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      aBlock = v110;
      *v107 = 138543618;
      *(v107 + 4) = v104;
      *v109 = v104;
      *(v107 + 12) = 2082;
      v111 = *&v104[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v112 = *&v104[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v113 = v104;
      *(v107 + 14) = sub_10002C9C8(v111, v112, &aBlock);
      _os_log_impl(&_mh_execute_header, v105, v106, "[%{public}@]<%{public}s> No groupSession to leave.", v107, 0x16u);
      sub_1000038A4(v109, &qword_100521870, &unk_10044EA70);
      v8 = v108;

      sub_100026A44(v110);
    }

    v114 = v168;
    v115 = v169;
    v116 = *&v104[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
    v117 = swift_allocObject();
    *(v117 + 16) = v115;
    *(v117 + 24) = v114;
    v175 = sub_100224DB4;
    v176 = v117;
    aBlock = _NSConcreteStackBlock;
    v172 = 1107296256;
    v46 = &unk_1004C4250;
    goto LABEL_20;
  }

  v81 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger);
  v152 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_groupSession);
  if (!v81)
  {

LABEL_62:
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    sub_100015AFC(v119, qword_100529B78);
    v120 = a1;
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = v8;
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      aBlock = v126;
      *v123 = 138543618;
      *(v123 + 4) = v120;
      *v125 = v120;
      *(v123 + 12) = 2082;
      v127 = *&v120[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v128 = *&v120[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v129 = v120;
      *(v123 + 14) = sub_10002C9C8(v127, v128, &aBlock);
      _os_log_impl(&_mh_execute_header, v121, v122, "[%{public}@]<%{public}s> Cannot send send low power message.", v123, 0x16u);
      sub_1000038A4(v125, &qword_100521870, &unk_10044EA70);
      v8 = v124;

      sub_100026A44(v126);
    }

    v130 = v168;
    v131 = v169;
    v132 = *&v120[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
    v133 = swift_allocObject();
    *(v133 + 16) = v131;
    *(v133 + 24) = v130;
    v175 = sub_100224DBC;
    v176 = v133;
    aBlock = _NSConcreteStackBlock;
    v172 = 1107296256;
    v173 = sub_100003D98;
    v174 = &unk_1004C42A0;
    v75 = _Block_copy(&aBlock);

    v76 = v165;
    static DispatchQoS.unspecified.getter();
    v170 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    v77 = v164;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    goto LABEL_21;
  }

  v147 = v11;
  v150 = &v147 - v28;
  v148 = (a1 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion);
  v160 = v4;
  v161 = v8;
  v82 = v27;
  v83 = v81;

  v149 = v83;

  v159 = v82;
  v84 = GroupSession.activeParticipants.getter();
  v85 = v159;
  v86 = v84;
  v29 = v84 + 56;
  v87 = 1 << *(v84 + 32);
  v88 = -1;
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  v89 = a1;
  a1 = v88 & *(v84 + 56);
  v151 = v89;
  v155 = (v89 + OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle);
  v90 = (v87 + 63) >> 6;
  v154 = v19 + 16;
  v157 = (v19 + 8);
  v158 = (v19 + 32);
  v8 = 0;

  {
    if (!a1)
    {
      while (1)
      {
        v97 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v97 >= v90)
        {

          v118 = 1;
          v4 = v160;
          v8 = v161;
          a1 = v151;
          goto LABEL_59;
        }

        a1 = *(v29 + 8 * v97);
        ++v8;
        if (a1)
        {
          v8 = v97;
          goto LABEL_46;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

LABEL_46:
    (*(v19 + 16))(v26, *(v86 + 48) + *(v19 + 72) * (__clz(__rbit64(a1)) | (v8 << 6)), v85);
    v153 = *(v19 + 32);
    v153(v23, v26, v85);
    v98 = Participant.handle.getter();
    v100 = v155[1];
    if (!v100)
    {

      goto LABEL_40;
    }

    if (v98 == *v155 && v100 == v99)
    {
      break;
    }

    v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v102)
    {

      goto LABEL_71;
    }

LABEL_40:
    a1 &= a1 - 1;
    v85 = v159;
    (*v157)(v23, v159);
  }

LABEL_71:
  v85 = v159;
  v153(v17, v23, v159);
  v118 = 0;
  v4 = v160;
  v8 = v161;
  a1 = v151;
LABEL_59:
  (*(v19 + 56))(v17, v118, 1, v85);

  if ((*(v19 + 48))(v17, 1, v85) == 1)
  {

    sub_1000038A4(v17, &qword_100529110, &qword_10044F5B0);
    goto LABEL_62;
  }

  (*v158)(v150, v17, v85);
  v57 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
  v134 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_connectionManager);
  if (v134)
  {
    v57 = a1 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle;
    v135 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8);
    if (v135)
    {
      v136 = *v57;
      v137 = *(*v134 + 368);

      v137(1, v136, v135);

      v138 = v162;
      v139 = v150;
      static Participants.only(_:)();
      sub_10020CF20(6u, 0, v138, v149, 0, 0);

      (*(v163 + 8))(v138, v147);
      (*v157)(v139, v159);
      v141 = v168;
      v140 = v169;
      v142 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v143 = swift_allocObject();
      v143[2] = v142;
      v143[3] = v140;
      v143[4] = v141;
      v144 = v148;
      v145 = *v148;
      v146 = v148[1];
      *v148 = sub_100224E14;
      v144[1] = v143;

      sub_1001C7C2C(v145);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_76:
  v170 = v57;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_1001F205C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v6 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v43 - v8;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v44 = a4;
    v25 = *(Strong + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
    *v22 = v25;
    (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
    v26 = v25;
    LOBYTE(v25) = _dispatchPreconditionTest(_:)();
    (*(v19 + 8))(v22, v18);
    if (v25)
    {
      if (a1)
      {
        v27 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
        v28 = swift_allocObject();
        v29 = v44;
        v28[2] = v48;
        v28[3] = v29;
        v28[4] = a1;
        aBlock[4] = sub_100225398;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100003D98;
        aBlock[3] = &unk_1004C4430;
        v30 = _Block_copy(aBlock);

        swift_errorRetain();
        static DispatchQoS.unspecified.getter();
        v49 = _swiftEmptyArrayStorage;
        sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
        sub_1001BC5A8(&unk_100522280, &unk_10044F590);
        sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v30);
        (*(v47 + 8))(v13, v10);
        (*(v45 + 8))(v17, v46);

        v31 = &v24[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
        v32 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
        v33 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion + 8];
        *v31 = 0;
        *(v31 + 1) = 0;
        sub_1001C7C2C(v32);
      }

      else
      {
        v34 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession__state];
        *&v24[OBJC_IVAR___MRDFastSyncGroupSession__state] = 1;
        sub_1001E6BC0(v34);
        v35 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];
        *&v24[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger] = 0;

        v36 = *&v24[OBJC_IVAR___MRDFastSyncGroupSession_groupSession];
        *&v24[OBJC_IVAR___MRDFastSyncGroupSession_groupSession] = 0;

        v37 = OBJC_IVAR___MRDFastSyncGroupSession_sessionCancellables;
        swift_beginAccess();
        v38 = *&v24[v37];
        *&v24[v37] = &_swiftEmptySetSingleton;

        v39 = type metadata accessor for TaskPriority();
        (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
        v40 = swift_allocObject();
        v40[2] = 0;
        v40[3] = 0;
        v41 = v48;
        v40[4] = v24;
        v40[5] = v41;
        v40[6] = v44;

        v42 = v24;
        sub_1001BF864(0, 0, v9, &unk_1004501E8, v40);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1001F25F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[26] = v7;
  v8 = *(v7 - 8);
  v6[27] = v8;
  v9 = *(v8 + 64) + 15;
  v6[28] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[29] = v10;
  v11 = *(v10 - 8);
  v6[30] = v11;
  v12 = *(v11 + 64) + 15;
  v6[31] = swift_task_alloc();

  return _swift_task_switch(sub_1001F2710, 0, 0);
}

uint64_t sub_1001F2710()
{
  v19 = v0;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = type metadata accessor for Logger();
  v0[32] = sub_100015AFC(v2, qword_100529B78);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[23];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 138543618;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2082;
    v10 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v11 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v12 = v6;
    *(v7 + 14) = sub_10002C9C8(v10, v11, &v18);
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}@]<%{public}s> Calling provider.leave", v7, 0x16u);
    sub_1000038A4(v8, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v9);
  }

  v0[33] = *(v0[23] + OBJC_IVAR___MRDFastSyncGroupSession_provider);
  v13 = async function pointer to GroupSessionProvider.leave()[1];

  v14 = swift_task_alloc();
  v0[34] = v14;
  v15 = sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  v16 = sub_10000462C(&qword_100522950, &qword_100522160, &unk_10044F580);
  *v14 = v0;
  v14[1] = sub_1001F29A4;

  return GroupSessionProvider.leave()(v15, v16);
}

uint64_t sub_1001F29A4()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_1001F2D1C;
  }

  else
  {
    v5 = *(v2 + 264);

    v4 = sub_1001F2AC0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001F2AC0()
{
  v15 = v0[31];
  v1 = v0[28];
  v17 = v0[30];
  v18 = v0[29];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = OBJC_IVAR___MRDFastSyncGroupSession_executionQueue;
  v6 = swift_allocObject();
  v7 = v0[23];
  v16 = *&v7[v5];
  *(v6 + 16) = *(v0 + 23);
  *(v6 + 32) = v4;
  v0[18] = sub_10022500C;
  v0[19] = v6;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_100003D98;
  v0[17] = &unk_1004C4520;
  v8 = _Block_copy(v0 + 14);
  v9 = v7;

  static DispatchQoS.unspecified.getter();
  v0[22] = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v2 + 8))(v1, v3);
  (*(v17 + 8))(v15, v18);
  v10 = v0[19];

  v11 = v0[31];
  v12 = v0[28];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001F2D1C()
{
  v43 = v0;
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[23];

  v5 = v4;
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[35];
    v9 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v42 = v12;
    *v10 = 138543874;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2082;
    v13 = *&v9[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v14 = *&v9[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v15 = v9;
    *(v10 + 14) = sub_10002C9C8(v13, v14, &v42);
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v16;
    v11[1] = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}@]<%{public}s> Failure on provider.leave: %{public}@", v10, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v12);
  }

  v17 = v0[35];
  v18 = v0[31];
  v19 = v0[28];
  v39 = v0[29];
  v20 = v0[26];
  v40 = v0[27];
  v41 = v0[30];
  v21 = v0[24];
  v22 = v0[25];
  v36 = *(v0[23] + OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue);
  v38 = v0[23];
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = v17;
  v0[6] = sub_100225398;
  v0[7] = v23;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100003D98;
  v0[5] = &unk_1004C4480;
  v24 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[20] = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  v37 = *(v40 + 8);
  v37(v19, v20);
  v25 = *(v41 + 8);
  v25(v18, v39);
  v26 = v0[7];

  v35 = *&v38[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v27 = swift_allocObject();
  *(v27 + 16) = v38;
  *(v27 + 24) = v17;
  v0[12] = sub_1002253D4;
  v0[13] = v27;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100003D98;
  v0[11] = &unk_1004C44D0;
  v28 = _Block_copy(v0 + 8);
  v29 = v38;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[21] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  v37(v19, v20);
  v25(v18, v39);
  v30 = v0[13];

  v31 = v0[31];
  v32 = v0[28];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1001F3254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v22);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_isLowPowerMode) = 1;
  v14 = (a1 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion);
  v15 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion);
  v16 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion + 8);
  *v14 = 0;
  v14[1] = 0;
  sub_1001C7C2C(v15);
  v17 = *(a1 + OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  aBlock[4] = sub_1002253DC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C4570;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v23 + 8))(v9, v6);
  (*(v10 + 8))(v13, v22);
}

void sub_1001F3594(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t MRDFastSyncGroupSession.exitLowPowerMode(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100015AFC(v13, qword_100529B78);
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v17 = 138543618;
    *(v17 + 4) = v14;
    *v18 = v14;
    *(v17 + 12) = 2082;
    v19 = a1;
    v20 = v12;
    v21 = v8;
    v22 = a2;
    v24 = *&v14[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v23 = *&v14[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v25 = v14;
    v26 = v24;
    a1 = v19;
    v27 = v23;
    a2 = v22;
    v8 = v21;
    v12 = v20;
    *(v17 + 14) = sub_10002C9C8(v26, v27, aBlock);
    _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}@]<%{public}s> Exit low-power mode", v17, 0x16u);
    sub_1000038A4(v35, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v36);
  }

  v28 = *&v14[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v29 = swift_allocObject();
  v29[2] = v14;
  v29[3] = a1;
  v29[4] = a2;
  aBlock[4] = sub_10021DCB0;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C3080;
  v30 = _Block_copy(aBlock);
  v31 = v14;

  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  v32 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  (*(v39 + 8))(v8, v32);
  (*(v37 + 8))(v12, v38);
}

uint64_t sub_1001F3A70(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v162 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v158 = (&v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v157 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v152 = &v144 - v15;
  v16 = type metadata accessor for String.Encoding();
  v154 = *(v16 - 8);
  v155 = v16;
  v17 = *(v154 + 64);
  __chkstk_darwin(v16);
  v153 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NearbyGroup.Member();
  v156 = *(v19 - 8);
  v20 = v156[8];
  v21 = __chkstk_darwin(v19);
  v23 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v144 - v24;
  v26 = sub_1001BC5A8(&qword_1005222A0, &unk_10044F5A0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v144 - v28;
  LODWORD(v28) = a1[OBJC_IVAR___MRDFastSyncGroupSession_isLowPowerMode];
  v160 = v9;
  v161 = v6;
  v159 = v10;
  if (v28 != 1)
  {
    if (qword_100529B70 == -1)
    {
LABEL_9:
      v47 = type metadata accessor for Logger();
      sub_100015AFC(v47, qword_100529B78);
      v48 = a1;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        aBlock = v156;
        *v51 = 138543618;
        *(v51 + 4) = v48;
        *v52 = v48;
        *(v51 + 12) = 2082;
        v53 = v5;
        v54 = a2;
        v55 = *&v48[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v56 = *&v48[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v57 = v48;
        v58 = v56;
        a2 = v54;
        v5 = v53;
        *(v51 + 14) = sub_10002C9C8(v55, v58, &aBlock);
        _os_log_impl(&_mh_execute_header, v49, v50, "[%{public}@]<%{public}s> Not in low power mode.", v51, 0x16u);
        sub_1000038A4(v52, &qword_100521870, &unk_10044EA70);

        sub_100026A44(v156);
      }

      v42 = v158;
      v59 = v162;
      v60 = *&v48[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
      v61 = swift_allocObject();
      *(v61 + 16) = a2;
      *(v61 + 24) = v59;
      v168 = sub_1002253DC;
      v169 = v61;
      aBlock = _NSConcreteStackBlock;
      v165 = 1107296256;
      v46 = &unk_1004C3F80;
      goto LABEL_12;
    }

LABEL_45:
    swift_once();
    goto LABEL_9;
  }

  if (*&a1[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion])
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100015AFC(v30, qword_100529B78);
    v31 = a1;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      aBlock = v156;
      *v34 = 138543618;
      *(v34 + 4) = v31;
      *v35 = v31;
      *(v34 + 12) = 2082;
      v36 = v5;
      v37 = a2;
      v38 = *&v31[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v39 = *&v31[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v40 = v31;
      v41 = v39;
      a2 = v37;
      v5 = v36;
      *(v34 + 14) = sub_10002C9C8(v38, v41, &aBlock);
      _os_log_impl(&_mh_execute_header, v32, v33, "[%{public}@]<%{public}s> Cannot exit low power mode while updating low power state.", v34, 0x16u);
      sub_1000038A4(v35, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v156);
    }

    v42 = v158;
    v43 = v162;
    v44 = *&v31[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
    v45 = swift_allocObject();
    *(v45 + 16) = a2;
    *(v45 + 24) = v43;
    v168 = sub_100224D28;
    v169 = v45;
    aBlock = _NSConcreteStackBlock;
    v165 = 1107296256;
    v46 = &unk_1004C4070;
LABEL_12:
    v166 = sub_100003D98;
    v167 = v46;
    v62 = _Block_copy(&aBlock);

    v63 = v157;
    static DispatchQoS.unspecified.getter();
    v163 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v62);
    (*(v161 + 8))(v42, v5);
    (v159[1])(v63, v160);
  }

  v65 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle + 8];
  if (!v65)
  {
    __break(1u);
    goto LABEL_47;
  }

  v66 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
  if (!v66)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v146 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
  v147 = v29;
  v145 = &a1[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
  v148 = v5;
  v149 = a2;
  v150 = a1;
  v67 = &a1[OBJC_IVAR___MRDFastSyncGroupSession_localHandle];
  v68 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_localHandle + 8];
  if (!v68)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v151 = *&a1[OBJC_IVAR___MRDFastSyncGroupSession_leaderHandle];
  v69 = *v67;
  v70 = *(*v66 + 368);
  v71 = v65;
  v144 = v67;

  v70(0, v69, v68);
  v161 = v71;

  v72 = v150;
  v73 = *&v150[v146];
  if (!v73)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v74 = *(*v73 + 200);
  v75 = *&v150[v146];

  v77 = v74(v76);

  if (!*(v77 + 16) || (v78 = sub_10000698C(v151, v161), (v79 & 1) == 0))
  {
LABEL_49:

    __break(1u);
    goto LABEL_50;
  }

  v80 = *(*(v77 + 56) + 8 * v78);

  v146 = (*(*v80 + 216))(v81);

  v82 = *&v72[OBJC_IVAR___MRDFastSyncGroupSession_provider];

  dispatch thunk of NearbyGroupSessionProvider.nearbyGroup.getter();

  a2 = NearbyGroup.members.getter();

  v83 = 1 << *(a2 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v5 = v84 & *(a2 + 56);
  a1 = ((v83 + 63) >> 6);
  v157 = (v156 + 2);
  v158 = v156 + 4;
  v159 = v156 + 1;

  v85 = 0;
  if (!v5)
  {
LABEL_24:
    while (1)
    {
      v86 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v86 >= a1)
      {

        v89 = 1;
        goto LABEL_36;
      }

      v5 = *(a2 + 56 + 8 * v86);
      ++v85;
      if (v5)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  while (1)
  {
    v86 = v85;
LABEL_27:
    v87 = v156;
    (v156[2])(v25, *(a2 + 48) + v156[9] * (__clz(__rbit64(v5)) | (v86 << 6)), v19);
    v148 = v87[4];
    v148(v23, v25, v19);
    if (NearbyGroup.Member.handle.getter() == v151 && v161 == v88)
    {

      goto LABEL_35;
    }

    LODWORD(v160) = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v160)
    {
      break;
    }

    v5 &= v5 - 1;
    (*v159)(v23, v19);
    v85 = v86;
    if (!v5)
    {
      goto LABEL_24;
    }
  }

LABEL_35:
  v148(v147, v23, v19);
  v89 = 0;
LABEL_36:
  v90 = v150;
  v91 = v156;
  v92 = v147;
  (v156[7])(v147, v89, 1, v19);

  if ((v91[6])(v92, 1, v19) == 1)
  {
    sub_1000038A4(v92, &qword_1005222A0, &unk_10044F5A0);
  }

  else
  {
    v160 = NearbyGroup.Member.tokenDestination.getter();
    v94 = v93;
    result = (*v159)(v92, v19);
    if (v94)
    {
      goto LABEL_40;
    }
  }

  v94 = v161;

  v160 = v151;
LABEL_40:
  v95 = *&v90[OBJC_IVAR___MRDFastSyncGroupSession_pushMessenger];
  if (!v95)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v159 = v94;
  sub_1001BC5A8(&unk_1005222B0, &qword_10044EB98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044F540;
  v97 = v95;
  v98 = sub_10036C46C();
  v100 = *v98;
  v99 = *(v98 + 1);
  aBlock = v100;
  v165 = v99;
  v158 = v99;
  swift_bridgeObjectRetain_n();
  AnyHashable.init<A>(_:)();
  v101 = sub_10036C4C0();
  v103 = *v101;
  v102 = v101[1];
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v103;
  *(inited + 80) = v102;

  v104 = sub_10036C484();
  v105 = *(v104 + 1);
  aBlock = *v104;
  v165 = v105;
  swift_bridgeObjectRetain_n();
  AnyHashable.init<A>(_:)();
  v106 = *v101;
  v107 = v101[1];

  v108 = v153;
  static String.Encoding.utf8.getter();
  v109 = String.data(using:allowLossyConversion:)();
  v111 = v110;

  result = (*(v154 + 8))(v108, v155);
  if (v111 >> 60 == 15)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v157 = v97;
  *(inited + 168) = &type metadata for Data;
  *(inited + 144) = v109;
  *(inited + 152) = v111;
  v112 = sub_10036C490();
  v113 = *(v112 + 1);
  aBlock = *v112;
  v165 = v113;
  swift_bridgeObjectRetain_n();
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for Int;
  *(inited + 216) = v146;
  v114 = sub_10036C49C();
  v115 = v114[1];
  aBlock = *v114;
  v165 = v115;
  swift_bridgeObjectRetain_n();
  AnyHashable.init<A>(_:)();
  v117 = *&v150[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
  v116 = *&v150[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v117;
  *(inited + 296) = v116;

  v118 = sub_10036C478();
  v119 = *(v118 + 1);
  aBlock = *v118;
  v165 = v119;
  swift_bridgeObjectRetain_n();
  AnyHashable.init<A>(_:)();
  *(inited + 384) = &type metadata for String;
  v120 = v161;
  *(inited + 360) = v151;
  *(inited + 368) = v120;

  v121 = sub_10036C460();
  v122 = *(v121 + 1);
  aBlock = *v121;
  v165 = v122;
  swift_bridgeObjectRetain_n();
  result = AnyHashable.init<A>(_:)();
  v123 = *(v144 + 1);
  if (v123)
  {
    v124 = *v144;
    v125 = *(v144 + 1);

    *(inited + 456) = &type metadata for String;
    *(inited + 432) = v124;
    *(inited + 440) = v123;
    sub_1001C2534(inited);
    swift_setDeallocating();
    sub_1001BC5A8(&qword_1005216C0, qword_10044EBA0);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_1001BC5A8(&qword_100521FB0, &unk_10044F170);
    v127 = swift_initStackObject();
    *(v127 + 16) = xmmword_10044EC70;
    v128 = v159;
    *(v127 + 32) = v160;
    v129 = v127 + 32;
    *(v127 + 40) = v128;
    sub_10021FAD4(v127);
    swift_setDeallocating();
    sub_1001E6204(v129);
    v130 = Set._bridgeToObjectiveC()().super.isa;

    v131 = v157;
    [v157 sendMessage:isa toDestinations:v130];

    v132 = swift_allocObject();
    v133 = v150;
    swift_unknownObjectWeakInit();
    v134 = swift_allocObject();
    v135 = v149;
    v134[2] = v132;
    v134[3] = v135;
    v136 = v162;
    v134[4] = v162;
    v137 = v145;
    v138 = *v145;
    v139 = v145[1];
    *v145 = sub_100224C74;
    v137[1] = v134;

    sub_1001C7C2C(v138);

    v140 = type metadata accessor for TaskPriority();
    v141 = v152;
    (*(*(v140 - 8) + 56))(v152, 1, 1, v140);
    v142 = swift_allocObject();
    v142[2] = 0;
    v142[3] = 0;
    v142[4] = v133;
    v142[5] = v135;
    v142[6] = v136;

    v143 = v133;
    sub_1001BF864(0, 0, v141, &unk_1004501D8, v142);
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1001F4F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v34 = *(v11 - 8);
  v35 = v11;
  v12 = *(v34 + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v32 = v7;
    v22 = *(result + OBJC_IVAR___MRDFastSyncGroupSession_executionQueue);
    *v19 = v22;
    (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
    v23 = v22;
    LOBYTE(v22) = _dispatchPreconditionTest(_:)();
    result = (*(v16 + 8))(v19, v15);
    if (v22)
    {
      if (a1)
      {
        v24 = *&v21[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
        v25 = swift_allocObject();
        v25[2] = v33;
        v25[3] = a4;
        v25[4] = a1;
        v41 = sub_100224D30;
        v42 = v25;
        aBlock = _NSConcreteStackBlock;
        v38 = 1107296256;
        v39 = sub_100003D98;
        v40 = &unk_1004C41B0;
        v26 = _Block_copy(&aBlock);

        swift_errorRetain();
      }

      else
      {
        v21[OBJC_IVAR___MRDFastSyncGroupSession_isLowPowerMode] = 0;
        v27 = &v21[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
        v28 = *&v21[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion];
        v29 = *&v21[OBJC_IVAR___MRDFastSyncGroupSession_lowPowerCompletion + 8];
        *v27 = 0;
        v27[1] = 0;
        sub_1001C7C2C(v28);
        v30 = *&v21[OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue];
        v31 = swift_allocObject();
        *(v31 + 16) = v33;
        *(v31 + 24) = a4;
        v41 = sub_100224D88;
        v42 = v31;
        aBlock = _NSConcreteStackBlock;
        v38 = 1107296256;
        v39 = sub_100003D98;
        v40 = &unk_1004C4160;
        v26 = _Block_copy(&aBlock);
      }

      static DispatchQoS.unspecified.getter();
      v36 = _swiftEmptyArrayStorage;
      sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001BC5A8(&unk_100522280, &unk_10044F590);
      sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);
      (*(v32 + 8))(v10, v6);
      (*(v34 + 8))(v14, v35);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001F54B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[19] = v7;
  v8 = *(v7 - 8);
  v6[20] = v8;
  v9 = *(v8 + 64) + 15;
  v6[21] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v12 = *(v11 + 64) + 15;
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_1001F55D8, 0, 0);
}

uint64_t sub_1001F55D8()
{
  v18 = v0;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  v0[25] = sub_100015AFC(v2, qword_100529B78);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[16];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 138543874;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2082;
    v9 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v10 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v11 = v6;
    *(v7 + 14) = sub_10002C9C8(v9, v10, &v17);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_10002C9C8(0xD00000000000001DLL, 0x800000010043BCB0, &v17);
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}@]<%{public}s> %s Re-joining provider", v7, 0x20u);
    sub_1000038A4(v8, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v0[26] = *(v0[16] + OBJC_IVAR___MRDFastSyncGroupSession_provider);
  v12 = async function pointer to GroupSessionProvider.join()[1];

  v13 = swift_task_alloc();
  v0[27] = v13;
  v14 = sub_1001BC5A8(&qword_100522160, &unk_10044F580);
  v15 = sub_10000462C(&qword_100522950, &qword_100522160, &unk_10044F580);
  *v13 = v0;
  v13[1] = sub_1001F58A8;

  return GroupSessionProvider.join()(v14, v15);
}

uint64_t sub_1001F58A8()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_1001F5BBC;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_1001F59C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001F59C4()
{
  v17 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 128);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 138543874;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2082;
    v8 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v9 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v10 = v5;
    *(v6 + 14) = sub_10002C9C8(v8, v9, &v16);
    *(v6 + 22) = 2080;
    *(v6 + 24) = sub_10002C9C8(0xD00000000000001DLL, 0x800000010043BCB0, &v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}@]<%{public}s> %s Re-joined provider", v6, 0x20u);
    sub_1000038A4(v7, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v11 = *(v0 + 128);
  sub_1001EAA1C();
  v12 = *(v0 + 192);
  v13 = *(v0 + 168);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1001F5BBC()
{
  v39 = v0;
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[16];

  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v8 = 138543874;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2082;
    v10 = *&v7[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v11 = *&v7[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v12 = v7;
    *(v8 + 14) = sub_10002C9C8(v10, v11, &v38);
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_10002C9C8(0xD00000000000001DLL, 0x800000010043BCB0, &v38);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}@]<%{public}s> %s Failed to re-join provider", v8, 0x20u);
    sub_1000038A4(v9, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v13 = v0[28];
  v14 = v0[24];
  v15 = v0[21];
  v35 = v0[22];
  v16 = v0[19];
  v36 = v0[20];
  v37 = v0[23];
  v17 = v0[17];
  v18 = v0[18];
  v32 = *(v0[16] + OBJC_IVAR___MRDFastSyncGroupSession_notificationQueue);
  v34 = v0[16];
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v18;
  v19[4] = v13;
  v0[6] = sub_100224D30;
  v0[7] = v19;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100003D98;
  v0[5] = &unk_1004C40C0;
  v20 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  v33 = *(v36 + 8);
  v33(v15, v16);
  v21 = *(v37 + 8);
  v21(v14, v35);
  v22 = v0[7];

  v31 = *&v34[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v23 = swift_allocObject();
  *(v23 + 16) = v34;
  *(v23 + 24) = v13;
  v0[12] = sub_100224D60;
  v0[13] = v23;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100003D98;
  v0[11] = &unk_1004C4110;
  v24 = _Block_copy(v0 + 8);
  v25 = v34;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  v33(v15, v16);
  v21(v14, v35);
  v26 = v0[13];

  v27 = v0[24];
  v28 = v0[21];

  v29 = v0[1];

  return v29();
}