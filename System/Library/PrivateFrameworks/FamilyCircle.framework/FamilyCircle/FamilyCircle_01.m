void *sub_10002EDE0(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return &unk_10008C9C8;
}

uint64_t sub_10002EE44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100026620;

  return sub_10002EEF4(a1);
}

uint64_t sub_10002EEF4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for SharingCenter.XPC.AcceptShareMessage();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = type metadata accessor for SharingCenter.XPC.AcceptShareResponse();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10002F078, 0, 0);
}

uint64_t sub_10002F078()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  v8 = type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage();
  (*(v5 + 16))(v2, v7 + *(v8 + 20), v4);
  SharingCenter.XPC.AcceptShareMessage.init(url:)();
  v9 = *(v6 + qword_1000B84A0);
  SharingCenter.XPC.AcceptShareMessage.url.getter();
  v10 = *(&async function pointer to dispatch thunk of FamilyCoreDataSharingService.acceptShare(with:) + 1);
  v14 = (&async function pointer to dispatch thunk of FamilyCoreDataSharingService.acceptShare(with:) + async function pointer to dispatch thunk of FamilyCoreDataSharingService.acceptShare(with:));
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_10002F194;
  v12 = v0[6];

  return v14(v12);
}

uint64_t sub_10002F194()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_10002F3E0;
  }

  else
  {
    v6 = sub_10002F304;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10002F304()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  SharingCenter.XPC.AcceptShareResponse.init()();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10002F3E0()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v4 = v0[1];
  v5 = v0[15];

  return v4();
}

void *sub_10002F488(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_10008C9A0;
  *(v3 + 24) = v2;
  v4 = a1;
  return &unk_10008C9B0;
}

uint64_t sub_10002F518(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100026358;

  return v8(a2);
}

uint64_t sub_10002F60C(uint64_t a1)
{
  v2 = v1;
  v130 = sub_100022F18(&qword_1000B8610, &qword_10008C9E0);
  v4 = *(v130 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v130, v6);
  v114 = v100 - v7;
  v121 = type metadata accessor for Logger();
  v8 = *(v121 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v121, v10);
  v119 = v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v106 = v100 - v14;
  v15 = type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage();
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15, v17);
  v20 = v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v18, v21);
  v24 = v100 - v23;
  __chkstk_darwin(v22, v25);
  v27 = v100 - v26;
  v118 = type metadata accessor for SharingCenter.ShareDescriptor.Participant();
  v28 = *(v118 - 8);
  v29 = *(v28 + 64);
  v31 = __chkstk_darwin(v118, v30);
  v113 = v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v116 = v100 - v34;
  v115 = a1;
  v35 = SharingCenter.ShareDescriptor.participants.getter();
  v37 = *(v35 + 16);
  if (v37)
  {
    v126 = 0;
    v101 = *(v2 + qword_1000B8498);
    v39 = *(v28 + 16);
    v38 = v28 + 16;
    v128 = v39;
    v40 = (*(v38 + 64) + 32) & ~*(v38 + 64);
    v100[1] = v35;
    v41 = v35 + v40;
    v127 = (v38 - 8);
    v120 = (v8 + 8);
    v108 = (v4 + 8);
    v107 = *(v38 + 56);
    v100[2] = IDSSendMessageOptionFireAndForgetKey;
    *&v36 = 136315394;
    v103 = v36;
    *(&v42 + 1) = 2;
    v105 = xmmword_10008C640;
    *&v42 = 138412290;
    v102 = v42;
    v43 = v106;
    v112 = v15;
    v111 = v20;
    v110 = v24;
    v44 = v118;
    v45 = v116;
    v129 = v27;
    v109 = v38;
    while (1)
    {
      v125 = v37;
      v124 = v41;
      v128(v45);
      v46 = &v27[*(v15 + 20)];
      SharingCenter.ShareDescriptor.url.getter();
      v47 = SharingCenter.ShareDescriptor.Participant.token.getter();
      v49 = v48;
      UUID.init()();
      v50 = &v27[*(v15 + 24)];
      *v50 = v47;
      v50[1] = v49;
      SharingCenter.ShareDescriptor.Participant.emailAddress.getter();
      v51 = String._bridgeToObjectiveC()();

      v52 = IDSCopyIDForEmailAddress();

      if (v52)
      {
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      v56 = v113;
      v117 = v53;
      v122 = v55;
      static FamilyLogger.coreDataSharing.getter();
      sub_100031E7C(v27, v24);
      (v128)(v56, v45, v44);
      v57 = v43;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *v60 = v103;
        v61 = v111;
        sub_100031E7C(v24, v111);
        v15 = v112;
        v62 = String.init<A>(describing:)();
        v64 = v63;
        sub_100031EE0(v24);
        v65 = sub_1000373D4(v62, v64, &v132);

        *(v60 + 4) = v65;
        *(v60 + 12) = 2080;
        v66 = SharingCenter.ShareDescriptor.Participant.emailAddress.getter();
        v68 = v67;
        v123 = *v127;
        v123(v56, v118);
        v69 = sub_1000373D4(v66, v68, &v132);

        *(v60 + 14) = v69;
        _os_log_impl(&_mh_execute_header, v58, v59, "Sending share invite: %s to: %s", v60, 0x16u);
        swift_arrayDestroy();

        v70 = *v120;
        v43 = v106;
        (*v120)(v106, v121);
        v71 = v114;
      }

      else
      {

        v123 = *v127;
        v123(v56, v44);
        sub_100031EE0(v24);
        v70 = *v120;
        (*v120)(v57, v121);
        v71 = v114;
        v43 = v57;
        v15 = v112;
        v61 = v111;
      }

      v72 = v126;
      v73 = type metadata accessor for DictionaryEncoder();
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      swift_allocObject();
      DictionaryEncoder.init()();
      sub_100031E7C(v129, v61);
      TypedCodingEnvelope.init(value:)();
      sub_100031F3C();
      v76 = dispatch thunk of DictionaryEncoder.encode<A>(_:)();
      if (v72)
      {
        break;
      }

      v104 = v70;
      v78 = v76;
      (*v108)(v71, v130);

      sub_100030288(v78);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      sub_100022F18(&qword_1000B8628, &qword_10008C9E8);
      inited = swift_initStackObject();
      *(inited + 16) = v105;
      v132 = v117;
      v133 = v122;
      sub_100022F18(&qword_1000B8630, &qword_10008C9F0);
      sub_100031FF0();
      AnyHashable.init<A>(_:)();
      sub_1000348C0(inited);
      swift_setDeallocating();
      sub_10003206C(inited + 32);
      v81 = Set._bridgeToObjectiveC()().super.isa;

      sub_100022F18(&unk_1000B8640, &qword_10008C9F8);
      v82 = swift_initStackObject();
      *(v82 + 16) = v105;
      v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v133 = v83;
      AnyHashable.init<A>(_:)();
      *(v82 + 96) = &type metadata for Bool;
      *(v82 + 72) = 1;
      sub_100023FB0(v82);
      swift_setDeallocating();
      sub_10002624C(v82 + 32, &qword_1000B8140, &unk_10008CA00);
      v84 = Dictionary._bridgeToObjectiveC()().super.isa;

      v132 = 0;
      v131[0] = 0;
      v85 = [v101 sendMessage:isa toDestinations:v81 priority:300 options:v84 identifier:&v132 error:v131];

      v86 = v132;
      v24 = v110;
      v44 = v118;
      if (!v85)
      {
        v88 = v131[0];
        v77 = v86;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v126 = 0;
        v70 = v104;
        goto LABEL_16;
      }

      v126 = 0;
      v87 = v131[0];
      v77 = v86;
      v27 = v129;
LABEL_4:
      sub_100031EE0(v27);
      v45 = v116;
      v123(v116, v44);

      v41 = v124 + v107;
      v37 = v125 - 1;
      if (v125 == 1)
      {
      }
    }

    (*v108)(v71, v130);

    v77 = 0;
    v126 = 0;
    v24 = v110;
    v44 = v118;
LABEL_16:
    static FamilyLogger.coreDataSharing.getter();
    swift_errorRetain();
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    v91 = os_log_type_enabled(v89, v90);
    v27 = v129;
    if (v91)
    {
      v92 = swift_slowAlloc();
      v122 = v77;
      v93 = v24;
      v94 = v15;
      v95 = v70;
      v96 = v92;
      v97 = swift_slowAlloc();
      *v96 = v102;
      swift_errorRetain();
      v98 = _swift_stdlib_bridgeErrorToNSError();
      *(v96 + 4) = v98;
      *v97 = v98;
      _os_log_impl(&_mh_execute_header, v89, v90, "Failed to send IDS invite. Error: %@", v96, 0xCu);
      sub_10002624C(v97, &qword_1000B8590, &qword_10008C960);
      v43 = v106;

      v70 = v95;
      v15 = v94;
      v24 = v93;
      v77 = v122;
    }

    v70(v119, v121);
    goto LABEL_4;
  }
}

uint64_t sub_100030288(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100022F18(&unk_1000B8650, &unk_10008C5C0);
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
    sub_100026180(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000249A8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000249A8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000249A8(v31, v32);
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
    result = sub_1000249A8(v32, (v2[7] + 32 * v10));
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

Swift::Int sub_100030564()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000305D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10003061C()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_10003065C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100032170(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003069C(uint64_t a1)
{
  v2 = sub_100032638();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000306D8(uint64_t a1)
{
  v2 = sub_100032638();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100030714(void *a1)
{
  v3 = v1;
  v5 = sub_100022F18(&qword_1000B8838, &qword_10008CC30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v17[-v9];
  v11 = a1[4];
  sub_1000297A8(a1, a1[3]);
  sub_100032638();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  type metadata accessor for UUID();
  sub_1000326F4(&qword_1000B8848, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage();
    v13 = *(v12 + 20);
    LOBYTE(v18) = 1;
    type metadata accessor for URL();
    sub_1000326F4(&qword_1000B8850, &type metadata accessor for URL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + *(v12 + 24));
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v17[15] = 2;
    sub_10003268C(v18, v15);
    sub_1000326A0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10002C17C(v18, v19);
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_10003096C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for URL();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for UUID();
  v31 = *(v37 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v37, v10);
  v35 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100022F18(&qword_1000B8860, &qword_10008CC38);
  v32 = *(v36 - 8);
  v12 = *(v32 + 64);
  __chkstk_darwin(v36, v13);
  v15 = &v28 - v14;
  v16 = type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  sub_1000297A8(a1, a1[3]);
  sub_100032638();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100024F7C(a1);
  }

  v28 = v16;
  v29 = a1;
  v22 = v20;
  v24 = v32;
  v23 = v33;
  v25 = v34;
  LOBYTE(v38) = 0;
  sub_1000326F4(&qword_1000B8868, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v31 + 32))(v22, v35, v37);
  LOBYTE(v38) = 1;
  sub_1000326F4(&qword_1000B8870, &type metadata accessor for URL);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 32))(v22 + *(v28 + 20), v8, v25);
  v39 = 2;
  sub_10003273C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v29;
  (*(v24 + 8))(v15, v36);
  *(v22 + *(v28 + 24)) = v38;
  sub_100031E7C(v22, v30);
  sub_100024F7C(v26);
  return sub_100031EE0(v22);
}

uint64_t sub_100030E64@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_100030E94(uint64_t a1)
{
  v2 = sub_1000325E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100030ED0(uint64_t a1)
{
  v2 = sub_1000325E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100030F34(void *a1)
{
  v2 = sub_100022F18(&qword_1000B8828, &qword_10008CC28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1000297A8(a1, a1[3]);
  sub_1000325E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_10003104C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for TypedCodingEnvelope();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = v25 - v13;
  if (sub_100064C5C(a2))
  {
    v15 = type metadata accessor for DictionaryDecoder();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    DictionaryDecoder.init()();
    v25[3] = a6;
    swift_getWitnessTable();
    dispatch thunk of DictionaryDecoder.decode<A>(_:from:)();

    if (v6)
    {
    }

    else
    {
      TypedCodingEnvelope.value.getter();

      return (*(v10 + 8))(v14, v9);
    }
  }

  else
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    v22 = *(sub_100022F18(&qword_1000B8820, &qword_10008CC20) + 48);
    *v21 = &type metadata for String;
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v23._object = 0x80000001000882C0;
    v23._countAndFlagsBits = 0xD000000000000043;
    String.append(_:)(v23);
    v24._countAndFlagsBits = Dictionary.description.getter();
    String.append(_:)(v24);

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    return swift_willThrow();
  }
}

uint64_t sub_100031314()
{
  if (qword_1000B7F40 != -1)
  {
    swift_once();
  }

  v1 = off_1000B9368;

  os_unfair_lock_lock(v1 + 6);
  if (*&v1[4]._os_unfair_lock_opaque)
  {
    v2 = *&v1[4]._os_unfair_lock_opaque;
  }

  else
  {
    v5 = type metadata accessor for CoreDataStack();
    v8 = sub_1000634A4(0x6943796C696D6146, 0xEC000000656C6372, 0xD000000000000016, 0x80000001000881C0, 0);
    if (v0)
    {
      os_unfair_lock_unlock(v1 + 6);
      goto LABEL_15;
    }

    v15 = v8;
    v16 = *&v1[4]._os_unfair_lock_opaque;

    *&v1[4]._os_unfair_lock_opaque = v15;
  }

  os_unfair_lock_unlock(v1 + 6);

  if (qword_1000B7F48 != -1)
  {
    swift_once();
  }

  v3 = off_1000B9370;

  os_unfair_lock_lock(v3 + 6);
  if (*&v3[4]._os_unfair_lock_opaque)
  {
    v4 = *&v3[4]._os_unfair_lock_opaque;
  }

  else
  {
    v5 = type metadata accessor for CoreDataStack();
    v9 = sub_1000634A4(0xD000000000000013, 0x8000000100087CB0, 0xD00000000000001ELL, 0x8000000100087CD0, 1);
    if (v0)
    {
      os_unfair_lock_unlock(v3 + 6);

      goto LABEL_15;
    }

    v17 = v9;
    v18 = *&v3[4]._os_unfair_lock_opaque;

    *&v3[4]._os_unfair_lock_opaque = v17;
  }

  os_unfair_lock_unlock(v3 + 6);

  v5 = sub_100022F18(&qword_1000B8598, &qword_10008C968);
  swift_retain_n();

  v6 = FamilyCoreDataSharingService.__allocating_init(container:privateStore:sharedStore:manateeContainer:)();
  v7 = sub_10002C394(v6);
  if (!v0)
  {
    v10 = v7;
    v11 = type metadata accessor for SharingCenterDaemonListener();
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR___FASharingCenterDaemonListener_underlying] = v10;
    v19.receiver = v12;
    v19.super_class = v11;
    v13 = v10;
    v5 = objc_msgSendSuper2(&v19, "init");

    return v5;
  }

LABEL_15:

  return v5;
}

uint64_t sub_1000316DC(uint64_t a1)
{
  v3 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v4 = *(*(v3 - 8) + 64);
  result = __chkstk_darwin(v3 - 8, v5);
  v8 = &v12 - v7;
  if (a1)
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v1;
    v10[5] = a1;

    v11 = v1;
    sub_1000646E8(0, 0, v8, &unk_10008C958, v10);
  }

  return result;
}

uint64_t sub_1000317F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FamilyLogger.coreDataSharing.getter();

  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v24 = v7;
    v25 = v6;
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v14 = 136315394;
    v15 = 45;
    if (a2)
    {
      v16 = a1;
    }

    else
    {
      v16 = 45;
    }

    v17 = 0xE100000000000000;
    if (a2)
    {
      v18 = a2;
    }

    else
    {
      v18 = 0xE100000000000000;
    }

    v19 = sub_1000373D4(v16, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = v20;
    }

    v21 = sub_1000373D4(v15, v17, &v26);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "didSend %s, error: %s", v14, 0x16u);
    swift_arrayDestroy();

    return (*(v24 + 8))(v11, v25);
  }

  else
  {

    return (*(v7 + 8))(v11, v6);
  }
}

uint64_t sub_100031A90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100026358;

  return sub_10002CE14(a1, v4, v5, v7, v6);
}

uint64_t sub_100031B9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100022F60(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage()
{
  result = qword_1000B86C0;
  if (!qword_1000B86C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100031C38@<D0>(uint64_t a1@<X8>)
{
  MessageDispatcher<>.detachMessage(_:)();
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100031C68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return sub_10002EE44(a1);
}

uint64_t sub_100031D04(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100026358;

  return sub_10002F518(a1, a2, v7);
}

uint64_t sub_100031DCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100026620;

  return sub_10002E6EC(a1);
}

uint64_t sub_100031E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031EE0(uint64_t a1)
{
  v2 = type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100031F3C()
{
  result = qword_1000B8618;
  if (!qword_1000B8618)
  {
    sub_100022F60(&qword_1000B8610, &qword_10008C9E0);
    sub_1000326F4(&qword_1000B8620, type metadata accessor for SharingCenterDaemonListener.ShareInvitationMessage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8618);
  }

  return result;
}

unint64_t sub_100031FF0()
{
  result = qword_1000B8638;
  if (!qword_1000B8638)
  {
    sub_100022F60(&qword_1000B8630, &qword_10008C9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8638);
  }

  return result;
}

uint64_t sub_1000320C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100026620;

  return sub_10002D9A0(a1, a2);
}

uint64_t sub_100032170(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100032280(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100026620;

  return sub_10002D56C(a1, a2, v6);
}

void sub_100032388()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_100032424();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100032424()
{
  if (!qword_1000B86D0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B86D0);
    }
  }
}

unint64_t sub_100032538()
{
  result = qword_1000B8810;
  if (!qword_1000B8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8810);
  }

  return result;
}

unint64_t sub_100032590()
{
  result = qword_1000B8818;
  if (!qword_1000B8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8818);
  }

  return result;
}

unint64_t sub_1000325E4()
{
  result = qword_1000B8830;
  if (!qword_1000B8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8830);
  }

  return result;
}

unint64_t sub_100032638()
{
  result = qword_1000B8840;
  if (!qword_1000B8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8840);
  }

  return result;
}

uint64_t sub_10003268C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10002C1E4(a1, a2);
  }

  return a1;
}

unint64_t sub_1000326A0()
{
  result = qword_1000B8858;
  if (!qword_1000B8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8858);
  }

  return result;
}

uint64_t sub_1000326F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003273C()
{
  result = qword_1000B8878;
  if (!qword_1000B8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8878);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingCenterDaemonListener.ShareInvitationMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingCenterDaemonListener.ShareInvitationMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100032920()
{
  result = qword_1000B8880;
  if (!qword_1000B8880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8880);
  }

  return result;
}

unint64_t sub_100032978()
{
  result = qword_1000B8888;
  if (!qword_1000B8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8888);
  }

  return result;
}

unint64_t sub_1000329D0()
{
  result = qword_1000B8890;
  if (!qword_1000B8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8890);
  }

  return result;
}

unint64_t sub_100032A28()
{
  result = qword_1000B8898;
  if (!qword_1000B8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8898);
  }

  return result;
}

unint64_t sub_100032A80()
{
  result = qword_1000B88A0;
  if (!qword_1000B88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B88A0);
  }

  return result;
}

uint64_t sub_100032AF0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1, v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v28 - v10;
  __chkstk_darwin(v9, v12);
  v14 = &v28 - v13;
  v15 = *(v0 + 24);
  v16 = [v15 primaryAuthKitAccount];
  if (v16)
  {
    v17 = v16;
    if ([v15 isManagedAppleIDForAccount:v16])
    {
      static FamilyLogger.daemon.getter();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Primary AuthKit account is managed, returning true", v20, 2u);
      }

      v21 = 1;
      goto LABEL_14;
    }
  }

  v22 = [v15 protoAccount];
  if (v22)
  {

    static FamilyLogger.daemon.getter();
    v17 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v17, v23, "Found proto account, returning true", v24, 2u);
    }

    v21 = 1;
    v14 = v11;
  }

  else
  {
    static FamilyLogger.daemon.getter();
    v17 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v17, v25, "No Managed or Proto account, returning false", v26, 2u);
    }

    v21 = 0;
    v14 = v7;
  }

LABEL_14:

  (*(v2 + 8))(v14, v1);
  return v21;
}

uint64_t sub_100032DDC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1, v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = v22 - v9;
  v11 = [*(v0 + 16) aa_primaryAppleAccount];
  if (v11)
  {
    v12 = v11;
    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 accountPropertyForKey:v13];

    if (v14)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10002624C(v22, &qword_1000B82F8, &qword_10008CEB0);
      static FamilyLogger.daemon.getter();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "There is a pending date of birth", v17, 2u);
      }

      v18 = 1;
      goto LABEL_10;
    }

    memset(v22, 0, sizeof(v22));
    sub_10002624C(v22, &qword_1000B82F8, &qword_10008CEB0);
  }

  static FamilyLogger.daemon.getter();
  v12 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v12, v19, "No pending date of birth, continuing", v20, 2u);
  }

  v18 = 0;
  v10 = v7;
LABEL_10:

  (*(v2 + 8))(v10, v1);
  return v18;
}

uint64_t sub_100033084(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for Logger();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100033168, 0, 0);
}

uint64_t sub_100033168()
{
  v1 = v0[15];
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PersonalAttestationController: Trying to fetch birthday from Authkit.", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[9];

  v9 = *(v7 + 8);
  v9(v5, v6);
  v10 = *(v8 + 24);
  v11 = [v10 primaryAuthKitAccount];
  v0[16] = v11;
  if (v11)
  {
    v12 = v11;
    v13 = [*(v0[9] + 16) aa_primaryAppleAccount];
    if (v13 && (v14 = v13, v15 = [v13 aa_altDSID], v14, v15))
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v0[17] = v18;
      v19 = [v10 birthYearForAccount:v12];
      v0[18] = v19;
      if (v19)
      {
        v20 = v19;
        v21 = v0[9];
        v22 = swift_task_alloc();
        v0[19] = v22;
        v22[2] = v21;
        v22[3] = v16;
        v22[4] = v18;
        v22[5] = v20;
        v23 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
        v24 = swift_task_alloc();
        v0[20] = v24;
        v25 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
        *v24 = v0;
        v24[1] = sub_10003377C;
        v26 = v0[8];

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v26, 0, 0, 0x7269426863746566, 0xEF29287961646874, sub_100034A20, v22, v25);
      }

      v48 = v0[14];

      static FamilyLogger.daemon.getter();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "PersonalAttestationController: Unable to fetch authkit account.", v51, 2u);
      }

      v52 = v0[14];
      v53 = v0[10];
      v54 = v0[11];

      v9(v52, v53);
      type metadata accessor for AgeRangeError(0);
      v0[7] = -4004;
      sub_100023D48(&_swiftEmptyArrayStorage);
      sub_100034E0C(&qword_1000B8068, type metadata accessor for AgeRangeError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v55 = v0[6];
    }

    else
    {
      v27 = v0[13];
      static FamilyLogger.daemon.getter();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "PersonalAttestationController: Unable to primary authkit account.", v30, 2u);
      }

      v31 = v0[13];
      v32 = v0[10];
      v33 = v0[11];

      v9(v31, v32);
      type metadata accessor for AgeRangeError(0);
      v0[5] = -4004;
      sub_100023D48(&_swiftEmptyArrayStorage);
      sub_100034E0C(&qword_1000B8068, type metadata accessor for AgeRangeError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v34 = v0[4];
    }

    swift_willThrow();
  }

  else
  {
    v35 = v0[12];
    static FamilyLogger.daemon.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "PersonalAttestationController: Unable to fetch authkit account.", v38, 2u);
    }

    v40 = v0[11];
    v39 = v0[12];
    v41 = v0[10];

    v9(v39, v41);
    type metadata accessor for AgeRangeError(0);
    v0[3] = -4004;
    sub_100023D48(&_swiftEmptyArrayStorage);
    sub_100034E0C(&qword_1000B8068, type metadata accessor for AgeRangeError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v42 = v0[2];
    swift_willThrow();
  }

  v44 = v0[14];
  v43 = v0[15];
  v46 = v0[12];
  v45 = v0[13];

  v47 = v0[1];

  return v47();
}

uint64_t sub_10003377C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v8 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_100033948;
  }

  else
  {
    v5 = *(v2 + 152);
    v6 = *(v2 + 136);

    v4 = sub_1000338A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000338A4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100033948()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);

  v4 = *(v0 + 168);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);

  v9 = *(v0 + 8);

  return v9();
}

void sub_1000339F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_100022F18(&qword_1000B89B0, &qword_10008CE98);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = aBlock - v12;
  v14 = *(a2 + 32);
  v15 = String._bridgeToObjectiveC()();
  (*(v9 + 16))(v13, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v13, v8);
  *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  aBlock[4] = sub_100034A2C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100034048;
  aBlock[3] = &unk_1000A7F28;
  v18 = _Block_copy(aBlock);
  v19 = a5;

  [v14 fetchBirthdayForAltDSID:v15 completion:v18];
  _Block_release(v18);
}

void sub_100033BE8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v56 = a5;
  v57 = a1;
  v8 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v51 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = &v51 - v21;
  v23 = [objc_allocWithZone(NSDateFormatter) init];
  v24 = String._bridgeToObjectiveC()();
  [v23 setDateFormat:v24];

  if (a3)
  {
    v58 = a3;
    swift_errorRetain();
    sub_100022F18(&qword_1000B89B0, &qword_10008CE98);
  }

  else
  {
    v51 = v19;
    v52 = v22;
    v53 = v12;
    v54 = v14;
    v55 = a4;
    if (a2 && v57)
    {
      v25 = v57;
      v26 = a2;
      v27 = v25;
      v28 = v26;
      v29 = [v26 description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v58 = v30;
      v59 = v32;
      v33._countAndFlagsBits = 45;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);
      v34 = [v27 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38._countAndFlagsBits = v35;
      v38._object = v37;
      String.append(_:)(v38);

      v39._countAndFlagsBits = 45;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
      v40 = [v56 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v44._countAndFlagsBits = v41;
      v44._object = v43;
      String.append(_:)(v44);

      v45 = String._bridgeToObjectiveC()();

      v46 = [v23 dateFromString:v45];

      if (v46)
      {
        v47 = v51;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = v54;
        v49 = v52;
        (*(v54 + 32))(v52, v47, v13);
        v50 = v53;
        (*(v48 + 16))(v53, v49, v13);
        (*(v48 + 56))(v50, 0, 1, v13);
        sub_100022F18(&qword_1000B89B0, &qword_10008CE98);
        CheckedContinuation.resume(returning:)();

        (*(v48 + 8))(v49, v13);
        return;
      }
    }

    type metadata accessor for AgeRangeError(0);
    v60 = -4000;
    sub_100023D48(&_swiftEmptyArrayStorage);
    sub_100034E0C(&qword_1000B8068, type metadata accessor for AgeRangeError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v60 = v58;
    sub_100022F18(&qword_1000B89B0, &qword_10008CE98);
  }

  CheckedContinuation.resume(throwing:)();
}

void sub_100034048(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_1000340F0()
{
  v1 = type metadata accessor for Calendar();
  v0[4] = v1;
  v2 = *(v1 - 8);
  v0[5] = v2;
  v3 = *(v2 + 64) + 15;
  v0[6] = swift_task_alloc();
  v4 = type metadata accessor for DateComponents();
  v0[7] = v4;
  v5 = *(v4 - 8);
  v0[8] = v5;
  v6 = *(v5 + 64) + 15;
  v0[9] = swift_task_alloc();
  v7 = *(*(sub_100022F18(&qword_1000B89A8, &qword_10008CE90) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v0[10] = v8;
  v9 = type metadata accessor for Date();
  v0[11] = v9;
  v10 = *(v9 - 8);
  v0[12] = v10;
  v11 = *(v10 + 64) + 15;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1000342E8;

  return sub_100033084(v8);
}

uint64_t sub_1000342E8()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1000347B8;
  }

  else
  {
    v3 = sub_1000343FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000343FC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10002624C(v3, &qword_1000B89A8, &qword_10008CE90);
LABEL_4:
    type metadata accessor for AgeRangeError(0);
    v0[3] = -4000;
    sub_100023D48(&_swiftEmptyArrayStorage);
    sub_100034E0C(&qword_1000B8068, type metadata accessor for AgeRangeError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v16 = v0[2];
    swift_willThrow();
    v18 = v0[13];
    v17 = v0[14];
    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[6];

    v22 = v0[1];

    return v22();
  }

  v5 = v0[13];
  v4 = v0[14];
  v30 = v4;
  v31 = v0[9];
  v6 = v0[6];
  v34 = v0[8];
  v35 = v0[7];
  v32 = v0[5];
  v33 = v0[4];
  (*(v2 + 32))();
  static Calendar.current.getter();
  sub_100022F18(&qword_1000B89B8, &qword_10008CEA0);
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10008C640;
  (*(v8 + 104))(v11 + v10, enum case for Calendar.Component.year(_:), v7);
  sub_100034AEC(v11);
  swift_setDeallocating();
  (*(v8 + 8))(v11 + v10, v7);
  swift_deallocClassInstance();
  Date.init()();
  Calendar.dateComponents(_:from:to:)();

  v12 = *(v2 + 8);
  v12(v5, v1);
  (*(v32 + 8))(v6, v33);
  v13 = DateComponents.year.getter();
  v15 = v14;
  (*(v34 + 8))(v31, v35);
  v12(v30, v1);
  if (v15)
  {
    goto LABEL_4;
  }

  v25 = v0[13];
  v24 = v0[14];
  v27 = v0[9];
  v26 = v0[10];
  v28 = v0[6];

  v29 = v0[1];

  return v29(v13);
}

uint64_t sub_1000347B8()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100034854()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_1000348C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022F18(&unk_1000B89E0, &unk_10008CEC0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_100034FBC(v6 + 40 * v4, v19);
      result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_100034FBC(*(v3 + 48) + 40 * i, v18);
        v11 = static AnyHashable.== infix(_:_:)();
        result = sub_10003206C(v18);
        if (v11)
        {
          sub_10003206C(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_100034A2C(void *a1, void *a2, uint64_t a3)
{
  v7 = *(sub_100022F18(&qword_1000B89B0, &qword_10008CE98) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100033BE8(a1, a2, a3, v3 + v8, v9);
}

void *sub_100034AEC(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_100022F18(&qword_1000B89C0, &qword_10008CEA8);
    v12 = static _SetStorage.allocate(capacity:)();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_100034E0C(&qword_1000B89C8, &type metadata accessor for Calendar.Component);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_100034E0C(&qword_1000B89D0, &type metadata accessor for Calendar.Component);
          v27 = dispatch thunk of static Equatable.== infix(_:_:)();
          v28 = *v18;
          (*v18)(v8, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100034E0C(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_100034E54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100022F18(&qword_1000B89D8, &qword_10008CEB8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100035018()
{
  v0 = sub_100034E54(&off_1000A7698);
  result = swift_arrayDestroy();
  qword_1000B89F0 = v0;
  return result;
}

uint64_t sub_100035064()
{
  v0 = sub_100022F18(&qword_1000B8A60, &unk_10008E430);
  sub_100027758(v0, qword_1000B89F8);
  sub_100027720(v0, qword_1000B89F8);
  v1 = [objc_opt_self() hours];
  sub_100002B10(0, &qword_1000B8BC0, NSUnitDuration_ptr);
  return Measurement.init(value:unit:)();
}

void sub_100035174(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

id RateLimiter.__allocating_init(identifier:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();

  v7[4] = j___s10Foundation4DateV3nowACvgZ;
  v7[5] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000353F0;
  v7[3] = &unk_1000A7F50;
  v4 = _Block_copy(v7);
  v5 = [v1 initWithPersistence:v2 identifier:v3 getDate:v4];
  _Block_release(v4);

  return v5;
}

id RateLimiter.init(identifier:)()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();

  v6[4] = j___s10Foundation4DateV3nowACvgZ;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000353F0;
  v6[3] = &unk_1000A7F78;
  v3 = _Block_copy(v6);
  v4 = [v0 initWithPersistence:v1 identifier:v2 getDate:v3];
  _Block_release(v3);

  return v4;
}

Class sub_1000353F0(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(v9);

  v10.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);

  return v10.super.isa;
}

Swift::Bool __swiftcall RateLimiter.isAllowed(clientName:)(Swift::String clientName)
{
  v2 = *(v1 + OBJC_IVAR___FARateLimiter_queue);
  OS_dispatch_queue.sync<A>(execute:)();
  return v4;
}

Swift::Void __swiftcall RateLimiter.recordCall(clientName:)(Swift::String clientName)
{
  object = clientName._object;
  countAndFlagsBits = clientName._countAndFlagsBits;
  v4 = *&v1[OBJC_IVAR___FARateLimiter_queue];
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = countAndFlagsBits;
  v5[4] = object;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100035784;
  *(v6 + 24) = v5;
  v10[4] = sub_1000357B0;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000357D8;
  v10[3] = &unk_1000A7FF0;
  v7 = _Block_copy(v10);
  v8 = v1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_100035784()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_100035868(v1, v2);
}

uint64_t sub_1000357B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100035868(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v56 = *(v5 - 8);
  v57 = v5;
  v6 = *(v56 + 64);
  __chkstk_darwin(v5, v7);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClientRecord();
  v52 = *(v9 - 8);
  v10 = *(v52 + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v54 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v22 = &v52 - v21;
  v23 = sub_1000365C8();
  v53 = v2;
  v24 = *(v2 + OBJC_IVAR___FARateLimiter_getDate);
  v25 = *(v2 + OBJC_IVAR___FARateLimiter_getDate + 8);
  v26 = v22;
  v24();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = a1;
  v59 = v23;
  v29 = sub_100037A08(a1, a2);
  v30 = v23[2];
  v31 = (v28 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v22) = v28;
  if (v23[3] >= v32)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_13:
    sub_10007700C();
    v23 = v59;
    goto LABEL_6;
  }

  sub_100075D0C(v32, isUniquelyReferenced_nonNull_native);
  v23 = v59;
  v33 = sub_100037A08(v58, a2);
  if ((v22 & 1) != (v34 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v29 = v33;
LABEL_6:
  v35 = v26;
  v36 = v14;
  if ((v22 & 1) == 0)
  {
    static Date.now.getter();
    sub_100076D58(v29, v58, a2, v13, v23);
  }

  (*(v15 + 24))(v23[7] + *(v52 + 72) * v29, v35, v14);
  sub_10003671C(v23);

  v37 = v55;
  static FamilyLogger.rateLimiter.getter();
  v38 = v54;
  (*(v15 + 16))(v54, v35, v36);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v52 = v36;
    v42 = v41;
    v53 = swift_slowAlloc();
    v59 = v53;
    *v42 = 136315394;
    *(v42 + 4) = sub_1000373D4(v58, a2, &v59);
    *(v42 + 12) = 2080;
    sub_100002BA0(&qword_1000B8BB8, &type metadata accessor for Date);
    v43 = v52;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v35;
    v45 = v37;
    v47 = v46;
    v48 = *(v15 + 8);
    v48(v38, v43);
    v49 = sub_1000373D4(v44, v47, &v59);

    *(v42 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v39, v40, "Client: %s recorded new call at: %s", v42, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v45, v57);
    return (v48)(v58, v43);
  }

  else
  {

    v51 = *(v15 + 8);
    v51(v38, v36);
    (*(v56 + 8))(v37, v57);
    return (v51)(v35, v36);
  }
}

Swift::Bool __swiftcall RateLimiter.unsafeIsAllowed(clientName:)(Swift::String clientName)
{
  object = clientName._object;
  countAndFlagsBits = clientName._countAndFlagsBits;
  v4 = type metadata accessor for Logger();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v71 = &v66 - v11;
  v12 = sub_100022F18(&qword_1000B8A60, &unk_10008E430);
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = *(v68 + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v66 - v15;
  v17 = type metadata accessor for ClientRecord();
  v67 = *(v17 - 8);
  v18 = *(v67 + 64);
  __chkstk_darwin(v17 - 8, v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Date();
  v70 = *(v72 - 8);
  v22 = *(v70 + 64);
  v24 = __chkstk_darwin(v72, v23);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v24, v27);
  v30 = &v66 - v29;
  v32 = __chkstk_darwin(v28, v31);
  v34 = &v66 - v33;
  __chkstk_darwin(v32, v35);
  v37 = &v66 - v36;
  if (qword_1000B7F10 != -1)
  {
    swift_once();
  }

  v75 = countAndFlagsBits;
  v76 = object;
  if (sub_1000364D0(countAndFlagsBits, object, qword_1000B89F0))
  {
    goto LABEL_13;
  }

  v66 = v1;
  v38 = sub_1000365C8();
  v39 = v75;
  if (!*(v38 + 16) || (v40 = sub_100037A08(v75, v76), (v41 & 1) == 0))
  {

    static FamilyLogger.rateLimiter.getter();
    v60 = v76;

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v77 = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_1000373D4(v39, v60, &v77);
      _os_log_impl(&_mh_execute_header, v61, v62, "Client: %s allowed to call for the first time", v63, 0xCu);
      sub_100024F7C(v64);
    }

    (*(v73 + 8))(v9, v74);
LABEL_13:
    v59 = 1;
    return v59 & 1;
  }

  sub_100037A80(*(v38 + 56) + *(v67 + 72) * v40, v21);

  v42 = v70;
  v43 = *(v70 + 32);
  v44 = v21;
  v45 = v72;
  v43(v34, v44, v72);
  v43(v37, v34, v45);
  if (qword_1000B7F18 != -1)
  {
    swift_once();
  }

  v46 = v69;
  sub_100027720(v69, qword_1000B89F8);
  v47 = [objc_opt_self() seconds];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  (*(v68 + 8))(v16, v46);
  v48 = Date.addingTimeInterval(_:)();
  v49 = *(v66 + OBJC_IVAR___FARateLimiter_getDate + 8);
  (*(v66 + OBJC_IVAR___FARateLimiter_getDate))(v48);
  sub_100002BA0(&qword_1000B8A68, &type metadata accessor for Date);
  v50 = dispatch thunk of static Comparable.< infix(_:_:)();
  v51 = *(v42 + 8);
  v51(v26, v45);
  v51(v30, v45);
  v52 = v37;
  v53 = v71;
  static FamilyLogger.rateLimiter.getter();
  v54 = v76;

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v77 = v58;
    *v57 = 136315394;
    *(v57 + 4) = sub_1000373D4(v75, v54, &v77);
    *(v57 + 12) = 1024;
    v59 = v50 ^ 1;
    *(v57 + 14) = v59 & 1;
    _os_log_impl(&_mh_execute_header, v55, v56, "Client: %s isAllowed: %{BOOL}d", v57, 0x12u);
    sub_100024F7C(v58);

    (*(v73 + 8))(v53, v74);
    v51(v52, v72);
  }

  else
  {

    (*(v73 + 8))(v53, v74);
    v51(v52, v45);
    v59 = v50 ^ 1;
  }

  return v59 & 1;
}

uint64_t sub_1000364D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1000365C8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___FARateLimiter_persistence);
  _StringGuts.grow(_:)(37);

  String.append(_:)(*(v0 + OBJC_IVAR___FARateLimiter_identifier));
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 dataForKey:v3];

  if (!v4)
  {
    return sub_1000240EC(&_swiftEmptyArrayStorage);
  }

  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *(v1 + OBJC_IVAR___FARateLimiter_decoder);
  sub_100037E38();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10002C190(v5, v7);
  return 0xD000000000000023;
}

uint64_t sub_10003671C(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v7 = *(v1 + OBJC_IVAR___FARateLimiter_encoder);
  v16 = a1;
  sub_100037D90();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = *(v2 + OBJC_IVAR___FARateLimiter_persistence);
  v10 = v8;
  v12 = v11;
  isa = Data._bridgeToObjectiveC()().super.isa;
  _StringGuts.grow(_:)(37);

  v16 = 0xD000000000000023;
  v17 = 0x8000000100088440;
  String.append(_:)(*(v2 + OBJC_IVAR___FARateLimiter_identifier));
  v14 = String._bridgeToObjectiveC()();

  [v9 setValue:isa forKey:v14];

  return sub_10002C190(v10, v12);
}

id RateLimiter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RateLimiter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100036A78(void *a1, uint64_t a2)
{
  v4 = sub_100022F18(&qword_1000B8BF0, &qword_10008D0E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_1000297A8(a1, a1[3]);
  sub_100037FC0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[1] = a2;
  sub_100022F18(&qword_1000B8C00, &qword_10008D0F0);
  sub_100038014();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_100036BD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for Date();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  __chkstk_darwin(v4, v6);
  v26 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100022F18(&qword_1000B8B88, &qword_10008CF48);
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for ClientRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1000297A8(a1, a1[3]);
  sub_100037B78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v19 = v23;
    v20 = v25;
    sub_100002BA0(&qword_1000B8B98, &type metadata accessor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v24 + 8))(v12, v8);
    (*(v19 + 32))(v17, v26, v4);
    sub_100024BA4(v17, v20);
  }

  return sub_100024F7C(a1);
}

uint64_t sub_100036E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E65696C63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100036F04(uint64_t a1)
{
  v2 = sub_100037FC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036F40(uint64_t a1)
{
  v2 = sub_100037FC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100036F7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000380D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_100036FC4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100037008()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10003706C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6563655274736F6DLL && a2 == 0xEE006C6C6143746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000370FC(uint64_t a1)
{
  v2 = sub_100037B78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037138(uint64_t a1)
{
  v2 = sub_100037B78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003718C(void *a1)
{
  v2 = sub_100022F18(&qword_1000B8BA0, &qword_10008CF50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1000297A8(a1, a1[3]);
  sub_100037B78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for Date();
  sub_100002BA0(&qword_1000B8BA8, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_100037304(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100037378(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000373D4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1000373D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000374A0(v11, 0, 0, 1, a1, a2);
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
    sub_100026180(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100024F7C(v11);
  return v7;
}

unint64_t sub_1000374A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000375AC(a5, a6);
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

char *sub_1000375AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000375F8(a1, a2);
  sub_100037728(&off_1000A7670);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000375F8(uint64_t a1, unint64_t a2)
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

  v6 = sub_100066BAC(v5, 0);
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
        v7 = sub_100066BAC(v10, 0);
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

uint64_t sub_100037728(uint64_t result)
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

  result = sub_100037814(result, v12, 1, v3);
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

char *sub_100037814(char *result, int64_t a2, char a3, char *a4)
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
    sub_100022F18(&qword_1000B8BC8, &unk_10008E030);
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

_BYTE **sub_100037908(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_100037918(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10003798C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ClientRecord()
{
  result = qword_1000B8B50;
  if (!qword_1000B8B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100037A08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100037C10(a1, a2, v6);
}

uint64_t sub_100037A80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037B0C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100037B78()
{
  result = qword_1000B8B90;
  if (!qword_1000B8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8B90);
  }

  return result;
}

unint64_t sub_100037BCC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100037CC8(a1, v4);
}

unint64_t sub_100037C10(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100037CC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100034FBC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10003206C(v8);
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

unint64_t sub_100037D90()
{
  result = qword_1000B8BB0;
  if (!qword_1000B8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BB0);
  }

  return result;
}

BOOL sub_100037DE4@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  result = RateLimiter.unsafeIsAllowed(clientName:)(v3);
  *a1 = result;
  return result;
}

unint64_t sub_100037E38()
{
  result = qword_1000B8BD0;
  if (!qword_1000B8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BD0);
  }

  return result;
}

unint64_t sub_100037EBC()
{
  result = qword_1000B8BD8;
  if (!qword_1000B8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BD8);
  }

  return result;
}

unint64_t sub_100037F14()
{
  result = qword_1000B8BE0;
  if (!qword_1000B8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BE0);
  }

  return result;
}

unint64_t sub_100037F6C()
{
  result = qword_1000B8BE8;
  if (!qword_1000B8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BE8);
  }

  return result;
}

unint64_t sub_100037FC0()
{
  result = qword_1000B8BF8;
  if (!qword_1000B8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8BF8);
  }

  return result;
}

unint64_t sub_100038014()
{
  result = qword_1000B8C08;
  if (!qword_1000B8C08)
  {
    sub_100022F60(&qword_1000B8C00, &qword_10008D0F0);
    sub_100002BA0(&qword_1000B8C10, type metadata accessor for ClientRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8C08);
  }

  return result;
}

void *sub_1000380D0(uint64_t *a1)
{
  v3 = sub_100022F18(&qword_1000B8C18, &qword_10008D0F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = sub_1000297A8(a1, a1[3]);
  sub_100037FC0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100024F7C(a1);
  }

  else
  {
    sub_100022F18(&qword_1000B8C00, &qword_10008D0F0);
    sub_100038254();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v8, v3);
    v10 = v12[1];
    sub_100024F7C(a1);
  }

  return v10;
}

unint64_t sub_100038254()
{
  result = qword_1000B8C20;
  if (!qword_1000B8C20)
  {
    sub_100022F60(&qword_1000B8C00, &qword_10008D0F0);
    sub_100002BA0(&qword_1000B8C28, type metadata accessor for ClientRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8C20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CacheRecord.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CacheRecord.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000383F0()
{
  result = qword_1000B8C30;
  if (!qword_1000B8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8C30);
  }

  return result;
}

unint64_t sub_100038448()
{
  result = qword_1000B8C38;
  if (!qword_1000B8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8C38);
  }

  return result;
}

unint64_t sub_1000384A0()
{
  result = qword_1000B8C40;
  if (!qword_1000B8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8C40);
  }

  return result;
}

void sub_100038534(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
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

  *a3 = v6;
  a3[1] = v8;
}

void sub_100038598(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

uint64_t sub_100038608@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 createdAt];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1000386AC(uint64_t a1, void **a2)
{
  v4 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v13 - v7;
  sub_100039F5C(a1, &v13 - v7);
  v9 = *a2;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v8, v10);
  }

  [v9 setCreatedAt:isa];
}

uint64_t sub_1000387DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v6 = sub_100022F18(&qword_1000B8C70, &qword_10008D990);
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v27 - v10;
  v12 = sub_100022F18(&qword_1000B8C78, &qword_10008D270);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v27 - v16;
  v18 = sub_100022F18(&qword_1000B8C80, &qword_10008D278);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &v27 - v22;
  v24 = *a1;
  sub_100031B9C(&qword_1000B8C90, &qword_1000B8C78, &qword_10008D270);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v13 + 8))(v17, v12);
  v31 = v27;
  v32 = v28;
  sub_100022F18(&qword_1000B8630, &qword_10008C9F0);
  static PredicateExpressions.build_Arg<A>(_:)();
  a4[3] = sub_100022F18(&qword_1000B8C88, &unk_10008D280);
  a4[4] = sub_10003A068();
  sub_10003A24C(a4);
  sub_100031B9C(&qword_1000B8C98, &qword_1000B8C80, &qword_10008D278);
  sub_100031B9C(&qword_1000B8CA0, &qword_1000B8C70, &qword_10008D990);
  sub_10003A1E0(&qword_1000B8CA8);
  v25 = v29;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v30 + 8))(v11, v25);
  return (*(v19 + 8))(v23, v18);
}

uint64_t sub_100038B80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v67 = a3;
  v61 = a2;
  v79 = a4;
  v5 = sub_100022F18(&qword_1000B8CF8, &qword_10008D2F8);
  v6 = *(v5 - 8);
  v75 = v5;
  v76 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v72 = v58 - v9;
  v10 = sub_100022F18(&qword_1000B8D00, &qword_10008D300);
  v11 = *(v10 - 8);
  v73 = v10;
  v74 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v68 = v58 - v14;
  v15 = sub_100022F18(&qword_1000B8D08, qword_10008D308);
  v16 = *(v15 - 8);
  v77 = v15;
  v78 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v71 = v58 - v19;
  v20 = sub_100022F18(&qword_1000B8C70, &qword_10008D990);
  v21 = *(v20 - 8);
  v65 = v20;
  v66 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = v58 - v24;
  v26 = sub_100022F18(&qword_1000B8C78, &qword_10008D270);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26, v29);
  v31 = v58 - v30;
  v62 = sub_100022F18(&qword_1000B8C80, &qword_10008D278);
  v64 = *(v62 - 8);
  v32 = *(v64 + 64);
  __chkstk_darwin(v62, v33);
  v35 = v58 - v34;
  v36 = sub_100022F18(&qword_1000B8C88, &unk_10008D280);
  v37 = *(v36 - 8);
  v69 = v36;
  v70 = v37;
  v38 = *(v37 + 64);
  __chkstk_darwin(v36, v39);
  v63 = v58 - v40;
  v60 = *a1;
  sub_100031B9C(&qword_1000B8C90, &qword_1000B8C78, &qword_10008D270);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v41 = *(v27 + 8);
  v58[1] = v27 + 8;
  v59 = v41;
  v41(v31, v26);
  v80 = v61;
  v81 = v67;
  sub_100022F18(&qword_1000B8630, &qword_10008C9F0);
  v42 = v25;
  static PredicateExpressions.build_Arg<A>(_:)();
  v67 = &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>;
  sub_100031B9C(&qword_1000B8C98, &qword_1000B8C80, &qword_10008D278);
  sub_100031B9C(&qword_1000B8CA0, &qword_1000B8C70, &qword_10008D990);
  sub_10003A1E0(&qword_1000B8CA8);
  v43 = v62;
  v44 = v65;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v66 + 8))(v42, v44);
  (*(v64 + 8))(v35, v43);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v45 = v68;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v59(v31, v26);
  LODWORD(v80) = 2;
  v46 = v72;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100031B9C(&qword_1000B8D10, &qword_1000B8D00, &qword_10008D300);
  sub_100031B9C(&qword_1000B8D18, &qword_1000B8CF8, &qword_10008D2F8);
  v47 = v71;
  v48 = v46;
  v49 = v73;
  v50 = v75;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v76 + 8))(v48, v50);
  (*(v74 + 8))(v45, v49);
  v51 = sub_100022F18(&qword_1000B8D20, &qword_10008D348);
  v52 = v79;
  v79[3] = v51;
  v52[4] = sub_10003A2C4();
  sub_10003A24C(v52);
  sub_100031B9C(&qword_1000B8CF0, &qword_1000B8C88, &unk_10008D280);
  sub_100031B9C(&qword_1000B8D48, &qword_1000B8D08, qword_10008D308);
  v53 = v63;
  v54 = v47;
  v55 = v69;
  v56 = v77;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v78 + 8))(v54, v56);
  return (*(v70 + 8))(v53, v55);
}

uint64_t sub_100039364@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v59 = a4;
  v60 = a5;
  v53 = a2;
  v54 = a3;
  v61 = a6;
  v56 = sub_100022F18(&qword_1000B8C70, &qword_10008D990);
  v64 = *(v56 - 8);
  v7 = *(v64 + 64);
  __chkstk_darwin(v56, v8);
  v10 = v47 - v9;
  v11 = sub_100022F18(&qword_1000B8C78, &qword_10008D270);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = v47 - v15;
  v17 = sub_100022F18(&qword_1000B8C80, &qword_10008D278);
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = v47 - v21;
  v23 = sub_100022F18(&qword_1000B8C88, &unk_10008D280);
  v24 = *(v23 - 8);
  v57 = v23;
  v58 = v24;
  v25 = *(v24 + 64);
  v27 = __chkstk_darwin(v23, v26);
  v55 = v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v51 = *a1;
  v52 = v47 - v30;
  sub_100031B9C(&qword_1000B8C90, &qword_1000B8C78, &qword_10008D270);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v48 = v11;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v31 = *(v12 + 8);
  v49 = v12 + 8;
  v50 = v31;
  v31(v16, v11);
  v65 = v53;
  v66 = v54;
  v54 = sub_100022F18(&qword_1000B8630, &qword_10008C9F0);
  v32 = v10;
  static PredicateExpressions.build_Arg<A>(_:)();
  v53 = sub_100031B9C(&qword_1000B8C98, &qword_1000B8C80, &qword_10008D278);
  v47[1] = sub_100031B9C(&qword_1000B8CA0, &qword_1000B8C70, &qword_10008D990);
  sub_10003A1E0(&qword_1000B8CA8);
  v33 = v62;
  v34 = v56;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v35 = *(v64 + 8);
  v64 += 8;
  v35(v32, v34);
  v36 = *(v63 + 8);
  v63 += 8;
  v36(v22, v33);
  v37 = v48;
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v50(v16, v37);
  v65 = v59;
  v66 = v60;
  static PredicateExpressions.build_Arg<A>(_:)();
  v38 = v55;
  v39 = v32;
  v40 = v62;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  v35(v39, v34);
  v36(v22, v40);
  v41 = sub_100022F18(&qword_1000B8CB0, &qword_10008D2F0);
  v42 = v61;
  v61[3] = v41;
  v42[4] = sub_100039FE4();
  sub_10003A24C(v42);
  sub_100031B9C(&qword_1000B8CF0, &qword_1000B8C88, &unk_10008D280);
  v43 = v52;
  v44 = v57;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  v45 = *(v58 + 8);
  v45(v38, v44);
  return (v45)(v43, v44);
}

void *sub_100039948(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100022F18(&qword_1000B8C50, qword_10008D230);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  type metadata accessor for AgeAttestationEntity();
  v8 = static AgeAttestationEntity.fetchRequest()();
  sub_100002B10(0, &qword_1000B8C58, NSPredicate_ptr);
  Predicate.init(_:)();
  v9 = NSPredicate.init<A>(_:)();
  [v8 setPredicate:v9];

  sub_100022F18(&qword_1000B8C60, &unk_10008DDE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10008D210;
  sub_100002B10(0, &qword_1000B8C68, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v10 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  swift_getKeyPath();
  *(v10 + 40) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setSortDescriptors:isa];

  v12 = a3;
  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
  }

  else
  {
    v12 = sub_100023A60(v13);
  }

  return v12;
}

uint64_t sub_100039B5C()
{
  v0 = sub_100022F18(&qword_1000B8C50, qword_10008D230);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  type metadata accessor for AgeAttestationEntity();
  v3 = static AgeAttestationEntity.fetchRequest()();
  sub_100002B10(0, &qword_1000B8C58, NSPredicate_ptr);
  Predicate.init(_:)();
  v4 = NSPredicate.init<A>(_:)();
  [v3 setPredicate:v4];

  sub_100022F18(&qword_1000B8C60, &unk_10008DDE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10008D220;
  sub_100002B10(0, &qword_1000B8C68, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v5 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setSortDescriptors:isa];

  v7 = NSManagedObjectContext.fetch<A>(_:)();
  return v7;
}

uint64_t sub_100039D3C()
{
  v0 = sub_100022F18(&qword_1000B8C50, qword_10008D230);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  type metadata accessor for AgeAttestationEntity();
  v3 = static AgeAttestationEntity.fetchRequest()();
  sub_100002B10(0, &qword_1000B8C58, NSPredicate_ptr);
  Predicate.init(_:)();
  v4 = NSPredicate.init<A>(_:)();
  [v3 setPredicate:v4];

  sub_100022F18(&qword_1000B8C60, &unk_10008DDE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10008D220;
  sub_100002B10(0, &qword_1000B8C68, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v5 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setSortDescriptors:isa];

  v7 = NSManagedObjectContext.fetch<A>(_:)();
  return v7;
}

uint64_t sub_100039F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100039FE4()
{
  result = qword_1000B8CB8;
  if (!qword_1000B8CB8)
  {
    sub_100022F60(&qword_1000B8CB0, &qword_10008D2F0);
    sub_10003A068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8CB8);
  }

  return result;
}

unint64_t sub_10003A068()
{
  result = qword_1000B8CC0;
  if (!qword_1000B8CC0)
  {
    sub_100022F60(&qword_1000B8C88, &unk_10008D280);
    sub_10003A3F4(&qword_1000B8CC8, &qword_1000B8C80, &qword_10008D278);
    sub_10003A10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8CC0);
  }

  return result;
}

unint64_t sub_10003A10C()
{
  result = qword_1000B8CD8;
  if (!qword_1000B8CD8)
  {
    sub_100022F60(&qword_1000B8C70, &qword_10008D990);
    sub_10003A1E0(&qword_1000B8CE0);
    sub_10003A1E0(&qword_1000B8CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8CD8);
  }

  return result;
}

uint64_t sub_10003A1E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100022F60(&qword_1000B8630, &qword_10008C9F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_10003A24C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_10003A2C4()
{
  result = qword_1000B8D28;
  if (!qword_1000B8D28)
  {
    sub_100022F60(&qword_1000B8D20, &qword_10008D348);
    sub_10003A068();
    sub_10003A350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8D28);
  }

  return result;
}

unint64_t sub_10003A350()
{
  result = qword_1000B8D30;
  if (!qword_1000B8D30)
  {
    sub_100022F60(&qword_1000B8D08, qword_10008D308);
    sub_10003A3F4(&qword_1000B8D38, &qword_1000B8D00, &qword_10008D300);
    sub_10003A48C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8D30);
  }

  return result;
}

uint64_t sub_10003A3F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100022F60(a2, a3);
    sub_100031B9C(&qword_1000B8CD0, &qword_1000B8C78, &qword_10008D270);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003A48C()
{
  result = qword_1000B8D40;
  if (!qword_1000B8D40)
  {
    sub_100022F60(&qword_1000B8CF8, &qword_10008D2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8D40);
  }

  return result;
}

unint64_t sub_10003A510()
{
  v0 = sub_100022F18(&qword_1000B8C50, qword_10008D230);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  type metadata accessor for AgeAttestationEntity();
  v3 = static AgeAttestationEntity.fetchRequest()();
  sub_100002B10(0, &qword_1000B8C58, NSPredicate_ptr);
  Predicate.init(_:)();
  v4 = NSPredicate.init<A>(_:)();
  [v3 setPredicate:v4];

  sub_100022F18(&qword_1000B8C60, &unk_10008DDE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10008D220;
  sub_100002B10(0, &qword_1000B8C68, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v5 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setSortDescriptors:isa];

  [v3 setFetchLimit:1];
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v11)
  {

    return v5;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v9 = result;
  v10 = _CocoaArrayWrapper.endIndex.getter();
  result = v9;
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_8:
    v5 = v8;

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t *DaemonAnalytics.shared.unsafeMutableAddressor()
{
  if (qword_1000B7F20 != -1)
  {
    swift_once();
  }

  return &static DaemonAnalytics.shared;
}

unint64_t DaemonAnalyticsType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000037;
  }

  if (a1 == 1)
  {
    return 0xD00000000000002ELL;
  }

  return 0xD00000000000002FLL;
}

uint64_t sub_10003A874(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000002ELL;
  v3 = *a1;
  v4 = "e.Notification.Received";
  if (v3 == 1)
  {
    v5 = 0xD00000000000002ELL;
  }

  else
  {
    v5 = 0xD00000000000002FLL;
  }

  if (v3 == 1)
  {
    v6 = "e.Notification.Received";
  }

  else
  {
    v6 = ".DeclaredAgeRange.API.CacheHit";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000037;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "InviteMessageBubbleExtension";
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000002FLL;
    v4 = ".DeclaredAgeRange.API.CacheHit";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000037;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "InviteMessageBubbleExtension";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10003A948()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003A9E0()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10003AA64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10003AAF8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s13familycircled19DaemonAnalyticsTypeO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10003AB28(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000002ELL;
  v3 = "e.Notification.Received";
  if (*v1 != 1)
  {
    v2 = 0xD00000000000002FLL;
    v3 = ".DeclaredAgeRange.API.CacheHit";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000037;
    v4 = "InviteMessageBubbleExtension";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_10003AB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v7 = dispatch thunk of RuntimeEnvironment.isTesting.getter();

  if (v7)
  {
    if (a2)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = a2;
      *(v8 + 24) = a3;
      v9 = sub_10003B84C;
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = sub_100037EA0;
      *(v12 + 24) = v3;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_10003B758;
      *(v8 + 24) = v12;

      v9 = sub_10003B784;
    }

    v13 = v9;
    v10 = swift_allocObject();
    *(v10 + 16) = v13;
    *(v10 + 24) = v8;
    v11 = sub_10003B78C;
  }

  else
  {
    sub_10003B6D8(a2);
    v10 = 0;
    v11 = sub_10003AE24;
  }

  v15 = *(v4 + 16);
  v14 = *(v4 + 24);
  *(v4 + 16) = v11;
  *(v4 + 24) = v10;
  sub_10003B6D8(v15);
  return v4;
}

uint64_t sub_10003ACDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t (*)(), uint64_t)@<X2>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v9 = *a2;
  v8 = a2[1];
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;

  LOBYTE(a3) = a3(v6, v7, sub_10003B7C4, v10);

  *a4 = a3 & 1;
  return result;
}

uint64_t sub_10003AD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, void *, void *))
{
  v12[0] = a1;
  v12[1] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v11[0] = sub_10003B794;
  v11[1] = v8;

  a5(&v10, v12, v11);

  return v10;
}

uint64_t sub_10003AE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10003AEE4;
  v10[3] = &unk_1000A8398;
  v7 = _Block_copy(v10);

  v8 = AnalyticsSendEventLazy();

  _Block_release(v7);

  return v8;
}

Class sub_10003AEE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10003B7FC();
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t static DaemonAnalytics.testableFamilyAnalytics(withEnvironment:sendFunction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DaemonAnalytics();
  v6 = swift_allocObject();

  sub_10003B6C8(a2);
  sub_10003AB80(a1, a2, a3);
  if (dispatch thunk of RuntimeEnvironment.isTesting.getter())
  {
    if (qword_1000B7F20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    static DaemonAnalytics.shared = v6;
  }

  return v6;
}

uint64_t sub_10003B058()
{
  type metadata accessor for RuntimeEnvironment();
  static RuntimeEnvironment.defaultEnvironment.getter();
  type metadata accessor for DaemonAnalytics();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = dispatch thunk of RuntimeEnvironment.isTesting.getter();

  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = sub_100037EA0;
    *(v2 + 24) = v0;
    *(v0 + 16) = sub_10003B848;
    *(v0 + 24) = v2;
  }

  else
  {
    *(v0 + 16) = sub_10003AE24;
    *(v0 + 24) = 0;
  }

  result = sub_10003B6D8(0);
  static DaemonAnalytics.shared = v0;
  return result;
}

uint64_t static DaemonAnalytics.shared.getter()
{
  if (qword_1000B7F20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_10003B1A4@<X0>(void *a1@<X8>)
{
  if (qword_1000B7F20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DaemonAnalytics.shared;
}

uint64_t sub_10003B224(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1000B7F20;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DaemonAnalytics.shared = v1;
}

uint64_t sub_10003B2AC(unsigned __int8 a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000649E8(a2);
  if (v11)
  {
    v12 = *(v2 + 16);
    if (v12)
    {
      v13 = *(v2 + 24);
      v14 = v11;
      v15 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          v16 = 0xD00000000000002ELL;
        }

        else
        {
          v16 = 0xD00000000000002FLL;
        }

        if (v15 == 1)
        {
          v17 = "e.Notification.Received";
        }

        else
        {
          v17 = ".DeclaredAgeRange.API.CacheHit";
        }
      }

      else
      {
        v16 = 0xD000000000000037;
        v17 = "InviteMessageBubbleExtension";
      }

      v25 = swift_allocObject();
      *(v25 + 16) = v14;

      v12(v16, v17 | 0x8000000000000000, sub_10003B750, v25);

      return sub_10003B6D8(v12);
    }

    else
    {
    }
  }

  else
  {
    static FamilyLogger.common.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_1000373D4(0xD000000000000012, 0x80000001000884B0, &v27);
      *(v20 + 12) = 2080;
      sub_100022F18(&qword_1000B8E20, &qword_10008D4C0);
      v21 = Dictionary.description.getter();
      v23 = sub_1000373D4(v21, v22, &v27);

      *(v20 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s, failed to cast payload %s as? [String: NSObject]", v20, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v6 + 8))(v10, v5);
  }
}

uint64_t DaemonAnalytics.deinit()
{
  v1 = *(v0 + 24);
  sub_10003B6D8(*(v0 + 16));
  return v0;
}

uint64_t DaemonAnalytics.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_10003B6D8(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t _s13familycircled19DaemonAnalyticsTypeO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A7708, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003B6C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003B6D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10003B6EC()
{
  result = qword_1000B8D50;
  if (!qword_1000B8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8D50);
  }

  return result;
}

uint64_t sub_10003B758()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_10003B794@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_10003B7C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

unint64_t sub_10003B7FC()
{
  result = qword_1000B8E28;
  if (!qword_1000B8E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B8E28);
  }

  return result;
}

uint64_t sub_10003B850(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 112) = v28;
  *(v9 + 120) = v8;
  *(v9 + 381) = v27;
  *(v9 + 380) = v25;
  *(v9 + 96) = a8;
  *(v9 + 104) = v26;
  *(v9 + 80) = a6;
  *(v9 + 88) = a7;
  *(v9 + 64) = a4;
  *(v9 + 72) = a5;
  *(v9 + 48) = a2;
  *(v9 + 56) = a3;
  *(v9 + 376) = a1;
  v10 = type metadata accessor for AgeRangeDaemonServiceNewInfoCalculator();
  *(v9 + 128) = v10;
  v11 = *(v10 - 8);
  *(v9 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 144) = swift_task_alloc();
  v13 = type metadata accessor for NewInfoMetadata();
  *(v9 + 152) = v13;
  v14 = *(v13 - 8);
  *(v9 + 160) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 168) = swift_task_alloc();
  v16 = *(*(sub_100022F18(&qword_1000B89A8, &qword_10008CE90) - 8) + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  v17 = type metadata accessor for Date();
  *(v9 + 184) = v17;
  v18 = *(v17 - 8);
  *(v9 + 192) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 200) = swift_task_alloc();
  v20 = type metadata accessor for Logger();
  *(v9 + 208) = v20;
  v21 = *(v20 - 8);
  *(v9 + 216) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  *(v9 + 240) = swift_task_alloc();
  *(v9 + 248) = swift_task_alloc();
  *(v9 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_10003BABC, 0, 0);
}

uint64_t sub_10003BABC()
{
  v32 = v0;
  v1 = *(v0 + 256);
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 256);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000052, 0x8000000100088BD0, &v31);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 264) = v10;
  v11 = *(v0 + 376);
  if (v11 == 1)
  {
    v24 = swift_task_alloc();
    *(v0 + 272) = v24;
    *v24 = v0;
    v25 = sub_10003BDDC;
  }

  else
  {
    if (v11 == 3)
    {
      type metadata accessor for AgeRangeError(0);
      *(v0 + 40) = -4003;
      sub_100023D48(&_swiftEmptyArrayStorage);
      sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v12 = *(v0 + 32);
      swift_willThrow();
      v14 = *(v0 + 248);
      v13 = *(v0 + 256);
      v16 = *(v0 + 232);
      v15 = *(v0 + 240);
      v17 = *(v0 + 224);
      v18 = *(v0 + 200);
      v20 = *(v0 + 168);
      v19 = *(v0 + 176);
      v21 = *(v0 + 144);

      v22 = *(v0 + 8);

      return v22();
    }

    v24 = swift_task_alloc();
    *(v0 + 360) = v24;
    *v24 = v0;
    v25 = sub_10003CFCC;
  }

  v24[1] = v25;
  v26 = *(v0 + 120);
  v28 = *(v0 + 80);
  v27 = *(v0 + 88);
  v29 = *(v0 + 48);
  v30 = *(v0 + 56);

  return sub_100044F50(v28, v27, v29, v30);
}

uint64_t sub_10003BDDC()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[31];
    v5 = v2[32];
    v8 = v2[29];
    v7 = v2[30];
    v9 = v2[28];
    v10 = v2[25];
    v12 = v2[21];
    v11 = v2[22];
    v13 = v2[18];

    v14 = *(v4 + 8);

    return v14();
  }

  else
  {

    return _swift_task_switch(sub_10003BF98, 0, 0);
  }
}

uint64_t sub_10003BF98()
{
  v22 = v0;
  v1 = *(v0 + 248);
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v20 = *(v0 + 264);
    v4 = *(v0 + 248);
    v5 = *(v0 + 208);
    v6 = *(v0 + 216);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    *(v0 + 372) = 1;
    type metadata accessor for AgeRangeGlobalState(0);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000373D4(v9, v10, &v21);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Global state :%s, returning, returning response without prompting the user.", v7, 0xCu);
    sub_100024F7C(v8);

    v20(v4, v5);
  }

  else
  {
    v12 = *(v0 + 264);
    v13 = *(v0 + 248);
    v14 = *(v0 + 208);
    v15 = *(v0 + 216);

    v12(v13, v14);
  }

  v16 = swift_task_alloc();
  *(v0 + 280) = v16;
  *v16 = v0;
  v16[1] = sub_10003C19C;
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);

  return sub_1000562D0(v18, v17);
}

uint64_t sub_10003C19C(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_10003C29C, 0, 0);
}

uint64_t sub_10003C29C()
{
  if (*(v0 + 380))
  {
    v27 = 0;
    if ((*(v0 + 381) & 1) == 0)
    {
LABEL_3:
      v1 = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + 104)];
      goto LABEL_6;
    }
  }

  else
  {
    v27 = [objc_allocWithZone(NSNumber) initWithInteger:*(v0 + 96)];
    if ((*(v0 + 381) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v1 = 0;
LABEL_6:
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  static Date.now.getter();
  (*(v2 + 56))(v5, 1, 1, v4);
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if ((*(v2 + 48))(v5, 1, v4) == 1)
  {
    isa = 0;
  }

  else
  {
    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v16 = *(v0 + 176);
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v16, v15);
  }

  v18 = *(v0 + 192);
  v17 = *(v0 + 200);
  v19 = *(v0 + 184);
  *(v0 + 296) = [objc_allocWithZone(FAAgeRange) initWithAltDSID:v10 bundleID:v11 lowerbound:v27 upperbound:v1 response:1 responseType:0 createdAt:v12.super.isa invalidatedAt:isa validationLevel:*(v0 + 288)];

  (*(v18 + 8))(v17, v19);
  v20 = swift_task_alloc();
  *(v0 + 304) = v20;
  *v20 = v0;
  v20[1] = sub_10003C4F0;
  v21 = *(v0 + 120);
  v23 = *(v0 + 80);
  v22 = *(v0 + 88);
  v24 = *(v0 + 48);
  v25 = *(v0 + 56);

  return AgeRangeDaemonService.fetchAllAgeRangesForBundleID(with:bundleID:)(v23, v22, v24, v25);
}

uint64_t sub_10003C4F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v7 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v5 = sub_10003C784;
  }

  else
  {
    v5 = sub_10003C604;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10003C604()
{
  v1 = *(v0 + 312);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v19 = *(v0 + 312);
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 312);
  v4 = *(v0 + 296);
  v5 = *(v0 + 168);
  if (v2)
  {
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = *(v0 + 128);
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    AgeRangeDaemonServiceNewInfoCalculator.init()();
    AgeRangeDaemonServiceNewInfoCalculator.isThisNewInformation(from:newRequestRange:bundleID:)();

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v11 = *(v0 + 312);

    v12 = v4;
    NewInfoMetadata.init(isSuperSet:isOverLapping:ageRange:)();
  }

  if (*(v0 + 112) == 2)
  {
    v13 = 1;
  }

  else
  {
    v14 = *(v0 + 168);
    v13 = NewInfoMetadata.isOverLapping.getter();
  }

  *(v0 + 382) = v13 & 1;
  v15 = swift_task_alloc();
  *(v0 + 328) = v15;
  *v15 = v0;
  v15[1] = sub_10003C864;
  v16 = *(v0 + 296);
  v17 = *(v0 + 120);

  return AgeRangeDaemonService.saveAgeRange(with:)(v16);
}

uint64_t sub_10003C784()
{
  v1 = *(v0 + 320);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v10 = *(v0 + 144);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10003C864()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_10003D418;
  }

  else
  {
    v3 = sub_10003C978;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003C978()
{
  if (*(v0 + 382) == 1)
  {
    v1 = *(v0 + 240);
    static FamilyLogger.common.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Posting notification since we are sharing more information", v4, 2u);
    }

    v5 = *(v0 + 264);
    v6 = *(v0 + 240);
    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    v9 = v2;
    v10 = *(v0 + 381);
    v11 = *(v0 + 380);
    v12 = *(v0 + 96);
    v39 = *(v0 + 104);
    v40 = *(v0 + 120);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);

    v5(v6, v7);
    sub_10003DE6C(v14, v13, v12, v11 & 1, v39, v10 & 1);
  }

  else
  {
    v15 = *(v0 + 232);
    static FamilyLogger.common.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 264);
    v20 = *(v0 + 232);
    v21 = *(v0 + 208);
    v22 = *(v0 + 216);
    if (v18)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not posting notification since we are not sharing more information", v23, 2u);
    }

    v19(v20, v21);
  }

  v24 = *(v0 + 296);
  v25 = [v24 response];
  v26 = [v24 upperbound];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 integerValue];
  }

  else
  {
    v28 = 0;
  }

  v29 = sub_1000297A8((*(v0 + 120) + 48), *(*(v0 + 120) + 72));
  v30 = *v29;
  v31 = [*(*v29 + 16) aa_primaryAppleAccount];
  if (v31)
  {
    v32 = v31;
    isa = [*(v30 + 24) ageOfMajorityForAccount:v31];
    if (!isa)
    {
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(18).super.super.isa;
    }

    v34 = isa;
  }

  else
  {
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    v34 = NSNumber.init(integerLiteral:)(18).super.super.isa;
  }

  v35 = [(objc_class *)v34 integerValue];

  v36 = async function pointer to static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)[1];
  v37 = swift_task_alloc();
  *(v0 + 344) = v37;
  *v37 = v0;
  v37[1] = sub_10003CCD8;

  return static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)(v25, v28, v27 == 0, 0, 0, v35);
}

uint64_t sub_10003CCD8(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = a1;

  return _swift_task_switch(sub_10003CDD8, 0, 0);
}

uint64_t sub_10003CDD8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 296);
  v22 = [v2 lowerbound];
  v3 = [v2 upperbound];
  v16 = [v2 response];
  if (v1)
  {
    v4 = *(v0 + 352);
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = *(v0 + 296);
  v13 = *(v0 + 256);
  v14 = *(v0 + 248);
  v15 = *(v0 + 240);
  v17 = *(v0 + 232);
  v18 = *(v0 + 224);
  v7 = *(v0 + 168);
  v19 = *(v0 + 200);
  v20 = *(v0 + 176);
  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  v21 = *(v0 + 144);
  v10 = [objc_allocWithZone(FAAgeRangeResponse) initWithLowerbound:v22 upperbound:v3 validationLevel:*(v0 + 288) response:v16 parentalControlsInformation:v5.super.isa isSharingNewInformation:*(v0 + 382)];

  (*(v9 + 8))(v7, v8);

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_10003CFCC()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[31];
    v5 = v2[32];
    v8 = v2[29];
    v7 = v2[30];
    v9 = v2[28];
    v10 = v2[25];
    v12 = v2[21];
    v11 = v2[22];
    v13 = v2[18];

    v14 = *(v4 + 8);

    return v14();
  }

  else
  {

    return _swift_task_switch(sub_10003D188, 0, 0);
  }
}

uint64_t sub_10003D188()
{
  v31 = v0;
  v1 = *(v0 + 224);
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v29 = *(v0 + 264);
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v6 = *(v0 + 208);
    v7 = *(v0 + 376);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315138;
    *(v0 + 368) = v7;
    type metadata accessor for AgeRangeGlobalState(0);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000373D4(v10, v11, &v30);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Global state :%s, prompting the user for age attestation.", v8, 0xCu);
    sub_100024F7C(v9);

    v29(v4, v6);
  }

  else
  {
    v13 = *(v0 + 264);
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    v16 = *(v0 + 208);

    v13(v14, v16);
  }

  type metadata accessor for AgeRangeError(0);
  *(v0 + 24) = -4009;
  sub_100023D48(&_swiftEmptyArrayStorage);
  sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v17 = *(v0 + 16);
  swift_willThrow();
  v19 = *(v0 + 248);
  v18 = *(v0 + 256);
  v21 = *(v0 + 232);
  v20 = *(v0 + 240);
  v22 = *(v0 + 224);
  v23 = *(v0 + 200);
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);
  v26 = *(v0 + 144);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10003D418()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 336);
  v6 = *(v0 + 248);
  v5 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  v9 = *(v0 + 224);
  v10 = *(v0 + 200);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);
  v13 = *(v0 + 144);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t AgeRangeDaemonService.postAgeRangeNotification(with:lowerAgeBound:upperAgeBound:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_10003D5EC, 0, 0);
}

uint64_t sub_10003D5EC()
{
  v50 = v0;
  v1 = v0[10];
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v49 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD00000000000003BLL, 0x80000001000884F0, &v49);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = v0[9];
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];
  static FamilyLogger.daemon.getter();
  v15 = v12;

  v16 = v13;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v48 = v10;
    v19 = v0[4];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v49 = v22;
    *v20 = 138412802;
    isa = v16;
    if (!v19)
    {
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    }

    v24 = v0[5];
    *(v20 + 4) = isa;
    *v21 = isa;
    *(v20 + 12) = 2112;
    if (v24)
    {
      v25 = v16;
      v26 = v15;
    }

    else
    {
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      v30 = v16;
      v26 = NSNumber.init(integerLiteral:)(-1).super.super.isa;
    }

    v45 = v0[8];
    v46 = v0[7];
    v47 = v0[9];
    v32 = v0[2];
    v31 = v0[3];
    *(v20 + 14) = v26;
    v21[1] = v26;
    *(v20 + 22) = 2080;
    v33 = v15;
    *(v20 + 24) = sub_1000373D4(v32, v31, &v49);
    _os_log_impl(&_mh_execute_header, v17, v18, "About to post notification for age range - lo: %@, hi: %@, appName: %s", v20, 0x20u);
    sub_100022F18(&qword_1000B8590, &qword_10008C960);
    swift_arrayDestroy();

    sub_100024F7C(v22);

    v48(v47, v46);
  }

  else
  {
    v28 = v0[8];
    v27 = v0[9];
    v29 = v0[7];

    v10(v27, v29);
  }

  v34 = v0[4];
  if (v34)
  {
    v35 = [v16 integerValue];
    v36 = v0[5];
    if (v36)
    {
LABEL_13:
      v37 = [v15 integerValue];
      goto LABEL_16;
    }
  }

  else
  {
    v35 = 0;
    v36 = v0[5];
    if (v36)
    {
      goto LABEL_13;
    }
  }

  v37 = 0;
LABEL_16:
  v38 = v36 == 0;
  v39 = v34 == 0;
  v41 = v0[9];
  v40 = v0[10];
  v42 = v0[6];
  sub_10003DE6C(v0[2], v0[3], v35, v39, v37, v38);

  v43 = v0[1];

  return v43();
}

uint64_t sub_10003DB98(int a1, void *a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[6] = v9;
  v11 = a2;
  v12 = a3;

  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_10003DC90;

  return AgeRangeDaemonService.postAgeRangeNotification(with:lowerAgeBound:upperAgeBound:)(v8, v10, a2, a3);
}

uint64_t sub_10003DC90()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  v11 = *(v3 + 40);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v13 = *(v10 + 8);

  return v13();
}

void sub_10003DE6C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v7 = v6;
  v67 = a6;
  v68 = a5;
  v65 = a4;
  v66 = a3;
  v63 = a1;
  v64 = a2;
  v8 = sub_100022F18(&qword_1000B8290, &unk_10008C690);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v60 - v11;
  v13 = type metadata accessor for URL();
  v70 = *(v13 - 8);
  v14 = *(v70 + 64);
  __chkstk_darwin(v13, v15);
  v69 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v21, v24);
  v62 = &v60 - v26;
  __chkstk_darwin(v25, v27);
  v29 = &v60 - v28;
  static FamilyLogger.common.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v61 = v13;
    v33 = v17;
    v34 = v18;
    v35 = v32;
    v36 = swift_slowAlloc();
    v71 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1000373D4(0xD000000000000029, 0x8000000100088D00, &v71);
    _os_log_impl(&_mh_execute_header, v30, v31, "%s", v35, 0xCu);
    sub_100024F7C(v36);

    v18 = v34;
    v17 = v33;
    v13 = v61;
  }

  v37 = *(v18 + 8);
  v37(v29, v17);
  v38 = *(v7 + 24);
  if (v38)
  {
    v61 = v18;
    v39 = objc_allocWithZone(FAFamilyNotification);
    v40 = v38;
    v41 = [v39 init];
    type metadata accessor for AgeRangeStringsProvider();
    static AgeRangeStringsProvider.userNotificationTitle.getter();
    sub_100022F18(&qword_1000B8230, &qword_10008D830);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10008C640;
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = sub_100024F28();
    v43 = v64;
    *(v42 + 32) = v63;
    *(v42 + 40) = v43;

    String.init(format:_:)();

    sub_100057A8C(v66, v65 & 1, v68, v67 & 1, 4);
    v44 = String._bridgeToObjectiveC()();

    [v41 setTitle:v44];

    v45 = String._bridgeToObjectiveC()();

    [v41 setInformativeText:v45];

    v46 = String._bridgeToObjectiveC()();
    [v41 setIdentifier:v46];

    v47 = String._bridgeToObjectiveC()();
    [v41 setIconName:v47];

    URL.init(string:)();
    v48 = v70;
    if ((*(v70 + 48))(v12, 1, v13) == 1)
    {
      sub_10002624C(v12, &qword_1000B8290, &unk_10008C690);
    }

    else
    {
      (*(v48 + 32))(v69, v12, v13);
      v52 = v62;
      static FamilyLogger.common.getter();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Setting activateActionURL on notification", v55, 2u);
      }

      v37(v52, v17);
      v56 = v69;
      URL._bridgeToObjectiveC()(v57);
      v59 = v58;
      [v41 setActivateActionURL:v58];

      (*(v48 + 8))(v56, v13);
    }

    [v41 setHasHeader:0];
    [v40 deliverNotification:v41];
    sub_100027560();
  }

  else
  {
    static FamilyLogger.common.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed to post user notification, nil notifier", v51, 2u);
    }

    v37(v23, v17);
  }
}

uint64_t AgeRangeDaemonService.requestAgeRange(with:userAgeOverride:altDSID:bundleID:appName:attestedAtOverrideInDays:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[18] = v19;
  v9[19] = v8;
  v9[16] = a7;
  v9[17] = a8;
  v9[14] = a5;
  v9[15] = a6;
  v9[12] = a3;
  v9[13] = a4;
  v9[10] = a1;
  v9[11] = a2;
  v10 = *(*(sub_100022F18(&qword_1000B89A8, &qword_10008CE90) - 8) + 64) + 15;
  v9[20] = swift_task_alloc();
  v9[21] = swift_task_alloc();
  v11 = type metadata accessor for AgeRangeDaemonServiceNewInfoCalculator();
  v9[22] = v11;
  v12 = *(v11 - 8);
  v9[23] = v12;
  v13 = *(v12 + 64) + 15;
  v9[24] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v9[25] = v14;
  v15 = *(v14 - 8);
  v9[26] = v15;
  v16 = *(v15 + 64) + 15;
  v9[27] = swift_task_alloc();
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v9[30] = swift_task_alloc();
  v9[31] = swift_task_alloc();
  v9[32] = swift_task_alloc();
  v9[33] = swift_task_alloc();

  return _swift_task_switch(sub_10003E708, 0, 0);
}

char *sub_10003E708()
{
  v61 = v0;
  v1 = *(v0 + 264);
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 264);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v60 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000058, 0x8000000100088530, &v60);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 272) = v10;
  v11 = *(v0 + 152);
  v12 = *sub_1000297A8((v11 + 48), *(v11 + 72));
  if (sub_100032AF0() & 1) != 0 || (sub_100032DDC())
  {
    type metadata accessor for AgeRangeError(0);
    *(v0 + 72) = -4004;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = *(v0 + 64);
LABEL_6:
    swift_willThrow();
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v17 = *(v0 + 240);
    v16 = *(v0 + 248);
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);
    v20 = *(v0 + 216);
    v21 = *(v0 + 192);
    v22 = *(v0 + 160);
    v23 = *(v0 + 168);

    v24 = *(v0 + 8);

    return v24();
  }

  v26 = [*(*sub_1000297A8((v11 + 48) *(v11 + 72)) + 16)];
  if (!v26 || (v27 = v26, v28 = [v26 aa_altDSID], v27, !v28))
  {
    type metadata accessor for AgeRangeError(0);
    *(v0 + 24) = -4004;
    sub_100023D48(_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v47 = *(v0 + 16);
    goto LABEL_6;
  }

  v29 = *(v0 + 192);
  v30 = *(v0 + 88);
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(v0 + 280) = v31;
  *(v0 + 288) = v33;
  AgeRangeDaemonServiceNewInfoCalculator.init()();
  if (v30)
  {
    v34 = [*(v0 + 88) integerValue];
    *(v0 + 320) = v34;
    v35 = *(v0 + 80);
    if (v35 >> 62)
    {
      if (v35 < 0)
      {
        v58 = *(v0 + 80);
      }

      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = _swiftEmptyArrayStorage;
    if (v36)
    {
      v59 = v34;
      v60 = _swiftEmptyArrayStorage;
      result = sub_10005580C(0, v36 & ~(v36 >> 63), 0);
      if (v36 < 0)
      {
        __break(1u);
        return result;
      }

      v38 = 0;
      v37 = v60;
      v39 = v35 & 0xC000000000000001;
      v40 = *(v0 + 80) + 32;
      do
      {
        if (v39)
        {
          v41 = *(v0 + 80);
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v42 = *(v40 + 8 * v38);
        }

        v43 = v42;
        v44 = [v42 integerValue];

        v60 = v37;
        v46 = v37[2];
        v45 = v37[3];
        if (v46 >= v45 >> 1)
        {
          sub_10005580C((v45 > 1), v46 + 1, 1);
          v37 = v60;
        }

        ++v38;
        v37[2] = v46 + 1;
        v37[v46 + 4] = v44;
      }

      while (v36 != v38);
      v34 = v59;
    }

    v48 = sub_1000567F8(v37, v34);
    *(v0 + 536) = v49;
    *(v0 + 328) = v48;
    *(v0 + 336) = v50;
    *(v0 + 537) = v51;

    v54 = swift_task_alloc();
    *(v0 + 344) = v54;
    *v54 = v0;
    v54[1] = sub_10003F1BC;
    v56 = *(v0 + 280);
    v55 = *(v0 + 288);
    v57 = *(v0 + 152);

    return sub_1000492E4(v56, v55);
  }

  else
  {
    v52 = *sub_1000297A8((v11 + 48), *(v11 + 72));
    v53 = swift_task_alloc();
    *(v0 + 296) = v53;
    *v53 = v0;
    v53[1] = sub_10003ECD8;

    return sub_1000340F0();
  }
}

uint64_t sub_10003ECD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v7 = *(v4 + 288);

    v8 = sub_10003F0BC;
  }

  else
  {
    *(v4 + 312) = a1;
    v8 = sub_10003EE08;
  }

  return _swift_task_switch(v8, 0, 0);
}

char *sub_10003EE08()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  *(v0 + 320) = v2;
  v3 = *(v0 + 80);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v33 = *(v0 + 80);
    }

    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    result = sub_10005580C(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v34 = v1;
    v35 = v2;
    v6 = 0;
    v7 = *(v0 + 80) + 32;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = *(v0 + 80);
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v7 + 8 * v6);
      }

      v10 = v9;
      v11 = [v9 integerValue];

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_10005580C((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      _swiftEmptyArrayStorage[v13 + 4] = v11;
    }

    while (v4 != v6);
    v1 = v34;
    v2 = v35;
  }

  v14 = sub_1000567F8(_swiftEmptyArrayStorage, v2);
  *(v0 + 536) = v15;
  *(v0 + 328) = v14;
  *(v0 + 336) = v16;
  *(v0 + 537) = v17;
  if (v1)
  {
    v18 = *(v0 + 288);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    v20 = *(v0 + 256);
    v19 = *(v0 + 264);
    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    v24 = *(v0 + 224);
    v23 = *(v0 + 232);
    v25 = *(v0 + 216);
    v26 = *(v0 + 192);
    v27 = *(v0 + 168);
    v36 = *(v0 + 160);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {

    v29 = swift_task_alloc();
    *(v0 + 344) = v29;
    *v29 = v0;
    v29[1] = sub_10003F1BC;
    v31 = *(v0 + 280);
    v30 = *(v0 + 288);
    v32 = *(v0 + 152);

    return sub_1000492E4(v31, v30);
  }
}

uint64_t sub_10003F0BC()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v13 = v0[38];
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[20];
  v10 = v0[21];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003F1BC(int a1, void *a2)
{
  v5 = *v3;
  v6 = *(*v3 + 344);
  v10 = *v3;
  *(v5 + 532) = a1;
  *(v5 + 352) = v2;

  if (v2)
  {
    v7 = *(v5 + 288);

    v8 = sub_10003F4F0;
  }

  else
  {

    v8 = sub_10003F2EC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10003F2EC()
{
  v23 = v0;
  v1 = *(v0 + 256);
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 532);
    v21 = *(v0 + 272);
    v5 = *(v0 + 256);
    v6 = *(v0 + 200);
    v7 = *(v0 + 208);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    *(v0 + 528) = v4;
    type metadata accessor for AgeRangeGlobalState(0);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000373D4(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetched global age attestation state from database: %s.", v8, 0xCu);
    sub_100024F7C(v9);

    v21(v5, v6);
  }

  else
  {
    v13 = *(v0 + 272);
    v14 = *(v0 + 256);
    v15 = *(v0 + 200);
    v16 = *(v0 + 208);

    v13(v14, v15);
  }

  v17 = swift_task_alloc();
  *(v0 + 360) = v17;
  *v17 = v0;
  v17[1] = sub_10003F5F0;
  v19 = *(v0 + 96);
  v18 = *(v0 + 104);

  return sub_1000562D0(v19, v18);
}

uint64_t sub_10003F4F0()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v13 = v0[44];
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[20];
  v10 = v0[21];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003F5F0(uint64_t a1)
{
  v2 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = a1;

  return _swift_task_switch(sub_10003F6F0, 0, 0);
}

uint64_t sub_10003F6F0()
{
  if (*(v0 + 532) == 3)
  {
    v1 = *(v0 + 288);
    v2 = *(v0 + 248);

    static FamilyLogger.common.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Global state is never, declining request and not caching response.", v5, 2u);
    }

    v6 = *(v0 + 272);
    v7 = *(v0 + 248);
    v8 = *(v0 + 200);
    v9 = *(v0 + 208);
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 176);

    v6(v7, v8);
    type metadata accessor for AgeRangeError(0);
    *(v0 + 56) = -4003;
    sub_100023D48(&_swiftEmptyArrayStorage);
    sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = *(v0 + 48);
    swift_willThrow();
    (*(v11 + 8))(v10, v12);
    v15 = *(v0 + 256);
    v14 = *(v0 + 264);
    v17 = *(v0 + 240);
    v16 = *(v0 + 248);
    v19 = *(v0 + 224);
    v18 = *(v0 + 232);
    v20 = *(v0 + 216);
    v21 = *(v0 + 192);
    v22 = *(v0 + 168);
    v31 = *(v0 + 160);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v25 = swift_task_alloc();
    *(v0 + 376) = v25;
    *v25 = v0;
    v25[1] = sub_10003F9A4;
    v27 = *(v0 + 280);
    v26 = *(v0 + 288);
    v28 = *(v0 + 152);
    v29 = *(v0 + 112);
    v30 = *(v0 + 120);

    return AgeRangeDaemonService.fetchAllAgeRangesForBundleID(with:bundleID:)(v27, v26, v29, v30);
  }
}

uint64_t sub_10003F9A4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 376);
  v8 = *v2;
  v3[48] = a1;
  v3[49] = v1;

  if (v1)
  {
    v5 = v3[36];

    v6 = sub_100041414;
  }

  else
  {
    v6 = sub_10003FAC0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10003FAC0(uint64_t a1, id a2, _BOOL8 a3, uint64_t a4, uint64_t a5, id a6)
{
  v7 = *(v6 + 384);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v6 + 400) = v8;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_30:
    v63 = *(v6 + 384);
    v64 = *(v6 + 216);

    static FamilyLogger.daemon.getter();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "No cached response found in the database.", v67, 2u);
    }

    v68 = *(v6 + 537);
    v69 = *(v6 + 536);
    v70 = *(v6 + 272);
    v72 = *(v6 + 208);
    v71 = *(v6 + 216);
    v73 = *(v6 + 200);

    v70(v71, v73);
    sub_100027580();
    v74 = swift_task_alloc();
    *(v6 + 504) = v74;
    *v74 = v6;
    v74[1] = sub_1000411C8;
    v19 = *(v6 + 532);
    v20 = *(v6 + 328);
    v75 = *(v6 + 336);
    v22 = *(v6 + 280);
    v23 = *(v6 + 288);
    v76 = *(v6 + 152);
    v25 = *(v6 + 128);
    v26 = *(v6 + 136);
    v27 = *(v6 + 112);
    v28 = *(v6 + 120);
    goto LABEL_33;
  }

  if (v7 < 0)
  {
    v62 = *(v6 + 384);
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  *(v6 + 400) = v8;
  if (!v8)
  {
    goto LABEL_30;
  }

LABEL_3:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v77 = *(v6 + 384);
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v9 = *(*(v6 + 384) + 32);
  }

  v10 = v9;
  *(v6 + 408) = v9;
  v8 = [v9 response];
  a2 = *(v6 + 384);
  if (v8 != 2)
  {
    *(v6 + 440) = *(v6 + 392);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
      *(v6 + 448) = v29;
      *(v6 + 456) = 1;
      v48 = v29;
      v49 = [v29 response];
      v50 = [v48 upperbound];
      v51 = v50;
      if (v50)
      {
        v52 = [v50 integerValue];
      }

      else
      {
        v52 = 0;
      }

      v53 = sub_1000297A8((*(v6 + 152) + 48), *(*(v6 + 152) + 72));
      v54 = *v53;
      v55 = [*(*v53 + 16) aa_primaryAppleAccount];
      if (v55)
      {
        v56 = v55;
        isa = [*(v54 + 24) ageOfMajorityForAccount:v55];
        if (!isa)
        {
          sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
          isa = NSNumber.init(integerLiteral:)(18).super.super.isa;
        }

        v58 = isa;
      }

      else
      {
        sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
        v58 = NSNumber.init(integerLiteral:)(18).super.super.isa;
      }

      v59 = [(objc_class *)v58 integerValue];

      v60 = async function pointer to static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)[1];
      v61 = swift_task_alloc();
      *(v6 + 464) = v61;
      *v61 = v6;
      v61[1] = sub_1000403C4;
      v8 = v49;
      a2 = v52;
      a3 = v51 == 0;
      a4 = 0;
      a5 = 0;
      a6 = v59;

      return static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)(v8, a2, a3, a4, a5, a6);
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = *(a2 + 4);
      goto LABEL_16;
    }

LABEL_38:
    __break(1u);
    return static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)(v8, a2, a3, a4, a5, a6);
  }

  v11 = *(v6 + 384);

  v12 = [v10 invalidatedAt];
  if (v12)
  {
    v13 = *(v6 + 537);
    v14 = *(v6 + 536);
    v15 = *(v6 + 168);
    v16 = v12;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
    sub_10002624C(v15, &qword_1000B89A8, &qword_10008CE90);
    sub_100027580();
    v18 = swift_task_alloc();
    *(v6 + 416) = v18;
    *v18 = v6;
    v18[1] = sub_100040170;
    v19 = *(v6 + 532);
    v20 = *(v6 + 328);
    v21 = *(v6 + 336);
    v22 = *(v6 + 280);
    v23 = *(v6 + 288);
    v24 = *(v6 + 152);
    v25 = *(v6 + 128);
    v26 = *(v6 + 136);
    v27 = *(v6 + 112);
    v28 = *(v6 + 120);
LABEL_33:

    return sub_10003B850(v19, v27, v28, v25, v26, v22, v23, v20);
  }

  v30 = *(v6 + 288);
  v32 = *(v6 + 184);
  v31 = *(v6 + 192);
  v33 = *(v6 + 168);
  v34 = *(v6 + 176);

  v35 = type metadata accessor for Date();
  (*(*(v35 - 8) + 56))(v33, 1, 1, v35);
  sub_10002624C(v33, &qword_1000B89A8, &qword_10008CE90);
  sub_100027570();
  type metadata accessor for AgeRangeError(0);
  *(v6 + 40) = -4003;
  sub_100023D48(&_swiftEmptyArrayStorage);
  sub_10005901C(&qword_1000B8068, type metadata accessor for AgeRangeError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v78 = *(v6 + 32);
  swift_willThrow();

  (*(v32 + 8))(v31, v34);
  v37 = *(v6 + 256);
  v36 = *(v6 + 264);
  v39 = *(v6 + 240);
  v38 = *(v6 + 248);
  v41 = *(v6 + 224);
  v40 = *(v6 + 232);
  v42 = *(v6 + 216);
  v43 = *(v6 + 192);
  v44 = *(v6 + 160);
  v45 = *(v6 + 168);

  v46 = *(v6 + 8);

  return v46();
}

uint64_t sub_100040170(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 416);
  v6 = *v2;
  v4[53] = v1;

  v7 = v4[36];

  if (v1)
  {
    v8 = sub_100041614;
  }

  else
  {
    v4[54] = a1;
    v8 = sub_1000402B4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000402B4()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 216);
  v8 = *(v0 + 168);
  v11 = *(v0 + 160);
  v12 = *(v0 + 432);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  v9 = *(v0 + 8);

  return v9(v12);
}

uint64_t sub_1000403C4(uint64_t a1)
{
  v2 = *(*v1 + 464);
  v4 = *v1;
  *(*v1 + 472) = a1;

  return _swift_task_switch(sub_1000404C4, 0, 0);
}

uint64_t sub_1000404C4()
{
  v1 = [*(v0 + 448) lowerbound];
  v2 = *(v0 + 536);
  if (!v1)
  {
    if ((*(v0 + 536) & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_6:
    v6 = [*(v0 + 448) upperbound];
    v7 = *(v0 + 537);
    if (v6)
    {
      v8 = *(v0 + 336);
      v9 = v6;
      v10 = [v6 integerValue];

      if ((v7 & 1) != 0 || v10 != v8)
      {
        goto LABEL_14;
      }
    }

    else if ((*(v0 + 537) & 1) == 0)
    {
      goto LABEL_14;
    }

    v11 = *(v0 + 384);
    v12 = *(v0 + 288);
    v13 = *(v0 + 240);

    static FamilyLogger.daemon.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "There is a cached record that matches upper & lower bounds exactly, returning cached record", v16, 2u);
    }

    v17 = *(v0 + 472);
    v18 = *(v0 + 448);
    v19 = *(v0 + 272);
    v20 = *(v0 + 240);
    v21 = *(v0 + 200);
    v22 = *(v0 + 208);

    v19(v20, v21);
    sub_100027570();
    v23 = [v18 lowerbound];
    v24 = [v18 upperbound];
    v25 = [v18 response];
    if (v17)
    {
      v26 = *(v0 + 472);
      sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
      v27.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v27.super.isa = 0;
    }

    v82 = *(v0 + 448);
    v83 = *(v0 + 408);
    v131 = [objc_allocWithZone(FAAgeRangeResponse) initWithLowerbound:v23 upperbound:v24 validationLevel:*(v0 + 368) response:v25 parentalControlsInformation:v27.super.isa isSharingNewInformation:0];
    goto LABEL_46;
  }

  v3 = *(v0 + 328);
  v4 = v1;
  v5 = [v1 integerValue];

  if ((v2 & 1) == 0 && v5 == v3)
  {
    goto LABEL_6;
  }

LABEL_14:
  v28 = [*(v0 + 448) upperbound];
  if (!v28)
  {
    v41 = *(v0 + 472);

LABEL_20:

    goto LABEL_21;
  }

  v27.super.isa = v28;
  v29 = *(v0 + 320);
  if ([(objc_class *)v28 integerValue]>= v29)
  {
    v42 = *(v0 + 472);

    goto LABEL_20;
  }

  v30 = [*(v0 + 448) invalidatedAt];
  if (v30)
  {
    v31 = v30;
    v32 = *(v0 + 472);
    v33 = *(v0 + 448);
    v34 = *(v0 + 160);

    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = type metadata accessor for Date();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v36 = sub_10002624C(v34, &qword_1000B89A8, &qword_10008CE90);
LABEL_21:
    v43 = *(v0 + 440);
    goto LABEL_22;
  }

  v93 = *(v0 + 440);
  v94 = *(v0 + 448);
  v95 = *(v0 + 192);
  v96 = *(v0 + 160);
  v97 = *(v0 + 144);
  v98 = type metadata accessor for Date();
  (*(*(v98 - 8) + 56))(v96, 1, 1, v98);
  sub_10002624C(v96, &qword_1000B89A8, &qword_10008CE90);
  v99 = AgeRangeDaemonServiceNewInfoCalculator.isAgeRangeWithinGracePeriod(with:attestedAtOverrideInDays:)();
  if (v93)
  {
    v100 = *(v0 + 472);
    v101 = *(v0 + 448);
    v102 = *(v0 + 408);
    v103 = *(v0 + 384);
    v104 = *(v0 + 288);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    v106 = *(v0 + 256);
    v105 = *(v0 + 264);
    v108 = *(v0 + 240);
    v107 = *(v0 + 248);
    v110 = *(v0 + 224);
    v109 = *(v0 + 232);
    v111 = *(v0 + 216);
    v112 = *(v0 + 192);
    v113 = *(v0 + 168);
    v132 = *(v0 + 160);

    v114 = *(v0 + 8);

    return v114();
  }

  if ((v99 & 1) == 0)
  {
    v128 = *(v0 + 472);

    v43 = 0;
LABEL_22:
    v44 = *(v0 + 456);
    if (v44 == *(v0 + 400))
    {
      v45 = *(v0 + 384);
      v46 = *(v0 + 224);

      static FamilyLogger.daemon.getter();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "There is no cached record that matches the upper & lower bounds of this request exactly", v49, 2u);
      }

      v50 = *(v0 + 537);
      v51 = *(v0 + 536);
      v52 = *(v0 + 272);
      v53 = *(v0 + 224);
      v54 = *(v0 + 200);
      v55 = *(v0 + 208);

      v52(v53, v54);
      sub_100027580();
      v56 = swift_task_alloc();
      *(v0 + 480) = v56;
      *v56 = v0;
      v56[1] = sub_100040F74;
      v57 = *(v0 + 532);
      v58 = *(v0 + 328);
      v59 = *(v0 + 280);
      v60 = *(v0 + 288);
      v61 = *(v0 + 152);
      v62 = *(v0 + 128);
      v63 = *(v0 + 136);
      v64 = *(v0 + 112);
      v65 = *(v0 + 120);
      v135 = *(v0 + 336);

      return sub_10003B850(v57, v64, v65, v62, v63, v59, v60, v58);
    }

    *(v0 + 440) = v43;
    v67 = *(v0 + 384);
    if ((v67 & 0xC000000000000001) != 0)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v44 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v36 = *(v67 + v44 + 4);
    }

    *(v0 + 448) = v36;
    *(v0 + 456) = v44 + 1;
    if (!__OFADD__(v44, 1))
    {
      v68 = v36;
      v69 = [v36 response];
      v70 = [v68 upperbound];
      v71 = v70;
      if (v70)
      {
        v72 = [v70 integerValue];
      }

      else
      {
        v72 = 0;
      }

      v73 = sub_1000297A8((*(v0 + 152) + 48), *(*(v0 + 152) + 72));
      v74 = *v73;
      v75 = [*(*v73 + 16) aa_primaryAppleAccount];
      if (v75)
      {
        v76 = v75;
        isa = [*(v74 + 24) ageOfMajorityForAccount:v75];
        if (!isa)
        {
          sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
          isa = NSNumber.init(integerLiteral:)(18).super.super.isa;
        }

        v78 = isa;
      }

      else
      {
        sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
        v78 = NSNumber.init(integerLiteral:)(18).super.super.isa;
      }

      v79 = [(objc_class *)v78 integerValue];

      v80 = async function pointer to static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)[1];
      v81 = swift_task_alloc();
      *(v0 + 464) = v81;
      *v81 = v0;
      v81[1] = sub_1000403C4;
      v36 = v69;
      v67 = v72;
      v37 = v71 == 0;
      v38 = 0;
      v39 = 0;
      v40 = v79;

      return static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)(v36, v67, v37, v38, v39, v40);
    }

    __break(1u);
LABEL_62:
    __break(1u);
    return static ParentalControlsInformationProvider.getParentalControlsInformation(response:upperbound:isTestingMode:testClientConfigurationState:ageOfMajority:)(v36, v67, v37, v38, v39, v40);
  }

  v115 = *(v0 + 384);
  v116 = *(v0 + 288);
  v117 = *(v0 + 232);

  static FamilyLogger.daemon.getter();
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&_mh_execute_header, v118, v119, "There is a cached record within grace period returning cached record", v120, 2u);
  }

  v133 = *(v0 + 472);
  v121 = *(v0 + 448);
  v122 = *(v0 + 272);
  v123 = *(v0 + 232);
  v124 = *(v0 + 200);
  v125 = *(v0 + 208);

  v122(v123, v124);
  sub_100027570();
  v82 = [v121 lowerbound];
  v23 = [v121 upperbound];
  v126 = [v121 response];
  if (v133)
  {
    v127 = *(v0 + 472);
    sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
    v24 = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v24 = 0;
  }

  v83 = *(v0 + 448);
  v129 = *(v0 + 408);
  v131 = [objc_allocWithZone(FAAgeRangeResponse) initWithLowerbound:v82 upperbound:v23 validationLevel:*(v0 + 368) response:v126 parentalControlsInformation:v24 isSharingNewInformation:0];

LABEL_46:
  v84 = *(v0 + 256);
  v85 = *(v0 + 264);
  v87 = *(v0 + 240);
  v86 = *(v0 + 248);
  v89 = *(v0 + 224);
  v88 = *(v0 + 232);
  v90 = *(v0 + 216);
  v91 = *(v0 + 168);
  v130 = *(v0 + 160);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  v92 = *(v0 + 8);

  return v92(v131);
}

uint64_t sub_100040F74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 480);
  v6 = *v2;
  v4[61] = v1;

  v7 = v4[36];

  if (v1)
  {
    v8 = sub_100041724;
  }

  else
  {
    v4[62] = a1;
    v8 = sub_1000410B8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000410B8()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 216);
  v8 = *(v0 + 168);
  v11 = *(v0 + 160);
  v12 = *(v0 + 496);
  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  v9 = *(v0 + 8);

  return v9(v12);
}

uint64_t sub_1000411C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 504);
  v6 = *v2;
  v4[64] = v1;

  v7 = v4[36];

  if (v1)
  {
    v8 = sub_100041514;
  }

  else
  {
    v4[65] = a1;
    v8 = sub_10004130C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10004130C()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[21];
  v11 = v0[20];
  v12 = v0[65];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v9 = v0[1];

  return v9(v12);
}

uint64_t sub_100041414()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v13 = v0[49];
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[20];
  v10 = v0[21];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100041514()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v13 = v0[64];
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = v0[24];
  v9 = v0[20];
  v10 = v0[21];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100041614()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);
  v16 = *(v0 + 424);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  v10 = *(v0 + 216);
  v11 = *(v0 + 192);
  v12 = *(v0 + 160);
  v13 = *(v0 + 168);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100041724()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);
  v16 = *(v0 + 488);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  v10 = *(v0 + 216);
  v11 = *(v0 + 192);
  v12 = *(v0 + 160);
  v13 = *(v0 + 168);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100041A00(int a1, void *a2, int a3, int a4, int a5, void *a6, void *aBlock, uint64_t a8, char a9)
{
  v9[3] = a6;
  v9[4] = a8;
  v9[2] = a2;
  v9[5] = _Block_copy(aBlock);
  sub_100002B10(0, &qword_1000B8E30, NSNumber_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9[6] = v12;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v9[7] = v13;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v9[8] = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v9[9] = v18;
  v20 = a2;
  v21 = a6;

  v22 = swift_task_alloc();
  v9[10] = v22;
  *v22 = v9;
  v22[1] = sub_100041B80;

  return AgeRangeDaemonService.requestAgeRange(with:userAgeOverride:altDSID:bundleID:appName:attestedAtOverrideInDays:)(v12, a2, v26, v14, v24, v16, v17, v19);
}

uint64_t sub_100041B80(void *a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 72);
  v7 = *(*v2 + 64);
  v8 = *(*v2 + 56);
  v18 = *(*v2 + 48);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 24);
  v11 = *(*v2 + 16);
  v12 = *v2;

  v13 = *(v4 + 40);
  if (v3)
  {
    v14 = _convertErrorToNSError(_:)();

    (v13)[2](v13, 0, v14);

    _Block_release(v13);
  }

  else
  {
    (v13)[2](*(v4 + 40), a1, 0);
    _Block_release(v13);
  }

  v15 = *(v12 + 8);

  return v15();
}

uint64_t AgeRangeDaemonService.fetchAllAgeRangesForBundleID(with:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_100041EA4, 0, 0);
}

uint64_t sub_100041EA4()
{
  v1 = v0[7];
  v2 = *(v1 + 40);
  v3 = *((*(v1 + 32))() + 56);
  if (!v3)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = v3;

  v0[11] = [v4 newBackgroundContext];

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_10004203C;
  v7 = v0[3];
  v6 = v0[4];

  return sub_1000562D0(v7, v6);
}

uint64_t sub_10004203C(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_10004213C, 0, 0);
}

uint64_t sub_10004213C()
{
  v1 = v0[13];
  v2 = v0[11];
  v17 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = swift_allocObject();
  v0[14] = v9;
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = v2;
  v9[7] = v1;
  (*(v4 + 104))(v17, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v10 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v11 = v2;
  v12 = swift_task_alloc();
  v0[15] = v12;
  v13 = sub_100022F18(&qword_1000B8E38, &qword_10008D520);
  *v12 = v0;
  v12[1] = sub_1000422A4;
  v14 = v0[10];
  v15 = v0[11];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v14, sub_100056B54, v9, v13);
}

uint64_t sub_1000422A4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = v2[14];
  (*(v2[9] + 8))(v2[10], v2[8]);

  if (v0)
  {
    v6 = sub_10004249C;
  }

  else
  {
    v6 = sub_100042428;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100042428()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10004249C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100042508@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t **a4@<X8>)
{
  v35 = a3;
  v33 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100039D3C();
  if (!v4)
  {
    v14 = result;
    v15 = a1;
    v34 = v8;
    if (result >> 62)
    {
      goto LABEL_15;
    }

    v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v7;
    if (v16)
    {
      v38 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      while (1)
      {
        a2 = 0;
        v15 = v14 & 0xC000000000000001;
        v34 = v14 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          v7 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            break;
          }

          if (v15)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v19 = v35;
          }

          else
          {
            if (a2 >= *(v34 + 16))
            {
              goto LABEL_14;
            }

            v20 = v35;
            v21 = *(v14 + 8 * a2 + 32);
            v19 = v20;
            v18 = v21;
          }

          v36 = v18;
          sub_100043620(&v36, v19, &v37);

          v12 = v37;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v22 = v38[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++a2;
          if (v7 == v16)
          {

            v23 = v38;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        v24 = _CocoaArrayWrapper.endIndex.getter();
        v17 = v7;
        v25 = v33;
        if (!v24)
        {
          break;
        }

        v26 = _CocoaArrayWrapper.endIndex.getter();
        if (!v26)
        {

          *v25 = &_swiftEmptyArrayStorage;
          return result;
        }

        v16 = v26;
        v38 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v16 < 0)
        {
          __break(1u);
          break;
        }
      }
    }

    v27 = v12;
    static FamilyLogger.daemon.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_1000373D4(v15, a2, &v38);
      _os_log_impl(&_mh_execute_header, v28, v29, "No cached records exist for altDSID: %s.", v30, 0xCu);
      sub_100024F7C(v31);
    }

    result = (*(v34 + 8))(v27, v17);
    v23 = &_swiftEmptyArrayStorage;
LABEL_22:
    *v33 = v23;
  }

  return result;
}

uint64_t AgeRangeDaemonService.fetchAgeRanges(with:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000429B8, 0, 0);
}

uint64_t sub_1000429B8()
{
  v34 = v0;
  v1 = v0[12];
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000015, 0x8000000100088590, v33);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = v0[11];
  v12 = v0[4];
  static FamilyLogger.daemon.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[10];
  v16 = v0[11];
  v18 = v0[9];
  if (v15)
  {
    v32 = v10;
    v20 = v0[3];
    v19 = v0[4];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1000373D4(v20, v19, v33);
    _os_log_impl(&_mh_execute_header, v13, v14, "Fetching age ranges for altDSID: %s", v21, 0xCu);
    sub_100024F7C(v22);

    v23 = v32(v16, v18);
  }

  else
  {

    v23 = (v10)(v16, v18);
  }

  v24 = v0[5];
  v25 = *(v24 + 40);
  v26 = *((*(v24 + 32))(v23) + 56);
  if (!v26)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v27 = v26;

  v0[13] = [v27 newBackgroundContext];

  v28 = swift_task_alloc();
  v0[14] = v28;
  *v28 = v0;
  v28[1] = sub_100042DA8;
  v30 = v0[3];
  v29 = v0[4];

  return sub_1000562D0(v30, v29);
}

uint64_t sub_100042DA8(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return _swift_task_switch(sub_100042EA8, 0, 0);
}

uint64_t sub_100042EA8()
{
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = swift_allocObject();
  v0[16] = v8;
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v2;
  v8[5] = v1;
  (*(v4 + 104))(v3, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
  v9 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v10 = v2;
  v11 = swift_task_alloc();
  v0[17] = v11;
  v12 = sub_100022F18(&qword_1000B8E38, &qword_10008D520);
  *v11 = v0;
  v11[1] = sub_100042FFC;
  v13 = v0[13];
  v14 = v0[8];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v14, sub_100056B78, v8, v12);
}

uint64_t sub_100042FFC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = v2[16];
  (*(v2[7] + 8))(v2[8], v2[6]);

  if (v0)
  {
    v6 = sub_100043214;
  }

  else
  {
    v6 = sub_100043180;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100043180()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);

  v4 = *(v0 + 16);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100043214()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_10004329C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, NSObject *a4@<X3>, uint64_t **a5@<X8>)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100039948(a1, a2, a3);
  if (!v5)
  {
    v18 = result;
    v35 = a4;
    if (result >> 62)
    {
      goto LABEL_15;
    }

    v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      v33 = a5;
      v38 = _swiftEmptyArrayStorage;
      v16 = &v38;
      specialized ContiguousArray.reserveCapacity(_:)();
      while (1)
      {
        v11 = 0;
        v12 = v18 & 0xC000000000000001;
        v34 = v18 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          a5 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v11 >= *(v34 + 16))
            {
              goto LABEL_14;
            }

            v20 = *(v18 + 8 * v11 + 32);
          }

          v21 = v20;
          v36 = v20;
          sub_100043620(&v36, v35, &v37);

          a2 = v37;
          v16 = &v38;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          a1 = v38[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          ++v11;
          if (a5 == v19)
          {

            v22 = v38;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          break;
        }

        v23 = _CocoaArrayWrapper.endIndex.getter();
        if (!v23)
        {

          goto LABEL_24;
        }

        v19 = v23;
        v33 = a5;
        v38 = _swiftEmptyArrayStorage;
        v16 = &v38;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v19 < 0)
        {
          __break(1u);
          break;
        }
      }
    }

    static FamilyLogger.daemon.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v35 = v24;
      v27 = v26;
      v28 = swift_slowAlloc();
      v33 = a5;
      v29 = v28;
      v38 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000373D4(a1, a2, &v38);
      v30 = v25;
      v31 = v35;
      _os_log_impl(&_mh_execute_header, v35, v30, "No cached records exist for altDSID: %s.", v27, 0xCu);
      sub_100024F7C(v29);

      result = (*(v12 + 8))(v16, v11);
      v22 = _swiftEmptyArrayStorage;
LABEL_21:
      *v33 = v22;
    }

    else
    {

      result = (*(v12 + 8))(v16, v11);
LABEL_24:
      *a5 = _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_100043620@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v61 = a2;
  v62 = a3;
  v4 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v49 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v50 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v21 = &v49 - v20;
  v22 = *a1;
  v23 = [*a1 altDSID];
  if (v23)
  {
    v24 = v23;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v25;
  }

  else
  {
    v59 = 0;
    v60 = 0xE000000000000000;
  }

  v26 = [v22 bundleID];
  if (v26)
  {
    v27 = v26;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v28;
  }

  else
  {
    v55 = 0;
    v56 = 0xE000000000000000;
  }

  if ([v22 lowerbound])
  {
    v58 = [objc_allocWithZone(NSNumber) initWithInt:{objc_msgSend(v22, "lowerbound")}];
  }

  else
  {
    v58 = 0;
  }

  if ([v22 upperbound])
  {
    v54 = [objc_allocWithZone(NSNumber) initWithInt:{objc_msgSend(v22, "upperbound")}];
  }

  else
  {
    v54 = 0;
  }

  v53 = [v22 response];
  v52 = [v22 responseType];
  v29 = [v22 createdAt];
  if (v29)
  {
    v30 = v29;
    v31 = v50;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = *(v14 + 32);
    v32(v12, v31, v13);
    v33 = *(v14 + 56);
    v33(v12, 0, 1, v13);
    v32(v21, v12, v13);
  }

  else
  {
    v33 = *(v14 + 56);
    v33(v12, 1, 1, v13);
    static Date.now.getter();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_10002624C(v12, &qword_1000B89A8, &qword_10008CE90);
    }
  }

  v34 = [v22 invalidatedAt];
  if (v34)
  {
    v35 = v34;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v33(v9, v36, 1, v13);
  v37 = String._bridgeToObjectiveC()();

  v38 = String._bridgeToObjectiveC()();

  v39.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v40 = (*(v14 + 48))(v9, 1, v13);
  v57 = v21;
  v51 = v13;
  if (v40 == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v9, v13);
  }

  v42 = v53;
  v43 = v52;
  v44 = objc_allocWithZone(FAAgeRange);
  v45 = v58;
  v46 = v54;
  v47 = [v44 initWithAltDSID:v37 bundleID:v38 lowerbound:v58 upperbound:v54 response:v42 responseType:v43 createdAt:v39.super.isa invalidatedAt:isa validationLevel:v61];

  result = (*(v14 + 8))(v57, v51);
  *v62 = v47;
  return result;
}

uint64_t sub_100043CB8(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100043D8C;

  return AgeRangeDaemonService.fetchAgeRanges(with:)(v4, v6);
}

uint64_t sub_100043D8C()
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
    sub_100002B10(0, &qword_1000B9038, FAAgeRange_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

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

uint64_t AgeRangeDaemonService.deleteAgeRanges(with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100044070, 0, 0);
}

uint64_t sub_100044070()
{
  v27 = v0;
  v1 = v0[10];
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000016, 0x80000001000885B0, &v26);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = (*(v6 + 8))(v5, v7);
  v11 = v0[4];
  v12 = *(v11 + 40);
  v13 = *((*(v11 + 32))(v10) + 56);
  if (!v13)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[5];
  v18 = v0[2];
  v17 = v0[3];
  v19 = v13;

  v20 = [v19 newBackgroundContext];
  v0[11] = v20;

  v21 = swift_allocObject();
  v0[12] = v21;
  v21[2] = v18;
  v21[3] = v17;
  v21[4] = v20;
  (*(v15 + 104))(v14, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v16);
  v22 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v20;
  v23 = swift_task_alloc();
  v0[13] = v23;
  *v23 = v0;
  v23[1] = sub_1000443B8;
  v24 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_1000443B8()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1000445C4;
  }

  else
  {
    v7 = sub_10004454C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10004454C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000445C4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

void sub_10004463C(uint64_t a1, unint64_t a2, void *a3)
{
  v47 = type metadata accessor for Logger();
  v44 = *(v47 - 8);
  v6 = *(v44 + 64);
  v8 = __chkstk_darwin(v47, v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v43 - v12;
  v14 = sub_100022F18(&qword_1000B8C50, qword_10008D230);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v17 = type metadata accessor for AgeAttestationEntity();
  v18 = static AgeAttestationEntity.fetchRequest()();
  sub_100002B10(0, &qword_1000B8C58, NSPredicate_ptr);
  v45 = a2;
  v46 = a1;
  v49 = a1;
  v50 = a2;
  v51[1] = v17;
  Predicate.init(_:)();
  v19 = NSPredicate.init<A>(_:)();
  [v18 setPredicate:v19];

  v20 = v48;
  v21 = NSManagedObjectContext.fetch<A>(_:)();

  if (v20)
  {
    return;
  }

  v23 = v46;
  v22 = v47;
  v48 = v13;
  if (v21 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v25 = v23;
    if (v24)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v46;
    if (v24)
    {
LABEL_4:
      if (v24 < 1)
      {
        __break(1u);
      }

      for (i = 0; i != v24; ++i)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v27 = *(v21 + 8 * i + 32);
        }

        v28 = v27;
        [a3 deleteObject:v27];
      }

      v51[0] = 0;
      if ([a3 save:v51])
      {
        v29 = v51[0];
        v30 = v48;
        static FamilyLogger.daemon.getter();
        v31 = v45;

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v51[0] = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_1000373D4(v25, v31, v51);
          _os_log_impl(&_mh_execute_header, v32, v33, "Deleted age attestations with altDSID: %s", v34, 0xCu);
          sub_100024F7C(v35);
        }

        (*(v44 + 8))(v30, v47);
      }

      else
      {
        v36 = v51[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      return;
    }
  }

  v37 = v10;
  static FamilyLogger.daemon.getter();
  v38 = v45;

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v51[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_1000373D4(v23, v38, v51);
    _os_log_impl(&_mh_execute_header, v39, v40, "No cached records exist for altDSID: %s, skipping deletion.", v41, 0xCu);
    sub_100024F7C(v42);
  }

  (*(v44 + 8))(v37, v22);
}

uint64_t sub_100044CD8(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100044DAC;

  return AgeRangeDaemonService.deleteAgeRanges(with:)(v4, v6);
}

uint64_t sub_100044DAC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100044F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100045018, 0, 0);
}

uint64_t sub_100045018()
{
  v1 = v0[6];
  v2 = *(v1 + 40);
  v3 = *((*(v1 + 32))() + 56);
  if (!v3)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = v0[8];
  v17 = v0[9];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v9 = v0[3];
  v10 = v3;

  v11 = [v10 newBackgroundContext];
  v0[10] = v11;

  v12 = swift_allocObject();
  v0[11] = v12;
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v7;
  v12[5] = v6;
  v12[6] = v11;
  (*(v4 + 104))(v17, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
  v13 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v11;
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_100045274;
  v15 = v0[9];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v14, v15, sub_100058320, v12, &type metadata for () + 8);
}

uint64_t sub_100045274()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_100045474;
  }

  else
  {
    v7 = sub_100045408;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100045408()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100045474()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1000454E0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = v58;
  result = sub_100039D3C();
  if (!v25)
  {
    v27 = result;
    v53 = v24;
    v54 = v14;
    v29 = v56;
    v28 = v57;
    v58 = v20;
    v51 = v21;
    v52 = v23;
    v49 = v22;
    if (result >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v58;
    v32 = v28;
    v33 = v29;
    v34 = v53;
    v35 = v54;
    v50 = 0;
    if (v30)
    {
      if (v30 < 1)
      {
        __break(1u);
      }

      v36 = 0;
      v37 = (v55 + 8);
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v38 = *(v27 + 8 * v36 + 32);
        }

        v39 = v38;
        ++v36;
        static Date.now.getter();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*v37)(v19, v15);
        [v39 setInvalidatedAt:{isa, v49, v50}];
      }

      while (v30 != v36);

      v33 = v56;
      v32 = v57;
      v34 = v53;
      v35 = v54;
      v31 = v58;
    }

    else
    {
    }

    v59 = 0;
    v41 = [v34 save:{&v59, v49}];
    v43 = v51;
    v42 = v52;
    if (v41)
    {
      v44 = v59;
      static FamilyLogger.daemon.getter();

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v47 = 136315394;
        *(v47 + 4) = sub_1000373D4(v31, v43, &v59);
        *(v47 + 12) = 2080;
        *(v47 + 14) = sub_1000373D4(v49, v42, &v59);
        _os_log_impl(&_mh_execute_header, v45, v46, "Invalidated all attestations with altDSID %s and %s", v47, 0x16u);
        swift_arrayDestroy();

        return (*(v33 + 8))(v54, v32);
      }

      else
      {

        return (*(v33 + 8))(v35, v32);
      }
    }

    else
    {
      v48 = v59;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100045928(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000459EC, 0, 0);
}

uint64_t sub_1000459EC()
{
  v1 = v0[4];
  v2 = *(v1 + 40);
  v3 = *((*(v1 + 32))() + 56);
  if (!v3)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  v9 = v3;

  v10 = [v9 newBackgroundContext];
  v0[8] = v10;

  v11 = swift_allocObject();
  v0[9] = v11;
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = v10;
  (*(v5 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v6);
  v12 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v10;
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_100045C34;
  v14 = v0[7];

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_100045C34()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 88) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_100045E34;
  }

  else
  {
    v7 = sub_100045DC8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100045DC8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100045E34()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_100045EA0(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = type metadata accessor for Logger();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  __chkstk_darwin(v7, v9);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100039B5C();
  if (!v3)
  {
    v19 = result;
    v44 = v13;
    v45 = a3;
    v20 = v46;
    v41 = a1;
    v42 = a2;
    v43 = v11;
    if (result >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v20;
    v23 = v7;
    v24 = v45;
    v40[1] = 0;
    if (v21)
    {
      v40[0] = v7;
      if (v21 < 1)
      {
        __break(1u);
      }

      v25 = 0;
      v26 = (v44 + 8);
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v27 = *(v19 + 8 * v25 + 32);
        }

        v28 = v27;
        ++v25;
        static Date.now.getter();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*v26)(v17, v12);
        [v28 setInvalidatedAt:isa];
      }

      while (v21 != v25);

      v23 = v40[0];
      v24 = v45;
      v22 = v46;
    }

    else
    {
    }

    v47 = 0;
    v30 = [v24 save:{&v47, v40[0]}];
    v32 = v42;
    v31 = v43;
    v33 = v41;
    if (v30)
    {
      v34 = v47;
      static FamilyLogger.daemon.getter();

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v47 = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_1000373D4(v33, v32, &v47);
        _os_log_impl(&_mh_execute_header, v35, v36, "Invalidated all declined age attestations with altDSID %s", v37, 0xCu);
        sub_100024F7C(v38);
      }

      return (*(v22 + 8))(v31, v23);
    }

    else
    {
      v39 = v47;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t AgeRangeDaemonService.saveAgeRange(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10004638C, 0, 0);
}

uint64_t sub_10004638C()
{
  v27 = v0;
  v1 = v0[9];
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000013, 0x80000001000885D0, &v26);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = (*(v6 + 8))(v5, v7);
  v11 = v0[3];
  v12 = *(v11 + 40);
  v13 = *((*(v11 + 32))(v10) + 56);
  if (!v13)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  v17 = v0[2];
  v18 = v13;

  v19 = [v18 newBackgroundContext];
  v0[10] = v19;

  v20 = swift_allocObject();
  v0[11] = v20;
  *(v20 + 16) = v19;
  *(v20 + 24) = v17;
  (*(v15 + 104))(v14, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v16);
  v21 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v19;
  v22 = v17;
  v23 = swift_task_alloc();
  v0[12] = v23;
  *v23 = v0;
  v23[1] = sub_1000466BC;
  v24 = v0[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_1000466BC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1000468C8;
  }

  else
  {
    v7 = sub_100046850;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100046850()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000468C8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

void sub_100046940(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v36 - v12;
  type metadata accessor for AgeAttestationEntity();
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v37 = a1;
  v15 = [v14 initWithContext:a1];
  v16 = [a2 altDSID];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v15 setAltDSID:v16];

  v17 = [a2 bundleID];
  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  [v15 setBundleID:v17];

  v18 = [a2 lowerbound];
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = [a2 lowerbound];
  if (!v19)
  {
    __break(1u);
    goto LABEL_35;
  }

  v20 = v19;
  v21 = [v19 integerValue];

  if (v21 < 0xFFFFFFFF80000000)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  if (v21 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_10:
    v21 = 0;
  }

  [v15 setLowerbound:v21];
  v22 = [a2 upperbound];
  if (!v22)
  {
LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

  v23 = [a2 upperbound];
  if (!v23)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = [v23 integerValue];

  if (v25 < 0xFFFFFFFF80000000)
  {
    goto LABEL_33;
  }

  if (v25 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  [v15 setUpperbound:v25];
  v26 = [a2 response];
  if (v26 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v26 > 0x7FFFFFFF)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v15 setResponse:v26];
  v27 = [a2 responseType];
  if (v27 < 0xFFFFFFFF80000000)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v27 > 0x7FFFFFFF)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v15 setResponseType:v27];
  v28 = [a2 createdAt];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  v30 = *(v5 + 8);
  v30(v13, v4);
  [v15 setCreatedAt:isa];

  v31 = [a2 invalidatedAt];
  if (v31)
  {
    v32 = v31;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v33.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v30(v10, v4);
  }

  else
  {
    v33.super.isa = 0;
  }

  [v15 setInvalidatedAt:v33.super.isa];

  v38 = 0;
  if ([v37 save:&v38])
  {
    v34 = v38;
  }

  else
  {
    v35 = v38;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100046F68(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10004702C;

  return AgeRangeDaemonService.saveAgeRange(with:)(v5);
}

uint64_t sub_10004702C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t AgeRangeDaemonService.updateAgeRange(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000472E8, 0, 0);
}

uint64_t sub_1000472E8()
{
  v27 = v0;
  v1 = v0[9];
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD000000000000015, 0x80000001000885F0, &v26);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = (*(v6 + 8))(v5, v7);
  v11 = v0[3];
  v12 = *(v11 + 40);
  v13 = *((*(v11 + 32))(v10) + 56);
  if (!v13)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  v17 = v0[2];
  v18 = v13;

  v19 = [v18 newBackgroundContext];
  v0[10] = v19;

  v20 = swift_allocObject();
  v0[11] = v20;
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  (*(v15 + 104))(v14, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v16);
  v21 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];
  v22 = v17;
  v19;
  v23 = swift_task_alloc();
  v0[12] = v23;
  *v23 = v0;
  v23[1] = sub_100047618;
  v24 = v0[6];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v23, v24, sub_100056BD4, v20, &type metadata for () + 8);
}

uint64_t sub_100047618()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1000591DC;
  }

  else
  {
    v7 = sub_1000591E4;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_1000477AC(void *a1, void *a2)
{
  v70 = a2;
  v3 = type metadata accessor for Logger();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  __chkstk_darwin(v3, v5);
  v68 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Date();
  v67 = *(v7 - 8);
  v8 = *(v67 + 64);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v63 - v14;
  v16 = [a1 altDSID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = [a1 bundleID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = v69;
  v19 = sub_10003A510();
  if (v18)
  {

    return;
  }

  v20 = v19;
  v69 = 0;
  v63 = v15;
  v64 = v12;
  v21 = v67;
  p_prots = v68;

  if (!v20)
  {
    goto LABEL_14;
  }

  v23 = [a1 altDSID];
  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  [v20 setAltDSID:v23];

  v24 = [a1 bundleID];
  v25 = v7;
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  [v20 setBundleID:v24];

  v26 = [a1 lowerbound];
  p_prots = &OBJC_CATEGORY_NSUserDefaults___familycircled.prots;
  v27 = v21;
  if (v26)
  {

    v28 = [a1 lowerbound];
    v29 = v64;
    if (!v28)
    {
      __break(1u);
      goto LABEL_42;
    }

    v30 = v28;
    v31 = [v28 integerValue];

    if (v31 < 0xFFFFFFFF80000000)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    if (v31 > 0x7FFFFFFF)
    {
      __break(1u);
LABEL_14:
      v32 = p_prots;
      static FamilyLogger.daemon.getter();
      v33 = a1;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v36 = 136315394;
        v37 = [v33 altDSID];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = sub_1000373D4(v38, v40, &v71);

        *(v36 + 4) = v41;
        *(v36 + 12) = 2080;
        v42 = [v33 bundleID];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        v46 = sub_1000373D4(v43, v45, &v71);

        *(v36 + 14) = v46;
        _os_log_impl(&_mh_execute_header, v34, v35, "No cached record exist for altDSID: %s, bundleID: %s, skipping deletion.", v36, 0x16u);
        swift_arrayDestroy();
      }

      (*(v65 + 8))(v32, v66);
      return;
    }
  }

  else
  {
    v31 = 0;
    v29 = v64;
  }

  [v20 setLowerbound:v31];
  v47 = [a1 upperbound];
  if (!v47)
  {
LABEL_23:
    v50 = 0;
    goto LABEL_24;
  }

  v48 = [a1 upperbound];
  if (!v48)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v49 = v48;
  v50 = [v48 integerValue];

  if (v50 < 0xFFFFFFFF80000000)
  {
    goto LABEL_40;
  }

  if (v50 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  [v20 setUpperbound:v50];
  v51 = [a1 response];
  if (v51 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_36;
  }

  v52 = v63;
  if (v51 > 0x7FFFFFFF)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v20 setResponse:v51];
  v53 = [a1 responseType];
  if (v53 < 0xFFFFFFFF80000000)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v53 > 0x7FFFFFFF)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v20 setResponseType:v53];
  v54 = [a1 createdAt];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  v56 = v52;
  v57 = *(v27 + 8);
  v57(v56, v25);
  [v20 setCreatedAt:isa];

  v58 = [a1 invalidatedAt];
  if (v58)
  {
    v59 = v58;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v60.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v57(v29, v25);
  }

  else
  {
    v60.super.isa = 0;
  }

  [v20 setInvalidatedAt:v60.super.isa];

  v71 = 0;
  if ([v70 save:&v71])
  {
    v61 = v71;
  }

  else
  {
    v62 = v71;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100048068(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000591E0;

  return AgeRangeDaemonService.updateAgeRange(with:)(v5);
}

uint64_t AgeRangeDaemonService.saveAgeRangeGlobalState(_:for:cacheDuration:privacyVersion:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 240) = a1;
  v7 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  v8 = type metadata accessor for ShareOptionMetadata();
  *(v6 + 64) = v8;
  v9 = *(v8 - 8);
  *(v6 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v11 = *(*(sub_100022F18(&qword_1000B89A8, &qword_10008CE90) - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  v12 = sub_100022F18(&qword_1000B8E40, &qword_10008D550);
  *(v6 + 104) = v12;
  v13 = *(v12 - 8);
  *(v6 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  v15 = *(*(sub_100022F18(&qword_1000B8E48, &qword_10008D558) - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  *(v6 + 152) = v16;
  v17 = *(v16 - 8);
  *(v6 + 160) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_100048388, 0, 0);
}

uint64_t sub_100048388()
{
  v42 = v0;
  v1 = *(v0 + 176);
  static FamilyLogger.daemon.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000373D4(0xD00000000000003CLL, 0x8000000100088610, &v41);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v8, 0xCu);
    sub_100024F7C(v9);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  *(v0 + 184) = v10;
  v11 = *(v0 + 144);
  v12 = *(v0 + 128);
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v15 = *(v0 + 64);
  v17 = *(v0 + 16);
  v16 = *(v0 + 24);
  sub_10005901C(&qword_1000B8E50, &type metadata accessor for ShareOptionMetadata);
  sub_10005901C(&qword_1000B8E58, &type metadata accessor for ShareOptionMetadata);
  UserDefaultsBackedShareOption.init()();
  UserDefaultsBackedShareOption.value(for:)();
  v18 = *(v14 + 8);
  *(v0 + 192) = v18;
  *(v0 + 200) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v12, v13);
  v19 = *(v0 + 136);
  v20 = *(v0 + 64);
  v21 = *(v0 + 72);
  sub_100024C08(*(v0 + 144), v19, &qword_1000B8E48, &qword_10008D558);
  v22 = (*(v21 + 48))(v19, 1, v20);
  v23 = *(v0 + 136);
  if (v22 == 1)
  {
    sub_10002624C(*(v0 + 136), &qword_1000B8E48, &qword_10008D558);
    v24 = 0;
  }

  else
  {
    v33 = *(v0 + 64);
    v34 = *(v0 + 72);
    v35 = *(v0 + 136);
    v24 = ShareOptionMetadata.shareOption.getter();
    result = (*(v34 + 8))(v23, v33);
    if (v24 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      return result;
    }

    if (v24 > 0x7FFFFFFF)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  v25 = *(v0 + 120);
  v26 = *(v0 + 64);
  v27 = *(v0 + 240);
  UserDefaultsBackedShareOption.init()();
  if (v24 != 1 && v27 == 1)
  {
    v28 = swift_task_alloc();
    *(v0 + 208) = v28;
    *v28 = v0;
    v28[1] = sub_100048804;
    v29 = *(v0 + 48);
    v31 = *(v0 + 16);
    v30 = *(v0 + 24);

    return sub_100045928(v31, v30);
  }

LABEL_13:
  v36 = swift_task_alloc();
  *(v0 + 224) = v36;
  *v36 = v0;
  v36[1] = sub_10004897C;
  v37 = *(v0 + 96);
  v38 = *(v0 + 48);
  v39 = *(v0 + 16);
  v40 = *(v0 + 24);

  return sub_10004C3A4(v37, v39, v40);
}

uint64_t sub_100048804()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  v3[27] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100048DFC, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[28] = v4;
    *v4 = v3;
    v4[1] = sub_10004897C;
    v5 = v3[12];
    v6 = v3[6];
    v7 = v3[2];
    v8 = v3[3];

    return sub_10004C3A4(v5, v7, v8);
  }
}

uint64_t sub_10004897C()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_100048F10;
  }

  else
  {
    v3 = sub_100048A90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100048A90()
{
  v42 = *(v0 + 120);
  v44 = *(v0 + 232);
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v46 = *(v0 + 64);
  v5 = *(v0 + 56);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 16);
  v38 = *(v0 + 24);
  v40 = *(v0 + 104);
  v9 = *(v0 + 240);
  static Date.now.getter();
  [v7 doubleValue];
  [v6 integerValue];
  sub_100024C08(v1, v3, &qword_1000B89A8, &qword_10008CE90);
  ShareOptionMetadata.init(shareOption:updatedAt:cacheDuration:privacyVersion:birthdate:)();
  UserDefaultsBackedShareOption.write(key:value:)();
  (*(v4 + 8))(v2, v46);
  if (v44)
  {
    sub_10002624C(*(v0 + 96), &qword_1000B89A8, &qword_10008CE90);
    v10 = *(v0 + 200);
    v11 = *(v0 + 144);
    (*(v0 + 192))(*(v0 + 120), *(v0 + 104));
    sub_10002624C(v11, &qword_1000B8E48, &qword_10008D558);
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v20 = *(v0 + 80);
    v47 = *(v0 + 56);

    v21 = *(v0 + 8);
  }

  else
  {
    v22 = *(v0 + 168);
    static FamilyLogger.daemon.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v23, v24, "Successfully updated age range sharing option to: %ld", v25, 0xCu);
    }

    v35 = *(v0 + 192);
    v36 = *(v0 + 200);
    v26 = *(v0 + 184);
    v27 = *(v0 + 160);
    v28 = *(v0 + 168);
    v30 = *(v0 + 144);
    v29 = *(v0 + 152);
    v37 = *(v0 + 176);
    v39 = *(v0 + 136);
    v31 = *(v0 + 120);
    v33 = *(v0 + 96);
    v32 = *(v0 + 104);
    v41 = *(v0 + 128);
    v43 = *(v0 + 88);
    v45 = *(v0 + 80);
    v48 = *(v0 + 56);

    v26(v28, v29);
    sub_10002624C(v33, &qword_1000B89A8, &qword_10008CE90);
    v35(v31, v32);
    sub_10002624C(v30, &qword_1000B8E48, &qword_10008D558);

    v21 = *(v0 + 8);
  }

  return v21();
}