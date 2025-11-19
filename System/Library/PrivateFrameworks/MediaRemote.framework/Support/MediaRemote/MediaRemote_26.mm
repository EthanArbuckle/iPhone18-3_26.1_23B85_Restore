uint64_t sub_100366034()
{
  v21 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[3];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = v0[7];
    v8 = v0[2];
    v19 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136315650;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10002C9C8(v11, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_10002C9C8(v8, v19, &v20);
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v14;
    *v10 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Failed to %s pending member: %@", v9, 0x20u);
    sub_1000038A4(v10, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  else
  {
    v15 = v0[13];
  }

  v16 = v0[10];

  v17 = v0[1];

  return v17();
}

void *sub_100366258(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, uint64_t a7)
{
  v34 = a6;
  v37 = a5;
  v12 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - v15;
  v36 = a1;
  result = *(a1 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session);
  if (result)
  {
    v35 = a4;
    v18 = [result identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v19 == a2 && v21 == a3)
    {

      v24 = a7;
      v25 = v35;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v24 = a7;
      v25 = v35;
      if ((v23 & 1) == 0)
      {
        return result;
      }
    }

    v26 = v37;
    (*(v13 + 16))(v16, v37, v12);
    v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    if (v25)
    {
      v28 = swift_allocObject();
      (*(v13 + 32))(v28 + v27, v16, v12);
      v29 = v34;
      *(v28 + ((v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
      v30 = v29;
      v31 = &unk_10045A060;
      v32 = 0x65766F72707061;
      v33 = 0xE700000000000000;
    }

    else
    {
      v28 = swift_allocObject();
      (*(v13 + 32))(v28 + v27, v16, v12);
      v31 = &unk_10045A050;
      v32 = 0x7463656A6572;
      v33 = 0xE600000000000000;
    }

    sub_1003657C8(v32, v33, v31, v28, v36, v26, v24);
  }

  return result;
}

uint64_t sub_1003664EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10036650C, 0, 0);
}

uint64_t sub_10036650C()
{
  v1 = [*(v0 + 24) data];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = async function pointer to NearbyInvitation.PendingMember.approve(userInfo:)[1];
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  v8 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  *v7 = v0;
  v7[1] = sub_10036660C;
  v9 = *(v0 + 16);

  return NearbyInvitation.PendingMember.approve(userInfo:)(v3, v5, v8);
}

uint64_t sub_10036660C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100366748, 0, 0);
  }

  else
  {
    sub_100045968(v3[4], v3[5]);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_100366748()
{
  sub_100045968(v0[4], v0[5]);
  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t sub_1003667AC()
{
  v1 = async function pointer to NearbyInvitation.PendingMember.reject()[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  v3 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  *v2 = v0;
  v2[1] = sub_100009F34;

  return NearbyInvitation.PendingMember.reject()(v3);
}

uint64_t sub_100366858(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_session];
  if (v3 && (v4 = [v3 nearbyInvitation]) != 0)
  {
    v5 = *&v4[OBJC_IVAR____TtC12mediaremoted19MRDNearbyInvitation_nearbyInvitation];
    v6 = v4;
  }

  else
  {
    v5 = 0;
  }

  v7 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v1;
  v8[4] = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100367780;
  *(v9 + 24) = v8;
  v15[4] = sub_10021C408;
  v15[5] = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1001E7220;
  v15[3] = &unk_1004CF298;
  v10 = _Block_copy(v15);
  v11 = a1;

  v12 = v1;

  dispatch_async_and_wait(v7, v10);

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100366B38()
{
  v1 = (v0 + OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_100366BFC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id sub_100366D08()
{
  v1 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identity;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100366DBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identity;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100366EBC()
{
  v1 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_connected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100366F54(char a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_connected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10036704C()
{
  v1 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_guest;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1003670E4(char a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_guest;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1003671DC()
{
  v1 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_hidden;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100367274(char a1)
{
  v3 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_hidden;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_100367324(uint64_t a1)
{
  v2 = v1;
  v2[OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_connected] = 0;
  v4 = OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_connectionRequest;
  v5 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v2[v4], a1, v5);
  v7 = NearbyInvitationAdvertiser.PendingMember.identifier.getter();
  v8 = &v2[OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identifier];
  *v8 = v7;
  v8[1] = v9;
  v10 = objc_opt_self();
  NearbyInvitationAdvertiser.PendingMember.contactID.getter();
  v11 = String._bridgeToObjectiveC()();

  NearbyInvitationAdvertiser.PendingMember.displayName.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = [v10 basicIdentityWithIdentifier:v11 displayName:v12];

  *&v2[OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_identity] = v13;
  v2[OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_guest] = 1;
  v2[OBJC_IVAR____TtC12mediaremoted32NearbySessionsPendingParticipant_hidden] = 0;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for NearbySessionsPendingParticipant();
  v14 = objc_msgSendSuper2(&v16, "init");
  (*(v6 + 8))(a1, v5);
  return v14;
}

uint64_t type metadata accessor for NearbySessionsPendingParticipant()
{
  result = qword_100535BC8;
  if (!qword_100535BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100367564(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100367638(unsigned __int8 a1)
{
  if (a1 > 0xBu)
  {
    return 0;
  }

  else
  {
    return byte_10045A1C2[a1];
  }
}

void sub_100367668()
{
  sub_100367720();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100367720()
{
  if (!qword_100527DE0)
  {
    type metadata accessor for NearbyGroup();
    v0 = type metadata accessor for NearbyInvitationAdvertiser.PendingMember();
    if (!v1)
    {
      atomic_store(v0, &qword_100527DE0);
    }
  }
}

void sub_100367780()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  v6 = inited;
  *(inited + 16) = xmmword_100450890;
  *(inited + 32) = 0x6974617469766E69;
  *(inited + 40) = 0xEA00000000006E6FLL;
  if (v2)
  {
    v7 = dispatch thunk of NearbyInvitation.description.getter();
    v9 = (v6 + 48);
    *(v6 + 72) = &type metadata for String;
    if (v8)
    {
      *v9 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = (inited + 48);
    *(inited + 72) = &type metadata for String;
  }

  *v9 = 7104878;
  v8 = 0xE300000000000000;
LABEL_6:
  *(v6 + 56) = v8;
  strcpy((v6 + 80), "isAdvertising");
  *(v6 + 94) = -4864;
  v10 = *(v4 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_isAdvertising);
  *(v6 + 120) = &type metadata for Bool;
  *(v6 + 96) = v10;
  sub_10021F050(v6);
  swift_setDeallocating();
  sub_1001BC5A8(&unk_100527DF0, &unk_100457610);
  swift_arrayDestroy();
  if (v3)
  {
    Dictionary.description.getter();

    v11 = String._bridgeToObjectiveC()();

    [v3 setGroupSessionAdvertiserState:v11];

    isa = [*(v4 + OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_logBuffer) history];
    if (!isa)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [v3 setGroupSessionAdvertiserEvents:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003679A4(uint64_t a1)
{
  v3 = sub_1001BC5A8(&qword_100527EB8, &qword_10045A1A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v20 - v5;
  v7 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = v20 - v11;
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_1000038A4(v6, &qword_100527EB8, &qword_10045A1A8))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_1003692BC(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100367BC8(uint64_t a1)
{
  v3 = sub_1001BC5A8(&qword_100527E68, &qword_10045A160);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v20 - v5;
  v7 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = v20 - v11;
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_1000038A4(v6, &qword_100527E68, &qword_10045A160))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_1003695B0(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_100367DEC(unint64_t a1, void *a2)
{
  v4 = sub_1001BC5A8(&qword_100527EB8, &qword_10045A1A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = (&v69 - v9);
  v10 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v89 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v17 = (&v69 - v16);
  __chkstk_darwin(v15);
  v84 = (&v69 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v73 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v70 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v76 = (63 - v21) >> 6;
  v90 = v11 + 2;
  v82 = (v11 + 6);
  v83 = (v11 + 7);
  v79 = (v11 + 4);
  v80 = a1;
  v86 = a2 + 7;
  v92 = (v11 + 1);

  v25 = 0;
  v72 = v11;
  for (i = a1 + 56; ; v20 = i)
  {
    v26 = v23;
    v27 = v25;
    if (v23)
    {
LABEL_14:
      a1 = (v26 - 1) & v26;
      v31 = v80[6] + v11[9] * (__clz(__rbit64(v26)) | (v27 << 6));
      v32 = v11[2];
      v33 = v71;
      v32(v71, v31, v10);
      v34 = 0;
      v29 = v27;
    }

    else
    {
      v28 = v76 <= (v25 + 1) ? v25 + 1 : v76;
      v29 = v28 - 1;
      v30 = v25;
      while (1)
      {
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_57;
        }

        if (v27 >= v76)
        {
          break;
        }

        v26 = *(v20 + 8 * v27);
        ++v30;
        if (v26)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      v34 = 1;
      v33 = v71;
    }

    v78 = *v83;
    v78(v33, v34, 1, v10);
    v77 = *v82;
    if (v77(v33, 1, v10) == 1)
    {
      sub_1000038A4(v33, &qword_100527EB8, &qword_10045A1A8);
      goto LABEL_52;
    }

    v75 = *v79;
    v75(v84, v33, v10);
    v35 = a2[5];
    v74 = sub_10000462C(&qword_100527EB0, &qword_100527C80, &qword_100459F80);
    v36 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v37 = -1 << *(a2 + 32);
    v25 = v36 & ~v37;
    v27 = v25 >> 6;
    v20 = 1 << v25;
    if (((1 << v25) & v86[v25 >> 6]) != 0)
    {
      break;
    }

    v11 = v72;
    (*v92)(v84, v10);
LABEL_22:
    v25 = v29;
    v23 = a1;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v37;
  v38 = v72[9];
  v87 = v72[2];
  v88 = v38;
  while (1)
  {
    v87(v17, a2[6] + v88 * v25, v10);
    v39 = sub_10000462C(&qword_100527EC0, &qword_100527C80, &qword_100459F80);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    v91 = *v92;
    v91(v17, v10);
    if (v40)
    {
      break;
    }

    v25 = (v25 + 1) & v85;
    v27 = v25 >> 6;
    v20 = 1 << v25;
    if (((1 << v25) & v86[v25 >> 6]) == 0)
    {
      v11 = v72;
      v91(v84, v10);
      goto LABEL_22;
    }
  }

  v85 = v39;
  v94 = v70;
  v95 = v29;
  v96 = a1;
  v11 = v80;
  v93[0] = v80;
  v93[1] = i;
  v41 = (v91)(v84, v10);
  v42 = *(a2 + 32);
  v69 = ((1 << v42) + 63) >> 6;
  v24 = 8 * v69;
  if ((v42 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v71 = &v69;
    __chkstk_darwin(v41);
    v44 = &v69 - ((v43 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v44, v86, v43);
    v45 = *&v44[8 * v27] & ~v20;
    v46 = a2[2];
    v84 = v44;
    *&v44[8 * v27] = v45;
    v47 = v46 - 1;
    v27 = i;
    v48 = v73;
    v49 = v76;
LABEL_26:
    v72 = v47;
    while (a1)
    {
      v50 = v29;
LABEL_38:
      v53 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v87(v48, v11[6] + (v53 | (v50 << 6)) * v88, v10);
      v54 = 0;
LABEL_39:
      v78(v48, v54, 1, v10);
      if (v77(v48, 1, v10) == 1)
      {
        sub_1000038A4(v48, &qword_100527EB8, &qword_10045A1A8);
        a2 = sub_10036A254(v84, v69, v72, a2);
        goto LABEL_52;
      }

      v75(v89, v48, v10);
      v55 = a2[5];
      v56 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v57 = a2;
      v58 = -1 << *(a2 + 32);
      v25 = v56 & ~v58;
      v59 = v25 >> 6;
      v20 = 1 << v25;
      if (((1 << v25) & v86[v25 >> 6]) != 0)
      {
        v87(v17, v57[6] + v25 * v88, v10);
        v60 = dispatch thunk of static Equatable.== infix(_:_:)();
        v91(v17, v10);
        if ((v60 & 1) == 0)
        {
          v61 = ~v58;
          do
          {
            v25 = (v25 + 1) & v61;
            v59 = v25 >> 6;
            v20 = 1 << v25;
            if (((1 << v25) & v86[v25 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v17, v57[6] + v25 * v88, v10);
            v62 = dispatch thunk of static Equatable.== infix(_:_:)();
            v91(v17, v10);
          }

          while ((v62 & 1) == 0);
        }

        v91(v89, v10);
        v63 = v84[v59];
        v84[v59] = v63 & ~v20;
        a2 = v57;
        v11 = v80;
        v27 = i;
        v48 = v73;
        v49 = v76;
        if ((v63 & v20) != 0)
        {
          v47 = v72 - 1;
          if (__OFSUB__(v72, 1))
          {
            __break(1u);
          }

          if (v72 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v10);
        a2 = v57;
        v11 = v80;
        v27 = i;
        v48 = v73;
        v49 = v76;
      }
    }

    if (v49 <= (v29 + 1))
    {
      v51 = v29 + 1;
    }

    else
    {
      v51 = v49;
    }

    v52 = v51 - 1;
    while (1)
    {
      v50 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v50 >= v49)
      {
        a1 = 0;
        v54 = 1;
        v29 = v52;
        goto LABEL_39;
      }

      a1 = *(v27 + 8 * v50);
      ++v29;
      if (a1)
      {
        v29 = v50;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v24;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_1003698A4(v68, v69, v84, v25, v93);

  v70 = v94;
LABEL_52:
  sub_100045960();
  return a2;
}

void *sub_100368854(unint64_t a1, void *a2)
{
  v4 = sub_1001BC5A8(&qword_100527E68, &qword_10045A160);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = (&v69 - v9);
  v10 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v89 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __chkstk_darwin(v13);
  v17 = (&v69 - v16);
  __chkstk_darwin(v15);
  v84 = (&v69 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v73 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v70 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v76 = (63 - v21) >> 6;
  v90 = v11 + 2;
  v82 = (v11 + 6);
  v83 = (v11 + 7);
  v79 = (v11 + 4);
  v80 = a1;
  v86 = a2 + 7;
  v92 = (v11 + 1);

  v25 = 0;
  v72 = v11;
  for (i = a1 + 56; ; v20 = i)
  {
    v26 = v23;
    v27 = v25;
    if (v23)
    {
LABEL_14:
      a1 = (v26 - 1) & v26;
      v31 = v80[6] + v11[9] * (__clz(__rbit64(v26)) | (v27 << 6));
      v32 = v11[2];
      v33 = v71;
      v32(v71, v31, v10);
      v34 = 0;
      v29 = v27;
    }

    else
    {
      v28 = v76 <= (v25 + 1) ? v25 + 1 : v76;
      v29 = v28 - 1;
      v30 = v25;
      while (1)
      {
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_57;
        }

        if (v27 >= v76)
        {
          break;
        }

        v26 = *(v20 + 8 * v27);
        ++v30;
        if (v26)
        {
          goto LABEL_14;
        }
      }

      a1 = 0;
      v34 = 1;
      v33 = v71;
    }

    v78 = *v83;
    v78(v33, v34, 1, v10);
    v77 = *v82;
    if (v77(v33, 1, v10) == 1)
    {
      sub_1000038A4(v33, &qword_100527E68, &qword_10045A160);
      goto LABEL_52;
    }

    v75 = *v79;
    v75(v84, v33, v10);
    v35 = a2[5];
    v74 = sub_10000462C(&qword_100527E60, &qword_100527CB0, &qword_100459F88);
    v36 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v37 = -1 << *(a2 + 32);
    v25 = v36 & ~v37;
    v27 = v25 >> 6;
    v20 = 1 << v25;
    if (((1 << v25) & v86[v25 >> 6]) != 0)
    {
      break;
    }

    v11 = v72;
    (*v92)(v84, v10);
LABEL_22:
    v25 = v29;
    v23 = a1;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v37;
  v38 = v72[9];
  v87 = v72[2];
  v88 = v38;
  while (1)
  {
    v87(v17, a2[6] + v88 * v25, v10);
    v39 = sub_10000462C(&qword_100527E70, &qword_100527CB0, &qword_100459F88);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    v91 = *v92;
    v91(v17, v10);
    if (v40)
    {
      break;
    }

    v25 = (v25 + 1) & v85;
    v27 = v25 >> 6;
    v20 = 1 << v25;
    if (((1 << v25) & v86[v25 >> 6]) == 0)
    {
      v11 = v72;
      v91(v84, v10);
      goto LABEL_22;
    }
  }

  v85 = v39;
  v94 = v70;
  v95 = v29;
  v96 = a1;
  v11 = v80;
  v93[0] = v80;
  v93[1] = i;
  v41 = (v91)(v84, v10);
  v42 = *(a2 + 32);
  v69 = ((1 << v42) + 63) >> 6;
  v24 = 8 * v69;
  if ((v42 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v71 = &v69;
    __chkstk_darwin(v41);
    v44 = &v69 - ((v43 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v44, v86, v43);
    v45 = *&v44[8 * v27] & ~v20;
    v46 = a2[2];
    v84 = v44;
    *&v44[8 * v27] = v45;
    v47 = v46 - 1;
    v27 = i;
    v48 = v73;
    v49 = v76;
LABEL_26:
    v72 = v47;
    while (a1)
    {
      v50 = v29;
LABEL_38:
      v53 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
      v87(v48, v11[6] + (v53 | (v50 << 6)) * v88, v10);
      v54 = 0;
LABEL_39:
      v78(v48, v54, 1, v10);
      if (v77(v48, 1, v10) == 1)
      {
        sub_1000038A4(v48, &qword_100527E68, &qword_10045A160);
        a2 = sub_10036A580(v84, v69, v72, a2);
        goto LABEL_52;
      }

      v75(v89, v48, v10);
      v55 = a2[5];
      v56 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v57 = a2;
      v58 = -1 << *(a2 + 32);
      v25 = v56 & ~v58;
      v59 = v25 >> 6;
      v20 = 1 << v25;
      if (((1 << v25) & v86[v25 >> 6]) != 0)
      {
        v87(v17, v57[6] + v25 * v88, v10);
        v60 = dispatch thunk of static Equatable.== infix(_:_:)();
        v91(v17, v10);
        if ((v60 & 1) == 0)
        {
          v61 = ~v58;
          do
          {
            v25 = (v25 + 1) & v61;
            v59 = v25 >> 6;
            v20 = 1 << v25;
            if (((1 << v25) & v86[v25 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v17, v57[6] + v25 * v88, v10);
            v62 = dispatch thunk of static Equatable.== infix(_:_:)();
            v91(v17, v10);
          }

          while ((v62 & 1) == 0);
        }

        v91(v89, v10);
        v63 = v84[v59];
        v84[v59] = v63 & ~v20;
        a2 = v57;
        v11 = v80;
        v27 = i;
        v48 = v73;
        v49 = v76;
        if ((v63 & v20) != 0)
        {
          v47 = v72 - 1;
          if (__OFSUB__(v72, 1))
          {
            __break(1u);
          }

          if (v72 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v10);
        a2 = v57;
        v11 = v80;
        v27 = i;
        v48 = v73;
        v49 = v76;
      }
    }

    if (v49 <= (v29 + 1))
    {
      v51 = v29 + 1;
    }

    else
    {
      v51 = v49;
    }

    v52 = v51 - 1;
    while (1)
    {
      v50 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v50 >= v49)
      {
        a1 = 0;
        v54 = 1;
        v29 = v52;
        goto LABEL_39;
      }

      a1 = *(v27 + 8 * v50);
      ++v29;
      if (a1)
      {
        v29 = v50;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v24;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_100369D7C(v68, v69, v84, v25, v93);

  v70 = v94;
LABEL_52:
  sub_100045960();
  return a2;
}

uint64_t sub_1003692BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_10000462C(&qword_100527EB0, &qword_100527C80, &qword_100459F80);
  v34 = a1;
  v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v32 = v10 + 56;
  v33 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v29 = v2;
    v30 = v6;
    v31 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v20 = v19 * v14;
      v16(v9, *(v33 + 48) + v19 * v14, v5);
      sub_10000462C(&qword_100527EC0, &qword_100527C80, &qword_100459F80);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v9, v5);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v32 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v22 = 1;
        v6 = v30;
        a2 = v31;
        return (*(v6 + 56))(a2, v22, 1, v5);
      }
    }

    v23 = v29;
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    v35 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10036A8AC(&qword_100527C80, &qword_100459F80, &qword_100527EC8, &unk_10045A1B0);
      v26 = v35;
    }

    v6 = v30;
    a2 = v31;
    (*(v30 + 32))(v31, *(v26 + 48) + v20, v5);
    sub_10036AAD8(v14, &qword_100527C80, &qword_100459F80, &qword_100527EB0, &protocol conformance descriptor for NearbyInvitation<A>.PendingMember);
    v22 = 0;
    *v23 = v35;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a2, v22, 1, v5);
}

uint64_t sub_1003695B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_10000462C(&qword_100527E60, &qword_100527CB0, &qword_100459F88);
  v34 = a1;
  v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v32 = v10 + 56;
  v33 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v29 = v2;
    v30 = v6;
    v31 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v20 = v19 * v14;
      v16(v9, *(v33 + 48) + v19 * v14, v5);
      sub_10000462C(&qword_100527E70, &qword_100527CB0, &qword_100459F88);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v9, v5);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v32 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v22 = 1;
        v6 = v30;
        a2 = v31;
        return (*(v6 + 56))(a2, v22, 1, v5);
      }
    }

    v23 = v29;
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    v35 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10036A8AC(&qword_100527CB0, &qword_100459F88, &qword_100527E78, &qword_10045A168);
      v26 = v35;
    }

    v6 = v30;
    a2 = v31;
    (*(v30 + 32))(v31, *(v26 + 48) + v20, v5);
    sub_10036AAD8(v14, &qword_100527CB0, &qword_100459F88, &qword_100527E60, &protocol conformance descriptor for NearbyInvitationAdvertiser<A>.PendingMember);
    v22 = 0;
    *v23 = v35;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a2, v22, 1, v5);
}

void *sub_1003698A4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = sub_1001BC5A8(&qword_100527EB8, &qword_10045A1A8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v26 = *a5;
        v25 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v25 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v26;
        a5[1] = v25;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1000038A4(v12, &qword_100527EB8, &qword_10045A1A8);
          v48 = v64;

          return sub_10036A254(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_10000462C(&qword_100527EB0, &qword_100527C80, &qword_100459F80);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_10000462C(&qword_100527EC0, &qword_100527C80, &qword_100459F80);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void *sub_100369D7C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = sub_1001BC5A8(&qword_100527E68, &qword_10045A160);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v26 = *a5;
        v25 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v25 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v26;
        a5[1] = v25;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1000038A4(v12, &qword_100527E68, &qword_10045A160);
          v48 = v64;

          return sub_10036A580(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_10000462C(&qword_100527E60, &qword_100527CB0, &qword_100459F88);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_10000462C(&qword_100527E70, &qword_100527CB0, &qword_100459F88);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_10036A254(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1001BC5A8(&qword_100527C80, &qword_100459F80);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - v10;
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1001BC5A8(&qword_100527EC8, &unk_10045A1B0);
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
    sub_10000462C(&qword_100527EB0, &qword_100527C80, &qword_100459F80);
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

uint64_t sub_10036A580(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1001BC5A8(&qword_100527CB0, &qword_100459F88);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - v10;
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1001BC5A8(&qword_100527E78, &qword_10045A168);
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
    sub_10000462C(&qword_100527E60, &qword_100527CB0, &qword_100459F88);
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

void *sub_10036A8AC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = sub_1001BC5A8(a1, a2);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  sub_1001BC5A8(a3, a4);
  v13 = *v4;
  v14 = static _SetStorage.copy(original:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v7;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v9 + 32;
    for (i = v9 + 16; v22; result = (*(v9 + 32))(*(v15 + 48) + v27, v12, v8))
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v27 = *(v9 + 72) * (v24 | (v19 << 6));
      (*(v9 + 16))(v12, *(v13 + 48) + v27, v8);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v7 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v15;
  }

  return result;
}

uint64_t sub_10036AAD8(int64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v7 = sub_1001BC5A8(a2, a3);
  v8 = *(v7 - 8);
  v9 = v8[8];
  result = __chkstk_darwin(v7);
  v12 = &v40 - v11;
  v13 = *v5;
  v14 = *v5 + 56;
  v15 = -1 << *(*v5 + 32);
  v16 = (a1 + 1) & ~v15;
  if (((1 << v16) & *(v14 + 8 * (v16 >> 6))) != 0)
  {
    v17 = ~v15;
    v18 = *v5;

    v19 = _HashTable.previousHole(before:)();
    if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      v41 = (v19 + 1) & v17;
      v40 = v8[2];
      v47 = v8[9];
      v42 = v8 + 2;
      v20 = (v8 + 1);
      v21 = v13;
      v22 = v17;
      while (1)
      {
        v23 = v14;
        v24 = v47 * v16;
        v25 = v22;
        v40(v12, *(v21 + 48) + v47 * v16, v7);
        v26 = v21;
        v27 = *(v21 + 40);
        sub_10000462C(v45, v43, v44);
        v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v20)(v12, v7);
        v22 = v25;
        v29 = v28 & v25;
        if (a1 >= v41)
        {
          if (v29 < v41 || a1 < v29)
          {
LABEL_4:
            v21 = v26;
            goto LABEL_5;
          }
        }

        else if (v29 < v41 && a1 < v29)
        {
          goto LABEL_4;
        }

        v21 = v26;
        v32 = *(v26 + 48);
        v33 = v47 * a1;
        v34 = v32 + v47 * a1;
        v35 = v32 + v24 + v47;
        if (v47 * a1 < v24 || v34 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v22 = v25;
          a1 = v16;
          goto LABEL_5;
        }

        a1 = v16;
        if (v33 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v16 = (v16 + 1) & v22;
        v14 = v23;
        if (((*(v23 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v13;
LABEL_28:
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v13;
  }

  v37 = *(v21 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v39;
    ++*(v21 + 36);
  }

  return result;
}

uint64_t sub_10036ADD8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR____TtC12mediaremotedP33_7EE25EE0744654392BDDF6F1DB17E3B438NearbySessionsAdvertiserImplementation_queue];
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = v1;
  v13[4] = ObjectType;
  aBlock[4] = sub_10036C1EC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004CF8B0;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000048A0(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);
}

char *sub_10036B0C4(int a1)
{
  v3 = *(sub_1001BC5A8(&qword_100527C80, &qword_100459F80) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003652DC(a1, v7, v1 + v4, v8, v9, v10, v11);
}

void *sub_10036B18C()
{
  v1 = *(sub_1001BC5A8(&qword_100527C80, &qword_100459F80) - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + v3);
  v9 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100366258(v4, v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t sub_10036B23C()
{
  v1 = *(sub_1001BC5A8(&qword_100527C80, &qword_100459F80) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_100009F30;

  return sub_1003667AC();
}

uint64_t sub_10036B314()
{
  v2 = *(sub_1001BC5A8(&qword_100527C80, &qword_100459F80) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1003664EC(v0 + v3, v4);
}

uint64_t sub_10036B424()
{
  v2 = *(sub_1001BC5A8(&qword_100527C80, &qword_100459F80) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = (v0 + v4);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v0 + v5);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100009F34;

  return sub_100365AE4(v12, v13, v14, v6, v7, v0 + v3, v9, v10);
}

void sub_10036B568()
{
  v1 = *(sub_1001BC5A8(&qword_100527CB0, &qword_100459F88) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100362A3C(v0 + v2, v4, v5);
}

uint64_t sub_10036B60C(int a1)
{
  v3 = *(sub_1001BC5A8(&qword_100527CB0, &qword_100459F88) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_100363238(a1, v6, v7, v1 + v4, v5);
}

void sub_10036B6B8()
{
  v1 = *(sub_1001BC5A8(&qword_100527CB0, &qword_100459F88) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);

  sub_100363624(v4, v5, v0 + v2, v6, v7);
}

uint64_t sub_10036B758()
{
  v1 = *(sub_1001BC5A8(&qword_100527CB0, &qword_100459F88) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_100009F30;

  return sub_100364630();
}

unint64_t sub_10036B830()
{
  v1 = *(v0 + 16);
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  v4 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228F0, &unk_100450070);
  return v4;
}

uint64_t sub_10036B8E4(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1001BC5A8(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_10036B968()
{
  v1 = *(sub_1001BC5A8(&qword_100527CB0, &qword_100459F88) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_100009F30;

  return sub_100364584();
}

uint64_t sub_10036BA40(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1001BC5A8(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 40);

  (*(v4 + 8))(v2 + v6, v3);
  v10 = *(v2 + v7 + 8);

  return _swift_deallocObject(v2, ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_10036BB30()
{
  v2 = *(sub_1001BC5A8(&qword_100527CB0, &qword_100459F88) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = (v0 + v4);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v0 + v5);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100009F30;

  return sub_100363D20(v12, v13, v14, v6, v7, v0 + v3, v9, v10);
}

uint64_t sub_10036BC74()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F30;

  return sub_100361D60(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_10036BD20()
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

  return sub_10036104C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_10036BE24(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009F30;

  return sub_10035FC08(a1, v8, v9, v4, v5, v7, v6);
}

uint64_t sub_10036BEF0()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F30;

  return sub_10036019C(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_10036BFA8()
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

  return sub_10035F22C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_10036C06C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100009F30;

  return sub_10035D024(v8, v9, v10, v2, v3, v4, v5, v7);
}

uint64_t sub_10036C130()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009F34;

  return sub_10035DDF8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_10036C1F8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_10035B2B8(v5, v6, v7, v2, v3, v4);
}

void sub_10036C2A0()
{
  v1 = *(sub_1001BC5A8(&qword_100527C80, &qword_100459F80) - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  sub_1003646DC(v2);
}

uint64_t sub_10036C394()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t sub_10036C3DC()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_10036C4E4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10036E90C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10036C51C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x694472656461656CLL;
    v7 = 0xD000000000000012;
    v8 = 0x79537265626D656DLL;
    if (a1 != 3)
    {
      v8 = 0x456E6F6973736573;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x797469746E656469;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0xD000000000000013;
    if (a1 != 9)
    {
      v2 = 0xD000000000000016;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6F4365746F6D6572;
    v4 = 0xD000000000000012;
    if (a1 != 6)
    {
      v4 = 0xD000000000000017;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10036C6B8(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(_MRGroupSessionFastSyncMessageProtobuf);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  if (!v6)
  {
    sub_1001C4034(a1, a2);
    return 11;
  }

  v7 = [v6 messageType];
  if (v7 >= 0xB)
  {
    sub_1001C4034(a1, a2);

    return 11;
  }

  v8 = v7;
  result = [v6 payload];
  if (result)
  {
    v10 = result;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001C4034(a1, a2);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036C7D4(unsigned __int8 a1)
{
  result = [objc_allocWithZone(_MRGroupSessionFastSyncMessageProtobuf) init];
  if (result)
  {
    v3 = a1;
    v4 = result;
    [result setMessageType:v3];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v4 setPayload:isa];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10036C864(unsigned __int8 a1)
{
  v1 = sub_10036C7D4(a1);
  v2 = [v1 data];

  if (v2)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10036C8D0(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_100018D7C(0, &qword_100528138, _MRGroupSessionLeaderDiscoveryMessageProtobuf_ptr);
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithData:isa];

  if (!v8)
  {
    sub_1001C4034(a1, a2);
    v11 = 0;
    v13 = 0xF000000000000000;
    goto LABEL_5;
  }

  v9 = [v8 signature];
  if (v9)
  {
    v10 = v9;
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    sub_1001C4034(a1, a2);

LABEL_5:
    *a3 = v11;
    a3[1] = v13;
    return;
  }

  __break(1u);
}

void sub_10036C9C4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100018D7C(0, &qword_100528118, _MRGroupSessionIdentityShareReplyMessageProtobuf_ptr);
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithData:isa];

  if (!v8)
  {
    sub_1001C4034(a1, a2);
    *(a3 + 43) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  v9 = [v8 localParticipant];
  if (!v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  v36 = a1;
  v11 = [v9 identifier];
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v14;
  v35 = v13;

  v15 = [v10 identity];
  v16 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v15];

  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v33 = a2;
  v17 = [v10 connected];
  v32 = [v10 guest];
  v31 = [v10 hidden];

  v18 = [v8 leaderParticipant];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  v30 = v17;
  v20 = [v18 identifier];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = [v19 identity];
    v26 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v25];

    if (v26)
    {
      v27 = [v19 connected];
      v28 = [v19 guest];
      v29 = [v19 hidden];

      sub_1001C4034(v36, v33);
      *a3 = v35;
      *(a3 + 8) = v34;
      *(a3 + 16) = v16;
      *(a3 + 24) = v30;
      *(a3 + 25) = v32;
      *(a3 + 26) = v31;
      *(a3 + 32) = v22;
      *(a3 + 40) = v24;
      *(a3 + 48) = v26;
      *(a3 + 56) = v27;
      *(a3 + 57) = v28;
      *(a3 + 58) = v29;
      return;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_10036CC7C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = [v10 initWithData:isa];

  if (v12)
  {
    (*(a4 + 24))(v12, a3, a4);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  sub_1001C4034(a1, a2);
  v14 = *(*(a3 - 8) + 56);

  return v14(a5, v13, 1, a3);
}

void sub_10036CD98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_allocWithZone(_MRGroupSessionJoinResponseMessageProtobuf) init];
  if (v4)
  {
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 setParticipantIdentifier:v6];

    [v5 setApproved:a3 & 1];
    v7 = [v5 data];

    if (v7)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10036CE6C()
{
  v1 = [objc_allocWithZone(_MRGroupSessionIdentityShareReplyMessageProtobuf) init];
  if (v1)
  {
    v2 = v1;
    if (*(v0 + 25))
    {
      v3 = 256;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3 | *(v0 + 24);
    if (*(v0 + 26))
    {
      v5 = 0x10000;
    }

    else
    {
      v5 = 0;
    }

    v6 = sub_10036D568(*v0, *(v0 + 8), *(v0 + 16), v4 | v5);
    [v2 setLocalParticipant:v6];

    if (*(v0 + 57))
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 | *(v0 + 56);
    if (*(v0 + 58))
    {
      v9 = 0x10000;
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_10036D568(*(v0 + 32), *(v0 + 40), *(v0 + 48), v8 | v9);
    [v2 setLeaderParticipant:v10];

    v11 = [v2 data];
    if (v11)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10036CFA0(uint64_t a1, NSString a2)
{
  v3 = [objc_allocWithZone(_MRGroupSessionErrorReplyMessageProtobuf) init];
  if (v3)
  {
    v4 = v3;
    if (a2)
    {
      a2 = String._bridgeToObjectiveC()();
    }

    [v4 setErrorMessage:a2];

    v5 = [v4 data];
    if (v5)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10036D064(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 signature];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_10036D170(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 identity];
  v5 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v4];

  if (v5)
  {

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

id sub_10036D1E8()
{
  v1 = *v0;
  result = [objc_allocWithZone(_MRGroupSessionIdentityShareMessageProtobuf) init];
  if (result)
  {
    v3 = result;
    v4 = [v1 protobuf];
    [v3 setIdentity:v4];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036D264(void *a1)
{
  result = [objc_allocWithZone(_MRGroupSessionIdentityShareMessageProtobuf) init];
  if (result)
  {
    v3 = result;
    v4 = [a1 protobuf];
    [v3 setIdentity:v4];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10036D2E0()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(_MRGroupSessionIdentityShareMessageProtobuf) init];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 protobuf];
    [v3 setIdentity:v4];

    v5 = [v3 data];
    if (v5)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10036D3C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100018D7C(0, &qword_100527F78, _MRGroupSessionParticipantProtobuf_ptr);
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithData:isa];

  if (v8)
  {
    sub_10036EC08(v8);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    result = sub_1001C4034(a1, a2);
    v18 = v16 & 0x10101;
  }

  else
  {
    result = sub_1001C4034(a1, a2);
    v10 = 0;
    v12 = 0;
    v14 = 0;
    v18 = 0;
  }

  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v14;
  *(a3 + 24) = v18;
  *(a3 + 26) = BYTE2(v18);
  return result;
}

void sub_10036D4C4(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10036EC08(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11 & 1;
  *(a2 + 25) = BYTE1(v11) & 1;
  *(a2 + 26) = BYTE2(v11) & 1;
}

id sub_10036D530()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 24);
  if (*(v0 + 26))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_10036D568(*v0, *(v0 + 8), *(v0 + 16), v2 | v3);
}

id sub_10036D568(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  result = [objc_allocWithZone(_MRGroupSessionParticipantProtobuf) init];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    [v7 setIdentifier:v8];

    v9 = [a3 protobuf];
    [v7 setIdentity:v9];

    [v7 setConnected:a4 & 1];
    [v7 setGuest:(a4 >> 8) & 1];
    [v7 setHidden:HIWORD(a4) & 1];
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10036D674()
{
  if (*(v0 + 25))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 24);
  if (*(v0 + 26))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_10036D568(*v0, *(v0 + 8), *(v0 + 16), v2 | v3);
  v5 = [v4 data];

  if (v5)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_10036D71C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10036EA14(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  return result;
}

void sub_10036D748(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 participantIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    LOBYTE(v5) = [a1 approved];
    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v5;
  }

  else
  {
    __break(1u);
  }
}

id sub_10036D7CC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  result = [objc_allocWithZone(_MRGroupSessionJoinResponseMessageProtobuf) init];
  if (result)
  {
    v5 = result;
    v6 = String._bridgeToObjectiveC()();
    [v5 setParticipantIdentifier:v6];

    [v5 setApproved:v3];
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036D85C(uint64_t a1, uint64_t a2, char a3)
{
  result = [objc_allocWithZone(_MRGroupSessionJoinResponseMessageProtobuf) init];
  if (result)
  {
    v5 = result;
    v6 = String._bridgeToObjectiveC()();
    [v5 setParticipantIdentifier:v6];

    [v5 setApproved:a3 & 1];
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036D8FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_10036EB1C(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_10036D924(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 participantIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    __break(1u);
  }
}

id sub_10036D9B8(uint64_t a1, uint64_t a2, Class *a3, uint64_t (*a4)(uint64_t, uint64_t), SEL *a5)
{
  v8 = *v5;
  v9 = v5[1];
  result = [objc_allocWithZone(*a3) init];
  if (result)
  {
    v11 = result;
    v12 = a4(v8, v9);
    [v11 *a5];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036DA64(uint64_t a1, uint64_t a2, Class *a3, uint64_t (*a4)(uint64_t, uint64_t), SEL *a5)
{
  result = [objc_allocWithZone(*a3) init];
  if (result)
  {
    v10 = result;
    v11 = a4(a1, a2);
    [v10 *a5];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10036DB14(uint64_t a1, uint64_t a2, Class *a3, uint64_t (*a4)(uint64_t, uint64_t), SEL *a5)
{
  v9 = *v5;
  v8 = v5[1];
  v10 = [objc_allocWithZone(*a3) init];
  if (v10)
  {
    v11 = v10;
    v12 = a4(v9, v8);
    [v11 *a5];

    v13 = [v11 data];
    if (v13)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10036DBD8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 25) = BYTE1(a4) & 1;
  *(a9 + 26) = BYTE2(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = BYTE1(a8) & 1;
  *(a9 + 58) = BYTE2(a8) & 1;
  return result;
}

void sub_10036DC20(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 localParticipant];
  if (v4)
  {
    v5 = v4;
    sub_10036EC08(v4);
    v24 = v7;
    v25 = v6;
    v26 = v8;
    v10 = v9;

    v11 = [a1 leaderParticipant];
    if (v11)
    {
      v12 = v11;
      v13 = HIWORD(v10) & 1;
      v14 = (v10 >> 8) & 1;
      v15 = v10 & 1;
      sub_10036EC08(v11);
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      *a2 = v25;
      *(a2 + 8) = v24;
      *(a2 + 16) = v26;
      *(a2 + 24) = v15;
      *(a2 + 25) = v14;
      *(a2 + 26) = v13;
      *(a2 + 32) = v17;
      *(a2 + 40) = v19;
      *(a2 + 48) = v21;
      *(a2 + 56) = v23 & 1;
      *(a2 + 57) = BYTE1(v23) & 1;
      *(a2 + 58) = BYTE2(v23) & 1;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_10036DD28()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = *(v0 + 26);
  v21 = *(v0 + 40);
  v22 = *(v0 + 32);
  v20 = *(v0 + 48);
  v19 = *(v0 + 56);
  v7 = *(v0 + 57);
  v8 = *(v0 + 58);
  result = [objc_allocWithZone(_MRGroupSessionIdentityShareReplyMessageProtobuf) init];
  if (result)
  {
    v10 = result;
    if (v5)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 | v4;
    if (v6)
    {
      v13 = 0x10000;
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_10036D568(v1, v2, v3, v12 | v13);
    [v10 setLocalParticipant:v14];

    if (v7)
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 | v19;
    if (v8)
    {
      v17 = 0x10000;
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_10036D568(v22, v21, v20, v16 | v17);
    [v10 setLeaderParticipant:v18];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036DE58()
{
  result = [objc_allocWithZone(_MRGroupSessionIdentityShareReplyMessageProtobuf) init];
  if (result)
  {
    v2 = result;
    if (*(v0 + 25))
    {
      v3 = 256;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3 | *(v0 + 24);
    if (*(v0 + 26))
    {
      v5 = 0x10000;
    }

    else
    {
      v5 = 0;
    }

    v6 = sub_10036D568(*v0, *(v0 + 8), *(v0 + 16), v4 | v5);
    [v2 setLocalParticipant:v6];

    if (*(v0 + 57))
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 | *(v0 + 56);
    if (*(v0 + 58))
    {
      v9 = 0x10000;
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_10036D568(*(v0 + 32), *(v0 + 40), *(v0 + 48), v8 | v9);
    [v2 setLeaderParticipant:v10];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10036DF4C()
{
  v1 = *v0;
  v2 = v0[1];
  *v3 = v0[2];
  *&v3[11] = *(v0 + 43);
  sub_10036CE6C();
}

uint64_t sub_10036DF90@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_100018D7C(0, &qword_100528110, _MRGroupSessionMemberSyncMessageProtobuf_ptr);
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithData:isa];

  if (v8)
  {
    sub_10036EE18(v8);
    v8 = v9;
    v11 = v10;
    v13 = v12;
    result = sub_1001C4034(a1, a2);
  }

  else
  {
    result = sub_1001C4034(a1, a2);
    v11 = 0;
    v13 = 0;
  }

  *a3 = v8;
  a3[1] = v11;
  a3[2] = v13;
  return result;
}

void sub_10036E05C(void *a1@<X0>, void *a2@<X8>)
{
  sub_10036EE18(a1);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

char *sub_10036E094(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = [objc_allocWithZone(_MRGroupSessionMemberSyncMessageProtobuf) init];
  if (result)
  {
    v7 = result;
    v68 = a3;
    v8 = *(a1 + 16);
    v67 = result;
    if (v8)
    {
      v66 = a2;
      v71 = _swiftEmptyArrayStorage;
      sub_1001D382C(0, v8, 0);
      v9 = _swiftEmptyArrayStorage;
      v10 = (a1 + 58);
      while (1)
      {
        v11 = *(v10 - 26);
        v12 = *(v10 - 18);
        v13 = *(v10 - 10);
        v14 = *(v10 - 2);
        v15 = *(v10 - 1);
        v16 = *v10;
        v17 = objc_allocWithZone(_MRGroupSessionParticipantProtobuf);

        v18 = v13;
        result = [v17 init];
        if (!result)
        {
          break;
        }

        v19 = result;
        v20 = String._bridgeToObjectiveC()();
        [v19 setIdentifier:v20];

        v21 = [v18 protobuf];
        [v19 setIdentity:v21];

        [v19 setConnected:v14];
        [v19 setGuest:v15];
        [v19 setHidden:v16];
        v70 = sub_100018D7C(0, &qword_100527F78, _MRGroupSessionParticipantProtobuf_ptr);

        *&v69 = v19;
        v71 = v9;
        v23 = v9[2];
        v22 = v9[3];
        if (v23 >= v22 >> 1)
        {
          sub_1001D382C((v22 > 1), v23 + 1, 1);
          v9 = v71;
        }

        v9[2] = v23 + 1;
        sub_1001C4088(&v69, &v9[4 * v23 + 4]);
        v10 += 32;
        if (!--v8)
        {
          a2 = v66;
          v7 = v67;
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v24 = &kMRPlaybackQueueCapabilitiesChangedNotification_ptr;
      v25 = objc_allocWithZone(NSMutableArray);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v27 = &selRef_entitlements;
      v28 = [v25 initWithArray:isa];

      [v7 setParticipants:v28];
      v29 = *(a2 + 16);
      if (v29)
      {
        v71 = _swiftEmptyArrayStorage;
        sub_1001D382C(0, v29, 0);
        v30 = v71;
        v31 = (a2 + 58);
        while (1)
        {
          v32 = *(v31 - 26);
          v33 = *(v31 - 18);
          v34 = *(v31 - 10);
          v35 = *(v31 - 2);
          v36 = *(v31 - 1);
          v37 = *v31;
          v38 = objc_allocWithZone(_MRGroupSessionParticipantProtobuf);

          v39 = v34;
          result = [v38 init];
          if (!result)
          {
            goto LABEL_37;
          }

          v40 = result;
          v41 = String._bridgeToObjectiveC()();
          [v40 setIdentifier:v41];

          v42 = [v39 protobuf];
          [v40 setIdentity:v42];

          [v40 setConnected:v35];
          [v40 setGuest:v36];
          [v40 setHidden:v37];
          v70 = sub_100018D7C(0, &qword_100527F78, _MRGroupSessionParticipantProtobuf_ptr);

          *&v69 = v40;
          v71 = v30;
          v44 = v30[2];
          v43 = v30[3];
          if (v44 >= v43 >> 1)
          {
            sub_1001D382C((v43 > 1), v44 + 1, 1);
            v30 = v71;
          }

          v30[2] = v44 + 1;
          sub_1001C4088(&v69, &v30[4 * v44 + 4]);
          v31 += 32;
          if (!--v29)
          {
            v7 = v67;
            v24 = &kMRPlaybackQueueCapabilitiesChangedNotification_ptr;
            v27 = &selRef_entitlements;
            break;
          }
        }
      }

      v45 = objc_allocWithZone(NSMutableArray);
      v46 = Array._bridgeToObjectiveC()().super.isa;

      v47 = [v45 initWithArray:v46];

      [v7 setPendingParticipants:v47];
      v48 = v68;
      if (v68 >> 62)
      {
        goto LABEL_34;
      }

      for (i = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v65)
      {
        if (!i)
        {
LABEL_31:
          v61 = objc_allocWithZone(v24[191]);
          v62 = Array._bridgeToObjectiveC()().super.isa;

          v63 = [v61 v27[298]];

          [v7 setMembers:v63];
          return v7;
        }

        v50 = v48;
        v71 = _swiftEmptyArrayStorage;
        result = sub_1001D382C(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          break;
        }

        v51 = 0;
        v52 = v71;
        v53 = v50;
        v54 = v50 & 0xC000000000000001;
        v27 = (v50 & 0xFFFFFFFFFFFFFF8);
        v7 = &qword_100527F80;
        v24 = _MRUserIdentityProtobuf_ptr;
        while (1)
        {
          v55 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v54)
          {
            v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v51 >= v27[2])
            {
              goto LABEL_33;
            }

            v56 = *(v53 + 8 * v51 + 32);
          }

          v57 = v56;
          result = [v56 protobuf];
          if (!result)
          {
            goto LABEL_38;
          }

          v58 = result;
          v70 = sub_100018D7C(0, &qword_100527F80, _MRUserIdentityProtobuf_ptr);

          *&v69 = v58;
          v71 = v52;
          v60 = v52[2];
          v59 = v52[3];
          if (v60 >= v59 >> 1)
          {
            sub_1001D382C((v59 > 1), v60 + 1, 1);
            v52 = v71;
          }

          v52[2] = v60 + 1;
          sub_1001C4088(&v69, &v52[4 * v60 + 4]);
          ++v51;
          v53 = v68;
          if (v55 == i)
          {
            v7 = v67;
            v24 = &kMRPlaybackQueueCapabilitiesChangedNotification_ptr;
            v27 = &selRef_entitlements;
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v64 = v48;
        v65 = _CocoaArrayWrapper.endIndex.getter();
        v48 = v64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10036E6EC()
{
  v1 = sub_10036E094(*v0, *(v0 + 8), *(v0 + 16));
  v2 = [v1 data];

  if (v2)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10036E760@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10036ED14(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_10036E788(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 errorMessage];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

id sub_10036E800()
{
  v2 = *v0;
  v1 = v0[1];
  result = [objc_allocWithZone(_MRGroupSessionErrorReplyMessageProtobuf) init];
  if (result)
  {
    v4 = result;
    if (v1)
    {
      v5 = String._bridgeToObjectiveC()();
    }

    else
    {
      v5 = 0;
    }

    [v4 setErrorMessage:v5];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036E884(uint64_t a1, NSString a2)
{
  result = [objc_allocWithZone(_MRGroupSessionErrorReplyMessageProtobuf) init];
  if (result)
  {
    v4 = result;
    if (a2)
    {
      a2 = String._bridgeToObjectiveC()();
    }

    [v4 setErrorMessage:a2];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10036E90C(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

void sub_10036E91C(uint64_t a1, unint64_t a2)
{
  sub_100018D7C(0, &qword_100528130, _MRGroupSessionIdentityShareMessageProtobuf_ptr);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  if (v6)
  {
    v7 = [v6 identity];
    v8 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v7];

    if (v8)
    {
      sub_1001C4034(a1, a2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1001C4034(a1, a2);
  }
}

id sub_10036EA14(uint64_t a1, unint64_t a2)
{
  sub_100018D7C(0, &qword_100528128, _MRGroupSessionJoinResponseMessageProtobuf_ptr);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  if (!v6)
  {
    sub_1001C4034(a1, a2);
    return 0;
  }

  result = [v6 participantIdentifier];
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    [v6 approved];
    sub_1001C4034(a1, a2);

    return v9;
  }

  __break(1u);
  return result;
}

id sub_10036EB1C(uint64_t a1, unint64_t a2)
{
  sub_100018D7C(0, &qword_100528120, _MRGroupSessionRemoveRequestProtobuf_ptr);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  if (!v6)
  {
    sub_1001C4034(a1, a2);
    return 0;
  }

  result = [v6 participantIdentifier];
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001C4034(a1, a2);

    return v9;
  }

  __break(1u);
  return result;
}

void sub_10036EC08(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = [a1 identity];
    v5 = [objc_allocWithZone(MRUserIdentity) initWithProtobuf:v4];

    if (v5)
    {
      [a1 connected];
      [a1 guest];
      [a1 hidden];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10036ED14(uint64_t a1, unint64_t a2)
{
  sub_100018D7C(0, &qword_100528108, _MRGroupSessionErrorReplyMessageProtobuf_ptr);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  if (v6)
  {
    v7 = [v6 errorMessage];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1001C4034(a1, a2);

      return v9;
    }

    else
    {
      sub_1001C4034(a1, a2);

      return 0;
    }
  }

  else
  {
    sub_1001C4034(a1, a2);
    return 0;
  }
}

void sub_10036EE18(void *a1)
{
  if ([a1 participants])
  {
    sub_100018D7C(0, &qword_100527F78, _MRGroupSessionParticipantProtobuf_ptr);
    static Array._forceBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
}

uint64_t getEnumTagSinglePayload for FastSyncMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FastSyncMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10036F648(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && a1[24])
  {
    return (*a1 + 246);
  }

  v3 = *a1;
  v4 = v3 >= 0xB;
  v5 = v3 - 11;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10036F68C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 10;
    }
  }

  return result;
}

uint64_t sub_10036F6E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10036F734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_10036F7A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_10036F7B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_10036F7FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10036F854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10036F89C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10036F8EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10036F934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10036F980(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10036F99C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
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

uint64_t sub_10036F9E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
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

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10036FA48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10036FA90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10036FAE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_10036FB3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10036FBA0()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100535DE8);
  sub_100015AFC(v0, qword_100535DE8);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

uint64_t sub_10036FBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10037778C();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

uint64_t *sub_10036FC48@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_10036FC64(uint64_t a1)
{
  v2 = sub_10037778C();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_10036FCA0(uint64_t a1)
{
  v2 = sub_10037778C();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_10036FCF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10037778C();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

BOOL sub_10036FD5C(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

BOOL sub_10036FD9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

void sub_10036FDDC()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100535DE8);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315650;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10002C9C8(v1[2], v1[3], &v14);
    *(v5 + 22) = 2080;
    swift_beginAccess();
    v13 = *(v1 + 48);
    v9 = String.init<A>(describing:)();
    v11 = sub_10002C9C8(v9, v10, &v14);

    *(v5 + 24) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "[%s]<%{public}s> Updated transportType: %s", v5, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100370038(char a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1 & 1;
  sub_10036FDDC();
}

uint64_t (*sub_100370080(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003700D4;
}

void sub_1003700EC()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100535DE8);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315650;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_10002C9C8(v1[2], v1[3], &v14);
    *(v5 + 22) = 2080;
    swift_beginAccess();
    v13 = *(v1 + 49);
    v9 = String.init<A>(describing:)();
    v11 = sub_10002C9C8(v9, v10, &v14);

    *(v5 + 24) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "[%s]<%{public}s> Updated state: %s", v5, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100370348(char a1)
{
  swift_beginAccess();
  *(v1 + 49) = a1;
  sub_1003700EC();
}

uint64_t (*sub_10037038C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003703E0;
}

uint64_t sub_1003703F8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    return a3(result);
  }

  return result;
}

uint64_t sub_1003704C8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_10037058C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_10037061C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 48) = 512;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 56) = &_swiftEmptyDictionarySingleton;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 88) = a6;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  return v11;
}

void sub_1003706B8(uint64_t a1)
{
  sub_100020E0C(a1, v17);
  if (swift_dynamicCast())
  {
    v3 = v18[0];
    swift_unknownObjectUnownedLoadStrong();
    v4 = *(v1 + 88);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v1, v3, *(&v3 + 1), ObjectType, v4);
    swift_unknownObjectRelease();
    sub_1001C4034(v3, *(&v3 + 1));
    return;
  }

  sub_100020E0C(a1, v17);
  v6 = sub_1001BC5A8(&qword_1005229E0, &qword_10045A7D0);
  if (swift_dynamicCast())
  {
    v7 = *&v18[0];
    v8 = sub_10036C490();
    v9 = *(v8 + 1);
    *&v18[0] = *v8;
    *(&v18[0] + 1) = v9;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    if (*(v7 + 16))
    {
      v10 = v1;
      v11 = sub_10001BF64(v17);
      v13 = v12;

      if (v13)
      {
        sub_100020E0C(*(v7 + 56) + 32 * v11, v16);
        sub_10001BF10(v17);
        sub_1001C4088(v16, v18);
        swift_dynamicCast();
        v17[3] = v6;
        v17[0] = v7;
        v14 = (*(*v10 + 208))(v18);
        sub_1003708DC(v17, v15);
        v14(v18, 0);
        sub_1003709C0();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

_OWORD *sub_1003708DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1001C4088(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_100376700(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_100037768(a1);
    v8 = *v2;
    v9 = sub_100375A54(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_100376B20();
        v14 = v16;
      }

      sub_1001C4088((*(v14 + 56) + 32 * v11), v17);
      sub_1003763B0(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_100037768(v17);
  }

  return result;
}

void sub_1003709C0()
{
  v1 = v0;
  v2 = *(*v0 + 240);
  v3 = v2();
  v4 = *(*v0 + 192);
  v5 = v4();
  if (*(v5 + 16))
  {
    v6 = sub_100375A54(v3);
    if (v7)
    {
      sub_100020E0C(*(v5 + 56) + 32 * v6, v42);

      v9 = (v2)(v8);
      memset(v40, 0, sizeof(v40));
      v10 = (*(*v1 + 208))(v41);
      sub_1003708DC(v40, v9);
      v10(v41, 0);
      sub_100020E0C(v42, v40);
      sub_1001BC5A8(&qword_1005229E0, &qword_10045A7D0);
      swift_dynamicCast();
      v11 = *&v41[0];
      v12 = sub_10036C484();
      v13 = *(v12 + 1);
      *&v41[0] = *v12;
      *(&v41[0] + 1) = v13;
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      if (*(v11 + 16))
      {
        v14 = sub_10001BF64(v40);
        v16 = v15;

        if (v16)
        {
          sub_100020E0C(*(v11 + 56) + 32 * v14, v39);
          sub_10001BF10(v40);

          sub_1001C4088(v39, v41);
          swift_dynamicCast();
          swift_unknownObjectUnownedLoadStrong();
          v17 = v1[11];
          ObjectType = swift_getObjectType();
          (*(v17 + 8))(v1, v37, v38, ObjectType, v17);
          swift_unknownObjectRelease();
          v19 = (*(*v1 + 256))(v40);
          if (!__OFADD__(*v20, 1))
          {
            ++*v20;
            v21 = v19(v40, 0);
            v22 = *((v4)(v21) + 16);

            if (v22)
            {
              sub_1003709C0(v23);
              sub_1001C4034(v37, v38);
              sub_100026A44(v42);
            }

            else
            {
              sub_100026A44(v42);
              sub_1001C4034(v37, v38);
            }

            return;
          }

LABEL_16:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100015AFC(v24, qword_100535DE8);
  swift_retain_n();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *&v40[0] = swift_slowAlloc();
    *v27 = 136315906;
    v28 = _typeName(_:qualified:)();
    v30 = sub_10002C9C8(v28, v29, v40);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_10002C9C8(v1[2], v1[3], v40);
    *(v27 + 22) = 2050;
    v31 = v2();

    *(v27 + 24) = v31;

    *(v27 + 32) = 2082;
    (v4)(v32);
    v33 = Dictionary.Keys.description.getter();
    v35 = v34;

    v36 = sub_10002C9C8(v33, v35, v40);

    *(v27 + 34) = v36;
    _os_log_impl(&_mh_execute_header, v25, v26, "[%s]<%{public}s> still waiting for message: %{public}ld with reordered messages %{public}s", v27, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100370F14()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100535DE8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_10002C9C8(v7, v8, &v12);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_10002C9C8(v1[2], v1[3], &v12);
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s]<%s> resetting state.", v6, 0x16u);
    swift_arrayDestroy();
  }

  (*(*v1 + 224))(0);
  v10 = *(*v1 + 248);

  return v10(0);
}

uint64_t sub_100371124()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return String.hash(into:)();
}

uint64_t sub_10037112C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  sub_100044EC4((v0 + 10));

  return swift_deallocClassInstance();
}

Swift::Int sub_10037117C()
{
  Hasher.init(_seed:)();
  (*(*v0 + 320))(v2);
  return Hasher._finalize()();
}

uint64_t sub_1003711E4(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_1003712A8()
{
  Hasher.init(_seed:)();
  (*(**v0 + 320))(v2);
  return Hasher._finalize()();
}

void *sub_100371310(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();

  return sub_100376F88(a1, a2, a4, v4, ObjectType, a3);
}

uint64_t sub_10037137C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  swift_beginAccess();
  if (!*(*(v3 + 40) + 16) || (, sub_100375A98(a3), v10 = v9, , (v10 & 1) == 0))
  {
    swift_beginAccess();

    sub_1001C3FE0(a1, a2);
    v21 = *(v3 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    sub_10037682C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 40) = v24;
    return swift_endAccess();
  }

  swift_beginAccess();
  v11 = *(v3 + 40);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + 40);
  v26 = *(v5 + 40);
  *(v5 + 40) = 0x8000000000000000;
  v15 = sub_100375A98(a3);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
LABEL_15:
    sub_100376C9C();
    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v4 = v14;
  if (*(v13 + 24) >= v18)
  {
    if (v12)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  sub_100375E44(v18, v12);
  v19 = sub_100375A98(a3);
  if ((v4 & 1) == (v20 & 1))
  {
    v15 = v19;
    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    v25 = *(*(v26 + 56) + 16 * v15);
    if (*(&v25 + 1) >> 60 != 15)
    {
      Data.append(_:)();
      *(*(v26 + 56) + 16 * v15) = v25;
      sub_1001E5270(v25, *(&v25 + 1));
      sub_100045968(v25, *(&v25 + 1));
      *(v5 + 40) = v26;
      return swift_endAccess();
    }

LABEL_16:
    __break(1u);
  }

  type metadata accessor for ConnectedParticipant();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003715CC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (*(v3 + 16))
  {

    v4 = sub_100375A98(a1);
    if (v5)
    {
      v6 = *(v3 + 56) + 16 * v4;
      v7 = *v6;
      sub_1001C3FE0(*v6, *(v6 + 8));

      swift_beginAccess();

      sub_100375B2C(v8, &v10);

      sub_100045968(v10, *(&v10 + 1));
      swift_endAccess();
      return v7;
    }
  }

  return 0;
}

uint64_t sub_1003716B8()
{
  sub_100044EC4(v0 + 24);
  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_100371708()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_100371740(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void sub_100371788()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100535DE8);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    swift_beginAccess();
    v13 = *(v1 + 64);
    v9 = String.init<A>(describing:)();
    v11 = sub_10002C9C8(v9, v10, &v14);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "[%s] Updated transportType: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1003719CC(char a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1 & 1;
  sub_100371788();
}

void sub_100371A14()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100535DE8);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v14);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    swift_beginAccess();
    v13 = *(v1 + 65);
    v9 = String.init<A>(describing:)();
    v11 = sub_10002C9C8(v9, v10, &v14);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "[%s] Updated state: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100371C58(char a1)
{
  swift_beginAccess();
  *(v1 + 65) = a1;
  sub_100371A14();
}

uint64_t sub_100371C9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = swift_allocObject();
  *(v11 + 48) = a2;
  *(v11 + 56) = &_swiftEmptyDictionarySingleton;
  *(v11 + 64) = 512;
  *(v11 + 72) = xmmword_10045A7C0;
  *(v11 + 88) = xmmword_10045A7C0;
  *(v11 + 104) = 0;
  *(v11 + 40) = a1;
  *(v11 + 24) = a5;
  swift_unknownObjectUnownedInit();
  *(v11 + 32) = a6;
  type metadata accessor for GroupSessionRemoteControlConnectionPushScheduler();
  v12 = swift_allocObject();
  v13 = a6;

  v14 = sub_100377000(a3, v11, v13, v12);
  swift_unknownObjectRelease();
  v15 = *(v11 + 104);
  *(v11 + 104) = v14;

  return v11;
}

void (*sub_100371D90(uint64_t a1, uint64_t a2))(uint64_t *, void)
{
  v3 = a2;
  v32 = *v2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v33 = v3;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = *(*(v3 + 48) + 8 * v12);
      v14 = (*(v3 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];

      v35 = v16;
      v36 = v15;
      sub_1001C3FE0(v15, v16);
      if (qword_100535DE0 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100015AFC(v17, qword_100535DE8);
      swift_retain_n();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v37[0] = swift_slowAlloc();
        *v20 = 136315650;
        v21 = _typeName(_:qualified:)();
        v23 = sub_10002C9C8(v21, v22, v37);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2050;
        v25 = (*(*v13 + 216))(v24);

        *(v20 + 14) = v25;

        *(v20 + 22) = 2082;
        v26 = v13[2];
        v27 = v13[3];

        v28 = sub_10002C9C8(v26, v27, v37);

        *(v20 + 24) = v28;
        _os_log_impl(&_mh_execute_header, v18, v19, "[%s] Send scheduled message: %{public}ld to: %{public}s", v20, 0x20u);
        swift_arrayDestroy();

        v3 = v33;
      }

      else
      {
      }

      swift_unknownObjectUnownedLoadStrong();
      v29 = *(v34 + 24);
      ObjectType = swift_getObjectType();
      (*(v29 + 16))(v34, v36, v35, v13, 1, ObjectType, v29);
      swift_unknownObjectRelease();
      result = (*(*v13 + 232))(v37);
      if (__OFADD__(*v31, 1))
      {
        break;
      }

      v7 &= v7 - 1;
      ++*v31;
      result(v37, 0);
      sub_1001C4034(v36, v35);

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100372154(uint64_t a1)
{
  v2 = v1;
  v99 = *(*v1 + 200);
  v4 = v99();
  v5 = sub_1001BDDB0(v4);

  v7 = sub_1001BDDB0(v6);
  if (sub_100218144(v5, v7))
  {

    return;
  }

  v8 = v5 + 56;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v100 = v2;
  v98 = a1;
  v96 = v5;
  if (!v11)
  {
    while (1)
    {
LABEL_11:
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_60;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v16);
      ++v13;
      if (v11)
      {
        v13 = v16;
        goto LABEL_15;
      }
    }

    v48 = a1 + 64;
    v49 = 1 << *(a1 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & *(a1 + 64);
    v52 = (v49 + 63) >> 6;

    v53 = 0;
    if (!v51)
    {
LABEL_37:
      while (1)
      {
        v56 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v56 >= v52)
        {

          if (qword_100535DE0 != -1)
          {
            goto LABEL_65;
          }

          goto LABEL_56;
        }

        v51 = *(v48 + 8 * v56);
        ++v53;
        if (v51)
        {
          v53 = v56;
          goto LABEL_41;
        }
      }

LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      swift_once();
LABEL_56:
      v84 = type metadata accessor for Logger();
      sub_100015AFC(v84, qword_100535DE8);

      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v101[0] = swift_slowAlloc();
        *v87 = 136315394;
        v88 = _typeName(_:qualified:)();
        v90 = sub_10002C9C8(v88, v89, v101);

        *(v87 + 4) = v90;
        *(v87 + 12) = 2082;
        (v99)(v91);
        type metadata accessor for ConnectedParticipant();
        v92 = Dictionary.description.getter();
        v94 = v93;

        v95 = sub_10002C9C8(v92, v94, v101);

        *(v87 + 14) = v95;
        _os_log_impl(&_mh_execute_header, v85, v86, "[%s] Updated participants: %{public}s", v87, 0x16u);
        swift_arrayDestroy();
      }

      return;
    }

    while (1)
    {
LABEL_41:
      while (1)
      {
        v57 = __clz(__rbit64(v51));
        v51 &= v51 - 1;
        v58 = (v53 << 10) | (16 * v57);
        v59 = (*(a1 + 48) + v58);
        v61 = *v59;
        v60 = v59[1];
        v62 = (*(a1 + 56) + v58);
        v64 = *v62;
        v63 = v62[1];

        if (!*((v99)(v65) + 16))
        {
          break;
        }

        sub_10000698C(v61, v60);
        if ((v66 & 1) == 0)
        {
          break;
        }

        if (!v51)
        {
          goto LABEL_37;
        }
      }

      type metadata accessor for ConnectedParticipant();
      v67 = swift_allocObject();
      *(v67 + 48) = 512;
      *(v67 + 72) = 0;
      *(v67 + 56) = &_swiftEmptyDictionarySingleton;
      *(v67 + 64) = 0;
      *(v67 + 32) = v64;
      *(v67 + 40) = v63;
      *(v67 + 16) = v61;
      *(v67 + 24) = v60;
      *(v67 + 88) = &off_1004CFEC0;
      swift_unknownObjectUnownedInit();
      swift_beginAccess();

      v68 = *(v100 + 56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = *(v100 + 56);
      *(v100 + 56) = 0x8000000000000000;
      v71 = sub_10000698C(v61, v60);
      v73 = v70[2];
      v74 = (v72 & 1) == 0;
      v75 = __OFADD__(v73, v74);
      v76 = v73 + v74;
      if (v75)
      {
        goto LABEL_63;
      }

      v77 = v72;
      if (v70[3] < v76)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_50;
      }

      v83 = v71;
      sub_100376E18();
      v71 = v83;
      v79 = v70;
      if (v77)
      {
LABEL_35:
        v54 = v79[7];
        v55 = *(v54 + 8 * v71);
        *(v54 + 8 * v71) = v67;

        goto LABEL_36;
      }

LABEL_51:
      v79[(v71 >> 6) + 8] |= 1 << v71;
      v80 = (v79[6] + 16 * v71);
      *v80 = v61;
      v80[1] = v60;
      *(v79[7] + 8 * v71) = v67;
      v81 = v79[2];
      v75 = __OFADD__(v81, 1);
      v82 = v81 + 1;
      if (v75)
      {
        goto LABEL_64;
      }

      v79[2] = v82;
LABEL_36:
      *(v100 + 56) = v79;
      swift_endAccess();
      a1 = v98;
      if (!v51)
      {
        goto LABEL_37;
      }
    }

    sub_100376108(v76, isUniquelyReferenced_nonNull_native);
    v71 = sub_10000698C(v61, v60);
    if ((v77 & 1) != (v78 & 1))
    {
      goto LABEL_67;
    }

LABEL_50:
    v79 = v70;
    if (v77)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

  while (1)
  {
LABEL_15:
    while (1)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v18 = (*(v5 + 48) + ((v13 << 10) | (16 * v17)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(a1 + 16);

      if (!v21)
      {
        break;
      }

      sub_10000698C(v19, v20);
      if ((v22 & 1) == 0)
      {
        break;
      }

      if (!v11)
      {
        goto LABEL_11;
      }
    }

    v23 = *(v2 + 104);
    if (!v23)
    {
      break;
    }

    v24 = *(v2 + 104);

    v26 = (v99)(v25);
    if (!*(v26 + 16))
    {
      goto LABEL_61;
    }

    v27 = v26;
    v28 = sub_10000698C(v19, v20);
    if ((v29 & 1) == 0)
    {
      goto LABEL_62;
    }

    v97 = v19;
    v30 = *(*(v27 + 56) + 8 * v28);

    v31 = (*(*v23 + 224))(v30);
    v33 = v32;

    v34 = v33;
    v5 = v96;
    if (v34 >> 60 != 15)
    {
      sub_100045968(v31, v34);
      if (qword_100535DE0 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100015AFC(v35, qword_100535DE8);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v101[0] = swift_slowAlloc();
        *v38 = 136315394;
        v39 = _typeName(_:qualified:)();
        v41 = sub_10002C9C8(v39, v40, v101);
        v2 = v100;

        *(v38 + 4) = v41;
        v5 = v96;
        *(v38 + 12) = 2082;
        *(v38 + 14) = sub_10002C9C8(v97, v20, v101);
        _os_log_impl(&_mh_execute_header, v36, v37, "[%s] remove enqueued messages for removed participant: %{public}s", v38, 0x16u);
        swift_arrayDestroy();
      }
    }

    swift_beginAccess();
    v42 = *(v2 + 56);
    v43 = sub_10000698C(v97, v20);
    LOBYTE(v42) = v44;

    if (v42)
    {
      v45 = *(v2 + 56);
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v47 = *(v2 + 56);
      *(v2 + 56) = 0x8000000000000000;
      if (!v46)
      {
        sub_100376E18();
      }

      v14 = *(*(v47 + 48) + 16 * v43 + 8);

      v15 = *(*(v47 + 56) + 8 * v43);

      sub_1001DEE44(v43, v47);
      *(v2 + 56) = v47;
    }

    swift_endAccess();
    a1 = v98;
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_67:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100372A54(char a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = v3[5] == a2 && v3[6] == a3;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100372D34(a1 & 1);
  }

  else
  {
    v9 = (*(*v3 + 200))();
    if (*(v9 + 16) && (v10 = sub_10000698C(a2, a3), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      sub_1003733C8(a1 & 1, v12);
    }

    else
    {

      if (qword_100535DE0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100015AFC(v13, qword_100535DE8);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v16 = 136315650;
        v17 = _typeName(_:qualified:)();
        v19 = sub_10002C9C8(v17, v18, &v21);

        *(v16 + 4) = v19;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_10002C9C8(0xD00000000000001ELL, 0x8000000100443060, &v21);
        *(v16 + 22) = 2082;
        *(v16 + 24) = sub_10002C9C8(a2, a3, &v21);
        _os_log_impl(&_mh_execute_header, v14, v15, "[%s] %s Could not find participant: %{public}s.", v16, 0x20u);
        swift_arrayDestroy();
      }

      sub_100377358();
      swift_allocError();
      *v20 = 1;
      swift_willThrow();
    }
  }
}

void sub_100372D34(int a1)
{
  v2 = v1;
  v3 = a1;
  if ((((*(*v1 + 224))() ^ a1) & 1) == 0)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100015AFC(v4, qword_100535DE8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v46[0] = swift_slowAlloc();
      *v7 = 136315650;
      v8 = _typeName(_:qualified:)();
      v10 = sub_10002C9C8(v8, v9, v46);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_10002C9C8(0xD000000000000014, 0x8000000100443320, v46);
      *(v7 + 22) = 2080;
      LOBYTE(v45) = v3 & 1;
      v11 = String.init<A>(describing:)();
      v13 = sub_10002C9C8(v11, v12, v46);

      *(v7 + 24) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%s] %s Cannot transition to same transport type: %s.", v7, 0x20u);
      swift_arrayDestroy();
    }

    sub_100377358();
    swift_allocError();
    v15 = 0;
LABEL_15:
    *v14 = v15;
    swift_willThrow();
    return;
  }

  v16 = (*(*v1 + 200))();
  sub_1002FD8A8(v16);
  v18 = v17;
  v20 = v19;

  if (!v18)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100015AFC(v21, qword_100535DE8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v46[0] = swift_slowAlloc();
      *v24 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = sub_10002C9C8(v25, v26, v46);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_10002C9C8(0xD000000000000014, 0x8000000100443320, v46);
      _os_log_impl(&_mh_execute_header, v22, v23, "[%s] %s Could not find host participant.", v24, 0x16u);
      swift_arrayDestroy();
    }

    sub_100377358();
    swift_allocError();
    v15 = 1;
    goto LABEL_15;
  }

  swift_beginAccess();
  *(v2 + 65) = v3 & 1;
  sub_100371A14();
  if (v3)
  {
    (*(*v20 + 312))();
LABEL_26:

    return;
  }

  v28 = *(v2 + 104);
  if (v28)
  {
    v29 = *(*v28 + 224);
    v30 = *(v2 + 104);

    v31 = v29(v20);
    v33 = v32;

    if (v33 >> 60 == 15)
    {
      goto LABEL_26;
    }

    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100015AFC(v34, qword_100535DE8);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      buf = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v45 = v47;
      *buf = 136315138;
      v37 = _typeName(_:qualified:)();
      v39 = v31;
      v40 = v33;
      v41 = sub_10002C9C8(v37, v38, &v45);

      *(buf + 4) = v41;
      v33 = v40;
      v31 = v39;
      _os_log_impl(&_mh_execute_header, v35, v36, "[%s] Moving enqueued messages to transition buffer.", buf, 0xCu);
      sub_100026A44(v47);
    }

    swift_beginAccess();
    if (*(v2 + 80) >> 60 == 15)
    {

      v42 = *(v2 + 72);
      v43 = *(v2 + 80);
      *(v2 + 72) = v31;
      *(v2 + 80) = v33;
      sub_100045968(v42, v43);
      return;
    }

    swift_beginAccess();
    if (*(v2 + 80) >> 60 != 15)
    {
      Data.append(_:)();
      swift_endAccess();
      sub_100045968(v31, v33);
      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1003733C8(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*(*a2 + 168))() != 2)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100015AFC(v15, qword_100535DE8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v10 = 136315394;
    v16 = _typeName(_:qualified:)();
    v18 = sub_10002C9C8(v16, v17, &v37);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10002C9C8(0xD000000000000018, 0x8000000100443340, &v37);
    v14 = "[%s] %s Cannot begin transition while already transitioning.";
    goto LABEL_11;
  }

  if ((((*(*a2 + 144))() ^ a1) & 1) == 0)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100015AFC(v7, qword_100535DE8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_10002C9C8(v11, v12, &v37);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10002C9C8(0xD000000000000018, 0x8000000100443340, &v37);
    v14 = "[%s] %s Cannot transition to current transport type.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v8, v9, v14, v10, 0x16u);
    swift_arrayDestroy();

LABEL_12:

    sub_100377358();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  result = (*(*a2 + 176))(a1 & 1);
  if (a1)
  {
    return (*(*a2 + 312))(result);
  }

  v21 = v2[13];
  if (v21)
  {
    v22 = *(*v21 + 224);
    v23 = v3[13];

    v24 = v22(a2);
    v26 = v25;

    if (v26 >> 60 != 15)
    {
      if (qword_100535DE0 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100015AFC(v27, qword_100535DE8);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v36 = v29;
        v30 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v30 = 136315394;
        v31 = _typeName(_:qualified:)();
        v33 = sub_10002C9C8(v31, v32, &v37);

        *(v30 + 4) = v33;
        *(v30 + 12) = 2082;
        *(v30 + 14) = sub_10002C9C8(*(a2 + 16), *(a2 + 24), &v37);
        _os_log_impl(&_mh_execute_header, v28, v36, "[%s] Immediately sending scheduled messages for %{public}s.", v30, 0x16u);
        swift_arrayDestroy();
      }

      swift_unknownObjectUnownedLoadStrong();
      v34 = v3[3];
      ObjectType = swift_getObjectType();
      (*(v34 + 16))(v3, v24, v26, a2, 0, ObjectType, v34);
      swift_unknownObjectRelease();
      return sub_100045968(v24, v26);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100373990(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = v3[5] == a2 && v3[6] == a3;
  if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return sub_100373C3C(a1 & 1);
  }

  v10 = (*(*v3 + 200))();
  if (*(v10 + 16) && (v11 = sub_10000698C(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);

    sub_100374124(a1 & 1, v13);
  }

  else
  {

    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100015AFC(v14, qword_100535DE8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v17 = 136315394;
      v18 = _typeName(_:qualified:)();
      v20 = sub_10002C9C8(v18, v19, &v22);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_10002C9C8(0xD00000000000001CLL, 0x8000000100443080, &v22);
      _os_log_impl(&_mh_execute_header, v15, v16, "[%s] %s Could not find host participant.", v17, 0x16u);
      swift_arrayDestroy();
    }

    sub_100377358();
    swift_allocError();
    *v21 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100373C3C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *(*v1 + 248);
  v5 = v4();
  if (v5 == 2 || ((v5 ^ a1) & 1) != 0)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100015AFC(v12, qword_100535DE8);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v35[0] = v36;
      *v15 = 136315906;
      v16 = _typeName(_:qualified:)();
      v18 = sub_10002C9C8(v16, v17, v35);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_10002C9C8(0xD000000000000012, 0x80000001004432E0, v35);
      *(v15 + 22) = 2080;
      v19 = String.init<A>(describing:)();
      v21 = sub_10002C9C8(v19, v20, v35);

      *(v15 + 24) = v21;
      *(v15 + 32) = 2080;
      (v4)(v22);
      v23 = String.init<A>(describing:)();
      v25 = sub_10002C9C8(v23, v24, v35);

      *(v15 + 34) = v25;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%s] %s Cannot end transition to: %s in state: %s.", v15, 0x2Au);
      swift_arrayDestroy();
    }

    sub_100377358();
    swift_allocError();
    v27 = 0;
  }

  else
  {
    v6 = (*(*v1 + 200))();
    sub_1002FD8A8(v6);
    v8 = v7;
    v10 = v9;

    if (v8)
    {

      swift_beginAccess();
      *(v2 + 65) = 2;
      sub_100371A14();
      swift_beginAccess();
      *(v2 + 64) = a1 & 1;
      sub_100371788();
      sub_100374A78(v10);
    }

    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100015AFC(v28, qword_100535DE8);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v35[0] = swift_slowAlloc();
      *v31 = 136315394;
      v32 = _typeName(_:qualified:)();
      v34 = sub_10002C9C8(v32, v33, v35);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_10002C9C8(0xD000000000000012, 0x80000001004432E0, v35);
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] %s Could not find host participant.", v31, 0x16u);
      swift_arrayDestroy();
    }

    sub_100377358();
    swift_allocError();
    v27 = 1;
  }

  *v26 = v27;
  return swift_willThrow();
}

uint64_t sub_100374124(unsigned __int8 a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (*(*a2 + 168))();
  if (v6 == 2 || ((v6 ^ a1) & 1) != 0)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100015AFC(v8, qword_100535DE8);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v11 = 136315906;
      v12 = _typeName(_:qualified:)();
      v14 = sub_10002C9C8(v12, v13, &v22);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_10002C9C8(0xD000000000000016, 0x8000000100443300, &v22);
      *(v11 + 22) = 2080;
      v15 = String.init<A>(describing:)();
      v17 = sub_10002C9C8(v15, v16, &v22);

      *(v11 + 24) = v17;
      *(v11 + 32) = 2080;
      type metadata accessor for ConnectedParticipant();

      v18 = String.init<A>(describing:)();
      v20 = sub_10002C9C8(v18, v19, &v22);

      *(v11 + 34) = v20;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%s] %s Cannot end transition to: %s for participant: %s.", v11, 0x2Au);
      swift_arrayDestroy();
    }

    sub_100377358();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }

  else
  {
    (*(*a2 + 176))(2);
    return (*(*a2 + 152))(a1 & 1);
  }
}

uint64_t sub_100374434(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  if (v3[5] != a2 || v3[6] != a3)
  {
    v8 = v3[5];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (qword_100535DE0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100015AFC(v31, qword_100535DE8);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v47[0] = swift_slowAlloc();
        *v34 = 136315394;
        v35 = _typeName(_:qualified:)();
        v37 = sub_10002C9C8(v35, v36, v47);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2080;
        *(v34 + 14) = sub_10002C9C8(0xD00000000000001FLL, 0x80000001004430A0, v47);
        _os_log_impl(&_mh_execute_header, v32, v33, "[%s] %s Should not cancel transition for another participant.", v34, 0x16u);
        swift_arrayDestroy();
      }

      goto LABEL_21;
    }

    v6 = *v3;
  }

  v9 = *(v6 + 248);
  v10 = v9();
  if (v10 == 2 || ((v10 ^ a1) & 1) != 0)
  {
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100015AFC(v17, qword_100535DE8);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v47[0] = swift_slowAlloc();
      *v20 = 136315906;
      v21 = _typeName(_:qualified:)();
      v23 = sub_10002C9C8(v21, v22, v47);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_10002C9C8(0xD00000000000001FLL, 0x80000001004430A0, v47);
      *(v20 + 22) = 2080;
      v48 = a1 & 1;
      v24 = String.init<A>(describing:)();
      v26 = sub_10002C9C8(v24, v25, v47);

      *(v20 + 24) = v26;
      *(v20 + 32) = 2080;
      v48 = (v9)(v27);
      v28 = String.init<A>(describing:)();
      v30 = sub_10002C9C8(v28, v29, v47);

      *(v20 + 34) = v30;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%s] %s Cannot cancel transition to: %s in state: %s.", v20, 0x2Au);
      swift_arrayDestroy();
    }

LABEL_21:
    sub_100377358();
    swift_allocError();
    v39 = 0;
    goto LABEL_22;
  }

  v11 = (*(*v3 + 200))();
  sub_1002FD8A8(v11);
  v13 = v12;
  v15 = v14;

  if (v13)
  {

    swift_beginAccess();
    *(v4 + 65) = 2;
    sub_100371A14();
    sub_100374A78(v15);
  }

  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100015AFC(v40, qword_100535DE8);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v43 = 136315394;
    v44 = _typeName(_:qualified:)();
    v46 = sub_10002C9C8(v44, v45, v47);

    *(v43 + 4) = v46;
    *(v43 + 12) = 2080;
    *(v43 + 14) = sub_10002C9C8(0xD00000000000001FLL, 0x80000001004430A0, v47);
    _os_log_impl(&_mh_execute_header, v41, v42, "[%s] %s Could not find host participant.", v43, 0x16u);
    swift_arrayDestroy();
  }

  sub_100377358();
  swift_allocError();
  v39 = 1;
LABEL_22:
  *v38 = v39;
  return swift_willThrow();
}

uint64_t sub_100374A78(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  v5 = v1[11];
  v6 = v1[12];
  if (v6 >> 60 != 15)
  {
    v28 = v1[11];
    v29 = v1[12];
    sub_1001C3FE0(v5, v6);
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100015AFC(v7, qword_100535DE8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136315138;
      v12 = _typeName(_:qualified:)();
      v14 = sub_10002C9C8(v12, v13, &v31);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%s] Flushing incoming message buffer.", v10, 0xCu);
      sub_100026A44(v11);
    }

    swift_unknownObjectUnownedLoadStrong();
    v15 = v2[3];
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(v2, v28, v29, a1, ObjectType, v15);
    swift_unknownObjectRelease();
    sub_100045968(v28, v29);
    v5 = v2[11];
    v6 = v2[12];
  }

  *(v2 + 11) = xmmword_10045A7C0;
  sub_100045968(v5, v6);
  swift_beginAccess();
  v17 = v2[9];
  v18 = v2[10];
  if (v18 >> 60 != 15)
  {
    sub_1001C3FE0(v2[9], v2[10]);
    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100015AFC(v19, qword_100535DE8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      v24 = _typeName(_:qualified:)();
      v26 = sub_10002C9C8(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%s] Flushing outgoing message buffer.", v22, 0xCu);
      sub_100026A44(v23);
    }

    (*(*v2 + 440))(v17, v18, *(a1 + 16), *(a1 + 24));
    sub_100045968(v17, v18);
    v17 = v2[9];
    v18 = v2[10];
  }

  *(v2 + 9) = xmmword_10045A7C0;
  return sub_100045968(v17, v18);
}

void sub_100374E68(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = v4;
  v10 = (*(*v4 + 200))();
  if (*(v10 + 16) && (v11 = sub_10000698C(a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);

    v15 = (*(*v5 + 248))(v14);
    if (v15 != 2 && ((v15 ^ a4) & 1) == 0)
    {
      if ((a4 & 1) == 0)
      {
        swift_beginAccess();
        if (v5[12] >> 60 == 15)
        {

          sub_100020E0C(a1, v40);
          swift_dynamicCast();
          v32 = v5[11];
          v33 = v5[12];
          *(v5 + 11) = v39[0];
          sub_100045968(v32, v33);
          return;
        }

        sub_100020E0C(a1, v40);
        swift_dynamicCast();
        v34 = v42;
        v35 = v43;
        swift_beginAccess();
        if (v5[12] >> 60 != 15)
        {
          Data.append(_:)();
          swift_endAccess();

          sub_1001C4034(v34, v35);
          return;
        }

        goto LABEL_31;
      }

      sub_100020E0C(a1, v40);
      sub_1001BC5A8(&qword_1005229E0, &qword_10045A7D0);
      swift_dynamicCast();
      v16 = v41;
      v17 = sub_10036C484();
      v18 = *(v17 + 1);
      *&v41 = *v17;
      *(&v41 + 1) = v18;
      swift_bridgeObjectRetain_n();
      AnyHashable.init<A>(_:)();
      if (*(v16 + 16))
      {
        v19 = sub_10001BF64(v40);
        v21 = v20;

        if (v21)
        {
          sub_100020E0C(*(v16 + 56) + 32 * v19, v39);
          sub_10001BF10(v40);
          sub_1001C4088(v39, &v41);
          swift_dynamicCast();
          v22 = v42;
          v23 = v43;
          swift_beginAccess();
          if (v5[12] >> 60 == 15)
          {

            v24 = v5[11];
            v25 = v5[12];
            v5[11] = v22;
            v5[12] = v23;
            sub_1001C3FE0(v22, v23);
            sub_100045968(v24, v25);
          }

          else
          {
            swift_beginAccess();
            if (v5[12] >> 60 == 15)
            {
LABEL_32:
              __break(1u);
              return;
            }

            Data.append(_:)();
            swift_endAccess();
          }

          v36 = (*(*v13 + 256))(v40);
          if (!__OFADD__(*v37, 1))
          {
            ++*v37;
            v36(v40, 0);

            sub_1001C4034(v22, v23);
            return;
          }

          goto LABEL_30;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    (*(*v13 + 296))(a1);
  }

  else
  {

    if (qword_100535DE0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100015AFC(v26, qword_100535DE8);

    oslog = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v28 = 136315650;
      v29 = _typeName(_:qualified:)();
      v31 = sub_10002C9C8(v29, v30, v40);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_10002C9C8(0xD000000000000019, 0x80000001004430C0, v40);
      *(v28 + 22) = 2080;
      *(v28 + 24) = sub_10002C9C8(a2, a3, v40);
      _os_log_impl(&_mh_execute_header, oslog, v27, "[%s] %s Could not find participant: %s.", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10037548C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = (*(*v4 + 200))();
  if (*(v10 + 16))
  {
    v11 = sub_10000698C(a3, a4);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      if ((*(*v5 + 248))(v14) == 2)
      {
        if ((*(*v5 + 224))())
        {
          v15 = v5[13];
          if (v15)
          {
LABEL_6:
            v16 = *(*v15 + 216);

            v16(a1, a2, v13);

LABEL_24:

            return;
          }

          __break(1u);
          goto LABEL_26;
        }

        v26 = (*(*v13 + 168))();
        if (v26 == 2)
        {
          if ((*(*v13 + 144))())
          {
            v15 = v5[13];
            if (v15)
            {
              goto LABEL_6;
            }

            __break(1u);
            goto LABEL_18;
          }
        }

        else if (v26)
        {
          v15 = v5[13];
          if (v15)
          {
            goto LABEL_6;
          }

          __break(1u);
        }

        swift_unknownObjectUnownedLoadStrong();
        v27 = v5[3];
        ObjectType = swift_getObjectType();
        (*(v27 + 16))(v5, a1, a2, v13, 0, ObjectType, v27);
        swift_unknownObjectRelease();
        goto LABEL_24;
      }

      swift_beginAccess();
      if (v5[10] >> 60 == 15)
      {

        v24 = v5[9];
        v25 = v5[10];
        v5[9] = a1;
        v5[10] = a2;
        sub_1001C3FE0(a1, a2);
        sub_100045968(v24, v25);
        return;
      }

LABEL_18:
      swift_beginAccess();
      if (v5[10] >> 60 != 15)
      {
        Data.append(_:)();
        swift_endAccess();
        goto LABEL_24;
      }

LABEL_26:
      __break(1u);
      return;
    }
  }

  if (qword_100535DE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100015AFC(v17, qword_100535DE8);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v20 = 136315650;
    v21 = _typeName(_:qualified:)();
    v23 = sub_10002C9C8(v21, v22, v29);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10002C9C8(0xD000000000000014, 0x80000001004430E0, v29);
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_10002C9C8(a3, a4, v29);
    _os_log_impl(&_mh_execute_header, v18, v19, "[%s] %s Could not find participant: %s.", v20, 0x20u);
    swift_arrayDestroy();
  }
}

uint64_t sub_100375904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectUnownedLoadStrong();
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v7 + 8))(v3, a2, a3, a1, ObjectType, v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_100375994()
{
  sub_100044EC4(v0 + 16);

  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  sub_100045968(*(v0 + 72), *(v0 + 80));
  sub_100045968(*(v0 + 88), *(v0 + 96));
  v3 = *(v0 + 104);

  return swift_deallocClassInstance();
}

unint64_t sub_100375A54(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_100376A04(a1, v4);
}

unint64_t sub_100375A98(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  (*(*a1 + 320))(v6);
  v4 = Hasher._finalize()();

  return sub_100376A70(a1, v4);
}

double sub_100375B2C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100375A98(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v14 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100376C9C();
      v11 = v14;
    }

    v12 = *(*(v11 + 48) + 8 * v8);

    *a2 = *(*(v11 + 56) + 16 * v8);
    sub_100376520(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_10045A7C0;
  }

  return result;
}

uint64_t sub_100375BCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100528658, qword_10045ACC8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1001C4088(v22, v33);
      }

      else
      {
        sub_100020E0C(v22, v33);
      }

      v23 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1001C4088(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100375E44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100528650, &qword_10045ACC0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {

        sub_1001C3FE0(v32, *(&v32 + 1));
      }

      v22 = *(v8 + 40);
      Hasher.init(_seed:)();
      (*(*v21 + 320))(v33);
      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100376108(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1001BC5A8(&qword_100528648, &unk_10045ACB0);
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

uint64_t sub_1003763B0(uint64_t result, uint64_t a2)
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
      v10 = *(a2 + 40);
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      v13 = *v12;
      result = static Hasher._hash(seed:_:)();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v11 + 8 * v3);
          if (v3 != v6 || v17 >= v12 + 1)
          {
            *v17 = *v12;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 32 * v3);
          v20 = (v18 + 32 * v6);
          if (v3 != v6 || v19 >= v20 + 2)
          {
            v9 = v20[1];
            *v19 = *v20;
            v19[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

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

uint64_t sub_100376520(uint64_t result, uint64_t a2)
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
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      v11 = *(*v10 + 320);

      v11(v23);
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_100376700(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100375A54(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100376B20();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100375BCC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_100375A54(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    sub_100026A44(v21);

    return sub_1001C4088(a1, v21);
  }

  else
  {

    return sub_10037699C(v9, a2, a1, v20);
  }
}

uint64_t sub_10037682C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100375A98(a3);
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
      sub_100375E44(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100375A98(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        type metadata accessor for ConnectedParticipant();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100376C9C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = *v23;
    v25 = v23[1];
    *v23 = a1;
    v23[1] = a2;

    return sub_1001C4034(v24, v25);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  *(v22[6] + 8 * v11) = a3;
  v27 = (v22[7] + 16 * v11);
  *v27 = a1;
  v27[1] = a2;
  v28 = v22[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v29;
}

_OWORD *sub_10037699C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1001C4088(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_100376A04(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100376A70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (*(v7 + 16) == *(a1 + 16) && *(v7 + 24) == *(a1 + 24))
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_100376B20()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100528658, qword_10045ACC8);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100020E0C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_1001C4088(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_100376C9C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100528650, &qword_10045ACC0);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;

        result = sub_1001C3FE0(v18, *(&v18 + 1));
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

void *sub_100376E18()
{
  v1 = v0;
  sub_1001BC5A8(&qword_100528648, &unk_10045ACB0);
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

void *sub_100376F88(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for GroupSessionRemoteControlConnectionPushScheduler();
  v11 = swift_allocObject();

  return sub_10037718C(a1, a2, a3, v11, a5, a6);
}

void *sub_100377000(char a1, uint64_t a2, void *a3, void *a4)
{
  a4[5] = &_swiftEmptyDictionarySingleton;
  a4[6] = 0;
  a4[4] = &off_1004CFEB0;
  swift_unknownObjectUnownedInit();

  a4[2] = a3;
  if (a1)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.5;
  }

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = objc_allocWithZone(MSVTimer);
  v15[4] = sub_10001722C;
  v15[5] = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100003D98;
  v15[3] = &unk_1004D0038;
  v10 = _Block_copy(v15);
  v11 = a3;

  v12 = [v9 initWithInterval:1 repeats:v11 queue:v10 block:v7];
  _Block_release(v10);

  v13 = a4[6];
  a4[6] = v12;

  return a4;
}

void *sub_10037718C(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[6] = 0;
  a4[4] = a6;
  a4[5] = &_swiftEmptyDictionarySingleton;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectRelease();
  a4[2] = a3;
  if (a1)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.5;
  }

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(MSVTimer);
  v17[4] = sub_1003777E8;
  v17[5] = v10;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100003D98;
  v17[3] = &unk_1004D0060;
  v12 = _Block_copy(v17);
  v13 = a3;

  v14 = [v11 initWithInterval:1 repeats:v13 queue:v12 block:v9];
  _Block_release(v12);

  v15 = a4[6];
  a4[6] = v14;

  return a4;
}

unint64_t sub_100377358()
{
  result = qword_100528140;
  if (!qword_100528140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528140);
  }

  return result;
}

unint64_t sub_1003773B0()
{
  result = qword_100528148;
  if (!qword_100528148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528148);
  }

  return result;
}

unint64_t sub_100377408()
{
  result = qword_100528150;
  if (!qword_100528150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528150);
  }

  return result;
}

unint64_t sub_100377460()
{
  result = qword_100528158;
  if (!qword_100528158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528158);
  }

  return result;
}

unint64_t sub_1003774B8()
{
  result = qword_100528160;
  if (!qword_100528160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528160);
  }

  return result;
}

unint64_t sub_100377514()
{
  result = qword_100528168;
  if (!qword_100528168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528168);
  }

  return result;
}

unint64_t sub_10037756C()
{
  result = qword_100528170;
  if (!qword_100528170)
  {
    type metadata accessor for ConnectedParticipant();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528170);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionRemoteControlConnectionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GroupSessionRemoteControlConnectionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100377734(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100377748(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_10037778C()
{
  result = qword_100528640;
  if (!qword_100528640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100528640);
  }

  return result;
}

uint64_t sub_1003777F4()
{
  v0 = type metadata accessor for Logger();
  sub_1001C4098(v0, qword_100536388);
  sub_100015AFC(v0, qword_100536388);
  v1 = *sub_1001D8C64();
  return Logger.init(_:)();
}

void sub_100377908(uint64_t a1@<X0>, void *a2@<X8>)
{
  _StringGuts.grow(_:)(37);
  v4._countAndFlagsBits = 60;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 0x747265737361200ALL;
  v7._object = 0xED00003D736E6F69;
  String.append(_:)(v7);
  v8 = OBJC_IVAR___MRDGroupSessionAssertionManager_assertions;
  swift_beginAccess();
  v9 = *(a1 + v8);

  sub_100377BA8(v10);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = MRCreateIndentedDebugDescriptionFromDictionary();

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0x76726573626F200ALL;
    v17._object = 0xEC0000003D737265;
    String.append(_:)(v17);
    v18 = [*(a1 + OBJC_IVAR___MRDGroupSessionAssertionManager_observers) allObjects];
    sub_1001BC5A8(&unk_1005286B0, &qword_10045AD18);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100378070(v19);

    v20 = Array._bridgeToObjectiveC()().super.isa;

    v21 = MRCreateIndentedDebugDescriptionFromArray();

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25._countAndFlagsBits = v22;
      v25._object = v24;
      String.append(_:)(v25);

      v26._countAndFlagsBits = 62;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100377BA8(uint64_t a1)
{
  v47 = type metadata accessor for UUID();
  v48 = *(v47 - 8);
  v2 = *(v48 + 64);
  __chkstk_darwin(v47);
  v46 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1001BC5A8(&unk_1005286E0, &unk_10045AD30);
  v4 = *(*(v45 - 8) + 64);
  v5 = __chkstk_darwin(v45);
  v44 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = v41 - v7;
  v49 = a1;
  if (*(a1 + 16))
  {
    sub_1001BC5A8(&qword_1005216C8, &unk_100450040);
    v8 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v8 = &_swiftEmptyDictionarySingleton;
  }

  v9 = v49 + 64;
  v10 = 1 << *(v49 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v49 + 64);
  v13 = (v10 + 63) >> 6;
  v41[1] = v48 + 16;
  v41[0] = v48 + 32;
  v14 = v8 + 64;

  v16 = 0;
  v42 = v8;
  while (v12)
  {
LABEL_15:
    v20 = __clz(__rbit64(v12)) | (v16 << 6);
    v21 = v49;
    v22 = v48;
    v23 = v43;
    v24 = v47;
    (*(v48 + 16))(v43, *(v49 + 48) + *(v48 + 72) * v20, v47);
    v25 = (*(v21 + 56) + 16 * v20);
    v26 = *v25;
    v27 = v25[1];
    v28 = v45;
    v29 = &v23[*(v45 + 48)];
    *v29 = v26;
    *(v29 + 1) = v27;
    v30 = v23;
    v31 = v44;
    sub_10037AFB4(v30, v44);
    v32 = (v31 + *(v28 + 48));
    (*(v22 + 32))(v46, v31, v24);

    swift_dynamicCast();
    v33 = v32[1];
    *&v58 = *v32;
    *(&v58 + 1) = v33;
    swift_dynamicCast();
    v54 = v50;
    v55 = v51;
    v56 = v52;
    sub_1001C4088(&v53, v57);
    v50 = v54;
    v51 = v55;
    v52 = v56;
    sub_1001C4088(v57, &v58);
    v8 = v42;
    result = AnyHashable._rawHashValue(seed:)(v42[5]);
    v34 = -1 << v8[32];
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*&v14[8 * (v35 >> 6)]) == 0)
    {
      v37 = 0;
      v38 = (63 - v34) >> 6;
      while (++v36 != v38 || (v37 & 1) == 0)
      {
        v39 = v36 == v38;
        if (v36 == v38)
        {
          v36 = 0;
        }

        v37 |= v39;
        v40 = *&v14[8 * v36];
        if (v40 != -1)
        {
          v17 = __clz(__rbit64(~v40)) + (v36 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v17 = __clz(__rbit64((-1 << v35) & ~*&v14[8 * (v35 >> 6)])) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v12 &= v12 - 1;
    *&v14[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
    v18 = *(v8 + 6) + 40 * v17;
    *v18 = v50;
    *(v18 + 16) = v51;
    *(v18 + 32) = v52;
    result = sub_1001C4088(&v58, (*(v8 + 7) + 32 * v17));
    ++*(v8 + 2);
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v13)
    {

      return v8;
    }

    v12 = *(v9 + 8 * v19);
    ++v16;
    if (v12)
    {
      v16 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *sub_100378070(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1001D382C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1001BC5A8(&unk_1005286B0, &qword_10045AD18);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1001D382C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1001C4088(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      do
      {
        v11 = *v8;
        swift_unknownObjectRetain();
        sub_1001BC5A8(&unk_1005286B0, &qword_10045AD18);
        swift_dynamicCast();
        v13 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_1001D382C((v9 > 1), v10 + 1, 1);
          v3 = v13;
        }

        v3[2] = v10 + 1;
        sub_1001C4088(v12, &v3[4 * v10 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003782F0()
{
  v1 = *(v0 + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_10037A898(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_100378368(uint64_t a1, uint64_t a2, double a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = (*((swift_isaMask & *v3) + 0xA8))(a1, a2);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v13[4] = sub_10037A8B0;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100003D98;
  v13[3] = &unk_1004D0100;
  v10 = _Block_copy(v13);

  v11 = [objc_opt_self() timerWithInterval:0 repeats:v10 block:a3];
  _Block_release(v10);
  swift_beginAccess();
  v12 = *(v8 + 16);
  *(v8 + 16) = v11;
}

uint64_t sub_1003785A0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  sub_100378A78(a1, a2, aBlock - v9);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v5 + 32))(v13 + v12, v8, v4);
  v14 = objc_allocWithZone(MRGroupSessionAssertion);
  aBlock[4] = sub_10037A948;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004D0178;
  v15 = _Block_copy(aBlock);

  v16 = [v14 initWithCancellationHandler:v15];
  _Block_release(v15);

  if (v16)
  {
    (*(v5 + 8))(v10, v4);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100378860()
{
  v1 = *(v0 + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_100006EA4();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_10037896C()
{
  v1 = *(v0 + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_100006E8C();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_100378A78(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  swift_getObjectType();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v13 = *(v4 + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  v30 = v4;
  v31 = a3;
  v26 = a1;
  v32 = a1;
  v33 = a2;
  v27 = sub_10037AE8C;
  v28 = &v29;
  os_unfair_lock_lock(v13 + 4);
  sub_10037B0B4(v34);
  os_unfair_lock_unlock(v13 + 4);
  if (LOBYTE(v34[0]) == 1)
  {
    sub_100379444();
  }

  if (qword_100536380 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100015AFC(v14, qword_100536388);
  (*(v9 + 16))(v12, a3, v8);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v17 = 136315650;
    v18 = _typeName(_:qualified:)();
    v20 = sub_10002C9C8(v18, v19, v34);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    sub_100004978(&qword_100521B38, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v9 + 8))(v12, v8);
    v24 = sub_10002C9C8(v21, v23, v34);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2082;
    *(v17 + 24) = sub_10002C9C8(v26, a2, v34);
    _os_log_impl(&_mh_execute_header, v15, v16, "[%s] Began assertion: %{public}s because: %{public}s", v17, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }
}

void sub_100378DD4(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = *(v1 + OBJC_IVAR___MRDGroupSessionAssertionManager_lock);
  v46 = v1;
  v47 = a1;
  v43 = sub_10037ACFC;
  v44 = &v45;
  os_unfair_lock_lock(v11 + 4);
  sub_10037AD90(v48);
  os_unfair_lock_unlock(v11 + 4);
  v12 = LOBYTE(v48[0]);
  v13 = v49;
  if (v49)
  {
    v40 = v48[1];
    v41 = v1;
    if (qword_100536380 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100015AFC(v14, qword_100536388);
    (*(v4 + 16))(v10, a1, v3);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v42 = v12;
      v48[0] = v18;
      *v17 = 136315650;
      v19 = _typeName(_:qualified:)();
      v21 = sub_10002C9C8(v19, v20, v48);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      sub_100004978(&qword_100521B38, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v4 + 8))(v10, v3);
      v25 = sub_10002C9C8(v22, v24, v48);

      *(v17 + 14) = v25;
      *(v17 + 22) = 2082;
      v26 = sub_10002C9C8(v40, v13, v48);

      *(v17 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%s] Ended assertion: %{public}s with reason: %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      v27 = v42;

      if (!v27)
      {
        return;
      }

LABEL_15:
      sub_100379444();
      return;
    }

    (*(v4 + 8))(v10, v3);
    if (v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v42 = LOBYTE(v48[0]);
    if (qword_100536380 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100015AFC(v28, qword_100536388);
    (*(v4 + 16))(v8, a1, v3);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v48[0] = swift_slowAlloc();
      *v31 = 136315394;
      v32 = _typeName(_:qualified:)();
      v34 = sub_10002C9C8(v32, v33, v48);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2082;
      sub_100004978(&qword_100521B38, &type metadata accessor for UUID);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v4 + 8))(v8, v3);
      v38 = sub_10002C9C8(v35, v37, v48);

      *(v31 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Attempted to end unknown assertion: %{public}s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    if (v42)
    {
      goto LABEL_15;
    }
  }
}

uint64_t sub_100379368(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1001C6948(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10037A3D4();
    v9 = v16;
  }

  v10 = *(v9 + 48);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = (*(v9 + 56) + 16 * v6);
  v13 = *v12;
  v14 = v12[1];
  sub_100379ED8(v6, v9);
  *v2 = v9;
  return v13;
}

uint64_t sub_100379444()
{
  v1 = v0;
  swift_getObjectType();
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v37);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v0[OBJC_IVAR___MRDGroupSessionAssertionManager_lock];
  v44 = v0;
  v41 = sub_10037AA88;
  v42 = &v43;
  os_unfair_lock_lock(v10 + 4);
  sub_10037AB08(&aBlock);
  os_unfair_lock_unlock(v10 + 4);
  v11 = aBlock;
  v12 = v47;
  if (qword_100536380 != -1)
  {
    swift_once();
  }

  v38 = v11;
  v13 = type metadata accessor for Logger();
  sub_100015AFC(v13, qword_100536388);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v2;
    aBlock = v17;
    *v16 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_10002C9C8(v18, v19, &aBlock);
    v35 = v1;
    v21 = v9;
    v22 = v12;
    v23 = v20;

    *(v16 + 4) = v23;
    *(v16 + 12) = 2080;
    v24 = v38;
    if (v38)
    {
      v25 = 0x7265737361207369;
    }

    else
    {
      v25 = 0x6573736120746F6ELL;
    }

    if (v38)
    {
      v26 = 0xEC000000676E6974;
    }

    else
    {
      v26 = 0xED0000676E697472;
    }

    v27 = sub_10002C9C8(v25, v26, &aBlock);
    v12 = v22;
    v9 = v21;
    v1 = v35;

    *(v16 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v14, v15, "[%s] Notifying observers: %s", v16, 0x16u);
    swift_arrayDestroy();
    v2 = v36;
  }

  else
  {

    v24 = v38;
  }

  v28 = MRGroupSessionSubsystemGetNotificationQueue();
  v29 = swift_allocObject();
  *(v29 + 16) = v12;
  *(v29 + 24) = v24;
  *(v29 + 32) = v1;
  v50 = sub_10037AB54;
  v51 = v29;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_100003D98;
  v49 = &unk_1004D01C8;
  v30 = _Block_copy(&aBlock);
  v31 = v12;
  v32 = v1;
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_100004978(&qword_100527410, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10037AC98();
  v33 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v2 + 8))(v5, v33);
  (*(v39 + 8))(v9, v40);
}

id sub_1003799D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionAssertionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100379AF0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1001BC5A8(&qword_1005286C8, &unk_10045AD20);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      sub_100004978(&qword_1005286C0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_100379ED8(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_100004978(&qword_1005286C0, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}