uint64_t sub_100096E84(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  v7 = *(v4 + 184);
  if (v1)
  {
    v8 = sub_100097080;
  }

  else
  {

    v8 = sub_100096FBC;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100096FBC()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];

  sub_1000D6278(3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100097080()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];

  sub_1000D6278(3);

  v8 = v0[1];
  v9 = v0[27];

  return v8();
}

uint64_t sub_100097144(uint64_t *a1)
{
  swift_getKeyPath();
  v3 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_1000971B8(id *a1)
{
  v2 = sub_1000E0D68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  sub_1000E0D38();

  v8 = sub_1000E0D28();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

void sub_1000972BC()
{
  v1 = [v0 activeRemoteParticipants];
  sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
  sub_10000EA70(&unk_10011F950, &qword_10011F948, TUConversationParticipant_ptr);
  v2 = sub_1000E25E8();

  v3 = [v0 activeLightweightParticipants];
  v4 = sub_1000E25E8();

  sub_10005AFC8(v4, v2);
}

void sub_1000973B4(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 activeRemoteParticipants];
  sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
  sub_10000EA70(&unk_10011F950, &qword_10011F948, TUConversationParticipant_ptr);
  v5 = sub_1000E25E8();

  v6 = [v3 activeLightweightParticipants];
  v7 = sub_1000E25E8();

  sub_10005AFC8(v7, v5);
  *a2 = v8;
}

uint64_t sub_1000974AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v10 = *a1;
  sub_10000ADE4(a4, a5);
  sub_100002C64(a6, a4, a5);
  return sub_1000E2428();
}

void sub_100097540(id *a1)
{
  swift_getKeyPath();
  v2 = *a1;
  swift_getAtKeyPath();
}

id sub_1000975B0(id *a1, uint64_t a2)
{
  v3 = [*a1 handle];
  v4 = [v3 isEqualToHandle:a2];

  return v4;
}

uint64_t sub_100097608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;
  v5[7] = qword_1001230F0;

  return _swift_task_switch(sub_1000976AC, v6, 0);
}

uint64_t sub_1000976AC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v3 = *(v2 + 56);
  v5 = *(v2 + 40);
  v6 = sub_1000A75DC(&qword_100120020, a2, type metadata accessor for ConduitActor);
  v7 = swift_task_alloc();
  *(v2 + 64) = v7;
  *(v7 + 16) = *(v2 + 24);
  *(v7 + 32) = v5;
  *(v7 + 40) = v4;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v2 + 72) = v9;
  *v9 = v2;
  v9[1] = sub_1000977F0;
  v10 = *(v2 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v3, v6, 0xD00000000000002ELL, 0x80000001000EBC90, sub_1000ACAA4, v7, &type metadata for Bool);
}

uint64_t sub_1000977F0()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[7];

    return _swift_task_switch(sub_10002BD60, v4, 0);
  }

  else
  {
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_10009792C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v8 = sub_10000ADE4(&qword_10011FC98, &unk_1000F29D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v64 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  v14 = sub_1000E0D68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v63 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v19 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_splitSessionApprovalConnection))
  {
    swift_unknownObjectRelease();
LABEL_12:
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v50 = sub_1000E1F08();
    sub_1000049D0(v50, qword_100123128);
    v51 = sub_1000E1EE8();
    v52 = sub_1000E2678();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "[Handoff][PullExpanse] No clients registered to approve sessions.", v53, 2u);
    }

    aBlock[0] = TUMakeNeighborhoodConduitError();
    return sub_1000E24C8();
  }

  v61 = v15;
  v62 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_splitSessionApprovalConnection;
  v60 = a4;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v20 = sub_1000E1F08();
  sub_1000049D0(v20, qword_100123128);
  v21 = a3;
  v22 = sub_1000E1EE8();
  v23 = sub_1000E2698();

  v24 = os_log_type_enabled(v22, v23);
  v58 = v21;
  v59 = v14;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v56 = v23;
    v26 = v25;
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v26 = 136315138;
    v27 = [v21 UUID];
    v57 = v8;
    v28 = v63;
    sub_1000E0D38();

    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
    v29 = sub_1000E2C18();
    v30 = v14;
    v31 = a5;
    v33 = v32;
    v34 = v28;
    v8 = v57;
    (*(v61 + 8))(v34, v30);
    v35 = sub_100029C70(v29, v33, aBlock);
    a5 = v31;

    *(v26 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v22, v56, "[Handoff][PullExpanse] Requesting split session approval for %s.", v26, 0xCu);
    sub_10000E9DC(v55);
  }

  v36 = *(v9 + 16);
  v36(v13, v65, v8);
  v37 = v64;
  v36(v64, v13, v8);
  v38 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v39 = swift_allocObject();
  (*(v9 + 32))(v39 + v38, v13, v8);
  v40 = *(v19 + v62);
  if (v40)
  {
    v41 = v40;
    v42 = [v41 remoteObjectProxy];
    sub_1000E28B8();
    swift_unknownObjectRelease();
    sub_10000ADE4(&qword_10011FCA0, &qword_1000F29E0);
    if (swift_dynamicCast())
    {
      v43 = v67;
      if ([v67 respondsToSelector:"approveSplitSessionForConversation:requestedFromDevice:pullContext:completion:"])
      {
        v44 = *(v9 + 8);
        swift_unknownObjectRetain();
        v44(v37, v8);
        v45 = [v58 UUID];
        v46 = v63;
        sub_1000E0D38();

        isa = sub_1000E0D18().super.isa;
        aBlock[4] = sub_1000ACAB0;
        aBlock[5] = v39;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10005FC2C;
        aBlock[3] = &unk_1001157C8;
        v48 = _Block_copy(aBlock);

        [v43 approveSplitSessionForConversation:isa requestedFromDevice:v60 pullContext:a5 completion:v48];

        _Block_release(v48);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();

        (*(v61 + 8))(v46, v59);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v54 = TUMakeNeighborhoodConduitError();
  sub_100098048(0, v54);

  swift_unknownObjectRelease();

  return (*(v9 + 8))(v37, v8);
}

uint64_t sub_100098048(char a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v2 = sub_1000E1F08();
    sub_1000049D0(v2, qword_100123128);
    swift_errorRetain();
    v3 = sub_1000E1EE8();
    v4 = sub_1000E2678();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[Handoff][PullExpanse] Failed to approve split session: %@.", v5, 0xCu);
      sub_1000033C8(v6, &unk_10011EAC0, &unk_1000F0E60);
    }

    sub_10000ADE4(&qword_10011FC98, &unk_1000F29D0);
    return sub_1000E24C8();
  }

  else
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    sub_1000049D0(v10, qword_100123128);
    v11 = sub_1000E1EE8();
    v12 = sub_1000E2698();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "[Handoff][PullExpanse] Split session approval result: %{BOOL}d.", v13, 8u);
    }

    sub_10000ADE4(&qword_10011FC98, &unk_1000F29D0);
    return sub_1000E24D8();
  }
}

uint64_t sub_1000982CC(void *a1)
{
  v2 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v6 = sub_1000E1F08();
  sub_1000049D0(v6, qword_100123128);
  v7 = sub_1000E1EE8();
  v8 = sub_1000E2698();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[Handoff][PullExpanse] Cancelling split session approval request.", v9, 2u);
  }

  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = qword_10011DC30;
  v13 = a1;
  if (v11 != -1)
  {
    swift_once();
  }

  v14 = qword_1001230F0;
  v15 = sub_1000A75DC(&qword_100120020, v12, type metadata accessor for ConduitActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v13;

  sub_100022F54(0, 0, v5, &unk_1000F29C8, v16);
}

uint64_t sub_10009850C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;

  return _swift_task_switch(sub_1000985A4, v5, 0);
}

uint64_t sub_1000985A4()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10001629C(sub_10001B050, 0);
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

void sub_10009864C()
{
  v0 = TUBundle();
  if (v0)
  {
    v1 = v0;
    v15._countAndFlagsBits = 0x80000001000EBBE0;
    v20._countAndFlagsBits = 0xD000000000000019;
    v20._object = 0x80000001000EBBA0;
    v22.value._object = 0x80000001000EBBC0;
    v22.value._countAndFlagsBits = 0xD000000000000012;
    v2.super.isa = v1;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v3 = sub_1000E0B88(v20, v22, v2, v24, v15);
    v5 = v4;
    v16._countAndFlagsBits = 0x80000001000EBC30;
    v21._countAndFlagsBits = 0xD000000000000020;
    v21._object = 0x80000001000EBC00;
    v23.value._object = 0x80000001000EBBC0;
    v23.value._countAndFlagsBits = 0xD000000000000012;
    v6.super.isa = v1;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v7 = sub_1000E0B88(v21, v23, v6, v25, v16);
    v9 = v8;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E1F08();
    sub_1000049D0(v10, qword_100123128);

    v11 = sub_1000E1EE8();
    v12 = sub_1000E2668();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_100029C70(v3, v5, &v18);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_100029C70(v7, v9, &v18);
      _os_log_impl(&_mh_execute_header, v11, v12, "Presenting alert: %s / %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    v14 = sub_1000E2328();

    alertMessage = sub_1000E2328();

    CFUserNotificationDisplayNotice(0.0, 1uLL, 0, 0, 0, v14, alertMessage, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100098918()
{
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000989A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v9 = type metadata accessor for HandoffInfo(0);
  v6[4] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6[7] = qword_1001230F0;
  v11 = swift_task_alloc();
  v6[8] = v11;
  *v11 = v6;
  v11[1] = sub_100098AC8;

  return sub_100098F60(a5, a6);
}

uint64_t sub_100098AC8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return _swift_task_switch(sub_100098BD8, v2, 0);
}

uint64_t sub_100098BD8()
{
  v36 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
  v5 = *(v2 + 24);
  v6 = *(v3 + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
  isa = sub_1000E0D18().super.isa;
  v8 = [v6 activeConversationWithUUID:isa];

  if (v8)
  {
    v34 = v4;
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[3];
    v12 = sub_1000E1F08();
    sub_1000049D0(v12, qword_100123128);
    sub_1000A87E4(v11, v9, type metadata accessor for HandoffInfo);
    sub_1000A87E4(v11, v10, type metadata accessor for HandoffInfo);
    v13 = sub_1000E1EE8();
    v14 = sub_1000E2698();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[5];
    v16 = v0[6];
    if (v15)
    {
      v18 = v0[4];
      v31 = v14;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v19 = 138412546;
      v33 = v3;
      v21 = *(v16 + *(v18 + 36));
      sub_1000AD5EC(v16, type metadata accessor for HandoffInfo);
      *(v19 + 4) = v21;
      *v20 = v21;
      *(v19 + 12) = 2080;
      v22 = *(v2 + 24);
      sub_1000E0D68();
      sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
      v23 = sub_1000E2C18();
      v25 = v24;
      sub_1000AD5EC(v17, type metadata accessor for HandoffInfo);
      v26 = sub_100029C70(v23, v25, &v35);
      v3 = v33;

      *(v19 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v13, v31, "Kicking %@ from %s.", v19, 0x16u);
      sub_1000033C8(v20, &unk_10011EAC0, &unk_1000F0E60);

      sub_10000E9DC(v32);
    }

    else
    {

      sub_1000AD5EC(v17, type metadata accessor for HandoffInfo);
      sub_1000AD5EC(v16, type metadata accessor for HandoffInfo);
    }

    [*(v3 + v34) kickMember:*(v0[3] + *(v0[4] + 36)) conversation:v8];
  }

  v28 = v0[5];
  v27 = v0[6];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100098F60(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000E1428();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_1000E1658();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v10 = sub_1000E13E8();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v13 = *(*(type metadata accessor for HandoffInfo(0) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v14 = qword_1001230F0;
  v3[20] = qword_1001230F0;

  return _swift_task_switch(sub_10009917C, v14, 0);
}

uint64_t sub_10009917C()
{
  v36 = v0;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[2];
  v5 = v0[3];
  v7 = sub_1000E1F08();
  v0[21] = sub_1000049D0(v7, qword_100123128);
  sub_1000A87E4(v6, v1, type metadata accessor for HandoffInfo);
  v8 = *(v4 + 16);
  v0[22] = v8;
  v0[23] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v5, v3);
  v9 = sub_1000E1EE8();
  v10 = sub_1000E2698();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[19];
  v13 = v0[16];
  v14 = v0[13];
  if (v11)
  {
    v33 = v0[12];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136315394;
    v17 = sub_1000DDC88();
    v19 = v18;
    sub_1000AD5EC(v12, type metadata accessor for HandoffInfo);
    v20 = sub_100029C70(v17, v19, &v35);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2048;
    v21 = sub_1000E13D8();
    v22 = *(v14 + 8);
    v22(v13, v33);
    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Sending disconnect request for %s with reason %ld", v15, 0x16u);
    sub_10000E9DC(v16);
  }

  else
  {
    v22 = *(v14 + 8);
    v22(v0[16], v0[12]);

    sub_1000AD5EC(v12, type metadata accessor for HandoffInfo);
  }

  v0[24] = v22;
  v23 = v0[7];
  v24 = v0[5];
  v25 = *(v0[4] + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  v26 = swift_task_alloc();
  v34 = *(v0 + 1);
  *(v26 + 16) = v34;
  sub_1000A75DC(&unk_10011F8A0, 255, &type metadata accessor for NCProtoDisconnectRequest);
  sub_1000E0E38();

  v27 = *(v34 + 8);
  v28 = *(v34 + 16);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v0[25] = qword_1001230E0;
  v29 = swift_task_alloc();
  v0[26] = v29;
  *v29 = v0;
  v29[1] = sub_100099538;
  v30 = v0[11];
  v31 = v0[7];

  return sub_1000B5ED4(v30, 1, v31, v27, v28, 0);
}

uint64_t sub_100099538()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_100099A10;
  }

  else
  {
    v6 = sub_100099664;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100099664()
{
  v1 = v0[20];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return _swift_task_switch(sub_1000996E0, v1, 0);
}

uint64_t sub_1000996E0()
{
  v46 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v43 = v0[21];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  v9 = v0[3];
  sub_1000A87E4(v0[2], v0[18], type metadata accessor for HandoffInfo);
  v2(v3, v9, v4);
  (*(v7 + 16))(v6, v5, v8);
  v10 = sub_1000E1EE8();
  v11 = sub_1000E2698();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[18];
  v14 = v0[15];
  v15 = v0[12];
  v42 = v15;
  v44 = v0[24];
  v16 = v0[9];
  v17 = v0[10];
  if (v12)
  {
    v39 = v0[8];
    v41 = v11;
    v18 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v45 = v40;
    *v18 = 136315650;
    v19 = sub_1000DDC88();
    v21 = v20;
    sub_1000AD5EC(v13, type metadata accessor for HandoffInfo);
    v22 = sub_100029C70(v19, v21, &v45);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2048;
    v23 = sub_1000E13D8();
    v44(v14, v42);
    *(v18 + 14) = v23;
    *(v18 + 22) = 1024;
    LODWORD(v23) = sub_1000E1648() & 1;
    v24 = *(v16 + 8);
    v24(v17, v39);
    *(v18 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v10, v41, "Disconnected from %s with reason %ld result %{BOOL}d", v18, 0x1Cu);
    sub_10000E9DC(v40);
  }

  else
  {
    v24 = *(v16 + 8);
    v24(v0[10], v0[8]);
    v44(v14, v42);

    sub_1000AD5EC(v13, type metadata accessor for HandoffInfo);
  }

  v25 = v0[11];
  v26 = v0[8];
  v27 = sub_1000E1648();
  v24(v25, v26);
  v29 = v0[18];
  v28 = v0[19];
  v31 = v0[16];
  v30 = v0[17];
  v33 = v0[14];
  v32 = v0[15];
  v35 = v0[10];
  v34 = v0[11];
  v36 = v0[7];

  v37 = v0[1];

  return v37(v27 & 1);
}

uint64_t sub_100099A10()
{
  v1 = v0[20];
  (*(v0[6] + 8))(v0[7], v0[5]);

  return _swift_task_switch(sub_100099A8C, v1, 0);
}

uint64_t sub_100099A8C()
{
  v41 = v0;
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[3];
  sub_1000A87E4(v0[2], v0[17], type metadata accessor for HandoffInfo);
  v3(v5, v7, v6);
  swift_errorRetain();
  v8 = sub_1000E1EE8();
  v9 = sub_1000E2678();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[24];
  v12 = v0[17];
  v13 = v0[13];
  v14 = v0[14];
  v15 = v0[12];
  if (v10)
  {
    v38 = v0[27];
    v16 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v16 = 136315650;
    v37 = v9;
    v17 = sub_1000DDC88();
    v19 = v18;
    sub_1000AD5EC(v12, type metadata accessor for HandoffInfo);
    v20 = sub_100029C70(v17, v19, &v40);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = NCProtoDisconnectRequest.DisconnectReason.description.getter();
    v23 = v22;
    v11(v14, v15);
    v24 = sub_100029C70(v21, v23, &v40);

    *(v16 + 14) = v24;
    *(v16 + 22) = 2112;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v25;
    *v39 = v25;
    _os_log_impl(&_mh_execute_header, v8, v37, "Failed to disconnect from %s with reason %s. Error %@", v16, 0x20u);
    sub_1000033C8(v39, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  else
  {

    v11(v14, v15);
    sub_1000AD5EC(v12, type metadata accessor for HandoffInfo);
  }

  v27 = v0[18];
  v26 = v0[19];
  v29 = v0[16];
  v28 = v0[17];
  v31 = v0[14];
  v30 = v0[15];
  v33 = v0[10];
  v32 = v0[11];
  v34 = v0[7];

  v35 = v0[1];

  return v35(0);
}

uint64_t sub_100099DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = a2;
  v26 = a1;
  v27 = a3;
  v3 = sub_1000E13E8();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E21E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000E2248();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for HandoffInfo(0) + 28);
  sub_1000E2238();
  v28 = sub_1000E0D48();
  v29 = v18;
  sub_1000E2218();
  sub_1000E2228();
  v19 = v24;
  sub_1000E21D8();
  v24 = v19;
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  sub_1000E13F8();
  v20 = v25;
  (*(v25 + 104))(v6, enum case for NCProtoDisconnectRequest.DisconnectReason.pullingBackToPhone(_:), v3);
  sub_1000A75DC(&qword_10011F8B0, 255, &type metadata accessor for NCProtoDisconnectRequest.DisconnectReason);
  v21 = v27;
  sub_1000E2438();
  sub_1000E2438();
  (*(v20 + 8))(v6, v3);
  sub_1000E1418();
  (*(v20 + 16))(v6, v21, v3);
  return sub_1000E1408();
}

uint64_t sub_10009A154(uint64_t a1)
{
  v14[0] = a1;
  v1 = sub_1000E21E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E2248();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for HandoffInfo(0) + 28);
  sub_1000E2238();
  v14[1] = sub_1000E0D48();
  v14[2] = v12;
  sub_1000E2218();
  sub_1000E2228();
  sub_1000E21D8();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  return sub_1000E1348();
}

void *sub_10009A378()
{
  if (![*(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_vouchingEnablement) isEnabled])
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = [*(v0 + OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags) lagunaEnabled];
  sub_10000ADE4(&unk_10011FA28, &qword_1000F2518);
  v2 = sub_1000E1AB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  if (v1)
  {
    *(v6 + 16) = xmmword_1000F1FC0;
    v7 = *(v3 + 104);
    v7(v6 + v5, enum case for NCProtoMemberAssociationPrimaryInfo.MemberAssociationType.identityClaiming(_:), v2);
    v7(v6 + v5 + v4, enum case for NCProtoMemberAssociationPrimaryInfo.MemberAssociationType.expanse(_:), v2);
  }

  else
  {
    *(v6 + 16) = xmmword_1000F07C0;
    (*(v3 + 104))(v6 + v5, enum case for NCProtoMemberAssociationPrimaryInfo.MemberAssociationType.expanse(_:), v2);
  }

  return v6;
}

uint64_t sub_10009A514(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a4;
  v18 = a6;
  v8 = sub_1000E0D68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 groupUUID];
  sub_1000E0D38();

  sub_1000E0D08();
  (*(v9 + 8))(v12, v8);
  sub_1000E1B08();
  v14 = [a3 handle];
  v15 = [v14 messagingData];

  sub_1000E0C88();
  sub_1000E1AC8();
  [a2 localParticipantIdentifier];
  sub_1000E1AD8();

  sub_1000E1AE8();
  sub_10009A378();
  return sub_1000E1AF8();
}

uint64_t sub_10009A70C(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = a3;
  v31 = a2;
  v30 = sub_1000E13E8();
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v30);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E0D68();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for HandoffInfo(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CB64(a1, v14, &qword_10011F8B8, &qword_1000F22D8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1000033C8(v14, &qword_10011F8B8, &qword_1000F22D8);
  }

  sub_1000A877C(v14, v19, type metadata accessor for HandoffInfo);
  v21 = *(v15 + 24);
  v22 = [v31 UUID];
  sub_1000E0D38();

  LOBYTE(v22) = sub_1000E0D28();
  (*(v7 + 8))(v10, v6);
  if (v22)
  {
    v24 = v27;
    v23 = v28;
    v25 = v30;
    (*(v28 + 104))(v27, enum case for NCProtoDisconnectRequest.DisconnectReason.endingHandoff(_:), v30);
    sub_10006B2FC(v24);

    (*(v23 + 8))(v24, v25);
  }

  return sub_1000AD5EC(v19, type metadata accessor for HandoffInfo);
}

uint64_t sub_10009AA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  *(v4 + 32) = qword_1001230F0;

  return _swift_task_switch(sub_10009AAF8, v5, 0);
}

uint64_t sub_10009AAF8()
{
  v1 = *(*(v0[3] + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService22ConversationPublishers_activeConversationsSubject);
  sub_1000E1FF8();
  v2 = v0[2];
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = v0[2];
    }

    v4 = sub_1000E2968();
  }

  else
  {
    v4 = *(v2 + 16);
  }

  v5 = v0[3];

  v6 = OBJC_IVAR___CSDNeighborhoodActivityConduit_activeConversationBleDiscoveryAssertion;
  v0[5] = OBJC_IVAR___CSDNeighborhoodActivityConduit_activeConversationBleDiscoveryAssertion;
  v7 = *(v5 + v6);
  if (v4 <= 0)
  {
    if (v7)
    {
      if (qword_10011DC60 != -1)
      {
        swift_once();
      }

      v16 = sub_1000E1F08();
      sub_1000049D0(v16, qword_100123128);
      v17 = sub_1000E1EE8();
      v18 = sub_1000E2698();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Releasing active conversation BLE assertion...", v19, 2u);
      }

      v20 = v0[5];
      v21 = v0[3];
      v22 = *(v21 + v20);
      *(v21 + v20) = 0;
    }
  }

  else if (!v7)
  {
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v8 = sub_1000E1F08();
    sub_1000049D0(v8, qword_100123128);
    v9 = sub_1000E1EE8();
    v10 = sub_1000E2698();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Taking BLE assertion due to active conversation!", v11, 2u);
    }

    v12 = v0[3];

    v13 = *(v12 + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
    v14 = swift_task_alloc();
    v0[6] = v14;
    *v14 = v0;
    v14[1] = sub_10009ADC4;

    return sub_10003FF60();
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_10009ADC4(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);
  v7 = *v2;

  v8 = *(v4 + 32);
  if (v1)
  {

    v9 = sub_10009AF78;
  }

  else
  {
    *(v5 + 56) = a1;
    v9 = sub_10009AF08;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10009AF08()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10009AF78()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v2 + v1);
  *(v2 + v1) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_10009B178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1000E13E8();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = sub_1000E0D68();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = *(*(sub_10000ADE4(&qword_10011F888, &qword_1000F22B0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v14 = type metadata accessor for HandoffInfo(0);
  v5[15] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230F0;
  v5[17] = qword_1001230F0;

  return _swift_task_switch(sub_10009B36C, v16, 0);
}

uint64_t sub_10009B36C()
{
  v67 = v0;
  v1 = v0[14];
  v2 = v0[5];
  v3 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v2 + v3, v1, &qword_10011F888, &qword_1000F22B0);
  v4 = type metadata accessor for HandoffState(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v6 = v0[14];
  if (v5 == 1)
  {
    sub_1000033C8(v0[14], &qword_10011F888, &qword_1000F22B0);
    goto LABEL_11;
  }

  v7 = v0[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v0[15];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    v12 = v0[6];
    sub_1000A877C(v6, v0[16], type metadata accessor for HandoffInfo);
    v13 = *(v8 + 24);
    v14 = [v12 UUID];
    sub_1000E0D38();

    v15 = sub_1000E0D28();
    v16 = *(v10 + 8);
    v16(v9, v11);
    v6 = v0[16];
    if (v15)
    {
      v17 = v0[6];
      v18 = [v17 activeRemoteParticipants];
      sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
      sub_10000EA70(&unk_10011F950, &qword_10011F948, TUConversationParticipant_ptr);
      v19 = sub_1000E25E8();

      v20 = [v17 activeLightweightParticipants];
      v21 = sub_1000E25E8();

      sub_10005AFC8(v21, v19);
      v23 = v22;
      v24 = swift_task_alloc();
      *(v24 + 16) = v6;
      sub_1000D03FC(sub_1000A9394, v24, v23);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        if (qword_10011DC60 != -1)
        {
          swift_once();
        }

        v45 = v0[6];
        v46 = sub_1000E1F08();
        sub_1000049D0(v46, qword_100123128);
        v47 = v45;
        v48 = sub_1000E1EE8();
        v49 = sub_1000E2698();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = v0[13];
          v51 = v0[11];
          v65 = v16;
          v52 = v0[6];
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v66 = v54;
          *v53 = 136315138;
          v55 = [v52 UUID];
          sub_1000E0D38();

          sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
          v56 = sub_1000E2C18();
          v58 = v57;
          v65(v50, v51);
          v59 = sub_100029C70(v56, v58, &v66);

          *(v53 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v48, v49, "Handoff member left conversation %s - ending handoff.", v53, 0xCu);
          sub_10000E9DC(v54);
        }

        v60 = v0[16];
        v62 = v0[8];
        v61 = v0[9];
        v63 = v0[7];
        v64 = v0[5];
        (*(v62 + 104))(v61, enum case for NCProtoDisconnectRequest.DisconnectReason.endingHandoff(_:), v63);
        sub_10006B2FC(v61);

        (*(v62 + 8))(v61, v63);
        v36 = type metadata accessor for HandoffInfo;
        v37 = v60;
        goto LABEL_10;
      }

      v6 = v0[16];
      v27 = v0[17];
      v28 = v0[10];
      v29 = v0[5];
      v30 = sub_1000E2538();
      (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
      v32 = sub_1000A75DC(&qword_100120020, v31, type metadata accessor for ConduitActor);
      v33 = swift_allocObject();
      v33[2] = v27;
      v33[3] = v32;
      v33[4] = v29;
      v34 = v29;

      sub_100022960(0, 0, v28, &unk_1000F23E0, v33);
    }

    v35 = type metadata accessor for HandoffInfo;
  }

  else
  {
    v35 = type metadata accessor for HandoffState;
  }

  v36 = v35;
  v37 = v6;
LABEL_10:
  sub_1000AD5EC(v37, v36);
LABEL_11:
  v38 = v0[16];
  v39 = v0[13];
  v40 = v0[14];
  v42 = v0[9];
  v41 = v0[10];

  v43 = v0[1];

  return v43();
}

id sub_10009B9A4(id *a1, uint64_t a2)
{
  v3 = [*a1 handle];
  v4 = [*(a2 + *(type metadata accessor for HandoffInfo(0) + 36)) handle];
  v5 = [v3 isEquivalentToHandle:v4];

  return v5;
}

uint64_t sub_10009BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v8 = qword_1001230F0;
  v6[6] = qword_1001230F0;

  return _swift_task_switch(sub_10009BB30, v8, 0);
}

uint64_t sub_10009BB30()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_1000E2538();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v8 = sub_1000A75DC(&qword_100120020, v7, type metadata accessor for ConduitActor);
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v8;
  v9[4] = v5;
  v9[5] = v4;
  v9[6] = v3;
  v10 = v5;

  sub_100022960(0, 0, v2, &unk_1000F23C0, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10009BE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = sub_1000E13E8();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = sub_1000E0D68();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = *(*(sub_10000ADE4(&qword_10011F888, &qword_1000F22B0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v14 = type metadata accessor for HandoffInfo(0);
  v5[15] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230F0;
  v5[17] = qword_1001230F0;

  return _swift_task_switch(sub_10009C038, v16, 0);
}

uint64_t sub_10009C038()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v2 + v3, v1, &qword_10011F888, &qword_1000F22B0);
  v4 = type metadata accessor for HandoffState(0);
  v5 = (*(*(v4 - 8) + 48))(v1, 1, v4);
  v6 = *(v0 + 112);
  if (v5 == 1)
  {
    sub_1000033C8(*(v0 + 112), &qword_10011F888, &qword_1000F22B0);
LABEL_13:
    v28 = *(v0 + 128);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v31 = *(v0 + 80);
    v32 = *(v0 + 56);

    v33 = *(v0 + 8);

    return v33();
  }

  v7 = *(v0 + 112);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25 = type metadata accessor for HandoffState;
LABEL_10:
    v26 = v25;
    v27 = v6;
LABEL_12:
    sub_1000AD5EC(v27, v26);
    goto LABEL_13;
  }

  v8 = *(v0 + 120);
  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 88);
  v12 = *(v0 + 48);
  sub_1000A877C(v6, *(v0 + 128), type metadata accessor for HandoffInfo);
  v13 = *(v8 + 24);
  v14 = [v12 UUID];
  sub_1000E0D38();

  LOBYTE(v14) = sub_1000E0D28();
  (*(v10 + 8))(v9, v11);
  if ((v14 & 1) == 0)
  {
    v27 = *(v0 + 128);
    v26 = type metadata accessor for HandoffInfo;
    goto LABEL_12;
  }

  v15 = [*(v0 + 48) remoteMembers];
  sub_10000CAAC(0, &qword_10011F890, TUConversationMember_ptr);
  sub_10000EA70(&qword_10011F898, &qword_10011F890, TUConversationMember_ptr);
  v16 = sub_1000E25E8();

  v17 = sub_10001DBD4(v16);

  v18 = sub_1000D4F64(v17);

  sub_100020430(v18);
  LOBYTE(v17) = v19;

  if ((v17 & 1) == 0)
  {
    v6 = *(v0 + 128);
    v34 = *(v0 + 136);
    v35 = *(v0 + 56);
    v36 = *(v0 + 40);
    v37 = sub_1000E2538();
    (*(*(v37 - 8) + 56))(v35, 1, 1, v37);
    v39 = sub_1000A75DC(&qword_100120020, v38, type metadata accessor for ConduitActor);
    v40 = swift_allocObject();
    v40[2] = v34;
    v40[3] = v39;
    v40[4] = v36;
    v41 = v36;

    sub_100022960(0, 0, v35, &unk_1000F22C0, v40);

    v25 = type metadata accessor for HandoffInfo;
    goto LABEL_10;
  }

  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for NCProtoDisconnectRequest.DisconnectReason.blockedContact(_:), *(v0 + 64));
  v20 = swift_task_alloc();
  *(v0 + 144) = v20;
  *v20 = v0;
  v20[1] = sub_10009C4B0;
  v21 = *(v0 + 128);
  v22 = *(v0 + 80);
  v23 = *(v0 + 40);

  return sub_100098F60(v21, v22);
}

uint64_t sub_10009C4B0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_10009C61C, v2, 0);
}

uint64_t sub_10009C61C()
{
  sub_1000AD5EC(v0[16], type metadata accessor for HandoffInfo);
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10009C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(*(sub_10000ADE4(&unk_10011F878, &unk_1000F2290) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = sub_1000E0D68();
  v5[11] = v7;
  v8 = *(v7 - 8);
  v5[12] = v8;
  v9 = *(v8 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v10 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  v5[15] = v10;
  v11 = *(v10 - 8);
  v5[16] = v11;
  v12 = *(v11 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v13 = qword_1001230F0;

  return _swift_task_switch(sub_10009C8B0, v13, 0);
}

uint64_t sub_10009C8B0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = [*(v0 + 72) UUID];
  sub_1000E0D38();

  v4 = OBJC_IVAR___CSDNeighborhoodActivityConduit_startedConversations;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16) && (v6 = sub_10000B348(*(v0 + 112)), (v7 & 1) != 0))
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);
    v10 = *(v0 + 120);
    v41 = *(v0 + 112);
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    sub_10000CB64(*(v5 + 56) + *(*(v0 + 128) + 72) * v6, v8, &qword_10011EBB0, &qword_1000F04F0);
    v13 = v9;
    sub_1000AD400(v8, v9, &qword_10011EBB0, &qword_1000F04F0);
    swift_endAccess();
    v14 = *(v12 + 8);
    v14(v41, v11);
    v15 = *(v10 + 48);
    if (*(v9 + v15) > 1uLL)
    {
      v18 = *(v0 + 160);
    }

    else
    {
      v16 = v10;
      v17 = [*(v0 + 72) resolvedAudioVideoMode];
      v18 = *(v0 + 160);
      if (v17 == 2)
      {
        v20 = *(v0 + 136);
        v19 = *(v0 + 144);
        v40 = *(v0 + 88);
        v42 = *(v0 + 160);
        v38 = *(v0 + 104);
        v39 = *(v0 + 80);
        v37 = *(v0 + 72);
        *(v13 + v15) = 2;
        sub_10000CB64(v18, v19, &qword_10011EBB0, &qword_1000F04F0);
        v21 = *(v16 + 48);
        v22 = *(v19 + v21);
        v23 = sub_1000E0CE8();
        (*(*(v23 - 8) + 32))(v20, v19, v23);
        *(v20 + v21) = v22;
        v24 = [v37 UUID];
        sub_1000E0D38();

        swift_beginAccess();
        sub_1000A5324(v20, v38, v39);
        swift_endAccess();
        v14(v38, v40);
        sub_1000033C8(v39, &unk_10011F878, &unk_1000F2290);
        v18 = v42;
      }
    }

    sub_1000033C8(v18, &qword_10011EBB0, &qword_1000F04F0);
  }

  else
  {
    v25 = *(v0 + 112);
    v26 = *(v0 + 88);
    v27 = *(v0 + 96);
    swift_endAccess();
    (*(v27 + 8))(v25, v26);
  }

  v29 = *(v0 + 152);
  v28 = *(v0 + 160);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v33 = *(v0 + 104);
  v32 = *(v0 + 112);
  v34 = *(v0 + 80);

  v35 = *(v0 + 8);

  return v35();
}

void sub_10009CBF4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v22 - v11;
  v13 = sub_1000E2538();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = qword_10011DC30;
  v15 = a4;
  v16 = a1;
  v18 = v15;
  if (v14 != -1)
  {
    swift_once();
  }

  v19 = qword_1001230F0;
  v20 = sub_1000A75DC(&qword_100120020, v17, type metadata accessor for ConduitActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v16;
  v21[5] = v18;

  sub_100022960(0, 0, v12, a6, v21);
}

uint64_t sub_10009CD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230F0;
  *(v4 + 48) = qword_1001230F0;

  return _swift_task_switch(sub_10009CE38, v5, 0);
}

uint64_t sub_10009CE38()
{
  if ([*(v0[5] + OBJC_IVAR___CSDNeighborhoodActivityConduit_systemMonitor) firstUnlocked])
  {
    v0[7] = *(v0[5] + OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController);
    if (qword_10011DC08 != -1)
    {
      swift_once();
    }

    v1 = qword_1001230D0;
    v0[8] = qword_1001230D0;

    return _swift_task_switch(sub_10009CF34, v1, 0);
  }

  else
  {
    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_10009CF34()
{
  if (*(*(v0 + 56) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning))
  {
    return (*(v0 + 8))();
  }

  else
  {
    return _swift_task_switch(sub_10009CF78, *(v0 + 64), 0);
  }
}

uint64_t sub_10009CF78()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = sub_1000A75DC(&unk_10011F010, 255, type metadata accessor for NearbySuggestionActor);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_10009D0A8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, v3, 0x6574617669746361, 0xEA00000000002928, sub_1000AA0DC, v4, &type metadata for () + 8);
}

uint64_t sub_10009D0A8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_10009D474;
  }

  else
  {
    v7 = *(v2 + 64);
    v6 = *(v2 + 72);

    v5 = sub_10009D1CC;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10009D1E8()
{
  *(v0 + 96) = *(*(v0 + 40) + OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v1 = qword_1001230E0;

  return _swift_task_switch(sub_10009D290, v1, 0);
}

uint64_t sub_10009D290()
{
  v2 = v0[11];
  v1 = v0[12];
  swift_beginAccess();
  v3 = *(v1 + 48);

  v5 = sub_10005AA20(v4);
  v0[13] = v5;

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_10009D364;
  v7 = v0[5];

  return sub_10006DBA0(v5);
}

uint64_t sub_10009D364()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10009D474()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_10009D4E0, v2, 0);
}

uint64_t sub_10009D4E0()
{
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123128);
  swift_errorRetain();
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2678();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error activating suggestion controller %@", v7, 0xCu);
    sub_1000033C8(v8, &unk_10011EAC0, &unk_1000F0E60);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

void sub_10009D684()
{
  v0 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v4 = sub_1000E1F08();
  sub_1000049D0(v4, qword_100123128);
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2698();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received firstUnlock notification", v7, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1000E2538();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = qword_10011DC30;
    v13 = v9;
    if (v11 != -1)
    {
      swift_once();
    }

    v14 = qword_1001230F0;
    v15 = sub_1000A75DC(&qword_100120020, v12, type metadata accessor for ConduitActor);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = v13;

    sub_100022960(0, 0, v3, &unk_1000F2558, v16);
  }
}

uint64_t sub_10009D8F0(uint64_t a1)
{
  v1 = *sub_1000036AC((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_10009D924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = *(*(sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30) - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  v5[6] = qword_1001230F0;

  return _swift_task_switch(sub_10009D9FC, v7, 0);
}

uint64_t sub_10009D9FC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_1000E2538();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v8 = sub_1000A75DC(&qword_100120020, v7, type metadata accessor for ConduitActor);
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v8;
  v9[4] = v4;
  v9[5] = v3;
  v10 = v4;

  sub_100022960(0, 0, v2, &unk_1000F2628, v9);

  *v5 = 0;

  v11 = v0[1];

  return v11();
}

uint64_t sub_10009DB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v6 = qword_1001230F0;

  return _swift_task_switch(sub_10009DBF8, v6, 0);
}

uint64_t sub_10009DBF8()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_1000AA578();
  **(v0 + 16) = 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10009DC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  return _swift_task_switch(sub_10009DCA0, 0, 0);
}

uint64_t sub_10009DCA0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer);
  *(v0 + 32) = v1;
  return _swift_task_switch(sub_10009DCCC, v1, 0);
}

uint64_t sub_10009DCCC()
{
  v12 = v0;
  if (qword_10011DC40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100120060);

  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100029C70(*(v5 + 16), *(v5 + 24), &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "Handling EndLagunaSessionEvent from %s", v6, 0xCu);
    sub_10000E9DC(v7);
  }

  v8 = v0[4];
  sub_1000BE71C(*(v0[3] + 16), *(v0[3] + 24));
  v9 = v0[1];

  return v9();
}

uint64_t TUConversationState.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x676E697469615728;
    }

    if (a1 == 1)
    {
      return 0x6972617065725028;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x676E696E696F4A28;
      case 3:
        return 0x2964656E696F4A28;
      case 4:
        return 0x676E697661654C28;
    }
  }

  return 0x6E776F6E6B6E5528;
}

uint64_t sub_10009DF10()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x676E697469615728;
    }

    if (v1 == 1)
    {
      return 0x6972617065725028;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x676E696E696F4A28;
      case 3:
        return 0x2964656E696F4A28;
      case 4:
        return 0x676E697661654C28;
    }
  }

  return 0x6E776F6E6B6E5528;
}

uint64_t sub_10009DFD0(int a1, id a2)
{
  v3 = [a2 identifier];
  sub_1000E2338();

  sub_1000E1048();
  v4 = [a2 givenName];
  sub_1000E2338();

  sub_1000E10A8();
  v5 = [a2 middleName];
  sub_1000E2338();

  sub_1000E1058();
  v6 = [a2 familyName];
  sub_1000E2338();

  sub_1000E1038();
  v7 = [a2 namePrefix];
  sub_1000E2338();

  sub_1000E1068();
  v8 = [a2 nameSuffix];
  sub_1000E2338();

  sub_1000E1078();
  v9 = [a2 nickname];
  sub_1000E2338();

  sub_1000E1098();
  v10 = [a2 thumbnailImageData];
  if (v10)
  {
    v11 = v10;
    sub_1000E0C88();

    sub_1000E10B8();
  }

  v12 = [a2 organizationName];
  sub_1000E2338();

  return sub_1000E1088();
}

uint64_t sub_10009E208(int a1, id a2)
{
  v3 = [a2 identifier];
  sub_1000E2338();

  sub_1000E1048();
  v4 = [a2 givenName];
  sub_1000E2338();

  sub_1000E10A8();
  v5 = [a2 middleName];
  sub_1000E2338();

  sub_1000E1058();
  v6 = [a2 familyName];
  sub_1000E2338();

  sub_1000E1038();
  v7 = [a2 namePrefix];
  sub_1000E2338();

  sub_1000E1068();
  v8 = [a2 nameSuffix];
  sub_1000E2338();

  sub_1000E1078();
  v9 = [a2 nickname];
  sub_1000E2338();

  sub_1000E1098();
  v10 = [a2 organizationName];
  sub_1000E2338();

  return sub_1000E1088();
}

unint64_t RPRemoteDisplayDiscoveryState.description.getter(char a1)
{
  if (a1 == 1)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

unint64_t NCProtoCallState.description.getter()
{
  v0 = sub_1000E15C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0xD000000000000011;
  v20 = 0x80000001000EB540;
  if (sub_1000E0F68())
  {
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    sub_1000E2A88(18);

    v18._countAndFlagsBits = 0x456F696475417369;
    v18._object = 0xEF3D64656C62616ELL;
    v5 = sub_1000E0F28();
    v6 = (v5 & 1) == 0;
    if (v5)
    {
      v7._countAndFlagsBits = 1702195828;
    }

    else
    {
      v7._countAndFlagsBits = 0x65736C6166;
    }

    if (v6)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    v7._object = v8;
    sub_1000E23A8(v7);

    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    sub_1000E23A8(v21);
    sub_1000E23A8(v18);
  }

  if (sub_1000E0F78())
  {
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    sub_1000E2A88(18);

    v18._countAndFlagsBits = 0x456F656469567369;
    v18._object = 0xEF3D64656C62616ELL;
    v9 = sub_1000E0F48();
    v10 = (v9 & 1) == 0;
    if (v9)
    {
      v11._countAndFlagsBits = 1702195828;
    }

    else
    {
      v11._countAndFlagsBits = 0x65736C6166;
    }

    if (v10)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = 0xE400000000000000;
    }

    v11._object = v12;
    sub_1000E23A8(v11);

    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    sub_1000E23A8(v22);
    sub_1000E23A8(v18);
  }

  if (sub_1000E0FD8())
  {
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0x3D65646F4D7661;
    v23._object = 0xE700000000000000;
    sub_1000E23A8(v23);
    sub_1000E0FB8();
    sub_1000E2B48();
    (*(v1 + 8))(v4, v0);
    v24._countAndFlagsBits = 32;
    v24._object = 0xE100000000000000;
    sub_1000E23A8(v24);
    sub_1000E23A8(v18);
  }

  if (sub_1000E0FA8())
  {
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    sub_1000E2A88(22);

    v18._countAndFlagsBits = 0xD000000000000014;
    v18._object = 0x80000001000EB560;
    v13 = sub_1000E0F88();
    v14 = (v13 & 1) == 0;
    if (v13)
    {
      v15._countAndFlagsBits = 1702195828;
    }

    else
    {
      v15._countAndFlagsBits = 0x65736C6166;
    }

    if (v14)
    {
      v16 = 0xE500000000000000;
    }

    else
    {
      v16 = 0xE400000000000000;
    }

    v15._object = v16;
    sub_1000E23A8(v15);

    sub_1000E23A8(v18);
  }

  v25._countAndFlagsBits = 41;
  v25._object = 0xE100000000000000;
  sub_1000E23A8(v25);
  return v19;
}

unint64_t TUConversationLetMeInRequestState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0xD000000000000029;
      }

      goto LABEL_8;
    }

    return 0xD00000000000002ALL;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0xD00000000000002DLL;
      }

LABEL_8:
      sub_1000E2A88(44);

      v2._countAndFlagsBits = sub_1000E2C18();
      sub_1000E23A8(v2);

      v3._countAndFlagsBits = 41;
      v3._object = 0xE100000000000000;
      sub_1000E23A8(v3);
      return 0xD000000000000029;
    }

    return 0xD000000000000025;
  }
}

unint64_t NCProtoDisconnectRequest.DisconnectReason.description.getter()
{
  v1 = 0xD00000000000001ELL;
  v2 = sub_1000E13E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v0, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for NCProtoDisconnectRequest.DisconnectReason.UNRECOGNIZED(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1000E2A88(33);

    v12 = 0xD00000000000001ELL;
    v13 = 0x80000001000EB690;
    v11 = v8;
    v14._countAndFlagsBits = sub_1000E2C18();
    sub_1000E23A8(v14);

    v15._countAndFlagsBits = 41;
    v15._object = 0xE100000000000000;
    sub_1000E23A8(v15);
    return v12;
  }

  else if (v7 == enum case for NCProtoDisconnectRequest.DisconnectReason.unknown(_:))
  {
    return 0xD000000000000018;
  }

  else if (v7 != enum case for NCProtoDisconnectRequest.DisconnectReason.endingHandoff(_:))
  {
    if (v7 == enum case for NCProtoDisconnectRequest.DisconnectReason.pullingBackToPhone(_:))
    {
      return 0xD000000000000023;
    }

    else if (v7 == enum case for NCProtoDisconnectRequest.DisconnectReason.blockedContact(_:))
    {
      return 0xD00000000000001FLL;
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
      sub_1000E2A88(20);

      v12 = 0xD000000000000011;
      v13 = 0x80000001000EB670;
      v11 = sub_1000E13D8();
      v16._countAndFlagsBits = sub_1000E2C18();
      sub_1000E23A8(v16);

      v17._countAndFlagsBits = 41;
      v17._object = 0xE100000000000000;
      sub_1000E23A8(v17);
      v1 = v12;
      (*(v3 + 8))(v6, v2);
    }
  }

  return v1;
}

uint64_t type metadata accessor for NeighborhoodActivityConduit()
{
  result = qword_10011F860;
  if (!qword_10011F860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009EC64()
{
  sub_10009ED8C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10009ED8C()
{
  if (!qword_10011F870)
  {
    type metadata accessor for HandoffState(255);
    v0 = sub_1000E2888();
    if (!v1)
    {
      atomic_store(v0, &qword_10011F870);
    }
  }
}

uint64_t sub_10009EE2C(int a1)
{
  sub_1000E2A88(117);
  v9._countAndFlagsBits = 0xD000000000000037;
  v9._object = 0x80000001000EBD00;
  sub_1000E23A8(v9);
  if (a1)
  {
    v2._countAndFlagsBits = 1702195828;
  }

  else
  {
    v2._countAndFlagsBits = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_1000E23A8(v2);

  v10._countAndFlagsBits = 0xD000000000000021;
  v10._object = 0x80000001000EBD40;
  sub_1000E23A8(v10);
  if ((a1 & 0x100) != 0)
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_1000E23A8(v4);

  v11._object = 0x80000001000EBD70;
  v11._countAndFlagsBits = 0xD000000000000016;
  sub_1000E23A8(v11);
  if ((a1 & 0x10000) != 0)
  {
    v6._countAndFlagsBits = 1702195828;
  }

  else
  {
    v6._countAndFlagsBits = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v6._object = v7;
  sub_1000E23A8(v6);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  sub_1000E23A8(v12);
  return 0;
}

uint64_t sub_10009EF7C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000E0D68();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009F03C, 0, 0);
}

uint64_t sub_10009F03C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  sub_1000E0D58();
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = sub_10000CAAC(0, &qword_10011FCC8, TUNearbySuggestionResult_ptr);
  *v7 = v0;
  v7[1] = sub_10009F16C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_1000F2A98, v4, sub_1000AE220, v5, 0, 0, v8);
}

uint64_t sub_10009F16C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1000AE21C;
  }

  else
  {
    v6 = *(v2 + 64);
    v5 = *(v2 + 72);

    v4 = sub_1000AE1F4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10009F290(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000E0D68();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009F350, 0, 0);
}

uint64_t sub_10009F350()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  sub_1000E0D58();
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  *v7 = v0;
  v7[1] = sub_10009F480;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_1000F2870, v4, sub_1000AE220, v5, 0, 0, v8);
}

uint64_t sub_10009F480()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_10009F62C;
  }

  else
  {
    v6 = *(v2 + 64);
    v5 = *(v2 + 72);

    v4 = sub_10009F5A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10009F5A4()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10009F62C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];
  v7 = v0[11];

  return v6();
}

uint64_t sub_10009F6C8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000E0D68();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10009F788, 0, 0);
}

uint64_t sub_10009F788()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  sub_1000E0D58();
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
  *v7 = v0;
  v7[1] = sub_10009F16C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_1000F2750, v4, sub_1000AB3EC, v5, 0, 0, v8);
}

uint64_t sub_10009F8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10009F8DC, 0, 0);
}

uint64_t sub_10009F8DC()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_1000E1398();
  *v4 = v0;
  v4[1] = sub_10009F9E0;
  v6 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000011, 0x80000001000EBB80, sub_1000AC340, v2, v5);
}

uint64_t sub_10009F9E0()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10009FB1C, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10009FB1C()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_10009FB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v30 = a1;
  v36 = sub_1000E2118();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000E2148();
  v35 = *(v37 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v37);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000ADE4(&qword_10011FCD0, &qword_1000F2AA0);
  v29 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = sub_1000E0D68();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a2 + 16);
  (*(v16 + 16))(v18, a3, v15);
  (*(v11 + 16))(v14, v30, v10);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  (*(v16 + 32))(v22 + v19, v18, v15);
  (*(v11 + 32))(v22 + v20, v14, v29);
  *(v22 + v21) = v33;
  aBlock[4] = sub_1000AD890;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_1001159D0;
  v23 = _Block_copy(aBlock);

  v24 = v31;
  sub_1000E2138();
  v39 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  v25 = v34;
  v26 = v36;
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v23);
  (*(v38 + 8))(v25, v26);
  (*(v35 + 8))(v24, v37);
}

uint64_t sub_1000A0034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v30 = a1;
  v36 = sub_1000E2118();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000E2148();
  v35 = *(v37 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v37);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000ADE4(&qword_10011FC50, &qword_1000F2958);
  v29 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = sub_1000E0D68();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a2 + 16);
  (*(v16 + 16))(v18, a3, v15);
  (*(v11 + 16))(v14, v30, v10);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  (*(v16 + 32))(v22 + v19, v18, v15);
  (*(v11 + 32))(v22 + v20, v14, v29);
  *(v22 + v21) = v33;
  aBlock[4] = sub_1000AC34C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115688;
  v23 = _Block_copy(aBlock);

  v24 = v31;
  sub_1000E2138();
  v39 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  v25 = v34;
  v26 = v36;
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v23);
  (*(v38 + 8))(v25, v26);
  (*(v35 + 8))(v24, v37);
}

uint64_t sub_1000A04E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v30 = a1;
  v36 = sub_1000E2118();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000E2148();
  v35 = *(v37 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v37);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000ADE4(&qword_10011FC00, &qword_1000F2878);
  v29 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = sub_1000E0D68();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a2 + 16);
  (*(v16 + 16))(v18, a3, v15);
  (*(v11 + 16))(v14, v30, v10);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  (*(v16 + 32))(v22 + v19, v18, v15);
  (*(v11 + 32))(v22 + v20, v14, v29);
  *(v22 + v21) = v33;
  aBlock[4] = sub_1000ABC8C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115408;
  v23 = _Block_copy(aBlock);

  v24 = v31;
  sub_1000E2138();
  v39 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  v25 = v34;
  v26 = v36;
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v23);
  (*(v38 + 8))(v25, v26);
  (*(v35 + 8))(v24, v37);
}

uint64_t sub_1000A099C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v30 = a1;
  v36 = sub_1000E2118();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000E2148();
  v35 = *(v37 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v37);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000ADE4(&unk_10011FB40, &qword_1000F2758);
  v29 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = sub_1000E0D68();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a2 + 16);
  (*(v16 + 16))(v18, a3, v15);
  (*(v11 + 16))(v14, v30, v10);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + *(v11 + 80) + v19) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  (*(v16 + 32))(v22 + v19, v18, v15);
  (*(v11 + 32))(v22 + v20, v14, v29);
  *(v22 + v21) = v33;
  aBlock[4] = sub_1000AB400;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_1001152A0;
  v23 = _Block_copy(aBlock);

  v24 = v31;
  sub_1000E2138();
  v39 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  v25 = v34;
  v26 = v36;
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v23);
  (*(v38 + 8))(v25, v26);
  (*(v35 + 8))(v24, v37);
}

uint64_t sub_1000A0E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a2;
  v86 = a3;
  v83 = a1;
  v72 = sub_10000ADE4(&qword_10011FCD0, &qword_1000F2AA0);
  v88 = *(v72 - 8);
  v84 = v88[8];
  v6 = __chkstk_darwin(v72);
  v76 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = v63 - v8;
  v68 = sub_1000E0D68();
  v87 = *(v68 - 8);
  v9 = *(v87 + 64);
  v10 = __chkstk_darwin(v68);
  v74 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = v63 - v11;
  v12 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v63 - v14;
  v69 = sub_10000ADE4(&qword_10011FCD8, &qword_1000F2AA8);
  v71 = *(v69 - 8);
  v16 = *(v71 + 64);
  __chkstk_darwin(v69);
  v66 = v63 - v17;
  v73 = sub_10000ADE4(&qword_10011FCE0, &qword_1000F2AB0);
  v75 = *(v73 - 8);
  v18 = *(v75 + 64);
  __chkstk_darwin(v73);
  v82 = v63 - v19;
  v89 = a4;
  v20 = *(a1 + 16);
  v90 = v20;
  v21 = sub_1000E26D8();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = v20;
  sub_10000ADE4(&qword_10011FCE8, &qword_1000F2AB8);
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_100002C64(&qword_10011FCF0, &qword_10011FCE8, &qword_1000F2AB8);
  sub_10000EA70(&qword_10011FB70, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_1000E2088();
  sub_1000033C8(v15, &qword_10011E268, &qword_1000F2760);

  v23 = v87;
  v24 = *(v87 + 16);
  v65 = v87 + 16;
  v78 = v24;
  v25 = v67;
  v26 = v68;
  v24(v67, v85, v68);
  v27 = v88;
  v64 = v88[2];
  v77 = v88 + 2;
  v28 = v70;
  v29 = v72;
  v64(v70, v86, v72);
  v30 = *(v23 + 80);
  v31 = (v30 + 24) & ~v30;
  v32 = *(v27 + 80);
  v80 = v31;
  v63[1] = v30 | v32;
  v33 = (v9 + v32 + v31) & ~v32;
  v63[0] = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = v83;
  v35 = *(v23 + 32);
  v87 = v23 + 32;
  v81 = v35;
  v36 = v26;
  v35(v34 + v31, v25, v26);
  v37 = v88[4];
  v88 += 4;
  v79 = v37;
  v38 = v28;
  v39 = v29;
  v37(v34 + v33, v28, v29);
  sub_100002C64(&qword_10011FCF8, &qword_10011FCD8, &qword_1000F2AA8);

  v40 = v69;
  v41 = v66;
  sub_1000E2048();

  (*(v71 + 8))(v41, v40);
  v42 = v25;
  v43 = v85;
  v44 = v36;
  v78(v25, v85, v36);
  v45 = v38;
  v46 = v38;
  v47 = v39;
  v48 = v64;
  v64(v46, v86, v39);
  v49 = v63[0];
  v50 = swift_allocObject();
  *(v50 + 16) = v83;
  v81(v50 + v80, v42, v36);
  v51 = v49;
  v79(v50 + v49, v45, v47);
  v52 = v74;
  v78(v74, v43, v36);
  v53 = v76;
  v54 = v47;
  v48(v76, v86, v47);
  v55 = swift_allocObject();
  v56 = v83;
  *(v55 + 16) = v83;
  v81(v55 + v80, v52, v44);
  v79(v55 + v51, v53, v54);
  sub_100002C64(&unk_10011FD00, &qword_10011FCE0, &qword_1000F2AB0);
  swift_retain_n();
  v57 = v73;
  v58 = v82;
  v59 = sub_1000E2068();

  (*(v75 + 8))(v58, v57);
  swift_beginAccess();
  v60 = *(v56 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *(v56 + 24);
  *(v56 + 24) = 0x8000000000000000;
  sub_1000CA4B0(v59, v85, isUniquelyReferenced_nonNull_native);
  *(v56 + 24) = v90;
  return swift_endAccess();
}

uint64_t sub_1000A16F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a2;
  v86 = a3;
  v83 = a1;
  v72 = sub_10000ADE4(&qword_10011FC50, &qword_1000F2958);
  v88 = *(v72 - 8);
  v84 = v88[8];
  v6 = __chkstk_darwin(v72);
  v76 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = v63 - v8;
  v68 = sub_1000E0D68();
  v87 = *(v68 - 8);
  v9 = *(v87 + 64);
  v10 = __chkstk_darwin(v68);
  v74 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = v63 - v11;
  v12 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v63 - v14;
  v69 = sub_10000ADE4(&qword_10011FC58, &qword_1000F2960);
  v71 = *(v69 - 8);
  v16 = *(v71 + 64);
  __chkstk_darwin(v69);
  v66 = v63 - v17;
  v73 = sub_10000ADE4(&qword_10011FC60, &qword_1000F2968);
  v75 = *(v73 - 8);
  v18 = *(v75 + 64);
  __chkstk_darwin(v73);
  v82 = v63 - v19;
  v89 = a4;
  v20 = *(a1 + 16);
  v90 = v20;
  v21 = sub_1000E26D8();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = v20;
  sub_10000ADE4(&qword_10011FC68, &qword_1000F2970);
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_100002C64(&qword_10011FC70, &qword_10011FC68, &qword_1000F2970);
  sub_10000EA70(&qword_10011FB70, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_1000E2088();
  sub_1000033C8(v15, &qword_10011E268, &qword_1000F2760);

  v23 = v87;
  v24 = *(v87 + 16);
  v65 = v87 + 16;
  v78 = v24;
  v25 = v67;
  v26 = v68;
  v24(v67, v85, v68);
  v27 = v88;
  v64 = v88[2];
  v77 = v88 + 2;
  v28 = v70;
  v29 = v72;
  v64(v70, v86, v72);
  v30 = *(v23 + 80);
  v31 = (v30 + 24) & ~v30;
  v32 = *(v27 + 80);
  v80 = v31;
  v63[1] = v30 | v32;
  v33 = (v9 + v32 + v31) & ~v32;
  v63[0] = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = v83;
  v35 = *(v23 + 32);
  v87 = v23 + 32;
  v81 = v35;
  v36 = v26;
  v35(v34 + v31, v25, v26);
  v37 = v88[4];
  v88 += 4;
  v79 = v37;
  v38 = v28;
  v39 = v29;
  v37(v34 + v33, v28, v29);
  sub_100002C64(&qword_10011FC78, &qword_10011FC58, &qword_1000F2960);

  v40 = v69;
  v41 = v66;
  sub_1000E2048();

  (*(v71 + 8))(v41, v40);
  v42 = v25;
  v43 = v85;
  v44 = v36;
  v78(v25, v85, v36);
  v45 = v38;
  v46 = v38;
  v47 = v39;
  v48 = v64;
  v64(v46, v86, v39);
  v49 = v63[0];
  v50 = swift_allocObject();
  *(v50 + 16) = v83;
  v81(v50 + v80, v42, v36);
  v51 = v49;
  v79(v50 + v49, v45, v47);
  v52 = v74;
  v78(v74, v43, v36);
  v53 = v76;
  v54 = v47;
  v48(v76, v86, v47);
  v55 = swift_allocObject();
  v56 = v83;
  *(v55 + 16) = v83;
  v81(v55 + v80, v52, v44);
  v79(v55 + v51, v53, v54);
  sub_100002C64(&qword_10011FC80, &qword_10011FC60, &qword_1000F2968);
  swift_retain_n();
  v57 = v73;
  v58 = v82;
  v59 = sub_1000E2068();

  (*(v75 + 8))(v58, v57);
  swift_beginAccess();
  v60 = *(v56 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *(v56 + 24);
  *(v56 + 24) = 0x8000000000000000;
  sub_1000CA4B0(v59, v85, isUniquelyReferenced_nonNull_native);
  *(v56 + 24) = v90;
  return swift_endAccess();
}

uint64_t sub_1000A1F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a2;
  v86 = a3;
  v83 = a1;
  v72 = sub_10000ADE4(&qword_10011FC00, &qword_1000F2878);
  v88 = *(v72 - 8);
  v84 = v88[8];
  v6 = __chkstk_darwin(v72);
  v76 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = v63 - v8;
  v68 = sub_1000E0D68();
  v87 = *(v68 - 8);
  v9 = *(v87 + 64);
  v10 = __chkstk_darwin(v68);
  v74 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = v63 - v11;
  v12 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v63 - v14;
  v69 = sub_10000ADE4(&qword_10011FC08, &qword_1000F2880);
  v71 = *(v69 - 8);
  v16 = *(v71 + 64);
  __chkstk_darwin(v69);
  v66 = v63 - v17;
  v73 = sub_10000ADE4(&qword_10011FC10, &qword_1000F2888);
  v75 = *(v73 - 8);
  v18 = *(v75 + 64);
  __chkstk_darwin(v73);
  v82 = v63 - v19;
  v89 = a4;
  v20 = *(a1 + 16);
  v90 = v20;
  v21 = sub_1000E26D8();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = v20;
  sub_10000ADE4(&qword_10011F978, &qword_1000F2438);
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_100002C64(&unk_10011F980, &qword_10011F978, &qword_1000F2438);
  sub_10000EA70(&qword_10011FB70, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_1000E2088();
  sub_1000033C8(v15, &qword_10011E268, &qword_1000F2760);

  v23 = v87;
  v24 = *(v87 + 16);
  v65 = v87 + 16;
  v78 = v24;
  v25 = v67;
  v26 = v68;
  v24(v67, v85, v68);
  v27 = v88;
  v64 = v88[2];
  v77 = v88 + 2;
  v28 = v70;
  v29 = v72;
  v64(v70, v86, v72);
  v30 = *(v23 + 80);
  v31 = (v30 + 24) & ~v30;
  v32 = *(v27 + 80);
  v80 = v31;
  v63[1] = v30 | v32;
  v33 = (v9 + v32 + v31) & ~v32;
  v63[0] = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = v83;
  v35 = *(v23 + 32);
  v87 = v23 + 32;
  v81 = v35;
  v36 = v26;
  v35(v34 + v31, v25, v26);
  v37 = v88[4];
  v88 += 4;
  v79 = v37;
  v38 = v28;
  v39 = v29;
  v37(v34 + v33, v28, v29);
  sub_100002C64(&qword_10011FC18, &qword_10011FC08, &qword_1000F2880);

  v40 = v69;
  v41 = v66;
  sub_1000E2048();

  (*(v71 + 8))(v41, v40);
  v42 = v25;
  v43 = v85;
  v44 = v36;
  v78(v25, v85, v36);
  v45 = v38;
  v46 = v38;
  v47 = v39;
  v48 = v64;
  v64(v46, v86, v39);
  v49 = v63[0];
  v50 = swift_allocObject();
  *(v50 + 16) = v83;
  v81(v50 + v80, v42, v36);
  v51 = v49;
  v79(v50 + v49, v45, v47);
  v52 = v74;
  v78(v74, v43, v36);
  v53 = v76;
  v54 = v47;
  v48(v76, v86, v47);
  v55 = swift_allocObject();
  v56 = v83;
  *(v55 + 16) = v83;
  v81(v55 + v80, v52, v44);
  v79(v55 + v51, v53, v54);
  sub_100002C64(&qword_10011FC20, &qword_10011FC10, &qword_1000F2888);
  swift_retain_n();
  v57 = v73;
  v58 = v82;
  v59 = sub_1000E2068();

  (*(v75 + 8))(v58, v57);
  swift_beginAccess();
  v60 = *(v56 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *(v56 + 24);
  *(v56 + 24) = 0x8000000000000000;
  sub_1000CA4B0(v59, v85, isUniquelyReferenced_nonNull_native);
  *(v56 + 24) = v90;
  return swift_endAccess();
}

uint64_t sub_1000A283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a2;
  v86 = a3;
  v83 = a1;
  v72 = sub_10000ADE4(&unk_10011FB40, &qword_1000F2758);
  v88 = *(v72 - 8);
  v84 = v88[8];
  v6 = __chkstk_darwin(v72);
  v76 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = v63 - v8;
  v68 = sub_1000E0D68();
  v87 = *(v68 - 8);
  v9 = *(v87 + 64);
  v10 = __chkstk_darwin(v68);
  v74 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = v63 - v11;
  v12 = sub_10000ADE4(&qword_10011E268, &qword_1000F2760);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v63 - v14;
  v69 = sub_10000ADE4(&qword_10011FB50, &qword_1000F2768);
  v71 = *(v69 - 8);
  v16 = *(v71 + 64);
  __chkstk_darwin(v69);
  v66 = v63 - v17;
  v73 = sub_10000ADE4(&qword_10011FB58, &qword_1000F2770);
  v75 = *(v73 - 8);
  v18 = *(v75 + 64);
  __chkstk_darwin(v73);
  v82 = v63 - v19;
  v89 = a4;
  v20 = *(a1 + 16);
  v90 = v20;
  v21 = sub_1000E26D8();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = v20;
  sub_10000ADE4(&qword_10011FB60, &qword_1000F2778);
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_100002C64(&qword_10011FB68, &qword_10011FB60, &qword_1000F2778);
  sub_10000EA70(&qword_10011FB70, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_1000E2088();
  sub_1000033C8(v15, &qword_10011E268, &qword_1000F2760);

  v23 = v87;
  v24 = *(v87 + 16);
  v65 = v87 + 16;
  v78 = v24;
  v25 = v67;
  v26 = v68;
  v24(v67, v85, v68);
  v27 = v88;
  v64 = v88[2];
  v77 = v88 + 2;
  v28 = v70;
  v29 = v72;
  v64(v70, v86, v72);
  v30 = *(v23 + 80);
  v31 = (v30 + 24) & ~v30;
  v32 = *(v27 + 80);
  v80 = v31;
  v63[1] = v30 | v32;
  v33 = (v9 + v32 + v31) & ~v32;
  v63[0] = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = v83;
  v35 = *(v23 + 32);
  v87 = v23 + 32;
  v81 = v35;
  v36 = v26;
  v35(v34 + v31, v25, v26);
  v37 = v88[4];
  v88 += 4;
  v79 = v37;
  v38 = v28;
  v39 = v29;
  v37(v34 + v33, v28, v29);
  sub_100002C64(&qword_10011FB78, &qword_10011FB50, &qword_1000F2768);

  v40 = v69;
  v41 = v66;
  sub_1000E2048();

  (*(v71 + 8))(v41, v40);
  v42 = v25;
  v43 = v85;
  v44 = v36;
  v78(v25, v85, v36);
  v45 = v38;
  v46 = v38;
  v47 = v39;
  v48 = v64;
  v64(v46, v86, v39);
  v49 = v63[0];
  v50 = swift_allocObject();
  *(v50 + 16) = v83;
  v81(v50 + v80, v42, v36);
  v51 = v49;
  v79(v50 + v49, v45, v47);
  v52 = v74;
  v78(v74, v43, v36);
  v53 = v76;
  v54 = v47;
  v48(v76, v86, v47);
  v55 = swift_allocObject();
  v56 = v83;
  *(v55 + 16) = v83;
  v81(v55 + v80, v52, v44);
  v79(v55 + v51, v53, v54);
  sub_100002C64(&qword_10011FB80, &qword_10011FB58, &qword_1000F2770);
  swift_retain_n();
  v57 = v73;
  v58 = v82;
  v59 = sub_1000E2068();

  (*(v75 + 8))(v58, v57);
  swift_beginAccess();
  v60 = *(v56 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *(v56 + 24);
  *(v56 + 24) = 0x8000000000000000;
  sub_1000CA4B0(v59, v85, isUniquelyReferenced_nonNull_native);
  *(v56 + 24) = v90;
  return swift_endAccess();
}

uint64_t sub_1000A30E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000E1398();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000ADE4(&qword_10011FC88, &qword_1000F2978);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v28 - v15);
  swift_beginAccess();
  v17 = *(a2 + 24);
  v18 = sub_10000B348(a3);
  if ((v19 & 1) == 0)
  {
    return swift_endAccess();
  }

  v28[1] = a4;
  v20 = v18;
  v21 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(a2 + 24);
  v29 = v23;
  *(a2 + 24) = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000CB370();
    v23 = v29;
  }

  v24 = *(v23 + 48);
  v25 = sub_1000E0D68();
  (*(*(v25 - 8) + 8))(v24 + *(*(v25 - 8) + 72) * v20, v25);
  v26 = *(*(v23 + 56) + 8 * v20);
  sub_1000C9AE0(v20, v23);
  *(a2 + 24) = v23;
  swift_endAccess();
  sub_1000E1F88();
  sub_10000CB64(a1, v16, &qword_10011FC88, &qword_1000F2978);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v16;
    sub_10000ADE4(&qword_10011FC50, &qword_1000F2958);
    sub_1000E24C8();
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    sub_10000ADE4(&qword_10011FC50, &qword_1000F2958);
    sub_1000E24D8();
  }
}

uint64_t sub_1000A3374(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  swift_beginAccess();
  v13 = *(a3 + 24);
  v14 = sub_10000B348(a4);
  if ((v15 & 1) == 0)
  {
    return swift_endAccess();
  }

  v16 = v14;
  v17 = *(a3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a3 + 24);
  *(a3 + 24) = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000CB370();
  }

  v20 = *(v19 + 48);
  v21 = sub_1000E0D68();
  (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
  v22 = *(*(v19 + 56) + 8 * v16);
  sub_1000C9AE0(v16, v19);
  *(a3 + 24) = v19;
  swift_endAccess();
  sub_1000E1F88();
  if (a2)
  {
    swift_errorRetain();
    sub_10000ADE4(a6, a7);
    sub_1000E24C8();
  }

  else
  {
    v24 = a1;
    sub_10000ADE4(a6, a7);
    sub_1000E24D8();
  }
}

uint64_t sub_1000A34F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ADE4(&qword_10011FC88, &qword_1000F2978);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v12 - v8);
  sub_1000E24F8();
  sub_1000A75DC(&qword_10011FB88, 255, &type metadata accessor for CancellationError);
  v10 = swift_allocError();
  sub_1000E2298();
  *v9 = v10;
  swift_storeEnumTagMultiPayload();
  sub_1000A30E0(v9, a1, a2, a3);
  return sub_1000033C8(v9, &qword_10011FC88, &qword_1000F2978);
}

uint64_t sub_1000A3634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1000E24F8();
  sub_1000A75DC(&qword_10011FB88, 255, &type metadata accessor for CancellationError);
  v10 = swift_allocError();
  sub_1000E2298();
  sub_1000A3374(v10, 1, a1, a2, a3, a4, a5);
}

uint64_t sub_1000A370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000ADE4(&qword_10011FC88, &qword_1000F2978);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (v20 - v13);
  if (a1)
  {
    v20[1] = a1;
    swift_errorRetain();
    sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
    v15 = sub_1000E2C38();
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = swift_allocError();
      *v18 = a1;
    }

    *v14 = v16;
    swift_storeEnumTagMultiPayload();
    sub_1000A30E0(v14, a2, a3, a4);
    v17 = v14;
  }

  else
  {
    *v12 = TUMakeNeighborhoodConduitError();
    swift_storeEnumTagMultiPayload();
    sub_1000A30E0(v12, a2, a3, a4);
    v17 = v12;
  }

  return sub_1000033C8(v17, &qword_10011FC88, &qword_1000F2978);
}

void sub_1000A38D4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a1)
  {
    v12 = TUMakeNeighborhoodConduitError();
    sub_1000A3374(v12, 1, a2, a3, a4, a5, a6);
  }

  else
  {
    v11 = sub_1000E2C38();
    if (!v11)
    {
      v11 = swift_allocError();
    }

    sub_1000A3374(v11, 1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_1000A39E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000ADE4(&qword_10011FC88, &qword_1000F2978);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  v12 = sub_1000E1398();
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  swift_storeEnumTagMultiPayload();
  sub_1000A30E0(v11, a2, a3, a4);
  return sub_1000033C8(v11, &qword_10011FC88, &qword_1000F2978);
}

uint64_t sub_1000A3AFC()
{
  v0 = sub_1000E2418();
  v4 = sub_1000A3B7C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000A3B7C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1000E2388();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1000E2898();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100029A84(v9, 0);
  v12 = sub_1000A3CD4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1000E2388();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1000E2AB8();
LABEL_4:

  return sub_1000E2388();
}

unint64_t sub_1000A3CD4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000A3EF4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000E23E8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000E2AB8();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000A3EF4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000E23C8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000A3EF4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000E23F8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000E23D8();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1000A3F70(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1000E10C8();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v38);
  v36 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADE4(&unk_10011F920, &unk_1000F23A0);
  result = sub_1000E2B78();
  v8 = result;
  v9 = 0;
  v39 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v37 = v4;
  v33[1] = v4 + 32;
  v34 = result + 64;
  v35 = result;
  if (v15)
  {
    while (1)
    {
      v44 = v2;
      v17 = __clz(__rbit64(v15));
      v40 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v43 = v33;
      v41 = 16 * v20;
      v21 = *(v39 + 56);
      v22 = (*(v39 + 48) + 16 * v20);
      v23 = v22[1];
      v42 = *v22;
      v24 = *(v21 + 8 * v20);
      __chkstk_darwin(result);
      v33[-2] = v24;
      sub_1000A75DC(&qword_100120130, 255, &type metadata accessor for NCProtoContactInfo);

      v25 = v24;
      v26 = v36;
      v27 = v38;
      v28 = v44;
      sub_1000E0E38();
      v2 = v28;

      v8 = v35;
      *(v34 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v29 = (v8[6] + v41);
      *v29 = v42;
      v29[1] = v23;
      result = (*(v37 + 32))(v8[7] + *(v37 + 72) * v20, v26, v27);
      v30 = v8[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v8[2] = v32;
      v15 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v8;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v44 = v2;
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A42A0(void *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *v5;

    v13 = a1;
    v14 = sub_1000E29B8();

    if (v14)
    {
      v15 = sub_1000A4448(v11, v13, a5, a2, a3);

      return v15;
    }

    return 0;
  }

  v18 = v5;
  sub_10000CAAC(0, a2, a3);
  v19 = sub_1000E2808(*(v7 + 40));
  v20 = -1 << *(v7 + 32);
  v21 = v19 & ~v20;
  if (((*(v7 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    return 0;
  }

  v22 = ~v20;
  while (1)
  {
    v23 = *(*(v7 + 48) + 8 * v21);
    v24 = sub_1000E2818();

    if (v24)
    {
      break;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v7 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 0;
    }
  }

  v25 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v27 = v29;
  }

  v28 = *(*(v27 + 48) + 8 * v21);
  sub_1000A45B8(v21);
  result = v28;
  *v18 = v29;
  return result;
}

uint64_t sub_1000A4448(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t *a5)
{
  v9 = v5;
  v10 = *v5;

  v11 = sub_1000E2968();
  v12 = swift_unknownObjectRetain();
  v13 = a3(v12, v11);
  v23 = v13;
  v14 = *(v13 + 40);

  v15 = sub_1000E2808(v14);
  v16 = -1 << *(v13 + 32);
  v17 = v15 & ~v16;
  if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    sub_10000CAAC(0, a4, a5);
    while (1)
    {
      v19 = *(*(v13 + 48) + 8 * v17);
      v20 = sub_1000E2818();

      if (v20)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
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

  v21 = *(*(v13 + 48) + 8 * v17);
  sub_1000A45B8(v17);
  result = sub_1000E2818();
  if (result)
  {
    *v9 = v23;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000A45B8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1000E28E8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1000E2808(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1000A4758(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_1000E2968())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
    sub_10000EA70(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
    sub_1000E2628();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_10000A840();
      return;
    }

    while (1)
    {
      v18 = sub_1000A42A0(v17, &unk_10011F930, TUHandle_ptr, sub_1000D4078, sub_1000D30AC);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_1000E29A8())
      {
        sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void *sub_1000A49DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
    sub_10000EA70(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
    sub_1000E2628();
    v4 = v78;
    v6 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v73 = v4;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v64 = v7;
  v13 = (v7 + 64) >> 6;
  v70 = v3 + 7;
  v77 = v9;
  v67 = v6;
  v68 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_1000E29A8();
      if (!v21)
      {
        goto LABEL_62;
      }

      v71 = v21;
      sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
      swift_dynamicCast();
      v19 = v72;
      v17 = v8;
      v2 = v9;
      if (!v72)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v73 = v4;
      v74 = v6;
      v75 = v64;
      v76 = v17;
      v77 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = v19;
    v23 = sub_1000E2808(v3[5]);
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v67;
    v4 = v68;
  }

  v25 = ~v24;
  v26 = sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
  v27 = *(v3[6] + 8 * v8);
  v69 = v26;
  while (1)
  {
    v28 = sub_1000E2818();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v3[6] + 8 * v8);
  }

  v30 = *(v3 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v61;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v62 = &v60;
    __chkstk_darwin(v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = v3[2];
    v63 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v67;
    v35 = v68;
    v37 = i;
LABEL_33:
    v65 = v4;
    while (v35 < 0)
    {
      v38 = sub_1000E29A8();
      if (!v38)
      {
        goto LABEL_61;
      }

      v71 = v38;
      swift_dynamicCast();
      v39 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = sub_1000E2808(v3[5]);
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v70[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(v45[6] + 8 * v47);
          v51 = sub_1000E2818();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v70[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v63[v48];
        v63[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
        if (!v53)
        {
          v4 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v3 = &_swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v41;
      v17 = v41;
      v77 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_1000CC910(v63, v61, v4, v3);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= v17 + 1)
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v55 = v5;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_1000A5088(v57, v61, v3, v8, &v73);
  v59 = v58;

  v3 = v59;
LABEL_62:
  sub_10000A840();
  return v3;
}

void sub_1000A5088(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_1000E29A8())
          {
            goto LABEL_30;
          }

          sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_1000CC910(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_1000E2808(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_1000E2818();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_1000E2818();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1000A5324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v31 = a3;
  v8 = sub_1000E0D68();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  v32 = v15;
  v17 = sub_10000B348(a2);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v16;
  if (v15[3] >= v20)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v24 = v31;
      v23 = v32;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v9 + 16))(v12, a2, v8);
      sub_1000CAE84(v17, v12, a1, v23);
      v30 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
      result = (*(*(v30 - 8) + 56))(v24, 1, 1, v30);
      goto LABEL_12;
    }

LABEL_10:
    sub_1000CBCE0();
    v24 = v31;
    v23 = v32;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  sub_10001FF0C(v20, isUniquelyReferenced_nonNull_native);
  v21 = sub_10000B348(a2);
  if ((v4 & 1) == (v22 & 1))
  {
    v17 = v21;
    v24 = v31;
    v23 = v32;
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    v25 = v23[7];
    v26 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 72) * v17;
    sub_1000AD400(v25 + v28, v24, &qword_10011EBB0, &qword_1000F04F0);
    sub_1000AD400(a1, v23[7] + v28, &qword_10011EBB0, &qword_1000F04F0);
    result = (*(v27 + 56))(v24, 0, 1, v26);
LABEL_12:
    *v5 = v23;
    return result;
  }

  result = sub_1000E2CC8();
  __break(1u);
  return result;
}

void sub_1000A55D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1000E2968())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1000E29B8();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

id sub_1000A56D4@<X0>(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 8);
  v3 = *a2;
  *a3 = v6;
  a3[1] = v3;
  v4 = v3;

  return v6;
}

NSObject *sub_1000A5718(void *a1, void *a2, uint64_t a3, NSObject *a4, NSObject *a5, void *a6, NSObject *a7, NSObject *a8)
{
  v110 = a8;
  v109 = a7;
  v108 = a5;
  v105 = a4;
  v103 = a3;
  v107 = a2;
  v113 = sub_1000E2128();
  v112 = *(v113 - 8);
  v10 = *(v112 + 64);
  __chkstk_darwin(v113);
  v111 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v101 - v14;
  v16 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v101 - v18;
  v122[3] = &type metadata for ConversationServerBag;
  v122[4] = &off_100116DE8;
  v104 = type metadata accessor for NeighborhoodActivityConduit();
  v20 = objc_allocWithZone(v104);
  sub_1000037BC(v122, &type metadata for ConversationServerBag);
  v121[3] = &type metadata for ConversationServerBag;
  v121[4] = &off_100116DE8;
  v21 = OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceManager;
  if (qword_10011DC20 != -1)
  {
    swift_once();
  }

  *&v20[v21] = qword_1001230E8;
  v106 = v15;
  v102 = v21;
  if (&_swiftEmptyArrayStorage >> 62 && sub_1000E2B68())
  {

    v22 = sub_1000DFC4C(&_swiftEmptyArrayStorage);
  }

  else
  {

    v22 = &_swiftEmptySetSingleton;
  }

  *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_cancellables] = v22;
  *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v23 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  v24 = type metadata accessor for HandoffState(0);
  v25 = *(*(v24 - 8) + 56);
  v25(&v20[v23], 1, 1, v24);
  v26 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffStateSubject;
  v25(v19, 1, 1, v24);
  v27 = sub_10000ADE4(&unk_10011EAD0, &qword_1000F0E80);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *&v20[v26] = sub_1000E2008();
  v30 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationPublishers;
  if (qword_10011DCC8 != -1)
  {
    swift_once();
  }

  v31 = qword_1001231E0;
  *&v20[v30] = qword_1001231E0;
  v32 = OBJC_IVAR___CSDNeighborhoodActivityConduit_continuitySessionServer;
  v33 = qword_10011DC48;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  *&v20[v32] = qword_100123118;
  v35 = OBJC_IVAR___CSDNeighborhoodActivityConduit_nearbyCallServer;
  v36 = qword_10011DC00;

  if (v36 != -1)
  {
    swift_once();
  }

  *&v20[v35] = qword_1001230C8;
  v37 = OBJC_IVAR___CSDNeighborhoodActivityConduit_callHistoryManager;
  v38 = objc_allocWithZone(TUCallHistoryManager);

  *&v20[v37] = [v38 init];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_deviceSupport] = result;
    v40 = OBJC_IVAR___CSDNeighborhoodActivityConduit_startedConversations;
    *&v20[v40] = sub_10000BE04(&_swiftEmptyArrayStorage);
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_activeConversationBleDiscoveryAssertion] = 0;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_discoverySessionBleDiscoveryAssertion] = 0;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_nearbyDevices] = &_swiftEmptySetSingleton;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_availableConversationUpdateCancellable] = 0;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_messageProxy] = 0;
    v41 = OBJC_IVAR___CSDNeighborhoodActivityConduit_systemMonitor;
    *&v20[v41] = [objc_allocWithZone(CUSystemMonitor) init];
    v42 = OBJC_IVAR___CSDNeighborhoodActivityConduit_activatedSubject;
    LOBYTE(aBlock) = 0;
    v43 = sub_10000ADE4(&qword_10011EA88, &qword_1000F3450);
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    *&v20[v42] = sub_1000E2008();
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_idsProxyCleanupTimer] = 0;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_stateHandle] = 0;
    v46 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationUIStateObserver;
    v47 = type metadata accessor for ConversationUIStateObserver(0);
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    v50 = swift_allocObject();
    v51 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService27ConversationUIStateObserver_uiState;
    v52 = type metadata accessor for ConversationUIState(0);
    (*(*(v52 - 8) + 56))(v50 + v51, 1, 1, v52);
    *&v20[v46] = v50;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager] = a1;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter] = a6;
    v53 = v107;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_idsService] = v107;
    v54 = v108;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_featureFlags] = v108;
    sub_10002B4BC(v121, &v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationServerBag]);
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_vouchingEnablement] = v103;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_voucherManager] = v105;
    v55 = v109;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_remoteDisplayDiscovery] = v109;
    type metadata accessor for NeighborhoodActivityPublisherService();
    swift_allocObject();
    v105 = a1;
    v56 = a6;
    v107 = v53;
    v57 = v54;
    v109 = v55;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_publisherService] = sub_1000D8940();
    v58 = v110;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_suggestionController] = v110;
    v59 = *&v20[v102];
    type metadata accessor for IncomingCallServer();
    v60 = swift_allocObject();
    v60[2] = v57;
    v60[3] = v56;
    v60[4] = v59;
    *&v20[OBJC_IVAR___CSDNeighborhoodActivityConduit_incomingCallServer] = v60;
    v120.receiver = v20;
    v120.super_class = v104;
    v108 = v56;
    v110 = v58;

    v61 = objc_msgSendSuper2(&v120, "init");
    TURegisterIDSAvailabilityListener();
    v62 = OBJC_IVAR___CSDNeighborhoodActivityConduit_remoteDisplayDiscovery;
    v63 = *&v61[OBJC_IVAR___CSDNeighborhoodActivityConduit_remoteDisplayDiscovery];
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v118 = sub_1000A9674;
    v119 = v64;
    aBlock = _NSConcreteStackBlock;
    v115 = 1107296256;
    v116 = sub_100067144;
    v117 = &unk_100114BC0;
    v65 = _Block_copy(&aBlock);
    v66 = v63;

    [v66 setDiscoverySessionStateChangedHandler:v65];
    _Block_release(v65);

    v67 = *&v61[v62];
    v118 = sub_1000671D0;
    v119 = 0;
    aBlock = _NSConcreteStackBlock;
    v115 = 1107296256;
    v104 = &v116;
    v116 = sub_100067380;
    v117 = &unk_100114BE8;
    v68 = _Block_copy(&aBlock);
    v69 = v67;
    [v69 activateWithCompletion:v68];
    _Block_release(v68);

    v70 = sub_1000E2538();
    v71 = v106;
    (*(*(v70 - 8) + 56))(v106, 1, 1, v70);
    v72 = qword_10011DC30;
    v74 = v61;
    if (v72 != -1)
    {
      swift_once();
    }

    v75 = qword_1001230F0;
    v76 = sub_1000A75DC(&qword_100120020, v73, type metadata accessor for ConduitActor);
    v77 = swift_allocObject();
    v77[2] = v75;
    v77[3] = v76;
    v77[4] = v74;

    sub_100022960(0, 0, v71, &unk_1000F2428, v77);

    v78 = OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager;
    v79 = *(&v74->isa + OBJC_IVAR___CSDNeighborhoodActivityConduit_conversationManager);
    v106 = sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
    v80 = v112;
    v81 = *(v112 + 104);
    v82 = v111;
    v83 = v113;
    v81(v111, enum case for DispatchQoS.QoSClass.userInteractive(_:), v113);
    v84 = v79;
    v85 = sub_1000E2758();
    v86 = *(v80 + 8);
    v86(v82, v83);
    [v84 addDelegate:v74 queue:v85];

    [*(&v74->isa + v78) registerWithCompletionHandler:0];
    sub_100068D30();
    v81(v82, enum case for DispatchQoS.QoSClass.background(_:), v83);
    v87 = sub_1000E2758();
    v86(v82, v83);
    v88 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v118 = sub_1000A9730;
    v119 = v88;
    aBlock = _NSConcreteStackBlock;
    v115 = 1107296256;
    v116 = sub_1000643C8;
    v117 = &unk_100114C38;
    v89 = _Block_copy(&aBlock);

    v90 = os_state_add_handler();
    _Block_release(v89);

    *(&v74->isa + OBJC_IVAR___CSDNeighborhoodActivityConduit_stateHandle) = v90;
    sub_100064418();
    sub_1000658F8();
    sub_100064884();
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v91 = sub_1000E1F08();
    sub_1000049D0(v91, qword_100123128);
    v92 = sub_1000E1EE8();
    v93 = sub_1000E2698();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v110;
    v96 = v108;
    if (v94)
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Initialized NeighborhoodActivityConduit", v97, 2u);

      v98 = v105;
      v99 = v96;
      v96 = v109;
      v100 = v95;
      v95 = v74;
    }

    else
    {
      v98 = v92;
      v92 = v74;
      v99 = v105;
      v100 = v109;
    }

    sub_10000E9DC(v121);
    sub_10000E9DC(v122);
    return v74;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A63CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1000A63F0, 0, 0);
}

uint64_t sub_1000A63F0()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_10000CAAC(0, &qword_10011FCC8, TUNearbySuggestionResult_ptr);
  *v4 = v0;
  v4[1] = sub_1000A6504;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000011, 0x80000001000EBB80, sub_1000AD714, v2, v5);
}

uint64_t sub_1000A6504()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000AE1F0, 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[3];

    *v5 = v3[2];
    v6 = v3[1];

    return v6();
  }
}

void sub_1000A6650(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a1;
  sub_1000A3374(v7, 0, a2, a3, a4, &qword_10011FCD0, &qword_1000F2AA0);
}

uint64_t sub_1000A66D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1000AE1A0;

  return sub_10006039C(a2, a3, a4, a5, a6);
}

uint64_t sub_1000A6798(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1000A688C;

  return v8(v4 + 40);
}

uint64_t sub_1000A688C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1000A69C4;
  }

  else
  {
    v3 = sub_1000A69A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A69DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1000A6A7C;

  return sub_1000A7214(a4, a5);
}

uint64_t sub_1000A6A7C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1000A6B90(uint64_t result, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1000E2A78();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = result;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (__dst)
    {
      v4 = a4 - __dst;
      v5 = __src;
      return strncpy(__dst, v5, v4);
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    return sub_1000E2A78();
  }

  if (!__dst)
  {
    goto LABEL_12;
  }

  v4 = a4 - __dst;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return strncpy(__dst, v5, v4);
}

uint64_t sub_1000A6C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1000A6C50, 0, 0);
}

uint64_t sub_1000A6C50()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  *v4 = v0;
  v4[1] = sub_1000A6D64;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000011, 0x80000001000EBB80, sub_1000ABC80, v2, v5);
}

uint64_t sub_1000A6D64()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000A6EB0, 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[3];

    *v5 = v3[2];
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1000A6EB0()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_1000A6F14(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a1;
  sub_1000A3374(v7, 0, a2, a3, a4, &qword_10011FC00, &qword_1000F2878);
}

uint64_t sub_1000A6F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_1000A6FB8, 0, 0);
}

uint64_t sub_1000A6FB8()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_10000CAAC(0, &qword_10011F948, TUConversationParticipant_ptr);
  *v4 = v0;
  v4[1] = sub_1000A6504;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000011, 0x80000001000EBB80, sub_1000AB3F4, v2, v5);
}

void sub_1000A70CC(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *a1;
  sub_1000A3374(v7, 0, a2, a3, a4, &unk_10011FB40, &qword_1000F2758);
}

uint64_t sub_1000A714C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4._countAndFlagsBits = 0x656E6F685069;
  v4._object = 0xE600000000000000;
  if (sub_1000E2408(v4))
  {

    return 1;
  }

  else
  {
    v5._countAndFlagsBits = 1684099177;
    v5._object = 0xE400000000000000;
    if (sub_1000E2408(v5))
    {

      return 2;
    }

    else
    {
      v6._countAndFlagsBits = 0x5654656C707041;
      v6._object = 0xE700000000000000;
      v3 = sub_1000E2408(v6);

      if (v3)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t sub_1000A7214(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000E2B28();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100061A00, 0, 0);
}

uint64_t sub_1000A72D4(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000A738C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10009C6EC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A744C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10009BE44(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A750C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10007DBA0(a1, v4, v5, v6);
}

uint64_t sub_1000A75DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000A7624(int a1, void *a2, void *a3, void *a4)
{
  v59 = a2;
  v56 = a1;
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v52 - v8;
  v10 = type metadata accessor for HandoffInfo(0);
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  __chkstk_darwin(v10);
  v55 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v52 - v15;
  v17 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = (&v52 - v19);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v22 = qword_10011DC60;
  v23 = a3;
  v57 = a4;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = sub_1000E1F08();
  v54 = sub_1000049D0(v24, qword_100123128);
  v25 = sub_1000E1EE8();
  v26 = sub_1000E2698();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v52 = v23;
    v28 = v27;
    v29 = swift_slowAlloc();
    v53 = v16;
    v30 = v9;
    v31 = v21;
    v32 = v29;
    v61[0] = v29;
    *v28 = 136315138;
    v60 = v56 & 1;
    v33 = sub_1000E2368();
    v35 = sub_100029C70(v33, v34, v61);

    *(v28 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v25, v26, "Safely get handoff info, requireJoined: %s", v28, 0xCu);
    sub_10000E9DC(v32);
    v21 = v31;
    v9 = v30;
    v16 = v53;

    v23 = v52;
  }

  v36 = v59;
  v37 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v36 + v37, v20, &qword_10011F888, &qword_1000F22B0);
  v38 = type metadata accessor for HandoffState(0);
  if ((*(*(v38 - 8) + 48))(v20, 1, v38) == 1)
  {
    (*(v58 + 56))(v16, 1, 1, v10);
    sub_10009A70C(v16, v23, v57);
LABEL_7:
    sub_1000033C8(v16, &qword_10011F8B8, &qword_1000F22D8);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v55;
    sub_1000A877C(v20, v55, type metadata accessor for HandoffInfo);
    sub_1000A87E4(v39, v16, type metadata accessor for HandoffInfo);
    (*(v58 + 56))(v16, 0, 1, v10);
    sub_10009A70C(v16, v23, v57);
    sub_1000033C8(v16, &qword_10011F8B8, &qword_1000F22D8);
    sub_1000AD5EC(v39, type metadata accessor for HandoffInfo);
  }

  v41 = *v20;
  if (v56)
  {
    v42 = sub_1000E1EE8();
    v43 = sub_1000E2678();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
    }

    (*(v58 + 56))(v16, 1, 1, v10);
    sub_10009A70C(v16, v23, v57);

    goto LABEL_7;
  }

  v45 = sub_1000E2538();
  (*(*(v45 - 8) + 56))(v9, 1, 1, v45);
  v46 = qword_10011DC30;

  v47 = v36;

  if (v46 != -1)
  {
    swift_once();
  }

  v49 = qword_1001230F0;
  v50 = sub_1000A75DC(&qword_100120020, v48, type metadata accessor for ConduitActor);
  v51 = swift_allocObject();
  v51[2] = v49;
  v51[3] = v50;
  v51[4] = v41;
  v51[5] = v47;
  v51[6] = sub_1000A9868;
  v51[7] = v21;

  sub_100022960(0, 0, v9, &unk_1000F2458, v51);
}

uint64_t sub_1000A7CE4(int a1, void *a2, void *a3)
{
  v56 = a2;
  v53 = a1;
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v49 - v6;
  v8 = type metadata accessor for HandoffInfo(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v49 - v14;
  v16 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v55 = (&v49 - v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  v20 = qword_10011DC60;
  v54 = a3;
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_1000E1F08();
  v51 = sub_1000049D0(v21, qword_100123128);
  v22 = sub_1000E1EE8();
  v23 = sub_1000E2698();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v58 = v25;
    *v24 = 136315138;
    v57 = v53 & 1;
    v26 = sub_1000E2368();
    v50 = v15;
    v28 = v9;
    v29 = sub_100029C70(v26, v27, &v58);
    v15 = v50;

    *(v24 + 4) = v29;
    v9 = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "Safely get handoff info, requireJoined: %s", v24, 0xCu);
    sub_10000E9DC(v25);
  }

  v30 = v56;
  v31 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  v32 = v55;
  sub_10000CB64(v30 + v31, v55, &qword_10011F888, &qword_1000F22B0);
  v33 = type metadata accessor for HandoffState(0);
  if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
  {
    (*(v9 + 56))(v15, 1, 1, v8);
    sub_10007DCB0(v15, v54);
LABEL_7:
    sub_1000033C8(v15, &qword_10011F8B8, &qword_1000F22D8);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v52;
    sub_1000A877C(v32, v52, type metadata accessor for HandoffInfo);
    sub_1000A87E4(v34, v15, type metadata accessor for HandoffInfo);
    (*(v9 + 56))(v15, 0, 1, v8);
    sub_10007DCB0(v15, v54);
    sub_1000033C8(v15, &qword_10011F8B8, &qword_1000F22D8);
    sub_1000AD5EC(v34, type metadata accessor for HandoffInfo);
  }

  v36 = v9;
  v37 = *v32;
  if (v53)
  {
    v38 = sub_1000E1EE8();
    v39 = sub_1000E2678();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
    }

    (*(v36 + 56))(v15, 1, 1, v8);
    sub_10007DCB0(v15, v54);

    goto LABEL_7;
  }

  v41 = sub_1000E2538();
  (*(*(v41 - 8) + 56))(v7, 1, 1, v41);
  v42 = qword_10011DC30;

  v43 = v30;

  v45 = v19;
  if (v42 != -1)
  {
    swift_once();
  }

  v46 = qword_1001230F0;
  v47 = sub_1000A75DC(&qword_100120020, v44, type metadata accessor for ConduitActor);
  v48 = swift_allocObject();
  v48[2] = v46;
  v48[3] = v47;
  v48[4] = v37;
  v48[5] = v43;
  v48[6] = sub_1000A8390;
  v48[7] = v45;

  sub_100022960(0, 0, v7, &unk_1000F22E8, v48);
}

uint64_t sub_1000A8398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_100062A18(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000A846C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100002D64;

  return sub_100063118(a1, v1);
}

uint64_t sub_1000A8508(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100002D64;

  return sub_1000A66D0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1000A85E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000A6798(a1, v4, v5, v7);
}

uint64_t sub_1000A86B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000A69DC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A877C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A87E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A884C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A88BC()
{
  result = qword_10011F910;
  if (!qword_10011F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F910);
  }

  return result;
}

uint64_t sub_1000A8910(uint64_t a1)
{
  v4 = *(type metadata accessor for HandoffInfo(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002D64;

  return sub_10007EFFC(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1000A8A54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_10009BA58(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000A8B1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_1000DADAC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000A8BE4(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v63 = a2;
  v58 = a1;
  v8 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v54 - v10;
  v12 = type metadata accessor for HandoffInfo(0);
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  __chkstk_darwin(v12);
  v57 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000ADE4(&qword_10011F8B8, &qword_1000F22D8);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v54 - v17;
  v19 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v62 = (&v54 - v21);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v23 = qword_10011DC60;
  v59 = a3;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1000E1F08();
  v56 = sub_1000049D0(v24, qword_100123128);
  v25 = sub_1000E1EE8();
  v26 = sub_1000E2698();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v55 = v11;
    v29 = v28;
    v65[0] = v28;
    *v27 = 136315138;
    v64 = v58 & 1;
    v30 = sub_1000E2368();
    v32 = sub_100029C70(v30, v31, v65);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "Safely get handoff info, requireJoined: %s", v27, 0xCu);
    sub_10000E9DC(v29);
    v11 = v55;
  }

  v33 = v63;
  v34 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  v35 = v33 + v34;
  v36 = v62;
  sub_10000CB64(v35, v62, &qword_10011F888, &qword_1000F22B0);
  v37 = type metadata accessor for HandoffState(0);
  if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
  {
    (*(v60 + 56))(v18, 1, 1, v61);
    sub_1000DAEE4(v18, v59, a4, a5);
    v38 = v18;
LABEL_7:
    sub_1000033C8(v38, &qword_10011F8B8, &qword_1000F22D8);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = v36;
    v40 = v57;
    sub_1000A877C(v39, v57, type metadata accessor for HandoffInfo);
    sub_1000A87E4(v40, v18, type metadata accessor for HandoffInfo);
    (*(v60 + 56))(v18, 0, 1, v61);
    sub_1000DAEE4(v18, v59, a4, a5);
    sub_1000033C8(v18, &qword_10011F8B8, &qword_1000F22D8);
    sub_1000AD5EC(v40, type metadata accessor for HandoffInfo);
  }

  v42 = v18;
  v43 = *v36;
  if (v58)
  {
    v44 = sub_1000E1EE8();
    v45 = sub_1000E2678();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
    }

    (*(v60 + 56))(v42, 1, 1, v61);
    sub_1000DAEE4(v42, v59, a4, a5);

    v38 = v42;
    goto LABEL_7;
  }

  v47 = sub_1000E2538();
  (*(*(v47 - 8) + 56))(v11, 1, 1, v47);
  v48 = qword_10011DC30;

  v49 = v33;

  if (v48 != -1)
  {
    swift_once();
  }

  v51 = qword_1001230F0;
  v52 = sub_1000A75DC(&qword_100120020, v50, type metadata accessor for ConduitActor);
  v53 = swift_allocObject();
  v53[2] = v51;
  v53[3] = v52;
  v53[4] = v43;
  v53[5] = v49;
  v53[6] = sub_1000A92C8;
  v53[7] = v22;

  sub_100022960(0, 0, v11, &unk_1000F23C8, v53);
}

uint64_t sub_1000A92D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10009B178(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A93B4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002D64;

  return sub_100098918();
}

uint64_t sub_1000A9460(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for HandoffInfo(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000E13E8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100002E7C;

  return sub_1000989A0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1000A95C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10009AA5C(a1, v4, v5, v6);
}

uint64_t sub_1000A967C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000673EC(a1, v4, v5, v6);
}

uint64_t sub_1000A97A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100064DB0(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A9870()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A98C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100064AE0(a1, v4, v5, v7, v6);
}

void sub_1000A9980(void *a1)
{
  v2 = sub_1000E0D68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v7 = sub_1000E1F08();
  sub_1000049D0(v7, qword_100123128);
  v8 = a1;
  v18 = sub_1000E1EE8();
  v9 = sub_1000E2698();

  if (os_log_type_enabled(v18, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = [v8 UUID];
    sub_1000E0D38();

    sub_1000A75DC(&unk_100120190, 255, &type metadata accessor for UUID);
    v13 = sub_1000E2C18();
    v15 = v14;
    (*(v3 + 8))(v6, v2);
    v16 = sub_100029C70(v13, v15, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v18, v9, "Conversation %s was joined.", v10, 0xCu);
    sub_10000E9DC(v11);
  }

  else
  {
    v17 = v18;
  }
}

uint64_t sub_1000A9C78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_100065BF0(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1000A9D94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100064740(a1, v4, v5, v7, v6);
}

uint64_t sub_1000A9E78(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1000A9EA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_1000704F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000A9FB4()
{
  v1 = *(v0 + 16);
  sub_1000E0D08();
  return sub_1000E1438();
}

uint64_t sub_1000AA028(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10009CD9C(a1, v4, v5, v6);
}

uint64_t sub_1000AA15C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100069E68(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AA224(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10006EBD8(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AA2E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100069328(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AA3A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_100066868(a1, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_1000AA47C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 32);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_10006D204(a1, v4, v5, v9, v6, v7, v8);
}

uint64_t sub_1000AA578()
{
  v1 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v24 - v3;
  v5 = sub_10000ADE4(&qword_10011F888, &qword_1000F22B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v24 - v7);
  v9 = OBJC_IVAR___CSDNeighborhoodActivityConduit_handoffState;
  swift_beginAccess();
  sub_10000CB64(v0 + v9, v8, &qword_10011F888, &qword_1000F22B0);
  v10 = type metadata accessor for HandoffState(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    sub_1000033C8(v8, &qword_10011F888, &qword_1000F22B0);
LABEL_5:
    v11 = sub_1000E2538();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = qword_10011DC30;
    v14 = v0;
    if (v12 != -1)
    {
      swift_once();
    }

    v15 = qword_1001230F0;
    v16 = sub_1000A75DC(&qword_100120020, v13, type metadata accessor for ConduitActor);
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v16;
    v17[4] = v14;

    sub_100022960(0, 0, v4, &unk_1000F2610, v17);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000AD5EC(v8, type metadata accessor for HandoffState);
    goto LABEL_5;
  }

  v18 = *v8;
  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v19 = sub_1000E1F08();
  sub_1000049D0(v19, qword_100123128);
  v20 = sub_1000E1EE8();
  v21 = sub_1000E2698();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Cancelling handoff task due to cancel add member event.", v22, 2u);
  }

  type metadata accessor for HandoffInfo(0);
  sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
  sub_1000E2558();
}

uint64_t sub_1000AA924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10007D940(a1, v4, v5, v6);
}

uint64_t sub_1000AA9D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10007D4C0(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AAADC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E0D68() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1000E1C48() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100002D64;

  return sub_100077390(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_1000AAC60(uint64_t a1)
{
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_100079638(a1, v6, v1 + v5);
}

uint64_t sub_1000AAD60(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10000ADE4(&unk_10011FA80, &qword_1000F2660) - 8);
  v9 = (v7 + *(v8 + 80) + 9) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = *(v1 + v6);
  v12 = v1 + v7;
  v13 = *(v1 + v7);
  v14 = *(v12 + 8);
  v15 = *(v1 + v10);
  v16 = *(v1 + (v10 & 0xFFFFFFFFFFFFFFF8) + 8);
  v17 = *(v1 + (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100002D64;

  return sub_10009325C(a1, v1 + v5, v11, v13, v14, v1 + v9, v15, v16);
}

uint64_t sub_1000AAF3C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100002D64;

  return sub_1000608BC(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1000AB004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100060F7C(a1, v4, v5, v7);
}

uint64_t sub_1000AB0C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100061940(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AB208()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000AB250(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_1000DB9DC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000AB324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000A6F94(a1, v4, v5, v6);
}

uint64_t sub_1000AB43C(uint64_t *a1, uint64_t *a2)
{
  v5 = *(sub_1000E0D68() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10000ADE4(a1, a2) - 8);
  return sub_1000A3634(*(v2 + 16), v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a1, a2);
}

uint64_t sub_1000AB580()
{
  v0 = sub_1000E2118();
  v18 = *(v0 - 8);
  v1 = *(v18 + 64);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000E2148();
  v4 = *(v17 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000E2128();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.userInteractive(_:), v8);
  v13 = sub_1000E2758();
  (*(v9 + 8))(v12, v8);
  aBlock[4] = sub_10009864C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115340;
  v14 = _Block_copy(aBlock);
  sub_1000E2138();
  v19 = _swiftEmptyArrayStorage;
  sub_1000A75DC(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100002C64(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v14);

  (*(v18 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v17);
}

uint64_t sub_1000AB908(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100002D64;

  return sub_10005FED0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1000AB9D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100060F7C(a1, v4, v5, v7);
}

uint64_t sub_1000ABA90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100061650(a1, v4, v5, v7, v6);
}

uint64_t sub_1000ABBB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000A6C2C(a1, v4, v5, v6);
}

uint64_t sub_1000ABD04(uint64_t a1)
{
  v4 = *(type metadata accessor for HandoffInfo(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_10008F254(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000ABDFC(uint64_t a1)
{
  v4 = *(sub_1000E1948() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_100072DC0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1000ABF00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10008A700(a1, v4, v5, v7, v6);
}

uint64_t sub_1000ABFC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002D64;

  return sub_10008DFFC(a1, v5, v4);
}

void sub_1000AC070()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR___CSDNeighborhoodActivityConduit_callCenter) joinConversationWithConversationRequest:*(v0 + 24)];
}

uint64_t sub_1000AC0E4()
{
  v1 = *(*(sub_10000ADE4(&qword_10011FC38, &qword_1000F3350) - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_10008A548(v2, v3);
}

uint64_t sub_1000AC154(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E1338() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100002D64;

  return sub_10007B8D0(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1000AC28C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_10009F8B8(a1, v4, v5, v6);
}

uint64_t sub_1000AC3B0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t))
{
  v7 = *(a1(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_10000ADE4(a2, a3) - 8);
  v11 = *(v4 + 16);
  v12 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return a4(v11, v4 + v8, v12);
}

uint64_t sub_1000AC4B0(uint64_t *a1)
{
  v3 = *(sub_1000E0D68() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10000ADE4(&qword_10011FC50, &qword_1000F2958) - 8);
  v7 = *(v1 + 16);
  v8 = *a1;
  v9 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1000A370C(v8, v7, v1 + v4, v9);
}

uint64_t sub_1000AC594(uint64_t a1)
{
  v3 = *(sub_1000E0D68() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10000ADE4(&qword_10011FC50, &qword_1000F2958) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1000A39E8(a1, v7, v1 + v4, v8);
}

uint64_t sub_1000AC678(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E1338() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100002D64;

  return sub_10007CAE8(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_1000AC7BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000E1338() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + v9);
  v13 = *(v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100002D64;

  return sub_10008F930(a1, v1 + v6, v10, v11, v12, v13);
}

uint64_t sub_1000AC928(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_100097608(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AC9F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_10009850C(a1, v4, v5, v6);
}

uint64_t sub_1000ACAB0(char a1, uint64_t a2)
{
  v4 = *(*(sub_10000ADE4(&qword_10011FC98, &unk_1000F29D0) - 8) + 80);

  return sub_100098048(a1, a2);
}

uint64_t sub_1000ACB3C(uint64_t a1)
{
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100002D64;

  return sub_10006A5DC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1000ACC40(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 17) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1 + v6;
  v12 = *v11;
  v13 = *(v1 + v7);
  v14 = v11[9];
  v15 = v11[8];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100002D64;

  return sub_1000804F8(a1, v8, v9, v10, v1 + v5, v12, v15, v14);
}

uint64_t sub_1000ACDB0()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_10000ADE4(&unk_10011FA80, &qword_1000F2660) - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8 + 9) & ~v8;
  v10 = *(v7 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5);

  v12 = sub_1000E0FE8();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v9, 1, v12))
  {
    (*(v13 + 8))(v0 + v9, v12);
  }

  v14 = (((v9 + v10) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v14);

  return _swift_deallocObject(v0, v14 + 8, v3 | v8 | 7);
}

uint64_t sub_1000ACF90(uint64_t a1)
{
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100002D64;

  return sub_100084D9C(a1, v6, v7, v8, v1 + v5);
}

void sub_1000AD088()
{
  v1 = *(sub_1000E0D68() - 8);
  v2 = ((*(v1 + 80) + 24) & ~*(v1 + 80)) + *(v1 + 64);
  v3 = *(sub_10000ADE4(&unk_10011FA70, &qword_1000F0868) - 8);
  v4 = (v2 + *(v3 + 80)) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1000E0FE8() - 8);
  v7 = *(v0 + 16);
  v8 = v0 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_100089C08(v7);
}

uint64_t sub_1000AD1C0()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AD284(uint64_t a1)
{
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000883D8(a1, v6, v1 + v5);
}

uint64_t sub_1000AD368()
{
  v1 = sub_1000E0D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AD400(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000ADE4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1000AD468()
{
  v1 = *(sub_1000E0D68() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_10000ADE4(&qword_10011FCC0, &qword_1000F2A80) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(sub_10000ADE4(&qword_10011E478, &unk_1000F0998) - 8);
  v8 = *(v0 + 16);
  v9 = *(v0 + v6);
  v10 = *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = v0 + (((v6 & 0xFFFFFFFFFFFFFFF8) + *(v7 + 80) + 16) & ~*(v7 + 80));

  sub_1000891F8(v8, v0 + v2, v0 + v5, v9, v10, v11);
}

uint64_t sub_1000AD5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000AD64C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000A63CC(a1, v4, v5, v6);
}

uint64_t sub_1000AD720(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1000E0D68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 24) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_10000ADE4(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v7 | v12;
  v15 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v2 + 16);

  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);
  v17 = *(v2 + v15);

  return _swift_deallocObject(v2, v15 + 8, v14 | 7);
}

uint64_t sub_1000AD8B8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v6 = *(sub_1000E0D68() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_10000ADE4(a1, a2) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v3 + 16);
  v12 = *(v3 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(v11, v3 + v7, v3 + v10, v12);
}

void sub_1000ADA04(char *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(sub_1000E0D68() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_10000ADE4(a2, a3) - 8);
  sub_1000A38D4(*a1, *(v3 + 16), v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a2, a3);
}

uint64_t sub_1000ADAEC(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1000E0D68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 24) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_10000ADE4(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  v16 = *(v2 + 16);

  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return _swift_deallocObject(v2, v13 + v14, v15 | 7);
}

uint64_t sub_1000ADC70(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(sub_1000E0D68() - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_10000ADE4(a2, a3) - 8);
  v12 = *(v4 + 16);
  v13 = v4 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return a4(a1, v12, v4 + v9, v13);
}

uint64_t sub_1000ADD70()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000ADDB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10008A04C(a1, v4, v5, v7, v6);
}

uint64_t sub_1000ADE78(uint64_t a1)
{
  v4 = *(sub_1000E0D68() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_1000851B8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000ADF68(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10000ADE4(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000ADFEC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_10000ADE4(&unk_10011FA70, &qword_1000F0868) - 8) + 80);

  return sub_1000880D8(a1, a2);
}

uint64_t sub_1000AE094(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AE0DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000AE14C()
{
  result = qword_10011FD18;
  if (!qword_10011FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FD18);
  }

  return result;
}

void sub_1000AE290(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1000E0BD8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

Swift::Int sub_1000AE300()
{
  v2 = *v0;
  sub_1000E2D48();
  sub_1000E22E8();
  return sub_1000E2D68();
}

uint64_t sub_1000AE364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B2AF0();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000AE3B0()
{
  v2 = *v0;
  sub_1000E2D48();
  sub_1000E22E8();
  return sub_1000E2D68();
}

unint64_t sub_1000AE410@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000B0F6C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000AE444(uint64_t a1)
{
  v2 = sub_1000B2AF0();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_1000AE480(uint64_t a1)
{
  v2 = sub_1000B2AF0();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1000AE4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000B2AF0();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t sub_1000AE52C()
{
  result = 0xD000000000000015;
  v2 = *v0;
  if (*v0 > 2)
  {
    switch(v2)
    {
      case 3:
        return result;
      case 4:
        return 0xD00000000000001FLL;
      case 5:
        return 0xD000000000000020;
    }

LABEL_14:
    v3 = *v0;
    result = sub_1000E2CA8();
    __break(1u);
    return result;
  }

  if (!v2)
  {
    return 0xD000000000000014;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      return 0xD000000000000020;
    }

    goto LABEL_14;
  }

  return result;
}

id sub_1000AE60C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1000E2108();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  v9 = objc_opt_self();
  v10 = a1;
  result = [v9 sharedInstance];
  if (result)
  {
    v12 = result;
    v13 = objc_allocWithZone(TUVouchingEnablementImpl);
    v14 = v12;
    v15 = [v13 init];
    *v8 = 10;
    (*(v5 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v4);
    v16 = sub_1000B0AC4(v10, v14, v15, v8, objc_allocWithZone(ObjectType));

    v17 = *((swift_isaMask & *v1) + 0x30);
    v18 = *((swift_isaMask & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000AE814(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_10011DC78 != -1)
    {
      swift_once();
    }

    v13 = sub_1000E1F08();
    sub_1000049D0(v13, qword_100123170);
    swift_errorRetain();
    sub_1000123E0(a4, a5);
    v14 = sub_1000E1EE8();
    v15 = sub_1000E2678();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v51 = v17;
      *v16 = 134218242;
      *(v16 + 4) = sub_1000E0CB8();
      sub_100006660(a4, a5);
      *(v16 + 12) = 2080;
      swift_errorRetain();
      sub_10000ADE4(&unk_10011F8C0, &qword_1000F0C40);
      v18 = sub_1000E2358();
      v20 = sub_100029C70(v18, v19, &v51);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to sign data (%ld) due to error %s.", v16, 0x16u);
      sub_10000E9DC(v17);
    }

    else
    {
      sub_100006660(a4, a5);
    }

    swift_errorRetain();
    a6(0, a3);
  }

  else if (a2 >> 60 == 15)
  {
    if (qword_10011DC78 != -1)
    {
      swift_once();
    }

    v22 = sub_1000E1F08();
    sub_1000049D0(v22, qword_100123170);
    sub_1000123E0(a4, a5);
    v23 = sub_1000E1EE8();
    v24 = sub_1000E2678();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = sub_1000E0CB8();
      sub_100006660(a4, a5);
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to sign data (%ld) because encrypted data was missing from response (without an error).", v25, 0xCu);
    }

    else
    {
      sub_100006660(a4, a5);
    }

    sub_1000B2718();
    v47 = swift_allocError();
    *v48 = 2;
    a6(0, v47);
  }

  else
  {
    v27 = *(a8 + OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler + 24);
    v28 = *(a8 + OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler + 32);
    sub_1000036AC((a8 + OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler), v27);
    v29 = *(v28 + 8);
    sub_1000123E0(a1, a2);
    v30 = v29(v27, v28);
    v32 = v31;
    isa = sub_1000E0C78().super.isa;
    v34 = TUCopyIDSFromIDForHandle();
    v35 = IDSCopyIDForTokenWithID();

    if (v35)
    {
      sub_100006660(v30, v32);
      v36 = objc_allocWithZone(TUVoucher);
      sub_1000123E0(a1, a2);
      v37 = sub_1000E0C78().super.isa;
      v38 = sub_1000E0C78().super.isa;
      v39 = [v36 initWithHandle:a9 tokenPrefixedURI:v35 data:v37 encryptedData:v38];

      sub_100015904(a1, a2);
      if (qword_10011DC78 != -1)
      {
        swift_once();
      }

      v40 = sub_1000E1F08();
      sub_1000049D0(v40, qword_100123170);
      sub_1000123E0(a4, a5);
      v41 = v39;
      v42 = sub_1000E1EE8();
      v43 = sub_1000E2698();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 134218242;
        *(v44 + 4) = sub_1000E0CB8();
        sub_100006660(a4, a5);
        *(v44 + 12) = 2112;
        *(v44 + 14) = v41;
        *v45 = v41;
        v46 = v41;
        _os_log_impl(&_mh_execute_header, v42, v43, "Successfully signed data (%ld) into %@.", v44, 0x16u);
        sub_1000033C8(v45, &unk_10011EAC0, &unk_1000F0E60);
      }

      else
      {
        sub_100006660(a4, a5);
      }

      v49 = v41;
      a6(v41, 0);

      sub_100015904(a1, a2);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000AEE5C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000E2118();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000E2148();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a4 + OBJC_IVAR___CSDVoucherManagerImpl_completionQueue);
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  aBlock[4] = sub_1000B28BC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_1001160D0;
  v20 = _Block_copy(aBlock);

  sub_1000B28C8(a1, a2);
  swift_errorRetain();
  sub_1000E2138();
  v25 = _swiftEmptyArrayStorage;
  sub_1000B28DC(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v20);
  (*(v24 + 8))(v13, v10);
  (*(v14 + 8))(v17, v23);
}

uint64_t sub_1000AF148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 24);

    v8(a2, a3, a4);
    sub_100009BB4(v8);
  }

  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_100009BB4(v10);
}

uint64_t sub_1000AF1F8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    sub_1000B2718();
    v4 = swift_allocError();
    *v5 = 0;

    v2(0, 0xF000000000000000, v4);
    sub_100009BB4(v2);
  }

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_100009BB4(v6);
}

void sub_1000AF388(uint64_t a1, char a2, uint64_t a3)
{
  if (a2 == -1)
  {
    v15 = *v3;
    v16 = sub_10000ADE4(&qword_10011FF10, &unk_1000F2E58);
    v17 = objc_allocWithZone(v16);
    *&v17[*((swift_isaMask & *v17) + 0x68)] = a3;
    v20.receiver = v17;
    v20.super_class = v16;
    v14 = objc_msgSendSuper2(&v20, "init");
    [v15 removeObjectForKey:v14];
  }

  else
  {
    v7 = *v3;
    v8 = sub_10000ADE4(&qword_10011FF20, &unk_1000F2E70);
    v9 = objc_allocWithZone(v8);
    v10 = v9 + *((swift_isaMask & *v9) + 0x68);
    *v10 = a1;
    v10[8] = a2 & 1;
    sub_1000B27B4(a1, a2 & 1);
    v19.receiver = v9;
    v19.super_class = v8;
    v11 = objc_msgSendSuper2(&v19, "init");
    v12 = sub_10000ADE4(&qword_10011FF10, &unk_1000F2E58);
    v13 = objc_allocWithZone(v12);
    *&v13[*((swift_isaMask & *v13) + 0x68)] = a3;
    v18.receiver = v13;
    v18.super_class = v12;
    v14 = objc_msgSendSuper2(&v18, "init");
    [v7 setObject:v11 forKey:v14];
    sub_1000B27DC(a1, a2);
  }
}

uint64_t sub_1000AF548(unsigned __int8 a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    if (qword_10011DC78 != -1)
    {
      swift_once();
    }

    v8 = sub_1000E1F08();
    sub_1000049D0(v8, qword_100123170);
    v9 = a3;
    v10 = sub_1000E1EE8();
    v11 = sub_1000E2698();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v7;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v9;
      *v14 = v9;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "Successfully verified %@.", v13, 0xCu);
      sub_1000033C8(v14, &unk_10011EAC0, &unk_1000F0E60);

      v7 = v12;
LABEL_10:
    }
  }

  else
  {
    if (qword_10011DC78 != -1)
    {
      swift_once();
    }

    v16 = sub_1000E1F08();
    sub_1000049D0(v16, qword_100123170);
    v17 = a3;
    swift_errorRetain();
    v10 = sub_1000E1EE8();
    v18 = sub_1000E2678();

    if (os_log_type_enabled(v10, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44 = v7;
      v21 = swift_slowAlloc();
      v48[0] = v21;
      *v19 = 138412546;
      *(v19 + 4) = v17;
      *v20 = v17;
      *(v19 + 12) = 2080;
      v46 = a2;
      v22 = v17;
      swift_errorRetain();
      sub_10000ADE4(&qword_10011FF28, &unk_1000F2E80);
      v23 = sub_1000E2358();
      v25 = sub_100029C70(v23, v24, v48);

      *(v19 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v10, v18, "Failed to verify %@ with error %s", v19, 0x16u);
      sub_1000033C8(v20, &unk_10011EAC0, &unk_1000F0E60);

      sub_10000E9DC(v21);
      v7 = v44;

      goto LABEL_10;
    }
  }

  v26 = OBJC_IVAR___CSDVoucherManagerImpl_verificationCache;
  swift_beginAccess();
  v27 = *(a4 + v26);
  v28 = sub_10000ADE4(&qword_10011FF10, &unk_1000F2E58);
  v29 = objc_allocWithZone(v28);
  *&v29[*((swift_isaMask & *v29) + 0x68)] = a3;
  v47.receiver = v29;
  v47.super_class = v28;
  v30 = a3;
  v31 = objc_msgSendSuper2(&v47, "init");
  v32 = [v27 objectForKey:v31];

  if (v32 && (v33 = v32 + *((swift_isaMask & *v32) + 0x68), v34 = *v33, v35 = v33[8], sub_1000B27B4(*v33, v33[8]), v32, v35 == 1))
  {
    swift_endAccess();
    v36 = *(v34 + 16);
    if (v36)
    {
      v45 = v7;
      v37 = v7 & 1;
      v38 = (v34 + 40);
      do
      {
        v40 = *(v38 - 1);
        v39 = *v38;
        LOBYTE(v46) = v37;
        v48[0] = a2;

        v40(&v46, v48);

        v38 += 2;
        --v36;
      }

      while (v36);
      sub_1000B27C0(v34, 1);
      v7 = v45;
    }

    else
    {
      sub_1000B27C0(v34, 1);
    }
  }

  else
  {
    swift_endAccess();
  }

  swift_beginAccess();
  v41 = v30;
  if (a2)
  {
    v42 = -1;
  }

  else
  {
    v42 = 0;
  }

  sub_1000AF388((a2 == 0) & v7, v42, v41);
  return swift_endAccess();
}

uint64_t sub_1000AF9E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000E2118();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000E2148();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + OBJC_IVAR___CSDVoucherManagerImpl_completionQueue);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  aBlock[4] = sub_1000B27CC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_100115FB8;
  v18 = _Block_copy(aBlock);

  swift_errorRetain();
  sub_1000E2138();
  v23 = _swiftEmptyArrayStorage;
  sub_1000B28DC(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
  sub_1000E28C8();
  sub_1000E2738();
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_1000AFCC8(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);

    v6(a2 & 1, a3);
    sub_100009BB4(v6);
  }

  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_100009BB4(v8);
}

uint64_t sub_1000AFD70(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    sub_1000B2718();
    v4 = swift_allocError();
    *v5 = 0;

    v2(0, v4);
    sub_100009BB4(v2);
  }

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_100009BB4(v6);
}

id sub_1000AFEEC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000AFFE0(void *a1)
{
  v1 = a1;
  v2 = sub_1000B0014();

  return v2;
}

uint64_t sub_1000B0014()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x60);
  v3 = v0 + *((swift_isaMask & *v0) + 0x68);
  return sub_1000E22F8();
}

uint64_t sub_1000B0084(uint64_t a1)
{
  v2 = (swift_isaMask & *v1);
  sub_1000B26A8(a1, v12);
  if (!v13)
  {
    sub_1000033C8(v12, &unk_10011ECF0, &qword_1000F08A0);
    goto LABEL_5;
  }

  v4 = v2[10];
  v3 = v2[11];
  v5 = v2[12];
  type metadata accessor for CountLimitCache.WrappedKey();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v9 = 0;
    return v9 & 1;
  }

  v6 = *((swift_isaMask & *v1) + 0x68);
  v7 = *((*v11 & swift_isaMask) + 0x68);
  v8 = *(v5 + 8);
  v9 = sub_1000E2318();

  return v9 & 1;
}

uint64_t sub_1000B01B8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1000E28B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1000B0084(v8);

  sub_1000033C8(v8, &unk_10011ECF0, &qword_1000F08A0);
  return v6 & 1;
}

id sub_1000B0360(uint64_t (*a1)(void, void, void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58), *((swift_isaMask & *v1) + 0x60));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000B0450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  isa = sub_1000E0C78().super.isa;
  v15 = sub_1000E0C78().super.isa;
  v18[4] = a7;
  v18[5] = a8;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10005FC2C;
  v18[3] = &unk_100116120;
  v16 = _Block_copy(v18);

  [v13 verifySignedData:isa matchesExpectedData:v15 withTokenURI:a5 forAlgorithm:a6 completion:v16];
  _Block_release(v16);
}

uint64_t sub_1000B0558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  isa = sub_1000E0C78().super.isa;
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000B0630;
  v13[3] = &unk_1001160F8;
  v11 = _Block_copy(v13);

  [v9 signData:isa withAlgorithm:a3 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1000B0630(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_1000E0C88();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_100015904(v4, v9);
}

id sub_1000B06DC()
{
  result = [*v0 pushToken];
  if (result)
  {
    v2 = result;
    v3 = sub_1000E0C88();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for VoucherManagerImpl()
{
  result = qword_10011FD78;
  if (!qword_10011FD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B0790()
{
  result = sub_1000E2108();
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

uint64_t sub_1000B0844(uint64_t a1)
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

uint64_t sub_1000B08F0(uint64_t a1)
{
  v1 = *(a1 + 88);
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

uint64_t sub_1000B09A8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000B09BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000B0A04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000B0A64()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_1000B0AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v32 = a4;
  v30 = a3;
  ObjectType = swift_getObjectType();
  v8 = sub_1000E2708();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000E26B8();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v13 = sub_1000E2148();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v36[3] = sub_10000CAAC(0, &qword_10011FF30, IDSService_ptr);
  v36[4] = &off_100115C50;
  v36[0] = a1;
  v35[3] = sub_10000CAAC(0, &qword_10011FF38, IDSPushHandler_ptr);
  v35[4] = &off_100115C68;
  v35[0] = a2;
  v15 = OBJC_IVAR___CSDVoucherManagerImpl_verificationCache;
  v16 = [objc_allocWithZone(NSCache) init];
  [v16 setCountLimit:32];
  *&a5[v15] = v16;
  if (qword_10011DC78 != -1)
  {
    swift_once();
  }

  v17 = sub_1000E1F08();
  sub_1000049D0(v17, qword_100123170);
  v18 = sub_1000E1EE8();
  v19 = sub_1000E2668();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Initializing VoucherManager.", v20, 2u);
  }

  sub_10000CAAC(0, &qword_10011DCD0, OS_dispatch_queue_ptr);
  sub_1000E2138();
  v34 = &_swiftEmptyArrayStorage;
  sub_1000B28DC(&qword_10011DCD8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000ADE4(&qword_10011DCE0, &qword_1000F0190);
  sub_100011FD8(&qword_10011DCE8, &qword_10011DCE0, &qword_1000F0190);
  sub_1000E28C8();
  (*(v28 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  *&a5[OBJC_IVAR___CSDVoucherManagerImpl_completionQueue] = sub_1000E2748();
  sub_10002B4BC(v36, &a5[OBJC_IVAR___CSDVoucherManagerImpl_idsService]);
  sub_10002B4BC(v35, &a5[OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler]);
  *&a5[OBJC_IVAR___CSDVoucherManagerImpl_vouchingEnablement] = v30;
  v21 = OBJC_IVAR___CSDVoucherManagerImpl_timeout;
  v22 = sub_1000E2108();
  v23 = *(v22 - 8);
  v24 = v32;
  (*(v23 + 16))(&a5[v21], v32, v22);
  v33.receiver = a5;
  v33.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v33, "init");
  (*(v23 + 8))(v24, v22);
  sub_10000E9DC(v35);
  sub_10000E9DC(v36);
  return v25;
}

unint64_t sub_1000B0F6C(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000B0F7C(uint64_t a1, unint64_t a2, void *a3, char *a4, void (**a5)(void, void, void))
{
  v50 = a2;
  v9 = sub_1000E2118();
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v9);
  v49 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000E2148();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v54 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1000E2168();
  v53 = *(v55 - 8);
  v16 = *(v53 + 64);
  v17 = __chkstk_darwin(v55);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v52 = v43 - v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  v22 = *&a4[OBJC_IVAR___CSDVoucherManagerImpl_vouchingEnablement];
  _Block_copy(a5);
  if ([v22 isEnabled])
  {
    v23 = swift_allocObject();
    v24 = swift_allocObject();
    v25 = v21;
    v26 = v50;
    v24[2] = a1;
    v24[3] = v26;
    v24[4] = sub_1000B27F4;
    v24[5] = v25;
    v46 = v25;
    v24[6] = a4;
    v24[7] = a3;
    *(v23 + 16) = sub_1000B283C;
    *(v23 + 24) = v24;
    v44 = v19;
    v48 = v12;
    v28 = *&a4[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 24];
    v27 = *&a4[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 32];
    v29 = sub_1000036AC(&a4[OBJC_IVAR___CSDVoucherManagerImpl_idsService], v28);
    v45 = v9;
    v43[1] = v29;
    v30 = swift_allocObject();
    v47 = v13;
    v31 = v30;
    *(v30 + 16) = a4;
    *(v30 + 24) = v23;
    v43[0] = *(v27 + 16);
    v32 = a4;
    sub_1000123E0(a1, v26);

    v33 = a3;

    (v43[0])(a1, v26, 3, sub_1000B28AC, v31, v28, v27);

    v50 = *&v32[OBJC_IVAR___CSDVoucherManagerImpl_completionQueue];
    v34 = v44;
    sub_1000E2158();
    v35 = v52;
    sub_1000E21A8();
    v53 = *(v53 + 8);
    (v53)(v34, v55);
    aBlock[4] = sub_1000B28B4;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000026A0;
    aBlock[3] = &unk_100116080;
    v36 = _Block_copy(aBlock);

    v37 = v54;
    sub_1000E2138();
    v56 = _swiftEmptyArrayStorage;
    sub_1000B28DC(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
    sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
    v38 = v49;
    v39 = v45;
    sub_1000E28C8();
    sub_1000E26C8();
    _Block_release(v36);
    (*(v51 + 8))(v38, v39);
    (*(v47 + 8))(v37, v48);
    (v53)(v35, v55);
  }

  else
  {
    sub_1000B2718();
    swift_allocError();
    *v41 = 3;
    v42 = sub_1000E0BD8();
    (a5)[2](a5, 0, v42);
  }
}

uint64_t sub_1000B1568(void *a1, char *a2, void (**a3)(void, void, void))
{
  v6 = sub_1000E2118();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000E2148();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v137 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1000E2168();
  v136 = *(v138 - 8);
  v15 = *(v136 + 64);
  v16 = __chkstk_darwin(v138);
  v134 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v135 = &v124 - v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  v20 = *&a2[OBJC_IVAR___CSDVoucherManagerImpl_vouchingEnablement];
  _Block_copy(a3);
  if ([v20 isEnabled])
  {
    v129 = v12;
    v130 = v10;
    v131 = v11;
    v132 = v7;
    v133 = v6;
    if (qword_10011DC78 != -1)
    {
      swift_once();
    }

    v139 = v19;
    v21 = sub_1000E1F08();
    sub_1000049D0(v21, qword_100123170);
    v22 = a1;
    v23 = sub_1000E1EE8();
    v24 = sub_1000E2668();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "Requested to verify %@.", v25, 0xCu);
      sub_1000033C8(v26, &unk_10011EAC0, &unk_1000F0E60);
    }

    v28 = OBJC_IVAR___CSDVoucherManagerImpl_verificationCache;
    swift_beginAccess();
    v29 = *&a2[v28];
    v30 = sub_10000ADE4(&qword_10011FF10, &unk_1000F2E58);
    v31 = objc_allocWithZone(v30);
    *&v31[*((swift_isaMask & *v31) + 0x68)] = v22;
    v146.receiver = v31;
    v146.super_class = v30;
    v32 = v22;
    v33 = objc_msgSendSuper2(&v146, "init");
    v34 = [v29 objectForKey:v33];

    if (v34)
    {
      v35 = v34 + *((swift_isaMask & *v34) + 0x68);
      v36 = *v35;
      v37 = v35[8];
      sub_1000B27B4(*v35, v37);
      swift_endAccess();

      if (v37)
      {
        sub_10000ADE4(&qword_10011FF18, &qword_1000F2E68);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000F07C0;
        v39 = swift_allocObject();
        v40 = v139;
        *(v39 + 16) = sub_10001B2A8;
        *(v39 + 24) = v40;
        *(inited + 32) = sub_1000B2B58;
        *(inited + 40) = v39;
        aBlock[0] = v36;
        v41 = v32;
        sub_1000B27B4(v36, 1);

        sub_1000CC3E4(inited);
        v42 = aBlock[0];
        swift_beginAccess();
        v43 = *&a2[v28];
        v44 = v30;
        v45 = sub_10000ADE4(&qword_10011FF20, &unk_1000F2E70);
        v46 = objc_allocWithZone(v45);
        v47 = &v46[*((swift_isaMask & *v46) + 0x68)];
        *v47 = v42;
        v47[8] = 1;
        v141.receiver = v46;
        v141.super_class = v45;

        v48 = objc_msgSendSuper2(&v141, "init");
        v49 = objc_allocWithZone(v44);
        *&v49[*((swift_isaMask & *v49) + 0x68)] = v41;
        v140.receiver = v49;
        v140.super_class = v44;
        v50 = objc_msgSendSuper2(&v140, "init");
        [v43 setObject:v48 forKey:v50];
        swift_endAccess();

        sub_1000B27C0(v36, 1);
      }

      else
      {
        v64 = sub_1000E1EE8();
        v65 = sub_1000E2698();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 67109120;
          *(v66 + 4) = v36 & 1;
          _os_log_impl(&_mh_execute_header, v64, v65, "Retrieved previously verified voucher: %{BOOL}d.", v66, 8u);
        }

        a3[2](a3, v36 & 1, 0);
      }
    }

    v128 = v30;
    swift_endAccess();
    v54 = [v32 handle];
    v55 = TUCopyIDSFromIDForHandle();

    if (v55)
    {
      v127 = sub_1000E2338();
      v57 = v56;

      v58 = [v32 tokenPrefixedURI];
      if (!v58)
      {
        sub_1000E2338();
        v58 = sub_1000E2328();
      }

      v59 = IDSCopyAddressDestinationForDestination();

      if (v59)
      {
        v60 = sub_1000E2338();
        v62 = v61;

        if (v127 == v60 && v57 == v62)
        {

          v63 = v139;
LABEL_24:
          v68 = [v32 tokenPrefixedURI];
          if (!v68)
          {
            sub_1000E2338();
            v68 = sub_1000E2328();
          }

          v69 = [objc_allocWithZone(IDSURI) initWithPrefixedURI:v68];

          v70 = v128;
          if (v69)
          {
            v127 = v69;
            sub_10000ADE4(&qword_10011FF18, &qword_1000F2E68);
            v71 = swift_allocObject();
            *(v71 + 16) = xmmword_1000F07C0;
            v72 = swift_allocObject();
            *(v72 + 16) = sub_10001B2A8;
            *(v72 + 24) = v63;
            *(v71 + 32) = sub_1000B276C;
            *(v71 + 40) = v72;
            swift_beginAccess();
            v126 = *&a2[v28];
            v73 = sub_10000ADE4(&qword_10011FF20, &unk_1000F2E70);
            v74 = objc_allocWithZone(v73);
            v75 = &v74[*((swift_isaMask & *v74) + 0x68)];
            *v75 = v71;
            v75[8] = 1;
            v145.receiver = v74;
            v145.super_class = v73;
            v76 = v32;

            v77 = objc_msgSendSuper2(&v145, "init");
            v78 = objc_allocWithZone(v70);
            *&v78[*((swift_isaMask & *v78) + 0x68)] = v76;
            v144.receiver = v78;
            v144.super_class = v70;
            v79 = objc_msgSendSuper2(&v144, "init");
            [v126 setObject:v77 forKey:v79];
            swift_endAccess();

            v80 = swift_allocObject();
            v81 = swift_allocObject();
            *(v80 + 16) = sub_1000B279C;
            *(v81 + 16) = v76;
            *(v81 + 24) = a2;
            *(v80 + 24) = v81;
            v82 = v76;
            v83 = a2;
            if ([v20 shouldForceVerificationFailures])
            {
              sub_1000B2718();
              v84 = swift_allocError();
              *v85 = 5;

              sub_1000AF548(0, v84, *(v81 + 16), *(v81 + 24));
              sub_100009BB4(sub_1000B279C);

              v86 = *(v80 + 16);
              v87 = *(v80 + 24);
              *(v80 + 16) = 0;
              *(v80 + 24) = 0;
              sub_100009BB4(v86);
            }

            else
            {
              v104 = *&v83[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 24];
              v103 = *&v83[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 32];
              v128 = sub_1000036AC(&v83[OBJC_IVAR___CSDVoucherManagerImpl_idsService], v104);
              v105 = [v82 encryptedData];
              v126 = sub_1000E0C88();
              v125 = v106;

              v107 = [v82 unsafeData];
              v108 = sub_1000E0C88();
              v110 = v109;

              v111 = swift_allocObject();
              *(v111 + 16) = v83;
              *(v111 + 24) = v80;
              v112 = *(v103 + 8);
              v113 = v83;

              v122 = v104;
              v123 = v103;
              v114 = v126;
              v115 = v125;
              v112(v126, v125, v108, v110, v127, 3, sub_1000B27A4, v111, v122, v123);

              sub_100006660(v108, v110);
              sub_100006660(v114, v115);
              v128 = *&v113[OBJC_IVAR___CSDVoucherManagerImpl_completionQueue];
              v116 = v134;
              sub_1000E2158();
              v117 = v135;
              sub_1000E21A8();
              v136 = *(v136 + 8);
              (v136)(v116, v138);
              aBlock[4] = sub_1000B27AC;
              aBlock[5] = v80;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1000026A0;
              aBlock[3] = &unk_100115F40;
              v118 = _Block_copy(aBlock);

              v119 = v137;
              sub_1000E2138();
              v142 = _swiftEmptyArrayStorage;
              sub_1000B28DC(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags);
              sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
              sub_100011FD8(&qword_10011EA30, &unk_10011ED10, &unk_1000F0A60);
              v120 = v130;
              v121 = v133;
              sub_1000E28C8();
              sub_1000E26C8();

              _Block_release(v118);
              (*(v132 + 8))(v120, v121);
              (*(v129 + 8))(v119, v131);
              (v136)(v117, v138);
            }
          }

          v97 = v32;
          v98 = sub_1000E1EE8();
          v99 = sub_1000E2678();

          if (os_log_type_enabled(v98, v99))
          {
            v100 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            *v100 = 138412290;
            *(v100 + 4) = v97;
            *v101 = v97;
            v102 = v97;
            _os_log_impl(&_mh_execute_header, v98, v99, "Failed to verify %@ because we couldn't create a URI.", v100, 0xCu);
            sub_1000033C8(v101, &unk_10011EAC0, &unk_1000F0E60);
          }

          sub_1000B2718();
          swift_allocError();
          v95 = 1;
LABEL_32:
          *v94 = v95;
          v96 = sub_1000E0BD8();
          (a3)[2](a3, 0, v96);
        }

        v67 = sub_1000E2C68();

        v63 = v139;
        if (v67)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    v88 = v32;
    v89 = sub_1000E1EE8();
    v90 = sub_1000E2678();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v91 = 138412290;
      *(v91 + 4) = v88;
      *v92 = v88;
      v93 = v88;
      _os_log_impl(&_mh_execute_header, v89, v90, "Failed to verify %@ because the token prefixed URI did not come from the handle.", v91, 0xCu);
      sub_1000033C8(v92, &unk_10011EAC0, &unk_1000F0E60);
    }

    sub_1000B2718();
    swift_allocError();
    v95 = 4;
    goto LABEL_32;
  }

  sub_1000B2718();
  swift_allocError();
  *v51 = 3;
  v52 = sub_1000E0BD8();
  (a3)[2](a3, 0, v52);
}

uint64_t sub_1000B26A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&unk_10011ECF0, &qword_1000F08A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B2718()
{
  result = qword_10011FF08;
  if (!qword_10011FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF08);
  }

  return result;
}

uint64_t sub_1000B276C(unsigned __int8 *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1000B27B4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000B27C0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1000B27DC(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1000B27C0(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1000B27FC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B286C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B28C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000123E0(a1, a2);
  }

  return a1;
}

uint64_t sub_1000B28DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000B293C()
{
  result = qword_10011FF40;
  if (!qword_10011FF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF40);
  }

  return result;
}

unint64_t sub_1000B2994()
{
  result = qword_10011FF48;
  if (!qword_10011FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF48);
  }

  return result;
}

unint64_t sub_1000B29EC()
{
  result = qword_10011FF50;
  if (!qword_10011FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF50);
  }

  return result;
}

unint64_t sub_1000B2A44()
{
  result = qword_10011FF58;
  if (!qword_10011FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF58);
  }

  return result;
}

unint64_t sub_1000B2A9C()
{
  result = qword_10011FF60;
  if (!qword_10011FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF60);
  }

  return result;
}

unint64_t sub_1000B2AF0()
{
  result = qword_10011FF68;
  if (!qword_10011FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF68);
  }

  return result;
}

uint64_t sub_1000B2B74(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000E1D08();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230F0;
  v3[8] = qword_1001230F0;

  return _swift_task_switch(sub_1000B2C70, v7, 0);
}

uint64_t sub_1000B2C70()
{
  v27 = v0;
  if (qword_10011DC90 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = sub_1000E1F08();
  sub_1000049D0(v5, qword_1001231B8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1000E1EE8();
  v7 = sub_1000E2698();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 40);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    v14 = sub_1000E1CF8();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_100029C70(v14, v16, &v26);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Incoming call server got an incoming call answer request %s", v12, 0xCu);
    sub_10000E9DC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = *(v0 + 64);
  v19 = sub_1000B41BC(&qword_100120020, type metadata accessor for ConduitActor);
  v20 = swift_task_alloc();
  *(v0 + 72) = v20;
  v20[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v21 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v22 = swift_task_alloc();
  *(v0 + 80) = v22;
  v23 = sub_1000E1D28();
  *v22 = v0;
  v22[1] = sub_1000B2F44;
  v24 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v24, v18, v19, 0xD00000000000002CLL, 0x80000001000EC1B0, sub_1000B40D8, v20, v23);
}

uint64_t sub_1000B2F44()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[8];

    return _swift_task_switch(sub_1000B3090, v4, 0);
  }

  else
  {
    v5 = v3[9];
    v6 = v3[7];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1000B3090()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1000B3100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a3;
  v37 = sub_1000E2118();
  v40 = *(v37 - 8);
  v4 = *(v40 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000E2148();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  __chkstk_darwin(v6);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000ADE4(&unk_100120028, &qword_1000F3048);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v31 = &v30 - v12;
  v14 = sub_1000E1D08();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [*(a2 + 24) queue];
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v15 + 16))(v17, v33, v14);
  v19 = v13;
  v20 = v9;
  (*(v10 + 16))(v19, v32, v9);
  v21 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v22 = (v16 + *(v10 + 80) + v21) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  (*(v15 + 32))(v23 + v21, v17, v14);
  (*(v10 + 32))(v23 + v22, v31, v20);
  aBlock[4] = sub_1000B40E0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000026A0;
  aBlock[3] = &unk_1001161B8;
  v24 = _Block_copy(aBlock);

  v25 = v35;
  sub_1000E2138();
  v41 = _swiftEmptyArrayStorage;
  sub_1000B41BC(&qword_10011EA20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
  sub_10002B8C4();
  v27 = v36;
  v26 = v37;
  sub_1000E28C8();
  v28 = v34;
  sub_1000E2738();
  _Block_release(v24);

  (*(v40 + 8))(v27, v26);
  (*(v38 + 8))(v25, v39);
}

void sub_1000B35A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000E1D28();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1000E1D08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v74 - v14;
  __chkstk_darwin(v13);
  v17 = &v74 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = v8;
    v79 = a3;
    v80 = Strong;
    v20 = *(Strong + 24);
    sub_1000E1CF8();
    v21 = sub_1000E2328();

    v22 = [v20 callWithCallUUID:v21];

    if (v22)
    {
      if ([v22 status] != 4)
      {
        if (qword_10011DC90 != -1)
        {
          swift_once();
        }

        v50 = sub_1000E1F08();
        sub_1000049D0(v50, qword_1001231B8);
        v27 = v22;
        v51 = sub_1000E1EE8();
        v52 = sub_1000E2678();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 67109120;
          *(v53 + 4) = [v27 status];

          _os_log_impl(&_mh_execute_header, v51, v52, "Attempting to answer a call that is not ringing. Call status: %d", v53, 8u);
        }

        else
        {

          v51 = v27;
        }

        sub_1000B4204();
        v57 = swift_allocError();
        *v58 = 1;
        v81 = v57;
        sub_10000ADE4(&unk_100120028, &qword_1000F3048);
        sub_1000E24C8();

        goto LABEL_32;
      }

      if ((sub_1000E1CE8() & 1) == 0)
      {
        v27 = 0;
        v56 = v80;
LABEL_29:
        v68 = [objc_allocWithZone(TUAnswerRequest) initWithCall:v22];
        [v68 setWantsHoldMusic:v27 == 0];
        [*(v56 + 24) answerWithRequest:v68];
        if (v27)
        {
          v69 = *(v56 + 24);
          v70 = v27;
          v71 = [v69 routeController];
          [v71 pickRoute:v70];
        }

        sub_1000E1D18();
        sub_10000ADE4(&unk_100120028, &qword_1000F3048);
        sub_1000E24D8();

LABEL_32:
        return;
      }

      v23 = [*(v80 + 24) routeController];
      v24 = [v23 routes];

      sub_1000B4258();
      v25 = sub_1000E2468();

      __chkstk_darwin(v26);
      *(&v74 - 2) = a2;
      v27 = sub_1000DF118(sub_1000B42A4, (&v74 - 4), v25);

      if (v27)
      {
        if (qword_10011DC90 != -1)
        {
          swift_once();
        }

        v28 = sub_1000E1F08();
        sub_1000049D0(v28, qword_1001231B8);
        (*(v19 + 16))(v17, a2, v7);
        v29 = v27;
        v30 = sub_1000E1EE8();
        v31 = sub_1000E2698();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v81 = v78;
          *v32 = 136315394;
          v76 = v31;
          v33 = sub_1000E1CD8();
          v75 = v30;
          v34 = v33;
          v36 = v35;
          (*(v19 + 8))(v17, v7);
          v37 = sub_100029C70(v34, v36, &v81);

          *(v32 + 4) = v37;
          *(v32 + 12) = 2112;
          *(v32 + 14) = v29;
          v38 = v77;
          *v77 = v27;
          v39 = v29;
          v40 = v75;
          _os_log_impl(&_mh_execute_header, v75, v76, "Found TURoute for route identifier %s. Routing call audio to %@", v32, 0x16u);
          sub_1000222AC(v38);

          sub_10000E9DC(v78);
        }

        else
        {

          (*(v19 + 8))(v17, v7);
        }

        v56 = v80;
        goto LABEL_29;
      }

      if (qword_10011DC90 != -1)
      {
        swift_once();
      }

      v59 = sub_1000E1F08();
      sub_1000049D0(v59, qword_1001231B8);
      (*(v19 + 16))(v15, a2, v7);
      v60 = sub_1000E1EE8();
      v61 = sub_1000E2678();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v81 = v63;
        *v62 = 136315138;
        v64 = sub_1000E1CD8();
        v66 = v65;
        (*(v19 + 8))(v15, v7);
        v67 = sub_100029C70(v64, v66, &v81);

        *(v62 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v60, v61, "TURouteController could not find TURoute with identifier %s", v62, 0xCu);
        sub_10000E9DC(v63);
      }

      else
      {

        (*(v19 + 8))(v15, v7);
      }

      sub_1000B4204();
      v72 = swift_allocError();
      *v73 = 2;
      v81 = v72;
      sub_10000ADE4(&unk_100120028, &qword_1000F3048);
      sub_1000E24C8();
    }

    else
    {
      if (qword_10011DC90 != -1)
      {
        swift_once();
      }

      v41 = sub_1000E1F08();
      sub_1000049D0(v41, qword_1001231B8);
      (*(v19 + 16))(v12, a2, v7);
      v42 = sub_1000E1EE8();
      v43 = sub_1000E2678();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v81 = v45;
        *v44 = 136315138;
        v46 = sub_1000E1CF8();
        v48 = v47;
        (*(v19 + 8))(v12, v7);
        v49 = sub_100029C70(v46, v48, &v81);

        *(v44 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v42, v43, "Couldn't find incoming call with UUID %s", v44, 0xCu);
        sub_10000E9DC(v45);
      }

      else
      {

        (*(v19 + 8))(v12, v7);
      }

      sub_1000B4204();
      v54 = swift_allocError();
      *v55 = 0;
      v81 = v54;
      sub_10000ADE4(&unk_100120028, &qword_1000F3048);
      sub_1000E24C8();
    }
  }
}